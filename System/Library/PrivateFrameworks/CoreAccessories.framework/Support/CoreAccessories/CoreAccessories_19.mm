CFDictionaryRef acc_accInfo_copyAccessoryInfoDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 112));
  v2 = &kCFNull;
  vld1q_dup_f64(v2);
  OUTLINED_FUNCTION_2_39();
  v12[0] = v3;
  v12[1] = v4;
  OUTLINED_FUNCTION_2_39();
  v12[2] = v5;
  v12[3] = v6;
  OUTLINED_FUNCTION_2_39();
  keys[0] = kCFACCInfo_Name;
  keys[1] = kCFACCInfo_Manufacturer;
  keys[2] = kCFACCInfo_Model;
  keys[3] = kCFACCInfo_SerialNumber;
  keys[4] = kCFACCInfo_HardwareVersion;
  keys[5] = kCFACCInfo_FirmwareVersionActive;
  keys[6] = kCFACCInfo_FirmwareVersionPending;
  keys[7] = kCFACCInfo_PPID;
  keys[8] = kCFACCInfo_AccessoryDeviceUID;
  keys[9] = kCFACCInfo_RegionCode;
  keys[10] = kCFACCInfo_DeviceCompatibility;
  keys[11] = kCFACCInfo_VendorID;
  v12[4] = v7;
  v12[5] = v8;
  keys[12] = kCFACCInfo_ProductID;
  keys[13] = kCFACCInfo_AccessoryPlatformID;
  v12[6] = vbslq_s8(vceqzq_s64(*(a1 + 96)), v9, *(a1 + 96));
  v10 = CFDictionaryCreate(kCFAllocatorDefault, keys, v12, 14, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  pthread_mutex_unlock((a1 + 112));
  return v10;
}

CFStringRef acc_accInfo_copyAccessoryInfoDescription(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    pthread_mutex_lock(&result[3].data);
    v2 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"<ACCAccessoryInfo_t: name: %@; manufacturer: %@; model: %@; serialNumber: %@; hardwareVersion: %@; firmwareVersionActive: %@; firmwareVersionPending: %@; ppid: %@, regionCode: %@; deviceUID: %@>; deviceCompatibility: %@; vid/pid: %@/%@, accessoryPlatformID: %@", v1->isa, v1->info, v1->data, v1->length, v1[1].isa, v1[1].info, v1[1].data, v1[1].length, v1[2].info, v1[2].isa, v1[2].data, v1[2].length, v1[3].isa, v1[3].info);
    pthread_mutex_unlock(&v1[3].data);
    return v2;
  }

  return result;
}

CFTypeRef acc_accInfo_retainedProperty(uint64_t a1, int a2, CFTypeRef a3)
{
  if (!a1)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 112));
  switch(a2)
  {
    case 0:
      v6 = *a1;
      if (*a1)
      {
        goto LABEL_25;
      }

      break;
    case 1:
      v6 = *(a1 + 8);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 2:
      v6 = *(a1 + 16);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 3:
      v6 = *(a1 + 24);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 4:
      v6 = *(a1 + 32);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 5:
      v6 = *(a1 + 40);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 6:
      v6 = *(a1 + 48);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 7:
      v6 = *(a1 + 56);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 8:
      v6 = *(a1 + 64);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 9:
      v6 = *(a1 + 72);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 10:
      v6 = *(a1 + 80);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 11:
      v6 = *(a1 + 88);
      if (v6)
      {
        goto LABEL_25;
      }

      break;
    case 12:
      v6 = *(a1 + 96);
      if (v6)
      {
LABEL_25:
        a3 = CFRetain(v6);
      }

      break;
    default:
      a3 = 0;
      break;
  }

  pthread_mutex_unlock((a1 + 112));
  return a3;
}

BOOL acc_accInfo_isConsideredEmpty(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  pthread_mutex_lock((a1 + 112));
  v3 = *a1 == 0 && *(a1 + 16) == 0;
  pthread_mutex_unlock((a1 + 112));
  return v3;
}

void _getPluginInstance_cold_2(NSObject *a1)
{
  v2 = NSStringFromProtocol(&OBJC_PROTOCOL___ACCPlatformLightningPluginProtocol);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "[#Lightning] Could not find plugin conforming to %@!", &v3, 0xCu);
}

void platform_oobBtPairing2_startOobBtPairingHandler_cold_3(uint64_t a1, void *a2)
{
  v3 = [a2 componentUID];
  v9 = [a2 componentID];
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void platform_oobBtPairing2_accessoryAttached_cold_6()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void _sendStartOOBBTPairing_cold_3(void *a1)
{
  v1 = [a1 accessoryUID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_40_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

uint64_t iap2_identification_setIdentificationInfo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (iap2_feature_getFeature(a1, 1u))
    {
      v4 = OUTLINED_FUNCTION_66_1();
      if (*(iap2_feature_getFeature(v4, v5) + 8))
      {
        v6 = OUTLINED_FUNCTION_66_1();
        Feature = iap2_feature_getFeature(v6, v7);
        iap2_identification_releaseIdentInfo(*(Feature + 8));
        v9 = OUTLINED_FUNCTION_66_1();
        if (*(iap2_feature_getFeature(v9, v10) + 8))
        {
          v11 = OUTLINED_FUNCTION_66_1();
          v13 = iap2_feature_getFeature(v11, v12);
          free(*(v13 + 8));
          v14 = OUTLINED_FUNCTION_66_1();
          *(iap2_feature_getFeature(v14, v15) + 8) = 0;
        }
      }

      v2 = 1;
      v16 = OUTLINED_FUNCTION_66_1();
      *(iap2_feature_getFeature(v16, v17) + 8) = a2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t iap2_identification_createRejectMessage(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  *(a1 + 136) = malloc_type_calloc(1uLL, 0x48uLL, 0x109004066C3AFE2uLL);
  v2 = malloc_type_malloc(0xFFFFuLL, 0x170039DBuLL);
  *(a1 + 144) = v2;
  iAP2MsgInit(*(a1 + 136), 7427, v2, 0xFFFF, _iap2_identification_cleanupRejectMsg, 0);
  v3 = OUTLINED_FUNCTION_22();
  *(a1 + 152) = CFDataCreateMutable(v3, v4);
  v5 = OUTLINED_FUNCTION_22();
  *(a1 + 160) = CFDataCreateMutable(v5, v6);
  *(a1 + 168) = 0;
  v7 = OUTLINED_FUNCTION_22();
  *(a1 + 176) = CFSetCreateMutable(v7, v8, 0);
  v9 = OUTLINED_FUNCTION_22();
  *(a1 + 184) = CFSetCreateMutable(v9, v10, 0);
  v11 = OUTLINED_FUNCTION_22();
  *(a1 + 120) = CFSetCreateMutable(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_22();
  *(a1 + 192) = CFStringCreateMutable(v14, v15);
  v16 = OUTLINED_FUNCTION_22();
  *(a1 + 200) = CFStringCreateMutable(v16, v17);
  v18 = OUTLINED_FUNCTION_22();
  Mutable = CFStringCreateMutable(v18, v19);
  *(a1 + 208) = Mutable;
  if (!*(a1 + 136) || !*(a1 + 144) || !*(a1 + 152) || !*(a1 + 160) || !*(a1 + 176) || !*(a1 + 184) || !*(a1 + 120))
  {
    return 12;
  }

  v21 = Mutable;
  result = 12;
  if (*(a1 + 200) && v21)
  {
    v23 = *(a1 + 192);
    if (v23)
    {
      CFStringAppend(v23, @"iapreject: Identification Rejected Details:\n");
      CFStringAppendFormat(*(a1 + 200), 0, @"iapreject:  Param: %s", "MessagesSentByAccessory");
      CFStringAppendFormat(*(a1 + 208), 0, @"iapreject:  Param: %s", "MessagesRcvdFromDevice");
      return 0;
    }

    return 12;
  }

  return result;
}

uint64_t iap2_identification_processMessagesSet(uint64_t a1, unsigned __int16 *a2, unsigned int a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v4 = a4;
  if (a3)
  {
    if (a4)
    {
      v13 = 6;
    }

    else
    {
      v13 = 7;
    }

    _addRejectParam(a1, v13, 7u);
    return 22;
  }

  else
  {
    v8 = a3 >> 1;
    Mutable = CFSetCreateMutable(kCFAllocatorDefault, v8, 0);
    if (a3)
    {
      do
      {
        v10 = *a2++;
        CFSetAddValue(Mutable, (bswap32(v10) >> 16));
        --v8;
      }

      while (v8);
    }

    if (v4)
    {
      v11 = *(a1 + 96);
      if (v11)
      {
        CFRelease(v11);
      }

      result = 0;
      *(a1 + 96) = Mutable;
    }

    else
    {
      v14 = *(a1 + 104);
      if (v14)
      {
        CFRelease(v14);
      }

      result = 0;
      *(a1 + 104) = Mutable;
    }
  }

  return result;
}

uint64_t iap2_identification_cbIdentificationInfoParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (!a1 || !a3 || !a4)
  {
    return v4;
  }

  ParamID = iAP2MsgGetParamID(a3);
  v9 = gLogObjects;
  v10 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 26)
  {
    v11 = *(gLogObjects + 200);
  }

  else
  {
    v11 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *v55 = v9;
      OUTLINED_FUNCTION_2_1();
      v56 = v10;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_21_9();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Checking identification info group for paramID: %u...", buf, 8u);
  }

  ParamHandler = iap2_identification_getParamHandler(ParamID);
  if (ParamHandler)
  {
    if (ParamHandler(a4, a1, a3))
    {
      valuePtr = ParamID;
      v14 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFArrayGetCount(_giAP2RequiredIdentificationParams);
      v15 = OUTLINED_FUNCTION_26_1();
      if (CFArrayContainsValue(v15, v57, v14))
      {
        IdentificationInfo = iap2_identification_getIdentificationInfo(a4);
        if (!IdentificationInfo)
        {
          v25 = 0;
          if (!v14)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        CFSetAddValue(*(IdentificationInfo + 120), v14);
        v17 = gLogObjects;
        v18 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 26)
        {
          v19 = *(gLogObjects + 200);
        }

        else
        {
          v19 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            *buf = 134218240;
            *v55 = v17;
            OUTLINED_FUNCTION_2_1();
            v56 = v18;
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v43, v44, v45, v46, v47, 0x12u);
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v55 = valuePtr;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Added identification paramID: 0x%04X to received params set!", buf, 8u);
        }
      }

      v25 = 1;
      if (!v14)
      {
LABEL_40:
        if ((v25 & 1) == 0)
        {
          if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_13_1();
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v48, v49, v50, v51, v52, 0x12u);
          }

          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_21_9();
            OUTLINED_FUNCTION_7_17();
            _os_log_error_impl(v38, v39, v40, v41, v42, 8u);
          }
        }

        return 0;
      }

LABEL_39:
      CFRelease(v14);
      goto LABEL_40;
    }

    if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_7_17();
      _os_log_error_impl(v33, v34, v35, v36, v37, 0x12u);
    }

    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_21_9();
      OUTLINED_FUNCTION_7_17();
      _os_log_error_impl(v27, v28, v29, v30, v31, 8u);
    }

    return 1;
  }

  else
  {
    v20 = gLogObjects;
    v21 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v22 = *(gLogObjects + 200);
    }

    else
    {
      v22 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        *v55 = v20;
        OUTLINED_FUNCTION_2_1();
        v56 = v21;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      iAP2MsgGetMsgID(a1);
      OUTLINED_FUNCTION_21_9();
      *&v55[4] = 1024;
      *&v55[6] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unknown Param ID: %d for Msg ID: 0x%04X", buf, 0xEu);
    }

    v24 = iap2_identification_getIdentificationInfo(a4);
    v4 = 1;
    _addRejectParam(v24, ParamID, 1u);
  }

  return v4;
}

void *iap2_identification_getParamHandler(void *key)
{
  value = 0;
  if (_giAP2IdentificationParamHandlers)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(_giAP2IdentificationParamHandlers, key, &value);
    if (!value)
    {
      if (ValueIfPresent)
      {
        if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_13_1();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
        }

        if (OUTLINED_FUNCTION_21())
        {
          OUTLINED_FUNCTION_21_9();
          OUTLINED_FUNCTION_7_17();
          _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
        }
      }
    }
  }

  return value;
}

BOOL iap2_identification_cancelIdentificationHandler(uint64_t *a1)
{
  if (a1)
  {
    if (gLogObjects)
    {
      v2 = gNumLogObjects < 26;
    }

    else
    {
      v2 = 1;
    }

    if (v2)
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
      }
    }

    else
    {
      v8 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
    }

    if ((iap2_identification_getState(a1) & 0xFFFFFFFD) == 1)
    {
      if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v26, v27, v28, v29, v30, 0x12u);
      }

      v13 = OUTLINED_FUNCTION_66_1();
      if (os_log_type_enabled(v13, v14))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v15, v16, OS_LOG_TYPE_INFO, v17, v18, 2u);
      }

      iap2_identification_setIdentificationState(a1, 4);
      AccessoryNotSupportedCF = acc_userNotifications_createAccessoryNotSupportedCF();
      Identifier = acc_userNotifications_createIdentifier(@"identification", a1[1]);
      ACCUNSetIdentifier(AccessoryNotSupportedCF, Identifier);
      if (Identifier)
      {
        CFRelease(Identifier);
      }

      ParentConnection = acc_endpoint_getParentConnection(*a1);
      v22 = acc_endpoint_getParentConnection(ParentConnection);
      ACCUNSetGroupIdentifier(AccessoryNotSupportedCF, v22);
      v23 = OUTLINED_FUNCTION_22();
      ACCUNManagerPresentNotification(v23, v24);
      if (AccessoryNotSupportedCF)
      {
        CFRelease(AccessoryNotSupportedCF);
      }
    }
  }

  return a1 != 0;
}

_BYTE *iap2_identification_handleIdentificationRejected(_BYTE *result)
{
  if (result)
  {
    v1 = result;
    v15 = 0;
    result = iap2_feature_getFeatureInfoEntries(&v15);
    if (result)
    {
      v2 = v15;
      if (v15)
      {
        v3 = 0;
        v4 = (result + 8);
        do
        {
          v5 = **v4;
          if (v5 && *(v5 + 32))
          {
            v6 = gLogObjects;
            v7 = gNumLogObjects;
            if (gLogObjects)
            {
              v8 = gNumLogObjects < 26;
            }

            else
            {
              v8 = 1;
            }

            if (v8)
            {
              v13 = &_os_log_default;
              if (OUTLINED_FUNCTION_21())
              {
                *buf = 134218240;
                v17 = v6;
                v18 = 1024;
                v19 = v7;
                OUTLINED_FUNCTION_8_0();
                _os_log_error_impl(v9, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v12, 0x12u);
                v13 = &_os_log_default;
              }
            }

            else
            {
              v13 = *(gLogObjects + 200);
            }

            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = *(v4 - 2);
              *buf = 67109120;
              LODWORD(v17) = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Clearing feature data for feature: %{coreacc:iAP2Feature_t}d...", buf, 8u);
            }

            result = (*(**v4 + 32))(v1);
            v2 = v15;
          }

          ++v3;
          v4 += 2;
        }

        while (v3 < v2);
      }
    }
  }

  return result;
}

void iap2_identification_identificationRejected()
{
  OUTLINED_FUNCTION_28_10();
  if (v0)
  {
    v2 = v1;
    if (v1)
    {
      v3 = v0;
      v4 = (v1 + 136);
      if (*(v1 + 136))
      {
        if (gLogObjects)
        {
          v5 = gNumLogObjects < 26;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          v11 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_10(v6, v7, v8, v9, v10);
          }
        }

        else
        {
          v11 = *(gLogObjects + 200);
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          CFStringGetCStringPtr(*(v2 + 192), 0x8000100u);
          OUTLINED_FUNCTION_6_0();
          _os_log_impl(v12, v13, OS_LOG_TYPE_DEFAULT, v14, v15, 0xCu);
        }

        if (!iap2_sessionControl_sendOutgoingMessage(v3, *v4))
        {
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v16 = *(gLogObjects + 200);
          }

          else
          {
            v16 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v17, v18, v19, v20, v21, 0x12u);
            }
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_15_1();
            _os_log_impl(v22, v23, OS_LOG_TYPE_DEFAULT, v24, v25, 8u);
          }

          goto LABEL_16;
        }

        *v4 = 0;
        *(v2 + 144) = 0;
      }

      iap2_identification_setIdentificationState(v3, 3);
LABEL_16:
      iap2_identification_handleIdentificationRejected(v3);
    }
  }

  OUTLINED_FUNCTION_29_8();
}

void iap2_identification_checkMsgIDList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_10();
  a22 = v23;
  a23 = v26;
  if (!v24)
  {
    goto LABEL_37;
  }

  v27 = v25;
  if (!v25)
  {
    goto LABEL_37;
  }

  v28 = v24;
  v29 = v25[12];
  if (v29)
  {
    Count = CFSetGetCount(v29);
    v31 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
    CFSetGetValues(v27[12], v31);
    if (Count < 1)
    {
      if (!v31)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v32 = 0;
      v33 = 1;
      do
      {
        if (!CFSetContainsValue(v27[22], v31[v32]))
        {
          iap2_identification_rejectMsgID(v28, LOWORD(v31[v32]), 0, 1u);
        }

        v32 = v33;
        v36 = Count > v33++;
      }

      while (v36);
    }

    free(v31);
  }

  else
  {
    v34 = gLogObjects;
    v35 = gNumLogObjects;
    if (gLogObjects)
    {
      v36 = gNumLogObjects < 26;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      v38 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        LODWORD(a9) = 134218240;
        *(&a9 + 4) = v34;
        OUTLINED_FUNCTION_3();
        *(&a9 + 14) = v35;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
      }
    }

    else
    {
      v38 = *(gLogObjects + 200);
    }

    if (OUTLINED_FUNCTION_27())
    {
      LOWORD(a9) = 0;
      OUTLINED_FUNCTION_10_7(&_mh_execute_header, v38, v39, "pIdentInfo->messagesSentByAccSet = NULL", &a9);
    }
  }

LABEL_21:
  v40 = v27[13];
  if (v40)
  {
    v41 = CFSetGetCount(v40);
    v42 = malloc_type_calloc(v41, 8uLL, 0x10040436913F5uLL);
    CFSetGetValues(v27[13], v42);
    if (v41 >= 1)
    {
      v43 = 0;
      v44 = 1;
      do
      {
        if (!CFSetContainsValue(v27[23], v42[v43]))
        {
          iap2_identification_rejectMsgID(v28, LOWORD(v42[v43]), 1, 1u);
        }

        v43 = v44;
        v36 = v41 > v44++;
      }

      while (v36);
      goto LABEL_32;
    }

    if (v42)
    {
LABEL_32:
      free(v42);
    }
  }

  else
  {
    v45 = gLogObjects;
    v46 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_13())
    {
      LODWORD(a9) = 134218240;
      *(&a9 + 4) = v45;
      OUTLINED_FUNCTION_3();
      *(&a9 + 14) = v46;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v52, v53, v54, v55, v56, 0x12u);
    }

    if (OUTLINED_FUNCTION_13())
    {
      LOWORD(a9) = 0;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v47, v48, v49, v50, v51, 2u);
    }
  }

LABEL_37:
  OUTLINED_FUNCTION_29_8();
}

BOOL iap2_identification_checkRequiredTransportComponentParam(uint64_t *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  result = 1;
  if (a2)
  {
    v6 = *a1;
    if (v6)
    {
      result = 0;
      switch(a3)
      {
        case 14:
          if (*(v6 + 24) != 6)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_20_10();
          if (v9 >= 0xF)
          {
            if (*(*v8 + 56))
            {
              goto LABEL_32;
            }
          }

          goto LABEL_27;
        case 15:
          if (!*(v6 + 24))
          {
            OUTLINED_FUNCTION_20_10();
            if (v11 < 0x10 || !*(*v10 + 60))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 16:
          if (*(v6 + 24) == 8)
          {
            OUTLINED_FUNCTION_20_10();
            if (v15 < 0x11 || !*(*v14 + 64))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 17:
          if ((*(v6 + 24) & 0xFFFFFFFE) == 2)
          {
            OUTLINED_FUNCTION_20_10();
            if (v17 < 0x12 || !*(*v16 + 68))
            {
              goto LABEL_27;
            }
          }

          goto LABEL_32;
        case 24:
          if (*(v6 + 24) != 4)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_20_10();
          if (v13 > 0x18)
          {
            if (*(*v12 + 96))
            {
              goto LABEL_32;
            }
          }

LABEL_27:
          _addRejectParam(a2, v7, 2u);
          result = 1;
          *(a2 + 132) = 1;
          break;
        case 26:
          return result;
        default:
          if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_13())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_13_0();
            _os_log_error_impl(v23, v24, v25, v26, v27, 0x12u);
          }

          result = OUTLINED_FUNCTION_13();
          if (!result)
          {
            return result;
          }

          OUTLINED_FUNCTION_13_0();
          _os_log_error_impl(v18, v19, v20, v21, v22, 2u);
LABEL_32:
          result = 0;
          break;
      }
    }
  }

  return result;
}

uint64_t iap2_identification_checkIdentificationInfoForRequiredTransportParam(void *a1, uint64_t a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v4 = OUTLINED_FUNCTION_17_18();
      v6 = iap2_identification_checkRequiredTransportComponentParam(v4, v5, 14);
      v7 = OUTLINED_FUNCTION_17_18();
      v9 = iap2_identification_checkRequiredTransportComponentParam(v7, v8, 15) || v6;
      OUTLINED_FUNCTION_8_0();
      v13 = iap2_identification_checkRequiredTransportComponentParam(v10, v11, v12);
      v14 = OUTLINED_FUNCTION_17_18();
      v16 = v9 | v13 | iap2_identification_checkRequiredTransportComponentParam(v14, v15, 17);
      v17 = OUTLINED_FUNCTION_17_18();
      return v16 | iap2_identification_checkRequiredTransportComponentParam(v17, v18, 24) | (*a1 == 0);
    }
  }

  return result;
}

uint64_t iap2_identification_checkIdentificationInfoAll(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 1;
  }

  Feature = iap2_feature_getFeature(a1, 1u);
  if (Feature)
  {
    v4 = Feature;
    v5 = *(*(Feature + 8) + 112);
    if (v5)
    {
      CFSetRemoveAllValues(v5);
    }

    else
    {
      *(*(v4 + 8) + 112) = CFSetCreateMutable(kCFAllocatorDefault, 0, 0);
    }
  }

  return iap2_identification_checkIdentificationInfo(a1);
}

void _CFSetValidateRequiredIdentificationParamsApplierFunction(const __CFNumber *a1, uint64_t a2)
{
  if (a2)
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
    if (!CFSetContainsValue(*(a2 + 120), a1))
    {
      _addRejectParam(a2, valuePtr, 2u);
      *(a2 + 132) = 1;
    }
  }
}

BOOL iap2_identification_identificationInfoHandler(_BOOL8 result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!*result)
  {
    return 0;
  }

  if ((iap2_identification_getState(result) & 0xFFFFFFFD) == 1)
  {
    IdentificationInfo = iap2_identification_createIdentificationInfo();
    if (!IdentificationInfo)
    {
      v3 = gLogObjects;
      v4 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v83 = v3;
        OUTLINED_FUNCTION_14_16();
        v84 = v4;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v23, v24, v25, v26, v27, 0x12u);
      }

      result = OUTLINED_FUNCTION_13();
      if (!result)
      {
        return result;
      }

      *buf = 0;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v13, v14, v15, v16, v17, 2u);
      return 0;
    }

    v8 = IdentificationInfo;
    v9 = OUTLINED_FUNCTION_1_0();
    if (!iap2_identification_setIdentificationInfo(v9, v10))
    {
      v11 = gLogObjects;
      v12 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_21())
      {
        *buf = 134218240;
        v83 = v11;
        OUTLINED_FUNCTION_14_16();
        v84 = v12;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v40, v41, v42, v43, v44, 0x12u);
      }

      if (OUTLINED_FUNCTION_21())
      {
        *buf = 0;
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v35, v36, v37, v38, v39, 2u);
      }

      free(v8);
      return 0;
    }

    RejectMessage = iap2_identification_createRejectMessage(v8);
    if (RejectMessage)
    {
LABEL_38:
      v45 = gLogObjects;
      v46 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 26)
      {
        v47 = *(gLogObjects + 200);
      }

      else
      {
        v47 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          *buf = 134218240;
          v83 = v45;
          OUTLINED_FUNCTION_14_16();
          v84 = v46;
          OUTLINED_FUNCTION_25_4();
          OUTLINED_FUNCTION_10(v53, v54, v55, v56, v57);
        }
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v83) = RejectMessage;
        OUTLINED_FUNCTION_25_4();
        _os_log_impl(v48, v49, OS_LOG_TYPE_DEFAULT, v50, v51, 8u);
      }

      v52 = *(v8 + 8);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 0x40000000;
      v81[2] = __iap2_identification_identificationInfoHandler_block_invoke;
      v81[3] = &__block_descriptor_tmp_20;
      v81[4] = v1;
      v81[5] = v8;
      iap2_sessionControl_authorizationHook_identification(v1, v52, v81);
      return 0;
    }

    v29 = OUTLINED_FUNCTION_26_1();
    v32 = iAP2MsgForEachParamDo(v29, v30, v31, v1);
    if (v32)
    {
      RejectMessage = v32;
      v33 = gLogObjects;
      v34 = gNumLogObjects;
      if ((!gLogObjects || gNumLogObjects < 26) && OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        v83 = v33;
        OUTLINED_FUNCTION_14_16();
        v84 = v34;
        OUTLINED_FUNCTION_25_4();
        OUTLINED_FUNCTION_10(v66, v67, v68, v69, v70);
      }

      if (OUTLINED_FUNCTION_27())
      {
        *buf = 67109120;
        LODWORD(v83) = RejectMessage;
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v62, v63, OS_LOG_TYPE_ERROR, v64, v65, 8u);
      }

      goto LABEL_38;
    }

    v58 = _giAP2RequiredIdentificationParams;
    v85.length = CFArrayGetCount(_giAP2RequiredIdentificationParams);
    v85.location = 0;
    CFArrayApplyFunction(v58, v85, _CFSetValidateRequiredIdentificationParamsApplierFunction, v8);
    v59 = OUTLINED_FUNCTION_1_0();
    v61 = iap2_identification_checkIdentificationInfoForRequiredTransportParam(v59, v60);
    if (*(v8 + 132))
    {
      RejectMessage = -1;
      goto LABEL_38;
    }

    if (v61)
    {
      RejectMessage = 1;
      goto LABEL_38;
    }

    v71 = gLogObjects;
    v72 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v73 = *(gLogObjects + 200);
    }

    else
    {
      v73 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        *buf = 134218240;
        v83 = v71;
        OUTLINED_FUNCTION_14_16();
        v84 = v72;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "IdentificationInfo params processed, checking identification info...", buf, 2u);
    }

    v75 = OUTLINED_FUNCTION_1_0();
    v77 = iap2_identification_checkIdentificationInfoAll(v75, v76);
    v78 = *(v8 + 8);
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 0x40000000;
    v79[2] = __iap2_identification_identificationInfoHandler_block_invoke_76;
    v79[3] = &__block_descriptor_tmp_77;
    v80 = v77;
    v79[4] = v1;
    v79[5] = v8;
    iap2_sessionControl_authorizationHook_identification(v1, v78, v79);
    return v77 == 0;
  }

  else
  {
    v5 = gLogObjects;
    v6 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 26)
    {
      v7 = *(gLogObjects + 200);
    }

    else
    {
      v7 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v83 = v5;
        OUTLINED_FUNCTION_14_16();
        v84 = v6;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v18, v19, v20, v21, v22, 0x12u);
      }
    }

    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "After accessory has already completed Identify process once, any subsequent IdentificationInfo is ignored.", buf, 2u);
      return 0;
    }
  }

  return result;
}

const __CFSet *iap2_identification_isIdentifiedForFeature(const __CFSet *result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_30_10(result);
    if (result)
    {
      OUTLINED_FUNCTION_18_17();
      if (v3 && (v4 = *(v2 + 8)) != 0)
      {
        result = *(v4 + 112);
        if (result)
        {
          return (CFSetContainsValue(result, v1) != 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t iap2_identification_isIdentifiedForCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!iap2_feature_getFeature(a1, 1u))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_17();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    if (!*(v3 + 112))
    {
LABEL_9:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    LOBYTE(v3) = *(v3 + 128);
  }

  return v3 & 1;
}

uint64_t iap2_identification_isIdentifiedForWirelessCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!iap2_feature_getFeature(a1, 1u))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_17();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    if (!*(v3 + 112))
    {
LABEL_9:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    LOBYTE(v3) = *(v3 + 129);
  }

  return v3 & 1;
}

uint64_t iap2_identification_isIdentifiedForUSBCarPlay(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!iap2_feature_getFeature(a1, 1u))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_17();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    if (!*(v3 + 112))
    {
LABEL_9:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    LOBYTE(v3) = *(v3 + 130);
  }

  return v3 & 1;
}

uint64_t iap2_identification_isIdentifiedForThemeAssets(uint64_t a1)
{
  if (!a1)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (!iap2_feature_getFeature(a1, 1u))
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_18_17();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    if (!*(v3 + 112))
    {
LABEL_9:
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    LOBYTE(v3) = *(v3 + 131);
  }

  return v3 & 1;
}

void iap2_identification_setIdentifiedForFeature(uint64_t a1)
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_30_10(a1);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 112);
        if (v4)
        {
          CFSetAddValue(v4, v1);
          if (gLogObjects && gNumLogObjects >= 26)
          {
            v5 = *(gLogObjects + 200);
          }

          else
          {
            v5 = &_os_log_default;
            if (OUTLINED_FUNCTION_21())
            {
              OUTLINED_FUNCTION_3();
              OUTLINED_FUNCTION_8_0();
              _os_log_error_impl(v10, v11, v12, v13, v14, 0x12u);
            }
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_15_1();
            _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 8u);
          }
        }
      }
    }
  }
}

void *iap2_identification_getTransportComponent(void *result)
{
  if (!result)
  {
    return result;
  }

  result = OUTLINED_FUNCTION_30_10(result);
  if (!result)
  {
    return result;
  }

  v4 = result[1];
  if (!v4 || !*(v4 + 72))
  {
    return 0;
  }

  CFDictionaryGetCount(*(v4 + 72));
  OUTLINED_FUNCTION_27_9();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_23_9();
  if (!v7)
  {
    v10 = OUTLINED_FUNCTION_26_1();
    CFDictionaryGetKeysAndValues(v10, v11, v3);
    return 0;
  }

  memset(v3, 170, v6);
  v8 = OUTLINED_FUNCTION_26_1();
  CFDictionaryGetKeysAndValues(v8, v9, v3);
  if (v2 < 1)
  {
    return 0;
  }

  while (1)
  {
    result = *v3;
    if (*v3)
    {
      if (*(result + 5) == v1)
      {
        break;
      }
    }

    ++v3;
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

CFDataRef iap2_identification_copyMacAddressForComponentID(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  IdentificationInfo = iap2_identification_getIdentificationInfo(a1);
  if (!IdentificationInfo)
  {
    return 0;
  }

  if (!*(IdentificationInfo + 72))
  {
    return 0;
  }

  Count = CFDictionaryGetCount(*(IdentificationInfo + 72));
  if (!Count)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = OUTLINED_FUNCTION_26_1();
  CFDictionaryGetKeysAndValues(v8, v9, v7);
  if (v5 < 1)
  {
LABEL_26:
    v18 = 0;
    goto LABEL_35;
  }

  v10 = v7;
  while (1)
  {
    v11 = *v10;
    if (!*v10)
    {
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects)
      {
        v16 = gNumLogObjects < 26;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = &_os_log_default;
        if (OUTLINED_FUNCTION_27())
        {
          *buf = 134218240;
          *v26 = v14;
          OUTLINED_FUNCTION_2_1();
          *&v26[10] = v15;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          v17 = &_os_log_default;
        }
      }

      else
      {
        v17 = *(gLogObjects + 200);
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "transportComponent is NULL!", buf, 2u);
      }

      goto LABEL_25;
    }

    if (*v11 == a2)
    {
      v12 = *(v11 + 5);
      if (v12 == 5 || v12 == 3)
      {
        break;
      }
    }

LABEL_25:
    ++v10;
    if (!--v5)
    {
      goto LABEL_26;
    }
  }

  v18 = CFDataCreate(kCFAllocatorDefault, v11 + 24, 6);
  v19 = gLogObjects;
  v20 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 26)
  {
    v21 = *(gLogObjects + 200);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      *buf = 134218240;
      *v26 = v19;
      OUTLINED_FUNCTION_2_1();
      *&v26[10] = v20;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v24, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = *v11;
    *buf = 67109378;
    *v26 = v23;
    *&v26[4] = 2112;
    *&v26[6] = v18;
    _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "iap2_identification_copyMacAddressForComponentID: componentID=%d macAddr=%@", buf, 0x12u);
  }

