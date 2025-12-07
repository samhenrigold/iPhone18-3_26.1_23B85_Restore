void *acc_connection_setProperties(uint64_t a1, const __CFDictionary *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 14;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v2 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
      }
    }

    else
    {
      v2 = *(gLogObjects + 104);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_12_8(&_mh_execute_header, v13, v14, "Setting properties for connection %@: %@", v15, v16, v17, v18);
    }

    pthread_mutex_lock((a1 + 208));
    acc_properties_copyProperties(*(a1 + 128));
    v19 = OUTLINED_FUNCTION_17_9();
    acc_properties_setProperties(v19, v20);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_50_0();
    if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      _os_log_error_impl(v27, v28, v29, v30, v31, 0x12u);
    }

    if (OUTLINED_FUNCTION_95())
    {
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_40();
      _os_log_impl(v21, v22, OS_LOG_TYPE_INFO, v23, v24, 0x16u);
    }

    OUTLINED_FUNCTION_33_3();
    if (v25 && (*(a1 + 142) & 1) == 0)
    {
      if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v42, v43, v44, v45, v46, 0x12u);
      }

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_3(v32, v33, v34, v35, v36);
      }

      acc_manager_checkForWirelessCTA();
      if ((!gLogObjects || gNumLogObjects < 14) && OUTLINED_FUNCTION_19_0())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_18_0();
        _os_log_error_impl(v47, v48, v49, v50, v51, 0x12u);
      }

      if (OUTLINED_FUNCTION_99())
      {
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_38_3(v37, v38, v39, v40, v41);
      }

      acc_manager_checkForInductiveCTA();
      if (acc_properties_containsProperty(a2, kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
      {
        acc_connection_mapAccessoryInfo(a1);
      }

      OUTLINED_FUNCTION_31_1();
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    OUTLINED_FUNCTION_40_3();
    if (v25)
    {
      platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*a1);
    }
  }

  return v2;
}

void acc_connection_appendToArrayProperty()
{
  OUTLINED_FUNCTION_57();
  if (v3)
  {
    if (v4)
    {
      v6 = v5;
      if (v5)
      {
        v7 = v3;
        v8 = CFGetTypeID(v5);
        if (v8 == CFArrayGetTypeID())
        {
          OUTLINED_FUNCTION_37_0();
          if ((!v0 || *(v2 + 3936) < 14) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_16_6();
            _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
          }

          if (OUTLINED_FUNCTION_82())
          {
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_12_8(&_mh_execute_header, v9, v10, "Append to array property %@ for connection %@...", v11, v12, v13, v14);
          }

          pthread_mutex_lock((v7 + 208));
          acc_properties_copyProperties(*(v7 + 128));
          v15 = OUTLINED_FUNCTION_17_9();
          acc_properties_appendToArrayProperty(v15, v16, v6);
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_50_0();
          v17 = *(v2 + 3936);
          if ((!*(v1 + 3928) || v17 < 14) && OUTLINED_FUNCTION_19_0())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_18_0();
            _os_log_error_impl(v29, v30, v31, v32, v33, 0x12u);
          }

          if (OUTLINED_FUNCTION_95())
          {
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_66(v18, v19, v20, v21, v22);
          }

          OUTLINED_FUNCTION_33_3();
          if (v23 && (*(v7 + 142) & 1) == 0)
          {
            OUTLINED_FUNCTION_31_1();
          }

          OUTLINED_FUNCTION_40_3();
          if (v23)
          {
            platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*v7);
          }

          if (v0)
          {
            CFRelease(v0);
          }

          if (v6)
          {
            CFRelease(v6);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

void acc_connection_addToDictionaryProperty()
{
  OUTLINED_FUNCTION_57();
  if (v3)
  {
    if (v4)
    {
      v6 = v5;
      if (v5)
      {
        v7 = v3;
        v8 = CFGetTypeID(v5);
        if (v8 == CFDictionaryGetTypeID())
        {
          OUTLINED_FUNCTION_37_0();
          if ((!v0 || *(v2 + 3936) < 14) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            OUTLINED_FUNCTION_16_6();
            _os_log_error_impl(v24, v25, v26, v27, v28, 0x12u);
          }

          if (OUTLINED_FUNCTION_82())
          {
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_12_8(&_mh_execute_header, v9, v10, "Append to dictionary property %@ for connection %@...", v11, v12, v13, v14);
          }

          pthread_mutex_lock((v7 + 208));
          acc_properties_copyProperties(*(v7 + 128));
          v15 = OUTLINED_FUNCTION_17_9();
          acc_properties_addToDictionaryProperty(v15, v16, v6);
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_50_0();
          v17 = *(v2 + 3936);
          if ((!*(v1 + 3928) || v17 < 14) && OUTLINED_FUNCTION_19_0())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_18_0();
            _os_log_error_impl(v29, v30, v31, v32, v33, 0x12u);
          }

          if (OUTLINED_FUNCTION_95())
          {
            OUTLINED_FUNCTION_1_13();
            OUTLINED_FUNCTION_53_0();
            OUTLINED_FUNCTION_40();
            OUTLINED_FUNCTION_66(v18, v19, v20, v21, v22);
          }

          OUTLINED_FUNCTION_33_3();
          if (v23 && (*(v7 + 142) & 1) == 0)
          {
            OUTLINED_FUNCTION_31_1();
          }

          OUTLINED_FUNCTION_40_3();
          if (v23)
          {
            platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*v7);
          }

          if (v0)
          {
            CFRelease(v0);
          }

          if (v6)
          {
            CFRelease(v6);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_56();
}

void acc_connection_removeProperty()
{
  OUTLINED_FUNCTION_57();
  if (v3 && v4)
  {
    v5 = v3;
    OUTLINED_FUNCTION_37_0();
    v6 = *(v2 + 3936);
    if (v0)
    {
      v7 = v6 < 14;
    }

    else
    {
      v7 = 1;
    }

    if (v7 && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_16_6();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_1_13();
      OUTLINED_FUNCTION_12_8(&_mh_execute_header, v13, v14, "Removing property %@ for connection %@...", v15, v16, v17, v18);
    }

    pthread_mutex_lock((v5 + 208));
    acc_properties_copyProperties(*(v5 + 128));
    v19 = OUTLINED_FUNCTION_17_9();
    acc_properties_removeProperty(v19, v20);
    OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_50_0();
    v21 = *(v2 + 3936);
    if ((!*(v1 + 3928) || v21 < 14) && OUTLINED_FUNCTION_19_0())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_18_0();
      _os_log_error_impl(v28, v29, v30, v31, v32, 0x12u);
    }

    if (OUTLINED_FUNCTION_95())
    {
      OUTLINED_FUNCTION_1_13();
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_66(v22, v23, v24, v25, v26);
    }

    OUTLINED_FUNCTION_33_3();
    if (v27 && (*(v5 + 142) & 1) == 0)
    {
      OUTLINED_FUNCTION_31_1();
    }

    if (v0)
    {
      CFRelease(v0);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    OUTLINED_FUNCTION_40_3();
    if (v27)
    {
      platform_connectionInfo_accessoryConnectionInfoPropertyChanged(*v5);
    }
  }

  OUTLINED_FUNCTION_56();
}

const void *acc_connection_copyProperty(const void *result, const void *a2)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    acc_properties_copyProperty(*(v2 + 128), a2);
    OUTLINED_FUNCTION_52_2();
    return a2;
  }

  return result;
}

uint64_t acc_connection_copyProperties(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    acc_properties_copyProperties(*(v1 + 128));
    OUTLINED_FUNCTION_52_2();
    return v2;
  }

  return result;
}

BOOL acc_connection_setSupervisedTransportsRestricted(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a2;
    if (*(a1 + 136) != a2)
    {
      if (gLogObjects)
      {
        v4 = gNumLogObjects < 14;
      }

      else
      {
        v4 = 1;
      }

      if (v4 && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
      }

      if (OUTLINED_FUNCTION_82())
      {
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_12_8(&_mh_execute_header, v10, v11, "Setting supervisedTransportsRestricted... (supervisedTransportsRestricted: %s, connectionUUID: %@)", v12, v13, v14, v15);
      }

      *(a1 + 136) = v3;
      pthread_mutex_lock((a1 + 144));
      Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, *(a1 + 40));
      pthread_mutex_unlock((a1 + 144));
      CFDictionaryApplyFunction(Copy, _CFDictionaryApplierFunction_supervisedTransportsRestrictedDidChange, 0);
    }
  }

  return a1 != 0;
}

void _CFDictionaryApplierFunction_supervisedTransportsRestrictedDidChange(const void *a1)
{
  EndpointWithUUID = acc_manager_getEndpointWithUUID(a1);
  if (EndpointWithUUID)
  {

    acc_endpoint_supervisedTransportsRestrictedDidChange(EndpointWithUUID);
  }
}

uint64_t acc_connection_isPublished(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 138);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void _CFDictionaryApplierFunction_findiAPEndpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) - 3 <= 1 && !*a3)
  {
    *a3 = a2;
  }
}

void _CFDictionaryApplierFunction_findEAServiceEndpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3)
  {
    Protocol = acc_endpoint_getProtocol(a2);
    v6 = 11;
    if (*a2)
    {
      if (*(*a2 + 8) <= 9u)
      {
        v6 = *(*a2 + 8);
      }

      else
      {
        v6 = 11;
      }
    }

    if (Protocol != 5 || v6 == 6)
    {
      if (gLogObjects && gNumLogObjects >= 14)
      {
        v8 = *(gLogObjects + 104);
      }

      else
      {
        v8 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_16_6();
          _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
        }
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_6_0();
        _os_log_debug_impl(v9, v10, OS_LOG_TYPE_DEBUG, v11, v12, 0x22u);
      }
    }

    else if (!*a3)
    {
      *a3 = a2;
    }
  }
}

void _CFDictionaryApplierFunction_findInternalInfoEndpoint(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 && a3 && acc_endpoint_getProtocol(a2) == 2 && !*a3)
  {
    *a3 = a2;
  }
}

void acc_connection_updateAcccessoryInfoIfNeeded(uint64_t a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v4 = kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo;
  if (!acc_properties_containsProperty(*(a1 + 128), kCFACCProperties_Connection_EndpointUUIDForAccessoryInfo))
  {
    goto LABEL_19;
  }

  v5 = acc_properties_copyProperty(*(a1 + 128), v4);
  if (CFEqual(v5, a2))
  {
    EndpointWithUUID = 0;
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(a2);
  if (v5)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:
  if (EndpointWithUUID)
  {
    v7 = *(a1 + 120);
    if (!v7)
    {
      v7 = acc_accInfo_create();
      *(a1 + 120) = v7;
    }

    acc_accInfo_setAccessoryInfo(v7, EndpointWithUUID[8]);
    v8 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 14)
    {
      v9 = *(gLogObjects + 104);
    }

    else
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        LODWORD(v28) = v8;
        OUTLINED_FUNCTION_16_6();
        _os_log_error_impl(v21, v22, v23, v24, v25, 0x12u);
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_9_0();
      v28 = v10;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_58_1();
      _os_log_impl(v11, v12, v13, v14, v15, v16);
    }

    return;
  }

LABEL_19:
  v17 = gLogObjects;
  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 14)
  {
    v19 = *(gLogObjects + 104);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v26 = 134218240;
      v27 = v17;
      OUTLINED_FUNCTION_3();
      LODWORD(v28) = v18;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v26);
    }
  }

  if (OUTLINED_FUNCTION_93())
  {
    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Couldn't find an endpoint to update accessory info with! Try mapAccessoryInfo", &v26, 2u);
  }

  acc_connection_mapAccessoryInfo(a1);
}

BOOL acc_connection_isConnectedThroughAdapter(_BOOL8 result)
{
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    Value = CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterVID);
    v3 = CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterPID);
    pthread_mutex_unlock((v1 + 208));
    if (Value)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    return !v4;
  }

  return result;
}

uint64_t acc_connection_getAdapterVID(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterVID);
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t acc_connection_getAdapterPID(uint64_t result)
{
  valuePtr = 0;
  if (result)
  {
    OUTLINED_FUNCTION_46_1(result);
    CFDictionaryGetValue(*(v1 + 128), kCFACCProperties_Connection_AdapterPID);
    OUTLINED_FUNCTION_52_2();
    if (v2)
    {
      CFNumberGetValue(v2, kCFNumberSInt16Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void platform_analytics_connectionWillBePublished(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    if (v2)
    {
      v3 = gLogObjects;
      v4 = gNumLogObjects;
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 7;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v42 = 134218240;
          v43 = v3;
          v44 = 1024;
          LODWORD(v45) = v4;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v6, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v42);
        }

        v8 = &_os_log_default;
        v7 = &_os_log_default;
      }

      else
      {
        v8 = *(gLogObjects + 48);
      }

      if (OUTLINED_FUNCTION_93())
      {
        v9 = *v1;
        v42 = 138412290;
        v43 = v9;
        OUTLINED_FUNCTION_15();
        _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      }

      v46[0] = @"connectionUUID";
      v15 = *v1;
      if (*v1)
      {
        v15 = CFRetain(v15);
      }

      v41 = v15;
      v40 = NSObjectIfNotNull(v15);
      OUTLINED_FUNCTION_39_2();
      v47[0] = v16;
      v46[1] = @"connectionType";
      v39 = [NSString stringWithUTF8String:acc_connection_getTypeString(v1)];
      v17 = NSObjectIfNotNull(v39);
      OUTLINED_FUNCTION_39_2();
      v47[1] = v18;
      v46[2] = @"unlockedSinceBoot";
      v19 = [NSNumber numberWithBool:platform_system_unlockedSinceBoot()];
      v47[2] = v19;
      v46[3] = @"deviceIsPowered";
      platform_power_getCurrentLimit(*v1);
      OUTLINED_FUNCTION_18_8();
      v20 = [NSNumber numberWithBool:?];
      v47[3] = v20;
      v46[4] = @"screenIsLocked";
      platform_system_isDeviceLocked();
      v21 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
      v47[4] = v21;
      v46[5] = @"ConnectedThroughAdapter";
      acc_connection_isConnectedThroughAdapter(v1);
      v22 = [OUTLINED_FUNCTION_37_1() numberWithBool:?];
      v47[5] = v22;
      v46[6] = @"AdapterVID";
      acc_connection_getAdapterVID(v1);
      v23 = [OUTLINED_FUNCTION_14_9() numberWithInt:?];
      v47[6] = v23;
      v46[7] = @"AdapterPID";
      acc_connection_getAdapterPID(v1);
      v24 = [OUTLINED_FUNCTION_14_9() numberWithInt:?];
      v47[7] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:8];
      v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

      v27 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_DigitalID);
      v28 = convertNSDataToNSString(v27, @"%02X");

      if (v28)
      {
        [v26 setObject:v28 forKey:@"lightningDigitalID"];
      }

      v29 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_PrimaryPortNumber);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        OUTLINED_FUNCTION_44_4();
      }

      CableType = platform_power_getCableType(*v1);
      if ((CableType - 1) <= 0xFFFFFFFD)
      {
        v31 = [NSNumber numberWithInt:CableType];
        [v26 setObject:v31 forKey:@"lightningCableType"];
      }

      v32 = gLogObjects;
      v33 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 7)
      {
        v34 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v42 = 134218240;
          v43 = v32;
          v44 = 1024;
          LODWORD(v45) = v33;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v42);
        }

        v34 = &_os_log_default;
        v36 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        v42 = 138412546;
        v43 = @"com.apple.accessories.connection.added";
        v44 = 2112;
        v45 = v26;
        OUTLINED_FUNCTION_16_9(&_mh_execute_header, v37, v38, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v42);
      }

      AnalyticsSendEvent();
    }
  }
}

void platform_analytics_endpointWillBePublished(uint64_t a1)
{
  if (!a1 || !*a1 || !*(a1 + 8))
  {
    return;
  }

  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_20(3.8521e-34);
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 48);
  }

  if (OUTLINED_FUNCTION_24())
  {
    v5 = *(a1 + 16);
    v90 = 138412546;
    v91 = v5;
    OUTLINED_FUNCTION_13_7();
    *(v7 + 14) = v6;
    OUTLINED_FUNCTION_16_9(&_mh_execute_header, v8, v9, "[#EventLogger] Endpoint will be published: %@ (connection %@)", &v90);
  }

  v88[0] = @"endpointUUID";
  v10 = *(a1 + 16);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  v85 = v10;
  v11 = NSObjectIfNotNull(v10);
  v83 = v11;
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_10022D360;
  }

  v89[0] = v12;
  v88[1] = @"connectionUUID";
  v13 = *(a1 + 8);
  if (v13)
  {
    v13 = CFRetain(v13);
  }

  v81 = v13;
  v80 = NSObjectIfNotNull(v13);
  OUTLINED_FUNCTION_5_14();
  v89[1] = v14;
  v88[2] = @"connectionType";
  acc_connection_getTypeString(*a1);
  v77 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v76 = NSObjectIfNotNull(v77);
  OUTLINED_FUNCTION_5_14();
  v89[2] = v15;
  v88[3] = @"transportType";
  acc_endpoint_getTransportTypeString(a1);
  v75 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v74 = NSObjectIfNotNull(v75);
  OUTLINED_FUNCTION_5_14();
  v89[3] = v16;
  v88[4] = @"protocol";
  acc_endpoint_getProtocolString(a1);
  v73 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
  v17 = NSObjectIfNotNull(v73);
  OUTLINED_FUNCTION_5_14();
  v89[4] = v18;
  v88[5] = @"unlockedSinceBoot";
  platform_system_unlockedSinceBoot();
  v72 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
  v89[5] = v72;
  v88[6] = @"deviceIsPowered";
  platform_power_getCurrentLimit(*(a1 + 8));
  OUTLINED_FUNCTION_18_8();
  v19 = [NSNumber numberWithBool:?];
  v89[6] = v19;
  v88[7] = @"screenIsLocked";
  platform_system_isDeviceLocked();
  v20 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
  v89[7] = v20;
  v88[8] = @"ConnectedThroughAdapter";
  acc_connection_isConnectedThroughAdapter(*a1);
  v21 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
  v89[8] = v21;
  v88[9] = @"AdapterVID";
  acc_connection_getAdapterVID(*a1);
  v22 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
  v89[9] = v22;
  v88[10] = @"AdapterPID";
  acc_connection_getAdapterPID(*a1);
  v23 = [OUTLINED_FUNCTION_20_5() numberWithInt:?];
  v89[10] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:11];
  v25 = [NSMutableDictionary dictionaryWithDictionary:v24];

  v26 = acc_connection_copyProperty(*a1, kCFACCProperties_Connection_PrimaryPortNumber);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v25 setObject:v26 forKey:@"lightningPrimaryPortNumber"];
  }

  if (acc_endpoint_getTransportType(a1) == 13)
  {
    v27 = v25;
    v28 = acc_endpoint_copyIdentifier(a1);
    if (!v28)
    {
      v32 = 0;
      v31 = 0;
      v30 = 0;
      goto LABEL_67;
    }

    [v27 setValue:v28 forKey:@"nfcTagId"];
    v29 = acc_endpoint_copyProperty(a1);
    v30 = v29;
    if (!v29)
    {
      v32 = 0;
      v31 = 0;
      goto LABEL_67;
    }

    v31 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%02x", [v29 charValue]);
    if (!v31)
    {
      v32 = 0;
      goto LABEL_67;
    }

    [v27 setValue:v31 forKey:@"nfcAccessoryType"];
    v32 = [NSMutableArray arrayWithObject:v31];
    if (!v32)
    {
      goto LABEL_67;
    }

    v84 = v30;
    v33 = acc_manager_copyAllEndpoints();
    if (!v33)
    {
      goto LABEL_67;
    }

    v34 = v33;
    v82 = v31;
    Count = CFDictionaryGetCount(v33);
    if (!Count || (v36 = Count, (v37 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL)) == 0))
    {
LABEL_66:
      CFRelease(v34);
      v31 = v82;
      v30 = v84;
LABEL_67:

      goto LABEL_68;
    }

    v78 = v28;
    v79 = v26;
    v86 = v37;
    CFDictionaryGetKeysAndValues(v34, 0, v37);
    if (v36 >= 1)
    {
      v38 = v86;
      do
      {
        v39 = *v38;
        if (*v38)
        {
          if (acc_endpoint_getTransportType(*v38) == 13 && !CFEqual(*(a1 + 16), v39[2]))
          {
            v40 = acc_endpoint_copyProperty(v39);
            if (v40)
            {
              v41 = v40;
              v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%02x", [v40 charValue]);
              [v32 addObject:v42];
            }
          }
        }

        ++v38;
        --v36;
      }

      while (v36);
    }

    if ([v32 count] > 1)
    {
      [v32 sortUsingSelector:"compare:"];
      v43 = [v32 componentsJoinedByString:{@", "}];
      [v27 setValue:v43 forKey:@"nfcStackedType"];
    }

    memset(v87, 170, sizeof(v87));
    [v32 count];
    v44 = [OUTLINED_FUNCTION_20_5() numberWithUnsignedLong:?];
    [v27 setValue:v44 forKey:@"nfcAttachedCount"];

    v45 = +[NSDate date];
    _getWeekAndMonth(v45, &v87[3], &v87[2]);

    v46 = +[ACCUserDefaults sharedDefaults];
    v47 = [v46 objectForKey:@"NFCAnalyticsDate"];

    _getWeekAndMonth(v47, &v87[1], v87);
    if (v87[3] == v87[1])
    {
      if (v87[2] == v87[0])
      {
LABEL_47:
        v28 = v78;
        v26 = v79;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v53 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_2_20(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v53 = &_os_log_default;
          v54 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          OUTLINED_FUNCTION_12_9(@"com.apple.accessories.nfc.endpoint.added", 5.778e-34);
          *(v55 + 14) = v27;
          OUTLINED_FUNCTION_16_9(&_mh_execute_header, v56, v57, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v90);
        }

        AnalyticsSendEvent();
        if ([v32 count] >= 2)
        {
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v58 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_2_20(3.8521e-34);
              OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v71, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
            }

            v58 = &_os_log_default;
            v59 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_24())
          {
            OUTLINED_FUNCTION_12_9(@"com.apple.accessories.nfc.stack", 5.778e-34);
            *(v60 + 14) = v27;
            OUTLINED_FUNCTION_16_9(&_mh_execute_header, v61, v62, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v90);
          }

          AnalyticsSendEvent();
        }

        free(v86);
        goto LABEL_66;
      }
    }

    else
    {
      v48 = [NSNumber numberWithBool:1];
      [v27 setValue:v48 forKey:@"nfcAttachedThisWeek"];

      if (v87[2] == v87[0])
      {
LABEL_46:
        v50 = +[ACCUserDefaults sharedDefaults];
        v51 = +[NSDate date];
        [v50 setObject:v51 forKey:@"NFCAnalyticsDate"];

        v52 = +[ACCUserDefaults sharedDefaults];
        [v52 synchronize];

        goto LABEL_47;
      }
    }

    v49 = [NSNumber numberWithBool:1];
    [v27 setValue:v49 forKey:@"nfcAttachedThisMonth"];

    goto LABEL_46;
  }

LABEL_68:
  if (gLogObjects && gNumLogObjects >= 7)
  {
    v63 = *(gLogObjects + 48);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_20(3.8521e-34);
      OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
    }

    v63 = &_os_log_default;
    v64 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_24())
  {
    OUTLINED_FUNCTION_12_9(@"com.apple.accessories.endpoint.added", 5.778e-34);
    *(v65 + 14) = v25;
    OUTLINED_FUNCTION_16_9(&_mh_execute_header, v66, v67, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v90);
  }

  AnalyticsSendEvent();
}

void platform_analytics_endpointProtocolDidChange(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    if (v2)
    {
      if (*(v1 + 8))
      {
        if (gLogObjects)
        {
          v3 = gNumLogObjects < 7;
        }

        else
        {
          v3 = 1;
        }

        if (v3)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v5 = &_os_log_default;
          v4 = &_os_log_default;
        }

        else
        {
          v5 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(*(v1 + 16), 5.778e-34);
          v46 = v6;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v7, v8, "[#EventLogger] Protocol changed for endpoint: %@ (connection %@)");
        }

        v44[0] = @"endpointUUID";
        v9 = *(v1 + 16);
        if (v9)
        {
          v9 = CFRetain(v9);
        }

        v43 = v9;
        v10 = NSObjectIfNotNull(v9);
        v42 = v10;
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = &stru_10022D360;
        }

        v45[0] = v11;
        v44[1] = @"connectionUUID";
        v12 = *(v1 + 8);
        if (v12)
        {
          v12 = CFRetain(v12);
        }

        v41 = v12;
        v40 = NSObjectIfNotNull(v12);
        OUTLINED_FUNCTION_5_14();
        v45[1] = v13;
        v44[2] = @"connectionType";
        v14 = OUTLINED_FUNCTION_41_2();
        acc_connection_getTypeString(v14);
        v39 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v38 = NSObjectIfNotNull(v39);
        OUTLINED_FUNCTION_5_14();
        v45[2] = v15;
        v44[3] = @"transportType";
        v16 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getTransportTypeString(v16);
        v37 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v17 = NSObjectIfNotNull(v37);
        OUTLINED_FUNCTION_5_14();
        v45[3] = v18;
        v44[4] = @"protocol";
        v19 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getProtocolString(v19);
        v36 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v20 = NSObjectIfNotNull(v36);
        OUTLINED_FUNCTION_5_14();
        v45[4] = v21;
        v44[5] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v22 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v45[5] = v22;
        v44[6] = @"deviceIsPowered";
        platform_power_getCurrentLimit(*(v1 + 8));
        OUTLINED_FUNCTION_18_8();
        v23 = [NSNumber numberWithBool:?];
        v45[6] = v23;
        v44[7] = @"ConnectedThroughAdapter";
        acc_connection_isConnectedThroughAdapter(*v1);
        v24 = [OUTLINED_FUNCTION_31_2() numberWithBool:?];
        v45[7] = v24;
        v44[8] = @"AdapterVID";
        acc_connection_getAdapterVID(*v1);
        v25 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v45[8] = v25;
        v44[9] = @"AdapterPID";
        acc_connection_getAdapterPID(*v1);
        v26 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v45[9] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:10];
        v28 = [NSMutableDictionary dictionaryWithDictionary:v27];

        v29 = acc_connection_copyProperty(*v1, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v28 setObject:v29 forKey:@"lightningPrimaryPortNumber"];
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v30 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v30 = &_os_log_default;
          v31 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(@"com.apple.accessories.endpoint.protocolChanged", 5.778e-34);
          v46 = v28;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v32, v33, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }
}

