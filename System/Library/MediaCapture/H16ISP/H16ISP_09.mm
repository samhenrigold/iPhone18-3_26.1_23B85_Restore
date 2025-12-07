uint64_t CopyLSCGainGrid(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  LODWORD(v6[0]) = 0;
  if (!H16ISP::H16ISPDevice::ISP_GetSetfileSize(*(a5 + 24), *(a3 + 156), v6))
  {
    operator new[]();
  }

  return 4294954516;
}

uint64_t CopyHDRFusionEnable(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4610))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyCAREnable(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 4265))
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopySwitchingFormatIndex(const __CFAllocator *a1, CFDictionaryRef *a2, uint64_t a3)
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294954516;
  }

  v5 = *(a3 + 48);
  v4 = (a3 + 48);
  if (v4[1187] == v5 || (v7 = CFNumberCreate(a1, kCFNumberIntType, v4)) == 0)
  {
    v10 = 0;
  }

  else
  {
    v8 = v7;
    v9 = *MEMORY[0x277CF3DD0];
    values = v7;
    keys[0] = v9;
    v10 = CFDictionaryCreate(a1, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFRelease(v8);
  }

  result = 0;
  *a2 = v10;
  return result;
}

uint64_t CopySensorDimensions(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v10 = Mutable;
    v11 = *(a3 + 48);
    v12 = *(a3 + 192);
    if (v11 < v12)
    {
      v12 = 0;
    }

    H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), *(*(a3 + 184) + 120 * (v11 - v12) + 16), &v16, v18);
    valuePtr = v19;
    v13 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v10, *MEMORY[0x277CF3EF8], v13);
    CFRelease(v13);
    valuePtr = v20;
    v14 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v10, *MEMORY[0x277CF3EC0], v14);
    CFRelease(v14);
    *a2 = v10;
  }

  return 0;
}

uint64_t CopyVisionDataConfigurationSupportedKeys(const __CFAllocator *a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF6770]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6768]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6760]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6738]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6730]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6778]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6750]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6710]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6728]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6708]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6748]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF67A0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6720]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6718]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6780]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6790]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6740]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6798]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF6758]);
  }

  *a2 = v4;
  return 0;
}

uint64_t CopyLSCQuadraCICGainGrid(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  LODWORD(v6[0]) = 0;
  if (!H16ISP::H16ISPDevice::ISP_GetSetfileSize(*(a5 + 24), *(a3 + 156), v6))
  {
    operator new[]();
  }

  return 4294954513;
}

uint64_t CopyLSCQuadraGICGainGrid(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = *MEMORY[0x277D85DE8];
  *a2 = 0;
  LODWORD(v6[0]) = 0;
  if (!H16ISP::H16ISPDevice::ISP_GetSetfileSize(*(a5 + 24), *(a3 + 156), v6))
  {
    operator new[]();
  }

  return 4294954513;
}

uint64_t CopyFocusPixelMap(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *v5 = 0;
  bzero(v13, 0x1BE0uLL);
  v14 = 1316;
  v15 = *(v4 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v2 + 24), v13, 0x1BE0u, 0, 0xFFFFFFFF))
  {
    return 4294954513;
  }

  if (!v16)
  {
    return 4294954509;
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    CopyFocusPixelMap();
  }

  *bytes = 2;
  memcpy(v11, v17, sizeof(v11));
  memcpy(v12, v18, sizeof(v12));
  v9 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 7124);
  if (v9)
  {
    *v6 = v9;
  }

  return 0;
}

uint64_t CopyNarrowerCalibratedExtrinsics(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v10 = *MEMORY[0x277D85DE8];
  DistortionData = H16ISP::H16ISPDevice::GetDistortionData(*(v3 + 24), *(v4 + 156), 1, v9);
  v6 = 0;
  if (DistortionData)
  {
    result = 4294954513;
  }

  else
  {
    do
    {
      v8[v6] = vcvt_hight_f32_f64(vcvt_f32_f64(*&v9[32 * v6 + 2232]), *&v9[32 * v6 + 2248]);
      v6 = (v6 + 1);
    }

    while (v6 != 3);
    v6 = CFDataCreate(*MEMORY[0x277CBECE8], v8, 48);
    if (v6)
    {
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  *v2 = v6;
  return result;
}

uint64_t CopyNarrowerCalibratedGDCCoefficients(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  *&v25[4116] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v2 + 24), *(v4 + 156), 1, v24))
    {
      goto LABEL_3;
    }

    if (v24[4] == 49926)
    {
      v10 = &v22;
      v11 = v25;
      v12 = &v20;
      v13 = 8;
      do
      {
        v10[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(v11[-4]), v11[-3]);
        *v10++ = vcvt_hight_f32_f64(vcvt_f32_f64(v11[-12]), v11[-11]);
        v12[-2] = vcvt_hight_f32_f64(vcvt_f32_f64(*v11), v11[1]);
        *v12++ = vcvt_hight_f32_f64(vcvt_f32_f64(v11[-8]), v11[-7]);
        v11 += 2;
        v13 -= 4;
      }

      while (v13);
    }

    v14 = CFDataCreate(v7, bytes, 64);
    if (!v14 || (v15 = v14, CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4538], v14), CFRelease(v15), (v16 = CFDataCreate(v7, v19, 64)) == 0))
    {
      v9 = 4294954510;
      goto LABEL_13;
    }

    v17 = v16;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CF4540], v16);
    CFRelease(v17);
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v2 + 24), *(v4 + 156), 0, v23))
    {
LABEL_3:
      v9 = 4294954513;
LABEL_13:
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_14;
    }

    v9 = 0;
  }

  else
  {
    v9 = 4294954510;
  }

LABEL_14:
  *v6 = Mutable;
  return v9;
}

uint64_t CopyNarrowerFOVCalibratedValidRadius(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v13 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::GetDistortionData(*(v5 + 24), *(v6 + 156), 1, v11))
  {
    return 4294954513;
  }

  v8 = v12;
  valuePtr = v8;
  v9 = CFNumberCreate(v4, kCFNumberFloatType, &valuePtr);
  result = 0;
  *v3 = v9;
  return result;
}

uint64_t CopyFullFOVCalibratedValidRadius(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v13 = *MEMORY[0x277D85DE8];
  if (H16ISP::H16ISPDevice::GetDistortionData(*(v5 + 24), *(v6 + 156), 0, v11))
  {
    return 4294954513;
  }

  v8 = v12;
  valuePtr = v8;
  v9 = CFNumberCreate(v4, kCFNumberFloatType, &valuePtr);
  result = 0;
  *v3 = v9;
  return result;
}

uint64_t CopyAbsoluteColorCalibrations(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v25 = 0;
  *v26 = 0;
  v24 = 0;
  if (H16ISP::H16ISPDevice::GetAbsoluteColorCal(*(a5 + 24), *(a3 + 156), &v26[1], v26, &v25[1], v25, &v24))
  {
    Mutable = 0;
    result = 4294954516;
  }

  else
  {
    if (v24)
    {
      v8 = *MEMORY[0x277CBECE8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v9 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v9)
        {
          v10 = v9;
          v11 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v11)
          {
            v12 = v11;
            v13 = vcvtd_n_f64_u32(v26[1], 0xEuLL);
            valuePtr = v13;
            v14 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            v15 = *MEMORY[0x277CF40D8];
            CFDictionarySetValue(v10, *MEMORY[0x277CF40D8], v14);
            CFRelease(v14);
            v16 = vcvtd_n_f64_u32(v26[0], 0xEuLL);
            valuePtr = v16;
            v17 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            v18 = *MEMORY[0x277CF40D0];
            CFDictionarySetValue(v10, *MEMORY[0x277CF40D0], v17);
            CFRelease(v17);
            v19 = vcvtd_n_f64_u32(v25[1], 0xEuLL);
            valuePtr = v19;
            v20 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            CFDictionarySetValue(v12, v15, v20);
            CFRelease(v20);
            v21 = vcvtd_n_f64_u32(v25[0], 0xEuLL);
            valuePtr = v21;
            v22 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
            CFDictionarySetValue(v12, v18, v22);
            CFRelease(v22);
            CFDictionarySetValue(Mutable, *MEMORY[0x277CF40E8], v10);
            CFDictionarySetValue(Mutable, *MEMORY[0x277CF40E0], v12);
            CFRelease(v10);
            CFRelease(v12);
            result = 0;
            goto LABEL_15;
          }

          CFRelease(v10);
        }
      }

      result = 4294954510;
      goto LABEL_15;
    }

    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      CopyAbsoluteColorCalibrations();
    }

    Mutable = 0;
    result = 4294954509;
  }

LABEL_15:
  *a2 = Mutable;
  return result;
}

uint64_t SetSupplementalControlForAutoFocusAssistEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) + 4304) + 104 * *(a2 + 156) + 16) != 1718186595)
  {
    return 4294954516;
  }

  if ((byte_2810033C5 & 1) == 0)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "SetSupplementalControlForAutoFocusAssistEnabled: disabled by defaults\n", v13, 2u);
    }

    return 4294954516;
  }

  v5 = 4294954516;
  if (!cf)
  {
    return v5;
  }

  v7 = a2 + 4096;
  if ((*(a2 + 4592) & 1) == 0)
  {
    return v5;
  }

  v9 = CFGetTypeID(cf);
  if (v9 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v10 = CFEqual(cf, *MEMORY[0x277CBED28]);
  if (*(v7 + 497) == (v10 != 0))
  {
    return 0;
  }

  if (!v10)
  {
    *(v7 + 497) = 0;
    if (*(a2 + 160))
    {
      H16ISP::H16ISPDevice::SetPearlControlMode(*(a4 + 24), *(a2 + 156), *(v7 + 498), 0, byte_2810033C6);
    }

    return 0;
  }

  *(v7 + 497) = 1;
  if (*(v7 + 498) == 1)
  {
    v5 = ConfigurePearlForExclusiveFirmwareControl(a4, a2);
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 160))
  {
    H16ISP::H16ISPDevice::SetPearlControlMode(*(a4 + 24), *(a2 + 156), *(v7 + 498), *(v7 + 497), byte_2810033C6);
  }

  return v5;
}

uint64_t CopySupplementalControlForAutoFocusAssistEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (byte_2810033C5)
  {
    result = 0;
    if (*(a3 + 4593))
    {
      v4 = MEMORY[0x277CBED28];
    }

    else
    {
      v4 = MEMORY[0x277CBED10];
    }

    *a2 = *v4;
  }

  else
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "CopySupplementalControlForAutoFocusAssistEnabled: disabled by defaults\n", v6, 2u);
    }

    return 4294954516;
  }

  return result;
}

uint64_t SetLumaHistogramROI(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954513;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v10 = 0;
  v11 = 0;
  v9 = 0;
  result = H16ISPGetRectParamsFromDict(a1, &v11 + 4, &v11, &v10 + 4, &v10, &v9, 0);
  if (!result)
  {
    if (H16ISP::H16ISPDevice::SetLumaHistogramROI(*(a4 + 24), *(a2 + 156), 1, (WORD2(v10) << 32) | (v10 << 48) | (v11 << 16) | WORD2(v11)))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CopyDefectivePixelTable(const __CFAllocator *a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  if (a2)
  {
    MaxResolutionSensorConfigIndex = H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex(*(a5 + 24), *(a3 + 156), v15);
    if (MaxResolutionSensorConfigIndex)
    {
      v9 = MaxResolutionSensorConfigIndex;
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v17 = "CopyDefectivePixelTable";
      v18 = 1024;
      v19 = v9;
      v11 = "%s - Could not find valid sensor config index, res = 0x%08X\n";
    }

    else
    {
      DPCCount = H16ISP::H16ISPDevice::GetDPCCount(*(a5 + 24), *(a3 + 156), v15[0], &v15[1]);
      if (!DPCCount)
      {
        operator new[]();
      }

      v13 = DPCCount;
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v17 = "CopyDefectivePixelTable";
      v18 = 1024;
      v19 = v13;
      v11 = "%s - CISP_CMD_CH_SENSOR_STATIC_DPC_INFO_GET failed, res = 0x%08X\n";
    }

    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 0x12u);
LABEL_14:
    *a2 = 0;
  }

  return 4294954516;
}

uint64_t SetSensorRawOutputRetainedBufferCount(const void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, a2 + 1208);
  if (!*(a2 + 20) || a2[1208] < 1)
  {
    return 0;
  }

  if (*(a2 + 603))
  {
    resizeRawPool(a4, a2);
  }

  v8 = resizeStillMetaPool(a2, 1, &v15 + 1, &v15);
  v9 = MEMORY[0x277D86220];
  if (v8)
  {
    v10 = v8;
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = "SetSensorRawOutputRetainedBufferCount";
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = HIDWORD(v15);
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - Unable to modify still meta pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n", buf, 0x1Eu);
    }
  }

  v12 = resizeThumbnailRawPool(a2, 1, 0, &v15);
  if (v12)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = "SetSensorRawOutputRetainedBufferCount";
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = HIDWORD(v15);
      v22 = 1024;
      v23 = v15;
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Unable to modify thumbnail raw pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n", buf, 0x1Eu);
    }
  }

  return v12;
}

uint64_t CopyUnsynchronizedSensorRawOutputBufferPoolRequirements(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x277D85DE8];
  H16ISP::H16ISPDevice::GetPoolInfoExtended(*(a5 + 24), *(a3 + 156), 3, &v25);
  if (v8)
  {
LABEL_2:
    v9 = 0;
    result = 4294954513;
    goto LABEL_3;
  }

  *v24 = 0;
  v22 = 0;
  v23 = 0;
  RawBufferConfig = H16ISP::H16ISPDevice::GetRawBufferConfig(*(a5 + 24), *(a3 + 156), &v24[1], &v26, &v27, v24, &v23, &v22);
  if (RawBufferConfig)
  {
    v12 = RawBufferConfig;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      CVPixelFormat = 136315394;
      v30 = "CopyUnsynchronizedSensorRawOutputBufferPoolRequirements";
      v31 = 1024;
      v32 = v12;
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Unable to get raw buffer count, res = %d \n", &CVPixelFormat, 0x12u);
    }

    goto LABEL_2;
  }

  v14 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = result;
  if (result)
  {
    v15 = CFNumberCreate(v14, kCFNumberSInt16Type, &v25 + 6);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4D60], v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v14, kCFNumberSInt16Type, &v25 + 4);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4E38], v16);
    CFRelease(v16);
    v17 = CFNumberCreate(v14, kCFNumberIntType, &v26);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4EC8], v17);
    CFRelease(v17);
    v18 = CFNumberCreate(v14, kCFNumberIntType, &v27);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4DD8], v18);
    CFRelease(v18);
    valuePtr = v24[0] + v24[1];
    v19 = CFNumberCreate(v14, kCFNumberSInt8Type, &valuePtr);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4E50], v19);
    CFRelease(v19);
    CVPixelFormat = H16ISP::getCVPixelFormat(v28, *(a3 + 560), (*(a3 + 569) & 1) == 0);
    v20 = CFNumberCreate(v14, kCFNumberIntType, &CVPixelFormat);
    CFDictionarySetValue(v9, *MEMORY[0x277CC4E30], v20);
    CFRelease(v20);
    result = 0;
  }

LABEL_3:
  *a2 = v9;
  return result;
}

uint64_t SetUnsynchronizedSensorRawOutputBufferPool(__CVPixelBufferPool *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetUnsynchronizedSensorRawOutputBufferPool();
    }

    return 4294954612;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *v21 = 0u;
  HIBYTE(v22) = 1;
  v8 = *(a4 + 24);
  v9 = *(a2 + 156);
  if (a1)
  {
    v10 = H16ISP::H16ISPDevice::SetCommonBufferPool(v8, v9, 3, 1, v21, 0x32uLL);
    if (v10)
    {
      v11 = v10;
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954514;
      }

      v17 = 136315394;
      v18 = "SetUnsynchronizedSensorRawOutputBufferPool";
      v19 = 1024;
      v20 = v11;
      v13 = "%s - Error enabling shared raw/sifr pool, res = %d\n";
LABEL_18:
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, 0x12u);
      return 4294954514;
    }

    v16 = *(a2 + 4824);
    if (v16)
    {
      CVPixelBufferPoolRelease(v16);
      *(a2 + 4824) = 0;
    }

    CVPixelBufferPoolRetain(a1);
    result = 0;
    *(a2 + 4824) = a1;
  }

  else
  {
    v14 = H16ISP::H16ISPDevice::SetCommonBufferPool(v8, v9, 3, 0, v21, 0x32uLL);
    if (v14)
    {
      v15 = v14;
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v12 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
      }

      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        return 4294954514;
      }

      v17 = 136315394;
      v18 = "SetUnsynchronizedSensorRawOutputBufferPool";
      v19 = 1024;
      v20 = v15;
      v13 = "%s - Error disabling shared raw/sifr pool, res = %d\n";
      goto LABEL_18;
    }

    result = *(a2 + 4824);
    if (result)
    {
      CVPixelBufferPoolRelease(result);
      result = 0;
      *(a2 + 4824) = 0;
    }
  }

  return result;
}

uint64_t CopyStrobeYetiStatus(const __CFAllocator *a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  bzero(v12, 0x18uLL);
  v9 = *(a3 + 156);
  v13 = 1583;
  v15 = 0;
  v14 = v9;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v12, 0x18u, 0, 0xFFFFFFFF))
  {
    v10 = 4294954513;
  }

  else
  {
    v10 = 0;
    valuePtr = v16;
  }

  *a2 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  return v10;
}

uint64_t SetExclusivelyForSecureProcessing(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = CFBooleanGetValue(a1) != 0;
  *(a2 + 2924) = v8;
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  v10 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    v8 = *(a2 + 2924);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "SetExclusivelyForSecureProcessing";
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - capstream->metadataOutput.bSecureProcessingOnly is set to %d\n\n", &v14, 0x12u);
    LOBYTE(v8) = *(a2 + 2924);
  }

  result = H16ISP::H16ISPDevice::SetExclusiveExclaveStreamingMode(*(a4 + 24), *(a2 + 156), v8 & 1);
  if (result)
  {
    v12 = result;
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v10)
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315394;
      v15 = "SetExclusivelyForSecureProcessing";
      v16 = 1024;
      v17 = v12;
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - Error setting exclusive exclave streaming mode = %d\n", &v14, 0x12u);
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopyExclusivelyForSecureProcessing(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 2925))
  {
    result = 0;
  }

  else
  {
    result = 4294954514;
  }

  v4 = MEMORY[0x277CBED10];
  if (*(a3 + 2925))
  {
    v4 = MEMORY[0x277CBED28];
  }

  *a2 = *v4;
  return result;
}

uint64_t SetTorchSegmentParameters(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v44 = *MEMORY[0x277D85DE8];
  LODWORD(v42) = 101;
  valuePtr = 0;
  *v30 = 0;
  *v39 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  v7 = CFGetTypeID(v1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(v6, @"SegmentLEDSignature");
  v9 = CFDictionaryGetValue(v6, @"SegmentLEDMode");
  v10 = CFDictionaryGetValue(v6, @"SegmentLEDGroups");
  v11 = CFDictionaryGetValue(v6, @"SegmentLEDLevels");
  v12 = CFDictionaryGetValue(v6, @"SegmentLEDBitmasks");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
    if (HIDWORD(valuePtr) == 170)
    {
      if (v9)
      {
        CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
      }
    }
  }

  if (v10)
  {
    CFNumberGetValue(v10, kCFNumberIntType, v30);
    LODWORD(v10) = *v30;
    if (*v30 > 9)
    {
      return 4294954516;
    }
  }

  if (CFArrayGetCount(v11) != v10)
  {
    return 4294954516;
  }

  v13 = *v30;
  if (CFArrayGetCount(v12) != v13)
  {
    return 4294954516;
  }

  v14 = *v30;
  if (*v30)
  {
    v15 = 0;
    v16 = v39;
    v17 = v34;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
      v19 = CFGetTypeID(ValueAtIndex);
      if (v19 != CFNumberGetTypeID())
      {
        return 4294954516;
      }

      v20 = CFArrayGetValueAtIndex(v11, v15);
      CFNumberGetValue(v20, kCFNumberSInt16Type, v16);
      v21 = CFArrayGetValueAtIndex(v12, v15);
      v22 = CFGetTypeID(v21);
      if (v22 != CFNumberGetTypeID())
      {
        return 4294954516;
      }

      v23 = CFArrayGetValueAtIndex(v12, v15);
      CFNumberGetValue(v23, kCFNumberSInt64Type, v17);
      ++v15;
      ++v16;
      ++v17;
      if (v15 >= *v30)
      {
        v14 = *v30 != 0;
        break;
      }
    }
  }

  if (HIDWORD(valuePtr) || v14)
  {
    if (!*(v5 + 160))
    {
      H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v5 + 156), 1u, 1u);
    }

    v27 = *(v3 + 232);
    if (v27)
    {
      v43 = 1;
      H16ISP::H16ISPServicesRemote::SetProperty(v27, &v42);
    }

    v24 = H16ISP::H16ISPDevice::SetSegmentTorchLEDLevels(*(v3 + 24), *(v5 + 156), BYTE4(valuePtr), valuePtr, v30[0], v39, v34);
    if (!v24)
    {
      v25 = 0;
      goto LABEL_34;
    }

    v28 = *(v3 + 232);
    v25 = 4294954516;
    if (!v28)
    {
      goto LABEL_34;
    }

LABEL_33:
    v43 = 0;
    H16ISP::H16ISPServicesRemote::SetProperty(v28, &v42);
    goto LABEL_34;
  }

  v24 = H16ISP::H16ISPDevice::SetSegmentTorchLEDLevels(*(v3 + 24), *(v5 + 156), 0, valuePtr, 0, v39, v34);
  if (!*(v5 + 160))
  {
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v5 + 156), 0, 0);
  }

  if (!v24)
  {
    v25 = 0;
    v28 = *(v3 + 232);
    if (!v28)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v25 = 4294954516;
LABEL_34:
  v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v29 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v33 = v24;
    _os_log_impl(&dword_2247DB000, v29, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting segmented LED levels. result=0x%08X\n\n", buf, 8u);
  }

  return v25;
}

uint64_t SetFocusBehavior(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 160))
  {
    return 4294954612;
  }

  v13 = v4;
  v14 = v5;
  if (!cf)
  {
    return 4294954516;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
  if (valuePtr > 2)
  {
    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::SetFocusMultiCamBehavior(*(a4 + 24), *(a2 + 156), valuePtr);
  if (result)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SetFocusBehavior();
    }

    return 4294954514;
  }

  else
  {
    *(a2 + 660) = valuePtr;
  }

  return result;
}

uint64_t SetExclaveTestSuite(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  result = CFDictionaryContainsKey(a1, @"ExclaveGraphManagerInitTest");
  if (!result)
  {
    return result;
  }

  v9 = MEMORY[0x277D86220];
  if (!*(a2 + 2904))
  {
    goto LABEL_17;
  }

  ConfigureExclaveGraph(a4, a2);
  *v19 = 0;
  v10 = (a2 + 156);
  if (H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *(a2 + 156), 1718186595))
  {
    H16ISP::H16ISPFilterGraphManager::GetNode(*(a2 + 4952), 17, v19);
    v11 = *(a2 + 2921);
    if (v11 != (*(**v19 + 40))(*v19))
    {
      goto LABEL_17;
    }

    *v19 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(*(a2 + 4952), 20, v19);
    if (*v19)
    {
      v12 = *(a2 + 2922);
      if (v12 != (*(**v19 + 40))(*v19))
      {
        goto LABEL_17;
      }
    }

    *v19 = 0;
    H16ISP::H16ISPFilterGraphManager::GetNode(*(a2 + 4952), 21, v19);
    v13 = *v19;
    if (*v19)
    {
      v14 = *(a2 + 2920);
      goto LABEL_16;
    }

LABEL_22:
    v15 = 1;
    goto LABEL_23;
  }

  if (!H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *v10, 1718775412) && !H16ISP::H16ISPDevice::isSensorType(*(a4 + 24), *v10, 1718776695))
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SetExclaveTestSuite();
    }

    goto LABEL_22;
  }

  *v19 = 0;
  H16ISP::H16ISPFilterGraphManager::GetNode(*(a2 + 4952), 22, v19);
  v13 = *v19;
  if (!*v19)
  {
    goto LABEL_22;
  }

  v14 = *(a2 + 2923);
