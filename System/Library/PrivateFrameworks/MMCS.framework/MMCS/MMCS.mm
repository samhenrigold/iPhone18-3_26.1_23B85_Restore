__CFDictionary *MMCSICloudRequestHeadersCopy(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  mmcs_library_init();
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    client_header_value = mmcs_engine_create_client_header_value(a1);
    CFDictionaryAddValue(Mutable, @"x-mme-client-info", client_header_value);
    if (client_header_value)
    {
      CFRelease(client_header_value);
    }

    v8 = MMCSGetDefaultProtocolVersion(v6, v7);
    CFDictionaryAddValue(Mutable, @"x-apple-mmcs-proto-version", v8);
    cfBOOLean_from_cfpreferences_object_for_key = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"UseEdge", 0);
    if (cfBOOLean_from_cfpreferences_object_for_key)
    {
      if (CFBooleanGetValue(cfBOOLean_from_cfpreferences_object_for_key))
      {
        v10 = @"true";
      }

      else
      {
        v10 = @"false";
      }

      CFDictionaryAddValue(Mutable, @"x-apple-use-edge", v10);
    }

    v11 = mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(@"UseVendorIp", 0);
    if (v11)
    {
      if (CFBooleanGetValue(v11))
      {
        v12 = @"true";
      }

      else
      {
        v12 = @"false";
      }

      CFDictionaryAddValue(Mutable, @"x-apple-use-vendor-ip", v12);
    }

    mmcs_report_initialize();
    cf = 0;
    *value = 0;
    mmcs_report_copy_plist_header_values(value, &cf);
    if (*value)
    {
      CFDictionaryAddValue(Mutable, @"x-apple-mmcs-plist-version", *value);
      if (*value)
      {
        CFRelease(*value);
      }

      *value = 0;
    }

    if (cf)
    {
      CFDictionaryAddValue(Mutable, @"x-apple-mmcs-plist-sha256", cf);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
    }

    mmcs_report_close();
  }

  else
  {
    v13 = mmcs_logging_logger_default(0, v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(v2, 0, @"Unable to allocate iCloudRequestHeaders");
      v16 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *value = 138543362;
        *&value[4] = v14;
        _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", value, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  return Mutable;
}

CFStringRef mmcs_engine_create_client_header_value(uint64_t a1)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MMCS");
  if (BundleWithIdentifier)
  {
    BundleWithIdentifier = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, *MEMORY[0x277CBED58]);
  }

  if (BundleWithIdentifier)
  {
    v3 = BundleWithIdentifier;
  }

  else
  {
    v3 = @"unknown";
  }

  return copy_client_info_header(@"com.apple.icloud.content", v3, a1, 0);
}

uint64_t MMCSGetDefaultProtocolVersion(uint64_t a1, uint64_t a2)
{
  result = _kMMCSEngineDefaultProtocolVersion;
  if (!_kMMCSEngineDefaultProtocolVersion)
  {
    MMCSGetDefaultProtocolVersion_cold_1();
  }

  return result;
}

CFStringRef copy_client_info_header(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_once(&copy_client_info_header_once, initClientInfoHeaderTemplate);
  if (!a3)
  {
    return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (UNKNOWN)>", sClientInfoHeaderTemplate, a1, a2);
  }

  if (a4)
  {
    return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (%@/%@)>", sClientInfoHeaderTemplate, a1, a2, a3, a4);
  }

  return CFStringCreateWithFormat(0, 0, @"%@ <%@/%@ (%@)>", sClientInfoHeaderTemplate, a1, a2, a3);
}

uint64_t mmcs_report_initialize()
{
  v50 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&sReportingInfoInitLock);
  v0 = gMMCS_MobileMeReporting;
  if (gMMCS_MobileMeReporting)
  {
LABEL_52:
    ++*(v0 + 24);
    return pthread_mutex_unlock(&sReportingInfoInitLock);
  }

  v1 = malloc_type_malloc(0x48uLL, 0x1060040BBC8ADA9uLL);
  gMMCS_MobileMeReporting = v1;
  if (v1)
  {
    *v1 = 0u;
    v1[1] = 0u;
    v1[2] = xmmword_25785F9C0;
    v1[3] = 0u;
    *(v1 + 64) = 0;
    Current = 0.0;
    v48 = 0.0;
    v46 = 0;
    CFPreferencesAppSynchronize(@"com.apple.mmcs");
    _getAbsoluteTimeFromPreferences(@"report.LastSuccessfulCheckTime", @"com.apple.mmcs", &v48);
    _getAbsoluteTimeFromPreferences(@"report.LastFailedCheckTime", @"com.apple.mmcs", &Current);
    if (_getAbsoluteTimeFromPreferences(@"report.TTL", @"com.apple.mmcs", &v46))
    {
      *(gMMCS_MobileMeReporting + 40) = v46;
    }

    v2 = CFPreferencesCopyAppValue(@"report.ReportLevels", @"com.apple.mmcs");
    v3 = v2;
    if (v2)
    {
      v4 = CFGetTypeID(v2);
      TypeID = CFDictionaryGetTypeID();
      if (v4 == TypeID)
      {
        v7 = mmcs_logging_logger_default(TypeID, v6);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          Mutable = v3;
LABEL_44:
          v43 = CFPreferencesCopyAppValue(@"report.sha256", @"com.apple.mmcs");
          v44 = v43;
          if (v43)
          {
            v45 = CFGetTypeID(v43);
            if (v45 != CFStringGetTypeID())
            {
              CFRelease(v44);
              v44 = 0;
            }
          }

          _mmcs_report_setReportingInfo(0, v44, Mutable, 0, 0, v48, Current);
          if (v44)
          {
            CFRelease(v44);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v0 = gMMCS_MobileMeReporting;
          goto LABEL_52;
        }

        v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Using MobileMe reporting levels from Preferences.");
        v10 = mmcs_logging_logger_default(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v8;
          _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        Mutable = v3;
        if (!v8)
        {
          goto LABEL_44;
        }

LABEL_42:
        CFRelease(v8);
        goto LABEL_44;
      }
    }

    v12 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      *buf = 0x2000000;
      v13 = CFNumberCreate(v12, kCFNumberSInt64Type, buf);
      if (v13)
      {
        v14 = v13;
        CFDictionarySetValue(Mutable, @"chunker.max.fixed.length", v13);
        CFRelease(v14);
      }

      *buf = 2;
      v15 = CFNumberCreate(v12, kCFNumberSInt32Type, buf);
      if (v15)
      {
        v16 = v15;
        CFDictionarySetValue(Mutable, @"max.vendor.upload.connections.override", v15);
        CFRelease(v16);
      }

      *buf = 20;
      v17 = CFNumberCreate(v12, kCFNumberSInt64Type, buf);
      if (v17)
      {
        v18 = v17;
        CFDictionarySetValue(Mutable, @"max.vendor.download.connections.override", v17);
        CFRelease(v18);
      }

      CFDictionarySetValue(Mutable, @"auth.simulcast.response.signing.key.public.current", @"MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEAocv/GNpYVOMkps9l8bGHZH8JvMEFQavMbuRpHNch+VpT7abwkns3kA7SnvG6Lv37ko5OkTLJc5ZmtO7fkbonw==");
      v19 = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v19)
      {
        v21 = v19;
        v22 = *MEMORY[0x277CBED28];
        CFDictionarySetValue(v19, @"vendor.url", *MEMORY[0x277CBED28]);
        CFDictionarySetValue(v21, @"vendor.response.code", v22);
        CFDictionarySetValue(v21, @"client.error.on.failure", v22);
        CFDictionarySetValue(v21, @"status.line.on.failure", v22);
        v23 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
        if (v23)
        {
          v24 = v23;
          CFArrayAppendValue(v23, @"*");
          CFDictionarySetValue(v21, @"vendor.headers.on.success", v24);
          CFRelease(v24);
        }

        v25 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
        if (v25)
        {
          v26 = v25;
          CFArrayAppendValue(v25, @"*");
          CFDictionarySetValue(v21, @"vendor.headers.on.failure", v26);
          CFRelease(v26);
        }

        v27 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
        if (v27)
        {
          v28 = v27;
          CFArrayAppendValue(v27, @"contentlength.bytes");
          CFArrayAppendValue(v28, @"vendor.roundtrip.millis");
          CFArrayAppendValue(v28, @"vendor.network.interface");
          CFArrayAppendValue(v28, @"vendor.nameresolution.millis");
          CFArrayAppendValue(v28, @"vendor.nameresolution.serverAddress");
          CFArrayAppendValue(v28, @"vendor.request.qos");
          CFDictionarySetValue(v21, @"vendor.kpis", v28);
          CFRelease(v28);
        }

        v29 = CFArrayCreateMutable(v12, 0, MEMORY[0x277CBF128]);
        if (v29)
        {
          v30 = v29;
          CFArrayAppendValue(v29, @"chunking.time.millis");
          CFArrayAppendValue(v30, @"authorizePut.millis");
          CFArrayAppendValue(v30, @"cachingServer.bytes");
          CFArrayAppendValue(v30, @"cachingServer.used");
          CFArrayAppendValue(v30, @"authorizeGetForFiles.millis");
          CFDictionarySetValue(v21, @"client.kpis", v30);
          CFRelease(v30);
        }

        CFDictionarySetValue(Mutable, @"putcomplete.verbosity.0", v21);
        CFDictionarySetValue(Mutable, @"getcomplete.verbosity.0", v21);
        CFRelease(v21);
      }

      v31 = mmcs_logging_logger_default(v19, v20);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
LABEL_41:
        v8 = v3;
        if (!v3)
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v32 = CFStringCreateWithFormat(v12, 0, @"Using default MobileMe reporting levels.");
      v34 = mmcs_logging_logger_default(v32, v33);
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
LABEL_39:
        if (v32)
        {
          CFRelease(v32);
        }

        goto LABEL_41;
      }

      *buf = 138543362;
      *&buf[4] = v32;
      v35 = v34;
      v36 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      v40 = mmcs_logging_logger_default(v38, v39);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_41;
      }

      v32 = CFStringCreateWithFormat(v12, 0, @"Failed to create default MobileMe reporting levels.");
      v42 = mmcs_logging_logger_default(v32, v41);
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      *buf = 138543362;
      *&buf[4] = v32;
      v35 = v42;
      v36 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&dword_2577D8000, v35, v36, "%{public}@", buf, 0xCu);
    goto LABEL_39;
  }

  return pthread_mutex_unlock(&sReportingInfoInitLock);
}

const __CFString *mmcs_get_cfBOOLean_from_cfpreferences_object_for_key(const __CFString *a1, const __CFString *cfBOOLean_from_cftype_using_description)
{
  if (a1)
  {
    v4 = CFPreferencesCopyAppValue(a1, @"com.apple.mmcs");
    if (v4)
    {
      v5 = v4;
      cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(a1, v4, cfBOOLean_from_cftype_using_description);
      CFRelease(v5);
    }
  }

  return cfBOOLean_from_cftype_using_description;
}

void MMCSOperationMetricCombineMetrics(void *a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v44 = a1;
  v43 = a2;
  v50 = [v43 mutableCopy];
  v3 = [v50 sortedArrayUsingSelector:sel_compareStartTime_];
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v46 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v45 = [v50 count];
  if (v45)
  {
    v6 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    do
    {
      v52 = v6;
      v7 = [v50 objectAtIndexedSubscript:?];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v8 = [v7 rangesCopy];
      v9 = [v8 countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v9)
      {
        v10 = *v68;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v68 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v67 + 1) + 8 * i);
            v13 = [v12 operationState];
            v14 = v4;
            if (v13 != 1)
            {
              v15 = [v12 operationState];
              v14 = v5;
              if (v15)
              {
                continue;
              }
            }

            [v14 addObject:v12];
          }

          v9 = [v8 countByEnumeratingWithState:&v67 objects:v73 count:16];
        }

        while (v9);
      }

      v51 = [v7 bytesUploaded];
      v16 = [v7 bytesDownloaded];
      v17 = [v7 connections];
      v18 = [v7 connectionsCreated];
      v19 = [v7 bytesFulfilledLocally];
      v20 = [v7 bytesResumed];
      v21 = [v7 totalBytesByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v49, v21);

      v22 = [v7 chunkCountByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v48, v22);

      v23 = [v7 fileCountByChunkProfile];
      mmcs_operation_metric_add_uint64_dictionary(v47, v23);

      v24 = [v7 requestUUIDs];
      v25 = [v24 allObjects];
      [v46 addObjectsFromArray:v25];

      v58 += v51;
      v56 += v16;
      v57 += v17;
      v54 += v18;
      v55 += v19;
      v53 += v20;
      v6 = v52 + 1;
    }

    while (v52 + 1 != v45);
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
  }

  v26 = v44;
  objc_sync_enter(v26);
  v27 = MMCSOperationStateTimeRangeMergedRanges(v26, v4);

  v28 = MMCSOperationStateTimeRangeMergedRanges(v26, v5);

  v29 = MMCSOperationStateTimeRangeFilteredRanges(v26, v28, v27);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = v27;
  v31 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v31)
  {
    v32 = *v64;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v64 != v32)
        {
          objc_enumerationMutation(v30);
        }

        [v26 addRange:*(*(&v63 + 1) + 8 * j)];
      }

      v31 = [v30 countByEnumeratingWithState:&v63 objects:v72 count:16];
    }

    while (v31);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v34 = v29;
  v35 = [v34 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (v35)
  {
    v36 = *v60;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v34);
        }

        [v26 addRange:*(*(&v59 + 1) + 8 * k)];
      }

      v35 = [v34 countByEnumeratingWithState:&v59 objects:v71 count:16];
    }

    while (v35);
  }

  [v26 setBytesUploaded:{objc_msgSend(v26, "bytesUploaded") + v58}];
  [v26 setBytesDownloaded:{objc_msgSend(v26, "bytesDownloaded") + v56}];
  [v26 setConnections:{objc_msgSend(v26, "connections") + v57}];
  [v26 setConnectionsCreated:{objc_msgSend(v26, "connectionsCreated") + v54}];
  [v26 setBytesFulfilledLocally:{objc_msgSend(v26, "bytesFulfilledLocally") + v55}];
  [v26 setBytesResumed:{objc_msgSend(v26, "bytesResumed") + v53}];
  v38 = [v26 totalBytesByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v38, v49);

  v39 = [v26 chunkCountByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v39, v48);

  v40 = [v26 fileCountByChunkProfile];
  mmcs_operation_metric_add_uint64_dictionary(v40, v47);

  v41 = [v26 requestUUIDs];
  v42 = [v46 allObjects];
  [v41 addObjectsFromArray:v42];

  objc_sync_exit(v26);
}

uint64_t _getAbsoluteTimeFromPreferences(const __CFString *a1, const __CFString *a2, double *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v5 = DoubleFromCFObject(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

uint64_t DoubleFromCFObject(const __CFBoolean *a1, double *a2)
{
  if (IsValidCFBoolean(a1))
  {
    Value = CFBooleanGetValue(a1);
LABEL_3:
    *a2 = Value;
    return 1;
  }

  if (IsValidCFNumber(a1))
  {

    return CFNumberGetValue(a1, kCFNumberDoubleType, a2);
  }

  else
  {
    result = IsValidCFString(a1);
    if (result)
    {
      Value = CFStringGetDoubleValue(a1);
      goto LABEL_3;
    }
  }

  return result;
}

const void *IsValidCFBoolean(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFBooleanGetTypeID());
  }

  return result;
}

const void *IsValidCFNumber(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFNumberGetTypeID());
  }

  return result;
}

const void *IsValidCFString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

uint64_t mmcs_logging_logger_default(uint64_t a1, uint64_t a2)
{
  if (mmcs_logging_logger_default_once != -1)
  {
    mmcs_logging_logger_default_cold_1();
  }

  return mmcs_logging_logger_default_logger;
}

uint64_t _mmcs_report_setReportingInfo(uint64_t a1, const void *a2, const void *a3, int a4, const void *a5, CFAbsoluteTime a6, CFAbsoluteTime a7)
{
  pthread_mutex_lock(&sReportingInfoAccessLock);
  v14 = gMMCS_MobileMeReporting;
  if (!gMMCS_MobileMeReporting || a1 && *(gMMCS_MobileMeReporting + 16) != a1)
  {

    return pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  v16 = *gMMCS_MobileMeReporting;
  if (*gMMCS_MobileMeReporting)
  {
    v17 = v16 == a3;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    if (v16)
    {
      CFRelease(v16);
      v14 = gMMCS_MobileMeReporting;
    }

    *v14 = 0;
    if (!a3)
    {
      goto LABEL_27;
    }

    CFRetain(a3);
    if (!a1)
    {
      goto LABEL_27;
    }

    if (!mmcs_http_context_get_response_message(a1))
    {
      goto LABEL_27;
    }

    response_message = mmcs_http_context_get_response_message(a1);
    if (!response_message)
    {
      goto LABEL_27;
    }

    v19 = CFHTTPMessageCopyHeaderFieldValue(response_message, @"Cache-Control");
    if (v19)
    {
      v20 = v19;
      v21 = CFStringFind(v19, @"max-age=", 1uLL);
      if (v21.location == -1 || ((v40.location = 0, v40.length = 0, v42.length = CFStringGetLength(v20) - (v21.location + v21.length), v42.location = v21.location + v21.length, v22 = CFStringFindWithOptions(v20, @",", v42, 1uLL, &v40), v23 = *MEMORY[0x277CBECE8], !v22) ? (Length = CFStringGetLength(v20)) : (Length = v40.location), v43.length = Length - (v21.location + v21.length), v43.location = v21.location + v21.length, (v25 = CFStringCreateWithSubstring(v23, v20, v43)) == 0))
      {
        CFRelease(v20);
      }

      else
      {
        v26 = v25;
        DoubleValue = CFStringGetDoubleValue(v25);
        *(gMMCS_MobileMeReporting + 40) = DoubleValue;
        CFRelease(v26);
        CFRelease(v20);
        if (DoubleValue != 0.0)
        {
          goto LABEL_27;
        }
      }
    }

    *(gMMCS_MobileMeReporting + 40) = 0x40F5180000000000;
LABEL_27:
    v14 = gMMCS_MobileMeReporting;
    *gMMCS_MobileMeReporting = a3;
    v28 = *(v14 + 8);
    if (v28 != a2)
    {
      if (v28)
      {
        CFRelease(v28);
        v14 = gMMCS_MobileMeReporting;
      }

      *(v14 + 8) = a2;
      if (a2)
      {
        CFRetain(a2);
        v14 = gMMCS_MobileMeReporting;
      }
    }
  }

  *(v14 + 48) = a7;
  *(v14 + 56) = a6;
  v40.location = *(v14 + 40);
  result = pthread_mutex_unlock(&sReportingInfoAccessLock);
  if (!a4)
  {
    return result;
  }

  v29 = CFLocaleCreate(0, @"en_US");
  v30 = *MEMORY[0x277CBECE8];
  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x277CBECE8], @"yyyy/MM/dd kk:mm:ss.SSSS", 0, v29);
  v32 = DateFormatFromTemplate;
  if (v29 && DateFormatFromTemplate)
  {
    v33 = CFDateFormatterCreate(v30, v29, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
    v34 = v33;
    if (v33)
    {
      CFDateFormatterSetFormat(v33, v32);
    }

    goto LABEL_38;
  }

  v34 = 0;
  v35 = 0;
  if (v29)
  {
LABEL_38:
    CFRelease(v29);
    v35 = v34;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  CFPreferencesSetAppValue(@"report.ReportLevels", a3, @"com.apple.mmcs");
  CFPreferencesSetAppValue(@"report.LastSuccessfulCheckTime", a5, @"com.apple.mmcs");
  CFPreferencesSetAppValue(@"report.sha256", a2, @"com.apple.mmcs");
  if (v35)
  {
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(v30, v35, a6);
    CFPreferencesSetAppValue(@"report.LastSuccessfulCheckDate", StringWithAbsoluteTime, @"com.apple.mmcs");
    if (StringWithAbsoluteTime)
    {
      CFRelease(StringWithAbsoluteTime);
    }

    CFPreferencesSetAppValue(@"report.LastFailedCheckTime", 0, @"com.apple.mmcs");
    v37 = CFDateFormatterCreateStringWithAbsoluteTime(v30, v35, a7);
    CFPreferencesSetAppValue(@"report.LastFailedCheckDate", v37, @"com.apple.mmcs");
    if (v37)
    {
      CFRelease(v37);
    }

    CFRelease(v35);
  }

  else
  {
    CFPreferencesSetAppValue(@"report.LastSuccessfulCheckDate", 0, @"com.apple.mmcs");
    CFPreferencesSetAppValue(@"report.LastFailedCheckTime", 0, @"com.apple.mmcs");
    CFPreferencesSetAppValue(@"report.LastFailedCheckDate", 0, @"com.apple.mmcs");
  }

  v38 = CFNumberCreate(v30, kCFNumberDoubleType, &v40);
  if (v38)
  {
    v39 = v38;
    CFPreferencesSetAppValue(@"report.TTL", v38, @"com.apple.mmcs");
    CFRelease(v39);
  }

  return CFPreferencesAppSynchronize(@"com.apple.mmcs");
}

void *_mmcs_report_copyConfiguration(void *result, void *a2)
{
  if (gMMCS_MobileMeReporting && *gMMCS_MobileMeReporting)
  {
    v3 = result;
    pthread_mutex_lock(&sReportingInfoAccessLock);
    v4 = gMMCS_MobileMeReporting;
    if (gMMCS_MobileMeReporting)
    {
      if (v3)
      {
        *v3 = 0;
        v5 = *v4;
        if (*v4)
        {
          CFRetain(*v4);
          *v3 = v5;
        }
      }

      if (a2)
      {
        *a2 = 0;
        v6 = *(gMMCS_MobileMeReporting + 8);
        if (v6)
        {
          CFRetain(*(gMMCS_MobileMeReporting + 8));
          *a2 = v6;
        }
      }
    }

    return pthread_mutex_unlock(&sReportingInfoAccessLock);
  }

  return result;
}

void mmcs_report_copy_plist_header_values(void *a1, CFTypeRef *a2)
{
  theDict = 0;
  cf = 0;
  if (a1)
  {
    p_theDict = &theDict;
  }

  else
  {
    p_theDict = 0;
  }

  if (a2)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  _mmcs_report_copyConfiguration(p_theDict, p_cf);
  v6 = theDict;
  if (theDict)
  {
    *a1 = 0;
    Value = CFDictionaryGetValue(v6, @"echo.header.plist.version");
    v8 = Value;
    if (Value)
    {
      CFRetain(Value);
      v9 = CFGetTypeID(v8);
      if (v9 == CFStringGetTypeID())
      {
        *a1 = v8;
        v8 = 0;
      }
    }

    if (cf && mmcs_get_BOOLean_from_cfdictionary_object_for_key(theDict, @"send.header.plist.sha256", 1))
    {
      *a2 = cf;
      cf = 0;
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (theDict)
    {
      CFRelease(theDict);
    }
  }

  theDict = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_get_BOOLean_from_cfdictionary_object_for_key(const __CFDictionary *a1, void *key, uint64_t a3)
{
  if (!a1 || !key)
  {
    return a3;
  }

  Value = CFDictionaryGetValue(a1, key);

  return mmcs_get_BOOLean_from_cftype_using_description(key, Value, a3);
}

uint64_t mmcs_get_BOOLean_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  v3 = MEMORY[0x277CBED28];
  if (!a3)
  {
    v3 = MEMORY[0x277CBED10];
  }

  cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(a1, a2, *v3);
  if (!cfBOOLean_from_cftype_using_description)
  {
    mmcs_get_BOOLean_from_cftype_using_description_cold_1();
  }

  return CFBooleanGetValue(cfBOOLean_from_cftype_using_description);
}

const __CFString *mmcs_get_cfBOOLean_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      return a2;
    }

    v7 = CFNumberGetTypeID();
    if (v7 == CFGetTypeID(a2))
    {
      valuePtr = 0;
      Value = CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
      if (Value)
      {
        v10 = MEMORY[0x277CBED28];
        if (!valuePtr)
        {
          v10 = MEMORY[0x277CBED10];
        }

        return *v10;
      }

      v26 = mmcs_logging_logger_default(Value, v9);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        return a3;
      }

      v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert CFNumberRef to integer for key '%@'.", a1);
      v29 = mmcs_logging_logger_default(v27, v28);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

      *buf = 138543362;
      v39 = v27;
LABEL_29:
      _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_30:
      if (!v27)
      {
        return a3;
      }

      v25 = v27;
LABEL_44:
      CFRelease(v25);
      return a3;
    }

    v11 = CFStringGetTypeID();
    if (v11 == CFGetTypeID(a2))
    {
      if (CFStringCompare(a2, @"true", 1uLL) && CFStringCompare(a2, @"yes", 1uLL))
      {
        if (CFStringCompare(a2, @"false", 1uLL) && CFStringCompare(a2, @"no", 1uLL))
        {
          v12 = mmcs_copy_cfnumber_from_cftype_using_description(a1, a2, 0);
          if (v12)
          {
            v14 = v12;
            valuePtr = 0;
            v15 = CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
            if (v15)
            {
              v17 = MEMORY[0x277CBED28];
              if (!valuePtr)
              {
                v17 = MEMORY[0x277CBED10];
              }

              a3 = *v17;
            }

            else
            {
              v32 = mmcs_logging_logger_default(v15, v16);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v33 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to convert parsed string to integer for key '%@'.", a1);
                v35 = mmcs_logging_logger_default(v33, v34);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v39 = v33;
                  _os_log_impl(&dword_2577D8000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v33)
                {
                  CFRelease(v33);
                }
              }
            }

            v25 = v14;
            goto LABEL_44;
          }

          v30 = mmcs_logging_logger_default(0, v13);
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            return a3;
          }

          v27 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to decode string '%@' as BOOLean for key '%@'.", a2, a1);
          v29 = mmcs_logging_logger_default(v27, v31);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v39 = v27;
          goto LABEL_29;
        }

        v10 = MEMORY[0x277CBED10];
      }

      else
      {
        v10 = MEMORY[0x277CBED28];
      }

      return *v10;
    }

    v18 = CFGetTypeID(a2);
    v19 = CFCopyTypeIDDescription(v18);
    v21 = mmcs_logging_logger_default(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to recognized type id '%@' for BOOLean decoding for key '%@'.", v19, a1);
      v24 = mmcs_logging_logger_default(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v22;
        _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    if (v19)
    {
      v25 = v19;
      goto LABEL_44;
    }
  }

  return a3;
}

