uint64_t CopyFormatDescription(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  *a2 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return 0;
}

uint64_t CopyMaximumAllowedFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3)
{
  valuePtr = *(a3 + 60);
  *a2 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  return 0;
}

uint64_t CopyMinimumFrameRate(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  if (H16ISP::H16ISPDevice::GetMinimumFrameRate(*(a5 + 24), *(a3 + 156), &v11))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v8 = vcvtd_n_f64_u32(v11, 8uLL);
    valuePtr = v8;
    v6 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetExternalSyncFrameRateRational(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[1] = *MEMORY[0x277D85DE8];
  bzero(&v37, 8uLL);
  if (!*(a2 + 160))
  {
    if (a1)
    {
      v9 = CFGetTypeID(a1);
      if (v9 != CFArrayGetTypeID() || CFArrayGetCount(a1) != 2)
      {
        return 4294954516;
      }

      v45[0] = 0;
      if (CFArrayGetCount(a1) >= 1)
      {
        v10 = 0;
        v11 = v45;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
          v13 = CFGetTypeID(ValueAtIndex);
          if (v13 != CFNumberGetTypeID())
          {
            break;
          }

          CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v11);
          ++v10;
          v11 = (v11 + 4);
        }

        while (v10 < CFArrayGetCount(a1));
      }

      v14 = *(a2 + 48);
      v15 = *(a2 + 192);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = v14 - v15;
      if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v14 - v15) + 16), v34, v44))
      {
        return 4294954516;
      }

      v19 = *(a2 + 184);
      v20 = *(a2 + 48);
      v21 = *(a2 + 192);
      if (v20 < v21)
      {
        v21 = 0;
      }

      v22 = 120 * (v20 - v21);
      if (v19)
      {
        v23 = v19 + 120 * v16;
      }

      else
      {
        v23 = v22;
      }

      v24 = *(v23 + 108);
      if (v24 == 0.0)
      {
        v25 = v35;
      }

      else
      {
        v25 = v24 * 256.0;
      }

      v26 = *(a2 + 156);
      if (*(a2 + 4360) && !*(a2 + 4380))
      {
        v26 |= 0x80000000;
      }

      v37 = v45[0];
      if (v45[0])
      {
        v27 = v25 * 0.0039062;
        v28 = (LODWORD(v45[0]) / HIDWORD(v45[0]));
        v29 = *(a2 + 60) < v28 || (v36 * 0.0039062) > v28;
        if (v29 || v27 < v28)
        {
          return 4294954516;
        }
      }

      v31 = *(a4 + 24);
      v18 = v37;
      if (!H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(v31, v26, v37))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v32 = *(a2 + 68);
          v33 = *(a2 + 72);
          *buf = 136315650;
          v39 = "SetExternalSyncFrameRateRational";
          v40 = 1024;
          v41 = v32;
          v42 = 1024;
          v43 = v33;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Set the external pulse from the MSG to %d/%d\n", buf, 0x18u);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v17 = *(a4 + 24);
      v18 = v37;
      if (!H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(v17, *(a2 + 156), v37))
      {
LABEL_44:
        result = 0;
        *(a2 + 68) = v18;
        return result;
      }
    }

    return 4294954514;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    SetExternalSyncFrameRateRational();
  }

  return 4294954612;
}

uint64_t SetFrameRateRangeRational(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }

    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5B90]);
    v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5BB8]);
    if (!Value)
    {
      return 4294954516;
    }

    v10 = v9;
    v11 = CFGetTypeID(Value);
    if (v11 != CFArrayGetTypeID() || v10 == 0)
    {
      return 4294954516;
    }

    v13 = CFGetTypeID(v10);
    if (v13 != CFArrayGetTypeID() || CFArrayGetCount(Value) != 2 || CFArrayGetCount(v10) != 2)
    {
      return 4294954516;
    }

    v14 = 0;
    v75 = 0;
    v76[0] = 0;
    v15 = v76;
    v16 = &v75;
    v17 = 1;
    do
    {
      v18 = v17;
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v14);
      v20 = CFArrayGetValueAtIndex(v10, v14);
      v21 = CFGetTypeID(ValueAtIndex);
      if (v21 != CFNumberGetTypeID())
      {
        break;
      }

      v22 = CFGetTypeID(v20);
      if (v22 != CFNumberGetTypeID())
      {
        break;
      }

      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v15);
      CFNumberGetValue(v20, kCFNumberIntType, v16);
      v17 = 0;
      v15 = v76 + 4;
      v16 = &v75 + 4;
      v14 = 1;
    }

    while ((v18 & 1) != 0);
    if (!HIDWORD(v76[0]) || !HIDWORD(v75))
    {
      return 4294954516;
    }

    v24 = v75;
    v23 = v76[0];
    v59 = v75;
    v60 = v76[0];
    v25 = *(a2 + 48);
    v26 = *(a2 + 192);
    if (v25 < v26)
    {
      v26 = 0;
    }

    v27 = v25 - v26;
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), *(*(a2 + 184) + 120 * (v25 - v26) + 16), v56, buf))
    {
      return 4294954516;
    }

    v28 = (v23 / HIDWORD(v23));
    v29 = (v24 / HIDWORD(v24));
    if (v28 < v29)
    {
      return 4294954516;
    }

    v30 = v58 * 0.0039062;
    v31 = *(a2 + 184);
    v32 = *(a2 + 48);
    v33 = *(a2 + 192);
    if (v32 < v33)
    {
      v33 = 0;
    }

    v34 = 120 * (v32 - v33);
    if (v31)
    {
      v35 = v31 + 120 * v27;
    }

    else
    {
      v35 = v34;
    }

    v36 = *(v35 + 108);
    v37 = v57;
    if (v36 != 0.0)
    {
      v37 = v36 * 256.0;
    }

    v38 = v37 * 0.0039062;
    v39 = *(a2 + 60);
    v40 = v39 < v28 || v39 < v29;
    v41 = v40 || v30 > v28;
    v42 = v41 || v30 > v29;
    v43 = v42 || v38 < v29;
    if (v43 || v38 < v28)
    {
      return 4294954516;
    }

    if (H16ISP::H16ISPDevice::SetRationalFrameRateRange(*(a4 + 24), *(a2 + 156), 0, &v60, &v59))
    {
      return 4294954514;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v61 = 136316162;
      v62 = "SetFrameRateRangeRational";
      v63 = 1024;
      v64 = v60;
      v65 = 1024;
      v66 = HIDWORD(v60);
      v67 = 1024;
      v68 = v59;
      v69 = 1024;
      v70 = HIDWORD(v59);
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s -  Rational FrameRateRange is set - max = %d/%d, min = %d/%d\n", v61, 0x24u);
    }

    LODWORD(v46) = v59;
    v52 = v60;
    v51 = HIDWORD(v60);
    v50 = HIDWORD(v59);
    v53 = v59;
    v54 = v60;
  }

  else
  {
    v46 = *(a2 + 160);
    if (v46)
    {
      SetMinimumFrameRateNow(a2, a4);
      SetMaximumFrameRateNow(a2, a4);
      v47 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v47 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v47;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = *(a2 + 56);
        v49 = *(a2 + 52);
        *buf = 134218240;
        v72 = v48;
        v73 = 2048;
        v74 = v49;
        _os_log_impl(&dword_2247DB000, v47, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Reverting back to kFigCaptureStreamProperty_(Minimum/Maximum)FrameRate: %f - %f\n\n", buf, 0x16u);
      }

      LODWORD(v50) = 0;
      LODWORD(v46) = 0;
    }

    else
    {
      LODWORD(v50) = 0;
    }

    LODWORD(v51) = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  result = 0;
  *(a2 + 76) = v54;
  *(a2 + 84) = v53;
  *(a2 + 52) = (v52 / v51);
  *(a2 + 56) = (v46 / v50);
  return result;
}

uint64_t CopyFrameRateRangeRational(const __CFAllocator *a1, CFMutableDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_14;
  }

  v20 = 0;
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::SetRationalFrameRateRange(*(a5 + 24), *(a3 + 156), 1, &valuePtr, &v20))
  {
    v10 = 4294954514;
LABEL_4:
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_15;
  }

  v11 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v11)
  {
    v10 = 4294954510;
    goto LABEL_4;
  }

  v12 = v11;
  v13 = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  if (!v13)
  {
    CFRelease(Mutable);
    CFRelease(v12);
    Mutable = 0;
LABEL_14:
    v10 = 4294954510;
    goto LABEL_15;
  }

  v14 = v13;
  v15 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
  CFArrayAppendValue(v12, v15);
  CFRelease(v15);
  v16 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr + 4);
  CFArrayAppendValue(v12, v16);
  CFRelease(v16);
  v17 = CFNumberCreate(a1, kCFNumberSInt32Type, &v20);
  CFArrayAppendValue(v14, v17);
  CFRelease(v17);
  v18 = CFNumberCreate(a1, kCFNumberSInt32Type, &v20 + 4);
  CFArrayAppendValue(v14, v18);
  CFRelease(v18);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5B90], v12);
  CFRelease(v12);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CF5BB8], v14);
  CFRelease(v14);
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v23 = "CopyFrameRateRangeRational";
    v24 = 1024;
    v25 = valuePtr;
    v26 = 1024;
    v27 = HIDWORD(valuePtr);
    v28 = 1024;
    v29 = v20;
    v30 = 1024;
    v31 = HIDWORD(v20);
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s -  Rational FrameRateRange is set - max = %d/%d, min = %d/%d\n", buf, 0x24u);
  }

  v10 = 0;
LABEL_15:
  *a2 = Mutable;
  return v10;
}

uint64_t StillImageCaptureNow(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v862 = *MEMORY[0x277D85DE8];
  v7 = v4 + 4096;
  v8 = *(v4 + 4224);
  bzero(&v861, 0x10uLL);
  bzero(__src, 0x79CuLL);
  LOWORD(__src[1]) = 2623;
  v808[3] = 0;
  *(&v808[1] + 3) = 0;
  bzero(v808, 0xE8uLL);
  v9 = *(*(v3 + 24) + 4304);
  v10 = *(v5 + 4360);
  if (v10)
  {
    CFRetain(*(v5 + 4360));
    v11 = (v5 + 264);
    pthread_mutex_unlock((v5 + 264));
    LockStreamMutexes(v10);
  }

  else
  {
    v11 = 0;
  }

  if (*(v5 + 100) || !*(v5 + 160))
  {
    v12 = 4294954608;
    goto LABEL_6;
  }

  LODWORD(v793) = *(v5 + 256);
  *v805 = v3;
  v785 = v9;
  if (!v6 || (v14 = CFGetTypeID(v6), v14 != CFDictionaryGetTypeID()))
  {
    v779 = 0;
    key = 0;
    v16 = 0;
    cf2 = 0;
    v773 = 0;
    v774 = 0;
    v771 = 0;
    theDict = 0;
    v784 = 0;
    v791 = 0;
    v792 = 0;
    v17 = 0;
    v775 = 0;
    LODWORD(valuePtr) = 0;
    v777 = 0;
    v778 = 0;
    memset(v787, 0, sizeof(v787));
    v788 = 0;
    v18 = 0;
    v19 = 0;
    LOBYTE(v795) = 0;
    v776 = 0;
    v763 = 0;
    v765 = 0;
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
    v803[0] = 0;
    v20 = 0;
    theArray = 0;
    cf = 0;
    v789 = -12780;
    LOWORD(v790) = -1;
    v21 = 4;
    v22 = 1;
    goto LABEL_15;
  }

  cf = CFDictionaryGetValue(v6, *MEMORY[0x277CF5500]);
  Value = CFDictionaryGetValue(v6, *MEMORY[0x277CF5668]);
  v799 = CFDictionaryGetValue(v6, *MEMORY[0x277CF56C0]);
  v796 = CFDictionaryGetValue(v6, @"BioCapBracketedCaptureParams");
  v794 = CFDictionaryGetValue(v6, @"ProbePatternBracketedCaptureParams");
  v791 = CFDictionaryGetValue(v6, @"ProjectorBracketedCaptureParams");
  v792 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6130]);
  if (v792)
  {
    theDict = CFDictionaryGetValue(v6, *MEMORY[0x277CF60F8]);
  }

  else
  {
    theDict = 0;
  }

  theArray = Value;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFArrayGetTypeID()))
  {
    memset(v787, 0, sizeof(v787));
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 1;
  }

  else if (Value && (v37 = CFGetTypeID(Value), v37 == CFArrayGetTypeID()))
  {
    memset(v787, 0, sizeof(v787));
    LODWORD(v797) = 0;
    LODWORD(v800) = 0;
    LODWORD(v798) = 1;
  }

  else if (v799 && (v38 = CFGetTypeID(v799), v38 == CFDictionaryGetTypeID()))
  {
    memset(v787, 0, sizeof(v787));
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
    LODWORD(v797) = 1;
  }

  else if (v796 && (v39 = CFGetTypeID(v796), v39 == CFDictionaryGetTypeID()))
  {
    *v787 = 0;
    *&v787[4] = 0x100000000;
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
  }

  else if (v794 && (v40 = CFGetTypeID(v794), v40 == CFDictionaryGetTypeID()))
  {
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
    *v787 = 0;
    *&v787[4] = 1;
  }

  else if (v791)
  {
    v41 = CFGetTypeID(v791);
    *&v787[8] = 0;
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
    *v787 = v41 == CFArrayGetTypeID();
  }

  else
  {
    memset(v787, 0, sizeof(v787));
    LODWORD(v797) = 0;
    LODWORD(v798) = 0;
    LODWORD(v800) = 0;
  }

  v42 = CFDictionaryGetValue(v6, *MEMORY[0x277CF55D0]);
  v788 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5538]);
  if (v42)
  {
    v43 = CFGetTypeID(v42);
    if (v43 == CFStringGetTypeID())
    {
      if (CFEqual(v42, *MEMORY[0x277CF5550]))
      {
        if (*(v5 + 4360))
        {
          v44 = 7;
        }

        else
        {
          v44 = 2;
        }

        goto LABEL_180;
      }

      if (CFEqual(v42, *MEMORY[0x277CF5540]))
      {
        if (*(v5 + 4360))
        {
          v44 = 5;
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_180;
      }

      if (CFEqual(v42, *MEMORY[0x277CF5548]))
      {
        if (*(v5 + 4360))
        {
          v44 = 6;
        }

        else
        {
          v44 = 1;
        }

        goto LABEL_180;
      }

      if (CFEqual(v42, *MEMORY[0x277CF5558]))
      {
        if (*(v5 + 4360))
        {
          v44 = 16;
        }

        else
        {
          v44 = 15;
        }

        goto LABEL_180;
      }
    }
  }

  v44 = -1;
LABEL_180:
  LOWORD(v790) = v44;
  v102 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5700]);
  v103 = MEMORY[0x277CBED28];
  if (v102)
  {
    LODWORD(v795) = CFEqual(v102, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    LODWORD(v795) = 0;
  }

  v104 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5738]);
  v105 = 4;
  v766 = v104;
  if (v104)
  {
    if (CFEqual(v104, *v103))
    {
      v105 = 1;
    }

    else
    {
      v105 = 4;
    }
  }

  cf2a = CFDictionaryGetValue(v6, *MEMORY[0x277CF6108]);
  if (cf2a)
  {
    if (!CFEqual(*MEMORY[0x277CF5FF8], cf2a))
    {
      goto LABEL_238;
    }

    v105 = 1;
  }

  v783 = v105;
  v106 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60D0]);
  if (v106)
  {
    v107 = CFEqual(v106, *v103) != 0;
    H16ISP::H16ISPDevice::EnableHighlightRecovery(*(v3 + 24), *(v5 + 156), v107, 1);
  }

  v858[0] = 0;
  v108 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6128]);
  if (v108 && (v109 = v108, v110 = CFGetTypeID(v108), v110 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(v109, kCFNumberIntType, v858);
    v803[0] = v858[0] == 1;
  }

  else
  {
    v803[0] = 0;
  }

  bzero(v860, 0x2AuLL);
  bzero(v859, 0x2AuLL);
  v111 = CFDictionaryGetValue(v6, @"FocusDeltaParams");
  if (v111 && (v112 = v111, v113 = CFGetTypeID(v111), v113 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v112);
    if (Count > 21 || !Count)
    {
      goto LABEL_238;
    }

    v768 = Count;
    if (Count >= 1)
    {
      v115 = 0;
      v116 = v860;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v112, v115);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v116);
        ++v115;
        v116 += 2;
      }

      while (v768 != v115);
    }
  }

  else
  {
    v768 = 0;
  }

  v118 = CFDictionaryGetValue(v6, @"FocusDeltaParamsSlave");
  v119 = v768;
  if (!v118)
  {
    goto LABEL_213;
  }

  v120 = v118;
  v121 = CFGetTypeID(v118);
  if (v121 != CFArrayGetTypeID())
  {
    goto LABEL_213;
  }

  v122 = CFArrayGetCount(v120);
  if (v122 != v768 || v122 > 21 || !v122)
  {
    goto LABEL_238;
  }

  if (v768 >= 1)
  {
    v123 = 0;
    v124 = v859;
    do
    {
      v125 = CFArrayGetValueAtIndex(v120, v123);
      CFNumberGetValue(v125, kCFNumberIntType, v124);
      ++v123;
      v124 += 2;
    }

    while (v768 != v123);
LABEL_213:
    if ((v797 | v798 | v800) == 1 && v768 >= 1)
    {
      bzero(&buf, 0x64uLL);
      buf.timescale = buf.timescale & 0x7FFF0000 | *(v5 + 156) | ((*(v5 + 4360) != 0) << 31);
      WORD2(buf.value) = 586;
      LOWORD(buf.flags) = v768;
      v126 = &v831;
      v127 = v859;
      v128 = v860;
      do
      {
        v129 = *v128++;
        *(v126 - 21) = v129;
        v130 = *v127++;
        *v126++ = v130;
        --v119;
      }

      while (v119);
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), &buf, 0x64u, 0, 0xFFFFFFFF))
      {
        goto LABEL_218;
      }
    }
  }

  v131 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6090]);
  v132 = MEMORY[0x277CBED28];
  if (v131)
  {
    v8 = CFEqual(v131, *MEMORY[0x277CBED28]) != 0;
  }

  v133 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6080]);
  if (v133)
  {
    v134 = v133;
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v5 + 160), 20))
    {
      goto LABEL_238;
    }

    v135 = CFEqual(v134, *v132) != 0;
  }

  else
  {
    v135 = dword_281003340 == 1;
  }

  LODWORD(v779) = v135;
  v136 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6078]);
  if (v136)
  {
    if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v5 + 160), 22))
    {
      goto LABEL_238;
    }

    if (CFEqual(v136, *v132))
    {
      v137 = -1;
    }

    else
    {
      v137 = 0;
    }

    LODWORD(v777) = v137;
  }

  else
  {
    LODWORD(v777) = 0;
  }

  if (CFDictionaryGetValue(v6, *MEMORY[0x277CF6070]))
  {
    if (H16ISP::H16ISPFrameReceiver::HasPool(*(v5 + 160), 23))
    {
      if (CFEqual(v136, *v132))
      {
        v138 = -1;
      }

      else
      {
        v138 = 0;
      }

      v776 = v138;
      goto LABEL_240;
    }

LABEL_238:
    v12 = 4294954516;
    goto LABEL_6;
  }

  v776 = 0;
LABEL_240:
  v139 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6110]);
  if (v139)
  {
    v22 = CFEqual(v139, *v132) == 0;
  }

  else
  {
    v22 = 1;
  }

  v140 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60E0]);
  if (v140)
  {
    v141 = CFEqual(v140, *v132) != 0;
  }

  else
  {
    v141 = *(v7 + 500);
  }

  *(v7 + 501) = v141;
  v142 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6098]);
  if (v142)
  {
    v143 = CFEqual(v142, *v132) != 0;
  }

  else
  {
    v143 = 0;
  }

  v144 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60B0]);
  if (v144)
  {
    WORD2(v778) = CFEqual(v144, *v132) != 0;
  }

  else
  {
    WORD2(v778) = 0;
  }

  v145 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60A8]);
  if (v145)
  {
    LOWORD(v778) = CFEqual(v145, *v132) != 0;
  }

  else
  {
    LOWORD(v778) = 0;
  }

  v146 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60A0]);
  if (v146)
  {
    WORD2(v777) = CFEqual(v146, *v132) != 0;
  }

  else
  {
    WORD2(v777) = 0;
  }

  v147 = *(v5 + 4360);
  HIDWORD(v779) = v143;
  if (!v147)
  {
    goto LABEL_268;
  }

  if (!CFArrayGetCount(v147))
  {
    BYTE4(v774) = 0;
    v154 = 0;
    v857[0] = 0;
    goto LABEL_270;
  }

  v148 = 0;
  v149 = 0;
  v150 = 0;
  do
  {
    CFArrayGetValueAtIndex(*(v5 + 4360), v148);
    FigCaptureStreamGetFigBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 4256) == 1)
    {
      v150 = *(DerivedStorage + 4260);
      v149 = 1;
    }

    ++v148;
  }

  while (v148 < CFArrayGetCount(*(v5 + 4360)));
  v857[0] = v150;
  if ((v149 & 1) == 0)
  {
LABEL_268:
    BYTE4(v774) = 0;
    v154 = 0;
LABEL_270:
    v789 = -12780;
    goto LABEL_271;
  }

  v152 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60D8]);
  if (v152)
  {
    ProjectorTypeFromDictionary = GetProjectorTypeFromDictionary(v152, v857);
    if (ProjectorTypeFromDictionary)
    {
LABEL_334:
      v12 = ProjectorTypeFromDictionary;
      goto LABEL_6;
    }

    v789 = 0;
    v150 = v857[0];
  }

  else
  {
    v789 = -12780;
  }

  ProjectorTypeFromDictionary = 4294954516;
  if (v150 > 4)
  {
    switch(v150)
    {
      case 5:
        BYTE4(v774) = 1;
        v154 = 1;
        goto LABEL_271;
      case 11:
        v154 = 4;
        break;
      case 12:
        v154 = 3;
        break;
      default:
        goto LABEL_334;
    }
  }

  else if (v150)
  {
    if (v150 == 1)
    {
      v154 = 4096;
    }

    else
    {
      if (v150 != 4)
      {
        goto LABEL_334;
      }

      v154 = 2;
    }
  }

  else
  {
    v154 = 0;
  }

  BYTE4(v774) = 1;
LABEL_271:
  v155 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6120]);
  if (v155)
  {
    v156 = v155;
    if (*(v5 + 1388))
    {
      v157 = 1392;
    }

    else if (*(v5 + 1588))
    {
      v157 = 1592;
    }

    else
    {
      if (*(v5 + 2588) != 1)
      {
        v158 = 0;
        goto LABEL_280;
      }

      v157 = 2592;
    }

    v158 = *(v5 + v157);
LABEL_280:
    if (*(v5 + 1376) & 1) != 0 || (*(v5 + 1576))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v5 + 2504) ^ 1;
    }

    v159 = CFDictionaryGetValue(v155, *MEMORY[0x277CF6310]);
    if (v159)
    {
      LODWORD(buf.value) = 0;
      CFNumberGetValue(v159, kCFNumberSInt32Type, &buf);
      v160 = buf.value;
      if (SLODWORD(buf.value) > v158)
      {
LABEL_333:
        ProjectorTypeFromDictionary = 4294954516;
        goto LABEL_334;
      }
    }

    else
    {
      v160 = 0;
    }

    v775 = v160;
    v161 = CFDictionaryGetValue(v156, *MEMORY[0x277CF6318]);
    if (v161)
    {
      v162 = v161;
      if (H16ISP::H16ISPDevice::ISP_GetCameraTime(*(*v805 + 24), __b))
      {
        ProjectorTypeFromDictionary = 4294954514;
        goto LABEL_334;
      }

      CMTimeMakeFromDictionary(&buf, v162);
      v847[0] = buf;
      CMTimeGetSeconds(v847);
      v163 = __b[0];
      v773 = (__b[1] - (v163 - FigNanosecondsToHostTime()) / *(v5 + 4216));
    }

    else
    {
      v773 = 0;
    }

    goto LABEL_293;
  }

  v17 = 0;
  v773 = 0;
  v775 = 0;
LABEL_293:
  v164 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6118]);
  v21 = v783;
  LOWORD(v774) = v154;
  v784 = v164;
  if (v164)
  {
    LODWORD(buf.value) = 0;
    v165 = CFArrayGetCount(v164);
    v775 = v165;
    if (v165)
    {
      v166 = 0;
      LODWORD(valuePtr) = 0;
      keya = *MEMORY[0x277CF6320];
      v772 = *MEMORY[0x277CF6200];
      v764 = v165;
      while (1)
      {
        v167 = CFArrayGetValueAtIndex(v784, v166);
        v168 = CFDictionaryGetValue(v167, keya);
        if (v168)
        {
          CFNumberGetValue(v168, kCFNumberSInt8Type, &v861 + 2 * valuePtr);
        }

        v169 = CFDictionaryGetValue(v167, v772);
        if (v169 && (CFNumberGetValue(v169, kCFNumberSInt32Type, &buf), LODWORD(buf.value)))
        {
          if (!valuePtr)
          {
            v171 = 0;
LABEL_306:
            LODWORD(valuePtr) = valuePtr + 1;
            *(&v861 + 2 * v171 + 1) = 1;
            goto LABEL_307;
          }

          v170 = &v861 + 2 * (valuePtr - 1);
          v171 = valuePtr;
          if (*v170 != *(&v861 + 2 * valuePtr) || v170[1])
          {
            goto LABEL_306;
          }

          v170[1] = 2;
        }

        else
        {
          *(&v861 + 2 * valuePtr + 1) = 0;
          LODWORD(valuePtr) = valuePtr + 1;
        }

LABEL_307:
        GetPerFrameTuningParam(v167, &__src[16 * LOBYTE(__src[3]) + 4], v5);
        v172 = __src[3];
        __src[16 * LOBYTE(__src[3]) + 9] = 1;
        LOBYTE(__src[3]) = v172 + 1;
        if (v764 == ++v166)
        {
          goto LABEL_311;
        }
      }
    }

    LODWORD(valuePtr) = 0;
LABEL_311:
    v21 = v783;
    if (*(v5 + 1376) & 1) != 0 || (*(v5 + 1576))
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v5 + 2504) ^ 1;
    }

    v771 = 1;
  }

  else
  {
    v771 = 0;
    LODWORD(valuePtr) = v775;
  }

  v16 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60E8]);
  key = CFDictionaryGetValue(v6, *MEMORY[0x277CF60F0]);
  if (v16)
  {
    if (v790 == 6 || v790 == 1)
    {
      v173 = v795 ? 2 : 1;
    }

    else
    {
      v173 = 1;
    }

    if (CFArrayGetCount(v16) != v173)
    {
      goto LABEL_333;
    }
  }

  if (key)
  {
    if (v790 == 6 || v790 == 1)
    {
      v174 = v795 ? 2 : 1;
    }

    else
    {
      v174 = 1;
    }

    if (CFArrayGetCount(key) != v174)
    {
      goto LABEL_333;
    }
  }

  v765 = v766 != 0;
  v763 = cf2a != 0;
  cf2 = v768 > 0;
  v20 = v799;
  v19 = v796;
  v18 = v794;