LABEL_16:
  if (v14 == (*(*v13 + 40))(v13))
  {
    goto LABEL_22;
  }

LABEL_17:
  v15 = 0;
LABEL_23:
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v9)
  {
    v17 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "Fail";
    if (v15)
    {
      v18 = "Pass";
    }

    *v19 = 136315138;
    *&v19[4] = v18;
    _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "ExclaveGraphManagerInitTest test result: %s\n", v19, 0xCu);
  }

  if (v15)
  {
    return 0;
  }

  else
  {
    return 4294954514;
  }
}

uint64_t CopyMainToSIFRFrameRateRatio(uint64_t a1, CFNumberRef *a2, uint64_t a3)
{
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, (a3 + 64));
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4294954510;
  }

  *a2 = v4;
  return v5;
}

uint64_t CopyDefectivePixels(uint64_t a1, __CFData **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  *&v14[1] = 0;
  v14[0] = 0;
  *buf = xmmword_2249BBE6C;
  *&buf[16] = 0x200000002;
  std::unordered_map<eCIspDpcTypes,FigCaptureStreamDefectivePixelsType>::unordered_map(v13, buf, 3);
  MaxResolutionSensorConfigIndex = H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex(*(a5 + 24), *(a3 + 156), v14);
  if (MaxResolutionSensorConfigIndex)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "CopyDefectivePixels";
      *&buf[12] = 1024;
      *&buf[14] = MaxResolutionSensorConfigIndex;
      v10 = "%s - Could not find valid sensor config index, res = 0x%08X\n";
LABEL_11:
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x12u);
    }
  }

  else
  {
    DPCCount = H16ISP::H16ISPDevice::GetDPCCount(*(a5 + 24), *(a3 + 156), v14[0], &v14[1]);
    if (!DPCCount)
    {
      operator new[]();
    }

    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "CopyDefectivePixels";
      *&buf[12] = 1024;
      *&buf[14] = DPCCount;
      v10 = "%s - CISP_CMD_CH_SENSOR_STATIC_DPC_INFO_GET failed, res = 0x%08X\n";
      goto LABEL_11;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(v13);
  *a2 = 0;
  return 4294954516;
}

void sub_2248A0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<unsigned int,__CVBuffer *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,__CVBuffer *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,__CVBuffer *>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t CopyDCNUCVPixelBuffer(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (a2)
  {
    if (*(a3 + 58168) == 1)
    {
      v4 = *(a3 + 4976);
      if (v4)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZL21CopyDCNUCVPixelBufferPK13__CFAllocatorPvP19H16ISPCaptureStreamP18H16ISPCaptureGroupP19H16ISPCaptureDevice_block_invoke;
        block[3] = &unk_2785311B0;
        block[4] = &v12;
        block[5] = &v16;
        block[6] = a3;
        dispatch_sync(v4, block);
        v5 = v17[3];
        if (v5)
        {
          CVBufferSetAttachment(v5, *MEMORY[0x277CF3F70], v13[3], kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(v17[3], *MEMORY[0x277CF40A8], @"/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(v17[3], *MEMORY[0x277CF40A0], @"/var/mobile/Library/ISP/CalData/DCNUMetadata_0", kCVAttachmentMode_ShouldPropagate);
          CFRelease(v13[3]);
          v6 = 0;
LABEL_18:
          *a2 = v17[3];
          goto LABEL_19;
        }

        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          CopyDCNUCVPixelBuffer();
        }

        v9 = v13[3];
        if (v9)
        {
          CFRelease(v9);
        }
      }

      else
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          CopyDCNUCVPixelBuffer();
        }
      }
    }

    v6 = 4294954513;
    goto LABEL_18;
  }

  v6 = 4294954516;
LABEL_19:
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v6;
}

void sub_2248A0E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t SetTimewarpConfiguration(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v24 = 0.0;
  v4 = MEMORY[0x277D86220];
  if (!byte_2810033C9)
  {
    v19 = 0;
    v17 = 0;
    v20 = 0;
    goto LABEL_27;
  }

  if (!cf || (v8 = CFGetTypeID(cf), v8 != CFDictionaryGetTypeID()))
  {
    v19 = 0;
    v17 = 0;
    v20 = 4294954516;
LABEL_27:
    v13 = "Disabled";
    goto LABEL_28;
  }

  if (!*(a2 + 160))
  {
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
    {
      v23 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      SetTimewarpConfiguration();
    }

    v19 = 0;
    v17 = 0;
    v20 = 4294954509;
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(cf, @"TimewarpModeEnable_Private");
  v10 = CFDictionaryGetValue(cf, @"TimewarpModeOverride_Private");
  v11 = CFDictionaryGetValue(cf, @"TimewarpMinFrameRate_Private");
  v12 = CFDictionaryGetValue(cf, @"TimewarpMaxFrameRate_Private");
  v13 = "Disabled";
  if (!(Value | v10))
  {
    v19 = 0;
    v17 = 0;
    v20 = 4294954516;
    goto LABEL_28;
  }

  v14 = v12;
  if (!Value)
  {
    v15 = 0;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = CFBooleanGetValue(Value) != 0;
  if (v10)
  {
LABEL_8:
    CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr + 4);
  }

LABEL_9:
  if (v11)
  {
    CFNumberGetValue(v11, kCFNumberFloatType, &valuePtr);
  }

  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberFloatType, &v24);
  }

  if (v10)
  {
    v16 = Value == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = vcvts_n_u32_f32(*&valuePtr, 8uLL);
  if (v16)
  {
    v18 = HIDWORD(valuePtr) != -1;
  }

  else
  {
    v18 = v15;
  }

  v19 = vcvts_n_u32_f32(v24, 8uLL);
  if (H16ISP::H16ISPDevice::SetTimewarpParameters(*(a4 + 24), *(a2 + 156), v18, SHIDWORD(valuePtr), v17, v19))
  {
    v20 = 4294954514;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v13 = "Enabled";
  }

LABEL_28:
  v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v4)
  {
    v21 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v27 = "SetTimewarpConfiguration";
    v28 = 2080;
    v29 = v13;
    v30 = 1024;
    v31 = HIDWORD(valuePtr);
    v32 = 1024;
    v33 = v17;
    v34 = 1024;
    v35 = v19;
    v36 = 1024;
    v37 = v20;
    _os_log_impl(&dword_2247DB000, v21, OS_LOG_TYPE_INFO, "%s - Timewarp is %s, TimewarpMode=%d, minRecordingFPS=%d, maxRecordingFPS=%d (err=%d)\n\n", buf, 0x2Eu);
  }

  return v20;
}

uint64_t SetTimewarpRecordingInProgress(const __CFBoolean *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (byte_2810033C9)
  {
    v4 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      v8 = 4294954516;
      if (v7 == CFBooleanGetTypeID())
      {
        LODWORD(v4) = CFBooleanGetValue(v4) != 0;
        if (H16ISP::H16ISPDevice::EnableTimewarpRecording(*(a4 + 24), *(a2 + 156), v4))
        {
          v8 = 4294954516;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }
    }

    else
    {
      v8 = 4294954516;
    }
  }

  else
  {
    LODWORD(v4) = 0;
    v8 = 0;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "off";
    v13 = "SetTimewarpRecordingInProgress";
    v12 = 136315650;
    if (v4)
    {
      v10 = "on";
    }

    v14 = 2080;
    v15 = v10;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "%s - Timewarp recording is %s (err=%d)\n\n", &v12, 0x1Cu);
  }

  return v8;
}

uint64_t SetTimewarpForceFPS(const __CFNumber *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (byte_2810033C9)
  {
    if (cf && (v7 = CFGetTypeID(cf), v7 == CFNumberGetTypeID()))
    {
      v8 = 4294954516;
      if (*(a2 + 160))
      {
        CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
        if (H16ISP::H16ISPDevice::SetTimewarpForceFPS(*(a4 + 24), *(a2 + 156), valuePtr))
        {
          v8 = 4294954516;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 4294954516;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "SetTimewarpForceFPS";
    v14 = 1024;
    v15 = valuePtr;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "%s - fps=%d (err=%d)\n\n", buf, 0x18u);
  }

  return v8;
}

uint64_t SetExternalSyncModeEnabled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 160))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetExternalSyncModeEnabled();
    }

    return 4294954514;
  }

  else
  {
    result = H16ISP::H16ISPDevice::SetMasterSlaveSync(*(a4 + 24), *(a2 + 156), 3);
    if (result)
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        SetExternalSyncModeEnabled();
      }

      return 4294954516;
    }
  }

  return result;
}

uint64_t SetMLVNRConfiguration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  theDict = 0;
  v6 = *MEMORY[0x277CF4738];
  number = 0;
  value = v6;
  v26 = 0;
  valuePtr = 0;
  v25 = 0;
  if (a1)
  {
    v8 = CFGetTypeID(a1);
    if (v8 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    ValueIfPresent = CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF4720], &value);
    v10 = value;
    if (ValueIfPresent)
    {
      v11 = value == *MEMORY[0x277CF4730];
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF54E0], &theDict))
      {
        v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v18 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      v12 = *MEMORY[0x277CF54F8];
      if (!CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF54F8], &number))
      {
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v19 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      CFNumberGetValue(number, kCFNumberIntType, &valuePtr + 4);
      v13 = *MEMORY[0x277CF54F0];
      if (!CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x277CF54F0], &number))
      {
        v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v20 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      CFNumberGetValue(number, kCFNumberIntType, &v26 + 4);
      if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF54E8], &theDict))
      {
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      if (!CFDictionaryGetValueIfPresent(theDict, v12, &number))
      {
        v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v22 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
      if (!CFDictionaryGetValueIfPresent(theDict, v13, &number))
      {
        v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v23 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      CFNumberGetValue(number, kCFNumberIntType, &v26);
      if (!CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF4728], &number))
      {
        v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v24 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          SetMLVNRConfiguration();
        }

        return 4294954516;
      }

      CFNumberGetValue(number, kCFNumberIntType, &v25);
      v10 = value;
    }
  }

  else
  {
    v10 = v6;
  }

  if (v10 == *MEMORY[0x277CF4740])
  {
    v15 = 1;
  }

  else if (v10 == *MEMORY[0x277CF4730])
  {
    v15 = 2;
  }

  else
  {
    if (v10 != v6)
    {
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v14 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        SetMLVNRConfiguration();
      }

      return 4294954516;
    }

    v15 = 0;
  }

  result = H16ISP::H16ISPDevice::SetMLVNRConfiguration(*(a4 + 24), *(a2 + 156), v15, SHIDWORD(valuePtr), valuePtr, SHIDWORD(v26), v26, v25);
  if (result)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetMLVNRConfiguration();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySupportedSphereModes(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v8 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF6010]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF5FF8]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6030]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6038]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6040]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6018]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6000]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6008]);
    CFArrayAppendValue(v8, *MEMORY[0x277CF6020]);
    if (*(*(a5 + 24) + 4312) >= 17)
    {
      CFArrayAppendValue(v8, *MEMORY[0x277CF6050]);
      CFArrayAppendValue(v8, *MEMORY[0x277CF6048]);
      CFArrayAppendValue(v8, *MEMORY[0x277CF6028]);
    }

    result = 0;
  }

  else
  {
    result = 4294954510;
  }

  *a2 = v8;
  return result;
}

uint64_t SetPrimaryFrameSkip(const __CFNumber *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 1;
  if (*(a2 + 4360))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      SetPrimaryFrameSkip(a2, (a2 + 4360));
    }

    return 4294954514;
  }

  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr <= 0)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetPrimaryFrameSkip();
    }

    return 4294954516;
  }

  else
  {
    result = H16ISP::H16ISPDevice::SetPrimaryFrameSkippingRatio(*(a4 + 24), *(a2 + 156), valuePtr);
    if (result)
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        SetPrimaryFrameSkip();
      }

      return 4294954514;
    }
  }

  return result;
}

uint64_t SetActiveNondisruptiveStreamingFormats(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a1 || (v7 = CFGetTypeID(a1), v7 != CFArrayGetTypeID()))
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      SetActiveNondisruptiveStreamingFormats();
    }

    return 4294954516;
  }

  v8 = *(a2 + 4808);
  if (!v8 || (Count = CFArrayGetCount(v8), v10 = *(a2 + 48), Count <= v10))
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      SetActiveNondisruptiveStreamingFormats();
    }

    return 4294954516;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 4808), v10);
  if (ValueAtIndex && (v12 = ValueAtIndex, !CFEqual(ValueAtIndex, *MEMORY[0x277CBEEE8])))
  {
    *(a2 + 4945) = 0;
    v17 = CFArrayGetCount(v12);
    if (CFArrayGetCount(a1) < 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = CFArrayGetValueAtIndex(a1, v19);
        valuePtr = 0;
        if (v20 && (v21 = v20, v46.location = 0, v46.length = v17, CFArrayContainsValue(v12, v46, v20)))
        {
          CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
          v22 = valuePtr;
          v23 = *(a2 + 192);
          v24 = valuePtr >= v23;
          v25 = valuePtr - v23;
          if (v24)
          {
            valuePtr = v25;
            v22 = v25;
          }

          v26 = *(*(a2 + 184) + 120 * v22 + 16);
          if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), v26, v32, v41))
          {
            v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v27 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = *(a2 + 156);
              *buf = 136315650;
              v36 = "ActiveNondisruptiveStreamingFormatsTrackIncludedConfigs";
              v37 = 1024;
              v38 = v28;
              v39 = 1024;
              v40 = v26;
              _os_log_error_impl(&dword_2247DB000, v27, OS_LOG_TYPE_ERROR, "%s - ch%u: failed to load camera config=%u\n", buf, 0x18u);
            }
          }

          else if (v33 >> 8 < 0x21 || v34 >> 5 < 0xBD)
          {
            if (v33 >> 7 >= 0x25 && v34 >= 0xB90)
            {
              *(a2 + 4946) = 1;
            }
          }

          else
          {
            *(a2 + 4945) = 1;
          }

          v18 |= 1 << v26;
        }

        else
        {
          v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v29 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v41 = 136315394;
            v42 = "SetActiveNondisruptiveStreamingFormats";
            v43 = 2048;
            v44 = v19;
            _os_log_error_impl(&dword_2247DB000, v29, OS_LOG_TYPE_ERROR, "%s - skipping format index = %ld\n", v41, 0x16u);
          }
        }

        ++v19;
      }

      while (v19 < CFArrayGetCount(a1));
    }

    result = H16ISP::H16ISPDevice::EnableContextSwitchingWithType(*(a4 + 24), *(a2 + 156), v18, 1);
    if (result)
    {
      v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v30 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        SetActiveNondisruptiveStreamingFormats();
      }

      return 4294954514;
    }
  }

  else
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetActiveNondisruptiveStreamingFormats();
    }

    return 4294954513;
  }

  return result;
}

uint64_t CopyStreamSensorRawOutputBufferPoolRequirements(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294954516;
  }

  v5 = a5;
  v7 = a2;
  LOWORD(v61[0]) = 3;
  v62 = 32;
  v56 = (a3 + 156);
  if (H16ISP::H16ISPDevice::GetPoolInfoBatched(*(a5 + 24), *(a3 + 156), v61, 2))
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CopyStreamSensorRawOutputBufferPoolRequirements();
    }

    v10 = 0;
    result = 4294954514;
    goto LABEL_46;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    theArray = Mutable;
    v49 = v7;
    v13 = 0;
    v14 = 0;
    key = *MEMORY[0x277CC4D60];
    v15 = v61;
    v54 = *MEMORY[0x277CC4E38];
    v53 = *MEMORY[0x277CC4EC8];
    v51 = *MEMORY[0x277CC4E50];
    v52 = *MEMORY[0x277CC4DD8];
    v50 = *MEMORY[0x277CC4E30];
    v16 = 1;
    while (1)
    {
      v17 = v16;
      if (v13)
      {
        v18 = *(a3 + 48);
        v19 = *(a3 + 192);
        if (v18 < v19)
        {
          v19 = 0;
        }

        v20 = *(a3 + 184) + 120 * (v18 - v19);
        v22 = *(v20 + 16);
        v21 = (v20 + 16);
        if (H16ISP::H16ISPDevice::GetCameraConfig(*(v5 + 24), *(a3 + 156), v22, v59, &valuePtr))
        {
          v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v23 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
          }

          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *v56;
            v25 = *v21;
            *buf = 136315650;
            v64 = "CurrentSensorConfigIsHiRes";
            v65 = 1024;
            v66 = v24;
            v67 = 1024;
            v68 = v25;
            _os_log_error_impl(&dword_2247DB000, v23, OS_LOG_TYPE_ERROR, "%s - ch%u: failed to load camera config=%u\n", buf, 0x18u);
          }

LABEL_20:
          if ((*(a3 + 4945) & 1) == 0 && *(a3 + 4944) != 1)
          {
            goto LABEL_44;
          }

          goto LABEL_22;
        }

        if (v60 >> 8 <= 0x20)
        {
          goto LABEL_20;
        }
      }

LABEL_22:
      if (*(v15 + 4) && *(v15 + 5))
      {
        v26 = *(a3 + 569);
        v27 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v27)
        {
          v28 = v27;
          v58 = v26;
          v29 = v5;
          v30 = CFNumberCreate(a1, kCFNumberSInt16Type, v15 + 3);
          if (v30)
          {
            v31 = v30;
            CFDictionarySetValue(v28, key, v30);
            CFRelease(v31);
          }

          v32 = CFNumberCreate(a1, kCFNumberSInt16Type, v15 + 2);
          if (v32)
          {
            v33 = v32;
            CFDictionarySetValue(v28, v54, v32);
            CFRelease(v33);
          }

          v34 = CFNumberCreate(a1, kCFNumberIntType, v15 + 8);
          if (v34)
          {
            v35 = v34;
            CFDictionarySetValue(v28, v53, v34);
            CFRelease(v35);
          }

          v36 = CFNumberCreate(a1, kCFNumberIntType, v15 + 10);
          v5 = v29;
          if (v36)
          {
            v37 = v36;
            CFDictionarySetValue(v28, v52, v36);
            CFRelease(v37);
          }

          valuePtr = v15[6];
          v38 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
          if (v38)
          {
            v39 = v38;
            CFDictionarySetValue(v28, v51, v38);
            CFRelease(v39);
          }

          valuePtr = H16ISP::getCVPixelFormat(v15[14], *(v15 + 24), (v58 & 1) == 0);
          v40 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
          if (v40)
          {
            v41 = v40;
            CFDictionarySetValue(v28, v50, v40);
            CFRelease(v41);
          }

          CFArrayAppendValue(theArray, v28);
          CFRelease(v28);
          v42 = *(v15 + 1);
          v43 = a3 + 4840 + 48 * v14;
          *(v43 + 8) = *v15;
          *(v43 + 24) = v42;
        }
      }

      else
      {
        v44 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v44 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v44;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = *v56;
          v46 = *(v15 + 4);
          v47 = *(v15 + 5);
          v48 = *v15;
          valuePtr = 136316162;
          v70 = "CopyStreamSensorRawOutputBufferPoolRequirements";
          v71 = 1024;
          v72 = v45;
          v73 = 1024;
          v74 = v46;
          v75 = 1024;
          v76 = v47;
          v77 = 1024;
          v78 = v48;
          _os_log_error_impl(&dword_2247DB000, v44, OS_LOG_TYPE_ERROR, "%s - ch=%u: invalid width=%u height=%u for pool type=%hu\n", &valuePtr, 0x24u);
        }
      }

      v16 = 0;
      v13 = 1;
      v15 = &v62;
      v14 = 1;
      if ((v17 & 1) == 0)
      {
LABEL_44:
        result = 0;
        v7 = v49;
        v10 = theArray;
        goto LABEL_46;
      }
    }
  }

  v10 = 0;
  result = 4294954510;
LABEL_46:
  *v7 = v10;
  return result;
}

uint64_t SetStreamSensorRawOutputBufferPools(CFTypeRef cf, uint64_t a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a2 + 160))
  {
    return 4294954612;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFArrayGetTypeID())
    {
      return 4294954516;
    }

    if (CFArrayGetCount(cf) < 1)
    {
      return 0;
    }

    v9 = 0;
    v10 = MEMORY[0x277D86220];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v9);
      if (!ValueAtIndex)
      {
        break;
      }

      v12 = ValueAtIndex;
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 != CVPixelBufferPoolGetTypeID())
      {
        break;
      }

      IndexForPool = H16ISPSensorRawPoolConfigurationFindIndexForPool(a2, v12);
      if ((IndexForPool & 0x80000000) != 0)
      {
        v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v10)
        {
          v18 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
        }

        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        *buf = 136315394;
        v28 = "SetStreamSensorRawOutputBufferPools";
        v29 = 2048;
        v30 = v9;
        v19 = v18;
        v20 = "%s - failed to resolve pool type for pool at index = %ld\n";
        goto LABEL_25;
      }

      v15 = IndexForPool;
      v16 = (a2 + 4840 + 48 * IndexForPool);
      if (*v16)
      {
        CVPixelBufferPoolRelease(*v16);
      }

      if (!v15 && SetSIFRCommonPool(a4, *(a2 + 156), 1))
      {
        v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v10)
        {
          v26 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          SetStreamSensorRawOutputBufferPools();
        }

        return 4294954514;
      }

      *v16 = CVPixelBufferPoolRetain(v12);
LABEL_18:
      if (++v9 >= CFArrayGetCount(cf))
      {
        return 0;
      }
    }

    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v10)
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 136315394;
    v28 = "SetStreamSensorRawOutputBufferPools";
    v29 = 2048;
    v30 = v9;
    v19 = v17;
    v20 = "%s - invalid pool at index = %ld\n";
LABEL_25:
    _os_log_error_impl(&dword_2247DB000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    goto LABEL_18;
  }

  SetSIFRCommonPool(a4, *(a2 + 156), 0);
  v21 = 0;
  v22 = (a2 + 4840);
  v23 = 1;
  do
  {
    v24 = v23;
    v25 = *&v22[3 * v21];
    if (v25)
    {
      CVPixelBufferPoolRelease(v25);
    }

    v23 = 0;
    v21 = 1;
  }

  while ((v24 & 1) != 0);
  result = 0;
  v22[4] = 0u;
  v22[5] = 0u;
  v22[2] = 0u;
  v22[3] = 0u;
  *v22 = 0u;
  v22[1] = 0u;
  return result;
}