void mmcs_report_close()
{
  pthread_mutex_lock(&sReportingInfoInitLock);
  if (gMMCS_MobileMeReporting && (v0 = *(gMMCS_MobileMeReporting + 24) - 1, (*(gMMCS_MobileMeReporting + 24) = v0) == 0))
  {
    pthread_mutex_lock(&sReportingInfoAccessLock);
    v1 = gMMCS_MobileMeReporting;
    if (*gMMCS_MobileMeReporting)
    {
      CFRelease(*gMMCS_MobileMeReporting);
      v1 = gMMCS_MobileMeReporting;
    }

    *v1 = 0;
    if (v1[1])
    {
      CFRelease(v1[1]);
      v1 = gMMCS_MobileMeReporting;
    }

    v2 = v1[2];
    free(v1);
    gMMCS_MobileMeReporting = 0;
    pthread_mutex_unlock(&sReportingInfoAccessLock);
    pthread_mutex_unlock(&sReportingInfoInitLock);
    if (v2)
    {
      error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, 0, @"Cancelling plist fetch. Engine closing.", v3, v4, v5, v6);
      mmcs_http_context_should_cancel(v2, error_with_underlying_error);
      if (error_with_underlying_error)
      {
        CFRelease(error_with_underlying_error);
      }

      C3BaseRelease(v2);
    }
  }

  else
  {

    pthread_mutex_unlock(&sReportingInfoInitLock);
  }
}

void mmcs_operation_metric_add_uint64_dictionary(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        v12 = v11;
        if (v11)
        {
          mmcs_operation_metric_increment_uint64_dictionary_key(v3, v10, [v11 unsignedLongLongValue]);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

id MMCSOperationStateTimeRangeMergedRanges(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  if (v3 && v4)
  {
    [v4 sortUsingSelector:sel_compareStartTime_];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v29 = v4;
      v9 = 0;
      v10 = *v31;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          if (v9)
          {
            [*(*(&v30 + 1) + 8 * i) absoluteStart];
            if (v14 <= v11)
            {
              [v13 absoluteStop];
              if (v11 < v23)
              {
                v11 = v23;
              }
            }

            else
            {
              v15 = [v9 operationState];
              v16 = MEMORY[0x277CBEAA8];
              [v9 absoluteStart];
              v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
              [v9 absoluteStart];
              v19 = [v3 newRangeWithOperationState:v15 startDate:v17 duration:v11 - v18];
              [v5 addObject:v19];

              v20 = v13;
              [v20 absoluteStop];
              v11 = v21;
              v9 = v20;
            }
          }

          else
          {
            v9 = v13;
            [v9 absoluteStop];
            v11 = v22;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);

      if (!v9)
      {
        v4 = v29;
        goto LABEL_21;
      }

      v24 = [v9 operationState];
      v25 = MEMORY[0x277CBEAA8];
      [v9 absoluteStart];
      v6 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
      [v9 absoluteStart];
      v27 = [v3 newRangeWithOperationState:v24 startDate:v6 duration:v11 - v26];
      [v5 addObject:v27];

      v4 = v29;
    }

    else
    {
      v9 = 0;
    }

LABEL_21:
  }

  return v5;
}

id MMCSOperationStateTimeRangeFilteredRanges(void *a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = a1;
  v5 = a2;
  v6 = a3;
  [v5 sortUsingSelector:sel_compareStartTime_];
  if (MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(v5))
  {
    MMCSOperationStateTimeRangeFilteredRanges_cold_2();
  }

  [v6 sortUsingSelector:sel_compareStartTime_];
  if (MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(v6))
  {
    MMCSOperationStateTimeRangeFilteredRanges_cold_1();
  }

  v53 = [MEMORY[0x277CBEB18] array];
  v7 = [v6 count];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v5;
  v51 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v51)
  {
    v8 = 0;
    v50 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v9;
        v10 = *(*(&v55 + 1) + 8 * v9);
        while (v8 < v7)
        {
          v11 = [v6 objectAtIndexedSubscript:v8];
          v12 = [v11 compareStartTime:v10];
          v13 = [v11 compareStopTime:v10];
          [v11 absoluteStop];
          v15 = v14;
          [v10 absoluteStart];
          v17 = v16;
          [v11 absoluteStart];
          v19 = v18;
          [v10 absoluteStop];
          if (v12 == 1)
          {
            if (v13 != -1)
            {
              if (v19 >= v20)
              {
                [v53 addObject:v10];
              }

              else
              {
                v41 = [v10 operationState];
                v42 = MEMORY[0x277CBEAA8];
                [v10 absoluteStart];
                v43 = [v42 dateWithTimeIntervalSinceReferenceDate:?];
                [v11 absoluteStart];
                v45 = v44;
                [v10 absoluteStart];
                v47 = [v54 newRangeWithOperationState:v41 startDate:v43 duration:v45 - v46];

                [v53 addObject:v47];
              }

LABEL_22:

              break;
            }

            v21 = [v10 operationState];
            v22 = MEMORY[0x277CBEAA8];
            [v10 absoluteStart];
            v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
            [v11 absoluteStart];
            v25 = v24;
            [v10 absoluteStart];
            v27 = [v54 newRangeWithOperationState:v21 startDate:v23 duration:v25 - v26];

            [v53 addObject:v27];
            v28 = [v10 operationState];
            v29 = MEMORY[0x277CBEAA8];
            [v11 absoluteStart];
            v30 = [v29 dateWithTimeIntervalSinceReferenceDate:?];
            [v10 absoluteStop];
            v32 = v31;
            [v11 absoluteStart];
            v34 = [v54 newRangeWithOperationState:v28 startDate:v30 duration:v32 - v33];

            goto LABEL_16;
          }

          if (v13 != -1)
          {
            goto LABEL_22;
          }

          if (v15 > v17)
          {
            v35 = [v10 operationState];
            v36 = MEMORY[0x277CBEAA8];
            [v11 absoluteStop];
            v37 = [v36 dateWithTimeIntervalSinceReferenceDate:?];
            [v10 absoluteStop];
            v39 = v38;
            [v11 absoluteStop];
            v34 = [v54 newRangeWithOperationState:v35 startDate:v37 duration:v39 - v40];

            ++v8;
LABEL_16:
            v10 = v34;
            goto LABEL_18;
          }

          ++v8;
LABEL_18:
        }

        if (v8 >= v7)
        {
          [v53 addObject:v10];
        }

        ++v9;
      }

      while (v52 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v51);
  }

  return v53;
}

BOOL MMCSOperationStateTimeRangeHasOverlappingOperationsInArraySortedByStartTime(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 >= 2)
  {
    v4 = v2;
    v5 = 2;
    do
    {
      v6 = [v1 objectAtIndexedSubscript:v5 - 2];
      v7 = [v1 objectAtIndexedSubscript:v5 - 1];
      [v6 absoluteStop];
      v9 = v8;
      [v7 absoluteStart];
      v11 = v10;
      v3 = v9 > v10;

      if (v5 >= v4)
      {
        break;
      }

      ++v5;
    }

    while (v9 <= v11);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t mmcs_proxy_locator_exists()
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v0 = dispatch_semaphore_create(0);
  dispatch_retain(v0);
  v1 = *MEMORY[0x277CBECE8];
  Options = getLocateOptions();
  MutableCopy = CFDictionaryCreateMutableCopy(v1, 0, Options);
  v13 = MEMORY[0x277D85DD0];
  ACSMightCurrentNetworkHaveCachingServer();
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v4 = dispatch_time(0, 1000000000);
  v5 = dispatch_semaphore_wait(v0, v4);
  if (v5)
  {
    v7 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CFStringCreateWithFormat(v1, 0, @"ACSMightCurrentNetworkHaveCachingServer took too long (more than 1 second)", v13, 0x40000000, __mmcs_proxy_locator_exists_block_invoke, &unk_279845550, &v14, v0);
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  dispatch_release(v0);
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t MMCSICloudAuthGetRequestOptions()
{
  if (MMCSICloudAuthGetRequestOptions_onceToken != -1)
  {
    MMCSICloudAuthGetRequestOptions_cold_1();
  }

  return 2 * (mmcs_proxy_locator_exists() != 0);
}

uint64_t getLocateOptions()
{
  pthread_once(&sLocatorVars_once, _LocatorVars_init_once);
  result = sLocateOptions;
  if (!sLocateOptions)
  {
    getLocateOptions_cold_1();
  }

  return result;
}

void __mmcs_proxy_locator_exists_block_invoke(uint64_t a1, char a2, CFErrorRef err)
{
  v19 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (!err)
  {
    goto LABEL_13;
  }

  Domain = CFErrorGetDomain(err);
  Code = CFEqual(Domain, *MEMORY[0x277CBEE48]);
  if (Code && (Code = CFErrorGetCode(err), Code == 60))
  {
    v8 = mmcs_logging_logger_default(60, v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"might have caching server returned with error: %@", err);
    v11 = mmcs_logging_logger_default(v9, v10);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v18 = v9;
    v12 = v11;
    v13 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v14 = mmcs_logging_logger_default(Code, v7);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"might have caching server returned with error: %@", err);
    v16 = mmcs_logging_logger_default(v9, v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v18 = v9;
    v12 = v16;
    v13 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_2577D8000, v12, v13, "%{public}@", buf, 0xCu);
LABEL_11:
  if (v9)
  {
    CFRelease(v9);
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 40));
  dispatch_release(*(a1 + 40));
}

uint64_t mmcs_perform_source_invalidate(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performSourceCallbacks[3 * v1 + 1]();
  }

  return result;
}

uint64_t mmcs_perform_timer_invalidate(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTimerCallbacks[4 * v1 + 2]();
  }

  return result;
}

void mmcs_perform_dispatch_timer_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(v1 + 8);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 8));
    *(v1 + 8) = 0;
  }
}

void _mmcs_read_stream_poolCFFinalize(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  stream_pool_close = mmcs_read_stream_pool_close(a1);
  v4 = mmcs_logging_logger_default(stream_pool_close, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 112))
    {
      v5 = *MEMORY[0x277CBECE8];
      Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        v7 = Mutable;
        CFStringAppendFormat(Mutable, 0, @"=== Read Stream Pool %@ stats\n", *(a1 + 16));
        CFStringAppendFormat(v7, 0, @"\ttotal connections: %llu\n", *(a1 + 80));
        CFStringAppendFormat(v7, 0, @"\t   total requests: %llu\n", *(a1 + 88));
        v8 = *(a1 + 80);
        if (v8)
        {
          CFStringAppendFormat(v7, 0, @"\t  reqs/connection: %.03lf\n", *(a1 + 88) / v8);
        }

        alloc = v5;
        v9 = *(a1 + 28);
        if (v9)
        {
          LODWORD(v10) = 0;
          LODWORD(v11) = 0;
          LODWORD(v12) = 0;
          LODWORD(v13) = 0;
          LODWORD(v14) = 0;
          LODWORD(v15) = 0;
          LODWORD(v16) = 0;
          LODWORD(v17) = 0;
          v18 = *(a1 + 112) + 40;
          v19 = 0.0;
          v20 = 0.0;
          v21 = 0.0;
          v22 = 0.0;
          do
          {
            v10 = (*(v18 - 40) + v10);
            v11 = (*(v18 - 36) + v11);
            v12 = (*(v18 - 32) + v12);
            v13 = (*(v18 - 28) + v13);
            v14 = (*(v18 - 24) + v14);
            v21 = v21 + *(v18 - 16);
            v17 = (*(v18 - 8) + v17);
            v22 = v22 + *v18;
            v16 = (*(v18 + 8) + v16);
            v20 = v20 + *(v18 + 16);
            v15 = (*(v18 + 24) + v15);
            v19 = v19 + *(v18 + 32);
            v18 += 80;
            --v9;
          }

          while (v9);
        }

        else
        {
          v17 = 0;
          v16 = 0;
          v15 = 0;
          v14 = 0;
          v13 = 0;
          v12 = 0;
          v11 = 0;
          v10 = 0;
          v22 = 0.0;
          v21 = 0.0;
          v20 = 0.0;
          v19 = 0.0;
        }

        CFStringAppendFormat(v7, 0, @"\t     still in use: %llu\n", *(a1 + 80) - v10);
        if (v11)
        {
          CFStringAppendFormat(v7, 0, @"\t          timeout: %u\n", v11);
        }

        v25 = (v16 + v17 + v15 + v14);
        if (v12)
        {
          CFStringAppendFormat(v7, 0, @"\t           maxout: %u\n", v12);
        }

        if (v13)
        {
          CFStringAppendFormat(v7, 0, @"\t       excess out: %u\n", v13);
        }

        if (v25)
        {
          CFStringAppendFormat(v7, 0, @"\t      error total: %u\n", v25);
        }

        if (v17)
        {
          CFStringAppendFormat(v7, 0, @"\t       conn reset: %u (avg %.3lf sec remaining)\n", v17, v22 / v17);
        }

        if (v16)
        {
          CFStringAppendFormat(v7, 0, @"\t        ssl error: %u (avg %.3lf sec remaining)\n", v16, v20 / v16);
        }

        if (v14)
        {
          CFStringAppendFormat(v7, 0, @"\t     mmcs timeout: %u (avg %.3lf sec remaining)\n", v14, v21 / v14);
        }

        if (v15)
        {
          CFStringAppendFormat(v7, 0, @"\t      other error: %u (avg %.3lf sec remaining)\n", v15, v19 / v15);
        }

        v26 = *(a1 + 28);
        if (v26)
        {
          v27 = 72;
          v28 = 1;
          do
          {
            v29 = *(a1 + 112);
            v30 = v29 + v27;
            if (*(v29 + v27 - 72))
            {
              if (v28 == v26)
              {
                v31 = "+";
              }

              else
              {
                v31 = "";
              }

              CFStringAppendFormat(v7, 0, @"\n\t  times used: %u%s\n", v28, v31);
              CFStringAppendFormat(v7, 0, @"\t       total: %u\n", *(v30 - 72));
              if (*(v30 - 68))
              {
                CFStringAppendFormat(v7, 0, @"\t     timeout: %u\n", *(v30 - 68));
              }

              if (*(v29 + v27 - 64))
              {
                CFStringAppendFormat(v7, 0, @"\t      maxout: %u\n", *(v29 + v27 - 64));
              }

              if (*(v29 + v27 - 60))
              {
                CFStringAppendFormat(v7, 0, @"\t  excess out: %u\n", *(v29 + v27 - 60));
              }

              v32 = v29 + v27;
              v33 = *(v29 + v27 - 40);
              if (v33)
              {
                CFStringAppendFormat(v7, 0, @"\t  conn reset: %u (avg %.3lf sec remaining)\n", v33, *(v32 - 32) / v33);
              }

              v34 = *(v32 - 24);
              if (v34)
              {
                CFStringAppendFormat(v7, 0, @"\t   ssl error: %u (avg %.3lf sec remaining)\n", v34, *(v29 + v27 - 16) / v34);
              }

              v35 = v29 + v27;
              v36 = *(v29 + v27 - 56);
              if (v36)
              {
                CFStringAppendFormat(v7, 0, @"\tmmcs timeout: %u (avg %.3lf sec remaining)\n", v36, *(v35 - 48) / v36);
              }

              v37 = *(v35 - 8);
              if (v37)
              {
                CFStringAppendFormat(v7, 0, @"\t other error: %u (avg %.3lf sec remaining)\n", v37, *(v29 + v27) / v37);
              }
            }

            v26 = *(a1 + 28);
            v27 += 80;
          }

          while (v28++ < v26);
        }

        v39 = mmcs_logging_logger_default(v23, v24);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = CFStringCreateWithFormat(alloc, 0, @"%@", v7);
          v42 = mmcs_logging_logger_default(v40, v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v49 = v40;
            _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v40)
          {
            CFRelease(v40);
          }
        }

        CFRelease(v7);
      }
    }
  }

  v43 = *(a1 + 16);
  if (v43)
  {
    CFRelease(v43);
  }

  *(a1 + 16) = 0;
  v44 = *(a1 + 104);
  if (v44)
  {
    CFDictionaryApplyFunction(v44, _close_http_session_entry, 0);
    v45 = *(a1 + 104);
    if (v45)
    {
      CFRelease(v45);
    }

    *(a1 + 104) = 0;
  }

  v46 = *(a1 + 112);
  if (v46)
  {
    free(v46);
  }

  *(a1 + 112) = 0;
}

uint64_t _mmcs_perform_targetCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTargetCallbacks[7 * v1 + 4]();
  }

  return result;
}

void _mmcs_request_queueCFFinalize(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v3 = mmcs_logging_logger_default(a1, a2);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  alloc = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v5 = 0;
  v6 = v2 + 1312;
  v30 = v2;
  v7 = v2 + 1392;
  do
  {
    v8 = mmcs_request_type_as_c_string(v5);
    CFStringAppendFormat(Mutable, 0, @"%s statistics\n", v8);
    CFStringAppend(Mutable, @"Queue Depth Distribution\n  Depth Count\n");
    v9 = 0;
    v10 = *(v6 + 8 * v5);
    while (1)
    {
      v11 = *(v10 + 4 * v9);
      if (v11)
      {
        break;
      }

LABEL_7:
      if (++v9 == 21)
      {
        goto LABEL_10;
      }
    }

    if (v9 != 20)
    {
      CFStringAppendFormat(Mutable, 0, @"%6ld  %u\n", v9, v11);
      goto LABEL_7;
    }

    CFStringAppendFormat(Mutable, 0, @"%6ld+ %u\n", 20, v11);
LABEL_10:
    CFStringAppend(Mutable, @"In-flight Request Count Distribution\n  Depth Count\n");
    v12 = 0;
    v13 = *(v7 + 8 * v5);
    while (2)
    {
      v14 = *(v13 + 4 * v12);
      if (!v14)
      {
LABEL_14:
        if (++v12 == 21)
        {
          goto LABEL_17;
        }

        continue;
      }

      break;
    }

    if (v12 != 20)
    {
      CFStringAppendFormat(Mutable, 0, @"%6ld  %u\n", v12, v14);
      goto LABEL_14;
    }

    CFStringAppendFormat(Mutable, 0, @"%6ld+ %u\n", 20, v14);
LABEL_17:
    CFStringAppend(Mutable, @"\n\n");
    ++v5;
  }

  while (v5 != 10);
  v17 = mmcs_logging_logger_default(v15, v16);
  v2 = v30;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = CFStringCreateWithFormat(alloc, 0, @"%@", Mutable);
    v20 = mmcs_logging_logger_default(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v32 = v18;
      _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_25:
  v21 = 10;
  v22 = v2;
  do
  {
    v23 = v22[2];
    if (v23)
    {
      CFRelease(v23);
    }

    v22[2] = 0;
    v24 = v22[164];
    if (v24)
    {
      free(v24);
    }

    v22[164] = 0;
    v25 = v22[174];
    if (v25)
    {
      free(v25);
    }

    v22[174] = 0;
    ++v22;
    --v21;
  }

  while (v21);
  v26 = *(v2 + 96);
  if (v26)
  {
    CFRelease(v26);
  }

  *(v2 + 96) = 0;
  v27 = *(v2 + 184);
  if (v27)
  {
    v34.length = CFArrayGetCount(*(v2 + 184));
    v34.location = 0;
    CFArrayApplyFunction(v27, v34, _CFArrayApplierFunction_Free, 0);
    v28 = *(v2 + 184);
    if (v28)
    {
      CFRelease(v28);
    }

    *(v2 + 184) = 0;
  }
}

uint64_t MMCSEngineCreateWithTargetDispatchQueue(dispatch_queue_t target, const __CFURL *a2, const void *a3, const __CFString *a4, const __CFDictionary *a5, unint64_t *a6)
{
  v11 = dispatch_queue_create_with_target_V2("com.apple.mmcs", 0, target);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v19 = 0;
  v13 = mmcs_perform_dispatch_target_create(&v19, v11);
  if (!v13)
  {
    v16 = mmcs_logging_logger_default(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "Couldn't allocate mmcs_perform_target", v18, 2u);
    }

    return 0;
  }

  Internal = _MMCSEngineCreateInternal(v19, a2, a3, a4, a5, a6);
  if (v19)
  {
    C3BaseRelease(v19);
  }

  v19 = 0;
  dispatch_release(v12);
  return Internal;
}