LABEL_35:
  free(v7);
  return v18;
}

void iap2_identification_setParamHandler()
{
  OUTLINED_FUNCTION_28_10();
  v1 = v0;
  v3 = v2;
  v4 = _giAP2IdentificationParamHandlers;
  if (_giAP2IdentificationParamHandlers)
  {
    goto LABEL_12;
  }

  _giAP2IdentificationParamHandlers = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  if (!gLogObjects || gNumLogObjects < 26)
  {
    v11 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_10(v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v11 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_38_3(v23, v24, v25, v26, v27);
  }

  v4 = _giAP2IdentificationParamHandlers;
  if (_giAP2IdentificationParamHandlers)
  {
LABEL_12:
    CFDictionarySetValue(v4, v3, v1);
    if (gLogObjects)
    {
      v12 = gNumLogObjects < 26;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v18 = &_os_log_default;
      if (OUTLINED_FUNCTION_21())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_8_0();
        _os_log_error_impl(v13, v14, v15, v16, v17, 0x12u);
      }
    }

    else
    {
      v18 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_debug_impl(v19, v20, OS_LOG_TYPE_DEBUG, v21, v22, 8u);
    }
  }

  OUTLINED_FUNCTION_29_8();
}

uint64_t iap2_identification_setRequiredIdentificationParam(int a1)
{
  valuePtr = a1;
  if (!_giAP2RequiredIdentificationParams)
  {
    _giAP2RequiredIdentificationParams = CFArrayCreateMutable(kCFAllocatorDefault, 243, &kCFTypeArrayCallBacks);
    v1 = gLogObjects;
    v2 = gNumLogObjects;
    if (!gLogObjects || gNumLogObjects < 26)
    {
      v9 = &_os_log_default;
      if (OUTLINED_FUNCTION_13())
      {
        *buf = 134218240;
        v24 = v1;
        OUTLINED_FUNCTION_2_1();
        v25 = v2;
        OUTLINED_FUNCTION_13_0();
        _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
      }
    }

    else
    {
      v9 = *(gLogObjects + 200);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      OUTLINED_FUNCTION_38_3(&_mh_execute_header, v9, v10, "Initialized required identification params set!", buf);
    }

    if (!_giAP2RequiredIdentificationParams)
    {
      return 0;
    }
  }

  v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFArrayAppendValue(_giAP2RequiredIdentificationParams, v11);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 26;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v20 = &_os_log_default;
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134218240;
      v24 = v12;
      OUTLINED_FUNCTION_2_1();
      v25 = v13;
      OUTLINED_FUNCTION_13_0();
      _os_log_error_impl(v15, v16, v17, v18, v19, 0x12u);
    }
  }

  else
  {
    v20 = *(gLogObjects + 200);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v24) = valuePtr;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Added identification paramID: 0x%04X to required params set!", buf, 8u);
  }

  return 1;
}

_DWORD *_createFeature_21(_DWORD *result)
{
  if (result)
  {
    result = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    if (result)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t _destroyFeature_21(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result)
    {
      iap2_identification_releaseIdentInfo(v2[1]);
      v3 = v2[1];
      if (v3)
      {
        free(v3);
        v2[1] = 0;
      }

      if (*v1)
      {
        free(*v1);
        *v1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t iap2_sessionLog_start(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0xA8uLL, 0x1090040E72C28DDuLL);
    if (result)
    {
      v2 = result;
      v3 = malloc_type_calloc(1uLL, 0x50uLL, 0x1060040881D8D0DuLL);
      if (v3)
      {
        v4 = v3;
        *v3 = *(v1 + 8);
        v3[8] = dispatch_queue_create("LoggingProtocol-DeviceContext-Queue", 0);
        v2[4] = v4;
        *v2 = 0;
        *(v2 + 2) = 2;
        v2[2] = 0;
        *(v2 + 12) = 0;
        *(v2 + 2) = 0;
        v2[11] = 0;
        v2[12] = 0;
        v2[10] = 0;
        *(v2 + 104) = 0;
        *(v2 + 27) = 2;
        *(v2 + 112) = 0;
        *(v2 + 29) = 0;
        result = 1;
        *(v1 + 448) = v2;
      }

      else
      {
        free(v2);
        return 0;
      }
    }
  }

  return result;
}

BOOL iap2_sessionLog_cleanup(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 448) + 32);
    v3 = v2[9];
    if (v3)
    {
      dispatch_source_cancel(v3);
      dispatch_release(v2[9]);
      v2[9] = 0;
    }

    v4 = v2[6];
    if (v4)
    {
      dispatch_source_cancel(v4);
      dispatch_release(v2[6]);
      v2[6] = 0;
    }

    v5 = v2[7];
    if (v5)
    {
      dispatch_source_cancel(v5);
      dispatch_release(v2[7]);
      v2[7] = 0;
    }

    v6 = v2[8];
    if (v6)
    {
      dispatch_sync(v6, &__block_literal_global_43);
      dispatch_release(v2[8]);
      v2[8] = 0;
    }

    acc_platform_loggingProtocol_removeNotificationObserver(**(*(a1 + 448) + 32));
    v7 = *(a1 + 448);
    if (v7[4])
    {
      free(v7[4]);
      v7 = *(a1 + 448);
      v7[4] = 0;
    }

    if (v7[2])
    {
      free(v7[2]);
      v7 = *(a1 + 448);
      v7[2] = 0;
    }

    if (v7[10])
    {
      free(v7[10]);
      v7 = *(a1 + 448);
      v7[10] = 0;
    }

    if (v7[11])
    {
      free(v7[11]);
      v7 = *(a1 + 448);
      v7[11] = 0;
    }

    if (v7[12])
    {
      free(v7[12]);
      v7 = *(a1 + 448);
      v7[12] = 0;
    }

    free(v7);
    *(a1 + 448) = 0;
    acc_platform_loggingProtocol_postLoggingCleanup();
  }

  return a1 != 0;
}

uint64_t iap2_sessionLog_parseIncomingMessage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v5 = *(a1 + 448);
  if (!*(v5 + 16))
  {
    *(v5 + 16) = malloc_type_malloc(0xFFFFuLL, 0x46C20E10uLL);
  }

  return loggingProtocol_parseIncomingByteStream(a2, a3, v5);
}

BOOL iap2_sessionLog_sendOutgoingMessage(uint64_t a1, char *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0;
  }

  if (!*v4)
  {
    return 0;
  }

  EndpointWithUUID = acc_manager_getEndpointWithUUID(*v4);
  if (!EndpointWithUUID)
  {
    return 0;
  }

  v7 = EndpointWithUUID[7];
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 32);
  if (v8)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  SessionForService = iAP2LinkGetSessionForService(v9, 4);

  return iAP2LinkQueueSendData(v9, a2, a3, SessionForService, 0, 0, 0, 0);
}

uint64_t iap2_oobBtPairing_accessoryInfoHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v4 = *(gLogObjects + 360);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_73_0(&_mh_execute_header, v4, v5, "iAP2OOBBTPairing AccessoryInfo Handler %@", buf);
  }

  v6 = 0;
  if (a1 && a2)
  {
    v7 = OUTLINED_FUNCTION_21_1();
    FirstParam = iAP2MsgGetFirstParam(v7, v8);
    v52 = 0;
    valuePtr = 0;
    if (FirstParam)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(FirstParam);
        v15 = ParamID;
        if (ParamID == 1)
        {
          break;
        }

        if (ParamID)
        {
          goto LABEL_18;
        }

        DataAsU16 = iAP2MsgGetDataAsU16(FirstParam, &v52);
        if (v52)
        {
          MsgID = iAP2MsgGetMsgID(a2);
          printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, MsgID);
          return 0;
        }

        v10 = DataAsU16;
        valuePtr = DataAsU16;
        v11 = 1;
LABEL_19:
        v19 = OUTLINED_FUNCTION_21_1();
        FirstParam = iAP2MsgGetNextParam(v19, v20, FirstParam);
        if (!FirstParam)
        {
          LODWORD(FirstParam) = v10;
          goto LABEL_22;
        }
      }

      DataAsU32 = iAP2MsgGetDataAsU32(FirstParam, &v52);
      if (v52)
      {
        v50 = iAP2MsgGetMsgID(a2);
        printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 1, v50);
        return 0;
      }

      v12 = DataAsU32;
      v13 = 1;
LABEL_18:
      v18 = iAP2MsgGetMsgID(a2);
      printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v15, v18);
      goto LABEL_19;
    }

    v13 = 0;
    v12 = 0;
    v11 = 0;
LABEL_22:
    if (gLogObjects && gNumLogObjects >= 46)
    {
      v21 = *(gLogObjects + 360);
    }

    else
    {
      v21 = &_os_log_default;
      if (OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_11_16();
        OUTLINED_FUNCTION_35(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_17_19();
      OUTLINED_FUNCTION_73_0(&_mh_execute_header, v21, v22, "iAP2OOBBTPairing AccessoryInfo: %@", buf);
    }

    Feature = iap2_feature_getFeature(a1, 0xFu);
    if (Feature)
    {
      v24 = Feature;
      if (*(Feature + 28) == 1)
      {
        buf[0] = 0;
        if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgOOBBTPairingMainList, 5, buf))
        {
          if (v13 & v11)
          {
            v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, &valuePtr);
            Value = CFDictionaryGetValue(*v24, v25);
            v27 = iap2_identification_copyMacAddressForComponentID(a1, valuePtr);
            v28 = gLogObjects;
            v29 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 46)
            {
              v30 = *(gLogObjects + 360);
            }

            else
            {
              v30 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                *v54 = v28;
                OUTLINED_FUNCTION_5_0();
                *&v54[10] = v29;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109634;
              *v54 = valuePtr;
              *&v54[4] = 2112;
              *&v54[6] = Value;
              *&v54[14] = 2112;
              *&v54[16] = v27;
              _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "iAP2OOBBTPairing AccessoryInfo: for componentID=%d, uuid=%@ accessoryMacAddr=%@", buf, 0x1Cu);
            }

            if (Value)
            {
              v32 = v27 == 0;
            }

            else
            {
              v32 = 1;
            }

            v6 = !v32;
            if (v32)
            {
              v36 = gLogObjects;
              v37 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 46)
              {
                v38 = *(gLogObjects + 360);
              }

              else
              {
                v38 = &_os_log_default;
                if (OUTLINED_FUNCTION_21())
                {
                  *buf = 134218240;
                  *v54 = v36;
                  OUTLINED_FUNCTION_5_0();
                  *&v54[10] = v37;
                  OUTLINED_FUNCTION_26_2(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                }
              }

              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                OUTLINED_FUNCTION_17_19();
                *&v54[8] = 2112;
                *&v54[10] = Value;
                *&v54[18] = 2112;
                *&v54[20] = v27;
                LOWORD(v55[0]) = 1024;
                *(v55 + 2) = v39;
                _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing AccessoryInfo: %@, no uuid(%@) or accesoryMacAddr(%@) for componentID %d, ignore message", buf, 0x26u);
              }
            }

            else
            {
              if (*(v24 + 24) != valuePtr)
              {
                *(v24 + 24) = valuePtr;
                *(v24 + 16) = CFStringCreateCopy(kCFAllocatorDefault, Value);
              }

              platform_oobBtPairing_accessoryInfo(*(a1 + 8), Value, v27, v12);
            }

            if (v25)
            {
              CFRelease(v25);
            }

            if (v27)
            {
              CFRelease(v27);
            }

            return v6;
          }

          if (gLogObjects && gNumLogObjects >= 46)
          {
            v31 = *(gLogObjects + 360);
          }

          else
          {
            v31 = &_os_log_default;
            if (OUTLINED_FUNCTION_17())
            {
              OUTLINED_FUNCTION_11_16();
              OUTLINED_FUNCTION_35(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
            }
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_17_19();
            OUTLINED_FUNCTION_5_0();
            *&v54[10] = FirstParam;
            *&v54[14] = v33;
            *&v54[16] = v34;
            *&v54[20] = v33;
            *&v54[22] = v12;
            *&v54[26] = v33;
            v55[0] = v35;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing AccessoryInfo: %@, no componentID (%d / %d) or no deviceClass (%d / %d) parameter, ignore message", buf, 0x24u);
          }
        }
      }
    }

    return 0;
  }

  return v6;
}

uint64_t iap2_oobBtPairing_completionInfoHandler(uint64_t a1, uint64_t a2)
{
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v4 = *(gLogObjects + 360);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v29, v30, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_73_0(&_mh_execute_header, v4, v5, "iAP2OOBBTPairing CompletionInfo Handler %@", buf);
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v7 = OUTLINED_FUNCTION_21_1();
  FirstParam = iAP2MsgGetFirstParam(v7, v8);
  v34 = 0;
  if (FirstParam)
  {
    NextParam = FirstParam;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      ParamID = iAP2MsgGetParamID(NextParam);
      if (ParamID)
      {
        v14 = ParamID;
        MsgID = iAP2MsgGetMsgID(a2);
        printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v14, MsgID);
      }

      else
      {
        DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v34);
        if (v34)
        {
          v33 = iAP2MsgGetMsgID(a2);
          printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, v33);
          return 0;
        }

        v11 = DataAsU8;
        v12 = 1;
      }

      v17 = OUTLINED_FUNCTION_21_1();
      NextParam = iAP2MsgGetNextParam(v17, v18, NextParam);
      if (!NextParam)
      {
        goto LABEL_19;
      }
    }
  }

  v12 = 0;
  v11 = 0;
LABEL_19:
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v19 = *(gLogObjects + 360);
  }

  else
  {
    v19 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_9_22();
      OUTLINED_FUNCTION_35(&_mh_execute_header, v31, v32, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_17_19();
    OUTLINED_FUNCTION_73_0(&_mh_execute_header, v19, v20, "iAP2OOBBTPairing CompletionInfo: %@", buf);
  }

  result = iap2_feature_getFeature(a1, 0xFu);
  if (result)
  {
    v21 = result;
    if (*(result + 28) != 1)
    {
      return 0;
    }

    buf[0] = 0;
    result = iap2_identification_checkRequiredMsgIDs(a1, &gskMsgOOBBTPairingMainList, 5, buf);
    if (result)
    {
      if ((v12 & 1) != 0 && (v22 = *(v21 + 16)) != 0)
      {
        platform_oobBtPairing_completionStatus(*(a1 + 8), v22, v11);
        *(v21 + 24) = -1;
        v23 = *(v21 + 16);
        if (v23)
        {
          CFRelease(v23);
          *(v21 + 16) = 0;
        }

        return 1;
      }

      else
      {
        if (gLogObjects && gNumLogObjects >= 46)
        {
          v24 = *(gLogObjects + 360);
        }

        else
        {
          v24 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_11_16();
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          OUTLINED_FUNCTION_17_19();
          OUTLINED_FUNCTION_5_0();
          v36 = v25;
          v37 = v26;
          v38 = v27;
          v39 = 2112;
          v40 = v28;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing CompletionInfo: %@, no resultCode (%d / %d) parameter or no currentOOBBTPairingUID (%@), ignore message", buf, 0x22u);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t iap2_oobBtPairing_startPairingHandler(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_21_10();
  if ((!v2 || v5 < 46) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    HIWORD(v60) = v5;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v36, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v38, v39, v40, v41);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0xFu);
  v14 = *(v3 + 3928);
  v15 = *(v4 + 3936);
  if ((!v14 || v15 < 46) && OUTLINED_FUNCTION_27())
  {
    LODWORD(v61) = 134218240;
    HIDWORD(v61) = v14;
    OUTLINED_FUNCTION_3();
    LOWORD(v62) = HIWORD(v15);
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v42, v43, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v44, v45, v46, v47, v61, HIDWORD(v14), v62);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_30();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
  }

  if (!Feature)
  {
    return 0;
  }

  *(Feature + 24) = -1;
  v21 = *(Feature + 16);
  if (v21)
  {
    CFRelease(v21);
    *(Feature + 16) = 0;
  }

  v22 = *(v3 + 3928);
  if ((!v22 || *(v4 + 3936) < 46) && OUTLINED_FUNCTION_27())
  {
    LODWORD(v60) = 134218240;
    *(&v60 + 4) = v22;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v48, v49, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v50, v51, v52, v53, v60);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_30();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
  }

  v28 = OUTLINED_FUNCTION_49((a1 + 15), 176, a1[24]);
  *(Feature + 28) = 1;
  v29 = *(v3 + 3928);
  if ((!v29 || *(v4 + 3936) < 46) && OUTLINED_FUNCTION_17())
  {
    LODWORD(v60) = 134218240;
    *(&v60 + 4) = v29;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v54, v55, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v56, v57, v58, v59, v60);
  }

  if (OUTLINED_FUNCTION_82())
  {
    iAP2MsgGetMsgID(v28);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v30, v31, v32, v33, v34, 0x12u);
  }

  iap2_sessionControl_sendOutgoingMessage(a1, v28);
  platform_oobBtPairing_deleteParams(a2);
  return 1;
}

BOOL iap2_oobBtPairing_pairingLinkKeyInfoHandler(uint64_t *a1, uint64_t a2)
{
  v4 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 46) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    *&v79[14] = v4;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0xFu);
  v11 = gLogObjects;
  v12 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 46) && OUTLINED_FUNCTION_27())
  {
    *v79 = 134218240;
    *&v79[4] = v11;
    OUTLINED_FUNCTION_3();
    *&v79[14] = v12;
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, v58, v59, v60, *v79, *&v79[16]);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_30();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  if (!Feature)
  {
    return 0;
  }

  result = 0;
  if (!a2 || (*(Feature + 28) & 1) == 0)
  {
    return result;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (*(a2 + 24))
    {
      if ((!gLogObjects || gNumLogObjects < 46) && OUTLINED_FUNCTION_17())
      {
        OUTLINED_FUNCTION_10_0();
        *&v79[14] = v20;
        OUTLINED_FUNCTION_21_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72);
      }

      if (OUTLINED_FUNCTION_82())
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_27_0();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      }

      v30 = OUTLINED_FUNCTION_49((a1 + 15), 178, a1[24]);
      BytePtr = CFDataGetBytePtr(*(a2 + 16));
      CFDataGetLength(*(a2 + 16));
      v32 = OUTLINED_FUNCTION_21_1();
      v35 = iAP2MsgAddDataParam(v32, v33, 0, BytePtr, v34);
      v36 = CFDataGetBytePtr(*(a2 + 24));
      CFDataGetLength(*(a2 + 24));
      v37 = OUTLINED_FUNCTION_21_1();
      if (iAP2MsgAddDataParam(v37, v38, 1, v36, v39) | v35)
      {
        v40 = gNumLogObjects;
        if ((!gLogObjects || gNumLogObjects < 46) && OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_7();
          *&v79[14] = v40;
          OUTLINED_FUNCTION_17_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78);
        }

        if (OUTLINED_FUNCTION_76_1())
        {
          iAP2MsgGetMsgID(v30);
          OUTLINED_FUNCTION_7();
          *&v79[14] = v43;
          OUTLINED_FUNCTION_30();
          _os_log_impl(v44, v45, v46, v47, v48, 0x12u);
        }

        iap2_sessionControl_sendOutgoingMessage(a1, v30);
      }

      platform_oobBtPairing_deleteParams(a2);
      return 1;
    }
  }

  else
  {
    v19 = gLogObjects;
    v20 = gNumLogObjects;
  }

  if (v19 && v20 >= 46)
  {
    v21 = *(v19 + 360);
  }

  else
  {
    v21 = &_os_log_default;
    if (OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      *&v79[14] = v20;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, v64, v65, v66);
    }
  }

  result = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v22 = a1[1];
    v23 = *(a2 + 16);
    if (v23)
    {
      Length = CFDataGetLength(v23);
    }

    else
    {
      Length = -1;
    }

    v41 = *(a2 + 24);
    if (v41)
    {
      v42 = CFDataGetLength(v41);
    }

    else
    {
      v42 = -1;
    }

    *v79 = 138412802;
    *&v79[4] = v22;
    *&v79[12] = 2048;
    *&v79[14] = Length;
    *&v79[22] = 2048;
    v80 = v42;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "iAP2OOBBTPairing pairingLinkKeyInfo %@, Invalid linkKey(%ld bytes) or deviceMacAddr(%ld bytes), message not sent!", v79, 0x20u);
    return 0;
  }

  return result;
}

uint64_t iap2_oobBtPairing_stopPairingHandler(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_21_10();
  if ((!v2 || v5 < 46) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    HIWORD(v59) = v5;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v35, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v37, v38, v39, v40);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  if (!a1)
  {
    return 0;
  }

  Feature = iap2_feature_getFeature(a1, 0xFu);
  v14 = *(v3 + 3928);
  v15 = *(v4 + 3936);
  if ((!v14 || v15 < 46) && OUTLINED_FUNCTION_27())
  {
    LODWORD(v60) = 134218240;
    HIDWORD(v60) = v14;
    OUTLINED_FUNCTION_3();
    LOWORD(v61) = HIWORD(v15);
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v41, v42, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43, v44, v45, v46, v60, HIDWORD(v14), v61);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_15_13();
    OUTLINED_FUNCTION_30();
    _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
  }

  if (!Feature)
  {
    return 0;
  }

  v21 = *(v3 + 3928);
  if ((!v21 || *(v4 + 3936) < 46) && OUTLINED_FUNCTION_27())
  {
    LODWORD(v59) = 134218240;
    *(&v59 + 4) = v21;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v47, v48, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v49, v50, v51, v52, v59);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_30();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
  }

  v27 = OUTLINED_FUNCTION_49((a1 + 15), 180, a1[24]);
  *(Feature + 28) = 0;
  v28 = *(v3 + 3928);
  if ((!v28 || *(v4 + 3936) < 46) && OUTLINED_FUNCTION_17())
  {
    LODWORD(v59) = 134218240;
    *(&v59 + 4) = v28;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v53, v54, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v55, v56, v57, v58, v59);
  }

  if (OUTLINED_FUNCTION_82())
  {
    iAP2MsgGetMsgID(v27);
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v29, v30, v31, v32, v33, 0x12u);
  }

  iap2_sessionControl_sendOutgoingMessage(a1, v27);
  platform_oobBtPairing_deleteParams(a2);
  return 1;
}

void *_createFeature_22(void *a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v4 = *(gLogObjects + 360);
  }

  else
  {
    v4 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      v9 = 134218240;
      v10 = v2;
      OUTLINED_FUNCTION_3();
      v11 = v3;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v7, v8, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v9);
    }
  }

  if (OUTLINED_FUNCTION_76())
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "iAP2OOBBTPairing _createFeature", &v9, 2u);
  }

  if (a1)
  {
    v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040E032A7B1uLL);
    a1 = v5;
    if (v5)
    {
      v5[2] = 0;
      *(v5 + 6) = -1;
      *(v5 + 28) = 0;
      *v5 = OUTLINED_FUNCTION_31_6();
      a1[1] = OUTLINED_FUNCTION_31_6();
    }
  }

  return a1;
}

uint64_t _destroyFeature_22(CFTypeRef **a1, uint64_t a2)
{
  if ((!gLogObjects || gNumLogObjects < 46) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v13, v14, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v15, v16, v17, v18);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    v10 = *a1;
    if (*a1)
    {
      platform_oobBtPairing_accessoryDetached(*(a2 + 8));
      platform_oobBTPairing_decrementUserCount();
      if (*v10)
      {
        CFRelease(*v10);
        *v10 = 0;
      }

      v11 = v10[1];
      if (v11)
      {
        CFRelease(v11);
        v10[1] = 0;
      }

      v12 = v10[2];
      if (v12)
      {
        CFRelease(v12);
        v10[2] = 0;
      }

      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_13(uint64_t a1)
{
  v2 = &audioProductCerts_endpoint_publish_onceToken;
  v3 = gLogObjects;
  v4 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 46)
  {
    v5 = *(gLogObjects + 360);
  }

  else
  {
    v5 = &_os_log_default;
    if (OUTLINED_FUNCTION_21())
    {
      *buf = 134218240;
      *v60 = v3;
      *&v60[8] = 1024;
      *&v60[10] = v4;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
    }
  }

  if (OUTLINED_FUNCTION_76())
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "iAP2OOBBTPairing _startFeatureFromDevice", buf, 2u);
  }

  Feature = iap2_feature_getFeature(a1, 0xFu);
  if (Feature)
  {
    buf[0] = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgOOBBTPairingMainList, 5, buf))
    {
      v8 = iap2_feature_getFeature(a1, 0);
      v9 = iap2_feature_getFeature(a1, 1u);
      v10 = iap2_feature_getFeature(a1, 0x14u);
      if (v10)
      {
        v11 = *(v10 + 24);
        if (v8)
        {
LABEL_12:
          v12 = iap2_accAuthentication_copyCertificate(a1);
          v13 = iap2_accAuthentication_copyCertificateSerial(a1);
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
        if (v8)
        {
          goto LABEL_12;
        }
      }

      v13 = 0;
      v12 = 0;
LABEL_15:
      v14 = iap2_identification_transportComponents(a1);
      if (v14)
      {
        Count = CFDictionaryGetCount(v14);
        if (Count)
        {
          v16 = Count;
          v52 = v9;
          v53 = v11;
          v54 = v12;
          v55 = v13;
          v56 = a1;
          v51 = &v49;
          __chkstk_darwin(Count);
          v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
          memset(v18, 170, v17);
          v19 = OUTLINED_FUNCTION_21_1();
          CFDictionaryGetKeysAndValues(v19, v20, v18);
          if (v16 >= 1)
          {
            v57 = kCFAllocatorDefault;
            *&v21 = 134218240;
            v49 = v21;
            *&v21 = 67111170;
            v50 = v21;
            do
            {
              v22 = *v18;
              if (*v18)
              {
                v23 = *(v22 + 5);
                if (v23 == 5 || v23 == 3)
                {
                  v25 = v57;
                  v26 = CFUUIDCreate(v57);
                  v27 = CFUUIDCreateString(v25, v26);
                  v28 = CFNumberCreate(v25, kCFNumberSInt16Type, v22);
                  v29 = v2;
                  v30 = v2[491];
                  if (v30 && gNumLogObjects >= 46)
                  {
                    v31 = *(v30 + 360);
                  }

                  else
                  {
                    v31 = &_os_log_default;
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      OUTLINED_FUNCTION_15_22();
                      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v42, 0x12u);
                    }
                  }

                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                  {
                    v35 = *v22;
                    v36 = *(v22 + 24);
                    v37 = *(v22 + 25);
                    v38 = *(v22 + 26);
                    v39 = *(v22 + 27);
                    v40 = *(v22 + 28);
                    v41 = *(v22 + 29);
                    *buf = v50;
                    *v60 = v35;
                    *&v60[4] = 2112;
                    *&v60[6] = v28;
                    v61 = 2112;
                    v62 = v27;
                    v63 = 0;
                    v64 = 4;
                    v65 = v36;
                    v66 = 1024;
                    v67 = v37;
                    v68 = 1024;
                    v69 = v38;
                    v70 = 1024;
                    v71 = v39;
                    v72 = 1024;
                    v73 = v40;
                    v74 = 1024;
                    v75 = v41;
                    _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "iAP2OOBBTPairing _startFeatureFromDevice: add transportComponent: componentID=%d componentIDObj=%@ uuidStr=%@ macAddr=(%02X %02X %02X %02X %02X %02X)", buf, 0x40u);
                  }

                  v34 = Feature;
                  CFDictionarySetValue(*Feature, v28, v27);
                  CFDictionarySetValue(v34[1], v27, v28);
                  if (v26)
                  {
                    CFRelease(v26);
                  }

                  v2 = v29;
                  if (v27)
                  {
                    CFRelease(v27);
                  }

                  if (v28)
                  {
                    CFRelease(v28);
                  }
                }
              }

              else
              {
                v32 = v2[491];
                if (v32 && gNumLogObjects >= 46)
                {
                  v33 = *(v32 + 360);
                }

                else
                {
                  v33 = &_os_log_default;
                  if (OUTLINED_FUNCTION_17())
                  {
                    OUTLINED_FUNCTION_15_22();
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v43, 0x12u);
                  }
                }

                if (OUTLINED_FUNCTION_17())
                {
                  *buf = 0;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "transportComponent is NULL", buf, 2u);
                }
              }

              ++v18;
              --v16;
            }

            while (v16);
          }

          v9 = v52;
          v13 = v55;
          a1 = v56;
          v11 = v53;
          v12 = v54;
        }
      }

      isIdentifiedForCarPlay = iap2_identification_isIdentifiedForCarPlay(a1);
      v45 = *(v9 + 8);
      AccInfoMutableDict = platform_oobBtPairing_createAccInfoMutableDict(v45[2], v45[3], v45[1], v45[4], v45[5], v45[6], v11, v12, v13, isIdentifiedForCarPlay);
      platform_oobBTPairing_incrementUserCount();
      if (!a1 || (v47 = *(a1 + 8)) == 0)
      {
        v47 = 0;
      }

      platform_oobBtPairing_accessoryAttached(v47, AccInfoMutableDict);
      if (AccInfoMutableDict)
      {
        CFRelease(AccInfoMutableDict);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  return Feature != 0;
}

uint64_t acc_protocolParser_init(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      return 0;
    }

    result = malloc_type_calloc(1uLL, 0x20uLL, 0x10200402FA71B58uLL);
    *v1 = result;
    if (!result)
    {
      return result;
    }

    **v1 = CFDataCreateMutable(kCFAllocatorDefault, 0);
    if (!**v1)
    {
      return 0;
    }

    *(*v1 + 24) = 512;
    *(*v1 + 16) = malloc_type_calloc(2uLL, 0x10uLL, 0x10800407411B482uLL);
    v2 = *(*v1 + 16);
    *v2 = 3;
    acc_protocolParser_iAP1_create((v2 + 8));
    v3 = *(*v1 + 16);
    *(v3 + 16) = 4;
    acc_protocolParser_iAP2_create((v3 + 24));
    *(*v1 + 28) = 0;
    if (gLogObjects && gNumLogObjects >= 16)
    {
      v4 = *(gLogObjects + 120);
    }

    else
    {
      v4 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_15_1();
        OUTLINED_FUNCTION_10(v9, v10, v11, v12, v13);
      }
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_15_1();
      _os_log_impl(v5, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 8u);
    }

    return 1;
  }

  return result;
}