uint64_t SetStreamSensorRawOutputRetainedBufferCounts(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v29 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      SetStreamSensorRawOutputRetainedBufferCounts();
    }

    return 4294954514;
  }

  v9 = Count;
  v10 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v10)
  {
    return 4294954514;
  }

  v11 = v10;
  CFDictionaryGetKeysAndValues(a1, v10, 0);
  v12 = MEMORY[0x277D86220];
  if (v9 >= 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = v11[v13];
      valuePtr = 0;
      v41 = 0;
      if (!v14)
      {
        break;
      }

      if (!CFNumberGetValue(v14, kCFNumberSInt64Type, &valuePtr))
      {
        v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
        {
          v24 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
        }

        if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 136315394;
        v44 = "SetStreamSensorRawOutputRetainedBufferCountsInternal";
        v45 = 2048;
        *v46 = v13;
        v21 = v24;
        v22 = "%s - failed to extract pool address at index = %ld\n";
        goto LABEL_28;
      }

      v15 = valuePtr;
      if (!valuePtr || (v16 = CFGetTypeID(valuePtr), v16 != CVPixelBufferPoolGetTypeID()))
      {
        v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
        {
          v23 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      IndexForPool = H16ISPSensorRawPoolConfigurationFindIndexForPool(a2, v15);
      if ((IndexForPool & 0x80000000) != 0)
      {
        v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
        {
          v25 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
        }

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 136315394;
        v44 = "SetStreamSensorRawOutputRetainedBufferCountsInternal";
        v45 = 2048;
        *v46 = v13;
        v21 = v25;
        v22 = "%s - failed to resolve pool type for pool at index = %ld\n";
        goto LABEL_28;
      }

      v18 = IndexForPool;
      Value = CFDictionaryGetValue(a1, v11[v13]);
      if (!Value || !CFNumberGetValue(Value, kCFNumberIntType, &v41) || v41 < 0)
      {
        v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
        {
          v23 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

LABEL_23:
        *buf = 136315394;
        v44 = "SetStreamSensorRawOutputRetainedBufferCountsInternal";
        v45 = 2048;
        *v46 = v13;
        v21 = v23;
        v22 = "%s - invalid pool address at index = %ld\n";
LABEL_28:
        _os_log_error_impl(&dword_2247DB000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0x16u);
        goto LABEL_36;
      }

      *(a2 + 4840 + 48 * v18 + 40) = v41;
LABEL_36:
      if (v9 == ++v13)
      {
        goto LABEL_40;
      }
    }

    v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
    {
      v20 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136315394;
    v44 = "SetStreamSensorRawOutputRetainedBufferCountsInternal";
    v45 = 2048;
    *v46 = v13;
    v21 = v20;
    v22 = "%s - invalid key at index = %ld\n";
    goto LABEL_28;
  }

LABEL_40:
  free(v11);
  if (!*(a2 + 160))
  {
    return 0;
  }

  v27 = resizeRawPool(a4, a2);
  if (v27)
  {
    v26 = v27;
    v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
    {
      v28 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      SetStreamSensorRawOutputRetainedBufferCounts();
    }

    return v26;
  }

  if (*(a2 + 4888))
  {
    v31 = *(a2 + 4928);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = *(a2 + 160);
      if (H16ISP::H16ISPFrameReceiver::HasPool(v32, 31))
      {
        FirmwarePrimeCount = H16ISP::H16ISPFrameReceiver::getFirmwarePrimeCount(v32, 31);
        if (FirmwarePrimeCount + v31)
        {
          v34 = FirmwarePrimeCount;
          if (H16ISP::H16ISPFrameReceiver::ModifyPoolBufferCount(v32, 31, FirmwarePrimeCount + v31))
          {
            v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
            {
              v35 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v44 = "resizeHiResRawPool";
              v45 = 1024;
              *v46 = v31;
              *&v46[4] = 1024;
              *&v46[6] = v34;
              _os_log_error_impl(&dword_2247DB000, v35, OS_LOG_TYPE_ERROR, "%s - failed to modify buffer count retainedCount=%d firmwareCount=%d\n", buf, 0x18u);
              v35 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            }

            if (v35 == v12)
            {
              v35 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v35;
            }

            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              SetStreamSensorRawOutputRetainedBufferCounts();
            }

            return 4294954514;
          }
        }
      }
    }
  }

  v36 = resizeStillMetaPool(a2, 1, &v40, &v39);
  if (v36)
  {
    v26 = v36;
    v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
    {
      v37 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v44 = "SetStreamSensorRawOutputRetainedBufferCounts";
      v45 = 1024;
      *v46 = v26;
      *&v46[4] = 1024;
      *&v46[6] = v40;
      v47 = 1024;
      v48 = v39;
      _os_log_error_impl(&dword_2247DB000, v37, OS_LOG_TYPE_ERROR, "%s - failed to resize still meta pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n", buf, 0x1Eu);
    }
  }

  else
  {
    v26 = resizeThumbnailRawPool(a2, 1, 0, &v39);
    if (v26)
    {
      v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
      {
        v38 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        SetStreamSensorRawOutputRetainedBufferCounts();
      }
    }
  }

  return v26;
}

uint64_t SetTorchBeamWidth(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0.0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  result = H16ISP::H16ISPDevice::SetTorchBeamWidth(*(a4 + 24), *(a2 + 156), valuePtr);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetTorchBeamWidth(&valuePtr);
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetMultiIlluminantWhiteBalanceEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = *(a2 + 160);
  if (v8 && !H16ISP::H16ISPFrameReceiver::IsSuspended(v8))
  {
    return 4294954612;
  }

  v9 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  *(a2 + 58193) = v9;
  result = H16ISP::H16ISPDevice::EnableAWBMultiIlluminant(*(a4 + 24), *(a2 + 156), v9);
  if (result)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SetMultiIlluminantWhiteBalanceEnabled();
    }

    return 4294954516;
  }

  return result;
}

uint64_t CopyMultiIlluminantWhiteBalanceEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 58193))
  {
    v3 = MEMORY[0x277CBED28];
  }

  else
  {
    v3 = MEMORY[0x277CBED10];
  }

  *a2 = *v3;
  return 0;
}

uint64_t SetMaximumFrameRateForBufferAllocation(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0.0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  if (valuePtr < 0.0)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetMaximumFrameRateForBufferAllocation(&valuePtr);
    }

    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::SetMaximumFrameRateForAllocation(*(a4 + 24), *(a2 + 156), vcvtms_u32_f32(valuePtr * 256.0));
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetMaximumFrameRateForBufferAllocation(&valuePtr);
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetSIFRControlMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 192);
  if (v8 < v9)
  {
    v9 = 0;
  }

  if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v8 - v9) + 16), v15, v17))
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetSIFRControlMode();
    }

    return 4294954516;
  }

  if (!v16)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetSIFRControlMode();
    }

    return 4294954516;
  }

  v14 = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &v14);
  result = H16ISP::H16ISPDevice::SetCameraControl(*(a4 + 24), *(a2 + 156), 3, v14);
  if (result)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetLPDPFilterEnable();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetCameraControlsCacheExpiryDuration(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  if (valuePtr < 0.0)
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v8 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SetCameraControlsCacheExpiryDuration(&valuePtr);
    }

    return 4294954516;
  }

  result = H16ISP::H16ISPDevice::SetCameraControl(*(a4 + 24), *(a2 + 156), 5, (valuePtr * 1000000.0));
  if (result)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      SetCameraControlsCacheExpiryDuration();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetDCSDataFileLoad(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFDictionaryGetTypeID())
    {
      value = 0;
      valuePtr = 0;
      if (CFDictionaryGetValueIfPresent(a1, @"DCSDataFileLoad_FileType_Private", &value))
      {
        if (CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
        {
          theString = 0;
          if (CFDictionaryGetValueIfPresent(a1, @"DCSDataFileLoad_FilePath_Private", &theString))
          {
            CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
            v7 = fopen(CStringPtr, "rb");
            if (v7)
            {
              v8 = v7;
              fseeko(v7, 0, 2);
              ftello(v8);
              fseeko(v8, 0, 0);
              operator new[]();
            }
          }
        }
      }
    }
  }

  return 4294954516;
}

uint64_t SetDCSDataFileUnload(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::ISP_UnloadDataFile(*(a4 + 24), *(a2 + 156), valuePtr))
  {
    return 4294954514;
  }

  return 0;
}

uint64_t SetISPDCSDataLtcEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 160))
  {
    return 4294954612;
  }

  Value = CFBooleanGetValue(a1);
  if (H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 75, Value != 0))
  {
    v8 = 4294954516;
  }

  else
  {
    v8 = 0;
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = "disabled";
    v14 = "SetISPDCSDataLtcEnabled";
    v13 = 136315650;
    if (Value)
    {
      v12 = "enabled";
    }

    v15 = 2080;
    v16 = v12;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "%s - LTC metadata %s (err=%d)\n\n", &v13, 0x1Cu);
  }

  return v8;
}

uint64_t SetISPProperty(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"Property_Private");
  v9 = CFDictionaryGetValue(a1, @"Value_Private");
  valuePtr = 0;
  if (!Value || (v10 = v9) == 0 || !CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4) || !CFNumberGetValue(v10, kCFNumberIntType, &valuePtr))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      SetISPProperty();
    }

    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), *(a2 + 156), SHIDWORD(valuePtr), valuePtr, 0xFFFFFFFF))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t CopySensorSerialNum(const __CFAllocator *a1, CFStringRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x20uLL);
  v10 = 1322;
  v11 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), v9, 0x20u, 0, 0xFFFFFFFF))
  {
    result = 4294954509;
  }

  else
  {
    if (v12 <= 0x10u)
    {
      operator new[]();
    }

    result = 4294954516;
  }

  *a2 = 0;
  return result;
}

uint64_t SetDCSIMURate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::SetDCSIMUDataRate(*(a4 + 24), *(a2 + 156), valuePtr))
  {
    return 4294954514;
  }

  return 0;
}

uint64_t SetDCSMagnetometerReset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (H16ISP::H16ISPDevice::SetDCSNonVisionProperty(*(a4 + 24), *(a2 + 156), 1, 1))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDCSMagnetometerOperationMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::SetDCSNonVisionProperty(*(a4 + 24), *(a2 + 156), 2, valuePtr))
  {
    return 4294954514;
  }

  return 0;
}

uint64_t StartJasperForInternalStreaming(uint64_t a1)
{
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      StartJasperForInternalStreaming();
    }

    return 4294954514;
  }

  else
  {
    v6 = v3;
    if (H16ISP::H16ISPDevice::ISP_ReserveChannel(*(v3 + 24), *(DerivedStorage + 156), 2u))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        StartJasperForInternalStreaming();
      }

      return 0;
    }

    else
    {
      *(DerivedStorage + 2) = 1;
      v8 = *MEMORY[0x277CBED28];
      v9 = SetDeferAdditionOfAttachments(*MEMORY[0x277CBED28], DerivedStorage);
      if (v9)
      {
        started = v9;
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          StartJasperForInternalStreaming();
        }
      }

      else
      {
        valuePtr = 0;
        v11 = *MEMORY[0x277CBECE8];
        v12 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
        started = SetFormatIndex(v12, DerivedStorage, v13, v6);
        CFRelease(v12);
        if (started)
        {
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v14 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            StartJasperForInternalStreaming();
          }
        }

        else
        {
          v23 = 104;
          v15 = CFNumberCreate(v11, kCFNumberIntType, &v23);
          started = SetToFCapturingPresetIndex(v15, DerivedStorage, v16, v6);
          CFRelease(v15);
          if (started)
          {
            v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v18 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              StartJasperForInternalStreaming();
            }
          }

          else
          {
            *(v6 + 281) = 1;
            if ((dword_2810033B0 & 0x80000000) == 0 && H16ISP::H16ISPDevice::isSensorType(*(v6 + 24), *(DerivedStorage + 156), 1785950322))
            {
              *(v6 + 281) = 0;
              *(DerivedStorage + 4560) = 1;
            }

            v19 = SetMultipleOutputSupportEnabled(v8, DerivedStorage, v17, v6);
            if (v19)
            {
              started = v19;
              v20 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v20 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v20;
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                StartJasperForInternalStreaming();
              }
            }

            else
            {
              started = H16ISPCaptureStreamStartInternal(a1);
              if (started)
              {
                v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                {
                  v21 = os_log_create("com.apple.isp", "plugin");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
                }

                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  StartJasperForInternalStreaming();
                }
              }
            }
          }
        }
      }
    }
  }

  return started;
}

uint64_t StopJasperForInternalStreaming(uint64_t a1)
{
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 1))
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      StopJasperForInternalStreaming();
    }

    return 4294954514;
  }

  else
  {
    v6 = v3;
    if (H16ISPCaptureStreamStopInternal(a1))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        StopJasperForInternalStreaming();
      }
    }

    *(v6 + 281) = 0;
    *(DerivedStorage + 4605) = 1;
    *(DerivedStorage + 2) = 0;
    if (H16ISP::H16ISPDevice::ISP_ReleaseChannel(*(v6 + 24), *(DerivedStorage + 156)))
    {
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v8 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        StopJasperForInternalStreaming();
      }
    }

    if (!CFArrayGetCount(*(v6 + 120)))
    {
      goto LABEL_23;
    }

    v9 = 0;
    v10 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(v6 + 120), v9);
      FigCaptureStreamGetFigBaseObject();
      if (*(CMBaseObjectGetDerivedStorage() + 1))
      {
        ++v10;
      }

      ++v9;
    }

    while (v9 < CFArrayGetCount(*(v6 + 120)));
    if (!v10)
    {
LABEL_23:
      result = *(v6 + 216);
      if (!result)
      {
        return result;
      }

      MEMORY[0x22AA55B60](result, 0x1000C40488540DALL);
      *(v6 + 216) = 0;
      H16ISP::H16ISPDevice::ISP_DestroyMultiCameraSession(*(v6 + 24));
    }

    return 0;
  }
}

uint64_t H16ISPCaptureStreamStopInternal(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v76 = *MEMORY[0x277D85DE8];
  v2 = 3758097122;
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = CMBaseObjectGetDerivedStorage();
  v5 = (DerivedStorage + 156);
  kdebug_trace();
  if (!*(DerivedStorage + 160))
  {
    goto LABEL_121;
  }

  v6 = *(v4 + 24);
  v7 = *(v6 + 538);
  if (*(DerivedStorage + 4592) == 1)
  {
    H16ISP::H16ISPDevice::SetPearlControlMode(v6, *(DerivedStorage + 156), *(DerivedStorage + 4594), 0, byte_2810033C6);
  }

  pthread_mutex_lock((DerivedStorage + 328));
  H16ISPResetVideoOutputConfigurationsForNewSelectedFormat(DerivedStorage, v4);
  pthread_mutex_unlock((DerivedStorage + 328));
  if (*(DerivedStorage + 4258) == 1)
  {
    EnableIRProjector(0, DerivedStorage, v4);
  }

  v8 = v7 + 8;
  if (*(v8 + 104 * *v5 + 8) == 1785950322)
  {
    H16ISP::JasperConfigManager::configureFrameMode(0xFFFFFFFFLL);
  }

  *(DerivedStorage + 4584) = 0;
  v9 = *(DerivedStorage + 4360);
  if (v9)
  {
    v10 = *(v8 + 104 * *v5 + 56);
    if (IsJasperSyncGroup(*(v4 + 24), v9))
    {
      CFArrayGetValueAtIndex(*(DerivedStorage + 4360), 0);
      FigCaptureStreamGetFigBaseObject();
      v10 = *(DerivedStorage + 156) == *(CMBaseObjectGetDerivedStorage() + 156);
    }

    if (GetNumberOfActiveChannels(*(DerivedStorage + 4360)) >= 2 && (v10 & 1) != 0)
    {
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStopInternal();
      }

      goto LABEL_121;
    }
  }

  else
  {
    v10 = 0;
  }

  if (StopExclaveStreams(v4, DerivedStorage))
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStopInternal();
    }
  }

  *(DerivedStorage + 2924) = 0;
  H16ISP::H16ISPFrameReceiver::stopReceive(*(DerivedStorage + 160));
  v13 = *(DerivedStorage + 4720);
  if (v13)
  {
    if (*(DerivedStorage + 4360))
    {
      *buf = 0;
      H16ISP::H16ISPFilterGraphManager::GetNode(v13, 3, buf);
      if (*buf)
      {
        H16ISP::H16ISPGraphFrameSyncNode::DisableChannel(*buf, *v5);
      }

      v14 = *(DerivedStorage + 4720);
      if ((v10 & 1) == 0)
      {
        if (!H16ISP::H16ISPFilterGraphManager::GetNode(v14, 2, buf) && *buf)
        {
          H16ISP::H16ISPGraphExitNode::UnRegisterH16ISPFrameReceivedProcForChannel(*buf, *v5);
        }

        goto LABEL_39;
      }

      H16ISP::H16ISPFilterGraphManager::Deactivate(v14);
      v15 = *(DerivedStorage + 4720);
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (CFArrayGetCount(*(DerivedStorage + 4360)))
      {
        v16 = 0;
        do
        {
          CFArrayGetValueAtIndex(*(DerivedStorage + 4360), v16);
          FigCaptureStreamGetFigBaseObject();
          v17 = CMBaseObjectGetDerivedStorage();
          if (v17)
          {
            *(v17 + 4720) = 0;
          }

          ++v16;
        }

        while (v16 < CFArrayGetCount(*(DerivedStorage + 4360)));
      }
    }

    else
    {
      H16ISP::H16ISPFilterGraphManager::Deactivate(v13);
      v18 = *(DerivedStorage + 4720);
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    *(DerivedStorage + 4720) = 0;
  }

LABEL_39:
  v19 = *(DerivedStorage + 4952);
  if (v19)
  {
    H16ISP::H16ISPFilterGraphManager::Deactivate(v19);
    v20 = *(DerivedStorage + 4952);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    *(DerivedStorage + 4952) = 0;
  }

  v21 = *(DerivedStorage + 4520);
  if (v21)
  {
    H16ISP::ProjectorManager::~ProjectorManager(v21);
    MEMORY[0x22AA55B60]();
    *(DerivedStorage + 4520) = 0;
  }

  bzero(__dst, 0x70uLL);
  H16ISP::H16ISPFrameReceiver::GetPerSessionTelemetryReadings(*(DerivedStorage + 160), __dst);
  v58 = 0;
  H16ISP::H16ISPDevice::GetErrorCount(*(v4 + 24), *(DerivedStorage + 156), 2, &v58);
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(DerivedStorage + 156);
    v25 = v58 - *(DerivedStorage + 4792);
    *buf = 136316162;
    *&buf[4] = "SendTelemetryData";
    *v73 = 1024;
    *&v73[2] = v24;
    *&v73[6] = 1024;
    *&v73[8] = __dst[0];
    *&v73[12] = 1024;
    *&v73[14] = v60;
    *&v73[18] = 1024;
    *v74 = v25;
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "%s - channel=%d frameDropRequestEnabled=%d totalFrameDropRequests=%d sifErrorCount=%d\n", buf, 0x24u);
  }

  v26 = *(v4 + 232);
  if (v26)
  {
    v27 = *(DerivedStorage + 156);
    *buf = 15;
    v28 = *(DerivedStorage + 4792);
    *&buf[8] = v27;
    *v73 = v58 - v28;
    *&v73[4] = v60;
    if (H16ISP::H16ISPServicesRemote::SetProperty(v26, buf))
    {
      v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v29 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        H16ISPCaptureStreamStopInternal();
      }
    }

    if ((*(DerivedStorage + 4256) & 1) == 0 && !H16ISP::H16ISPDevice::isSensorType(*(v4 + 24), *v5, 1785950322))
    {
      v30 = *v5;
      *buf = 17;
      *&buf[8] = v30;
      *v73 = HIDWORD(v60);
      *&v73[4] = v68;
      *v74 = v69;
      *&v74[16] = v70;
      v75 = v71;
      if (H16ISP::H16ISPServicesRemote::SetProperty(*(v4 + 232), buf))
      {
        v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v31 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v31;
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          H16ISPCaptureStreamStopInternal();
        }
      }

      if (H16ISP::H16ISPDevice::isSensorType(*(v4 + 24), *v5, 1919251319) || H16ISP::H16ISPDevice::isSensorType(*(v4 + 24), *v5, 1919246706) || H16ISP::H16ISPDevice::isSensorType(*(v4 + 24), *v5, 1919251564))
      {
        bzero(buf, 0x3408uLL);
        v32 = *v5;
        *buf = 16;
        *&buf[8] = v32;
        *v73 = v61;
        if (v62 == 1)
        {
          v73[8] = v62;
          *&v73[12] = v63;
          *v74 = v64;
          *&v74[12] = v66;
          *&v74[8] = v65;
          *&v74[20] = v67;
        }

        if (H16ISP::H16ISPServicesRemote::SetProperty(*(v4 + 232), buf))
        {
          v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v33 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            H16ISPCaptureStreamStopInternal();
          }
        }
      }
    }
  }

  H16ISP::DestroyH16ISPFrameReceiver(*(DerivedStorage + 160), v23);
  H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v4 + 24), *(DerivedStorage + 156), 0, 0);
  v34 = 0;
  *(DerivedStorage + 160) = 0;
  do
  {
    v35 = DerivedStorage + v34;
    v36 = *(DerivedStorage + v34 + 856);
    if (v36)
    {
      CVPixelBufferRelease(v36);
      *(v35 + 856) = 0;
    }

    v37 = *(v35 + 1056);
    if (v37)
    {
      CVPixelBufferRelease(v37);
      *(v35 + 1056) = 0;
    }

    v38 = *(DerivedStorage + v34 + 1256);
    if (v38)
    {
      CVPixelBufferRelease(v38);
      *(DerivedStorage + v34 + 1256) = 0;
    }

    v34 += 8;
  }

  while (v34 != 32);
  v39 = *(DerivedStorage + 848);
  if (v39)
  {
    CVPixelBufferPoolRelease(v39);
    *(DerivedStorage + 848) = 0;
  }

  v40 = *(DerivedStorage + 1048);
  if (v40)
  {
    CVPixelBufferPoolRelease(v40);
    *(DerivedStorage + 1048) = 0;
  }

  v41 = *(DerivedStorage + 1248);
  if (v41)
  {
    CVPixelBufferPoolRelease(v41);
    *(DerivedStorage + 1248) = 0;
  }

  v42 = *(DerivedStorage + 1448);
  if (v42)
  {
    CVPixelBufferPoolRelease(v42);
    *(DerivedStorage + 1448) = 0;
  }

  v43 = *(DerivedStorage + 1648);
  if (v43)
  {
    CVPixelBufferPoolRelease(v43);
    *(DerivedStorage + 1648) = 0;
  }

  *(DerivedStorage + 1848) = 0;
  *(DerivedStorage + 2048) = 0;
  *(DerivedStorage + 2248) = 0;
  *(DerivedStorage + 2648) = 0;
  v44 = *(DerivedStorage + 2448);
  if (v44)
  {
    CVPixelBufferPoolRelease(v44);
    *(DerivedStorage + 2448) = 0;
  }

  v45 = *(DerivedStorage + 2848);
  if (v45)
  {
    CVPixelBufferPoolRelease(v45);
    *(DerivedStorage + 2848) = 0;
  }

  v46 = *(DerivedStorage + 4824);
  if (v46)
  {
    CVPixelBufferPoolRelease(v46);
    *(DerivedStorage + 4824) = 0;
  }

  *(DerivedStorage + 4404) = 2;
  v47 = *(DerivedStorage + 4136);
  if (v47)
  {
    CFRelease(v47);
    *(DerivedStorage + 4136) = 0;
  }

  v48 = 0;
  v49 = (DerivedStorage + 4840);
  v50 = 1;
  do
  {
    v51 = v50;
    v52 = *&v49[3 * v48];
    if (v52)
    {
      CVPixelBufferPoolRelease(v52);
    }

    v50 = 0;
    v48 = 1;
  }

  while ((v51 & 1) != 0);
  *(DerivedStorage + 4904) = 0u;
  *(DerivedStorage + 4920) = 0u;
  *(DerivedStorage + 4872) = 0u;
  *(DerivedStorage + 4888) = 0u;
  *v49 = 0u;
  *(DerivedStorage + 4856) = 0u;
  if (*(DerivedStorage + 100))
  {
    dispatch_source_set_timer(*(DerivedStorage + 4248), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    if (*(DerivedStorage + 4184))
    {
      DisableDisplayStrobeOverlay(DerivedStorage);
    }

    v53 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v53 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v53;
    }

    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      H16ISPCaptureStreamStopInternal();
    }

    H16ISPPostNotification(*MEMORY[0x277CF53E8], v1, 0);
    *(DerivedStorage + 100) = 0;
  }

  *(DerivedStorage + 96) = 0;
  if (*(DerivedStorage + 528))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 528) = 0;
  }

  if (*(DerivedStorage + 552) == 1)
  {
    *(DerivedStorage + 552) = 0;
  }

  v54 = *(v4 + 224);
  if (v54)
  {
    H16ISP::H16ISPFirmwareWorkProcessor::FlushSurfaceCache(v54);
  }

  v55 = *(v4 + 232);
  if (v55)
  {
    v56 = *v5;
    *buf = 2;
    *&buf[8] = v56;
    v73[0] = 0;
    H16ISP::H16ISPServicesRemote::SetProperty(v55, buf);
  }

  if (!*(DerivedStorage + 8))
  {
    H16ISPPostNotification(*MEMORY[0x277CF6B78], v1, 0);
  }

  v2 = 0;
  *(DerivedStorage + 4969) = 0;