void platform_analytics_endpointAccessoryInfoDidChange()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v3 = v0;
    if (*v0)
    {
      if (v0[1])
      {
        v4 = v2;
        v5 = v1;
        v6 = gLogObjects;
        v7 = gNumLogObjects;
        if (gLogObjects)
        {
          v8 = gNumLogObjects < 7;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v132 = 134218240;
            v133 = v6;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v134) = v7;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v10 = &_os_log_default;
          v9 = &_os_log_default;
        }

        else
        {
          v10 = *(gLogObjects + 48);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v3[2];
          v132 = 138412546;
          v133 = v11;
          OUTLINED_FUNCTION_13_7();
          v134 = v12;
          OUTLINED_FUNCTION_78(&_mh_execute_header, v10, v13, "[#EventLogger] Accessory info changed for endpoint: %@ (connection %@)", &v132);
        }

        v14 = gLogObjects;
        v15 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v16 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v132 = 134218240;
            v133 = v14;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v134) = v15;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v16 = &_os_log_default;
          v17 = &_os_log_default;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v132 = 138412546;
          v133 = v5;
          OUTLINED_FUNCTION_13_7();
          v134 = v4;
          _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "[#EventLogger] oldAccessoryInfo: %@, newAccessoryInfo: %@", &v132, 0x16u);
        }

        v18 = [(__CFString *)v4 isEqualToDictionary:v5];
        if (v4 == v5)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        v20 = gLogObjects;
        v21 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v22 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v132 = 134218240;
            v133 = v20;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v134) = v21;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v22 = &_os_log_default;
          v23 = &_os_log_default;
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v79 = "YES";
          if (v19)
          {
            v79 = "NO";
          }

          v132 = 136315138;
          v133 = v79;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[#EventLogger] accInfoIsDifferent: %s", &v132, 0xCu);
        }

        if ((v19 & 1) == 0)
        {
          AccessoryInfo = acc_endpoint_getAccessoryInfo(v3);
          v25 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
          if (v25)
          {
            v130[0] = @"endpointUUID";
            v26 = v3[2];
            if (v26)
            {
              v27 = CFRetain(v26);
            }

            else
            {
              v27 = 0;
            }

            NSObjectIfNotNull(v27);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_11_6();
            v131[0] = v28;
            v130[1] = @"connectionUUID";
            v29 = v3[1];
            v121 = v4;
            v115 = v30;
            v117 = v27;
            if (v29)
            {
              v29 = CFRetain(v29);
            }

            v113 = v29;
            v111 = NSObjectIfNotNull(v29);
            OUTLINED_FUNCTION_11_6();
            v131[1] = v31;
            v130[2] = @"connectionType";
            acc_connection_getTypeString(*v3);
            v109 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v107 = NSObjectIfNotNull(v109);
            OUTLINED_FUNCTION_11_6();
            v131[2] = v32;
            v130[3] = @"transportType";
            acc_endpoint_getTransportTypeString(v3);
            v105 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v103 = NSObjectIfNotNull(v105);
            OUTLINED_FUNCTION_11_6();
            v131[3] = v33;
            v130[4] = @"protocol";
            acc_endpoint_getProtocolString(v3);
            v101 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
            v100 = NSObjectIfNotNull(v101);
            OUTLINED_FUNCTION_11_6();
            v131[4] = v34;
            v130[5] = @"accessoryName";
            v99 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_Name];
            v98 = NSObjectIfNotNull(v99);
            OUTLINED_FUNCTION_11_6();
            v131[5] = v35;
            v130[6] = @"accessoryManufacturer";
            v97 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_Manufacturer];
            v96 = NSObjectIfNotNull(v97);
            OUTLINED_FUNCTION_11_6();
            v131[6] = v36;
            v130[7] = @"accessoryModel";
            v95 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_Model];
            v94 = NSObjectIfNotNull(v95);
            OUTLINED_FUNCTION_11_6();
            v131[7] = v37;
            v130[8] = @"accessoryHardwareVersion";
            v93 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_HardwareVersion];
            v92 = NSObjectIfNotNull(v93);
            OUTLINED_FUNCTION_11_6();
            v131[8] = v38;
            v130[9] = @"accessoryFirmwareVersionActive";
            v91 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
            v90 = NSObjectIfNotNull(v91);
            OUTLINED_FUNCTION_11_6();
            v131[9] = v39;
            v130[10] = @"accessoryFirmwareVersionPending";
            v89 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
            v88 = NSObjectIfNotNull(v89);
            OUTLINED_FUNCTION_11_6();
            v131[10] = v40;
            v130[11] = @"accessoryVID";
            v87 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_VendorID];
            v86 = NSObjectIfNotNull(v87);
            OUTLINED_FUNCTION_11_6();
            v131[11] = v41;
            v130[12] = @"accessoryPID";
            v119 = v25;
            v85 = [(__CFDictionary *)v25 objectForKeyedSubscript:kACCInfo_ProductID];
            v42 = NSObjectIfNotNull(v85);
            OUTLINED_FUNCTION_11_6();
            v131[12] = v43;
            v130[13] = @"unlockedSinceBoot";
            platform_system_unlockedSinceBoot();
            v84 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v131[13] = v84;
            v130[14] = @"deviceIsPowered";
            platform_power_getCurrentLimit(v3[1]);
            OUTLINED_FUNCTION_18_8();
            v44 = [NSNumber numberWithBool:?];
            v131[14] = v44;
            v130[15] = @"screenIsLocked";
            platform_system_isDeviceLocked();
            v45 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v131[15] = v45;
            v130[16] = @"authState";
            acc_authInfo_isAuthenticated(*v3 + 48, 6u);
            v46 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
            v131[16] = v46;
            v130[17] = @"authVersion";
            v47 = [NSNumber numberWithInt:*(*v3 + 68)];
            v131[17] = v47;
            v130[18] = @"ConnectedThroughAdapter";
            v48 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v3)];
            v131[18] = v48;
            v130[19] = @"AdapterVID";
            acc_connection_getAdapterVID(*v3);
            v49 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
            v131[19] = v49;
            v130[20] = @"AdapterPID";
            acc_connection_getAdapterPID(*v3);
            v50 = [OUTLINED_FUNCTION_20_5() numberWithInt:?];
            v131[20] = v50;
            v51 = [NSDictionary dictionaryWithObjects:v131 forKeys:v130 count:21];
            v123 = [NSMutableDictionary dictionaryWithDictionary:v51];

            v52 = acc_connection_copyProperty(*v3, kCFACCProperties_Connection_PrimaryPortNumber);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(__CFString *)v123 setObject:v52 forKey:@"lightningPrimaryPortNumber"];
            }

            v53 = gLogObjects;
            v54 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v55 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v132 = 134218240;
                v133 = v53;
                OUTLINED_FUNCTION_17_0();
                LODWORD(v134) = v54;
                OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v83, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
              }

              v55 = &_os_log_default;
              v56 = &_os_log_default;
            }

            v25 = v119;
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              v132 = 138412546;
              v133 = @"com.apple.accessories.endpoint.accessoryInfoChanged";
              OUTLINED_FUNCTION_13_7();
              v134 = v123;
              OUTLINED_FUNCTION_78(&_mh_execute_header, v55, v57, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v132);
            }

            AnalyticsSendEvent();
            v4 = v121;
          }

          v58 = v4;
          if (v58)
          {
            v129[0] = &__kCFBooleanTrue;
            v128[0] = IAPAppAccessoryConnectedKey;
            v128[1] = IAPAppAccessoryNameKey;
            v59 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v122 = isNSObjectNull(v59);
            if (v122)
            {
              v60 = &stru_10022D360;
            }

            else
            {
              v60 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v108 = v60;
            v129[1] = v60;
            v128[2] = IAPAppAccessoryManufacturerKey;
            v61 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v118 = isNSObjectNull(v61);
            if (v118)
            {
              v62 = &stru_10022D360;
            }

            else
            {
              v62 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v106 = v62;
            v129[2] = v62;
            v128[3] = IAPAppAccessoryModelNumberKey;
            v63 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v114 = isNSObjectNull(v63);
            if (v114)
            {
              v64 = &stru_10022D360;
            }

            else
            {
              v64 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v104 = v64;
            v129[3] = v64;
            v128[4] = IAPAppAccessorySerialNumberKey;
            v112 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v116 = v63;
            v110 = isNSObjectNull(v112);
            if (v110)
            {
              v65 = &stru_10022D360;
            }

            else
            {
              v65 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v102 = v65;
            v129[4] = v65;
            v128[5] = IAPAppAccessoryFirmwareRevisionKey;
            v66 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v67 = isNSObjectNull(v66);
            v120 = v61;
            if (v67)
            {
              v68 = &stru_10022D360;
            }

            else
            {
              v68 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v129[5] = v68;
            v128[6] = IAPAppAccessoryHardwareRevisionKey;
            v69 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            v70 = isNSObjectNull(v69);
            v71 = v59;
            if (v70)
            {
              v72 = &stru_10022D360;
            }

            else
            {
              v72 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
            }

            v129[6] = v72;
            v128[7] = IAPAppAccessoryConnectionTimeInSecKey;
            v124 = v3;
            v73 = [NSNumber numberWithLong:acc_endpoint_getCreationTimestampMS(v3) / 0x3E8uLL];
            v129[7] = v73;
            v74 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:8];

            if ((v70 & 1) == 0)
            {
            }

            if ((v67 & 1) == 0)
            {
            }

            if ((v110 & 1) == 0)
            {
            }

            if ((v114 & 1) == 0)
            {
            }

            if ((v118 & 1) == 0)
            {
            }

            if ((v122 & 1) == 0)
            {
            }

            v75 = [NSString stringWithString:v124[2]];
            v76 = _powerLogQueue(v75);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = __platform_analytics_endpointAccessoryInfoDidChange_block_invoke;
            block[3] = &unk_100225A08;
            v126 = v75;
            v127 = v74;
            v77 = v74;
            v78 = v75;
            dispatch_async(v76, block);
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void platform_analytics_endpointWillBeDestroyed()
{
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v2)
    {
      if (v0[2] && v0[1])
      {
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v3 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v3 = &_os_log_default;
          v4 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(v0[2], 5.778e-34);
          v124 = v5;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v6, v7, "[#EventLogger] Endpoint will be destroyed: %@ (connection %@)");
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(v0);
        v9 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v120[0] = @"endpointUUID";
        v10 = v0[2];
        if (v10)
        {
          v11 = CFRetain(v10);
        }

        else
        {
          v11 = 0;
        }

        NSObjectIfNotNull(v11);
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_5_14();
        v121[0] = v12;
        v120[1] = @"connectionUUID";
        v13 = v0[1];
        v110 = v14;
        v112 = v11;
        if (v13)
        {
          v13 = CFRetain(v13);
        }

        v108 = v13;
        v106 = NSObjectIfNotNull(v13);
        OUTLINED_FUNCTION_5_14();
        v121[1] = v15;
        v120[2] = @"connectionType";
        v16 = OUTLINED_FUNCTION_41_2();
        acc_connection_getTypeString(v16);
        v104 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v102 = NSObjectIfNotNull(v104);
        OUTLINED_FUNCTION_5_14();
        v121[2] = v17;
        v120[3] = @"transportType";
        v18 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getTransportTypeString(v18);
        v100 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v98 = NSObjectIfNotNull(v100);
        OUTLINED_FUNCTION_5_14();
        v121[3] = v19;
        v120[4] = @"protocol";
        v20 = OUTLINED_FUNCTION_42_2();
        acc_endpoint_getProtocolString(v20);
        v95 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v93 = NSObjectIfNotNull(v95);
        OUTLINED_FUNCTION_5_14();
        v121[4] = v21;
        v120[5] = @"accessoryName";
        v70 = kACCInfo_Name;
        v91 = [(__CFDictionary *)v9 objectForKeyedSubscript:?];
        v89 = NSObjectIfNotNull(v91);
        OUTLINED_FUNCTION_5_14();
        v121[5] = v22;
        v120[6] = @"accessoryManufacturer";
        v71 = kACCInfo_Manufacturer;
        v88 = [(__CFDictionary *)v9 objectForKeyedSubscript:?];
        v87 = NSObjectIfNotNull(v88);
        OUTLINED_FUNCTION_5_14();
        v121[6] = v23;
        v120[7] = @"accessoryModel";
        v86 = [(__CFDictionary *)v9 objectForKeyedSubscript:?];
        v85 = NSObjectIfNotNull(v86);
        OUTLINED_FUNCTION_5_14();
        v121[7] = v24;
        v120[8] = @"accessoryHardwareVersion";
        v84 = [(__CFDictionary *)v9 objectForKeyedSubscript:?];
        v83 = NSObjectIfNotNull(v84);
        OUTLINED_FUNCTION_5_14();
        v121[8] = v25;
        v120[9] = @"accessoryFirmwareVersionActive";
        v72 = kACCInfo_FirmwareVersionActive;
        v82 = [(__CFDictionary *)v9 objectForKeyedSubscript:?];
        v81 = NSObjectIfNotNull(v82);
        OUTLINED_FUNCTION_5_14();
        v121[9] = v26;
        v120[10] = @"accessoryFirmwareVersionPending";
        v80 = [(__CFDictionary *)v9 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v79 = NSObjectIfNotNull(v80);
        OUTLINED_FUNCTION_5_14();
        v121[10] = v27;
        v120[11] = @"accessoryVID";
        v78 = [(__CFDictionary *)v9 objectForKeyedSubscript:kACCInfo_VendorID];
        v77 = NSObjectIfNotNull(v78);
        OUTLINED_FUNCTION_5_14();
        v121[11] = v28;
        v120[12] = @"accessoryPID";
        v114 = v9;
        v76 = [(__CFDictionary *)v9 objectForKeyedSubscript:kACCInfo_ProductID];
        v75 = NSObjectIfNotNull(v76);
        OUTLINED_FUNCTION_5_14();
        v121[12] = v29;
        v120[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v74 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v121[13] = v74;
        v120[14] = @"deviceIsPowered";
        platform_power_getCurrentLimit(v0[1]);
        OUTLINED_FUNCTION_18_8();
        v73 = [NSNumber numberWithBool:?];
        v121[14] = v73;
        v120[15] = @"duration";
        v30 = [NSNumber numberWithInt:(acc_endpoint_getDurationMS(v0) / 1000)];
        v121[15] = v30;
        v120[16] = @"screenIsLocked";
        platform_system_isDeviceLocked();
        v31 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v121[16] = v31;
        v120[17] = @"authState";
        acc_authInfo_isAuthenticated(*v0 + 48, 6u);
        v32 = [OUTLINED_FUNCTION_25_1() numberWithBool:?];
        v121[17] = v32;
        v120[18] = @"authVersion";
        v33 = [NSNumber numberWithInt:*(*v0 + 68)];
        v121[18] = v33;
        v120[19] = @"ConnectedThroughAdapter";
        v34 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v0)];
        v121[19] = v34;
        v120[20] = @"AdapterVID";
        acc_connection_getAdapterVID(*v0);
        v35 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
        v121[20] = v35;
        v120[21] = @"AdapterPID";
        acc_connection_getAdapterPID(*v0);
        v36 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
        v121[21] = v36;
        v37 = [NSDictionary dictionaryWithObjects:v121 forKeys:v120 count:22];
        v38 = [NSMutableDictionary dictionaryWithDictionary:v37];

        v39 = acc_connection_copyProperty(*v0, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v38 setObject:v39 forKey:@"lightningPrimaryPortNumber"];
        }

        v40 = gLogObjects;
        v41 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v42 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v122 = 134218240;
            v123 = v40;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v124) = v41;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v42 = &_os_log_default;
          v43 = &_os_log_default;
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v122 = 138412546;
          v123 = @"com.apple.accessories.endpoint.removed";
          OUTLINED_FUNCTION_13_7();
          v124 = v38;
          OUTLINED_FUNCTION_78(&_mh_execute_header, v42, v44, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v122);
        }

        AnalyticsSendEvent();
        v45 = acc_endpoint_getAccessoryInfo(v0);
        v46 = acc_accInfo_copyAccessoryInfoDictionary(v45);
        v47 = v46;
        if (v46)
        {
          v119[0] = &__kCFBooleanFalse;
          v118[0] = IAPAppAccessoryConnectedKey;
          v118[1] = IAPAppAccessoryNameKey;
          v48 = [(__CFDictionary *)v46 objectForKeyedSubscript:v70];
          v113 = isNSObjectNull(v48);
          if (v113)
          {
            v49 = &stru_10022D360;
          }

          else
          {
            v49 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v119[1] = v49;
          v118[2] = IAPAppAccessoryManufacturerKey;
          v50 = [(__CFDictionary *)v47 objectForKeyedSubscript:v71];
          v109 = isNSObjectNull(v50);
          if (v109)
          {
            v51 = &stru_10022D360;
          }

          else
          {
            v51 = [(__CFDictionary *)v47 objectForKeyedSubscript:v71];
          }

          v96 = v51;
          v119[2] = v51;
          v118[3] = IAPAppAccessoryModelNumberKey;
          v52 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v105 = isNSObjectNull(v52);
          if (v105)
          {
            v53 = &stru_10022D360;
          }

          else
          {
            v53 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v94 = v53;
          v119[3] = v53;
          v118[4] = IAPAppAccessorySerialNumberKey;
          v54 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v111 = v50;
          v101 = isNSObjectNull(v54);
          if (v101)
          {
            v55 = &stru_10022D360;
          }

          else
          {
            v55 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v92 = v55;
          v119[4] = v55;
          v118[5] = IAPAppAccessoryFirmwareRevisionKey;
          v99 = [(__CFDictionary *)v47 objectForKeyedSubscript:v72];
          v56 = isNSObjectNull(v99);
          v103 = v54;
          if (v56)
          {
            v57 = &stru_10022D360;
          }

          else
          {
            v57 = [(__CFDictionary *)v47 objectForKeyedSubscript:v72];
          }

          v90 = v57;
          v119[5] = v57;
          v118[6] = IAPAppAccessoryHardwareRevisionKey;
          v58 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          v59 = isNSObjectNull(v58);
          v97 = v49;
          v107 = v52;
          if (v59)
          {
            v60 = &stru_10022D360;
          }

          else
          {
            v60 = [OUTLINED_FUNCTION_9_8() objectForKeyedSubscript:?];
          }

          v119[6] = v60;
          v118[7] = IAPAppAccessoryConnectionTimeInSecKey;
          v61 = [NSNumber numberWithLong:acc_endpoint_getCreationTimestampMS(v0) / 0x3E8uLL];
          v119[7] = v61;
          v118[8] = IAPAppAccessoryUsageTimeInSecsKey;
          v62 = [NSNumber numberWithLong:acc_endpoint_getDurationMS(v0) / 0x3E8];
          v119[8] = v62;
          v63 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:9];

          if ((v59 & 1) == 0)
          {
          }

          if ((v56 & 1) == 0)
          {
          }

          if ((v101 & 1) == 0)
          {
          }

          if ((v105 & 1) == 0)
          {
          }

          if ((v109 & 1) == 0)
          {
          }

          if ((v113 & 1) == 0)
          {
          }

          v64 = [NSString stringWithString:v0[2]];
          v65 = _powerLogQueue(v64);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __platform_analytics_endpointWillBeDestroyed_block_invoke;
          block[3] = &unk_100225A08;
          v116 = v64;
          v117 = v63;
          v66 = v63;
          v67 = v64;
          dispatch_async(v65, block);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void platform_analytics_connectionWillBeDestroyed()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v1 = v0;
    if (*v0)
    {
      if (gLogObjects)
      {
        v2 = gNumLogObjects < 7;
      }

      else
      {
        v2 = 1;
      }

      if (v2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_35_3();
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v4 = &_os_log_default;
        v3 = &_os_log_default;
      }

      else
      {
        v4 = *(gLogObjects + 48);
      }

      if (OUTLINED_FUNCTION_24())
      {
        v5 = *v1;
        *buf = 138412290;
        v60 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Connection will be destroyed: %@", buf, 0xCu);
      }

      v6 = acc_accInfo_copyAccessoryInfoDictionary(*(v1 + 120));
      v63[0] = @"connectionUUID";
      v7 = *v1;
      if (*v1)
      {
        v7 = CFRetain(v7);
      }

      v57 = v7;
      v56 = NSObjectIfNotNull(v7);
      OUTLINED_FUNCTION_5_14();
      v64[0] = v8;
      v63[1] = @"connectionType";
      acc_connection_getTypeString(v1);
      v55 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
      v54 = NSObjectIfNotNull(v55);
      OUTLINED_FUNCTION_5_14();
      v64[1] = v9;
      v63[2] = @"accessoryName";
      v53 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Name];
      v52 = NSObjectIfNotNull(v53);
      OUTLINED_FUNCTION_5_14();
      v64[2] = v10;
      v63[3] = @"accessoryManufacturer";
      v51 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Manufacturer];
      v50 = NSObjectIfNotNull(v51);
      OUTLINED_FUNCTION_5_14();
      v64[3] = v11;
      v63[4] = @"accessoryModel";
      v49 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_Model];
      v48 = NSObjectIfNotNull(v49);
      OUTLINED_FUNCTION_5_14();
      v64[4] = v12;
      v63[5] = @"accessoryHardwareVersion";
      v47 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_HardwareVersion];
      v46 = NSObjectIfNotNull(v47);
      OUTLINED_FUNCTION_5_14();
      v64[5] = v13;
      v63[6] = @"accessoryFirmwareVersionActive";
      v45 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
      v44 = NSObjectIfNotNull(v45);
      OUTLINED_FUNCTION_5_14();
      v64[6] = v14;
      v63[7] = @"accessoryFirmwareVersionPending";
      v43 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
      v42 = NSObjectIfNotNull(v43);
      OUTLINED_FUNCTION_5_14();
      v64[7] = v15;
      v63[8] = @"accessoryVID";
      v41 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_VendorID];
      v40 = NSObjectIfNotNull(v41);
      OUTLINED_FUNCTION_11_6();
      v64[8] = v16;
      v63[9] = @"accessoryPID";
      v58 = v6;
      v39 = [(__CFDictionary *)v6 objectForKeyedSubscript:kACCInfo_ProductID];
      v38 = NSObjectIfNotNull(v39);
      OUTLINED_FUNCTION_11_6();
      v64[9] = v17;
      v63[10] = @"unlockedSinceBoot";
      platform_system_unlockedSinceBoot();
      v37 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[10] = v37;
      v63[11] = @"deviceIsPowered";
      platform_power_getCurrentLimit(*v1);
      OUTLINED_FUNCTION_18_8();
      v36 = [NSNumber numberWithBool:?];
      v64[11] = v36;
      v63[12] = @"duration";
      v18 = [NSNumber numberWithInt:(acc_connection_getDurationMS(v1) / 1000)];
      v64[12] = v18;
      v63[13] = @"screenIsLocked";
      platform_system_isDeviceLocked();
      v19 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[13] = v19;
      v63[14] = @"authState";
      acc_authInfo_isAuthenticated(v1 + 48, 6u);
      v20 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[14] = v20;
      v63[15] = @"authVersion";
      v21 = [NSNumber numberWithInt:*(v1 + 68)];
      v64[15] = v21;
      v63[16] = @"ConnectedThroughAdapter";
      acc_connection_isConnectedThroughAdapter(v1);
      v22 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
      v64[16] = v22;
      v63[17] = @"AdapterVID";
      v23 = [NSNumber numberWithInt:acc_connection_getAdapterVID(v1)];
      v64[17] = v23;
      v63[18] = @"AdapterPID";
      acc_connection_getAdapterPID(v1);
      v24 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
      v64[18] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:19];
      v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

      v27 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_DigitalID);
      v28 = convertNSDataToNSString(v27, @"%02X");

      if (v28)
      {
        OUTLINED_FUNCTION_44_4();
      }

      v29 = acc_connection_copyProperty(v1, kCFACCProperties_Connection_PrimaryPortNumber);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v26 setObject:v29 forKey:@"lightningPrimaryPortNumber"];
      }

      if (gLogObjects && gNumLogObjects >= 7)
      {
        v30 = *(gLogObjects + 48);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_35_3();
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v34, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v30 = &_os_log_default;
        v31 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_24())
      {
        *buf = 138412546;
        v60 = @"com.apple.accessories.connection.removed";
        v61 = 2112;
        v62 = v26;
        OUTLINED_FUNCTION_16_9(&_mh_execute_header, v32, v33, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", buf);
      }

      AnalyticsSendEvent();
    }
  }

  OUTLINED_FUNCTION_29();
}