BOOL acc_protocolParser_destroy(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (*(v3 + 25))
      {
        v4 = 0;
        v5 = 0;
        a2.n128_u64[0] = 134218240;
        v23 = a2;
        a2.n128_u64[0] = 67109120;
        v24 = a2;
        do
        {
          v6 = v3[2];
          v7 = *(v6 + v4);
          if (v7 == 4 || v7 == 3)
          {
            acc_protocolParser_iAP2_destroy((v6 + v4 + 8));
          }

          else
          {
            v8 = gLogObjects;
            v9 = gNumLogObjects;
            if (gLogObjects)
            {
              v10 = gNumLogObjects < 16;
            }

            else
            {
              v10 = 1;
            }

            if (v10)
            {
              v11 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v23.n128_u32[0];
                v26 = v8;
                v27 = 1024;
                v28 = v9;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v11 = &_os_log_default;
              }
            }

            else
            {
              v11 = *(gLogObjects + 120);
            }

            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (v12)
            {
              OUTLINED_FUNCTION_3_35(v12, v13, v14, v15, v16, v17, v18, v19, v23.n128_i64[0], v23.n128_i64[1], v24);
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot destroy parser for unknown protocol: %d", v20, 8u);
            }
          }

          ++v5;
          v4 += 16;
        }

        while (v5 < *(v3 + 25));
        v3 = *a1;
      }

      if (*v3)
      {
        CFRelease(*v3);
        **a1 = 0;
        v3 = *a1;
      }

      v21 = v3[2];
      if (!v21 || (free(v21), *(*a1 + 16) = 0, (v3 = *a1) != 0))
      {
        free(v3);
        *a1 = 0;
      }
    }
  }

  return a1 != 0;
}

uint64_t acc_protocolParser_detectProtocol(CFDataRef **a1, CFDataRef theData)
{
  result = 0;
  if (!a1 || !theData)
  {
    return result;
  }

  v5 = *a1;
  if (!*a1)
  {
    result = acc_protocolParser_init(a1);
    if (!result)
    {
      return result;
    }

    v5 = *a1;
  }

  if (!*v5)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  if (CFDataGetLength(**a1) >= 33)
  {
    v18 = gLogObjects;
    v19 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 16)
    {
      v20 = *(gLogObjects + 120);
    }

    else
    {
      v20 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v37 = 134218240;
        v38 = v18;
        OUTLINED_FUNCTION_3();
        v39 = v19;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v37);
      }
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109120;
      LODWORD(v38) = 32;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reached buffer reset size of %u, resetting parser...", &v37, 8u);
    }

    _resetParser(*a1);
  }

  if (Length >= 0x10000)
  {
    v36 = logObjectForModule_39();
    result = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v37 = 67109120;
    LODWORD(v38) = 0xFFFF;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Incoming data length is larger than max buffer size of %u - discarding data!", &v37, 8u);
    return 0;
  }

  v7 = **a1;
  BytePtr = CFDataGetBytePtr(theData);
  v9 = CFDataGetLength(theData);
  CFDataAppendBytes(v7, BytePtr, v9);
  v10 = CFDataGetLength(**a1);
  v11 = v10;
  v12 = *(*a1 + 4);
  if (v10 < v12)
  {
    LODWORD(v12) = 0;
    *(*a1 + 4) = 0;
  }

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 16)
  {
    v15 = *(gLogObjects + 120);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v37 = 134218240;
      v38 = v13;
      OUTLINED_FUNCTION_3();
      v39 = v14;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v37);
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v37 = 67109120;
    LODWORD(v38) = (v11 - v12);
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "parseDataLength: %hu", &v37, 8u);
  }

  v16 = *a1;
  if (v12 != v11)
  {
    if ((v11 - v12) <= 1u)
    {
      v17 = 1;
    }

    else
    {
      v17 = (v11 - v12);
    }

    do
    {
      _runFSM(v16);
      v16 = *a1;
      if (*(*a1 + 7))
      {
        break;
      }

      if (*(v16 + 24) >= *(v16 + 25))
      {
        v23 = gLogObjects;
        v24 = gNumLogObjects;
        if (gLogObjects)
        {
          v25 = gNumLogObjects < 16;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          v31 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v37 = 134218240;
            v38 = v23;
            OUTLINED_FUNCTION_3();
            v39 = v24;
            OUTLINED_FUNCTION_15_1();
            OUTLINED_FUNCTION_10(v26, v27, v28, v29, v30);
          }
        }

        else
        {
          v31 = *(gLogObjects + 120);
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v37) = 0;
          OUTLINED_FUNCTION_15_1();
          _os_log_impl(v32, v33, OS_LOG_TYPE_DEFAULT, v34, v35, 2u);
        }

        _resetParser(*a1);
        v16 = *a1;
        return *(v16 + 7);
      }

      --v17;
    }

    while (v17);
  }

  return *(v16 + 7);
}

void _resetParser(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v27.length = *(a1 + 8);
      v27.location = 0;
      CFDataDeleteBytes(v2, v27);
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      if (*(a1 + 25))
      {
        v4 = 0;
        v5 = 0;
        *&v3 = 134218240;
        v21 = v3;
        *&v3 = 67109120;
        v22 = v3;
        do
        {
          v6 = *(a1 + 16);
          v7 = *(v6 + v4);
          if (v7 == 4)
          {
            acc_protocolParser_iAP2_reset(*(v6 + v4 + 8));
          }

          else if (v7 == 3)
          {
            acc_protocolParser_iAP1_reset(*(v6 + v4 + 8));
          }

          else
          {
            v8 = gLogObjects;
            v9 = gNumLogObjects;
            if (gLogObjects)
            {
              v10 = gNumLogObjects < 16;
            }

            else
            {
              v10 = 1;
            }

            if (v10)
            {
              v11 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v24 = v8;
                v25 = 1024;
                v26 = v9;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                v11 = &_os_log_default;
              }
            }

            else
            {
              v11 = *(gLogObjects + 120);
            }

            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
            if (v12)
            {
              OUTLINED_FUNCTION_3_35(v12, v13, v14, v15, v16, v17, v18, v19, v21, *(&v21 + 1), v22);
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot reset parser for unknown protocol: %d", v20, 8u);
            }
          }

          ++v5;
          v4 += 16;
        }

        while (v5 < *(a1 + 25));
      }
    }
  }
}

void _runFSM_cold_2(unsigned __int8 *a1, unsigned __int16 *a2, os_log_t log)
{
  v3 = *a1;
  v4 = *a2;
  v5[0] = 67109376;
  v5[1] = v3;
  v6 = 1024;
  v7 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Current byte: %02X, index: %d", v5, 0xEu);
}

uint64_t iap2_messageHandlers_setHandler(void *key, void *value)
{
  v3 = key;
  result = _giAP2MessageHandlers;
  if (_giAP2MessageHandlers)
  {
    goto LABEL_12;
  }

  _giAP2MessageHandlers = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, 0);
  v5 = gLogObjects;
  v6 = gNumLogObjects;
  if (!gLogObjects || gNumLogObjects < 23)
  {
    v8 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v13, 0x12u);
    }
  }

  else
  {
    v8 = *(gLogObjects + 176);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Initialized message handler dictionary!", &v13, 2u);
  }

  result = _giAP2MessageHandlers;
  if (_giAP2MessageHandlers)
  {
LABEL_12:
    CFDictionarySetValue(result, v3, value);
    v9 = gLogObjects;
    v10 = gNumLogObjects;
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 23;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v13 = 134218240;
        v14 = v9;
        v15 = 1024;
        v16 = v10;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v13, 0x12u);
      }
    }

    else
    {
      v12 = *(gLogObjects + 176);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 67109120;
      LODWORD(v14) = v3;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Added message handler for ID: 0x%04X", &v13, 8u);
    }

    return 1;
  }

  return result;
}

const void *iap2_messageHandlers_getHandler(void *key)
{
  v1 = key;
  result = _giAP2MessageHandlers;
  if (_giAP2MessageHandlers)
  {
    return CFDictionaryGetValue(_giAP2MessageHandlers, v1);
  }

  return result;
}

uint64_t t56_endpoint_publish(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 61)
  {
    v4 = *(gLogObjects + 480);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v35 = v2;
      v36 = 1024;
      v37 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "T56 endpoint_publish", buf, 2u);
  }

  if (a1)
  {
    if (!*a1 || !*(a1 + 248) || !*(a1 + 256))
    {
      return 0;
    }

    v5 = acc_endpoint_copyParentEndpointUUID(*a1);
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v8 = *(gLogObjects + 480);
    }

    else
    {
      v8 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v35 = v6;
        v36 = 1024;
        v37 = v7;
        OUTLINED_FUNCTION_7_29();
        _os_log_error_impl(v25, v26, OS_LOG_TYPE_ERROR, v27, v28, 0x12u);
      }
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_7_29();
      _os_log_impl(v9, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 0x12u);
    }

    if (acc_endpoint_isPublished(*a1))
    {
      v13 = *(a1 + 16);
      v14 = v13 ? CFStringCreateCopy(kCFAllocatorDefault, v13) : 0;
      t56_protocol_cleanup(*(a1 + 136), 0, 0);
      if (!t56_protocol_init(*(a1 + 136), v14, 0, 1, 1u, *(a1 + 248), *(a1 + 256)))
      {
        a1 = 0;
        if (!v5)
        {
          return a1;
        }

        goto LABEL_33;
      }
    }

    v15 = gLogObjects;
    v16 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 61)
    {
      v17 = *(gLogObjects + 480);
    }

    else
    {
      v17 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v35 = v15;
        v36 = 1024;
        v37 = v16;
        OUTLINED_FUNCTION_7_29();
        _os_log_error_impl(v29, v30, OS_LOG_TYPE_ERROR, v31, v32, 0x12u);
      }
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_7_29();
      _os_log_impl(v18, v19, OS_LOG_TYPE_DEFAULT, v20, v21, 0x12u);
    }

    if (v5)
    {
      CFRetain(v5);
    }

    v22 = dispatch_time(0, 100000000);
    v23 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 0x40000000;
    v33[2] = __t56_endpoint_publish_block_invoke;
    v33[3] = &__block_descriptor_tmp_4_3;
    v33[4] = a1;
    v33[5] = v5;
    dispatch_after(v22, v23, v33);
    a1 = 1;
    if (v5)
    {
LABEL_33:
      CFRelease(v5);
    }
  }

  return a1;
}

uint64_t t56_endpoint_processIncomingData(uint64_t result, CFDataRef theData)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (theData)
    {
      if (v3[17])
      {
        Length = CFDataGetLength(theData);
        if (Length > 1 && (CFRetain(theData), v5 = *CFDataGetBytePtr(theData), acc_platform_packetLogging_logT56Msg(*v3, theData, 1), t56_protocol_checkValidMessageHeaderAndSize(v3[17], v5, Length)))
        {
          v6 = v3[4];
          block[0] = _NSConcreteStackBlock;
          block[1] = 0x40000000;
          block[2] = __t56_endpoint_processIncomingData_block_invoke;
          block[3] = &__block_descriptor_tmp_7_2;
          block[4] = v3;
          block[5] = theData;
          v9 = v5;
          v8 = Length;
          dispatch_async(v6, block);
          return 1;
        }

        else
        {
          CFRelease(theData);
          return 0;
        }
      }
    }
  }

  return result;
}

void t56_endpoint_create_cold_1(void *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void t56_endpoint_create_cold_2(void *a1, void *a2)
{
  v4 = a1[17];
  if (v4)
  {
    t56_protocol_cleanup(v4, 0, 0);
  }

  for (i = 18; i != 22; ++i)
  {
    v6 = a1[i];
    if (v6)
    {
      dispatch_release(v6);
      a1[i] = 0;
    }
  }

  v7 = a1[4];
  if (v7)
  {
    a1[4] = 0;
    dispatch_release(v7);
  }

  else
  {
    v8 = a1[31];
    if (v8)
    {
      free(v8);
    }

    free(a1);
  }

  *a2 = 0;
}

void _t56_endpoint_dispatchQueueFinalizer_cold_1()
{
  v0 = logObjectForModule_40();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v1, 2u);
  }
}

void t56_endpoint_destroy_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "T56 Endpoint Destroy. NULL ppProtocolEndpoint!", v3, 2u);
  }

  *a1 = 0;
}

void __t56_endpoint_processIncomingData_block_invoke_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v5 = *a2;
  v6 = 136315906;
  v7 = "t56_endpoint_processIncomingData_block_invoke";
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v4;
  v12 = 2112;
  v13 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to process incoming message!!! hdr 0x%02X, (%d bytes) %@", &v6, 0x22u);
}

void _t56_endpoint_handleMessage_cold_1(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "dataOutBuffer not allocated", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void _t56_endpoint_handleMessage_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void t56_endpoint_sendOutgoingData_cold_4(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "dataOutLen = 0", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void t56_endpoint_sendOutgoingData_cold_5(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pDataOut = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void t56_endpoint_sendOutgoingDataCF_cold_2()
{
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void t56_endpoint_sendOutgoingDataCF_cold_4()
{
  OUTLINED_FUNCTION_3_36();
  OUTLINED_FUNCTION_3_4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void t56_endpoint_sendOutgoingDataCF_cold_6(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "t56_endpoint_sendOutgoingDataCF";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: parentEndpoint NULL, dataOut %@", &v2, 0x16u);
}

void t56_endpoint_sendOutgoingDataCF_cold_7(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint->pEndpoint = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void t56_endpoint_sendOutgoingDataCF_cold_8(_BYTE *a1)
{
  v2 = logObjectForModule_40();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "dataOut = NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

uint64_t mfi4Auth_protocol_decryptIncomingData(uint64_t a1)
{
  if (!a1)
  {
    v46 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v46))
    {
      goto LABEL_62;
    }

    LOWORD(v70) = 0;
LABEL_61:
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v50, v51, v52, v53, v54, v55);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_16_7();
  if (v24)
  {
    v47 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v47))
    {
      goto LABEL_62;
    }

    LOWORD(v70) = 0;
    goto LABEL_61;
  }

  v1 = v4;
  if (!v4)
  {
    v48 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v48))
    {
      goto LABEL_62;
    }

    LOWORD(v70) = 0;
    goto LABEL_61;
  }

  if (*(a1 + 160))
  {
    v5 = v3;
    v6 = gLogObjects;
    v7 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v8 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v70 = 134218240;
        v71 = v6;
        OUTLINED_FUNCTION_3();
        v72 = v7;
        OUTLINED_FUNCTION_1_1();
        _os_log_error_impl(v31, v32, v33, v34, v35, 0x12u);
      }

      v8 = &_os_log_default;
      v9 = &_os_log_default;
    }

    v10 = OUTLINED_FUNCTION_25_5();
    if (os_log_type_enabled(v10, v11))
    {
      LOWORD(v70) = 0;
      OUTLINED_FUNCTION_9(&_mh_execute_header, v8, v12, "decryptIncomingData", &v70);
    }

    MsgID = iAP2MsgGetMsgID(v1);
    if (MsgID)
    {
      v14 = MsgID;
      v15 = gLogObjects;
      v16 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v17 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v70 = 134218240;
          v71 = v15;
          OUTLINED_FUNCTION_3();
          v72 = v16;
          OUTLINED_FUNCTION_1_1();
          _os_log_error_impl(v36, v37, v38, v39, v40, 0x12u);
        }

        v17 = &_os_log_default;
        v18 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_67_0())
      {
        v70 = 67109120;
        LODWORD(v71) = v14;
        OUTLINED_FUNCTION_10_5(&_mh_execute_header, v17, v19, "decryptIncomingData: rsp:0x%x", &v70);
      }

      v20 = (v14 - 21011);
      if (v20 <= 0x37)
      {
        if (((1 << (v14 - 19)) & 0x8428A480000000) != 0)
        {
          goto LABEL_33;
        }

        if (v14 == 21011)
        {
          if (!v5)
          {
            goto LABEL_63;
          }

          v21 = OUTLINED_FUNCTION_1_0();
          v23 = 10;
          goto LABEL_35;
        }

        if (v20 == 1)
        {
          if (v5)
          {
            v21 = OUTLINED_FUNCTION_1_0();
            v23 = 7;
            goto LABEL_35;
          }

LABEL_63:
          v56 = gLogObjects;
          v57 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v29 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v70 = 134218240;
              v71 = v56;
              OUTLINED_FUNCTION_3();
              v72 = v57;
              OUTLINED_FUNCTION_1_1();
              _os_log_error_impl(v65, v66, v67, v68, v69, 0x12u);
            }

            v29 = &_os_log_default;
            v58 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_13())
          {
            LOWORD(v70) = 0;
            OUTLINED_FUNCTION_1_39();
            _os_log_error_impl(v59, v60, v61, v62, v63, v64);
          }

          v25 = 0;
LABEL_52:

          return v25;
        }
      }

      v24 = (v14 - 21092) < 3 || v14 == 21247;
      if (!v24)
      {
        if (v14 != 21010)
        {
          v27 = gLogObjects;
          v28 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v29 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              v70 = 134218240;
              v71 = v27;
              OUTLINED_FUNCTION_3();
              v72 = v28;
              OUTLINED_FUNCTION_1_1();
              _os_log_error_impl(v41, v42, v43, v44, v45, 0x12u);
            }

            v29 = &_os_log_default;
            v30 = &_os_log_default;
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v70) = 0;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Received plain text message", &v70, 2u);
          }

          v25 = 1;
          goto LABEL_52;
        }

        if (!v5)
        {
          goto LABEL_63;
        }

        v21 = OUTLINED_FUNCTION_1_0();
        v23 = 3;
LABEL_35:
        if (!mfi4Auth_protocol_decryptPayload(v21, v22, v23))
        {
          return 1;
        }

        goto LABEL_63;
      }

LABEL_33:
      if (!v5)
      {
        goto LABEL_63;
      }

      v21 = OUTLINED_FUNCTION_1_0();
      v23 = 12;
      goto LABEL_35;
    }

    v49 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v49))
    {
      LOWORD(v70) = 0;
      goto LABEL_61;
    }

LABEL_62:

    goto LABEL_63;
  }

  return 1;
}

uint64_t mfi4Auth_protocol_decryptPayload(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *&v63 = 0xAAAAAAAAAAAAAAAALL;
  *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!a1)
  {
    v37 = logObjectForModule_41();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v64) = 0;
      goto LABEL_67;
    }

LABEL_61:
    v36 = 1;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_16_7();
  if (v7)
  {
    v37 = logObjectForModule_41();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v64) = 0;
      goto LABEL_67;
    }

    goto LABEL_61;
  }

  v8 = v4;
  if (!v4)
  {
    v37 = logObjectForModule_41();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    LOWORD(v64) = 0;
LABEL_67:
    OUTLINED_FUNCTION_6_35();
    _os_log_error_impl(v49, v50, v51, v52, v53, v54);
    goto LABEL_61;
  }

  v9 = v6;
  v10 = v5;
  MsgLen = iAP2MsgGetMsgLen(v4);
  v12 = v8[3];
  v13 = MsgLen - 22;
  v14 = malloc_type_calloc(MsgLen - 22, 1uLL, 0x86195C01uLL);
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  v61 = v10;
  v63 = *(v12 + 6 + MsgLen - 22);
  v16 = _dumpSimpleHex([NSData dataWithBytes:v12 + 6 length:v13]);
  v17 = gLogObjects;
  v18 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v19 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v64 = 134218240;
      v65 = v17;
      v66 = 1024;
      v67 = v18;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v20, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v64);
    }

    v19 = &_os_log_default;
    v21 = &_os_log_default;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v64 = 138412290;
    v65 = v16;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v19, v22, "decryptPayload: cyphertext: %@", &v64);
  }

  v23 = _dumpSimpleHex([NSData dataWithBytes:&v63 length:16]);
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v24 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_17();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v64);
    }

    v24 = &_os_log_default;
    v25 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_39_7())
  {
    v64 = 138412290;
    v65 = v23;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v24, v26, "tag: %@", &v64);
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v27 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_17();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v64);
    }

    v27 = &_os_log_default;
    v28 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_39_7())
  {
    v64 = 134217984;
    v65 = a3;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v27, v29, "decryptPayload: key_index: %zu", &v64);
  }

  if (gLogObjects && gNumLogObjects >= 56)
  {
    v30 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_17();
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v64);
    }

    v30 = &_os_log_default;
    v31 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_39_7())
  {
    v33 = *(a1 + 144);
    v64 = 67109120;
    LODWORD(v65) = v33;
    OUTLINED_FUNCTION_10_5(&_mh_execute_header, v30, v32, "decryptPayload: negotiatedVersion: %d", &v64);
  }

  if (*(a1 + 144) < 3u)
  {
    v35 = ccsigma_open(*(a1 + 96), a3, v61, 0, 0, v13, v12 + 6, v15, &v63);
  }

  else
  {
    if (v9)
    {
      v34 = **(a1 + 712);
    }

    else
    {
      v34 = *(a1 + 96);
    }

    v35 = ccsigma_open(v34, a3, v61, 6, v12, v13, v12 + 6, v15, &v63);
  }

  v36 = v35;
  v37 = _dumpSimpleHex([NSData dataWithBytes:v15 length:v13]);

  v38 = gLogObjects;
  v39 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v40 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v64 = 134218240;
      v65 = v38;
      v66 = 1024;
      v67 = v39;
      OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v64);
    }

    v40 = &_os_log_default;
    v42 = &_os_log_default;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v64 = 138412290;
    v65 = v37;
    OUTLINED_FUNCTION_79_0(&_mh_execute_header, v40, v43, "decryptPayload: plainText: %@", &v64);
  }

  if (v36)
  {
    v48 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_21_0(v48))
    {
      v64 = 67109120;
      LODWORD(v65) = v36;
      OUTLINED_FUNCTION_16_17();
      _os_log_error_impl(v55, v56, v57, v58, v59, v60);
    }
  }

  else
  {
    memcpy((v8[3] + 6), v15, v13);
    *(v8[3] + 2) = (MsgLen - 16) >> 8;
    *(v8[3] + 3) = MsgLen - 16;
  }

  free(v15);
LABEL_54:

  return v36;
}

uint64_t mfi4Auth_protocol_encryptOutgoingData(uint64_t a1)
{
  if (!a1)
  {
    v33 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v33))
    {
      goto LABEL_52;
    }

    LOWORD(v44) = 0;
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_16_7();
  if (v14)
  {
    v34 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v34))
    {
      goto LABEL_52;
    }

    LOWORD(v44) = 0;
    goto LABEL_49;
  }

  v1 = v3;
  if (!v3)
  {
    v35 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v35))
    {
      goto LABEL_52;
    }

    LOWORD(v44) = 0;
    goto LABEL_49;
  }

  if (*(a1 + 160))
  {
    MsgID = iAP2MsgGetMsgID(v3);
    if (MsgID)
    {
      v5 = MsgID;
      v6 = gLogObjects;
      v7 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v8 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v44 = 134218240;
          v45 = v6;
          OUTLINED_FUNCTION_3();
          v46 = v7;
          OUTLINED_FUNCTION_1_1();
          _os_log_error_impl(v23, v24, v25, v26, v27, 0x12u);
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      v10 = OUTLINED_FUNCTION_25_5();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_24_10();
        OUTLINED_FUNCTION_10_5(&_mh_execute_header, v8, v12, "encryptOutgoingData: cmd:0x%x", &v44);
      }

      v13 = (v5 - 20754);
      if (v13 <= 0x37)
      {
        if (((1 << (v5 - 18)) & 0x812E82C0000000) != 0)
        {
          goto LABEL_25;
        }

        if (v5 == 20754)
        {
          if (!mfi4Auth_protocol_encryptPayload(a1, v1, 10, 11, 0))
          {
            return 1;
          }

          v22 = logObjectForModule_41();
          if (!OUTLINED_FUNCTION_16(v22))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_18;
          }

          if (!mfi4Auth_protocol_encryptPayload(a1, v1, 3, 4, 0))
          {
            return 1;
          }

          v21 = logObjectForModule_41();
          if (!OUTLINED_FUNCTION_16(v21))
          {
            goto LABEL_52;
          }
        }

LABEL_53:
        OUTLINED_FUNCTION_24_10();
        OUTLINED_FUNCTION_40_1();
        v42 = 8;
        goto LABEL_50;
      }

LABEL_18:
      v14 = (v5 - 20835) < 2 || v5 == 20991;
      if (!v14)
      {
        v15 = gLogObjects;
        v16 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v1 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            v44 = 134218240;
            v45 = v15;
            OUTLINED_FUNCTION_3();
            v46 = v16;
            OUTLINED_FUNCTION_1_1();
            _os_log_error_impl(v28, v29, v30, v31, v32, 0x12u);
          }

          v1 = &_os_log_default;
          v18 = &_os_log_default;
        }

        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_24_10();
          OUTLINED_FUNCTION_10_5(&_mh_execute_header, v1, v19, "encryptOutgoingData: no encrypting required: %x", &v44);
        }

        v17 = 1;
        goto LABEL_33;
      }

LABEL_25:
      if (!mfi4Auth_protocol_encryptPayload(a1, v1, 5, 6, 0))
      {
        return 1;
      }

      v43 = logObjectForModule_41();
      if (!OUTLINED_FUNCTION_16(v43))
      {
LABEL_52:
        v17 = 0;
LABEL_33:

        return v17;
      }

      goto LABEL_53;
    }

    v36 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v36))
    {
      goto LABEL_52;
    }

    LOWORD(v44) = 0;
LABEL_49:
    OUTLINED_FUNCTION_1_39();
LABEL_50:
    _os_log_error_impl(v37, v38, v39, v40, v41, v42);
    goto LABEL_52;
  }

  return 1;
}

uint64_t mfi4Auth_protocol_encryptPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString *a5)
{
  *&v57 = 0xAAAAAAAAAAAAAAAALL;
  *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(a2 + 24);
  MsgLen = iAP2MsgGetMsgLen(a2);
  v9 = MsgLen;
  *(v7 + 2) = bswap32(MsgLen + 16) >> 16;
  v10 = MsgLen - 6;
  v11 = malloc_type_malloc(v10, 0x146D65CDuLL);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (!a1)
  {
    v41 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_21_0(v41))
    {
      goto LABEL_39;
    }

    LOWORD(v58) = 0;
LABEL_44:
    OUTLINED_FUNCTION_6_35();
    _os_log_error_impl(v44, v45, v46, v47, v48, v49);
    goto LABEL_39;
  }

  if (*(a1 + 30) != 1)
  {
    a5 = _dumpSimpleHex([NSData dataWithBytes:v7 + 6 length:v10]);
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v15 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v58 = 134218240;
        v59 = v13;
        v60 = 1024;
        v61 = v14;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v58);
      }

      v15 = &_os_log_default;
      v17 = &_os_log_default;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v58 = 138412290;
      v59 = a5;
      OUTLINED_FUNCTION_79_0(&_mh_execute_header, v15, v18, "encryptPayload: plaintext: %@", &v58);
    }

    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v21 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v58 = 134218240;
        v59 = v19;
        v60 = 1024;
        v61 = v20;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v22, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v58);
      }

      v21 = &_os_log_default;
      v23 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 144);
      v58 = 67109120;
      LODWORD(v59) = v25;
      OUTLINED_FUNCTION_10_5(&_mh_execute_header, v21, v24, "decryptPayload: negotiatedVersion: %d", &v58);
    }

    if (*(a1 + 144) < 3u)
    {
      OUTLINED_FUNCTION_30_11();
      v30 = 0;
      v31 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_30_11();
      v30 = 6;
      v31 = v7;
    }

    v32 = ccsigma_seal(v26, v27, v28, v30, v31, v10, v29, v12, v56);
    if (v32)
    {
      v43 = logObjectForModule_41();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v58) = 0;
        OUTLINED_FUNCTION_6_35();
        _os_log_error_impl(v50, v51, v52, v53, v54, v55);
      }
    }

    else
    {
      memcpy((v7 + 6), v12, v10);
      *(v7 + v9) = v57;
      v33 = _dumpSimpleHex([NSData dataWithBytes:v12 length:v10]);

      v34 = gLogObjects;
      v35 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 56)
      {
        v36 = *(gLogObjects + 440);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          v58 = 134218240;
          v59 = v34;
          v60 = 1024;
          v61 = v35;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v58);
        }

        v36 = &_os_log_default;
        v38 = &_os_log_default;
      }

      if (OUTLINED_FUNCTION_93())
      {
        v58 = 138412290;
        v59 = v33;
        OUTLINED_FUNCTION_79_0(&_mh_execute_header, v36, v39, "encryptPayload: cyphertext: %@", &v58);
      }

      v32 = 0;
      a5 = v33;
    }

    goto LABEL_33;
  }

  v42 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_21_0(v42))
  {
    LOWORD(v58) = 0;
    goto LABEL_44;
  }

LABEL_39:
  v32 = 1;
LABEL_33:

  free(v12);
  return v32;
}

uint64_t mfi4Auth_protocol_initMessage_RequestAuthSetup(uint64_t a1)
{
  if (!a1)
  {
    v20 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v20))
    {
      goto LABEL_19;
    }

LABEL_17:

    return 1;
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    v21 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v21))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v4 = v2;
  if (!v2)
  {
    v22 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v22))
    {
      goto LABEL_17;
    }

LABEL_19:
    OUTLINED_FUNCTION_2_40();
    _os_log_error_impl(v23, v24, v25, v26, v27, v28);
    goto LABEL_17;
  }

  v5 = OUTLINED_FUNCTION_6_7();
  *v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_18_18();
  iAP2MsgInitWithSom(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddU8Param(v13, v14, v15, v16);
  iAP2MsgAddU8Param(*v4, 0, 1, *(v1 + 113));
  iAP2MsgAddU8Param(*v4, 0, 2, 1);
  if (*(v1 + 120))
  {
    v17 = 0;
    do
    {
      iAP2MsgAddU8Param(*v4, 0, 3, *(v1 + 114 + v17++));
    }

    while (*(v1 + 120) > v17);
  }

  if (*(v1 + 136))
  {
    v18 = 0;
    do
    {
      iAP2MsgAddU8Param(*v4, 0, 4, *(v1 + 128 + v18++));
    }

    while (*(v1 + 136) > v18);
  }

  result = 0;
  *(v1 + 28) = 20736;
  return result;
}

uint64_t mfi4Auth_protocol_initMessage_RequestAuthChallengeResponse(uint64_t a1)
{
  if (!a1)
  {
    v19 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v19))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    v20 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v20))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v4 = v2;
  if (!v2)
  {
    v21 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v21))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(v1 + 160))
  {
    v22 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v22))
    {
LABEL_14:
      OUTLINED_FUNCTION_2_40();
      _os_log_error_impl(v23, v24, v25, v26, v27, v28);
    }

LABEL_15:

    return 1;
  }

  v5 = OUTLINED_FUNCTION_6_7();
  *v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_18_18();
  iAP2MsgInitWithSom(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddArrayU8Param(v13, v14, v15, v16, v17);
  result = 0;
  *(v1 + 28) = 20757;
  return result;
}

uint64_t mfi4Auth_protocol_initMessage_RequestAuthStart(uint64_t a1)
{
  if (!a1)
  {
    v18 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v18))
    {
      goto LABEL_13;
    }

LABEL_11:

    return 1;
  }

  OUTLINED_FUNCTION_8_6();
  if (v3)
  {
    v19 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_16(v19))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v4 = v2;
  if (!v2)
  {
    v20 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v20))
    {
      goto LABEL_11;
    }

LABEL_13:
    OUTLINED_FUNCTION_2_40();
    _os_log_error_impl(v21, v22, v23, v24, v25, v26);
    goto LABEL_11;
  }

  v5 = OUTLINED_FUNCTION_6_7();
  *v4 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_18_18();
  iAP2MsgInitWithSom(v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_20_3();
  iAP2MsgAddU16Param(v13, v14, v15, v16);
  iAP2MsgAddArrayU8Param(*v4, 0, 1, (v1 + 206), 0x21u);
  result = 0;
  *(v1 + 28) = 20752;
  return result;
}