uint64_t mmcs_perform_target_create(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_perform_targetGetTypeID_typeID, &kmmcs_perform_targetContextClass);
  result = C3TypeCreateInstance_(0, v6, a3 + 32);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 24) = result + 32;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_dispatch_target_create(uint64_t *a1, const void *a2)
{
  v7 = 0;
  result = mmcs_perform_target_create(&v7, 2, 8);
  if (result)
  {
    v5 = v7;
    if (v7)
    {
      v6 = *(v7 + 24);
      C3BaseRetain(a2);
      *v6 = a2;
      *a1 = v5;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _MMCSEngineCreateInternal(const void *a1, const __CFURL *a2, const void *a3, const __CFString *a4, const __CFDictionary *a5, unint64_t *a6)
{
  v104 = *MEMORY[0x277D85DE8];
  pthread_once(&sOnceForLibrary, _mmcs_init_once_for_library);
  mmcs_proxy_locator_prime();
  v12 = 0;
  if (a2 && a6)
  {
    if (*a6 > 2)
    {
      if (*a6 >= 3 && (a6[2] == 0) == (a6[8] == 0))
      {
        return 0;
      }
    }

    else if (!a6[2])
    {
      return 0;
    }

    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
    {
      mkdir_recursive(buffer, 0x1C0u);
      mmcs_engine_cleanup_workpath(buffer, @"new");
    }

    v13 = *MEMORY[0x277CBECE8];
    v14 = CKChunkStoreCreate();
    if (v14)
    {
      v16 = v14;
      v17 = C3TypeRegister(&mmcs_engineGetTypeID_typeID, &kmmcs_engineContextClass);
      Instance = C3TypeCreateInstance_(0, v17, 0xC8uLL);
      if (Instance)
      {
        v12 = Instance;
        *(Instance + 16) = v16;
        CFRetain(v16);
        *(v12 + 56) = a1;
        C3BaseRetain(a1);
        *(v12 + 128) = a2;
        CFRetain(a2);
        *(v12 + 24) = mmcs_job_queue_create();
        *(v12 + 120) = 0;
        *(v12 + 152) = MMCSEngineClientContextCopy(a6, v20);
        callBacks = *byte_2868BF008;
        *(v12 + 160) = CFSetCreateMutable(v13, 0, &callBacks);
        *(v12 + 168) = 1;
        *(v12 + 175) = 1;
        *(v12 + 184) = 1;
        *(v12 + 170) = 0x1000000;
        *(v12 + 72) = a3;
        CFRetain(a3);
        *(v12 + 80) = mmcs_engine_create_client_header_value(a3);
        Copy = mmcs_request_queue_create((v12 + 48));
        if (Copy)
        {
          if (a4)
          {
            Copy = CFStringCreateCopy(v13, a4);
            *(v12 + 88) = Copy;
          }

          if (!a5)
          {
            goto LABEL_37;
          }

          *(v12 + 168) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"VerifyPutItemContent", *(v12 + 168));
          *(v12 + 170) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableGetResume", *(v12 + 170));
          *(v12 + 184) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableAttemptedPersistedConnections", *(v12 + 184));
          *(v12 + 171) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableLocallySatisfiedGets", *(v12 + 171));
          *(v12 + 172) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a5, @"EnableGetChunks", *(v12 + 172));
          Value = CFDictionaryGetValue(a5, @"kMMCSEnginePropertyTestMaxInflightContainerRequests");
          if (Value)
          {
            v24 = Value;
            v25 = CFGetTypeID(Value);
            if (v25 == CFNumberGetTypeID())
            {
              *valuePtr = 0;
              if (CFNumberGetValue(v24, kCFNumberCFIndexType, valuePtr))
              {
                v26 = *valuePtr;
                if (*valuePtr >= 1)
                {
                  *(v12 + 169) = 1;
                  mmcs_request_queue_set_test_max_requests_inflight(*(v12 + 48), v26);
                  mmcs_request_queue_set_test_requests_inflight(*(v12 + 48), *valuePtr, 1);
                  mmcs_request_queue_set_test_requests_inflight(*(v12 + 48), *valuePtr, 0);
                }
              }
            }
          }

          Copy = CFDictionaryGetValue(a5, @"kMMCSEnginePropertyMaxConsecutiveNetworkErrors");
          if (Copy && (v27 = Copy, v28 = CFGetTypeID(Copy), Copy = CFNumberGetTypeID(), v28 == Copy))
          {
            *valuePtr = 0;
            Copy = CFNumberGetValue(v27, kCFNumberIntType, valuePtr);
            v29 = 3;
            if (Copy)
            {
              v30 = *valuePtr;
              if ((*valuePtr & 0x80000000) == 0)
              {
                Copy = mmcs_request_queue_set_test_max_consecutive_network_errors(*(v12 + 48), *valuePtr);
                v29 = v30;
              }
            }
          }

          else
          {
LABEL_37:
            v29 = 3;
          }

          if (*(v12 + 184))
          {
            mmcs_read_stream_pool_create((v12 + 32), @"icloud_pool_", 20, 0xAu, 1.0);
            mmcs_read_stream_pool_create((v12 + 40), @"vendor_pool_", 20, 0xAu, 1.0);
            v38 = *(v12 + 32);
            if (v38)
            {
              mmcs_read_stream_pool_schedule(v38, *(v12 + 56));
            }

            Copy = *(v12 + 40);
            if (Copy)
            {
              Copy = mmcs_read_stream_pool_schedule(Copy, *(v12 + 56));
            }
          }

          if (!_kMMCSEngineDefaultProtocolVersion)
          {
            MMCSGetDefaultProtocolVersion_cold_1();
          }

          *(v12 + 64) = _kMMCSEngineDefaultProtocolVersion;
          *(v12 + 174) = 1;
          v39 = mmcs_logging_logger_default(Copy, v22);
          v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          if (v40)
          {
            v42 = CFStringCreateWithFormat(v13, 0, @"Created mmcs engine (%p) '%@' %@ DebugLevel:%ld", v12, a3, a4, gMMCS_DebugLevel);
            v44 = mmcs_logging_logger_default(v42, v43);
            v40 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
            if (v40)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v42;
              _os_log_impl(&dword_2577D8000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v42)
            {
              CFRelease(v42);
            }
          }

          v45 = mmcs_logging_logger_default(v40, v41);
          v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
          if (v46)
          {
            if (*(v12 + 168))
            {
              v48 = "true";
            }

            else
            {
              v48 = "false";
            }

            v49 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine verifySentChunks: %s", v48);
            v51 = mmcs_logging_logger_default(v49, v50);
            v46 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
            if (v46)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v49;
              _os_log_impl(&dword_2577D8000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v49)
            {
              CFRelease(v49);
            }
          }

          v52 = mmcs_logging_logger_default(v46, v47);
          v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
          if (v53)
          {
            v55 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine maxConsecutiveNetworkErrors: %lu", v29);
            v57 = mmcs_logging_logger_default(v55, v56);
            v53 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
            if (v53)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v55;
              _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v55)
            {
              CFRelease(v55);
            }
          }

          v58 = mmcs_logging_logger_default(v53, v54);
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
          if (v59)
          {
            if (*(v12 + 170))
            {
              v61 = "true";
            }

            else
            {
              v61 = "false";
            }

            v62 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableGetResume: %s", v61);
            v64 = mmcs_logging_logger_default(v62, v63);
            v59 = os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
            if (v59)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v62;
              _os_log_impl(&dword_2577D8000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v62)
            {
              CFRelease(v62);
            }
          }

          v65 = mmcs_logging_logger_default(v59, v60);
          v66 = os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT);
          if (v66)
          {
            if (*(v12 + 171))
            {
              v68 = "true";
            }

            else
            {
              v68 = "false";
            }

            v69 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableLocallySatisfiedGets: %s", v68);
            v71 = mmcs_logging_logger_default(v69, v70);
            v66 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
            if (v66)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v69;
              _os_log_impl(&dword_2577D8000, v71, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }

          v72 = mmcs_logging_logger_default(v66, v67);
          v73 = os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
          if (v73)
          {
            if (*(v12 + 172))
            {
              v75 = "true";
            }

            else
            {
              v75 = "false";
            }

            v76 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableGetChunks: %s", v75);
            v78 = mmcs_logging_logger_default(v76, v77);
            v73 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
            if (v73)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v76;
              _os_log_impl(&dword_2577D8000, v78, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v76)
            {
              CFRelease(v76);
            }
          }

          v79 = mmcs_logging_logger_default(v73, v74);
          v80 = os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
          if (v80)
          {
            if (*(v12 + 184))
            {
              v82 = "true";
            }

            else
            {
              v82 = "false";
            }

            v83 = CFStringCreateWithFormat(v13, 0, @"mmcs_engine enableAttemptedPersistedConnections: %s", v82);
            v85 = mmcs_logging_logger_default(v83, v84);
            v80 = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
            if (v80)
            {
              *valuePtr = 138543362;
              *&valuePtr[4] = v83;
              _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
            }

            if (v83)
            {
              CFRelease(v83);
            }
          }

          if (!*(v12 + 170))
          {
            v86 = mmcs_logging_logger_default(v80, v81);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v87 = CFStringCreateWithFormat(v13, 0, @"Cleaning up orphaned temporary files");
              v89 = mmcs_logging_logger_default(v87, v88);
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *valuePtr = 138543362;
                *&valuePtr[4] = v87;
                _os_log_impl(&dword_2577D8000, v89, OS_LOG_TYPE_DEFAULT, "%{public}@", valuePtr, 0xCu);
              }

              if (v87)
              {
                CFRelease(v87);
              }
            }

            mmcs_engine_cleanup_workpath(buffer, @"tmpm");
          }

          mmcs_report_initialize();
          cf = 0;
          v90 = mmcs_engine_detect_working_directory_attributes(a2, (v12 + 144), (v12 + 136), (v12 + 137), &cf);
          if (v90)
          {
            CFRelease(v16);
            return v12;
          }

          v97 = mmcs_logging_logger_default(v90, v91);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
          {
            v98 = mmcs_cferror_copy_description(cf);
            *valuePtr = 138543362;
            *&valuePtr[4] = v98;
            _os_log_impl(&dword_2577D8000, v97, OS_LOG_TYPE_ERROR, "Couldn't detect working directory attributes with error: %{public}@", valuePtr, 0xCu);
          }

          v96 = cf;
          if (!cf)
          {
            goto LABEL_112;
          }
        }

        else
        {
          v92 = mmcs_logging_logger_default(Copy, v22);
          if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_112;
          }

          v93 = CFStringCreateWithFormat(v13, 0, @"Couldn't allocate requestQueue");
          v95 = mmcs_logging_logger_default(v93, v94);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            *valuePtr = 138543362;
            *&valuePtr[4] = v93;
            _os_log_impl(&dword_2577D8000, v95, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
          }

          if (!v93)
          {
            goto LABEL_112;
          }

          v96 = v93;
        }

        CFRelease(v96);
LABEL_112:
        CFRelease(v16);
        C3BaseRelease(v12);
        return 0;
      }

      v34 = mmcs_logging_logger_default(0, v19);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = CFStringCreateWithFormat(v13, 0, @"Couldn't allocate mmcs_engine");
        v37 = mmcs_logging_logger_default(v35, v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          LODWORD(callBacks.version) = 138543362;
          *(&callBacks.version + 4) = v35;
          _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", &callBacks, 0xCu);
        }

        if (v35)
        {
          CFRelease(v35);
        }
      }
    }

    else
    {
      v31 = mmcs_logging_logger_default(0, v15);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v16 = CFStringCreateWithFormat(v13, 0, @"The chunk store is NULL");
      v33 = mmcs_logging_logger_default(v16, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(callBacks.version) = 138543362;
        *(&callBacks.version + 4) = v16;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", &callBacks, 0xCu);
      }

      if (!v16)
      {
        return 0;
      }
    }

    CFRelease(v16);
    return 0;
  }

  return v12;
}

uint64_t C3TypeCreateInstance_(uint64_t a1, uint64_t a2, size_t a3)
{
  if (HIDWORD(a3))
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), a3);
  }

  return v3;
}

uint64_t C3TypeRegister(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    pthread_mutex_lock(&C3TypeRegister_lock);
    if (!*a1)
    {
      *a1 = _CFRuntimeRegisterClass();
    }

    pthread_mutex_unlock(&C3TypeRegister_lock);
    return *a1;
  }

  return result;
}

CFTypeRef C3BaseRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

uint64_t mmcs_proxy_locator_prime()
{
  pthread_once(&sLocatorVars_once, _LocatorVars_init_once);
  if (!sDummyURL)
  {
    mmcs_proxy_locator_prime_cold_1();
  }

  getLocateOptions();

  return ACSLocateCachingServer();
}

uint64_t mkdir_recursive(uint64_t a1, mode_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(path, 0x400uLL);
  if (__strlcpy_chk() <= 0x3FF)
  {
    result = mkpath_np(path, a2);
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = 63;
  }

  *__error() = v3;
  return 0xFFFFFFFFLL;
}

uint64_t mmcs_engine_cleanup_workpath(char *a1, const __CFString *a2)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v37[0] = a1;
  v37[1] = 0;
  v3 = fts_open(v37, 28, 0);
  v4 = fts_read(v3);
  if (!v4)
  {
    return fts_close(v3);
  }

  v6 = v4;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    fts_info = v6->fts_info;
    if (fts_info > 0xA)
    {
      if (fts_info != 11)
      {
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    if (fts_info != 8)
    {
      break;
    }

LABEL_12:
    v10 = CFStringCreateWithCString(v7, v6->fts_path, 0x8000100u);
    if (v10)
    {
      v11 = v10;
      PathComponent = XCFStringCopyLastPathComponent(v10);
      if (PathComponent)
      {
        v13 = PathComponent;
        if (CFStringHasPrefix(PathComponent, a2))
        {
          v14 = unlink(v6->fts_path);
          v15 = v14;
          v17 = mmcs_logging_logger_default(v14, v16);
          if (v15)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              fts_path = v6->fts_path;
              v19 = *__error();
              v20 = __error();
              v21 = strerror(*v20);
              v22 = CFStringCreateWithFormat(v7, 0, @"error cleaning up file %s: (%d)%s", fts_path, v19, v21);
              v24 = mmcs_logging_logger_default(v22, v23);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v36 = v22;
                v25 = v24;
                v26 = OS_LOG_TYPE_ERROR;
                goto LABEL_22;
              }

              goto LABEL_23;
            }
          }

          else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v22 = CFStringCreateWithFormat(v7, 0, @"cleaning up file %s", v6->fts_path);
            v28 = mmcs_logging_logger_default(v22, v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v22;
              v25 = v28;
              v26 = OS_LOG_TYPE_DEFAULT;
LABEL_22:
              _os_log_impl(&dword_2577D8000, v25, v26, "%{public}@", buf, 0xCu);
            }

LABEL_23:
            if (v22)
            {
              CFRelease(v22);
            }
          }
        }

        CFRelease(v13);
      }

      CFRelease(v11);
    }

LABEL_27:
    v4 = fts_read(v3);
    v6 = v4;
    if (!v4)
    {
      return fts_close(v3);
    }
  }

  if (fts_info != 4 && fts_info != 7)
  {
    goto LABEL_27;
  }

  v29 = mmcs_logging_logger_default(v4, v5);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v31 = CFStringCreateWithFormat(v7, 0, @"Error in enumeration: fts_errno => %d", v6->fts_errno);
    v33 = mmcs_logging_logger_default(v31, v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v31;
      _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v31)
    {
      CFRelease(v31);
    }
  }

  return fts_close(v3);
}

CFStringRef XCFStringCopyLastPathComponent(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], filePath, kCFURLPOSIXPathStyle, 0);
  PathComponent = CFURLCopyLastPathComponent(v1);
  CFRelease(v1);
  return PathComponent;
}

uint64_t mmcs_job_queue_create()
{
  v0 = C3TypeRegister(&mmcs_job_queueGetTypeID_typeID, &kmmcs_job_queueContextClass);
  Instance = C3TypeCreateInstance_(0, v0, 0x60uLL);
  v2 = Instance;
  if (Instance)
  {
    v3 = pthread_mutex_init((Instance + 16), 0);
    *(v2 + 80) = v3 == 0;
    if (v3 || (*(v2 + 104) = 0, v5 = dispatch_queue_create("com.apple.mmcs.chunking", 0), (*(v2 + 88) = v5) == 0) || (v6 = dispatch_group_create(), (*(v2 + 96) = v6) == 0))
    {
      C3BaseRelease(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t MMCSEngineClientContextCopy(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*a1 > 0xAuLL)
  {
    v5 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return 0;
  }

  else
  {
    v3 = *(&MMCSEngineClientContextClasses)[*a1];

    return v3();
  }
}

__n128 MMCSEngineClientContextCopy10(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x1080040B4ECD51FuLL);
  if (v2)
  {
    v4 = *(a1 + 16);
    *v2 = *a1;
    v2[1] = v4;
    result = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 80);
    v2[4] = *(a1 + 64);
    v2[5] = v6;
    v2[2] = result;
    v2[3] = v5;
  }

  return result;
}

uint64_t mmcs_request_queue_create(uint64_t *a1)
{
  *a1 = 0;
  v2 = C3TypeRegister(&mmcs_request_queueGetTypeID_typeID, &kmmcs_request_queueContextClass);
  result = C3TypeCreateInstance_(0, v2, 0x5F8uLL);
  if (result)
  {
    v4 = result;
    if (mmcs_request_queue_init(result))
    {
      *a1 = v4;
      return 1;
    }

    else
    {
      C3BaseRelease(v4);
      return 0;
    }
  }

  return result;
}

BOOL mmcs_request_queue_init(uint64_t a1)
{
  *(a1 + 1480) = 20;
  *(a1 + 1472) = 0;
  *(a1 + 1304) = 0;
  *(a1 + 1296) = 3;
  *(a1 + 1528) = mmcs_get_cfindex_from_options(@"throughput.bytesPerPeriod", 0, 3750000);
  v2 = 0;
  *(a1 + 1536) = mmcs_get_cfindex_from_options(@"throughput.period", 0, 30);
  v3 = *MEMORY[0x277CBECE8];
  v4 = 1312;
  v11 = *&off_2868BF230;
  v12 = xmmword_2868BF220;
  v5 = off_2868BF240;
  while (1)
  {
    v6 = (a1 + 4 * v2);
    v6[26] = 0;
    v6[36] = mmcs_request_queue_max_requests_inflight_for_request_type(v2);
    v6[371] = mmcs_request_queue_max_requests_inflight_for_request_type(v2);
    *&callBacks.version = v12;
    *&callBacks.release = v11;
    callBacks.compare = v5;
    v7 = a1 + 8 * v2;
    *(v7 + 16) = CFBinaryHeapCreate(v3, 0, &callBacks, 0);
    *(a1 + v4) = malloc_type_calloc(1uLL, 0x54uLL, 0x100004052888210uLL);
    v8 = malloc_type_calloc(1uLL, 0x54uLL, 0x100004052888210uLL);
    *(a1 + v4 + 80) = v8;
    if (!*(v7 + 16) || !v8 || !*(a1 + v4))
    {
      break;
    }

    ++v2;
    v4 += 8;
    if (v2 == 10)
    {
      valueCallBacks = *byte_2868BF248;
      v9 = CFDictionaryCreateMutable(v3, 0, 0, &valueCallBacks);
      *(a1 + 96) = v9;
      return v9 != 0;
    }
  }

  return 0;
}

uint64_t mmcs_get_cfindex_from_options(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = mmcs_copy_cftype_from_options_object_for_key(a1, a2, 0);
  cfindex_from_cftype_using_description = mmcs_get_cfindex_from_cftype_using_description(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return cfindex_from_cftype_using_description;
}

CFTypeRef mmcs_copy_cftype_from_options_object_for_key(CFStringRef key, CFDictionaryRef theDict, CFTypeRef cf)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!key)
  {
    goto LABEL_11;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      v6 = Value;
      CFRetain(Value);
      return v6;
    }
  }

  v7 = CFPreferencesCopyAppValue(key, @"com.apple.mmcs");
  if (v7)
  {
    v6 = v7;
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Found UserDefaults Override: %@:%@", key, v6);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  else
  {
LABEL_11:
    if (cf)
    {
      CFRetain(cf);
      return cf;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t mmcs_get_cfindex_from_cftype_using_description(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v4 = mmcs_copy_cfnumber_from_cftype_using_description(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    valuePtr = 0;
    if (!CFNumberGetValue(v4, kCFNumberCFIndexType, &valuePtr))
    {
      valuePtr = a3;
    }

    CFRelease(v5);
    return valuePtr;
  }

  return a3;
}

CFNumberRef mmcs_copy_cfnumber_from_cftype_using_description(uint64_t a1, const __CFString *a2, CFTypeRef cf)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_23;
  }

  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    CFRetain(a2);
    return a2;
  }

  v8 = CFBooleanGetTypeID();
  if (v8 == CFGetTypeID(a2))
  {
    *valuePtr = CFBooleanGetValue(a2);
    return CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberCFIndexType, valuePtr);
  }

  v9 = CFStringGetTypeID();
  if (v9 != CFGetTypeID(a2))
  {
    v20 = CFGetTypeID(a2);
    v21 = CFCopyTypeIDDescription(v20);
    v23 = mmcs_logging_logger_default(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to recognized type id '%@' for BOOLean decoding for key '%@'.", v21, a1);
      v26 = mmcs_logging_logger_default(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *valuePtr = 138543362;
        *&valuePtr[4] = v24;
        _os_log_impl(&dword_2577D8000, v26, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    if (!v21)
    {
      goto LABEL_23;
    }

    v19 = v21;
LABEL_22:
    CFRelease(v19);
LABEL_23:
    if (!cf)
    {
      return 0;
    }

    CFRetain(cf);
    return cf;
  }

  v10 = CFLocaleCreate(0, @"en_US");
  if (!v10 || (v12 = v10, v13 = *MEMORY[0x277CBECE8], v14 = CFNumberFormatterCreate(*MEMORY[0x277CBECE8], v10, kCFNumberFormatterNoStyle), CFRelease(v12), !v14) || (NumberFromString = CFNumberFormatterCreateNumberFromString(v13, v14, a2, 0, 1uLL), CFRelease(v14), !NumberFromString))
  {
    v15 = mmcs_logging_logger_default(v10, v11);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Option %@ had CFStringRef %@ but couldn't parse as a number.", a1, a2);
    v18 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 138543362;
      *&valuePtr[4] = v16;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_ERROR, "%{public}@", valuePtr, 0xCu);
    }

    if (!v16)
    {
      goto LABEL_23;
    }

    v19 = v16;
    goto LABEL_22;
  }

  return NumberFromString;
}

uint64_t mmcs_request_queue_max_requests_inflight_for_request_type(uint64_t a1)
{
  activity_type = mmcs_request_type_get_activity_type(a1);
  if (activity_type == 1)
  {
    behavior_type = mmcs_request_type_get_behavior_type(a1);
    if (behavior_type >= 5)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_1();
    }
  }

  else
  {
    if (activity_type)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_3();
    }

    behavior_type = mmcs_request_type_get_behavior_type(a1);
    if (behavior_type >= 5)
    {
      mmcs_request_queue_max_requests_inflight_for_request_type_cold_2();
    }
  }

  return dword_25785FB40[behavior_type];
}

uint64_t mmcs_request_type_get_activity_type(uint64_t a1)
{
  if (a1 >= 0)
  {
    return a1 & 1;
  }

  else
  {
    return -(a1 & 1);
  }
}

uint64_t mmcs_read_stream_pool_create(uint64_t *a1, const void *a2, int a3, unsigned int a4, double a5)
{
  *a1 = 0;
  v10 = C3TypeRegister(&mmcs_read_stream_poolGetTypeID_typeID, &kmmcs_read_stream_poolContextClass);
  result = C3TypeCreateInstance_(0, v10, 0x68uLL);
  if (result)
  {
    v12 = result;
    if (mmcs_read_stream_pool_init(result, a2, a3, a4, a5))
    {
      *a1 = v12;
      return 1;
    }

    else
    {
      C3BaseRelease(v12);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_read_stream_pool_init(uint64_t a1, CFTypeRef cf, int a3, unsigned int a4, double a5)
{
  if (!a3)
  {
    return 0;
  }

  *(a1 + 16) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = a4;
  *(a1 + 32) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v12 = *byte_2868BF1F8;
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], &v12);
  *(a1 + 104) = result;
  if (result)
  {
    v11 = mmcs_logging_logger_default(result, v10);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    result = malloc_type_calloc(1uLL, 80 * a4, 0x1000040B065FA3FuLL);
    *(a1 + 112) = result;
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mmcs_read_stream_pool_schedule(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    return 0;
  }

  *(a1 + 40) = cf;
  C3BaseRetain(cf);
  v4 = *(a1 + 40);
  v9 = 0;
  v8 = a1;
  v10 = mmcs_read_stream_pool_discard_recycled_streams;
  result = mmcs_perform_target_create_source(v4, a1 + 48, &v8, v5);
  if (result)
  {
    if (!*(a1 + 48))
    {
      return 0;
    }

    v7 = *(a1 + 40);
    v9 = 0;
    v8 = a1;
    v10 = mmcs_read_stream_pool_gc_timer_fired;
    result = mmcs_perform_target_create_timer(v7, a1 + 56, &v8, v6);
    if (result)
    {
      mmcs_read_stream_pool_update_gc_fire_date(a1, 0);
      return 1;
    }
  }

  return result;
}

uint64_t mmcs_perform_dispatch_source_create(void **a1, _OWORD *a2, NSObject *a3)
{
  *a1 = 0;
  context = 0;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = mmcs_perform_source_create(&context, 2, 8, v10);
  v7 = context;
  if (v6 && context)
  {
    v8 = *(context + 7);
    *v8 = dispatch_source_create(MEMORY[0x277D85CE8], 0, 0, a3);
    C3BaseRetain(context);
    dispatch_set_context(*v8, context);
    dispatch_set_finalizer_f(*v8, mmcs_perform_source_context_finalize_callback);
    dispatch_source_set_event_handler_f(*v8, mmcs_perform_dispatch_source_perform_callback);
    dispatch_resume(*v8);
    C3BaseRetain(context);
    v7 = context;
    *a1 = context;
  }

  if (v7)
  {
    C3BaseRelease(v7);
  }

  return v6;
}

uint64_t mmcs_perform_dispatch_target_create_source(uint64_t a1, void **a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_dispatch_target_create_source_cold_1();
  }

  v4 = *v3;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return mmcs_perform_dispatch_source_create(a2, v7, v4);
}

uint64_t mmcs_perform_source_create(uint64_t *a1, int a2, uint64_t a3, _OWORD *a4)
{
  *a1 = 0;
  v8 = C3TypeRegister(&mmcs_perform_sourceGetTypeID_typeID, &kmmcs_perform_sourceContextClass);
  result = C3TypeCreateInstance_(0, v8, a3 + 64);
  if (result)
  {
    v10 = result;
    *(result + 16) = a2;
    v11 = a4[1];
    *(result + 24) = *a4;
    *(result + 40) = v11;
    v12 = *(result + 32);
    if (v12)
    {
      if (*(result + 24))
      {
        v12();
      }
    }

    *(v10 + 56) = v10 + 64;
    *a1 = v10;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_target_create_source(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = _performTargetCallbacks[7 * v4 + 5];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return (v5)(a1, a2, v8, a4);
}

void C3BaseRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t mmcs_perform_target_create_timer(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = _performTargetCallbacks[7 * v4 + 6];
  v6 = a3[1];
  v8[0] = *a3;
  v8[1] = v6;
  return (v5)(a1, a2, v8, a4);
}

uint64_t mmcs_perform_timer_create(uint64_t *a1, int a2, uint64_t a3, _OWORD *a4)
{
  *a1 = 0;
  v8 = C3TypeRegister(&mmcs_perform_timerGetTypeID_typeID, &kmmcs_perform_timerContextClass);
  result = C3TypeCreateInstance_(0, v8, a3 + 64);
  if (result)
  {
    v10 = result;
    *(result + 16) = a2;
    v11 = a4[1];
    *(result + 24) = *a4;
    *(result + 40) = v11;
    v12 = *(result + 32);
    if (v12)
    {
      if (*(result + 24))
      {
        v12();
      }
    }

    *(v10 + 56) = v10 + 64;
    *a1 = v10;
    return 1;
  }

  return result;
}

uint64_t mmcs_perform_dispatch_timer_create(CFTypeRef *a1, _OWORD *a2, NSObject *a3)
{
  *a1 = 0;
  cf = 0;
  v5 = a2[1];
  v10[0] = *a2;
  v10[1] = v5;
  v6 = mmcs_perform_timer_create(&cf, 2, 24, v10);
  v7 = cf;
  if (v6 && cf)
  {
    v8 = *(cf + 7);
    dispatch_retain(a3);
    *v8 = a3;
    mmcs_perform_timer_set_next_fire_date(cf);
    C3BaseRetain(cf);
    v7 = cf;
    *a1 = cf;
  }

  if (v7)
  {
    C3BaseRelease(v7);
  }

  return v6;
}

uint64_t mmcs_perform_dispatch_target_create_timer(uint64_t a1, CFTypeRef *a2, _OWORD *a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    mmcs_perform_dispatch_target_create_timer_cold_1();
  }

  v4 = *v3;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  return mmcs_perform_dispatch_timer_create(a2, v7, v4);
}

uint64_t mmcs_perform_timer_set_next_fire_date(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return _performTimerCallbacks[4 * v1 + 1]();
  }

  return result;
}

void mmcs_perform_dispatch_timer_set_next_fire_date(void *a1, CFAbsoluteTime a2)
{
  v3 = a1[7];
  *(v3 + 16) = a2;
  if (a2 >= 6.3113904e10)
  {
    v6 = -1;
  }

  else
  {
    if (CFAbsoluteTimeGetCurrent() >= a2)
    {
      v5 = 0;
    }

    else
    {
      v4 = *(v3 + 16);
      v5 = ((v4 - CFAbsoluteTimeGetCurrent()) * 1000000000.0);
    }

    v6 = dispatch_time(0, v5);
  }

  v7 = *(v3 + 8);
  if (v7)
  {

    dispatch_source_set_timer(v7, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    *(v3 + 8) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *v3);
    C3BaseRetain(a1);
    dispatch_set_context(*(v3 + 8), a1);
    dispatch_set_finalizer_f(*(v3 + 8), mmcs_perform_timer_context_finalize_callback);
    dispatch_source_set_event_handler_f(*(v3 + 8), mmcs_perform_dispatch_timer_perform_callback);
    dispatch_source_set_timer(*(v3 + 8), v6, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = *(v3 + 8);

    dispatch_resume(v8);
  }
}

void mmcs_read_stream_pool_update_gc_fire_date(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(*(a1 + 104));
  if (Count <= 0 && ((Count = *(a1 + 64)) == 0 || (Count = CFArrayGetCount(Count), Count < 1)) || (v6 = (a1 + 56), !*(a1 + 56)))
  {
    v6 = (a1 + 56);
    if (!*(a1 + 56))
    {
      return;
    }

    if (gMMCS_DebugLevel < 4)
    {
      goto LABEL_21;
    }

    v17 = mmcs_logging_logger_default(Count, v5);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@ setting next fire date to the distant future since there is no potential garbage.", *(a1 + 16));
    v16 = mmcs_logging_logger_default(v14, v18);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v10 = Current + 30.0;
  if (a2 || ((next_fire_date = mmcs_perform_timer_get_next_fire_date(*v6), next_fire_date >= Current) ? (v12 = next_fire_date <= v10) : (v12 = 0), !v12))
  {
    if (gMMCS_DebugLevel < 4)
    {
      goto LABEL_21;
    }

    v13 = mmcs_logging_logger_default(v7, v8);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Pool %@ setting next fire date %lf (%.3lf sec)", *(a1 + 16), Current + 30.0, v10 - Current);
    v16 = mmcs_logging_logger_default(v14, v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
LABEL_19:
      if (v14)
      {
        CFRelease(v14);
      }

LABEL_21:
      mmcs_perform_timer_set_next_fire_date(*v6);
      return;
    }

LABEL_18:
    *buf = 138543362;
    v20 = v14;
    _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    goto LABEL_19;
  }
}

uint64_t mmcs_engine_detect_working_directory_attributes(const __CFURL *a1, uint64_t *a2, BOOL *a3, _BYTE *a4, uint64_t *a5)
{
  v62 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4)
  {
    mmcs_engine_detect_working_directory_attributes_cold_1();
  }

  bzero(buffer, 0x400uLL);
  if (!a1)
  {
    v29 = @"Working Directory Required";
    v30 = 40;
LABEL_19:
    v31 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v30, v29, v10, v11, v12, v13, v14, f_fstypename);
    goto LABEL_20;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v31 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Error Retrieving File System Path for Working Directory, %@", v15, v16, v17, v18, v19, a1);
LABEL_20:
    v28 = v31;
LABEL_21:
    result = 0;
    if (a5)
    {
      *a5 = v28;
    }

    return result;
  }

  bzero(&v60, 0x878uLL);
  if (statfs(buffer, &v60))
  {
    v20 = __error();
    v21 = *v20;
    v22 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v20, 0);
    v46 = strerror(v21);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v22, @"Stating File System for Working Directory (%s) Failed with Error (%s)", v23, v24, v25, v26, buffer, v46);
    goto LABEL_8;
  }

  if (!v60.f_bsize)
  {
    f_fstypename = 0;
    v29 = @"Invalid File System Block Size: %llu";
LABEL_18:
    v30 = 39;
    goto LABEL_19;
  }

  *a2 = v60.f_bsize;
  v51 = 0;
  v50 = xmmword_25785F8A0;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  v32 = getattrlist(v60.f_mntonname, &v50, &v47, 0x24uLL, 0);
  if (v32)
  {
    v34 = __error();
    v35 = *v34;
    v22 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v34, 0);
    v45 = strerror(v35);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v22, @"Retrieving File System Attributes of working directory failed: %s", v36, v37, v38, v39, v45);