void platform_analytics_availableCurrentNegotiated()
{
  OUTLINED_FUNCTION_33();
  if (v0)
  {
    v2 = v0;
    if (*v0)
    {
      if (v0[1])
      {
        v3 = v1;
        v4 = gLogObjects;
        v5 = gNumLogObjects;
        if (gLogObjects)
        {
          v6 = gNumLogObjects < 7;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v77 = 134218240;
            v78[0] = v4;
            LOWORD(v78[1]) = 1024;
            *(&v78[1] + 2) = v5;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v77);
          }

          v9 = &_os_log_default;
          v8 = &_os_log_default;
        }

        else
        {
          v9 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_24())
        {
          v11 = v2[1];
          v10 = v2[2];
          v77 = 67109634;
          LODWORD(v78[0]) = v3;
          WORD2(v78[0]) = 2112;
          *(v78 + 6) = v10;
          HIWORD(v78[1]) = 2112;
          v78[2] = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Available current set at: %d for endpoint: %@ (connection %@)", &v77, 0x1Cu);
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(v2);
        v13 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v75[0] = @"endpointUUID";
        v14 = v2[2];
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v73 = v14;
        v15 = NSObjectIfNotNull(v14);
        v72 = v15;
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = &stru_10022D360;
        }

        v76[0] = v16;
        v75[1] = @"connectionUUID";
        v17 = v2[1];
        if (v17)
        {
          v17 = CFRetain(v17);
        }

        v71 = v17;
        v70 = NSObjectIfNotNull(v17);
        OUTLINED_FUNCTION_5_14();
        v76[1] = v18;
        v75[2] = @"connectionType";
        acc_connection_getTypeString(*v2);
        v69 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v68 = NSObjectIfNotNull(v69);
        OUTLINED_FUNCTION_5_14();
        v76[2] = v19;
        v75[3] = @"transportType";
        acc_endpoint_getTransportTypeString(v2);
        v67 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v66 = NSObjectIfNotNull(v67);
        OUTLINED_FUNCTION_5_14();
        v76[3] = v20;
        v75[4] = @"protocol";
        acc_endpoint_getProtocolString(v2);
        v65 = [OUTLINED_FUNCTION_20_5() stringWithUTF8String:?];
        v64 = NSObjectIfNotNull(v65);
        OUTLINED_FUNCTION_5_14();
        v76[4] = v21;
        v75[5] = @"accessoryName";
        v63 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Name];
        v62 = NSObjectIfNotNull(v63);
        OUTLINED_FUNCTION_5_14();
        v76[5] = v22;
        v75[6] = @"accessoryManufacturer";
        v61 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Manufacturer];
        v60 = NSObjectIfNotNull(v61);
        OUTLINED_FUNCTION_5_14();
        v76[6] = v23;
        v75[7] = @"accessoryModel";
        v59 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_Model];
        v58 = NSObjectIfNotNull(v59);
        OUTLINED_FUNCTION_5_14();
        v76[7] = v24;
        v75[8] = @"accessoryHardwareVersion";
        v57 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_HardwareVersion];
        v56 = NSObjectIfNotNull(v57);
        OUTLINED_FUNCTION_5_14();
        v76[8] = v25;
        v75[9] = @"accessoryFirmwareVersionActive";
        v55 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
        v54 = NSObjectIfNotNull(v55);
        OUTLINED_FUNCTION_5_14();
        v76[9] = v26;
        v75[10] = @"accessoryFirmwareVersionPending";
        v53 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v52 = NSObjectIfNotNull(v53);
        OUTLINED_FUNCTION_5_14();
        v76[10] = v27;
        v75[11] = @"accessoryVID";
        v51 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_VendorID];
        v50 = NSObjectIfNotNull(v51);
        OUTLINED_FUNCTION_11_6();
        v76[11] = v28;
        v75[12] = @"accessoryPID";
        v74 = v13;
        v49 = [(__CFDictionary *)v13 objectForKeyedSubscript:kACCInfo_ProductID];
        v29 = NSObjectIfNotNull(v49);
        OUTLINED_FUNCTION_11_6();
        v76[12] = v30;
        v75[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v48 = [OUTLINED_FUNCTION_20_5() numberWithBool:?];
        v76[13] = v48;
        v75[14] = @"deviceIsPowered";
        platform_power_getCurrentLimit(v2[1]);
        OUTLINED_FUNCTION_18_8();
        v31 = [NSNumber numberWithBool:?];
        v76[14] = v31;
        v75[15] = @"availableCurrent";
        v32 = [NSNumber numberWithUnsignedShort:v3];
        v76[15] = v32;
        v75[16] = @"ConnectedThroughAdapter";
        v33 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v2)];
        v76[16] = v33;
        v75[17] = @"AdapterVID";
        acc_connection_getAdapterVID(*v2);
        v34 = [OUTLINED_FUNCTION_31_2() numberWithInt:?];
        v76[17] = v34;
        v75[18] = @"AdapterPID";
        acc_connection_getAdapterPID(*v2);
        v35 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v76[18] = v35;
        v36 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:19];
        v37 = [NSMutableDictionary dictionaryWithDictionary:v36];

        v38 = acc_connection_copyProperty(*v2, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          OUTLINED_FUNCTION_44_4();
        }

        CableType = platform_power_getCableType(v2[1]);
        if ((CableType - 1) <= 0xFFFFFFFD)
        {
          v40 = [NSNumber numberWithInt:CableType];
          [v37 setObject:v40 forKey:@"lightningCableType"];
        }

        v41 = gLogObjects;
        v42 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v43 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v77 = 134218240;
            v78[0] = v41;
            LOWORD(v78[1]) = 1024;
            *(&v78[1] + 2) = v42;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v77);
          }

          v43 = &_os_log_default;
          v45 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_24())
        {
          v77 = 138412546;
          v78[0] = @"com.apple.accessories.endpoint.setAvailableCurrent";
          LOWORD(v78[1]) = 2112;
          *(&v78[1] + 2) = v37;
          OUTLINED_FUNCTION_16_9(&_mh_execute_header, v46, v47, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", &v77);
        }

        AnalyticsSendEvent();
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void _getEndpointAndAccInfoForAuthPassedEvent()
{
  OUTLINED_FUNCTION_33();
  *v2 = 0;
  if (v0)
  {
    if (*v0)
    {
      v3 = v2;
      v4 = v1;
      v5 = acc_connection_copyEndpointUUIDs(v0);
      if (v5)
      {
        v6 = v5;
        Count = CFSetGetCount(v5);
        if (Count < 1)
        {
LABEL_81:
          CFRelease(v6);
          goto LABEL_82;
        }

        v8 = Count;
        __chkstk_darwin(Count);
        v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        memset(v10, 170, v9);
        CFSetGetValues(v6, v10);
        v11 = 0;
        while (1)
        {
          v12 = *&v10[8 * v11];
          EndpointWithUUID = acc_manager_getEndpointWithUUID(v12);
          if (EndpointWithUUID)
          {
            if ((EndpointWithUUID[7] - 3) <= 1)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_12;
          }
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(EndpointWithUUID);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);

LABEL_12:
        v16 = *v3;
        if (*v3)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v17 = *&v10[8 * v16];
          v18 = acc_manager_getEndpointWithUUID(v17);
          if (v18)
          {
            if ((v18[7] | 2) == 7)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_18;
          }
        }

        v19 = acc_endpoint_getAccessoryInfo(v18);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(v19);

LABEL_18:
        v20 = *v3;
        if (*v3)
        {
          goto LABEL_68;
        }

        while (1)
        {
          v21 = *&v10[8 * v20];
          v22 = acc_manager_getEndpointWithUUID(v21);
          if (v22)
          {
            if (v22[7] == 2)
            {
              break;
            }
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_24;
          }
        }

        v23 = acc_endpoint_getAccessoryInfo(v22);
        *v3 = acc_accInfo_copyAccessoryInfoDictionary(v23);

LABEL_24:
        v24 = *v3;
        if (*v3)
        {
LABEL_68:
          if (v4 == 18)
          {
            v48 = *v3;
            if (!*v3)
            {
              v49 = 1;
              do
              {
                v50 = acc_manager_getEndpointWithUUID(*&v10[8 * v48]);
                if (v50)
                {
                  v51 = v50[7];
                  v52 = v51 == 18 || v51 == 14;
                  if (v52)
                  {
                    v53 = acc_endpoint_getAccessoryInfo(v50);
                    v50 = acc_accInfo_copyAccessoryInfoDictionary(v53);
                  }

                  else
                  {
                    v50 = 0;
                  }
                }

                if (v8 <= v49)
                {
                  break;
                }

                v48 = v49++;
              }

              while (!v50);
              *v3 = v50;
            }
          }

          goto LABEL_81;
        }

        while (1)
        {
          v25 = *&v10[8 * v24];
          v26 = acc_manager_getEndpointWithUUID(v25);
          v27 = v26;
          if (v26)
          {
            break;
          }

          OUTLINED_FUNCTION_17_10();
          if (!(!v52 & v14))
          {
            goto LABEL_68;
          }
        }

        v28 = acc_endpoint_getAccessoryInfo(v26);
        v29 = acc_accInfo_copyAccessoryInfoDictionary(v28);
        *v3 = v29;
        if (!v29 || acc_endpoint_getTransportType(v27) != 12)
        {
LABEL_67:

          goto LABEL_68;
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v30 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_30_2(3.8521e-34);
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60);
          }

          v30 = &_os_log_default;
          v31 = &_os_log_default;
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v60[0] = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[#EventLogger] Endpoint is inductive checking if unknown values are present during AuthPassedEvent.", v60, 2u);
        }

        v32 = *(acc_endpoint_getAccessoryInfo(v27) + 8);
        v59 = *(acc_endpoint_getAccessoryInfo(v27) + 16);
        v57 = *acc_endpoint_getAccessoryInfo(v27);
        v58 = v32;
        if (!v32)
        {
          goto LABEL_56;
        }

        v33 = +[NSNull null];
        if (v58 != v33 && v59)
        {
          v34 = +[NSNull null];
          v35 = v34;
          if (v59 != v34 && v57)
          {
            v56 = +[NSNull null];

            if (v57 != v56)
            {
              v36 = acc_endpoint_getAccessoryInfo(v27);
              v37 = CFGetTypeID(*(v36 + 8));
              if (v37 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v38 = acc_endpoint_getAccessoryInfo(v27);
              v39 = CFGetTypeID(*(v38 + 16));
              if (v39 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v40 = acc_endpoint_getAccessoryInfo(v27);
              v41 = CFGetTypeID(*v40);
              if (v41 != CFStringGetTypeID())
              {
                goto LABEL_66;
              }

              v42 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*(v42 + 8), @"Unknown", 0))
              {
                goto LABEL_66;
              }

              v43 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*(v43 + 16), @"Unknown", 0))
              {
                goto LABEL_66;
              }

              v44 = acc_endpoint_getAccessoryInfo(v27);
              if (CFStringCompare(*v44, @"Unknown", 0) || !acc_authInfo_isAuthenticated(*v27 + 48, 6u))
              {
                goto LABEL_66;
              }

              v45 = logObjectForModule_9();
              if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
LABEL_65:

                *v3 = 0;
LABEL_66:

                goto LABEL_67;
              }

              v60[0] = 0;
              v46 = "[#EventLogger] Unknown values for manufacturer, model, and name are present during AuthPassedEvent. Returning nil.";
LABEL_64:
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, v46, v60, 2u);
              goto LABEL_65;
            }

LABEL_56:
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v45 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_30_2(3.8521e-34);
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v60);
              }

              v45 = &_os_log_default;
              v47 = &_os_log_default;
            }

            if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_65;
            }

            v60[0] = 0;
            v46 = "[#EventLogger] Endpoint is inductive but values for manufacturer, model, or name are nil during AuthPassedEvent.";
            goto LABEL_64;
          }
        }

        goto LABEL_56;
      }
    }
  }

LABEL_82:
  OUTLINED_FUNCTION_29();
}

uint64_t _connectionContainsInductiveEndpoint(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  v1 = acc_connection_copyEndpointUUIDs(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFSetGetCount(v1);
  if (Count < 1)
  {
    v12 = 0;
  }

  else
  {
    v4 = Count;
    __chkstk_darwin(Count);
    v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v6, 170, v5);
    CFSetGetValues(v2, v6);
    v7 = 0;
    v8 = 1;
    while (1)
    {
      v9 = *&v6[8 * v7];
      EndpointWithUUID = acc_manager_getEndpointWithUUID(v9);
      if (EndpointWithUUID)
      {
        if (acc_endpoint_getTransportType(EndpointWithUUID) == 12)
        {
          break;
        }
      }

      v7 = v8;
      if (v4 <= v8++)
      {
        v12 = 0;
        goto LABEL_12;
      }
    }

    v12 = 1;
  }

LABEL_12:
  CFRelease(v2);
  return v12;
}

void platform_analytics_connectionAuthUnsuccessfulForProtocol(CFStringRef *a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    if (*a1)
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
      if (Copy)
      {
        v6 = Copy;
        if (a2 == 2)
        {
          v11 = logObjectForModule_9();
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_15;
          }

          *buf = 136315394;
          v85 = "_logAuthUnsuccessfulEvent";
          OUTLINED_FUNCTION_2_1();
          LODWORD(v87) = 2;
          OUTLINED_FUNCTION_15();
          v18 = 18;
LABEL_14:
          _os_log_impl(v13, v14, v15, v16, v17, v18);
LABEL_15:

          CFRelease(v6);
          return;
        }

        ConnectionWithUUID = acc_manager_getConnectionWithUUID(Copy);
        v8 = &audioProductCerts_endpoint_publish_onceToken;
        if (!ConnectionWithUUID)
        {
          v9 = gLogObjects;
          v10 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 7)
          {
            v11 = *(gLogObjects + 48);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v85 = v9;
              OUTLINED_FUNCTION_2_1();
              LODWORD(v87) = v10;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }

            v11 = &_os_log_default;
            v12 = &_os_log_default;
          }

          if (!OUTLINED_FUNCTION_93())
          {
            goto LABEL_15;
          }

          *buf = 138412290;
          v85 = @"com.apple.accessories.connection.authUnsuccessful";
          OUTLINED_FUNCTION_15();
          v18 = 12;
          goto LABEL_14;
        }

        v19 = ConnectionWithUUID;
        _getEndpointAndAccInfoForAuthPassedEvent();
        v83 = v20;
        v11 = 0;
        v21 = gLogObjects;
        v22 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v23 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v85 = v21;
            OUTLINED_FUNCTION_2_1();
            LODWORD(v87) = v22;
            OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
          }

          v23 = &_os_log_default;
          v24 = &_os_log_default;
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_32:

          v30 = objc_alloc_init(NSMutableDictionary);
          if (v11)
          {
            v31 = gLogObjects;
            v32 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 7)
            {
              v33 = *(gLogObjects + 48);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v85 = v31;
                OUTLINED_FUNCTION_2_1();
                LODWORD(v87) = v32;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v82, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
              }

              v33 = &_os_log_default;
              v34 = &_os_log_default;
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v36 = *v19;
              v37 = "Unknown";
              if (a2 == 3)
              {
                v37 = "TimeOut";
              }

              if (a2 == 1)
              {
                v37 = "Failed";
              }

              *buf = 138412546;
              v85 = v36;
              v86 = 2080;
              v87 = v37;
              OUTLINED_FUNCTION_78(&_mh_execute_header, v33, v35, "[#EventLogger] Connection: %@ %s authentication", buf);
            }

            v38 = [v11 objectForKeyedSubscript:kACCInfo_Name];
            NSObjectIfNotNull(v38);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v39 = [v11 objectForKeyedSubscript:kACCInfo_Manufacturer];
            NSObjectIfNotNull(v39);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v40 = [v11 objectForKeyedSubscript:kACCInfo_Model];
            NSObjectIfNotNull(v40);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v41 = [v11 objectForKeyedSubscript:kACCInfo_HardwareVersion];
            NSObjectIfNotNull(v41);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v42 = [v11 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
            NSObjectIfNotNull(v42);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v43 = [v11 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
            NSObjectIfNotNull(v43);
            objc_claimAutoreleasedReturnValue();
            OUTLINED_FUNCTION_3_16();
            [v30 setObject:? forKey:?];

            v44 = [v11 objectForKeyedSubscript:kACCInfo_VendorID];
            v45 = NSObjectIfNotNull(v44);
            v46 = v45;
            if (v45)
            {
              v47 = v45;
            }

            else
            {
              v47 = &off_100233DE0;
            }

            [v30 setObject:v47 forKey:{@"accessoryVID", v83}];

            v48 = [v11 objectForKeyedSubscript:kACCInfo_ProductID];
            v49 = NSObjectIfNotNull(v48);
            v8 = v49;
            if (v49)
            {
              v50 = v49;
            }

            else
            {
              v50 = &off_100233DE0;
            }

            [v30 setObject:v50 forKey:@"accessoryPID"];
          }

          if (*v19)
          {
            v51 = CFRetain(*v19);
          }

          else
          {
            v51 = 0;
          }

          NSObjectIfNotNull(v51);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_16();
          [v30 setObject:? forKey:?];

          v52 = [NSString stringWithUTF8String:acc_connection_getTypeString(v19)];
          NSObjectIfNotNull(v52);
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_3_16();
          [v30 setObject:? forKey:?];

          v53 = v83;
          v54 = [NSString stringWithUTF8String:acc_endpoint_getTransportTypeString(v83)];
          v55 = NSObjectIfNotNull(v54);
          v56 = v55;
          if (v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = &stru_10022D360;
          }

          [v30 setObject:v57 forKey:{@"transportType", v83}];

          v58 = kACCEndpoint_Protocol_Strings[0];
          if (a3)
          {
            v59 = &audioProductCerts_endpoint_publish_onceToken;
            v60 = &audioProductCerts_endpoint_publish_onceToken;
            if (a3 > 0x12)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (!v53)
            {
              v59 = &audioProductCerts_endpoint_publish_onceToken;
              v60 = &audioProductCerts_endpoint_publish_onceToken;
              goto LABEL_65;
            }

            a3 = *(v53 + 28);
            v59 = &audioProductCerts_endpoint_publish_onceToken;
            v60 = &audioProductCerts_endpoint_publish_onceToken;
            if (a3 >= 0x13)
            {
LABEL_65:
              v61 = [NSString stringWithUTF8String:v58];
              v62 = NSObjectIfNotNull(v61);
              v63 = v62;
              if (v62)
              {
                v64 = v62;
              }

              else
              {
                v64 = &stru_10022D360;
              }

              [v30 setObject:v64 forKey:@"protocol"];

              platform_system_unlockedSinceBoot();
              v65 = [OUTLINED_FUNCTION_23_4() numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              platform_power_getCurrentLimit(*v19);
              OUTLINED_FUNCTION_18_8();
              v66 = [NSNumber numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              v67 = [NSNumber numberWithInt:*(v19 + 68)];
              OUTLINED_FUNCTION_36_2();

              acc_connection_isConnectedThroughAdapter(v19);
              v68 = [OUTLINED_FUNCTION_23_4() numberWithBool:?];
              OUTLINED_FUNCTION_36_2();

              acc_connection_getAdapterVID(v19);
              v69 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
              OUTLINED_FUNCTION_36_2();

              acc_connection_getAdapterPID(v19);
              v70 = [OUTLINED_FUNCTION_23_4() numberWithInt:?];
              OUTLINED_FUNCTION_36_2();

              v71 = acc_connection_copyProperty(v19, kCFACCProperties_Connection_PrimaryPortNumber);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                OUTLINED_FUNCTION_36_2();
              }

              CableType = platform_power_getCableType(*v19);
              if ((CableType - 1) <= 0xFFFFFFFD)
              {
                v73 = [NSNumber numberWithInt:CableType];
                OUTLINED_FUNCTION_44_4();
              }

              v74 = [NSNumber numberWithInt:a2];
              [v30 setObject:v74 forKey:@"authStatusCode"];

              v75 = v60[491];
              v76 = *(v59 + 984);
              if (v75 && v76 >= 7)
              {
                v77 = *(v75 + 48);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v85 = v75;
                  OUTLINED_FUNCTION_2_1();
                  LODWORD(v87) = v76;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v81, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }

                v77 = &_os_log_default;
                v78 = &_os_log_default;
              }

              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v85 = @"com.apple.accessories.connection.authUnsuccessful";
                v86 = 2112;
                v87 = v30;
                OUTLINED_FUNCTION_78(&_mh_execute_header, v77, v79, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@", buf);
              }

              AnalyticsSendEvent();
              goto LABEL_15;
            }
          }

          v58 = kACCEndpoint_Protocol_Strings[a3];
          goto LABEL_65;
        }

        v25 = *v19;
        if (v83)
        {
          v26 = *(v83 + 16);
          v27 = kACCEndpoint_Protocol_Strings[0];
          if (!a3)
          {
            v28 = *(v83 + 28);
            if (v28 >= 0x13)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }
        }

        else
        {
          v26 = 0;
          v27 = kACCEndpoint_Protocol_Strings[0];
          if (!a3)
          {
            goto LABEL_31;
          }
        }

        v28 = a3;
        if (a3 <= 0x12)
        {
LABEL_30:
          v27 = kACCEndpoint_Protocol_Strings[v28];
        }

LABEL_31:
        *buf = 136316418;
        v85 = "_logAuthUnsuccessfulEvent";
        v86 = 2112;
        v87 = v25;
        v88 = 1024;
        v89 = a3;
        v90 = 2112;
        v91 = v26;
        v92 = 2080;
        v93 = v27;
        v94 = 2112;
        v95 = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[#EventLogger] %s: connection %@, protocol %{coreacc:ACCEndpoint_Protocol_t}d, endpoint %@ (%s), accInfo %@", buf, 0x3Au);
        goto LABEL_32;
      }
    }
  }
}

void platform_analytics_iap1_lingoesSupportedDidChange(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_50();
    if (v3)
    {
      if (*v3)
      {
        v4 = v2;
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 7;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v7 = &_os_log_default;
          v6 = &_os_log_default;
        }

        else
        {
          v7 = *(gLogObjects + 48);
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(v1[2], 5.778e-34);
          v47 = v8;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v9, v10, "[#EventLogger] iAP1 lingoes reported for endpoint: %@ (connection %@)");
        }

        v43[0] = @"endpointUUID";
        v11 = v1[2];
        if (v11)
        {
          v11 = CFRetain(v11);
        }

        v42 = v11;
        v12 = NSObjectIfNotNull(v11);
        v41 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = &stru_10022D360;
        }

        v44[0] = v13;
        v43[1] = @"connectionUUID";
        v14 = OUTLINED_FUNCTION_26_5();
        if (v14)
        {
          v14 = CFRetain(v14);
        }

        v40 = v14;
        v15 = NSObjectIfNotNull(v14);
        OUTLINED_FUNCTION_40_4();
        v44[1] = v16;
        v43[2] = @"connectionType";
        acc_connection_getTypeString(*v1);
        v38 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v17 = NSObjectIfNotNull(v38);
        OUTLINED_FUNCTION_40_4();
        v44[2] = v18;
        v43[3] = @"transportType";
        acc_endpoint_getTransportTypeString(v1);
        v37 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v19 = NSObjectIfNotNull(v37);
        OUTLINED_FUNCTION_40_4();
        v44[3] = v20;
        v43[4] = @"protocol";
        v21 = [NSString stringWithUTF8String:acc_endpoint_getProtocolString(v1)];
        v22 = NSObjectIfNotNull(v21);
        OUTLINED_FUNCTION_40_4();
        v44[4] = v23;
        v43[5] = @"lingoesBitmask";
        v24 = [NSNumber numberWithUnsignedInt:v4];
        v44[5] = v24;
        v43[6] = @"ConnectedThroughAdapter";
        v25 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(*v1)];
        v44[6] = v25;
        v43[7] = @"AdapterVID";
        v26 = [NSNumber numberWithInt:acc_connection_getAdapterVID(*v1)];
        v44[7] = v26;
        v43[8] = @"AdapterPID";
        acc_connection_getAdapterPID(*v1);
        v27 = [OUTLINED_FUNCTION_37_1() numberWithInt:?];
        v44[8] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:9];
        v39 = [NSMutableDictionary dictionaryWithDictionary:v28];

        v29 = gLogObjects;
        v30 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v31 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v45 = 134218240;
            v46 = v29;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v47) = v30;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v31 = &_os_log_default;
          v32 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v45 = 138412546;
          v46 = @"com.apple.accessories.endpoint.iap1.lingoesSupported";
          OUTLINED_FUNCTION_13_7();
          v47 = v39;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v33, v34, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }
}