uint64_t mfi4Auth_protocol_initSigmaContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ccsigma_mfi_info();
  v226 = 33;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v7 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v142, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v143, v144, v145, v146, v225, v226);
    }

    v7 = &_os_log_default;
    v8 = &_os_log_default;
  }

  v9 = OUTLINED_FUNCTION_25_5();
  if (os_log_type_enabled(v9, v10))
  {
    *buf = 0;
    OUTLINED_FUNCTION_23_10(&_mh_execute_header, v11, v12, "mfi4Auth_protocol_initSigmaContext", v13, v14, v15, v16, v225, v226);
  }

  if (!a1)
  {
    v198 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_26_9(v198))
    {
      goto LABEL_156;
    }

    *buf = 0;
    goto LABEL_155;
  }

  if (*(a1 + 30) == 1)
  {
    v199 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_26_9(v199))
    {
      goto LABEL_156;
    }

    *buf = 0;
    goto LABEL_155;
  }

  if (!a2)
  {
    v200 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_26_9(v200))
    {
      goto LABEL_156;
    }

    *buf = 0;
    goto LABEL_155;
  }

  v17 = +[ACCUserDefaults sharedDefaults];
  v18 = [v17 BOOLForKey:@"AllowMFi4DevCertsOnProdDevice"];

  v19 = MFAAIsDevelopmentHW();
  v20 = *(a1 + 88);
  if ((v20 & 1 | 2) == 2)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v21 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v23, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v24, v25, v26, v27, v225, v226);
      }

      v21 = &_os_log_default;
      v28 = &_os_log_default;
    }

    v29 = OUTLINED_FUNCTION_25_5();
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 0;
      OUTLINED_FUNCTION_23_10(&_mh_execute_header, v31, v32, "mfi4Auth_protocol_initSigmaContext: try prod identity", v33, v34, v35, v36, v225, v226);
    }

    *(a1 + 88) = *(a1 + 88) & 0xFC | 1;
  }

  else if (((v19 | v18) & 1) != 0 && (v20 & 4 | 8) == 8)
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v22 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v128, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v129, v130, v131, v132, v225, v226);
      }

      v22 = &_os_log_default;
      v133 = &_os_log_default;
    }

    v134 = OUTLINED_FUNCTION_25_5();
    if (os_log_type_enabled(v134, v135))
    {
      *buf = 0;
      OUTLINED_FUNCTION_23_10(&_mh_execute_header, v136, v137, "mfi4Auth_protocol_initSigmaContext: try dev identity", v138, v139, v140, v141, v225, v226);
    }

    *(a1 + 88) = *(a1 + 88) & 0xF3 | 4;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 56)
    {
      v37 = *(gLogObjects + 440);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v39, v40, v41, v42, v225, v226);
      }

      v37 = &_os_log_default;
      v43 = &_os_log_default;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      OUTLINED_FUNCTION_6_35();
      _os_log_error_impl(v44, v45, v46, v47, v48, v49);
    }
  }

  inited = mfi4Auth_protocol_initIdentity(a1);
  if (!inited)
  {
    v51 = malloc_type_malloc(0x2F0uLL, 0x10E0040123A03EAuLL);
    *(a1 + 96) = v51;
    if (v51)
    {
      v52 = ccrng(0);
      *(a1 + 104) = v52;
      if (v52)
      {
        v53 = *(a1 + 96);
        v54 = ccsigma_init(v6, v53, 1, v52);
        if (v54)
        {
          v68 = v54;
          v210 = logObjectForModule_41();
          if (OUTLINED_FUNCTION_26_9(v210))
          {
            *buf = 0;
            goto LABEL_163;
          }

          goto LABEL_121;
        }

        if (*(a1 + 376))
        {
          v55 = gLogObjects;
          v6 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v56 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v228 = v55;
              OUTLINED_FUNCTION_2_1();
              v229 = v6;
              OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v152, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v153, v154, v155, v156, v225, v226);
            }

            v56 = &_os_log_default;
            v61 = &_os_log_default;
          }

          if (OUTLINED_FUNCTION_67_0())
          {
            *buf = 0;
            OUTLINED_FUNCTION_48_1();
            OUTLINED_FUNCTION_9(v62, v63, v64, v65, v66);
          }

          v67 = ccsigma_import_signing_key(v53, *(a1 + 384), *(a1 + 376));
          if (v67)
          {
            v68 = v67;
            v69 = logObjectForModule_41();
            if (OUTLINED_FUNCTION_26_9(v69))
            {
              *buf = 0;
LABEL_163:
              OUTLINED_FUNCTION_6_35();
              _os_log_error_impl(v213, v214, v215, v216, v217, v218);
              goto LABEL_121;
            }

            goto LABEL_121;
          }
        }

        else
        {
          v6 = gLogObjects;
          v57 = gNumLogObjects;
          if (gLogObjects)
          {
            v58 = gNumLogObjects <= 55;
          }

          else
          {
            v58 = 1;
          }

          v59 = !v58;
          if (*(a1 + 392))
          {
            if (v59)
            {
              v60 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_29_9();
                OUTLINED_FUNCTION_2_1();
                v229 = v57;
                OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v168, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v169, v170, v171, v172, v225, v226);
              }

              v60 = &_os_log_default;
              v71 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_67_0())
            {
              *buf = 0;
              OUTLINED_FUNCTION_48_1();
              OUTLINED_FUNCTION_9(v72, v73, v74, v75, v76);
            }

            if (ccsigma_set_signing_function(v53, seckey_sign, *(a1 + 392)))
            {
              v77 = logObjectForModule_41();
              if (OUTLINED_FUNCTION_26_9(v77))
              {
                *buf = 0;
                OUTLINED_FUNCTION_6_35();
                _os_log_error_impl(v219, v220, v221, v222, v223, v224);
              }

              v68 = 0;
              goto LABEL_121;
            }
          }

          else
          {
            if (v59)
            {
              v70 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_29_9();
                OUTLINED_FUNCTION_2_1();
                v229 = v57;
                OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v193, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v194, v195, v196, v197, v225, v226);
              }

              v70 = &_os_log_default;
              v78 = &_os_log_default;
            }

            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              OUTLINED_FUNCTION_48_1();
              OUTLINED_FUNCTION_6_35();
              _os_log_error_impl(v162, v163, v164, v165, v166, v167);
            }
          }
        }

        v79 = ccsigma_import_peer_key_share(v53, 33, (a1 + 206));
        if (v79)
        {
          v68 = v79;
          v211 = logObjectForModule_41();
          if (OUTLINED_FUNCTION_26_9(v211))
          {
            *buf = 0;
            goto LABEL_163;
          }

          goto LABEL_121;
        }

        v80 = ccsigma_derive_session_keys(v53, a3, a2, *(a1 + 104));
        if (v80)
        {
          v68 = v80;
          v212 = logObjectForModule_41();
          if (OUTLINED_FUNCTION_26_9(v212))
          {
            *buf = 0;
            goto LABEL_163;
          }

          goto LABEL_121;
        }

        v81 = malloc_type_malloc(*(a1 + 352) + 16, 0x1000040451B5BE8uLL);
        if (!v81)
        {
          return 0xFFFFFFFFLL;
        }

        v82 = v81;
        arc4random_buf((a1 + 272), 0x10uLL);
        *v82 = *(a1 + 272);
        memcpy(v82 + 1, *(a1 + 344), *(a1 + 352));
        CC_SHA256(v82, *(a1 + 352) + 16, (a1 + 308));
        v6 = _dumpSimpleHex([NSData dataWithBytes:a1 + 308 length:32]);
        v83 = gLogObjects;
        v84 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v85 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v228 = v83;
            OUTLINED_FUNCTION_2_1();
            v229 = v84;
            OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v147, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v148, v149, v150, v151, v225, v226);
          }

          v85 = &_os_log_default;
          v86 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_67_0())
        {
          OUTLINED_FUNCTION_29_9();
          OUTLINED_FUNCTION_48_1();
          OUTLINED_FUNCTION_79_0(v87, v88, v89, v90, v91);
        }

        v68 = ccsigma_export_key_share(v53, &v226, (a1 + 239));
        if (v68)
        {
          v92 = gLogObjects;
          v93 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v94 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v228 = v92;
              OUTLINED_FUNCTION_2_1();
              v229 = v93;
              OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v157, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v158, v159, v160, v161, v225, v226);
            }

            v94 = &_os_log_default;
            v98 = &_os_log_default;
          }

          if (!OUTLINED_FUNCTION_13())
          {
            goto LABEL_119;
          }

          *buf = 0;
        }

        else
        {
          if (v226 == 33)
          {
            v95 = _dumpSimpleHex([NSData dataWithBytes:a2 length:a3]);

            v96 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v97 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_34_5();
                OUTLINED_FUNCTION_2_1();
                v229 = v96;
                OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v173, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v174, v175, v176, v177, v225, v226);
              }

              v97 = &_os_log_default;
              v101 = &_os_log_default;
            }

            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v228 = v95;
              OUTLINED_FUNCTION_27_1();
              OUTLINED_FUNCTION_79_0(v102, v103, v104, v105, v106);
            }

            v107 = _dumpSimpleHex([NSData dataWithBytes:a1 + 206 length:33]);
            v108 = gLogObjects;
            v109 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v110 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v228 = v108;
                OUTLINED_FUNCTION_2_1();
                v229 = v109;
                OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v183, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v184, v185, v186, v187, v225, v226);
              }

              v110 = &_os_log_default;
              v119 = &_os_log_default;
            }

            if (OUTLINED_FUNCTION_93())
            {
              OUTLINED_FUNCTION_34_5();
              OUTLINED_FUNCTION_79_0(&_mh_execute_header, v110, v120, "dhPublicKeyInitiator %@", buf);
            }

            v6 = _dumpSimpleHex([NSData dataWithBytes:a1 + 239 length:33]);
            v121 = gLogObjects;
            v122 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 56)
            {
              v123 = *(gLogObjects + 440);
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v228 = v121;
                OUTLINED_FUNCTION_2_1();
                v229 = v122;
                OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v188, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v189, v190, v191, v192, v225, v226);
              }

              v123 = &_os_log_default;
              v124 = &_os_log_default;
            }

            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              OUTLINED_FUNCTION_29_9();
              OUTLINED_FUNCTION_79_0(&_mh_execute_header, v123, v125, "dhPublicKeyResponder %@", buf);
            }

            v126 = OUTLINED_FUNCTION_25_5();
            printSessionKeys(v126, v127);
            goto LABEL_120;
          }

          v99 = gLogObjects;
          v100 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 56)
          {
            v94 = *(gLogObjects + 440);
          }

          else
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v228 = v99;
              OUTLINED_FUNCTION_2_1();
              v229 = v100;
              OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v178, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v179, v180, v181, v182, v225, v226);
            }

            v94 = &_os_log_default;
            v111 = &_os_log_default;
          }

          if (!OUTLINED_FUNCTION_13())
          {
LABEL_119:

LABEL_120:
            free(v82);
            goto LABEL_121;
          }

          *buf = 0;
        }

        OUTLINED_FUNCTION_2_40();
        _os_log_error_impl(v112, v113, v114, v115, v116, v117);
        goto LABEL_119;
      }

      v203 = logObjectForModule_41();
      if (OUTLINED_FUNCTION_26_9(v203))
      {
        *buf = 0;
        goto LABEL_155;
      }

LABEL_156:
      v68 = 0xFFFFFFFFLL;
      goto LABEL_121;
    }

    v202 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_26_9(v202))
    {
      goto LABEL_156;
    }

    *buf = 0;
LABEL_155:
    OUTLINED_FUNCTION_6_35();
    _os_log_error_impl(v204, v205, v206, v207, v208, v209);
    goto LABEL_156;
  }

  v68 = inited;
  v201 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_26_9(v201))
  {
    *buf = 0;
    goto LABEL_163;
  }

LABEL_121:

  return v68;
}

void mfi4Auth_protocol_handle_AuthState(CFStringRef *a1)
{
  if (!a1)
  {
    v38 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v38))
    {
LABEL_49:

      return;
    }

LABEL_52:
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v40, v41, v42, v43, v44, v45);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_16_7();
  if (v4)
  {
    v39 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v39))
    {
      goto LABEL_49;
    }

    goto LABEL_52;
  }

  v5 = v3;
  if (*a1)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, *a1);
    if (Copy)
    {
      v7 = Copy;
      EndpointWithUUID = acc_manager_getEndpointWithUUID(Copy);
      if (EndpointWithUUID)
      {
        v9 = EndpointWithUUID;
        v10 = EndpointWithUUID[7];
        if (v10)
        {
          switch(v5)
          {
            case 1:
              acc_platform_packetLogging_logEvent(EndpointWithUUID, "AUTH FAILED", "MFi4Auth accessory authentication Failed!");
              v11 = 1;
              break;
            case 3:
              acc_platform_packetLogging_logEvent(EndpointWithUUID, "AUTH TIMEOUT", "MFi4Auth accessory authentication Timed Out!");
              v11 = 3;
              break;
            case 2:
              acc_platform_packetLogging_logEvent(EndpointWithUUID, "AUTH PASSED", "MFi4Auth accessory authentication Passed!");
              v11 = 2;
              break;
            default:
              if (gLogObjects && gNumLogObjects >= 56)
              {
                v12 = *(gLogObjects + 440);
              }

              else
              {
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  OUTLINED_FUNCTION_3();
                  OUTLINED_FUNCTION_1_1();
                  _os_log_error_impl(v33, v34, v35, v36, v37, 0x12u);
                }

                v12 = &_os_log_default;
                v13 = &_os_log_default;
              }

              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_16_17();
                _os_log_error_impl(v27, v28, v29, v30, v31, v32);
              }

LABEL_23:
              v14 = a1[55];
              if (v14)
              {
                v15 = a1[56];
              }

              else
              {
                v14 = a1[87];
                v15 = a1[88];
              }

              v16 = CFDataCreate(kCFAllocatorDefault, v14, v15);
              acc_connection_setAuthCertData(*v9, v16);
              acc_connection_setAuthStatus(*v9, 1, v5);
              if (v5 == 2)
              {
                if (*(v9 + 6) == 4)
                {
                  v17 = acc_properties_copyProperty(*(v9 + 10), kCFACCProperties_Endpoint_MFi4Auth_AccessoryCertInfoToMatch);
                  if (!v17)
                  {
                    v21 = v7;
                    goto LABEL_36;
                  }

                  v18 = v17;
                  if (*(a1 + 100) == 3)
                  {
                    BytePtr = CFDataGetBytePtr(v17);
                    v20 = memcmp(BytePtr, a1 + 404, 0x20uLL);
                  }

                  else
                  {
                    v22 = MFAACreateCertificateSerialNumber();
                    if (!v22)
                    {
                      goto LABEL_50;
                    }

                    v23 = v22;
                    v24 = CFDataGetBytePtr(v18);
                    v25 = CFDataGetBytePtr(v23);
                    Length = CFDataGetLength(v23);
                    v20 = memcmp(v24, v25, Length);
                    CFRelease(v23);
                  }

                  if (!v20)
                  {
                    acc_connection_setProperty();
                    if (!v16)
                    {
LABEL_34:
                      CFRelease(v7);
                      if (!v18)
                      {
                        return;
                      }

                      goto LABEL_35;
                    }

LABEL_33:
                    CFRelease(v16);
                    goto LABEL_34;
                  }

LABEL_50:
                  CFRelease(v7);
LABEL_35:
                  v21 = v18;
LABEL_36:
                  CFRelease(v21);
                  return;
                }

                mfi4Auth_protocol_supportsRelay(a1);
              }

              v18 = 0;
              if (!v16)
              {
                goto LABEL_34;
              }

              goto LABEL_33;
          }

          *(v10 + 48) = v11;
          goto LABEL_23;
        }
      }

      CFRelease(v7);
    }
  }
}

uint64_t mfi4Auth_protocol_initMessage_AuthCert()
{
  size = 0xAAAAAAAAAAAAAAAALL;
  OUTLINED_FUNCTION_16_7();
  if (v5)
  {
    v41 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v41))
    {
LABEL_33:

      return 1;
    }

    *buf = 0;
LABEL_45:
    OUTLINED_FUNCTION_2_40();
    _os_log_error_impl(v46, v47, v48, v49, v50, v51);
    goto LABEL_33;
  }

  v6 = v3;
  if (!v3)
  {
    v42 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v42))
    {
      goto LABEL_33;
    }

    *buf = 0;
    goto LABEL_45;
  }

  v7 = v4;
  v8 = v2;
  v9 = OUTLINED_FUNCTION_6_7();
  *v6 = v9;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 == 6)
  {
    v10 = "MFi40Attestation-Certificate";
  }

  else
  {
    v10 = "MFi40Attestation-Intermediate";
  }

  v11 = 368;
  if (v7 == 6)
  {
    v11 = 352;
  }

  v12 = 360;
  if (v7 == 6)
  {
    v12 = 344;
  }

  v13 = *(v8 + v12);
  v14 = *(v8 + v11);
  mfi4Auth_util_packetLogging_logData(*v8, v10, "MFi4Auth", v13, v14, 0);
  if (!v13 || !v14)
  {
    v43 = logObjectForModule_41();
    if (OUTLINED_FUNCTION_21_0(v43))
    {
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_2_1();
      *&v64[10] = v7;
      OUTLINED_FUNCTION_10(&_mh_execute_header, v1, v52, "AuthCert:: Invalid cert_resp, null or 0 len(%zu), certType %d", buf);
    }

    return 1;
  }

  v15 = CTCompressComputeBufferSize(v13, v14, &size);
  if (!v15)
  {
    v16 = malloc_type_malloc(size, 0x760E6B63uLL);
    if (v16)
    {
      v17 = v16;
      CTCompress(v13, v14, v16, size);
      v19 = v18;
      if (v18)
      {
        v45 = logObjectForModule_41();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_14_17();
          OUTLINED_FUNCTION_27_1();
          _os_log_error_impl(v57, v58, OS_LOG_TYPE_ERROR, v59, v60, 0x28u);
        }
      }

      else
      {
        v20 = gLogObjects;
        v21 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 56)
        {
          v22 = *(gLogObjects + 440);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v64 = v20;
            OUTLINED_FUNCTION_2_1();
            *&v64[10] = v21;
            OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v36, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v37, v38, v39, v40, v61, size);
          }

          v22 = &_os_log_default;
          v23 = &_os_log_default;
        }

        if (OUTLINED_FUNCTION_39_7())
        {
          *buf = 67109632;
          *v64 = v7;
          *&v64[4] = 2048;
          *&v64[6] = v14;
          v65 = 2048;
          v66 = size;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "AuthCert:: certType %d, cert_resp_len %zu, compressedLength %zu", buf, 0x1Cu);
        }

        OUTLINED_FUNCTION_18_18();
        iAP2MsgInitWithSom(v24, v25, v26, v27, v28, v29, v30);
        OUTLINED_FUNCTION_20_3();
        iAP2MsgAddU8Param(v31, v32, v33, v34);
        iAP2MsgAddDataParam(*v6, 0, 1, v17, size);
        if (v7 == 6)
        {
          iAP2MsgAddArrayU8Param(*v6, 0, 2, (v8 + 272), 0x10u);
        }

        *(v8 + 28) = 20755;
      }

      free(v17);
      return v19;
    }

    return 0xFFFFFFFFLL;
  }

  v19 = v15;
  v44 = logObjectForModule_41();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_27_1();
    _os_log_error_impl(v53, v54, OS_LOG_TYPE_ERROR, v55, v56, 0x28u);
  }

  return v19;
}

uint64_t mfi4Auth_protocol_initMessage_AuthenticationSucceeded()
{
  OUTLINED_FUNCTION_16_7();
  if (v3)
  {
    v15 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v15))
    {
LABEL_8:

      return 1;
    }

LABEL_10:
    OUTLINED_FUNCTION_2_40();
    _os_log_error_impl(v17, v18, v19, v20, v21, v22);
    goto LABEL_8;
  }

  v4 = v2;
  if (!v2)
  {
    v16 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v16))
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v5 = v1;
  v6 = OUTLINED_FUNCTION_6_7();
  *v4 = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_21_4();
  OUTLINED_FUNCTION_18_18();
  iAP2MsgInitWithSom(v7, v8, v9, v10, v11, v12, v13);
  result = 0;
  *(v5 + 28) = 20991;
  return result;
}

uint64_t mfi4Auth_protocol_initIdentity(uint64_t a1)
{
  if (!a1)
  {
    v23 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v23))
    {
LABEL_24:

      inited = 0;
      goto LABEL_10;
    }

    LOWORD(v31) = 0;
LABEL_26:
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v25, v26, v27, v28, v29, v30);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_16_7();
  if (v4)
  {
    v24 = logObjectForModule_41();
    if (!OUTLINED_FUNCTION_16(v24))
    {
      goto LABEL_24;
    }

    LOWORD(v31) = 0;
    goto LABEL_26;
  }

  v5 = v3;
  v6 = *(a1 + 712);
  *(v6 + 128) = 97;
  v7 = *(v6 + 120);
  if (v7)
  {
    free(v7);
    *(v6 + 120) = 0;
  }

  *(v6 + 120) = malloc_type_malloc(0x61uLL, 0xA6351C4uLL);
  if (v5)
  {
    inited = mfi4Auth_protocol_initIdentityCerts(a1);
  }

  else
  {
    *(a1 + 384) = 97;
    v8 = malloc_type_malloc(0x61uLL, 0x4FEEB30FuLL);
    *(a1 + 376) = v8;
    if (v8 && (*(a1 + 352) = 617, v9 = malloc_type_malloc(0x269uLL, 0xF30CF31FuLL), (*(a1 + 344) = v9) != 0) && (*(a1 + 368) = 557, v10 = malloc_type_malloc(0x22DuLL, 0x9557CB3uLL), (*(a1 + 360) = v10) != 0))
    {
      memcpy(*(a1 + 376), &pvt_key_test, 0x61uLL);
      memcpy(*(a1 + 344), &cert_resp_test, 0x269uLL);
      memcpy(*(a1 + 360), &intermediate_cert_resp_test, 0x22DuLL);
      inited = 0;
      *(a1 + 392) = 0;
    }

    else
    {
      inited = 0xFFFFFFFFLL;
    }
  }

LABEL_10:
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v14 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v31 = 134218240;
      v32 = v12;
      OUTLINED_FUNCTION_3();
      v33 = v13;
      OUTLINED_FUNCTION_1_1();
      _os_log_error_impl(v18, v19, v20, v21, v22, 0x12u);
    }

    v14 = &_os_log_default;
    v15 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_93())
  {
    v31 = 67109120;
    LODWORD(v32) = inited;
    OUTLINED_FUNCTION_10_5(&_mh_execute_header, v14, v16, "mfi4Auth_protocol_initIdentity: error:%d", &v31);
  }

  return inited;
}

uint64_t mfi4Auth_protocol_initIdentityCerts(uint64_t a1)
{
  v34 = 0;
  theArray = 0;
  if (!copyDeviceIdentityCertificates(&theArray, &v34))
  {
    goto LABEL_24;
  }

  v2 = theArray;
  v3 = 0xFFFFFFFFLL;
  if (theArray && v34)
  {
    if (CFArrayGetCount(theArray) != 2)
    {
      goto LABEL_12;
    }

    if (!CFArrayGetValueAtIndex(theArray, 0))
    {
      goto LABEL_12;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 1);
    if (!ValueAtIndex)
    {
      goto LABEL_12;
    }

    v5 = ValueAtIndex;
    Length = SecCertificateGetLength();
    v7 = SecCertificateGetLength();
    if (a1)
    {
      if (*(a1 + 30) != 1)
      {
        v8 = v7;
        v9 = malloc_type_malloc(Length, 0xE88602FAuLL);
        *(a1 + 344) = v9;
        if (v9)
        {
          v10 = malloc_type_malloc(v8, 0x72B0D4A4uLL);
          *(a1 + 360) = v10;
          if (v10)
          {
            v11 = *(a1 + 344);
            BytePtr = SecCertificateGetBytePtr();
            memcpy(v11, BytePtr, Length);
            v13 = *(a1 + 360);
            v14 = SecCertificateGetBytePtr();
            memcpy(v13, v14, v8);
            v3 = 0;
            *(a1 + 352) = Length;
            *(a1 + 368) = v8;
            *(a1 + 376) = 0;
            *(a1 + 392) = v34;
LABEL_12:
            v2 = theArray;
            goto LABEL_13;
          }
        }

LABEL_24:
        v3 = 0xFFFFFFFFLL;
        goto LABEL_12;
      }

      v27 = logObjectForModule_41();
      if (!OUTLINED_FUNCTION_16(v27))
      {
LABEL_28:

        v3 = 0;
        goto LABEL_12;
      }

      *buf = 0;
    }

    else
    {
      v26 = logObjectForModule_41();
      if (!OUTLINED_FUNCTION_16(v26))
      {
        goto LABEL_28;
      }

      *buf = 0;
    }

    OUTLINED_FUNCTION_2_40();
    _os_log_error_impl(v28, v29, v30, v31, v32, v33);
    goto LABEL_28;
  }

LABEL_13:
  if (v2)
  {
    CFRelease(v2);
    theArray = 0;
  }

  v15 = gLogObjects;
  v16 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v17 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v37 = v15;
      OUTLINED_FUNCTION_2_1();
      v38 = v16;
      OUTLINED_FUNCTION_11_17(&_mh_execute_header, &_os_log_default, v21, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v22, v23, v24, v25, v34, theArray);
    }

    v17 = &_os_log_default;
    v18 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_93())
  {
    *buf = 67109120;
    LODWORD(v37) = v3;
    OUTLINED_FUNCTION_10_5(&_mh_execute_header, v17, v19, "mfi4Auth_protocol_initIdentityCerts: error:%d", buf);
  }

  return v3;
}

void logObjectForModule_cold_1_7()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void mfi4Auth_protocol_authSetupStart_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_authSetupStart_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_authSetupStart_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handleAuthSessionClose_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handleAuthSessionClose_cold_4()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handleAuthSessionClose_cold_5()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handleAuthSessionClose_cold_6()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handleAuthSessionClose_cold_7()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthSetup_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_10()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_14()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_15()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_16()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_17()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_18()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_20()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthSetup_cold_21()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_initMessage_AuthStart_cold_6()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1_1();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_16_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthSetupFailed_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthSetupFailed_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthSetupFailed_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthStart_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_RequestAuthCert_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }
}

void mfi4Auth_protocol_handle_RequestAuthCert_cold_3(unsigned __int8 a1, NSObject *a2)
{
  v2 = 136316162;
  v3 = "mfi4Auth_protocol_handle_RequestAuthCert";
  v4 = 1024;
  v5 = 744;
  v6 = 1024;
  v7 = a1;
  v8 = 1024;
  v9 = 1;
  v10 = 1024;
  v11 = 2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s:%d paramMask 0x%x, CertHash paramMask 0x%x, CertKeyID paramMask 0x%x ", &v2, 0x24u);
}

void mfi4Auth_protocol_handle_RequestAuthCert_cold_4()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_RequestAuthCert_cold_5()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_RequestAuthCert_cold_6()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_24_10();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_4()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_5()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_40_2(a1);
  v2 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v2))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v3, v4, v5, v6, v7, v8);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_19()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_20()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_21()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthCert_cold_22()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_initMessage_RequestAuthCert_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_initMessage_RequestAuthCert_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_validateCertChain_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateCertChain_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateCertChain_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateCertChain_cold_7()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1_1();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_16_17();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_validateSignature_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_40_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void mfi4Auth_protocol_validateSignature_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_7()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_validateSignature_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_10()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_12()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_validateSignature_cold_13()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_validateSignature_cold_14()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_validateSignature_cold_15()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthFinish_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthFinish_cold_2()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthFinish_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthFinish_cold_4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_handle_AuthChallengeResponse_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthChallengeResponse_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthChallengeResponse_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationReset_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationReset_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationReset_cold_4()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationFailed_cold_1()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationFailed_cold_2()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_handle_AuthenticationFailed_cold_3()
{
  v1 = logObjectForModule_41();
  if (OUTLINED_FUNCTION_16(v1))
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_processIncomingMessage_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_10()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_11()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_12()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_13()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_16()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_18()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_19()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_22()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_23()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_24()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_25()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessage_cold_26()
{
  if (gLogObjects && gNumLogObjects >= 56)
  {
    v0 = *(gLogObjects + 440);
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_1_1();
      _os_log_error_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    v0 = &_os_log_default;
    v1 = &_os_log_default;
  }

  if (OUTLINED_FUNCTION_13())
  {
    OUTLINED_FUNCTION_1_39();
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
  }
}

void mfi4Auth_protocol_processIncomingMessageExtra_cold_5()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessageExtra_cold_6()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessageExtra_cold_7()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void mfi4Auth_protocol_processIncomingMessageExtra_cold_9()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_35();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void t56_protocol_init_cold_3()
{
  LODWORD(v3) = 136315906;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  LOWORD(v6) = v0;
  HIWORD(v6) = v1;
  OUTLINED_FUNCTION_8_27(&_mh_execute_header, v1, v2, "%s:%d result %d, role %dX", v3, v4, v5, v6);
}

void t56_protocol_start_cold_3()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  LODWORD(v4) = 136315906;
  OUTLINED_FUNCTION_5_29();
  LOWORD(v6) = 0;
  HIWORD(v6) = v0;
  LOWORD(v7) = v0;
  HIWORD(v7) = v1;
  OUTLINED_FUNCTION_8_27(&_mh_execute_header, v2, v3, "%s:%d result %d, role %d", v4, v5, v6, v7);
}

void t56_protocol_timeoutForRequest_cold_2()
{
  OUTLINED_FUNCTION_10_20();
  t56_protocol_msgTypeString(v0);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_88();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x28u);
}

void _T56Protocol_timeoutCallback_cold_4()
{
  v2[0] = 136315650;
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  v2[5] = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s:%d Device: Unhandled timeoutType %d !!!", v2, 0x18u);
}

void _T56Protocol_timeoutCallback_cold_6()
{
  LODWORD(v3) = 136315906;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  LOWORD(v6) = v0;
  HIWORD(v6) = v1;
  OUTLINED_FUNCTION_8_27(&_mh_execute_header, v1, v2, "%s:%d Unknown role(%d)! can't handle timer %d!", v3, v4, v5, v6);
}

void t56_protocol_processIncomingData_cold_2()
{
  v3[0] = 136316674;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  v4 = v0;
  v5 = 0;
  v6 = v0;
  v7 = 0;
  v8 = 2080;
  v9 = "UNKNOWN";
  v10 = v0;
  v11 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s:%d Unknown Role! %d, ver %d, msgType %d(%s), dataInLen %d", v3, 0x34u);
}

void t56_protocol_processIncomingData_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  t56_protocol_msgTypeString(v0);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_16_18(v1, v2, v3, v4, v5);
}

void t56_protocol_processIncomingData_cold_5(int a1)
{
  t56_protocol_msgTypeString(a1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x22u);
}

void t56_protocol_processIncomingData_cold_6()
{
  OUTLINED_FUNCTION_10_20();
  t56_protocol_msgTypeString(v0);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_16_18(v1, v2, v3, v4, v5);
}

void t56_protocol_checkValidMessageHeaderAndSize_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  t56_protocol_msgTypeString(v0);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_16_18(v1, v2, v3, v4, v5);
}

void t56_protocol_checkValidMessageHeaderAndSize_cold_7()
{
  OUTLINED_FUNCTION_10_20();
  t56_protocol_msgTypeString(v0);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_16_18(v1, v2, v3, v4, v5);
}