LABEL_8:
    v28 = error_with_underlying_error;
    if (v22)
    {
      CFRelease(v22);
    }

    goto LABEL_21;
  }

  if ((BYTE4(v48) & 0x40) == 0)
  {
    f_fstypename = v60.f_fstypename;
    v29 = @"Unknown Support of VOL_CAP_FMT_SPARSE_FILES for %s";
    goto LABEL_18;
  }

  *a4 = BYTE4(v47) & 0x40;
  *a3 = (*v60.f_fstypename ^ 0x73667061 | v60.f_fstypename[4]) == 0;
  v41 = mmcs_logging_logger_default(v32, v33);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = "Supported";
    v43 = *a2;
    if (!*a4)
    {
      v42 = "Not Supported";
    }

    *buf = 136446978;
    v53 = v60.f_fstypename;
    v54 = 2082;
    v55 = v42;
    v56 = 2048;
    v57 = v43;
    v58 = 2048;
    f_bfree = v60.f_bfree;
    _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEFAULT, "File System %{public}s, Sparse Files %{public}s, Block Size %llu, Free Blocks %llu", buf, 0x2Au);
  }

  return 1;
}

void MMCSEngineDestroy(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1 && !*(a1 + 120))
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      v3 = CKCommitDatabaseTransactions();
      *(a1 + 96) = 0;
      *(a1 + 104) = 0;
      ++*(a1 + 112);
    }

    v4 = mmcs_logging_logger_default(v3, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    v6 = MEMORY[0x277CBECE8];
    if (v5)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Closing mmcs (%p)", a1);
      v9 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v7;
        _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    *(a1 + 120) = 1;
    mmcs_report_close();
    CFSetApplyFunction(*(a1 + 160), _log_in_use, 0);
    _mmcs_engine_cancel_requests(a1, 0);
    v12 = mmcs_logging_logger_default(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = CFStringCreateWithFormat(*v6, 0, @"Waiting for mmcs job queue");
      v15 = mmcs_logging_logger_default(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v13;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

    v16 = mmcs_job_queue_sync_halt(*(a1 + 24));
    v18 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = CFStringCreateWithFormat(*v6, 0, @"mmcs job queue halted");
      v21 = mmcs_logging_logger_default(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v23 = v19;
        _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    if (*(a1 + 16))
    {
      CKChunkStoreInvalidate();
    }

    C3BaseRelease(a1);
  }
}

void _mmcs_engine_cancel_requests(uint64_t a1, void *a2)
{
  if (CFSetGetCount(*(a1 + 160)) >= 1)
  {
    Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 160));
    CFSetApplyFunction(Copy, mmcs_request_cancel_with_requestor, a2);
    if (Copy)
    {

      CFRelease(Copy);
    }
  }
}

intptr_t mmcs_job_queue_sync_halt(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  if (!*(a1 + 104))
  {
    *(a1 + 104) = 1;
  }

  pthread_mutex_unlock((a1 + 16));
  v2 = *(a1 + 96);
  v3 = dispatch_time(0, 60000000000);
  result = dispatch_group_wait(v2, v3);
  if (result)
  {
    v6 = mmcs_logging_logger_default(result, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_2577D8000, v6, OS_LOG_TYPE_ERROR, "Timed out in mmcs_job_queue_sync_halt. Exiting the process.", v7, 2u);
    }

    exit(1);
  }

  return result;
}

void _mmcs_engineCFFinalize(void *a1, uint64_t a2)
{
  v3 = a1[20];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[20] = 0;
  v4 = a1[10];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[10] = 0;
  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[9] = 0;
  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[11] = 0;
  v7 = a1[7];
  if (v7)
  {
    C3BaseRelease(v7);
  }

  a1[7] = 0;
  v8 = a1[16];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[19];
  if (v9)
  {
    MMCSEngineClientContextFree(v9, a2);
  }

  v10 = a1[2];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[2] = 0;
  v11 = a1[3];
  if (v11)
  {
    C3BaseRelease(v11);
  }

  a1[3] = 0;
  v12 = a1[22];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[22] = 0;
  v13 = a1[4];
  if (v13)
  {
    mmcs_read_stream_pool_close(v13);
    v14 = a1[4];
    if (v14)
    {
      C3BaseRelease(v14);
    }

    a1[4] = 0;
  }

  v15 = a1[5];
  if (v15)
  {
    mmcs_read_stream_pool_close(v15);
    v16 = a1[5];
    if (v16)
    {
      C3BaseRelease(v16);
    }

    a1[5] = 0;
  }

  v17 = a1[6];
  if (v17)
  {
    C3BaseRelease(v17);
  }

  a1[6] = 0;
  a1[8] = 0;
  a1[24] = 0;
  a1[25] = 0;
}

void MMCSEngineClientContextFree(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*a1 > 0xAuLL)
  {
    v4 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unknown engine client version %ld\n", *a1);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else
  {
    v3 = (&MMCSEngineClientContextClasses)[*a1][1];

    v3();
  }
}

void _mmcs_job_queueCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 88) = 0;
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 96) = 0;
  }

  if (*(a1 + 80))
  {
    pthread_mutex_destroy((a1 + 16));
    *(a1 + 80) = 0;
  }
}

uint64_t mmcs_read_stream_pool_close(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    mmcs_perform_source_invalidate(v2);
    v3 = a1[6];
    if (v3)
    {
      C3BaseRelease(v3);
    }

    a1[6] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    mmcs_perform_timer_invalidate(v4);
    v5 = a1[7];
    if (v5)
    {
      C3BaseRelease(v5);
    }

    a1[7] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    C3BaseRelease(v6);
  }

  a1[5] = 0;
  return 1;
}

void mmcs_perform_dispatch_source_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    dispatch_source_cancel(*v1);
    dispatch_release(*v1);
    *v1 = 0;
  }
}

void mmcs_perform_dispatch_target_finalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*v1)
  {
    dispatch_release(*v1);
    *v1 = 0;
  }
}

char *mmcs_request_type_as_c_string(uint64_t a1)
{
  v1 = a1 / 2;
  if (a1 % 2 == 1)
  {
    if (v1 >= 5)
    {
      mmcs_request_type_as_c_string_cold_1();
    }

    v2 = off_279846970;
  }

  else
  {
    if (a1 % 2)
    {
      mmcs_request_type_as_c_string_cold_3();
    }

    if (v1 >= 5)
    {
      mmcs_request_type_as_c_string_cold_2();
    }

    v2 = off_279846948;
  }

  return v2[v1];
}

void mmcs_perform_source_context_finalize_callback(CFTypeRef cf)
{
  if (cf)
  {
    C3BaseRelease(cf);
  }
}

uint64_t _mmcs_perform_sourceCFFinalize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = (_performSourceCallbacks[3 * v2 + 2])(result);
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    result = *(v1 + 24);
    if (result)
    {

      return v3();
    }
  }

  return result;
}

void mmcs_perform_dispatch_source_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_timer_context_finalize_callback(CFTypeRef cf)
{
  if (cf)
  {
    C3BaseRelease(cf);
  }
}

void mmcs_perform_dispatch_timer_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1[1];
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(v1[1]);
    v1[1] = 0;
  }

  if (*v1)
  {
    dispatch_release(*v1);
    *v1 = 0;
  }
}

uint64_t _mmcs_perform_timerCFFinalize(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    result = (_performTimerCallbacks[4 * v2 + 3])(result);
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    result = *(v1 + 24);
    if (result)
    {

      return v3();
    }
  }

  return result;
}

void mmcs_warm(uint64_t a1, const __CFDictionary *a2, void (*a3)(uint64_t, CFDictionaryRef))
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = _os_activity_create(&dword_2577D8000, "mmcs-warm", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v9 = mmcs_logging_logger_default(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEFAULT, "mmcs_warm starting", buf, 2u);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"kMMCSWarmContainerState");
    if (Value)
    {
      v16 = Value;
      TypeID = CFDataGetTypeID();
      if (TypeID == CFGetTypeID(v16))
      {
        v18 = malloc_type_calloc(1uLL, 0x18uLL, 0xA00402214FCE6uLL);
        if (v18)
        {
          if (v6)
          {
            os_retain(v6);
          }

          *v18 = v6;
          v18[1] = a1;
          v18[2] = a3;
        }

        mmcs_http_warm(v16, v18, mmcs_warm_complete);
        if (!v6)
        {
          goto LABEL_21;
        }

LABEL_20:
        os_release(v6);
        goto LABEL_21;
      }
    }

    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"kMMCSWarmContainerHostname required but not provided.", v11, v12, v13, v14, v15);
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 40, @"Missing required parameters.");
  }

  v20 = error;
  if (!error)
  {
    mmcs_warm_cold_2();
  }

  if (a3)
  {
    Domain = CFErrorGetDomain(error);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      mmcs_warm_cold_1();
    }

    values = v20;
    *buf = @"kMMCSResultError";
    v22 = CFDictionaryCreate(*MEMORY[0x277CBECE8], buf, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a3(a1, v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  CFRelease(v20);
  if (v6)
  {
    goto LABEL_20;
  }

LABEL_21:
  os_activity_scope_leave(&state);
}

void mmcs_warm_complete(uint64_t a1, const void *a2)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*a1, &state);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, @"kMMCSResultError", a2);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v6(*(a1 + 8), v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
  v9 = mmcs_logging_logger_default(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_DEFAULT, "mmcs_warm complete", v10, 2u);
  }

  os_activity_scope_leave(&state);
}

void mmcs_http_warm(void *a1, uint64_t a2, void (*a3)(uint64_t, const void *))
{
  v5 = a1;
  v6 = [C2WarmRequest alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __mmcs_http_warm_block_invoke;
  v9[3] = &__block_descriptor_48_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v9[5] = a2;
  v7 = [(C2WarmRequest *)v6 initWithData:v5 callback:v9];

  if (v7)
  {
    [(C2WarmRequest *)v7 send];
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 1, @"Error generating C2WarmRequest.");
    a3(a2, error);
    if (error)
    {
      CFRelease(error);
    }
  }
}

void mmcs_register_request_abort(uint64_t a1, CFErrorRef err, void (*a3)(uint64_t, CFDictionaryRef))
{
  keys[1] = *MEMORY[0x277D85DE8];
  if (err && a3)
  {
    Domain = CFErrorGetDomain(err);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      mmcs_register_request_abort_cold_1();
    }

    values = err;
    keys[0] = @"kMMCSResultError";
    v7 = CFDictionaryCreate(*MEMORY[0x277CBECE8], keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    a3(a1, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

uint64_t mmcs_register_request_is_using_itemid(uint64_t a1, uint64_t a2)
{
  result = CFArrayGetCount(*(*(a1 + 304) + 8));
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      if (*(a2 + 8))
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), i);
      valuePtr = 0;
      result = CFNumberGetValue(ValueAtIndex[2], kCFNumberSInt64Type, &valuePtr);
      if (result)
      {
        if (valuePtr == *a2)
        {
          *(a2 + 8) = 1;
        }
      }
    }
  }

  return result;
}

void mmcs_register_request_append_description(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = _mmcs_request_copy_description(*a1);
    if (v2)
    {
      v3 = v2;
      CFStringAppend(*(a1 + 16), v2);

      CFRelease(v3);
    }
  }
}

void mmcs_register_request_finalize(uint64_t a1)
{
  v2 = *(a1 + 304);
  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 304);
  }

  *(v2 + 8) = 0;
  v4 = *(a1 + 304);
  v5 = *(v4 + 40);
  if (v5)
  {
    CFRelease(v5);
    v4 = *(a1 + 304);
  }

  *(v4 + 40) = 0;
  v6 = *(a1 + 304);
  v7 = *(v6 + 24);
  if (v7)
  {
    C3BaseRelease(v7);
    v6 = *(a1 + 304);
  }

  *(v6 + 24) = 0;
}

uint64_t mmcs_register_request_stop_with_error(uint64_t a1, const void *a2)
{
  if (*(a1 + 144))
  {
    return 0;
  }

  C3BaseRetain(a1);
  *(a1 + 144) = 1;
  if (a2)
  {
    CFRetain(a2);
    *(a1 + 152) = a2;
  }

  else
  {
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 4, @"Register request was cancelled.");
    CFRetain(error);
    *(a1 + 152) = error;
    if (error)
    {
      CFRelease(error);
    }
  }

  v6 = *(*(a1 + 304) + 24);
  if (v6)
  {
    mmcs_chunk_job_cancel(v6);
  }

  mmcs_register_request_cleanup(a1);
  C3BaseRelease(a1);
  return 1;
}

void mmcs_register_request_cleanup(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 200), &state);
  mmcs_engine_commit_if_anything_outstanding(*(a1 + 32));
  *(*(a1 + 304) + 32) = 0;
  v39.opaque[0] = 0;
  v39.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, v2);
  os_activity_scope_enter(request_activity_marker, &v39);
  v4 = mmcs_request_copy_description(a1);
  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppend(Mutable, @"(");
  v7 = *(*(a1 + 304) + 8);
  if (v7)
  {
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), i);
        v18 = mmcs_register_item_copy_short_description(ValueAtIndex, v12, v13, v14, v15, v16, v17);
        if (i)
        {
          CFStringAppend(Mutable, @", ");
        }

        CFStringAppend(Mutable, v18);
        if (v18)
        {
          CFRelease(v18);
        }
      }
    }
  }

  CFStringAppend(Mutable, @""));
  v19 = CFStringCreateWithFormat(v5, 0, @"%@ %@", v4, Mutable);
  v21 = v19;
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v22 = mmcs_logging_logger_default(v19, v20);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = CFStringCreateWithFormat(v5, 0, @"Engine %p completed request %@", *(a1 + 32), v21);
    v25 = mmcs_logging_logger_default(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v23;
      _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v26 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27 = v26;
  v28 = *(*(a1 + 304) + 40);
  if (v28)
  {
    goto LABEL_23;
  }

  if (*(a1 + 144))
  {
    v28 = *(a1 + 152);
    if (!v28)
    {
      mmcs_register_request_cleanup_cold_1();
    }

LABEL_23:
    CFDictionarySetValue(v26, @"kMMCSResultError", v28);
    goto LABEL_24;
  }

  v33 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
  v34 = *(*(a1 + 304) + 8);
  v45.length = CFArrayGetCount(v34);
  v45.location = 0;
  CFArrayApplyFunction(v34, v45, _add_item_result, v33);
  CFDictionarySetValue(v27, @"kMMCSRequestOptionItemOptions", v33);
  if (v33)
  {
    CFRelease(v33);
  }

  if (*(*(a1 + 304) + 48))
  {
    AuthorizePutRequestBody = mmcs_register_request_create_AuthorizePutRequestBody(a1, v35);
    if (AuthorizePutRequestBody)
    {
      v37 = AuthorizePutRequestBody;
      CFDictionarySetValue(v27, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", AuthorizePutRequestBody);
      CFRelease(v37);
    }
  }

LABEL_24:
  v29 = mmcs_request_copy_description(a1);
  v31 = mmcs_logging_logger_default(v29, v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = *(a1 + 32);
    *buf = 134218242;
    v41 = v32;
    v42 = 2114;
    v43 = v29;
    _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_INFO, "Engine %p request will notify request %{public}@ done", buf, 0x16u);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  (**(a1 + 304))(*(a1 + 40), v27);
  if (v27)
  {
    CFRelease(v27);
  }

  os_activity_scope_leave(&v39);
  mmcs_engine_remove_request(*(a1 + 32), a1);
  os_activity_scope_leave(&state);
}

void mmcs_register_items(const void *a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(uint64_t, CFDictionaryRef))
{
  v143 = *MEMORY[0x277D85DE8];
  v8 = _os_activity_create(&dword_2577D8000, "mmcs-register-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v139 = 0;
  v137.opaque[0] = 0;
  if (!mmcs_request_allocate(&v137, 5, 64) || (v14 = v137.opaque[0]) == 0)
  {
    v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Cannot allocate register request", v9, v10, v11, v12, v13);
    v25 = v24;
    v14 = 0;
LABEL_106:
    v139 = v24;
    goto LABEL_107;
  }

  if (!_mmcs_request_init(v137.opaque[0], a1, a2, a3, 0, 0, v8, &v139))
  {
    v26 = @"Cannot initialize register request";
    v27 = 37;
LABEL_105:
    v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v27, v26, v15, v16, v17, v18, v19, v125);
    v25 = v24;
    goto LABEL_106;
  }

  **(v14 + 304) = a4;
  allocator = *MEMORY[0x277CBECE8];
  *(*(v14 + 304) + 8) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, &_register_items_array_callbacks);
  *(*(v14 + 304) + 48) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionReturnPreauthorizationRequestObject", 0);
  v20 = 1;
  *(*(v14 + 304) + 49) = 1;
  BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionUseFORD", 0);
  Value = CFDictionaryGetValue(a3, @"kMMCSRequestOptionReturnOpaqueCloneContext");
  if (Value)
  {
    v22 = Value;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v22))
    {
      CFRetain(v22);
      v20 = 0;
      *(*(v14 + 304) + 56) = v22;
    }

    else
    {
      v20 = 1;
    }
  }

  v28 = CFDictionaryGetValue(a3, @"kMMCSRequestOptionItemOptions");
  if (!v28 || (v29 = v28, v30 = CFArrayGetTypeID(), v30 != CFGetTypeID(v29)))
  {
    v125 = a3;
    v26 = @"expected item options array in request options %@";
LABEL_104:
    v27 = 40;
    goto LABEL_105;
  }

  Count = CFArrayGetCount(v29);
  if (!Count)
  {
    v125 = a3;
    v26 = @"did not expect empty item options array in request options %@";
    goto LABEL_104;
  }

  v32 = Count;
  v126 = a2;
  v127 = v20;
  v130 = a1;
  v128 = a4;
  if (Count < 1)
  {
LABEL_42:
    v74 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a3, @"kMMCSRequestOptionRetrievePastRegistration", 0);
    v75 = *(v14 + 304);
    if (!v74)
    {
      *(v75 + 32) = 0;
      *(v14 + 224) = voucher_copy();
      mmcs_engine_add_request(v130, v14);
      mmcs_register_items_schedule_job(v14);
      goto LABEL_110;
    }

    *(v75 + 32) = 1;
    mmcs_engine_add_request(v130, v14);
    v76 = CFArrayGetCount(*(*(v14 + 304) + 8));
    a2 = v126;
    if (v76 < 1)
    {
LABEL_102:
      mmcs_register_request_cleanup(v14);
      goto LABEL_109;
    }

    v77 = v76;
    v78 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(v14 + 304) + 8), v78);
      v137.opaque[0] = 0;
      v137.opaque[1] = 0;
      os_activity_scope_enter(*(ValueAtIndex + 18), &v137);
      v138 = 0;
      v80 = CFNumberGetValue(*(ValueAtIndex + 2), kCFNumberSInt64Type, &v138);
      if (!v80)
      {
        v106 = @"Error with itemID.";
LABEL_72:
        *(ValueAtIndex + 16) = mmcs_cferror_create_error(@"com.apple.mmcs", 8, v106);
        os_activity_scope_leave(&v137);
        goto LABEL_101;
      }

      v82 = mmcs_logging_logger_default(v80, v81);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        v83 = CFStringCreateWithFormat(allocator, 0, @"Attempting to retrieve past-registration for itemId:%lld", v138);
        v85 = mmcs_logging_logger_default(v83, v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v142 = v83;
          _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v83)
        {
          CFRelease(v83);
        }
      }

      valuePtr = 0;
      if ((CKGetRegisteredFileMetadata() & 1) == 0)
      {
        v106 = @"Error occurred locating file signature.";
        goto LABEL_72;
      }

      v86 = CKFileDigestResultsFileVerificationKey();
      mmcs_register_item_set_file_verification_key(ValueAtIndex, v86);
      v87 = CKFileDigestResultsFileSignature();
      v88 = CKFileSchemeAndSignatureCopyCString();
      v90 = mmcs_logging_logger_default(v88, v89);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = CFStringCreateWithFormat(allocator, 0, @"sig:%s", v88);
        v93 = mmcs_logging_logger_default(v91, v92);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v142 = v91;
          _os_log_impl(&dword_2577D8000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v91)
        {
          CFRelease(v91);
        }
      }

      v94 = v77;
      if (v88)
      {
        free(v88);
      }

      v95 = CKFileSchemeAndSignatureSize();
      *(ValueAtIndex + 12) = CFDataCreate(allocator, v87, v95);
      v135 = CKFileDigestResultsFileLength();
      v96 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v135);
      *(ValueAtIndex + 13) = v96;
      v98 = mmcs_logging_logger_default(v96, v97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v99 = CFStringCreateWithFormat(allocator, 0, @"len:%llu", v135);
        v101 = mmcs_logging_logger_default(v99, v100);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v142 = v99;
          _os_log_impl(&dword_2577D8000, v101, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v99)
        {
          CFRelease(v99);
        }
      }

      v133 = 0;
      v134 = 0;
      v103 = CKGetRegisteredChunksForItemID();
      if (v103 && v134)
      {
        if (v133)
        {
          v104 = 0;
          v105 = 0;
          do
          {
            v105 += CKRegisteredChunkLength();
            CKRegisteredChunkSize();
            ++v104;
          }

          while (v104 < v133);
        }

        else
        {
          v105 = 0;
        }

        if ((v107 = CKFileDigestResultsFileSignature()) != 0 && (*v107 & 0x7F) == 4 || CKFileDigestResultsHasFileLength())
        {
          v108 = CKFileDigestResultsFileLength();
          if (v105 != v108)
          {
            v109 = mmcs_logging_logger_default(v108, v102);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_2577D8000, v109, OS_LOG_TYPE_FAULT, "fileLengthCheck != CKFileDigestResultsFileLength(fileDigestResults)", buf, 2u);
            }
          }
        }
      }

      v110 = v134;
      if (!*(ValueAtIndex + 137))
      {
        break;
      }

      if (v134)
      {
        v111 = v103;
      }

      else
      {
        v111 = 0;
      }

      a4 = v128;
      if (v111 != 1)
      {
        *(ValueAtIndex + 16) = mmcs_cferror_create_error(@"com.apple.mmcs", 8, @"Error occurred locating chunk list.");
        v110 = v134;
LABEL_88:
        if (v110)
        {
          free(v110);
        }

        goto LABEL_90;
      }

      mmcs_print_registered_chunk_list(v134, v133);
      *(ValueAtIndex + 15) = CFNumberCreate(allocator, kCFNumberSInt64Type, &v133);
      *(ValueAtIndex + 10) = v134;