void platform_analytics_iap2_featuresSupportedDidChange()
{
  OUTLINED_FUNCTION_33();
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v2)
    {
      if (*v2 && v2[1])
      {
        v3 = gLogObjects;
        v4 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v5 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v100 = 134218240;
            v101 = v3;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v102) = v4;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v5 = &_os_log_default;
          v6 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          v7 = *(v0 + 1);
          v100 = 138412546;
          v101 = v7;
          OUTLINED_FUNCTION_13_7();
          v102 = v8;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v9, v10, "[#EventLogger] iAP2 messages reported for endpoint: %@ (connection %@)");
        }

        v11 = 0;
        for (i = 0; i != 29; ++i)
        {
          v13 = iap2_identification_isIdentifiedForFeature(v0);
          v14 = 1 << i;
          if (!v13)
          {
            v14 = 0;
          }

          v11 |= v14;
        }

        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects)
        {
          v17 = gNumLogObjects < 7;
        }

        else
        {
          v17 = 1;
        }

        if (v17)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v100 = 134218240;
            v101 = v15;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v102) = v16;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v19 = &_os_log_default;
          v18 = &_os_log_default;
        }

        else
        {
          v19 = *(gLogObjects + 48);
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v100 = 67109120;
          LODWORD(v101) = v11;
          OUTLINED_FUNCTION_43_2(&_mh_execute_header, v20, v21, "[#EventLogger] True FeaturesMask: 0x%08x");
        }

        v22 = gLogObjects;
        v23 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 7)
        {
          v24 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v100 = 134218240;
            v101 = v22;
            OUTLINED_FUNCTION_17_0();
            LODWORD(v102) = v23;
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v24 = &_os_log_default;
          v25 = &_os_log_default;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v100 = 67109120;
          LODWORD(v101) = v11 & 0x136FC80;
          OUTLINED_FUNCTION_43_2(&_mh_execute_header, v26, v27, "[#EventLogger] Filtered FeaturesMask: 0x%08x");
        }

        AccessoryInfo = acc_endpoint_getAccessoryInfo(*v0);
        v29 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
        v98[0] = @"endpointUUID";
        v30 = *(v0 + 1);
        if (v30)
        {
          v30 = CFRetain(v30);
        }

        v96 = v30;
        v31 = NSObjectIfNotNull(v30);
        v95 = v31;
        if (v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = &stru_10022D360;
        }

        v99[0] = v32;
        v98[1] = @"connectionUUID";
        v33 = *(*v0 + 8);
        if (v33)
        {
          v33 = CFRetain(v33);
        }

        v94 = v33;
        v93 = NSObjectIfNotNull(v33);
        OUTLINED_FUNCTION_5_14();
        v99[1] = v34;
        v98[2] = @"connectionType";
        v35 = OUTLINED_FUNCTION_26_5();
        acc_connection_getTypeString(v35);
        v92 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v91 = NSObjectIfNotNull(v92);
        OUTLINED_FUNCTION_5_14();
        v99[2] = v36;
        v98[3] = @"transportType";
        v37 = OUTLINED_FUNCTION_41_2();
        acc_endpoint_getTransportTypeString(v37);
        v90 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v89 = NSObjectIfNotNull(v90);
        OUTLINED_FUNCTION_5_14();
        v99[3] = v38;
        v98[4] = @"protocol";
        v39 = OUTLINED_FUNCTION_41_2();
        acc_endpoint_getProtocolString(v39);
        v88 = [OUTLINED_FUNCTION_14_9() stringWithUTF8String:?];
        v87 = NSObjectIfNotNull(v88);
        OUTLINED_FUNCTION_5_14();
        v99[4] = v40;
        v98[5] = @"accessoryName";
        v86 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_Name];
        v85 = NSObjectIfNotNull(v86);
        OUTLINED_FUNCTION_5_14();
        v99[5] = v41;
        v98[6] = @"accessoryManufacturer";
        v84 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_Manufacturer];
        v83 = NSObjectIfNotNull(v84);
        OUTLINED_FUNCTION_5_14();
        v99[6] = v42;
        v98[7] = @"accessoryModel";
        v82 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_Model];
        v81 = NSObjectIfNotNull(v82);
        OUTLINED_FUNCTION_5_14();
        v99[7] = v43;
        v98[8] = @"accessoryHardwareVersion";
        v80 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_HardwareVersion];
        v79 = NSObjectIfNotNull(v80);
        OUTLINED_FUNCTION_5_14();
        v99[8] = v44;
        v98[9] = @"accessoryFirmwareVersionActive";
        v78 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_FirmwareVersionActive];
        v77 = NSObjectIfNotNull(v78);
        OUTLINED_FUNCTION_5_14();
        v99[9] = v45;
        v98[10] = @"accessoryFirmwareVersionPending";
        v76 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_FirmwareVersionPending];
        v75 = NSObjectIfNotNull(v76);
        OUTLINED_FUNCTION_5_14();
        v99[10] = v46;
        v98[11] = @"accessoryVID";
        v74 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_VendorID];
        v73 = NSObjectIfNotNull(v74);
        OUTLINED_FUNCTION_39_2();
        v99[11] = v47;
        v98[12] = @"accessoryPID";
        v97 = v29;
        v72 = [(__CFDictionary *)v29 objectForKeyedSubscript:kACCInfo_ProductID];
        v48 = NSObjectIfNotNull(v72);
        OUTLINED_FUNCTION_39_2();
        v99[12] = v49;
        v98[13] = @"unlockedSinceBoot";
        platform_system_unlockedSinceBoot();
        v71 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v99[13] = v71;
        v98[14] = @"featuresBitmask";
        v50 = [NSNumber numberWithInteger:v11 & 0x136FC80];
        v99[14] = v50;
        v98[15] = @"carPlayCapable";
        iap2_identification_isIdentifiedForCarPlay(v0);
        v51 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v99[15] = v51;
        v98[16] = @"screenIsLocked";
        platform_system_isDeviceLocked();
        v52 = [OUTLINED_FUNCTION_14_9() numberWithBool:?];
        v99[16] = v52;
        v98[17] = @"ConnectedThroughAdapter";
        v53 = OUTLINED_FUNCTION_26_5();
        v54 = [NSNumber numberWithBool:acc_connection_isConnectedThroughAdapter(v53)];
        v99[17] = v54;
        v98[18] = @"AdapterVID";
        v55 = OUTLINED_FUNCTION_26_5();
        acc_connection_getAdapterVID(v55);
        v56 = [OUTLINED_FUNCTION_38_4() numberWithInt:?];
        v99[18] = v56;
        v98[19] = @"AdapterPID";
        v57 = OUTLINED_FUNCTION_26_5();
        acc_connection_getAdapterPID(v57);
        v58 = [OUTLINED_FUNCTION_31_2() numberWithInt:?];
        v99[19] = v58;
        v59 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:20];
        v60 = [NSMutableDictionary dictionaryWithDictionary:v59];

        v61 = OUTLINED_FUNCTION_26_5();
        v62 = acc_connection_copyProperty(v61, kCFACCProperties_Connection_PrimaryPortNumber);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v60 setObject:v62 forKey:@"lightningPrimaryPortNumber"];
        }

        if (gLogObjects && gNumLogObjects >= 7)
        {
          v63 = *(gLogObjects + 48);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_1_14(3.8521e-34);
            OUTLINED_FUNCTION_14_8(&_mh_execute_header, &_os_log_default, v69, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d");
          }

          v63 = &_os_log_default;
          v64 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_93())
        {
          OUTLINED_FUNCTION_4_16(@"com.apple.accessories.endpoint.iap2.featuresSupported", 5.778e-34);
          v102 = v60;
          OUTLINED_FUNCTION_6_10(&_mh_execute_header, v65, v66, "[#EventLogger] CoreAnalytics event: %@\neventDict: %@");
        }

        AnalyticsSendEvent();
      }
    }
  }

  OUTLINED_FUNCTION_29();
}

void __platform_analytics_endpointAccessoryInfoDidChange_block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[#EventLogger] [#powerlog] powerlogDict: %@", &v3, 0xCu);
}

void _logAuthPassedEvent_cold_2()
{
  v0 = gLogObjects;
  v1 = gNumLogObjects;
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 7;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v15) = 134218240;
      *(&v15 + 4) = v0;
      WORD6(v15) = 1024;
      HIWORD(v15) = v1;
      OUTLINED_FUNCTION_2_0(&_mh_execute_header, &_os_log_default, v3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v4, v5, v6, v7, v15, HIWORD(v1));
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 48);
  }

  if (OUTLINED_FUNCTION_93())
  {
    OUTLINED_FUNCTION_15();
    _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
  }
}

uint64_t acc_protocolParser_iAP2_create(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10100407125D048uLL);
  *a1 = v2;
  if (!v2)
  {
    return 0;
  }

  *v2 = 0;
  v2[2] = 0;
  *(v2 + 6) = 0;
  *(v2 + 1) = 0;
  v2[8] = 0;
  v3 = 1;
  *(v2 + 18) = 0;
  return v3;
}

BOOL acc_protocolParser_iAP2_reset(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0;
    *(a1 + 4) = 0;
    *(a1 + 6) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 18) = 0;
  }

  return a1 != 0;
}

BOOL acc_protocolParser_iAP2_destroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return a1 != 0;
}

void acc_protocolParser_iAP2_run_cold_21(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP2 Packet Length: %d", v3, 8u);
}

void acc_protocolParser_iAP2_run_cold_23(unsigned __int16 *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "iAP2 Payload Length: %d", v3, 8u);
}

uint64_t iap2_wifisharing_RequestWiFiInformation(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (iAP2MsgGetMsgID(a2) == 22272)
    {
      v11 = a1;
      OUTLINED_FUNCTION_44_3(0x8CA0u);
      FirstParam = iAP2MsgGetFirstParam(a2, 0);
      if (FirstParam)
      {
        NextParam = FirstParam;
        do
        {
          ParamID = iAP2MsgGetParamID(NextParam);
          v8 = gLogObjects;
          v9 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 39)
          {
            v10 = *(gLogObjects + 304);
          }

          else
          {
            v10 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v13 = v8;
              v14 = 1024;
              v15 = v9;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v10 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v13) = ParamID;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
          }

          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
        }

        while (NextParam);
      }

      return platform_wifisharing_request_device_wifi_information(*(v11 + 8));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id iap2_wifisharing_AccessoryWiFiConfigurationInformation(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v49 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  if (iAP2MsgGetMsgID(a2) != 22275)
  {
    return 0;
  }

  v45 = a1;
  OUTLINED_FUNCTION_44_3(0x8CACu);
  FirstParam = iAP2MsgGetFirstParam(a2, 0);
  if (!FirstParam)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
LABEL_38:
    isIdentifiedForWirelessCarPlay = iap2_identification_isIdentifiedForWirelessCarPlay(v45);
    v3 = platform_wifisharing_accessory_wifi_configuration_information(*(v45 + 8), v8, v9, v10, v11, v12, isIdentifiedForWirelessCarPlay);
    kdebug_trace();
    if (!v8)
    {
      goto LABEL_40;
    }

LABEL_39:
    CFRelease(v8);
    goto LABEL_40;
  }

  NextParam = FirstParam;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = kCFAllocatorDefault;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    switch(ParamID)
    {
      case 0:
        ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
        v15 = OUTLINED_FUNCTION_3_17();
        DataAsData = iAP2MsgGetDataAsData(v15, v16);
        if (!v49)
        {
          v18 = DataAsData;
          if (v8)
          {
            CFRelease(v8);
          }

          v8 = CFDataCreate(v13, v18, ParamValueLen);
          goto LABEL_35;
        }

        v39 = logObjectForModule_14();
        if (!OUTLINED_FUNCTION_5_15(v39))
        {
          goto LABEL_60;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        *v51 = 0;
        *&v51[4] = 1024;
        *&v51[6] = MsgID;
        goto LABEL_59;
      case 1:
        v19 = OUTLINED_FUNCTION_3_17();
        DataAsString = iAP2MsgGetDataAsString(v19, v20);
        if (v49)
        {
          v44 = logObjectForModule_14();
          if (!OUTLINED_FUNCTION_5_15(v44))
          {
            goto LABEL_60;
          }

LABEL_58:
          iAP2MsgGetMsgID(a2);
          *buf = 67109376;
          OUTLINED_FUNCTION_0();
LABEL_59:
          _os_log_error_impl(&_mh_execute_header, ParamValueLen, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
          goto LABEL_60;
        }

        ParamValueLen = DataAsString;
        if (v9)
        {
          CFRelease(v9);
        }

        v9 = OUTLINED_FUNCTION_8_8();
        goto LABEL_35;
      case 2:
        v34 = OUTLINED_FUNCTION_3_17();
        v36 = iAP2MsgGetDataAsString(v34, v35);
        if (!v49)
        {
          ParamValueLen = v36;
          if (v10)
          {
            CFRelease(v10);
          }

          v10 = OUTLINED_FUNCTION_8_8();
LABEL_35:
          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
          if (!NextParam)
          {
            goto LABEL_38;
          }

          continue;
        }

        v42 = logObjectForModule_14();
        if (OUTLINED_FUNCTION_5_15(v42))
        {
          goto LABEL_58;
        }

LABEL_60:
        v3 = 0;
        if (v8)
        {
          goto LABEL_39;
        }

LABEL_40:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (v12)
        {
          CFRelease(v12);
        }

        return v3;
      case 3:
        v28 = OUTLINED_FUNCTION_3_17();
        DataAsU8 = iAP2MsgGetDataAsU8(v28, v29);
        if (v49)
        {
          v43 = logObjectForModule_14();
          if (OUTLINED_FUNCTION_5_15(v43))
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }

        ParamValueLen = DataAsU8;
        if (v11)
        {
          CFRelease(v11);
        }

        valuePtr = ParamValueLen;
        v11 = CFNumberCreate(v13, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_35;
      case 4:
        v31 = OUTLINED_FUNCTION_3_17();
        v33 = iAP2MsgGetDataAsU8(v31, v32);
        if (!v49)
        {
          ParamValueLen = v33;
          if (v12)
          {
            CFRelease(v12);
          }

          v47 = ParamValueLen;
          v12 = CFNumberCreate(v13, kCFNumberSInt32Type, &v47);
          goto LABEL_35;
        }

        v41 = logObjectForModule_14();
        if (!OUTLINED_FUNCTION_5_15(v41))
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      case 5:
      case 6:
        goto LABEL_35;
      default:
        v22 = v8;
        v46 = v9;
        v23 = v10;
        v24 = v11;
        v25 = v12;
        v26 = gLogObjects;
        v27 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 39)
        {
          ParamValueLen = *(gLogObjects + 304);
        }

        else
        {
          ParamValueLen = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v51 = v26;
            *&v51[8] = 1024;
            v52 = v27;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (os_log_type_enabled(ParamValueLen, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *v51 = ParamID;
          _os_log_impl(&_mh_execute_header, ParamValueLen, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
        }

        v12 = v25;
        v11 = v24;
        v10 = v23;
        v8 = v22;
        v13 = kCFAllocatorDefault;
        v9 = v46;
        goto LABEL_35;
    }
  }
}

const __CFNumber *iap2_wifisharing_DeviceWiFiInformation(uint64_t *a1, CFDictionaryRef theDict)
{
  Value = 0;
  if (a1)
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationStatus);
      v5 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationSecurityType);
      v6 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationWifiSSID);
      v7 = CFDictionaryGetValue(theDict, kCFWiFiSharing_WiFiNetworkInformationWifiPassphrase);
      iAP2MsgInit((a1 + 15), 22273, a1[24], 0xFFFF, 0, 0);
      if (Value)
      {
        LOWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
        v8 = OUTLINED_FUNCTION_6_11();
        Value = iAP2MsgAddU8Param(v8, v9, 0, v10);
        v11 = valuePtr;
        v12 = &off_1001C3000;
        if (v5)
        {
          if (!valuePtr)
          {
            v33 = 0;
            CFNumberGetValue(v5, kCFNumberShortType, &v33);
            v13 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddU8Param(v13, v14, 1, v15))
            {
              v16 = gLogObjects;
              v17 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v18 = *(gLogObjects + 304);
              }

              else
              {
                v18 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = 134218240;
                  v35 = v16;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v17;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              v12 = &off_1001C3000;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to add security type to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (v6)
        {
          if (!v11)
          {
            v19 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddCFStringParam(v19, v20, 2, v6))
            {
              v21 = gLogObjects;
              v22 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v23 = *(gLogObjects + 304);
              }

              else
              {
                v23 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = *(v12 + 71);
                  v35 = v21;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v22;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v31, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to add SSID to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (v7)
        {
          if (!v11)
          {
            v24 = OUTLINED_FUNCTION_6_11();
            if (!iAP2MsgAddCFStringParam(v24, v25, 3, v7))
            {
              v26 = gLogObjects;
              v27 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 39)
              {
                v28 = *(gLogObjects + 304);
              }

              else
              {
                v28 = &_os_log_default;
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  valuePtr = *(v12 + 71);
                  v35 = v26;
                  OUTLINED_FUNCTION_2_1();
                  v36 = v27;
                  OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &valuePtr);
                }
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(valuePtr) = 0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Failed to add passphrase to message", &valuePtr, 2u);
              }
            }
          }
        }

        if (Value)
        {
          Value = iap2_sessionControl_sendOutgoingMessage(a1, (a1 + 15));
          OUTLINED_FUNCTION_44_3(0x8CA4u);
        }
      }
    }
  }

  return Value;
}

uint64_t *iap2_wifisharing_RequestAccessoryWiFiConfigurationInformation(uint64_t *a1)
{
  v1 = a1;
  if (a1)
  {
    v3 = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &_kMsgAccessoryWiFiCredentialsSharingList, 2, &v3))
    {
      iAP2MsgInit((v1 + 15), 22274, v1[24], 0xFFFF, 0, 0);
      v1 = iap2_sessionControl_sendOutgoingMessage(v1, (v1 + 15));
      OUTLINED_FUNCTION_44_3(0x8CA8u);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

_WORD *_createFeature_6(_WORD *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 2uLL, 0x1000040BDFB0063uLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_6(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
      *a1 = 0;
    }
  }

  return 0;
}

uint64_t _startFeatureFromDevice_3(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = gLogObjects;
    v3 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 39)
    {
      v4 = *(gLogObjects + 304);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218240;
        v7 = v2;
        v8 = 1024;
        v9 = v3;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v6);
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2_WiFiSharing _startFeatureFromDevice", &v6, 2u);
    }

    result = iap2_feature_getFeature(v1, 0x16u);
    if (result)
    {
      iap2_wifisharing_RequestAccessoryWiFiConfigurationInformation(v1);
      return 1;
    }
  }

  return result;
}

uint64_t _checkIdentificationInfo_17(uint64_t a1)
{
  v35 = -86;
  v2 = iap2_identification_checkIdentificationMsgIDs(a1, &_kMsgDeviceWiFiCredentialsSharingList, 2, &v35);
  if (v2)
  {
    return v2;
  }

  v3 = v35;
  v4 = iap2_identification_checkIdentificationMsgIDs(a1, &_kMsgAccessoryWiFiCredentialsSharingList, 2, &v35);
  v5 = v4;
  v6 = 0;
  v7 = v35;
  v8 = 0;
  if (v35 | v3 && !v4)
  {
    iap2_features_createFeature(a1, 0x16u);
    iap2_identification_setIdentifiedForFeature(a1);
    v6 = v7;
    v8 = v3;
  }

  Feature = iap2_feature_getFeature(a1, 0x16u);
  if (Feature)
  {
    *Feature = v8;
    Feature[1] = v6;
  }

  if (!v8)
  {
    goto LABEL_14;
  }

  v10 = gLogObjects;
  v11 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 39)
  {
    v12 = *(gLogObjects + 304);
  }

  else
  {
    v12 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v36 = 134218240;
      v37 = v10;
      OUTLINED_FUNCTION_2_1();
      v38 = v11;
      OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_10(v25, v26, v27, v28, v29);
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v36) = 0;
    OUTLINED_FUNCTION_59_1();
    _os_log_debug_impl(v17, v18, OS_LOG_TYPE_DEBUG, v19, v20, 2u);
    if (!v6)
    {
      return v5;
    }
  }

  else
  {
LABEL_14:
    if (!v6)
    {
      return v5;
    }
  }

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 39)
  {
    v15 = *(gLogObjects + 304);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v36 = 134218240;
      v37 = v13;
      OUTLINED_FUNCTION_2_1();
      v38 = v14;
      OUTLINED_FUNCTION_59_1();
      OUTLINED_FUNCTION_10(v30, v31, v32, v33, v34);
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v36) = 0;
    OUTLINED_FUNCTION_59_1();
    _os_log_debug_impl(v21, v22, OS_LOG_TYPE_DEBUG, v23, v24, 2u);
  }

  return v5;
}

uint64_t platform_systemInfo_copyUniqueDeviceID()
{
  v0 = IOServiceMatching("IOUSBDeviceController");
  if (!v0)
  {
    return 0;
  }

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v0);
  if (!MatchingService)
  {
    return 0;
  }

  v2 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceDescription", kCFAllocatorDefault, 0);
  v4 = CFProperty;
  if (CFProperty)
  {
    v5 = [CFProperty objectForKeyedSubscript:@"serialNumber"];
  }

  else
  {
    v5 = 0;
  }

  IOObjectRelease(v2);

  return v5;
}

uint64_t acc_protocolRouter_initProtocolLayer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 56) || (result = acc_protocolRouter_destroyProtocolLayer(result), result))
    {
      switch(*(v1 + 28))
      {
        case 3:
          if (*v1)
          {
            isAuthenticated = acc_connection_isAuthenticated(*v1, 0);
          }

          else
          {
            isAuthenticated = 0;
          }

          platform_iapd_bridge_accessory_connected(v1, isAuthenticated);
          return 1;
        case 4:
          v2 = iap2_endpoint_create(v1);
          goto LABEL_18;
        case 5:
        case 6:
        case 7:
          v2 = ea_endpoint_create(v1);
          goto LABEL_18;
        case 8:
          v2 = oobPairing_endpoint_create(v1);
          goto LABEL_18;
        case 0xA:
          v2 = accAuthProtocol_endpoint_create(v1);
          goto LABEL_18;
        case 0xB:
          v2 = configStream_endpoint_create(v1);
          goto LABEL_18;
        case 0xD:
          v2 = audioProductCerts_endpoint_create(v1);
          goto LABEL_18;
        case 0xE:
          v2 = mfi4Auth_endpoint_create(v1);
          goto LABEL_18;
        case 0xF:
          v2 = accSNTPTimeSync_endpoint_create(v1);
          goto LABEL_18;
        case 0x10:
          result = platform_systemInfo_supportsQiAuth();
          if (!result)
          {
            return result;
          }

          v2 = qiAuth_endpoint_create(v1);
LABEL_18:
          *(v1 + 56) = v2;
          result = v2 != 0;
          break;
        case 0x11:
          v2 = t56_endpoint_create(v1);
          goto LABEL_18;
        case 0x12:
          v2 = genericMFi_endpoint_create(v1);
          goto LABEL_18;
        default:
          v4 = gLogObjects;
          if (gLogObjects)
          {
            v5 = gNumLogObjects < 17;
          }

          else
          {
            v5 = 1;
          }

          if (v5 && OUTLINED_FUNCTION_21())
          {
            LODWORD(v17) = 134218240;
            HIDWORD(v17) = v4;
            OUTLINED_FUNCTION_2_21();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11, v17, HIDWORD(v4));
          }

          result = OUTLINED_FUNCTION_93();
          if (result)
          {
            OUTLINED_FUNCTION_84();
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16);
            return 0;
          }

          return result;
      }
    }
  }

  return result;
}

uint64_t acc_protocolRouter_destroyProtocolLayer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    switch(*(result + 28))
    {
      case 3:
        platform_iapd_bridge_accessory_disconnected(*(result + 16));
        goto LABEL_36;
      case 4:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = iap2_endpoint_destroy((result + 56));
        break;
      case 5:
      case 6:
      case 7:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = ea_endpoint_destroy(result + 56);
        break;
      case 8:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = oobPairing_endpoint_destroy((result + 56));
        break;
      case 0xA:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = accAuthProtocol_endpoint_destroy((result + 56));
        break;
      case 0xB:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = configStream_endpoint_destroy(result + 56);
        break;
      case 0xD:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = audioProductCerts_endpoint_destroy(result + 56);
        break;
      case 0xE:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = mfi4Auth_endpoint_destroy((result + 56));
        break;
      case 0xF:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = accSNTPTimeSync_endpoint_destroy(result + 56);
        break;
      case 0x10:
        result = platform_systemInfo_supportsQiAuth();
        if (!result)
        {
          return result;
        }

        v3 = *(v1 + 56);
        v2 = (v1 + 56);
        if (v3)
        {

          result = qiAuth_endpoint_destroy(v2);
        }

        else
        {
LABEL_36:
          result = 1;
        }

        break;
      case 0x11:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = t56_endpoint_destroy((result + 56));
        break;
      case 0x12:
        if (!*(result + 56))
        {
          goto LABEL_36;
        }

        result = genericMFi_endpoint_destroy(result + 56);
        break;
      default:
        v4 = gLogObjects;
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 17;
        }

        else
        {
          v5 = 1;
        }

        if (v5 && OUTLINED_FUNCTION_21())
        {
          LODWORD(v17) = 134218240;
          HIDWORD(v17) = v4;
          OUTLINED_FUNCTION_2_21();
          OUTLINED_FUNCTION_26_0(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11, v17, HIDWORD(v4));
        }

        result = OUTLINED_FUNCTION_93();
        if (result)
        {
          OUTLINED_FUNCTION_84();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16);
          return 0;
        }

        return result;
    }
  }

  return result;
}

BOOL acc_protocolRouter_routeOutgoingSecureTunnelDataForClient(uint64_t a1, int a2, const __CFData *a3)
{
  result = 0;
  if (a1 && a3)
  {
    if (*(a1 + 28) == 14)
    {
      if (mfi4Auth_endpoint_processOutgoingSecureTunnelDataForClient(*(a1 + 56), a2, a3))
      {
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_9();
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 < 17;
      }

      if (v7 && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3_10();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13);
      }

      if (OUTLINED_FUNCTION_93())
      {
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_10_5(v14, v15, v16, v17, v18);
      }
    }

    v19 = gLogObjects;
    if ((!gLogObjects || gNumLogObjects < 17) && OUTLINED_FUNCTION_21())
    {
      LODWORD(v32) = 134218240;
      *(&v32 + 4) = v19;
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v28, v29, v30, v31, v32, DWORD2(v32));
    }

    result = OUTLINED_FUNCTION_21();
    if (result)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v20, v21, "Error routing incoming secure tunnel data for endpoint UUID: %@ with protocol: %{coreacc:ACCEndpoint_Protocol_t}d!", v22, v23, v24, v25);
      return 0;
    }
  }

  return result;
}