LABEL_121:
  kdebug_trace();
  return v2;
}

uint64_t ConfigurePearlForExclusiveFirmwareControl(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 58192) & 1) == 0 && SetDefaultFormatIndexConfiguration(a1, a2))
  {
    return 4294954514;
  }

  *(a2 + 4416) = 0;
  *(a2 + 4428) = 0;
  *(a2 + 4448) = 0;
  *(a2 + 4408) = 0x300000008;
  H16ISP::H16ISPDevice::EnableMetadataSection(*(a1 + 24), *(a2 + 156), 44, 1);
  return 0;
}

uint64_t SetDefaultFormatIndexConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 184);
  v3 = H16ISP::H16ISPDevice::SetCameraConfig(*(a1 + 24), *(a2 + 156), *(v2 + 16), *(v2 + 36), *(v2 + 40), *(v2 + 44), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 68), *(v2 + 72), *(v2 + 76), *(v2 + 84));
  if (v3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      SetDefaultFormatIndexConfiguration();
    }
  }

  return v3;
}

uint64_t CopyGroupExtrinsics(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v47 = v6;
  v59 = *MEMORY[0x277D85DE8];
  allocator = v1;
  Mutable = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v8 = *(v5 + 8);
  if (v8 == 2)
  {
    v38 = Mutable;
    if (!H16ISP::H16ISPDevice::hasSensorType(*(v3 + 24), 1718186595) || !getPCECalib(*(v3 + 24)))
    {
      v39 = 0;
      Mutable = v38;
      goto LABEL_48;
    }

    if (CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]))
    {
      Matrix<float>::Matrix<double>(v54, &v56, 3, 3);
    }

    CFRelease(v38);
    return 4294954510;
  }

  if (v8 != 1)
  {
    v39 = 0;
    goto LABEL_48;
  }

  theDict = Mutable;
  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  v57.columns[0].i32[0] = 1919251564;
  v55[0] = &v57;
  *(std::__tree<std::__value_type<camera_module_description,camera_module_description>,std::__map_value_compare<camera_module_description,std::__value_type<camera_module_description,camera_module_description>,std::less<camera_module_description>,true>,std::allocator<std::__value_type<camera_module_description,camera_module_description>>>::__emplace_unique_key_args<camera_module_description,std::piecewise_construct_t const&,std::tuple<camera_module_description&&>,std::tuple<>>(&v52, &v57, &std::piecewise_construct, v55) + 8) = 1919246706;
  v57.columns[0].i32[0] = 1919251319;
  v55[0] = &v57;
  *(std::__tree<std::__value_type<camera_module_description,camera_module_description>,std::__map_value_compare<camera_module_description,std::__value_type<camera_module_description,camera_module_description>,std::less<camera_module_description>,true>,std::allocator<std::__value_type<camera_module_description,camera_module_description>>>::__emplace_unique_key_args<camera_module_description,std::piecewise_construct_t const&,std::tuple<camera_module_description&&>,std::tuple<>>(&v52, &v57, &std::piecewise_construct, v55) + 8) = 1919246706;
  v57.columns[0].i32[0] = 1785950322;
  v55[0] = &v57;
  *(std::__tree<std::__value_type<camera_module_description,camera_module_description>,std::__map_value_compare<camera_module_description,std::__value_type<camera_module_description,camera_module_description>,std::less<camera_module_description>,true>,std::allocator<std::__value_type<camera_module_description,camera_module_description>>>::__emplace_unique_key_args<camera_module_description,std::piecewise_construct_t const&,std::tuple<camera_module_description&&>,std::tuple<>>(&v52, &v57, &std::piecewise_construct, v55) + 8) = 1919246706;
  v9 = v52;
  if (v52 == v53)
  {
LABEL_40:
    std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(&v52, v53[0]);
    v39 = 0;
    Mutable = theDict;
    goto LABEL_48;
  }

  v45 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v11 = *(v9 + 7);
    v10 = *(v9 + 8);
    if (!H16ISP::H16ISPDevice::hasSensorType(*(v3 + 24), v11) || !H16ISP::H16ISPDevice::hasSensorType(*(v3 + 24), v10))
    {
      goto LABEL_24;
    }

    v12 = *(v3 + 24);
    v13 = 1919246706;
    if (v11 != 1919251564)
    {
      v13 = v11;
      if (v11 != 1919251319)
      {
        if (v11 == 1785950322)
        {
          SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(v12, 1785950322, 1852793709);
          PeridotCalib = H16ISP::createPeridotCalib(*(v3 + 24), *(v3 + 232), SensorChannel);
          if (!PeridotCalib)
          {
            v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
            {
              v37 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
            }

            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              CopyGroupExtrinsics(&v50, v51);
            }

            goto LABEL_24;
          }

          PDPeridotCalibGetOperationalWideToPeridotTransform();
          v17 = v16;
          v17.i32[3] = v41;
          v18.i32[3] = v42;
          v19.i32[3] = v43;
          v20.i32[3] = v44;
          v57.columns[0] = v17;
          v57.columns[1] = v18;
          v57.columns[2] = v19;
          v57.columns[3] = v20;
          *&v21 = dsiExtrinsicsToFig(&v57);
          v22 = 0;
          v54[0] = v21;
          v54[1] = v23;
          v54[2] = v24;
          p_bytes = &bytes;
          do
          {
            v26 = 0;
            v27 = v54[v22];
            do
            {
              v49 = v27;
              p_bytes[v26] = *(&v49 & 0xFFFFFFFFFFFFFFF3 | (4 * (v26 & 3)));
              ++v26;
            }

            while (v26 != 4);
            ++v22;
            p_bytes += 4;
          }

          while (v22 != 3);
          CFRelease(PeridotCalib);
          goto LABEL_21;
        }

        v13 = v10;
      }
    }

    v28 = H16ISP::H16ISPDevice::getSensorChannel(v12, v13, 1852793709);
    if (H16ISP::H16ISPDevice::GetDistortionData(*(v3 + 24), v28, 0, v55))
    {
      break;
    }

    for (i = 0; i != 3; ++i)
    {
      *(&bytes + i) = vcvt_hight_f32_f64(vcvt_f32_f64(*&v55[4 * i + 279]), *&v55[4 * i + 281]);
    }

LABEL_21:
    v30 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v30)
    {
      goto LABEL_44;
    }

    v31 = CFDataCreate(v45, &bytes, 48);
    if (!v31)
    {
      CFRelease(v30);
LABEL_44:
      v39 = 4294954510;
      goto LABEL_47;
    }

    v32 = H16ISP::ModuleDescriptionToPortType(v10);
    CFDictionaryAddValue(v30, v32, v31);
    CFRelease(v31);
    v33 = H16ISP::ModuleDescriptionToPortType(v11);
    CFDictionaryAddValue(theDict, v33, v30);
    CFRelease(v30);
LABEL_24:
    v34 = v9[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v9[2];
        v36 = *v35 == v9;
        v9 = v35;
      }

      while (!v36);
    }

    v9 = v35;
    if (v35 == v53)
    {
      goto LABEL_40;
    }
  }

  v39 = 4294954514;
LABEL_47:
  std::__tree<std::__value_type<CalibrationDataTypes,Input *>,std::__map_value_compare<CalibrationDataTypes,std::__value_type<CalibrationDataTypes,Input *>,std::less<CalibrationDataTypes>,true>,std::allocator<std::__value_type<CalibrationDataTypes,Input *>>>::destroy(&v52, v53[0]);
  CFRelease(theDict);
  Mutable = 0;
LABEL_48:
  *v47 = Mutable;
  return v39;
}

uint64_t SetGroupSynchronizationPrimary(const void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(a3 + 104);
  if (v6 && GetNumberOfActiveChannels(v6))
  {
    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SetGroupSynchronizationPrimary();
    }

    return 4294954516;
  }

  v8 = *(a3 + 16);
  v21.length = CFArrayGetCount(v8);
  v21.location = 0;
  if (!CFArrayContainsValue(v8, v21, a1))
  {
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      SetGroupSynchronizationPrimary();
    }

    return 4294954516;
  }

  if (CFArrayGetCount(*(a3 + 16)) >= 1)
  {
    v9 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 16), v9);
      FigCaptureStreamGetFigBaseObject();
      v10 = CMBaseObjectGetDerivedStorage();
      *(v10 + 4368) = *(v10 + 156) == *(DerivedStorage + 156);
      ++v9;
    }

    while (v9 < CFArrayGetCount(*(a3 + 16)));
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v12)
  {
    v14 = *(DerivedStorage + 156);
    v16 = 136315394;
    v17 = "SetGroupSynchronizationPrimary";
    v18 = 1024;
    v19 = v14;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "%s - Synchronization primary set to channel %d\n", &v16, 0x12u);
    return 0;
  }

  return result;
}

uint64_t CopyGroupMasterConfiguration(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = *MEMORY[0x277CBECE8];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (theDict)
    {
      v24 = a2;
      v9 = *(a4 + 104);
      if (v9 && CFArrayGetCount(v9))
      {
        v10 = 0;
        key = *MEMORY[0x277CF6810];
        v27 = *MEMORY[0x277CF6800];
        v26 = *MEMORY[0x277CF67F8];
        v25 = *MEMORY[0x277CF6808];
        v11 = *MEMORY[0x277CBED28];
        v12 = *MEMORY[0x277CBED10];
        v31 = *MEMORY[0x277CF62B0];
        v30 = *MEMORY[0x277CF62B8];
        v29 = *MEMORY[0x277CF62A8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a4 + 104), v10);
          FigCaptureStreamGetFigBaseObject();
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          if (*(DerivedStorage + 4369) == 1)
          {
            CFDictionarySetValue(Mutable, key, ValueAtIndex);
          }

          if (*(DerivedStorage + 4370) == 1)
          {
            CFDictionarySetValue(Mutable, v27, ValueAtIndex);
            CFDictionarySetValue(Mutable, v26, ValueAtIndex);
            CFDictionarySetValue(Mutable, v25, ValueAtIndex);
          }

          v15 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v15)
          {
            v16 = v15;
            v17 = *(*(*(a5 + 24) + 4304) + 104 * *(DerivedStorage + 156) + 16);
            if (*(DerivedStorage + 4371))
            {
              v18 = v11;
            }

            else
            {
              v18 = v12;
            }

            CFDictionarySetValue(v15, v31, v18);
            if (*(DerivedStorage + 4372))
            {
              v19 = v11;
            }

            else
            {
              v19 = v12;
            }

            CFDictionarySetValue(v16, v30, v19);
            v20 = *(DerivedStorage + 4376);
            if (v20 <= 0)
            {
              v20 = (*(DerivedStorage + 52) / 10.0);
            }

            valuePtr = v20;
            v21 = CFNumberCreate(v8, kCFNumberSInt32Type, &valuePtr);
            CFDictionarySetValue(v16, v29, v21);
            CFRelease(v21);
            v22 = H16ISP::ModuleDescriptionToPortType(v17);
            CFDictionarySetValue(theDict, v22, v16);
            CFRelease(v16);
          }

          ++v10;
        }

        while (v10 < CFArrayGetCount(*(a4 + 104)));
      }

      CFDictionarySetValue(Mutable, *MEMORY[0x277CF6818], theDict);
      CFRelease(theDict);
      a2 = v24;
    }
  }

  *a2 = Mutable;
  return 0;
}

uint64_t CopyGroupMaxSlaveStreams(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = *(a4 + 116);
  *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t CopyGroupMaxSlaveTimeMachines(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = *(a4 + 120);
  *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t CopyGroupMaxSlaveStreamsProcessingEnabled(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = *(a4 + 124);
  *a2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  return 0;
}

uint64_t CopyGroupMidFrameSynchronizationEnabled(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277CBED28];
  if (*(a4 + 128) != 1)
  {
    v4 = MEMORY[0x277CBED10];
  }

  *a2 = *v4;
  return 0;
}

CFIndex SetGroupNondisruptiveSwitchingFormatIndices(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  value[57] = *MEMORY[0x277D85DE8];
  v5 = *(*(a4 + 24) + 4304);
  valuePtr = 0;
  idx_4 = 0.0;
  v6 = *(a3 + 104);
  if (!v6)
  {
    return 4294954516;
  }

  if (cf)
  {
    value[0] = 0;
    v9 = CFGetTypeID(cf);
    if (v9 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    if (CFDictionaryGetValueIfPresent(cf, *MEMORY[0x277CF3E40], value))
    {
      CFNumberGetValue(value[0], kCFNumberFloatType, &valuePtr + 4);
      if (*(&valuePtr + 1) < 0.0)
      {
        v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v10 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          SetSwitchingFormatIndex(&valuePtr + 4);
        }

        return 4294954516;
      }
    }

    if (CFDictionaryGetValueIfPresent(cf, *MEMORY[0x277CF3E48], value))
    {
      CFNumberGetValue(value[0], kCFNumberFloatType, &valuePtr);
      if (*&valuePtr < 0.0)
      {
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v11 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          SetSwitchingFormatIndex(&valuePtr);
        }

        return 4294954516;
      }
    }

    if (CFDictionaryGetValueIfPresent(cf, *MEMORY[0x277CF3E50], value))
    {
      CFNumberGetValue(value[0], kCFNumberFloatType, &idx_4);
      if (idx_4 < 0.0)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v12 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          SetSwitchingFormatIndex(&idx_4);
        }

        return 4294954516;
      }
    }

    v6 = *(a3 + 104);
  }

  result = CFArrayGetCount(v6);
  if (!result)
  {
    return result;
  }

  v14 = 0;
  v15 = 0;
  v53 = v5 + 8;
  cf1 = *MEMORY[0x277CBEEE8];
  allocator = *MEMORY[0x277CBECE8];
  do
  {
    CFArrayGetValueAtIndex(*(a3 + 104), v14);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v17 = (DerivedStorage + 156);
    v18 = *(v53 + 104 * *(DerivedStorage + 156) + 8);
    idx = *(DerivedStorage + 4796);
    v57 = 0;
    *v56 = *MEMORY[0x277CBF348];
    if (cf)
    {
      v19 = H16ISP::ModuleDescriptionToPortType(v18);
      v20 = CFDictionaryGetValue(cf, v19);
      if (v20)
      {
        v21 = *(*(a4 + 24) + 4312) <= 16 ? 0 : v56;
        if (!ParseSwitchingFormatIndex(v20, *(DerivedStorage + 4796), &idx, &v57, v21))
        {
          v48 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v48 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v48;
          }

          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            SetGroupNondisruptiveSwitchingFormatIndices();
          }

          return 4294954516;
        }
      }
    }

    if (!*(DerivedStorage + 40))
    {
      v46 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v46 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v46;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        SetGroupNondisruptiveSwitchingFormatIndices();
      }

      return 4294954516;
    }

    v22 = *(DerivedStorage + 4808);
    if (!v22)
    {
      v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v47 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        SetGroupNondisruptiveSwitchingFormatIndices();
      }

      return 4294954514;
    }

    v23 = *(DerivedStorage + 48);
    ValueAtIndex = CFArrayGetValueAtIndex(v22, v23);
    if (CFEqual(cf1, ValueAtIndex))
    {
      v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v25 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *v17;
        *buf = 136315394;
        v62 = "SetGroupNondisruptiveSwitchingFormatIndices";
        v63 = 1024;
        v64 = v26;
        _os_log_error_impl(&dword_2247DB000, v25, OS_LOG_TYPE_ERROR, "%s - channel %d context switch list not available\n", buf, 0x12u);
      }
    }

    else
    {
      v27 = CFNumberCreate(allocator, kCFNumberIntType, &idx);
      v70.length = CFArrayGetCount(ValueAtIndex);
      v70.location = 0;
      if (CFArrayContainsValue(ValueAtIndex, v70, v27))
      {
        v28 = 1;
      }

      else
      {
        v28 = v23 == idx;
      }

      if (!v28)
      {
        v49 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v49 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v49;
        }

        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = *v17;
          *buf = 136315906;
          v62 = "SetGroupNondisruptiveSwitchingFormatIndices";
          v63 = 1024;
          v64 = v50;
          v65 = 1024;
          v66 = v23;
          v67 = 1024;
          v68 = idx;
          _os_log_error_impl(&dword_2247DB000, v49, OS_LOG_TYPE_ERROR, "%s - channel %d switching from %d to %d is not allowed\n", buf, 0x1Eu);
        }

        CFRelease(v27);
        return 4294954516;
      }

      CFRelease(v27);
      CFRelease(*(DerivedStorage + 40));
      v29 = CFArrayGetValueAtIndex(*(DerivedStorage + 136), idx);
      *(DerivedStorage + 40) = v29;
      CFRetain(v29);
      v30 = idx;
      *(DerivedStorage + 48) = idx;
      H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(DerivedStorage + 156), *(*(DerivedStorage + 184) + 120 * v30 + 16), v54, buf);
      v31 = v56[1];
      v32 = v56[0];
      v33 = value + 76 * v15;
      *v33 = *(DerivedStorage + 156);
      v34 = *(DerivedStorage + 184);
      v35 = idx;
      v36 = v34 + 120 * idx;
      *(v33 + 2) = *(v36 + 16);
      v37 = v55 == 0;
      if (!v55)
      {
        v32 = 0;
      }

      *(v33 + 2) = v57;
      *(v33 + 3) = v32;
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = v31;
      }

      *(v33 + 4) = v38;
      v39 = *(v36 + 36);
      v33[20] = v39;
      if (v39 == 1)
      {
        *(v33 + 24) = *(v36 + 48);
        *(v33 + 5) = *(v34 + 120 * v35 + 40);
      }

      v40 = *(v34 + 120 * v35 + 64);
      v33[48] = v40;
      if (v40 == 1)
      {
        *(v33 + 52) = *(v36 + 76);
        *(v33 + 68) = *(v34 + 120 * v35 + 68);
      }

      v41 = *&valuePtr;
      if (*&valuePtr <= 0.0)
      {
        v41 = *(DerivedStorage + 52);
      }

      *(DerivedStorage + 52) = v41;
      v42 = idx_4;
      if (idx_4 <= 0.0)
      {
        v42 = *(DerivedStorage + 56);
      }

      *(DerivedStorage + 56) = v42;
      v43 = HIDWORD(valuePtr);
      if (*(&valuePtr + 1) > 0.0)
      {
        v44 = fminf(v42, *(&valuePtr + 1));
        *(DerivedStorage + 52) = fminf(v41, *(&valuePtr + 1));
        *(DerivedStorage + 56) = v44;
        *(DerivedStorage + 60) = v43;
      }

      ++v15;
    }

    ++v14;
  }

  while (v14 < CFArrayGetCount(*(a3 + 104)));
  if (v15)
  {
    result = H16ISP::H16ISPDevice::SetContextSwitch(*(a4 + 24), v15, value, vcvtms_u32_f32(*(&valuePtr + 1) * 256.0), vcvtms_u32_f32(*&valuePtr * 256.0), vcvtms_u32_f32(idx_4 * 256.0));
    if (!result)
    {
      return result;
    }

    v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v45 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
    }

    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      SetGroupNondisruptiveSwitchingFormatIndices();
    }

    return 4294954514;
  }

  return 0;
}

uint64_t SetAWBStatisticsAveragingEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v8 = *(a3 + 104);
  if (!v8)
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      SetAWBStatisticsAveragingEnabled();
    }

    return 4294954514;
  }

  CFArrayGetValueAtIndex(v8, 0);
  FigCaptureStreamGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(DerivedStorage + 156);
  if (*(DerivedStorage + 4360) && !*(DerivedStorage + 4380))
  {
    v10 |= 0x80000000;
  }

  v11 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  result = H16ISP::H16ISPDevice::EnableAWBMultiStatisticsAveraging(*(a4 + 24), v10, v11);
  if (result)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      SetAWBStatisticsAveragingEnabled();
    }

    return 4294954514;
  }

  return result;
}