LABEL_15:
  v794 = v18;
  v796 = v19;
  v799 = v20;
  v782 = v21;
  v23 = *(v5 + 4360);
  v767 = v17;
  if (v23)
  {
    if (CFArrayGetCount(v23))
    {
      v24 = 0;
      do
      {
        if (CFArrayGetValueAtIndex(*(v5 + 4360), v24))
        {
          FigCaptureStreamGetFigBaseObject();
          v25 = CMBaseObjectGetDerivedStorage();
          if (*(v25 + 160))
          {
            v26 = *(v25 + 4369);
            if ((v22 | v26))
            {
              if (v26)
              {
                v5 = v25;
              }

              v27 = v809++;
              v814[v27] = v25;
            }
          }
        }

        ++v24;
      }

      while (v24 < CFArrayGetCount(*(v5 + 4360)));
    }
  }

  else
  {
    v814[0] = v5;
    v809 = 1;
  }

  if (!v809)
  {
    v12 = 4294954611;
    goto LABEL_6;
  }

  v28 = v5 + 4096;
  v29 = *(v5 + 4176);
  v813 = 5;
  v812 = v29;
  v30 = *(v5 + 156);
  if (v809 != 1)
  {
    v30 = *(v5 + 156);
    if (*(v5 + 4360))
    {
      if (!*(v5 + 4380))
      {
        v30 |= 0x80000000;
      }
    }
  }

  if (H16ISP::H16ISPDevice::EnableSqrtToneCurve(*(*v805 + 24), v30, v803[0]))
  {
LABEL_33:
    v12 = v789;
    goto LABEL_6;
  }

  if (H16ISP::H16ISPDevice::EnableCNRForStillCapture(*(*v805 + 24), v30, v8))
  {
LABEL_218:
    v12 = 4294954611;
    goto LABEL_6;
  }

  v31 = v809;
  v761 = v30;
  if (!v6 || v793 != 1 || v792 || v809 != 1)
  {
    goto LABEL_96;
  }

  *v803 = v5 + 4096;
  v32 = CFDictionaryGetValue(v6, *MEMORY[0x277CF61F8]);
  v33 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60E8]);
  v34 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60C0]);
  if (v34)
  {
    v35 = CFEqual(v34, *MEMORY[0x277CBED28]) != 0;
  }

  else
  {
    v35 = 0;
  }

  if (*(v5 + 1304) & 1) != 0 || (*(v5 + 1504))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v5 + 2504) ^ 1;
  }

  if (v32)
  {
    v46 = v33 == 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v46;
  if (((v47 | v35) & 1) != 0 || (v45) && (*(v5 + 2504) & 1) == 0)
  {
    v31 = v809;
    v28 = v5 + 4096;
LABEL_96:
    if (v31)
    {
      *v803 = v28;
      v762 = v11;
      v51 = 0;
      while (1)
      {
        v52 = v814[v51];
        v53 = v16;
        if ((*(v52 + 4369) & 1) == 0)
        {
          if (*(v52 + 4360))
          {
            v53 = key;
          }

          else
          {
            v53 = v16;
          }
        }

        if (v53)
        {
          if (CFArrayGetCount(v53) == 2)
          {
            v54 = CFArrayGetValueAtIndex(v53, 0);
            v53 = CFArrayGetValueAtIndex(v53, 1);
            if (v54)
            {
              v55 = ApplyNoiseReductionConfiguration(*v805, v814[v51], 2, 2, 2, v54);
              if (v55)
              {
LABEL_136:
                v12 = v55;
                goto LABEL_908;
              }
            }
          }

          else if (CFArrayGetCount(v53) == 1)
          {
            v53 = CFArrayGetValueAtIndex(v53, 0);
          }

          else
          {
            v53 = 0;
          }
        }

        v55 = ApplyNoiseReductionConfiguration(*v805, v814[v51], 1, 1, 1, v53);
        if (v55)
        {
          goto LABEL_136;
        }

        ++v51;
        v50 = v809;
        if (v51 >= v809)
        {
          goto LABEL_112;
        }
      }
    }

    goto LABEL_121;
  }

  __src[2] = *(v814[0] + 156);
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v6);
  if (v33 && CFArrayGetCount(v33) >= 1)
  {
    v49 = CFArrayGetValueAtIndex(v33, 0);
    CFDictionarySetValue(MutableCopy, *MEMORY[0x277CF61C0], v49);
  }

  GetPerFrameTuningParam(MutableCopy, &__src[4], v5);
  CFRelease(MutableCopy);
  LOBYTE(__src[3]) = 1;
  __src[9] = 1;
  __src[484] = 0;
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
  {
    goto LABEL_93;
  }

  v789 = 0;
  v50 = v809;
LABEL_112:
  if (v50)
  {
    v762 = v11;
    v56 = 0;
    do
    {
      bzero(&buf, 0x14uLL);
      v57 = *(v814[v56] + 156);
      WORD2(buf.value) = 320;
      buf.timescale = v57;
      buf.flags = v779;
      LOBYTE(buf.epoch) = v777 != 0;
      BYTE1(buf.epoch) = v776 != 0;
      if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), &buf, 0x14u, 0, 0xFFFFFFFF))
      {
        goto LABEL_907;
      }

      HIDWORD(v779) |= dword_281003150 != 0;
      if (H16ISP::H16ISPDevice::SetMetadataRequired(*(*v805 + 24), *(v814[v56] + 156), 19, 1, BYTE4(v779) & 1) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v805 + 24), *(v814[v56] + 156), 37, 1, SWORD2(v778)) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v805 + 24), *(v814[v56] + 156), 15, 1, v778) || H16ISP::H16ISPDevice::SetMetadataRequired(*(*v805 + 24), *(v814[v56] + 156), 63, 1, SWORD2(v777)))
      {
        goto LABEL_907;
      }
    }

    while (++v56 < v809);
  }

  v28 = *v803;
LABEL_121:
  if (v800)
  {
    v58 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v58 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v58;
    }

    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "StillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v58, OS_LOG_TYPE_DEFAULT, "%s - Initiating AE bracketed capture\n", &buf, 0xCu);
    }

    v59 = CFArrayGetCount(cf);
    if (v59 > 21)
    {
      goto LABEL_33;
    }

    v60 = v59;
    if (!v59)
    {
      goto LABEL_33;
    }

    v762 = v11;
    if (v59 >= 1)
    {
      v61 = 0;
      v62 = __b;
      do
      {
        v63 = CFArrayGetValueAtIndex(cf, v61);
        CFNumberGetValue(v63, kCFNumberDoubleType, v62);
        ++v61;
        ++v62;
      }

      while (v60 != v61);
    }

    v64 = valuePtr;
    if (*(v5 + 4360))
    {
      v65 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5508]);
      v66 = v65;
      if (v65 && (v67 = CFGetTypeID(v65), v67 == CFArrayGetTypeID()))
      {
        if (CFArrayGetCount(v66) != v60)
        {
          goto LABEL_849;
        }

        v68 = 1;
      }

      else
      {
        v68 = 0;
      }

      v64 = valuePtr;
      if (v60 >= 1)
      {
        v196 = 0;
        v197 = v858;
        do
        {
          if (v68)
          {
            v198 = CFArrayGetValueAtIndex(v66, v196);
            CFNumberGetValue(v198, kCFNumberDoubleType, v197);
            v64 = valuePtr;
          }

          else
          {
            *v197 = __b[v196];
          }

          ++v196;
          ++v197;
        }

        while (v60 != v196);
      }
    }

    v199 = v64 + v60 + 1;
    if (v777 == -1)
    {
      v200 = v64 + v60;
    }

    else
    {
      v200 = 0;
    }

    if (v776 == -1)
    {
      v201 = v64 + v60;
    }

    else
    {
      v201 = 0;
    }

    if (v809)
    {
      v202 = 0;
      if (v779)
      {
        v203 = v64 + v60 + 1;
      }

      else
      {
        v203 = 0;
      }

      do
      {
        v204 = v814[v202];
        *(v204 + 576) = v795;
        if (AllocateAndSendOneShotBuffers(v204, v199, v203, v200, v201, 0))
        {
          goto LABEL_724;
        }
      }

      while (++v202 < v809);
    }

    v205 = v790;
    if (v790 == 0xFFFF)
    {
      if (*(v5 + 4360))
      {
        v205 = 6;
      }

      else
      {
        v205 = 1;
      }
    }

    v11 = v762;
    if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, v205, v782))
    {
      goto LABEL_33;
    }

    LOWORD(v206) = v788;
    if (!v788)
    {
      v279 = 0;
      LODWORD(v280) = 0;
      goto LABEL_663;
    }

    v207 = CFGetTypeID(v788);
    if (v207 != CFDictionaryGetTypeID())
    {
      v279 = 0;
      LODWORD(v280) = 0;
      LOWORD(v206) = 0;
      goto LABEL_663;
    }

    v208 = CFDictionaryGetValue(v788, *MEMORY[0x277CF57E0]);
    if (!v208)
    {
      goto LABEL_522;
    }

    v209 = v208;
    v210 = CFGetTypeID(v208);
    if (v210 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v209))
      {
        v211 = 0;
        v212 = &v847[0].value + 3;
        while (1)
        {
          v213 = CFArrayGetValueAtIndex(v209, v211);
          if (!v213)
          {
            break;
          }

          v214 = v213;
          v215 = CFGetTypeID(v213);
          if (v215 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v857[0] = 0;
          v856[0] = 0;
          v855[0] = 0;
          v807[1] = 0;
          if (H16ISPGetRectParamsFromDict(v214, &buf, v857, v856, v855, &v807[1], 1u))
          {
            break;
          }

          *(v212 - 3) = v211;
          *(v212 - 1) = buf.value;
          *v212 = v857[0];
          v212[1] = v856[0];
          v212[2] = v855[0];
          v206 = v211 + 1;
          v216 = CFArrayGetCount(v209);
          if (v211 <= 0xE)
          {
            v212 += 6;
            ++v211;
            if (v206 < v216)
            {
              continue;
            }
          }

          goto LABEL_654;
        }

        LOWORD(v206) = v211;
        goto LABEL_654;
      }

LABEL_522:
      LOWORD(v206) = 0;
LABEL_654:
      LODWORD(buf.value) = 0;
      v373 = CFDictionaryGetValue(v788, *MEMORY[0x277CF5788]);
      if (v373 && (v374 = v373, v375 = CFGetTypeID(v373), v375 == CFNumberGetTypeID()))
      {
        CFNumberGetValue(v374, kCFNumberIntType, &buf);
        v279 = buf.value;
      }

      else
      {
        v279 = 0;
      }

      v857[0] = 0;
      v376 = CFDictionaryGetValue(v788, *MEMORY[0x277CF5B78]);
      v280 = v376;
      if (v376)
      {
        v377 = CFGetTypeID(v376);
        if (v377 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v280, kCFNumberIntType, v857);
          LODWORD(v280) = v857[0];
        }

        else
        {
          LODWORD(v280) = 0;
        }
      }

      v11 = v762;
LABEL_663:
      v378 = v809;
      if (v809)
      {
        v379 = v814;
        v380 = v809;
        do
        {
          v381 = *v379++;
          *(v381 + 100) += v199;
          --v380;
        }

        while (v380);
      }

      if (*(v5 + 4360))
      {
        v382 = v378 > 1;
        bzero(&buf, 0x164uLL);
        if (cf2)
        {
          v383 = 591;
        }

        else
        {
          v383 = 583;
        }

        WORD2(buf.value) = v383;
        buf.timescale = *(v5 + 156) | (v382 << 31) | buf.timescale & 0x7FFF0000;
        LOWORD(buf.flags) = v60;
        v831 = v206;
        *&v837[32] = *&v847[4].epoch;
        *&v837[16] = *&v847[4].value;
        *&v837[96] = *&v847[7].timescale;
        *&v837[80] = *&v847[6].epoch;
        *&v837[64] = *&v847[6].value;
        *&v837[48] = *&v847[5].timescale;
        v836 = *&v847[2].epoch;
        *v837 = *&v847[3].timescale;
        v832 = *&v847[0].value;
        v833 = *&v847[0].epoch;
        v834 = *&v847[1].timescale;
        v835 = *&v847[2].value;
        LOWORD(v838) = v279;
        *&v837[112] = v280;
        WORD1(v838) = 256;
        if (v60 >= 1)
        {
          p_buf = &buf;
          v385 = v858;
          v386 = __b;
          do
          {
            HIWORD(p_buf->flags) = vcvtd_n_s64_f64(*v386, 8uLL);
            v387 = v774;
            if ((v774 & 0x100000000) == 0)
            {
              v387 = vcvtd_n_s64_f64(*v385, 8uLL);
            }

            LOWORD(p_buf[13].value) = v387;
            p_buf = (p_buf + 2);
            ++v385;
            ++v386;
            --v60;
          }

          while (v60);
        }

        if (valuePtr)
        {
          BYTE4(v838) = 1;
          *&v839[6] = valuePtr;
          *&v839[12] = v773;
          *&v839[4] = v767 & 1;
          if (v773)
          {
            v388 = 1;
          }

          else
          {
            v388 = 2;
          }

          *&v839[8] = v388;
        }

        v389 = LaunchStillImageCapture(*v805, v808, &buf, 0x164u);
      }

      else
      {
        bzero(&buf, 0x138uLL);
        if (cf2)
        {
          v390 = 588;
        }

        else
        {
          v390 = 546;
        }

        WORD2(buf.value) = v390;
        buf.timescale = buf.timescale & 0x7FFF0000 | *(v5 + 156);
        LOWORD(buf.flags) = v60;
        v831 = v206;
        *&v837[32] = *&v847[4].epoch;
        *&v837[16] = *&v847[4].value;
        *&v837[96] = *&v847[7].timescale;
        *&v837[80] = *&v847[6].epoch;
        *&v837[64] = *&v847[6].value;
        *&v837[48] = *&v847[5].timescale;
        v836 = *&v847[2].epoch;
        *v837 = *&v847[3].timescale;
        v832 = *&v847[0].value;
        v833 = *&v847[0].epoch;
        v834 = *&v847[1].timescale;
        v835 = *&v847[2].value;
        LOWORD(v838) = v279;
        *&v837[112] = v280;
        WORD1(v838) = 256;
        if (v60 >= 1)
        {
          v391 = &buf.flags + 1;
          v392 = __b;
          do
          {
            v393 = *v392++;
            *v391++ = vcvtd_n_s64_f64(v393, 8uLL);
            --v60;
          }

          while (v60);
        }

        if (valuePtr)
        {
          BYTE4(v838) = 1;
          *&v839[6] = valuePtr;
          *&v839[12] = v773;
          *&v839[4] = v767 & 1;
          if (v773)
          {
            v394 = 1;
          }

          else
          {
            v394 = 2;
          }

          *&v839[8] = v394;
        }

        v389 = LaunchStillImageCapture(*v805, v808, &buf, 0x138u);
        v11 = v762;
      }

      v395 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v395 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v395;
      }

      if (os_log_type_enabled(v395, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v389;
        _os_log_impl(&dword_2247DB000, v395, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating delta-EV bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
      }

      if (v389)
      {
        v396 = v809;
        if (v809)
        {
          v397 = v814;
          do
          {
            v398 = *v397++;
            *(v398 + 100) = 0;
            --v396;
          }

          while (v396);
        }

        goto LABEL_849;
      }

LABEL_93:
      v12 = 0;
      goto LABEL_6;
    }

LABEL_849:
    v11 = v762;
    goto LABEL_33;
  }

  if (!v798)
  {
    if (v797)
    {
      v86 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v86 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v86;
      }

      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315138;
        *(&buf.value + 4) = "StillImageCaptureNow";
        _os_log_impl(&dword_2247DB000, v86, OS_LOG_TYPE_DEFAULT, "%s - Initiating OIS bracketed capture\n", &buf, 0xCu);
      }

      v87 = *MEMORY[0x277CF53F0];
      v88 = CFDictionaryGetValue(v799, *MEMORY[0x277CF53F0]);
      if (!v88)
      {
        goto LABEL_33;
      }

      v89 = v88;
      v90 = CFArrayGetCount(v88);
      if (v90 > 21)
      {
        goto LABEL_33;
      }

      v91 = v90;
      if (!v90)
      {
        goto LABEL_33;
      }

      v762 = v11;
      v817 = 0;
      memset(__b, 0, sizeof(__b));
      memset(v858, 0, 84);
      if (v90 >= 1)
      {
        v92 = 0;
        v93 = __b;
        do
        {
          v94 = CFArrayGetValueAtIndex(v89, v92);
          CFNumberGetValue(v94, kCFNumberSInt32Type, v93);
          ++v92;
          v93 = (v93 + 4);
        }

        while (v91 != v92);
      }

      v95 = valuePtr;
      if (!*(v5 + 4360))
      {
        goto LABEL_531;
      }

      v96 = CFDictionaryGetValue(v6, *MEMORY[0x277CF56C8]);
      v97 = v96;
      if (v96)
      {
        v98 = CFGetTypeID(v96);
        if (v98 == CFDictionaryGetTypeID())
        {
          v99 = CFDictionaryGetValue(v97, v87);
          v97 = v99;
          if (v99)
          {
            v100 = CFGetTypeID(v99);
            if (v100 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(v97) != v91)
              {
                goto LABEL_849;
              }

              v101 = 1;
              goto LABEL_525;
            }
          }
        }

        else
        {
          v97 = 0;
        }
      }

      v101 = 0;
LABEL_525:
      v95 = valuePtr;
      if (v91 >= 1)
      {
        v290 = 0;
        v291 = v858;
        do
        {
          if (v101)
          {
            v292 = CFArrayGetValueAtIndex(v97, v290);
            CFNumberGetValue(v292, kCFNumberSInt32Type, v291);
            v95 = valuePtr;
          }

          else
          {
            *v291 = *(__b + v290);
          }

          ++v290;
          ++v291;
        }

        while (v91 != v290);
      }