uint64_t acc_protocolRouter_setSecureTunnelDataTypeHandler(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    if (*(result + 28) == 14)
    {
      if (mfi4Auth_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler(*(result + 16), a2, a3))
      {
        return 1;
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_9();
      if (v4)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 < 17;
      }

      if (v5 && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3_10();
        OUTLINED_FUNCTION_26_0(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11);
      }

      if (OUTLINED_FUNCTION_93())
      {
        OUTLINED_FUNCTION_84();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_10_5(v12, v13, v14, v15, v16);
      }
    }

    v17 = gLogObjects;
    if ((!gLogObjects || gNumLogObjects < 17) && OUTLINED_FUNCTION_21())
    {
      LODWORD(v30) = 134218240;
      *(&v30 + 4) = v17;
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v24, v25, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v26, v27, v28, v29, v30, DWORD2(v30));
    }

    result = OUTLINED_FUNCTION_21();
    if (result)
    {
      OUTLINED_FUNCTION_4_17();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v18, v19, "Error routing incoming handler for endpoint UUID: %@ with protocol: %{coreacc:ACCEndpoint_Protocol_t}d!", v20, v21, v22, v23);
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_authStatusChanged(uint64_t result, int a2, char a3, char a4)
{
  if (result)
  {
    v4 = result;
    if (*(result + 32))
    {
      v8 = *result;
      if (*result)
      {
        v9 = *v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = gLogObjects;
      v11 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v12 = *(gLogObjects + 488);
      }

      else
      {
        v12 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          *buf = 134218240;
          v23 = v10;
          v24 = 1024;
          LODWORD(v25) = v11;
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(v4 + 8);
        v16 = *(v4 + 40);
        *buf = 136315906;
        v23 = "genericMFi_endpoint_authStatusChanged";
        v24 = 2112;
        v25 = v15;
        v26 = 1024;
        v27 = v16;
        v28 = 1024;
        v29 = a2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: %@, authStatus %{coreacc:ACCAuthInfo_Status_t}d -> %{coreacc:ACCAuthInfo_Status_t}d", buf, 0x22u);
      }

      v17 = OUTLINED_FUNCTION_33_4();
      v18[1] = 0x40000000;
      v18[2] = __genericMFi_endpoint_authStatusChanged_block_invoke;
      v18[3] = &__block_descriptor_tmp_16;
      v19 = a2;
      v20 = a3;
      v18[4] = v4;
      v18[5] = v9;
      v21 = a4;
      v18[6] = v8;
      dispatch_async(v17, v18);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void genericMFi_endpoint_publish(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_57();
  a24 = v25;
  a25 = v27;
  if (!v26)
  {
    goto LABEL_37;
  }

  v28 = v26;
  v29 = *v26;
  if (!*v26)
  {
    goto LABEL_37;
  }

  sig = v29->__sig;
  v31 = v29[1].__opaque[17];
  AuthStatus = acc_connection_getAuthStatus(v29->__sig, 1u);
  if (!AuthStatus)
  {
    AuthStatus = acc_connection_getAuthStatus(sig, 0);
  }

  if (*(v28 + 40) == AuthStatus && (v31 & 1) != 0)
  {
    if (AuthStatus)
    {
      goto LABEL_20;
    }

LABEL_11:
    v33 = mfi4Auth_endpoint_timeoutForTransportInSeconds(*(*v28 + 24));
    if (v33)
    {
      v34 = v33;
      v35 = gLogObjects;
      v36 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v37 = *(gLogObjects + 488);
      }

      else
      {
        v37 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          LODWORD(a9) = 134218240;
          *(&a9 + 4) = v35;
          OUTLINED_FUNCTION_3();
          *(&a9 + 14) = v36;
          OUTLINED_FUNCTION_39(&_mh_execute_header, v38, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
        }
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_70();
        WORD6(a9) = 2112;
        OUTLINED_FUNCTION_31_3();
        a11 = v34;
        OUTLINED_FUNCTION_64_0(&_mh_execute_header, v37, v40, "%s: %@, start authTimer: timeout %u", &a9);
      }

      v41 = *(v28 + 96);
      v42 = dispatch_time(0, 1000000000 * v34);
      dispatch_source_set_timer(v41, v42, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    goto LABEL_20;
  }

  *(v28 + 40) = AuthStatus;
  if (!AuthStatus)
  {
    goto LABEL_11;
  }

  genericMFi_endpoint_authStatusChanged(v28, AuthStatus, v31 ^ 1, 0);
  if (!*(v28 + 40))
  {
    goto LABEL_11;
  }

LABEL_20:
  v43 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *(&a9 + 14) = v43;
    OUTLINED_FUNCTION_35(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
  }

  if (OUTLINED_FUNCTION_81())
  {
    OUTLINED_FUNCTION_70();
    WORD6(a9) = 2112;
    OUTLINED_FUNCTION_31_3();
    a11 = v46;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_64_0(v47, v48, v49, v50, v51);
  }

  _genericMFi_endpoint_publishEA(v28);
  if (genericMFi_endpoint_publish_onceToken != -1)
  {
    dispatch_once(&genericMFi_endpoint_publish_onceToken, &__block_literal_global_13);
  }

  v52 = acc_endpoint_copyProperties(v29);
  if (v52)
  {
    v53 = v52;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v54 = *(gLogObjects + 488);
    }

    else
    {
      v54 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v62, v63, v64, v65, v66, 0x12u);
      }
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_24_5();
      *(&a9 + 14) = v53;
      OUTLINED_FUNCTION_15_1();
      _os_log_debug_impl(v58, v59, OS_LOG_TYPE_DEBUG, v60, v61, 0x16u);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    _genericMFi_endpoint_handlePropertiesDidChange(LocalCenter, v56, CFACCTransportPlugin_EndpointPropertiesDidChangeNotification, v57, v53);
    CFRelease(v53);
  }

LABEL_37:
  OUTLINED_FUNCTION_56();
}

void _genericMFi_endpoint_publishEA(uint64_t a1)
{
  if (a1)
  {
    if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v9, v10, v11, v12, v13, 0x12u);
    }

    v2 = OUTLINED_FUNCTION_45_4();
    if (os_log_type_enabled(v2, v3))
    {
      OUTLINED_FUNCTION_31_3();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v4, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 0x2Cu);
    }

    if (*(a1 + 72) && *(a1 + 40) == 2)
    {
      v8 = *(a1 + 8);
      if (*(a1 + 24) == 1)
      {
        platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(v8);
        platform_externalAccessory_updateEAAccessoryInfoForEndpointWithUUID(*(a1 + 8));
      }

      else
      {
        platform_externalAccessory_addEAAccessoryForPrimaryEndpoint(v8);
        *(a1 + 24) = 1;
      }
    }
  }
}

uint64_t genericMFi_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      acc_platform_packetLogging_logEvent(*v2, "DETACH", "GenericMFi detached!");
      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_10_0();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
      }

      v3 = OUTLINED_FUNCTION_45_4();
      if (os_log_type_enabled(v3, v4))
      {
        OUTLINED_FUNCTION_31_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_64_0(v5, v6, v7, v8, v9);
      }

      if (*(v2 + 24) == 1)
      {
        platform_externalAccessory_removeEAAccessoryForPrimaryEndpoint(*(v2 + 8));
      }

      dispatch_source_cancel(*(*v1 + 96));
      dispatch_release(*(*v1 + 96));
      dispatch_sync(*(v2 + 32), &__block_literal_global_9);
      dispatch_release(*(v2 + 32));
      *v1 = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t genericMFi_endpoint_getFeature(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 2)
    {
      return *(a1 + 8 * a2 + 104);
    }
  }

  return result;
}

BOOL genericMFi_endpoint_setFeature(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a2 >= 3;
  }

  else
  {
    v4 = 1;
  }

  result = !v4;
  if (result)
  {
    *(a1 + 8 * a2 + 104) = a3;
  }

  return result;
}

uint64_t genericMFi_endpoint_processIncomingData(uint64_t a1, CFTypeRef cf)
{
  v3 = 0;
  if (a1)
  {
    if (cf)
    {
      CFRetain(cf);
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      v3 = 0;
      if (BytePtr)
      {
        if (Length)
        {
          v7 = OUTLINED_FUNCTION_33_4();
          v15[1] = 0x40000000;
          v15[2] = __genericMFi_endpoint_processIncomingData_block_invoke;
          v15[3] = &__block_descriptor_tmp_21_0;
          v15[4] = a1;
          v15[5] = cf;
          dispatch_async(v7, v15);
          v3 = 1;
        }
      }
    }
  }

  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v10 = *(gLogObjects + 488);
  }

  else
  {
    v10 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      v16 = 134218240;
      v17 = v8;
      OUTLINED_FUNCTION_34_2();
      v18 = v9;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v16);
    }
  }

  if (OUTLINED_FUNCTION_81())
  {
    v16 = 136315650;
    v17 = "genericMFi_endpoint_processIncomingData";
    OUTLINED_FUNCTION_34_2();
    v18 = v3;
    v19 = 2112;
    v20 = cf;
    OUTLINED_FUNCTION_64_0(&_mh_execute_header, v10, v11, "%s: success %d, dataIn %@", &v16);
  }

  return v3;
}

void __genericMFi_endpoint_processIncomingData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2;
  if (*v2 && *v3)
  {
    if (*(v2 + 40) == 2)
    {
      acc_platform_packetLogging_logData(v3, @"Message", @"GenericMFi", *(a1 + 40), 1);
      _genericMFi_endpoint_processTLV();
    }

    else
    {
      v4 = logObjectForModule_1(0x3Du);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x26u);
      }
    }
  }

  CFRelease(*(a1 + 40));
}

void _genericMFi_endpoint_processTLV()
{
  OUTLINED_FUNCTION_33();
  v119 = v2;
  if (!v0)
  {
    v5 = 0;
LABEL_131:
    v4 = 0;
    goto LABEL_86;
  }

  v3 = v1;
  v4 = 0;
  v5 = 0;
  if (v1)
  {
    v6 = v0;
    if (*v0)
    {
      v7 = *(*v0 + 16);
      v8 = gLogObjects;
      v9 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v126 = v8;
        OUTLINED_FUNCTION_34_2();
        *v128 = v9;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v63, v64, v65, v66, v67, 0x12u);
      }

      if (OUTLINED_FUNCTION_24())
      {
        OUTLINED_FUNCTION_2_22();
        *&v128[8] = v10;
        *&v128[10] = v119;
        *&v128[18] = v10;
        *v129 = v3;
        OUTLINED_FUNCTION_10_1();
        _os_log_impl(v11, v12, v13, v14, v15, 0x2Au);
      }

      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v4 = 0;
      v5 = 0;
      if (BytePtr)
      {
        v18 = Length;
        if (Length)
        {
          v124 = 0;
          v19 = &BytePtr[Length];
          memset(__b, 170, 0x150uLL);
          TLV8BufferInit(__b, v18);
          v123 = 0;
          v121 = 0;
          v122 = 0;
          Next = TLV8GetNext(BytePtr, &BytePtr[v18], &v123, &v122, &v121, &v124);
          v21 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 62)
          {
            v22 = *(gLogObjects + 488);
          }

          else
          {
            v22 = &_os_log_default;
            if (OUTLINED_FUNCTION_19_0())
            {
              OUTLINED_FUNCTION_12_10();
              *v128 = v21;
              OUTLINED_FUNCTION_38_5();
              _os_log_error_impl(v68, v69, v70, v71, v72, 0x12u);
            }
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 136316418;
            v126 = "_genericMFi_endpoint_processTLV";
            v127 = 2112;
            *v128 = v7;
            *&v128[8] = 1024;
            *&v128[10] = v123;
            *&v128[14] = 1024;
            *&v128[16] = v123;
            *v129 = 2048;
            *&v129[2] = v121;
            *&v129[10] = 1024;
            *&v129[12] = Next;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", buf, 0x32u);
          }

          if (Next)
          {
            v106 = logObjectForModule_1(0x3Du);
            if (!OUTLINED_FUNCTION_16(v106))
            {
              goto LABEL_130;
            }

            OUTLINED_FUNCTION_2_22();
            *&v128[8] = 1024;
            *&v128[10] = Next;
            OUTLINED_FUNCTION_13_0();
            v112 = 28;
            goto LABEL_129;
          }

          if (v123 == 128)
          {
            if (!v122)
            {
              v113 = logObjectForModule_1(0x3Du);
              if (OUTLINED_FUNCTION_16(v113))
              {
                goto LABEL_128;
              }

              goto LABEL_130;
            }

            if (v121 == 2)
            {
              if (v124)
              {
                if (v19 > v124)
                {
                  MutableCopy = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v3);
                  if (MutableCopy)
                  {
                    v5 = MutableCopy;
                    v131.location = 0;
                    v131.length = 4;
                    CFDataDeleteBytes(MutableCopy, v131);
                    if (!*(v6 + 80))
                    {
                      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                      *(v6 + 80) = Mutable;
                      *(v6 + 88) = 0;
                      if (!Mutable)
                      {
                        v29 = gLogObjects;
                        v30 = gNumLogObjects;
                        if (gLogObjects && gNumLogObjects >= 62)
                        {
                          v31 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v31 = &_os_log_default;
                          if (OUTLINED_FUNCTION_21())
                          {
                            *buf = 134218240;
                            v126 = v29;
                            OUTLINED_FUNCTION_34_2();
                            *v128 = v30;
                            OUTLINED_FUNCTION_26_2(&_mh_execute_header, v97, v98, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (OUTLINED_FUNCTION_21())
                        {
                          OUTLINED_FUNCTION_2_22();
                          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create tlvSequenceAccumulator!!!", buf, 0x16u);
                        }

                        goto LABEL_85;
                      }
                    }

                    valuePtr = *v122;
                    v25 = v122[1];
                    if (valuePtr > v25)
                    {
                      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
                      {
                        OUTLINED_FUNCTION_30_3();
                        OUTLINED_FUNCTION_24_2(&_mh_execute_header, v90, v91, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      if (!OUTLINED_FUNCTION_18())
                      {
                        goto LABEL_72;
                      }

                      OUTLINED_FUNCTION_8_9();
                      *&v128[8] = 1024;
                      *&v128[10] = v26;
                      *&v128[14] = 1024;
                      *&v128[16] = v25;
LABEL_64:
                      OUTLINED_FUNCTION_28();
                      _os_log_error_impl(v41, v42, v43, v44, v45, 0x22u);
LABEL_72:
                      Count = CFDictionaryGetCount(*(v6 + 80));
                      v50 = gNumLogObjects;
                      if (gLogObjects)
                      {
                        v51 = gNumLogObjects <= 61;
                      }

                      else
                      {
                        v51 = 1;
                      }

                      v52 = !v51;
                      if (Count > *(v6 + 88))
                      {
                        if (v52)
                        {
                          v60 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v60 = &_os_log_default;
                          if (OUTLINED_FUNCTION_18())
                          {
                            OUTLINED_FUNCTION_12_10();
                            *v128 = v50;
                            OUTLINED_FUNCTION_24_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                        {
                          v75 = *(v6 + 88);
                          v76 = CFDictionaryGetCount(*(v6 + 80));
                          v77 = *(v6 + 80);
                          *buf = 136316418;
                          v126 = "_genericMFi_endpoint_processTLV";
                          v127 = 1024;
                          *v128 = 1791;
                          *&v128[4] = 2112;
                          *&v128[6] = v7;
                          *&v128[14] = 1024;
                          *&v128[16] = v75;
                          *v129 = 2048;
                          *&v129[2] = v76;
                          *&v129[10] = 2112;
                          *&v129[12] = v77;
                          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "%s:%d %@, maxSeq %d, tlvSequenceAccumulator(%ld) %@", buf, 0x36u);
                        }

                        v78 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        buf[0] = 0;
                        do
                        {
                          v79 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, buf);
                          Value = CFDictionaryGetValue(*(v6 + 80), v79);
                          v81 = CFDataGetBytePtr(Value);
                          v82 = CFDataGetLength(Value);
                          CFDataAppendBytes(v78, v81, v82);
                          if (v79)
                          {
                            CFRelease(v79);
                          }

                          ++buf[0];
                        }

                        while (*(v6 + 88) >= buf[0]);
                        if (gLogObjects && gNumLogObjects >= 62)
                        {
                          v83 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v83 = &_os_log_default;
                          if (OUTLINED_FUNCTION_27())
                          {
                            OUTLINED_FUNCTION_30_3();
                            OUTLINED_FUNCTION_39(&_mh_execute_header, v84, v85, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
                        {
                          CFDictionaryGetCount(*(v6 + 80));
                          OUTLINED_FUNCTION_2_22();
                          *&v128[8] = 2048;
                          *&v128[10] = v86;
                          *&v128[18] = 1024;
                          *v129 = v25;
                          *&v129[4] = v87;
                          *&v129[6] = v78;
                          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "%s: %@, tlvSequenceAccumulator count %ld, maxSeq %d, process fullData %@", buf, 0x30u);
                        }

                        _genericMFi_endpoint_processCompleteTLVData();
                        if (v78)
                        {
                          CFRelease(v78);
                        }
                      }

                      else
                      {
                        if (v52)
                        {
                          v53 = *(gLogObjects + 488);
                        }

                        else
                        {
                          v53 = &_os_log_default;
                          if (OUTLINED_FUNCTION_17())
                          {
                            OUTLINED_FUNCTION_12_10();
                            *v128 = v50;
                            OUTLINED_FUNCTION_35(&_mh_execute_header, v88, v89, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                          }
                        }

                        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                        {
                          CFDictionaryGetCount(*(v6 + 80));
                          OUTLINED_FUNCTION_2_22();
                          *&v128[8] = 2048;
                          *&v128[10] = v54;
                          *&v128[18] = 1024;
                          *v129 = v25;
                          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "%s: %@, tlvSequenceAccumulator count %ld, maxSeq %d, don't have full list yet.", buf, 0x26u);
                        }
                      }

LABEL_85:
                      v4 = 1;
                      goto LABEL_86;
                    }

                    if (*(v6 + 88))
                    {
                      if (*(v6 + 88) != v25)
                      {
                        if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
                        {
                          OUTLINED_FUNCTION_30_3();
                          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v99, v100, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                        }

                        if (!OUTLINED_FUNCTION_18())
                        {
                          goto LABEL_72;
                        }

                        OUTLINED_FUNCTION_8_9();
                        *&v128[8] = 1024;
                        *&v128[10] = v25;
                        *&v128[14] = 1024;
                        *&v128[16] = v40;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                      *(v6 + 88) = v25;
                    }

                    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt8Type, &valuePtr);
                    if (CFDictionaryGetValue(*(v6 + 80), v27))
                    {
                      v28 = gNumLogObjects;
                      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_12_10();
                        *v128 = v28;
                        OUTLINED_FUNCTION_38_5();
                        _os_log_error_impl(v92, v93, v94, v95, v96, 0x12u);
                      }

                      if (OUTLINED_FUNCTION_19_0())
                      {
                        OUTLINED_FUNCTION_8_9();
                        *&v128[8] = 1024;
                        *&v128[10] = v34;
                        OUTLINED_FUNCTION_38_5();
                        _os_log_error_impl(v35, v36, v37, v38, v39, 0x1Cu);
                      }
                    }

                    else
                    {
                      CFDictionaryAddValue(*(v6 + 80), v27, v5);
                      v32 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v33 = *(gLogObjects + 488);
                      }

                      else
                      {
                        v33 = &_os_log_default;
                        if (OUTLINED_FUNCTION_19_0())
                        {
                          OUTLINED_FUNCTION_12_10();
                          *v128 = v32;
                          OUTLINED_FUNCTION_38_5();
                          _os_log_error_impl(v101, v102, v103, v104, v105, 0x12u);
                        }
                      }

                      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
                      {
                        OUTLINED_FUNCTION_8_9();
                        *&v128[8] = v47;
                        *&v128[10] = v27;
                        *&v128[18] = v47;
                        *v129 = v5;
                        *&v129[8] = v47;
                        *&v129[10] = v48;
                        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s: %@, key %@, data %@, added to accumulator %@", buf, 0x34u);
                      }
                    }

                    if (v27)
                    {
                      CFRelease(v27);
                    }

                    goto LABEL_72;
                  }

                  v118 = logObjectForModule_1(0x3Du);
                  if (!OUTLINED_FUNCTION_16(v118))
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_128;
                }

                v117 = logObjectForModule_1(0x3Du);
                if (OUTLINED_FUNCTION_16(v117))
                {
LABEL_128:
                  OUTLINED_FUNCTION_2_22();
                  OUTLINED_FUNCTION_13_0();
                  v112 = 22;
                  goto LABEL_129;
                }
              }

              else
              {
                v116 = logObjectForModule_1(0x3Du);
                if (OUTLINED_FUNCTION_16(v116))
                {
                  goto LABEL_128;
                }
              }

LABEL_130:
              v5 = 0;
              goto LABEL_131;
            }

            v114 = logObjectForModule_1(0x3Du);
            if (!OUTLINED_FUNCTION_16(v114))
            {
              goto LABEL_130;
            }

            OUTLINED_FUNCTION_8_9();
            *&v128[8] = 2048;
            *&v128[10] = v115;
            OUTLINED_FUNCTION_13_0();
            v112 = 32;
LABEL_129:
            _os_log_error_impl(v107, v108, v109, v110, v111, v112);
            goto LABEL_130;
          }

          _genericMFi_endpoint_processCompleteTLVData();
          v4 = v46;
          v5 = 0;
        }
      }
    }
  }

LABEL_86:
  v55 = gLogObjects;
  v56 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v57 = *(gLogObjects + 488);
  }

  else
  {
    v57 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      v126 = v55;
      OUTLINED_FUNCTION_34_2();
      *v128 = v56;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  v58 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v58, v59))
  {
    OUTLINED_FUNCTION_2_22();
    *&v128[8] = 1024;
    *&v128[10] = v4;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s: %@, success %d", buf, 0x1Cu);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  OUTLINED_FUNCTION_29();
}

void genericMFi_endpoint_propertyDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, int a12, __int16 a13, __int16 a14, const __CFArray *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_90();
  a30 = v31;
  a31 = v33;
  v35 = v34;
  v37 = v36;
  v38 = v32;
  if (v32 && (v39 = *v32) != 0 && *v39)
  {
    v40 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v41 = *(gLogObjects + 488);
    }

    else
    {
      v41 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_4_8();
        *(&a11 + 14) = v40;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v94, v95, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
        v39 = *v38;
      }
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      LODWORD(a11) = 136315906;
      OUTLINED_FUNCTION_3_18();
      OUTLINED_FUNCTION_78_2();
      OUTLINED_FUNCTION_4();
      _os_log_impl(v42, v43, OS_LOG_TYPE_INFO, v44, v45, 0x2Au);
      v39 = *v38;
    }

    v46 = 0;
    if (v35 && v37 && v39[2])
    {
      if (genericMFi_util_isTLVProperty(v37))
      {
        v47 = OUTLINED_FUNCTION_48();
        v50 = CFStringCreateWithFormat(v47, v48, v49);
        v51 = OUTLINED_FUNCTION_48();
        v54 = CFStringCreateWithFormat(v51, v52, v53);
        acc_platform_packetLogging_logParsedData(*v38, v50, @"GenericMFi", v54, 1);
        if (v50)
        {
          CFRelease(v50);
        }

        if (v54)
        {
          CFRelease(v54);
        }

        v55 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v56 = *(gLogObjects + 488);
        }

        else
        {
          v56 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_4_8();
            *(&a11 + 14) = v55;
            OUTLINED_FUNCTION_39(&_mh_execute_header, v57, v58, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
          }
        }

        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(a11) = 136315906;
          OUTLINED_FUNCTION_3_18();
          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_4();
          _os_log_debug_impl(v59, v60, OS_LOG_TYPE_DEBUG, v61, v62, 0x2Au);
        }

        _genericMFi_endpoint_resetPropertyArray(v38, v37);
        _genericMFi_endpoint_resetSequenceAccumulator(v38);
        Count = CFArrayGetCount(v35);
        if (Count < 1)
        {
LABEL_30:
          v46 = 1;
          goto LABEL_31;
        }

        v64 = Count;
        v65 = 0;
        while (1)
        {
          CFArrayGetValueAtIndex(v35, v65);
          _genericMFi_endpoint_processTLV();
          if ((v66 & 1) == 0)
          {
            break;
          }

          if (v64 == ++v65)
          {
            goto LABEL_30;
          }
        }

        v71 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_4_8();
          *(&a11 + 14) = v71;
          OUTLINED_FUNCTION_39(&_mh_execute_header, v105, v106, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
        }

        if (OUTLINED_FUNCTION_27())
        {
          LODWORD(a11) = 136315906;
          OUTLINED_FUNCTION_3_18();
          OUTLINED_FUNCTION_78_2();
          OUTLINED_FUNCTION_4();
          _os_log_error_impl(v101, v102, OS_LOG_TYPE_ERROR, v103, v104, 0x2Au);
        }
      }

      else
      {
        v107 = logObjectForModule_1(0x3Du);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(a11) = 136315650;
          OUTLINED_FUNCTION_3_18();
          OUTLINED_FUNCTION_4();
          _os_log_debug_impl(v108, v109, OS_LOG_TYPE_DEBUG, v110, v111, 0x20u);
        }
      }

      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
  }

LABEL_31:
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v72, v73, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    LODWORD(a11) = 136315650;
    OUTLINED_FUNCTION_6_12();
    a14 = 1024;
    LODWORD(a15) = v46;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v78, v79, v80, v81, v82, 0x1Cu);
  }

  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v74, v75, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    LODWORD(a11) = 136315650;
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v83, v84, v85, v86, v87, 0x20u);
  }

  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
  {
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v76, v77, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    LODWORD(a11) = 136315650;
    OUTLINED_FUNCTION_6_12();
    a14 = v88;
    a15 = v35;
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v89, v90, v91, v92, v93, 0x20u);
    if (v46)
    {
      goto LABEL_55;
    }
  }

  else if (v46)
  {
    goto LABEL_55;
  }

  v67 = gLogObjects;
  v68 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
  {
    LODWORD(a11) = 134218240;
    *(&a11 + 4) = v67;
    WORD6(a11) = 1024;
    *(&a11 + 14) = v68;
    OUTLINED_FUNCTION_24_2(&_mh_execute_header, v69, v70, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a11);
  }

  if (OUTLINED_FUNCTION_78_0())
  {
    LODWORD(a11) = 136315906;
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_78_2();
    OUTLINED_FUNCTION_48_0();
    _os_log_debug_impl(v96, v97, v98, v99, v100, 0x2Au);
  }

LABEL_55:
  OUTLINED_FUNCTION_89();
}

void _genericMFi_endpoint_resetPropertyArray(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_50();
      if (v4)
      {
        v5 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 62)
        {
          v6 = *(gLogObjects + 488);
        }

        else
        {
          v6 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_10_0();
            *(&v20[3] + 2) = v5;
            OUTLINED_FUNCTION_35(&_mh_execute_header, v18, v19, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v20);
          }
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v20[0] = 136315650;
          OUTLINED_FUNCTION_7_0();
          v21 = v7;
          v22 = a2;
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 0x20u);
        }

        if (CFEqual(a2, @"MFi_AppMatch_TeamIDs_TLV"))
        {
          v14 = v2[8];
          v13 = v2 + 8;
          v12 = v14;
          if (!v14)
          {
            return;
          }

LABEL_22:
          CFRelease(v12);
          *v13 = 0;
          return;
        }

        if (CFEqual(a2, @"MFi_AppMatch_ProtocolStrings_TLV"))
        {
          v15 = v2[9];
          v13 = v2 + 9;
          v12 = v15;
          if (v15)
          {
            goto LABEL_22;
          }
        }

        else if (CFEqual(a2, @"MFi_AccessoryTypes_TLV"))
        {
          v16 = v2[6];
          v13 = v2 + 6;
          v12 = v16;
          if (v16)
          {
            goto LABEL_22;
          }
        }

        else if (CFEqual(a2, @"MFi_AccessoryAttributes_TLV"))
        {
          v17 = v2[7];
          v13 = v2 + 7;
          v12 = v17;
          if (v17)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }
}

void _genericMFi_endpoint_resetSequenceAccumulator(uint64_t a1)
{
  if (a1)
  {
    if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
    }

    v2 = OUTLINED_FUNCTION_66_1();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(a1 + 80);
      if (v4)
      {
        CFDictionaryGetCount(v4);
      }

      OUTLINED_FUNCTION_24_5();
      OUTLINED_FUNCTION_41_3();
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 0x26u);
    }

    v9 = *(a1 + 80);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 80) = 0;
    }

    *(a1 + 88) = 0;
  }
}

uint64_t genericMFi_endpoint_propertiesDidChange(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    CFRetain(cf);
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v7 = *(gLogObjects + 488);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_3();
        *(&v12[3] + 2) = v6;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12);
      }
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12[0] = 136315650;
      OUTLINED_FUNCTION_7_0();
      v13 = v9;
      v14 = cf;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: %@, %@", v12, 0x20u);
    }

    CFDictionaryApplyFunction(cf, _CFDictionaryApplierFunction_handlePropertiesChange_0, a1);
    CFRelease(cf);
  }

  return v3;
}

void _CFDictionaryApplierFunction_handlePropertiesChange_0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, int a12, __int16 a13, __int16 a14, const __CFArray *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a1 && a3)
  {
    if (*a3)
    {
      genericMFi_endpoint_propertyDidChange(a3, a1, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
    }
  }
}