LABEL_90:
      v134 = 0;
      if (*(ValueAtIndex + 6) || *(*(v14 + 304) + 49))
      {
        v132 = mmcs_register_item_padded_length(ValueAtIndex, v102);
        if (!v132)
        {
          v139 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Error Calculating Padded File Size", v112, v113, v114, v115, v116);
          goto LABEL_129;
        }

        v117 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v132);
        *(ValueAtIndex + 14) = v117;
        v119 = mmcs_logging_logger_default(v117, v118);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          v120 = CFStringCreateWithFormat(allocator, 0, @"padLen:%llu", v132);
          v122 = mmcs_logging_logger_default(v120, v121);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v142 = v120;
            _os_log_impl(&dword_2577D8000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v120)
          {
            CFRelease(v120);
          }
        }
      }

      if (valuePtr)
      {
        C3BaseRelease(valuePtr);
      }

      os_activity_scope_leave(&v137);
      v77 = v94;
LABEL_101:
      if (++v78 == v77)
      {
        goto LABEL_102;
      }
    }

    a4 = v128;
    goto LABEL_88;
  }

  v33 = 0;
  while (1)
  {
    v34 = CFArrayGetValueAtIndex(v29, v33);
    v35 = CFGetTypeID(v34);
    if (v35 != CFDictionaryGetTypeID())
    {
      v125 = v34;
      v123 = @"expected item option to be a dictionary %@";
      goto LABEL_120;
    }

    v41 = v32;
    v42 = CFDictionaryGetValue(v34, @"kMMCSItemID");
    if (!v42 || (v43 = v42, v44 = CFGetTypeID(v42), v44 != CFNumberGetTypeID()))
    {
      v125 = v34;
      v123 = @"expected item option dictionary to include an itemID. Got: %@";
LABEL_120:
      v124 = 40;
LABEL_122:
      v25 = mmcs_cferror_create_with_format(@"com.apple.mmcs", v124, v123, v36, v37, v38, v39, v40, v125);
      v139 = v25;
      a2 = v126;
      goto LABEL_107;
    }

    v138 = 0;
    if (!mmcs_register_item_create(&v138, v43))
    {
      v123 = @"unable to create register item";
      v124 = 1;
      goto LABEL_122;
    }

    request_activity_marker = mmcs_request_get_request_activity_marker(v14, v45);
    v47 = _os_activity_create(&dword_2577D8000, "mmcs-register-item", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
    *(v138 + 18) = v47;
    v137.opaque[0] = 0;
    v137.opaque[1] = 0;
    os_activity_scope_enter(v47, &v137);
    v48 = v138;
    *(v138 + 64) = BOOLean_from_cfdictionary_object_for_key;
    v48[5] = 0;
    v49 = CFDictionaryGetValue(v34, @"kMMCSBoundaryKey");
    if (v49)
    {
      v50 = v49;
      v51 = CFDataGetTypeID();
      v52 = CFGetTypeID(v50);
      v53 = v138;
      if (v51 == v52)
      {
        mmcs_register_item_set_boundary_key(v138, v50);
        v53 = v138;
        *(v138 + 64) = 1;
        *(v53 + 137) = v127;
        *(v53 + 5) = 2;
      }

      a4 = v128;
    }

    else
    {
      v53 = v138;
    }

    cfindex_from_options = mmcs_get_cfindex_from_options(@"kMMCSPaddingPolicy", v34, *(v53 + 5));
    *(v138 + 5) = cfindex_from_options;
    *(*(v14 + 304) + 49) = cfindex_from_options != 0;
    v55 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRegisterFileOptionPublic", 0) == 0;
    v56 = v138;
    *(v138 + 136) = v55;
    v57 = *(*(v14 + 304) + 48);
    v56[137] = v57;
    v56[137] = *(*(v14 + 304) + 49) | v57;
    v58 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRegisterFileOptionChunk", 0);
    *(v138 + 137) |= v58;
    v59 = mmcs_get_BOOLean_from_cfdictionary_object_for_key(v34, @"kMMCSRequestOptionReturnRegisteredChunks", 0);
    *(v138 + 138) = v59;
    valuePtr = 0;
    CFNumberGetValue(v43, kCFNumberSInt64Type, &valuePtr);
    cached_ranged_items = mmcs_engine_get_cached_ranged_items(v130, valuePtr);
    if (cached_ranged_items)
    {
      *(v138 + 19) = cached_ranged_items;
      CFRetain(cached_ranged_items);
    }

    if (!mmcs_wrapping_state_init_with_option_dict(v138 + 24, v34, @"kMMCSWrappingState", &v139))
    {
      break;
    }

    v32 = v41;
    v66 = *(v14 + 304);
    if ((*(v66 + 48) || *(v66 + 49)) && !*(v138 + 137))
    {
      v134 = 0;
      v135 = 0;
      v133 = 0;
      if (CFNumberGetValue(*(v138 + 2), kCFNumberSInt64Type, &v133))
      {
        v67 = CKGetRegisteredChunksForItemID();
        if (v67)
        {
          *(v138 + 10) = v135;
          v69 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v134);
          *(v138 + 15) = v69;
        }

        else
        {
          v70 = mmcs_logging_logger_default(v67, v68);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v71 = CFStringCreateWithFormat(allocator, 0, @"Could not get chunk list for itemId:%lld", v133);
            v73 = mmcs_logging_logger_default(v71, v72);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v142 = v71;
              _os_log_impl(&dword_2577D8000, v73, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v71)
            {
              CFRelease(v71);
            }
          }
        }
      }

      v66 = *(v14 + 304);
    }

    CFArrayAppendValue(*(v66 + 8), v138);
    if (v138)
    {
      C3BaseRelease(v138);
    }

    v138 = 0;
    os_activity_scope_leave(&v137);
    if (v41 == ++v33)
    {
      goto LABEL_42;
    }
  }

  a2 = v126;
  if (!v139)
  {
    v139 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 40, @"unable to initialize wrapping state", v61, v62, v63, v64, v65);
  }

  if (v138)
  {
    C3BaseRelease(v138);
  }

  v138 = 0;
LABEL_129:
  os_activity_scope_leave(&v137);
  v25 = v139;
LABEL_107:
  if (!v25)
  {
    mmcs_register_items_cold_1();
  }

  mmcs_register_request_abort(a2, v25, a4);
LABEL_109:
  if (v14)
  {
LABEL_110:
    C3BaseRelease(v14);
  }

  if (v139)
  {
    CFRelease(v139);
  }

  if (v8)
  {
    os_release(v8);
  }

  os_activity_scope_leave(&state);
}

void mmcs_register_items_schedule_job(uint64_t a1)
{
  v2 = mmcs_chunk_instance_offset(a1);
  while (1)
  {
    v3 = *(a1 + 304);
    v4 = *(v3 + 16);
    if (v4 >= CFArrayGetCount(*(v3 + 8)))
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), *(*(a1 + 304) + 16));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(ValueAtIndex + 18), &state);
    itemid = mmcs_register_item_get_itemid(ValueAtIndex, v6);
    v34 = 0;
    *v35 = 0;
    v8 = mmcs_engine_owner(v2);
    requestor = mmcs_request_get_requestor(a1);
    if (mmcs_engine_get_item_reader_writer_for_item_callback(v2, v8, requestor, itemid, v35, &v34) && MMCSItemReaderWriterOpen(*v35, &v34))
    {
      FileTypeHint = MMCSItemReaderWriterGetFileTypeHint(*v35);
      v17 = mmcs_fixed_chunk_size_for_item_type_hint(FileTypeHint);
      *&v29 = 0;
      *(&v29 + 1) = a1;
      v30 = C3BaseRetain;
      v31 = C3BaseRelease;
      v32 = 0;
      v33 = mmcs_register_request_did_chunk_item;
      v18 = mmcs_register_and_chunk_job_create(&v29, v2, *v35, itemid, v17, ValueAtIndex[137], ValueAtIndex[136], *(ValueAtIndex + 6), 0, *(ValueAtIndex + 18));
      if (v18)
      {
        v24 = v18;
        v25 = *(a1 + 184);
        if (v25)
        {
          v26 = *(v24 + 200);
          if (v26)
          {
            mmcs_metrics_request_add_chunking_info(v25, v26);
          }
        }

        *(*(a1 + 304) + 24) = v24;
        mmcs_engine_chunk_job_dispatch_async(v24, *(v2 + 24));
        v27 = 0;
        goto LABEL_12;
      }

      file_error_wrapping_error_to_release = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"NULL chunk job", v19, v20, v21, v22, v23);
    }

    else
    {
      file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(v34, @"Unable to register item", v10, v11, v12, v13, v14, v15);
    }

    *(ValueAtIndex + 16) = file_error_wrapping_error_to_release;
    v34 = 0;
    ++*(*(a1 + 304) + 16);
    v27 = 1;
LABEL_12:
    if (*v35)
    {
      C3BaseRelease(*v35);
    }

    os_activity_scope_leave(&state);
    if ((v27 & 1) == 0)
    {
      return;
    }
  }

  mmcs_register_request_cleanup(a1);
}

void _add_item_result(uint64_t a1, __CFArray *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = *(a1 + 16);
  if (!v6)
  {
    _add_item_result_cold_3();
  }

  v7 = Mutable;
  CFDictionarySetValue(Mutable, @"kMMCSItemID", v6);
  v8 = *(a1 + 96);
  if (v8)
  {
    CFDictionarySetValue(v7, @"kMMCSSignature", v8);
    v9 = *(a1 + 104);
    if (v9)
    {
      CFDictionarySetValue(v7, @"kMMCSFileSize", v9);
    }

    v10 = *(a1 + 112);
    if (v10)
    {
      CFDictionarySetValue(v7, @"kMMCSPaddedFileSize", v10);
    }

    v11 = *(a1 + 120);
    if (v11)
    {
      CFDictionarySetValue(v7, @"kMMCSChunkCount", v11);
    }

    if (*(a1 + 138))
    {
      if (*(a1 + 80))
      {
        valuePtr = 0;
        if (CFNumberGetValue(*(a1 + 120), kCFNumberCFIndexType, &valuePtr))
        {
          v34 = a2;
          v12 = CFArrayCreateMutable(v4, valuePtr, MEMORY[0x277CBF128]);
          if (valuePtr >= 1)
          {
            v13 = 0;
            v14 = MEMORY[0x277CBF138];
            v15 = MEMORY[0x277CBF150];
            do
            {
              v16 = CFDictionaryCreateMutable(v4, 0, v14, v15);
              v35 = CKRegisteredChunkItemID();
              v17 = CFNumberCreate(v4, kCFNumberSInt64Type, &v35);
              if (v17)
              {
                v18 = v17;
                CFDictionaryAddValue(v16, @"itemID", v17);
                CFRelease(v18);
              }

              LODWORD(v35) = CKRegisteredChunkLength();
              v19 = CFNumberCreate(v4, kCFNumberSInt32Type, &v35);
              if (v19)
              {
                v20 = v19;
                CFDictionaryAddValue(v16, @"length", v19);
                CFRelease(v20);
              }

              v21 = CKRegisteredChunkLocation();
              v22 = CFStringCreateWithFormat(v4, 0, @"%c", v21);
              if (v22)
              {
                v23 = v22;
                CFDictionaryAddValue(v16, @"location", v22);
                CFRelease(v23);
              }

              v35 = CKRegisteredChunkOffset();
              v24 = CFNumberCreate(v4, kCFNumberSInt64Type, &v35);
              if (v24)
              {
                v25 = v24;
                CFDictionaryAddValue(v16, @"offset", v24);
                CFRelease(v25);
              }

              v35 = CKRegisteredChunkRowID();
              v26 = CFNumberCreate(v4, kCFNumberSInt64Type, &v35);
              if (v26)
              {
                v27 = v26;
                CFDictionaryAddValue(v16, @"rowID", v26);
                CFRelease(v27);
              }

              v28 = CKRegisteredChunkSignature();
              CKRegisteredChunkSignature();
              v29 = CKChunkSchemeAndSignatureSize();
              v30 = CFDataCreate(v4, v28, v29);
              if (v30)
              {
                v31 = v30;
                CFDictionaryAddValue(v16, @"signature", v30);
                CFRelease(v31);
              }

              CFArrayAppendValue(v12, v16);
              if (v16)
              {
                CFRelease(v16);
              }

              CKRegisteredChunkSize();
              ++v13;
            }

            while (v13 < valuePtr);
          }

          CFDictionarySetValue(v7, @"kMMCSRegisteredChunks", v12);
          a2 = v34;
          if (v12)
          {
            CFRelease(v12);
          }
        }
      }
    }
  }

  else
  {
    v32 = *(a1 + 128);
    if (!v32)
    {
      _add_item_result_cold_2();
    }

    Domain = CFErrorGetDomain(v32);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      _add_item_result_cold_1();
    }

    CFDictionarySetValue(v7, @"kMMCSResultError", *(a1 + 128));
  }

  CFArrayAppendValue(a2, v7);
  if (v7)
  {
    CFRelease(v7);
  }
}

void mmcs_register_request_did_chunk_item(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a2 + 288), &state);
  if (*(a1 + 144))
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 304);
  if (*(v6 + 24) == a2)
  {
    *(v6 + 24) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 304) + 8), *(*(a1 + 304) + 16));
    if (ValueAtIndex[15])
    {
      mmcs_register_request_did_chunk_item_cold_1();
    }

    v13 = ValueAtIndex;
    if (ValueAtIndex[10])
    {
      mmcs_register_request_did_chunk_item_cold_2();
    }

    itemid = mmcs_register_item_get_itemid(ValueAtIndex, v12);
    if (*(a2 + 160) != itemid)
    {
      v17 = itemid;
      v18 = mmcs_logging_logger_default(itemid, v15);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Job itemID %llu does not match register itemID %llu", *(a2 + 160), v17);
      v21 = mmcs_logging_logger_default(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v19;
        v22 = v21;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_2577D8000, v22, v23, "%{public}@", buf, 0xCu);
      }

LABEL_18:
      if (v19)
      {
        CFRelease(v19);
      }

      goto LABEL_46;
    }

    v16 = *(a2 + 280);
    if (v16)
    {
      CFRetain(v16);
      v13[16] = *(a2 + 280);
LABEL_46:
      C3BaseRelease(a2);
      ++*(*(a1 + 304) + 16);
      mmcs_register_items_schedule_job(a1);
      goto LABEL_2;
    }

    v24 = CKFileDigestResultsFileSignature();
    v13[12] = MMCSSignatureCopyData(v24);
    valuePtr = CKFileDigestResultsFileLength();
    v25 = *MEMORY[0x277CBECE8];
    v13[13] = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    v26 = CKFileDigestResultsFileVerificationKey();
    mmcs_register_item_set_file_verification_key(v13, v26);
    if (*(a2 + 82))
    {
      v33 = *(a2 + 264);
      if (v33)
      {
        *buf = 0;
        if (mmcs_chunking_profile_create(buf, *(a2 + 256), v33))
        {
          if (*buf)
          {
            if (v13[9])
            {
              mmcs_register_request_did_chunk_item_cold_3();
            }

            v13[9] = CFArrayCreateMutable(v25, 0, &kC3BaseArrayCallBacks);
            v34 = *buf;
          }

          else
          {
            v34 = 0;
          }
        }

        else
        {
          if (*buf)
          {
            C3BaseRelease(*buf);
          }

          v34 = 0;
          *buf = 0;
        }

        v35 = v13[9];
        if (v35)
        {
          CFArrayAppendValue(v35, v34);
          v34 = *buf;
        }

        if (v34)
        {
          C3BaseRelease(v34);
        }
      }

      v13[15] = CFNumberCreate(v25, kCFNumberSInt64Type, (a2 + 256));
      v13[10] = *(a2 + 248);
      *(a2 + 248) = 0;
    }

    if (v13[6])
    {
      *buf = mmcs_register_item_padded_length(v13, v27);
      if (!*buf)
      {
        v41 = @"Error Calculating Padded File Size";
        v42 = 1;
        goto LABEL_45;
      }

      v13[14] = CFNumberCreate(v25, kCFNumberSInt64Type, buf);
    }

    if (!*(a2 + 256))
    {
      goto LABEL_46;
    }

    if ((valuePtr & 0x8000000000000000) == 0)
    {
      mmcs_engine_add_bytes_chunked(*(a2 + 144), valuePtr);
      v36 = mmcs_engine_commit_if_over_threshold(*(a2 + 144));
      v38 = mmcs_logging_logger_default(v36, v37);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_46;
      }

      v19 = CFStringCreateWithFormat(v25, 0, @"Got %llu chunks for %lld", *(a2 + 256), *(a2 + 160));
      v40 = mmcs_logging_logger_default(v19, v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v19;
        v22 = v40;
        v23 = OS_LOG_TYPE_DEBUG;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v43 = valuePtr;
    v44 = *(a2 + 160);
    v41 = @"Calculated item size was too large (%llu) for item %lld";
    v42 = 17;
LABEL_45:
    v13[16] = mmcs_cferror_create_with_format(@"com.apple.mmcs", v42, v41, v28, v29, v30, v31, v32, v43, v44);
    goto LABEL_46;
  }

  v7 = mmcs_logging_logger_default(v4, v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unrecogized chunk job. Ignoring");
    v10 = mmcs_logging_logger_default(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v8;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

LABEL_2:
  os_activity_scope_leave(&state);
}

BOOL mmcs_local_chunk_satisfyer_create(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = 0;
  v12 = C3TypeRegister(&mmcs_local_chunk_satisfyerGetTypeID_typeID, &kmmcs_local_chunk_satisfyerContextClass);
  Instance = C3TypeCreateInstance_(0, v12, 0x40uLL);
  if (!Instance)
  {
    return *a1 != 0;
  }

  v14 = Instance;
  *(Instance + 16) = a2;
  MMCSEngineRetain(a2);
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  result = 1;
  *a1 = v14;
  return result;
}

uint64_t mmcs_local_chunk_satisfyer_perform(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, unint64_t a6, CFTypeRef *a7)
{
  v12 = 0;
  v13 = 0;
  v106 = *MEMORY[0x277D85DE8];
  v100 = 0;
  v99 = 0;
  do
  {
    v98 = dword_25785F2C8[v13];
    CKRegisteredChunkSignature();
    v14 = CKGetRegisteredChunks();
    if ((v14 & 1) == 0)
    {
      v90 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to CKGetRegisteredChunks");
        v93 = mmcs_logging_logger_default(v91, v92);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *v105 = v91;
          _os_log_impl(&dword_2577D8000, v93, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        if (v91)
        {
          CFRelease(v91);
        }
      }

LABEL_94:
      v89 = 1;
      v88 = v99;
      if (v99)
      {
        goto LABEL_95;
      }

      return v89;
    }

    v16 = CKRegisteredChunkSignatureCopyCString();
    v18 = mmcs_logging_logger_default(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v105 = v98;
      *&v105[4] = 2048;
      *&v105[6] = v100;
      *&v105[14] = 2080;
      *&v105[16] = v16;
      _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEBUG, "CKGetRegisteredChunks returned %d chunks in chunk list %p for signature %s", buf, 0x1Cu);
    }

    if (v16)
    {
      free(v16);
    }

    if (!v100 || !v98)
    {
      goto LABEL_94;
    }

    v96 = v12;
    if (v98 < 1)
    {
      v37 = 0;
      v84 = 0;
      goto LABEL_81;
    }

    v19 = 0;
    v20 = 1;
    while (1)
    {
      if (v20 == 1)
      {
        v19 = v100;
      }

      else
      {
        v19 += CKRegisteredChunkSize();
      }

      v21 = CKRegisteredChunkLength();
      if (v21 != CKRegisteredChunkLength())
      {
        if (**(a2 + 56))
        {
          mmcs_local_chunk_satisfyer_perform_cold_1();
        }

        v22 = CKRegisteredChunkLength();
        v23 = *(a2 + 56);
        *(v23 + 4) = v22;
        *(v23 + 64) = 1;
        *(*(a2 + 56) + 16) = CKRegisteredChunkKey();
        *(a2 + 64) = CKRegisteredChunkLength();
        CKRegisteredChunkLength();
        CKRegisteredChunkSetLength();
      }

      if (CKRegisteredChunkLocation() != 116 && CKRegisteredChunkLocation() != 114)
      {
        v37 = 0;
        goto LABEL_72;
      }

      if (a1[8] && CKRegisteredChunkItemID() == a1[7])
      {
        v24 = 0;
        goto LABEL_66;
      }

      mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
      file_error_with_format = 0;
      if (CKRegisteredChunkLocation() == 116)
      {
        cf = 0;
        v102 = 0;
        v25 = a1[2];
        v26 = CKRegisteredChunkItemID();
        if (mmcs_engine_file_path(v25, "tmpm", v26, &v102, &cf))
        {
          v27 = open(v102, 0);
          if ((v27 & 0x80000000) != 0)
          {
            v54 = *__error();
            v55 = CKRegisteredChunkSignatureCopyCString();
            v56 = v102;
            v57 = CKRegisteredChunkItemID();
            file_error_with_format = mmcs_cferror_create_file_error_with_format(v54, @"Unable to open temporary file %s for item %lld while looking for chunk %s", v58, v59, v60, v61, v62, v63, v56, v57, v55);
            if (v55)
            {
              free(v55);
            }
          }

          else
          {
            v28 = v27;
            v29 = MMCSItemReaderWriterCreateWithFileDescriptor(v27, 0, 0, 0, &file_error_with_format);
            a1[8] = v29;
            if (v29)
            {
              v30 = 0;
              goto LABEL_50;
            }

            Current = CFAbsoluteTimeGetCurrent();
            v65 = close(v28);
            if (v65)
            {
              v67 = mmcs_logging_logger_default(v65, v66);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v68 = *__error();
                v69 = __error();
                v70 = strerror(*v69);
                *buf = 67109634;
                *v105 = v28;
                *&v105[4] = 1024;
                *&v105[6] = v68;
                *&v105[10] = 2080;
                *&v105[12] = v70;
                _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_ERROR, "error closing file descriptor (%d) : posix error %d (%s)", buf, 0x18u);
              }
            }

            v73 = CFAbsoluteTimeGetCurrent() - Current;
            if (v73 > 0.25)
            {
              v74 = mmcs_logging_logger_default(v71, v72);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                *v105 = v28;
                *&v105[4] = 2048;
                *&v105[6] = v73;
                _os_log_impl(&dword_2577D8000, v74, OS_LOG_TYPE_ERROR, "closing fd (%d) took %.3f seconds!", buf, 0x12u);
              }
            }
          }
        }

        else
        {
          v47 = CKRegisteredChunkSignatureCopyCString();
          v48 = cf;
          v49 = CKRegisteredChunkItemID();
          file_error_with_format = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 9, v48, @"Unable to open file descriptor for item %lld while looking for chunk %s", v50, v51, v52, v53, v49, v47);
          if (v47)
          {
            free(v47);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
        }

        v30 = 1;
LABEL_50:
        if (v102)
        {
          free(v102);
        }

        if ((v30 & 1) == 0)
        {
LABEL_53:
          if (MMCSItemReaderWriterOpen(a1[8], &file_error_with_format))
          {
            v24 = 0;
            v76 = 0;
            v77 = file_error_with_format;
            if (file_error_with_format)
            {
              goto LABEL_62;
            }

            goto LABEL_63;
          }

          v78 = a1[8];
          if (v78)
          {
            C3BaseRelease(v78);
          }

          a1[8] = 0;
        }

        goto LABEL_59;
      }

      if (CKRegisteredChunkLocation() == 114)
      {
        v31 = a1[2];
        v32 = mmcs_engine_owner(v31);
        v33 = a1[3];
        v34 = CKRegisteredChunkItemID();
        item_reader_writer_for_item_callback = mmcs_engine_get_item_reader_writer_for_item_callback(v31, v32, v33, v34, a1 + 8, &file_error_with_format);
        v36 = a1[8];
        if (item_reader_writer_for_item_callback)
        {
          if (!v36)
          {
            mmcs_local_chunk_satisfyer_perform_cold_2();
          }

          a1[7] = CKRegisteredChunkItemID();
          goto LABEL_53;
        }

        if (v36)
        {
          mmcs_local_chunk_satisfyer_perform_cold_3();
        }

        a1[7] = 0;
LABEL_59:
        v46 = file_error_with_format;
        goto LABEL_60;
      }

      v38 = CKRegisteredChunkSignatureCopyCString();
      v39 = a1[7];
      v40 = CKRegisteredChunkLocation();
      v46 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Source item %lld had invalid registered chunk location %c for chunk %s", v41, v42, v43, v44, v45, v39, v40, v38);
      file_error_with_format = v46;
      if (v38)
      {
        free(v38);
      }

LABEL_60:
      if (!v46)
      {
        mmcs_local_chunk_satisfyer_perform_cold_5();
      }

      CFRetain(v46);
      v76 = 1;
      v24 = file_error_with_format;
      v77 = file_error_with_format;
      if (file_error_with_format)
      {
LABEL_62:
        CFRelease(v77);
      }