LABEL_531:
      v293 = v95 + v91 + 1;
      if (v777 == -1)
      {
        v294 = v95 + v91;
      }

      else
      {
        v294 = 0;
      }

      if (v776 == -1)
      {
        v295 = v95 + v91;
      }

      else
      {
        v295 = 0;
      }

      if (v809)
      {
        v296 = 0;
        if (v779)
        {
          v297 = v95 + v91 + 1;
        }

        else
        {
          v297 = 0;
        }

        do
        {
          v298 = v814[v296];
          *(v298 + 576) = v795;
          if (AllocateAndSendOneShotBuffers(v298, v293, v297, v294, v295, 0))
          {
            goto LABEL_724;
          }
        }

        while (++v296 < v809);
      }

      if (v763 || v765)
      {
        v299 = v782;
      }

      else
      {
        v299 = 1;
      }

      if (*(v5 + 4360))
      {
        v300 = 8;
      }

      else
      {
        v300 = 3;
      }

      if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, v300, v299))
      {
        goto LABEL_849;
      }

      if (!v788)
      {
        goto LABEL_562;
      }

      v301 = CFGetTypeID(v788);
      if (v301 != CFDictionaryGetTypeID())
      {
        goto LABEL_562;
      }

      v302 = CFDictionaryGetValue(v788, *MEMORY[0x277CF57E0]);
      if (!v302)
      {
        goto LABEL_562;
      }

      v303 = v302;
      v304 = CFGetTypeID(v302);
      if (v304 != CFArrayGetTypeID())
      {
        goto LABEL_849;
      }

      if (CFArrayGetCount(v303))
      {
        v305 = 0;
        v306 = &v847[0].value + 3;
        while (1)
        {
          v307 = CFArrayGetValueAtIndex(v303, v305);
          if (!v307)
          {
            break;
          }

          v308 = v307;
          v309 = CFGetTypeID(v307);
          if (v309 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v857[0] = 0;
          v856[0] = 0;
          v855[0] = 0;
          v807[1] = 0;
          if (H16ISPGetRectParamsFromDict(v308, &buf, v857, v856, v855, &v807[1], 1u))
          {
            break;
          }

          *(v306 - 3) = v305;
          *(v306 - 1) = buf.value;
          *v306 = v857[0];
          v306[1] = v856[0];
          v306[2] = v855[0];
          v310 = v305 + 1;
          v311 = CFArrayGetCount(v303);
          if (v305 <= 0xE)
          {
            v306 += 6;
            ++v305;
            if (v310 < v311)
            {
              continue;
            }
          }

          goto LABEL_563;
        }

        LOWORD(v310) = v305;
      }

      else
      {
LABEL_562:
        LOWORD(v310) = 0;
      }

LABEL_563:
      v312 = v809;
      if (v809)
      {
        v313 = v814;
        v314 = v809;
        do
        {
          v315 = *v313++;
          *(v315 + 100) += v293;
          --v314;
        }

        while (v314);
      }

      if (*(v5 + 4360))
      {
        v316 = v312 > 1;
        bzero(&buf, 0x164uLL);
        if (cf2)
        {
          v317 = 592;
        }

        else
        {
          v317 = 584;
        }

        WORD2(buf.value) = v317;
        buf.timescale = *(v5 + 156) | (v316 << 31) | buf.timescale & 0x7FFF0000;
        LOWORD(buf.flags) = v91;
        if (v91 >= 1)
        {
          v318 = &buf;
          v319 = v858;
          v320 = __b;
          do
          {
            v321 = *v320++;
            HIWORD(v318->flags) = v321;
            LOWORD(v322) = v774;
            if ((v774 & 0x100000000) == 0)
            {
              v322 = *v319;
            }

            LOWORD(v318[13].value) = v322;
            v318 = (v318 + 2);
            ++v319;
            --v91;
          }

          while (v91);
        }

        v831 = v310;
        *&v837[48] = *&v847[5].timescale;
        *&v837[64] = *&v847[6].value;
        *&v837[80] = *&v847[6].epoch;
        *&v837[96] = *&v847[7].timescale;
        v836 = *&v847[2].epoch;
        *v837 = *&v847[3].timescale;
        *&v837[16] = *&v847[4].value;
        *&v837[32] = *&v847[4].epoch;
        v832 = *&v847[0].value;
        v833 = *&v847[0].epoch;
        v834 = *&v847[1].timescale;
        v835 = *&v847[2].value;
        LOWORD(v838) = 0;
        *&v837[112] = 0;
        if (valuePtr)
        {
          BYTE4(v838) = 1;
          *&v839[6] = valuePtr;
          *&v839[12] = v773;
          *&v839[4] = v767 & 1;
          if (v773)
          {
            v323 = 1;
          }

          else
          {
            v323 = 2;
          }

          *&v839[8] = v323;
        }

        v324 = *v805;
        v325 = 356;
      }

      else
      {
        bzero(&buf, 0x138uLL);
        if (cf2)
        {
          v363 = 589;
        }

        else
        {
          v363 = 573;
        }

        WORD2(buf.value) = v363;
        buf.timescale = buf.timescale & 0x7FFF0000 | *(v5 + 156);
        LOWORD(buf.flags) = v91;
        if (v91 >= 1)
        {
          v364 = &buf.flags + 1;
          v365 = __b;
          do
          {
            v366 = *v365++;
            *v364++ = v366;
            --v91;
          }

          while (v91);
        }

        v831 = v310;
        *&v837[48] = *&v847[5].timescale;
        *&v837[64] = *&v847[6].value;
        *&v837[80] = *&v847[6].epoch;
        *&v837[96] = *&v847[7].timescale;
        v836 = *&v847[2].epoch;
        *v837 = *&v847[3].timescale;
        *&v837[16] = *&v847[4].value;
        *&v837[32] = *&v847[4].epoch;
        v832 = *&v847[0].value;
        v833 = *&v847[0].epoch;
        v834 = *&v847[1].timescale;
        v835 = *&v847[2].value;
        LOWORD(v838) = 0;
        *&v837[112] = 0;
        if (valuePtr)
        {
          BYTE4(v838) = 1;
          *&v839[6] = valuePtr;
          *&v839[12] = v773;
          *&v839[4] = v767 & 1;
          if (v773)
          {
            v367 = 1;
          }

          else
          {
            v367 = 2;
          }

          *&v839[8] = v367;
        }

        v324 = *v805;
        v325 = 312;
      }

      v368 = LaunchStillImageCapture(v324, v808, &buf, v325);
      v369 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v369 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v369;
      }

      if (os_log_type_enabled(v369, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v368;
        _os_log_impl(&dword_2247DB000, v369, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating OIS bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
      }

      if (v368)
      {
        v370 = v809;
        if (v809)
        {
          v371 = v814;
          do
          {
            v372 = *v371++;
            *(v372 + 100) = 0;
            --v370;
          }

          while (v370);
        }

        goto LABEL_849;
      }

LABEL_1232:
      v12 = 0;
      goto LABEL_908;
    }

    if (*&v787[8])
    {
      v175 = v11;
      LOWORD(v858[0]) = 0;
      LOWORD(v857[0]) = 0;
      v847[0].value = 0;
      v176 = CFDictionaryGetValue(v796, @"NumDoublets");
      v177 = CFDictionaryGetValue(v796, @"Randomize");
      v178 = CFDictionaryGetValue(v796, @"PowerProfile");
      v179 = CFDictionaryGetValue(v796, @"Nonce");
      if (v176)
      {
        if (v177)
        {
          if (v178)
          {
            v180 = v179;
            if (v179)
            {
              v181 = CFGetTypeID(v176);
              if (v181 == CFNumberGetTypeID())
              {
                v182 = CFGetTypeID(v177);
                if (v182 == CFBooleanGetTypeID())
                {
                  v183 = CFGetTypeID(v178);
                  if (v183 == CFNumberGetTypeID())
                  {
                    v184 = CFGetTypeID(v180);
                    if (v184 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v176, kCFNumberSInt16Type, v858);
                      v185 = CFEqual(v177, *MEMORY[0x277CBED28]) != 0;
                      CFNumberGetValue(v178, kCFNumberSInt16Type, v857);
                      CFNumberGetValue(v180, kCFNumberSInt64Type, v847);
                      v186 = v858[0];
                      if (LOWORD(v858[0]))
                      {
                        v187 = v809;
                        if (v809)
                        {
                          v188 = 2 * LOWORD(v858[0]);
                          v189 = v814;
                          do
                          {
                            v190 = *v189++;
                            *(v190 + 100) = v188;
                            --v187;
                          }

                          while (v187);
                        }

                        bzero(&buf, 0x64uLL);
                        WORD2(buf.value) = 12291;
                        buf.timescale = *(v5 + 156);
                        LOWORD(buf.flags) = v186;
                        HIWORD(buf.flags) = v185;
                        LOWORD(buf.epoch) = v857[0];
                        v191 = LaunchStillImageCapture(*v805, v808, &buf, 0x64u);
                        v192 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
                        {
                          v192 = os_log_create("com.apple.isp", "plugin");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v192;
                        }

                        if (os_log_type_enabled(v192, OS_LOG_TYPE_INFO))
                        {
                          LODWORD(__b[0]) = 67109120;
                          HIDWORD(__b[0]) = v191;
                          _os_log_impl(&dword_2247DB000, v192, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating Bio bracketed capture operation. result=0x%08X\n\n", __b, 8u);
                        }

                        if (!v191)
                        {
                          v12 = 0;
                          v11 = v175;
                          goto LABEL_6;
                        }

                        v193 = v809;
                        if (v809)
                        {
                          v194 = v814;
                          do
                          {
                            v195 = *v194++;
                            *(v195 + 100) = 0;
                            --v193;
                          }

                          while (v193);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v11 = v175;
      goto LABEL_33;
    }

    if (*&v787[4])
    {
      LOWORD(__b[0]) = 0;
      v217 = CFDictionaryGetValue(v794, @"UseDoublets");
      v218 = CFDictionaryGetValue(v794, @"Pattern");
      if (!v217)
      {
        goto LABEL_33;
      }

      v219 = v218;
      if (!v218)
      {
        goto LABEL_33;
      }

      v220 = CFGetTypeID(v217);
      if (v220 != CFBooleanGetTypeID())
      {
        goto LABEL_33;
      }

      v221 = CFGetTypeID(v219);
      if (v221 != CFNumberGetTypeID())
      {
        goto LABEL_33;
      }

      v222 = CFEqual(v217, *MEMORY[0x277CBED28]);
      CFNumberGetValue(v219, kCFNumberSInt16Type, __b);
      v223 = v809;
      if (v809)
      {
        if (v222)
        {
          v224 = 2;
        }

        else
        {
          v224 = 1;
        }

        v225 = v814;
        do
        {
          v226 = *v225++;
          *(v226 + 100) = v224;
          --v223;
        }

        while (v223);
      }

      bzero(&buf, 0x14uLL);
      WORD2(buf.value) = 12292;
      buf.timescale = *(v5 + 156);
      LOWORD(buf.flags) = v222 != 0;
      HIWORD(buf.flags) = __b[0];
      v227 = LaunchStillImageCapture(*v805, v808, &buf, 0x14u);
      v228 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v228 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v228;
      }

      if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
      {
        LODWORD(v847[0].value) = 67109120;
        HIDWORD(v847[0].value) = v227;
        _os_log_impl(&dword_2247DB000, v228, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating Probe-pattern bracketed capture operation. result=0x%08X\n\n", v847, 8u);
      }

      if (v227)
      {
        v229 = v809;
        if (v809)
        {
          v230 = v814;
          do
          {
            v231 = *v230++;
            *(v231 + 100) = 0;
            --v229;
          }

          while (v229);
        }

        goto LABEL_33;
      }

      goto LABEL_93;
    }

    v762 = v11;
    if (*v787)
    {
      v259 = v791;
      v260 = CFArrayGetCount(v791);
      bzero(v847, 0x54uLL);
      bzero(__b, 0x54uLL);
      bzero(v858, 0x54uLL);
      bzero(v857, 0x54uLL);
      bzero(v856, 0x54uLL);
      if (v260)
      {
        v261 = 0;
        v798 = *MEMORY[0x277CF5608];
        v799 = *MEMORY[0x277CF5638];
        v796 = *MEMORY[0x277CF45E8];
        v797 = *MEMORY[0x277CF45E0];
        v793 = v260;
        valuePtr = __b;
        v262 = v858;
        v263 = v857;
        v264 = v856;
        v794 = *MEMORY[0x277CF45F0];
        LODWORD(v800) = v260;
        while (1)
        {
          theArray = v264;
          cf = v263;
          v265 = v262;
          LODWORD(buf.value) = 0;
          v855[0] = 0;
          v807[1] = 0;
          *v803 = v261;
          v266 = CFArrayGetValueAtIndex(v259, v261);
          if (!v266)
          {
            break;
          }

          v267 = v266;
          v268 = CFGetTypeID(v266);
          if (v268 != CFDictionaryGetTypeID())
          {
            break;
          }

          v269 = CFDictionaryGetValue(v267, v799);
          v270 = CFDictionaryGetValue(v267, v798);
          v271 = CFDictionaryGetValue(v267, v797);
          v272 = CFDictionaryGetValue(v267, v796);
          v273 = CFDictionaryGetValue(v267, v794);
          v274 = CFDictionaryGetValue(v267, @"AdditionalBlankingTime");
          v275 = CFDictionaryGetValue(v267, @"Pattern");
          if (!v271)
          {
            break;
          }

          v276 = v275;
          CFNumberGetValue(v271, kCFNumberSInt32Type, &buf);
          if (v269)
          {
            CFNumberGetValue(v269, kCFNumberSInt32Type, valuePtr);
          }

          if (v270)
          {
            CFNumberGetValue(v270, kCFNumberSInt32Type, v265);
          }

          if (v272)
          {
            CFNumberGetValue(v272, kCFNumberSInt32Type, v855);
          }

          v260 = v800;
          if (v273)
          {
            CFNumberGetValue(v273, kCFNumberSInt32Type, &v807[1]);
          }

          if (v274)
          {
            CFNumberGetValue(v274, kCFNumberSInt32Type, cf);
          }

          if (v276)
          {
            CFNumberGetValue(v276, kCFNumberSInt32Type, theArray);
          }

          v259 = v791;
          if (LODWORD(buf.value) == 2)
          {
            if (v807[1] == 1)
            {
              if (v855[0] == 1)
              {
                v278 = 4;
              }

              else
              {
                v278 = 2;
              }
            }

            else if (v855[0] == 1)
            {
              v278 = 3;
            }

            else
            {
              v278 = 1;
            }

            v277 = *v803;
            *(&v847[0].value + *v803) = v278;
          }

          else
          {
            v277 = *v803;
            if (LODWORD(buf.value) == 1)
            {
              *(&v847[0].value + *v803) = 4096;
            }

            else
            {
              *(&v847[0].value + *v803) = 0;
            }
          }

          v261 = v277 + 1;
          valuePtr = valuePtr + 4;
          v262 = v265 + 1;
          v263 = (cf + 4);
          v264 = (theArray + 4);
          if (v793 == v261)
          {
            goto LABEL_582;
          }
        }

        v260 = v800;
      }

LABEL_582:
      if (v777 == -1)
      {
        v326 = v260;
      }

      else
      {
        v326 = 0;
      }

      if (v776 == -1)
      {
        v327 = v260;
      }

      else
      {
        v327 = 0;
      }

      if (v809)
      {
        v328 = 0;
        if (v779)
        {
          v329 = v260;
        }

        else
        {
          v329 = 0;
        }

        while (1)
        {
          v330 = v814[v328];
          *(v330 + 576) = v795;
          if (AllocateAndSendOneShotBuffers(v330, v260, v329, v326, v327, 0))
          {
            goto LABEL_724;
          }

          ++v328;
          v331 = v809;
          if (v328 >= v809)
          {
            goto LABEL_605;
          }
        }
      }

      v331 = 0;
LABEL_605:
      bzero(&buf, 0x138uLL);
      WORD2(buf.value) = 12290;
      buf.timescale = buf.timescale & 0x7FFF0000 | *(v5 + 156) | ((*(v5 + 4360) != 0) << 31);
      LOWORD(buf.flags) = v260;
      if (v260)
      {
        v337 = &v837[2];
        v338 = &v837[44];
        v339 = v260;
        v340 = v847;
        v341 = __b;
        v342 = v858;
        v343 = v856;
        v344 = v857;
        do
        {
          v345 = v340->value;
          v340 = (v340 + 4);
          *v337 = v345;
          v346 = *v341++;
          *(v338 - 42) = v346;
          v347 = *v342++;
          *(v337 - 21) = v347;
          v348 = *v344++;
          *v338++ = v348;
          v349 = *v343++;
          v337[63] = v349;
          ++v337;
          --v339;
        }

        while (v339);
      }

      if (v331)
      {
        v350 = v814;
        v351 = v331;
        do
        {
          v352 = *v350++;
          *(v352 + 100) += v260;
          --v351;
        }

        while (v351);
      }

      v353 = LaunchStillImageCapture(*v805, v808, &buf, 0x138u);
      v354 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v354 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v354;
      }

      if (os_log_type_enabled(v354, OS_LOG_TYPE_INFO))
      {
        v855[0] = 67109120;
        v855[1] = v353;
        _os_log_impl(&dword_2247DB000, v354, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating projector bracketed capture operation. result=0x%08X\n\n", v855, 8u);
      }

      if (v353)
      {
        v355 = v809;
        if (v809)
        {
          v356 = v814;
          do
          {
            v357 = *v356++;
            *(v357 + 100) = 0;
            --v355;
          }

          while (v355);
        }

        goto LABEL_849;
      }

      goto LABEL_1232;
    }

    *v803 = v28;
    if (v792)
    {
      v283 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (*(v5 + 4360))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v283 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v283;
        }

        if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315138;
          *(&buf.value + 4) = "StillImageCaptureNow";
          _os_log_impl(&dword_2247DB000, v283, OS_LOG_TYPE_DEFAULT, "%s - Initiating dual unified bracketed capture\n", &buf, 0xCu);
        }

        bzero(__b, 0x264uLL);
        v858[0] = 500;
        WORD2(__b[0]) = 604;
        v284 = *(v5 + 156);
        LODWORD(__b[1]) = __b[1] & 0x7FFF0000 | v284 | ((v809 > 1) << 31);
        __src[2] = v284;
        __src[485] = 16;
        WORD2(v847[0].value) = __src[1];
        v285 = HasFlashBracket(v792);
        LODWORD(v796) = v285;
        if (theDict && !v285)
        {
          GetPerFrameTuningParam(theDict, &__src[16 * LOBYTE(__src[3]) + 4], v5);
          v286 = __src[3];
          __src[16 * LOBYTE(__src[3]) + 9] = 2;
          LOBYTE(__src[3]) = v286 + 1;
          v287 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6160]);
          if (v287 && CFEqual(v287, *MEMORY[0x277CBED28]))
          {
            __src[484] = 1;
          }

          v285 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
          if (v285)
          {
            v285 = CFBooleanGetValue(v285);
            LOBYTE(__src[486]) = v285 != 0;
          }
        }

        v288 = v809;
        if (v809)
        {
          v289 = 0;
          while (*(v814[v289] + 4369) == 1)
          {
            if (v809 == ++v289)
            {
              goto LABEL_521;
            }
          }

          v288 = v289;
        }

        else
        {
LABEL_521:
          v289 = 0;
        }

        if (v796)
        {
          __src[484] = 1;
          ExternalStrobeAttached = H16ISP::getExternalStrobeAttached(v285);
          ConfigureExternalStrobeParameters(*v805, v288, ExternalStrobeAttached);
        }

        v417 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6088]);
        if (v417)
        {
          CFNumberGetValue(v417, kCFNumberSInt32Type, v858);
          v812 = 4;
        }

        LODWORD(__b[2]) = v858[0];
        v418 = CFArrayGetCount(v792);
        memcpy(v847, __src, 0x79CuLL);
        v797 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6138]);
        if (v797)
        {
          if (CFArrayGetCount(v797) != v418)
          {
            goto LABEL_888;
          }

          v419 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6100]);
          if (!v419 || v796)
          {
            if (v796)
            {
              LODWORD(v847[80].epoch) = 1;
            }
          }

          else
          {
            v420 = v419;
            GetPerFrameTuningParam(v419, &v847[-2] + 64 * LOBYTE(__src[3]), v814[v289]);
            *(&v847[-1] + 16 * LOBYTE(__src[3]) - 1) = 2;
            v421 = CFDictionaryGetValue(v420, *MEMORY[0x277CF6160]);
            if (v421 && CFEqual(v421, *MEMORY[0x277CBED28]))
            {
              LODWORD(v847[80].epoch) = 1;
            }

            v422 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
            if (v422)
            {
              LOBYTE(v847[81].value) = CFBooleanGetValue(v422) != 0;
            }
          }
        }

        if (!v418)
        {
          LOWORD(v479) = 0;
          v493 = __src[3];
LABEL_890:
          LOBYTE(v847[0].flags) = v493;
          WORD2(__b[1]) = v479;
          v494 = CFArrayGetCount(v792);
          if (v788 && GetAFWindowParam(v788, &__b[2] + 4, &__b[1] + 3))
          {
            goto LABEL_1232;
          }

          if (v784)
          {
            v494 += CFArrayGetCount(v784);
            v819 = 298;
            v820 = v820 & 0x7FFF0000 | LOWORD(__b[1]) | ((v809 > 1) << 31);
            v822 = valuePtr;
            v821 = v767 & 1;
            v823 = 2;
            v824 = 1;
            v825 = v861;
            v826 = v861;
          }

          *(v5 + 576) = theDict != 0;
          if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, 16, v782))
          {
            goto LABEL_1232;
          }

          v495 = LOBYTE(__src[3]);
          if (v777 == -1)
          {
            if (LOBYTE(__src[3]))
            {
              v594 = (LOBYTE(__src[3]) + 15) & 0x1F0;
              v595 = xmmword_2249BBC60;
              v596 = xmmword_2249BBC70;
              v597 = xmmword_2249BBC80;
              v598 = xmmword_2249BBC90;
              v599 = xmmword_2249BBCA0;
              v600 = xmmword_2249BBCB0;
              v601 = xmmword_2249BBCC0;
              v602 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
              v603 = xmmword_2249B9820;
              v604 = __src;
              v605 = vdupq_n_s64(0x10uLL);
              do
              {
                v606 = vmovn_s64(vcgeq_u64(v602, v603));
                if (vuzp1_s8(vuzp1_s16(v606, *v595.i8), *v595.i8).u8[0])
                {
                  v604[58] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v606, *&v595), *&v595).i8[1])
                {
                  v604[122] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v595, vmovn_s64(vcgeq_u64(v602, *&v601))), *&v595).i8[2])
                {
                  v604[186] = 1;
                  v604[250] = 1;
                }

                v607 = vmovn_s64(vcgeq_u64(v602, v600));
                if (vuzp1_s8(*&v595, vuzp1_s16(v607, *&v595)).i32[1])
                {
                  v604[314] = 1;
                }

                if (vuzp1_s8(*&v595, vuzp1_s16(v607, *&v595)).i8[5])
                {
                  v604[378] = 1;
                }

                if (vuzp1_s8(*&v595, vuzp1_s16(*&v595, vmovn_s64(vcgeq_u64(v602, *&v599)))).i8[6])
                {
                  v604[442] = 1;
                  v604[506] = 1;
                }

                v608 = vmovn_s64(vcgeq_u64(v602, v598));
                if (vuzp1_s8(vuzp1_s16(v608, *v595.i8), *v595.i8).u8[0])
                {
                  v604[570] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v608, *&v595), *&v595).i8[1])
                {
                  v604[634] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v595, vmovn_s64(vcgeq_u64(v602, *&v597))), *&v595).i8[2])
                {
                  v604[698] = 1;
                  v604[762] = 1;
                }

                v609 = vmovn_s64(vcgeq_u64(v602, v596));
                if (vuzp1_s8(*&v595, vuzp1_s16(v609, *&v595)).i32[1])
                {
                  v604[826] = 1;
                }

                if (vuzp1_s8(*&v595, vuzp1_s16(v609, *&v595)).i8[5])
                {
                  v604[890] = 1;
                }

                if (vuzp1_s8(*&v595, vuzp1_s16(*&v595, vmovn_s64(vcgeq_u64(v602, *&v595)))).i8[6])
                {
                  v604[954] = 1;
                  v604[1018] = 1;
                }

                v600 = vaddq_s64(v600, v605);
                v601 = vaddq_s64(v601, v605);
                v603 = vaddq_s64(v603, v605);
                v599 = vaddq_s64(v599, v605);
                v598 = vaddq_s64(v598, v605);
                v597 = vaddq_s64(v597, v605);
                v596 = vaddq_s64(v596, v605);
                v604 += 1024;
                v595 = vaddq_s64(v595, v605);
                v594 -= 16;
              }

              while (v594);
            }

            flags_low = LOBYTE(v847[0].flags);
            if (LOBYTE(v847[0].flags))
            {
              v611 = (LOBYTE(v847[0].flags) + 15) & 0x1F0;
              v612 = xmmword_2249BBC60;
              v613 = xmmword_2249BBC70;
              v614 = xmmword_2249BBC80;
              v615 = xmmword_2249BBC90;
              v616 = xmmword_2249BBCA0;
              v617 = xmmword_2249BBCB0;
              v618 = xmmword_2249BBCC0;
              v619 = vdupq_n_s64(LOBYTE(v847[0].flags) - 1);
              v620 = xmmword_2249B9820;
              v621 = v847;
              v622 = vdupq_n_s64(0x10uLL);
              do
              {
                v623 = vmovn_s64(vcgeq_u64(v619, v620));
                if (vuzp1_s8(vuzp1_s16(v623, *v612.i8), *v612.i8).u8[0])
                {
                  BYTE2(v621[2].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v623, *&v612), *&v612).i8[1])
                {
                  BYTE2(v621[5].value) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v612, vmovn_s64(vcgeq_u64(v619, *&v618))), *&v612).i8[2])
                {
                  BYTE2(v621[7].epoch) = 1;
                  BYTE2(v621[10].timescale) = 1;
                }

                v624 = vmovn_s64(vcgeq_u64(v619, v617));
                if (vuzp1_s8(*&v612, vuzp1_s16(v624, *&v612)).i32[1])
                {
                  BYTE2(v621[13].value) = 1;
                }

                if (vuzp1_s8(*&v612, vuzp1_s16(v624, *&v612)).i8[5])
                {
                  BYTE2(v621[15].epoch) = 1;
                }

                if (vuzp1_s8(*&v612, vuzp1_s16(*&v612, vmovn_s64(vcgeq_u64(v619, *&v616)))).i8[6])
                {
                  BYTE2(v621[18].timescale) = 1;
                  BYTE2(v621[21].value) = 1;
                }

                v625 = vmovn_s64(vcgeq_u64(v619, v615));
                if (vuzp1_s8(vuzp1_s16(v625, *v612.i8), *v612.i8).u8[0])
                {
                  BYTE2(v621[23].epoch) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v625, *&v612), *&v612).i8[1])
                {
                  BYTE2(v621[26].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v612, vmovn_s64(vcgeq_u64(v619, *&v614))), *&v612).i8[2])
                {
                  BYTE2(v621[29].value) = 1;
                  BYTE2(v621[31].epoch) = 1;
                }

                v626 = vmovn_s64(vcgeq_u64(v619, v613));
                if (vuzp1_s8(*&v612, vuzp1_s16(v626, *&v612)).i32[1])
                {
                  BYTE2(v621[34].timescale) = 1;
                }

                if (vuzp1_s8(*&v612, vuzp1_s16(v626, *&v612)).i8[5])
                {
                  BYTE2(v621[37].value) = 1;
                }

                if (vuzp1_s8(*&v612, vuzp1_s16(*&v612, vmovn_s64(vcgeq_u64(v619, *&v612)))).i8[6])
                {
                  BYTE2(v621[39].epoch) = 1;
                  BYTE2(v621[42].timescale) = 1;
                }

                v617 = vaddq_s64(v617, v622);
                v618 = vaddq_s64(v618, v622);
                v620 = vaddq_s64(v620, v622);
                v616 = vaddq_s64(v616, v622);
                v615 = vaddq_s64(v615, v622);
                v614 = vaddq_s64(v614, v622);
                v613 = vaddq_s64(v613, v622);
                v621 = (v621 + 1024);
                v612 = vaddq_s64(v612, v622);
                v611 -= 16;
              }

              while (v611);
            }

            v500 = v494 + 1;
            LODWORD(cf) = flags_low;
            v496 = v500;
          }

          else
          {
            v496 = 0;
            if (LOBYTE(__src[3]))
            {
              v497 = &__src[14] + 2;
              v498 = LOBYTE(__src[3]);
              do
              {
                v499 = *v497;
                v497 += 64;
                v496 += v499;
                --v498;
              }

              while (v498);
            }

            LODWORD(cf) = LOBYTE(v847[0].flags);
            if (LOBYTE(v847[0].flags))
            {
              v500 = 0;
              v501 = &v847[2].timescale + 2;
              v502 = LOBYTE(v847[0].flags);
              do
              {
                v503 = *v501;
                v501 += 64;
                v500 += v503;
                --v502;
              }

              while (v502);
            }

            else
            {
              LODWORD(cf) = 0;
              v500 = 0;
            }
          }

          if (v776 == -1)
          {
            if (v495)
            {
              v701 = (v495 + 15) & 0x1F0;
              v702 = xmmword_2249BBC60;
              v703 = xmmword_2249BBC70;
              v704 = xmmword_2249BBC80;
              v705 = xmmword_2249BBC90;
              v706 = xmmword_2249BBCA0;
              v707 = xmmword_2249BBCB0;
              v708 = xmmword_2249BBCC0;
              v709 = vdupq_n_s64(v495 - 1);
              v710 = xmmword_2249B9820;
              v711 = __src;
              v712 = vdupq_n_s64(0x10uLL);
              do
              {
                v713 = vmovn_s64(vcgeq_u64(v709, v710));
                if (vuzp1_s8(vuzp1_s16(v713, *v702.i8), *v702.i8).u8[0])
                {
                  v711[59] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v713, *&v702), *&v702).i8[1])
                {
                  v711[123] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v702, vmovn_s64(vcgeq_u64(v709, *&v708))), *&v702).i8[2])
                {
                  v711[187] = 1;
                  v711[251] = 1;
                }

                v714 = vmovn_s64(vcgeq_u64(v709, v707));
                if (vuzp1_s8(*&v702, vuzp1_s16(v714, *&v702)).i32[1])
                {
                  v711[315] = 1;
                }

                if (vuzp1_s8(*&v702, vuzp1_s16(v714, *&v702)).i8[5])
                {
                  v711[379] = 1;
                }

                if (vuzp1_s8(*&v702, vuzp1_s16(*&v702, vmovn_s64(vcgeq_u64(v709, *&v706)))).i8[6])
                {
                  v711[443] = 1;
                  v711[507] = 1;
                }

                v715 = vmovn_s64(vcgeq_u64(v709, v705));
                if (vuzp1_s8(vuzp1_s16(v715, *v702.i8), *v702.i8).u8[0])
                {
                  v711[571] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v715, *&v702), *&v702).i8[1])
                {
                  v711[635] = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v702, vmovn_s64(vcgeq_u64(v709, *&v704))), *&v702).i8[2])
                {
                  v711[699] = 1;
                  v711[763] = 1;
                }

                v716 = vmovn_s64(vcgeq_u64(v709, v703));
                if (vuzp1_s8(*&v702, vuzp1_s16(v716, *&v702)).i32[1])
                {
                  v711[827] = 1;
                }

                if (vuzp1_s8(*&v702, vuzp1_s16(v716, *&v702)).i8[5])
                {
                  v711[891] = 1;
                }

                if (vuzp1_s8(*&v702, vuzp1_s16(*&v702, vmovn_s64(vcgeq_u64(v709, *&v702)))).i8[6])
                {
                  v711[955] = 1;
                  v711[1019] = 1;
                }

                v707 = vaddq_s64(v707, v712);
                v708 = vaddq_s64(v708, v712);
                v710 = vaddq_s64(v710, v712);
                v706 = vaddq_s64(v706, v712);
                v705 = vaddq_s64(v705, v712);
                v704 = vaddq_s64(v704, v712);
                v703 = vaddq_s64(v703, v712);
                v711 += 1024;
                v702 = vaddq_s64(v702, v712);
                v701 -= 16;
              }

              while (v701);
            }

            if (cf)
            {
              v717 = (cf + 15) & 0x1F0;
              v718 = xmmword_2249BBC60;
              v719 = xmmword_2249BBC70;
              v720 = xmmword_2249BBC80;
              v721 = xmmword_2249BBC90;
              v722 = xmmword_2249BBCA0;
              v723 = xmmword_2249BBCB0;
              v724 = xmmword_2249BBCC0;
              v725 = vdupq_n_s64(cf - 1);
              v726 = xmmword_2249B9820;
              v727 = v847;
              v728 = vdupq_n_s64(0x10uLL);
              do
              {
                v729 = vmovn_s64(vcgeq_u64(v725, v726));
                if (vuzp1_s8(vuzp1_s16(v729, *v718.i8), *v718.i8).u8[0])
                {
                  HIBYTE(v727[2].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v729, *&v718), *&v718).i8[1])
                {
                  BYTE3(v727[5].value) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v718, vmovn_s64(vcgeq_u64(v725, *&v724))), *&v718).i8[2])
                {
                  BYTE3(v727[7].epoch) = 1;
                  HIBYTE(v727[10].timescale) = 1;
                }

                v730 = vmovn_s64(vcgeq_u64(v725, v723));
                if (vuzp1_s8(*&v718, vuzp1_s16(v730, *&v718)).i32[1])
                {
                  BYTE3(v727[13].value) = 1;
                }

                if (vuzp1_s8(*&v718, vuzp1_s16(v730, *&v718)).i8[5])
                {
                  BYTE3(v727[15].epoch) = 1;
                }

                if (vuzp1_s8(*&v718, vuzp1_s16(*&v718, vmovn_s64(vcgeq_u64(v725, *&v722)))).i8[6])
                {
                  HIBYTE(v727[18].timescale) = 1;
                  BYTE3(v727[21].value) = 1;
                }

                v731 = vmovn_s64(vcgeq_u64(v725, v721));
                if (vuzp1_s8(vuzp1_s16(v731, *v718.i8), *v718.i8).u8[0])
                {
                  BYTE3(v727[23].epoch) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(v731, *&v718), *&v718).i8[1])
                {
                  HIBYTE(v727[26].timescale) = 1;
                }

                if (vuzp1_s8(vuzp1_s16(*&v718, vmovn_s64(vcgeq_u64(v725, *&v720))), *&v718).i8[2])
                {
                  BYTE3(v727[29].value) = 1;
                  BYTE3(v727[31].epoch) = 1;
                }

                v732 = vmovn_s64(vcgeq_u64(v725, v719));
                if (vuzp1_s8(*&v718, vuzp1_s16(v732, *&v718)).i32[1])
                {
                  HIBYTE(v727[34].timescale) = 1;
                }

                if (vuzp1_s8(*&v718, vuzp1_s16(v732, *&v718)).i8[5])
                {
                  BYTE3(v727[37].value) = 1;
                }

                if (vuzp1_s8(*&v718, vuzp1_s16(*&v718, vmovn_s64(vcgeq_u64(v725, *&v718)))).i8[6])
                {
                  BYTE3(v727[39].epoch) = 1;
                  HIBYTE(v727[42].timescale) = 1;
                }

                v723 = vaddq_s64(v723, v728);
                v724 = vaddq_s64(v724, v728);
                v726 = vaddq_s64(v726, v728);
                v722 = vaddq_s64(v722, v728);
                v721 = vaddq_s64(v721, v728);
                v720 = vaddq_s64(v720, v728);
                v719 = vaddq_s64(v719, v728);
                v727 = (v727 + 1024);
                v718 = vaddq_s64(v718, v728);
                v717 -= 16;
              }

              while (v717);
            }

            v697 = v494 + 1;
            v694 = v697;
          }

          else
          {
            v694 = 0;
            if (v495)
            {
              v695 = &__src[14] + 3;
              do
              {
                v696 = *v695;
                v695 += 64;
                v694 += v696;
                --v495;
              }

              while (v495);
            }

            if (cf)
            {
              v697 = 0;
              v698 = cf;
              v699 = &v847[2].timescale + 3;
              do
              {
                v700 = *v699;
                v699 += 64;
                v697 += v700;
                --v698;
              }

              while (v698);
            }

            else
            {
              v697 = 0;
            }
          }

          if (v809)
          {
            v733 = 0;
            v734 = v814;
            while (1)
            {
              v735 = v814[v733];
              v736 = v735[4369];
              v737 = v736 ? v496 : v500;
              v738 = v735[4369] ? v694 : v697;
              v735[576] = theDict != 0;
              if (v736)
              {
                v739 = LOBYTE(__src[3]);
                if (LOBYTE(__src[3]))
                {
                  v740 = 0;
                  v741 = &__src[17] + 1;
                  do
                  {
                    v742 = *v741;
                    v741 += 64;
                    if ((v742 & 0xFE) == 2)
                    {
                      ++v740;
                    }

                    --v739;
                  }

                  while (v739);
                }

                else
                {
                  v740 = 0;
                }
              }

              else
              {
                v740 = cf;
                if (cf)
                {
                  v740 = 0;
                  v743 = cf;
                  v744 = &v847[2].epoch + 5;
                  do
                  {
                    v745 = *v744;
                    v744 += 64;
                    if ((v745 & 0xFE) == 2)
                    {
                      ++v740;
                    }

                    --v743;
                  }

                  while (v743);
                }
              }

              v746 = v735[4256] ? 0 : v740;
              v747 = v779 ? v494 + (__src[484] == 0) : 0;
              if (AllocateAndSendOneShotBuffers(v735, v494 + (__src[484] == 0) - v746, v747, v737, v738, 0))
              {
                goto LABEL_724;
              }

              ++v733;
              v748 = v809;
              if (v733 >= v809)
              {
                if (v809)
                {
                  v749 = v494 + (__src[484] == 0);
                  v750 = v809;
                  do
                  {
                    v751 = *v734++;
                    *(v751 + 100) += v749;
                    --v750;
                  }

                  while (v750);
                }

                goto LABEL_1333;
              }
            }
          }

          v748 = 0;