uint64_t genericMFi_endpoint_certCapsValidForAppMatchLaunch(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_50();
    if (v2 && *v2)
    {
      if (acc_userDefaults_BOOLForKey(@"GenericMFiIgnoreCertCaps"))
      {
        return 1;
      }

      else
      {
        v3 = **v1;

        return acc_connection_isAuthenticatedForAppMatchLaunch(v3);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _genericMFi_endpoint_updatePropertyInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_90();
  a27 = v28;
  a28 = v31;
  v32 = v30;
  v33 = &audioProductCerts_endpoint_publish_onceToken;
  v34 = 0;
  if (!v29)
  {
    v36 = 0;
    goto LABEL_35;
  }

  if (!v30)
  {
    v36 = 0;
    goto LABEL_35;
  }

  v35 = v29;
  v36 = 0;
  if (*v29)
  {
    v37 = gLogObjects;
    v38 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v39 = *(gLogObjects + 488);
    }

    else
    {
      v39 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        LODWORD(buf) = 134218240;
        *(&buf + 4) = v37;
        WORD6(buf) = 1024;
        *(&buf + 14) = v38;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v40, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
      }
    }

    v42 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);
    if (v42)
    {
      OUTLINED_FUNCTION_47_1();
      _os_log_debug_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "%s: %@, propertyKey %@", &buf, 0x20u);
    }

    v43 = OUTLINED_FUNCTION_65_0(v42, @"MFi_AppMatch_TeamIDs_TLV");
    if (v43)
    {
      v44 = OUTLINED_FUNCTION_65_0(v43, @"MFi_AppMatch_ProtocolStrings_TLV");
      if (v44)
      {
        v45 = OUTLINED_FUNCTION_65_0(v44, @"MFi_AccessoryTypes_TLV");
        if (v45)
        {
          if (OUTLINED_FUNCTION_65_0(v45, @"MFi_AccessoryAttributes_TLV"))
          {
            genericMFi_util_SetOrRemoveProperty(*(v35 + 8), 0, 0, 0);
            v34 = 0;
            v36 = 0;
            goto LABEL_35;
          }

          v58 = *(v35 + 56);
          if (!v58)
          {
            goto LABEL_27;
          }

          Copy = CFDataCreateCopy(kCFAllocatorDefault, v58);
          v34 = _genericMFi_endpoint_convertJSONData2Dictionary(Copy);
          if (Copy)
          {
            CFRelease(Copy);
          }

          v48 = 0;
          v36 = @"MFi_AccessoryAttributes";
          if (!v34)
          {
            goto LABEL_34;
          }

LABEL_21:
          OUTLINED_FUNCTION_29_2();
          v49 = OUTLINED_FUNCTION_48();
          v52 = CFStringCreateWithFormat(v49, v50, v51);
          v53 = OUTLINED_FUNCTION_48();
          v56 = CFStringCreateWithFormat(v53, v54, v55);
LABEL_28:
          acc_platform_packetLogging_logParsedData(*v35, v52, @"GenericMFi", v56, 1);
          if (v52)
          {
            CFRelease(v52);
          }

          if (v56)
          {
            CFRelease(v56);
            OUTLINED_FUNCTION_89_1();
            v33 = v32;
            if ((v48 & 1) == 0)
            {
              goto LABEL_35;
            }

LABEL_32:
            _genericMFi_endpoint_publishEA(v35);
            goto LABEL_35;
          }

          v33 = v32;
LABEL_34:
          OUTLINED_FUNCTION_89_1();
          if (!v48)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        v57 = *(v35 + 48);
        if (v57)
        {
          v34 = CFArrayCreateCopy(kCFAllocatorDefault, v57);
          v48 = 0;
          v36 = @"MFi_AccessoryTypes";
          if (!v34)
          {
            goto LABEL_34;
          }

          goto LABEL_21;
        }

LABEL_27:
        OUTLINED_FUNCTION_29_2();
        v52 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"Property-%@");
        v56 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<Removed>");
        v48 = 0;
        v34 = 0;
        v36 = 0;
        goto LABEL_28;
      }

      v47 = *(v35 + 72);
      if (!v47)
      {
        goto LABEL_27;
      }

      v34 = CFArrayCreateCopy(kCFAllocatorDefault, v47);
      v36 = @"MFi_AppMatch_ProtocolStrings";
    }

    else
    {
      v46 = *(v35 + 64);
      if (!v46)
      {
        goto LABEL_27;
      }

      v34 = CFArrayCreateCopy(kCFAllocatorDefault, v46);
      v36 = @"MFi_AppMatch_TeamIDs";
    }

    v48 = 1;
    if (!v34)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

LABEL_35:
  v59 = *(v33 + 984);
  if (gLogObjects && v59 >= 62)
  {
    v60 = *(gLogObjects + 488);
  }

  else
  {
    v60 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_4_8();
      *(&buf + 14) = v59;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
    }
  }

  v61 = OUTLINED_FUNCTION_45_4();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_47_1();
    LOWORD(a14) = v63;
    *(&a14 + 2) = v36;
    WORD5(a14) = v63;
    *(&a14 + 12) = v34;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "%s: %@, propertyKey %@ -> %@, propertyValue %@", &buf, 0x34u);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  OUTLINED_FUNCTION_89();
}

void *_genericMFi_endpoint_convertJSONData2Dictionary(void *a1)
{
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v2 = *(gLogObjects + 488);
  }

  else
  {
    v2 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_14();
      _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_15_1();
    _os_log_debug_impl(v13, v14, OS_LOG_TYPE_DEBUG, v15, v16, 0x16u);
    if (!a1)
    {
      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    goto LABEL_12;
  }

  v3 = acc_json_data2object(a1);
  a1 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFDictionaryGetTypeID())
    {
      v5 = CFGetTypeID(a1);
      if (v5 != CFArrayGetTypeID())
      {
        CFRelease(a1);
        a1 = 0;
      }
    }
  }

LABEL_12:
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v22, v23, v24, v25, v26, 0x12u);
  }

  v6 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_24_5();
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 0x16u);
  }

  return a1;
}

void _genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary()
{
  OUTLINED_FUNCTION_33();
  if (!v0)
  {
    v3 = 0;
    Copy = 0;
    goto LABEL_87;
  }

  v2 = v1;
  v3 = 0;
  if (!v1)
  {
    Copy = 0;
    goto LABEL_87;
  }

  Copy = 0;
  if (!*v0)
  {
    goto LABEL_87;
  }

  v5 = *(*v0 + 16);
  v6 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_37_2();
    *&buf[14] = v6;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v148, v149, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v7 = OUTLINED_FUNCTION_45_4();
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v5;
    *&buf[22] = v9;
    *&v189 = v2;
    OUTLINED_FUNCTION_86_1(&_mh_execute_header, v10, v11, "%s: %@, dataIn %@", v12, v13, v14, v15, v157, v159, v160, v162, v163, v165, theDict, value, alloc, cf, v175, v177, v178, v180, valuePtr, v183, v184, v185, v186, v187);
  }

  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  Copy = 0;
  if (!BytePtr || (v3 = Length) == 0)
  {
    v3 = v5;
    goto LABEL_87;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  OUTLINED_FUNCTION_71_0(Mutable, v19, v20, v21, v22, v23, v24, v25, v157, v159, v160, v162, v163, v165, theDict, value, kCFAllocatorDefault, cf, v175, v177, v178, v5, valuePtr, v183, v184, v185, v186, v187, *buf, *&buf[8], *&buf[16], v189, *(&v189 + 1), v190, v191, v192);
  v26 = TLV8BufferInit(v193, v3);
  HIBYTE(v186) = 0;
  v184 = 0;
  v185 = 0;
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_76_2();
    goto LABEL_85;
  }

  theDicta = v2;
  valuea = 0;
  cfa = 0;
  v35 = &BytePtr[v3];
  *&v34 = 136316418;
  v176 = v34;
  Copy = 1024;
  *&v34 = 136315906;
  v161 = v34;
  *&v34 = 134218240;
  v164 = v34;
  *&v34 = 136315394;
  v158 = v34;
  while (1)
  {
    v36 = OUTLINED_FUNCTION_43_3(v26, v27, v28, v29, v30, v31, v32, v33, v158, *(&v158 + 1), v161, *(&v161 + 1), v164, *(&v164 + 1), theDicta, valuea, alloca, cfa, v176, *(&v176 + 1), v179, v181, valuePtr, v183, v184, v185, v186, SWORD2(v186), SBYTE6(v186), SHIBYTE(v186), v187);
    if (!gLogObjects || gNumLogObjects < 62)
    {
      v37 = OUTLINED_FUNCTION_13();
      if (v37)
      {
        OUTLINED_FUNCTION_5_17(v37, v38, v39, v40, v41, v42, v43, v44, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v84, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v87, 0x12u);
      }
    }

    v26 = OUTLINED_FUNCTION_75_3();
    if (v26)
    {
      OUTLINED_FUNCTION_81_1(v26, v27, v28, v29, v30, v31, v32, v33, v158, *(&v158 + 1), v161, *(&v161 + 1), v164, *(&v164 + 1), theDicta, valuea, alloca, cfa, v176);
      *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
      *&buf[12] = 2112;
      *&buf[14] = v181;
      OUTLINED_FUNCTION_20_6();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_68_2();
      _os_log_impl(v45, v46, v47, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v48, 0x32u);
    }

    if (v36)
    {
      break;
    }

    if (HIBYTE(v186) == 2)
    {
      if (v185 && v184)
      {
        valuePtr = OUTLINED_FUNCTION_56_3(v26, v27, v28, v29, v30, v31, v32, v33, v158, *(&v158 + 1), v161, *(&v161 + 1), v164, *(&v164 + 1), theDicta, valuea, alloca, cfa, v176, *(&v176 + 1), v179, v181, valuePtr, v183, SHIDWORD(v183));
        if (HIDWORD(v183) || cfb)
        {
          if (!gLogObjects || gNumLogObjects < 62)
          {
            v67 = OUTLINED_FUNCTION_13();
            if (v67)
            {
              OUTLINED_FUNCTION_5_17(v67, v68, v69, v70, v71, v72, v73, v74, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v114, v115, v116, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v117, 0x12u);
            }
          }

          v75 = OUTLINED_FUNCTION_59();
          if (v75)
          {
            OUTLINED_FUNCTION_79_1(v75, v27, v28, v29, v30, v31, v32, v33, v158, *(&v158 + 1), v161);
            *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
            *&buf[12] = 2112;
            OUTLINED_FUNCTION_19_6();
            WORD2(v189) = v109;
            *(&v189 + 6) = cfb;
            OUTLINED_FUNCTION_36_3();
            _os_log_error_impl(v110, v111, v112, "%s: %@, Failed to get tlv number value(err %d) or matchAction already exists(%@)!!!", v113, 0x26u);
          }

          v26 = cfb;
          if (cfb)
          {
            CFRelease(cfb);
          }

          cfa = 0;
        }

        else
        {
          v26 = CFNumberCreate(alloca, kCFNumberSInt64Type, &valuePtr);
          cfa = v26;
        }
      }

      goto LABEL_58;
    }

    if (HIBYTE(v186) == 1)
    {
      v27 = v185;
      if (!v185)
      {
        goto LABEL_58;
      }

      v28 = v184;
      if (!v184)
      {
        goto LABEL_58;
      }

      v49 = OUTLINED_FUNCTION_57_3(alloca, v185, v184);
      if (v49)
      {
        v50 = v49;
        v51 = valuea;
        if (valuea || (v51 = CFStringCreateMutable(alloca, 0)) != 0)
        {
          valuea = v51;
          CFStringAppend(v51, v50);
        }

        else
        {
          if (gLogObjects && gNumLogObjects >= 62)
          {
            v88 = *(gLogObjects + 488);
          }

          else
          {
            v93 = OUTLINED_FUNCTION_13();
            v88 = &_os_log_default;
            if (v93)
            {
              OUTLINED_FUNCTION_5_17(v93, v94, v95, v96, v97, v98, v99, v100, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v123, v124, v125, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v126, 0x12u);
              v88 = &_os_log_default;
            }
          }

          v101 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
          if (v101)
          {
            OUTLINED_FUNCTION_77_2(v101, v102, v103, v104, v105, v106, v107, v108, v158);
            OUTLINED_FUNCTION_10_10();
            _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create protocolString main string!!!", v122, 0x16u);
          }

          valuea = 0;
        }

        CFRelease(v50);
        goto LABEL_58;
      }

      if (!gLogObjects || gNumLogObjects < 62)
      {
        v76 = OUTLINED_FUNCTION_13();
        if (v76)
        {
          OUTLINED_FUNCTION_5_17(v76, v77, v78, v79, v80, v81, v82, v83, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v118, v119, v120, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v121, 0x12u);
        }
      }

      v26 = OUTLINED_FUNCTION_59();
      if (!v26)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_77_2(v26, v27, v28, v29, v30, v31, v32, v33, v158);
      OUTLINED_FUNCTION_10_10();
      OUTLINED_FUNCTION_36_3();
      v65 = "%s: %@, Failed to create protocolString fragment string!!!";
      v66 = 22;
    }

    else
    {
      if (!gLogObjects || gNumLogObjects < 62)
      {
        v52 = OUTLINED_FUNCTION_13();
        if (v52)
        {
          OUTLINED_FUNCTION_5_17(v52, v53, v54, v55, v56, v57, v58, v59, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v89, v90, v91, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v92, 0x12u);
        }
      }

      v26 = OUTLINED_FUNCTION_59();
      if (!v26)
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_79_1(v26, v27, v28, v29, v30, v31, v32, v33, v158, *(&v158 + 1), v161);
      *&buf[4] = "_genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary";
      *&buf[12] = 2112;
      OUTLINED_FUNCTION_19_6();
      WORD2(v189) = 1024;
      *(&v189 + 6) = v60;
      OUTLINED_FUNCTION_36_3();
      v65 = "%s: %@, Unexpected TLV type(%d/0x%x)!!!";
      v66 = 34;
    }

    _os_log_error_impl(v61, v62, v63, v65, v64, v66);
LABEL_58:
    if (!v187 || v187 >= v35)
    {
      goto LABEL_78;
    }
  }

  Copy = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v127 = v181;
  }

  else
  {
    v128 = OUTLINED_FUNCTION_18();
    v127 = v181;
    if (v128)
    {
      OUTLINED_FUNCTION_55_0(v128, v129, v130, v131, v132, v133, v134, v135, v158, *(&v158 + 1), v161, *(&v161 + 1), v164);
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v155, v156, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_18())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v127;
    *&buf[22] = 1024;
    LODWORD(v189) = v36;
    OUTLINED_FUNCTION_28();
    _os_log_error_impl(v150, v151, v152, v153, v154, 0x1Cu);
  }

LABEL_78:
  v3 = valuea;
  if (valuea && cfa)
  {
    v2 = theDicta;
    CFDictionaryAddValue(theDicta, @"ProtocolString", valuea);
    CFDictionaryAddValue(theDicta, @"MatchAction", cfa);
    Copy = CFDictionaryCreateCopy(alloca, theDicta);
    CFRelease(valuea);
    v3 = v181;
    goto LABEL_84;
  }

  v2 = theDicta;
  if (valuea)
  {
    CFRelease(valuea);
  }

  OUTLINED_FUNCTION_76_2();
  if (cfa)
  {
LABEL_84:
    CFRelease(cfa);
  }

LABEL_85:
  if (v2)
  {
    CFRelease(v2);
  }

LABEL_87:
  v136 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_37_2();
    *&buf[14] = v136;
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v143, v144, v145, v146, v147, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v3;
    *&buf[22] = v137;
    *&v189 = Copy;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v138, v139, v140, v141, v142, 0x20u);
  }

  OUTLINED_FUNCTION_29();
}

void _genericMFi_endpoint_processFullPropertyTLVData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, int a10, __int16 a11, __int16 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_57();
  a25 = v26;
  a26 = v31;
  if (v27)
  {
    v32 = v30;
    v33 = 0;
    if (!v30)
    {
      goto LABEL_93;
    }

    v34 = v29;
    if (!v29)
    {
      goto LABEL_93;
    }

    if (!v28)
    {
      goto LABEL_93;
    }

    v35 = v27;
    if (!*v27)
    {
      goto LABEL_93;
    }

    v36 = *(*v27 + 16);
    v37 = gLogObjects;
    v38 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_17())
    {
      LODWORD(a9) = 134218240;
      *(&a9 + 4) = v37;
      OUTLINED_FUNCTION_3();
      *(&a9 + 14) = v38;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v97, v98, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
    }

    if (OUTLINED_FUNCTION_81())
    {
      LODWORD(a9) = 136315906;
      *(&a9 + 4) = "_genericMFi_endpoint_processFullPropertyTLVData";
      OUTLINED_FUNCTION_24_5();
      *(&a9 + 14) = v36;
      a12 = 1024;
      LODWORD(a13) = v34;
      WORD2(a13) = v39;
      *(&a13 + 6) = v32;
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v40, v41, OS_LOG_TYPE_DEFAULT, v42, v43, 0x26u);
    }

    BytePtr = CFDataGetBytePtr(v32);
    Length = CFDataGetLength(v32);
    if (v34 == 33)
    {
      v55 = OUTLINED_FUNCTION_45_4();
      _genericMFi_endpoint_initFeature(v55, v56);
      if (OUTLINED_FUNCTION_65_0(v57, @"MFi_AccessoryAttributes_TLV") == kCFCompareEqualTo)
      {
        if (!BytePtr || !Length)
        {
          goto LABEL_92;
        }

        if (v35[7])
        {
          v95 = gLogObjects;
          v96 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_18())
          {
            LODWORD(a9) = 134218240;
            *(&a9 + 4) = v95;
            OUTLINED_FUNCTION_3();
            *(&a9 + 14) = v96;
            OUTLINED_FUNCTION_24_2(&_mh_execute_header, v154, v155, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
          }

          if (OUTLINED_FUNCTION_18())
          {
            OUTLINED_FUNCTION_0_9();
            OUTLINED_FUNCTION_69_1();
            OUTLINED_FUNCTION_28();
            _os_log_error_impl(v149, v150, v151, v152, v153, 0x20u);
          }

          v101 = v35[7];
          if (v101)
          {
            CFRelease(v101);
            v35[7] = 0;
          }
        }

        v102 = CFDataCreate(kCFAllocatorDefault, BytePtr, Length);
        v35[7] = v102;
        if (v102)
        {
          goto LABEL_92;
        }

        v103 = logObjectForModule_1(0x3Du);
        if (!OUTLINED_FUNCTION_16(v103))
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v136, v137, v138, v139, v140, 0x12u);
      }

      if (!OUTLINED_FUNCTION_21())
      {
        goto LABEL_92;
      }

LABEL_78:
      OUTLINED_FUNCTION_0_9();
      OUTLINED_FUNCTION_69_1();
      OUTLINED_FUNCTION_14();
      v66 = 32;
LABEL_79:
      _os_log_error_impl(v61, v62, v63, v64, v65, v66);
      goto LABEL_92;
    }

    if (v34 != 17)
    {
      if (v34 != 32)
      {
        if (v34 != 16)
        {
          v58 = gLogObjects;
          v59 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
          {
            LODWORD(a9) = 134218240;
            *(&a9 + 4) = v58;
            OUTLINED_FUNCTION_3();
            *(&a9 + 14) = v59;
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v116, v117, v118, v119, v120, 0x12u);
          }

          if (!OUTLINED_FUNCTION_13())
          {
            goto LABEL_92;
          }

          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_41_3();
          LODWORD(a13) = v34;
          WORD2(a13) = v60;
          *(&a13 + 6) = v34;
          OUTLINED_FUNCTION_13_0();
          v66 = 34;
          goto LABEL_79;
        }

        v46 = OUTLINED_FUNCTION_66_1();
        _genericMFi_endpoint_initFeature(v46, v47);
        if (OUTLINED_FUNCTION_65_0(v48, @"MFi_AppMatch_TeamIDs_TLV"))
        {
          if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_2_3();
            OUTLINED_FUNCTION_14();
            _os_log_error_impl(v126, v127, v128, v129, v130, 0x12u);
          }

          if (!OUTLINED_FUNCTION_21())
          {
            goto LABEL_92;
          }

          goto LABEL_78;
        }

        if (!BytePtr || !Length)
        {
          goto LABEL_92;
        }

        v78 = OUTLINED_FUNCTION_63_0();
        v81 = OUTLINED_FUNCTION_57_3(v78, v79, v80);
        if (v81)
        {
          v82 = v81;
          Mutable = v35[8];
          if (Mutable || (v84 = OUTLINED_FUNCTION_48(), Mutable = CFArrayCreateMutable(v84, v85, v86), (v35[8] = Mutable) != 0))
          {
            CFArrayAppendValue(Mutable, v82);
LABEL_92:
            v33 = 1;
            goto LABEL_93;
          }

          v141 = logObjectForModule_1(0x3Du);
          if (!OUTLINED_FUNCTION_16(v141))
          {
            goto LABEL_92;
          }
        }

        else
        {
          v99 = logObjectForModule_1(0x3Du);
          if (!OUTLINED_FUNCTION_16(v99))
          {
            goto LABEL_92;
          }
        }

LABEL_109:
        OUTLINED_FUNCTION_0_9();
        OUTLINED_FUNCTION_13_0();
        v66 = 22;
        goto LABEL_79;
      }

      v52 = OUTLINED_FUNCTION_45_4();
      _genericMFi_endpoint_initFeature(v52, v53);
      if (OUTLINED_FUNCTION_65_0(v54, @"MFi_AccessoryTypes_TLV"))
      {
        if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v131, v132, v133, v134, v135, 0x12u);
        }

        if (!OUTLINED_FUNCTION_21())
        {
          goto LABEL_92;
        }

        goto LABEL_78;
      }

      if (!BytePtr || !Length)
      {
        goto LABEL_92;
      }

      v87 = OUTLINED_FUNCTION_63_0();
      v90 = OUTLINED_FUNCTION_57_3(v87, v88, v89);
      if (!v90)
      {
        v100 = logObjectForModule_1(0x3Du);
        if (!OUTLINED_FUNCTION_16(v100))
        {
          goto LABEL_92;
        }

        goto LABEL_109;
      }

      v73 = v90;
      v91 = v35[6];
      if (v91 || (v92 = OUTLINED_FUNCTION_48(), v91 = CFArrayCreateMutable(v92, v93, v94), (v35[6] = v91) != 0))
      {
        CFArrayAppendValue(v91, v73);
      }

      else
      {
        v142 = logObjectForModule_1(0x3Du);
        if (OUTLINED_FUNCTION_21_0(v142))
        {
          OUTLINED_FUNCTION_0_9();
          OUTLINED_FUNCTION_14();
          _os_log_error_impl(v143, v144, v145, v146, v147, 0x16u);
        }
      }

LABEL_56:
      CFRelease(v73);
      goto LABEL_92;
    }

    v49 = OUTLINED_FUNCTION_66_1();
    _genericMFi_endpoint_initFeature(v49, v50);
    if (OUTLINED_FUNCTION_65_0(v51, @"MFi_AppMatch_ProtocolStrings_TLV"))
    {
      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_2_3();
        OUTLINED_FUNCTION_14();
        _os_log_error_impl(v121, v122, v123, v124, v125, 0x12u);
      }

      if (!OUTLINED_FUNCTION_21())
      {
        goto LABEL_92;
      }

      goto LABEL_78;
    }

    if (!BytePtr || !Length)
    {
      goto LABEL_92;
    }

    v67 = OUTLINED_FUNCTION_63_0();
    v71 = CFDataCreateWithBytesNoCopy(v67, v68, v69, v70);
    _genericMFi_endpoint_appMatchProtocolPropertyTLV2Dictionary();
    v73 = v72;
    if (v72)
    {
      v74 = v35[9];
      if (v74 || (v75 = OUTLINED_FUNCTION_48(), v74 = CFArrayCreateMutable(v75, v76, v77), (v35[9] = v74) != 0))
      {
        CFArrayAppendValue(v74, v73);
        goto LABEL_105;
      }

      v156 = logObjectForModule_1(0x3Du);
      if (!OUTLINED_FUNCTION_21_0(v156))
      {
LABEL_105:
        if (v71)
        {
          CFRelease(v71);
        }

        if (!v73)
        {
          goto LABEL_92;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v148 = logObjectForModule_1(0x3Du);
      if (!OUTLINED_FUNCTION_21_0(v148))
      {
        goto LABEL_105;
      }
    }

    OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v157, v158, v159, v160, v161, 0x16u);
    goto LABEL_105;
  }

  v33 = 0;
LABEL_93:
  v104 = gLogObjects;
  v105 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
  {
    LODWORD(a9) = 134218240;
    *(&a9 + 4) = v104;
    OUTLINED_FUNCTION_3();
    *(&a9 + 14) = v105;
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v111, v112, v113, v114, v115, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    OUTLINED_FUNCTION_0_9();
    OUTLINED_FUNCTION_41_3();
    LODWORD(a13) = v33;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v106, v107, v108, v109, v110, 0x1Cu);
  }

  OUTLINED_FUNCTION_56();
}