LABEL_63:
      if (v76)
      {
        v79 = mmcs_logging_logger_default(v77, v75);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
        {
          v80 = CKRegisteredChunkItemID();
          *buf = 134218242;
          *v105 = v80;
          *&v105[8] = 2112;
          *&v105[10] = v24;
          _os_log_impl(&dword_2577D8000, v79, OS_LOG_TYPE_DEBUG, "Failed to get fd for item %lld : %@", buf, 0x16u);
        }

LABEL_70:
        v37 = 0;
        if (!v24)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

LABEL_66:
      LOBYTE(file_error_with_format) = 0;
      v81 = mmcs_local_chunk_satisfyer_copy_chunk(a1, a2, a3, v19, a4, a5, a6, &file_error_with_format, &v99);
      v83 = v81;
      if (file_error_with_format)
      {
        CKRegisteredChunkItemID();
        CKUnregisterFile();
        mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
      }

      if (v83)
      {
        break;
      }

      v86 = mmcs_logging_logger_default(v81, v82);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = CKRegisteredChunkItemID();
        *buf = 134218242;
        *v105 = v87;
        *&v105[8] = 2114;
        *&v105[10] = v99;
        _os_log_impl(&dword_2577D8000, v86, OS_LOG_TYPE_ERROR, "Failed to write chunk to item %lld with error: %{public}@", buf, 0x16u);
      }

      v37 = 1;
      if (!v24)
      {
        goto LABEL_72;
      }

LABEL_71:
      CFRelease(v24);
LABEL_72:
      v84 = 0;
      if (!v37 && v20++ < v98)
      {
        continue;
      }

      goto LABEL_81;
    }

    if (file_error_with_format)
    {
      goto LABEL_70;
    }

    v37 = 0;
    v84 = 1;
LABEL_81:
    if (v100)
    {
      free(v100);
    }

    v100 = 0;
    v12 = 1;
    v13 = 1;
  }

  while (((v37 | v84 | v96) & 1) == 0);
  if (!v37)
  {
    goto LABEL_94;
  }

  v88 = v99;
  if (!v99)
  {
    mmcs_local_chunk_satisfyer_perform_cold_4();
  }

  if (a7)
  {
    CFRetain(v99);
    v89 = 0;
    v88 = v99;
    *a7 = v99;
    if (!v88)
    {
      return v89;
    }
  }

  else
  {
    v89 = 0;
  }

LABEL_95:
  CFRelease(v88);
  return v89;
}

uint64_t mmcs_local_chunk_satisfyer_copy_chunk(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, unint64_t a7, _BYTE *a8, void *a9)
{
  v12 = a5;
  v89 = *MEMORY[0x277D85DE8];
  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  v15 = CKRegisteredChunkItemID();
  cf = 0;
  if (*(a2 + 48))
  {
    mmcs_local_chunk_satisfyer_copy_chunk_cold_1();
  }

  v16 = v15;
  v17 = mmcs_chunk_instance_chunk_coder_create(a2, v12);
  if (!v17)
  {
    v28 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Error creating chunk coder for chunkInstance.", v18, v19, v20, v21, v22);
    goto LABEL_81;
  }

  v23 = v17;
  v79 = v16;
  v80 = a8;
  v24 = CKRegisteredChunkLength();
  v25 = CKRegisteredChunkOffset();
  v26 = CKRegisteredChunkOffset();
  while (1)
  {
    if (v24 >= a7)
    {
      v27 = a7;
    }

    else
    {
      v27 = v24;
    }

    v83 = 0;
    if (!MMCSItemReaderWriterRead(a1[8], v25, a6, v27, &v83, &cf))
    {
      goto LABEL_25;
    }

    if (!v83)
    {
      v28 = CKRegisteredChunkSignatureCopyCString();
      v33 = mmcs_logging_logger_default(v28, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v39 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s was not found locally from item %lld which has been truncated. Unregistering item %lld", v28, v79, v79);
        v41 = mmcs_logging_logger_default(v39, v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v86 = v39;
          _os_log_impl(&dword_2577D8000, v41, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v39)
        {
          CFRelease(v39);
        }
      }

      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s was not found locally from item %lld which has been truncated. Unregistering item %lld", v34, v35, v36, v37, v38, v28, v79, v79);
      if (v28)
      {
        free(v28);
LABEL_25:
        v28 = 0;
      }

      v29 = 1;
      v31 = 1;
      goto LABEL_35;
    }

    CKChunkCoderUpdate();
    v81 = 0;
    v82 = 0;
    MMCSItemReaderWriterWrite(a1[4], a1[5], v26, a6, v83, &v82, &v81);
    if (v81)
    {
      v42 = *__error();
      v43 = CKRegisteredChunkSignatureCopyCString();
      v45 = mmcs_logging_logger_default(v43, v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v46 = *MEMORY[0x277CBECE8];
        v47 = strerror(v42);
        v48 = CFStringCreateWithFormat(v46, 0, @"Chunk %s could not be written: %s(%d)", v43, v47, v42);
        v50 = mmcs_logging_logger_default(v48, v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v86 = v48;
          _os_log_impl(&dword_2577D8000, v50, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v48)
        {
          CFRelease(v48);
        }
      }

      v28 = v81;
      if (!v43)
      {
        goto LABEL_34;
      }

LABEL_33:
      free(v43);
      goto LABEL_34;
    }

    if (v82 != v83)
    {
      break;
    }

    v26 += v82;
    v25 += v82;
    v24 -= v82;
    if (!v24)
    {
      v28 = 0;
      v29 = 0;
      v30 = 1;
      v31 = 1;
      goto LABEL_36;
    }
  }

  v43 = CKRegisteredChunkSignatureCopyCString();
  v62 = mmcs_logging_logger_default(v43, v61);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    v68 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s could not be completely written", v43);
    v70 = mmcs_logging_logger_default(v68, v69);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v86 = v68;
      _os_log_impl(&dword_2577D8000, v70, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v68)
    {
      CFRelease(v68);
    }
  }

  v28 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Chunk %s could not be completely written", v63, v64, v65, v66, v67, v43);
  if (v43)
  {
    goto LABEL_33;
  }

LABEL_34:
  v29 = 0;
  v31 = 0;
LABEL_35:
  v30 = v24 == 0;
LABEL_36:
  v51 = CKRegisteredChunkSuccessorOffset();
  v52 = v51;
  if (v29)
  {
    v53 = 0;
  }

  else
  {
    v53 = v31;
  }

  v54 = v30 & v53;
  if (v26 != v51)
  {
    v54 = 0;
  }

  if (v31 && !v29 && !v54)
  {
    mmcs_local_chunk_satisfyer_copy_chunk_cold_3();
  }

  if ((!v30 | v29))
  {
    goto LABEL_70;
  }

  if (!CKChunkCoderFinish())
  {
    v71 = CKRegisteredChunkSignatureCopyCString();
    v73 = mmcs_logging_logger_default(v71, v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
    {
      v74 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk %s was found locally from item %lld but the data does not match. Unregistering item %lld", v71, v79, v79);
      v76 = mmcs_logging_logger_default(v74, v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v86 = v74;
        _os_log_impl(&dword_2577D8000, v76, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v74)
      {
        CFRelease(v74);
      }
    }

    if (v71)
    {
      free(v71);
    }

LABEL_70:
    C3BaseRelease(v23);
    v60 = 0;
LABEL_71:
    v56 = v80;
    goto LABEL_72;
  }

  C3BaseRelease(v23);
  if (v26 == v52)
  {
    v55 = v31;
  }

  else
  {
    v55 = 0;
  }

  if (v55 != 1)
  {
    v60 = 1;
    goto LABEL_71;
  }

  v56 = v80;
  if (gMMCS_DebugLevel >= 4)
  {
    v57 = CKRegisteredChunkSignatureCopyCString();
    v59 = mmcs_logging_logger_chunk(v57, v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v86 = v57;
      v87 = 2048;
      v88 = v79;
      _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_DEFAULT, "Chunk %{public}s was found locally from item %lld", buf, 0x16u);
    }

    if (v57)
    {
      free(v57);
    }
  }

  a1[9] += CKRegisteredChunkLength();
  v60 = 1;
  *(a2 + 48) = 1;
LABEL_72:
  if (v29)
  {
    v60 = 0;
  }

  if (v56 && (v60 & 1) == 0)
  {
    if (CKRegisteredChunkItemID() && CKRegisteredChunkItemID())
    {
      CKRegisteredChunkItemID();
      CKUnregisterFile();
    }

    *v56 = 1;
  }

  if (v31)
  {
LABEL_81:
    v77 = 1;
  }

  else
  {
    if (!v28)
    {
      mmcs_local_chunk_satisfyer_copy_chunk_cold_2();
    }

    if (a9)
    {
      CFRetain(v28);
      v77 = 0;
      *a9 = v28;
    }

    else
    {
      v77 = 0;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  return v77;
}

void mmcs_local_chunk_satisfyer_clear_source_fd_cache(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    MMCSItemReaderWriterEnsureClosed(v2);
    v3 = *(a1 + 64);
    if (v3)
    {
      C3BaseRelease(v3);
    }

    *(a1 + 64) = 0;
  }

  *(a1 + 56) = 0;
}

uint64_t mmcs_external_chunk_satisfyer_perform(void *a1, uint64_t a2, uint64_t a3, int8x16_t *a4, unint64_t a5, void *a6)
{
  v12 = *MEMORY[0x277CBECE8];
  v13 = CKRegisteredChunkSignature();
  v14 = CKRegisteredChunkSignature();
  v15 = mmcs_chunk_signature_size_with_scheme(v14);
  v16 = CFDataCreate(v12, v13, v15);
  if (!v16)
  {
    return 1;
  }

  v17 = v16;
  v28 = 0;
  cf = 0;
  v18 = a1[2];
  v19 = *(v18 + 152);
  v20 = mmcs_engine_owner(v18);
  ItemReaderWriterForChunkSignature = MMCSEngineClientContextGetItemReaderWriterForChunkSignature(v19, v20, a1[3], v17, &v28, &cf);
  v22 = v28;
  if (ItemReaderWriterForChunkSignature)
  {
    v23 = v28 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23)
  {
    v25 = 1;
  }

  else
  {
    a1[7] = 0;
    a1[8] = v22;
    RegisteredChunk = mmcs_chunk_reference_create_RegisteredChunk(*(a2 + 56));
    CKRegisteredChunkSetItemID();
    v25 = mmcs_local_chunk_satisfyer_copy_chunk(a1, a2, a3, RegisteredChunk, 2, a4, a5, &v27, a6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v17);
  return v25;
}

void _mmcs_local_chunk_satisfyerCFFinalize(uint64_t a1)
{
  mmcs_local_chunk_satisfyer_clear_source_fd_cache(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    MMCSEngineRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef mmcs_url_copy_query_value_for_tag(const __CFURL *a1, uint64_t a2)
{
  v2 = 0;
  if (!a1 || !a2)
  {
    return v2;
  }

  v4 = *MEMORY[0x277CBECE8];
  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@=", a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  String = CFURLCopyQueryString(a1, 0);
  if (!String)
  {
    CFRelease(v6);
    return 0;
  }

  v8 = String;
  v9 = CFStringFind(String, v6, 1uLL);
  if (v9.location == -1)
  {
    v13 = 0;
  }

  else
  {
    v16.length = CFStringGetLength(v8) - (v9.location + v9.length);
    result.location = 0;
    result.length = 0;
    v16.location = v9.location + v9.length;
    v10 = CFStringFindWithOptions(v8, @"&", v16, 0, &result);
    location = result.location;
    if (v10)
    {
      v12 = result.location == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      location = CFStringGetLength(v8);
      result.location = location;
      result.length = 0;
    }

    v17.length = location - (v9.location + v9.length);
    v17.location = v9.location + v9.length;
    v13 = CFStringCreateWithSubstring(v4, v8, v17);
    if (v13)
    {
      v2 = CFURLCreateStringByReplacingPercentEscapes(v4, v13, &stru_2868BF3F0);
      goto LABEL_18;
    }
  }

  v2 = 0;
LABEL_18:
  CFRelease(v6);
  CFRelease(v8);
  if (v13)
  {
    CFRelease(v13);
  }

  return v2;
}

double chunkserver__chunk_info__init(_OWORD *a1)
{
  a1[2] = xmmword_279841628;
  a1[3] = unk_279841638;
  a1[4] = xmmword_279841648;
  result = 0.0;
  *a1 = chunkserver__chunk_info__init_init_value;
  a1[1] = *dbl_279841618;
  return result;
}

double chunkserver__ford_info__init(uint64_t a1)
{
  result = *&chunkserver__ford_info__init_init_value;
  *a1 = chunkserver__ford_info__init_init_value;
  *(a1 + 16) = unk_279841668;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__container_element__init(uint64_t a1)
{
  result = *&chunkserver__container_element__init_init_value;
  *a1 = chunkserver__container_element__init_init_value;
  *(a1 + 16) = *algn_279841690;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__name_value_pair__init(uint64_t a1)
{
  result = *&chunkserver__name_value_pair__init_init_value;
  *a1 = chunkserver__name_value_pair__init_init_value;
  *(a1 + 16) = unk_2798416B8;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__host_info__init(uint64_t a1)
{
  *(a1 + 96) = xmmword_279841730;
  *(a1 + 112) = unk_279841740;
  *(a1 + 128) = xmmword_279841750;
  *(a1 + 144) = 0;
  *(a1 + 32) = xmmword_2798416F0;
  *(a1 + 48) = unk_279841700;
  *(a1 + 64) = xmmword_279841710;
  *(a1 + 80) = unk_279841720;
  result = *&chunkserver__host_info__init_init_value;
  *a1 = chunkserver__host_info__init_init_value;
  *(a1 + 16) = unk_2798416E0;
  return result;
}

double chunkserver__put_complete_at_edge_payload_trailer__init(_OWORD *a1)
{
  *a1 = chunkserver__put_complete_at_edge_payload_trailer__init_init_value;
  a1[1] = unk_279841778;
  result = 0.0;
  a1[2] = xmmword_279841788;
  a1[3] = unk_279841798;
  return result;
}

uint64_t chunkserver__put_complete_at_edge_payload_trailer__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
  {
    chunkserver__put_complete_at_edge_payload_trailer__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__put_complete_at_edge_payload_trailer__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
  {
    chunkserver__put_complete_at_edge_payload_trailer__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__put_complete_at_edge_payload_trailer__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_complete_at_edge_payload_trailer__descriptor)
    {
      chunkserver__put_complete_at_edge_payload_trailer__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__error_response__init(_OWORD *a1)
{
  a1[2] = xmmword_2798417C8;
  a1[3] = unk_2798417D8;
  a1[4] = xmmword_2798417E8;
  result = 0.0;
  *a1 = chunkserver__error_response__init_init_value;
  a1[1] = *dbl_2798417B8;
  return result;
}

void **chunkserver__error_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__error_response__descriptor)
    {
      chunkserver__error_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_error__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841818;
  *(a1 + 48) = unk_279841828;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__file_error__init_init_value;
  *(a1 + 16) = *dbl_279841808;
  return result;
}

double chunkserver__file_success__init(_OWORD *a1)
{
  a1[2] = xmmword_279841860;
  a1[3] = unk_279841870;
  a1[4] = xmmword_279841880;
  a1[5] = unk_279841890;
  result = *&chunkserver__file_success__init_init_value;
  *a1 = chunkserver__file_success__init_init_value;
  a1[1] = *algn_279841850;
  return result;
}

double chunkserver__chunk_error_index__init(uint64_t a1)
{
  *a1 = chunkserver__chunk_error_index__init_init_value;
  *(a1 + 16) = *algn_2798418B0;
  result = 0.0;
  *(a1 + 32) = xmmword_2798418C0;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__file_chunk_error__init(_OWORD *a1)
{
  a1[2] = xmmword_2798418F8;
  a1[3] = unk_279841908;
  a1[4] = xmmword_279841918;
  result = 0.0;
  *a1 = chunkserver__file_chunk_error__init_init_value;
  a1[1] = *dbl_2798418E8;
  return result;
}

double chunkserver__storage_container_error__init(_OWORD *a1)
{
  *a1 = chunkserver__storage_container_error__init_init_value;
  a1[1] = unk_279841938;
  result = 0.0;
  a1[2] = xmmword_279841948;
  return result;
}

double chunkserver__method_completion_info__init(uint64_t a1)
{
  *(a1 + 128) = xmmword_2798419D8;
  *(a1 + 144) = unk_2798419E8;
  *(a1 + 160) = xmmword_2798419F8;
  *(a1 + 176) = 0;
  *(a1 + 64) = xmmword_279841998;
  *(a1 + 80) = unk_2798419A8;
  *(a1 + 96) = xmmword_2798419B8;
  *(a1 + 112) = unk_2798419C8;
  *a1 = chunkserver__method_completion_info__init_init_value;
  *(a1 + 16) = unk_279841968;
  result = 0.0;
  *(a1 + 32) = xmmword_279841978;
  *(a1 + 48) = unk_279841988;
  return result;
}

uint64_t chunkserver__method_completion_info__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info__descriptor)
  {
    chunkserver__method_completion_info__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__method_completion_info__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info__descriptor)
  {
    chunkserver__method_completion_info__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__method_completion_info__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__method_completion_info__descriptor)
    {
      chunkserver__method_completion_info__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__method_completion_info_list__init(_OWORD *a1)
{
  *a1 = chunkserver__method_completion_info_list__init_init_value;
  a1[1] = unk_279841A20;
  result = 0.0;
  a1[2] = xmmword_279841A30;
  a1[3] = unk_279841A40;
  return result;
}

uint64_t chunkserver__method_completion_info_list__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info_list__descriptor)
  {
    chunkserver__method_completion_info_list__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__method_completion_info_list__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__method_completion_info_list__descriptor)
  {
    chunkserver__method_completion_info_list__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__method_completion_info_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__method_completion_info_list__descriptor)
    {
      chunkserver__method_completion_info_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_chunk_list__chunking_profile__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841A70;
  *(a1 + 48) = unk_279841A80;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__file_chunk_list__chunking_profile__init_init_value;
  *(a1 + 16) = *dbl_279841A60;
  return result;
}

double chunkserver__file_chunk_list__init(_OWORD *a1)
{
  a1[4] = xmmword_279841AD8;
  a1[5] = unk_279841AE8;
  a1[6] = xmmword_279841AF8;
  a1[7] = unk_279841B08;
  *a1 = chunkserver__file_chunk_list__init_init_value;
  a1[1] = unk_279841AA8;
  result = 0.0;
  a1[2] = xmmword_279841AB8;
  a1[3] = unk_279841AC8;
  return result;
}

double chunkserver__file_chunk_lists__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841B38;
  *(a1 + 48) = unk_279841B48;
  *(a1 + 64) = xmmword_279841B58;
  *(a1 + 80) = 0;
  result = *&chunkserver__file_chunk_lists__init_init_value;
  *a1 = chunkserver__file_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841B28;
  return result;
}

uint64_t chunkserver__file_chunk_lists__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_chunk_lists__descriptor)
  {
    chunkserver__file_chunk_lists__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__file_chunk_lists__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_chunk_lists__descriptor)
  {
    chunkserver__file_chunk_lists__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

double chunkserver__storage_container_chunk_list__container_upload_element__init(uint64_t a1)
{
  *a1 = chunkserver__storage_container_chunk_list__container_upload_element__init_init_value;
  *(a1 + 16) = unk_279841B80;
  result = 0.0;
  *(a1 + 32) = xmmword_279841B90;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__storage_container_chunk_list__init(_OWORD *a1)
{
  a1[2] = xmmword_279841BC8;
  a1[3] = unk_279841BD8;
  a1[4] = xmmword_279841BE8;
  result = 0.0;
  *a1 = chunkserver__storage_container_chunk_list__init_init_value;
  a1[1] = *dbl_279841BB8;
  return result;
}

double chunkserver__storage_container_chunk_lists__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841C38;
  *(a1 + 80) = unk_279841C48;
  *(a1 + 96) = 0;
  *a1 = chunkserver__storage_container_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841C08;
  result = 0.0;
  *(a1 + 32) = xmmword_279841C18;
  *(a1 + 48) = *dbl_279841C28;
  return result;
}

void **chunkserver__storage_container_chunk_lists__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__storage_container_chunk_lists__descriptor)
    {
      chunkserver__storage_container_chunk_lists__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__authorize_simulcast_response__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841C80;
  *(a1 + 48) = unk_279841C90;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__authorize_simulcast_response__init_init_value;
  *(a1 + 16) = *algn_279841C70;
  return result;
}

double chunkserver__storage_container_error_list__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841CC8;
  *(a1 + 48) = unk_279841CD8;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__storage_container_error_list__init_init_value;
  *(a1 + 16) = *dbl_279841CB8;
  return result;
}

void **chunkserver__storage_container_error_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__storage_container_error_list__descriptor)
    {
      chunkserver__storage_container_error_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_checksum_authorization__init(_OWORD *a1)
{
  a1[2] = xmmword_279841D10;
  a1[3] = unk_279841D20;
  a1[4] = xmmword_279841D30;
  a1[5] = unk_279841D40;
  result = *&chunkserver__file_checksum_authorization__init_init_value;
  *a1 = chunkserver__file_checksum_authorization__init_init_value;
  a1[1] = unk_279841D00;
  return result;
}

double chunkserver__file_checksum_authorization_list__init(uint64_t a1)
{
  *a1 = chunkserver__file_checksum_authorization_list__init_init_value;
  *(a1 + 16) = unk_279841D60;
  result = 0.0;
  *(a1 + 32) = xmmword_279841D70;
  *(a1 + 48) = 0;
  return result;
}

uint64_t chunkserver__file_checksum_authorization_list__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_checksum_authorization_list__descriptor)
  {
    chunkserver__file_checksum_authorization_list__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__file_checksum_authorization_list__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__file_checksum_authorization_list__descriptor)
  {
    chunkserver__file_checksum_authorization_list__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__file_checksum_authorization_list__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__file_checksum_authorization_list__descriptor)
    {
      chunkserver__file_checksum_authorization_list__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__container_element_reference__init(uint64_t a1)
{
  result = *&chunkserver__container_element_reference__init_init_value;
  *a1 = chunkserver__container_element_reference__init_init_value;
  *(a1 + 16) = unk_279841D98;
  *(a1 + 32) = 0;
  return result;
}

double chunkserver__file_checksum_chunk_references__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841DF0;
  *(a1 + 80) = unk_279841E00;
  *(a1 + 96) = 0;
  *a1 = chunkserver__file_checksum_chunk_references__init_init_value;
  *(a1 + 16) = unk_279841DC0;
  result = 0.0;
  *(a1 + 32) = xmmword_279841DD0;
  *(a1 + 48) = *dbl_279841DE0;
  return result;
}

double chunkserver__file_checksum_storage_host_chunk_lists__init(uint64_t a1)
{
  *a1 = chunkserver__file_checksum_storage_host_chunk_lists__init_init_value;
  *(a1 + 16) = unk_279841E28;
  result = 0.0;
  *(a1 + 32) = xmmword_279841E38;
  *(a1 + 48) = 0;
  return result;
}

double chunkserver__file_groups__init(uint64_t a1)
{
  *(a1 + 64) = xmmword_279841E90;
  *(a1 + 80) = unk_279841EA0;
  *(a1 + 96) = 0;
  *a1 = chunkserver__file_groups__init_init_value;
  *(a1 + 16) = unk_279841E60;
  result = 0.0;
  *(a1 + 32) = xmmword_279841E70;
  *(a1 + 48) = *dbl_279841E80;
  return result;
}

void **chunkserver__file_groups__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__file_groups__descriptor)
    {
      chunkserver__file_groups__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__storage_host_chunk_list__init(_OWORD *a1)
{
  a1[2] = xmmword_279841ED8;
  a1[3] = unk_279841EE8;
  a1[4] = xmmword_279841EF8;
  a1[5] = unk_279841F08;
  result = *&chunkserver__storage_host_chunk_list__init_init_value;
  *a1 = chunkserver__storage_host_chunk_list__init_init_value;
  a1[1] = unk_279841EC8;
  return result;
}

double chunkserver__chunk_key__init(_OWORD *a1)
{
  a1[2] = xmmword_279841F38;
  a1[3] = unk_279841F48;
  a1[4] = xmmword_279841F58;
  result = 0.0;
  *a1 = chunkserver__chunk_key__init_init_value;
  a1[1] = *dbl_279841F28;
  return result;
}

double chunkserver__get_file_chunk_keys__init(uint64_t a1)
{
  *(a1 + 32) = xmmword_279841F88;
  *(a1 + 48) = unk_279841F98;
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = chunkserver__get_file_chunk_keys__init_init_value;
  *(a1 + 16) = *dbl_279841F78;
  return result;
}

double chunkserver__get_chunk_keys_request__init(_OWORD *a1)
{
  *a1 = chunkserver__get_chunk_keys_request__init_init_value;
  a1[1] = unk_279841FC0;
  result = 0.0;
  a1[2] = xmmword_279841FD0;
  return result;
}

uint64_t chunkserver__get_chunk_keys_request__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__get_chunk_keys_request__descriptor)
  {
    chunkserver__get_chunk_keys_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__get_chunk_keys_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__get_chunk_keys_request__descriptor)
  {
    chunkserver__get_chunk_keys_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__get_chunk_keys_request__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__get_chunk_keys_request__descriptor)
    {
      chunkserver__get_chunk_keys_request__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__file_chunk_keys__init(_OWORD *a1)
{
  a1[2] = xmmword_279842000;
  a1[3] = unk_279842010;
  a1[4] = xmmword_279842020;
  result = 0.0;
  *a1 = chunkserver__file_chunk_keys__init_init_value;
  a1[1] = *algn_279841FF0;
  return result;
}

double chunkserver__get_chunk_keys_response__init(_OWORD *a1)
{
  a1[2] = xmmword_279842050;
  a1[3] = unk_279842060;
  a1[4] = xmmword_279842070;
  result = 0.0;
  *a1 = chunkserver__get_chunk_keys_response__init_init_value;
  a1[1] = *dbl_279842040;
  return result;
}

void **chunkserver__get_chunk_keys_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__get_chunk_keys_response__descriptor)
    {
      chunkserver__get_chunk_keys_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_file_chunk_keys__init(_OWORD *a1)
{
  a1[2] = xmmword_2798420A0;
  a1[3] = unk_2798420B0;
  a1[4] = xmmword_2798420C0;
  a1[5] = unk_2798420D0;
  result = *&chunkserver__put_file_chunk_keys__init_init_value;
  *a1 = chunkserver__put_file_chunk_keys__init_init_value;
  a1[1] = *algn_279842090;
  return result;
}

void **chunkserver__put_file_chunk_keys__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_file_chunk_keys__descriptor)
    {
      chunkserver__put_file_chunk_keys__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_chunk_keys_request__init(uint64_t a1)
{
  result = *&chunkserver__put_chunk_keys_request__init_init_value;
  *a1 = chunkserver__put_chunk_keys_request__init_init_value;
  *(a1 + 16) = *algn_2798420F0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t chunkserver__put_chunk_keys_request__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_chunk_keys_request__descriptor)
  {
    chunkserver__put_chunk_keys_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__put_chunk_keys_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__put_chunk_keys_request__descriptor)
  {
    chunkserver__put_chunk_keys_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

void **chunkserver__put_chunk_keys_request__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_chunk_keys_request__descriptor)
    {
      chunkserver__put_chunk_keys_request__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__put_chunk_keys_response__init(uint64_t a1)
{
  *a1 = chunkserver__put_chunk_keys_response__init_init_value;
  *(a1 + 16) = unk_279842118;
  result = 0.0;
  *(a1 + 32) = xmmword_279842128;
  *(a1 + 48) = 0;
  return result;
}

void **chunkserver__put_chunk_keys_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__put_chunk_keys_response__descriptor)
    {
      chunkserver__put_chunk_keys_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

double chunkserver__clone_complete_request__init(uint64_t a1)
{
  result = *&chunkserver__clone_complete_request__init_init_value;
  *a1 = chunkserver__clone_complete_request__init_init_value;
  *(a1 + 16) = *algn_279842150;
  *(a1 + 32) = 0;
  return result;
}

uint64_t chunkserver__clone_complete_request__get_packed_size(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__clone_complete_request__descriptor)
  {
    chunkserver__clone_complete_request__get_packed_size_cold_1();
  }

  return protobuf_c_message_get_packed_size(a1);
}

uint64_t chunkserver__clone_complete_request__pack(void **a1, uint64_t a2)
{
  if (*a1 != &chunkserver__clone_complete_request__descriptor)
  {
    chunkserver__clone_complete_request__pack_cold_1();
  }

  return protobuf_c_message_pack(a1, a2);
}

double chunkserver__clone_complete_response__init(uint64_t a1)
{
  *a1 = chunkserver__clone_complete_response__init_init_value;
  *(a1 + 16) = unk_279842178;
  result = 0.0;
  *(a1 + 32) = xmmword_279842188;
  *(a1 + 48) = 0;
  return result;
}

void **chunkserver__clone_complete_response__free_unpacked(void **result, uint64_t (**a2)())
{
  if (result)
  {
    if (*result != &chunkserver__clone_complete_response__descriptor)
    {
      chunkserver__clone_complete_response__free_unpacked_cold_1();
    }

    return protobuf_c_message_free_unpacked(result, a2);
  }

  return result;
}

uint64_t mmcs_case_insensitive_set_create(void *a1, CFStringRef *a2, int64_t a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_case_insensitive_setGetTypeID_typeID, &kmmcs_case_insensitive_setContextClass);
  result = C3TypeCreateInstance_(0, v6, 0x10uLL);
  if (result)
  {
    v8 = result;
    *(result + 16) = 0;
    *(result + 24) = 0;
    v9 = (result + 16);
    v10 = CFLocaleCreate(0, @"en_US");
    *v9 = v10;
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = malloc_type_calloc(a3, 8uLL, 0x6004044C4A2DFuLL);
    v12 = *MEMORY[0x277CBECE8];
    if (a3 < 1)
    {
      v8[3] = CFSetCreate(*MEMORY[0x277CBECE8], v11, 0, MEMORY[0x277CBF158]);
    }

    else
    {
      v13 = 0;
      do
      {
        if (*a2)
        {
          MutableCopy = CFStringCreateMutableCopy(v12, 0, *a2);
          if (MutableCopy)
          {
            v15 = MutableCopy;
            CFStringLowercase(MutableCopy, *v9);
            v11[v13++] = v15;
          }
        }

        ++a2;
        --a3;
      }

      while (a3);
      v8[3] = CFSetCreate(v12, v11, v13, MEMORY[0x277CBF158]);
      if (v13 >= 1)
      {
        v16 = v11;
        do
        {
          if (*v16)
          {
            CFRelease(*v16);
          }

          *v16++ = 0;
          --v13;
        }

        while (v13);
      }
    }

    free(v11);
    if (v8[3])
    {
      *a1 = v8;
      return 1;
    }

    else
    {
LABEL_18:
      C3BaseRelease(v8);
      return 0;
    }
  }

  return result;
}

uint64_t mmcs_case_insensitive_set_contains(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    return 0;
  }

  if (!theString)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  if (!MutableCopy)
  {
    return 0;
  }

  v4 = MutableCopy;
  CFStringLowercase(MutableCopy, *(a1 + 16));
  v5 = CFSetContainsValue(*(a1 + 24), v4);
  CFRelease(v4);
  return v5;
}

void _mmcs_case_insensitive_setCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 16) = 0;
}

CFIndex mmcs_base64_encode_cfdata_to_cstring(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFDataGetBytePtr(result);
    if (result)
    {
      v2 = result;
      result = CFDataGetLength(v1);
      if (result)
      {
        v3 = result / 3;
        v4 = result % 3 ? result % 3 + 1 : 0;
        result = malloc_type_calloc(1uLL, (4 * (result / 3) + 4 * (result % 3 != 0)) | 1, 0x100004077774924uLL);
        if (result)
        {
          v5 = v4 + 4 * v3;
          v6 = v5 + 3;
          if (v5 >= 0)
          {
            v6 = v4 + 4 * v3;
          }

          v7 = v6 >> 2;
          v8 = (v4 & 3) != 0 ? v7 + 1 : v7;
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = v5 - 1;
            v11 = (v2 + 1);
            v12 = result + 1;
            while (1)
            {
              *(result + v9) = base64ValueLookupArray[*(v11 - 1) >> 2];
              if (v10 == v9)
              {
                mmcs_base64_encode_cfdata_to_cstring_cold_1();
              }

              if (v5 - 2 == v9)
              {
                *(result + v10) = base64ValueLookupArray[16 * (*(v11 - 1) & 3)];
                v10 = v9 + 2;
                v14 = 61;
                goto LABEL_22;
              }

              *(v12 + v9) = base64ValueLookupArray[(16 * (*(v11 - 1) & 3)) | (*v11 >> 4)];
              if (v5 - 3 == v9)
              {
                break;
              }

              v13 = v12 + v9;
              *(v13 + 1) = base64ValueLookupArray[(4 * (*v11 & 0xF)) | (v11[1] >> 6)];
              *(v13 + 2) = base64ValueLookupArray[v11[1] & 0x3F];
              v9 += 4;
              v11 += 3;
              if (!--v8)
              {
                return result;
              }
            }

            v14 = base64ValueLookupArray[4 * (*v11 & 0xF)];
LABEL_22:
            *(result + v10) = v14;
            *(result + v9 + 3) = 61;
          }
        }
      }
    }
  }

  return result;
}