LABEL_1333:
          if (((*(v5 + 1304) & 1) != 0 || (*(v5 + 1504) & 1) != 0 || *(v5 + 2504) == 1) && (*(*v803 + 160) & 1) == 0)
          {
            if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
            {
              goto LABEL_1232;
            }

            v748 = v809;
          }

          if (v748)
          {
            for (i = 0; i < v748; ++i)
            {
              v753 = v814[i];
              if (*(v753 + 1304) & 1) != 0 || (*(v753 + 1504))
              {
                v754 = 0;
              }

              else
              {
                v754 = *(v753 + 2504) ^ 1;
              }

              if ((*(v753 + 4369) & 1) == 0 && (v754 & 1) == 0 && (*(v753 + 4256) & 1) == 0)
              {
                v847[0].timescale = *(v753 + 156);
                if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), v847, 0x79Cu, 0, 0xFFFFFFFF))
                {
                  goto LABEL_1232;
                }

                v748 = v809;
              }
            }
          }

          LODWORD(buf.value) = 101;
          LOBYTE(buf.timescale) = v796;
          v755 = *(*v805 + 232);
          if (v755 && v796)
          {
            H16ISP::H16ISPServicesRemote::SetProperty(v755, &buf);
          }

          if (LaunchStillImageCapture(*v805, v808, __b, 0x264u))
          {
            v756 = *(*v805 + 232);
            if (v756 && LOBYTE(buf.timescale) == 1)
            {
              LOBYTE(buf.timescale) = 0;
              H16ISP::H16ISPServicesRemote::SetProperty(v756, &buf);
            }

            v757 = v809;
            if (v809)
            {
              v758 = v814;
              do
              {
                v759 = *v758++;
                *(v759 + 100) = 0;
                --v757;
              }

              while (v757);
            }
          }

          goto LABEL_1232;
        }

        v478 = 0;
        v479 = 0;
        if (v797)
        {
          v480 = BYTE4(v774);
        }

        else
        {
          v480 = 1;
        }

        LOBYTE(v800) = v480;
        v481 = BYTE4(v774) ^ 1;
        if (!v797)
        {
          v481 = 1;
        }

        LOBYTE(v794) = v481;
        v799 = v418;
        while (1)
        {
          v482 = CFArrayGetValueAtIndex(v792, v478);
          if (!v482)
          {
            break;
          }

          v483 = &v818[v479];
          GetPerFrameBracketParamForDualUB(v482, v483, &__src[16 * LOBYTE(__src[3]) + 4], v5);
          v484 = LOBYTE(__src[3]);
          v485 = &__src[16 * LOBYTE(__src[3]) + 4];
          v485[5] = 1;
          v486 = &v818[v479 + 21];
          if (v800)
          {
            if (v794)
            {
              *v486 = *v483;
              v487 = &v847[0].epoch + 8 * v484;
              v488 = *(v485 + 1);
              *v487 = *v485;
              *(v487 + 1) = v488;
              v489 = *(v485 + 3);
              *(v487 + 2) = *(v485 + 2);
              *(v487 + 3) = v489;
            }

            else
            {
              *v486 = v774;
            }
          }

          else
          {
            v490 = CFArrayGetValueAtIndex(v797, v478);
            GetPerFrameBracketParamForDualUB(v490, v486, (&v847[0].epoch + 8 * LOBYTE(__src[3])), v814[v289]);
            LOBYTE(v484) = __src[3];
            *(&v847[1].flags + 16 * LOBYTE(__src[3])) = 1;
            if (*(v483 + 6) != *(v486 + 6))
            {
              break;
            }
          }

          if (v479)
          {
            if (*(v483 + 6) == 1 && !BYTE6(v818[v479 - 1]))
            {
              v491 = &v818[--v479];
              *(v491 + 6) = 2;
              *(v491 + 5) = *(v483 + 5);
              *(v491 + 1) = *(v483 + 1);
              v492 = &v818[v479 + 21];
              *(v492 + 6) = 2;
              *(v492 + 5) = *(v486 + 5);
              *(v492 + 1) = *(v486 + 1);
            }
          }

          else
          {
            v479 = 0;
          }

          v493 = v484 + 1;
          LOBYTE(__src[3]) = v493;
          ++v479;
          if (++v478 >= v799)
          {
            goto LABEL_890;
          }
        }

LABEL_888:
        v12 = 4294954516;
        goto LABEL_908;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v283 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v283;
      }

      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
      {
        v358 = *(v5 + 156);
        LODWORD(buf.value) = 136315394;
        *(&buf.value + 4) = "StillImageCaptureNow";
        LOWORD(buf.flags) = 1024;
        *(&buf.flags + 2) = v358;
        _os_log_impl(&dword_2247DB000, v283, OS_LOG_TYPE_DEFAULT, "%s - Initiating unified bracketed capture CH%d\n\n", &buf, 0x12u);
      }

      bzero(v847, 0x1214uLL);
      HIDWORD(v847[11].epoch) = *(v5 + 156);
      LODWORD(__b[0]) = 500;
      WORD2(v847[0].value) = 605;
      v847[0].flags = 65537;
      v847[0].timescale = HIDWORD(v847[11].epoch);
      __src[2] = HIDWORD(v847[11].epoch);
      __src[485] = 17;
      v359 = HasFlashBracket(v792);
      LODWORD(v800) = v359;
      if (!theDict || v359)
      {
        if (v359)
        {
          __src[484] = 1;
          v423 = H16ISP::getExternalStrobeAttached(v359);
          ConfigureExternalStrobeParameters(*v805, *(v5 + 156), v423);
          LODWORD(buf.value) = 0;
          v424 = H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(*v805 + 24), 1u, 0, 0x10000u, &buf);
          v425 = buf.value;
          if (LODWORD(buf.value) >= 0x10000)
          {
            v425 = 0x10000;
          }

          if (v424)
          {
            v425 = 0x10000;
          }

          LODWORD(v847[1].value) = v425;
        }
      }

      else
      {
        GetPerFrameTuningParam(theDict, &__src[16 * LOBYTE(__src[3]) + 4], v5);
        v360 = __src[3];
        __src[16 * LOBYTE(__src[3]) + 9] = 2;
        LOBYTE(__src[3]) = v360 + 1;
        v361 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6160]);
        if (v361 && CFEqual(v361, *MEMORY[0x277CBED28]))
        {
          __src[484] = 1;
        }

        v362 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF6150]);
        if (v362)
        {
          LOBYTE(__src[486]) = CFBooleanGetValue(v362) != 0;
        }
      }

      v426 = CFDictionaryGetValue(v6, *MEMORY[0x277CF6088]);
      if (v426)
      {
        CFNumberGetValue(v426, kCFNumberSInt32Type, __b);
        v427 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v427 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v427;
        }

        if (os_log_type_enabled(v427, OS_LOG_TYPE_ERROR))
        {
          StillImageCaptureNow();
        }

        v428 = 4;
      }

      else
      {
        v428 = 0;
      }

      v812 = v428;
      HIDWORD(v847[0].epoch) = __b[0];
      v429 = CFArrayGetCount(v792);
      if (v429)
      {
        if (!H16ISP::H16ISPFrameReceiver::HasPool(*(v5 + 160), 31) && AddCntxSwRawPoolToFrameReceiver(v5, *v805))
        {
          v430 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
          {
            v430 = os_log_create("com.apple.isp", "plugin");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v430;
          }

          if (os_log_type_enabled(v430, OS_LOG_TYPE_ERROR))
          {
            StillImageCaptureNow();
          }

          goto LABEL_849;
        }

        v797 = NumberOfClientRequestedHiResStillImageCaptures(v792);
        v431 = 0;
        v432 = 0;
        do
        {
          v433 = CFArrayGetValueAtIndex(v792, v431);
          if (v433)
          {
            v434 = (&v847[12] + 68 * v432);
            GetPerFrameBracketParams(v433, v434, &__src[16 * LOBYTE(__src[3]) + 4], v5);
            if (v432)
            {
              if (v434->i8[6] == 1 && !*(&v847[9].timescale + 68 * v432 + 2))
              {
                v435 = &v847[12] + 68 * --v432;
                v435[6] = 2;
                v435[5] = v434->i8[5];
                *(v435 + 1) = v434->i16[1];
                bzero(v434, 0x44uLL);
              }
            }

            else
            {
              v432 = 0;
            }

            v436 = __src[3];
            __src[16 * LOBYTE(__src[3]) + 9] = 1;
            v437 = v809;
            if (v809)
            {
              v438 = &v847[12] + 68 * v432;
              v439 = v438[4];
              v440 = *(v438 + 3);
              if (v439 == 3)
              {
                v441 = v440;
              }

              else
              {
                v441 = 0;
              }

              v442 = v810;
              do
              {
                *v442++ += v441;
                v443 = v811;
                if (v440 > v811)
                {
                  v443 = v440;
                }

                v811 = v443;
                --v437;
              }

              while (v437);
            }

            else
            {
              v439 = *(&v847[12].value + 68 * v432 + 4);
            }

            v444 = v812;
            if (v439 == 3)
            {
              v444 = 6;
            }

            v812 = v444;
            LOBYTE(__src[3]) = v436 + 1;
            ++v432;
          }

          ++v431;
        }

        while (v431 != v429);
      }

      else
      {
        v797 = NumberOfClientRequestedHiResStillImageCaptures(v792);
        v432 = 0;
      }

      v445 = CFArrayGetCount(v792);
      HIWORD(v847[0].flags) = v432;
      if (v788 && GetAFWindowParam(v788, &v847[3].epoch + 4, &v847[0].epoch))
      {
        goto LABEL_849;
      }

      if (v784)
      {
        v445 += CFArrayGetCount(v784);
        v848 = 298;
        v849 = v849 & 0x7FFF0000 | LOWORD(v847[0].timescale);
        v851 = valuePtr;
        v850 = v767 & 1;
        v852 = 2;
        v853 = 1;
        v854 = v861;
      }

      if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, 15, v782))
      {
        goto LABEL_849;
      }

      v446 = LOBYTE(__src[3]);
      if (v777 == -1)
      {
        if (LOBYTE(__src[3]))
        {
          v575 = (LOBYTE(__src[3]) + 15) & 0x1F0;
          v576 = xmmword_2249BBC60;
          v577 = xmmword_2249BBC70;
          v578 = xmmword_2249BBC80;
          v579 = xmmword_2249BBC90;
          v580 = xmmword_2249BBCA0;
          v581 = xmmword_2249BBCB0;
          v582 = xmmword_2249BBCC0;
          v583 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
          v584 = xmmword_2249B9820;
          v585 = __src;
          v586 = vdupq_n_s64(0x10uLL);
          do
          {
            v587 = vmovn_s64(vcgeq_u64(v583, v584));
            if (vuzp1_s8(vuzp1_s16(v587, *v576.i8), *v576.i8).u8[0])
            {
              v585[58] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v587, *&v576), *&v576).i8[1])
            {
              v585[122] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v576, vmovn_s64(vcgeq_u64(v583, *&v582))), *&v576).i8[2])
            {
              v585[186] = 1;
              v585[250] = 1;
            }

            v588 = vmovn_s64(vcgeq_u64(v583, v581));
            if (vuzp1_s8(*&v576, vuzp1_s16(v588, *&v576)).i32[1])
            {
              v585[314] = 1;
            }

            if (vuzp1_s8(*&v576, vuzp1_s16(v588, *&v576)).i8[5])
            {
              v585[378] = 1;
            }

            if (vuzp1_s8(*&v576, vuzp1_s16(*&v576, vmovn_s64(vcgeq_u64(v583, *&v580)))).i8[6])
            {
              v585[442] = 1;
              v585[506] = 1;
            }

            v589 = vmovn_s64(vcgeq_u64(v583, v579));
            if (vuzp1_s8(vuzp1_s16(v589, *v576.i8), *v576.i8).u8[0])
            {
              v585[570] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(v589, *&v576), *&v576).i8[1])
            {
              v585[634] = 1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v576, vmovn_s64(vcgeq_u64(v583, *&v578))), *&v576).i8[2])
            {
              v585[698] = 1;
              v585[762] = 1;
            }

            v590 = vmovn_s64(vcgeq_u64(v583, v577));
            if (vuzp1_s8(*&v576, vuzp1_s16(v590, *&v576)).i32[1])
            {
              v585[826] = 1;
            }

            if (vuzp1_s8(*&v576, vuzp1_s16(v590, *&v576)).i8[5])
            {
              v585[890] = 1;
            }

            if (vuzp1_s8(*&v576, vuzp1_s16(*&v576, vmovn_s64(vcgeq_u64(v583, *&v576)))).i8[6])
            {
              v585[954] = 1;
              v585[1018] = 1;
            }

            v581 = vaddq_s64(v581, v586);
            v582 = vaddq_s64(v582, v586);
            v584 = vaddq_s64(v584, v586);
            v580 = vaddq_s64(v580, v586);
            v579 = vaddq_s64(v579, v586);
            v578 = vaddq_s64(v578, v586);
            v577 = vaddq_s64(v577, v586);
            v585 += 1024;
            v576 = vaddq_s64(v576, v586);
            v575 -= 16;
          }

          while (v575);
        }

        LODWORD(valuePtr) = v445 + 1;
      }

      else
      {
        if (!LOBYTE(__src[3]))
        {
          LODWORD(valuePtr) = 0;
          v591 = 0;
          if (v776 != -1)
          {
            goto LABEL_1144;
          }

          goto LABEL_1143;
        }

        LODWORD(valuePtr) = 0;
        v447 = &__src[14] + 2;
        v448 = LOBYTE(__src[3]);
        do
        {
          v449 = *v447;
          v447 += 64;
          LODWORD(valuePtr) = valuePtr + v449;
          --v448;
        }

        while (v448);
      }

      if (v776 != -1)
      {
        v591 = 0;
        if (v446)
        {
          v592 = &__src[14] + 3;
          do
          {
            v593 = *v592;
            v592 += 64;
            v591 += v593;
            --v446;
          }

          while (v446);
        }

LABEL_1144:
        if (v809)
        {
          v643 = 0;
          v644 = v814;
          LODWORD(v799) = v445;
          do
          {
            v645 = v814[v643];
            *(v645 + 576) = theDict != 0;
            LODWORD(cf) = __src[484] == 0;
            v646 = *(v645 + 4800);
            if (v646)
            {
              v647 = CFArrayGetCount(v646);
            }

            else
            {
              v647 = 0;
            }

            v648 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]))
            {
              v649 = 0;
              v650 = &__src[17] + 1;
              do
              {
                v651 = *v650;
                v650 += 64;
                if ((v651 & 0xFE) == 2)
                {
                  ++v649;
                }

                --v648;
              }

              while (v648);
            }

            else
            {
              v649 = 0;
            }

            v652 = v814[v643];
            if (*(v652 + 4256))
            {
              v649 = 0;
            }

            LODWORD(theArray) = v649;
            if (v647)
            {
              BufferPool = H16ISP::H16ISPFrameReceiver::getBufferPool(*(v5 + 160), 31);
              v654 = 0;
              while (1)
              {
                v655 = CFArrayGetValueAtIndex(*(v814[v643] + 4800), v654);
                v656 = H16ISP::H16ISPFrameReceiver::AddPreallocatedBuffer(*(v814[v643] + 160), 31, v655);
                if (v656)
                {
                  break;
                }

                if (v647 == ++v654)
                {
                  goto LABEL_1172;
                }
              }

              v657 = v656;
              v658 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v658 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v658;
              }

              if (os_log_type_enabled(v658, OS_LOG_TYPE_ERROR))
              {
                v663 = *(v814[v643] + 156);
                LODWORD(buf.value) = 136315650;
                *(&buf.value + 4) = "StillImageCaptureNow";
                LOWORD(buf.flags) = 1024;
                *(&buf.flags + 2) = v663;
                WORD1(buf.epoch) = 1024;
                HIDWORD(buf.epoch) = v657;
                _os_log_error_impl(&dword_2247DB000, v658, OS_LOG_TYPE_ERROR, "%s - AddPreallocatedBuffer() CH %d returns error 0x%x\n", &buf, 0x18u);
              }

LABEL_1172:
              H16ISP::H16ISPDevice::SetBufferPoolConfiguration(*(*v805 + 24), *(v814[v643] + 156), 32, *(BufferPool + 232), 0, 1u, (BufferPool + 336));
            }

            else if (v797 && *(v652 + 4888) && *(v652 + 4928) >= 1 && H16ISP::H16ISPFrameReceiver::AllocateAndSendStillImageBuffers(*(v652 + 160), 31, v797))
            {
              v760 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
              {
                v760 = os_log_create("com.apple.isp", "plugin");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v760;
              }

              if (os_log_type_enabled(v760, OS_LOG_TYPE_ERROR))
              {
                StillImageCaptureNow();
              }

LABEL_1366:
              v789 = -12686;
              goto LABEL_849;
            }

            if (v779)
            {
              v659 = v799 + cf;
            }

            else
            {
              v659 = 0;
            }

            v660 = AllocateAndSendOneShotBuffers(v814[v643], v799 + cf - theArray, v659, valuePtr, v591, v647);
            v661 = *(v814[v643] + 4800);
            if (v661)
            {
              CFRelease(v661);
              *(v814[v643] + 4800) = 0;
            }

            if (v660)
            {
              goto LABEL_1366;
            }

            ++v643;
            v662 = v809;
          }

          while (v643 < v809);
          if (v809)
          {
            v664 = v799 + (__src[484] == 0);
            do
            {
              v665 = *v644++;
              *(v665 + 100) += v664;
              --v662;
            }

            while (v662);
          }
        }

        if (((*(v5 + 1304) & 1) != 0 || (*(v5 + 1504) & 1) != 0 || *(v5 + 2504) == 1) && (*(*v803 + 160) & 1) == 0)
        {
          v666 = v812 ? v812 : -1;
          if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), __src, 0x79Cu, 0, v666))
          {
            goto LABEL_849;
          }
        }

        v667 = (v811 / 0x3E8) / 1000.0;
        if (v667 > 1.0)
        {
          H16ISP::H16ISPFrameReceiver::SetFrameDoneTimeoutDuration(*(v5 + 160), v667 + 2.0);
        }

        LODWORD(buf.value) = 101;
        LOBYTE(buf.timescale) = v800;
        v668 = *(*v805 + 232);
        if (v668 && v800)
        {
          H16ISP::H16ISPServicesRemote::SetProperty(v668, &buf);
        }

        if (LaunchStillImageCapture(*v805, v808, v847, 0x1214u))
        {
          v669 = *(*v805 + 232);
          if (v669 && LOBYTE(buf.timescale) == 1)
          {
            LOBYTE(buf.timescale) = 0;
            H16ISP::H16ISPServicesRemote::SetProperty(v669, &buf);
          }

          v670 = v809;
          if (v809)
          {
            v671 = v814;
            do
            {
              v672 = *v671++;
              *(v672 + 100) = 0;
              --v670;
            }

            while (v670);
          }

          goto LABEL_849;
        }

        goto LABEL_1232;
      }

      if (v446)
      {
        v627 = (v446 + 15) & 0x1F0;
        v628 = xmmword_2249BBC60;
        v629 = xmmword_2249BBC70;
        v630 = xmmword_2249BBC80;
        v631 = xmmword_2249BBC90;
        v632 = xmmword_2249BBCA0;
        v633 = xmmword_2249BBCB0;
        v634 = xmmword_2249BBCC0;
        v635 = vdupq_n_s64(v446 - 1);
        v636 = xmmword_2249B9820;
        v637 = __src;
        v638 = vdupq_n_s64(0x10uLL);
        do
        {
          v639 = vmovn_s64(vcgeq_u64(v635, v636));
          if (vuzp1_s8(vuzp1_s16(v639, *v628.i8), *v628.i8).u8[0])
          {
            v637[59] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v639, *&v628), *&v628).i8[1])
          {
            v637[123] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v628, vmovn_s64(vcgeq_u64(v635, *&v634))), *&v628).i8[2])
          {
            v637[187] = 1;
            v637[251] = 1;
          }

          v640 = vmovn_s64(vcgeq_u64(v635, v633));
          if (vuzp1_s8(*&v628, vuzp1_s16(v640, *&v628)).i32[1])
          {
            v637[315] = 1;
          }

          if (vuzp1_s8(*&v628, vuzp1_s16(v640, *&v628)).i8[5])
          {
            v637[379] = 1;
          }

          if (vuzp1_s8(*&v628, vuzp1_s16(*&v628, vmovn_s64(vcgeq_u64(v635, *&v632)))).i8[6])
          {
            v637[443] = 1;
            v637[507] = 1;
          }

          v641 = vmovn_s64(vcgeq_u64(v635, v631));
          if (vuzp1_s8(vuzp1_s16(v641, *v628.i8), *v628.i8).u8[0])
          {
            v637[571] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(v641, *&v628), *&v628).i8[1])
          {
            v637[635] = 1;
          }

          if (vuzp1_s8(vuzp1_s16(*&v628, vmovn_s64(vcgeq_u64(v635, *&v630))), *&v628).i8[2])
          {
            v637[699] = 1;
            v637[763] = 1;
          }

          v642 = vmovn_s64(vcgeq_u64(v635, v629));
          if (vuzp1_s8(*&v628, vuzp1_s16(v642, *&v628)).i32[1])
          {
            v637[827] = 1;
          }

          if (vuzp1_s8(*&v628, vuzp1_s16(v642, *&v628)).i8[5])
          {
            v637[891] = 1;
          }

          if (vuzp1_s8(*&v628, vuzp1_s16(*&v628, vmovn_s64(vcgeq_u64(v635, *&v628)))).i8[6])
          {
            v637[955] = 1;
            v637[1019] = 1;
          }

          v633 = vaddq_s64(v633, v638);
          v634 = vaddq_s64(v634, v638);
          v636 = vaddq_s64(v636, v638);
          v632 = vaddq_s64(v632, v638);
          v631 = vaddq_s64(v631, v638);
          v630 = vaddq_s64(v630, v638);
          v629 = vaddq_s64(v629, v638);
          v637 += 1024;
          v628 = vaddq_s64(v628, v638);
          v627 -= 16;
        }

        while (v627);
      }