void _genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary()
{
  OUTLINED_FUNCTION_33();
  if (!v0)
  {
    v3 = 0;
    Copy = 0;
    goto LABEL_85;
  }

  v2 = v1;
  v3 = 0;
  if (!v1)
  {
    Copy = 0;
    goto LABEL_85;
  }

  Copy = 0;
  if (!*v0)
  {
    goto LABEL_85;
  }

  v5 = *(*v0 + 16);
  v6 = gLogObjects;
  v7 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 1024;
    *&buf[14] = v7;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v10 = OUTLINED_FUNCTION_45_4();
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v5;
    *&buf[22] = v12;
    *&v179 = v2;
    OUTLINED_FUNCTION_86_1(&_mh_execute_header, v13, v14, "%s: %@, dataIn %@", v15, v16, v17, v18, v148, v150, v151, v153, v154, v156, theDict, v159, v161, alloc, v165, v167, v168, v170, valuePtr, v173, v174, v175, v176, v177);
  }

  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  Copy = 0;
  if (!BytePtr || (v3 = Length) == 0)
  {
    v3 = v5;
    goto LABEL_85;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  OUTLINED_FUNCTION_71_0(Mutable, v22, v23, v24, v25, v26, v27, v28, v148, v150, v151, v153, v154, v156, theDict, v159, v161, kCFAllocatorDefault, v165, v167, v168, v5, valuePtr, v173, v174, v175, v176, v177, *buf, *&buf[8], *&buf[16], v179, *(&v179 + 1), v180, v181, v182);
  v29 = TLV8BufferInit(v183, v3);
  HIBYTE(v176) = 0;
  v174 = 0;
  v175 = 0;
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_76_2();
    goto LABEL_83;
  }

  theDicta = v2;
  v160 = 0;
  v162 = 0;
  v38 = &BytePtr[v3];
  *&v37 = 136316418;
  v166 = v37;
  Copy = 1024;
  *&v37 = 136315906;
  v152 = v37;
  *&v37 = 134218240;
  v155 = v37;
  *&v37 = 136315394;
  v149 = v37;
  while (1)
  {
    v39 = OUTLINED_FUNCTION_43_3(v29, v30, v31, v32, v33, v34, v35, v36, v149, *(&v149 + 1), v152, *(&v152 + 1), v155, *(&v155 + 1), theDicta, v160, v162, alloca, v166, *(&v166 + 1), v169, v171, valuePtr, v173, v174, v175, v176, SWORD2(v176), SBYTE6(v176), SHIBYTE(v176), v177);
    if (!gLogObjects || gNumLogObjects < 62)
    {
      v40 = OUTLINED_FUNCTION_13();
      if (v40)
      {
        OUTLINED_FUNCTION_9_9(v40, v41, v42, v43, v44, v45, v46, v47, v149, *(&v149 + 1), v152, *(&v152 + 1), v155);
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v88, v89, v90, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v91, 0x12u);
      }
    }

    v29 = OUTLINED_FUNCTION_75_3();
    if (v29)
    {
      OUTLINED_FUNCTION_81_1(v29, v30, v31, v32, v33, v34, v35, v36, v149, *(&v149 + 1), v152, *(&v152 + 1), v155, *(&v155 + 1), theDicta, v160, v162, alloca, v166);
      *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
      *&buf[12] = 2112;
      *&buf[14] = v171;
      OUTLINED_FUNCTION_20_6();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_68_2();
      _os_log_impl(v48, v49, v50, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v51, 0x32u);
    }

    if (v39)
    {
      break;
    }

    if (HIBYTE(v176) == 2)
    {
      if (!v175 || !v174)
      {
        goto LABEL_57;
      }

      v55 = OUTLINED_FUNCTION_56_3(v29, v30, v31, v32, v33, v34, v35, v36, v149, *(&v149 + 1), v152, *(&v152 + 1), v155, *(&v155 + 1), theDicta, v160, v162, alloca, v166, *(&v166 + 1), v169, v171, valuePtr, v173, SHIDWORD(v173));
      valuePtr = v55;
      if (!HIDWORD(v173) && v55 <= 0x7E && !v162)
      {
        v29 = CFNumberCreate(alloca, kCFNumberSInt64Type, &valuePtr);
        v162 = v29;
        goto LABEL_57;
      }

      if (!gLogObjects || gNumLogObjects < 62)
      {
        v71 = OUTLINED_FUNCTION_13();
        if (v71)
        {
          OUTLINED_FUNCTION_9_9(v71, v72, v73, v74, v75, v76, v77, v78, v149, *(&v149 + 1), v152, *(&v152 + 1), v155);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v107, v108, v109, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v110, 0x12u);
        }
      }

      v29 = OUTLINED_FUNCTION_59();
      if (!v29)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_1(v29, v30, v31, v32, v33, v34, v35, v36, v149, *(&v149 + 1), v152);
      *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
      *&buf[12] = 2112;
      OUTLINED_FUNCTION_19_6();
      WORD2(v179) = v79;
      *(&v179 + 6) = v162;
      OUTLINED_FUNCTION_36_3();
      v69 = "%s: %@, Failed to get tlv number value(err %d) or launchMethod already exists(%@)!!!";
      v70 = 38;
    }

    else if (HIBYTE(v176) == 1)
    {
      v30 = v175;
      if (!v175)
      {
        goto LABEL_57;
      }

      v31 = v174;
      if (!v174)
      {
        goto LABEL_57;
      }

      v52 = OUTLINED_FUNCTION_57_3(alloca, v175, v174);
      if (v52)
      {
        v53 = v52;
        v54 = v160;
        if (v160 || (v54 = CFStringCreateMutable(alloca, 0)) != 0)
        {
          v160 = v54;
          CFStringAppend(v54, v53);
        }

        else
        {
          v92 = gLogObjects;
          v93 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 62)
          {
            v94 = *(gLogObjects + 488);
          }

          else
          {
            v94 = &_os_log_default;
            if (OUTLINED_FUNCTION_13())
            {
              *buf = v155;
              *&buf[4] = v92;
              *&buf[12] = 1024;
              *&buf[14] = v93;
              OUTLINED_FUNCTION_13_0();
              _os_log_error_impl(v116, v117, v118, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v119, 0x12u);
              v94 = &_os_log_default;
            }
          }

          v99 = OUTLINED_FUNCTION_27();
          if (v99)
          {
            OUTLINED_FUNCTION_77_2(v99, v100, v101, v102, v103, v104, v105, v106, v149);
            OUTLINED_FUNCTION_10_10();
            _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create bundleID main string!!!", v115, 0x16u);
          }

          v160 = 0;
        }

        CFRelease(v53);
        goto LABEL_57;
      }

      if (!gLogObjects || gNumLogObjects < 62)
      {
        v80 = OUTLINED_FUNCTION_13();
        if (v80)
        {
          OUTLINED_FUNCTION_9_9(v80, v81, v82, v83, v84, v85, v86, v87, v149, *(&v149 + 1), v152, *(&v152 + 1), v155);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v111, v112, v113, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v114, 0x12u);
        }
      }

      v29 = OUTLINED_FUNCTION_59();
      if (!v29)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_77_2(v29, v30, v31, v32, v33, v34, v35, v36, v149);
      OUTLINED_FUNCTION_10_10();
      OUTLINED_FUNCTION_36_3();
      v69 = "%s: %@, Failed to create bundleID fragment string!!!";
      v70 = 22;
    }

    else
    {
      if (!gLogObjects || gNumLogObjects < 62)
      {
        v56 = OUTLINED_FUNCTION_13();
        if (v56)
        {
          OUTLINED_FUNCTION_9_9(v56, v57, v58, v59, v60, v61, v62, v63, v149, *(&v149 + 1), v152, *(&v152 + 1), v155);
          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v95, v96, v97, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v98, 0x12u);
        }
      }

      v29 = OUTLINED_FUNCTION_59();
      if (!v29)
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_79_1(v29, v30, v31, v32, v33, v34, v35, v36, v149, *(&v149 + 1), v152);
      *&buf[4] = "_genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary";
      *&buf[12] = 2112;
      OUTLINED_FUNCTION_19_6();
      WORD2(v179) = 1024;
      *(&v179 + 6) = v64;
      OUTLINED_FUNCTION_36_3();
      v69 = "%s: %@, Unexpected TLV type(%d/0x%x)!!!";
      v70 = 34;
    }

    _os_log_error_impl(v65, v66, v67, v69, v68, v70);
LABEL_57:
    if (!v177 || v177 >= v38)
    {
      goto LABEL_76;
    }
  }

  Copy = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v120 = v171;
  }

  else
  {
    v121 = OUTLINED_FUNCTION_18();
    v120 = v171;
    if (v121)
    {
      OUTLINED_FUNCTION_55_0(v121, v122, v123, v124, v125, v126, v127, v128, v149, *(&v149 + 1), v152, *(&v152 + 1), v155);
      OUTLINED_FUNCTION_24_2(&_mh_execute_header, v146, v147, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_18())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v120;
    *&buf[22] = 1024;
    LODWORD(v179) = v39;
    OUTLINED_FUNCTION_28();
    _os_log_error_impl(v141, v142, v143, v144, v145, 0x1Cu);
  }

LABEL_76:
  v3 = v160;
  if (v160 && v162)
  {
    v2 = theDicta;
    CFDictionaryAddValue(theDicta, @"BundleID", v160);
    CFDictionaryAddValue(theDicta, @"LaunchMethod", v162);
    Copy = CFDictionaryCreateCopy(alloca, theDicta);
    CFRelease(v160);
    v3 = v171;
    goto LABEL_82;
  }

  v2 = theDicta;
  if (v160)
  {
    CFRelease(v160);
  }

  OUTLINED_FUNCTION_76_2();
  if (v162)
  {
LABEL_82:
    CFRelease(v162);
  }

LABEL_83:
  if (v2)
  {
    CFRelease(v2);
  }

LABEL_85:
  v129 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_37_2();
    *&buf[14] = v129;
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v136, v137, v138, v139, v140, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_15_9();
    *&buf[14] = v3;
    *&buf[22] = v130;
    *&v179 = Copy;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v131, v132, v133, v134, v135, 0x20u);
  }

  OUTLINED_FUNCTION_29();
}

void _genericMFi_endpoint_processFullMessageTLVData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, CFTypeRef cfa, int a12, __int16 a13, char a14, unsigned __int8 valuePtr, __int128 buf, int a17, __int16 a18, __int16 a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  OUTLINED_FUNCTION_90();
  a32 = v34;
  a33 = v37;
  if (v38)
  {
    v39 = v36;
    v40 = 0;
    if (!v36)
    {
      goto LABEL_20;
    }

    v41 = v35;
    if (!v35)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_50();
    if (!v42)
    {
      goto LABEL_20;
    }

    v43 = *(v42 + 16);
    v44 = gLogObjects;
    v45 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 62)
    {
      v46 = *(gLogObjects + 488);
    }

    else
    {
      v46 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        LODWORD(buf) = 134218240;
        *(&buf + 4) = v44;
        WORD6(buf) = 1024;
        *(&buf + 14) = v45;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
      }
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11_7();
      a19 = 1024;
      LODWORD(a20) = v41;
      WORD2(a20) = v49;
      *(&a20 + 6) = v39;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "%s: %@, tlvType %d, tlvValueData %@", &buf, 0x26u);
    }

    BytePtr = CFDataGetBytePtr(v39);
    Length = CFDataGetLength(v39);
    if (v41 != 1)
    {
      v52 = gLogObjects;
      v53 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
      {
        LODWORD(buf) = 134218240;
        *(&buf + 4) = v52;
        WORD6(buf) = 1024;
        *(&buf + 14) = v53;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v76, v77, v78, v79, v80, 0x12u);
      }

      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_11_7();
        a19 = 1024;
        LODWORD(a20) = v41;
        WORD2(a20) = 1024;
        *(&a20 + 6) = v41;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v66, v67, v68, v69, v70, 0x22u);
      }

LABEL_19:
      v40 = 1;
      goto LABEL_20;
    }

    v60 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, BytePtr, Length, kCFAllocatorNull);
    _genericMFi_endpoint_requestAppLaunchMessageTLV2Dictionary();
    v62 = v61;
    if (v61)
    {
      Value = CFDictionaryGetValue(v61, @"BundleID");
      valuePtr = 0;
      v63 = CFDictionaryGetValue(v62, @"LaunchMethod");
      if (v63)
      {
        CFNumberGetValue(v63, kCFNumberSInt8Type, &valuePtr);
      }

      cf = v60;
      _genericMFi_endpoint_initFeature(v33, 2);
      v64 = gLogObjects;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v65 = *(gLogObjects + 488);
      }

      else
      {
        v65 = &_os_log_default;
        if (OUTLINED_FUNCTION_18())
        {
          LODWORD(buf) = 134218240;
          *(&buf + 4) = v64;
          OUTLINED_FUNCTION_62_1();
          OUTLINED_FUNCTION_24_2(&_mh_execute_header, v87, v88, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &buf);
        }
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 136315906;
        *(&buf + 4) = "_genericMFi_endpoint_processFullMessageTLVData";
        WORD6(buf) = 2112;
        *(&buf + 14) = v43;
        a19 = 2112;
        *&a20 = Value;
        WORD4(a20) = 1024;
        *(&a20 + 10) = valuePtr;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_INFO, "%s: %@, requestAppLaunch: appBundleID %@, launchMethod %d", &buf, 0x26u);
      }

      genericMFi_appLaunch_requestAppLaunch(v33, Value, valuePtr);
      v60 = cf;
      if (!cf)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v81 = gLogObjects;
      if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
      {
        LODWORD(buf) = 134218240;
        *(&buf + 4) = v81;
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v89, v90, v91, v92, v93, 0x12u);
      }

      if (OUTLINED_FUNCTION_13())
      {
        OUTLINED_FUNCTION_11_7();
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v82, v83, v84, v85, v86, 0x16u);
        if (!v60)
        {
LABEL_47:
          if (v62)
          {
            CFRelease(v62);
          }

          goto LABEL_19;
        }
      }

      else if (!v60)
      {
        goto LABEL_47;
      }
    }

    CFRelease(v60);
    goto LABEL_47;
  }

  v40 = 0;
LABEL_20:
  v54 = gLogObjects;
  if ((!gLogObjects || gNumLogObjects < 62) && OUTLINED_FUNCTION_13())
  {
    LODWORD(buf) = 134218240;
    *(&buf + 4) = v54;
    OUTLINED_FUNCTION_62_1();
    OUTLINED_FUNCTION_13_0();
    _os_log_error_impl(v71, v72, v73, v74, v75, 0x12u);
  }

  if (OUTLINED_FUNCTION_24())
  {
    OUTLINED_FUNCTION_11_7();
    a19 = 1024;
    LODWORD(a20) = v40;
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v55, v56, v57, v58, v59, 0x1Cu);
  }

  OUTLINED_FUNCTION_89();
}

void _genericMFi_endpoint_processCompleteTLVData()
{
  OUTLINED_FUNCTION_33();
  if (!v2)
  {
    v4 = 0;
    goto LABEL_94;
  }

  v3 = v1;
  v4 = 0;
  if (v1)
  {
    OUTLINED_FUNCTION_50();
    if (v6)
    {
      v151 = *(v6 + 16);
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      v144 = v5;
      if (gLogObjects && gNumLogObjects >= 62)
      {
        v9 = *(gLogObjects + 488);
      }

      else
      {
        v9 = &_os_log_default;
        if (OUTLINED_FUNCTION_17())
        {
          *buf = 134218240;
          *&buf[4] = v7;
          *&buf[12] = 1024;
          *&buf[14] = v8;
          OUTLINED_FUNCTION_35(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (OUTLINED_FUNCTION_81())
      {
        *buf = 136315906;
        *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
        *&buf[12] = 2112;
        *&buf[14] = v151;
        *&buf[22] = 2112;
        *v158 = v144;
        *&v158[8] = 2112;
        *v159 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: %@, propertyKey %@, dataIn %@", buf, 0x2Au);
      }

      acc_platform_packetLogging_logGenericMFiTLV(*v0, v144, v3, 1);
      BytePtr = CFDataGetBytePtr(v3);
      Length = CFDataGetLength(v3);
      v4 = 0;
      if (BytePtr)
      {
        v14 = Length;
        if (Length)
        {
          *&v141[16] = v0;
          v156 = 0;
          memset(__b, 170, 0x150uLL);
          TLV8BufferInit(__b, v14);
          HIBYTE(v155) = 0;
          v153 = 0;
          v154 = 0;
          if (v14 < 1)
          {
            v17 = 0;
            v16 = 0;
            goto LABEL_77;
          }

          v16 = 0;
          v17 = 0;
          v18 = &BytePtr[v14];
          *&v141[8] = kCFAllocatorDefault;
          *&v15 = 136316418;
          v146 = v15;
          *&v15 = 136315906;
          *v137 = v15;
          *&v15 = 134218240;
          *&v137[16] = v15;
          *&v15 = 136315394;
          v134 = v15;
          while (1)
          {
            v156 = 0;
            HIBYTE(v155) = 0;
            v153 = 0;
            v154 = 0;
            Next = TLV8GetNext(BytePtr, v18, &v155 + 7, &v154, &v153, &v156);
            if (!gLogObjects || gNumLogObjects < 62)
            {
              v20 = OUTLINED_FUNCTION_59();
              if (v20)
              {
                OUTLINED_FUNCTION_54(v20, v21, v22, v23, v24, v25, v26, v27, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[16]);
                OUTLINED_FUNCTION_36_3();
                _os_log_error_impl(v60, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, 0x12u);
              }
            }

            if (OUTLINED_FUNCTION_75_3())
            {
              *buf = v146;
              *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
              *&buf[12] = 2112;
              *&buf[14] = v151;
              OUTLINED_FUNCTION_39_3();
              *v159 = 2048;
              *&v159[2] = v28;
              v160 = 1024;
              LODWORD(v161) = Next;
              OUTLINED_FUNCTION_68_2();
              _os_log_impl(v29, v30, v31, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, err %d", v32, 0x32u);
            }

            if (Next)
            {
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v106 = *(gLogObjects + 488);
              }

              else
              {
                v106 = &_os_log_default;
                if (OUTLINED_FUNCTION_27())
                {
                  OUTLINED_FUNCTION_67_2();
                  OUTLINED_FUNCTION_39(&_mh_execute_header, v107, v108, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (OUTLINED_FUNCTION_27())
              {
                *buf = 136315650;
                OUTLINED_FUNCTION_46_2();
                *v158 = Next;
                _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "%s: %@, Failed to retrieve next TLV!!! err %d", buf, 0x1Cu);
              }

LABEL_77:
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v109 = *(gLogObjects + 488);
                v110 = *&v141[16];
              }

              else
              {
                v109 = &_os_log_default;
                v110 = *&v141[16];
                if (OUTLINED_FUNCTION_27())
                {
                  OUTLINED_FUNCTION_67_2();
                  OUTLINED_FUNCTION_39(&_mh_execute_header, v111, v112, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (os_log_type_enabled(v109, OS_LOG_TYPE_INFO))
              {
                *buf = 136316162;
                *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
                *&buf[12] = 2112;
                *&buf[14] = v151;
                *&buf[22] = 1024;
                *v158 = v17;
                *&v158[4] = 1024;
                *&v158[6] = v17;
                *v159 = 2112;
                *&v159[2] = v16;
                _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_INFO, "%s: %@, lastTlvType <%d / 0x%02x>, _tlvValueAccumulator %@", buf, 0x2Cu);
              }

              if (v16 && v17)
              {
                v119 = v144;
                if (v144)
                {
                  _genericMFi_endpoint_processFullPropertyTLVData(v110, v144, v17, v16, v115, v116, v117, v118, v134, *v137, *&v137[4], *&v137[6], *&v137[8], *&v137[24], *v141, *&v141[8], *&v141[16], v144, v146, *(&v146 + 1), v149, v151, v153, v154, v155, v156);
                }

                else
                {
                  _genericMFi_endpoint_processFullMessageTLVData(v110, v17, v16, v114, v115, v116, v117, v118, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[12], v137[14], v137[15], *&v137[16], *v141, *&v141[4], *&v141[6], *&v141[8], 0, v146, *(&v146 + 1), v149, v151, v153, v154, v155, v156, *buf, *&buf[8], *&buf[16], *v158);
                }

                _genericMFi_endpoint_updatePropertyInfo(v110, v119, v120, v121, v122, v123, v124, v125, v135, v136, v138, v139, v140, v142, v143, v145, v147, v148, v150, v152, v153, v154, v155, v156, *buf, *&buf[8], *&buf[16], *v158);
LABEL_92:
                CFRelease(v16);
              }

              else
              {
                _genericMFi_endpoint_updatePropertyInfo(v110, v144, v113, v114, v115, v116, v117, v118, v134, *(&v134 + 1), *v137, *&v137[16], *&v137[24], *v141, *&v141[16], v144, v146, *(&v146 + 1), v149, v151, v153, v154, v155, v156, *buf, *&buf[8], *&buf[16], *v158);
                if (v16)
                {
                  goto LABEL_92;
                }
              }

              v4 = 1;
              goto LABEL_94;
            }

            v33 = HIBYTE(v155);
            if (v17)
            {
              if (HIBYTE(v155) != v17)
              {
                break;
              }
            }

            if (!HIBYTE(v155))
            {
              goto LABEL_41;
            }

LABEL_25:
            if (v33 == 128)
            {
              if (gLogObjects && gNumLogObjects >= 62)
              {
                v34 = *(gLogObjects + 488);
              }

              else
              {
                v38 = OUTLINED_FUNCTION_59();
                v34 = &_os_log_default;
                if (v38)
                {
                  OUTLINED_FUNCTION_16_10(v38, v39, v40, v41, v42, v43, v44, v45, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[16]);
                  OUTLINED_FUNCTION_36_3();
                  _os_log_error_impl(v94, v95, v96, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v97, 0x12u);
                  v34 = &_os_log_default;
                }
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                *buf = *v137;
                *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
                *&buf[12] = 2112;
                *&buf[14] = v151;
                OUTLINED_FUNCTION_39_3();
                _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s: %@, Unexpected TLV type(%d/0x%x)!!!", buf, 0x22u);
              }
            }

            else
            {
              v35 = v154;
              if (v154)
              {
                v36 = v153;
                if (v153)
                {
                  if (!v16)
                  {
                    Mutable = CFDataCreateMutable(*&v141[8], 0);
                    if (!Mutable)
                    {
                      if (gLogObjects && gNumLogObjects >= 62)
                      {
                        v85 = *(gLogObjects + 488);
                      }

                      else
                      {
                        v86 = OUTLINED_FUNCTION_59();
                        v85 = &_os_log_default;
                        if (v86)
                        {
                          OUTLINED_FUNCTION_16_10(v86, v87, v88, v89, v90, v91, v92, v93, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[16]);
                          OUTLINED_FUNCTION_36_3();
                          _os_log_error_impl(v102, v103, v104, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v105, 0x12u);
                          v85 = &_os_log_default;
                        }
                      }

                      if (OUTLINED_FUNCTION_17())
                      {
                        *buf = v134;
                        *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
                        *&buf[12] = 2112;
                        *&buf[14] = v151;
                        _os_log_error_impl(&_mh_execute_header, v85, OS_LOG_TYPE_ERROR, "%s: %@, Failed to create _tlvValueAccumulator!!!", buf, 0x16u);
                      }

                      v16 = 0;
                      goto LABEL_41;
                    }

                    v16 = Mutable;
                    v36 = v153;
                    v35 = v154;
                  }

                  CFDataAppendBytes(v16, v35, v36);
                  if (!gLogObjects || gNumLogObjects < 62)
                  {
                    v46 = OUTLINED_FUNCTION_59();
                    if (v46)
                    {
                      OUTLINED_FUNCTION_16_10(v46, v47, v48, v49, v50, v51, v52, v53, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[16]);
                      OUTLINED_FUNCTION_36_3();
                      _os_log_error_impl(v98, v99, v100, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v101, 0x12u);
                    }
                  }

                  if (OUTLINED_FUNCTION_75_3())
                  {
                    *buf = v146;
                    *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
                    *&buf[12] = 2112;
                    *&buf[14] = v151;
                    OUTLINED_FUNCTION_39_3();
                    *v159 = 2048;
                    *&v159[2] = v54;
                    v160 = v55;
                    v161 = v16;
                    OUTLINED_FUNCTION_68_2();
                    _os_log_impl(v56, v57, v58, "%s: %@, tlvType <%d / 0x%02x>, tlvLen <%zu>, added to accumulator %@", v59, 0x36u);
                  }
                }
              }
            }

LABEL_41:
            BytePtr = v156;
            v17 = HIBYTE(v155);
            if (!v156 || v156 >= v18)
            {
              goto LABEL_77;
            }
          }

          if (!gLogObjects || gNumLogObjects < 62)
          {
            v64 = OUTLINED_FUNCTION_59();
            if (v64)
            {
              OUTLINED_FUNCTION_54(v64, v65, v66, v67, v68, v69, v70, v71, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[16]);
              OUTLINED_FUNCTION_36_3();
              _os_log_error_impl(v72, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, 0x12u);
            }
          }

          if (OUTLINED_FUNCTION_75_3())
          {
            *buf = v146;
            *&buf[4] = "_genericMFi_endpoint_processCompleteTLVData";
            *&buf[12] = 2112;
            *&buf[14] = v151;
            *&buf[22] = 2112;
            *v158 = v144;
            *&v158[8] = 1024;
            *v159 = v17;
            *&v159[4] = 1024;
            *&v159[6] = v17;
            v160 = 2112;
            v161 = v16;
            OUTLINED_FUNCTION_68_2();
            _os_log_impl(v81, v82, v83, "%s: %@, propertyKey %@, lastTlvType <%d / 0x%02x>, _tlvValueAccumulator %@", v84, 0x36u);
          }

          if (v144)
          {
            _genericMFi_endpoint_processFullPropertyTLVData(*&v141[16], v144, v17, v16, v77, v78, v79, v80, v134, *v137, *&v137[4], *&v137[6], *&v137[8], *&v137[24], *v141, *&v141[8], *&v141[16], v144, v146, *(&v146 + 1), v149, v151, v153, v154, v155, v156);
            if (!v16)
            {
              goto LABEL_59;
            }
          }

          else
          {
            _genericMFi_endpoint_processFullMessageTLVData(*&v141[16], v17, v16, v76, v77, v78, v79, v80, v134, *(&v134 + 1), *v137, *&v137[8], *&v137[12], v137[14], v137[15], *&v137[16], *v141, *&v141[4], *&v141[6], *&v141[8], 0, v146, *(&v146 + 1), v149, v151, v153, v154, v155, v156, *buf, *&buf[8], *&buf[16], *v158);
            if (!v16)
            {
LABEL_59:
              v16 = 0;
              v33 = HIBYTE(v155);
              if (!HIBYTE(v155))
              {
                goto LABEL_41;
              }

              goto LABEL_25;
            }
          }

          CFRelease(v16);
          goto LABEL_59;
        }
      }
    }
  }

LABEL_94:
  v126 = gLogObjects;
  v127 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 62)
  {
    v128 = *(gLogObjects + 488);
  }

  else
  {
    v128 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      *&buf[4] = v126;
      *&buf[12] = 1024;
      *&buf[14] = v127;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v129, v130, v131, v132, v133, 0x12u);
    }
  }

  if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    OUTLINED_FUNCTION_46_2();
    *v158 = v4;
    _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_INFO, "%s: %@, success %d", buf, 0x1Cu);
  }

  OUTLINED_FUNCTION_29();
}

void genericMFi_endpoint_create_cold_2(void *a1, uint64_t a2, void *a3)
{
  free(a1);
  v4 = logObjectForModule_1(0x3Du);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 0x16u);
  }

  *a3 = 0;
}

void genericMFi_endpoint_create_cold_3(void *a1)
{
  v2 = logObjectForModule_1(0x3Du);
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = 0;
}