uint64_t CopySynchronizedStreamsSensorRawOutputBufferPoolRequirements(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 4294954516;
  }

  v8 = a2;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v22 = 0;
    result = 4294954510;
    goto LABEL_64;
  }

  v11 = Mutable;
  v12 = *(a4 + 104);
  if (v12 && CFArrayGetCount(v12) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a4 + 104), v14);
      FigCaptureStreamGetFigBaseObject();
      v13 |= 1 << *(CMBaseObjectGetDerivedStorage() + 156);
      ++v14;
    }

    while (v14 < CFArrayGetCount(*(a4 + 104)));
  }

  else
  {
    LOWORD(v13) = 0;
  }

  v78 = 0;
  v77 = 0;
  v16 = *(a5 + 24);
  v17 = *(a4 + 8) - 1;
  v18 = ChannelMaskForSharedRawPool(a5, a4, v13);
  SharedBufferPoolInfo = H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(v16, v17, v18, 1, buf);
  if (!SharedBufferPoolInfo)
  {
    v23 = v91;
    *(a4 + 152) = *&v90[2];
    *(a4 + 168) = v23;
    *(a4 + 184) = v92;
    v24 = *(a4 + 104);
    if (v24 && CFArrayGetCount(v24) >= 1)
    {
      v25 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(*(a4 + 104), v25);
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if ((*(DerivedStorage + 4944) & 1) != 0 || *(DerivedStorage + 4945) == 1)
        {
          break;
        }

        if (++v25 >= CFArrayGetCount(*(a4 + 104)))
        {
          goto LABEL_22;
        }
      }

      v34 = *(a5 + 24);
      v35 = *(a4 + 8) - 1;
      v36 = ChannelMaskForSharedHiResRawPool(a5, a4, v13);
      v37 = H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(v34, v35, v36, 7, buf);
      if (v37)
      {
        v38 = v37;
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
        }

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v39 = (*(a4 + 8) - 1);
        *v79 = 136315906;
        v80 = "GetSharedHiResRawBufferPoolInfo";
        v81 = 1024;
        v82 = v38;
        v83 = 1024;
        v84 = v39;
        v85 = 1024;
        v86 = ChannelMaskForSharedHiResRawPool(a5, a4, v13);
        v33 = "%s - failed to get shared hires pool info: ret=0x%08x groupID=%hu mask=%hu\n";
        goto LABEL_67;
      }

      v66 = v91;
      *(a4 + 208) = *&v90[2];
      *(a4 + 224) = v66;
      *(a4 + 240) = v92;
    }

    else
    {
LABEL_22:
      HIBYTE(v77) = 1;
    }

    if (ActiveNondisruptiveStreamingFormatsIncludesARawPlusConfig(a5, a4))
    {
      v27 = *(a5 + 24);
      v28 = *(a4 + 8) - 1;
      v29 = ChannelMaskForSharedRawPlusPool(a5, v13);
      v30 = H16ISP::H16ISPDevice::GetSharedBufferPoolInfo(v27, v28, v29, 8, buf);
      if (v30)
      {
        v31 = v30;
        v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v21 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
        }

        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v32 = (*(a4 + 8) - 1);
        *v79 = 136315906;
        v80 = "GetSharedRawPlusBufferPoolInfo";
        v81 = 1024;
        v82 = v31;
        v83 = 1024;
        v84 = v32;
        v85 = 1024;
        v86 = ChannelMaskForSharedRawPlusPool(a5, v13);
        v33 = "%s - failed to get shared raw plus pool info: ret=0x%08x groupID=%hu mask=%hu\n";
        goto LABEL_67;
      }

      v68 = v8;
      v69 = a3;
      v76 = v11;
      *(a4 + 296) = v92;
      v40 = v91;
      *(a4 + 264) = *&v90[2];
      *(a4 + 280) = v40;
    }

    else
    {
      v68 = v8;
      v69 = a3;
      v76 = v11;
      v78 = 1;
    }

    v41 = 0;
    v42 = 0;
    key = *MEMORY[0x277CC4D60];
    v73 = *MEMORY[0x277CC4EC8];
    v74 = *MEMORY[0x277CC4E38];
    v71 = *MEMORY[0x277CC4E50];
    v72 = *MEMORY[0x277CC4DD8];
    v70 = *MEMORY[0x277CC4E30];
    do
    {
      if (*(&v77 + v42) == 1)
      {
        v43 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v43 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v43;
        }

        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = *(v69 + 156);
          *buf = 136315650;
          v88 = "CopySynchronizedStreamsSensorRawOutputBufferPoolRequirements";
          v89 = 1024;
          *v90 = v44;
          *&v90[4] = 1024;
          *&v90[6] = v42;
          _os_log_debug_impl(&dword_2247DB000, v43, OS_LOG_TYPE_DEBUG, "%s - ch%u: ignoring pool requirements for index=%d\n", buf, 0x18u);
        }
      }

      else
      {
        v45 = a4 + v41;
        if (*(a4 + v41 + 172) && (v46 = (v45 + 176), *(v45 + 176)))
        {
          v47 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          if (v47)
          {
            v48 = v47;
            v49 = CFNumberCreate(a1, kCFNumberSInt16Type, (a4 + v41 + 160));
            if (v49)
            {
              v50 = v49;
              CFDictionarySetValue(v48, key, v49);
              CFRelease(v50);
            }

            v51 = CFNumberCreate(a1, kCFNumberSInt16Type, (a4 + v41 + 158));
            if (v51)
            {
              v52 = v51;
              CFDictionarySetValue(v48, v74, v51);
              CFRelease(v52);
            }

            v53 = CFNumberCreate(a1, kCFNumberSInt32Type, (a4 + v41 + 172));
            if (v53)
            {
              v54 = v53;
              CFDictionarySetValue(v48, v73, v53);
              CFRelease(v54);
            }

            v55 = CFNumberCreate(a1, kCFNumberSInt32Type, v46);
            if (v55)
            {
              v56 = v55;
              CFDictionarySetValue(v48, v72, v55);
              CFRelease(v56);
            }

            *buf = *(a4 + v41 + 168);
            v57 = CFNumberCreate(a1, kCFNumberIntType, buf);
            if (v57)
            {
              v58 = v57;
              CFDictionarySetValue(v48, v71, v57);
              CFRelease(v58);
            }

            *buf = H16ISP::getCVPixelFormat(*(a4 + v41 + 184), *(a4 + v41 + 186), *(a4 + v41 + 182));
            v59 = CFNumberCreate(a1, kCFNumberIntType, buf);
            if (v59)
            {
              v60 = v59;
              CFDictionarySetValue(v48, v70, v59);
              CFRelease(v60);
            }

            CFArrayAppendValue(v76, v48);
            CFRelease(v48);
          }
        }

        else
        {
          v61 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v61 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v61;
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            v62 = *(v69 + 156);
            v63 = *(a4 + v41 + 172);
            v64 = *(a4 + v41 + 176);
            v65 = *(v45 + 152);
            *buf = 136316162;
            v88 = "CopySynchronizedStreamsSensorRawOutputBufferPoolRequirements";
            v89 = 1024;
            *v90 = v62;
            *&v90[4] = 1024;
            *&v90[6] = v63;
            *&v90[10] = 1024;
            *&v90[12] = v64;
            *&v90[16] = 1024;
            LODWORD(v91) = v65;
            _os_log_error_impl(&dword_2247DB000, v61, OS_LOG_TYPE_ERROR, "%s - ch=%u: invalid width=%u height=%u for shared pool id=%u\n", buf, 0x24u);
          }
        }
      }

      ++v42;
      v41 += 56;
    }

    while (v41 != 168);
    result = 0;
    v8 = v68;
    v22 = v76;
    goto LABEL_64;
  }

  v20 = SharedBufferPoolInfo;
  v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v21 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
  }

  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }

  v67 = (*(a4 + 8) - 1);
  *v79 = 136315906;
  v80 = "GetSharedRawBufferPoolInfo";
  v81 = 1024;
  v82 = v20;
  v83 = 1024;
  v84 = v67;
  v85 = 1024;
  v86 = ChannelMaskForSharedRawPool(a5, a4, v13);
  v33 = "%s - failed to get shared raw pool info: ret=0x%08x groupID=%hu mask=%hu\n";
LABEL_67:
  _os_log_error_impl(&dword_2247DB000, v21, OS_LOG_TYPE_ERROR, v33, v79, 0x1Eu);
LABEL_14:
  CFRelease(v11);
  v22 = 0;
  result = 4294954514;
LABEL_64:
  *v8 = v22;
  return result;
}

uint64_t SetSynchronizedStreamsSensorRawOutputBufferPools(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFArrayGetTypeID())
    {
      return 4294954516;
    }
  }

  v9 = *(a3 + 104);
  if (!v9 || GetNumberOfActiveChannels(v9))
  {
    return 4294954514;
  }

  v32 = a2;
  if (CFArrayGetCount(*(a3 + 104)) < 1)
  {
    LOWORD(v10) = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v11);
      FigCaptureStreamGetFigBaseObject();
      v10 |= 1 << *(CMBaseObjectGetDerivedStorage() + 156);
      ++v11;
    }

    while (v11 < CFArrayGetCount(*(a3 + 104)));
  }

  if (SetSharedBufferPoolConfigurations(a4, a3, v10, 0))
  {
    return 4294954514;
  }

  if (CFArrayGetCount(*(a3 + 104)) >= 1)
  {
    v13 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v13);
      FigCaptureStreamGetFigBaseObject();
      *(CMBaseObjectGetDerivedStorage() + 4936) = 0;
      ++v13;
    }

    while (v13 < CFArrayGetCount(*(a3 + 104)));
  }

  H16ISPSensorSharedRawPoolConfigurationReset(a3, 0);
  if (!cf)
  {
    return 0;
  }

  v14 = a3 + 144;
  v15 = *(a3 + 8) - 1;
  *(a3 + 192) = v15;
  *(a3 + 194) = v10;
  *(a3 + 248) = v15;
  *(a3 + 250) = v10;
  *(a3 + 304) = v15;
  *(a3 + 306) = v10;
  if (CFArrayGetCount(cf) >= 1)
  {
    v16 = 0;
    do
    {
      v33 = v16;
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v16);
      v18 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      v19 = CFGetTypeID(ValueAtIndex);
      if (v19 != CVPixelBufferPoolGetTypeID())
      {
        break;
      }

      IndexForPool = H16ISPSensorSharedRawPoolConfigurationFindIndexForPool(a3, v18);
      v21 = IndexForPool;
      if ((IndexForPool & 0x80000000) != 0)
      {
        break;
      }

      v22 = v14 + 56 * IndexForPool;
      switch(IndexForPool)
      {
        case 2u:
          CVPixelFormat = H16ISP::getCVPixelFormat(*(v22 + 40), *(v22 + 42), *(v22 + 38));
          H16ISP::getFrameFormat(CVPixelFormat);
          operator new();
        case 1u:
          if (*(v32 + 568) == 1)
          {
            v24 = *(v22 + 40);
            if ((v24 - 2) >= 2 && v24 != 5)
            {
              v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v27 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v27;
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v29 = *(v22 + 40);
                buf = 136315394;
                buf_4 = "H16ISPSensorSharedRawPoolConfigurationInitSharedHiResRawPool";
                buf_12 = 1024;
                buf_14 = v29;
                _os_log_error_impl(&dword_2247DB000, v27, OS_LOG_TYPE_ERROR, "%s - unsupported compand type %d\n", &buf, 0x12u);
              }
            }
          }

          operator new();
        case 0u:
          v23 = H16ISP::getCVPixelFormat(*(v22 + 40), *(v22 + 42), *(v22 + 38));
          H16ISP::getFrameFormat(v23);
          operator new();
      }

      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        buf = 136315394;
        buf_4 = "H16ISPSensorSharedRawPoolConfigurationInitSharedPools";
        buf_12 = 1024;
        buf_14 = v21;
        _os_log_error_impl(&dword_2247DB000, v26, OS_LOG_TYPE_ERROR, "%s - invalid shared pool index=%d\n", &buf, 0x12u);
      }

      Count = CFArrayGetCount(cf);
      v16 = v33 + 1;
    }

    while (v33 + 1 < Count);
    v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v30 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      SetSynchronizedStreamsSensorRawOutputBufferPools();
    }

    return 4294954514;
  }

  if (CFArrayGetCount(*(a3 + 104)) >= 1)
  {
    v31 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a3 + 104), v31);
      FigCaptureStreamGetFigBaseObject();
      *(CMBaseObjectGetDerivedStorage() + 4936) = v14;
      ++v31;
    }

    while (v31 < CFArrayGetCount(*(a3 + 104)));
  }

  if (SetSharedBufferPoolConfigurations(a4, a3, v10, 1))
  {
    return 4294954514;
  }

  else
  {
    return 0;
  }
}

uint64_t SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts(const void *a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v5 = CFGetTypeID(a1);
  if (v5 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v6 = *(a3 + 244);
  v54[0] = *(a3 + 188);
  v54[1] = v6;
  v54[2] = *(a3 + 300);
  Count = CFDictionaryGetCount(a1);
  if (Count)
  {
    v8 = Count;
    v9 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    if (v9)
    {
      v10 = v9;
      CFDictionaryGetKeysAndValues(a1, v9, 0);
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = MEMORY[0x277D86220];
        while (1)
        {
          v13 = v10[v11];
          valuePtr = 0;
          v46 = 0;
          if (!v13)
          {
            break;
          }

          if (!CFNumberGetValue(v13, kCFNumberSInt64Type, &valuePtr))
          {
            v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
            {
              v23 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v23;
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            *buf = 136315394;
            v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCountsInternal";
            v50 = 2048;
            *v51 = v11;
            v20 = v23;
            v21 = "%s - failed to extract pool address at index = %ld\n";
            goto LABEL_28;
          }

          v14 = valuePtr;
          if (!valuePtr || (v15 = CFGetTypeID(valuePtr), v15 != CVPixelBufferPoolGetTypeID()))
          {
            v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
            {
              v22 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
            }

            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            goto LABEL_23;
          }

          IndexForPool = H16ISPSensorSharedRawPoolConfigurationFindIndexForPool(a3, v14);
          if ((IndexForPool & 0x80000000) != 0)
          {
            v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
            {
              v24 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
            }

            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            *buf = 136315394;
            v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCountsInternal";
            v50 = 2048;
            *v51 = v11;
            v20 = v24;
            v21 = "%s - failed to resolve pool type for pool at index = %ld\n";
            goto LABEL_28;
          }

          v17 = IndexForPool;
          Value = CFDictionaryGetValue(a1, v10[v11]);
          if (!Value || !CFNumberGetValue(Value, kCFNumberIntType, &v46) || v46 < 0)
          {
            v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
            {
              v22 = os_log_create("com.apple.isp", "plugin");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
            }

            if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

LABEL_23:
            *buf = 136315394;
            v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCountsInternal";
            v50 = 2048;
            *v51 = v11;
            v20 = v22;
            v21 = "%s - invalid pool address at index = %ld\n";
LABEL_28:
            _os_log_error_impl(&dword_2247DB000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
            goto LABEL_36;
          }

          *(a3 + 144 + 56 * v17 + 44) = v46;
LABEL_36:
          if (v8 == ++v11)
          {
            goto LABEL_40;
          }
        }

        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v12)
        {
          v19 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
        }

        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_36;
        }

        *buf = 136315394;
        v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCountsInternal";
        v50 = 2048;
        *v51 = v11;
        v20 = v19;
        v21 = "%s - invalid key at index = %ld\n";
        goto LABEL_28;
      }

LABEL_40:
      free(v10);
      v26 = *(a3 + 104);
      if (v26)
      {
        v27 = CFArrayGetCount(v26);
        if (v27)
        {
          v28 = v27;
          if (v27 >= 1)
          {
            for (i = 0; v28 != i; ++i)
            {
              CFArrayGetValueAtIndex(*(a3 + 104), i);
              FigCaptureStreamGetFigBaseObject();
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              v46 = 0;
              LODWORD(valuePtr) = 0;
              if (*(DerivedStorage + 160))
              {
                v31 = DerivedStorage;
                v32 = resizeStillMetaPool(DerivedStorage, 1, &v46, &valuePtr);
                if (v32)
                {
                  v25 = v32;
                  v36 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v36 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v36;
                  }

                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts";
                    v50 = 1024;
                    *v51 = v25;
                    *&v51[4] = 1024;
                    *&v51[6] = v46;
                    v52 = 1024;
                    LODWORD(v53) = valuePtr;
                    _os_log_error_impl(&dword_2247DB000, v36, OS_LOG_TYPE_ERROR, "%s - failed to resize still meta pool, err = %d, FWprimeCount= %d, clientRetainCount=%d\n", buf, 0x1Eu);
                  }

                  goto LABEL_63;
                }

                v33 = resizeThumbnailRawPool(v31, 1, 0, &valuePtr);
                if (v33)
                {
                  v25 = v33;
                  v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                  {
                    v37 = os_log_create("com.apple.isp", "plugin");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v37;
                  }

                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts();
                  }

                  goto LABEL_63;
                }
              }
            }
          }

          v25 = 0;
LABEL_63:
          v38 = 0;
          for (j = (a3 + 188); ; j += 14)
          {
            v40 = *(j - 11);
            if (v40 && *j != v54[v38])
            {
              Pool = H16ISP::H16ISPFrameReceiverSharedBufferPool::GetPool(v40);
              if (!Pool)
              {
                return 4294954514;
              }

              if (*Pool == 1)
              {
                v42 = (*(Pool + 112) + *j);
                v43 = H16ISP::H16ISPFrameReceiverBufferPool::SetCapacity(Pool, v42);
                if (v43)
                {
                  break;
                }
              }
            }

            if (++v38 == 3)
            {
              return v25;
            }
          }

          v44 = v43;
          v45 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v45 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v45;
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v49 = "SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts";
            v50 = 1024;
            *v51 = v44;
            *&v51[4] = 1024;
            *&v51[6] = v38;
            v52 = 2048;
            v53 = v42;
            _os_log_error_impl(&dword_2247DB000, v45, OS_LOG_TYPE_ERROR, "%s - failed to resize shared pool err=0x%08x idx=%d count=%zu\n", buf, 0x22u);
          }
        }
      }
    }
  }

  else
  {
    v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v34 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      SetSynchronizedStreamsSensorRawOutputRetainedBufferCounts();
    }
  }

  return 4294954514;
}

uint64_t SetGroupAEWindowParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = *(*(a4 + 24) + 4304);
  value = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID() || CFArrayGetCount(*(a3 + 16)) > 4)
  {
    return 4294954516;
  }

  bzero(v22, 0x40uLL);
  if (CFArrayGetCount(*(a3 + 16)) < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = v4 + 8;
  v18 = vdupq_n_s32(0x447A0000u);
  do
  {
    CFArrayGetValueAtIndex(*(a3 + 16), v10);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = H16ISP::ModuleDescriptionToPortType(*(v12 + 104 * *(DerivedStorage + 156) + 8));
    if (CFDictionaryGetValueIfPresent(a1, v14, &value))
    {
      v19 = 0;
      v20 = 0;
      v15 = &v22[v11];
      *v15 = *(DerivedStorage + 156);
      result = H16ISPGetRectParamsFromDict(value, &v20 + 4, &v20, &v19 + 4, &v19, v15 + 1, 0);
      if (result)
      {
        return result;
      }

      v16.i64[0] = __PAIR64__(v20, HIDWORD(v20));
      v16.i64[1] = __PAIR64__(v19, HIDWORD(v19));
      *(&v22[v11++] + 1) = vmovn_s32(vcvtq_u32_f32(vmulq_f32(v16, v18)));
    }

    ++v10;
  }

  while (v10 < CFArrayGetCount(*(a3 + 16)));
  if (!v11)
  {
    return 0;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamAEWindowParams(*(a4 + 24), v11, v22);
  if (result)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetGroupAEWindowParams();
    }

    return 4294954516;
  }

  return result;
}

uint64_t SetGroupROIForCameraControls(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(*(a4 + 24) + 4304);
  value = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID() || CFArrayGetCount(*(a3 + 16)) > 4)
  {
    return 4294954516;
  }

  bzero(v23, 0x30uLL);
  if (CFArrayGetCount(*(a3 + 16)) < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = v4 + 8;
  v19 = vdupq_n_s32(0x447A0000u);
  do
  {
    CFArrayGetValueAtIndex(*(a3 + 16), v10);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = H16ISP::ModuleDescriptionToPortType(*(v12 + 104 * *(DerivedStorage + 156) + 8));
    if (CFDictionaryGetValueIfPresent(a1, v14, &value))
    {
      v20 = 0;
      v21 = 0;
      v15 = *(DerivedStorage + 156);
      v16 = &v23[3 * v11];
      *v16 = v15;
      result = H16ISPGetRectParamsFromDict(value, &v21 + 4, &v21, &v20 + 4, &v20, 0, 0);
      if (result)
      {
        return result;
      }

      v17.i64[0] = __PAIR64__(v21, HIDWORD(v21));
      v17.i64[1] = __PAIR64__(v20, HIDWORD(v20));
      *(v16 + 1) = vmovn_s32(vcvtq_u32_f32(vmulq_f32(v17, v19)));
      ++v11;
    }

    ++v10;
  }

  while (v10 < CFArrayGetCount(*(a3 + 16)));
  if (!v11)
  {
    return 0;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamROIForCameraControls(*(a4 + 24), v11, v23);
  if (result)
  {
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SetGroupROIForCameraControls();
    }

    return 4294954516;
  }

  return result;
}

uint64_t SetGroupLumaHistogramROI(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(*(a4 + 24) + 4304);
  value = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v8 = CFGetTypeID(a1);
  if (v8 != CFDictionaryGetTypeID() || CFArrayGetCount(*(a3 + 16)) > 4)
  {
    return 4294954516;
  }

  bzero(v23, 0x40uLL);
  if (CFArrayGetCount(*(a3 + 16)) < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  v12 = v4 + 8;
  v19 = vdupq_n_s32(0x447A0000u);
  do
  {
    CFArrayGetValueAtIndex(*(a3 + 16), v10);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v14 = H16ISP::ModuleDescriptionToPortType(*(v12 + 104 * *(DerivedStorage + 156) + 8));
    if (CFDictionaryGetValueIfPresent(a1, v14, &value))
    {
      v20 = 0;
      v21 = 0;
      v15 = *(DerivedStorage + 156);
      v16 = &v23[v11];
      *v16 = v15;
      *(v16 + 4) = 1;
      result = H16ISPGetRectParamsFromDict(value, &v21 + 4, &v21, &v20 + 4, &v20, 0, 0);
      if (result)
      {
        return result;
      }

      v17.i64[0] = __PAIR64__(v21, HIDWORD(v21));
      v17.i64[1] = __PAIR64__(v20, HIDWORD(v20));
      *(v16 + 6) = vmovn_s32(vcvtq_u32_f32(vmulq_f32(v17, v19)));
      ++v11;
    }

    ++v10;
  }

  while (v10 < CFArrayGetCount(*(a3 + 16)));
  if (!v11)
  {
    return 0;
  }

  result = H16ISP::H16ISPDevice::SetMultiCamLumaHistogramROI(*(a4 + 24), v11, v23);
  if (result)
  {
    v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      SetGroupLumaHistogramROI();
    }

    return 4294954516;
  }

  return result;
}