LABEL_1143:
      v591 = v445 + 1;
      goto LABEL_1144;
    }

    if (!v793)
    {
      if (*(v5 + 1704) == 1)
      {
        ++*(v5 + 100);
        if (H16ISP::H16ISPDevice::CaptureNow(*(*v805 + 24), *(v5 + 156), 0))
        {
          *(v5 + 100) = 0;
          goto LABEL_849;
        }

        v522 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v522 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v522;
        }

        if (!os_log_type_enabled(v522, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1232;
        }

        buf.value = 67109120;
        v523 = "H16ISPCaptureDevice: Initiating context-switch capture operation. result=0x%08X\n\n";
      }

      else
      {
        v470 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v470 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v470;
        }

        if (os_log_type_enabled(v470, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 136315138;
          *(&buf.value + 4) = "StillImageCaptureNow";
          _os_log_impl(&dword_2247DB000, v470, OS_LOG_TYPE_DEFAULT, "%s - Initiating time machine capture\n", &buf, 0xCu);
        }

        if (valuePtr)
        {
          v471 = v775;
        }

        else
        {
          v471 = 1;
        }

        if (valuePtr <= 1)
        {
          v472 = 1;
        }

        else
        {
          v472 = valuePtr;
        }

        LOWORD(valuePtr) = v472;
        LODWORD(v473) = LOBYTE(__src[3]);
        if (v777 == -1)
        {
          if (LOBYTE(__src[3]))
          {
            v525 = (LOBYTE(__src[3]) + 15) & 0x1F0;
            v526 = xmmword_2249BBC60;
            v527 = xmmword_2249BBC70;
            v528 = xmmword_2249BBC80;
            v529 = xmmword_2249BBC90;
            v530 = xmmword_2249BBCA0;
            v531 = xmmword_2249BBCB0;
            v532 = xmmword_2249BBCC0;
            v533 = vdupq_n_s64(LOBYTE(__src[3]) - 1);
            v534 = xmmword_2249B9820;
            v535 = __src;
            v536 = vdupq_n_s64(0x10uLL);
            do
            {
              v537 = vmovn_s64(vcgeq_u64(v533, v534));
              if (vuzp1_s8(vuzp1_s16(v537, *v526.i8), *v526.i8).u8[0])
              {
                v535[58] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v537, *&v526), *&v526).i8[1])
              {
                v535[122] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v526, vmovn_s64(vcgeq_u64(v533, *&v532))), *&v526).i8[2])
              {
                v535[186] = 1;
                v535[250] = 1;
              }

              v538 = vmovn_s64(vcgeq_u64(v533, v531));
              if (vuzp1_s8(*&v526, vuzp1_s16(v538, *&v526)).i32[1])
              {
                v535[314] = 1;
              }

              if (vuzp1_s8(*&v526, vuzp1_s16(v538, *&v526)).i8[5])
              {
                v535[378] = 1;
              }

              if (vuzp1_s8(*&v526, vuzp1_s16(*&v526, vmovn_s64(vcgeq_u64(v533, *&v530)))).i8[6])
              {
                v535[442] = 1;
                v535[506] = 1;
              }

              v539 = vmovn_s64(vcgeq_u64(v533, v529));
              if (vuzp1_s8(vuzp1_s16(v539, *v526.i8), *v526.i8).u8[0])
              {
                v535[570] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v539, *&v526), *&v526).i8[1])
              {
                v535[634] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v526, vmovn_s64(vcgeq_u64(v533, *&v528))), *&v526).i8[2])
              {
                v535[698] = 1;
                v535[762] = 1;
              }

              v540 = vmovn_s64(vcgeq_u64(v533, v527));
              if (vuzp1_s8(*&v526, vuzp1_s16(v540, *&v526)).i32[1])
              {
                v535[826] = 1;
              }

              if (vuzp1_s8(*&v526, vuzp1_s16(v540, *&v526)).i8[5])
              {
                v535[890] = 1;
              }

              if (vuzp1_s8(*&v526, vuzp1_s16(*&v526, vmovn_s64(vcgeq_u64(v533, *&v526)))).i8[6])
              {
                v535[954] = 1;
                v535[1018] = 1;
              }

              v531 = vaddq_s64(v531, v536);
              v532 = vaddq_s64(v532, v536);
              v534 = vaddq_s64(v534, v536);
              v530 = vaddq_s64(v530, v536);
              v529 = vaddq_s64(v529, v536);
              v528 = vaddq_s64(v528, v536);
              v527 = vaddq_s64(v527, v536);
              v535 += 1024;
              v526 = vaddq_s64(v526, v536);
              v525 -= 16;
            }

            while (v525);
          }

          v474 = v471;
        }

        else
        {
          v474 = 0;
          if (LOBYTE(__src[3]))
          {
            v475 = &__src[14] + 2;
            v476 = LOBYTE(__src[3]);
            do
            {
              v477 = *v475;
              v475 += 64;
              v474 += v477;
              --v476;
            }

            while (v476);
          }
        }

        if (v776 == -1)
        {
          if (v473)
          {
            v544 = v473;
            v545 = (v473 + 15) & 0x1F0;
            v546 = xmmword_2249BBC60;
            v547 = xmmword_2249BBC70;
            v548 = xmmword_2249BBC80;
            v549 = xmmword_2249BBC90;
            v550 = xmmword_2249BBCA0;
            v551 = xmmword_2249BBCB0;
            v552 = xmmword_2249BBCC0;
            v553 = vdupq_n_s64(v544 - 1);
            v554 = xmmword_2249B9820;
            v555 = __src;
            v556 = vdupq_n_s64(0x10uLL);
            do
            {
              v557 = vmovn_s64(vcgeq_u64(v553, v554));
              if (vuzp1_s8(vuzp1_s16(v557, *v546.i8), *v546.i8).u8[0])
              {
                v555[59] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v557, *&v546), *&v546).i8[1])
              {
                v555[123] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v546, vmovn_s64(vcgeq_u64(v553, *&v552))), *&v546).i8[2])
              {
                v555[187] = 1;
                v555[251] = 1;
              }

              v558 = vmovn_s64(vcgeq_u64(v553, v551));
              if (vuzp1_s8(*&v546, vuzp1_s16(v558, *&v546)).i32[1])
              {
                v555[315] = 1;
              }

              if (vuzp1_s8(*&v546, vuzp1_s16(v558, *&v546)).i8[5])
              {
                v555[379] = 1;
              }

              if (vuzp1_s8(*&v546, vuzp1_s16(*&v546, vmovn_s64(vcgeq_u64(v553, *&v550)))).i8[6])
              {
                v555[443] = 1;
                v555[507] = 1;
              }

              v559 = vmovn_s64(vcgeq_u64(v553, v549));
              if (vuzp1_s8(vuzp1_s16(v559, *v546.i8), *v546.i8).u8[0])
              {
                v555[571] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(v559, *&v546), *&v546).i8[1])
              {
                v555[635] = 1;
              }

              if (vuzp1_s8(vuzp1_s16(*&v546, vmovn_s64(vcgeq_u64(v553, *&v548))), *&v546).i8[2])
              {
                v555[699] = 1;
                v555[763] = 1;
              }

              v560 = vmovn_s64(vcgeq_u64(v553, v547));
              if (vuzp1_s8(*&v546, vuzp1_s16(v560, *&v546)).i32[1])
              {
                v555[827] = 1;
              }

              if (vuzp1_s8(*&v546, vuzp1_s16(v560, *&v546)).i8[5])
              {
                v555[891] = 1;
              }

              if (vuzp1_s8(*&v546, vuzp1_s16(*&v546, vmovn_s64(vcgeq_u64(v553, *&v546)))).i8[6])
              {
                v555[955] = 1;
                v555[1019] = 1;
              }

              v551 = vaddq_s64(v551, v556);
              v552 = vaddq_s64(v552, v556);
              v554 = vaddq_s64(v554, v556);
              v550 = vaddq_s64(v550, v556);
              v549 = vaddq_s64(v549, v556);
              v548 = vaddq_s64(v548, v556);
              v547 = vaddq_s64(v547, v556);
              v555 += 1024;
              v546 = vaddq_s64(v546, v556);
              v545 -= 16;
            }

            while (v545);
          }

          v541 = v471;
        }

        else
        {
          v541 = 0;
          if (v473)
          {
            v473 = v473;
            v542 = &__src[14] + 3;
            do
            {
              v543 = *v542;
              v542 += 64;
              v541 += v543;
              --v473;
            }

            while (v473);
          }
        }

        if (*(v5 + 698) != 1 || (*(v5 + 1304) & 1) == 0 && (*(v5 + 1504) & 1) == 0 && *(v5 + 2504) != 1)
        {
          goto LABEL_849;
        }

        if (v809)
        {
          v561 = 0;
          if (v779)
          {
            v562 = v471;
          }

          else
          {
            v562 = 0;
          }

          do
          {
            v563 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]))
            {
              v564 = 0;
              v565 = &__src[17] + 1;
              do
              {
                v566 = *v565;
                v565 += 64;
                if ((v566 & 0xFE) == 2)
                {
                  ++v564;
                }

                --v563;
              }

              while (v563);
            }

            else
            {
              v564 = 0;
            }

            v567 = v814[v561];
            if (*(v567 + 4256))
            {
              v564 = 0;
            }

            if (AllocateAndSendOneShotBuffers(v567, v471 - v564, v562, v474, v541, 0))
            {
              goto LABEL_724;
            }
          }

          while (++v561 < v809);
        }

        if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, v790, 4))
        {
          goto LABEL_849;
        }

        v568 = v809;
        if (v809)
        {
          v569 = v814;
          do
          {
            v570 = *v569++;
            *(v570 + 100) += v471;
            --v568;
          }

          while (v568);
        }

        __src[2] = *(v5 + 156);
        if (H16ISP::H16ISPDevice::ISP_SendCommand(*(*v805 + 24), __src, 0x79Cu, 0, 0xFFFFFFFF))
        {
          goto LABEL_849;
        }

        if (!LOBYTE(__src[3]) && ((*(v5 + 1304) & 1) != 0 || *(v5 + 1504) == 1) && *(v5 + 2504) == 1)
        {
          v767 = *(*v803 + 160) ^ 1;
        }

        LaunchStillImageCapture(*v805, v808, 0, 0);
        v571 = H16ISP::H16ISPDevice::TimeMachineCapture(*(*v805 + 24), v761, valuePtr, v767 & 1, v773, v771, &v861);
        if (v571)
        {
          v572 = v571;
          if (v809)
          {
            for (j = 0; j < v809; ++j)
            {
              v574 = v814[j];
              *(v574 + 100) = 0;
              dispatch_source_set_timer(*(v574 + 4248), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
            }
          }

          if (v572 == -536870186)
          {
            v12 = v789;
          }

          else
          {
            v12 = 4294954608;
          }

          goto LABEL_908;
        }

        v522 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v522 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v522;
        }

        if (!os_log_type_enabled(v522, OS_LOG_TYPE_INFO))
        {
          goto LABEL_1232;
        }

        buf.value = 67109120;
        v523 = "H16ISPCaptureDevice: Initiating time-machine capture operation. result=0x%08X\n\n";
      }

      v524 = &buf;
LABEL_1231:
      _os_log_impl(&dword_2247DB000, v522, OS_LOG_TYPE_INFO, v523, v524, 8u);
      goto LABEL_1232;
    }

    v332 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v332 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v332;
    }

    v333 = os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT);
    if (v333)
    {
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = "StillImageCaptureNow";
      _os_log_impl(&dword_2247DB000, v332, OS_LOG_TYPE_DEFAULT, "%s - Initiating flash capture\n", &buf, 0xCu);
    }

    LODWORD(valuePtr) = H16ISP::getExternalStrobeAttached(v333);
    ConfigureExternalStrobeParameters(*v805, *(v5 + 156), valuePtr);
    if (v6 && (v335 = CFGetTypeID(v6), TypeID = CFDictionaryGetTypeID(), v335 == TypeID))
    {
      v336 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5520]);
      if (v336)
      {
        *v803 = CFEqual(v336, *MEMORY[0x277CBED28]) != 0;
      }

      else
      {
        *v803 = 0;
      }

      v506 = CFDictionaryGetValue(v6, *MEMORY[0x277CF60C0]);
      if (v506)
      {
        v507 = CFEqual(v506, *MEMORY[0x277CBED28]) == 0;
      }

      else
      {
        v507 = 1;
      }

      TypeID = CFDictionaryGetValue(v6, *MEMORY[0x277CF60C8]);
      if (TypeID)
      {
        TypeID = CFEqual(TypeID, *MEMORY[0x277CBED28]);
        v508 = TypeID == 0;
      }

      else
      {
        v508 = 1;
      }

      v509 = !v507 && !v508;
      if ((v507 | v509))
      {
        v399 = v509 & 1;
      }

      else if (*(v5 + 4360))
      {
        v399 = 2;
      }

      else
      {
        v399 = 1;
      }
    }

    else
    {
      *v803 = 0;
      v399 = 0;
    }

    if (v809)
    {
      for (k = 0; k < v809; ++k)
      {
        v401 = LOBYTE(__src[3]);
        if (LOBYTE(__src[3]))
        {
          LODWORD(v402) = 0;
          v403 = &__src[17] + 1;
          do
          {
            v404 = *v403;
            v403 += 64;
            if ((v404 & 0xFE) == 2)
            {
              v402 = (v402 + 1);
            }

            else
            {
              v402 = v402;
            }

            --v401;
          }

          while (v401);
        }

        else
        {
          v402 = 0;
        }

        v405 = v814[k];
        v406 = *(v405 + 4256);
        v407 = 1;
        *(v858 + k) = 1;
        if (v399 == 1 || v399 == 2 && *(v405 + 4369) == 1)
        {
          v407 = 2;
          *(v858 + k) = 2;
        }

        if (v406)
        {
          v402 = 0;
        }

        v408 = -58200 * v402;
        if (v779)
        {
          v409 = v407;
        }

        else
        {
          v409 = 0;
        }

        TypeID = AllocateAndSendOneShotBuffers(v405 + v408, v407, v409, v777 == -1, v776 == -1, 0);
      }

      if (TypeID)
      {
LABEL_724:
        v12 = 4294954610;
LABEL_908:
        v11 = v762;
        goto LABEL_6;
      }
    }

    v410 = *(v5 + 156);
    if (*(v785 + 8 + 104 * v410 + 16))
    {
      v411 = valuePtr;
      if (*(v5 + 4184))
      {
        v411 = 1;
      }

      if ((v411 & 1) == 0)
      {
        TypeID = H16ISPDisplayStrobePrepare(*(v785 + 678));
        *(v5 + 4184) = TypeID;
        v410 = *(v5 + 156);
      }
    }

    v412 = *(v785 + 8 + 104 * v410 + 8);
    if (v412 == 1919246706 || v412 == 1919251564 || v412 == 1919251319)
    {
      LODWORD(buf.value) = 0;
      TypeID = H16ISP::H16ISPDevice::ISP_PPMAdmissionCheck(*(*v805 + 24), 1u, 0, 0x10000u, &buf);
      v415 = buf.value;
      if (LODWORD(buf.value) >= 0x10000)
      {
        v415 = 0x10000;
      }

      if (TypeID)
      {
        CameraStrobeMaxLoad = -1;
      }

      else
      {
        CameraStrobeMaxLoad = v415;
      }
    }

    else
    {
      CameraStrobeMaxLoad = -1;
    }

    v505 = valuePtr;
    if (!*(v5 + 4184))
    {
      v505 = 1;
    }

    if (v505)
    {
LABEL_1212:
      if (CameraStrobeMaxLoad == -1)
      {
        CameraStrobeMaxLoad = H16ISP::getCameraStrobeMaxLoad(TypeID);
      }

      bzero(v847, 0x30uLL);
      WORD2(v847[0].value) = 540;
      v682 = v847[0].timescale & 0x7FFF0000 | *(v5 + 156);
      v683 = v809;
      LOWORD(v847[0].flags) = *v803;
      *(&v847[0].flags + 2) = 0;
      *(&v847[0].epoch + 4) = 0;
      WORD2(v847[1].value) = -1;
      v847[0].timescale = v682 | ((v809 > 1uLL) << 31);
      v847[1].timescale = v782;
      v847[1].flags = CameraStrobeMaxLoad;
      HIDWORD(v847[1].epoch) = v399;
      if (v809)
      {
        v684 = v814;
        v685 = v858;
        do
        {
          v687 = *v685++;
          v686 = v687;
          v688 = *v684++;
          *(v688 + 100) += v686;
          --v683;
        }

        while (v683);
      }

      LODWORD(buf.value) = 101;
      LOBYTE(buf.timescale) = 1;
      v689 = *(*v805 + 232);
      if (v689)
      {
        H16ISP::H16ISPServicesRemote::SetProperty(v689, &buf);
      }

      if (LaunchStillImageCapture(*v805, v808, v847, 0x30u))
      {
        v690 = v809;
        if (v809)
        {
          v691 = v814;
          do
          {
            v692 = *v691++;
            *(v692 + 100) = 0;
            --v690;
          }

          while (v690);
        }

        if (*(v5 + 4184))
        {
          DisableDisplayStrobeOverlay(v5);
        }

        v693 = *(*v805 + 232);
        if (v693)
        {
          LOBYTE(buf.timescale) = 0;
          H16ISP::H16ISPServicesRemote::SetProperty(v693, &buf);
        }

        goto LABEL_849;
      }

      v522 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v522 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v522;
      }

      if (!os_log_type_enabled(v522, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1232;
      }

      __b[0] = 67109120;
      v523 = "H16ISPCaptureDevice: Initiating shutter+strobe operation. result=0x%08X\n\n";
      v524 = __b;
      goto LABEL_1231;
    }

    if (H16ISP::H16ISPDevice::PrepareCommand(*(*v805 + 24), *(v5 + 156), 1))
    {
LABEL_907:
      v12 = 4294954611;
      goto LABEL_908;
    }

    H16ISPDisplayStrobeSetScreenBrightness(*(v5 + 4184), 0);
    if (dword_28100331C)
    {
      v510 = HIBYTE(dword_28100331C);
      v511 = BYTE2(dword_28100331C);
      v512 = BYTE1(dword_28100331C);
      v513 = dword_28100331C;
      v514 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v514 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v514;
      }

      v515 = vcvtd_n_f64_u32(v510, 8uLL);
      v516 = vcvtd_n_f64_u32(v511, 8uLL);
      v517 = vcvtd_n_f64_u32(v512, 8uLL);
      v518 = vcvtd_n_f64_u32(v513, 8uLL);
      if (!os_log_type_enabled(v514, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1209;
      }

      LODWORD(buf.value) = 134218752;
      *(&buf.value + 4) = v515;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v516;
      HIWORD(buf.epoch) = 2048;
      *v828 = v517;
      *&v828[8] = 2048;
      v829 = v518;
      v519 = "Override Display Strobe RGBA Params R=%4.3f G=%4.3f B=%4.3f A=%4.3f\n\n";
      v520 = v514;
      v521 = 42;
    }

    else
    {
      v673 = *(v5 + 4192);
      v674 = *(v5 + 4194);
      v675 = *(v5 + 4196);
      v676 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v676 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v676;
      }

      v515 = vcvtd_n_f64_u32(v673, 0x10uLL);
      v516 = vcvtd_n_f64_u32(v674, 0x10uLL);
      v517 = vcvtd_n_f64_u32(v675, 0x10uLL);
      v518 = 1.0;
      if (!os_log_type_enabled(v676, OS_LOG_TYPE_INFO))
      {
        goto LABEL_1209;
      }

      v677 = *(v5 + 4192);
      v678 = *(v5 + 4194);
      v679 = *(v5 + 4196);
      LODWORD(buf.value) = 67110400;
      HIDWORD(buf.value) = v677;
      LOWORD(buf.timescale) = 2048;
      *(&buf.timescale + 2) = v515;
      WORD1(buf.epoch) = 1024;
      HIDWORD(buf.epoch) = v678;
      *v828 = 2048;
      *&v828[2] = v516;
      LOWORD(v829) = 1024;
      *(&v829 + 2) = v679;
      HIWORD(v829) = 2048;
      v830 = v517;
      v519 = "Current AWB RGBEstimate R=0x%04X (%4.3f) G=0x%04X (%4.3f) B=0x%04X (%4.3f)\n\n";
      v520 = v676;
      v521 = 50;
    }

    _os_log_impl(&dword_2247DB000, v520, OS_LOG_TYPE_INFO, v519, &buf, v521);