void genericMFi_endpoint_create_cold_4(void *a1)
{
  v2 = logObjectForModule_1(0x3Du);
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    OUTLINED_FUNCTION_14();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = 0;
}

void ___genericMFi_endpoint_handlePropertiesDidChange_block_invoke_cold_3()
{
  v2 = 136315394;
  v3 = "_genericMFi_endpoint_handlePropertiesDidChange_block_invoke";
  OUTLINED_FUNCTION_24_5();
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s: propertiesToProcess %@", &v2, 0x16u);
}

void _genericMFi_endpoint_initFeature_cold_1()
{
  v0 = logObjectForModule_1(0x3Du);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_10_1();
    _os_log_impl(v1, v2, v3, v4, v5, 0x1Cu);
  }
}

uint64_t iap2_navigation_startRouteGuidanceHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 47)
  {
    v6 = *(gLogObjects + 368);
  }

  else
  {
    v6 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v126 = v4;
      OUTLINED_FUNCTION_49_2();
      v127 = v5;
      OUTLINED_FUNCTION_98_0();
      OUTLINED_FUNCTION_10(v59, v60, v61, v62, v63);
    }
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_78_3();
    OUTLINED_FUNCTION_98_0();
    _os_log_impl(v7, v8, OS_LOG_TYPE_INFO, v9, v10, 0xCu);
  }

  v11 = 0;
  if (!a1 || !a2)
  {
    return v11;
  }

  v120 = a1;
  v12 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v12, v13);
  v124 = 0;
  theArray = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks);
  if (!FirstParam)
  {
    v37 = 0;
    v122 = 0;
    v18 = 0;
    LOBYTE(v17) = 0;
    v16 = 0;
LABEL_41:
    v38 = gLogObjects;
    v39 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      v126 = v38;
      OUTLINED_FUNCTION_49_2();
      v127 = v39;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v64, v65, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_78_3();
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
    }

    Feature = iap2_feature_getFeature(v120, 0x11u);
    if (!Feature)
    {
      goto LABEL_88;
    }

    v46 = Feature;
    buf[0] = 0;
    if (!iap2_identification_checkRequiredMsgIDs(v120, &gskMsgNavigationMainList, 5, buf))
    {
      goto LABEL_88;
    }

    v46[16] = v16 & 1;
    v46[17] = v17 & 1;
    v46[18] = v18 & 1;
    v46[19] = iap2_identification_isIdentifiedForOutgoingMessageID(v120, 0x5204u);
    v46[20] = v122 & 1;
    v46[21] = BYTE4(v122) & 1;
    v47 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v48 = *(gLogObjects + 368);
    }

    else
    {
      v48 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_14_10();
        v127 = v47;
        OUTLINED_FUNCTION_39(&_mh_execute_header, v66, v67, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v49 = theArray;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v126 = theArray;
      OUTLINED_FUNCTION_76_3();
      _os_log_debug_impl(v54, v55, v56, v57, v58, 0xCu);
    }

    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_99_0();
    if (v46[21])
    {
      v51 = v50 | 0x20;
    }

    else
    {
      v51 = v50;
    }

    if (v37)
    {
      v52 = theArray;
    }

    else
    {
      v52 = 0;
    }

    platform_navigation_startRouteGuidance(*(v120 + 8), v52, v51);
    v11 = 1;
    if (!theArray)
    {
      return v11;
    }

LABEL_63:
    CFRelease(v49);
    return v11;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v122 = 0;
  v19 = 0;
  *&v15 = 67109376;
  v119 = v15;
  *&v15 = 134218240;
  v118 = v15;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    switch(ParamID)
    {
      case 0:
        valuePtr = iAP2MsgGetDataAsU16(FirstParam, &v124);
        if (!v124)
        {
          v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
          CFArrayAppendValue(theArray, v21);
          if (v21)
          {
            CFRelease(v21);
          }

          ++v19;
          break;
        }

        v68 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_70_3(v68))
        {
          goto LABEL_88;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_32_3(MsgID, v70, v71, v72, v73, v74, v75, v76, v118, *(&v118 + 1), v119);
        LODWORD(v126) = 0;
        OUTLINED_FUNCTION_10_11();
        v77 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
        goto LABEL_87;
      case 1:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v88 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v88))
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        }

        if (v16)
        {
          v109 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_70_3(v109))
          {
            goto LABEL_86;
          }

          goto LABEL_88;
        }

        v16 = 1;
        break;
      case 2:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v17 = logObjectForModule_15();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v79 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_32_3(v79, v80, v81, v82, v83, v84, v85, v86, v118, *(&v118 + 1), v119);
            LODWORD(v126) = 2;
            OUTLINED_FUNCTION_10_11();
            v77 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
            goto LABEL_87;
          }

          goto LABEL_88;
        }

        if (v17)
        {
          v17 = logObjectForModule_15();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v98 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_32_3(v98, v99, v100, v101, v102, v103, v104, v105, v118, *(&v118 + 1), v119);
            LODWORD(v126) = 2;
            OUTLINED_FUNCTION_10_11();
            v77 = "Too many params Param ID: %d for Msg ID: 0x%04X - ignoring message";
            goto LABEL_87;
          }

          goto LABEL_88;
        }

        v17 = 1;
        break;
      case 3:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v78 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v78))
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        }

        if (v18)
        {
          v107 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_70_3(v107))
          {
            goto LABEL_86;
          }

          goto LABEL_88;
        }

        v18 = 1;
        break;
      case 4:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v89 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v89))
          {
            goto LABEL_88;
          }

LABEL_76:
          v90 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v90, v91, v92, v93, v94, v95, v96, v97, v118, *(&v118 + 1), v119);
          OUTLINED_FUNCTION_0();
          v77 = "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message";
          goto LABEL_87;
        }

        if (v122)
        {
          v106 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_70_3(v106))
          {
            goto LABEL_86;
          }

          goto LABEL_88;
        }

        LOBYTE(v122) = 1;
        break;
      case 5:
        if (!iAP2MsgIsDataVoid(FirstParam))
        {
          v87 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_70_3(v87))
          {
            goto LABEL_88;
          }

          goto LABEL_76;
        }

        if ((v122 & 0x100000000) == 0)
        {
          BYTE4(v122) = 1;
LABEL_32:
          v22 = gNumLogObjects;
          if ((!gLogObjects || gNumLogObjects < 47) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            OUTLINED_FUNCTION_14_10();
            v127 = v22;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }

          if (OUTLINED_FUNCTION_106())
          {
            v25 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_32_3(v25, v26, v27, v28, v29, v30, v31, v32, v118, *(&v118 + 1), v119);
            LODWORD(v126) = ParamID;
            OUTLINED_FUNCTION_10_11();
            OUTLINED_FUNCTION_74_0();
            _os_log_debug_impl(v33, v34, v35, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v36, 0xEu);
          }

          break;
        }

        v108 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_70_3(v108))
        {
LABEL_86:
          v110 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_32_3(v110, v111, v112, v113, v114, v115, v116, v117, v118, *(&v118 + 1), v119);
          OUTLINED_FUNCTION_0();
          v77 = "Too many params Param ID: %d for Msg ID: 0x%04X - ignoring message";
LABEL_87:
          _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, v77, buf, 0xEu);
        }

LABEL_88:
        v11 = 0;
        v49 = theArray;
        if (theArray)
        {
          goto LABEL_63;
        }

        return v11;
      default:
        goto LABEL_32;
    }

    v23 = OUTLINED_FUNCTION_21_1();
    FirstParam = iAP2MsgGetNextParam(v23, v24, FirstParam);
    if (!FirstParam)
    {
      v37 = v19 > 0;
      goto LABEL_41;
    }
  }
}

uint64_t iap2_navigation_roadObjectDetectionUpdateHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    v195 = v4;
    OUTLINED_FUNCTION_29_3();
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v112, v113, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  v5 = OUTLINED_FUNCTION_66_1();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_68_3();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
  }

  v12 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_79;
  }

  v192 = a1;
  v13 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v13, v14);
  HIDWORD(v193) = 0;
  if (!FirstParam)
  {
    ObjectDetectionInfoDict = 0;
LABEL_61:
    v84 = gLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v85 = v192;
    }

    else
    {
      v85 = v192;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v195 = v84;
        OUTLINED_FUNCTION_29_3();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v116, v117, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    v86 = OUTLINED_FUNCTION_97_0();
    if (os_log_type_enabled(v86, v87))
    {
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_103(&_mh_execute_header, v106, v107, "iAP2Navigation RoadObjectDetectionUpdate: %@", v108, v109, v110, v111, v189, *(&v189 + 1), v190, *(&v190 + 1), v191, *(&v191 + 1), v192, v193);
    }

    if (!OUTLINED_FUNCTION_85_1())
    {
      goto LABEL_96;
    }

    buf[0] = 0;
    if (!iap2_identification_checkRequiredMsgIDs(v85, &gskMsgNavigationMainList, 5, buf) || !ObjectDetectionInfoDict)
    {
      goto LABEL_96;
    }

    Item = platform_navigation_objectDetectionInfoGetItem(ObjectDetectionInfoDict, 0);
    v89 = gLogObjects;
    v90 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_27())
    {
      *buf = 134218240;
      v195 = v89;
      OUTLINED_FUNCTION_20_4();
      LODWORD(v197) = v90;
      OUTLINED_FUNCTION_39(&_mh_execute_header, v118, v119, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_14_1();
      v196 = 2112;
      v197 = Item;
      v198 = 2112;
      v199 = ObjectDetectionInfoDict;
      OUTLINED_FUNCTION_40_5();
      _os_log_impl(v91, v92, v93, v94, v95, 0x20u);
    }

    platform_navigation_objectDetectionUpdateInfo(*(v192 + 8), 0, ObjectDetectionInfoDict);
    v96 = 1;
LABEL_78:
    CFRelease(ObjectDetectionInfoDict);
    v12 = v96;
    goto LABEL_79;
  }

  NextParam = FirstParam;
  ObjectDetectionInfoDict = 0;
  *&v16 = 138412546;
  v191 = v16;
  *&v16 = 67109376;
  v189 = v16;
  *&v16 = 134218240;
  v190 = v16;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 47) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = v190;
      v195 = v20;
      OUTLINED_FUNCTION_20_4();
      LODWORD(v197) = v21;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v22 = OUTLINED_FUNCTION_106();
    if (v22)
    {
      OUTLINED_FUNCTION_44_5(v22, v23, v24, v25, v26, v27, v28, v29, v189, *(&v189 + 1), v190, *(&v190 + 1), v191);
      OUTLINED_FUNCTION_14_1();
      OUTLINED_FUNCTION_20_4();
      LODWORD(v197) = ParamID;
      OUTLINED_FUNCTION_74_0();
      _os_log_debug_impl(v54, v55, v56, "iAP2Navigation RoadObjectDetectionUpdate Handler %@, process paramID=%d", v57, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v30 = OUTLINED_FUNCTION_93_1();
        DataAsU16 = iAP2MsgGetDataAsU16(v30, v31);
        if (!HIDWORD(v193))
        {
          v33 = DataAsU16;
          if (!ObjectDetectionInfoDict)
          {
            ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
          }

          platform_navigation_objectDetectionInfoAddComponentID(ObjectDetectionInfoDict, v33);
          goto LABEL_45;
        }

        v144 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_47_2(v144))
        {
          goto LABEL_96;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_38_6(MsgID, v146, v147, v148, v149, v150, v151, v152, v189);
        LODWORD(v195) = 0;
        OUTLINED_FUNCTION_12_0();
        goto LABEL_92;
      case 1:
        v46 = OUTLINED_FUNCTION_93_1();
        iAP2MsgGetDataAsU64(v46, v47);
        if (HIDWORD(v193))
        {
          v121 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_47_2(v121))
          {
            v122 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v122, v123, v124, v125, v126, v127, v128, v129, v189);
            LODWORD(v195) = 1;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_92;
          }

          goto LABEL_96;
        }

        v48 = OUTLINED_FUNCTION_66_1();
        if (platform_navigation_objectDetectionInfoGetItem(v48, v49))
        {
          goto LABEL_96;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        v50 = OUTLINED_FUNCTION_73_2();
        platform_navigation_objectDetectionInfoSetTimestamp(v50, v51);
        goto LABEL_45;
      case 2:
        v36 = OUTLINED_FUNCTION_93_1();
        DataAsI32 = iAP2MsgGetDataAsI32(v36, v37);
        if (HIDWORD(v193))
        {
          v130 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_50_1(v130))
          {
            v131 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v131, v132, v133, v134, v135, v136, v137, v138, v189);
            LODWORD(v195) = v21;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_92;
          }

          goto LABEL_96;
        }

        v39 = DataAsI32;
        v40 = OUTLINED_FUNCTION_94();
        if (platform_navigation_objectDetectionInfoGetItem(v40, v41))
        {
          goto LABEL_96;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        platform_navigation_objectDetectionInfoSetEgoSpeed(ObjectDetectionInfoDict, v39);
        goto LABEL_45;
      case 3:
        v200 = 0xAAAAAAAAAAAAAAAALL;
        DataAsArrayI32 = iAP2MsgGetDataAsArrayI32(NextParam, &v193 + 1, &v200, 2);
        if (HIDWORD(v193))
        {
          v120 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v120))
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (DataAsArrayI32 == 2)
          {
            v43 = OUTLINED_FUNCTION_95_1();
            if (platform_navigation_objectDetectionInfoGetItem(v43, v44))
            {
              goto LABEL_96;
            }

            v45 = v200;
            if (!ObjectDetectionInfoDict)
            {
              ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
            }

            platform_navigation_objectDetectionInfoSetEgoYawRate(ObjectDetectionInfoDict, v45 / SHIDWORD(v45));
            goto LABEL_45;
          }

          v153 = logObjectForModule_15();
          if (!OUTLINED_FUNCTION_47_2(v153))
          {
            goto LABEL_96;
          }
        }

        v181 = iAP2MsgGetMsgID(a2);
        OUTLINED_FUNCTION_38_6(v181, v182, v183, v184, v185, v186, v187, v188, v189);
        LODWORD(v195) = 3;
        OUTLINED_FUNCTION_12_0();
LABEL_92:
        OUTLINED_FUNCTION_76_3();
        _os_log_debug_impl(v139, v140, v141, v142, v143, 0xEu);
        goto LABEL_96;
      case 4:
        v58 = OUTLINED_FUNCTION_43_4(v22, v23, v24, v25, v26, v27, v28, v29, v189, *(&v189 + 1), v190, *(&v190 + 1), v191, *(&v191 + 1), v192);
        v62 = _parseRoadSignParameter(v58, v59, v60, v61);
        v63 = v62;
        if (HIDWORD(v193))
        {
          CFRelease(v62);
          v163 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_47_2(v163))
          {
            v164 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v164, v165, v166, v167, v168, v169, v170, v171, v189);
            LODWORD(v195) = 4;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_92;
          }

          goto LABEL_96;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        v64 = OUTLINED_FUNCTION_73_2();
        platform_navigation_objectDetectionInfoAddRoadSign(v64, v65);
        goto LABEL_59;
      case 5:
        OUTLINED_FUNCTION_43_4(v22, v23, v24, v25, v26, v27, v28, v29, v189, *(&v189 + 1), v190, *(&v190 + 1), v191, *(&v191 + 1), v192);
        v66 = _parseRoadLaneParameter();
        v63 = v66;
        if (HIDWORD(v193))
        {
          CFRelease(v66);
          v154 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_47_2(v154))
          {
            v155 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_38_6(v155, v156, v157, v158, v159, v160, v161, v162, v189);
            LODWORD(v195) = 5;
            OUTLINED_FUNCTION_12_0();
            goto LABEL_92;
          }

          goto LABEL_96;
        }

        if (!ObjectDetectionInfoDict)
        {
          ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
        }

        v67 = OUTLINED_FUNCTION_73_2();
        platform_navigation_objectDetectionInfoAddRoadLane(v67, v68);
        goto LABEL_59;
      case 6:
        OUTLINED_FUNCTION_43_4(v22, v23, v24, v25, v26, v27, v28, v29, v189, *(&v189 + 1), v190, *(&v190 + 1), v191, *(&v191 + 1), v192);
        v69 = _parseRoadObjectParameter();
        v63 = v69;
        if (!HIDWORD(v193))
        {
          if (!ObjectDetectionInfoDict)
          {
            ObjectDetectionInfoDict = platform_navigation_createObjectDetectionInfoDict();
          }

          v70 = OUTLINED_FUNCTION_73_2();
          platform_navigation_objectDetectionInfoAddRoadObject(v70, v71);
LABEL_59:
          CFRelease(v63);
LABEL_45:
          v52 = OUTLINED_FUNCTION_21_1();
          NextParam = iAP2MsgGetNextParam(v52, v53, NextParam);
          if (!NextParam)
          {
            goto LABEL_61;
          }

          continue;
        }

        CFRelease(v69);
        v172 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_47_2(v172))
        {
          v173 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_38_6(v173, v174, v175, v176, v177, v178, v179, v180, v189);
          LODWORD(v195) = 6;
          OUTLINED_FUNCTION_12_0();
          goto LABEL_92;
        }

LABEL_96:
        v96 = 0;
        v12 = 0;
        if (ObjectDetectionInfoDict)
        {
          goto LABEL_78;
        }

LABEL_79:
        v97 = gLogObjects;
        if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_21())
        {
          *buf = 134218240;
          v195 = v97;
          OUTLINED_FUNCTION_29_3();
          OUTLINED_FUNCTION_26_2(&_mh_execute_header, v114, v115, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v98 = OUTLINED_FUNCTION_66_1();
        if (os_log_type_enabled(v98, v99))
        {
          OUTLINED_FUNCTION_14_1();
          OUTLINED_FUNCTION_20_4();
          LODWORD(v197) = v12;
          OUTLINED_FUNCTION_68_3();
          _os_log_impl(v100, v101, v102, v103, v104, 0x12u);
        }

        return v12;
      default:
        v34 = gLogObjects;
        v35 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 47) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = v190;
          v195 = v34;
          OUTLINED_FUNCTION_20_4();
          LODWORD(v197) = v35;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        if (OUTLINED_FUNCTION_106())
        {
          v72 = iAP2MsgGetMsgID(a2);
          OUTLINED_FUNCTION_38_6(v72, v73, v74, v75, v76, v77, v78, v79, v189);
          LODWORD(v195) = ParamID;
          OUTLINED_FUNCTION_12_0();
          OUTLINED_FUNCTION_74_0();
          _os_log_debug_impl(v80, v81, v82, "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v83, 0xEu);
        }

        goto LABEL_45;
    }
  }
}

unsigned __int16 *_parseRoadSignParameter(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int *a4)
{
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 47) && OUTLINED_FUNCTION_13())
  {
    *buf = 134218240;
    v102 = v7;
    OUTLINED_FUNCTION_15_0();
    v103 = v8;
    OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v66, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_108())
  {
    if (a1)
    {
      v64 = *(a1 + 8);
      if (a2)
      {
LABEL_51:
        MsgID = iAP2MsgGetMsgID(a2);
        if (!a3)
        {
LABEL_55:
          *buf = 138412802;
          v102 = v64;
          OUTLINED_FUNCTION_15_0();
          v103 = MsgID;
          v104 = v67;
          v105 = v68;
          OUTLINED_FUNCTION_55_1();
          _os_log_debug_impl(v69, v70, v71, v72, v73, 0x18u);
          goto LABEL_6;
        }

LABEL_52:
        iAP2MsgGetParamID(a3);
        goto LABEL_55;
      }
    }

    else
    {
      v64 = 0;
      if (a2)
      {
        goto LABEL_51;
      }
    }

    MsgID = 0;
    if (!a3)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_6:
  FirstParam = 0;
  v10 = -1;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_48;
  }

  FirstParam = iAP2MsgGetFirstParam(a2, a3);
  if (!FirstParam)
  {
    goto LABEL_47;
  }

  v92 = a4;
  v95 = 0;
  cf = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v12 = kCFAllocatorDefault;
  *&v11 = 138412546;
  v93 = v11;
  *&v11 = 134218240;
  v90 = v11;
  while (2)
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v14 = gLogObjects;
    v15 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 47)
    {
      v16 = *(gLogObjects + 368);
    }

    else
    {
      v16 = &_os_log_default;
      if (OUTLINED_FUNCTION_18())
      {
        *buf = v90;
        v102 = v14;
        OUTLINED_FUNCTION_15_0();
        v103 = v15;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        v16 = &_os_log_default;
      }
    }

    v17 = OUTLINED_FUNCTION_97_0();
    v19 = os_log_type_enabled(v17, v18);
    if (v19)
    {
      *buf = OUTLINED_FUNCTION_44_5(v19, v20, v21, v22, v23, v24, v25, v26, v90, *(&v90 + 1), v91, v92, v93).n128_u32[0];
      v102 = v50;
      OUTLINED_FUNCTION_15_0();
      v103 = ParamID;
      _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "_parseRoadSignParameter: %@, process paramID=%d", buf, 0x12u);
    }

    switch(ParamID)
    {
      case 0:
        v27 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU32(v27, v28);
        if (!v95)
        {
          v29 = OUTLINED_FUNCTION_75_4();
          v95 = CFNumberCreate(v29, kCFNumberSInt32Type, v30);
          goto LABEL_31;
        }

        v76 = logObjectForModule_15();
        if (!OUTLINED_FUNCTION_65_1(v76))
        {
          goto LABEL_67;
        }

        iAP2MsgGetParamID(a3);
        OUTLINED_FUNCTION_60();
        *buf = 67109632;
        LODWORD(v102) = 0;
        OUTLINED_FUNCTION_4_18();
        goto LABEL_66;
      case 1:
        v42 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU8(v42, v43);
        if (cf)
        {
          v78 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_65_1(v78))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v102) = 1;
            OUTLINED_FUNCTION_4_18();
LABEL_66:
            OUTLINED_FUNCTION_55_1();
            _os_log_debug_impl(v79, v80, v81, v82, v83, 0x14u);
          }

          goto LABEL_67;
        }

        v44 = OUTLINED_FUNCTION_75_4();
        cf = CFNumberCreate(v44, kCFNumberSInt8Type, v45);
        goto LABEL_31;
      case 2:
        v35 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU8(v35, v36);
        if (v97)
        {
          v74 = logObjectForModule_15();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v102) = 2;
            OUTLINED_FUNCTION_4_18();
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        v37 = OUTLINED_FUNCTION_75_4();
        v97 = CFNumberCreate(v37, kCFNumberSInt8Type, v38);
        goto LABEL_31;
      case 3:
        v39 = OUTLINED_FUNCTION_64_1();
        v41 = iAP2MsgCopyDataAsCFString(v39, v40);
        if (v98)
        {
          v84 = logObjectForModule_15();
          a4 = v92;
          if (OUTLINED_FUNCTION_65_1(v84))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v102) = 3;
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_55_1();
            _os_log_debug_impl(v85, v86, v87, v88, v89, 0x14u);
          }

          goto LABEL_68;
        }

        v98 = v41;
        goto LABEL_31;
      case 4:
        v31 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsI32(v31, v32);
        if (v99)
        {
          v75 = logObjectForModule_15();
          if (OUTLINED_FUNCTION_65_1(v75))
          {
            iAP2MsgGetParamID(a3);
            OUTLINED_FUNCTION_60();
            *buf = 67109632;
            LODWORD(v102) = 4;
            OUTLINED_FUNCTION_4_18();
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        v33 = OUTLINED_FUNCTION_75_4();
        v99 = CFNumberCreate(v33, kCFNumberSInt32Type, v34);
        goto LABEL_31;
      case 5:
        v46 = OUTLINED_FUNCTION_64_1();
        iAP2MsgGetDataAsU32(v46, v47);
        if (!v100)
        {
          v48 = OUTLINED_FUNCTION_75_4();
          v100 = CFNumberCreate(v48, kCFNumberSInt32Type, v49);
LABEL_31:
          FirstParam = iAP2MsgGetNextParam(a2, a3, FirstParam);
          if (!FirstParam)
          {
            FirstParam = v95;
            if (v95)
            {
              platform_navigation_createObjectDetectionRoadSignDict(*(a1 + 8));
              OUTLINED_FUNCTION_69_2();
              platform_navigation_objectDetectionRoadSignSetInfo(v51, v52, v53);
              v54 = 1;
              v55 = OUTLINED_FUNCTION_66_1();
              platform_navigation_objectDetectionRoadSignSetInfo(v55, v56, cf);
              v57 = OUTLINED_FUNCTION_94();
              platform_navigation_objectDetectionRoadSignSetInfo(v57, v58, v97);
              v59 = OUTLINED_FUNCTION_95_1();
              platform_navigation_objectDetectionRoadSignSetInfo(v59, v60, v98);
              platform_navigation_objectDetectionRoadSignSetInfo(kCFAllocatorDefault, 4, v99);
              platform_navigation_objectDetectionRoadSignSetInfo(kCFAllocatorDefault, 5, v100);
              a4 = v92;
              v61 = v95;
              goto LABEL_34;
            }

            v62 = 0;
            a4 = v92;
            goto LABEL_35;
          }

          continue;
        }

        v77 = logObjectForModule_15();
        if (OUTLINED_FUNCTION_65_1(v77))
        {
          iAP2MsgGetParamID(a3);
          OUTLINED_FUNCTION_60();
          *buf = 67109632;
          LODWORD(v102) = 5;
          OUTLINED_FUNCTION_4_18();
          goto LABEL_66;
        }

LABEL_67:
        a4 = v92;
LABEL_68:
        v54 = 0;
        v12 = 0;
        FirstParam = 0;
        v62 = 0;
        v61 = v95;
        if (v95)
        {
LABEL_34:
          CFRelease(v61);
          FirstParam = v12;
          v62 = v54;
        }

LABEL_35:
        if (cf)
        {
          CFRelease(cf);
        }

        if (v97)
        {
          CFRelease(v97);
        }

        if (v98)
        {
          CFRelease(v98);
        }

        if (v99)
        {
          CFRelease(v99);
        }

        if (v100)
        {
          CFRelease(v100);
          if (v62)
          {
            goto LABEL_45;
          }

LABEL_47:
          v10 = -1;
        }

        else
        {
          if (!v62)
          {
            goto LABEL_47;
          }

LABEL_45:
          v10 = 0;
        }

LABEL_48:
        *a4 = v10;
        return FirstParam;
      default:
        goto LABEL_31;
    }
  }
}