uint64_t GroupStillImageCaptureNow(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v289 = *MEMORY[0x277D85DE8];
  bzero(v261, 0x1214uLL);
  v9 = *(v5 + 104);
  if (!v9)
  {
    v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v29 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      GroupStillImageCaptureNow();
    }

    return 4294954516;
  }

  Count = CFArrayGetCount(v9);
  memset(v281, 0, 48);
  v243 = v3;
  v11 = *(*(v3 + 24) + 4304);
  v250 = 0;
  v249 = 0;
  bzero(&v245, 0xE8uLL);
  v12 = Count;
  v244 = v7;
  if (Count)
  {
    v13 = 0;
    do
    {
      if (CFArrayGetValueAtIndex(*(v5 + 104), v13))
      {
        FigCaptureStreamGetFigBaseObject();
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v260[v13] = DerivedStorage;
        v15 = H16ISP::ModuleDescriptionToPortType(*(v11 + 8 + 104 * *(DerivedStorage + 156) + 8));
        if (*(DerivedStorage + 160))
        {
          if (CFDictionaryGetValueIfPresent(v8, v15, &v281[v252]))
          {
            v16 = v252;
            v260[v252] = DerivedStorage;
            if (*(DerivedStorage + 4369) == 1)
            {
              v260[v16] = v260[0];
              v260[0] = DerivedStorage;
              v17 = v281[0];
              v281[0] = v281[v16];
              v281[v16] = v17;
              v244 = DerivedStorage;
            }

            v252 = v16 + 1;
          }
        }
      }

      ++v13;
    }

    while (v12 != v13);
  }

  v18 = v260;
  if (!v260[0])
  {
    v28 = 0;
    goto LABEL_33;
  }

  v19 = *(v260[0] + 4224);
  v20 = *(v260[0] + 156);
  v257 = 5;
  v245 = v20;
  v21 = v243;
  if (v252 >= 2)
  {
    v20 = v20;
    if (*(v260[0] + 4360) && !*(v260[0] + 4380))
    {
      v20 = v20 | 0x80000000;
    }

    v245 = v20;
  }

  Value = CFDictionaryGetValue(v8, *MEMORY[0x277CF60D0]);
  if (Value)
  {
    v23 = CFEqual(Value, *MEMORY[0x277CBED28]) != 0;
    H16ISP::H16ISPDevice::EnableHighlightRecovery(*(v243 + 24), *(v260[0] + 156), v23, 1);
  }

  v282[0] = 0;
  v24 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6128]);
  if (v24)
  {
    v25 = v24;
    v26 = CFGetTypeID(v24);
    if (v26 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v25, kCFNumberIntType, v282);
    }
  }

  if (H16ISP::H16ISPDevice::EnableSqrtToneCurve(*(v243 + 24), v245, v282[0] == 1))
  {
    goto LABEL_26;
  }

  v27 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6090]);
  if (v27)
  {
    v19 = CFEqual(v27, *MEMORY[0x277CBED28]) != 0;
  }

  if (H16ISP::H16ISPDevice::EnableCNRForStillCapture(*(v243 + 24), v245, v19))
  {
LABEL_26:
    v28 = 4294954611;
LABEL_33:
    v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v30 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      GroupStillImageCaptureNow();
    }

    v31 = v252;
    if (v252)
    {
      do
      {
        v32 = *v18++;
        *(v32 + 100) = 0;
        --v31;
      }

      while (v31);
    }

    return v28;
  }

  v34 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6080]);
  if (v34)
  {
    v35 = v34;
    v36 = *(v260[0] + 160);
    if (v36 && !H16ISP::H16ISPFrameReceiver::HasPool(v36, 20))
    {
      return 4294954516;
    }

    v37 = CFEqual(v35, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v37 = dword_281003340;
    if (dword_281003340 != 1)
    {
      goto LABEL_46;
    }
  }

  v246 = v37;
LABEL_46:
  v38 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6078]);
  if (v38)
  {
    v39 = *(v260[0] + 160);
    if (v39 && !H16ISP::H16ISPFrameReceiver::HasPool(v39, 22))
    {
      return 4294954516;
    }

    v247 = CFEqual(v38, *MEMORY[0x277CBED28]) != 0;
  }

  if (CFDictionaryGetValue(v8, *MEMORY[0x277CF6070]))
  {
    v40 = *(v260[0] + 160);
    if (v40 && !H16ISP::H16ISPFrameReceiver::HasPool(v40, 23))
    {
      return 4294954516;
    }

    v248 = CFEqual(v38, *MEMORY[0x277CBED28]) != 0;
  }

  v41 = CFDictionaryGetValue(v8, *MEMORY[0x277CF60E0]);
  if (v41)
  {
    v42 = CFEqual(v41, *MEMORY[0x277CBED28]) != 0;
    *(v260[0] + 4597) = v42;
  }

  else
  {
    *(v260[0] + 4597) = *(v260[0] + 4596);
  }

  v43 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6098]);
  if (v43)
  {
    LOBYTE(v249) = CFEqual(v43, *MEMORY[0x277CBED28]) != 0;
  }

  v44 = CFDictionaryGetValue(v8, *MEMORY[0x277CF60B0]);
  if (v44)
  {
    BYTE1(v249) = CFEqual(v44, *MEMORY[0x277CBED28]) != 0;
  }

  v45 = CFDictionaryGetValue(v8, *MEMORY[0x277CF60A8]);
  if (v45)
  {
    BYTE2(v249) = CFEqual(v45, *MEMORY[0x277CBED28]) != 0;
  }

  v46 = CFDictionaryGetValue(v8, *MEMORY[0x277CF60A0]);
  if (v46)
  {
    HIBYTE(v249) = CFEqual(v46, *MEMORY[0x277CBED28]) != 0;
  }

  v47 = CFDictionaryGetValue(v8, *MEMORY[0x277CF5538]);
  if (v47 && GetAFWindowParam(v47, &v269, &v265[1]))
  {
    v28 = 0;
    goto LABEL_33;
  }

  v48 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6088]);
  if (v48)
  {
    *valuePtr = 0;
    CFNumberGetValue(v48, kCFNumberSInt32Type, valuePtr);
    *&v265[3] = *valuePtr;
    v49 = 4;
  }

  else
  {
    v49 = 0;
  }

  v256 = v49;
  v251 = 4;
  v50 = CFDictionaryGetValue(v8, *MEMORY[0x277CF5738]);
  if (v50 && CFEqual(v50, *MEMORY[0x277CBED28]))
  {
    v251 = 1;
  }

  v51 = CFDictionaryGetValue(v8, *MEMORY[0x277CF6108]);
  if (v51)
  {
    if (CFEqual(*MEMORY[0x277CF5FF8], v51))
    {
      v251 = 1;
      goto LABEL_77;
    }

    return 4294954516;
  }

LABEL_77:
  v52 = CFDictionaryGetValue(v8, *MEMORY[0x277CF55D0]);
  if (v52)
  {
    v53 = v52;
    v54 = CFGetTypeID(v52);
    if (v54 == CFStringGetTypeID())
    {
      if (CFEqual(v53, *MEMORY[0x277CF5550]))
      {
        v55 = 2;
      }

      else if (CFEqual(v53, *MEMORY[0x277CF5540]))
      {
        v55 = 0;
      }

      else if (CFEqual(v53, *MEMORY[0x277CF5548]))
      {
        v55 = 1;
      }

      else
      {
        CFEqual(v53, *MEMORY[0x277CF5558]);
        v55 = 15;
      }

      v258 = v55;
    }
  }

  v250 = *(v260[0] + 256);
  v56 = CFDictionaryGetValue(v8, *MEMORY[0x277CF60B8]);
  if (v56)
  {
    *valuePtr = 0;
    CFNumberGetValue(v56, kCFNumberIntType, valuePtr);
    v250 = (*valuePtr - 1) < 2;
  }

  if (v252)
  {
    v57 = 0;
    v28 = 0;
    v230 = 0;
    v229 = 0;
    key = *MEMORY[0x277CF6118];
    v238 = &v283;
    v232 = *MEMORY[0x277CF6130];
    v237 = v271;
    v226 = -1;
    v222 = *MEMORY[0x277CF5520];
    cf2 = *MEMORY[0x277CBED28];
    v221 = *MEMORY[0x277CF60C0];
    v236 = *MEMORY[0x277CF6320];
    v234 = *MEMORY[0x277CF6200];
    v223 = *MEMORY[0x277CF6150];
    v224 = *MEMORY[0x277CF6160];
    v227 = *MEMORY[0x277CF6178];
    v228 = *MEMORY[0x277CF60F8];
    while (1)
    {
      v58 = &v282[487 * v57];
      bzero(v58, 0x79CuLL);
      v59 = v260[v57];
      *(v58 + 2) = 2623;
      v58[2] = *(v59 + 156);
      v242 = v58;
      v239 = (v58 + 4);
      v60 = CFDictionaryGetValue(v281[v57], key);
      v61 = CFDictionaryGetValue(v281[v57], v232);
      if (v60 | v61)
      {
        theArray = v61;
        v62 = v260[v57];
        v63 = *(v62 + 4936);
        if ((!v63 || !*(v63 + 56)) && !H16ISP::H16ISPFrameReceiver::HasPool(*(v62 + 160), 31) && AddCntxSwRawPoolToFrameReceiver(v260[v57], v21))
        {
          v199 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v199 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v199;
          }

          if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
          {
            GroupStillImageCaptureNow();
          }

          goto LABEL_291;
        }

        if (v57 && v262 != 605)
        {
          return 4294954611;
        }

        if (v57)
        {
          v64 = v260[v57];
          v65 = *(v64 + 156);
          v66 = v263 | (0x10000 << v65) | 0x80000000;
        }

        else
        {
          v262 = 605;
          v64 = v260[0];
          v65 = *(v260[0] + 156);
          LODWORD(v270[0]) = v65;
          v66 = v263 & 0x80000000 | *(v260[0] + 156) | (0x10000 << *(v260[0] + 156)) & 0x7FFF0000;
        }

        v263 = v66;
        if (*(v64 + 4369) == 1)
        {
          v263 = v66 & 0xFFFF0000 | v65;
          v271[2142] = 298;
          v272 = *(v64 + 156) | ((v252 != 0) << 31);
          v272 |= (0x10000 << *(v64 + 156)) & 0x7FFF0000;
          v274 = 0;
        }

        else
        {
          v272 = v272 & 0x8000FFFF | ((((0x10000 << v65) >> 16) & 0x7FFF) << 16);
        }

        v58[485] = 17;
        v231 = v57;
        if (v60)
        {
          v71 = CFArrayGetCount(v60);
          *valuePtr = 0;
          v278 = 0.0;
          v235 = v71;
          if (v71)
          {
            v72 = 0;
            v73 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v60, v72);
              v75 = CFDictionaryGetValue(ValueAtIndex, v236);
              if (!v75)
              {
                break;
              }

              CFNumberGetValue(v75, kCFNumberSInt32Type, &v278);
              v76 = (v64 + 1392);
              if (*(v64 + 1388) & 1) != 0 || (v76 = (v64 + 2592), (*(v64 + 2588)) || (v76 = (v64 + 1592), *(v64 + 1588) == 1))
              {
                v77 = *v76;
              }

              else
              {
                v77 = 0;
              }

              v28 = 4294954516;
              if ((LODWORD(v278) & 0x80000000) != 0 || SLODWORD(v278) >= v77)
              {
                goto LABEL_181;
              }

              v78 = &v277[v73];
              *v78 = LOBYTE(v278);
              v79 = CFDictionaryGetValue(ValueAtIndex, v234);
              if (!v79)
              {
                break;
              }

              v80 = v73;
              CFNumberGetValue(v79, kCFNumberSInt32Type, valuePtr);
              if (*valuePtr)
              {
                if (v73 && (v81 = &v277[v73 - 1], *v81 == *v78) && !v81[1])
                {
                  v81[1] = 2;
                }

                else
                {
                  ++v73;
                  HIBYTE(v277[v80]) = 1;
                }
              }

              else
              {
                ++v73;
                HIBYTE(v277[v80]) = 0;
              }

              GetPerFrameTuningParam(ValueAtIndex, v239 + (*(v242 + 12) << 6), v64);
              v82 = *(v242 + 12);
              *(v239 + (v82 << 6) + 20) = 1;
              *(v242 + 12) = v82 + 1;
              if (v235 == ++v72)
              {
                v28 = 0;
                goto LABEL_181;
              }
            }

            v28 = 4294954516;
LABEL_181:
            v57 = v231;
          }

          else
          {
            LOWORD(v73) = 0;
            v28 = 0;
          }

          v274 = v73;
          v113 = v260[v57];
          if (v113[1376])
          {
            v114 = 0;
          }

          else if (v113[1576])
          {
            v114 = 0;
          }

          else
          {
            v114 = v113[2504] ^ 1;
          }

          v273 = v114 & 1;
          v275 = 2;
          v276 = 1;
        }

        if (theArray)
        {
          v115 = HasFlashBracket(theArray);
          v116 = v115;
          v230 = v115 != 0;
          if (v115)
          {
            v117 = v229 || H16ISP::getExternalStrobeAttached(v115);
            v229 = v117;
            ConfigureExternalStrobeParameters(v21, *(v260[v57] + 156), v117);
            if (!v57)
            {
              *valuePtr = 0;
              if (H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(v21 + 24), 1u, 0, 0x10000u, valuePtr))
              {
                v118 = v226;
                if (v226 == -1)
                {
                  v118 = 0x10000;
                }
              }

              else
              {
                v118 = *valuePtr;
                if (*valuePtr >= 0x10000u)
                {
                  v118 = 0x10000;
                }
              }

              v226 = v118;
            }
          }

          v120 = CFDictionaryGetValue(v281[v57], v228);
          if (v116 || (v121 = v120) == 0)
          {
            *(v260[v57] + 576) = 0;
            if (!v116)
            {
              bzero((v239 + (*(v242 + 12) << 6)), 0x40uLL);
              ++*(v242 + 12);
            }
          }

          else
          {
            GetPerFrameTuningParam(v120, v239 + (*(v242 + 12) << 6), v260[v57]);
            v122 = *(v242 + 12);
            *(v239 + (v122 << 6) + 20) = 2;
            *(v242 + 12) = v122 + 1;
            *(v260[v57] + 576) = 1;
            v123 = CFDictionaryGetValue(v121, v224);
            if (v123 && CFEqual(v123, cf2))
            {
              v242[484] = 1;
            }

            v124 = CFDictionaryGetValue(v121, v223);
            if (v124)
            {
              *(v242 + 1944) = CFBooleanGetValue(v124) != 0;
            }
          }

          v125 = v260[v57];
          v126 = CFArrayGetCount(theArray);
          v127 = &v270[179 * v264];
          v128 = *(v242 + 12);
          bzero(v127, 0x598uLL);
          if (v126 < 1)
          {
            v135 = 0;
            v130 = 0;
          }

          else
          {
            v129 = 0;
            v130 = 0;
            v131 = v127 + 4;
            v132 = v239 + (v128 << 6);
            v133 = &v238[8 * v128];
            do
            {
              v134 = CFArrayGetValueAtIndex(theArray, v129);
              v135 = v134;
              v136 = &v131[68 * v130];
              if (v134)
              {
                GetPerFrameBracketParams(v134, &v131[68 * v130], v132, v125);
              }

              if (v130 && v136[6] == 1 && (v137 = &v131[68 * (v130 - 1)], !v137[6]))
              {
                v137[6] = 2;
                v137[5] = v136[5];
                *(v137 + 1) = *(v136 + 1);
                bzero(&v131[68 * v130], 0x44uLL);
              }

              else
              {
                *v133 = 1;
                ++v130;
              }

              ++*(v242 + 12);
              v132 += 64;
              ++v129;
              v133 += 8;
            }

            while (v126 != v129);
          }

          if (CFDictionaryGetValueIfPresent(v135, v227, 0))
          {
            LOBYTE(v265[2]) = 1;
          }

          v21 = v243;
          v57 = v231;
          if (v264)
          {
            v138 = v265[0];
            if (v130 == v265[0])
            {
              v28 = 0;
            }

            else
            {
              v139 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v139 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v139;
                v138 = v265[0];
              }

              if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
              {
                *valuePtr = 136315650;
                *&valuePtr[4] = "GetUBCaptureParams";
                *&valuePtr[12] = 1024;
                *&valuePtr[14] = v138;
                *&valuePtr[18] = 1024;
                *&valuePtr[20] = v130;
                _os_log_error_impl(&dword_2247DB000, v139, OS_LOG_TYPE_ERROR, "%s - exposure count %d is not matched to new requestCount %d\n", valuePtr, 0x18u);
                v138 = v265[0];
              }

              v28 = 4294954516;
            }
          }

          else
          {
            v28 = 0;
            v138 = v130;
            v265[0] = v130;
          }

          LODWORD(v270[179 * v231]) = *(v260[v231] + 156);
          if (v138)
          {
            v140 = v138;
            v141 = v237;
            do
            {
              v142 = *(v141 - 8);
              v144 = *v141;
              v141 += 17;
              v143 = v144;
              if (v142 == 3)
              {
                v145 = v143;
              }

              else
              {
                v145 = 0;
              }

              v254[v231 + 6] += v145;
              v146 = v255;
              if (v143 > v255)
              {
                v146 = v143;
              }

              v255 = v146;
              --v140;
            }

            while (v140);
          }

          v260[v231 + 6] = NumberOfClientRequestedHiResStillImageCaptures(theArray);
          if (v254[v231 + 6])
          {
            v256 = 6;
          }
        }

        v147 = *(v242 + 12);
        v148 = v260[v57];
        *(v148 + 100) = v147;
        if (v242[484] == 1)
        {
          *(v148 + 100) = v147 - 1;
        }

        v254[v57] = 0;
        v253[v57] = 0;
        ++v264;
      }

      else
      {
        if (v250)
        {
          if (v57 && v262 != 540)
          {
            return 4294954611;
          }

          if (v57)
          {
            v67 = v260[v57];
            v68 = v263 | (0x10000 << *(v67 + 156)) | 0x80000000;
          }

          else
          {
            bzero(v261, 0x30uLL);
            v262 = 540;
            v67 = v260[0];
            v68 = v263 & 0x80000000 | *(v67 + 156) | (0x10000 << *(v67 + 156)) & 0x7FFF0000;
          }

          v263 = v68;
          InitBracketingTuningSet(v239);
          PerFrameTuningParam = GetPerFrameTuningParam(v281[v57], v239, v67);
          v84 = v247;
          *(v58 + 58) = v247;
          v253[v57] = v84;
          v85 = v248;
          *(v58 + 59) = v248;
          v254[v57] = v85;
          v86 = v260[v57];
          *(v58 + 12) = 1;
          *(v86 + 100) = 1;
          v87 = v281[v57];
          v88 = *(*(v21 + 24) + 4304);
          if (v87 && (v89 = CFGetTypeID(v281[v57]), PerFrameTuningParam = CFDictionaryGetTypeID(), v89 == PerFrameTuningParam))
          {
            v90 = CFDictionaryGetValue(v87, v222);
            if (v90)
            {
              v91 = CFEqual(v90, cf2) != 0;
            }

            else
            {
              v91 = 0;
            }

            PerFrameTuningParam = CFDictionaryGetValue(v87, v221);
            if (PerFrameTuningParam)
            {
              PerFrameTuningParam = CFEqual(PerFrameTuningParam, cf2);
              if (PerFrameTuningParam)
              {
                if (v268)
                {
                  v119 = 1;
                }

                else
                {
                  v119 = 2;
                }

                v268 = v119;
              }
            }
          }

          else
          {
            v91 = 0;
          }

          ExternalStrobeAttached = H16ISP::getExternalStrobeAttached(PerFrameTuningParam);
          ConfigureExternalStrobeParameters(v21, *(v86 + 156), ExternalStrobeAttached);
          v253[0] = v247;
          v254[0] = v248;
          v94 = *(v86 + 156);
          if (*(v88 + 8 + 104 * v94 + 16))
          {
            if (!*(v86 + 4184) && !ExternalStrobeAttached)
            {
              v93 = H16ISPDisplayStrobePrepare(*(v88 + 678));
              *(v86 + 4184) = v93;
              v94 = *(v86 + 156);
            }
          }

          v96 = *(v88 + 8 + 104 * v94 + 8);
          if (v96 == 1919246706 || v96 == 1919251564 || v96 == 1919251319)
          {
            *valuePtr = 0;
            v93 = H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(v21 + 24), 1u, 0, 0x10000u, valuePtr);
            v99 = *valuePtr;
            if (*valuePtr >= 0x10000u)
            {
              v99 = 0x10000;
            }

            if (v93)
            {
              CameraStrobeMaxLoad = -1;
            }

            else
            {
              CameraStrobeMaxLoad = v99;
            }
          }

          else
          {
            CameraStrobeMaxLoad = -1;
          }

          if (*(v86 + 4184))
          {
            v101 = ExternalStrobeAttached;
          }

          else
          {
            v101 = 1;
          }

          if ((v101 & 1) == 0)
          {
            v102 = H16ISP::H16ISPDevice::PrepareCommand(*(v21 + 24), *(v86 + 156), 1);
            if (v102)
            {
              v103 = v102;
              v104 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v104 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v104;
              }

              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                *valuePtr = 136315650;
                *&valuePtr[4] = "StillImageCaptureSub_FlashCapture";
                *&valuePtr[12] = 1024;
                *&valuePtr[14] = 31341;
                *&valuePtr[18] = 1024;
                *&valuePtr[20] = v103;
                _os_log_error_impl(&dword_2247DB000, v104, OS_LOG_TYPE_ERROR, "%s - (%d) PrepareCommand err 0x%08X\n\n", valuePtr, 0x18u);
              }

LABEL_264:
              if (v57)
              {
                v159 = v268 == 1;
              }

              else
              {
                v159 = 0;
              }

              v160 = v159;
              v161 = v268 == 2 && v57 == 0;
              if (v161 || v160)
              {
                v162 = *(v239 + 16);
                *(v242 + 5) = *v239;
                *(v242 + 6) = v162;
                v163 = *(v239 + 48);
                *(v242 + 7) = *(v239 + 32);
                *(v242 + 8) = v163;
                *(v242 + 61) = 0;
                ++*(v242 + 12);
                ++*(v260[v57] + 100);
              }

              if (v264)
              {
                v164 = 8;
              }

              else
              {
                v164 = 5;
              }

              v257 = v164;
              goto LABEL_280;
            }

            H16ISPDisplayStrobeSetScreenBrightness(*(v86 + 4184), 0);
            v107 = dword_28100331C;
            if (dword_28100331C)
            {
              v108 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v108 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v108;
              }

              v109 = vcvtd_n_f64_u32(HIBYTE(v107), 8uLL);
              v110 = vcvtd_n_f64_u32(BYTE2(v107), 8uLL);
              v111 = vcvtd_n_f64_u32(BYTE1(v107), 8uLL);
              v112 = vcvtd_n_f64_u32(v107, 8uLL);
              if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
              {
                *valuePtr = 134218752;
                *&valuePtr[4] = v109;
                *&valuePtr[12] = 2048;
                *&valuePtr[14] = v110;
                *&valuePtr[22] = 2048;
                *v286 = v111;
                *&v286[8] = 2048;
                v287 = v112;
                _os_log_impl(&dword_2247DB000, v108, OS_LOG_TYPE_INFO, "Override Display Strobe RGBA Params R=%4.3f G=%4.3f B=%4.3f A=%4.3f\n\n", valuePtr, 0x2Au);
              }
            }

            else
            {
              v149 = *(v86 + 4192);
              v150 = *(v86 + 4194);
              v151 = *(v86 + 4196);
              v152 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v152 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v152;
              }

              v109 = vcvtd_n_f64_u32(v149, 0x10uLL);
              v110 = vcvtd_n_f64_u32(v150, 0x10uLL);
              v111 = vcvtd_n_f64_u32(v151, 0x10uLL);
              v112 = 1.0;
              if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
              {
                v153 = *(v86 + 4192);
                v154 = *(v86 + 4194);
                v155 = *(v86 + 4196);
                *valuePtr = 67110400;
                *&valuePtr[4] = v153;
                *&valuePtr[8] = 2048;
                *&valuePtr[10] = v109;
                *&valuePtr[18] = 1024;
                *&valuePtr[20] = v154;
                *v286 = 2048;
                *&v286[2] = v110;
                LOWORD(v287) = 1024;
                *(&v287 + 2) = v155;
                HIWORD(v287) = 2048;
                v288 = v111;
                _os_log_impl(&dword_2247DB000, v152, OS_LOG_TYPE_INFO, "Current AWB RGBEstimate R=0x%04X (%4.3f) G=0x%04X (%4.3f) B=0x%04X (%4.3f)\n\n", valuePtr, 0x32u);
              }

              v21 = v243;
            }

            *valuePtr = v109;
            *&valuePtr[8] = v110;
            *&valuePtr[16] = v111;
            *v286 = v112;
            H16ISPDisplayStrobeSetScreenColor(*(v86 + 4184), valuePtr);
            v278 = 0.0;
            StrobeBrightnessRatio = H16ISPDisplayGetStrobeBrightnessRatio(*(v86 + 4184), &v278);
            v157 = vcvtd_n_u64_f64(v278, 0x10uLL);
            if (!StrobeBrightnessRatio)
            {
              CameraStrobeMaxLoad = v157;
            }

            v93 = usleep(0x3A98u);
          }

          if (CameraStrobeMaxLoad == -1)
          {
            CameraStrobeMaxLoad = H16ISP::getCameraStrobeMaxLoad(v93);
          }

          v158 = v263 & 0x7FFF0000 | *(v86 + 156);
          v262 = 540;
          v263 = v158 | ((v252 > 1) << 31);
          v264 = v91;
          memset(v265, 0, 14);
          v265[7] = -1;
          v266 = v251;
          v267 = CameraStrobeMaxLoad;
          goto LABEL_264;
        }

        if (v57 && v262 != 298)
        {
          return 4294954611;
        }

        if (v57)
        {
          v69 = v260[v57];
          v70 = v263 | (0x10000 << *(v69 + 156)) | 0x80000000;
        }

        else
        {
          bzero(v261, 0x30uLL);
          v262 = 298;
          v69 = v260[0];
          v70 = v263 & 0x80000000 | *(v69 + 156) | (0x10000 << *(v69 + 156)) & 0x7FFF0000;
        }

        v263 = v70;
        *(v69 + 100) = 1;
        v105 = v247;
        *(v58 + 58) = v247;
        v253[v57] = v105;
        v106 = v248;
        *(v58 + 59) = v248;
        v254[v57] = v106;
        if (*(v260[0] + 698) == 1 && ((*(v260[0] + 1304) & 1) != 0 || (*(v260[0] + 1504) & 1) != 0 || *(v260[0] + 2504) == 1))
        {
          v265[0] = 1;
          v58[2] = *(v69 + 156);
          *(v58 + 12) = 1;
          InitBracketingTuningSet(v239);
          GetPerFrameTuningParam(v281[v57], v239, v69);
        }
      }