LABEL_1209:
    *&buf.value = v515;
    *&buf.timescale = v516;
    *&buf.epoch = v517;
    *v828 = v518;
    H16ISPDisplayStrobeSetScreenColor(*(v5 + 4184), &buf);
    LODWORD(v847[0].value) = 0;
    StrobeBrightnessRatio = H16ISPDisplayGetStrobeBrightnessRatio(*(v5 + 4184), v847);
    v681 = vcvtd_n_u64_f64(*&v847[0].value, 0x10uLL);
    if (!StrobeBrightnessRatio)
    {
      CameraStrobeMaxLoad = v681;
    }

    TypeID = usleep(0x3A98u);
    goto LABEL_1212;
  }

  v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v69 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v69;
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.value) = 136315138;
    *(&buf.value + 4) = "StillImageCaptureNow";
    _os_log_impl(&dword_2247DB000, v69, OS_LOG_TYPE_DEFAULT, "%s - Initiating manual bracketed capture\n", &buf, 0xCu);
  }

  memset_pattern16(v858, &unk_2249BBDF0, 0x54uLL);
  memset_pattern16(__b, &unk_2249BBE00, 0x54uLL);
  memset_pattern16(v856, &unk_2249BBDF0, 0x54uLL);
  memset_pattern16(v857, &unk_2249BBE00, 0x54uLL);
  v70 = CFArrayGetCount(theArray);
  if ((v70 - 22) < 0xFFFFFFFFFFFFFFEBLL)
  {
    goto LABEL_33;
  }

  v762 = v11;
  v71 = 0;
  *v803 = v70;
  LODWORD(v799) = valuePtr + v70;
  LODWORD(v800) = valuePtr + v70 + 1;
  cf = *MEMORY[0x277CF5638];
  v72 = *MEMORY[0x277CF5608];
  do
  {
    v73 = CFArrayGetValueAtIndex(theArray, v71);
    if (!v73)
    {
      break;
    }

    v74 = v73;
    v75 = CFGetTypeID(v73);
    if (v75 != CFDictionaryGetTypeID())
    {
      break;
    }

    v76 = CFDictionaryGetValue(v74, cf);
    v77 = CFDictionaryGetValue(v74, v72);
    if (!v76)
    {
      break;
    }

    v78 = v77;
    if (!v77)
    {
      break;
    }

    CFNumberGetValue(v76, kCFNumberSInt32Type, __b + 4 * v71);
    CFNumberGetValue(v78, kCFNumberSInt32Type, &v858[v71]);
    v79 = v809;
    if (v809)
    {
      v80 = *(__b + v71);
      v81 = v810;
      do
      {
        *v81++ += v80;
        --v79;
      }

      while (v79);
    }

    v71 = (v71 + 1);
  }

  while (v71 < *v803);
  if (*(v5 + 4360))
  {
    v82 = CFDictionaryGetValue(v6, *MEMORY[0x277CF5670]);
    v83 = v82;
    if (v82 && (v84 = CFGetTypeID(v82), v84 == CFArrayGetTypeID()))
    {
      if (CFArrayGetCount(v83) != *v803)
      {
        goto LABEL_849;
      }

      v85 = 1;
    }

    else
    {
      v85 = 0;
    }

    v232 = 0;
    v233 = 1;
    do
    {
      if (v85)
      {
        v234 = CFArrayGetValueAtIndex(v83, v232);
        if (!v234)
        {
          break;
        }

        v235 = v234;
        v236 = CFGetTypeID(v234);
        if (v236 != CFDictionaryGetTypeID())
        {
          break;
        }

        v237 = CFDictionaryGetValue(v235, cf);
        v238 = CFDictionaryGetValue(v235, v72);
        if (!v237)
        {
          break;
        }

        v239 = v238;
        if (!v238)
        {
          break;
        }

        CFNumberGetValue(v237, kCFNumberSInt32Type, &v857[v232]);
        CFNumberGetValue(v239, kCFNumberSInt32Type, &v856[v232]);
      }

      else
      {
        v857[v232] = *(__b + v232);
        v856[v232] = v858[v232];
      }

      v232 = v233;
    }

    while (*v803 > v233++);
  }

  if (v777 == -1)
  {
    v241 = v799;
  }

  else
  {
    v241 = 0;
  }

  if (v776 == -1)
  {
    v242 = v799;
  }

  else
  {
    v242 = 0;
  }

  v11 = v762;
  v243 = v800;
  if (!v809)
  {
LABEL_446:
    v247 = v790;
    if (v790 == 0xFFFF)
    {
      if (*(v5 + 4360))
      {
        v247 = 7;
      }

      else
      {
        v247 = 2;
      }
    }

    if (H16ISP::H16ISPDevice::SetAEBracketingMode(*(*v805 + 24), v761, v247, v782))
    {
      goto LABEL_33;
    }

    if (v788 && (v248 = CFGetTypeID(v788), v248 == CFDictionaryGetTypeID()))
    {
      v249 = CFDictionaryGetValue(v788, *MEMORY[0x277CF57E0]);
      if (!v249)
      {
        goto LABEL_620;
      }

      v250 = v249;
      v251 = CFGetTypeID(v249);
      if (v251 != CFArrayGetTypeID())
      {
        goto LABEL_849;
      }

      if (CFArrayGetCount(v250))
      {
        v252 = 0;
        v253 = &v847[0].value + 3;
        while (1)
        {
          v254 = CFArrayGetValueAtIndex(v250, v252);
          if (!v254)
          {
            break;
          }

          v255 = v254;
          v256 = CFGetTypeID(v254);
          if (v256 != CFDictionaryGetTypeID())
          {
            break;
          }

          LODWORD(buf.value) = 0;
          v855[0] = 0;
          *v807 = 0;
          v806 = 0;
          if (H16ISPGetRectParamsFromDict(v255, &buf, v855, &v807[1], v807, &v806, 1u))
          {
            break;
          }

          *(v253 - 3) = v252;
          *(v253 - 1) = buf.value;
          *v253 = v855[0];
          v253[1] = v807[1];
          v253[2] = v807[0];
          v257 = v252 + 1;
          v258 = CFArrayGetCount(v250);
          if (v252 <= 0xE)
          {
            v253 += 6;
            ++v252;
            if (v257 < v258)
            {
              continue;
            }
          }

          goto LABEL_814;
        }

        LOWORD(v257) = v252;
      }

      else
      {
LABEL_620:
        LOWORD(v257) = 0;
      }

LABEL_814:
      v281 = cf2;
      v282 = *v803;
      v243 = v800;
    }

    else
    {
      LOWORD(v257) = 0;
      v281 = cf2;
      v282 = *v803;
    }

    v450 = v809;
    if (v809)
    {
      v451 = v814;
      v452 = v809;
      do
      {
        v453 = *v451++;
        *(v453 + 100) += v243;
        --v452;
      }

      while (v452);
    }

    if (*(v5 + 4360))
    {
      v454 = v450 > 1;
      bzero(&buf, 0x204uLL);
      v455 = 0;
      if (v281)
      {
        v456 = 590;
      }

      else
      {
        v456 = 582;
      }

      WORD2(buf.value) = v456;
      buf.timescale = buf.timescale & 0x7FFF0000 | (v454 << 31) | *(v5 + 156);
      LOWORD(buf.flags) = v282;
      *&v837[2] = v257;
      *&v837[36] = *&v847[1].timescale;
      *&v837[52] = *&v847[2].value;
      *&v837[4] = *&v847[0].value;
      *&v837[20] = *&v847[0].epoch;
      *&v837[100] = *&v847[4].value;
      v838 = *&v847[4].epoch;
      *&v837[68] = *&v847[2].epoch;
      *&v837[84] = *&v847[3].timescale;
      v840 = *&v847[6].epoch;
      v841 = *&v847[7].timescale;
      *v839 = *&v847[5].timescale;
      *&v839[16] = *&v847[6].value;
      do
      {
        v457 = &buf + 4 * v455;
        *(v457 + 4) = *(__b + v455);
        v458 = &buf + 2 * v455;
        *(v458 + 50) = v858[v455];
        *(v457 + 97) = v857[v455];
        *(v458 + 236) = v856[v455++];
      }

      while (v282 > v455);
      if (valuePtr)
      {
        v842 = 1;
        v844 = valuePtr;
        v846 = v773;
        v843 = v767 & 1;
        if (v773)
        {
          v459 = 1;
        }

        else
        {
          v459 = 2;
        }

        v845 = v459;
      }

      v460 = *v805;
      v461 = 516;
    }

    else
    {
      bzero(&buf, 0x184uLL);
      v462 = 0;
      if (v281)
      {
        v463 = 587;
      }

      else
      {
        v463 = 563;
      }

      WORD2(buf.value) = v463;
      buf.timescale = *(v5 + 156) | buf.timescale & 0x7FFF0000;
      LOWORD(buf.flags) = v282;
      *&v837[2] = v257;
      *&v837[36] = *&v847[1].timescale;
      *&v837[52] = *&v847[2].value;
      *&v837[4] = *&v847[0].value;
      *&v837[20] = *&v847[0].epoch;
      *&v837[100] = *&v847[4].value;
      v838 = *&v847[4].epoch;
      *&v837[68] = *&v847[2].epoch;
      *&v837[84] = *&v847[3].timescale;
      v840 = *&v847[6].epoch;
      v841 = *&v847[7].timescale;
      *v839 = *&v847[5].timescale;
      *&v839[16] = *&v847[6].value;
      do
      {
        *(&buf.epoch + v462) = *(__b + v462);
        *(&v834 + v462 + 4) = v858[v462];
        ++v462;
      }

      while (v282 > v462);
      if (valuePtr)
      {
        v842 = 1;
        v844 = valuePtr;
        v846 = v773;
        v843 = v767 & 1;
        if (v773)
        {
          v464 = 1;
        }

        else
        {
          v464 = 2;
        }

        v845 = v464;
      }

      v460 = *v805;
      v461 = 388;
    }

    v465 = LaunchStillImageCapture(v460, v808, &buf, v461);
    v466 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v466 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v466;
    }

    if (os_log_type_enabled(v466, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v465;
      _os_log_impl(&dword_2247DB000, v466, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual bracketed capture operation. result=0x%08X\n\n", &buf, 8u);
    }

    if (v465)
    {
      v467 = v809;
      if (v809)
      {
        v468 = v814;
        do
        {
          v469 = *v468++;
          *(v469 + 100) = 0;
          --v467;
        }

        while (v467);
      }

      goto LABEL_849;
    }

    goto LABEL_1232;
  }

  v244 = 0;
  if (v779)
  {
    v245 = v800;
  }

  else
  {
    v245 = 0;
  }

  while (1)
  {
    v246 = v814[v244];
    *(v246 + 576) = v795;
    if (AllocateAndSendOneShotBuffers(v246, v800, v245, v241, v242, 0))
    {
      break;
    }

    if (++v244 >= v809)
    {
      goto LABEL_446;
    }
  }

  v12 = 4294954610;
LABEL_6:
  if (v10)
  {
    UnlockStreamMutexes(v10);
    pthread_mutex_lock(v11);
    CFRelease(v10);
  }

  return v12;
}

uint64_t AutoAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = H16ISP::H16ISPDevice::AEUpdateSuspend(*(a4 + 24), *(a2 + 156));
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v5;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Reverting to auto-exposure, result=0x%08X\n\n", v7, 8u);
  }

  if (v4)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t AutoFocusNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 100))
  {
    return 4294954608;
  }

  v7 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v7 |= 0x80000000;
  }

  if (*(a2 + 652) == -1)
  {
    bzero(v12, 0xCuLL);
    v14 = v14 & 0x7FFF0000 | v7;
    v13 = 1031;
    v10 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v12, 0xCu, 0, 0xFFFFFFFF);
    v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v10;
      _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating auto-focus operation, res=0x%08X\n\n", buf, 8u);
    }

    if (v10)
    {
      return 4294954516;
    }
  }

  else
  {
    bzero(v12, 0x14uLL);
    v14 = v14 & 0x7FFF0000 | v7;
    v13 = -31736;
    v15 = 0x600000000;
    v8 = H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v12, 0x14u, 0, 0xFFFFFFFF);
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = v8;
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating peak tracking auto-focus operation, res=0x%08X\n\n", buf, 8u);
    }

    if (v8)
    {
      return 4294954516;
    }
  }

  result = 0;
  *(a2 + 552) = 1;
  return result;
}

uint64_t CopyDeferAdditionOfAttachments(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 696))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyTemporalNoiseReductionEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED28];
  if (!*(a3 + 108))
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t CopyTemporalNoiseReductionConfiguration(const __CFAllocator *a1, __CFDictionary **a2, _BYTE *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v7 = Mutable;
  if (!Mutable)
  {
    goto LABEL_22;
  }

  v8 = *MEMORY[0x277CBED28];
  v9 = *MEMORY[0x277CBED10];
  if (a3[109])
  {
    v10 = *MEMORY[0x277CBED28];
  }

  else
  {
    v10 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x277CF62D0], v10);
  if (a3[110])
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  CFDictionarySetValue(v7, *MEMORY[0x277CF62F0], v11);
  v12 = CFNumberCreate(0, kCFNumberIntType, a3 + 116);
  if (v12)
  {
    v13 = v12;
    CFDictionarySetValue(v7, *MEMORY[0x277CF62D8], v12);
    CFRelease(v13);
  }

  v14 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v14)
  {
    v15 = v14;
    v16 = CFNumberCreate(0, kCFNumberFloatType, a3 + 120);
    if (v16)
    {
      v17 = v16;
      CFDictionarySetValue(v15, *MEMORY[0x277CF62C0], v16);
      CFRelease(v17);
    }

    v18 = CFNumberCreate(0, kCFNumberFloatType, a3 + 124);
    if (v18)
    {
      v19 = v18;
      CFDictionarySetValue(v15, *MEMORY[0x277CF62C8], v18);
      CFRelease(v19);
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62E0], v15);
    CFRelease(v15);
    if (a3[112])
    {
      v20 = v8;
    }

    else
    {
      v20 = v9;
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62E8], v20);
    if (a3[128])
    {
      v21 = v8;
    }

    else
    {
      v21 = v9;
    }

    CFDictionarySetValue(v7, *MEMORY[0x277CF62F8], v21);
    result = 0;
  }

  else
  {
LABEL_22:
    result = 4294954510;
  }

  *a2 = v7;
  return result;
}

uint64_t CopyTemporalNoiseReductionConfigurationSupportedKeys(const __CFAllocator *a1, __CFArray **a2)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x277CBF128]);
  v4 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, *MEMORY[0x277CF62D0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62F0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62D8]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62E0]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62E8]);
    CFArrayAppendValue(v4, *MEMORY[0x277CF62F8]);
    result = 0;
  }

  else
  {
    result = 4294954510;
  }

  *a2 = v4;
  return result;
}

uint64_t SetFaceDetectionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D86220];
  if (!a1 || (v8 = *(a2 + 105), v9 = CFGetTypeID(a1), v9 != CFBooleanGetTypeID()))
  {
LABEL_15:
    v11 = 4294954516;
    goto LABEL_16;
  }

  v10 = CFEqual(a1, *MEMORY[0x277CBED28]);
  *(a2 + 105) = v10 != 0;
  if ((*(a2 + 160) == 0) | (v8 != 0) ^ (v10 == 0))
  {
    v11 = 0;
  }

  else
  {
    v11 = 4294954514;
  }

  if ((*(a2 + 160) == 0) | (v8 != 0) ^ (v10 == 0))
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v11 = ActivateFaceDetectionOutputInFrameReceiver(a2, a4);
    if (v11)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        SetFaceDetectionEnabled();
      }

      goto LABEL_15;
    }
  }

LABEL_16:
  v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v5)
  {
    v14 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 105) == 1)
    {
      v15 = "True";
    }

    else
    {
      v15 = "False";
    }

    v17 = 136315138;
    v18 = v15;
    _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable Face Detection: %s\n\n", &v17, 0xCu);
  }

  return v11;
}

uint64_t CopyFaceDetectionEnabled(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CBED10];
  if (*(a3 + 105))
  {
    v4 = MEMORY[0x277CBED28];
  }

  v5 = *v4;
  CFRetain(*v4);
  *a2 = v5;
  return 0;
}

uint64_t SetFaceDetectionMode(const void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    v5 = 4294954516;
    if (v4 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(a1, kCFNumberIntType, (a2 + 4172)))
      {
        v5 = 0;
      }

      else
      {
        v5 = 4294954516;
      }
    }
  }

  else
  {
    v5 = 4294954516;
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 4172);
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Set Face Detection Mode: %u\n\n", v9, 8u);
  }

  return v5;
}

uint64_t CopyLuxAdaptiveParameters(const __CFAllocator *a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 0, &v56);
  if (v9 || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 1, capacity), v10) || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 2, v54), v11) || (H16ISP::H16ISPDevice::GetLuxAdaptiveSettings(*(a5 + 24), *(a3 + 156), 4, v53), v12))
  {
    Mutable = 0;
    result = 4294954516;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      valuePtr = 0;
      v15 = CFArrayCreateMutable(a1, v56, MEMORY[0x277CBF128]);
      if (v15)
      {
        v16 = v15;
        if (v56)
        {
          v17 = 1;
          do
          {
            valuePtr = *(&v56 + v17);
            v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v16, v18);
            CFRelease(v18);
            v19 = v17++ >= v56;
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5588], v16);
        CFRelease(v16);
      }

      v20 = CFArrayCreateMutable(a1, v56, MEMORY[0x277CBF128]);
      if (v20)
      {
        v21 = v20;
        if (v56)
        {
          v22 = 18;
          do
          {
            valuePtr = *(&v56 + v22);
            v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v21, v23);
            CFRelease(v23);
            v24 = v22 - 17;
            ++v22;
          }

          while (v24 < v56);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5580], v21);
        CFRelease(v21);
      }

      v25 = CFArrayCreateMutable(a1, LOWORD(capacity[0]), MEMORY[0x277CBF128]);
      if (v25)
      {
        v26 = v25;
        if (LOWORD(capacity[0]))
        {
          v27 = 1;
          do
          {
            valuePtr = *(capacity + v27);
            v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v26, v28);
            CFRelease(v28);
            v19 = v27++ >= LOWORD(capacity[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5730], v26);
        CFRelease(v26);
      }

      v29 = CFArrayCreateMutable(a1, LOWORD(capacity[0]), MEMORY[0x277CBF128]);
      if (v29)
      {
        v30 = v29;
        if (LOWORD(capacity[0]))
        {
          v31 = 18;
          do
          {
            valuePtr = *(capacity + v31);
            v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v30, v32);
            CFRelease(v32);
            v33 = v31 - 17;
            ++v31;
          }

          while (v33 < LOWORD(capacity[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5728], v30);
        CFRelease(v30);
      }

      v34 = CFArrayCreateMutable(a1, LOWORD(v54[0]), MEMORY[0x277CBF128]);
      if (v34)
      {
        v35 = v34;
        if (LOWORD(v54[0]))
        {
          v36 = 1;
          do
          {
            valuePtr = *(v54 + v36);
            v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v35, v37);
            CFRelease(v37);
            v19 = v36++ >= LOWORD(v54[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5598], v35);
        CFRelease(v35);
      }

      v38 = CFArrayCreateMutable(a1, LOWORD(v54[0]), MEMORY[0x277CBF128]);
      if (v38)
      {
        v39 = v38;
        if (LOWORD(v54[0]))
        {
          v40 = 18;
          do
          {
            valuePtr = *(v54 + v40);
            v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v39, v41);
            CFRelease(v41);
            v42 = v40 - 17;
            ++v40;
          }

          while (v42 < LOWORD(v54[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5590], v39);
        CFRelease(v39);
      }

      v43 = CFArrayCreateMutable(a1, LOWORD(v53[0]), MEMORY[0x277CBF128]);
      if (v43)
      {
        v44 = v43;
        if (LOWORD(v53[0]))
        {
          v45 = 1;
          do
          {
            valuePtr = *(v53 + v45);
            v46 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v44, v46);
            CFRelease(v46);
            v19 = v45++ >= LOWORD(v53[0]);
          }

          while (!v19);
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5578], v44);
        CFRelease(v44);
      }

      v47 = CFArrayCreateMutable(a1, LOWORD(v53[0]), MEMORY[0x277CBF128]);
      if (v47)
      {
        v48 = v47;
        if (LOWORD(v53[0]))
        {
          v49 = 18;
          do
          {
            valuePtr = *(v53 + v49);
            v50 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            CFArrayAppendValue(v48, v50);
            CFRelease(v50);
            v51 = v49 - 17;
            ++v49;
          }

          while (v51 < LOWORD(v53[0]));
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CF5570], v48);
        CFRelease(v48);
      }
    }

    result = 0;
  }

  *a2 = Mutable;
  return result;
}

uint64_t CopyModuleInfo(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v9 = Mutable;
    valuePtr = *(a3 + 180);
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v9, *MEMORY[0x277CF3EA0], v10);
    CFRelease(v10);
    if (!H16ISP::H16ISPDevice::GetCameraConfig(*(a5 + 24), *(a3 + 156), 0, v29, v34))
    {
      valuePtr = v37;
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E80], v11);
      CFRelease(v11);
      valuePtr = v38;
      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E68], v12);
      CFRelease(v12);
      valuePtr = v35;
      v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E78], v13);
      CFRelease(v13);
      valuePtr = v39;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E58], v14);
      CFRelease(v14);
      valuePtr = v36;
      v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v9, *MEMORY[0x277CF3E70], v15);
      CFRelease(v15);
      v16 = CFStringCreateWithCString(0, v49, 0);
      if (v16)
      {
        v17 = v16;
        CFDictionarySetValue(v9, @"ModuleSerialNumber", v16);
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E88], v17);
        CFRelease(v17);
      }

      *__str = 0;
      v32 = 0;
      v33 = 0;
      snprintf(__str, 0x11uLL, "%02X%02X%02X%02X%02X%02X%02X%02X", v40, v41, v42, v43, v44, v45, v46, v47);
      v18 = CFStringCreateWithCString(0, __str, 0);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3EA8], v18);
        CFRelease(v19);
      }

      v28 = 0;
      *cStr = 0;
      snprintf(cStr, 5uLL, "%04X", v48);
      v20 = CFStringCreateWithCString(0, cStr, 0);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E60], v20);
        CFRelease(v21);
      }

      v22 = CFStringCreateWithCString(0, v51, 0);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(v9, *MEMORY[0x277CF3E98], v22);
        CFRelease(v23);
      }

      v24 = CFStringCreateWithCString(0, v50, 0);
      if (v24)
      {
        v25 = v24;
        CFDictionarySetValue(v9, @"StrobeSerialNumber", v24);
        CFRelease(v25);
      }
    }

    *a2 = v9;
  }

  return 0;
}

uint64_t CopyColorHistogram(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  bzero(v10, 0x400CuLL);
  v11 = -16372;
  v12 = *(v4 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(v2 + 24), v10, 0x400Cu, 0, 0xFFFFFFFF))
  {
    v7 = 0;
    v8 = 4294954513;
  }

  else
  {
    v7 = CFDataCreate(0, v13, 0x4000);
    v8 = 0;
  }

  *v6 = v7;
  return v8;
}

uint64_t SetAWBScheme(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
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
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = H16ISP::H16ISPDevice::SetAWBScheme(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Selected AWB Scheme: %d result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAWBScheme(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  if (H16ISP::H16ISPDevice::GetAWBScheme(*(a5 + 24), *(a3 + 156), &v10))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    valuePtr = v10;
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopyMaxIntegrationTime(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  if (H16ISP::H16ISPDevice::GetMaxIntegrationTime(*(a5 + 24), *(a3 + 156), &v11))
  {
    v7 = 0;
    v8 = 4294954513;
  }

  else
  {
    LODWORD(v6) = v11;
    v10 = v6 / 1000.0;
    v7 = CFNumberCreate(0, kCFNumberDoubleType, &v10);
    v8 = 0;
  }

  *a2 = v7;
  return v8;
}

uint64_t CopyMinIntegrationTime(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetMinIntegrationTime(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopySensorTemperature(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetSensorTemperature(*(a5 + 24), *(a3 + 156), &valuePtr, 0))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopySensorPixelClock(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetCurrentPixClockFrequencyIndex(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    return 4294954513;
  }

  if (H16ISP::H16ISPDevice::GetPixClockFrequencyForIndex(*(a5 + 24), *(a3 + 156), valuePtr, &valuePtr + 1))
  {
    v9 = 0;
    result = 4294954513;
  }

  else
  {
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
    result = 0;
  }

  *a2 = v9;
  return result;
}

uint64_t CopyAlternateOutputSizeLimits(uint64_t a1, __CFDictionary **a2, uint64_t a3)
{
  if (*(a3 + 698))
  {
    Mutable = 0;
    result = 4294954509;
  }

  else
  {
    v7 = *(a3 + 48);
    v8 = *(a3 + 192);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      if (v7 >= v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v7 - v9;
      valuePtr = *(*(a3 + 184) + 120 * (v7 - v9) + 28) >> 2;
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56F8], v11);
      CFRelease(v11);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 32) >> 2;
      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56E0], v12);
      CFRelease(v12);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 28);
      v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56F0], v13);
      CFRelease(v13);
      valuePtr = *(*(a3 + 184) + 120 * v10 + 32);
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF56D8], v14);
      CFRelease(v14);
      result = 0;
    }

    else
    {
      result = 4294954510;
    }
  }

  *a2 = Mutable;
  return result;
}

uint64_t SetAEMinGain(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (HIWORD(valuePtr))
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetMinimumGainCap(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Minimum Gain Cap: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEMinGain(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetMinimumGainCap(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetAEGainThresholdForFlickerZoneIntegrationTimeTransition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = H16ISP::H16ISPDevice::SetAEMaxGainCapWithExposureUpdate(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Max Gain Cap With Exposure Update: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEGainThresholdForFlickerZoneIntegrationTimeTransition(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAEMaxGainCapWithExposureUpdate(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t SetAEIntegrationTimeForUnityGainToMinGainTransition(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v8 = H16ISP::H16ISPDevice::SetAEGainCapOffExposureUpdate(*(a4 + 24), *(a2 + 156), valuePtr);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v13 = valuePtr;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting AE Gain Cap Off Exposure Update: 0x%08X, result=0x%08X\n\n", buf, 0xEu);
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

uint64_t CopyAEIntegrationTimeForUnityGainToMinGainTransition(uint64_t a1, CFNumberRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  valuePtr = 0;
  if (H16ISP::H16ISPDevice::GetAEGainCapOffExposureUpdate(*(a5 + 24), *(a3 + 156), &valuePtr))
  {
    v6 = 0;
    v7 = 4294954513;
  }

  else
  {
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v7 = 0;
  }

  *a2 = v6;
  return v7;
}

uint64_t CopyErrorCounters(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v17 = 0;
  valuePtr = 0;
  *v16 = 0;
  if (H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 0, &valuePtr + 1) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 1, &valuePtr) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 2, &v17[1]) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 3, v17) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 4, &v16[1]) || H16ISP::H16ISPDevice::GetErrorCount(*(a5 + 24), *(a3 + 156), 6, v16))
  {
    v8 = 0;
    result = 4294954513;
  }

  else
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v8 = result;
    if (result)
    {
      v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5660], v10);
      CFRelease(v10);
      v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionarySetValue(v8, *MEMORY[0x277CF5620], v11);
      CFRelease(v11);
      v12 = CFNumberCreate(0, kCFNumberIntType, &v17[1]);
      CFDictionarySetValue(v8, @"SIFErrorCount", v12);
      CFRelease(v12);
      v13 = CFNumberCreate(0, kCFNumberIntType, v17);
      CFDictionarySetValue(v8, @"UARTErrorCount", v13);
      CFRelease(v13);
      v14 = CFNumberCreate(0, kCFNumberIntType, &v16[1]);
      CFDictionarySetValue(v8, @"LPDPErrorCount", v14);
      CFRelease(v14);
      v15 = CFNumberCreate(0, kCFNumberIntType, v16);
      CFDictionarySetValue(v8, @"ProjectorErrorCount", v15);
      CFRelease(v15);
      result = 0;
    }
  }

  *a2 = v8;
  return result;
}