void _t56_protocol_handleResponse_SESSION_RSP_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleResponse_SESSION_RSP_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleResponse_DISCOVER_RSP_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleResponse_DISCOVER_RSP_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleResponse_DATA_cold_3()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleResponse_DATA_cold_5()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleResponse_STATUS_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleResponse_STATUS_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleRequest_SESSION_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleRequest_SESSION_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleRequest_DISCOVER_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleRequest_DISCOVER_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleRequest_POLL_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleRequest_POLL_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleRequest_DATA_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleRequest_DATA_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void _t56_protocol_handleRequest_TERMINATE_cold_2()
{
  OUTLINED_FUNCTION_12_17(__stack_chk_guard);
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d role %d", v2, v3, v4, v5, v6);
}

void _t56_protocol_handleRequest_TERMINATE_cold_4()
{
  OUTLINED_FUNCTION_10_20();
  OUTLINED_FUNCTION_11_18(v0, v1);
  OUTLINED_FUNCTION_17_8();
  OUTLINED_FUNCTION_1_40();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x28u);
}

void t56_protocol_initMsg_DISCOVER_cold_2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_5_29();
  OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_7_28(&_mh_execute_header, v0, v1, "%s:%d sessionID %d", v2, v3, v4, v5, v6);
}

void t56_protocol_initMsg_POLL_cold_2()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_17_8();
  *(&v1[3] + 2) = 1328;
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d enter", v1, 0x12u);
}

void *_createFeature_23(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200400CC4F872uLL);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    v1[1] = 0;
    platform_hid_incrementUserCount();
  }

  return v2;
}

uint64_t _startFeatureFromDevice_14(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*result)
    {
      return 0;
    }

    if (!iap2_feature_getFeature(result, 0xBu) || *(iap2_feature_getFeature(v1, 0xBu) + 1) != 1)
    {
      return 1;
    }

    v2 = *v1;
    if (!*v1)
    {
      return 0;
    }

    result = *v2;
    if (!*v2)
    {
      return result;
    }

    if (acc_connection_getType(result) != 2 && acc_endpoint_getTransportType(*v1) != 8)
    {
      return 0;
    }

    v3 = OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_49(v3, 26630, v4);
    v5 = OUTLINED_FUNCTION_3_21();

    return iap2_sessionControl_sendOutgoingMessage(v5, v6);
  }

  return result;
}

uint64_t _checkIdentificationInfo_23(uint64_t a1)
{
  HIBYTE(v43) = -86;
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v4 = *(gLogObjects + 256);
  }

  else
  {
    v4 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v45 = v2;
      v46 = 1024;
      v47 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "checking HID ident info", buf, 2u);
  }

  v5 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgHIDList, 7, &v43 + 7);
  if (v5)
  {
    return v5;
  }

  v6 = HIBYTE(v43);
  v7 = iap2_identification_checkIdentificationMsgIDs(a1, &_checkIdentificationInfo__kMsgNativeHIDList, 1, &v43 + 7);
  v8 = v7;
  v9 = 0;
  v10 = HIBYTE(v43);
  v11 = 0;
  if (HIBYTE(v43) | v6 && !v7)
  {
    iap2_features_createFeature(a1, 0xBu);
    iap2_identification_setIdentifiedForFeature(a1);
    v9 = v10;
    v11 = v6;
  }

  Feature = iap2_feature_getFeature(a1, 0xBu);
  if (Feature)
  {
    *Feature = v11;
    Feature[1] = v9;
  }

  if (!v11)
  {
    goto LABEL_21;
  }

  v13 = gLogObjects;
  v14 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v15 = *(gLogObjects + 256);
  }

  else
  {
    v15 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v45 = v13;
      v46 = 1024;
      v47 = v14;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v32, v33, v34, v35, v36, 0x12u);
    }
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    OUTLINED_FUNCTION_18_19(&_mh_execute_header, v16, v17, "Identified for HID", v18, v19, v20, v21, v42, v43);
    if (!v9)
    {
      return v8;
    }
  }

  else
  {
LABEL_21:
    if (!v9)
    {
      return v8;
    }
  }

  v22 = gLogObjects;
  v23 = gNumLogObjects;
  if (gLogObjects && gNumLogObjects >= 33)
  {
    v24 = *(gLogObjects + 256);
  }

  else
  {
    v24 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v45 = v22;
      v46 = 1024;
      v47 = v23;
      OUTLINED_FUNCTION_8_0();
      _os_log_error_impl(v37, v38, v39, v40, v41, 0x12u);
    }
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    OUTLINED_FUNCTION_18_19(&_mh_execute_header, v25, v26, "Identified for Native HID", v27, v28, v29, v30, v42, v43);
  }

  return v8;
}

uint64_t iap2_hid_StartHIDMsgHandler(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v94 = 0;
  DataAsU8 = 0;
  valuePtr = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_5_34(731124096);
    if (iAP2MsgGetMsgID(a2) == 26624 && (FirstParam = iAP2MsgGetFirstParam(a2, 0)) != 0)
    {
      NextParam = FirstParam;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      key = 0;
      v77 = 0;
      v9 = kCFAllocatorDefault;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        switch(ParamID)
        {
          case 0:
            v11 = OUTLINED_FUNCTION_12_18();
            DataAsU16 = iAP2MsgGetDataAsU16(v11, v12);
            v6 = DataAsU16;
            v8 = _validateHIDComponent(a1, DataAsU16);
            break;
          case 1:
            v22 = OUTLINED_FUNCTION_12_18();
            HIWORD(valuePtr) = iAP2MsgGetDataAsU16(v22, v23);
            key = 1;
            break;
          case 2:
            v18 = OUTLINED_FUNCTION_12_18();
            LOWORD(valuePtr) = iAP2MsgGetDataAsU16(v18, v19);
            v77 = 1;
            break;
          case 3:
            v20 = OUTLINED_FUNCTION_12_18();
            DataAsU8 = iAP2MsgGetDataAsU8(v20, v21);
            break;
          case 4:
            ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
            v15 = OUTLINED_FUNCTION_12_18();
            DataAsData = iAP2MsgGetDataAsData(v15, v16);
            if (v7)
            {
              CFRelease(v7);
            }

            v7 = CFDataCreate(v9, DataAsData, ParamValueLen);
            break;
          default:
            v24 = v9;
            v25 = v7;
            v26 = gLogObjects;
            v27 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 33)
            {
              v28 = *(gLogObjects + 256);
            }

            else
            {
              v28 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v96 = v26;
                v97 = 1024;
                v98 = v27;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v96) = ParamID;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
            }

            v7 = v25;
            v9 = v24;
            break;
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
      }

      while (NextParam);
      if (((v7 != 0) & key & v77 & v8) == 1)
      {
        *buf = 0;
        v91 = 1;
        v89 = 3;
        v90 = 2;
        v87 = 5;
        v88 = 4;
        v85 = 7;
        v86 = 6;
        v84 = 9;
        v82 = 11;
        v83 = 10;
        v81 = 12;
        v30 = OUTLINED_FUNCTION_8_28(0, v29, buf);
        v32 = OUTLINED_FUNCTION_8_28(v30, v31, &v91);
        v34 = OUTLINED_FUNCTION_8_28(v32, v33, &v90);
        v74 = OUTLINED_FUNCTION_8_28(v34, v35, &v89);
        v73 = OUTLINED_FUNCTION_8_28(v74, v36, &v88);
        v72 = OUTLINED_FUNCTION_8_28(v73, v37, &v87);
        v71 = OUTLINED_FUNCTION_8_28(v72, v38, &v86);
        v70 = OUTLINED_FUNCTION_8_28(v71, v39, &v85);
        v69 = OUTLINED_FUNCTION_8_28(v70, v40, &v84);
        v68 = OUTLINED_FUNCTION_8_28(v69, v41, &v83);
        v67 = OUTLINED_FUNCTION_8_28(v68, v42, &v82);
        v66 = OUTLINED_FUNCTION_8_28(v67, v43, &v81);
        value = CFNumberCreate(v9, kCFNumberShortType, &valuePtr + 2);
        v44 = CFNumberCreate(v9, kCFNumberShortType, &valuePtr);
        v65 = CFNumberCreate(v9, kCFNumberCharType, &DataAsU8);
        AccessoryInfo = acc_endpoint_getAccessoryInfo(*a1);
        v75 = v7;
        v76 = v34;
        if (AccessoryInfo)
        {
          v46 = AccessoryInfo;
          v47 = acc_accInfo_retainedProperty(AccessoryInfo, 0, 0);
          v64 = acc_accInfo_retainedProperty(v46, 1, 0);
          v63 = acc_accInfo_retainedProperty(v46, 2, 0);
          v48 = acc_accInfo_retainedProperty(v46, 3, 0);
          v49 = acc_accInfo_retainedProperty(v46, 5, 0);
        }

        else
        {
          v50 = iap2_identification_paramName(0);
          v47 = OUTLINED_FUNCTION_2_41(v50);
          v51 = iap2_identification_paramName(2);
          v64 = OUTLINED_FUNCTION_2_41(v51);
          v52 = iap2_identification_paramName(1);
          v63 = OUTLINED_FUNCTION_2_41(v52);
          v53 = iap2_identification_paramName(3);
          v48 = OUTLINED_FUNCTION_2_41(v53);
          v54 = iap2_identification_paramName(4);
          v49 = OUTLINED_FUNCTION_2_41(v54);
        }

        v55 = v49;
        v80 = _hidComponentFunctionType(a1, v6);
        v56 = CFNumberCreate(v9, kCFNumberIntType, &v80);
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        CFDictionaryAddValue(Mutable, v30, @"iAP");
        CFDictionaryAddValue(Mutable, v32, value);
        CFDictionaryAddValue(Mutable, v76, v44);
        CFDictionaryAddValue(Mutable, v66, v47);
        CFDictionaryAddValue(Mutable, v73, v64);
        CFDictionaryAddValue(Mutable, v72, v63);
        v61 = v48;
        CFDictionaryAddValue(Mutable, v71, v48);
        v58 = v55;
        CFDictionaryAddValue(Mutable, v74, v55);
        CFDictionaryAddValue(Mutable, v70, v65);
        CFDictionaryAddValue(Mutable, v69, v75);
        CFDictionaryAddValue(Mutable, v68, v56);
        CFDictionaryAddValue(Mutable, v67, kCFBooleanTrue);
        v59 = platform_hid_register_descriptor(a1[1], v6, Mutable);
        if (value)
        {
          CFRelease(value);
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (v65)
        {
          CFRelease(v65);
        }

        if (v47)
        {
          CFRelease(v47);
        }

        if (v64)
        {
          CFRelease(v64);
        }

        if (v63)
        {
          CFRelease(v63);
        }

        if (v61)
        {
          CFRelease(v61);
        }

        if (v58)
        {
          CFRelease(v58);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        if (v76)
        {
          CFRelease(v76);
        }

        if (v74)
        {
          CFRelease(v74);
        }

        if (v73)
        {
          CFRelease(v73);
        }

        if (v72)
        {
          CFRelease(v72);
        }

        if (v71)
        {
          CFRelease(v71);
        }

        if (v70)
        {
          CFRelease(v70);
        }

        if (v69)
        {
          CFRelease(v69);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        if (v67)
        {
          CFRelease(v67);
        }

        if (v66)
        {
          CFRelease(v66);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v7 = v75;
        goto LABEL_74;
      }

      v59 = 0;
      v2 = 0;
      if (v7)
      {
LABEL_74:
        CFRelease(v7);
        v2 = v59;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  OUTLINED_FUNCTION_5_34(731124100);
  return v2;
}

uint64_t iap2_hid_AccessoryHIDReportHandler(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v27 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_5_34(731124136);
  if (iAP2MsgGetMsgID(a2) != 26626 || (v5 = OUTLINED_FUNCTION_22(), (FirstParam = iAP2MsgGetFirstParam(v5, v6)) == 0))
  {
    v2 = 0;
    goto LABEL_30;
  }

  NextParam = FirstParam;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    if (ParamID == 1)
    {
      ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
      DataAsData = iAP2MsgGetDataAsData(NextParam, &v27);
      if (v27)
      {
        v25 = logObjectForModule_42();
        if (!OUTLINED_FUNCTION_13_9(v25))
        {
          goto LABEL_28;
        }

        iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        LODWORD(v29) = 1;
        OUTLINED_FUNCTION_10_2();
        goto LABEL_32;
      }

      v17 = DataAsData;
      if (v10)
      {
        CFRelease(v10);
      }

      v10 = CFDataCreate(kCFAllocatorDefault, v17, ParamValueLen);
    }

    else
    {
      v13 = ParamID;
      if (!ParamID)
      {
        DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v27);
        if (!v27)
        {
          v9 = DataAsU16;
          v11 = _validateHIDComponent(a1, DataAsU16);
          goto LABEL_21;
        }

        v24 = logObjectForModule_42();
        if (!OUTLINED_FUNCTION_13_9(v24))
        {
          goto LABEL_28;
        }

        iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        LODWORD(v29) = 0;
        OUTLINED_FUNCTION_10_2();
LABEL_32:
        _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", buf, 0xEu);
        goto LABEL_28;
      }

      v18 = gLogObjects;
      v19 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 33)
      {
        v20 = *(gLogObjects + 256);
      }

      else
      {
        v20 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v29 = v18;
          v30 = 1024;
          v31 = v19;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v29) = v13;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
      }
    }

LABEL_21:
    v21 = OUTLINED_FUNCTION_22();
    NextParam = iAP2MsgGetNextParam(v21, v22, NextParam);
  }

  while (NextParam);
  if ((v11 & (v10 != 0)) == 1)
  {
    v23 = platform_hid_in_report(*(a1 + 8), v9, v10);
    goto LABEL_29;
  }

LABEL_28:
  v23 = 0;
  v2 = 0;
  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_29:
  CFRelease(v10);
  v2 = v23;
LABEL_30:
  OUTLINED_FUNCTION_5_34(731124140);
  return v2;
}

unsigned __int16 *iap2_hid_AccessoryHIDGetReportResponseHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  v31 = a1;
  if (a1 && a2)
  {
    if (iAP2MsgGetMsgID(a2) != 26629)
    {
      return 0;
    }

    v4 = OUTLINED_FUNCTION_22();
    result = iAP2MsgGetFirstParam(v4, v5);
    if (result)
    {
      NextParam = result;
      v7 = 0;
      DataAsU8 = 0;
      v9 = 0;
      v10 = 0;
      v29 = 0;
      v30 = 0;
      do
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        switch(ParamID)
        {
          case 0:
            v12 = OUTLINED_FUNCTION_15_23();
            DataAsU16 = iAP2MsgGetDataAsU16(v12, v13);
            v7 = DataAsU16;
            v29 = _validateHIDComponent(v31, DataAsU16);
            break;
          case 1:
            v21 = OUTLINED_FUNCTION_15_23();
            DataAsU8 = iAP2MsgGetDataAsU8(v21, v22);
            LODWORD(v30) = 1;
            break;
          case 2:
            v15 = OUTLINED_FUNCTION_15_23();
            v9 = iAP2MsgGetDataAsU8(v15, v16);
            HIDWORD(v30) = 1;
            break;
          case 3:
            ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
            v18 = OUTLINED_FUNCTION_15_23();
            DataAsData = iAP2MsgGetDataAsData(v18, v19);
            if (v10)
            {
              CFRelease(v10);
            }

            v10 = CFDataCreate(kCFAllocatorDefault, DataAsData, ParamValueLen);
            break;
          default:
            v23 = gLogObjects;
            v24 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 33)
            {
              v25 = *(gLogObjects + 256);
            }

            else
            {
              v25 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v33 = v23;
                v34 = 1024;
                v35 = v24;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              LODWORD(v33) = ParamID;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
            }

            break;
        }

        v26 = OUTLINED_FUNCTION_22();
        NextParam = iAP2MsgGetNextParam(v26, v27, NextParam);
      }

      while (NextParam);
      if ((v29 & v30 & HIDWORD(v30) & 1) != 0 && v10)
      {
        report_response = platform_hid_get_report_response(*(v31 + 8), v7, DataAsU8, v9, v10);
      }

      else
      {
        report_response = 0;
        result = 0;
        if (!v10)
        {
          return result;
        }
      }

      CFRelease(v10);
      return report_response;
    }
  }

  return result;
}

unsigned __int16 *iap2_hid_StopHIDMsgHandler(uint64_t a1, uint64_t a2)
{
  result = 0;
  v20 = 0;
  if (a1 && a2)
  {
    if (iAP2MsgGetMsgID(a2) != 26627)
    {
      return 0;
    }

    result = iAP2MsgGetFirstParam(a2, 0);
    if (result)
    {
      NextParam = result;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID)
        {
          v9 = ParamID;
          v10 = gLogObjects;
          v11 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 33)
          {
            v12 = *(gLogObjects + 256);
          }

          else
          {
            v12 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v22 = v10;
              v23 = 1024;
              v24 = v11;
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              v12 = &_os_log_default;
            }
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v22) = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Unrecognized paramID:0x%04X", buf, 8u);
          }
        }

        else
        {
          DataAsU16 = iAP2MsgGetDataAsU16(NextParam, &v20);
          if (v20)
          {
            v14 = logObjectForModule_42();
            result = OUTLINED_FUNCTION_21_0(v14);
            if (!result)
            {
              return result;
            }

            iAP2MsgGetMsgID(a2);
            *buf = 67109376;
            LODWORD(v22) = 0;
            OUTLINED_FUNCTION_10_2();
            OUTLINED_FUNCTION_8_0();
            _os_log_error_impl(v15, v16, v17, v18, v19, 0xEu);
            return 0;
          }

          v6 = DataAsU16;
          v7 = _validateHIDComponent(a1, DataAsU16);
        }

        NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
        if (!NextParam)
        {
          if ((v7 & 1) == 0)
          {
            return 0;
          }

          return platform_hid_unregister_descriptor(*(a1 + 8), v6);
        }
      }
    }
  }

  return result;
}

uint64_t iap2_hid_sendOutReport(uint64_t a1, CFDictionaryRef theDict)
{
  result = 0;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Report");
    v6 = CFDictionaryGetValue(theDict, @"ComponentID");
    valuePtr = 0;
    CFNumberGetValue(v6, kCFNumberShortType, &valuePtr);
    v7 = OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_49(v7, 26625, v8);
    if (v6)
    {
      v18 = 0;
      CFNumberGetValue(v6, kCFNumberShortType, &v18);
      v9 = OUTLINED_FUNCTION_6_11();
      v12 = iAP2MsgAddU16Param(v9, v10, 0, v11) == 0;
      if (!Value)
      {
        return 0;
      }
    }

    else
    {
      v12 = 1;
      if (!Value)
      {
        return 0;
      }
    }

    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    if (iAP2MsgAddDataParam(a1 + 120, 0, 1, BytePtr, Length))
    {
      v15 = v12;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    v16 = OUTLINED_FUNCTION_3_21();
    return iap2_sessionControl_sendOutgoingMessage(v16, v17);
  }

  return result;
}

uint64_t iap2_hid_sendGetReport(uint64_t a1, CFDictionaryRef theDict)
{
  result = 0;
  if (!a1 || !theDict)
  {
    return result;
  }

  Value = CFDictionaryGetValue(theDict, @"ComponentID");
  v6 = CFDictionaryGetValue(theDict, @"ReportType");
  v7 = CFDictionaryGetValue(theDict, @"ReportID");
  v8 = OUTLINED_FUNCTION_6_15();
  OUTLINED_FUNCTION_49(v8, 26628, v9);
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
    v10 = OUTLINED_FUNCTION_6_11();
    v13 = iAP2MsgAddU16Param(v10, v11, 0, v12) == 0;
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = 1;
    if (v6)
    {
LABEL_5:
      v25 = 0;
      CFNumberGetValue(v6, kCFNumberCharType, &v25);
      v14 = OUTLINED_FUNCTION_6_11();
      v17 = iAP2MsgAddU8Param(v14, v15, 1, v16) == 0;
      if (v7)
      {
        goto LABEL_6;
      }

      return 0;
    }
  }

  v17 = 1;
  if (!v7)
  {
    return 0;
  }

LABEL_6:
  v24 = 0;
  CFNumberGetValue(v7, kCFNumberCharType, &v24);
  v18 = OUTLINED_FUNCTION_6_11();
  v21 = iAP2MsgAddU8Param(v18, v19, 2, v20);
  result = 0;
  if (!v13 && !v17)
  {
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_3_21();
      return iap2_sessionControl_sendOutgoingMessage(v22, v23);
    }
  }

  return result;
}

uint64_t iap2_hid_sendComponentUpdate(uint64_t a1, CFDictionaryRef theDict)
{
  result = 0;
  if (a1 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"ComponentID");
    v6 = CFDictionaryGetValue(theDict, @"Enabled");
    v7 = OUTLINED_FUNCTION_6_15();
    OUTLINED_FUNCTION_49(v7, 26631, v8);
    if (Value)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
      v9 = OUTLINED_FUNCTION_6_11();
      v12 = iAP2MsgAddU16Param(v9, v10, 0, v11) == 0;
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v12 = 1;
      if (!v6)
      {
        return 0;
      }
    }

    v19 = 0;
    CFNumberGetValue(v6, kCFNumberCharType, &v19);
    v13 = OUTLINED_FUNCTION_6_11();
    if (iAP2MsgAddU8Param(v13, v14, 1, v15))
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }

    v17 = OUTLINED_FUNCTION_3_21();
    return iap2_sessionControl_sendOutgoingMessage(v17, v18);
  }

  return result;
}

void _CFDictionaryApplierFunction_releaseHIDComponents(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a2);
  }
}

void _hidComponentFunctionType_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "hidComponent is NULL", buf, 2u);
}

void _hidComponentFunctionType_cold_2(_DWORD *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pFeature->hidComponents is NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 11;
}

void _hidComponentFunctionType_cold_3(_DWORD *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pFeature is NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 11;
}

void _validateHIDComponent_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pFeature is NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void _parseiAPHIDComponentIdentificationParams_cold_3(_BYTE *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pFeature == NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void _parseiAPHIDComponentIdentificationParams_cold_4(_BYTE *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint == NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void _parseNativeBTHIDComponentIdentificationParams_cold_4(_BYTE *a1)
{
  v2 = logObjectForModule_42();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v9 = 0;
    OUTLINED_FUNCTION_5_5(&_mh_execute_header, v3, v4, "pProtocolEndpoint->pEndpoint == NULL", v5, v6, v7, v8, v9);
  }

  *a1 = 0;
}

void platform_notifications_authenticationStatusDidChangeForConnectionUUID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = gLogObjects;
  v13 = gNumLogObjects;
  if (gLogObjects)
  {
    v14 = gNumLogObjects < 7;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v34 = v12;
      v35 = 1024;
      v36 = v13;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v16 = &_os_log_default;
    v15 = &_os_log_default;
  }

  else
  {
    v16 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = a1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[#Notifications] Informing transport clients/plugins that auth status has changed for connection %@...", buf, 0xCu);
  }

  if (a1)
  {
    v31[0] = ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionUUID;
    v17 = a1;
    v18 = [NSString stringWithString:v17];
    v32[0] = v18;
    v31[1] = ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusOld;
    [NSNumber numberWithInt:a2];
    v19 = v30 = a2;
    v32[1] = v19;
    v31[2] = ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusNew;
    [NSNumber numberWithInt:a3];
    v20 = v29 = a3;
    v32[2] = v20;
    v31[3] = ACCTransportPlugin_AuthStatusDidChangeNotification_AuthType;
    v21 = [NSNumber numberWithInt:a4];
    v32[3] = v21;
    v31[4] = ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionIsAuthenticated;
    v22 = [NSNumber numberWithBool:a5];
    v32[4] = v22;
    v31[5] = ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionWasAuthenticated;
    v23 = [NSNumber numberWithBool:a6];
    v32[5] = v23;
    [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:6];
    v24 = v28 = a6;

    v25 = +[NSNotificationCenter defaultCenter];

    [v25 postNotificationName:ACCTransportPlugin_AuthStatusDidChangeNotification object:0 userInfo:v24];
    v26 = +[ACCTransportServer sharedServer];
    v27 = [NSString stringWithString:v17];
    [v26 authStateDidChange:v29 forConnectionWithUUID:v27 previousAuthState:v30 authType:a4 connectionIsAuthenticated:a5 connectionWasAuthenticated:v28];
  }
}

void platform_notifications_propertiesDidChangeForConnectionUUID(uint64_t a1, void *a2, void *a3)
{
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
      *buf = 134218240;
      v23 = v6;
      v24 = 1024;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v10 = &_os_log_default;
    v9 = &_os_log_default;
  }

  else
  {
    v10 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = a1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[#Notifications] Informing transport clients/plugins that properties have changed for connection %@...", buf, 0xCu);
  }

  if (a1)
  {
    v19 = a1;
    v16 = ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID;
    v17 = ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld;
    v11 = a2;
    if (!a2)
    {
      v11 = [NSNull null:v16];
    }

    v20 = v11;
    v18 = ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew;
    v12 = a3;
    if (!a3)
    {
      v12 = +[NSNull null];
    }

    v21 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v16 count:3];
    if (a3)
    {
      if (a2)
      {
LABEL_18:
        v14 = [NSNotificationCenter defaultCenter:v16];
        [v14 postNotificationName:ACCTransportPlugin_ConnectionPropertiesDidChangeNotification object:0 userInfo:v13];

        v15 = +[ACCTransportServer sharedServer];
        [v15 propertiesDidChange:a3 forConnectionWithUUID:a1 previousProperties:a2];

        return;
      }
    }

    else
    {

      if (a2)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_18;
  }
}

void platform_notifications_propertiesDidChangeForEndpointUUID(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = gLogObjects;
  v9 = gNumLogObjects;
  if (gLogObjects)
  {
    v10 = gNumLogObjects < 7;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v24 = v8;
      v25 = 1024;
      LODWORD(v26) = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
    }

    v12 = &_os_log_default;
    v11 = &_os_log_default;
  }

  else
  {
    v12 = *(gLogObjects + 48);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = a1;
    v25 = 2112;
    v26 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[#Notifications] Informing transport clients/plugins that properties have changed for endpoint %@ (connection %@)...", buf, 0x16u);
  }

  if (a1 && a2)
  {
    v22[0] = a1;
    v18 = ACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID;
    v19 = ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld;
    v13 = a3;
    if (!a3)
    {
      v13 = [NSNull null:v18];
    }

    v22[1] = v13;
    v20 = ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew;
    v14 = a4;
    if (!a4)
    {
      v14 = +[NSNull null];
    }

    v21 = ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID;
    v22[2] = v14;
    v22[3] = a2;
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:&v18 count:4];
    if (a4)
    {
      if (a3)
      {
LABEL_19:
        v16 = [NSNotificationCenter defaultCenter:v18];
        [v16 postNotificationName:ACCTransportPlugin_EndpointPropertiesDidChangeNotification object:0 userInfo:v15];

        v17 = +[ACCTransportServer sharedServer];
        [v17 propertiesDidChange:a4 forEndpointWithUUID:a1 previousProperties:a3 connectionUUID:a2];

        return;
      }
    }

    else
    {

      if (a3)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_19;
  }
}

void *ea_endpoint_create(uint64_t a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    v3 = v2;
    if (v2)
    {
      *v2 = a1;
      acc_endpoint_setProperty();
    }
  }

  else
  {
    v5 = logObjectForModule_43();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v6, 2u);
    }

    return 0;
  }

  return v3;
}

void *ea_endpoint_publish(void *result)
{
  if (result)
  {
    return (*result != 0);
  }

  return result;
}