LABEL_280:
      if (dword_281003150)
      {
        v165 = 1;
        LOBYTE(v249) = 1;
      }

      else
      {
        v165 = v249;
      }

      if (H16ISP::H16ISPDevice::SetMetadataRequired(*(v21 + 24), *(v260[v57] + 156), 19, 1, v165 & 1) || H16ISP::H16ISPDevice::SetMetadataRequired(*(v21 + 24), *(v260[v57] + 156), 37, 1, BYTE1(v249)) || H16ISP::H16ISPDevice::SetMetadataRequired(*(v21 + 24), *(v260[v57] + 156), 15, 1, BYTE2(v249)) || H16ISP::H16ISPDevice::SetMetadataRequired(*(v21 + 24), *(v260[v57] + 156), 63, 1, HIBYTE(v249)))
      {
        goto LABEL_33;
      }

      ++v57;
      v237 += 358;
      v238 = (v238 + 1948);
      if (v57 >= v252)
      {
        goto LABEL_291;
      }
    }
  }

  v230 = 0;
  v28 = 0;
  v226 = -1;
LABEL_291:
  bzero(valuePtr, 0x14uLL);
  v166 = *(v260[0] + 156);
  *&valuePtr[4] = 320;
  *&valuePtr[8] = v166;
  *&valuePtr[12] = v246;
  valuePtr[16] = v253[0] != 0;
  valuePtr[17] = v254[0] != 0;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v21 + 24), valuePtr, 0x14u, 0, 0xFFFFFFFF))
  {
    v167 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v167 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v167;
    }

    if (os_log_type_enabled(v167, OS_LOG_TYPE_ERROR))
    {
      GroupStillImageCaptureNow();
    }

    goto LABEL_26;
  }

  if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(v21 + 24), v245, v258, v251))
  {
    v168 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v168 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v168;
    }

    if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
    {
      GroupStillImageCaptureNow();
    }

    goto LABEL_26;
  }

  if (!v252)
  {
    goto LABEL_374;
  }

  v169 = 0;
  v170 = &v284;
LABEL_304:
  if (v262 != 605)
  {
    goto LABEL_317;
  }

  v171 = v260[v169 + 6];
  v172 = v260[v169];
  if (!v171 || (v173 = v172[617]) == 0 || !*(v173 + 56))
  {
    v174 = v172[600];
    if (v174)
    {
      v175 = CFArrayGetCount(v174);
      if (v175)
      {
        theArraya = H16ISP::H16ISPFrameReceiver::getBufferPool(*(v260[v169] + 160), 31);
        v176 = 0;
        while (1)
        {
          v177 = CFArrayGetValueAtIndex(*(v260[v169] + 4800), v176);
          v178 = H16ISP::H16ISPFrameReceiver::AddPreallocatedBuffer(*(v260[v169] + 160), 31, v177);
          if (v178)
          {
            break;
          }

          if (v175 == ++v176)
          {
            goto LABEL_350;
          }
        }

        v195 = v178;
        v196 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v196 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v196;
        }

        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
        {
          v197 = *(v260[v169] + 156);
          *valuePtr = 136315650;
          *&valuePtr[4] = "GroupStillImageCaptureNow";
          *&valuePtr[12] = 1024;
          *&valuePtr[14] = v197;
          *&valuePtr[18] = 1024;
          *&valuePtr[20] = v195;
          _os_log_error_impl(&dword_2247DB000, v196, OS_LOG_TYPE_ERROR, "%s - AddPreallocatedBuffer() CH %d returns error 0x%x\n", valuePtr, 0x18u);
        }

LABEL_350:
        H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(v243 + 24), *(v260[v169] + 156), 32, 1, 0, 1u, theArraya + 336);
        goto LABEL_322;
      }
    }

LABEL_317:
    v179 = v260[v169];
    v180 = *(v179 + 4936);
    if ((!v180 || !*(v180 + 56)) && H16ISP::H16ISPFrameReceiver::HasPool(*(v179 + 160), 31))
    {
      H16ISP::H16ISPFrameReceiver::removeBufferPoolFromFrameReceiver(*(v260[v169] + 160), 31);
    }

    v175 = 0;
LABEL_322:
    v181 = LOBYTE(v282[487 * v169 + 3]);
    if (!LOBYTE(v282[487 * v169 + 3]))
    {
      goto LABEL_335;
    }

    v182 = v247;
    v183 = v248;
    v184 = v170;
    v185 = v253[v169];
    v186 = v254[v169];
    while (1)
    {
      v187 = *v184 | v182;
      *v184 |= v182;
      v188 = v184[1] | v183;
      v184[1] |= v183;
      v189 = v184[11];
      if (v189 == 3)
      {
        break;
      }

      if (!v184[11])
      {
        LOBYTE(v189) = *(v260[v169] + 1424);
LABEL_330:
        v184[11] = v189;
      }

      if ((v189 & 0xFE) == 2)
      {
        ++v259[v169];
      }

      v185 += v187;
      v186 += v188;
      v184 += 64;
      if (!--v181)
      {
        v253[v169] = v185;
        v254[v169] = v186;
LABEL_335:
        v190 = v260[v169];
        if (*(v190 + 4256))
        {
          v191 = 0;
          v259[v169] = 0;
        }

        else
        {
          v191 = v259[v169];
        }

        if (v246)
        {
          v192 = *(v190 + 100);
        }

        else
        {
          v192 = 0;
        }

        if (AllocateAndSendOneShotBuffers(v190, *(v190 + 100) - v191, v192, v253[v169], v254[v169], v175))
        {
          v198 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v198 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v198;
          }

          if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
          {
            GroupStillImageCaptureNow();
          }

          v28 = 4294954610;
          goto LABEL_33;
        }

        v193 = *(v260[v169] + 4800);
        if (v193)
        {
          CFRelease(v193);
          *(v260[v169] + 4800) = 0;
        }

        ++v169;
        v194 = v252;
        v170 += 1948;
        if (v169 >= v252)
        {
          goto LABEL_365;
        }

        goto LABEL_304;
      }
    }

    if (*(v260[v169] + 1424))
    {
      LOBYTE(v189) = 2;
    }

    else
    {
      LOBYTE(v189) = 3;
    }

    goto LABEL_330;
  }

  if (*(v173 + 100) < 1 || !H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffersFromSharedPool(v172[20], 31, v171))
  {
    goto LABEL_317;
  }

  v200 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v200 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v200;
  }

  if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
  {
    GroupStillImageCaptureNow();
  }

  v194 = v252;
LABEL_365:
  v21 = v243;
  if (v194)
  {
    v201 = 0;
    v202 = v282;
    do
    {
      v203 = v260[v201];
      if (((v203[1304] & 1) != 0 || (v203[1504] & 1) != 0 || v203[2504] == 1) && (v203[4256] & 1) == 0)
      {
        if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v243 + 24), v202, 0x79Cu, 0, 0xFFFFFFFF))
        {
          v220 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v220 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v220;
          }

          if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
          {
            GroupStillImageCaptureNow();
          }

          goto LABEL_26;
        }

        v194 = v252;
      }

      ++v201;
      v202 += 1948;
    }

    while (v201 < v194);
  }

LABEL_374:
  v204 = (v255 / 0x3E8) / 1000.0;
  if (v204 > 1.0)
  {
    H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(v244 + 160), v204 + 2.0);
  }

  LODWORD(v279) = 101;
  v280 = 0;
  if (v262 == 605)
  {
    v214 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v214 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v214;
    }

    if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "GroupStillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v214, OS_LOG_TYPE_DEFAULT, "%s - Initiating multi unified bracketedISP capture\n", valuePtr, 0xCu);
    }

    if (v226 != -1)
    {
      *&v265[5] = v226;
    }

    v215 = v230;
    v280 = v230;
    v216 = *(v21 + 232);
    if (!v216)
    {
      v215 = 0;
    }

    if (v215 == 1)
    {
      H16ISP::H16ISPServicesRemote::SetProperty(v216, &v279);
    }

    v217 = LaunchStillImageCapture(v21, &v245, v261, 0x1214u);
    if (v217)
    {
      v212 = v217;
      v218 = *(v21 + 232);
      if (v218 && v280 == 1)
      {
        v280 = 0;
        H16ISP::H16ISPServicesRemote::SetProperty(v218, &v279);
      }

      goto LABEL_412;
    }
  }

  else if (v262 == 540)
  {
    v209 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v209 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v209;
    }

    if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 136315138;
      *&valuePtr[4] = "GroupStillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v209, OS_LOG_TYPE_DEFAULT, "%s - Initiating flash capture\n", valuePtr, 0xCu);
    }

    v210 = *(v21 + 232);
    if (v210)
    {
      v280 = 1;
      H16ISP::H16ISPServicesRemote::SetProperty(v210, &v279);
    }

    v211 = LaunchStillImageCapture(v21, &v245, v261, 0x30u);
    if (v211)
    {
      v212 = v211;
      v213 = *(v21 + 232);
      if (v213)
      {
        v280 = 0;
        H16ISP::H16ISPServicesRemote::SetProperty(v213, &v279);
      }

      if (*(v260[0] + 4184))
      {
        DisableDisplayStrobeOverlay(v260[0]);
      }

      goto LABEL_412;
    }
  }

  else
  {
    if (v262 == 298)
    {
      v205 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v205 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v205;
      }

      if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 136315138;
        *&valuePtr[4] = "GroupStillImageCaptureNow";
        _os_log_impl(&dword_2247DB000, v205, OS_LOG_TYPE_DEFAULT, "%s - Initiating time machine capture\n", valuePtr, 0xCu);
      }

      v206 = v261;
      v207 = v21;
      v208 = 48;
    }

    else
    {
      v207 = v21;
      v206 = 0;
      v208 = 0;
    }

    v212 = LaunchStillImageCapture(v207, &v245, v206, v208);
    if (v212)
    {
LABEL_412:
      if (v262 == 605 && v212 == -536870212)
      {
        v28 = 4294954608;
      }

      else
      {
        v28 = 4294954611;
      }

      goto LABEL_33;
    }
  }

  return v28;
}

uint64_t CopyFirmwareVersion(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v7 = *(a5 + 24);
  v8 = *(v7 + 538);
  bzero(v36, 0xACuLL);
  v37 = 6;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(v7, v36, 0xACu, 0, 0xFFFFFFFF))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      goto LABEL_3;
    }

    v11 = CFStringCreateWithCString(0, v38, 0);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF55E0], v11);
      CFRelease(v12);
    }

    v13 = CFStringCreateWithCString(0, v39, 0);
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF55D8], v13);
      CFRelease(v14);
    }

    v15 = CFStringCreateWithCString(0, v40, 0);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF55E8], v15);
      CFRelease(v16);
    }

    v17 = CFStringCreateWithCString(0, v41, 0);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF55F0], v17);
      CFRelease(v18);
    }

    v19 = CFStringCreateWithCString(0, v42, 0);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF55F8], v19);
      CFRelease(v20);
    }

    valuePtr = v43;
    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CF5698], v21);
    CFRelease(v21);
    if (CFArrayGetCount(*(a5 + 120)) < 1)
    {
LABEL_32:
      result = 0;
      goto LABEL_33;
    }

    v22 = 0;
    v23 = v8 + 8;
    key = *MEMORY[0x277CF5530];
    v24 = *MEMORY[0x277CF5600];
    v25 = *MEMORY[0x277CF5528];
    while (1)
    {
      if (!CFArrayGetValueAtIndex(*(a5 + 120), v22))
      {
        goto LABEL_31;
      }

      FigCaptureStreamGetFigBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (H16ISP::H16ISPDevice::ISP_GetModuleParams(*(a5 + 24), *(DerivedStorage + 156), v34) || v34[12] != 1)
      {
        goto LABEL_31;
      }

      v32 = v35;
      v27 = CFNumberCreate(0, kCFNumberLongType, &v32);
      v28 = *(v23 + 104 * *(DerivedStorage + 156) + 8);
      if (v28 <= 1919246705)
      {
        break;
      }

      v30 = v25;
      if (v28 == 1919246706)
      {
        goto LABEL_29;
      }

      if (v28 == 1919251564)
      {
        v30 = key;
LABEL_29:
        CFDictionarySetValue(Mutable, v30, v27);
      }

LABEL_30:
      CFRelease(v27);
LABEL_31:
      if (++v22 >= CFArrayGetCount(*(a5 + 120)))
      {
        goto LABEL_32;
      }
    }

    v29 = v28 == 1718775412 || v28 == 1718776695;
    v30 = v24;
    if (!v29)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  Mutable = 0;
LABEL_3:
  result = 4294954513;
LABEL_33:
  *a2 = Mutable;
  return result;
}

uint64_t CopyMultiCamConfiguration(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, CFArrayRef *a5)
{
  v6 = a5[27];
  if (v6)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v10 = MEMORY[0x277CBF128];
    v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
    v12 = CFArrayCreateMutable(a1, 0, v10);
    v13 = CFArrayCreateMutable(a1, 0, v10);
    v14 = CFArrayCreateMutable(a1, 0, v10);
    v15 = v14;
    if (Mutable)
    {
      v16 = v11 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && v12 != 0 && v13 != 0 && v14 != 0)
    {
      v36 = a2;
      theArray = v13;
      theDict = Mutable;
      if (!*a5[27])
      {
        goto LABEL_63;
      }

      v22 = 0;
      while (1)
      {
        v23 = 0;
        v24 = -1;
        do
        {
          if (((*(a5[27] + 4 * v22 + 14) >> v23) & 1) == 0)
          {
            goto LABEL_47;
          }

          if (CFArrayGetCount(a5[15]) >= 1)
          {
            v25 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a5[15], v25);
              FigCaptureStreamGetFigBaseObject();
              if (v23 == *(CMBaseObjectGetDerivedStorage() + 156))
              {
                break;
              }

              if (++v25 >= CFArrayGetCount(a5[15]))
              {
                goto LABEL_46;
              }
            }

            if (ValueAtIndex)
            {
              FigCaptureStreamGetFigBaseObject();
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              if (*(DerivedStorage + 8))
              {
                goto LABEL_47;
              }

              v28 = DerivedStorage;
              if (*(a5[27] + v23 + 1) == 1)
              {
                CFArrayInsertValueAtIndex(v11, 0, ValueAtIndex);
              }

              else
              {
                CFArrayAppendValue(v11, ValueAtIndex);
              }

              if (!*(a5[27] + 2 * v22 + 8))
              {
                CFArrayAppendValue(v12, ValueAtIndex);
              }

              if (*(v28 + 132) == 1)
              {
                CFArrayInsertValueAtIndex(v15, 0, ValueAtIndex);
              }

              else
              {
                CFArrayAppendValue(v15, ValueAtIndex);
              }
            }
          }

LABEL_46:
          v24 = v23;
LABEL_47:
          ++v23;
        }

        while (v23 != 6);
        if ((v24 & 0x80000000) == 0 && *(a5[27] + 2 * v22 + 8) == 1)
        {
          v29 = a5[30];
          if (v29)
          {
            if (CFArrayGetCount(v29) >= 1)
            {
              v30 = 0;
              while (1)
              {
                v31 = CFArrayGetValueAtIndex(a5[30], v30);
                FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
                v32 = CMBaseObjectGetDerivedStorage();
                if (CFArrayGetCount(*(v32 + 16)) >= 1)
                {
                  v33 = 0;
                  while (1)
                  {
                    CFArrayGetValueAtIndex(*(v32 + 16), v33);
                    FigCaptureStreamGetFigBaseObject();
                    if (*(CMBaseObjectGetDerivedStorage() + 156) == v24)
                    {
                      break;
                    }

                    if (++v33 >= CFArrayGetCount(*(v32 + 16)))
                    {
                      goto LABEL_59;
                    }
                  }

                  if (v31)
                  {
                    break;
                  }
                }

LABEL_59:
                if (++v30 >= CFArrayGetCount(a5[30]))
                {
                  goto LABEL_62;
                }
              }

              CFArrayAppendValue(theArray, v31);
            }
          }
        }

LABEL_62:
        if (++v22 >= *a5[27])
        {
LABEL_63:
          v20 = theDict;
          if (CFArrayGetCount(v12) > 0)
          {
            CFDictionarySetValue(theDict, *MEMORY[0x277CF3C48], v12);
          }

          CFRelease(v12);
          a2 = v36;
          if (CFArrayGetCount(theArray) >= 1)
          {
            CFDictionarySetValue(theDict, *MEMORY[0x277CF3C40], theArray);
          }

          CFRelease(theArray);
          CFDictionarySetValue(theDict, *MEMORY[0x277CF3C50], v11);
          CFRelease(v11);
          CFDictionarySetValue(theDict, *MEMORY[0x277CF3C58], v15);
          v21 = 0;
          goto LABEL_68;
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v20 = 0;
    v6 = 0;
    v21 = 4294954510;
    if (v15)
    {
LABEL_68:
      CFRelease(v15);
      v6 = v20;
    }
  }

  else
  {
    v21 = 0;
  }

  *a2 = v6;
  return v21;
}

uint64_t CopyTOFAutoFocusEnabled(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x277CBED28];
  if (!*(a5 + 280))
  {
    v5 = MEMORY[0x277CBED10];
  }

  *a2 = *v5;
  return 0;
}

uint64_t SetDARTCacheParameters(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"CacheTTL");
  if (!Value)
  {
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      SetDARTCacheParameters();
    }

    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v8 = H16ISP::H16ISPDevice::ISP_SetDARTCacheTTL(*(a4 + 24), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v14 = valuePtr;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureDeviceProperty_DARTCacheParameters, ttl=%d, res=0x%08X\n\n", buf, 0xEu);
  }

  if (v8)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDiagnosticsLogDump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  if (H16ISP::H16ISPDevice::ISP_GetDriverLoggingFlags(*(a4 + 24), &v9))
  {
    v5 = 4294954516;
  }

  else
  {
    v6 = *(a4 + 24);
    if (v9)
    {
      H16ISP::H16ISPDevice::SetFirmwareRunMode(v6, 1);
    }

    else
    {
      H16ISP::H16ISPDevice::ISP_SetDriverLoggingFlags(v6, v9 | 1);
      H16ISP::H16ISPDevice::SetFirmwareRunMode(*(a4 + 24), 1);
      usleep(0x7A120u);
      H16ISP::H16ISPDevice::ISP_SetDriverLoggingFlags(*(a4 + 24), v9);
    }

    v5 = 0;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = v5;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetDiagnosticsLogDump (err=%d)\n\n", buf, 8u);
  }

  return v5;
}

uint64_t SetSensorAgileClockingEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v7 = CFEqual(a1, *MEMORY[0x277CBED28]) != 0;
  *(a4 + 256) = v7;
  result = H16ISP::H16ISPDevice::ISP_EnableMIPIClockAdjustments(*(a4 + 24), v7);
  if (result)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      SetSensorAgileClockingEnable();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetMotionDataSamplingRate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v7 = H16ISP::H16ISPDevice::WritePropertyValue(*(a4 + 24), 0, 2314, valuePtr, 0xFFFFFFFF);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v12 = valuePtr;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: SetMotionDataSamplingRate, motionDataSamplingRate=%d, result=0x%08X\n\n", buf, 0xEu);
  }

  if (v7)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t CopyUnitInfo(uint64_t a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  theDict = 0;
  if (CFArrayGetCount(*(a5 + 120)))
  {
    v7 = 0;
    do
    {
      if (CFArrayGetValueAtIndex(*(a5 + 120), v7))
      {
        FigCaptureStreamGetFigBaseObject();
        if (*(CMBaseObjectGetDerivedStorage() + 160))
        {
          goto LABEL_8;
        }
      }
    }

    while (++v7 < CFArrayGetCount(*(a5 + 120)));
  }

  v8 = byte_2810033C1;
  if (H16ISP::H16ISPDevice::CreateISPUnitInfoDictionary(*(a5 + 24), &theDict))
  {
    theDict = 0;
LABEL_8:
    result = 4294954513;
    goto LABEL_9;
  }

  if (theDict)
  {
    result = 0;
  }

  else
  {
    result = 4294954513;
  }

  if (theDict)
  {
    if (v8)
    {
      result = CFDictionaryGetValue(theDict, @"ChannelArray");
      if (result)
      {
        v10 = result;
        if (CFArrayGetCount(result) >= 1)
        {
          v11 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
            if (ValueAtIndex)
            {
              v13 = ValueAtIndex;
              valuePtr = 0;
              Value = CFDictionaryGetValue(ValueAtIndex, @"Index");
              CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
              v15 = H16ISP::ModuleDescriptionToPortType(*(*(*(a5 + 24) + 4304) + 104 * valuePtr + 16));
              CFDictionarySetValue(v13, @"PortType", v15);
            }

            ++v11;
          }

          while (v11 < CFArrayGetCount(v10));
        }

        result = 0;
      }
    }
  }

LABEL_9:
  *a2 = theDict;
  return result;
}

uint64_t CopyMultiCamSessionStatus(uint64_t a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v24[156] = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v21 = 0;
  v20 = 0;
  v6 = *(a5 + 24);
  v7 = *(v6 + 538);
  MultiCamSessionStatus = H16ISP::H16ISPDevice::GetMultiCamSessionStatus(v6, v23, &v20);
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  result = 4294954516;
  if (!MultiCamSessionStatus && Mutable && v20 <= 6u)
  {
    if (v20)
    {
      v13 = 0;
      v14 = v7 + 8;
      v15 = v24;
      do
      {
        v16 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        valuePtr = *(v15 - 1);
        v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFDictionarySetValue(v16, @"Offset", v17);
        CFRelease(v17);
        v21 = *v15;
        v18 = CFNumberCreate(0, kCFNumberSInt64Type, &v21);
        CFDictionarySetValue(v16, @"FrameCount", v18);
        CFRelease(v18);
        v19 = H16ISP::ModuleDescriptionToPortType(*(v14 + 104 * *(v15 - 3) + 8));
        CFDictionarySetValue(Mutable, v19, v16);
        ++v13;
        v15 = (v15 + 28);
      }

      while (v13 < v20);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t CopyDCSAudioAccelTimeReference(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(a5 + 24), &v11))
  {
    v11 = 0;
    v12 = 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    return 4294954516;
  }

  v7 = Mutable;
  v8 = CFNumberCreate(0, kCFNumberSInt64Type, &v11);
  CFDictionarySetValue(v7, @"DCSAudioAccelTimeReference_absoluteTime_Private", v8);
  CFRelease(v8);
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &v12);
  CFDictionarySetValue(v7, @"DCSAudioAccelTimeReference_ispTime_Private", v9);
  CFRelease(v9);
  result = 0;
  *a2 = v7;
  return result;
}