uint64_t SetFaceDetectionRectangleOfInterest(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID() || !CGRectMakeWithDictionaryRepresentation(a1, &v11))
  {
    return 4294954516;
  }

  v8 = H16ISP::H16ISPDevice::SetFaceDetectionWindowParam(*(a4 + 24), *(a2 + 156), ((v11.size.width * 1000.0) << 32) | ((v11.size.height * 1000.0) << 48) | ((v11.origin.y * 1000.0) << 16) | (v11.origin.x * 1000.0));
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureStreamProperty_FaceDetectionRectangleOfInterest, res=0x%08x\n\n", buf, 8u);
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

uint64_t CopyFaceDetectionRectangleOfInterest(uint64_t a1, CFDictionaryRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (H16ISP::H16ISPDevice::GetFaceDetectionWindowParam(*(a5 + 24), *(a3 + 156), &v13))
  {
    DictionaryRepresentation = 0;
    v11 = 4294954513;
  }

  else
  {
    LOWORD(v6) = v13;
    v14.origin.x = v6 / 1000.0;
    LOWORD(v7) = WORD1(v13);
    v14.origin.y = v7 / 1000.0;
    LOWORD(v8) = WORD2(v13);
    v14.size.width = v8 / 1000.0;
    LOWORD(v9) = HIWORD(v13);
    v14.size.height = v9 / 1000.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v14);
    v11 = 0;
  }

  *a2 = DictionaryRepresentation;
  return v11;
}

uint64_t CopyAutoFocusMode(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  if (H16ISP::H16ISPDevice::GetFocusMode(*(a5 + 24), *(a3 + 156), &v9))
  {
    v6 = 0;
    result = 4294954513;
  }

  else
  {
    v8 = MEMORY[0x277CF3D78];
    if (v9 != 1)
    {
      v8 = MEMORY[0x277CF3D80];
    }

    v6 = *v8;
    CFRetain(*v8);
    result = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t CopyMatrixFocusParams(uint64_t a1, __CFDictionary **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *v15 = 0;
  *v16 = 0;
  v14 = 0;
  if (H16ISP::H16ISPDevice::GetAFMatrixModeConfig(*(a5 + 24), *(a3 + 156), &v16[1], v16, &v15[1], v15, &v14))
  {
    *a2 = 0;
    return 4294954513;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v13 = v16[1];
      v8 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E38], v8);
      CFRelease(v8);
      v13 = v16[0];
      v9 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E28], v9);
      CFRelease(v9);
      v13 = v15[1];
      v10 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E20], v10);
      CFRelease(v10);
      v13 = v15[0];
      v11 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E30], v11);
      CFRelease(v11);
      v13 = v14;
      v12 = CFNumberCreate(0, kCFNumberIntType, &v13);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CF3E18], v12);
      CFRelease(v12);
    }

    result = 0;
    *a2 = Mutable;
  }

  return result;
}

uint64_t CopyMatrixFocusDebugData(uint64_t a1, CFDataRef *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *MEMORY[0x277D85DE8];
  bzero(bytes, 0xA9CuLL);
  v11 = -31731;
  v12 = *(a3 + 156);
  if (H16ISP::H16ISPDevice::ISP_SendCommand(*(a5 + 24), bytes, 0xA9Cu, 0, 0xFFFFFFFF))
  {
    v8 = 0;
    result = 4294954513;
  }

  else
  {
    v8 = CFDataCreate(0, bytes, 2716);
    result = 0;
  }

  *a2 = v8;
  return result;
}

uint64_t SetClientMaxBufferCountHint(CFTypeRef cf, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
  *(a2 + 152) = valuePtr;
  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v6 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = valuePtr;
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting Max Buffer Count Hint: %d\n\n", buf, 8u);
  }

  return 0;
}

uint64_t SetAttachRAW(const void *a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFBooleanGetTypeID()))
  {
    v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
    v6 = 0;
    *(a2 + 104) = v5 != 0;
  }

  else
  {
    v6 = 4294954516;
  }

  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 104) == 1)
    {
      v8 = "True";
    }

    else
    {
      v8 = "False";
    }

    v10 = 136315138;
    v11 = v8;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Capture Raw In Parallel: %s\n\n", &v10, 0xCu);
  }

  return v6;
}

uint64_t SetColorRange(CFTypeRef cf, uint64_t a2)
{
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFStringGetTypeID())
    {
      if (CFEqual(*MEMORY[0x277CF3D88], cf))
      {
        v6 = 0;
LABEL_9:
        result = 0;
        *(a2 + 168) = v6;
        return result;
      }

      if (CFEqual(*MEMORY[0x277CF3D90], cf))
      {
        v6 = 1;
        goto LABEL_9;
      }
    }
  }

  return 4294954516;
}

uint64_t LockAWBNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  v7 = H16ISP::H16ISPDevice::AWBUpdateSuspend(*(a4 + 24), v6);
  v8 = v7;
  v9 = *(a2 + 2304);
  v10 = *(a2 + 156);
  if (!gCaptureDeviceCFPrefs[44 * v10 + 205] && (*(a2 + 2304) & 1) == 0 && !v7)
  {
    v8 = H16ISP::H16ISPDevice::ALSSuspend(*(a4 + 24), v6);
    v10 = *(a2 + 156);
  }

  if (!gCaptureDeviceCFPrefs[44 * v10 + 204] && (v9 & 1) == 0 && !v8)
  {
    v8 = H16ISP::H16ISPDevice::LSCModulationSuspend(*(a4 + 24), v6);
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Lock AWB, result=0x%08X\n\n", v13, 8u);
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

uint64_t UnlockAWBNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v6 |= 0x80000000;
  }

  v7 = H16ISP::H16ISPDevice::AWBUpdateResume(*(a4 + 24), v6);
  v8 = v7;
  v9 = *(a2 + 2304);
  v10 = *(a2 + 156);
  if (!gCaptureDeviceCFPrefs[44 * v10 + 205] && (*(a2 + 2304) & 1) == 0 && !v7)
  {
    v8 = H16ISP::H16ISPDevice::ALSResume(*(a4 + 24), v6);
    v10 = *(a2 + 156);
  }

  if (!gCaptureDeviceCFPrefs[44 * v10 + 204] && (v9 & 1) == 0 && !v8)
  {
    v8 = H16ISP::H16ISPDevice::LSCModulationResume(*(a4 + 24), v6);
  }

  v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v11;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Unlock AWB, result=0x%08X\n\n", v13, 8u);
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

uint64_t LockAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::AEUpdateSuspend(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Lock AE, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t UnlockAENow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::AEUpdateResume(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Unlock AE, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetTorchLevel(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v25 = *MEMORY[0x277D85DE8];
  LODWORD(v23) = 101;
  v7 = CFGetTypeID(v1);
  if (v7 != CFNumberGetTypeID() || !*(v5 + 668))
  {
    return 4294954516;
  }

  valuePtr = 0.0;
  CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr);
  v8 = MEMORY[0x277D86220];
  if (valuePtr >= 1.0)
  {
    v9 = 255;
  }

  else
  {
    if (valuePtr <= 0.0)
    {
      v15 = H16ISP::H16ISPDevice::DisableTorch(*(v3 + 24), *(v5 + 156));
      if (!*(v5 + 160))
      {
        H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v5 + 156), 0, 0);
      }

      *(v5 + 4513) = 0;
      v9 = 0;
      if (v15)
      {
        v10 = 4294954516;
        goto LABEL_34;
      }

      v10 = 0;
      v16 = *(v3 + 232);
      if (!v16)
      {
        goto LABEL_34;
      }

LABEL_28:
      v24 = 0;
      H16ISP::H16ISPServicesRemote::SetProperty(v16, &v23);
      goto LABEL_34;
    }

    if ((valuePtr * 255.0) <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (valuePtr * 255.0);
    }
  }

  if (dword_28100313C)
  {
    if (dword_28100313C >= 0xFF)
    {
      v9 = 255;
    }

    else
    {
      v9 = dword_28100313C;
    }

    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v20 = v9;
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Torch Level Override: %d.\n\n", buf, 8u);
    }
  }

  v13 = *(v3 + 232);
  if (v13)
  {
    v24 = 1;
    H16ISP::H16ISPServicesRemote::SetProperty(v13, &v23);
  }

  if (*(v5 + 4512) == 1)
  {
    H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v5 + 156), 1u, 1u);
    v14 = H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(*(v3 + 24), *(v5 + 156), (v9 << 23) & 0xFF000000 | ((v9 >> 1) << 8));
  }

  else
  {
    if (!*(v5 + 160))
    {
      H16ISP::H16ISPDevice::ISP_EnableSensorPower(*(v3 + 24), *(v5 + 156), 1u, 1u);
    }

    v14 = H16ISP::H16ISPDevice::EnableTorch(*(v3 + 24), *(v5 + 156), v9);
  }

  v15 = v14;
  *(v5 + 4513) = 1;
  if (!v14)
  {
    v10 = 0;
    goto LABEL_34;
  }

  v16 = *(v3 + 232);
  v10 = 4294954516;
  if (v16)
  {
    goto LABEL_28;
  }

LABEL_34:
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == v8)
  {
    v17 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v20 = v9;
    v21 = 1024;
    v22 = v15;
    _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting torch level to %d. result=0x%08X\n\n", buf, 0xEu);
  }

  return v10;
}

uint64_t SetAFWindowParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v68[124] = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *values = 0u;
  if (!a1)
  {
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v24 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v24;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      SetAFWindowParams();
    }

    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    if (v7 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if ((Count - 17) > 0xFFFFFFFFFFFFFFEFLL)
      {
        v69.location = 0;
        v69.length = Count;
        CFArrayGetValues(a1, v69, values);
        goto LABEL_4;
      }

      v25 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v25 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v25;
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }
    }

    else
    {
      v26 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v26 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v26;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }
    }

    return 4294954516;
  }

  values[0] = a1;
  Count = 1;
LABEL_4:
  v9 = *(a2 + 156);
  v36 = a4;
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v9 |= 0x80000000;
  }

  v35 = v9;
  v10 = 0;
  valuePtr = 0;
  key = *MEMORY[0x277CF3EB0];
  cf2 = *MEMORY[0x277CBED10];
  v37 = *MEMORY[0x277CF3DA0];
  v11 = v68;
  v38 = -1;
  v12 = -1;
  v40 = Count;
  do
  {
    v44 = 0;
    *v42 = 0;
    v43 = 0;
    v13 = CFGetTypeID(values[v10]);
    if (v13 != CFDictionaryGetTypeID())
    {
      v28 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v28 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v28;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }

      return 4294954514;
    }

    if (H16ISPGetRectParamsFromDict(values[v10], &v44, &v43 + 4, &v43, &v42[1], v42, 1u))
    {
      v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v29 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v29;
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        SetAFWindowParams();
      }

      return 4294954514;
    }

    v14 = WORD2(v43);
    v15 = v44;
    *(v11 - 2) = v44;
    *(v11 - 1) = v14;
    v16 = v42[1];
    v17 = v43;
    *v11 = v43;
    v11[1] = v16;
    v19 = LOBYTE(v42[0]);
    v18 = LOBYTE(v42[0]) == 0;
    v66[v10] = v42[0];
    if (v18)
    {
      LOWORD(v20) = 0;
    }

    else
    {
      v20 = 1 << v10;
    }

    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v21 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v21;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316674;
      v55 = "SetAFWindowParamsCombined";
      v56 = 2048;
      *v57 = v10;
      *&v57[8] = 1024;
      *v58 = v15;
      *&v58[4] = 1024;
      v59 = v14;
      v60 = 1024;
      v61 = v17;
      v62 = 1024;
      v63 = v16;
      v64 = 1024;
      v65 = v19;
      _os_log_debug_impl(&dword_2247DB000, v21, OS_LOG_TYPE_DEBUG, "%s - AF window %ld hStart=%hu, vStart=%hu, width=%hu, height=%hu, weight=%hhu\n", buf, 0x34u);
    }

    Value = CFDictionaryGetValue(values[v10], key);
    if (Value && !CFEqual(Value, cf2))
    {
      v23 = CFDictionaryGetValue(values[v10], v37);
      if (!v23)
      {
        v34 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v34 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v34;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          SetAFWindowParams();
        }

        return 4294954514;
      }

      CFNumberGetValue(v23, kCFNumberSInt16Type, &valuePtr);
      v38 = v10;
    }

    v12 ^= v20;
    ++v10;
    v11 += 4;
  }

  while (v40 != v10);
  v30 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v30 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v30;
  }

  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
  v32 = valuePtr;
  if (v31)
  {
    *buf = 136315906;
    v55 = "SetAFWindowParamsCombined";
    v56 = 1024;
    *v57 = v38;
    *&v57[4] = 1024;
    *&v57[6] = valuePtr;
    *v58 = 1024;
    *&v58[2] = v12;
    _os_log_debug_impl(&dword_2247DB000, v30, OS_LOG_TYPE_DEBUG, "%s - FD AF window ID=%hu scale=%hu mask=0x%hx\n", buf, 0x1Eu);
    v32 = valuePtr;
  }

  result = H16ISP::H16ISPDevice::SetCombinedAFWindow(*(v36 + 24), v35, v38, v32, v40, __src, v66, v12);
  if (result)
  {
    v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v33 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v33;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      SetAFWindowParams();
    }

    return 4294954514;
  }

  return result;
}

uint64_t SetAEWindowParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v14 = 0;
  *v15 = 0;
  v13 = 0;
  if (H16ISPGetRectParamsFromDict(a1, &v15[2], v15, &v14[2], v14, &v13, 0))
  {
    return 4294954516;
  }

  v10 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v10 |= 0x80000000;
  }

  v11 = H16ISP::H16ISPDevice::SetAEWindow(*(a4 + 24), v10, v15[2], v15[0], v14[2], v14[0]);
  if (v11)
  {
    v8 = 4294954516;
  }

  else
  {
    v8 = 0;
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    v17 = v11;
    v18 = 1024;
    v19 = *&v15[2];
    v20 = 1024;
    v21 = *v15;
    v22 = 1024;
    v23 = *&v14[2];
    v24 = 1024;
    v25 = *v14;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Set AE Window Params (result=0x%08X), hStart=%d, vStart=%d, width=%d, height=%d\n\n", buf, 0x20u);
  }

  return v8;
}

uint64_t ManualFocusNow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      goto LABEL_8;
    }

    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4748]);
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (!v9)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  CFNumberGetValue(v9, kCFNumberSInt32Type, &valuePtr + 4);
  v10 = HIDWORD(valuePtr);
LABEL_9:
  v12 = H16ISP::H16ISPDevice::SetManualFocusPosition(*(a4 + 24), *(a2 + 156), valuePtr, v10);
  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v13 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v17 = valuePtr;
    v18 = 1024;
    v19 = v12;
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual-focus operation, position=0x%02X, result=0x%08X\n\n", buf, 0xEu);
  }

  if (v12)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetFlashMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    if (CFEqual(*MEMORY[0x277CF3CC0], a1))
    {
      v5 = 0;
LABEL_8:
      result = 0;
      *(a2 + 256) = v5;
      return result;
    }

    if (CFEqual(*MEMORY[0x277CF3CC8], a1))
    {
      v5 = 1;
      goto LABEL_8;
    }
  }

  return 4294954516;
}

uint64_t SetAFEarlyOutParams(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D38]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D28]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D40]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D30]);
  v12 = !Value || v9 == 0;
  v13 = v12 || v10 == 0;
  if (v13 || v11 == 0)
  {
    return 4294954516;
  }

  v16 = v11;
  v20 = 0;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  CFNumberGetValue(v10, kCFNumberIntType, &v20 + 4);
  CFNumberGetValue(v16, kCFNumberIntType, &v20);
  result = 4294954516;
  if (HIDWORD(v20) <= 0xFF && HIDWORD(valuePtr) <= 1 && valuePtr <= 1 && v20 <= 0x40)
  {
    v17 = *(a2 + 156);
    if (*(a2 + 4360) && !*(a2 + 4380))
    {
      v17 |= 0x80000000;
    }

    v18 = H16ISP::H16ISPDevice::SetAFEarlyOutParams(*(a4 + 24), v17, SBYTE4(valuePtr), valuePtr, SBYTE4(v20), v20);
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v23 = v18;
      _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Setting early-out AF Parameters, result=0x%08X\n\n", buf, 8u);
    }

    if (v18)
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

uint64_t ManualAENow(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  *v20 = 0;
  valuePtr = 0;
  *v19 = 0;
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EE0]);
  if (!Value)
  {
    return 4294954516;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr + 4);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3ED8]);
  if (!v9)
  {
    return 4294954516;
  }

  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D48]);
  if (!v10)
  {
    return 4294954516;
  }

  CFNumberGetValue(v10, kCFNumberIntType, &v20[2]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3ED0]);
  if (!v11)
  {
    return 4294954516;
  }

  CFNumberGetValue(v11, kCFNumberIntType, v20);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3EC8]);
  if (!v12)
  {
    return 4294954516;
  }

  CFNumberGetValue(v12, kCFNumberIntType, &v19[1]);
  v13 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D98]);
  if (v13)
  {
    CFNumberGetValue(v13, kCFNumberIntType, v19);
  }

  *buf = 0;
  v14 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3E10]);
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberFloatType, buf);
    v15 = vcvts_n_u32_f32(*buf, 8uLL);
  }

  else
  {
    v15 = 0;
  }

  v17 = H16ISP::H16ISPDevice::SetAEIntegrationTimeAndGains(*(a4 + 24), *(a2 + 156), 1000000 * HIDWORD(valuePtr) / valuePtr, v20[2], v19[1], v20[0], v19[0], v15, 0, 0, 0, 0);
  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v18 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 67110912;
    v23 = v17;
    v24 = 1024;
    v25 = HIDWORD(valuePtr);
    v26 = 1024;
    v27 = valuePtr;
    v28 = 1024;
    v29 = *&v20[2];
    v30 = 1024;
    v31 = *v20;
    v32 = 1024;
    v33 = v19[1];
    v34 = 1024;
    v35 = v19[0];
    v36 = 1024;
    v37 = v15;
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Initiating manual-AE (result=0x%08X), shutterSpeedNumerator=%d, shutterSpeedDenominator=%d, agc=%d, sensorDGain=%d, ispDGain=%d, tag=0x%08X, frameRate=0x%08X\n\n", buf, 0x32u);
  }

  if (v17)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t RawImageProcessBegin(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFDictionaryGetTypeID() && (*(a2 + 400) & 1) == 0)
    {
      if (*(a2 + 160))
      {
        return 4294954612;
      }

      Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5088]);
      if (Value)
      {
        v11 = Value;
        v12 = CFGetTypeID(Value);
        if (v12 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v11);
          LOBYTE(v34) = 0;
          v14 = H16ISP::H16ISPCreateCVBuffer((Length >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, v34, 0, 0, -1);
          if (v14)
          {
            v15 = v14;
            CVPixelBufferLockBaseAddress(v14, 0);
            BaseAddress = CVPixelBufferGetBaseAddress(v15);
            BytePtr = CFDataGetBytePtr(v11);
            memmove(BaseAddress, BytePtr, Length);
            v18 = BaseAddress[4];
            if (!v18)
            {
              goto LABEL_33;
            }

            v19 = BaseAddress[5];
            v20 = v19 ? BaseAddress + v19 : 0;
            if (v18 == 1)
            {
              goto LABEL_33;
            }

            if (!v20 || BaseAddress[6] == 0)
            {
              goto LABEL_33;
            }

            v22 = *(v20 + 229);
            if (*(a2 + 156) != v22)
            {
              goto LABEL_33;
            }

            v23.i64[0] = -1;
            v23.i64[1] = -1;
            if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(xmmword_281003140, v23)))))
            {
              H16ISP::H16ISPDevice::SetVISParams(*(a4 + 24), *(v20 + 229), xmmword_281003140, SDWORD1(xmmword_281003140), SDWORD2(xmmword_281003140), SHIDWORD(xmmword_281003140));
            }

            v24 = CFDictionaryGetValue(a1, *MEMORY[0x277CF66F0]);
            v25 = MEMORY[0x277CBED28];
            if (v24 && CFEqual(v24, *MEMORY[0x277CBED28]))
            {
              H16ISP::H16ISPDevice::EnableVIS(*(a4 + 24), *(a2 + 156), 1, 1);
              H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 16, 1);
              H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 18, 1);
            }

            v26 = CFDictionaryGetValue(a1, *MEMORY[0x277CF66E8]);
            if (v26)
            {
              v27 = v26;
              if (CFEqual(v26, *v25))
              {
                v28 = *(a4 + 24);
                v29 = *(a2 + 156);
                v30 = 1;
                v31 = 1;
              }

              else
              {
                if (!CFEqual(v27, *MEMORY[0x277CBED10]))
                {
                  goto LABEL_32;
                }

                v28 = *(a4 + 24);
                v29 = *(a2 + 156);
                v30 = 0;
                v31 = 0;
              }

              H16ISP::H16ISPDevice::EnableTileBasedGDC(v28, v29, v30, v31, 0, 0);
            }

LABEL_32:
            bzero(v35, 0x10uLL);
            v36 = 263;
            v32 = v20[46];
            v37 = v22;
            v38 = v32;
            if (!H16ISP::H16ISPDevice::ISP_SendCommand(*(a4 + 24), v35, 0x10u, 0, 0xFFFFFFFF))
            {
              v33 = (a2 + 108);
              if ((*(a2 + 108) != 1 || !H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), *(a2 + 156), a2 + 108)) && (!*(a2 + 105) || !H16ISP::H16ISPDevice::StartFaceDetect(*(a4 + 24))))
              {
                if (!H16ISP::H16ISPDevice::ProcessRawStart(*(a4 + 24), v22))
                {
                  v8 = 0;
                  *(a2 + 400) = 1;
                  *(a2 + 401) = *(a2 + 108);
                  *(a2 + 404) = v20[46];
                  goto LABEL_34;
                }

                if (*v33 == 1)
                {
                  *v33 = 0;
                  H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), v22, a2 + 108);
                }
              }
            }

LABEL_33:
            v8 = 4294954516;
LABEL_34:
            CVPixelBufferUnlockBaseAddress(v15, 0);
            CVPixelBufferRelease(v15);
            return v8;
          }
        }
      }
    }
  }

  return 4294954516;
}

uint64_t RawImageProcessPrepare(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = *MEMORY[0x277D85DE8];
  v103 = 0;
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  if (*(a2 + 400) != 1)
  {
    return 4294954516;
  }

  if (*(a2 + 408))
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F08]);
  if (!Value)
  {
    return 4294954516;
  }

  v9 = Value;
  IOSurface = CVPixelBufferGetIOSurface(Value);
  ID = IOSurfaceGetID(IOSurface);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F10]);
  v13 = v12;
  if (v12)
  {
    v14 = CFDictionaryGetValue(v12, *MEMORY[0x277CF5088]);
    if (v14)
    {
      v15 = v14;
      if (dword_281003150)
      {
        H16ISP::H16ISPDevice::EnableMetadataSection(*(a4 + 24), *(a2 + 156), 19, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*(a4 + 24), *(a2 + 156), 19, 0, 1);
        H16ISP::H16ISPDevice::SetMetadataRequired(*(a4 + 24), *(a2 + 156), 19, 1, 1);
      }

      v16 = CFGetTypeID(v15);
      if (v16 == CFDataGetTypeID())
      {
        cf = v13;
        v98 = ID;
        Length = CFDataGetLength(v15);
        CameraConfig = H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), 0, v102, valuePtr);
        v19 = CameraConfig;
        v20 = v112;
        if (Length > v112)
        {
          v20 = Length;
        }

        if (CameraConfig)
        {
          v21 = Length;
        }

        else
        {
          v21 = v20;
        }

        BYTE4(v90) = 0;
        v22 = H16ISP::H16ISPCreateCVBuffer((v21 >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
        if (v22)
        {
          v23 = v22;
          DataSize = v21;
          v24 = v19;
          CVPixelBufferLockBaseAddress(v22, 0);
          v25 = CVPixelBufferGetIOSurface(v23);
          v26 = IOSurfaceGetID(v25);
          BaseAddress = CVPixelBufferGetBaseAddress(v23);
          BytePtr = CFDataGetBytePtr(v15);
          memmove(BaseAddress, BytePtr, Length);
          v29 = *(a2 + 416);
          if (v29)
          {
            CVPixelBufferUnlockBaseAddress(v29, 0);
            CVPixelBufferRelease(*(a2 + 416));
            *(a2 + 416) = 0;
          }

          v30 = *(a2 + 448);
          ID = v98;
          if (v30)
          {
            CFRelease(v30);
            *(a2 + 448) = 0;
          }

          goto LABEL_23;
        }

        if (!v19)
        {
          *(a2 + 408) = 1;
          *(a2 + 416) = 0;
          *(a2 + 424) = 0;
          *(a2 + 432) = v9;
          *(a2 + 440) = 0;
LABEL_47:
          CFRetain(v13);
          *(a2 + 448) = v13;
LABEL_48:
          CFRetain(v9);
          return 0;
        }
      }
    }

    return 4294954516;
  }

  v23 = *(a2 + 416);
  if (!v23)
  {
    return 4294954516;
  }

  cf = 0;
  v31 = CVPixelBufferGetIOSurface(v23);
  v26 = IOSurfaceGetID(v31);
  DataSize = CVPixelBufferGetDataSize(v23);
  BaseAddress = CVPixelBufferGetBaseAddress(v23);
  v24 = -536870212;