uint64_t ea_endpoint_destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      free(result);
      *v1 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t iap2_deviceAuthentication_RequestDeviceCertificate(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = iap2_feature_getFeature(a1, 7u);
    if (result)
    {
      v4 = *(a1 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __iap2_deviceAuthentication_RequestDeviceCertificate_block_invoke;
      block[3] = &__block_descriptor_tmp_23;
      block[4] = a1;
      dispatch_async(v4, block);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_deviceAuthentication_RequestDeviceChallengeResponse(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v48 = 0;
  v49 = &v48;
  v44 = 0;
  v45 = &v44;
  v50 = 0x2000000000;
  v51 = 0;
  v46 = 0x2000000000;
  v47 = 0;
  if (a1 && a2)
  {
    if (iap2_feature_getFeature(a1, 7u))
    {
      v42 = a1;
      FirstParam = iAP2MsgGetFirstParam(a2, 0);
      if (FirstParam)
      {
        NextParam = FirstParam;
        while (1)
        {
          if (v49[3])
          {
            goto LABEL_27;
          }

          ParamID = iAP2MsgGetParamID(NextParam);
          if (ParamID)
          {
            break;
          }

          ParamValueData = iAP2MsgGetParamValueData(NextParam);
          ParamValueLen = iAP2MsgGetParamValueLen(NextParam);
          v13 = ParamValueLen;
          if (!ParamValueData || !ParamValueLen)
          {
            v28 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 49)
            {
              v29 = *(gLogObjects + 384);
            }

            else
            {
              v29 = &_os_log_default;
              v30 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
              if (v30)
              {
                OUTLINED_FUNCTION_2_42(v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
                v56 = v28;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }
            }

            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_26;
            }

            *buf = 67109376;
            v53 = ParamValueData;
            v54 = 1024;
            v55 = v13;
            v26 = v29;
            v27 = "Auth challenge param malformed pChallengeBytes:%04X, challengeLength:%02X\n";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0xEu);
            goto LABEL_26;
          }

          v14 = CFDataCreate(0, ParamValueData, ParamValueLen);
          v49[3] = v14;
LABEL_26:
          NextParam = iAP2MsgGetNextParam(a2, 0, NextParam);
          if (!NextParam)
          {
            goto LABEL_27;
          }
        }

        v8 = ParamID;
        v9 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 49)
        {
          v10 = *(gLogObjects + 384);
        }

        else
        {
          v10 = &_os_log_default;
          v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          if (v15)
          {
            OUTLINED_FUNCTION_2_42(v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
            v56 = v9;
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
          }
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        MsgID = iAP2MsgGetMsgID(a2);
        *buf = 67109376;
        v53 = v8;
        v54 = 1024;
        v55 = MsgID;
        v26 = v10;
        v27 = "Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param";
        goto LABEL_25;
      }

LABEL_27:
      v45[3] = platform_auth_createDeviceNonceSignature();
      v40 = *(v42 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __iap2_deviceAuthentication_RequestDeviceChallengeResponse_block_invoke;
      block[3] = &unk_10022B0D8;
      block[4] = &v44;
      block[5] = &v48;
      block[6] = v42;
      dispatch_async(v40, block);
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  return v2;
}

uint64_t iap2_deviceAuthentication_DeviceAuthenticationFailed(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (iap2_feature_getFeature(a1, 7u))
    {
      v2 = 1;
      _setDeviceAuthState(a1, 1);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void _setDeviceAuthState(uint64_t a1, int a2)
{
  if (a1)
  {
    Feature = iap2_feature_getFeature(a1, 7u);
    if (Feature)
    {
      *Feature = a2;
      if (gLogObjects && gNumLogObjects >= 49)
      {
        v4 = *(gLogObjects + 384);
      }

      else
      {
        v4 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_2_3();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_10(v9, v10, v11, v12, v13);
        }
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_15_1();
        _os_log_impl(v5, v6, OS_LOG_TYPE_INFO, v7, v8, 8u);
      }
    }
  }
}

uint64_t iap2_deviceAuthentication_DeviceAuthenticationSucceeded(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    result = iap2_feature_getFeature(a1, 7u);
    if (result)
    {
      _setDeviceAuthState(a1, 2);
      return 1;
    }
  }

  return result;
}

void *_createFeature_24(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (v2)
  {
    _setDeviceAuthState(a1, 0);
  }

  return v2;
}

uint64_t _destroyFeature_24(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      free(result);
      *v1 = 0;
      return 1;
    }
  }

  return result;
}

uint64_t _startFeatureFromDevice_15(uint64_t a1)
{
  if (gLogObjects && gNumLogObjects >= 49)
  {
    v2 = *(gLogObjects + 384);
  }

  else
  {
    v2 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_15_1();
      OUTLINED_FUNCTION_10(v3, v4, v5, v6, v7);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v8, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
  }

  _setDeviceAuthState(a1, 0);
  return 1;
}

uint64_t iap2_voiceOver_selectCursorHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = OUTLINED_FUNCTION_31_11();
    if (result)
    {
      platform_voiceOver_performAction(*(v0 + 8), 16, 0);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_voiceOver_speakTextHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0)
  {
    v7 = v6;
    if (v6)
    {
      OUTLINED_FUNCTION_36_5();
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = v2 < 21;
      }

      if (v9 && OUTLINED_FUNCTION_17())
      {
        v51 = 134218240;
        v52 = v1;
        v53 = 1024;
        LODWORD(v54) = v2;
        OUTLINED_FUNCTION_35(&_mh_execute_header, v10, v11, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v51);
      }

      if (OUTLINED_FUNCTION_82())
      {
        v12 = *(v0 + 8);
        v51 = 138412290;
        v52 = v12;
        OUTLINED_FUNCTION_33_5();
        _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      }

      v18 = OUTLINED_FUNCTION_22();
      FirstParam = iAP2MsgGetFirstParam(v18, v19);
      v49 = 0;
      if (FirstParam)
      {
        NextParam = FirstParam;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          if (iAP2MsgGetParamID(NextParam))
          {
            MsgID = iAP2MsgGetMsgID(v7);
            OUTLINED_FUNCTION_43_8(MsgID, v25, v26, v27, v28, v29, v30, v31, v47, v48);
          }

          else
          {
            DataAsString = iAP2MsgGetDataAsString(NextParam, &v49);
            if (v49)
            {
              v46 = iAP2MsgGetMsgID(v7);
              printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, v46);
              return 0;
            }

            v23 |= DataAsString != 0;
            if (DataAsString)
            {
              v22 = DataAsString;
            }
          }

          v33 = OUTLINED_FUNCTION_22();
          NextParam = iAP2MsgGetNextParam(v33, v34, NextParam);
          if (!NextParam)
          {
            goto LABEL_22;
          }
        }
      }

      v23 = 0;
      v22 = 0;
LABEL_22:
      v35 = *(v3 + 3928);
      v36 = *(v4 + 3936);
      if ((!v35 || v36 < 21) && OUTLINED_FUNCTION_21())
      {
        v51 = 134218240;
        v52 = v35;
        v53 = 1024;
        LODWORD(v54) = v36;
        OUTLINED_FUNCTION_26_2(&_mh_execute_header, v37, v38, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v51);
      }

      if (OUTLINED_FUNCTION_76())
      {
        v39 = *(v0 + 8);
        v40 = "";
        if (v23)
        {
          v40 = v22;
        }

        v51 = 138412802;
        v52 = v39;
        v53 = 2080;
        v54 = v40;
        v55 = 1024;
        v56 = v23 & 1;
        OUTLINED_FUNCTION_26_7();
        _os_log_impl(v41, v42, v43, v44, v45, 0x1Cu);
      }

      if (v23)
      {
        result = OUTLINED_FUNCTION_31_11();
        if (result)
        {
          v50[1] = v22;
          v50[2] = 0xAAAAAAAAAAAAAAAALL;
          v50[0] = 0xAAAAAAAA00000017;
          platform_voiceOver_performAction(*(v0 + 8), 23, v50);
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t iap2_voiceOver_pauseSpeakingHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = OUTLINED_FUNCTION_31_11();
    if (result)
    {
      platform_voiceOver_performAction(*(v0 + 8), 19, 0);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_voiceOver_resumeSpeakingHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = OUTLINED_FUNCTION_31_11();
    if (result)
    {
      platform_voiceOver_performAction(*(v0 + 8), 20, 0);
      return 1;
    }
  }

  return result;
}

uint64_t iap2_voiceOver_stopInformationHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = OUTLINED_FUNCTION_31_11();
    if (result)
    {
      *result = 0;
      platform_voiceOver_stopInformationUpdate(*(v0 + 8));
      return 1;
    }
  }

  return result;
}

uint64_t iap2_voiceOver_updateInformationHandler(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_36_5();
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v3 < 21;
    }

    if (v10 && OUTLINED_FUNCTION_17())
    {
      v59 = 134218240;
      v60 = v2;
      v61 = 1024;
      LODWORD(v62) = v3;
      OUTLINED_FUNCTION_35(&_mh_execute_header, v11, v12, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v59);
    }

    if (OUTLINED_FUNCTION_82())
    {
      v13 = *(a1 + 8);
      v59 = 138412290;
      v60 = v13;
      OUTLINED_FUNCTION_33_5();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    v58 = 0;
    v19 = OUTLINED_FUNCTION_22();
    FirstParam = iAP2MsgGetFirstParam(v19, v20);
    v57 = 0;
    if (FirstParam)
    {
      NextParam = FirstParam;
      v23 = 0;
      v24 = 0;
      v25 = 0.0;
      v26 = 0.0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(NextParam);
        if (ParamID)
        {
          if (ParamID == 1)
          {
            DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v57);
            if (v57)
            {
              MsgID = iAP2MsgGetMsgID(a2);
              printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 1, MsgID);
              return 0;
            }

            v25 = DataAsU8 / 255.0;
            *&v58 = v25;
            v24 = 1;
          }

          else
          {
            v30 = iAP2MsgGetMsgID(a2);
            OUTLINED_FUNCTION_43_8(v30, v31, v32, v33, v34, v35, v36, v37, v53, v54);
          }
        }

        else
        {
          v29 = iAP2MsgGetDataAsU8(NextParam, &v57);
          if (v57)
          {
            v56 = iAP2MsgGetMsgID(a2);
            printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, v56);
            return 0;
          }

          v26 = v29 / 255.0;
          *(&v58 + 1) = v26;
          v23 = 1;
        }

        v38 = OUTLINED_FUNCTION_22();
        NextParam = iAP2MsgGetNextParam(v38, v39, NextParam);
        if (!NextParam)
        {
          v40 = v26;
          v41 = v25;
          goto LABEL_24;
        }
      }
    }

    v24 = 0;
    v23 = 0;
    v41 = 0.0;
    v40 = 0.0;
LABEL_24:
    v42 = *(v4 + 3928);
    v43 = *(v5 + 3936);
    if ((!v42 || v43 < 21) && OUTLINED_FUNCTION_21())
    {
      v59 = 134218240;
      v60 = v42;
      v61 = 1024;
      LODWORD(v62) = v43;
      OUTLINED_FUNCTION_26_2(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v59);
    }

    if (OUTLINED_FUNCTION_76())
    {
      v46 = *(a1 + 8);
      v59 = 138413314;
      v60 = v46;
      v61 = 2048;
      v62 = v40;
      v63 = 1024;
      v64 = v23 & 1;
      v65 = 2048;
      v66 = v41;
      v67 = 1024;
      v68 = v24 & 1;
      OUTLINED_FUNCTION_26_7();
      _os_log_impl(v47, v48, v49, v50, v51, 0x2Cu);
    }

    if (((v24 | v23) & 1) != 0 && OUTLINED_FUNCTION_31_11())
    {
      if (v23)
      {
        platform_voiceOver_setConfiguration(*(a1 + 8), 0, &v58 + 1);
      }

      v6 = 1;
      if (v24)
      {
        platform_voiceOver_setConfiguration(*(a1 + 8), 1, &v58);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t iap2_voiceOver_stopCursorInformationHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v2)
  {
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 21;
    }

    else
    {
      v3 = 1;
    }

    if (v3 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_2_3();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v4, v5, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v6, v7, v8, v9);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    }

    result = OUTLINED_FUNCTION_31_11();
    if (result)
    {
      *(result + 4) = 0;
      platform_voiceOver_stopCursorInformationUpdate(*(v0 + 8));
      return 1;
    }
  }

  return result;
}

uint64_t iap2_VoiceOver_startVoiceOverHandler(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4 < 21;
    }

    if (v8 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v9, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    }

    v5 = OUTLINED_FUNCTION_31_11();
    v20 = *(v3 + 3936);
    if ((!*(v2 + 3928) || v20 < 21) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_24_11();
      OUTLINED_FUNCTION_27_0();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    }

    if (v5)
    {
      v5 = 1;
      platform_VoiceOver_setEnabled(*(a1 + 8), 1);
    }
  }

  return v5;
}

uint64_t iap2_VoiceOver_stopVoiceOverHandler()
{
  result = OUTLINED_FUNCTION_20_11();
  if (v0 && v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = v3 < 21;
    }

    if (v7 && OUTLINED_FUNCTION_21())
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_26_0(&_mh_execute_header, v8, v9, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v10, v11, v12, v13);
    }

    if (OUTLINED_FUNCTION_76())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_24_1();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    }

    v19 = OUTLINED_FUNCTION_31_11();
    v20 = *(v2 + 3936);
    if ((!*(v1 + 3928) || v20 < 21) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v26, v27, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v28, v29, v30, v31);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_24_11();
      OUTLINED_FUNCTION_27_0();
      _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    }

    if (v19)
    {
      platform_VoiceOver_setEnabled(*(v0 + 8), 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void iap2_voiceOver_informationHandler()
{
  OUTLINED_FUNCTION_95_0();
  v1 = v0;
  v3 = v2;
  if ((!gLogObjects || gNumLogObjects < 36) && OUTLINED_FUNCTION_17())
  {
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v45, v46, v47, v48);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  Feature = iap2_feature_getFeature(v3, 0x15u);
  if ((!gLogObjects || gNumLogObjects < 21) && OUTLINED_FUNCTION_27())
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v51, v52, v53, v54);
  }

  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v10, v11, OS_LOG_TYPE_INFO, v12, v13, 0x16u);
  }

  if (v1 && Feature)
  {
    if ((!gLogObjects || gNumLogObjects < 36) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_1_2();
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v55, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v57, v58, v59, v60);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v35, v36, OS_LOG_TYPE_DEBUG, v37, v38, 0x12u);
    }

    if (!*v1)
    {
      if ((!gLogObjects || gNumLogObjects < 36) && OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_1_2();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, v64, v65, v66);
      }

      if (OUTLINED_FUNCTION_79())
      {
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_14_3();
        _os_log_debug_impl(v39, v40, OS_LOG_TYPE_DEBUG, v41, v42, 0x32u);
      }

      if (*Feature)
      {
        if ((!gLogObjects || gNumLogObjects < 36) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_1_2();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72);
        }

        if (OUTLINED_FUNCTION_82())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
        }

        v19 = iAP2MsgInit((v3 + 15), 22028, v3[24], 0xFFFF, 0, 0);
        v20 = *(v1 + 8);
        if (v20)
        {
          v22 = OUTLINED_FUNCTION_21_1();
          v21 = iAP2MsgAddU8Param(v22, v23, 0, v24) != 0;
          v20 = *(v1 + 8);
          if ((v20 & 2) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v21 = 0;
          if ((v20 & 2) == 0)
          {
LABEL_42:
            if ((v20 & 4) != 0 && (v28 = OUTLINED_FUNCTION_21_1(), iAP2MsgAddU8Param(v28, v29, 2, v30)) || v21)
            {
              if ((!gLogObjects || gNumLogObjects < 36) && OUTLINED_FUNCTION_27())
              {
                OUTLINED_FUNCTION_8_1();
                OUTLINED_FUNCTION_17_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78);
              }

              if (OUTLINED_FUNCTION_76_1())
              {
                iAP2MsgGetMsgID(v19);
                OUTLINED_FUNCTION_3();
                OUTLINED_FUNCTION_14_3();
                _os_log_impl(v31, v32, OS_LOG_TYPE_INFO, v33, v34, 0x12u);
              }

              iap2_sessionControl_sendOutgoingMessage(v3, v19);
              platform_voiceOver_deleteParams(v1);
            }

            goto LABEL_53;
          }
        }

        v25 = OUTLINED_FUNCTION_21_1();
        if (iAP2MsgAddU8Param(v25, v26, 1, v27))
        {
          ++v21;
        }

        v20 = *(v1 + 8);
        goto LABEL_42;
      }
    }
  }

LABEL_53:
  OUTLINED_FUNCTION_96();
}

uint64_t iap2_voiceOver_cursorInformationHandler(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_38_10();
  if ((!v2 || v3 < 36) && OUTLINED_FUNCTION_17())
  {
    *v146 = 134218240;
    *&v146[4] = v2;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v107, v108, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v109, v110, v111, v112, *v146);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
  }

  Feature = iap2_feature_getFeature(a1, 0x15u);
  v14 = *(v4 + 3928);
  v15 = *(v5 + 3936);
  if ((!v14 || v15 < 21) && OUTLINED_FUNCTION_27())
  {
    *v146 = 134218240;
    *&v146[4] = v14;
    OUTLINED_FUNCTION_3();
    *&v146[14] = v15;
    OUTLINED_FUNCTION_17_2(&_mh_execute_header, v113, v114, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v115, v116, v117, v118, *v146, *&v146[8]);
  }

  v16 = &off_1001C3000;
  if (OUTLINED_FUNCTION_76_1())
  {
    OUTLINED_FUNCTION_38();
    *&v146[12] = 2080;
    *&v146[14] = v17;
    OUTLINED_FUNCTION_14_3();
    _os_log_impl(v18, v19, OS_LOG_TYPE_INFO, v20, v21, 0x16u);
  }

  result = 0;
  if (a2 && Feature)
  {
    v23 = *(v5 + 3936);
    if ((!*(v4 + 3928) || v23 < 36) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7_30();
      *&v146[14] = v23;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v119, v120, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v121, v122, v123, v124);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_3();
      *&v146[14] = v73;
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v74, v75, OS_LOG_TYPE_DEBUG, v76, v77, 0x12u);
    }

    if (*a2 != 1)
    {
      return 0;
    }

    v24 = *(v5 + 3936);
    if ((!*(v4 + 3928) || v24 < 36) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7_30();
      *&v146[14] = v24;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v125, v126, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v127, v128, v129, v130);
    }

    if (OUTLINED_FUNCTION_79())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_3();
      *&v146[14] = v78;
      *&v146[18] = v79;
      *&v146[20] = v80;
      *&v146[24] = 2112;
      *&v146[26] = v81;
      v147 = 2112;
      v148 = v82;
      v149 = 2112;
      v150 = v83;
      v151 = 2048;
      v152 = v84;
      OUTLINED_FUNCTION_14_3();
      _os_log_debug_impl(v85, v86, OS_LOG_TYPE_DEBUG, v87, v88, 0x40u);
    }

    if (!*(Feature + 4))
    {
      return 0;
    }

    v25 = *(v5 + 3936);
    if ((!*(v4 + 3928) || v25 < 36) && OUTLINED_FUNCTION_17())
    {
      OUTLINED_FUNCTION_10_0();
      *&v146[14] = v25;
      OUTLINED_FUNCTION_21_2(&_mh_execute_header, v131, v132, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v133, v134, v135, v136);
    }

    if (OUTLINED_FUNCTION_82())
    {
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_27_0();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
    }

    v31 = malloc_type_malloc(0x400uLL, 0x2B1DEA11uLL);
    v32 = iAP2MsgInit((a1 + 15), 22032, a1[24], 0xFFFF, 0, 0);
    if (*(a2 + 8))
    {
      if (CFStringGetCStringPtr(*(a2 + 16), 0x8000100u) || (v34 = OUTLINED_FUNCTION_25_6(*(a2 + 16)), v31) && v34)
      {
        v35 = OUTLINED_FUNCTION_21_1();
        v33 = iAP2MsgAddStringParam(v35, v36, 0, v37) != 0;
LABEL_41:
        if ((*(a2 + 8) & 2) != 0)
        {
          if (CFStringGetCStringPtr(*(a2 + 24), 0x8000100u) || (v38 = OUTLINED_FUNCTION_25_6(*(a2 + 24)), v31) && v38)
          {
            v39 = OUTLINED_FUNCTION_21_1();
            if (iAP2MsgAddStringParam(v39, v40, 1, v41))
            {
              ++v33;
            }
          }

          else
          {
            v67 = *(v4 + 3928);
            v68 = *(v5 + 3936);
            if (v67 && v68 >= 36)
            {
              v69 = *(v67 + 280);
            }

            else
            {
              v69 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_8_1();
                *&v146[14] = v68;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v144, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v146);
              }
            }

            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v16 = &off_1001C3000;
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_32_7();
              OUTLINED_FUNCTION_26_10(&_mh_execute_header, v95, v96, "cursorInformationHandler %@, failed to get value from p->value (%@)", v97, v98, v99, v100);
            }

            else
            {
              v16 = &off_1001C3000;
            }
          }
        }

        if ((*(a2 + 8) & 4) != 0)
        {
          if (CFStringGetCStringPtr(*(a2 + 32), 0x8000100u) || (v42 = OUTLINED_FUNCTION_25_6(*(a2 + 32)), v31) && v42)
          {
            v43 = OUTLINED_FUNCTION_21_1();
            if (iAP2MsgAddStringParam(v43, v44, 2, v45))
            {
              ++v33;
            }
          }

          else
          {
            v70 = *(v4 + 3928);
            v71 = *(v5 + 3936);
            if (v70 && v71 >= 36)
            {
              v72 = *(v70 + 280);
            }

            else
            {
              v72 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                OUTLINED_FUNCTION_8_1();
                *&v146[14] = v71;
                OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v145, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v146);
              }
            }

            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v16 = &off_1001C3000;
              OUTLINED_FUNCTION_38();
              OUTLINED_FUNCTION_32_7();
              OUTLINED_FUNCTION_26_10(&_mh_execute_header, v101, v102, "cursorInformationHandler %@, failed to get hint from p->hint (%@)", v103, v104, v105, v106);
            }

            else
            {
              v16 = &off_1001C3000;
            }
          }
        }

        if ((*(a2 + 8) & 8) != 0)
        {
          *&v46 = 0xAAAAAAAAAAAAAAAALL;
          *(&v46 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v146 = v46;
          *&v146[16] = v46;
          v47 = *(a2 + 40);
          if (v47)
          {
            v48 = 0;
            v49 = 0;
            v50 = v146;
            do
            {
              if (v47)
              {
                *v50 = 0;
                v50[1] = v48;
                v50 += 2;
                v49 += 2;
              }

              v51 = v47 >= 2;
              v47 >>= 1;
              v51 = !v51 || v48++ >= 0xF;
            }

            while (!v51);
          }

          v52 = OUTLINED_FUNCTION_21_1();
          if (iAP2MsgAddDataParam(v52, v53, 3, v54, v55))
          {
            ++v33;
          }
        }

        if (v31)
        {
          free(v31);
        }

        if (v33)
        {
          v56 = *(v4 + 3928);
          v57 = *(v5 + 3936);
          if ((!v56 || v57 < 36) && OUTLINED_FUNCTION_27())
          {
            *v146 = 134218240;
            *&v146[4] = v56;
            OUTLINED_FUNCTION_3();
            *&v146[14] = v57;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v137, v138, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v139, v140, v141, v142);
          }

          if (OUTLINED_FUNCTION_76_1())
          {
            if (!a1 || (v58 = a1[1]) == 0)
            {
              v58 = 0;
            }

            iAP2MsgGetMsgID(v32);
            *v146 = *(v16 + 72);
            *&v146[4] = v58;
            OUTLINED_FUNCTION_3();
            *&v146[14] = v59;
            OUTLINED_FUNCTION_14_3();
            _os_log_impl(v60, v61, OS_LOG_TYPE_INFO, v62, v63, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(a1, v32);
          platform_voiceOver_deleteParams(a2);
          return 1;
        }

        return 0;
      }

      v64 = *(v4 + 3928);
      v65 = *(v5 + 3936);
      if (v64 && v65 >= 36)
      {
        v66 = *(v64 + 280);
      }

      else
      {
        v66 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          OUTLINED_FUNCTION_7_30();
          *&v146[14] = v65;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v143, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v146);
        }
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_32_7();
        OUTLINED_FUNCTION_26_10(&_mh_execute_header, v89, v90, "cursorInformationHandler %@, failed to get label from p->label (%@)", v91, v92, v93, v94);
      }
    }

    v33 = 0;
    goto LABEL_41;
  }

  return result;
}

void *_createFeature_25(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2 && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8);
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  if (result)
  {
    *result = 0;
  }

  return result;
}

uint64_t _destroyFeature_25(void **a1, uint64_t a2)
{
  v4 = gLogObjects;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 21;
  }

  else
  {
    v5 = 1;
  }

  if (v5 && OUTLINED_FUNCTION_17())
  {
    LODWORD(v18) = 134218240;
    HIDWORD(v18) = v4;
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v6, v7, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v8, v9, v10, v11, v18, HIDWORD(v4));
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v12, v13, v14, v15, v16, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      platform_voiceOver_accessoryDetached(*(a2 + 8));
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_16(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 21;
  }

  else
  {
    v2 = 1;
  }

  if (v2 && OUTLINED_FUNCTION_21())
  {
    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_26_0(&_mh_execute_header, v3, v4, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v5, v6, v7, v8);
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_24_1();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
  }

  v14 = OUTLINED_FUNCTION_31_11();
  if (v14 && iap2_voiceOver_isSupportedOnConnection(a1))
  {
    if (!a1 || (v15 = *(a1 + 8)) == 0)
    {
      v15 = 0;
    }

    platform_voiceOver_accessoryAttached(v15);
  }

  return v14 != 0;
}

void *iap2_endpoint_create(void *a1)
{
  if (!a1)
  {
    v13 = logObjectForModule_1(0x12u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "pProtocolEndpoint = NULL", v14, 2u);
    }

    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x1D0uLL, 0x10F0040CDC522BDuLL);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  *v2 = a1;
  v4 = a1[2];
  if (v4)
  {
    Copy = CFStringCreateCopy(kCFAllocatorDefault, v4);
  }

  else
  {
    Copy = 0;
  }

  v3[1] = Copy;
  v6 = a1[1];
  if (v6)
  {
    v7 = CFStringCreateCopy(kCFAllocatorDefault, v6);
  }

  else
  {
    v7 = 0;
  }

  v3[2] = v7;
  v8 = dispatch_queue_create("iAP2Endpoint", 0);
  v3[3] = v8;
  if (!v8)
  {
    free(v3);
    return 0;
  }

  dispatch_set_context(v8, v3);
  dispatch_set_finalizer_f(v3[3], _iap2_endpoint_dispatchQueueFinalizer);
  v3[4] = 0;
  *(v3 + 23) = 0;
  *(v3 + 96) = 0;
  v3[24] = 0;
  v3[54] = 0;
  v3[13] = 0;
  v3[14] = 0;
  *(v3 + 57) = CFAbsoluteTimeGetCurrent();
  if (!v3[4])
  {
    *(v3 + 10) = 2132705027;
    *(v3 + 24) = 0x7FFF;
    *(v3 + 50) = 0;
    *(v3 + 58) = 1;
    *(v3 + 54) = 16843266;
    *(v3 + 59) = 0x5554030000000000;
    *(v3 + 11) = -1;
    *(v3 + 26) = -1;
    BuffSize = iAP2LinkRunLoopGetBuffSize(0x7Fu);
    v10 = malloc_type_malloc(BuffSize, 0x17B1052BuLL);
    v3[4] = v10;
    v3[4] = iAP2LinkRunLoopCreateDevice(v3 + 40, v3, 1u, 0, 127, 0xFFFFLL, v10);
    v11 = malloc_type_calloc(1uLL, 0x1001FuLL, 0x1090040DAA7631AuLL);
    v3[14] = iAP2MsgParserInit(0xFFFF, v11, v3[4], 16448);
    acc_platform_packetLogging_logEvent(*v3, "ATTACH", "iAP2 accessory attached!");
    iAP2LinkRunLoopAttached(v3[4]);
  }

  if ((acc_endpoint_isWireless(a1) & 1) == 0 && acc_endpoint_getTransportType(a1) != 8)
  {
    iap2_power_registerForSleepNotification(v3);
  }

  return v3;
}

void iap2_endpoint_setInitialized(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, int a10, int a11, const __CFDictionary *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a1)
  {
    *(a1 + 440) = a2;
    v26 = *a1;
    if (v26)
    {
      if (a2)
      {
        acc_endpoint_setProperty();
      }

      else
      {
        acc_endpoint_removeProperty(v26, kCFACCProperties_Endpoint_iAP2_Initialized, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
      }
    }
  }
}

uint64_t iap2_endpoint_isInitialized(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 440);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t *iap2_endpoint_configUSBHost(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      if (*(v1 + 24) == 8)
      {
        v2 = *v1;
        if (*v1)
        {
          v3 = result[4];
          if (v3)
          {
            MaxSendPacketSize = iAP2LinkGetMaxSendPacketSize(*(v3 + 24));
          }

          else
          {
            MaxSendPacketSize = 0;
          }

          if (gLogObjects && gNumLogObjects >= 20)
          {
            v5 = *(gLogObjects + 152);
          }

          else
          {
            v5 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_15_1();
              _os_log_error_impl(v10, v11, OS_LOG_TYPE_ERROR, v12, v13, 0x12u);
            }
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_15_1();
            _os_log_impl(v6, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 0x18u);
          }

          return platform_usb_setNeedOutZlp(*v2, 1, MaxSendPacketSize);
        }
      }
    }
  }

  return result;
}

uint64_t iap2_endpoint_getMaxSendPayloadSize(uint64_t result)
{
  if (result)
  {
    if (*(result + 96) == 1 && (v1 = *(result + 32)) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        LOWORD(result) = iAP2LinkGetMaxPayloadSize(result, 0);
      }
    }

    else
    {
      LOWORD(result) = 0;
    }
  }

  return result;
}

uint64_t iap2_endpoint_getMaxSendPayloadSizeWithOverride(uint64_t a1)
{
  if (!a1 || *(a1 + 96) != 1)
  {
    goto LABEL_14;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return v2;
  }

  v3 = *(v2 + 24);
  if (!v3)
  {
LABEL_14:
    LOWORD(v2) = 0;
    return v2;
  }

  MaxPayloadSize = iAP2LinkGetMaxPayloadSize(v3, 0);
  v5 = acc_userDefaults_copyIntegerForKey(@"MaxOutboundiAP2PacketSize");
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    v6 = -1;
    goto LABEL_11;
  }

  v6 = v5;
  if (!v5)
  {
    v10 = xmmword_1001C4780;
    v11 = 33558528;
    v6 = -1;
    v12 = -1;
    v13 = 0;
    v14 = 0;
    if (*a1)
    {
      v7 = *(*a1 + 24);
      if (v7 <= 0x10)
      {
        v6 = *(&v10 + v7);
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v8 = iAP2LinkCurPckHdrSize(*(*(a1 + 32) + 24));
  LOWORD(v2) = v6 - (v8 + iAP2LinkCurPckChksumSize(*(*(a1 + 32) + 24)));
  if (MaxPayloadSize <= v2)
  {
    LOWORD(v2) = MaxPayloadSize;
  }

  return v2;
}

uint64_t iap2_endpoint_getLinkMaxCumAck(uint64_t result)
{
  if (result)
  {
    if (*(result + 96) == 1 && (v1 = *(result + 32)) != 0 && (v2 = *(v1 + 24)) != 0)
    {
      return *(v2 + 363);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void iap2_endpoint_destroy_cold_2(_BYTE *a1)
{
  v2 = logObjectForModule_1(0x13u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v3, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

  *a1 = 0;
}

void iap2_endpoint_sendOutgoingData_cold_1(_BYTE *a1)
{
  v2 = logObjectForModule_1(0x12u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_15_1();
    _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
  }

  *a1 = 0;
}

uint64_t iap2_blePairing_accessoryStateUpdateHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    v55 = v4;
    OUTLINED_FUNCTION_5_0();
    v56 = v5;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v45, v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_76())
  {
    *buf = 0;
    OUTLINED_FUNCTION_17_20(&_mh_execute_header, v6, v7, "iAP2BLEPairing AccessoryStateUpdate Handler", buf);
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v9 = OUTLINED_FUNCTION_26_1();
  FirstParam = iAP2MsgGetFirstParam(v9, v10);
  v53 = 0;
  if (!FirstParam)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
LABEL_24:
    v26 = gLogObjects;
    v27 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 42)
    {
      v28 = *(gLogObjects + 328);
    }

    else
    {
      v28 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        *buf = 134218240;
        v55 = v26;
        OUTLINED_FUNCTION_5_0();
        v56 = v27;
        OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      v29 = *(a1 + 8);
      *buf = 138413826;
      v55 = v29;
      OUTLINED_FUNCTION_5_0();
      v56 = v30;
      v57 = v31;
      v58 = v32;
      v59 = v31;
      v60 = v33;
      v61 = v31;
      v62 = v15;
      v63 = v31;
      v64 = v34;
      v65 = v31;
      v66 = v35;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "AccessoryStateUpdate: %@, btRadioOn(valid=%d) %d, pairingState(valid=%d) %d, pairingModeOn(valid=%d) %d", buf, 0x30u);
    }

    result = OUTLINED_FUNCTION_36_6();
    if (result)
    {
      v42 = result;
      buf[0] = 0;
      result = OUTLINED_FUNCTION_26_11(result, &gskMsgBLEPairingMainList, v36, v37, v38, v39, v40, v41, v50, v51);
      if (result)
      {
        if ((v14 | v16 | v17))
        {
          if (v16)
          {
            v43 = 2;
          }

          else
          {
            v43 = 0;
          }

          if (v17)
          {
            v44 = 4;
          }

          else
          {
            v44 = 0;
          }

          platform_blePairing_accessoryStateUpdate(*(a1 + 8), *v42, (v43 | v44) & 0xFFFFFFFE | v14 & 1, v13, v15, v17 & 1);
        }

        return 1;
      }
    }

    return result;
  }

  NextParam = FirstParam;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  while (1)
  {
    ParamID = iAP2MsgGetParamID(NextParam);
    v19 = ParamID;
    if (ParamID == 2)
    {
      IsDataVoid = iAP2MsgIsDataVoid(NextParam);
      v53 = !IsDataVoid;
      if (!IsDataVoid)
      {
        MsgID = iAP2MsgGetMsgID(a2);
        v49 = 2;
        goto LABEL_46;
      }

      v17 = 1;
LABEL_20:
      v23 = iAP2MsgGetMsgID(a2);
      printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v19, v23);
      goto LABEL_21;
    }

    if (ParamID == 1)
    {
      break;
    }

    if (ParamID)
    {
      goto LABEL_20;
    }

    DataAsBool = iAP2MsgGetDataAsBool(NextParam, &v53);
    if (v53)
    {
      v52 = iAP2MsgGetMsgID(a2);
      printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", 0, v52);
      return 0;
    }

    v13 = DataAsBool;
    v14 = 1;
LABEL_21:
    v24 = OUTLINED_FUNCTION_26_1();
    NextParam = iAP2MsgGetNextParam(v24, v25, NextParam);
    if (!NextParam)
    {
      goto LABEL_24;
    }
  }

  DataAsU8 = iAP2MsgGetDataAsU8(NextParam, &v53);
  if (!v53)
  {
    v15 = DataAsU8;
    v16 = 1;
    goto LABEL_21;
  }

  MsgID = iAP2MsgGetMsgID(a2);
  v49 = 1;
LABEL_46:
  printf("Param ID: %d parse error for Msg ID: 0x%04X - ignoring message", v49, MsgID);
  return 0;
}

uint64_t iap2_blePairing_accessoryPairingInfoHandler(uint64_t a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_21())
  {
    *buf = 134218240;
    v60 = v4;
    OUTLINED_FUNCTION_5_0();
    v61 = v5;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v49, v50, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
  }

  if (OUTLINED_FUNCTION_76())
  {
    *buf = 0;
    OUTLINED_FUNCTION_17_20(&_mh_execute_header, v6, v7, "iAP2BLEPairing AccessoryPairingInfo Handler", buf);
  }

  v8 = 0;
  if (a1 && a2)
  {
    v9 = OUTLINED_FUNCTION_48();
    FirstParam = iAP2MsgGetFirstParam(v9, v10);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (FirstParam)
    {
      DataAsU8 = 0;
      v14 = 0;
      while (1)
      {
        ParamID = iAP2MsgGetParamID(FirstParam);
        v16 = ParamID;
        if (ParamID == 1)
        {
          break;
        }

        if (ParamID)
        {
          goto LABEL_17;
        }

        v17 = OUTLINED_FUNCTION_32_8();
        DataAsU8 = iAP2MsgGetDataAsU8(v17, v18);
        v14 = 1;
LABEL_18:
        v25 = OUTLINED_FUNCTION_48();
        FirstParam = iAP2MsgGetNextParam(v25, v26, FirstParam);
        if (!FirstParam)
        {
          goto LABEL_21;
        }
      }

      v19 = OUTLINED_FUNCTION_32_8();
      DataAsData = iAP2MsgGetDataAsData(v19, v20);
      if (iAP2MsgGetParamValueLen(FirstParam))
      {
        ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
        v23 = CFDataCreate(kCFAllocatorDefault, DataAsData, ParamValueLen);
        CFArrayAppendValue(Mutable, v23);
        if (v23)
        {
          CFRelease(v23);
        }
      }

LABEL_17:
      MsgID = iAP2MsgGetMsgID(a2);
      printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v16, MsgID);
      goto LABEL_18;
    }

    v14 = 0;
    DataAsU8 = 0;
LABEL_21:
    v27 = gLogObjects;
    v28 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 42)
    {
      v29 = *(gLogObjects + 328);
    }

    else
    {
      v29 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v60 = v27;
        OUTLINED_FUNCTION_5_0();
        v61 = v28;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_10(v51, v52, v53, v54, v55);
      }
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 8);
      *buf = 138412290;
      v60 = v30;
      OUTLINED_FUNCTION_17_1();
      _os_log_impl(v31, v32, OS_LOG_TYPE_INFO, v33, v34, 0xCu);
    }

    v35 = OUTLINED_FUNCTION_36_6();
    if (!v35)
    {
      v8 = 0;
      if (!Mutable)
      {
        return v8;
      }

      goto LABEL_41;
    }

    v42 = v35;
    buf[0] = 0;
    v8 = OUTLINED_FUNCTION_26_11(v35, &gskMsgBLEPairingMainList, v36, v37, v38, v39, v40, v41, v57, v58);
    if ((v8 & v14) == 1)
    {
      v43 = gLogObjects;
      v44 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 42)
      {
        v45 = *(gLogObjects + 328);
      }

      else
      {
        v45 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v60 = v43;
          OUTLINED_FUNCTION_5_0();
          v61 = v44;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = *(a1 + 8);
        *buf = 138412802;
        v60 = v46;
        OUTLINED_FUNCTION_5_0();
        v61 = DataAsU8;
        v62 = 2112;
        v63 = Mutable;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "AccessoryPairingInformation: %@, call platform, pairType=%d pairInfoList=%@", buf, 0x1Cu);
      }

      Copy = CFArrayCreateCopy(kCFAllocatorDefault, Mutable);
      platform_blePairing_accessoryPairingInfo(*(a1 + 8), *v42, DataAsU8, Copy);
      if (Copy)
      {
        CFRelease(Copy);
      }

      v8 = 1;
    }

    if (Mutable)
    {
LABEL_41:
      CFRelease(Mutable);
    }
  }

  return v8;
}