CFDataRef mmcs_base64_encoded_cstring_to_cfdata(const char *a1)
{
  v2 = strlen(a1);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    while (1)
    {
      v5 = a1[v4];
      if ((v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
        v7 = v5 - 43;
        v8 = v7 > 0x34;
        v9 = (1 << v7) & 0x10000000000015;
        if (v8 || v9 == 0)
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        v4 = v2;
        goto LABEL_14;
      }
    }

    if (v4)
    {
LABEL_14:
      v11 = v4 & 3;
      if ((v4 & 3) != 0)
      {
        v12 = (v4 >> 2) + 1;
      }

      else
      {
        v12 = v4 >> 2;
      }

      v13 = malloc_type_calloc(1uLL, 3 * v12, 0x100004077774924uLL);
      if (!v13)
      {
        return 0;
      }

      v14 = v13;
      if (!v12)
      {
        goto LABEL_46;
      }

      v15 = 0;
      v16 = v12 - 1;
      if (v11 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v11;
      }

      if (v11)
      {
        v18 = v17;
      }

      else
      {
        v18 = 4;
      }

      v35 = 3 * v12;
      while (2)
      {
        v19 = 3 * v15;
        v36 = 0;
        if (v15 < v16)
        {
          v20 = 0;
          while (1)
          {
            v21 = decimalValueFromBase64CString(a1, v3, v15, v20);
            *(&v36 + v20) = v21;
            if (v21 == 255)
            {
              break;
            }

            if (++v20 == 4)
            {
              goto LABEL_30;
            }
          }

LABEL_46:
          free(v14);
          return 0;
        }

        for (i = 0; i != v18; ++i)
        {
          v27 = decimalValueFromBase64CString(a1, v3, v15, i);
          *(&v36 + i) = v27;
          if (v27 == 255)
          {
            goto LABEL_46;
          }
        }

        if (v11 > 1)
        {
          v30 = &v14[v19];
          if (v11 == 2)
          {
            *v30 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            *(v30 + 1) = 0;
            v29 = v35 - 2;
          }

          else
          {
            v31 = BYTE1(v36);
            *v30 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            v30[1] = (BYTE2(v36) >> 2) & 0xF | v14[v19 + 1] | (16 * v31);
            v30[2] = 0;
            v29 = v35 - 1;
          }
        }

        else
        {
          if (!v11)
          {
LABEL_30:
            v22 = &v14[v19];
            v23 = BYTE1(v36);
            *v22 = (4 * v36) | (BYTE1(v36) >> 4) & 3;
            v24 = v14[v19 + 1] | (16 * v23);
            v25 = BYTE2(v36);
            v22[1] = (BYTE2(v36) >> 2) & 0xF | v24;
            v22[2] = HIBYTE(v36) & 0x3F | v14[v19 + 2] | (v25 << 6);
            goto LABEL_41;
          }

          v28 = &v14[v19];
          *v28 = 0;
          v28[2] = 0;
          v29 = v35 - 3;
        }

        v35 = v29;
LABEL_41:
        v16 = v12 - 1;
        if (++v15 != v12)
        {
          continue;
        }

        break;
      }

      if (v35)
      {
        v32 = *MEMORY[0x277CBECE8];
        v33 = *MEMORY[0x277CBECF0];

        return XCFDataCreateWithBytesNoCopy(v32, v14, v35, v33);
      }

      goto LABEL_46;
    }
  }

  return 0;
}

uint64_t decimalValueFromBase64CString(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 4 * a3;
  if (v4 >= a2)
  {
    return 0;
  }

  v5 = *(a1 + v4);
  v6 = v5 - 65;
  if ((v5 - 65) >= 0x1A)
  {
    if ((v5 - 97) <= 0x19)
    {
      return (v5 - 71);
    }

    if ((v5 - 48) <= 9)
    {
      return (v5 + 4);
    }

    if (v5 > 46)
    {
      if (v5 == 47 || v5 == 95)
      {
        return 63;
      }

      return -1;
    }

    v6 = 62;
    if (v5 != 43 && v5 != 45)
    {
      return -1;
    }
  }

  return v6;
}

uint64_t MMCSItemFDReaderWriterCreateWithFileDescriptor(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) != 0)
  {
    v5 = mmcs_logging_logger_default(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Attempted to create MMCSItemFDReaderWriter with invalid file descriptor (%d)", a1);
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    return 0;
  }

  else
  {
    v3 = C3TypeRegister(&MMCSItemFDReaderWriterGetTypeID_typeID, &kMMCSItemFDReaderWriterContextClass);
    result = C3TypeCreateInstance_(0, v3, 8uLL);
    if (result)
    {
      *(result + 16) = a1;
    }
  }

  return result;
}

void *MMCSItemReaderWriterCreateWithPlainFileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MMCSItemFDReaderWriterCreateWithFileDescriptor(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v11[0] = 7;
  v11[1] = v7;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = C3BaseRetain;
  v11[5] = C3BaseRelease;
  v11[6] = MMCSItemFDReaderWriterStat1;
  v11[7] = MMCSItemFDReaderWriterOpen;
  v11[8] = MMCSItemFDReaderWriterRead;
  v11[9] = MMCSItemFDReaderWriterClose;
  v11[10] = MMCSItemFDReaderWriterGetCacheBlobWithName;
  v11[11] = MMCSItemFDReaderWriterSetCacheBlobWithName;
  v11[12] = MMCSItemFDReaderWriterInvalidate;
  v11[13] = MMCSItemFDReaderWriterWrite;
  v11[14] = MMCSItemFDReaderWriterCopyAndClearProperty;
  v11[15] = MMCSItemFDReaderWriterSeek;
  v11[16] = a4;
  v11[17] = MMCSItemFDReaderWriterCopyProperty;
  v11[18] = MMCSItemFDReaderWriterSync;
  v11[19] = MMCSItemFDReaderWriterValidated;
  v9 = MMCSItemReaderWriterCreate(v11);
  C3BaseRelease(v8);
  return v9;
}

uint64_t MMCSItemFDReaderWriterStat1(uint64_t a1, uint64_t a2, __CFDictionary **a3, CFErrorRef *a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  memset(&v34, 0, sizeof(v34));
  if (fstat(*(a2 + 16), &v34) == -1)
  {
    v14 = __error();
    v15 = *v14;
    v16 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v14, 0);
    v17 = *(a2 + 16);
    v18 = strerror(v15);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v16, @"Stating the fd (%d) readerWriter failed: %s", v19, v20, v21, v22, v17, v18);
    if (v16)
    {
      CFRelease(v16);
    }

    Mutable = 0;
    if (!a4)
    {
LABEL_25:
      v29 = 0;
      v30 = 0;
      if (!Mutable)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_24:
    CFRetain(error_with_underlying_error);
    *a4 = error_with_underlying_error;
    goto LABEL_25;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v24 = @"MMCSItemFDReaderStat1 create statsDict";
    goto LABEL_23;
  }

  valuePtr = v34.st_size;
  v9 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v9;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileSize", v9);
    CFRelease(v11);
  }

  valuePtr = v34.st_ino;
  v12 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  if (v12)
  {
    v13 = v12;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileSystemFileNumber", v12);
    CFRelease(v13);
  }

  else
  {
    v10 = 1;
  }

  valuePtr = v34.st_mtimespec.tv_sec;
  v25 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
  if (v25)
  {
    v26 = v25;
    CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileModificationTime", v25);
    CFRelease(v26);
  }

  else
  {
    v10 = 1;
  }

  st_gen = v34.st_gen;
  v27 = CFNumberCreate(v7, kCFNumberSInt32Type, &st_gen);
  if (!v27 || (v28 = v27, CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileGenerationNumber", v27), CFRelease(v28), v10))
  {
    v24 = @"MMCSItemFDReaderStat1 create number failed";
LABEL_23:
    error_with_underlying_error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, v24);
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a3)
  {
    CFRetain(Mutable);
    error_with_underlying_error = 0;
    *a3 = Mutable;
  }

  else
  {
    error_with_underlying_error = 0;
  }

  v29 = 1;
LABEL_26:
  CFRelease(Mutable);
  v30 = v29;
LABEL_27:
  if (error_with_underlying_error)
  {
    CFRelease(error_with_underlying_error);
  }

  return v30;
}

uint64_t MMCSItemFDReaderWriterOpen(uint64_t a1, uint64_t a2, CFErrorRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 16);
  if ((v8 & 0x80000000) == 0)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Opening the fd (%d) reader writer failed: invalid file descriptor", a4, a5, a6, a7, a8, v8);
  result = 0;
  *a3 = v11;
  return result;
}

uint64_t MMCSItemFDReaderWriterRead(int a1, uint64_t a2, off_t a3, void *__buf, size_t __nbyte, ssize_t *a6, CFErrorRef *a7)
{
  v10 = pread(*(a2 + 16), __buf, __nbyte, a3);
  if (v10 == -1)
  {
    v12 = __error();
    if (a7)
    {
      v13 = *v12;
      v14 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v12, 0);
      v15 = *(a2 + 16);
      v16 = strerror(v13);
      *a7 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v14, @"Reading from the fd (%d) readerWriter failed: %s", v17, v18, v19, v20, v15, v16);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    return 0;
  }

  else
  {
    *a6 = v10;
    return 1;
  }
}

uint64_t MMCSItemFDReaderWriterClose(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v3 = *(a2 + 16);
  if (v3 < 0)
  {
    return 1;
  }

  if (close(v3) == -1)
  {
    v7 = __error();
    if (a3)
    {
      v8 = *v7;
      v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v7, 0);
      v10 = *(a2 + 16);
      v11 = strerror(v8);
      *a3 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v9, @"Closing the fd (%d) reader failed: %s", v12, v13, v14, v15, v10, v11);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    result = 0;
  }

  else
  {
    result = 1;
  }

  *(a2 + 16) = -1;
  return result;
}

uint64_t MMCSItemFDReaderWriterGetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    MMCSItemFDReaderWriterGetCacheBlobWithName_cold_2();
  }

  if (!a2)
  {
    MMCSItemFDReaderWriterGetCacheBlobWithName_cold_1();
  }

  v9 = *(a2 + 16);
  v10 = *(*(a1 + 24) + 24);
  if (v10)
  {
    CStringWithCFString = createCStringWithCFString(v10);
  }

  else
  {
    CStringWithCFString = 0;
  }

  if (v9 == -1)
  {
    v17 = 0;
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderGetCacheBlobWithName fd==-1", a4, a5, a6, a7, a8);
    if (!CStringWithCFString)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = CKGetCacheBlobFd();
  if (CStringWithCFString)
  {
LABEL_8:
    free(CStringWithCFString);
  }

LABEL_9:
  v18 = cf;
  if (a5 && (v17 & 1) == 0)
  {
    if (!cf)
    {
      v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderGetCacheBlobWithName no error provided", v12, v13, v14, v15, v16);
      cf = v18;
    }

    CFRetain(v18);
    v18 = cf;
    *a5 = cf;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t MMCSItemFDReaderWriterSetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a1)
  {
    MMCSItemFDReaderWriterSetCacheBlobWithName_cold_2();
  }

  if (!a2)
  {
    MMCSItemFDReaderWriterSetCacheBlobWithName_cold_1();
  }

  v9 = *(a2 + 16);
  v10 = *(*(a1 + 24) + 24);
  if (v10)
  {
    CStringWithCFString = createCStringWithCFString(v10);
  }

  else
  {
    CStringWithCFString = 0;
  }

  if (v9 == -1)
  {
    v17 = 0;
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderWriterSetCacheBlobWithName fd==-1", a4, a5, a6, a7, a8);
    if (!CStringWithCFString)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = CKSetCacheBlobFd();
  if (CStringWithCFString)
  {
LABEL_8:
    free(CStringWithCFString);
  }

LABEL_9:
  v18 = cf;
  if (a5 && (v17 & 1) == 0)
  {
    if (!cf)
    {
      v18 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"MMCSItemFDReaderWriterSetCacheBlobWithName no error provided", v12, v13, v14, v15, v16);
      cf = v18;
    }

    CFRetain(v18);
    v18 = cf;
    *a5 = cf;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v17;
}

uint64_t MMCSItemFDReaderWriterWrite(int a1, uint64_t a2, off_t a3, void *__buf, size_t __nbyte, ssize_t *a6, CFErrorRef *a7)
{
  v7 = *(a2 + 16);
  if (v7 == -1)
  {
    MMCSItemFDReaderWriterWrite_cold_1();
  }

  v11 = pwrite(v7, __buf, __nbyte, a3);
  if (v11 < 0)
  {
    v13 = __error();
    if (a7)
    {
      v14 = *v13;
      v15 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v13, 0);
      v16 = *(a2 + 16);
      v17 = strerror(v14);
      *a7 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v15, @"Writing to the fd (%d) readerWriter failed: %s", v18, v19, v20, v21, v16, v17);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    return 0;
  }

  else
  {
    *a6 = v11;
    return 1;
  }
}

CFNumberRef MMCSItemFDReaderWriterCopyAndClearProperty(int a1, uint64_t a2, CFStringRef theString1)
{
  if (CFStringCompare(theString1, @"kMMCSItemReaderWriterPropertyUnderlyingFileDescriptor", 0))
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v5 = (a2 + 16);
  if (v6 == -1)
  {
    return 0;
  }

  result = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, v5);
  *v5 = -1;
  return result;
}

uint64_t MMCSItemFDReaderWriterSeek(int a1, uint64_t a2, off_t a3, CFErrorRef *a4)
{
  v7 = lseek(*(a2 + 16), a3, 0);
  if (v7 == -1)
  {
    v14 = __error();
    if (a4)
    {
      v15 = *v14;
      v16 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], *v14, 0);
      v17 = *(a2 + 16);
      v18 = strerror(v15);
      *a4 = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 39, v16, @"Seeking from the fd (%d) readerWriter failed: %s", v19, v20, v21, v22, v17, v18);
      if (v16)
      {
        CFRelease(v16);
      }
    }
  }

  else
  {
    if (v7 == a3)
    {
      return 1;
    }

    if (a4)
    {
      v23 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Seeking from the fd (%d) readerWriter failed. Offset requested %lld. Offset returned %lld.", v8, v9, v10, v11, v12, *(a2 + 16), a3, v7);
      result = 0;
      *a4 = v23;
      return result;
    }
  }

  return 0;
}

uint64_t MMCSItemFDReaderWriterSync(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  if (!fcntl(*(a2 + 16), 51))
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v6 = *__error();
  v7 = __error();
  v8 = strerror(*v7);
  v14 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"fcntl F_FULLFSYNC for fd (%d) readerWriter failed. %d %s"), v9, v10, v11, v12, v13, v5, v6, v8);
  result = 0;
  *a3 = v14;
  return result;
}

void _MMCSItemFDReaderWriterCFFinalize(uint64_t a1)
{
  *&v18[7] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = close(*(a1 + 16));
    if (v3)
    {
      v5 = mmcs_logging_logger_default(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 16);
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        v15 = 67109634;
        v16 = v6;
        v17 = 1024;
        *v18 = v7;
        v18[2] = 2080;
        *&v18[3] = v9;
        _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_ERROR, "error closing file descriptor (%d) : posix error %d (%s)", &v15, 0x18u);
      }
    }

    v12 = CFAbsoluteTimeGetCurrent() - Current;
    if (v12 > 0.25)
    {
      v13 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 16);
        v15 = 67109376;
        v16 = v14;
        v17 = 2048;
        *v18 = v12;
        _os_log_impl(&dword_2577D8000, v13, OS_LOG_TYPE_ERROR, "closing fd (%d) took %.3f seconds!", &v15, 0x12u);
      }
    }

    *(a1 + 16) = -1;
  }
}

void mmcs_operation_metric_reference_time()
{
  if (*&mmcs_operation_metric_reference_time_origin == 0.0)
  {
    mmcs_operation_metric_reference_time_origin = CFAbsoluteTimeGetCurrent();
  }
}

void mmcs_operation_metric_increment_uint64_dictionary_key(void *a1, void *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v5 = a2;
    v6 = a1;
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = [v7 unsignedLongLongValue];

    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8 + a3];
    [v6 setObject:v9 forKeyedSubscript:v5];
  }
}