LABEL_23:
  v32 = BaseAddress[4];
  if (!v32 || ((v33 = BaseAddress[5], v33) ? (v34 = BaseAddress + v33) : (v34 = 0), v32 == 1 || (v97 = v26, v35 = BaseAddress[6], !v35) || !v34 || (v36 = *(v34 + 229), *(a2 + 156) != v36) || (v99 = ID, v37 = *v34, v96 = *(v34 + 229), v38 = v34, v37 != H16ISP::H16ISPDevice::GetChannelSensorID(*(a4 + 24), v36)) || *(a2 + 404) != v38[46]))
  {
    v42 = 0;
    v43 = 0;
    v44 = 4294954516;
    goto LABEL_36;
  }

  v95 = v38;
  v39 = (BaseAddress + v35);
  v40 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F28]);
  v41 = (a2 + 456);
  if (v40)
  {
    v114.location = 0;
    v114.length = 72;
    CFDataGetBytes(v40, v114, v41);
  }

  else
  {
    v46 = MEMORY[0x277CC0898];
    v47 = *MEMORY[0x277CC0898];
    *v41 = *MEMORY[0x277CC0898];
    v48 = *(v46 + 16);
    *(a2 + 472) = v48;
    *(a2 + 480) = v47;
    *(a2 + 496) = v48;
    *(a2 + 504) = v47;
    *(a2 + 520) = v48;
  }

  v49 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F20]);
  v50 = v49;
  v94 = v24;
  if (!v49)
  {
    v53 = 1;
    goto LABEL_77;
  }

  v51 = CFDictionaryGetValue(v49, *MEMORY[0x277CC4E30]);
  if (!v51)
  {
    goto LABEL_57;
  }

  valuePtr[0] = 0;
  CFNumberGetValue(v51, kCFNumberIntType, valuePtr);
  switch(valuePtr[0])
  {
    case 0x34323076:
      v52 = 0;
      v53 = 0;
      goto LABEL_59;
    case 0x79757673:
      v53 = 0;
      v52 = 1;
      goto LABEL_59;
    case 0x79757666:
      v52 = 1;
      break;
    default:
LABEL_57:
      v52 = 0;
      break;
  }

  v53 = 1;
LABEL_59:
  *v39 = v52;
  v54 = CFDictionaryGetValue(v50, *MEMORY[0x277CC4EC8]);
  v55 = CFDictionaryGetValue(v50, *MEMORY[0x277CC4DD8]);
  v50 = 0;
  if (v54 && v55)
  {
    v56 = v55;
    CFNumberGetValue(v54, kCFNumberIntType, &v103 + 4);
    CFNumberGetValue(v56, kCFNumberIntType, &v103);
    if (HIDWORD(v103) && (v57 = v103, v103))
    {
      v50 = 0;
      v39[2] = WORD2(v103);
      v39[3] = v57;
    }

    else
    {
      v58 = *(a2 + 192);
      if (v58)
      {
        v50 = 0;
        v59 = *(a2 + 184);
        do
        {
          v60 = v50;
          if (*(v59 + 4) == *(v95 + 92))
          {
            v50 = v59;
            if (v60)
            {
              if (*(v59 + 1) <= *(v60 + 1))
              {
                v50 = v60;
              }

              else
              {
                v50 = v59;
              }
            }
          }

          v59 = (v59 + 120);
          --v58;
        }

        while (v58);
        if (v50)
        {
          v39[2] = *(v50 + 1);
          v39[3] = *(v50 + 2);
          v39[2064] = *(v50 + 3);
        }
      }

      else
      {
        v50 = 0;
      }
    }
  }

LABEL_77:
  if (CVPixelBufferGetPixelFormatType(v9) == 2037741171 || CVPixelBufferGetPixelFormatType(v9) == 2037741158)
  {
    *(v95 + 12) = CVPixelBufferGetWidth(v9);
    *(v95 + 13) = CVPixelBufferGetHeight(v9);
    *(v95 + 200) = 1;
    *(v95 + 13) = 0;
    *(v95 + 28) = CVPixelBufferGetWidth(v9);
    *(v95 + 29) = CVPixelBufferGetHeight(v9);
    *(v95 + 47) = CVPixelBufferGetBytesPerRow(v9);
    v53 = CVPixelBufferGetPixelFormatType(v9) != 2037741171;
  }

  v61 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3F18]);
  if (v61)
  {
    v62 = CFDictionaryGetValue(v61, *MEMORY[0x277CF5088]);
    v42 = v62;
    if (v62)
    {
      v63 = v53;
      v64 = CFGetTypeID(v62);
      if (v64 == CFDataGetTypeID())
      {
        theData = v42;
        v65 = CFDataGetLength(v42);
        v66 = H16ISP::H16ISPDevice::GetCameraConfig(*(a4 + 24), *(a2 + 156), 0, v102, valuePtr);
        v67 = v112;
        if (v65 > v112)
        {
          v67 = v65;
        }

        v94 = v66;
        if (v66)
        {
          v67 = v65;
        }

        v93 = v67;
        BYTE4(v90) = 0;
        v68 = H16ISP::H16ISPCreateCVBuffer((v67 >> 4) + 1, 8u, 0, 0, 1, 0, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
        v42 = v68;
        if (v68)
        {
          CVPixelBufferLockBaseAddress(v68, 0);
          v69 = CVPixelBufferGetIOSurface(v42);
          v92 = IOSurfaceGetID(v69);
          v70 = CVPixelBufferGetBaseAddress(v42);
          v71 = CFDataGetBytePtr(theData);
          memmove(v70, v71, v65);
          v53 = v63;
          goto LABEL_90;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    v43 = 0;
LABEL_101:
    v44 = 4294954516;
    v24 = v94;
    goto LABEL_36;
  }

  v42 = 0;
  v92 = 0;
  v93 = 0;
LABEL_90:
  if (v50)
  {
    v72 = *(v50 + 1);
    v73 = *(v50 + 2);
    v74 = *(v50 + 3);
  }

  else
  {
    v72 = v39[2];
    v73 = v39[3];
    v74 = v39[2064];
  }

  BYTE4(v90) = 0;
  v75 = H16ISP::H16ISPCreateCVBuffer(v72, v73, v74, 0, *v39, v53, 0.0, 64, 128, 0, SHIDWORD(v90), 0, 0, -1);
  v43 = v75;
  if (!v75)
  {
    goto LABEL_101;
  }

  v76 = CVPixelBufferGetIOSurface(v75);
  v77 = IOSurfaceGetID(v76);
  valuePtr[0] = v99;
  v78 = CVPixelBufferGetDataSize(v9);
  v79 = *(v95 + 47);
  valuePtr[1] = v78;
  valuePtr[2] = v79;
  valuePtr[3] = v97;
  valuePtr[4] = DataSize;
  v80 = v92;
  if (v42)
  {
    v81 = v93;
  }

  else
  {
    v80 = -1;
    v81 = 0;
  }

  valuePtr[5] = v77;
  v110 = v80;
  v111 = v81;
  v82 = v39;
  if (*v39 == 1)
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow(v43);
    Height = CVPixelBufferGetHeight(v43);
    v85 = 0;
    v105 = Height * BytesPerRow;
  }

  else
  {
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v43, 0);
    v105 = CVPixelBufferGetHeight(v43) * BytesPerRowOfPlane;
    v87 = CVPixelBufferGetBytesPerRowOfPlane(v43, 1uLL);
    v85 = (CVPixelBufferGetHeight(v43) * v87) >> 1;
  }

  v106 = v85;
  v88 = *v82 == 1;
  v108 = *v82;
  if (v108 == 1)
  {
    v89 = 262080;
  }

  else
  {
    v89 = 131008;
  }

  v107 = ((v82[2] << v88) + 63) & v89;
  v109 = v96;
  v24 = H16ISP::H16ISPDevice::ISP_ProcessRawImagePrepare(*(a4 + 24), valuePtr);
  if (v24)
  {
    v44 = 4294954516;
  }

  else
  {
    v44 = 0;
  }

LABEL_36:
  if (!v24)
  {
    *(a2 + 408) = 1;
    *(a2 + 416) = v23;
    *(a2 + 424) = v42;
    *(a2 + 432) = v9;
    *(a2 + 440) = v43;
    v13 = cf;
    if (!cf)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  CVPixelBufferUnlockBaseAddress(v23, 0);
  CVPixelBufferRelease(v23);
  if (v42)
  {
    CVPixelBufferUnlockBaseAddress(v42, 0);
    CVPixelBufferRelease(v42);
  }

  if (v43)
  {
    CVPixelBufferUnlockBaseAddress(v43, 0);
    CVPixelBufferRelease(v43);
  }

  return v44;
}

uint64_t RawImageProcessGo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  sampleBufferOut = 0;
  if (*(a2 + 408) != 1)
  {
    return 4294954516;
  }

  if (H16ISP::H16ISPDevice::ISP_ProcessRawImageGo(*(a4 + 24), *(a2 + 156)))
  {
    v6 = 4294954516;
  }

  else
  {
    if (*(*(*(a4 + 24) + 4304) + 104 * *(a2 + 156) + 8))
    {
      memset(v21, 0, sizeof(v21));
      LOWORD(v21[0]) = 257;
      *(v21 + 2) = 0;
      BYTE6(v21[0]) = 0;
      *(v21 + 10) = 0;
      if (byte_28100338C == 1)
      {
        BYTE2(v21[1]) = byte_28100338C;
      }

      if (byte_28100338D == 1)
      {
        BYTE3(v21[1]) = byte_28100338D;
      }

      v22 = 0;
      CVBufferSetAttachment(*(a2 + 440), @"RawMetaData", *(a2 + 416), kCVAttachmentMode_ShouldPropagate);
      v24[0] = *(a2 + 440);
      std::deque<__CVBuffer *>::deque(formatDescription, v24, 1);
      v7.n128_u64[0] = 0;
      H16ISP::GenerateAndAttachCoreMediaMetaDataDictionary(*(*(a4 + 24) + 88), *(a2 + 440), formatDescription, v21, v7);
      std::deque<__CVBuffer *>::~deque[abi:ne200100](formatDescription);
    }

    v8 = *MEMORY[0x277CF3F70];
    Attachment = CVBufferGetAttachment(*(a2 + 440), *MEMORY[0x277CF3F70], 0);
    if (Attachment)
    {
      v10 = *(a2 + 448);
      if (v10)
      {
        CFRelease(v10);
      }

      CFRetain(Attachment);
      *(a2 + 448) = Attachment;
    }

    formatDescription[0] = 0;
    v11 = CFGetAllocator(*(a2 + 16));
    CMVideoFormatDescriptionCreateForImageBuffer(v11, *(a2 + 440), formatDescription);
    v12 = CFGetAllocator(*(a2 + 16));
    v6 = CMSampleBufferCreateForImageBuffer(v12, *(a2 + 440), 1u, 0, 0, formatDescription[0], (a2 + 456), &sampleBufferOut);
    FigFormatDescriptionRelease();
    if (v6)
    {
      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v13 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        RawImageProcessGo();
      }
    }

    else
    {
      if (Attachment)
      {
        CMSetAttachment(sampleBufferOut, v8, Attachment, 1u);
      }

      v14 = 32;
      if (*(a2 + 616))
      {
        v14 = 24;
      }

      v6 = CMBufferQueueEnqueue(*(a2 + v14), sampleBufferOut);
      if (v6)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "plugin");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          RawImageProcessGo();
        }
      }
    }

    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }
  }

  v16 = *(a2 + 432);
  if (v16)
  {
    CVPixelBufferUnlockBaseAddress(v16, 0);
    CVPixelBufferRelease(*(a2 + 432));
    *(a2 + 432) = 0;
  }

  v17 = *(a2 + 440);
  if (v17)
  {
    CVPixelBufferUnlockBaseAddress(v17, 0);
    CVPixelBufferRelease(*(a2 + 440));
    *(a2 + 440) = 0;
  }

  v18 = *(a2 + 424);
  if (v18)
  {
    CVPixelBufferUnlockBaseAddress(v18, 0);
    CVPixelBufferRelease(*(a2 + 424));
    *(a2 + 424) = 0;
  }

  *(a2 + 408) = 0;
  return v6;
}

uint64_t RawImageProcessEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 400) != 1)
  {
    return 4294954516;
  }

  if (*(a2 + 408))
  {
    return 4294954516;
  }

  H16ISP::H16ISPDevice::ProcessRawStop(*(a4 + 24), *(a2 + 156));
  if (*(a2 + 401) == 1)
  {
    *(a2 + 108) = 0;
    H16ISP::H16ISPDevice::EnableTNR(*(a4 + 24), *(a2 + 156), a2 + 108);
  }

  *(a2 + 400) = 0;
  v7 = *(a2 + 416);
  if (v7)
  {
    CVPixelBufferUnlockBaseAddress(v7, 0);
    CVPixelBufferRelease(*(a2 + 416));
    *(a2 + 416) = 0;
  }

  result = *(a2 + 448);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a2 + 448) = 0;
  }

  return result;
}

uint64_t SetAEGainConvergenceNormalizationEnable(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = CFEqual(a1, *MEMORY[0x277CBED28]);
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (v8)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v14 = 0;
    v10 = "H16ISPCaptureDevice: Enable AE Gain Convergence Normalization\n\n";
    v11 = &v14;
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v13 = 0;
    v10 = "H16ISPCaptureDevice: Disable AE Gain Convergence Normalization\n\n";
    v11 = &v13;
  }

  _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
LABEL_15:
  if (H16ISP::H16ISPDevice::EnableAEGainConvergenceNormalization(*(a4 + 24), *(a2 + 156), v8 != 0))
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t LockBLCNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::BLCSuspend(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: BLC Suspend, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t UnlockBLCNow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 156);
  if (*(a2 + 4360) && !*(a2 + 4380))
  {
    v5 |= 0x80000000;
  }

  v6 = H16ISP::H16ISPDevice::BLCResume(*(a4 + 24), v5);
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v7 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v7;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9[0] = 67109120;
    v9[1] = v6;
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: BLC Resume, result=0x%08X\n\n", v9, 8u);
  }

  if (v6)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetDiagnosticMode(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    return 4294954516;
  }

  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v5 = *(a2 + 160);
  v6 = 4294954516;
  if (v5)
  {
    if (H16ISP::H16ISPFrameReceiver::setDiagnosticsMode(v5, valuePtr))
    {
      return 4294954516;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t SetImageMapParams(CFTypeRef cf, uint64_t a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      return 4294954516;
    }
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF3DD8]);
  v6 = MEMORY[0x277CF3E08];
  if (Value)
  {
    v7 = Value;
    if (CFEqual(*MEMORY[0x277CF3E08], Value))
    {
      v8 = 0;
    }

    else if (CFEqual(*MEMORY[0x277CF3DE8], v7))
    {
      v8 = 6;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF0], v7))
    {
      v8 = 7;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF8], v7))
    {
      v8 = 8;
    }

    else
    {
      if (!CFEqual(*MEMORY[0x277CF3E00], v7))
      {
        return 4294954516;
      }

      v8 = 9;
    }

    *(a2 + 580) = v8;
  }

  v9 = CFDictionaryGetValue(cf, *MEMORY[0x277CF3DE0]);
  if (v9)
  {
    v10 = v9;
    if (CFEqual(*v6, v9))
    {
      v11 = 0;
    }

    else if (CFEqual(*MEMORY[0x277CF3DE8], v10))
    {
      v11 = 6;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF0], v10))
    {
      v11 = 7;
    }

    else if (CFEqual(*MEMORY[0x277CF3DF8], v10))
    {
      v11 = 8;
    }

    else
    {
      if (!CFEqual(*MEMORY[0x277CF3E00], v10))
      {
        return 4294954516;
      }

      v11 = 9;
    }

    *(a2 + 584) = v11;
  }

  v12 = CFDictionaryGetValue(cf, *MEMORY[0x277CF5628]);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFDataGetTypeID() || CFDataGetLength(v13) != 36)
  {
    return 4294954516;
  }

  v15 = *(a2 + 592);
  if (v15)
  {
    CFRelease(v15);
  }

  *(a2 + 592) = v13;
  CFRetain(v13);
LABEL_33:
  result = CFDictionaryGetValue(cf, *MEMORY[0x277CF5630]);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = CFGetTypeID(result);
  if (v18 != CFDataGetTypeID() || CFDataGetLength(v17) != 36)
  {
    return 4294954516;
  }

  v19 = *(a2 + 600);
  if (v19)
  {
    CFRelease(v19);
  }

  *(a2 + 600) = v17;
  CFRetain(v17);
  return 0;
}

uint64_t SetAlternateOutputSize(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a2 + 698))
  {
    return 4294954509;
  }

  valuePtr = 0;
  *v42 = 0;
  v7 = *(a2 + 48);
  if (v7 >= *(a2 + 192))
  {
    v8 = *(a2 + 192);
  }

  else
  {
    v8 = 0;
  }

  if (!cf)
  {
    return 4294954516;
  }

  v10 = CFGetTypeID(cf);
  if (v10 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(cf, *MEMORY[0x277CF56E8]);
  v12 = CFDictionaryGetValue(cf, *MEMORY[0x277CF56D0]);
  v13 = CFDictionaryGetValue(cf, *MEMORY[0x277CF55A8]);
  v14 = CFDictionaryGetValue(cf, *MEMORY[0x277CF55A0]);
  if (Value)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v19 = v7 - v8;
    CFNumberGetValue(Value, kCFNumberIntType, &v42[1]);
    CFNumberGetValue(v12, kCFNumberIntType, v42);
    v20 = *(a2 + 184);
    v21 = (v20 + 120 * v19);
    v22 = v21[7];
    v23 = v42[1] <= v22 && v42[1] >= v22 >> 2;
    if (!v23)
    {
      return 4294954516;
    }

    v24 = v21[8];
    if (v42[0] > v24 || v42[0] < v24 >> 2)
    {
      return 4294954516;
    }

    if (v13 && v14)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      v28 = valuePtr;
      v27 = HIDWORD(valuePtr);
      v22 = HIDWORD(valuePtr) & 0xFFFFFFFE;
      v29 = valuePtr & 0xFFFFFFFE;
      valuePtr &= 0xFFFFFFFEFFFFFFFELL;
      v4 = 4294954516;
      if (v27 < 0x140)
      {
        return v4;
      }

      v30 = (*(a2 + 184) + 120 * v19);
      v31 = v30[7];
      v23 = v31 >= v22;
      v32 = v31 - v22;
      if (!v23)
      {
        return v4;
      }

      if (v28 < 0xF0)
      {
        return v4;
      }

      v33 = v30[8];
      v23 = v33 >= v29;
      v34 = v33 - v29;
      if (!v23)
      {
        return v4;
      }

      v35 = (v30[5] + (v32 >> 1)) & 0xFFFFFFFE;
      v36 = (v30[6] + (v34 >> 1)) & 0xFFFFFFFE;
    }

    else
    {
      HIDWORD(valuePtr) = v21[7];
      v29 = *(v20 + 120 * v19 + 32);
      LODWORD(valuePtr) = v29;
      v35 = v21[5];
      v36 = v21[6];
    }

    v37 = *(a2 + 160);
    if (v37)
    {
      v4 = H16ISP::H16ISPFrameReceiver::setNewOutputSize(v37);
      v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
      {
        v38 = os_log_create("com.apple.isp", "plugin");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v38;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v44 = v4;
        _os_log_impl(&dword_2247DB000, v38, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: setNewOutputSize, result=0x%08X\n\n", buf, 8u);
      }

      if (v4)
      {
        return 4294954516;
      }

      v39 = v42[0];
      *(a2 + 620) = v42[1];
      *(a2 + 624) = v39;
      v40 = valuePtr;
      *(a2 + 636) = HIDWORD(valuePtr);
      *(a2 + 640) = v40;
    }

    else
    {
      v4 = 0;
      *(a2 + 620) = v42[1];
      *(a2 + 624) = v42[0];
      *(a2 + 636) = v22;
      *(a2 + 640) = v29;
    }

    *(a2 + 628) = v35;
    *(a2 + 632) = v36;
    return v4;
  }

  v16 = *(a2 + 160);
  if (!v16 || H16ISP::H16ISPFrameReceiver::isNewOutputSizeChangePending(v16))
  {
    return 4294954516;
  }

  v4 = 4294954516;
  if (v13)
  {
    if (v14)
    {
      CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
      CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
      v17 = HIDWORD(valuePtr) & 0xFFFFFFFE;
      v18 = valuePtr & 0xFFFFFFFE;
      LODWORD(valuePtr) = valuePtr & 0xFFFFFFFE;
      HIDWORD(valuePtr) = v17;
      if (v17 >= *(a2 + 620) && v18 >= *(a2 + 624))
      {
        if (H16ISP::H16ISPDevice::SetScalerCrop(*(a4 + 24), *(a2 + 156), ((*(a2 + 644) - v17) >> 1) & 0x7FFFFFFE | ((((((*(a2 + 648) - v18) >> 1) & 0x7FFFFFFE) >> 1) & 0x3FFFFFFF) << 33), v17 | (v18 << 32)))
        {
          return 4294954516;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return v4;
}

uint64_t SetUsePreviewBufferQueueForRawReprocessing(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294954516;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFBooleanGetTypeID())
  {
    return 4294954516;
  }

  v5 = CFEqual(a1, *MEMORY[0x277CBED28]);
  result = 0;
  *(a2 + 616) = v5 != 0;
  return result;
}

uint64_t SetAFPeakPredictionEnabled(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v7 = CFGetTypeID(a1);
    v8 = "False";
    if (v7 == CFBooleanGetTypeID())
    {
      v9 = CFEqual(a1, *MEMORY[0x277CBED28]);
      v10 = *(a2 + 156);
      if (*(a2 + 4360) && !*(a2 + 4380))
      {
        v10 |= 0x80000000;
      }

      if (v9)
      {
        v8 = "True";
      }

      if (H16ISP::H16ISPDevice::EnableAFPeakPrediction(*(a4 + 24), v10, v9 != 0))
      {
        v11 = 4294954516;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 4294954516;
    }
  }

  else
  {
    v11 = 4294954516;
    v8 = "False";
  }

  v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v12 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v12;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = v8;
    _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable AF Peak Prediction: %s\n\n", &v14, 0xCu);
  }

  return v11;
}

uint64_t SetAEEnabled(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = cf;
  v14 = *MEMORY[0x277D85DE8];
  if (cf)
  {
    v7 = CFGetTypeID(cf);
    v8 = 4294954516;
    if (v7 == CFBooleanGetTypeID())
    {
      LODWORD(v4) = CFEqual(v4, *MEMORY[0x277CBED28]) != 0;
      if (H16ISP::H16ISPDevice::EnableAE(*(a4 + 24), *(a2 + 156), v4))
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

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "False";
    if (v4)
    {
      v10 = "True";
    }

    v12 = 136315138;
    v13 = v10;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: Enable AE: %s\n\n", &v12, 0xCu);
  }

  return v8;
}

uint64_t SetAWB1stGainManual(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D58]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D70]);
  v10 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D68]);
  v11 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D60]);
  v12 = CFDictionaryGetValue(a1, *MEMORY[0x277CF3D50]);
  if (Value)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || v10 == 0 || v11 == 0 || v12 == 0)
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v17 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      SetAWB1stGainManual();
    }

    return 4294954516;
  }

  v19 = v12;
  v20 = CFEqual(Value, *MEMORY[0x277CBED28]);
  valuePtr = 0;
  CFNumberGetValue(v9, kCFNumberIntType, &valuePtr);
  *v25 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, v25);
  *v24 = 0;
  CFNumberGetValue(v11, kCFNumberIntType, v24);
  *v23 = 0;
  CFNumberGetValue(v19, kCFNumberIntType, v23);
  v21 = H16ISP::H16ISPDevice::SetAWB1stGainManual(*(a4 + 24), *(a2 + 156), v20 != 0, valuePtr, v25[0], v24[0], v23[0]);
  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v22 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v22;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67110400;
    v28 = v20 != 0;
    v29 = 1024;
    v30 = valuePtr;
    v31 = 1024;
    v32 = *v25;
    v33 = 1024;
    v34 = *v24;
    v35 = 1024;
    v36 = *v23;
    v37 = 1024;
    v38 = v21;
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_INFO, "H16ISPCaptureDevice: set kFigCaptureStreamProperty_AWB1stGainManual, enableFlag=%d, rGain=%d, grGain=%d, gbGain=%d, bGain=%d, result=0x%08X\n\n", buf, 0x26u);
  }

  if (v21)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}

uint64_t SetLimitAERange(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294954516;
  }

  v7 = CFGetTypeID(a1);
  if (v7 != CFDictionaryGetTypeID())
  {
    return 4294954516;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF5740]);
  v9 = CFDictionaryGetValue(a1, *MEMORY[0x277CF5658]);
  if (!Value)
  {
    v12 = H16ISP::H16ISPDevice::SetAEMode(*(a4 + 24), *(a2 + 156), 0);
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "plugin");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v13;
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

    *buf = 67109120;
    v21 = v12;
    v14 = "H16ISPCaptureDevice: kFigCaptureStreamProperty_LimitAERange disabled. res=0x%08x\n\n";
    v15 = v13;
    v16 = 8;
    goto LABEL_15;
  }

  v10 = v9;
  valuePtr = 0;
  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  *v18 = 0;
  CFNumberGetValue(v10, kCFNumberIntType, v18);
  if (H16ISP::H16ISPDevice::SetPanoAELimits(*(a4 + 24), *(a2 + 156), valuePtr, v18[0]))
  {
    return 4294954516;
  }

  v12 = H16ISP::H16ISPDevice::SetAEMode(*(a4 + 24), *(a2 + 156), 1);
  v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog == MEMORY[0x277D86220])
  {
    v17 = os_log_create("com.apple.isp", "plugin");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_pluginLog = v17;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    v21 = valuePtr;
    v22 = 1024;
    v23 = *v18;
    v24 = 1024;
    v25 = v12;
    v14 = "H16ISPCaptureDevice: kFigCaptureStreamProperty_LimitAERange enabled, upper=0x%08X, lower=0x%08X, res=0x%08x\n\n";
    v15 = v17;
    v16 = 20;
LABEL_15:
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_INFO, v14, buf, v16);
  }

LABEL_16:
  if (v12)
  {
    return 4294954516;
  }

  else
  {
    return 0;
  }
}