uint64_t iap2_blePairing_accessoryPairingDataHandler(uint64_t a1, uint64_t a2)
{
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  v5 = gLogObjects;
  v6 = &audioProductCerts_endpoint_publish_onceToken;
  v7 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_21())
  {
    v52 = 134218240;
    v53 = v5;
    OUTLINED_FUNCTION_5_0();
    v54 = v7;
    OUTLINED_FUNCTION_26_2(&_mh_execute_header, v43, v44, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &v52);
  }

  if (OUTLINED_FUNCTION_76())
  {
    LOWORD(v52) = 0;
    OUTLINED_FUNCTION_17_20(&_mh_execute_header, v8, v9, "iAP2BLEPairing AccessoryPairingData Handler", &v52);
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v11 = OUTLINED_FUNCTION_48();
  FirstParam = iAP2MsgGetFirstParam(v11, v12);
  if (!FirstParam)
  {
    ParamValueLen = 0;
    DataAsData = 0;
    DataAsU8 = 0;
    goto LABEL_19;
  }

  DataAsU8 = 0;
  v15 = 0;
  DataAsData = 0;
  v17 = 0;
  ParamValueLen = 0;
  do
  {
    ParamID = iAP2MsgGetParamID(FirstParam);
    v20 = ParamID;
    if (ParamID == 1)
    {
      v23 = OUTLINED_FUNCTION_32_8();
      DataAsData = iAP2MsgGetDataAsData(v23, v24);
      ParamValueLen = iAP2MsgGetParamValueLen(FirstParam);
      v17 = 1;
    }

    else if (!ParamID)
    {
      v21 = OUTLINED_FUNCTION_32_8();
      DataAsU8 = iAP2MsgGetDataAsU8(v21, v22);
      v15 = 1;
      goto LABEL_16;
    }

    MsgID = iAP2MsgGetMsgID(a2);
    printf("Unknown Param ID: %d for Msg ID: 0x%04X - ignoring param", v20, MsgID);
LABEL_16:
    v26 = OUTLINED_FUNCTION_48();
    FirstParam = iAP2MsgGetNextParam(v26, v27, FirstParam);
  }

  while (FirstParam);
  LODWORD(FirstParam) = v15 & v17;
  v4 = &audioProductCerts_endpoint_publish_onceToken;
  v6 = &audioProductCerts_endpoint_publish_onceToken;
LABEL_19:
  v28 = v4[491];
  v29 = *(v6 + 984);
  if (v28 && v29 >= 42)
  {
    v30 = *(v28 + 328);
  }

  else
  {
    v30 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v52 = 134218240;
      v53 = v28;
      OUTLINED_FUNCTION_5_0();
      v54 = v29;
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_10(v45, v46, v47, v48, v49);
    }
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 8);
    v52 = 138412290;
    v53 = v31;
    OUTLINED_FUNCTION_17_1();
    _os_log_impl(v32, v33, OS_LOG_TYPE_INFO, v34, v35, 0xCu);
  }

  result = OUTLINED_FUNCTION_36_6();
  if (result)
  {
    v42 = result;
    LOBYTE(v52) = 0;
    result = OUTLINED_FUNCTION_26_11(result, &gskMsgBLEPairingMainList, v36, v37, v38, v39, v40, v41, v50, v51);
    if ((result & FirstParam) == 1)
    {
      platform_blePairing_accessoryPairingData(*(a1 + 8), *v42, DataAsU8, DataAsData, ParamValueLen);
      return 1;
    }
  }

  return result;
}

void iap2_blePairing_startBLEUpdatesHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_28_10();
  a22 = v28;
  a23 = v31;
  if (v29)
  {
    v32 = v30;
    v33 = v29;
    iap2_feature_getFeature(v29, 4u);
    OUTLINED_FUNCTION_11_19();
    if ((!v24 || v25 < 42) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      *(&a9 + 14) = v25;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_30();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    }

    if (v32 && v23 && !*v32)
    {
      v39 = *(v26 + 3928);
      v40 = *(v27 + 3936);
      if (v39)
      {
        v41 = v40 <= 41;
      }

      else
      {
        v41 = 1;
      }

      v42 = !v41;
      if (*(v32 + 16) > 1u)
      {
        if (v42)
        {
          v43 = *(v39 + 328);
        }

        else
        {
          v43 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            LODWORD(a9) = 134218240;
            *(&a9 + 4) = v39;
            OUTLINED_FUNCTION_3();
            *(&a9 + 14) = v40;
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v79, v80, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v81, v82, v83, v84);
          }
        }

        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_101_1(&_mh_execute_header, v43, v60, "startBLEUpdatesHandler %@, Invalid pairType:%d, updates not started", &a9);
        }
      }

      else
      {
        if (!v42 && OUTLINED_FUNCTION_27())
        {
          LODWORD(a9) = 134218240;
          *(&a9 + 4) = v39;
          OUTLINED_FUNCTION_3();
          *(&a9 + 14) = v40;
          OUTLINED_FUNCTION_17_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78);
        }

        if (OUTLINED_FUNCTION_76_1())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_30();
          _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
        }

        v49 = OUTLINED_FUNCTION_49((v33 + 15), 45312, v33[24]);
        *(v23 + 8) = 1;
        v50 = iAP2MsgAddU8Param(v49, 0, 0, *(v32 + 16));
        v51 = OUTLINED_FUNCTION_26_1();
        v54 = iAP2MsgAddU8Param(v51, v52, 1, v53);
        v55 = OUTLINED_FUNCTION_26_1();
        if (iAP2MsgAddU8Param(v55, v56, 2, v57) || v54 || v50)
        {
          v58 = *(v26 + 3928);
          v59 = *(v27 + 3936);
          if ((!v58 || v59 < 42) && OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_7();
            *(&a9 + 14) = v59;
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v85, v86, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v87, v88, v89, v90);
          }

          if (OUTLINED_FUNCTION_82())
          {
            iAP2MsgGetMsgID(v49);
            OUTLINED_FUNCTION_7();
            *(&a9 + 14) = v61;
            OUTLINED_FUNCTION_27_0();
            _os_log_impl(v62, v63, v64, v65, v66, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v33, v49);
          platform_blePairing_deleteParams(v32);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29_8();
}

void iap2_blePairing_deviceStateUpdateHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_28_10();
  a25 = v26;
  a26 = v29;
  if (v27)
  {
    v30 = v28;
    v31 = v27;
    Feature = iap2_feature_getFeature(v27, 4u);
    v33 = gNumLogObjects;
    if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      *(&a12 + 2) = v33;
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v61, v62, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v63, v64, v65, v66);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_30();
      _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    }

    if (v30 && Feature && *v30 == 1)
    {
      v39 = gNumLogObjects;
      if (gLogObjects)
      {
        v40 = gNumLogObjects <= 41;
      }

      else
      {
        v40 = 1;
      }

      v41 = !v40;
      if (*(Feature + 8) == 1)
      {
        if (!v41 && OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_8_1();
          *(&a12 + 2) = v39;
          OUTLINED_FUNCTION_17_2(&_mh_execute_header, v67, v68, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v69, v70, v71, v72);
        }

        if (OUTLINED_FUNCTION_76_1())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_30();
          _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
        }

        v48 = OUTLINED_FUNCTION_49((v31 + 15), 45313, v31[24]);
        v49 = iAP2MsgAddU8Param(v48, 0, 0, *(v30 + 16));
        v50 = OUTLINED_FUNCTION_26_1();
        v53 = iAP2MsgAddU8Param(v50, v51, 1, v52);
        v54 = OUTLINED_FUNCTION_26_1();
        if (iAP2MsgAddU8Param(v54, v55, 2, v56) || v53 || v49)
        {
          v57 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 42)
          {
            v58 = *(gLogObjects + 328);
          }

          else
          {
            v58 = &_os_log_default;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              OUTLINED_FUNCTION_8_1();
              *(&a12 + 2) = v57;
              OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v79, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", &a9);
            }
          }

          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            iAP2MsgGetMsgID(v48);
            OUTLINED_FUNCTION_8_1();
            *(&a12 + 2) = v60;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "deviceStateUpdateHandler %@ send message %xh", &a9, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v31, v48);
          if (*(v30 + 20))
          {
            platform_blePairing_finishedNegotiation(v31[1], *Feature);
          }

          platform_blePairing_deleteParams(v30);
          goto LABEL_46;
        }
      }

      else
      {
        if (v41)
        {
          v42 = *(gLogObjects + 328);
        }

        else
        {
          v42 = &_os_log_default;
          if (OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_8_1();
            *(&a12 + 2) = v39;
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v73, v74, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v75, v76, v77, v78);
          }
        }

        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_101_1(&_mh_execute_header, v42, v59, "deviceStateUpdateHandler %@, Updates not started bUpdateStarted:%d", &a9);
        }
      }

      if (*(v30 + 20))
      {
        platform_blePairing_finishedNegotiation(v31[1], *Feature);
      }
    }
  }

LABEL_46:
  OUTLINED_FUNCTION_29_8();
}

void iap2_blePairing_devicePairingDataHandler()
{
  OUTLINED_FUNCTION_28_10();
  if (v7)
  {
    OUTLINED_FUNCTION_27_10(v7);
    OUTLINED_FUNCTION_11_19();
    if (v3 && v4 >= 42)
    {
      v8 = *(v3 + 328);
    }

    else
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v38, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43);
      }
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_30();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }

    if (v1 && v2 && *v1 == 2)
    {
      OUTLINED_FUNCTION_34_6();
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v8 <= 41;
      }

      v17 = !v16;
      if (v14 == 1)
      {
        if (v17)
        {
          v18 = *(v3 + 328);
        }

        else
        {
          v18 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, v47, v48, v49);
          }
        }

        if (OUTLINED_FUNCTION_82())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
        }

        v25 = OUTLINED_FUNCTION_49((v0 + 15), 45316, v0[24]);
        v26 = OUTLINED_FUNCTION_35_6(v25);
        CFDataGetBytePtr(*(v1 + 24));
        Length = CFDataGetLength(*(v1 + 24));
        if (OUTLINED_FUNCTION_25_7(Length) | v26)
        {
          if ((!*(v5 + 3928) || *(v6 + 3936) < 42) && OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, v59, v60, v61);
          }

          if (OUTLINED_FUNCTION_76_1())
          {
            iAP2MsgGetMsgID(v18);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_30();
            _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v0, v18);
          platform_blePairing_deleteParams(v1);
        }
      }

      else
      {
        if (v17)
        {
          v19 = *(v3 + 328);
        }

        else
        {
          v19 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, v53, v54, v55);
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_101_1(v28, v29, v30, v31, v32);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29_8();
}

void iap2_blePairing_deviceUpdatePairingInfoHandler()
{
  OUTLINED_FUNCTION_28_10();
  if (v7)
  {
    OUTLINED_FUNCTION_27_10(v7);
    OUTLINED_FUNCTION_11_19();
    if (v3 && v4 >= 42)
    {
      v8 = *(v3 + 328);
    }

    else
    {
      v8 = &_os_log_default;
      if (OUTLINED_FUNCTION_27())
      {
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_17_2(&_mh_execute_header, v38, v39, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v40, v41, v42, v43);
      }
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_30();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
    }

    if (v1 && v2 && *v1 == 3)
    {
      OUTLINED_FUNCTION_34_6();
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = v8 <= 41;
      }

      v17 = !v16;
      if (v14 == 1)
      {
        if (v17)
        {
          v18 = *(v3 + 328);
        }

        else
        {
          v18 = &_os_log_default;
          if (OUTLINED_FUNCTION_17())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_21_2(&_mh_execute_header, v44, v45, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v46, v47, v48, v49);
          }
        }

        if (OUTLINED_FUNCTION_82())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
        }

        v25 = OUTLINED_FUNCTION_49((v0 + 15), 45318, v0[24]);
        v26 = OUTLINED_FUNCTION_35_6(v25);
        CFDataGetBytePtr(*(v1 + 24));
        Length = CFDataGetLength(*(v1 + 24));
        if (OUTLINED_FUNCTION_25_7(Length) | v26)
        {
          if ((!*(v5 + 3928) || *(v6 + 3936) < 42) && OUTLINED_FUNCTION_27())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_17_2(&_mh_execute_header, v56, v57, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v58, v59, v60, v61);
          }

          if (OUTLINED_FUNCTION_76_1())
          {
            iAP2MsgGetMsgID(v18);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_30();
            _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
          }

          iap2_sessionControl_sendOutgoingMessage(v0, v18);
          platform_blePairing_deleteParams(v1);
        }
      }

      else
      {
        if (v17)
        {
          v19 = *(v3 + 328);
        }

        else
        {
          v19 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v50, v51, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v52, v53, v54, v55);
          }
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_101_1(v28, v29, v30, v31, v32);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29_8();
}

void iap2_blePairing_stopBLEUpdatesHandler()
{
  OUTLINED_FUNCTION_28_10();
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_27_10(v2);
    if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_27())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17_2(&_mh_execute_header, v28, v29, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v30, v31, v32, v33);
    }

    if (OUTLINED_FUNCTION_76_1())
    {
      OUTLINED_FUNCTION_15_13();
      OUTLINED_FUNCTION_30();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }

    if (v1 && v3 && *v1 == 4)
    {
      if (gLogObjects)
      {
        v9 = gNumLogObjects <= 41;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
      if (*(v3 + 8) == 1)
      {
        if (!v10 && OUTLINED_FUNCTION_27())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_17_2(&_mh_execute_header, v40, v41, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v42, v43, v44, v45);
        }

        if (OUTLINED_FUNCTION_76_1())
        {
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_30();
          _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
        }

        v17 = OUTLINED_FUNCTION_49((v0 + 15), 45319, v0[24]);
        *(v3 + 8) = 0;
        if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_17())
        {
          OUTLINED_FUNCTION_3();
          OUTLINED_FUNCTION_21_2(&_mh_execute_header, v34, v35, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v36, v37, v38, v39);
        }

        if (OUTLINED_FUNCTION_82())
        {
          iAP2MsgGetMsgID(v17);
          OUTLINED_FUNCTION_8_1();
          OUTLINED_FUNCTION_27_0();
          _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
        }

        iap2_sessionControl_sendOutgoingMessage(v0, v17);
        platform_blePairing_deleteParams(v1);
      }

      else
      {
        if (v10)
        {
          v11 = *(gLogObjects + 328);
        }

        else
        {
          v11 = &_os_log_default;
          if (OUTLINED_FUNCTION_21())
          {
            OUTLINED_FUNCTION_3();
            OUTLINED_FUNCTION_26_0(&_mh_execute_header, v46, v47, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v48, v49, v50, v51);
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_4_17();
          OUTLINED_FUNCTION_15_1();
          OUTLINED_FUNCTION_101_1(v23, v24, v25, v26, v27);
        }
      }
    }
  }

  OUTLINED_FUNCTION_29_8();
}

_BYTE *_createFeature_26(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = HIWORD(gNumLogObjects);
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_21())
  {
    LODWORD(v15) = 134218240;
    HIDWORD(v15) = v2;
    OUTLINED_FUNCTION_3();
    LOWORD(v16) = v3;
    OUTLINED_FUNCTION_26_0(&_mh_execute_header, v9, v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14, v15, HIDWORD(v2), v16);
  }

  if (OUTLINED_FUNCTION_76())
  {
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v4, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
  }

  if (!a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040E5A1EACFuLL);
  if (result)
  {
    *result = 0;
    result[8] = 0;
  }

  return result;
}

uint64_t _destroyFeature_26(uint64_t **a1, uint64_t a2)
{
  v4 = gLogObjects;
  v5 = HIWORD(gNumLogObjects);
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_17())
  {
    LODWORD(v18) = 134218240;
    HIDWORD(v18) = v4;
    OUTLINED_FUNCTION_3();
    LOWORD(v19) = v5;
    OUTLINED_FUNCTION_21_2(&_mh_execute_header, v12, v13, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v14, v15, v16, v17, v18, HIDWORD(v4), v19);
  }

  if (OUTLINED_FUNCTION_82())
  {
    OUTLINED_FUNCTION_27_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
  }

  result = 0;
  if (a1 && a2)
  {
    if (*a1)
    {
      platform_blePairing_accessoryDetached(*(a2 + 8), **a1);
      platform_blePairing_decrementUserCount();
      if (*a1)
      {
        free(*a1);
        *a1 = 0;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL _startFeatureFromDevice_17(uint64_t a1)
{
  v2 = gLogObjects;
  v3 = gNumLogObjects;
  if ((!gLogObjects || gNumLogObjects < 42) && OUTLINED_FUNCTION_21())
  {
    *v34 = 134218240;
    *&v34[4] = v2;
    OUTLINED_FUNCTION_3();
    *&v34[14] = v3;
    OUTLINED_FUNCTION_26_0(&_mh_execute_header, v27, v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v29, v30, v31, v32, *v34, *&v34[16]);
  }

  if (OUTLINED_FUNCTION_76())
  {
    *v34 = 0;
    OUTLINED_FUNCTION_15_1();
    _os_log_impl(v4, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
  }

  v8 = OUTLINED_FUNCTION_36_6();
  if (v8)
  {
    v34[0] = 0;
    if (iap2_identification_checkRequiredMsgIDs(a1, &gskMsgBLEPairingMainList, 8, v34))
    {
      Feature = iap2_feature_getFeature(a1, 0);
      *v8 = CFDataCreateCopy(kCFAllocatorDefault, *(Feature + 24));
      v10 = iap2_feature_getFeature(a1, 1u);
      v11 = *(v10 + 8);
      AccInfoMutableDict = platform_blePairing_createAccInfoMutableDict(v11[2], v11[3], v11[1], v11[4], v11[5], v11[6]);
      v13 = _copySupportedPairTypesData(a1);
      platform_blePairing_incrementUserCount();
      v14 = gLogObjects;
      v15 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 42)
      {
        v16 = *(gLogObjects + 328);
      }

      else
      {
        v16 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *v34 = 134218240;
          *&v34[4] = v14;
          OUTLINED_FUNCTION_3();
          *&v34[14] = v15;
          OUTLINED_FUNCTION_10(&_mh_execute_header, &_os_log_default, v33, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v34);
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(*(v10 + 8) + 16);
        platform_systemInfo_isApplePencilGen1Supported();
        *v34 = 136315906;
        *&v34[4] = "_startFeatureFromDevice";
        OUTLINED_FUNCTION_3();
        *&v34[14] = 864;
        *&v34[18] = 2112;
        *&v34[20] = v17;
        v35 = v18;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s:%d model %@, isApplePencilGen1Supported %d", v34, 0x22u);
      }

      if (CFStringCompare(*(*(v10 + 8) + 16), @"A1603", 0) || platform_systemInfo_isApplePencilGen1Supported())
      {
        if (!a1 || (v20 = *(a1 + 8)) == 0)
        {
          v20 = 0;
        }

        platform_blePairing_accessoryAttached(v20, *v8, AccInfoMutableDict, v13);
      }

      else if (platform_systemInfo_isIPad())
      {
        AccessoryNotSupportedCF = acc_userNotifications_createAccessoryNotSupportedCF();
        Identifier = acc_userNotifications_createIdentifier(@"iap2_pairing_not_supported", *(a1 + 8));
        ACCUNSetIdentifier(AccessoryNotSupportedCF, Identifier);
        if (Identifier)
        {
          CFRelease(Identifier);
        }

        if (*a1)
        {
          if (**a1)
          {
            v24 = *(a1 + 16);
            if (v24)
            {
              ACCUNSetGroupIdentifier(AccessoryNotSupportedCF, v24);
            }
          }
        }

        v25 = OUTLINED_FUNCTION_48();
        ACCUNManagerPresentNotification(v25, v26);
        if (AccessoryNotSupportedCF)
        {
          CFRelease(AccessoryNotSupportedCF);
        }
      }

      if (AccInfoMutableDict)
      {
        CFRelease(AccInfoMutableDict);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  return v8 != 0;
}

void iAP2LinkIsValidSynParam_cold_2()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v0, v1, "Invalid SYN Params detected: linkVersion=%d", v2, v3, v4, v5);
}

void __iAP2LinkIsValidSynParamMaxOutstandingPackets_cold_2()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v0, v1, "Invalid SYN Params detected: maxOutstandingPackets=%d", v2, v3, v4, v5);
}

void __iAP2LinkIsValidSynParamMaxRetransmissions_cold_2()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v0, v1, "Invalid SYN Params detected: maxRetransmissions=%d", v2, v3, v4, v5);
}

void __iAP2LinkIsValidSynParamMaxCumAck_cold_2()
{
  OUTLINED_FUNCTION_11_20();
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_3_2(&_mh_execute_header, v0, v1, "Invalid SYN Params detected: maxCumAck=%d", v2, v3, v4, v5);
}

void iAP2LinkHandleSuspend_cold_2()
{
  OUTLINED_FUNCTION_9_25(__stack_chk_guard);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_6_37();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d suspend link=%hx(type=%d state=%d)", v1, 0x24u);
}

void iAP2LinkHandleResume_cold_2()
{
  OUTLINED_FUNCTION_9_25(__stack_chk_guard);
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_6_37();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s:%d resume link=%hx(type=%d state=%d)", v1, 0x24u);
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    _allocatedMem_2 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_22(a1, a2);
    free(v3);
    v4 = _allocatedMem_2 - v2;
    if (_allocatedMem_2 < v2)
    {
      v4 = 0;
    }

    _allocatedMem_2 = v4;
  }
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

uint64_t cccmac_one_shot_generate_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6, void *a7)
{
  OUTLINED_FUNCTION_1_42();
  OUTLINED_FUNCTION_0_23();
  v15 = &v19 - 2 * v14;
  bzero(v15, v16);
  if (!cccmac_init_internal(v7, v15, v11, v10) && !cccmac_update_internal(v15, v9, v8))
  {
    cccmac_final_generate_internal(v15, a6, a7);
  }

  v17 = OUTLINED_FUNCTION_2_44();
  cc_clear(v17, v15);
  return v10;
}

uint64_t ccecdh_compute_shared_secret_ws(uint64_t a1, uint64_t **a2, uint64_t **a3, unint64_t *a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v11 = *a2;
  v32 = *(a1 + 16);
  v12 = 3 * **a2;
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = *a4;
  *a4 = 0;
  v16 = ccn_write_uint_size_internal(*v11, v11 + 3);
  if (v15 < v16 || *a2 != *a3 || (v17 = v16, ccec_validate_point_and_projectify_ws(a1, v11, v14, a3 + 2)) || ccec_validate_scalar(v11, &a2[3 * **a2 + 2]) || (v18 = OUTLINED_FUNCTION_0_24(), ccec_mult_blinded_ws(v18, v19, v20, v21, v14, a6)))
  {
    v29 = 0xFFFFFFFFLL;
    v25 = v32;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_0_24();
    v25 = v32;
    if (!ccec_is_point_projective_ws(v22, v23, v24) || (v26 = OUTLINED_FUNCTION_0_24(), ccec_affinify_x_only_ws(v26, v27, v28, v13)))
    {
      v29 = 0xFFFFFFFFLL;
    }

    else
    {
      ccn_write_uint_padded_ct_internal(*v11, v13, v17, a5);
      v29 = 0;
      *a4 = v17;
    }
  }

  cc_clear(24 * *v11, v13);
  cc_clear(24 * *v11, v14);
  *(a1 + 16) = v25;
  return v29;
}

uint64_t ccec_generate_scalar_fips_retry_ws(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *), unint64_t *a4)
{
  v8 = a2 + 4;
  v9 = &a2[5 * *a2 + 4];
  v10 = cczp_n(v9);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = cczp_prime(v9);
  ccn_set(v10, v12, v13);
  *v12 &= ~1uLL;
  v14 = 100;
  while (1)
  {
    v15 = cczp_bitlen(&v8[5 * *a2]);
    result = ccn_random_bits_fips(v15, a4, a3);
    if (result)
    {
      break;
    }

    if ((ccn_cmp_internal(v10, a4, v12) & 0x80000000) != 0)
    {
      ccn_add1_ws(a1, v10, a4, a4, 1);
      result = 0;
      break;
    }

    if (!--v14)
    {
      result = 4294967281;
      break;
    }
  }

  *(a1 + 16) = v11;
  return result;
}

uint64_t ccec_sign_internal_inner_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8, uint64_t *a9, uint64_t (**a10)(void, uint64_t, uint64_t *))
{
  v15 = *a2;
  v16 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  v17 = (*(a1 + 24))(a1, 3 * v15);
  result = ccec_mult_blinded_ws(a1, a2, v17, a5, a6, a10);
  if (!result)
  {
    result = ccec_affinify_x_only_ws(a1, a2, v17, v17);
    if (!result)
    {
      v37 = v16;
      v19 = &a2[5 * v15];
      v20 = cczp_prime((v19 + 4));
      v21 = ccn_sub_ws(a1, v15, a8, v17, v20);
      v22 = cczp_prime((v19 + 4));
      ccn_cond_add(v15, v21, a8, a8, v22);
      if (ccn_n(v15, a8))
      {
        v23 = OUTLINED_FUNCTION_0_25();
        cczp_mul_ws(v23, v24);
        v25 = OUTLINED_FUNCTION_0_25();
        cczp_mul_ws(v25, v26);
        v27 = OUTLINED_FUNCTION_0_25();
        cczp_mul_ws(v27, v28);
        v29 = OUTLINED_FUNCTION_0_25();
        cczp_mul_ws(v29, v30);
        v31 = OUTLINED_FUNCTION_0_25();
        cczp_add_ws(v31, v32);
        v33 = OUTLINED_FUNCTION_0_25();
        result = cczp_inv_ws(v33, v34);
        if (!result)
        {
          v35 = OUTLINED_FUNCTION_0_25();
          cczp_mul_ws(v35, v36);
          if (ccn_n(v15, a9))
          {
            result = 0;
          }

          else
          {
            result = 4294967131;
          }
        }
      }

      else
      {
        result = 4294967131;
      }

      v16 = v37;
    }
  }

  *(a1 + 16) = v16;
  return result;
}

void ccec_sign_internal_ws_cold_1(uint64_t a1, uint64_t a2)
{
  v3 = cc_log_default(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_fault_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "Digest should be at least 128 bits long: argument digest_len = %lu", &v4, 0xCu);
  }
}

uint64_t mfi_session_keys_derive(uint64_t **a1, uint64_t a2, uint64_t a3, size_t a4, const void *a5)
{
  v10 = *a1;
  v11 = ccec_compressed_x962_export_pub_size(**a1);
  v12 = a4 + 2 * v11 + v10[28];
  if (v12 > 0x100)
  {
    return 4294967289;
  }

  v13 = v11;
  bzero(v27, 0x100uLL);
  v26[0] = 0;
  v26[1] = 0;
  v14 = ccaes_cbc_encrypt_mode();
  result = cccmac_one_shot_generate_internal(v14, v10[24], v10[23], a2, a3, 0x10uLL, v26);
  if (!result)
  {
    v16 = v10[28];
    __memcpy_chk();
    v17 = &v27[v16];
    inited = ccsigma_kex_init_ctx(a1);
    result = ccec_compressed_x962_export_pub(inited, v17);
    if (!result)
    {
      v19 = &v17[v13];
      v20 = ccsigma_kex_resp_ctx(a1);
      result = ccec_compressed_x962_export_pub(v20, v19);
      if (!result)
      {
        memcpy(&v19[v13], a5, a4);
        v21 = ccaes_cbc_encrypt_mode();
        v23 = v10[25];
        v22 = v10[26];
        v24 = v10[10];
        v25 = (v10[11])(a1);
        return ccnistkdf_ctr_cmac_internal(v21, 0x20u, 0x10uLL, v26, v22, v23, v12, v27, v24, 4uLL, v25);
      }
    }
  }

  return result;
}