void mmcs_operation_metric_test()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = create(1, 0.0, 1.0);
  [v0 addObject:v1];

  v2 = [MMCSOperationMetric alloc];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(MMCSOperationMetric *)v2 initWithDate:v3];

  v5 = MMCSOperationStateTimeRangeMergedRanges(v4, v0);
  if ([v5 count] != 1)
  {
    mmcs_operation_metric_test_cold_1();
  }

  v6 = [v5 firstObject];
  [v6 relativeStart];
  if (v7 != 0.0)
  {
    mmcs_operation_metric_test_cold_38();
  }

  [v6 duration];
  if (v8 != 1.0)
  {
    mmcs_operation_metric_test_cold_37();
  }

  v9 = MMCSOperationStateTimeRangeMergedRanges(0, v0);

  if (!v9)
  {
    mmcs_operation_metric_test_cold_36();
  }

  if ([v9 count])
  {
    mmcs_operation_metric_test_cold_2();
  }

  v10 = MMCSOperationStateTimeRangeMergedRanges(v4, 0);

  if (!v10)
  {
    mmcs_operation_metric_test_cold_35();
  }

  if ([v10 count])
  {
    mmcs_operation_metric_test_cold_3();
  }

  v11 = MMCSOperationStateTimeRangeMergedRanges(0, 0);

  if (!v11)
  {
    mmcs_operation_metric_test_cold_34();
  }

  if ([v11 count])
  {
    mmcs_operation_metric_test_cold_4();
  }

  v12 = [MEMORY[0x277CBEB18] array];

  v13 = create(1, 0.0, 1.0);
  [v12 addObject:v13];

  v14 = create(1, 2.0, 1.0);
  [v12 addObject:v14];

  v15 = MMCSOperationStateTimeRangeMergedRanges(v4, v12);

  if ([v15 count] != 2)
  {
    mmcs_operation_metric_test_cold_5();
  }

  v16 = [v15 firstObject];

  [v16 relativeStart];
  if (v17 != 0.0)
  {
    mmcs_operation_metric_test_cold_33();
  }

  [v16 duration];
  if (v18 != 1.0)
  {
    mmcs_operation_metric_test_cold_32();
  }

  v19 = [v15 objectAtIndexedSubscript:1];

  [v19 relativeStart];
  if (v20 != 2.0)
  {
    mmcs_operation_metric_test_cold_31();
  }

  [v19 duration];
  if (v21 != 1.0)
  {
    mmcs_operation_metric_test_cold_30();
  }

  v22 = [MEMORY[0x277CBEB18] array];

  v23 = create(1, 0.0, 1.0);
  [v22 addObject:v23];

  v24 = create(1, 1.0, 1.0);
  [v22 addObject:v24];

  v25 = MMCSOperationStateTimeRangeMergedRanges(v4, v22);

  if ([v25 count] != 1)
  {
    mmcs_operation_metric_test_cold_6();
  }

  v26 = [v25 firstObject];

  [v26 relativeStart];
  if (v27 != 0.0)
  {
    mmcs_operation_metric_test_cold_29();
  }

  [v26 duration];
  if (v28 != 2.0)
  {
    mmcs_operation_metric_test_cold_28();
  }

  v29 = [MEMORY[0x277CBEB18] array];

  v30 = create(1, 0.0, 1.0);
  [v29 addObject:v30];

  v31 = create(1, 0.5, 1.0);
  [v29 addObject:v31];

  v32 = MMCSOperationStateTimeRangeMergedRanges(v4, v29);

  if ([v32 count] != 1)
  {
    mmcs_operation_metric_test_cold_7();
  }

  v33 = [v32 firstObject];

  [v33 relativeStart];
  if (v34 != 0.0)
  {
    mmcs_operation_metric_test_cold_27();
  }

  [v33 duration];
  if (v35 != 1.5)
  {
    mmcs_operation_metric_test_cold_26();
  }

  v36 = [MMCSOperationMetric alloc];
  v37 = [MEMORY[0x277CBEAA8] date];
  v38 = [(MMCSOperationMetric *)v36 initWithDate:v37];

  v39 = [MEMORY[0x277CBEB18] array];
  v40 = [MEMORY[0x277CBEB18] array];
  v41 = create(0, 0.5, 1.0);
  [v40 addObject:v41];

  v42 = create(1, 0.0, 1.0);
  [v39 addObject:v42];

  v43 = MMCSOperationStateTimeRangeFilteredRanges(v38, v40, v39);
  if ([v43 count] != 1)
  {
    mmcs_operation_metric_test_cold_8();
  }

  v44 = [v43 firstObject];
  [v44 relativeStart];
  if (v45 != 1.0)
  {
    mmcs_operation_metric_test_cold_25();
  }

  [v44 duration];
  if (v46 != 0.5)
  {
    mmcs_operation_metric_test_cold_24();
  }

  v47 = [MEMORY[0x277CBEB18] array];

  v48 = [MEMORY[0x277CBEB18] array];

  v49 = create(0, 0.5, 1.0);
  [v48 addObject:v49];

  v50 = create(1, 1.0, 0.25);
  [v47 addObject:v50];

  v51 = MMCSOperationStateTimeRangeFilteredRanges(v38, v48, v47);

  if ([v51 count] != 2)
  {
    mmcs_operation_metric_test_cold_9();
  }

  v52 = [v51 objectAtIndexedSubscript:0];

  [v52 relativeStart];
  if (v53 != 0.5)
  {
    mmcs_operation_metric_test_cold_23();
  }

  [v52 duration];
  if (v54 != 0.5)
  {
    mmcs_operation_metric_test_cold_22();
  }

  v55 = [v51 objectAtIndexedSubscript:1];

  [v55 relativeStart];
  if (v56 != 1.25)
  {
    mmcs_operation_metric_test_cold_21();
  }

  [v55 duration];
  if (v57 != 0.25)
  {
    mmcs_operation_metric_test_cold_20();
  }

  v58 = [MEMORY[0x277CBEB18] array];

  v59 = [MEMORY[0x277CBEB18] array];

  v60 = create(0, 0.5, 1.0);
  [v59 addObject:v60];

  v61 = create(1, 1.0, 1.0);
  [v58 addObject:v61];

  v62 = MMCSOperationStateTimeRangeFilteredRanges(v38, v59, v58);

  if ([v62 count] != 1)
  {
    mmcs_operation_metric_test_cold_10();
  }

  v63 = [v62 firstObject];

  [v63 relativeStart];
  if (v64 != 0.5)
  {
    mmcs_operation_metric_test_cold_19();
  }

  [v63 duration];
  if (v65 != 0.5)
  {
    mmcs_operation_metric_test_cold_18();
  }

  v66 = [MEMORY[0x277CBEB18] array];

  v67 = [MEMORY[0x277CBEB18] array];

  v68 = create(0, 0.5, 1.0);
  [v67 addObject:v68];

  v69 = create(1, 0.0, 2.0);
  [v66 addObject:v69];

  v70 = MMCSOperationStateTimeRangeFilteredRanges(v38, v67, v66);

  if ([v70 count])
  {
    mmcs_operation_metric_test_cold_11();
  }

  v71 = [MEMORY[0x277CBEB18] array];

  v72 = [MEMORY[0x277CBEB18] array];

  v73 = create(0, 0.5, 1.0);
  [v72 addObject:v73];

  v74 = create(1, 0.0, 0.25);
  [v71 addObject:v74];

  v75 = MMCSOperationStateTimeRangeFilteredRanges(v38, v72, v71);

  if ([v75 count] != 1)
  {
    mmcs_operation_metric_test_cold_12();
  }

  v76 = [v75 firstObject];

  [v76 relativeStart];
  if (v77 != 0.5)
  {
    mmcs_operation_metric_test_cold_17();
  }

  [v76 duration];
  if (v78 != 1.0)
  {
    mmcs_operation_metric_test_cold_16();
  }

  v79 = [MEMORY[0x277CBEB18] array];

  v86 = [MEMORY[0x277CBEB18] array];

  v80 = create(0, 0.5, 1.0);
  [v86 addObject:v80];

  v81 = create(1, 2.0, 0.25);
  [v79 addObject:v81];

  v82 = MMCSOperationStateTimeRangeFilteredRanges(v38, v86, v79);

  if ([v82 count] != 1)
  {
    mmcs_operation_metric_test_cold_13();
  }

  v83 = [v82 firstObject];

  [v83 relativeStart];
  if (v84 != 0.5)
  {
    mmcs_operation_metric_test_cold_15();
  }

  [v83 duration];
  if (v85 != 1.0)
  {
    mmcs_operation_metric_test_cold_14();
  }
}

MMCSOperationMetric *mmcs_metrics_create_metric_object(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    v3 = CFEqual(@"put", v2);
    v4 = *(a1 + 16);
    if (v3)
    {
      v5 = 1;
      if (!v4)
      {
        goto LABEL_7;
      }

LABEL_46:
      if (CFEqual(@"get", v4))
      {
        v6 = 1;
      }

      else
      {
        v6 = CFEqual(@"getSection", *(a1 + 16)) != 0;
      }

      goto LABEL_8;
    }

    v5 = CFEqual(@"putSection", v4) != 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  v6 = 0;
LABEL_8:
  v7 = [MMCSOperationMetric alloc];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 32)];
  v9 = [(MMCSOperationMetric *)v7 initWithDate:v8];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = v11 <= 0.0 || v10 <= 0.0 || v10 > v11;
  v14 = v11 - v10;
  if (v13)
  {
    v14 = 0.0;
  }

  [(MMCSOperationMetric *)v9 setDuration:v14];
  if (*(a1 + 136))
  {
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = *(a1 + 136);
    v32.length = CFArrayGetCount(v16);
    v32.location = 0;
    CFArrayApplyFunction(v16, v32, add_chunking_metric, v15);
    if ([v15 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v15);
    }
  }

  if (*(a1 + 72))
  {
    v17 = [MEMORY[0x277CBEB18] array];
    v18 = *(a1 + 72);
    v33.length = CFArrayGetCount(v18);
    v33.location = 0;
    CFArrayApplyFunction(v18, v33, add_http_metric, v17);
    if ([v17 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v17);
    }
  }

  if (*(a1 + 80))
  {
    v19 = [MEMORY[0x277CBEB18] array];
    v20 = *(a1 + 80);
    v34.length = CFArrayGetCount(v20);
    v34.location = 0;
    CFArrayApplyFunction(v20, v34, add_http_metric, v19);
    if ([v19 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v19);
    }
  }

  if (*(a1 + 88) != 0 && v5)
  {
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = *(a1 + 88);
    v35.length = CFArrayGetCount(v22);
    v35.location = 0;
    CFArrayApplyFunction(v22, v35, add_http_metric, v21);
    v23 = [(MMCSOperationMetric *)v9 ranges];
    v24 = v23;
    if (v23 && [v23 count])
    {
      v25 = [v24 lastObject];
      if ([v21 count])
      {
        v26 = 0;
        do
        {
          v27 = [v21 objectAtIndexedSubscript:v26];
          [v27 absoluteStop];
          v29 = v28;
          [v25 absoluteStop];
          if (v29 >= v30)
          {
            ++v26;
          }

          else
          {
            [v21 removeObjectAtIndex:v26];
          }
        }

        while (v26 < [v21 count]);
      }
    }

    else
    {
      v25 = 0;
    }

    if ([v21 count])
    {
      MMCSOperationMetricCombineMetrics(v9, v21);
    }
  }

  if (v6)
  {
    [(MMCSOperationMetric *)v9 setBytesFulfilledByPeers:*(a1 + 104)];
    [(MMCSOperationMetric *)v9 setBytesFulfilledLocally:*(a1 + 112)];
    [(MMCSOperationMetric *)v9 setBytesResumed:*(a1 + 120)];
  }

  [(MMCSOperationMetric *)v9 rangesCompleted];
  return v9;
}

void add_chunking_metric(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) > 0.0 && !*(a1 + 72) && !*(a1 + 64))
  {
    v16 = v3;
    v4 = [MMCSOperationMetric alloc];
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1 + 48)];
    v6 = [(MMCSOperationMetric *)v4 initWithDate:v5];

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = v8 <= 0.0 || v7 <= 0.0 || v7 > v8;
    v11 = v8 - v7;
    if (v10)
    {
      v11 = 0.0;
    }

    [(MMCSOperationMetric *)v6 setDuration:v11];
    v12 = *(a1 + 40);
    v13 = [(MMCSOperationMetric *)v6 totalBytesByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v13, v12, *(a1 + 24));

    v14 = [(MMCSOperationMetric *)v6 chunkCountByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v14, v12, *(a1 + 32));

    v15 = [(MMCSOperationMetric *)v6 fileCountByChunkProfile];
    mmcs_operation_metric_increment_uint64_dictionary_key(v15, v12, 1);

    [v16 addObject:v6];
    v3 = v16;
  }
}

void add_http_metric(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[3];
  if (*(v4 + 56) > 0.0)
  {
    v29 = v3;
    v5 = [MMCSOperationMetric alloc];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a1[3] + 56)];
    v7 = [(MMCSOperationMetric *)v5 initWithDate:v6];

    v8 = *(v4 + 56);
    v9 = 0.0;
    if (*(v4 + 224))
    {
      v10 = *(v4 + 232);
      v12 = v8 <= 0.0 || v10 <= 0.0 || v10 > v8;
      v13 = v8 - v10;
      if (v12)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v13;
      }

      if (v14 > 0.0)
      {
        v15 = [MMCSOperationStateTimeRange alloc];
        v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 232)];
        v17 = [(MMCSOperationStateTimeRange *)v15 initWithOperationState:0 startDate:v16 duration:v14];

        [(MMCSOperationMetric *)v7 addRange:v17];
        v8 = *(v4 + 56);
      }
    }

    else
    {
      v14 = 0.0;
    }

    v18 = *(v4 + 104);
    v20 = v18 <= 0.0 || v8 <= 0.0 || v8 > v18;
    v21 = v18 - v8;
    if (!v20)
    {
      v9 = v21;
    }

    if (v9 > 0.0)
    {
      v22 = [MMCSOperationStateTimeRange alloc];
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v4 + 56)];
      v24 = [(MMCSOperationStateTimeRange *)v22 initWithOperationState:1 startDate:v23 duration:v9];

      [(MMCSOperationMetric *)v7 addRange:v24];
    }

    [(MMCSOperationMetric *)v7 setDuration:v14 + v9];
    [(MMCSOperationMetric *)v7 rangesCompleted];
    if (*(v4 + 112) >= 1)
    {
      [(MMCSOperationMetric *)v7 setBytesUploaded:?];
    }

    if (*(v4 + 168))
    {
      [(MMCSOperationMetric *)v7 setBytesDownloaded:*(v4 + 176)];
    }

    [(MMCSOperationMetric *)v7 setConnections:1];
    [(MMCSOperationMetric *)v7 setConnectionsCreated:*(a1[7] + 44) == 0];
    v25 = a1[5];
    if (v25)
    {
      v26 = CFUUIDCreateString(*MEMORY[0x277CBECE8], v25);
      if (v26)
      {
        v27 = v26;
        v28 = [(MMCSOperationMetric *)v7 requestUUIDs];
        [v28 addObject:v27];

        CFRelease(v27);
      }
    }

    [v29 addObject:v7];

    v3 = v29;
  }
}

MMCSOperationStateTimeRange *create(uint64_t a1, double a2, double a3)
{
  v6 = [MMCSOperationStateTimeRange alloc];
  v7 = MEMORY[0x277CBEAA8];
  Current = *&mmcs_operation_metric_reference_time_origin;
  if (*&mmcs_operation_metric_reference_time_origin == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    mmcs_operation_metric_reference_time_origin = *&Current;
  }

  v9 = [v7 dateWithTimeIntervalSinceReferenceDate:Current + a2];
  v10 = [(MMCSOperationStateTimeRange *)v6 initWithOperationState:a1 startDate:v9 duration:a3];

  return v10;
}

uint64_t mmcs_perform_run_loop_timer_create(void *a1, _OWORD *a2, uint64_t a3, const __CFArray *a4)
{
  *a1 = 0;
  v15 = 0;
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = mmcs_perform_timer_create(&v15, 1, 8, v14);
  v9 = v15;
  if (v8 && v15)
  {
    v10 = v15[7];
    context.version = 0;
    context.info = v15;
    context.retain = C3BaseRetain;
    context.release = C3BaseRelease;
    context.copyDescription = 0;
    v11 = CFRunLoopTimerCreate(*MEMORY[0x277CBECE8], 6.3113904e10, 6.3113904e10, 0, 0, mmcs_perform_run_loop_timer_perform_callback, &context);
    *v10 = v11;
    XCFRunLoopAddTimerToModes(a3, v11, a4);
    C3BaseRetain(v15);
    v9 = v15;
    *a1 = v15;
  }

  if (v9)
  {
    C3BaseRelease(v9);
  }

  return v8;
}

void mmcs_perform_run_loop_timer_finalize(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
}

void mmcs_perform_run_loop_timer_invalidate(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*v1)
  {
    CFRunLoopTimerInvalidate(*v1);
    if (*v1)
    {
      CFRelease(*v1);
    }

    *v1 = 0;
  }
}

__CFString *MMCSRequestOptionsDiscretionaryNetworkBehaviorGetString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279844D08[a1];
  }
}

void mmcs_http_request_options_append_description(uint64_t a1, __CFString *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v6 = Mutable;
  if (*(a1 + 96))
  {
    v7 = @"allowsRetry";
  }

  else
  {
    v7 = @"!allowsRetry";
  }

  CFArrayAppendValue(Mutable, v7);
  v8 = *(a1 + 104);
  if (v8)
  {
    if (CFBooleanGetValue(v8))
    {
      v9 = @"privacyProxyFailClosedOverride";
    }

    else
    {
      v9 = @"!privacyProxyFailClosedOverride";
    }

    CFArrayAppendValue(v6, v9);
  }

  v10 = *(a1 + 112);
  if (v10)
  {
    if (CFBooleanGetValue(v10))
    {
      v11 = @"useNWLoaderOverride";
    }

    else
    {
      v11 = @"!useNWLoaderOverride";
    }

    CFArrayAppendValue(v6, v11);
  }

  v12 = *(a1 + 80);
  if (v12 <= 2)
  {
    CFArrayAppendValue(v6, off_279844D20[v12]);
  }

  v13 = *(a1 + 88);
  if (v13 <= 2)
  {
    CFArrayAppendValue(v6, off_279844D38[v13]);
  }

  if (*(a1 + 16))
  {
    v14 = CFStringCreateWithFormat(v4, 0, @"if=%@", *(a1 + 16));
    CFArrayAppendValue(v6, v14);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  if (*(a1 + 74))
  {
    v15 = @"allowsCell";
  }

  else
  {
    v15 = @"!allowsCell";
  }

  CFArrayAppendValue(v6, v15);
  if (*(a1 + 72))
  {
    v16 = @"powerPluggedIn";
  }

  else
  {
    v16 = @"!powerPluggedIn";
  }

  CFArrayAppendValue(v6, v16);
  if (*(a1 + 73))
  {
    v17 = @"allowsPowerNapScheduling";
  }

  else
  {
    v17 = @"!allowsPowerNapScheduling";
  }

  CFArrayAppendValue(v6, v17);
  if (*(a1 + 48))
  {
    v18 = CFStringCreateWithFormat(v4, 0, @"connectionPoolName=%@", *(a1 + 48));
    CFArrayAppendValue(v6, v18);
    if (v18)
    {
      CFRelease(v18);
    }
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    valuePtr = -1;
    if (CFNumberGetValue(v19, kCFNumberCFIndexType, &valuePtr))
    {
      v20 = CFStringCreateWithFormat(v4, 0, @"networkServiceType=%lld", valuePtr);
      CFArrayAppendValue(v6, v20);
      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  if (*(a1 + 24))
  {
    v21 = CFStringCreateWithFormat(v4, 0, @"app=%@", *(a1 + 24));
    CFArrayAppendValue(v6, v21);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  if (*(a1 + 32))
  {
    v22 = CFStringCreateWithFormat(v4, 0, @"app2=%@", *(a1 + 32));
    CFArrayAppendValue(v6, v22);
    if (v22)
    {
      CFRelease(v22);
    }
  }

  if (*(a1 + 40))
  {
    CFArrayAppendValue(v6, @"auditToken=Y");
  }

  Count = CFArrayGetCount(v6);
  if (Count >= 1)
  {
    v24 = Count;
    for (i = 0; i != v24; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      CFStringAppend(a2, @" ");
      CFStringAppend(a2, ValueAtIndex);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

BOOL caseInsensitveStringEqualCallBack(const __CFString *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a1) && (v5 = CFStringGetTypeID(), v5 == CFGetTypeID(a2)))
  {
    return CFStringCompare(a1, a2, 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    return 0;
  }
}

CFHashCode caseInsensitiveStringHashCallBack(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theString);
  CFStringFold(MutableCopy, 1uLL, 0);
  v2 = CFHash(MutableCopy);
  CFRelease(MutableCopy);
  return v2;
}

uint64_t mmcs_http_request_options_create_with_dictionary(uint64_t *a1, const __CFDictionary *a2)
{
  v4 = C3TypeRegister(&mmcs_http_request_optionsGetTypeID_typeID, &kmmcs_http_request_optionsContextClass);
  result = C3TypeCreateInstance_(0, v4, 0x88uLL);
  if (result)
  {
    v6 = result;
    *(result + 80) = 0;
    v7 = (result + 80);
    *(result + 74) = 257;
    *(result + 78) = 0;
    *(result + 104) = 0;
    v8 = (result + 104);
    *(result + 144) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 112) = 0;
    if (a2)
    {
      *(result + 72) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionRequiresPowerPluggedIn", *(result + 72));
      BOOLean_from_cfdictionary_object_for_key = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsCellularAccess", *(v6 + 74));
      *(v6 + 74) = BOOLean_from_cfdictionary_object_for_key;
      *(v6 + 75) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsExpensiveAccess", BOOLean_from_cfdictionary_object_for_key);
      *(v6 + 76) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsUCA", *(v6 + 76));
      *(v6 + 73) = mmcs_get_BOOLean_from_cfdictionary_object_for_key(a2, @"kMMCSRequestOptionAllowsPowerNapScheduling", *(v6 + 73));
      Value = CFDictionaryGetValue(a2, @"kMMCSRequestOptionDiscretionaryNetworkBehavior");
      if (Value)
      {
        v11 = Value;
        v12 = CFGetTypeID(Value);
        if (v12 == CFNumberGetTypeID())
        {
          valuePtr = -1;
          if (CFNumberGetValue(v11, kCFNumberCFIndexType, &valuePtr))
          {
            *v7 = valuePtr;
          }
        }
      }

      v13 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionDuetPreClearedMode");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == CFNumberGetTypeID())
        {
          valuePtr = -1;
          if (CFNumberGetValue(v14, kCFNumberCFIndexType, &valuePtr))
          {
            *(v6 + 88) = valuePtr;
          }
        }
      }

      v16 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionAllowsRetryForBackgroundDataTasks");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFBooleanGetTypeID())
        {
          *(v6 + 96) = CFBooleanGetValue(v17);
        }
      }

      v19 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionPrivacyProxyFailClosedOverride");
      if (v19)
      {
        v20 = v19;
        v21 = CFGetTypeID(v19);
        if (v21 == CFBooleanGetTypeID())
        {
          *v8 = CFRetain(v20);
        }
      }

      v22 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionUseNWLoaderOverride");
      if (v22)
      {
        v23 = v22;
        v24 = CFGetTypeID(v22);
        if (v24 == CFBooleanGetTypeID())
        {
          *(v6 + 112) = CFRetain(v23);
        }
      }

      v25 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionMetricOptions");
      if (v25)
      {
        v26 = v25;
        CFRetain(v25);
        *(v6 + 120) = v26;
      }

      v27 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionNetworkingDelegate");
      if (v27)
      {
        v28 = v27;
        CFRetain(v27);
        *(v6 + 128) = v28;
      }

      v29 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationBundleIdentifier");
      if (v29)
      {
        v30 = v29;
        v31 = CFGetTypeID(v29);
        if (v31 == CFStringGetTypeID())
        {
          *(v6 + 24) = CFRetain(v30);
        }
      }

      v32 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationSecondaryBundleIdentifier");
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFStringGetTypeID())
        {
          *(v6 + 32) = CFRetain(v33);
        }
      }

      v35 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionSourceApplicationAuditTokenData");
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFDataGetTypeID())
        {
          *(v6 + 40) = CFRetain(v36);
        }
      }

      v38 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionBackgroundConnectionPoolName");
      if (v38)
      {
        v39 = v38;
        v40 = CFGetTypeID(v38);
        if (v40 == CFStringGetTypeID())
        {
          *(v6 + 48) = CFRetain(v39);
        }
      }

      v41 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionBoundInterfaceIdentifier");
      if (v41)
      {
        v42 = v41;
        v43 = CFGetTypeID(v41);
        if (v43 == CFStringGetTypeID())
        {
          *(v6 + 16) = CFRetain(v42);
        }
      }

      v44 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionNetworkServiceType");
      if (v44)
      {
        v45 = v44;
        v46 = CFGetTypeID(v44);
        if (v46 == CFNumberGetTypeID())
        {
          *(v6 + 56) = CFRetain(v45);
        }
      }

      v47 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionInsertHeaders");
      if (v47)
      {
        v48 = v47;
        v49 = CFGetTypeID(v47);
        if (v49 == CFDictionaryGetTypeID())
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, &_myCFStringCaseInsensitiveKeyCallbacks, MEMORY[0x277CBF150]);
          CFDictionaryApplyFunction(v48, _add_values, Mutable);
          *(v6 + 64) = Mutable;
        }
      }

      v51 = CFDictionaryGetValue(a2, @"kMMCSRequestOptionContainerType");
      if (v51)
      {
        v52 = v51;
        v53 = CFGetTypeID(v51);
        if (v53 == CFNumberGetTypeID())
        {
          *(v6 + 136) = CFRetain(v52);
        }
      }
    }

    if (a1)
    {
      *a1 = v6;
    }

    else
    {
      C3BaseRelease(v6);
    }

    return 1;
  }

  return result;
}

uint64_t mmcs_http_request_options_create_copy(uint64_t a1)
{
  v2 = C3TypeRegister(&mmcs_http_request_optionsGetTypeID_typeID, &kmmcs_http_request_optionsContextClass);
  Instance = C3TypeCreateInstance_(0, v2, 0x88uLL);
  if (Instance)
  {
    v4 = *(a1 + 16);
    v5 = MEMORY[0x277CBECE8];
    if (v4)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v4);
    }

    else
    {
      Copy = 0;
    }

    *(Instance + 16) = Copy;
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = CFStringCreateCopy(*v5, v7);
    }

    else
    {
      v8 = 0;
    }

    *(Instance + 24) = v8;
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = CFStringCreateCopy(*v5, v9);
    }

    else
    {
      v10 = 0;
    }

    *(Instance + 32) = v10;
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *(Instance + 40) = v11;
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = CFStringCreateCopy(*v5, v12);
    }

    else
    {
      v13 = 0;
    }

    *(Instance + 48) = v13;
    v14 = *(a1 + 56);
    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(Instance + 56) = v14;
    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = CFDictionaryCreateCopy(*v5, v15);
    }

    else
    {
      v16 = 0;
    }

    *(Instance + 64) = v16;
    *(Instance + 72) = *(a1 + 72);
    *(Instance + 76) = *(a1 + 76);
    *(Instance + 78) = *(a1 + 78);
    *(Instance + 80) = *(a1 + 80);
    *(Instance + 96) = *(a1 + 96);
    v17 = *(a1 + 104);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(Instance + 104) = v17;
    v18 = *(a1 + 112);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    *(Instance + 112) = v18;
    v19 = *(a1 + 120);
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(Instance + 120) = v19;
    v20 = *(a1 + 128);
    if (v20)
    {
      v20 = CFRetain(v20);
    }

    *(Instance + 128) = v20;
    v21 = *(a1 + 136);
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(Instance + 136) = v21;
    *(Instance + 144) = *(a1 + 144);
  }

  return Instance;
}