uint64_t SetDCSAudioAccelCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v7 = *(a4 + 304);
  if (v7)
  {
    _Block_release(v7);
    *(a4 + 304) = 0;
  }

  Value = CFDictionaryGetValue(a1, @"DCSAudioAccelKeySampleCallback_Private");
  if (Value)
  {
    v9 = _Block_copy(Value);
    *(a4 + 304) = v9;
  }

  else
  {
    v9 = *(a4 + 304);
  }

  if (H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverCallbackBlock(*(a4 + 24), v9))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDCSAudioAccelMessageCallback(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  v7 = *(a4 + 312);
  if (v7)
  {
    _Block_release(v7);
    *(a4 + 312) = 0;
  }

  Value = CFDictionaryGetValue(a1, @"DCSAudioAccelKeyMessageCallback_Private");
  if (Value)
  {
    v9 = _Block_copy(Value);
    *(a4 + 312) = v9;
  }

  else
  {
    v9 = *(a4 + 312);
  }

  if (H16ISP::H16ISPDevice::ISP_DCS_SetAudioBufferReceiverMessageCallbackBlock(*(a4 + 24), v9))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDCSAudioAccelTestMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  v7 = 4294954516;
  if (v6 == CFBooleanGetTypeID())
  {
    v8 = CFBooleanGetValue(a1) != 0;
    if (H16ISP::H16ISPDevice::ISP_DCS_SetAudioTestMode(*(a4 + 24), v8))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t SetDCSAudioAccelConfig(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"DCSAudioAccelConfig_lowPwrMode_Private");
  v8 = CFDictionaryGetValue(a1, @"DCSAudioAccelConfig_isFilterBypass_Private");
  v9 = CFDictionaryGetValue(a1, @"DCSAudioAccelConfig_range_Private");
  v10 = CFDictionaryGetValue(a1, @"DCSAudioAccelConfig_dataRate_Private");
  result = 4294954516;
  if (Value && v8 && v9 && v10)
  {
    valuePtr = 0;
    v13 = 0;
    CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr + 1);
    v12 = CFBooleanGetValue(v8) != 0;
    CFNumberGetValue(v9, kCFNumberSInt8Type, &valuePtr);
    CFNumberGetValue(v10, kCFNumberSInt8Type, &v13);
    if (H16ISP::H16ISPDevice::ISP_DCS_SetAudioAccelConfig(*(a4 + 24), SHIBYTE(valuePtr), v12, valuePtr, v13))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SetDCSAudioAccelStreaming(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  v7 = 4294954516;
  if (v6 == CFBooleanGetTypeID())
  {
    v8 = CFBooleanGetValue(a1) != 0;
    if (H16ISP::H16ISPDevice::ISP_DCS_EnableAudioAccelStreaming(*(a4 + 24), v8, v9, v10))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t CopyDCSAudioAccelStreaming(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  result = H16ISP::H16ISPDevice::ISP_DCS_GetAudioAccelStreaming(*(a5 + 24), &v8);
  if (result)
  {
    return 4294954516;
  }

  if (v8)
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  *a2 = *v7;
  return result;
}

uint64_t SetDCSFPGAControl(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  v7 = 4294954516;
  if (v6 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (H16ISP::H16ISPDevice::DCS_FPGACtrl(*(a4 + 24), valuePtr & 1, (valuePtr & 2) != 0))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

uint64_t CopyDCSFPGAStatus(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  bzero(&v20, 0x1CuLL);
  v7 = H16ISP::H16ISPDevice::DCS_FPGAStatusQuery(*(a5 + 24), &v20);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = Mutable == 0;
  }

  if (v9)
  {
    return 4294954516;
  }

  v10 = Mutable;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v20 + 8);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_relDate_Private", v11);
  CFRelease(v11);
  v12 = CFNumberCreate(0, kCFNumberSInt16Type, &v20 + 12);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_version_Private", v12);
  CFRelease(v12);
  v13 = CFNumberCreate(0, kCFNumberSInt16Type, &v20 + 14);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_minVersion_Private", v13);
  CFRelease(v13);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v21);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_errorCode_Private", v14);
  CFRelease(v14);
  v15 = CFNumberCreate(0, kCFNumberSInt8Type, &v22);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_fpgaUpdateStatus_Private", v15);
  CFRelease(v15);
  v16 = CFNumberCreate(0, kCFNumberSInt8Type, &v22 + 1);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_fpgaBatStatus_Private", v16);
  CFRelease(v16);
  v17 = CFNumberCreate(0, kCFNumberSInt16Type, &v22 + 2);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_fpgaTollboothVersion_Private", v17);
  CFRelease(v17);
  v18 = CFNumberCreate(0, kCFNumberSInt16Type, &v22 + 4);
  CFDictionarySetValue(v10, @"DCSFPGAStatus_fpgaMinTollboothVer_Private", v18);
  CFRelease(v18);
  result = 0;
  *a2 = v10;
  return result;
}

uint64_t SetDCSFPGASyncOffsetControl(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"DCSFPGASyncOffsetControl_channel_Private");
  v8 = CFDictionaryGetValue(a1, @"DCSFPGASyncOffsetControl_offset_Private");
  result = 4294954516;
  if (Value && v8)
  {
    valuePtr = 0;
    v10 = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    CFNumberGetValue(v8, kCFNumberSInt8Type, &v10);
    if (H16ISP::H16ISPDevice::DCS_FPGASyncOffsetCtrl(*(a4 + 24), valuePtr, v10))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SetDCSFPGASyncControl(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, @"DCSFPGASyncControl_channel_Private");
  v8 = CFDictionaryGetValue(a1, @"DCSFPGASyncControl_enable_Private");
  v9 = CFDictionaryGetValue(a1, @"DCSFPGASyncControl_frameRate_Private");
  result = 4294954516;
  if (Value && v8 && v9)
  {
    valuePtr = 0;
    v12 = 0;
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v11 = CFBooleanGetValue(v8) != 0;
    CFNumberGetValue(v9, kCFNumberSInt16Type, &v12);
    if (H16ISP::H16ISPDevice::DCS_FPGASyncCtrl(*(a4 + 24), valuePtr, v11, v12))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SetLowMemoryMode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  Value = CFBooleanGetValue(a1);
  v8 = H16ISP::H16ISPDevice::ISP_SetLowMemoryMode(*(a4 + 24), Value != 0);
  if (v8)
  {
    v9 = 4294954514;
  }

  else
  {
    v9 = 0;
  }

  v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v10 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = "Exited";
    if (Value)
    {
      v11 = "Entered";
    }

    v13 = 136315394;
    v14 = v11;
    v15 = 1024;
    v16 = v8;
    _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_INFO, "%s low memory mode, res: 0x%08X\n\n", &v13, 0x12u);
  }

  return v9;
}

uint64_t CopyLowMemoryMode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  result = H16ISP::H16ISPDevice::ISP_GetLowMemoryMode(*(a5 + 24), &v8);
  if (result)
  {
    return 4294954516;
  }

  if (v8)
  {
    v7 = MEMORY[0x277CBED28];
  }

  else
  {
    v7 = MEMORY[0x277CBED10];
  }

  *a2 = *v7;
  return result;
}

uint64_t CopyISPProcessingSessionTypes(uint64_t a1, __CFArray **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = xmmword_2249BBDC0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  for (i = 0; i != 16; i += 4)
  {
    v9 = CFNumberCreate(0, kCFNumberIntType, &v13 + i);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
  }

  if (*(*(a5 + 24) + 4312) > 17)
  {
    valuePtr = 8;
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(Mutable, v10);
    CFRelease(v10);
  }

  *a2 = Mutable;
  return 0;
}

uint64_t CopyProcessingSessionSupportedPropertiesDictionary(uint64_t a1, __CFDictionary **a2, uint64_t a3)
{
  Mutable = *(a3 + 24);
  if (!Mutable)
  {
    v15 = a2;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v5 = processingSessionProperties[0];
      if (processingSessionProperties[0])
      {
        v6 = 0;
        v7 = *MEMORY[0x277CBED10];
        v8 = 1;
        v9 = MEMORY[0x277CF6AE0];
        v10 = MEMORY[0x277CF6AE8];
        v11 = processingSessionProperties;
        do
        {
          if (v11[2])
          {
            if (streamProperties[6 * v6 + 3])
            {
              v12 = v9;
            }

            else
            {
              v12 = v10;
            }
          }

          else
          {
            v12 = MEMORY[0x277CF6AD8];
          }

          addPropertyDictionaryToPropertiesDictionary(Mutable, v5, v11[1], *v12, v7);
          v6 = v8;
          v11 = &processingSessionProperties[5 * v8];
          v5 = *v11;
          ++v8;
        }

        while (*v11);
      }
    }

    *(a3 + 24) = Mutable;
    a2 = v15;
  }

  *a2 = Mutable;
  v13 = *(a3 + 24);
  if (v13)
  {
    CFRetain(v13);
  }

  return 0;
}

uint64_t CopyProcessingSessionInputPixelBufferAttributes(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3)
{
  BasicPixelBufferAttributeDict = CreateBasicPixelBufferAttributeDict();
  if (BasicPixelBufferAttributeDict)
  {
    v7 = BasicPixelBufferAttributeDict;
    v8 = *(a3 + 32);
    if (v8 <= 4)
    {
      if (v8 != 1)
      {
        if (v8 == 2)
        {
          Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
          valuePtr = 1650943796;
          v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(Mutable, v14);
          CFRelease(v14);
          CFDictionaryAddValue(v7, *MEMORY[0x277CC4E30], Mutable);
          CFRelease(Mutable);
        }

        goto LABEL_12;
      }
    }

    else if ((v8 - 5) >= 3)
    {
      if (v8 == 8)
      {
        v9 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionaryAddValue(v9, *MEMORY[0x277CF6A28], v7);
        CFRelease(v7);
        v10 = CreateBasicPixelBufferAttributeDict();
        CFDictionaryAddValue(v9, *MEMORY[0x277CF6A40], v10);
        CFRelease(v10);
        v11 = CreateBasicPixelBufferAttributeDict();
        v12 = MEMORY[0x277CF6A38];
LABEL_11:
        CFDictionaryAddValue(v9, *v12, v11);
        CFRelease(v11);
        v7 = v9;
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    SetSupportedFormats(BasicPixelBufferAttributeDict, SupportedOutputFormatsGPVISInput, 1, 1);
    if (*(a3 + 32) == 7)
    {
      v9 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(v9, *MEMORY[0x277CF6A28], v7);
      CFRelease(v7);
      v15 = CreateBasicPixelBufferAttributeDict();
      CFDictionaryAddValue(v9, *MEMORY[0x277CF6A38], v15);
      CFRelease(v15);
      v11 = CreateBasicPixelBufferAttributeDict();
      v12 = MEMORY[0x277CF6A30];
      goto LABEL_11;
    }

LABEL_12:
    *a2 = v7;
  }

  return 0;
}

uint64_t CopyProcessingSessionOutputPixelBufferAttributes(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF6A60];
  cf2 = *MEMORY[0x277CF6A50];
  v38[0] = *MEMORY[0x277CF6A50];
  v38[1] = v5;
  v29 = v5;
  v27 = *MEMORY[0x277CF6A58];
  v28 = *MEMORY[0x277CF6A48];
  v38[2] = *MEMORY[0x277CF6A48];
  v38[3] = v27;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    v25 = a2;
    v9 = 0;
    v10 = *MEMORY[0x277CC4D60];
    v11 = *MEMORY[0x277CC4E38];
    v33 = *MEMORY[0x277CD2B60];
    key = *MEMORY[0x277CD2970];
    v32 = *MEMORY[0x277CBED28];
    v30 = *MEMORY[0x277CC4DE8];
    v12 = MEMORY[0x277CBF138];
    v13 = MEMORY[0x277CBF150];
    while (1)
    {
      v14 = CFDictionaryCreateMutable(v6, 0, v12, v13);
      if (v14)
      {
        break;
      }

LABEL_11:
      if (++v9 == 4)
      {
        *v25 = v8;
        return 0;
      }
    }

    v15 = v14;
    valuePtr = 64;
    v16 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v15, v10, v16);
    CFRelease(v16);
    v36 = 128;
    v17 = CFNumberCreate(v6, kCFNumberIntType, &v36);
    CFDictionarySetValue(v15, v11, v17);
    CFRelease(v17);
    v18 = CFDictionaryCreateMutable(0, 0, v12, v13);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v18, v33, v32);
      v35 = 0;
      v20 = CFNumberCreate(0, kCFNumberIntType, &v35);
      CFDictionarySetValue(v19, key, v20);
      CFRelease(v20);
      CFDictionaryAddValue(v15, v30, v19);
      CFRelease(v19);
    }

    v21 = v38[v9];
    if (CFEqual(v21, cf2) || CFEqual(v21, v29))
    {
      v22 = SupportedOutputFormatsGPVISOutputPrimaryScaler;
    }

    else
    {
      v23 = CFEqual(v21, v28);
      v22 = SupportedOutputFormatsGPVISOutputIntermediateTap;
      if (!v23)
      {
        if (!CFEqual(v21, v27))
        {
          goto LABEL_10;
        }

        v22 = SupportedOutputFormatsGPVISOutputPrimaryScalerLowRes;
        if (*(*(a4 + 24) + 4312) < 17)
        {
          goto LABEL_10;
        }
      }
    }

    SetSupportedFormats(v15, v22, 1, 1);
LABEL_10:
    CFDictionaryAddValue(v8, v21, v15);
    CFRelease(v15);
    goto LABEL_11;
  }

  return 0;
}

uint64_t SetProcessingSessionDefaultProcessingParameters(const void *a1, uint64_t a2)
{
  bzero(cf, 0x470uLL);
  if (*(a2 + 32) == 4)
  {
    return 4294954514;
  }

  if (!a1)
  {
    return 4294954516;
  }

  v5 = CFGetTypeID(a1);
  if (v5 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF6A90]);
  if (Value)
  {
    v7 = Value;
    v8 = CFGetTypeID(Value);
    if (v8 == CFDataGetTypeID())
    {
      v9 = *(a2 + 32);
      if (v9 <= 8 && ((1 << v9) & 0x1EA) != 0)
      {
        Length = CFDataGetLength(v7);
        v11 = *(a2 + 32);
        if (v11 == 3 && Length > 0x200000)
        {
          v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v12 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

LABEL_46:
          v4 = 4294954516;
          goto LABEL_47;
        }

        if (v11 == 1 && Length >= 0xDA85)
        {
          v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v13 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

          goto LABEL_46;
        }

        if (v11 == 5 && Length >= 0x173AD)
        {
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v14 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
          }

          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

          goto LABEL_46;
        }

        if (v11 == 6 && Length > 0x9E5CC)
        {
          v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v15 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

          goto LABEL_46;
        }

        if (v11 == 7 && Length > 0x9EA48)
        {
          v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v16 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v16;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

          goto LABEL_46;
        }

        if (v11 == 8 && Length >= 0x69)
        {
          v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v17 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            SetProcessingSessionDefaultProcessingParameters();
          }

          goto LABEL_46;
        }

        Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], v7);
        if (!Copy)
        {
          v4 = 4294954510;
LABEL_47:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          return v4;
        }

        cf[0] = Copy;
      }
    }
  }

  v19 = CFDictionaryGetValue(a1, *MEMORY[0x277CF6A88]);
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *MEMORY[0x277CF6A78];
    v23 = &v37;
    do
    {
      ISPProcessingSessionOutputID = GetISPProcessingSessionOutputID(v21);
      if (!ISPProcessingSessionOutputID)
      {
        break;
      }

      v25 = *&ISPProcessingSessionOutputID;
      v26 = CFDictionaryGetValue(v20, ISPProcessingSessionOutputID);
      if (v26)
      {
        v27 = CFDictionaryGetValue(v26, v22);
        if (!CGRectMakeWithDictionaryRepresentation(v27, v23 - 1))
        {
          goto LABEL_46;
        }

        v23->origin.x = v25;
      }

      ++v21;
      v23 = (v23 + 56);
    }

    while (v21 != 20);
  }

  v28 = cf[0];
  if (cf[0])
  {
    v29 = *(a2 + 88);
    if (v29)
    {
      CFRelease(v29);
      v28 = cf[0];
    }

    *(a2 + 88) = v28;
  }

  v30 = a2 + 96;
  v31 = &v36;
  v32 = 20;
  do
  {
    if (!CGRectIsEmpty(*(v31 - 3)))
    {
      v33 = *(v31 - 3);
      *v30 = *(v31 - 5);
      *(v30 + 16) = v33;
      *(v30 + 32) = *(v31 - 1);
      *(v30 + 48) = v31[1];
    }

    v30 += 56;
    v31 += 7;
    --v32;
  }

  while (v32);
  return 0;
}

uint64_t CopyProcessingSessionDefaultProcessingParameters(uint64_t a1, __CFDictionary **a2, uint64_t a3)
{
  if (*a3)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CopyProcessingSessionDefaultProcessingParameters();
    }

    return 4294954516;
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    theDict = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (theDict)
    {
      v8 = *(a3 + 88);
      if (v8)
      {
        Copy = CFDataCreateCopy(v7, v8);
        if (Copy)
        {
          v10 = Copy;
          CFDictionarySetValue(theDict, *MEMORY[0x277CF6A90], Copy);
          CFRelease(v10);
        }
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        v13 = 0;
        v14 = *MEMORY[0x277CF6A78];
        v15 = a3 + 136;
        v16 = MEMORY[0x277CBF138];
        v17 = MEMORY[0x277CBF150];
        do
        {
          if (!CGRectIsEmpty(*(v15 - 24)))
          {
            v18 = CFDictionaryCreateMutable(v7, 0, v16, v17);
            if (v18)
            {
              v19 = v18;
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(v15 - 24));
              if (DictionaryRepresentation)
              {
                v21 = DictionaryRepresentation;
                CFDictionarySetValue(v19, v14, DictionaryRepresentation);
                CFRelease(v21);
              }

              ISPProcessingSessionOutputID = GetISPProcessingSessionOutputID(v13);
              if (ISPProcessingSessionOutputID)
              {
                CFDictionarySetValue(v12, ISPProcessingSessionOutputID, v19);
              }

              CFRelease(v19);
            }
          }

          ++v13;
          v15 += 56;
        }

        while (v13 != 20);
      }
    }

    result = 0;
    *a2 = theDict;
  }

  return result;
}

uint64_t SetProcessingSessionOutputHandler(void *aBlock, uint64_t a2)
{
  if (aBlock)
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a2 + 48) = _Block_copy(aBlock);
  }

  return 0;
}

uint64_t CopyProcessingSessionSupportedOutputs(const __CFAllocator *a1, __CFArray **a2, uint64_t a3, uint64_t a4)
{
  if (*a3)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v4 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v4;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CopyProcessingSessionSupportedOutputs();
    }

    return 4294954516;
  }

  if (!a2)
  {
    return 4294954516;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v10 = Mutable;
  if (Mutable)
  {
    v11 = *(a3 + 32);
    if (v11 <= 7 && ((1 << v11) & 0xE6) != 0)
    {
      CFArrayAppendValue(Mutable, *MEMORY[0x277CF6A50]);
      if (*(*(a4 + 24) + 4312) >= 17)
      {
        CFArrayAppendValue(v10, *MEMORY[0x277CF6A58]);
      }

      v11 = *(a3 + 32);
    }

    if (v11 == 2)
    {
      CFArrayAppendValue(v10, *MEMORY[0x277CF6A60]);
      CFArrayAppendValue(v10, *MEMORY[0x277CF6A48]);
      v11 = *(a3 + 32);
    }

    v13 = MEMORY[0x277CF6A70];
    if (v11 == 3)
    {
      CFArrayAppendValue(v10, *MEMORY[0x277CF6A70]);
      v11 = *(a3 + 32);
    }

    if (v11 == 4)
    {
      CFArrayAppendValue(v10, *v13);
      CFArrayAppendValue(v10, @"OperationsList");
      CFArrayAppendValue(v10, @"ActionsList");
      v11 = *(a3 + 32);
    }

    if (v11 == 8)
    {
      CFArrayAppendValue(v10, *MEMORY[0x277CF6A68]);
    }
  }

  result = 0;
  *a2 = v10;
  return result;
}

uint64_t SetProcessingSessionDeferAdditionOfAttachments(const void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    v5 = "False";
    if (v4 == CFBooleanGetTypeID())
    {
      v6 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v7 = 0;
      if (v6)
      {
        v5 = "True";
      }

      *(a2 + 1312) = v6 != 0;
    }

    else
    {
      v7 = 4294954516;
    }
  }

  else
  {
    v7 = 4294954516;
    v5 = "False";
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v8 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = v5;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_INFO, "H16ISPProcessingSession: SetDeferAdditionOfAttachments: %s (err=%d) \n\n", &v10, 0x12u);
  }

  return v7;
}

uint64_t CopyProcessingSessionDeferAdditionOfAttachments(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 1312))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyProcessingSessionSupportedInputs(const __CFAllocator *a1, __CFArray **a2, uint64_t a3)
{
  if (*a3)
  {
    v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v3;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      CopyProcessingSessionSupportedInputs();
    }

    return 4294954516;
  }

  if (!a2)
  {
    return 4294954516;
  }

  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v8 = Mutable;
  if (Mutable)
  {
    v9 = *(a3 + 32);
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF6A28]);
    if (v9 == 7)
    {
      v10 = MEMORY[0x277CF6A30];
      v11 = MEMORY[0x277CF6A38];
      goto LABEL_13;
    }

    if (v9 == 8)
    {
      v10 = MEMORY[0x277CF6A38];
      v11 = MEMORY[0x277CF6A40];
LABEL_13:
      CFArrayAppendValue(v8, *v11);
      CFArrayAppendValue(v8, *v10);
    }
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t H16ISPProcessingSessionCreate(const void *a1, uint64_t a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  cf = 0;
  valuePtr = 0;
  v4 = 4294954516;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (!theDict)
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  v8 = *MEMORY[0x277CF6A20];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6A20]);
  if (!Value)
  {
    goto LABEL_19;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v10 = valuePtr;
  if (valuePtr > 8)
  {
    goto LABEL_25;
  }

  if (((1 << valuePtr) & 0xE2) != 0)
  {
    goto LABEL_11;
  }

  if (((1 << valuePtr) & 0x11C) != 0)
  {
    v4 = 0;
  }

  else
  {
LABEL_25:
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCreate();
    }

    v4 = 4294954516;
  }

  if (v10 > 8 || ((1 << v10) & 0x11C) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  LogCaptureDeviceEvent(5u, DerivedStorage, 0, 0, v8, theDict, 0);
  pthread_mutex_lock((DerivedStorage + 32));
  if (!DerivedStorage || *DerivedStorage)
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      H16ISPProcessingSessionCreate();
    }

    v4 = 4294954516;
    goto LABEL_18;
  }

  if (!*(DerivedStorage + 108) && valuePtr == 2)
  {
    v4 = 3758097088;
LABEL_18:
    pthread_mutex_unlock((DerivedStorage + 32));
    goto LABEL_19;
  }

  CFRetain(a1);
  pthread_mutex_unlock((DerivedStorage + 32));
  FigCaptureISPProcessingSessionGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
LABEL_19:
    if (cf)
    {
      CFRelease(cf);
    }

    return v4;
  }

  v15 = CMBaseObjectGetDerivedStorage();
  *v15 = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0;
  bzero((v15 + 88), 0x470uLL);
  *(v15 + 1312) = 0;
  *(v15 + 1316) = 0;
  *(v15 + 1224) = 0;
  *(v15 + 1242) = 0;
  *(v15 + 8) = a1;
  *(v15 + 56) = *(DerivedStorage + 24);
  if (valuePtr == 4)
  {
    *(v15 + 1312) = 1;
  }

  if (dword_2810032C4 && (dword_2810032CC & 0x40000000) != 0)
  {
    operator new();
  }

  *(v15 + 1320) = 0;
  *(v15 + 32) = valuePtr;
  bzero((v15 + 88), 0x470uLL);
  *buf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v15 + 16) = Mutable;
  if (Mutable)
  {
    if (processingSessionProperties[0])
    {
      do
      {
        v17 = CFNumberCreate(0, kCFNumberIntType, buf);
        CFDictionarySetValue(*(v15 + 16), processingSessionProperties[5 * *buf], v17);
        CFRelease(v17);
        ++*buf;
      }

      while (processingSessionProperties[5 * *buf]);
    }

    v4 = 0;
  }

  else
  {
    v4 = 3758097085;
  }

  pthread_mutexattr_init(&v20);
  pthread_mutexattr_settype(&v20, 2);
  pthread_mutex_init((v15 + 1248), &v20);
  pthread_mutexattr_destroy(&v20);
  *a4 = cf;
  return v4;
}