uint64_t mfi_sigma_compute_mac_and_digest(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = (*(*(*a1 + 32) + 8) + *(*(*a1 + 32) + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  bzero(v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v10 = OUTLINED_FUNCTION_72_1();
  ccdigest_init_internal(v10, v11);
  v12 = OUTLINED_FUNCTION_72_1();
  ccdigest_update_internal(v12, v13, v14, v15);
  v16 = ccec_compressed_x962_export_pub_size(*v8);
  if (v16 > 0x21)
  {
    return 4294967291;
  }

  v17 = v16;
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  inited = ccsigma_kex_init_ctx(a1);
  ccec_compressed_x962_export_pub(inited, v34);
  v19 = OUTLINED_FUNCTION_72_1();
  ccdigest_update_internal(v19, v20, v17, v21);
  v22 = ccsigma_kex_resp_ctx(a1);
  ccec_compressed_x962_export_pub(v22, v34);
  v23 = OUTLINED_FUNCTION_72_1();
  ccdigest_update_internal(v23, v24, v17, v25);
  v33[0] = 0;
  v33[1] = 0;
  result = ccsigma_compute_mac_internal(a1, v8[a2 + 15], a3, a4, v33);
  if (!result)
  {
    v27 = OUTLINED_FUNCTION_72_1();
    ccdigest_update_internal(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_72_1();
    v32(v31);
    return 0;
  }

  return result;
}

uint64_t mfi_aead_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(*a1 + 144);
  if (v11 > 0x10)
  {
    return 4294967291;
  }

  v22[0] = 0;
  v22[1] = 0;
  v20 = ccaes_ccm_decrypt_mode();
  result = ccccm_one_shot_internal(v20, a2, a3, a4, a5, a8, a9, a10, a6, a7, v11, v22);
  if (!result)
  {
    if (cc_cmp_safe_internal(*(*a1 + 144), a11, v22))
    {
      return 4294967294;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t generate_2(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  memset(__s, 0, sizeof(__s));
  v24[0] = 0;
  v24[1] = 0;
  v9 = (ccctr_context_size(*(a1 + 56)) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v23 - v9;
  bzero(v23 - v9, v9);
  if (a2 > 0x10000)
  {
    goto LABEL_22;
  }

  if (*(a1 + 72) && *(a1 + 48) > 0x1000000000000uLL)
  {
    v17 = 4294967234;
    goto LABEL_21;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80))
  {
    if (a4 <= 0x10000)
    {
      v16 = derive(a1, __s, 1u, v11, v12, v13, v14, v15, a4);
      if (v16)
      {
        v17 = v16;
        goto LABEL_21;
      }

      goto LABEL_11;
    }

LABEL_22:
    v17 = 4294967233;
    goto LABEL_21;
  }

  if (*(a1 + 64) + 16 < a4)
  {
    goto LABEL_22;
  }

  cc_clear(0x30uLL, __s);
  __memcpy_chk();
LABEL_11:
  update(a1, __s);
LABEL_12:
  v23[1] = v23;
  inc_uint(a1 + 40, 8uLL);
  ccctr_init_internal(*(a1 + 56));
  for (i = -a2; a2; a2 -= v19)
  {
    if (a2 >= 0x80)
    {
      v19 = 128;
    }

    else
    {
      v19 = a2;
    }

    ccctr_update_internal(*(a1 + 56), v10, v19, &zeros, a3);
    a3 += v19;
  }

  ccctr_update_internal(*(a1 + 56), v10, i & 0xF, &zeros, v24);
  cc_clear(i & 0xF, v24);
  if (a4)
  {
    v20 = __s;
  }

  else
  {
    v20 = &zeros;
  }

  update_with_ctr(a1, v10, v20);
  v21 = ccctr_context_size(*(a1 + 56));
  cc_clear(v21, v10);
  v17 = 0;
  ++*(a1 + 48);
LABEL_21:
  cc_clear(0x30uLL, __s);
  return v17;
}

uint64_t reseed(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  memset(__s, 0, sizeof(__s));
  if (!a1[10])
  {
    v14 = a1[8] + 16;
    if (v14 < a4 || v14 != a2)
    {
      return 4294967233;
    }

    __memcpy_chk();
    for (; v9; --v9)
    {
      *(&v16 + v9 + 7) ^= *(a5 - 1 + v9);
    }

    goto LABEL_6;
  }

  v11 = 4294967233;
  if (a2 <= 0x10000 && a4 <= 0x10000 && *(a1[7] + 16) <= a2)
  {
    HIBYTE(v16) = HIBYTE(a5);
    v12 = derive(a1, __s, 2u, a4, a5, a6, a7, a8, a2);
    if (v12)
    {
      v11 = v12;
      goto LABEL_7;
    }

LABEL_6:
    update(a1, __s);
    v11 = 0;
    a1[6] = 1;
LABEL_7:
    cc_clear(a1[8] + 16, __s);
  }

  return v11;
}

uint64_t ccec_pairwise_consistency_check_ws(uint64_t a1, uint64_t **a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v5 = **a2;
  v6 = *(a1 + 16);
  (*(a1 + 24))(a1, v5);
  (*(a1 + 24))(a1, v5);
  ccsha256_di();
  v7 = OUTLINED_FUNCTION_0_26();
  result = ccec_sign_composite_msg_ws(v7, v8, v9, v10, v11, v12, v13, a3);
  if (!result)
  {
    v23[0] = 0;
    v23[1] = 0;
    ccsha256_di();
    v15 = OUTLINED_FUNCTION_0_26();
    result = ccec_verify_composite_msg_ws(v15, v16, v17, v18, v19, v20, v21, v22);
    if (!result)
    {
      cc_cmp_safe_internal(16, &CCEC_FAULT_CANARY, v23);
      result = 0;
    }
  }

  *(a1 + 16) = v6;
  return result;
}

uint64_t ccec_generate_key_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, void *), uint64_t **a4)
{
  v7 = *(a1 + 16);
  result = ccec_generate_key_internal_fips_ws(a1, a2, a3, a4);
  if (!result)
  {
    if (ccec_pairwise_consistency_check_ws(a1, a4, a3))
    {
      result = 4294967278;
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_x963_import_priv_ws(uint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t **a5)
{
  v5 = *a4;
  v6 = v5 > 7;
  v7 = (1 << v5) & 0xD0;
  if (v6 || v7 == 0)
  {
    return 4294967289;
  }

  v14 = a2 + 4;
  if (a3 < (cczp_bitlen(&a2[5 * *a2 + 4]) + 7) >> 3)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = cczp_bitlen(&v14[5 * *a2]);
  result = ccec_x963_import_pub_ws(a1, a2, a3 - ((v16 + 7) >> 3), a4, a5);
  if (!result)
  {
    v18 = *a2;
    v19 = &a5[3 * **a5];
    v20 = (cczp_bitlen(&v14[5 * *a2]) + 7) >> 3;
    v21 = cczp_bitlen(a2);
    result = ccn_read_uint_internal(v18, v19 + 2, v20, &a4[((v21 + 7) >> 2) | 1]);
  }

  *(a1 + 16) = v15;
  return result;
}

uint64_t drbg_reseed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[3];
  if (v10)
  {
    os_unfair_lock_assert_owner(v10);
  }

  result = ccdrbg_reseed(a1[4], a1[5], a2, a3, a4, a5);
  if (!result)
  {
    a1[10] = a1[8];
  }

  return result;
}

uint64_t ccec_make_pub_from_priv_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, uint64_t, uint64_t *), unint64_t *a4, unint64_t *a5, uint64_t **a6)
{
  *a6 = a2;
  v12 = *a2;
  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *a2);
  if (ccec_validate_scalar(a2, a4))
  {
    result = 4294967274;
    goto LABEL_10;
  }

  if (a5)
  {
    result = ccec_validate_point_and_projectify_ws(a1, a2, v14, a5);
    if (result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = ccec_projectify_ws(a1, a2);
    if (result)
    {
      goto LABEL_10;
    }
  }

  v16 = OUTLINED_FUNCTION_0_27();
  if (ccec_mult_blinded_ws(v16, v17, v18, a4, v14, a3))
  {
    result = 4294967280;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_0_27();
    if (ccec_is_point_projective_ws(v19, v20, v21))
    {
      v22 = OUTLINED_FUNCTION_0_27();
      if (ccec_affinify_ws(v22, v23))
      {
        result = 4294967279;
      }

      else
      {
        ccn_seti(v12, &a6[2 * **a6 + 2], 1);
        result = 0;
      }
    }

    else
    {
      result = 4294967277;
    }
  }

LABEL_10:
  *(a1 + 16) = v13;
  return result;
}

uint64_t ccsigma_import_signing_key(void *a1, unint64_t a2, unsigned __int8 *a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 48))(a1);
  v7 = 20 * **(*a1 + 24);
  v10[0] = cc_malloc_clear(160 * **(*a1 + 24));
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = ccec_x963_import_priv_ws(v10, *(*a1 + 24), a2, a3, v6);
    v11(v10);
    if (!v8)
    {
      a1[2] = ccsigma_sign_internal;
      a1[3] = a1;
    }
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t ccsigma_compute_mac_internal(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  if (*(*a1 + 64) <= a2)
  {
    return 4294967289;
  }

  v11 = 0;
  if (a2)
  {
    v12 = *(v6 + 72);
    v13 = a2;
    do
    {
      v14 = *v12++;
      v11 += v14;
      --v13;
    }

    while (v13);
  }

  v15 = *(*(v6 + 72) + 8 * a2);
  v16 = (*(v6 + 88))(a1);
  v17 = *(*a1 + 112);

  return v17(a1, v15, v16 + v11, a3, a4, a5);
}

uint64_t ccsigma_sign(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = **(*a1 + 32);
  memset(v17, 0, sizeof(v17));
  if (v11 > 0x40)
  {
    v13 = 4294967291;
  }

  else
  {
    v12 = (*(v10 + 136))(a1, *(a1 + 2), a3, a4, v17);
    if (!v12)
    {
      v15 = *(*a1 + 40);
      v12 = (a1[2])(a1[3], v11, v17, &v15, a2, a5);
    }

    v13 = v12;
  }

  cc_disable_dit_with_sb(&v16);
  return v13;
}

uint64_t ccsigma_seal(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = timingsafe_enable_if_supported();
  OUTLINED_FUNCTION_1_43();
  if (v18 <= a2)
  {
    goto LABEL_12;
  }

  v19 = a6;
  v20 = 0;
  if (a2)
  {
    v21 = *(v17 + 72);
    v22 = a2;
    do
    {
      v23 = *v21++;
      v20 += v23;
      --v22;
    }

    while (v22);
  }

  v24 = *(*(v17 + 72) + 8 * a2);
  v25 = OUTLINED_FUNCTION_0_28();
  v26(v25);
  OUTLINED_FUNCTION_1_43();
  if (v29 <= a3)
  {
LABEL_12:
    v40 = 4294967289;
  }

  else
  {
    v30 = a7;
    v42 = a5;
    v43 = a4;
    v31 = v27;
    v32 = 0;
    if (a3)
    {
      v33 = *(v28 + 72);
      v34 = a3;
      do
      {
        v35 = *v33++;
        v32 += v35;
        --v34;
      }

      while (v34);
    }

    v36 = *(*(v28 + 72) + 8 * a3);
    v37 = OUTLINED_FUNCTION_0_28();
    v39 = v38(v37);
    v40 = (*(*a1 + 152))(a1, v24, v31 + v20, v36, v39 + v32, v43, v42, v19, v30, a8, a9);
    if (!v40)
    {
      (*(*a1 + 168))(v36, v39 + v32);
    }
  }

  cc_disable_dit_with_sb(&v44);
  return v40;
}

uint64_t ccsigma_open(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = *(*a1 + 144);
  v44[0] = 0;
  v44[1] = 0;
  if (v18 > 0x10)
  {
    v38 = 4294967291;
  }

  else
  {
    if (*(v17 + 64) <= a2)
    {
      goto LABEL_13;
    }

    v19 = 0;
    if (a2)
    {
      v20 = *(v17 + 72);
      v21 = a2;
      do
      {
        v22 = *v20++;
        v19 += v22;
        --v21;
      }

      while (v21);
    }

    v23 = *(*(v17 + 72) + 8 * a2);
    v24 = OUTLINED_FUNCTION_0_28();
    v25(v24);
    OUTLINED_FUNCTION_1_43();
    if (v28 <= a3)
    {
LABEL_13:
      v38 = 4294967289;
    }

    else
    {
      v41 = a8;
      v42 = a4;
      v40 = a5;
      v29 = v26;
      v30 = 0;
      if (a3)
      {
        v31 = *(v27 + 72);
        v32 = a3;
        do
        {
          v33 = *v31++;
          v30 += v33;
          --v32;
        }

        while (v32);
      }

      v34 = *(*(v27 + 72) + 8 * a3);
      v35 = OUTLINED_FUNCTION_0_28();
      v37 = v36(v35);
      __memcpy_chk();
      v38 = (*(*a1 + 160))(a1, v23, v29 + v19, v34, v37 + v30, v42, v40, a6, a7, v41, v44);
      if (!v38)
      {
        (*(*a1 + 168))(v34, v37 + v30);
      }
    }
  }

  cc_disable_dit_with_sb(&v43);
  return v38;
}

void ccn_random_bits(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, unint64_t, uint64_t))
{
  v4 = (a1 + 63) >> 6;
  if (!(*a3)(a3, 8 * v4, a2))
  {
    OUTLINED_FUNCTION_0_29();
    *(a2 + 8 * v4 - 8) &= v5;
  }
}

uint64_t ccn_random_bits_fips(uint64_t a1, void *a2, uint64_t (**a3)(void, unint64_t, void *))
{
  v4 = (a1 + 63) >> 6;
  if ((a1 + 63) > 0x7F)
  {
    v5 = (*a3)(a3, 8 * v4, a2);
  }

  else
  {
    v9 = 0;
    __src = 0;
    v5 = (*a3)(a3, 12uLL, &__src);
    memcpy(a2, &__src, 8 * v4);
    cc_clear(8 * v4, &__src);
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_0_29();
    *(a2 + v4 - 1) &= v6;
  }

  return v5;
}

uint64_t ccrng_process_init(uint64_t a1, uint64_t (*a2)(void), uint64_t (**a3)(void, uint64_t, _OWORD *))
{
  ccrng_schedule_timer_init(a1 + 128, a2, 5000000000);
  ccrng_schedule_atomic_flag_init(a1 + 168);
  ccrng_schedule_tree_init(a1 + 96, a1 + 128, a1 + 168);
  result = cc_lock_init((a1 + 208));
  if (!result)
  {
    result = ccentropy_rng_init((a1 + 192), a3);
    if (!result)
    {
      v7 = ccaes_cbc_encrypt_mode();
      result = ccdrbg_df_bc_init_internal((a1 + 224), v7, 0x20uLL);
      if (!result)
      {
        v8 = ccaes_ctr_crypt_mode();
        v9 = xmmword_1001C4E40;
        DWORD2(v9) = 1;
        v10 = a1 + 224;
        ccdrbg_factory_nistctr((a1 + 768), &v8);
        memset(v12, 0, sizeof(v12));
        result = (*a3)(a3, 32, v12);
        if (!result)
        {
          a2();
          strcpy(v11, "corecrypto process rng");
          result = ccdrbg_init_internal(a1 + 768);
          if (!result)
          {
            result = ccrng_crypto_init((a1 + 8), (a1 + 192), (a1 + 96), (a1 + 208), (a1 + 768), (a1 + 824), 0x1000, 0x20, 0x100, (a1 + 2104));
            if (!result)
            {
              *a1 = generate_1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccec_verify_composite_digest_ws(uint64_t a1, unint64_t **a2, unint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  v22 = 0uLL;
  v14 = **a2;
  v21 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v14);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = ccec_signature_r_s_size(a2);
  if (ccn_read_uint_internal(v14, v15, v17, a5) || (v18 = ccec_signature_r_s_size(a2), ccn_read_uint_internal(v14, v16, v18, a6)))
  {
    result = 4294967289;
    goto LABEL_9;
  }

  result = ccec_verify_internal_ws(a1, a2, a3, a4, v15, v16, &v22);
  if (!a7)
  {
LABEL_9:
    v20 = v21;
    goto LABEL_10;
  }

  v20 = v21;
  if (!result)
  {
    *a7 = v22;
  }

LABEL_10:
  *(a1 + 16) = v20;
  return result;
}

uint64_t ccec_verify_composite_msg_ws(uint64_t a1, unint64_t **a2, unint64_t *a3, size_t a4, char *a5, unsigned __int8 *a6, unsigned __int8 *a7, void *a8)
{
  memset(v15, 0, sizeof(v15));
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_verify_composite_digest_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t cccmac_final_generate_internal(char *__s, size_t a2, void *a3)
{
  __src[0] = 0;
  __src[1] = 0;
  v4 = *(__s + 8);
  v5 = *(__s + 6);
  v6 = *(__s + 7) + v5;
  *(__s + 7) = v6;
  if (v5 > 0x10)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    if (v5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 == 0;
    }

    v9 = !v8;
    v10 = 0xFFFFFFFFLL;
    if (a2 - 17 >= 0xFFFFFFFFFFFFFFF0 && (v9 & 1) == 0)
    {
      v12 = __s + 32;
      v13 = __s;
      if (v5 != 16)
      {
        v13 = __s + 16;
        cc_clear(16 - v5, &v12[v5]);
        v12[v5] = 0x80;
      }

      for (i = 0; i != -16; --i)
      {
        __s[i + 47] ^= v13[i + 15];
      }

      cccbc_update_internal(v4, (__s + 72), &__s[*v4 + 72], 1, (__s + 32), __src);
      memcpy(a3, __src, a2);
      v10 = 0;
      v4 = *(__s + 8);
    }
  }

  cc_clear(v4[1] + *v4 + 80, __s);
  return v10;
}

uint64_t ccec_validate_scalar(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = cczp_prime(&a1[5 * *a1 + 4]);
  if ((ccn_cmp_internal(v4, a2, v5) & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (ccn_n(*a1, a2))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ccec_import_affine_point_ws(uint64_t a1, unint64_t *a2, int a3, uint64_t a4, unsigned __int8 *a5, unint64_t *a6)
{
  if (!a4)
  {
    return 4294967289;
  }

  v11 = *a2;
  if (a4 == 1 && !*a5)
  {
    return 4294967136;
  }

  switch(a3)
  {
    case 4:
      v12 = 4294967124;
      if (a4 != (cczp_bitlen(a2) + 7) >> 3)
      {
        return v12;
      }

LABEL_22:
      v15 = *(a1 + 16);
      v16 = (*(a1 + 24))(a1, v11);
      if (a3 == 4)
      {
        v17 = a5;
      }

      else
      {
        v17 = a5 + 1;
      }

      v18 = cczp_bitlen(a2);
      uint_public_value = ccn_read_uint_public_value(v11, a6, (v18 + 7) >> 3, v17);
      if (!uint_public_value)
      {
        if (ccn_cmp_public_value(v11, a6, a2 + 3) != -1)
        {
LABEL_38:
          *(a1 + 16) = v15;
          return v12;
        }

        if ((a3 - 3) > 1)
        {
          v22 = &a5[(cczp_bitlen(a2) + 7) >> 3];
          v23 = &a6[*a2];
          v24 = cczp_bitlen(a2);
          uint_public_value = ccn_read_uint_public_value(v11, v23, (v24 + 7) >> 3, v22 + 1);
          if (!uint_public_value)
          {
            if (a3 == 2)
            {
              OUTLINED_FUNCTION_0_30();
              if (!v14)
              {
                v12 = 4294967125;
                goto LABEL_38;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          uint_public_value = ccec_affine_point_from_x_ws(a1, a2, a6, a6);
          if (!uint_public_value)
          {
            cczp_negate(a2, v16, &a6[*a2]);
            v20 = &a6[*a2];
            if (a3 == 4)
            {
              v21 = ccn_cmp_public_value(v11, v16, v20) >> 31;
            }

            else
            {
              OUTLINED_FUNCTION_0_30();
              if (v14)
              {
                LOBYTE(v21) = 0;
              }

              else
              {
                LOBYTE(v21) = 1;
              }
            }

            ccn_mux(v11, v21, v20, v16, v20);
LABEL_37:
            v12 = 0;
            goto LABEL_38;
          }
        }
      }

      v12 = uint_public_value;
      goto LABEL_38;
    case 1:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_44();
      if (v14)
      {
        v12 = 4294967126;
        if (*a5 == 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        return 4294967126;
      }

      break;
    case 2:
      cczp_bitlen(a2);
      OUTLINED_FUNCTION_1_44();
      if (v14)
      {
        v13 = *a5 - 8;
        v12 = 4294967125;
LABEL_17:
        if (v13 < 0xFFFFFFFE)
        {
          return v12;
        }

        goto LABEL_22;
      }

      return 4294967125;
    case 3:
      if (ccec_compressed_x962_export_pub_size(a2) != a4)
      {
        return 4294967135;
      }

      v13 = *a5 - 4;
      v12 = 4294967135;
      goto LABEL_17;
    default:
      return 4294967289;
  }

  return v12;
}

uint64_t ccec_export_affine_point_public_value(uint64_t *a1, int a2, uint64_t *a3, unint64_t *a4, char *a5)
{
  v10 = ccec_export_affine_point_size(a1, a2);
  if (!v10)
  {
    return 4294967289;
  }

  if (*a4 < v10)
  {
    return 4294967133;
  }

  *a4 = v10;
  v11 = a2 - 1;
  if ((a2 - 1) <= 2)
  {
    *a5 = 0x20604u >> (8 * v11);
  }

  v12 = *a1;
  if (a2 == 4)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 + 1;
  }

  v14 = cczp_bitlen(a1);
  if ((ccn_write_uint_padded_ct_internal(v12, a3, (v14 + 7) >> 3, v13) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 <= 1)
  {
    v15 = &v13[(cczp_bitlen(a1) + 7) >> 3];
    v16 = &a3[*a1];
    v17 = cczp_bitlen(a1);
    if ((ccn_write_uint_padded_ct_internal(v12, v16, (v17 + 7) >> 3, v15) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0;
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    *a5 |= a3[*a1] & 1;
  }

  return result;
}

uint64_t ccec_sign_composite_ws(uint64_t a1, unint64_t **a2, unint64_t a3, unsigned __int8 *a4, char *a5, char *a6, uint64_t (**a7)(void, unint64_t, void *))
{
  v14 = **a2;
  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, v14);
  v17 = (*(a1 + 24))(a1, v14);
  v18 = ccec_sign_internal_ws(a1, a2, a3, a4, v16, v17, a7);
  if (!v18)
  {
    v19 = **a2;
    v20 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v19, v16, v20, a5);
    v21 = **a2;
    v22 = ccec_signature_r_s_size(a2);
    ccn_write_uint_padded_ct_internal(v21, v17, v22, a6);
  }

  *(a1 + 16) = v15;
  return v18;
}

uint64_t ccec_sign_composite_msg_ws(uint64_t a1, unint64_t **a2, unint64_t *a3, size_t a4, char *a5, char *a6, char *a7, uint64_t (**a8)(void, unint64_t, void *))
{
  memset(v15, 0, sizeof(v15));
  ccdigest_internal(a3, a4, a5, v15);
  return ccec_sign_composite_ws(a1, a2, *a3, v15, a6, a7, a8);
}

uint64_t ccdrbg_df_bc_derive_keys(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, void *a5)
{
  v10 = *(a1 + 8);
  v11 = (*v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v45 - v11;
  bzero(&v45 - v11, v11);
  v13 = (v10[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v45 - v13;
  v15 = 0;
  if (a2)
  {
    v16 = (a3 + 8);
    v17 = a2;
    do
    {
      v18 = *v16;
      v16 += 2;
      v15 += v18;
      --v17;
    }

    while (v17);
  }

  bzero(v14, v13);
  v54[0] = 0;
  v54[1] = 0;
  v55 = bswap32(v15);
  v56 = bswap32(a4);
  v53 = xmmword_1001C5140;
  memset(v52, 0, sizeof(v52));
  v19 = *(a1 + 16);
  __src[0] = 0;
  __src[1] = 0;
  v49 = v19 + 16;
  if (v19 != -16)
  {
    v20 = 0;
    v21 = 0;
    v45 = 16 - (v15 & 0xF ^ 8);
    v46 = a3 + 8;
    v47 = a2;
    v48 = v12;
    while (1)
    {
      OUTLINED_FUNCTION_1_45();
      LODWORD(v54[0]) = bswap32(v21);
      v50 = 0;
      OUTLINED_FUNCTION_0_31();
      updated = update_0(v22, v23, v14, v24, v25, 0x18uLL, v54);
      if (updated)
      {
        goto LABEL_29;
      }

      v27 = v46;
      v28 = v47;
      if (v47)
      {
        while (1)
        {
          OUTLINED_FUNCTION_0_31();
          v35 = update_0(v29, v30, v14, v31, v32, v33, v34);
          if (v35)
          {
            break;
          }

          v27 += 16;
          if (!--v28)
          {
            goto LABEL_10;
          }
        }

        v43 = v35;
        v12 = v48;
        goto LABEL_27;
      }

LABEL_10:
      OUTLINED_FUNCTION_0_31();
      updated = update_0(v36, v37, v14, v38, v39, v45, &v53);
      v12 = v48;
      if (updated)
      {
        goto LABEL_29;
      }

      ++v21;
      v20 += 16;
      if (v20 >= v49)
      {
        v10 = *(a1 + 8);
        break;
      }
    }
  }

  updated = cccbc_init_internal(v10);
  if (updated)
  {
LABEL_29:
    v43 = updated;
    goto LABEL_27;
  }

  if (a4)
  {
    v40 = v52 + *(a1 + 16);
    do
    {
      OUTLINED_FUNCTION_1_45();
      v41 = (a4 <= 0xF ? __src : a5);
      updated = cccbc_update_internal(*(a1 + 8), v12, v14, 1, v40, v41);
      if (updated)
      {
        goto LABEL_29;
      }

      if (a4 <= 0xF)
      {
        memcpy(a5, __src, a4);
      }

      if (a4 >= 0x10)
      {
        v42 = 16;
      }

      else
      {
        v42 = a4;
      }

      a5 = (a5 + v42);
      v40 = v41;
      a4 -= v42;
    }

    while (a4);
  }

  v43 = 0;
LABEL_27:
  cc_clear(**(a1 + 8), v12);
  OUTLINED_FUNCTION_1_45();
  return v43;
}

uint64_t update_0(int a1, int a2, int a3, uint64_t a4, void *a5, size_t __n, char *__src)
{
  v7 = __src;
  v8 = __n;
  v11 = 16 - *a5;
  if (*a5)
  {
    v12 = __n >= v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    memcpy((a4 + *a5), __src, 16 - *a5);
    v13 = OUTLINED_FUNCTION_2_45();
    result = cccbc_update_internal(v13, v14, v15, v16, a4, a4);
    if (result)
    {
      return result;
    }

    v8 -= v11;
    v7 += v11;
    *a5 = 0;
  }

  if (v8 < 0x10)
  {
LABEL_11:
    if (v8)
    {
      memcpy((a4 + *a5), v7, v8);
      result = 0;
      *a5 += v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v18 = OUTLINED_FUNCTION_2_45();
      result = cccbc_update_internal(v18, v19, v20, v21, v7, a4);
      if (result)
      {
        break;
      }

      v8 -= 16;
      v7 += 16;
      if (v8 <= 0xF)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t ccdrbg_df_bc_init_internal(void *a1, void *a2, unint64_t a3)
{
  v3 = 4294967291;
  if (a3 <= 0x20 && *a2 <= 0x200uLL)
  {
    if (a2[1] == 16)
    {
      *a1 = ccdrbg_df_bc_derive_keys;
      a1[1] = a2;
      a1[2] = a3;
      return cccbc_init_internal(a2);
    }

    else
    {
      return 4294967291;
    }
  }

  return v3;
}

uint64_t ccmode_ccm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  if (*(*a1 + 8) != 16)
  {
    return 0xFFFFFFFFLL;
  }

  *(a2 + 64) = 1;
  cc_clear(0x10uLL, (a2 + 48));
  *(a2 + 68) = 0;
  if ((a5 - 4) > 0xC)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if ((a3 - 14) >= 0xFFFFFFFFFFFFFFF9 && (a5 & 1) == 0)
  {
    v13 = (15 - a3) >= 8 || a7 >> (8 * (15 - a3)) == 0;
    v14 = !v13;
    if (!HIDWORD(a6) && !v14)
    {
      *(a2 + 16) = (4 * a5 - 8) | ((a6 != 0) << 6) | (14 - a3);
      *(a2 + 80) = a3;
      *(a2 + 88) = a5;
      v15 = (a2 + 17);
      __memcpy_chk();
      v16 = 0;
      do
      {
        *(a2 + v16 + 31) = a7;
        a7 >>= 8;
        --v16;
      }

      while (a3 - 15 != v16);
      v17 = OUTLINED_FUNCTION_0_32();
      v18(v17);
      *a2 = 14 - a3;
      __memcpy_chk();
      cc_clear(15 - a3, (a2 + 1 + a3));
      v19 = OUTLINED_FUNCTION_0_32();
      v20(v19);
      if (a6)
      {
        if (a6 >> 8 > 0xFE)
        {
          v23.i32[1] = -1;
          v24 = vmovn_s64(vshlq_u64(vdupq_n_s64(a6), xmmword_1001C5170));
          v23.i32[0] = *(a2 + 16);
          v25.i32[0] = 16646399;
          v25.i16[2] = v24.i16[0];
          v25.i16[3] = v24.i16[2];
          v26 = veor_s8(*&vmovl_u8(v23), v25);
          *(a2 + 16) = vuzp1_s8(v26, v26).u32[0];
          *(a2 + 20) ^= BYTE1(a6);
          v15 = (a2 + 21);
          v21 = 6;
        }

        else
        {
          *(a2 + 16) ^= BYTE1(a6);
          v21 = 2;
        }

        *v15 ^= a6;
        v22 = 4;
      }

      else
      {
        v21 = 0;
        v22 = 5;
      }

      result = 0;
      *(a2 + 72) = v21;
      *(a2 + 64) = v22;
    }
  }

  return result;
}

uint64_t ccmode_ccm_cbcmac(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 && *(a2 + 64) != 4)
  {
    return 4294967228;
  }

  ccmode_ccm_macdata(a1, a2, 0, a3, a4);
  return 0;
}

uint64_t ccmode_ccm_finalize(uint64_t a1, uint64_t a2, void *__dst)
{
  if (*(a2 + 64) == 1)
  {
    return 4294967228;
  }

  if (*(a2 + 72))
  {
    (*(*a1 + 24))(a1 + 8, 1, a2 + 16, a2 + 16);
  }

  v6 = *(*a1 + 8);
  if (v6)
  {
    v7 = -v6;
    v8 = (v6 + a2 + 31);
    do
    {
      *v8 ^= *(v8 - 16);
      --v8;
    }

    while (!__CFADD__(v7++, 1));
  }

  memcpy(__dst, (a2 + 32), *(a2 + 88));
  return 0;
}

uint64_t ccec_generate_key_internal_fips_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, unint64_t, uint64_t), uint64_t **a4)
{
  v8 = *a2;
  *a4 = a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = cczp_bitlen(a2);
  result = (*a3)(a3, ((v11 + 62) >> 3) & 0x1FFFFFFFFFFFFFF8, v10);
  if (!result)
  {
    v13 = OUTLINED_FUNCTION_0_33();
    result = ccec_generate_scalar_fips_retry_ws(v13, v14, v15, v16);
    if (!result)
    {
      v17 = OUTLINED_FUNCTION_0_33();
      result = ccec_make_pub_from_priv_ws(v17, v18, v19, v20, 0, a4);
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_validate_point_and_projectify_ws(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v8 = *a2;
  v9 = cczp_prime(a2);
  if (ccn_cmp_internal(v8, v9, a4) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *a2;
  v11 = &a4[*a2];
  v12 = cczp_prime(a2);
  if (ccn_cmp_internal(v10, v12, v11) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = ccec_projectify_ws(a1, a2);
  if (!result)
  {
    if (ccec_is_point_ws(a1, a2, a3))
    {
      return 0;
    }

    else
    {
      return 4294967289;
    }
  }

  return result;
}