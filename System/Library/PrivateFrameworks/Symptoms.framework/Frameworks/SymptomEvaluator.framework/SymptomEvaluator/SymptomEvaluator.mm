id pid_to_uuid(int a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1 = proc_pidinfo(a1, 17, 1uLL, v4, 56);
  v2 = 0;
  if (v1 == 56)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v4];
  }

  return v2;
}

void sub_23255EAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sf_synchronize(os_unfair_lock_s *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      os_unfair_lock_lock(a1);
      (*(a2 + 16))(a2);

      os_unfair_lock_unlock(a1);
    }

    else
    {
      sf_synchronize_cold_1();
    }
  }

  else
  {
    sf_synchronize_cold_2();
  }
}

unint64_t machAbsoluteTimeFromNanoseconds(uint64_t a1)
{
  if (getMachTimeBaseInfo_onceToken != -1)
  {
    timeIntervalFromMachAbsoluteTime_cold_1();
  }

  return HIDWORD(getMachTimeBaseInfo_machTimeInfoData) * a1 / getMachTimeBaseInfo_machTimeInfoData;
}

void *prefs_add_client(void *result, const char *a2, const void *a3)
{
  if (a2)
  {
    v3 = result;
    if (result)
    {
      if (a3)
      {
        result = malloc_type_calloc(1uLL, 0x38uLL, 0xD517850EuLL);
        if (result && (v6 = result, *result = 267312396, result[1] = v3, (result = strdup(a2)) != 0))
        {
          v6[3] = result;
          v6[2] = _Block_copy(a3);
          pthread_mutex_lock((v3 + 1));
          v6[6] = v3[16];
          v3[16] = v6;
          if (v3[10] || v3[11])
          {
            update_client(v6, v3);
          }

          return pthread_mutex_unlock((v3 + 1));
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t receive_disk_writes_violation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v38 = *MEMORY[0x277D85DE8];
  v17 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "";
    if ((a10 & 0x100000000) != 0)
    {
      v18 = "(FATAL) ";
    }

    *buf = 136316930;
    v23 = v18;
    v26 = 1024;
    v24 = 2080;
    v25 = a2;
    v27 = a3;
    v28 = 2080;
    v29 = a4;
    v30 = 2048;
    v31 = a6;
    v32 = 2048;
    v33 = a7 / 0x3B9ACA00;
    v34 = 2048;
    v35 = a8;
    v36 = 2048;
    v37 = a9 / 0x3B9ACA00;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "Received %slocal storage writes trigger:\n  %s[%d] (%s) dirtied %lld bytes over %lld sec, violating a disk writes limit of %lld bytes over %lld seconds.", buf, 0x4Eu);
  }

  v19 = +[ResourceNotifyHandler sharedInstance];
  LOBYTE(v21) = BYTE4(a10) & 1;
  [v19 resourceNotifyEvent:kResourceNotifyEventIOLocalWritesTrigger triggeredBy:a2 pid:a3 path:a4 endTime:a5 observedValue:a6 observationWindow:a7 limitValue:a8 limitWindow:a9 fatal:v21 fatalPort:?];

  return 0;
}

id pid_to_uuid_string(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  memset(buffer, 0, sizeof(buffer));
  v1 = proc_pidinfo(a1, 17, 1uLL, buffer, 56);
  v2 = 0;
  if (v1 == 56)
  {
    memset(v4, 0, 37);
    uuid_unparse_upper(buffer, v4);
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
  }

  return v2;
}

uint64_t resource_notify_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 827806) >= 0xFFFFFFFA && (v5 = receive_resource_notify_subsystem[5 * (v4 - 827800) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _Xdisk_writes_violation(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 1144)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
  }

  else
  {
    result = receive_disk_writes_violation(*(result + 12), result + 32, *(result + 68), result + 72, *(result + 1096), *(result + 1104), *(result + 1112), *(result + 1120), *(result + 1128), *(result + 1136));
    *(a2 + 32) = result;
  }

  return result;
}

void setApparentTime(double a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *&_currentTime;
  if (*&_currentTime >= a1)
  {
    v5 = apparentTimeLogHandle;
    if (*&_currentTime - a1 >= 0.1)
    {
      if (!os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v6 = v5;
      v7 = dateStringMillisecondsFromTimeInterval(v2 + 978307200.0);
      v8 = dateStringMillisecondsFromTimeInterval(a1 + 978307200.0);
      *buf = 134219010;
      v12 = v2;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = a1;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = v2 - a1;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v6 = v5;
      v7 = dateStringMillisecondsFromTimeInterval(v2 + 978307200.0);
      v8 = dateStringMillisecondsFromTimeInterval(a1 + 978307200.0);
      *buf = 134219010;
      v12 = v2;
      v13 = 2112;
      v14 = v7;
      v15 = 2048;
      v16 = a1;
      v17 = 2112;
      v18 = v8;
      v19 = 2048;
      v20 = v2 - a1;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_23255B000, v9, v10, "setThroguhputAdviserCurrentTime: Attempt to replace current %.6f %@ with %.6f %@ delta %.6f", buf, 0x34u);
  }

  else
  {
    os_unfair_lock_lock(&_currentTimeLock);
    v3 = *&_currentTime;
    if (*&_currentTime < a1)
    {
      _currentTime = *&a1;
    }

    os_unfair_lock_unlock(&_currentTimeLock);
    if (v3 < a1 && activeTraceTargets != 0)
    {
      traceEntry(1, "setApparentTime", "%t", *&a1);
    }
  }
}

id timeStringMillisecondsFromTimeInterval(long double a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *&__src[7] = 0;
  *__src = 0;
  __y = 0.0;
  v10 = a1;
  v1 = modf(a1, &__y);
  v2 = localtime(&v10);
  if (strftime(__src, 0xFuLL, "%H:%M:%S %z", v2))
  {
    v8 = 0;
    *__str = 0;
    if (snprintf(__str, 6uLL, "%.3f", v1))
    {
      *__dst = 0;
      memset(v12, 0, 11);
      v3 = stpncpy(__dst, __src, 8uLL);
      v4 = stpncpy(v3, &__str[1], 4uLL);
      stpncpy(v4, &__src[8], 6uLL);
      BYTE2(v12[1]) = 0;
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:__dst encoding:1];
      goto LABEL_4;
    }

    timeStringMillisecondsFromTimeInterval_cold_1();
  }

  else
  {
    timeStringMillisecondsFromTimeInterval_cold_2();
  }

  v5 = *__dst;
LABEL_4:

  return v5;
}

void sub_232560BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _batteryCallback(void *a1, uint64_t a2, int a3)
{
  if (a3 == -536723200)
  {
    v5 = objc_autoreleasePoolPush();
    [a1 handleBatteryNotification];

    objc_autoreleasePoolPop(v5);
  }
}

const char *flowPropertyScaleString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "unknown";
  }

  else
  {
    return off_27898E398[a1];
  }
}

void __33__wifiFlowObserver__noteNewUsage__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 764) == *(a1 + 40) && *(v1 + 776) == 1)
  {
    if (*(v1 + 136) == *(v1 + 148) && *(v1 + 344) == *(v1 + 352) && *(v1 + 504) == *(v1 + 516) && *(v1 + 712) == *(v1 + 720))
    {
      v3 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17[0]) = 0;
        v4 = "WiFi Observer: After dampening, nothing to do";
        v5 = v3;
        v6 = 2;
LABEL_11:
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, v4, v17, v6);
      }
    }

    else
    {
      [*(v1 + 768) sendNotificationWithId:11];
      v7 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = *(v8 + 136);
        v10 = *(v8 + 504);
        v11 = *(v8 + 712);
        v12 = *(v8 + 148);
        v13 = *(v8 + 344);
        v14 = *(v8 + 352);
        v15 = *(v8 + 516);
        v16 = *(v8 + 720);
        v17[0] = 67110912;
        v17[1] = v9;
        v18 = 2048;
        v19 = v13;
        v20 = 1024;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        v24 = 1024;
        v25 = v12;
        v26 = 2048;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        v30 = 2048;
        v31 = v16;
        v4 = "WiFi Observer: Sent notification after dampening when new flags fg 0x%x 0x%llx bg 0x%x 0x%llx  initial values 0x%x 0x%llx 0x%x 0x%llx";
        v5 = v7;
        v6 = 66;
        goto LABEL_11;
      }
    }

    *(*(a1 + 32) + 760) = 0;
  }
}

void dispatch_with_apparent_delay(void *a1, void *a2, double a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = apparentTimeLogHandle;
  if (os_log_type_enabled(apparentTimeLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "dispatch_with_apparent_delay with delay %.3f", &v9, 0xCu);
  }

  v8 = +[ApparentTimeHandler sharedInstance];
  [v8 dispatchAfterDelay:v5 queue:v6 block:a3];
}

void *cellThroughputAdviceCauseFlagsToString(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"LargeTransfer:"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:@"AVFlows:"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 appendString:@"SustainedHighThroughput:"];
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 appendString:@"CoreMediaAssetDownload:"];
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 appendString:@"ScreenOnDefault:"];
  if ((a1 & 0x20) == 0)
  {
LABEL_7:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 appendString:@"ScreenDarkDefault:"];
  if ((a1 & 0x40) == 0)
  {
LABEL_8:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 appendString:@"ScreenLockedDefault:"];
  if ((a1 & 0x80) == 0)
  {
LABEL_9:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 appendString:@"AdminOverride:"];
  if ((a1 & 0x1000) == 0)
  {
LABEL_10:
    if ((a1 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 appendString:@"InitiatingApp:"];
  if ((a1 & 0x8000) == 0)
  {
LABEL_11:
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 appendString:@"IgnoredThresholdTransferSize:"];
  if ((a1 & 0x10000) == 0)
  {
LABEL_12:
    if ((a1 & 0x20000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 appendString:@"UpperThresholdTransferSize:"];
  if ((a1 & 0x20000) == 0)
  {
LABEL_13:
    if ((a1 & 0x40000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 appendString:@"MultipleLowerThresholdTransferSizes:"];
  if ((a1 & 0x40000) == 0)
  {
LABEL_14:
    if ((a1 & 0x80000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 appendString:@"LowerThresholdTransferSize:"];
  if ((a1 & 0x80000) == 0)
  {
LABEL_15:
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 appendString:@"ContinuedTransferSizeThreshold:"];
  if ((a1 & 0x100000) == 0)
  {
LABEL_16:
    if ((a1 & 0x200000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 appendString:@"ContinuedTransferSizeThresholdOnLTE:"];
  if ((a1 & 0x200000) == 0)
  {
LABEL_17:
    if ((a1 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 appendString:@"ContinuedTransferSizeThresholdOnSub6:"];
  if ((a1 & 0x400000) == 0)
  {
LABEL_18:
    if ((a1 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 appendString:@"ContinuedTransferSizeThresholdOnMmWave:"];
  if ((a1 & 0x1000000) == 0)
  {
LABEL_19:
    if ((a1 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 appendString:@"LockedOnTransferSizeHysteresis:"];
  if ((a1 & 0x2000000) == 0)
  {
LABEL_20:
    if ((a1 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 appendString:@"LockedOnTransferSizeHysteresisOnLTE:"];
  if ((a1 & 0x4000000) == 0)
  {
LABEL_21:
    if ((a1 & 0x8000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 appendString:@"LockedOnTransferSizeHysteresisOnSub6:"];
  if ((a1 & 0x8000000) == 0)
  {
LABEL_22:
    if ((a1 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 appendString:@"LockedOnTransferSizeHysteresisOnMmwave:"];
  if ((a1 & 0x10000000) == 0)
  {
LABEL_23:
    if ((a1 & 0x20000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 appendString:@"ThresholdTransferSizeFinalHysteresis:"];
  if ((a1 & 0x20000000) == 0)
  {
LABEL_24:
    if ((a1 & 0x40000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 appendString:@"ThresholdTransferSizeFinalHysteresisLTE:"];
  if ((a1 & 0x40000000) == 0)
  {
LABEL_25:
    if ((a1 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 appendString:@"ThresholdTransferSizeFinalHysteresisSub6:"];
  if ((a1 & 0x80000000) == 0)
  {
LABEL_26:
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 appendString:@"ThresholdTransferSizeFinalHysteresisMmWave:"];
  if ((a1 & 0x100000000) == 0)
  {
LABEL_27:
    if ((a1 & 0x400000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 appendString:@"SustainedHighRxThroughputDetected:"];
  if ((a1 & 0x400000000) == 0)
  {
LABEL_28:
    if ((a1 & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 appendString:@"SustainedHighTxThroughputDetected:"];
  if ((a1 & 0x800000000) == 0)
  {
LABEL_29:
    if ((a1 & 0x1000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 appendString:@"SustainedHighRxPlusTxThroughputDetected:"];
  if ((a1 & 0x1000000000) == 0)
  {
LABEL_30:
    if ((a1 & 0x200000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 appendString:@"SustainedHighCombinedThroughputDetected:"];
  if ((a1 & 0x200000000) == 0)
  {
LABEL_31:
    if ((a1 & 0x8000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 appendString:@"SustainedHighThroughputHysteresis:"];
  if ((a1 & 0x8000000000) == 0)
  {
LABEL_32:
    if ((a1 & 0x10000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 appendString:@"AssetDownloadNoted:"];
  if ((a1 & 0x10000000000) == 0)
  {
LABEL_33:
    if ((a1 & 0x20000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 appendString:@"AssetDownloadActive:"];
  if ((a1 & 0x20000000000) == 0)
  {
LABEL_34:
    if ((a1 & 0x40000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 appendString:@"AssetDownloadActiveLTE:"];
  if ((a1 & 0x40000000000) == 0)
  {
LABEL_35:
    if ((a1 & 0x80000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 appendString:@"AssetDownloadActiveSub6:"];
  if ((a1 & 0x80000000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x100000000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 appendString:@"AssetDownloadActiveMmWave:"];
  if ((a1 & 0x100000000000) == 0)
  {
LABEL_37:
    if ((a1 & 0x200000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 appendString:@"AssetDownloadHysteresis:"];
  if ((a1 & 0x200000000000) == 0)
  {
LABEL_38:
    if ((a1 & 0x400000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 appendString:@"AssetDownloadHysteresisLTE:"];
  if ((a1 & 0x400000000000) == 0)
  {
LABEL_39:
    if ((a1 & 0x800000000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  [v3 appendString:@"AssetDownloadHysteresisSub6:"];
  if ((a1 & 0x800000000000) == 0)
  {
LABEL_40:
    if ((a1 & 0x2000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  [v3 appendString:@"AssetDownloadHysteresisMmWave:"];
  if ((a1 & 0x2000000000) == 0)
  {
LABEL_41:
    if ((a1 & 0x4000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  [v3 appendString:@"AssetDownloadFailedThresholdTest:"];
  if ((a1 & 0x4000000000) == 0)
  {
LABEL_42:
    if ((a1 & 0x1000000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  [v3 appendString:@"AssetDownloadPaused:"];
  if ((a1 & 0x1000000000000) == 0)
  {
LABEL_43:
    if ((a1 & 0x2000000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  [v3 appendString:@"OverThresholdAVFlowsHighConfidence:"];
  if ((a1 & 0x2000000000000) == 0)
  {
LABEL_44:
    if ((a1 & 0x4000000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  [v3 appendString:@"OverThresholdAVFlowsLowConfidence:"];
  if ((a1 & 0x4000000000000) == 0)
  {
LABEL_45:
    if ((a1 & 0x8000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_92:
  [v3 appendString:@"UnderThresholdAVFlowsHighConfidence:"];
  if ((a1 & 0x8000000000000) != 0)
  {
LABEL_46:
    [v3 appendString:@"UnderThresholdAVFlowsLowConfidence:"];
  }

LABEL_47:
  if ([v3 length])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  }

  else
  {
    [v3 appendString:@"default"];
  }

  v4 = v3;

  return v3;
}

double mbpsThroughput(unint64_t a1, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    return a1 / (a2 * 125000.0);
  }

  return v2;
}

uint64_t boottime_secs(uint64_t a1, uint64_t a2)
{
  if (boottime_secs_pred != -1)
  {
    boottime_secs_cold_1();
  }

  return boottime_secs_boottime;
}

id dateStringMillisecondsFromTimeInterval(long double a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *__src = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v11 = a1;
  if (a1 <= 0)
  {
    v1 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_INFO, "INFO: dateStringMillisecondsFromTimeInterval does not support reporting millisecond accuracy for the current time", buf, 2u);
    }

    time(&v11);
    a1 = 0.0;
  }

  __y = 0.0;
  v2 = modf(a1, &__y);
  v3 = localtime(&v11);
  if (strftime(__src, 0x1AuLL, "%Y-%m-%d %H:%M:%S %z", v3))
  {
    v9 = 0;
    *__str = 0;
    if (snprintf(__str, 6uLL, "%.3f", v2))
    {
      *buf = 0;
      v13 = 0;
      memset(v14, 0, sizeof(v14));
      v4 = stpncpy(buf, __src, 0x13uLL);
      v5 = stpncpy(v4, &__str[1], 4uLL);
      stpncpy(v5, &v17 + 3, 6uLL);
      HIBYTE(v14[6]) = 0;
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:buf encoding:1];
      goto LABEL_8;
    }

    dateStringMillisecondsFromTimeInterval_cold_1();
  }

  else
  {
    dateStringMillisecondsFromTimeInterval_cold_2();
  }

  v6 = *buf;
LABEL_8:

  return v6;
}

void config_callback(const __SCDynamicStore *a1, void *a2)
{
  v115 = *MEMORY[0x277D85DE8];
  v76 = [MEMORY[0x277CBEB38] dictionary];
  v3 = _SCDynamicStoreCaller;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = a2;
  v4 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
  v6 = MEMORY[0x277CE16B0];
  v7 = "atchItemsCommand";
  v8 = "atchItemsCommand";
  v83 = v4;
  v85 = v3;
  v9 = 0;
  if (!v4)
  {
    goto LABEL_33;
  }

  v10 = 0;
  v11 = 0;
  entity = *v105;
  v80 = *MEMORY[0x277CE1678];
  allocator = *MEMORY[0x277CE1688];
  v72 = *MEMORY[0x277CE16B0];
  v73 = *MEMORY[0x277CE1690];
  *&v5 = 138412546;
  v70 = v5;
  do
  {
    v12 = 0;
    do
    {
      if (*v105 != entity)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v104 + 1) + 8 * v12);
      v14 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v110 = v13;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "SCDynamicStore config_callback: k: %@", buf, 0xCu);
      }

      v15 = [(__CFString *)v13 rangeOfString:v80, v70]!= 0x7FFFFFFFFFFFFFFFLL;
      v16 = [(__CFString *)v13 isEqualToString:@"com.apple.MobileInternetSharing"];
      if ([(__CFString *)v13 rangeOfString:allocator]!= 0x7FFFFFFFFFFFFFFFLL || [(__CFString *)v13 rangeOfString:v73]!= 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v3)
        {
          v17 = [v3 queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __config_callback_block_invoke;
          block[3] = &unk_27898AFE0;
          block[4] = v13;
          block[5] = a1;
          dispatch_async(v17, block);
        }

        else
        {
          v18 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v110 = v13;
            _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "NAE is nil, not processing IP configuration callback for key %@", buf, 0xCu);
          }
        }
      }

      v19 = [(__CFString *)v13 componentsSeparatedByString:@"/"];
      if ([v19 count] != 5)
      {
        goto LABEL_19;
      }

      v20 = [v19 objectAtIndex:4];
      v21 = [v20 isEqualToString:v72];

      if (!v21)
      {
        goto LABEL_18;
      }

      v22 = [v19 objectAtIndex:3];

      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceName:v22];
        v24 = [MEMORY[0x277D6B3E0] nwFunctionalInterfaceTypeForNWInterface:v23];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v24];
        [v76 setObject:v25 forKeyedSubscript:v22];

        v9 = v22;
LABEL_18:
        v3 = v85;
LABEL_19:
        v26 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v70;
          v110 = v13;
          v111 = 2112;
          *v112 = v76;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEFAULT, "SCDynamicStore key: %@, interfaces: %@", buf, 0x16u);
        }

        goto LABEL_21;
      }

      v27 = netepochsLogHandle;
      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v110 = v13;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "SCDynamicStore key (%@) is corrupted", buf, 0xCu);
      }

      v9 = 0;
      v3 = v85;
LABEL_21:
      v10 |= v15;
      v11 |= v16;

      ++v12;
    }

    while (v83 != v12);
    v28 = [obj countByEnumeratingWithState:&v104 objects:v114 count:16];
    v83 = v28;
  }

  while (v28);
  if (v11)
  {
    resync_tether_state(a1);
  }

  v8 = "ListWatchItemsCommand" + 5;
  v7 = "ListWatchItemsCommand" + 5;
  if ((v10 & 1) != 0 && !config_callback_pendingConfigChange++)
  {
    v30 = dispatch_time(0, 20000000000);
    v31 = dispatch_get_global_queue(0, 0);
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __config_callback_block_invoke_205;
    v101[3] = &unk_27898A0C8;
    v102 = v3;
    dispatch_after(v30, v31, v101);

    v7 = "atchItemsCommand";
    v8 = "atchItemsCommand";
  }

  v6 = MEMORY[0x277CE16B0];
LABEL_33:
  if (v3)
  {
    v32 = v6;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v97 = 0u;
    v33 = v76;
    v34 = [v33 countByEnumeratingWithState:&v97 objects:v113 count:16];
    if (!v34)
    {
      goto LABEL_79;
    }

    v35 = v34;
    allocatora = *MEMORY[0x277CBECE8];
    domain = *MEMORY[0x277CE1648];
    entitya = *v32;
    v84 = *v98;
    v36 = *(v7 + 242);
    v74 = *(v8 + 252);
    while (1)
    {
      for (i = 0; i != v35; ++i)
      {
        v38 = v9;
        if (*v98 != v84)
        {
          objc_enumerationMutation(v33);
        }

        v9 = *(*(&v97 + 1) + 8 * i);

        v39 = [v33 objectForKeyedSubscript:v9];
        v40 = [v39 integerValue];

        if (v40 == 5 && [v85 _getCellSPIType] == 3)
        {
          v41 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            continue;
          }

          *buf = 138412802;
          v110 = v9;
          v111 = 2048;
          *v112 = v40;
          *&v112[8] = 2048;
          *&v112[10] = 3;
          v42 = v41;
          v43 = "Ignored SCDynamicStore notification on %@, interface type = %ld, cell SPI type = %lu";
          v44 = 32;
          goto LABEL_76;
        }

        valuePtr = -1;
        if (!v9)
        {
          v53 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          *buf = 0;
          v54 = v53;
          v55 = OS_LOG_TYPE_ERROR;
          v56 = "retrieve_lqm_for_interface is called with nil ifName";
          v57 = 2;
LABEL_57:
          _os_log_impl(&dword_23255B000, v54, v55, v56, buf, v57);
          goto LABEL_58;
        }

        NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(allocatora, domain, v9, entitya);
        if (!NetworkInterfaceEntity)
        {
          v58 = netepochsLogHandle;
          if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }

          *buf = v74;
          v110 = v9;
          v111 = 2112;
          *v112 = entitya;
          v54 = v58;
          v55 = OS_LOG_TYPE_DEFAULT;
          v56 = "SCDynamicStore failed to create a key on interface: %@ for entity: %@";
          v57 = 22;
          goto LABEL_57;
        }

        v46 = NetworkInterfaceEntity;
        v47 = SCDynamicStoreCopyValue(_SCDynamicStore, NetworkInterfaceEntity);
        v48 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v74;
          v110 = v47;
          v111 = 2112;
          *v112 = v46;
          _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "SCDynamicStore retrieved value: %@ for key: %@", buf, 0x16u);
        }

        CFRelease(v46);
        if (v47)
        {
          v49 = CFGetTypeID(v47);
          if (v49 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(v47, entitya);
            if (Value)
            {
              v51 = Value;
              v52 = CFGetTypeID(Value);
              if (v52 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v51, kCFNumberIntType, &valuePtr);
              }
            }
          }

          CFRelease(v47);
        }

LABEL_58:
        v59 = valuePtr;
        v60 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v110 = v9;
          v111 = 1024;
          *v112 = v59;
          *&v112[4] = 2048;
          *&v112[6] = v40;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, "Received SCDynamicStore notification for LQM key, %@ has LQM = %d type = %ld", buf, 0x1Cu);
        }

        if ((v40 & 0xFE) == 2 || v40 == 5)
        {
          v62 = &realTimeLqm[v40];
          v63 = *v62;
          *v62 = v59;
          [v85 _trackRealTimeLqmLastUpdatedOnInterfaceType:v40];
          if (v40 == 5 || v40 == 3)
          {
            v65 = [v85 queue];
            v91[0] = MEMORY[0x277D85DD0];
            v91[1] = v36;
            v91[2] = __config_callback_block_invoke_207;
            v91[3] = &unk_27898D8F0;
            v66 = v85;
            v96 = v40;
            v94 = v63;
            v95 = v59;
            v92 = v66;
            v93 = &realTimeLqm[v40];
            dispatch_async(v65, v91);

            v67 = v92;
LABEL_73:

            continue;
          }
        }

        else
        {
          if (v40 == 7)
          {
            v68 = [v85 queue];
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = v36;
            v86[2] = __config_callback_block_invoke_208;
            v86[3] = &unk_27898D918;
            v90 = v40;
            v87 = v9;
            v89 = v59;
            v88 = v85;
            dispatch_async(v68, v86);

            v67 = v87;
            goto LABEL_73;
          }

          v69 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = v74;
            v110 = v9;
            v111 = 2048;
            *v112 = v40;
            v42 = v69;
            v43 = "Ignored SCDynamicStore notification on %@, interface type = %ld";
            v44 = 22;
LABEL_76:
            _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, v43, buf, v44);
            continue;
          }
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v97 objects:v113 count:16];
      if (!v35)
      {
LABEL_79:

        v9 = 0;
        v3 = v85;
        break;
      }
    }
  }
}

void __my_client_handle_new_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = MEMORY[0x238389170](a2);
    v5 = *(*(*(a1 + 32) + 8) + 24);
    v6 = &clients;
    do
    {
      v6 = *v6;
      if (v6)
      {
        v7 = v6 == v5;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (v6 != v5)
    {
      v8 = transportLogHandle;
      if (!os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 134217984;
      *v25 = v5;
      v9 = "Invalid client: %p";
      v10 = v8;
      v11 = 12;
      goto LABEL_11;
    }

    if (v4 == MEMORY[0x277D86468])
    {
      length = 0;
      ++v5[10];
      data = xpc_dictionary_get_data(a2, "payload", &length);
      v14 = transportLogHandle;
      if (data)
      {
        v15 = data;
        if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(*(*(a1 + 32) + 8) + 24);
          v17 = v16[17];
          v18 = v16[18];
          LODWORD(v16) = v16[19];
          *buf = 67109632;
          *v25 = v17;
          *&v25[4] = 1024;
          *&v25[6] = v18;
          v26 = 1024;
          v27 = v16;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "message from pid:%d euid:%d egid:%d", buf, 0x14u);
        }

        v19 = *(*(*(a1 + 32) + 8) + 24);
        symptomConnectionIncomingData(*(v19 + 136), *(v19 + 120), v15, length);
      }

      else if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "message with no payload", buf, 2u);
      }

      my_client_release(*(*(*(a1 + 32) + 8) + 24));
    }

    else if (v4 == MEMORY[0x277D86480])
    {
      v20 = v5[13];
      if (v20)
      {
        dispatch_source_cancel(v20);
        v5[13] = 0;
      }

      v21 = v5[1];
      if (v21)
      {
        xpc_connection_cancel(v21);
        v22 = v5[1];
        if (v22)
        {
          xpc_release(v22);
        }

        v5[1] = 0;
      }

      my_client_release(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else
    {
      v12 = transportLogHandle;
      if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "unknown message type";
        v10 = v12;
        v11 = 2;
LABEL_11:
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      }
    }
  }
}

BOOL symptomConnectionIncomingData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a2];
  v8 = [transportDictionary objectForKey:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v15 = a2;
      v16 = 2048;
      v17 = a3;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "symptomConnectionIncomingData for connId %llu at %p len %lu", buf, 0x20u);
    }

    [v10 receivePayload:a3 length:a4];
  }

  else
  {
    v12 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v15 = a2;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "No entry for key %llu on read", buf, 0xCu);
    }
  }

  return v9 != 0;
}

void systemPowerNotificationHandler(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3 != -536870288)
  {
    if (a3 == -536870112)
    {
      v12 = +[IOKitHandler sharedInstance];
      [v12 updateMostRecentAPWakeTime];

      v13 = noiLogHandle;
      if (!os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
      {
        return;
      }

      v14 = v13;
      v11 = +[IOKitHandler sharedInstance];
      v16 = 134217984;
      v17 = [(io_connect_t *)v11 mostRecentAPWakeMachTime];
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "Received kIOMessageSystemWillPowerOn notification. (mach time: %llu)", &v16, 0xCu);

      goto LABEL_10;
    }

    if (a3 != -536870272)
    {
      return;
    }

    v5 = +[IOKitHandler sharedInstance];
    [v5 updateMostRecentAPSleepTime];

    v6 = noiLogHandle;
    if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = +[IOKitHandler sharedInstance];
      v16 = 134217984;
      v17 = [v8 mostRecentAPSleepMachTime];
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "Received kIOMessageSystemWillSleep notification. (mach time: %llu)", &v16, 0xCu);
    }
  }

  v9 = +[IOKitHandler sharedInstance];
  v10 = v9[4];

  if (v10)
  {
    v11 = +[IOKitHandler sharedInstance];
    IOAllowPowerChange(v11[4], a4);
LABEL_10:

    return;
  }

  v15 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "No kernel power port available!", &v16, 2u);
  }
}

void my_client_release(uint64_t *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1[10] - 1;
  a1[10] = v1;
  if (!v1)
  {
    v3 = &clients;
    do
    {
      v4 = v3;
      v3 = *v3;
      if (v3)
      {
        v5 = v3 == a1;
      }

      else
      {
        v5 = 1;
      }
    }

    while (!v5);
    if (v3 == a1)
    {
      *v4 = *a1;
      *a1 = 0;
    }

    v6 = *(a1 + 22);
    if (v6)
    {
      if (mach_port_deallocate(*MEMORY[0x277D85F48], v6))
      {
        v7 = transportLogHandle;
        if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
        {
          v8 = *__error();
          v9 = __error();
          v10 = strerror_r(*v9, __strerrbuf, 0x80uLL);
          v11 = "";
          if (!v10)
          {
            v11 = __strerrbuf;
          }

          v15[0] = 67109378;
          v15[1] = v8;
          v16 = 2080;
          v17 = v11;
          _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "mach_port_deallocate failed: %d - %s", v15, 0x12u);
        }
      }

      *(a1 + 22) = 0;
    }

    v12 = a1[13];
    if (v12)
    {
      dispatch_source_cancel(v12);
      a1[13] = 0;
    }

    v13 = a1[1];
    if (v13)
    {
      xpc_connection_cancel(v13);
      v14 = a1[1];
      if (v14)
      {
        xpc_release(v14);
      }

      a1[1] = 0;
    }

    symptomConnectionDestroy(a1[17], a1[15]);
    free(a1);
  }
}

void client_write(uint64_t *a1, uint64_t *a2, uint64_t *a3, size_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = transportLogHandle;
  if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218496;
    v14 = a2;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "client_write called, id %llu data %p len %lu", &v13, 0x20u);
  }

  v9 = &clients;
  do
  {
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  while (v9[15] != a2);
  if (v9 != a1)
  {
LABEL_7:
    v10 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      v14 = a1;
      v15 = 2048;
      v16 = a2;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Client validation failure supplied %p with id %lld", &v13, 0x16u);
    }

    return;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  if (v11)
  {
    v12 = v11;
    xpc_dictionary_set_data(v11, "payload", a3, a4);
    xpc_connection_send_message(v9[1], v12);
    xpc_release(v12);
  }
}

id pid_to_process_name(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  buffer = 0u;
  v6 = 0u;
  if (proc_pidinfo(a1, 13, 1uLL, &buffer, 64) == 64)
  {
    v3 = v6;
    v4 = 0;
    v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v3];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_232569720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t type metadata accessor for NDFCoreShim()
{
  result = qword_2814D4358;
  if (!qword_2814D4358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814D4358);
  }

  return result;
}

uint64_t sub_232569BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232569D64;

  return sub_232569C6C(a1, v4);
}

uint64_t sub_232569C6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_232569E5C;

  return v6(a1);
}

uint64_t sub_232569D68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_232569E5C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_232569F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDA0518, &qword_232817270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t libnetcoreSymptomTrampoline(void *a1, void *a2, char a3, char a4, void *a5, void *a6)
{
  v92 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = [v11 eventData];
  if (!v15)
  {
    v20 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v89 = v11;
    v19 = "libnetcore symptom is corrupted: %@";
    goto LABEL_10;
  }

  v16 = v15;
  if ((*(v15 + 16) & 0xFF000) != 0x67000)
  {
    v20 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v89 = v11;
    v19 = "libnetcore symptom, unable to parse: %@";
    goto LABEL_10;
  }

  v17 = *(v15 + 4);
  if ((v17 & 1) == 0)
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "libnetcore symptom with no qualifier";
LABEL_14:
      v21 = v18;
      v22 = 2;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if ((v17 & 2) == 0)
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "libnetcore symptom with no qualifier1";
      goto LABEL_14;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v25 = *(v15 + 24);
  if (!v25)
  {
    if (a4)
    {
      goto LABEL_23;
    }

    v20 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 138412290;
    v89 = v11;
    v19 = "libnetcore symptom has nil interface index, symptom: %@";
LABEL_10:
    v21 = v20;
    v22 = 12;
LABEL_15:
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_ERROR, v19, buf, v22);
    goto LABEL_16;
  }

  v26 = [objc_alloc(MEMORY[0x277CD91D8]) initWithInterfaceIndex:v25];
  v27 = v26;
  if (v12)
  {
    v28 = [v26 type];
    if (v28 != [v12 integerValue])
    {
      v33 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        v34 = v33;
        *buf = 134218242;
        v89 = [v27 type];
        v90 = 2112;
        v91 = v12;
        _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_INFO, "libnetcore symptom interface index %ld doesn't match request: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }
  }

LABEL_23:
  v58 = *(v16 + 32);
  v29 = pid_to_process_name(v58);
  v56 = v25;
  if (v29)
  {
    v61 = v29;
    v30 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v89 = v61;
      v31 = "libnetcore symptom uses effective process name: %@";
LABEL_29:
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, v31, buf, 0xCu);
    }
  }

  else
  {
    v32 = [v11 eventQualifierStringForKey:@"3"];
    if (!v32)
    {
      v61 = 0;
      goto LABEL_36;
    }

    v61 = v32;
    v30 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v89 = v61;
      v31 = "libnetcore symptom falls back to using process name: %@";
      goto LABEL_29;
    }
  }

LABEL_36:
  v59 = [v11 eventQualifierStringForKey:@"4"];
  v60 = [v11 eventQualifierStringForKey:@"6"];
  v35 = *(v16 + 64);
  v36 = [v11 eventQualifierStringForKey:@"7"];
  v57 = [v36 intValue];

  v37 = [v11 eventQualifierStringForKey:@"10"];
  v55 = [v37 intValue];

  v38 = [v11 eventQualifierStringForKey:@"11"];
  v39 = [v38 intValue];

  v40 = [v11 eventQualifierStringForKey:@"12"];
  v41 = [v11 eventKey];
  v42 = [SymptomStore nameFromSymptomKey:v41];

  if (a3)
  {
    v53 = v35;
    v54 = v40;
    v43 = v59;
    v44 = [v11 eventQualifiers];
    v45 = [v44 objectForKeyedSubscript:@"2"];

    if ([v45 length])
    {
      v46 = v39;
      v47 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v45, "bytes")}];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __libnetcoreSymptomTrampoline_block_invoke;
      v75[3] = &unk_27898D720;
      v81 = v14;
      v76 = v42;
      v77 = v61;
      v83 = v58;
      v84 = v56;
      v78 = v59;
      v48 = v60;
      v79 = v60;
      v82 = v53;
      v85 = v57;
      v86 = v55;
      v87 = v46;
      v49 = v54;
      v80 = v54;
      [FlowAnalyticsEngine checkForegroundStateForProcessWithUUID:v47 replyQueue:v13 reply:v75];

      v23 = 1;
    }

    else
    {
      v52 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_INFO, "libnetcore symptom with invalid uuid, failing because foreground requested", buf, 2u);
      }

      v23 = 0;
      v48 = v60;
      v49 = v54;
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __libnetcoreSymptomTrampoline_block_invoke_27;
    block[3] = &unk_27898D748;
    v68 = v14;
    v63 = v42;
    v64 = v61;
    v70 = v58;
    v71 = v56;
    v50 = v40;
    v43 = v59;
    v65 = v59;
    v51 = v35;
    v48 = v60;
    v66 = v60;
    v69 = v51;
    v72 = v57;
    v73 = v55;
    v74 = v39;
    v49 = v50;
    v67 = v50;
    dispatch_async(v13, block);

    v23 = 1;
    v45 = v68;
  }

LABEL_17:
  return v23;
}

void __config_callback_block_invoke(uint64_t a1)
{
  v74[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = +[SystemSettingsRelay defaultRelay];
  v4 = [v3 ndfEnabled];

  if ((v4 & 1) == 0)
  {
    v44 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_64;
    }

    *buf = 0;
    v45 = "NDF is disabled, not querying IP configuration";
    v46 = v44;
    v47 = OS_LOG_TYPE_INFO;
    v48 = 2;
LABEL_45:
    _os_log_impl(&dword_23255B000, v46, v47, v45, buf, v48);
    goto LABEL_64;
  }

  entity = *MEMORY[0x277CE1688];
  if (([(__CFString *)v2 containsString:?]& 1) == 0 && ![(__CFString *)v2 containsString:*MEMORY[0x277CE1690]])
  {
    v49 = netepochsLogHandle;
    if (!os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_64;
    }

    *buf = 138412290;
    v71 = v2;
    v45 = "Not querying IP configuration; key %@ is invalid";
    v46 = v49;
    v47 = OS_LOG_TYPE_ERROR;
    v48 = 12;
    goto LABEL_45;
  }

  v5 = [InterfaceUtils interfaceNameFromKey:v2];
  v6 = netepochsLogHandle;
  if (v5)
  {
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v71 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Querying IP configuration for interface %@", buf, 0xCu);
    }

    v7 = v5;
    v8 = +[SystemSettingsRelay defaultRelay];
    v9 = [v8 ndfEnabled];

    v10 = netepochsLogHandle;
    v11 = os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v71 = v7;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Received configd callback for IP configuration change on interface %@", buf, 0xCu);
      }

      v12 = *MEMORY[0x277CBECE8];
      v13 = *MEMORY[0x277CE1648];
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(*MEMORY[0x277CBECE8], *MEMORY[0x277CE1648], v7, entity);
      v61 = *MEMORY[0x277CE1690];
      v15 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v12, v13, v7, *MEMORY[0x277CE1690]);
      v16 = v15;
      if (NetworkInterfaceEntity && v15)
      {
        v74[0] = NetworkInterfaceEntity;
        v74[1] = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];

        if ([(__CFArray *)v17 count])
        {
          v18 = SCDynamicStoreCopyMultiple(v1, 0, v17);
          if ([(__CFDictionary *)v18 count])
          {
            v56 = v7;
            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v19 = v18;
            v20 = [(__CFDictionary *)v19 countByEnumeratingWithState:&v62 objects:buf count:16];
            if (!v20)
            {
              goto LABEL_60;
            }

            v21 = v20;
            v53 = v18;
            v54 = v17;
            v55 = v2;
            v22 = *v63;
            v58 = *MEMORY[0x277CE1728];
            v57 = *MEMORY[0x277CE1758];
            v23 = entity;
            while (1)
            {
              v24 = 0;
              v60 = v21;
              do
              {
                if (*v63 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v25 = *(*(&v62 + 1) + 8 * v24);
                v26 = [(__CFDictionary *)v19 objectForKeyedSubscript:v25];

                if (v26)
                {
                  v27 = [(__CFDictionary *)v19 objectForKeyedSubscript:v25];
                  v28 = [v25 containsString:v23];
                  v29 = [v25 containsString:v61];
                  if ((v28 & 1) != 0 || v29)
                  {
                    v34 = v22;
                    v35 = [InterfaceUtils interfaceNameFromKey:v25];
                    if (v35)
                    {
                      v36 = v35;
                      if ([InterfaceUtils interfaceIsDirectLink:v35])
                      {
                        v37 = netepochsLogHandle;
                        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
                        {
                          *v66 = 138412290;
                          v67 = v36;
                          _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "Interface %@ is a DirectLink interface, ignoring its IP configuration", v66, 0xCu);
                        }
                      }

                      else
                      {
                        v39 = +[NDFCoreShim sharedInstance];
                        [v39 noteInterfaceOfInterest:v36 isRemoved:0];

                        v40 = v58;
                        if (!v28)
                        {
                          v40 = v57;
                        }

                        v41 = v40;
                        v42 = [v27 objectForKeyedSubscript:v41];
                        v43 = netepochsLogHandle;
                        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
                        {
                          *v66 = 138412547;
                          v67 = v36;
                          v68 = 2113;
                          v69 = v42;
                          _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_INFO, "IP configuration for %@ = %{private}@", v66, 0x16u);
                        }

                        v23 = entity;
                      }

                      v22 = v34;
                      v21 = v60;
                    }

                    else
                    {
                      v38 = netepochsLogHandle;
                      v21 = v60;
                      if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
                      {
                        *v66 = 138412290;
                        v67 = v25;
                        v31 = v38;
                        v32 = "Extracted interfaceName from key %@ is nil";
LABEL_32:
                        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, v32, v66, 0xCu);
                      }
                    }
                  }

                  else
                  {
                    v30 = netepochsLogHandle;
                    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *v66 = 138412290;
                      v67 = v25;
                      v31 = v30;
                      v32 = "Received callback for unexpected key %@, expecting IPv4 or IPv6";
                      goto LABEL_32;
                    }
                  }

                  goto LABEL_40;
                }

                v33 = netepochsLogHandle;
                if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *v66 = 138412290;
                  v67 = v25;
                  _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "No IP configuration obtained for key %@", v66, 0xCu);
                }

LABEL_40:
                ++v24;
              }

              while (v21 != v24);
              v21 = [(__CFDictionary *)v19 countByEnumeratingWithState:&v62 objects:buf count:16];
              if (!v21)
              {
                v2 = v55;
                v7 = v56;
                v18 = v53;
                v17 = v54;
                goto LABEL_60;
              }
            }
          }

          v52 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v7;
            _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEFAULT, "Interface %@ has gone down", buf, 0xCu);
          }

          v19 = +[NDFCoreShim sharedInstance];
          [(__CFDictionary *)v19 noteInterfaceOfInterest:v7 isRemoved:1];
LABEL_60:
        }

        else
        {
          v51 = netepochsLogHandle;
          if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_ERROR, "PatternList is empty, not fetching IP configuration", buf, 2u);
          }
        }
      }

      else
      {
        v50 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v71 = NetworkInterfaceEntity;
          v72 = 2112;
          v73 = v16;
          _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "Found IPv4/IPv6 SCDynamicStore keys (%@/%@) to be nil", buf, 0x16u);
        }

        v17 = NetworkInterfaceEntity;
      }
    }

    else if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "NDF is disabled, not fetching IP configuration", buf, 2u);
    }
  }

  else if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "interfaceName is nil, not querying IP configuration", buf, 2u);
  }

LABEL_64:
}

void sf_synchronize_cold_1()
{
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "block";
    OUTLINED_FUNCTION_0_4(&dword_23255B000, v0, v1, "Invalid parameter %s", v2, v3, v4, v5, v6, DWORD2(v6));
  }
}

uint64_t EnvFacts(uint64_t *a1, FILE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CurrentModule = EnvGetCurrentModule(a1);
  if (a3)
  {
    EnvSetCurrentModule(a1, a3);
    NextFactInScope = GetNextFactInScope(a1, 0);
  }

  else
  {
    NextFactInScope = EnvGetNextFact(a1, 0);
  }

  v14 = 0;
  v15 = NextFactInScope;
  if (NextFactInScope)
  {
    while (GetHaltExecution(a1) != 1)
    {
      v16 = *(v15 + 48);
      if ((v16 <= a5 || a5 == -1) && a6 != 0)
      {
        if (v16 >= a4)
        {
          PrintFactWithIdentifier(a1, a2, v15);
          EnvPrintRouter(a1, a2, "\n");
          ++v14;
          a6 -= a6 > 0;
        }

        v19 = a3 ? GetNextFactInScope(a1, v15) : EnvGetNextFact(a1, v15);
        v15 = v19;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
LABEL_19:
    PrintTally(a1, a2, v14, "fact", "facts");
  }

  return EnvSetCurrentModule(a1, CurrentModule);
}

uint64_t EnvGetNextFact(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(*(a1 + 48) + 24) + 168;
    return *v2;
  }

  if ((*(a2 + 64) & 1) == 0)
  {
    v2 = a2 + 80;
    return *v2;
  }

  return 0;
}

uint64_t PrintFactWithIdentifier(uint64_t *a1, FILE *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  gensprintf(v7, "f-%-5lld ", *(a3 + 48));
  EnvPrintRouter(a1, a2, v7);
  return PrintFact(a1, a2, a3, 0, 0);
}

uint64_t EnvPrintRouter(uint64_t a1, FILE *__s2, char *a3)
{
  v5 = *(*(a1 + 48) + 368);
  v6 = *(v5 + 64);
  if (v6 == __s2)
  {
    fputs(a3, v6);
    return 2;
  }

  else
  {
    v8 = *(v5 + 48);
    if (v8)
    {
      while (!*(v8 + 40) || !QueryRouter(a1, __s2, v8))
      {
        v8 = *(v8 + 72);
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      SetEnvironmentRouterContext(a1, *(v8 + 24));
      v10 = *(v8 + 40);
      if (*(v8 + 16))
      {
        v10(a1, __s2, a3);
      }

      else
      {
        (v10)(__s2, a3);
      }

      return 1;
    }

    else
    {
LABEL_6:
      result = strcmp("werror", __s2);
      if (result)
      {
        UnrecognizedRouterMessage(a1, __s2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t QueryRouter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    return 0;
  }

  if (!*(a3 + 32))
  {
    return 0;
  }

  SetEnvironmentRouterContext(a1, *(a3 + 24));
  v6 = *(a3 + 32);
  result = *(a3 + 16) ? v6(a1, a2) : (v6)(a2);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

BOOL _routerQueryImpl(uint64_t a1, const char *a2)
{
  v3 = GetEnvironmentContext(a1);
  v4 = v3;
  memset(&v10, 0, sizeof(v10));
  if (v3)
  {
    objc_msgSend_consoleNameRegex(v3);
    memset(&v9, 0, sizeof(v9));
    objc_msgSend_dumpStringRegex(v4);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  if (regexec(&v10, a2, 0, 0, 0))
  {
    v5 = regexec(&v9, a2, 0, 0, 0);
    v8 = v9;
    [v4 setDumpStringRegex:&v8];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t PrintFact(uint64_t *a1, FILE *__s2, uint64_t a3, int a4, int a5)
{
  if (*(*(a3 + 32) + 56))
  {
    EnvPrintRouter(a1, __s2, "(");
    EnvPrintRouter(a1, __s2, *(**(a3 + 32) + 24));
    v9 = *(a3 + 136);
    if (*(v9 + 8))
    {
      EnvPrintRouter(a1, __s2, " ");
      PrintMultifield(a1, __s2, v9, 0, *(v9 + 8) - 1, 0);
    }

    return EnvPrintRouter(a1, __s2, ")");
  }

  else
  {

    return PrintTemplateFact(a1, __s2, a3, a4, a5);
  }
}

uint64_t PrintMultifield(uint64_t result, FILE *__s2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = result;
  if (a6)
  {
    result = EnvPrintRouter(result, __s2, "(");
  }

  if (a4 <= a5)
  {
    v12 = (a3 + 16 * a4 + 32);
    do
    {
      result = PrintAtom(v11, __s2, *(v12 - 4), *v12);
      if (a4 < a5)
      {
        result = EnvPrintRouter(v11, __s2, " ");
      }

      ++a4;
      v12 += 2;
    }

    while (a5 + 1 != a4);
  }

  if (a6)
  {

    return EnvPrintRouter(v11, __s2, ")");
  }

  return result;
}

uint64_t PrintTally(uint64_t result, FILE *a2, uint64_t a3, char *a4, char *a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = result;
    EnvPrintRouter(result, a2, "For a total of ");
    gensprintf(v11, "%lld", a3);
    EnvPrintRouter(v9, a2, v11);
    EnvPrintRouter(v9, a2, " ");
    if (a3 == 1)
    {
      v10 = a4;
    }

    else
    {
      v10 = a5;
    }

    EnvPrintRouter(v9, a2, v10);
    return EnvPrintRouter(v9, a2, ".\n");
  }

  return result;
}

uint64_t SetEnvironmentRouterContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  return v2;
}

uint64_t _routerPrintImpl(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = GetEnvironmentContext(a1);
  v6 = v5;
  memset(&v15, 0, sizeof(v15));
  if (v5)
  {
    objc_msgSend_consoleNameRegex(v5);
    memset(&v14, 0, sizeof(v14));
    objc_msgSend_dumpStringRegex(v6);
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  if (regexec(&v15, a2, 0, 0, 0))
  {
    if (!regexec(&v14, a2, 0, 0, 0))
    {
      v7 = [v6 dumpedString];
      [v7 appendFormat:@"%s", a3];
LABEL_21:
    }
  }

  else
  {
    v8 = [v6 consoleContents];

    if (a3 && v8)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
      if ([v7 length])
      {
        v9 = [v6 consoleContents];
        [v9 appendString:v7];
      }

      if ([v7 hasSuffix:@"\n"])
      {
        v10 = [v6 consoleBuffer];
        if (([v10 isEqualToString:@"\n"] & 1) == 0)
        {
          v11 = [v6 delegate];
          if (objc_opt_respondsToSelector())
          {
            [v11 clipsConsoleOutput:v10 consoleChannel:a2 forEngine:v6];
          }

          if (strlen(a2) == 6 && !strncmp(a2, "werror", 6uLL))
          {
            v12 = debuggabilityLogHandle;
            if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v17 = a2;
              v18 = 2112;
              v19 = v10;
              _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "<%s> %@", buf, 0x16u);
            }
          }
        }
      }

      goto LABEL_21;
    }
  }

  return 0;
}

uint64_t EnvSetCurrentModule(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = a2;
  v5 = *(v2 + 32);
  if (*(v5 + 24))
  {
    ++*(v5 + 72);
    for (i = *(v5 + 8); i; i = *(i + 24))
    {
      (*(i + 8))(a1);
    }
  }

  return v4;
}

uint64_t EnvRun(void *a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  v3 = *(v2 + 144);
  if (*(v3 + 136))
  {
    return 0;
  }

  memset(v77, 0, sizeof(v77));
  v75 = 0;
  memset(v76, 0, sizeof(v76));
  *(v3 + 136) = 1;
  v7 = *(v2 + 440);
  v8 = *(v7 + 112);
  v71[0] = 0;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71[1] = v8;
  *(v7 + 112) = v71;
  if (*(*(v2 + 144) + 76))
  {
    NumberOfFacts = GetNumberOfFacts(a1);
    NumberOfActivations = GetNumberOfActivations(a1);
    v11 = gentime();
    v2 = a1[6];
  }

  else
  {
    NumberOfActivations = 0;
    NumberOfFacts = 0;
    v11 = 0.0;
  }

  if (*(*(*(v2 + 440) + 112) + 2))
  {
    SetHaltExecution(a1, 0);
    v2 = a1[6];
  }

  *(*(v2 + 144) + 8) = 0;
  ActivationToFire = NextActivationToFire(a1);
  v66 = v8;
  v69 = NumberOfFacts;
  v70 = NumberOfActivations;
  if (ActivationToFire && a2)
  {
    v13 = ActivationToFire;
    v14 = NumberOfFacts;
    v4 = 0;
    v67 = v14;
    v68 = NumberOfActivations;
    while (1)
    {
      v15 = a1[6];
      if (*(*(v15 + 352) + 12))
      {
        break;
      }

      v16 = *(v15 + 144);
      if (*(v16 + 8))
      {
        break;
      }

      for (i = *(v16 + 56); i; i = *(i + 24))
      {
        SetEnvironmentCallbackContext(a1, *(i + 40));
        v18 = *(i + 8);
        if (*(i + 32))
        {
          (v18)(a1, v13);
        }

        else
        {
          v18(v13);
        }
      }

      DetachActivation(a1, v13);
      v19 = AddTrackedMemory(a1, v13, 56);
      ActivationName = EnvGetActivationName(a1, v13);
      ActivationBasis = EnvGetActivationBasis(a1, v13);
      ActivationRule = EnvGetActivationRule(a1, v13);
      v23 = a1[6];
      **(v23 + 144) = ActivationRule;
      ++v4;
      if ((*(**(v23 + 144) + 57) & 0x20) != 0)
      {
        gensprintf(v78, "FIRE %4lld ", v4);
        EnvPrintRouter(a1, "wtrace", v78);
        EnvPrintRouter(a1, "wtrace", ActivationName);
        EnvPrintRouter(a1, "wtrace", ": ");
        PrintPartialMatch(a1, "wtrace", ActivationBasis);
        EnvPrintRouter(a1, "wtrace", "\n");
      }

      *(ActivationBasis + 24) = 0;
      *ActivationBasis |= 2u;
      v24 = a1[6];
      *(*(v24 + 144) + 96) = ActivationBasis;
      *(*(v24 + 144) + 104) = 0;
      v25 = *(ActivationBasis + 2);
      if (v25)
      {
        for (j = 0; j < v25; ++j)
        {
          v27 = *(ActivationBasis + 136 + 8 * j);
          if (v27 && *v27)
          {
            (*(**v27 + 120))(a1);
            v25 = *(ActivationBasis + 2);
          }
        }

        v24 = a1[6];
      }

      *(*(v24 + 144) + 16) = *(**(v24 + 144) + 80);
      v28 = *(v24 + 144);
      v29 = v28[2];
      if (v29)
      {
        LogicalBind = FindLogicalBind(v29, v28[12]);
        v31 = a1[6];
        *(*(v31 + 144) + 24) = LogicalBind;
        **(*(v31 + 144) + 24) |= 2u;
        v24 = a1[6];
      }

      else
      {
        v28[3] = 0;
      }

      ++*(*(v24 + 352) + 16);
      SetEvaluationError(a1, 0);
      v32 = **(a1[6] + 144);
      *(v32 + 56) |= 0x8000u;
      v33 = a1[6];
      v34 = *(*(v33 + 336) + 20);
      StartProfile(a1, v76, (**(v33 + 144) + 40), *(*(v33 + 120) + 72));
      v35 = **(a1[6] + 144);
      EvaluateProcActions(a1, **(v35 + 16), *(v35 + 72), *(v35 + 52), v77, 0);
      EndProfile(a1, v76);
      v36 = **(a1[6] + 144);
      *(v36 + 56) &= ~0x8000u;
      SetEvaluationError(a1, 0);
      v37 = a1[6];
      v38 = *(v37 + 352);
      --*(v38 + 16);
      if (!**(v37 + 320) && !*v38)
      {
        *(*(v37 + 336) + 20) = v34;
      }

      *(*(v37 + 144) + 16) = 0;
      v39 = *(*(v37 + 144) + 24);
      if (v39)
      {
        *v39 &= ~2u;
        v37 = a1[6];
        *(*(v37 + 144) + 24) = 0;
      }

      if (*(*(v37 + 352) + 12) || (v54 = *(v37 + 144), v54[2]) && (*(*v54 + 56) & 0x2000) != 0)
      {
        PrintErrorID(a1, "PRCCODE", 4, 0);
        EnvPrintRouter(a1, "werror", "Execution halted during the actions of defrule ");
        EnvPrintRouter(a1, "werror", ActivationName);
        EnvPrintRouter(a1, "werror", ".\n");
      }

      *ActivationBasis &= ~2u;
      v40 = *(ActivationBasis + 2);
      if (v40)
      {
        for (k = 0; k < v40; ++k)
        {
          v42 = *(ActivationBasis + 136 + 8 * k);
          if (v42 && *v42)
          {
            (*(**v42 + 112))(a1);
            v40 = *(ActivationBasis + 2);
          }
        }
      }

      RemoveTrackedMemory(a1, v19);
      RemoveActivation(a1, v13, 0, 0);
      FlushGarbagePartialMatches(a1);
      CleanCurrentGarbageFrame(a1, 0);
      CallPeriodicTasks(a1);
      if (*(*(a1[6] + 144) + 76))
      {
        v43 = GetNumberOfFacts(a1);
        v44 = v67;
        if (v43 > v67)
        {
          v44 = v43;
        }

        v67 = v44;
        v69 += v43;
        v45 = GetNumberOfActivations(a1);
        v46 = v68;
        if (v45 > v68)
        {
          v46 = v45;
        }

        v68 = v46;
        v70 += v45;
      }

      if (EnvGetSalienceEvaluation(a1) == 2)
      {
        EnvRefreshAgenda(a1, 0);
      }

      v47 = a1[6];
      v48 = *(*(v47 + 144) + 48);
      if (v48)
      {
        do
        {
          v49 = SetEnvironmentCallbackContext(a1, *(v48 + 40));
          v50 = *(v48 + 8);
          if (*(v48 + 32))
          {
            v50(a1);
          }

          else
          {
            v50(v49);
          }

          v48 = *(v48 + 24);
        }

        while (v48);
        v47 = a1[6];
      }

      v51 = *(v47 + 104);
      if (*v51 == 1)
      {
        RemoveFocus(a1, **(**(v47 + 144) + 16));
        v51 = *(a1[6] + 104);
      }

      a2 -= a2 > 0;
      *v51 = 0;
      v52 = NextActivationToFire(a1);
      if (v52)
      {
        v13 = v52;
        if ((*(EnvGetActivationRule(a1, v52) + 56) & 0x800) != 0)
        {
          *(*(a1[6] + 144) + 8) = 1;
          EnvPrintRouter(a1, "wdialog", "Breaking on rule ");
          v53 = EnvGetActivationName(a1, v13);
          EnvPrintRouter(a1, "wdialog", v53);
          EnvPrintRouter(a1, "wdialog", ".\n");
        }

        if (a2)
        {
          continue;
        }
      }

      goto LABEL_75;
    }

    if (v4)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v67 = NumberOfFacts;
    v68 = NumberOfActivations;
  }

  for (m = *(*(a1[6] + 144) + 48); m; m = *(m + 24))
  {
    v56 = *(m + 8);
    if (*(m + 32))
    {
      (v56)(a1);
    }

    else
    {
      v56();
    }
  }

  v4 = 0;
LABEL_75:
  if (a2 == v4)
  {
    EnvPrintRouter(a1, "wdialog", "rule firing limit reached\n");
  }

  v57 = a1[6];
  **(v57 + 144) = 0;
  v58 = *(v57 + 144);
  *(v58 + 8) = 0;
  if (*(v58 + 76))
  {
    v59 = gentime();
    PrintLongInteger(a1, "wdialog", v4);
    EnvPrintRouter(a1, "wdialog", " rules fired");
    if (v11 == v59)
    {
      v61 = "\n";
    }

    else
    {
      EnvPrintRouter(a1, "wdialog", "        Run time is ");
      v60 = v59 - v11;
      PrintFloat(a1, "wdialog", v60);
      EnvPrintRouter(a1, "wdialog", " seconds.\n");
      PrintFloat(a1, "wdialog", v4 / v60);
      v61 = " rules per second.\n";
    }

    EnvPrintRouter(a1, "wdialog", v61);
    v62 = (v4 + 1);
    gensprintf(v78, "%ld mean number of facts (%ld maximum).\n", (v69 / v62 + 0.5), v67);
    EnvPrintRouter(a1, "wdialog", v78);
    gensprintf(v78, "%ld mean number of activations (%ld maximum).\n", (v70 / v62 + 0.5), v68);
    EnvPrintRouter(a1, "wdialog", v78);
    v58 = *(a1[6] + 144);
  }

  v63 = *(v58 + 64);
  if (v63)
  {
    v64 = *v63;
    if (v64 != EnvGetCurrentModule(a1))
    {
      EnvSetCurrentModule(a1, **(*(a1[6] + 144) + 64));
    }
  }

  RestorePriorGarbageFrame(a1, v71, v66, 0);
  CallPeriodicTasks(a1);
  *(*(a1[6] + 144) + 136) = 0;
  return v4;
}

uint64_t RemoveFocus(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 48) + 144) + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  if (*v2 == a2)
  {
    v6 = 0;
LABEL_9:
    v7 = v2[2];
    v8 = *(a1 + 48);
    *(*(v8 + 472) + 32) = v2;
    **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 192);
    *(*(*(v8 + 472) + 40) + 192) = *(*(v8 + 472) + 32);
    if (v6)
    {
      v9 = (v6 + 16);
    }

    else
    {
      v9 = (*(*(a1 + 48) + 144) + 64);
    }

    *v9 = v7;
    v10 = *(*(a1 + 48) + 144);
    if (*(v10 + 80))
    {
      EnvPrintRouter(a1, "wtrace", "<== Focus ");
      EnvPrintRouter(a1, "wtrace", *(*v3 + 24));
      if (*(*(*(a1 + 48) + 144) + 64))
      {
        v11 = v6 == 0;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        EnvPrintRouter(a1, "wtrace", " to ");
        EnvPrintRouter(a1, "wtrace", *(***(*(*(a1 + 48) + 144) + 64) + 24));
      }

      EnvPrintRouter(a1, "wtrace", "\n");
      v10 = *(*(a1 + 48) + 144);
    }

    v12 = *(v10 + 64);
    if (v12)
    {
      v13 = v6 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      EnvSetCurrentModule(a1, *v12);
      v10 = *(*(a1 + 48) + 144);
    }

    *(v10 + 72) = 1;
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 144) + 64);
    while (1)
    {
      v2 = *(v5 + 16);
      if (!v2)
      {
        return **(*(*(a1 + 48) + 144) + 64);
      }

      v6 = v5;
      v5 = *(v5 + 16);
      if (*v2 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  return v3;
}

uint64_t GetModuleItem(uint64_t a1, uint64_t a2, int a3)
{
  if ((a2 || (a2 = *(*(*(a1 + 48) + 32) + 40)) != 0) && (v3 = *(a2 + 16)) != 0)
  {
    return *(v3 + 8 * a3);
  }

  else
  {
    return 0;
  }
}

uint64_t *EnvAddSymbol(uint64_t a1, char *__s1)
{
  if (!__s1)
  {
    SystemError(a1, "SYMBOL", 1);
    EnvExitRouter(a1, 1);
  }

  v4 = *__s1;
  if (*__s1)
  {
    v5 = 0;
    v6 = __s1 + 1;
    do
    {
      v5 = 127 * v5 + v4;
      v7 = *v6++;
      v4 = v7;
    }

    while (v7);
    v8 = v5 % 0x64;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 48);
  v10 = *(*(*(v9 + 392) + 40) + 8 * v8);
  if (!v10)
  {
    v11 = 0;
LABEL_13:
    v12 = *(v9 + 472);
    v13 = *(*(v12 + 40) + 256);
    if (v13)
    {
      *(v12 + 32) = v13;
      *(*(*(v9 + 472) + 40) + 256) = **(*(v9 + 472) + 32);
      v14 = *(*(*(a1 + 48) + 472) + 32);
      if (v11)
      {
LABEL_16:
        *v11 = v14;
        v15 = strlen(__s1);
        v16 = gm2(a1, v15 + 1);
        genstrcpy(v16, __s1);
        v14[3] = v16;
        *v14 = 0;
        v14[1] = 0;
        *(v14 + 4) = v14[2] & 6 | (8 * v8);
        AddEphemeralHashNode(a1, v14, (*(*(*(a1 + 48) + 440) + 112) + 16), 1);
        **(*(*(a1 + 48) + 440) + 112) = 1;
        return v14;
      }
    }

    else
    {
      v14 = genalloc(a1, 0x20uLL);
      if (v11)
      {
        goto LABEL_16;
      }
    }

    v11 = (*(*(*(a1 + 48) + 392) + 40) + 8 * v8);
    goto LABEL_16;
  }

  while (1)
  {
    v11 = v10;
    if (!strcmp(__s1, *(v10 + 24)))
    {
      return v11;
    }

    v10 = *v11;
    if (!*v11)
    {
      goto LABEL_13;
    }
  }
}

uint64_t PrintTemplateFact(uint64_t *a1, FILE *a2, uint64_t a3, int a4, int a5)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v9 = *(a3 + 32);
  EnvPrintRouter(a1, a2, "(");
  EnvPrintRouter(a1, a2, *(*v9 + 24));
  v10 = v9[6];
  if (v10)
  {
    v11 = 0;
    v20 = a3 + 128;
    v22 = a3 + 136;
    for (i = 1; ; i = 0)
    {
      v12 = v11 << 32;
      v13 = (v22 + 16 * v11);
      v11 = v11 + 1;
      v14 = v10;
      while (a5)
      {
        if ((*(v14 + 8) & 8) != 0)
        {
          goto LABEL_13;
        }

        DeftemplateSlotDefault(a1, v9, v14, &v24, 1);
        if (*(v14 + 8))
        {
          if (!MultifieldsEqual(v25, *v13))
          {
            goto LABEL_13;
          }
        }

        else if (WORD4(v24) != *(v13 - 4) || v25 != *v13)
        {
LABEL_13:
          v10 = v14;
          break;
        }

        v14 = *(v14 + 40);
        v12 += 0x100000000;
        ++v11;
        v13 += 2;
        if (!v14)
        {
          return EnvPrintRouter(a1, a2, ")");
        }
      }

      if (i)
      {
        EnvPrintRouter(a1, a2, " ");
      }

      if (a4)
      {
        EnvPrintRouter(a1, a2, "\n   ");
      }

      EnvPrintRouter(a1, a2, "(");
      EnvPrintRouter(a1, a2, *(*v10 + 24));
      if (*(v10 + 8))
      {
        v15 = v20 + (v12 >> 28);
        v18 = *(v15 + 8);
        v16 = (v15 + 8);
        v17 = v18;
        if (*(v18 + 8) >= 1)
        {
          EnvPrintRouter(a1, a2, " ");
          PrintMultifield(a1, a2, *v16, 0, *(v17 + 8) - 1, 0);
        }
      }

      else
      {
        EnvPrintRouter(a1, a2, " ");
        PrintAtom(a1, a2, *(v20 + (v12 >> 28)), *(v20 + (v12 >> 28) + 8));
      }

      EnvPrintRouter(a1, a2, ")");
      v10 = *(v10 + 40);
      if (!v10)
      {
        break;
      }

      EnvPrintRouter(a1, a2, " ");
    }
  }

  return EnvPrintRouter(a1, a2, ")");
}

uint64_t PrintAtom(uint64_t result, FILE *__s2, int a3, uint64_t a4)
{
  v6 = result;
  v18 = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    if (a3 > 39)
    {
      if (a3 == 40)
      {
        if (*(*(*(result + 48) + 424) + 4))
        {
          EnvPrintRouter(result, __s2, "");
        }

        EnvPrintRouter(v6, __s2, "<Pointer-");
        gensprintf(v17, "%p", a4);
        goto LABEL_34;
      }

      if (a3 == 175)
      {
        return result;
      }

      goto LABEL_16;
    }

    if (a3 != 3)
    {
      if (a3 == 5)
      {
        v7 = *(result + 48);
        if (*(*(v7 + 424) + 4))
        {
          EnvPrintRouter(result, __s2, "");
          v7 = *(v6 + 48);
        }

        v8 = *(*(v7 + 352) + 8 * *(a4 + 32) + 1224);
        if (v8)
        {
          v9 = *(v8 + 16);
          if (v9)
          {
            result = v9(v6, __s2, a4);
LABEL_35:
            if (!*(*(*(v6 + 48) + 424) + 4))
            {
              return result;
            }

            v16 = "";
            return EnvPrintRouter(v6, __s2, v16);
          }
        }

        EnvPrintRouter(v6, __s2, "<Pointer-");
        gensprintf(v17, "%d-", *(a4 + 32));
        EnvPrintRouter(v6, __s2, v17);
        gensprintf(v17, "%p", *(a4 + 24));
LABEL_34:
        EnvPrintRouter(v6, __s2, v17);
        result = EnvPrintRouter(v6, __s2, ">");
        goto LABEL_35;
      }

      goto LABEL_16;
    }

    if (!**(*(result + 48) + 424))
    {
      EnvPrintRouter(result, __s2, "");
      EnvPrintRouter(v6, __s2, *(a4 + 24));
      v14 = v6;
      v15 = __s2;
      v10 = "";
      goto LABEL_26;
    }

    v13 = StringPrintForm(result, *(a4 + 24));
    goto LABEL_24;
  }

  if (!a3)
  {
    v13 = FloatToString(result, *(a4 + 24));
LABEL_24:
    v10 = v13;
    goto LABEL_25;
  }

  if (a3 == 1)
  {
    gensprintf(v17, "%lld", *(a4 + 24));
    v16 = v17;
    return EnvPrintRouter(v6, __s2, v16);
  }

  if (a3 != 2)
  {
LABEL_16:
    v11 = *(*(*(result + 48) + 352) + 8 * a3 + 24);
    if (!v11)
    {
      return result;
    }

    v12 = *(v11 + 24);
    if (v12)
    {

      return v12();
    }

    v10 = "<unknown atom type>";
    goto LABEL_25;
  }

  v10 = *(a4 + 24);
LABEL_25:
  v14 = v6;
  v15 = __s2;
LABEL_26:

  return EnvPrintRouter(v14, v15, v10);
}

double gentime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return v1.tv_usec / 1000000.0 + v1.tv_sec;
}

uint64_t NextActivationToFire(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 144) + 64);
  if (!v2)
  {
    Defmodule = EnvFindDefmodule(a1, "MAIN");
    EnvFocus(a1, Defmodule);
    v2 = *(*(*(a1 + 48) + 144) + 64);
  }

  result = *(v2[1] + 32);
  if (!result)
  {
    while (v2)
    {
      RemoveFocus(a1, *v2);
      v2 = *(*(*(a1 + 48) + 144) + 64);
      if (v2)
      {
        result = *(v2[1] + 32);
        if (result)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t FindSymbolHN(uint64_t a1, char *__s1)
{
  v3 = *__s1;
  if (*__s1)
  {
    v4 = 0;
    v5 = __s1 + 1;
    do
    {
      v4 = 127 * v4 + v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
    v7 = v4 % 0x64;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(*(a1 + 48) + 392) + 40) + 8 * v7;
  do
  {
    v8 = *v8;
  }

  while (v8 && strcmp(__s1, *(v8 + 24)));
  return v8;
}

void *EnvFindDefmodule(uint64_t a1, char *a2)
{
  result = FindSymbolHN(a1, a2);
  if (result)
  {
    v4 = result;
    for (result = *(*(*(a1 + 48) + 32) + 32); result; result = result[8])
    {
      if (*result == v4)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t EnvFocus(uint64_t a1, uint64_t a2)
{
  result = EnvSetCurrentModule(a1, a2);
  v5 = *(a1 + 48);
  v6 = *(v5 + 144);
  v7 = *(v6 + 64);
  if (!v7 || *v7 != a2)
  {
    if (*(v6 + 80))
    {
      EnvPrintRouter(a1, "wtrace", "==> Focus ");
      EnvPrintRouter(a1, "wtrace", *(*a2 + 24));
      if (*(*(*(a1 + 48) + 144) + 64))
      {
        EnvPrintRouter(a1, "wtrace", " from ");
        EnvPrintRouter(a1, "wtrace", *(***(*(*(a1 + 48) + 144) + 64) + 24));
      }

      EnvPrintRouter(a1, "wtrace", "\n");
      v5 = *(a1 + 48);
    }

    v8 = *(v5 + 472);
    v9 = *(*(v8 + 40) + 192);
    if (v9)
    {
      *(v8 + 32) = v9;
      *(*(*(v5 + 472) + 40) + 192) = **(*(v5 + 472) + 32);
      v10 = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      v10 = genalloc(a1, 0x18uLL);
    }

    *v10 = a2;
    result = GetDefruleModuleItem(a1, a2);
    v10[1] = result;
    v11 = *(a1 + 48);
    v10[2] = *(*(v11 + 144) + 64);
    *(*(v11 + 144) + 64) = v10;
    *(*(v11 + 144) + 72) = 1;
  }

  return result;
}

uint64_t GetConstructModuleItemByIndex(uint64_t a1, uint64_t CurrentModule, int a3)
{
  if (!CurrentModule)
  {
    CurrentModule = EnvGetCurrentModule(a1);
  }

  return GetModuleItem(a1, CurrentModule, a3);
}

uint64_t PrintLongInteger(uint64_t a1, FILE *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  gensprintf(v6, "%lld", a3);
  return EnvPrintRouter(a1, a2, v6);
}

uint64_t FloatToString(uint64_t a1, double a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = __s1;
  gensprintf(__s1, "%.15g", a2);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    if (v5 == 101 || v4 == 46)
    {
      break;
    }

    if (!v4)
    {
      genstrcat(__s1, ".0");
      return EnvAddSymbol(a1, __s1)[3];
    }
  }

  return EnvAddSymbol(a1, __s1)[3];
}

uint64_t PrintFloat(uint64_t a1, FILE *a2, double a3)
{
  v5 = FloatToString(a1, a3);

  return EnvPrintRouter(a1, a2, v5);
}

void *gm2(uint64_t a1, size_t a2)
{
  v2 = a2;
  if (a2 <= 8)
  {
    a2 = 8;
  }

  if (v2 < 0x1F4)
  {
    v3 = *(*(*(a1 + 48) + 472) + 40);
    v4 = *(v3 + 8 * a2);
    if (v4)
    {
      *(v3 + 8 * a2) = *v4;
      return v4;
    }
  }

  else
  {
    a2 = a2;
  }

  return genalloc(a1, a2);
}

void *AddEphemeralHashNode(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (a4 && *(a2 + 8))
  {
    SystemError(a1, "SYMBOL", 12);
    EnvExitRouter(a1, 1);
  }

  *(a2 + 16) |= 2u;
  v7 = *(a1 + 48);
  v8 = *(v7 + 472);
  v9 = *(*(v8 + 40) + 128);
  if (v9)
  {
    *(v8 + 32) = v9;
    *(*(*(v7 + 472) + 40) + 128) = **(*(v7 + 472) + 32);
    result = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    result = genalloc(a1, 0x10uLL);
  }

  *result = a2;
  result[1] = *a3;
  *a3 = result;
  return result;
}

void *RestorePriorGarbageFrame(void *result, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (!*a2)
  {
    *(*(result[6] + 440) + 112) = a3;
    goto LABEL_17;
  }

  if (a4)
  {
    ValueInstall(result, a4);
  }

  for (i = **(v6[6] + 440); i; i = *(i + 24))
  {
    v9 = *(i + 8);
    if (*(i + 32))
    {
      (v9)(v6);
    }

    else
    {
      v9();
    }
  }

  RemoveEphemeralAtoms(v6);
  result = FlushMultifields(v6);
  v10 = *a2;
  *(*(v6[6] + 440) + 112) = a3;
  if (!v10)
  {
LABEL_17:
    if (!a4)
    {
      return result;
    }

    goto LABEL_18;
  }

  v11 = *(a2 + 7);
  if (v11)
  {
    v12 = (a3 + 56);
    if (*(a3 + 56))
    {
      v12 = (*(a3 + 64) + 16);
    }

    *v12 = v11;
    *(a3 + 64) = *(a2 + 8);
    *a3 = 1;
  }

  if (a4)
  {
    ValueDeinstall(v6, a4);
LABEL_18:
    v13 = *(a4 + 8);
    v14 = *(a4 + 16);

    return EphemerateValue(v6, v13, v14);
  }

  return result;
}

uint64_t RemoveGarbageFacts(uint64_t result)
{
  v1 = *(*(*(result + 48) + 24) + 152);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v1 + 80);
      if (*(v1 + 16))
      {
        v3 = v1;
      }

      else
      {
        result = ReturnFact(v2, v1);
        if (v3)
        {
          v5 = (v3 + 80);
        }

        else
        {
          v5 = (*(*(v2 + 48) + 24) + 152);
        }

        *v5 = v4;
      }

      v1 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t RemoveEphemeralAtoms(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(*(v1 + 440) + 112);
  if (*v2)
  {
    v3 = result;
    RemoveEphemeralHashNodes(result, (v2 + 16), *(*(v1 + 392) + 40), 0x20u, 2);
    RemoveEphemeralHashNodes(v3, (v2 + 24), *(*(*(v3 + 48) + 392) + 48), 0x20u, 0);
    RemoveEphemeralHashNodes(v3, (v2 + 32), *(*(*(v3 + 48) + 392) + 56), 0x20u, 1);
    RemoveEphemeralHashNodes(v3, (v2 + 40), *(*(*(v3 + 48) + 392) + 64), 0x28u, 39);
    v4 = *(*(*(v3 + 48) + 392) + 72);

    return RemoveEphemeralHashNodes(v3, (v2 + 48), v4, 0x28u, 5);
  }

  return result;
}

uint64_t RemoveEphemeralHashNodes(uint64_t result, void **a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = *a2;
  if (*a2)
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      v10 = *v5;
      v11 = v5[1];
      v12 = *(*v5 + 8);
      if (!v12)
      {
        break;
      }

      if (v12 >= 1)
      {
        *(v10 + 16) &= ~2u;
LABEL_23:
        v21 = *(v8 + 48);
        *(*(v21 + 472) + 32) = v5;
        **(*(v21 + 472) + 32) = *(*(*(v21 + 472) + 40) + 128);
        *(*(*(v21 + 472) + 40) + 128) = *(*(v21 + 472) + 32);
        v22 = v9 + 1;
        if (!v9)
        {
          v22 = a2;
        }

        *v22 = v11;
        goto LABEL_26;
      }

      v9 = v5;
LABEL_26:
      v5 = v11;
      if (!v11)
      {
        return result;
      }
    }

    v13 = (a3 + (*(v10 + 16) & 0xFFFFFFF8));
    v14 = *v13;
    if (*v13 == v10)
    {
      v14 = *v5;
    }

    else
    {
      do
      {
        v13 = v14;
        v14 = *v14;
        if (!v14)
        {
          SystemError(v8, "SYMBOL", 11);
          result = EnvExitRouter(v8, 1);
        }
      }

      while (v14 != v10);
    }

    *v13 = *v14;
    switch(a5)
    {
      case 39:
        v17 = *(v10 + 24);
        v15 = *(v10 + 32);
        v16 = v8;
        break;
      case 5:
        v18 = *(*(*(v8 + 48) + 352) + 8 * *(v10 + 32) + 1224);
        if (v18)
        {
          v19 = *(v18 + 24);
          if (v19)
          {
            result = v19(v8, *(v10 + 24));
          }
        }

        goto LABEL_22;
      case 2:
        v15 = strlen(*(v10 + 24)) + 1;
        v16 = v8;
        v17 = *(v10 + 24);
        break;
      default:
LABEL_22:
        v20 = *(v8 + 48);
        *(*(v20 + 472) + 32) = v10;
        **(*(v20 + 472) + 32) = *(*(*(v20 + 472) + 40) + 8 * a4);
        *(*(*(v20 + 472) + 40) + 8 * a4) = *(*(v20 + 472) + 32);
        goto LABEL_23;
    }

    result = rm(v16, v17, v15);
    goto LABEL_22;
  }

  return result;
}

uint64_t rm(uint64_t a1, void *ptr, unint64_t a3)
{
  if (a3)
  {
    if (a3 <= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = a3;
    }

    if (a3 >= 0x1F4)
    {
      EnvironmentZoneFree(ptr);
      result = 0;
      v7 = *(*(a1 + 48) + 472);
      v8 = v7[1] - 1;
      *v7 -= v5;
      v7[1] = v8;
      return result;
    }
  }

  else
  {
    SystemError(a1, "MEMORY", 1);
    EnvExitRouter(a1, 1);
    v5 = 8;
  }

  v9 = *(a1 + 48);
  *ptr = *(*(*(v9 + 472) + 40) + 8 * v5);
  *(*(*(v9 + 472) + 40) + 8 * v5) = ptr;
  return 1;
}

uint64_t FlushMultifields(uint64_t result)
{
  v1 = *(*(*(*(result + 48) + 440) + 112) + 56);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = v1[2];
      if (*v1)
      {
        v3 = v1;
        goto LABEL_14;
      }

      v5 = v1[1];
      if (v5)
      {
        v6 = 16 * v5 + 24;
      }

      else
      {
        v6 = 40;
      }

      v7 = *(v2 + 48);
      v8 = *(v7 + 472);
      *(v8 + 48) = v6;
      if (v6 > 0x1F3)
      {
        result = genfree(v2, v1, v6);
        if (v3)
        {
LABEL_10:
          v9 = v3 + 2;
          goto LABEL_13;
        }
      }

      else
      {
        *(v8 + 32) = v1;
        **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 8 * *(*(v7 + 472) + 48));
        *(*(*(v7 + 472) + 40) + 8 * *(*(v7 + 472) + 48)) = *(*(v7 + 472) + 32);
        if (v3)
        {
          goto LABEL_10;
        }
      }

      v9 = (*(*(*(v2 + 48) + 440) + 112) + 56);
LABEL_13:
      *v9 = v4;
      if (!v4)
      {
        *(*(*(*(v2 + 48) + 440) + 112) + 64) = v3;
        return result;
      }

LABEL_14:
      v1 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CallPeriodicTasks(uint64_t result)
{
  v1 = *(*(result + 48) + 440);
  if (*(v1 + 18))
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      do
      {
        v4 = *(v2 + 8);
        if (*(v2 + 32))
        {
          result = (v4)(v3);
        }

        else
        {
          result = v4();
        }

        v2 = *(v2 + 24);
      }

      while (v2);
    }
  }

  return result;
}

void EnvironmentZoneStatistics(size_t *a1, size_t *a2, size_t *a3)
{
  if (clips_malloc_zone && (a1 || a2 || a3))
  {
    memset(&v6, 0, sizeof(v6));
    malloc_zone_statistics(clips_malloc_zone, &v6);
    if (a1)
    {
      *a1 = v6.size_in_use;
    }

    if (a2)
    {
      *a2 = v6.max_size_in_use;
    }

    if (a3)
    {
      *a3 = v6.size_allocated;
    }
  }
}

void sub_23256F2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *outrankHandlerEventToString(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"ReallyUnknown";
  }

  else
  {
    return off_27898B0E0[a1];
  }
}

void sub_232570520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232570670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __symtrans_main_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x238389170](a2);
  if (v3 == MEMORY[0x277D86450])
  {
    v8 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "symtrans_main called, new connection\n", &v10, 2u);
    }

    my_client_handle_new(a2);
  }

  else
  {
    v4 = v3;
    v5 = MEMORY[0x277D86480];
    v6 = transportLogHandle;
    v7 = os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR);
    if (v4 == v5)
    {
      if (v7)
      {
        string = xpc_dictionary_get_string(a2, *MEMORY[0x277D86400]);
        v10 = 136315138;
        v11 = string;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Recieved XPC error: %s", &v10, 0xCu);
      }

      exit(71);
    }

    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "unknown message type", &v10, 2u);
    }
  }
}

void my_client_handle_new(void *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v2 = malloc_type_calloc(1uLL, 0x90uLL, 0xECFC7994uLL);
  if (!v2)
  {
    my_client_handle_new_cold_1(&buffer);
  }

  v33[3] = v2;
  v2[1] = a1;
  xpc_retain(a1);
  *v33[3] = clients;
  ++connection_seqno;
  v3 = v33[3];
  *(v3 + 120) = connection_seqno;
  xpc_connection_get_audit_token();
  v4 = v33[3];
  v5 = *(v3 + 52);
  *(v4 + 36) = *(v3 + 36);
  *(v4 + 52) = v5;
  v6 = xpc_connection_copy_entitlement_value();
  if (v6)
  {
    v7 = v6;
    value = xpc_BOOL_get_value(v6);
    *(v33[3] + 128) = value;
    xpc_release(v7);
    v9 = v33[3];
  }

  else
  {
    v9 = v33[3];
    *(v9 + 128) = 0;
  }

  euid = xpc_connection_get_euid(*(v9 + 8));
  v11 = v33[3];
  *(v11 + 72) = euid;
  egid = xpc_connection_get_egid(*(v11 + 8));
  v13 = v33[3];
  *(v13 + 76) = egid;
  pid = xpc_connection_get_pid(*(v13 + 8));
  v15 = v33[3];
  *(v15 + 68) = pid;
  asid = xpc_connection_get_asid(*(v15 + 8));
  audit_session_port(asid, (v33[3] + 88));
  buffer = 0u;
  memset(v37, 0, 48);
  v17 = proc_pidinfo(*(v33[3] + 68), 13, 1uLL, &buffer, 64);
  v18 = v33[3];
  if (v17 == 64)
  {
    v19 = 0;
    v20 = v18 + 16;
    while (1)
    {
      v21 = v37[v19];
      *(v20 + v19) = v21;
      if (!v21)
      {
        break;
      }

      if (++v19 == 16)
      {
        *(v20 + 16) = 0;
        break;
      }
    }
  }

  else
  {
    v22 = 0;
    *(v18 + 16) = 100;
    v23 = v18 + 17;
    do
    {
      *(v23 + v22) = aDeadProc[v22 + 1];
      ++v22;
    }

    while (v22 != 10);
  }

  v24 = v33[3];
  clients = v24;
  ++*(v24 + 80);
  v25 = *(v24 + 120);
  v26 = *(v24 + 68);
  v27 = *(v24 + 128);
  v28 = *(v24 + 52);
  v31[0] = *(v24 + 36);
  v31[1] = v28;
  v29 = symptomConnectionCreate(v24, v25, client_write, v31, v26, v24 + 16, v27);
  *(v33[3] + 136) = v29;
  xpc_connection_set_target_queue(a1, MEMORY[0x277D85CD0]);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __my_client_handle_new_block_invoke;
  handler[3] = &unk_27898F880;
  handler[4] = &v32;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
  _Block_object_dispose(&v32, 8);
}

TransportHandler *symptomConnectionCreate(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, char a7)
{
  v31 = *MEMORY[0x277D85DE8];
  if (symptomConnectionCreate_pred != -1)
  {
    symptomConnectionCreate_cold_1();
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", a2];
  v15 = [transportDictionary objectForKey:v14];

  if (v15)
  {
    v16 = transportLogHandle;
    if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "Duplicate entry for key %llu", buf, 0xCu);
    }

    v17 = 0;
  }

  else
  {
    v18 = objc_alloc_init(TransportHandler);
    v17 = v18;
    if (v18)
    {
      v19 = a4[1];
      *buf = *a4;
      *&buf[16] = v19;
      LOBYTE(v27) = a7;
      [(TransportHandler *)v18 connect:a1 connId:a2 writefn:a3 auditToken:buf pid:a5 name:a6 verifiedDelegateSymptom:v27];
      [transportDictionary setObject:v17 forKey:v14];
      v20 = transportLogHandle;
      if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = transportDictionary;
        v22 = v20;
        v23 = [v21 description];
        v24 = [v23 UTF8String];
        *buf = 134218754;
        *&buf[4] = a2;
        *&buf[12] = 2048;
        *&buf[14] = a5;
        *&buf[22] = 2080;
        *&buf[24] = a6;
        v29 = 2080;
        v30 = v24;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "symptomConnectionCreate for %llu, pid %llu  name %s dictionary %s", buf, 0x2Au);
      }
    }

    else
    {
      v25 = transportLogHandle;
      if (os_log_type_enabled(transportLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = a2;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "Failed to create  entry for key %llu", buf, 0xCu);
      }
    }
  }

  return v17;
}

uint64_t sub_23257392C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232573968()
{
  MEMORY[0x238388CD0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2325739A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t AWDSymptomsCellularSDMTimeStatisticsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v38 = 0;
          v39 = 0;
          v16 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            v50 = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50 & 0x7F) << v38;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v20 = v39++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__timestamp;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__timestamp;
          goto LABEL_75;
        }

        if (v13 == 2)
        {
          v23 = 0;
          v24 = 0;
          v16 = 0;
          *(a1 + 48) |= 0x10u;
          while (1)
          {
            v49 = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v49 & 0x7F) << v23;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v20 = v24++ > 8;
            if (v20)
            {
              v21 = 0;
              v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalTimeSeconds;
              goto LABEL_78;
            }
          }

          v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalTimeSeconds;
LABEL_75:
          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v16;
          }

LABEL_78:
          *(a1 + *v22) = v21;
          goto LABEL_79;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v16 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              v48 = 0;
              v30 = [a2 position] + 1;
              if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
              {
                v32 = [a2 data];
                [v32 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v48 & 0x7F) << v28;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v20 = v29++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalActiveTimeSeconds;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalActiveTimeSeconds;
            goto LABEL_75;
          case 4:
            v33 = 0;
            v34 = 0;
            v16 = 0;
            *(a1 + 48) |= 8u;
            while (1)
            {
              v47 = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                v37 = [a2 data];
                [v37 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v47 & 0x7F) << v33;
              if ((v47 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v20 = v34++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalQuiesceTimeSeconds;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalQuiesceTimeSeconds;
            goto LABEL_75;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              v46 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v46 & 0x7F) << v14;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v20 = v15++ > 8;
              if (v20)
              {
                v21 = 0;
                v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalInferredSleepTimeSeconds;
                goto LABEL_78;
              }
            }

            v22 = &OBJC_IVAR___AWDSymptomsCellularSDMTimeStatistics__totalInferredSleepTimeSeconds;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_79:
      v43 = [a2 position];
    }

    while (v43 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsCellularSDMPollingStatisticsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50[0] & 0x7F) << v5;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v38 = [a2 position] + 1;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
            {
              v40 = [a2 data];
              [v40 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v37 |= (v50[0] & 0x7F) << v35;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v11 = v36++ >= 9;
            if (v11)
            {
              v41 = 0;
              goto LABEL_78;
            }
          }

          if ([a2 hasError])
          {
            v41 = 0;
          }

          else
          {
            v41 = v37;
          }

LABEL_78:
          *(a1 + 48) = v41;
          goto LABEL_91;
        }

        if (v13 == 4)
        {
          if ((v12 & 7) == 2)
          {
            v50[0] = 0;
            v50[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v22 = [a2 position];
              if (v22 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v23 = 0;
              v24 = 0;
              v25 = 0;
              while (1)
              {
                v51 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v51 & 0x7F) << v23;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  goto LABEL_45;
                }
              }

              [a2 hasError];
LABEL_45:
              PBRepeatedUInt32Add();
            }

            PBReaderRecallMark();
          }

          else
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            while (1)
            {
              LOBYTE(v50[0]) = 0;
              v46 = [a2 position] + 1;
              if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
              {
                v48 = [a2 data];
                [v48 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v45 |= (v50[0] & 0x7F) << v43;
              if ((v50[0] & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              v11 = v44++ >= 9;
              if (v11)
              {
                goto LABEL_90;
              }
            }

            [a2 hasError];
LABEL_90:
            PBRepeatedUInt32Add();
          }

          goto LABEL_91;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v50[0] & 0x7F) << v29;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_73:
          v42 = 40;
          goto LABEL_74;
        }

        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 52) |= 1u;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v50 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v50[0] & 0x7F) << v14;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_69:
          v42 = 32;
LABEL_74:
          *(a1 + v42) = v20;
          goto LABEL_91;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_91:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsNetworkUsageAttributionMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v50 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v50 & 0x7F) << v5;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_92;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v55 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v55 & 0x7F) << v21;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_90;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_90:
          v47 = 32;
          goto LABEL_91;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v53 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v53 & 0x7F) << v40;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v42;
        }

LABEL_81:
        v48 = 16;
      }

      else
      {
        switch(v13)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 40) |= 0x10u;
            while (1)
            {
              v54 = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v54 & 0x7F) << v28;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v30;
            }

LABEL_73:
            v47 = 36;
LABEL_91:
            *(a1 + v47) = v27;
            goto LABEL_92;
          case 4:
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v52 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v52 & 0x7F) << v34;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_77;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v36;
            }

LABEL_77:
            v48 = 24;
            break;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v51 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v51 & 0x7F) << v14;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_85:
            v48 = 8;
            break;
          default:
            goto LABEL_68;
        }
      }

      *(a1 + v48) = v20;
LABEL_92:
      v49 = [a2 position];
    }

    while (v49 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDSymptomsNetworkLoadedLinkQualityMetricReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v78 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v78 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v78 & 0x7F) << v5;
        if ((v78 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              v79 = 0;
              v43 = [a2 position] + 1;
              if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
              {
                v45 = [a2 data];
                [v45 getBytes:&v79 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v42 |= (v79 & 0x7F) << v40;
              if ((v79 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              v11 = v41++ >= 9;
              if (v11)
              {
                v46 = 0;
                goto LABEL_120;
              }
            }

            if ([a2 hasError])
            {
              v46 = 0;
            }

            else
            {
              v46 = v42;
            }

LABEL_120:
            *(a1 + 8) = v46;
            goto LABEL_149;
          }

          if (v13 != 2)
          {
LABEL_115:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_149;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          *(a1 + 60) |= 0x20u;
          while (1)
          {
            v83 = 0;
            v37 = [a2 position] + 1;
            if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
            {
              v39 = [a2 data];
              [v39 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v36 |= (v83 & 0x7F) << v34;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v11 = v35++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_124;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v36;
          }

LABEL_124:
          v75 = 40;
          goto LABEL_148;
        }

        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            *(a1 + 60) |= 0x10u;
            while (1)
            {
              v82 = 0;
              v50 = [a2 position] + 1;
              if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
              {
                v52 = [a2 data];
                [v52 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v49 |= (v82 & 0x7F) << v47;
              if ((v82 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              v11 = v48++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_128;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v49;
            }

LABEL_128:
            v75 = 28;
          }

          else
          {
            if (v13 != 5)
            {
              goto LABEL_115;
            }

            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 60) |= 4u;
            while (1)
            {
              v81 = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v81 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v81 & 0x7F) << v21;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_136;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_136:
            v75 = 20;
          }

          goto LABEL_148;
        }

        v65 = PBReaderReadString();
        v66 = 32;
      }

      else
      {
        if (v13 > 8)
        {
          switch(v13)
          {
            case 9:
              v68 = 0;
              v69 = 0;
              v70 = 0;
              *(a1 + 60) |= 8u;
              while (1)
              {
                v80 = 0;
                v71 = [a2 position] + 1;
                if (v71 >= [a2 position] && (v72 = objc_msgSend(a2, "position") + 1, v72 <= objc_msgSend(a2, "length")))
                {
                  v73 = [a2 data];
                  [v73 getBytes:&v80 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v70 |= (v80 & 0x7F) << v68;
                if ((v80 & 0x80) == 0)
                {
                  break;
                }

                v68 += 7;
                v11 = v69++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_147;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v70;
              }

LABEL_147:
              v75 = 24;
LABEL_148:
              *(a1 + v75) = v20;
              goto LABEL_149;
            case 0xA:
              v59 = 0;
              v60 = 0;
              v61 = 0;
              *(a1 + 60) |= 0x80u;
              while (1)
              {
                v85 = 0;
                v62 = [a2 position] + 1;
                if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
                {
                  v64 = [a2 data];
                  [v64 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v61 |= (v85 & 0x7F) << v59;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                v11 = v60++ >= 9;
                if (v11)
                {
                  LOBYTE(v33) = 0;
                  goto LABEL_132;
                }
              }

              v33 = (v61 != 0) & ~[a2 hasError];
LABEL_132:
              v76 = 57;
              break;
            case 0xB:
              v27 = 0;
              v28 = 0;
              v29 = 0;
              *(a1 + 60) |= 0x40u;
              while (1)
              {
                v84 = 0;
                v30 = [a2 position] + 1;
                if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
                {
                  v32 = [a2 data];
                  [v32 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v29 |= (v84 & 0x7F) << v27;
                if ((v84 & 0x80) == 0)
                {
                  break;
                }

                v27 += 7;
                v11 = v28++ >= 9;
                if (v11)
                {
                  LOBYTE(v33) = 0;
                  goto LABEL_142;
                }
              }

              v33 = (v29 != 0) & ~[a2 hasError];
LABEL_142:
              v76 = 56;
              break;
            default:
              goto LABEL_115;
          }

          goto LABEL_143;
        }

        if (v13 != 6)
        {
          if (v13 != 7)
          {
            if (v13 != 8)
            {
              goto LABEL_115;
            }

            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              v87 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v87 & 0x7F) << v14;
              if ((v87 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_140;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_140:
            v75 = 16;
            goto LABEL_148;
          }

          v53 = 0;
          v54 = 0;
          v55 = 0;
          *(a1 + 60) |= 0x100u;
          while (1)
          {
            v86 = 0;
            v56 = [a2 position] + 1;
            if (v56 >= [a2 position] && (v57 = objc_msgSend(a2, "position") + 1, v57 <= objc_msgSend(a2, "length")))
            {
              v58 = [a2 data];
              [v58 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v55 |= (v86 & 0x7F) << v53;
            if ((v86 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            v11 = v54++ >= 9;
            if (v11)
            {
              LOBYTE(v33) = 0;
              goto LABEL_130;
            }
          }

          v33 = (v55 != 0) & ~[a2 hasError];
LABEL_130:
          v76 = 58;
LABEL_143:
          *(a1 + v76) = v33;
          goto LABEL_149;
        }

        v65 = PBReaderReadString();
        v66 = 48;
      }

      v67 = *(a1 + v66);
      *(a1 + v66) = v65;

LABEL_149:
      v77 = [a2 position];
    }

    while (v77 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id measureLaunchXPCHandle(uint64_t a1)
{
  if (measureLaunchXPCHandle_launchXPCToken != -1)
  {
    measureLaunchXPCHandle_cold_1();
  }

  v2 = measureLaunchXPCHandle_launchXPCHandle;

  return v2;
}

uint64_t __measureLaunchXPCHandle_block_invoke()
{
  v0 = os_log_create("com.apple.symptomsd", "measure.launch_xpc");
  v1 = measureLaunchXPCHandle_launchXPCHandle;
  measureLaunchXPCHandle_launchXPCHandle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void initializeActivityMeasurements(uint64_t a1)
{
  v1 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    initializeActivityMeasurements_cold_1();
  }

  if (initializeActivityMeasurements_initToken != -1)
  {
    initializeActivityMeasurements_cold_2();
  }
}

void __initializeActivityMeasurements_block_invoke()
{
  prelaunch_lock = 0;
  launchseq_lock = 0;
  submission_lock = 0;
  _prelaunchActivityMeasurements = 0;
  _launchSequenceActivityMeasurements = 0;
}

void allocateMeasurementType(uint64_t a1)
{
  v1 = a1;
  v2 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    allocateMeasurementType_cold_1();
  }

  if (v1 == 2)
  {
    v7 = _launchSequenceActivityMeasurements;
    v8 = measureLaunchXPCHandle(v3);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        allocateMeasurementType_cold_2();
      }
    }

    else
    {
      if (v9)
      {
        allocateMeasurementType_cold_3();
      }

      v13 = malloc_type_calloc(1uLL, 0x78uLL, 0xF1B66A0uLL);
      if (!v13)
      {
        goto LABEL_27;
      }

      _launchSequenceActivityMeasurements = v13;
      v8 = measureLaunchXPCHandle(v13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        allocateMeasurementType_cold_4();
      }
    }

    v12 = measureLaunchXPCHandle(v14);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      allocateMeasurementType_cold_5();
    }

    goto LABEL_25;
  }

  if (v1 != 1)
  {
    return;
  }

  v4 = _prelaunchActivityMeasurements;
  v5 = measureLaunchXPCHandle(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (!v4)
  {
    if (v6)
    {
      allocateMeasurementType_cold_7();
    }

    v10 = malloc_type_calloc(1uLL, 0x28uLL, 0xB6390474uLL);
    if (v10)
    {
      _prelaunchActivityMeasurements = v10;
      v5 = measureLaunchXPCHandle(v10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        allocateMeasurementType_cold_8();
      }

      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    return;
  }

  if (v6)
  {
    allocateMeasurementType_cold_6();
  }

LABEL_16:

  v12 = measureLaunchXPCHandle(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    allocateMeasurementType_cold_9();
  }

LABEL_25:
}

void destroyMeasurementType(uint64_t a1)
{
  v1 = a1;
  v2 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    destroyMeasurementType_cold_1();
  }

  if (v1 == 2)
  {
    v3 = &launchseq_lock;
    v4 = &__block_literal_global_58;
  }

  else
  {
    if (v1 != 1)
    {
      return;
    }

    v3 = &prelaunch_lock;
    v4 = &__block_literal_global_55;
  }

  sf_synchronize(v3, v4);
}

void __destroyMeasurementType_block_invoke(uint64_t a1)
{
  if (_prelaunchActivityMeasurements)
  {
    v1 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __destroyMeasurementType_block_invoke_cold_1();
    }

    if (_prelaunchActivityMeasurements)
    {
      free(_prelaunchActivityMeasurements);
    }

    _prelaunchActivityMeasurements = 0;
  }
}

void __destroyMeasurementType_block_invoke_56(uint64_t a1)
{
  if (_launchSequenceActivityMeasurements)
  {
    v1 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
    {
      __destroyMeasurementType_block_invoke_56_cold_1();
    }

    if (_launchSequenceActivityMeasurements)
    {
      free(_launchSequenceActivityMeasurements);
    }

    _launchSequenceActivityMeasurements = 0;
  }
}

void destroyAllMeasurementTypes()
{
  destroyMeasurementType(1);

  destroyMeasurementType(2);
}

uint64_t getMeasurement(uint64_t a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    getMeasurement_cold_1(v3, a2, v4);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (v3 == 2)
  {
    v5 = v10;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v6 = &launchseq_lock;
    v7 = __getMeasurement_block_invoke_59;
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v5 = v11;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v6 = &prelaunch_lock;
    v7 = __getMeasurement_block_invoke;
LABEL_7:
    v5[2] = v7;
    v5[3] = &unk_278989F50;
    *(v5 + 40) = a2;
    v5[4] = &v12;
    sf_synchronize(v6, v5);
  }

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __getMeasurement_block_invoke(uint64_t a1)
{
  if (_prelaunchActivityMeasurements)
  {
    v3 = *(a1 + 40);
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v4 = *(_prelaunchActivityMeasurements + 8);
        goto LABEL_17;
      }

      if (v3 == 2)
      {
        v4 = *(_prelaunchActivityMeasurements + 16);
        goto LABEL_17;
      }
    }

    else
    {
      switch(v3)
      {
        case 3u:
          v4 = *(_prelaunchActivityMeasurements + 24);
          goto LABEL_17;
        case 4u:
          v4 = *(_prelaunchActivityMeasurements + 32);
          goto LABEL_17;
        case 0xFFu:
          v4 = *_prelaunchActivityMeasurements;
LABEL_17:
          *(*(*(a1 + 32) + 8) + 24) = v4;
          break;
      }
    }
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v5 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "> getMeasurement : _prelaunchActivityMeasurements is NULL", v6, 2u);
    }
  }
}

void __getMeasurement_block_invoke_59(uint64_t a1)
{
  if (_launchSequenceActivityMeasurements)
  {
    switch(*(a1 + 40))
    {
      case 1:
        v3 = *(_launchSequenceActivityMeasurements + 8);
        goto LABEL_23;
      case 2:
        v3 = *(_launchSequenceActivityMeasurements + 16);
        goto LABEL_23;
      case 3:
        v3 = *(_launchSequenceActivityMeasurements + 24);
        goto LABEL_23;
      case 4:
        v3 = *(_launchSequenceActivityMeasurements + 32);
        goto LABEL_23;
      case 5:
        v3 = *(_launchSequenceActivityMeasurements + 40);
        goto LABEL_23;
      case 6:
        v3 = *(_launchSequenceActivityMeasurements + 48);
        goto LABEL_23;
      case 7:
        v3 = *(_launchSequenceActivityMeasurements + 56);
        goto LABEL_23;
      case 8:
        v3 = *(_launchSequenceActivityMeasurements + 64);
        goto LABEL_23;
      case 9:
        v3 = *(_launchSequenceActivityMeasurements + 72);
        goto LABEL_23;
      case 0xA:
        v3 = *(_launchSequenceActivityMeasurements + 80);
        goto LABEL_23;
      case 0xB:
        v3 = *(_launchSequenceActivityMeasurements + 88);
        goto LABEL_23;
      case 0xC:
        v3 = *(_launchSequenceActivityMeasurements + 96);
        goto LABEL_23;
      case 0xD:
        v3 = *(_launchSequenceActivityMeasurements + 104);
        goto LABEL_23;
      case 0xE:
        v3 = *(_launchSequenceActivityMeasurements + 112);
        goto LABEL_23;
      default:
        if (*(a1 + 40) != 255)
        {
          return;
        }

        v3 = *_launchSequenceActivityMeasurements;
LABEL_23:
        *(*(*(a1 + 32) + 8) + 24) = v3;
        break;
    }
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "> getMeasurement : _launchSequenceActivityMeasurements is NULL", v5, 2u);
    }
  }
}

void setMeasurement(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v19 = *MEMORY[0x277D85DE8];
  v6 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v14 = v5;
    v15 = 1024;
    v16 = a2;
    v17 = 2048;
    v18 = a3;
    _os_log_debug_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "setMeasurement : type:%d event:%d value:%llu", buf, 0x18u);
  }

  if (v5 == 2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __setMeasurement_block_invoke_60;
    v9[3] = &__block_descriptor_41_e5_v8__0l;
    v10 = a2;
    v9[4] = a3;
    v7 = &launchseq_lock;
    v8 = v9;
  }

  else
  {
    if (v5 != 1)
    {
      return;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __setMeasurement_block_invoke;
    v11[3] = &__block_descriptor_41_e5_v8__0l;
    v12 = a2;
    v11[4] = a3;
    v7 = &prelaunch_lock;
    v8 = v11;
  }

  sf_synchronize(v7, v8);
}

void __setMeasurement_block_invoke(uint64_t a1)
{
  v2 = _prelaunchActivityMeasurements;
  if (_prelaunchActivityMeasurements || (allocateMeasurementType(1), (v2 = _prelaunchActivityMeasurements) != 0))
  {
    v4 = *(a1 + 40);
    if (v4 <= 2)
    {
      if (v4 == 1)
      {
        *(v2 + 8) = *(a1 + 32);
      }

      else if (v4 == 2)
      {
        *(v2 + 16) = *(a1 + 32);
      }
    }

    else
    {
      switch(v4)
      {
        case 3u:
          *(v2 + 24) = *(a1 + 32);
          break;
        case 4u:
          *(v2 + 32) = *(a1 + 32);
          break;
        case 0xFFu:
          *v2 = *(a1 + 32) != 0;
          break;
      }
    }
  }

  else
  {
    v5 = measureLaunchXPCHandle(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __setMeasurement_block_invoke_cold_1(v5);
    }
  }
}

void __setMeasurement_block_invoke_60(uint64_t a1)
{
  v2 = _launchSequenceActivityMeasurements;
  if (_launchSequenceActivityMeasurements || (allocateMeasurementType(2), (v2 = _launchSequenceActivityMeasurements) != 0))
  {
    switch(*(a1 + 40))
    {
      case 1:
        *(v2 + 8) = *(a1 + 32);
        break;
      case 2:
        *(v2 + 16) = *(a1 + 32);
        break;
      case 3:
        *(v2 + 24) = *(a1 + 32);
        break;
      case 4:
        *(v2 + 32) = *(a1 + 32);
        break;
      case 5:
        *(v2 + 40) = *(a1 + 32);
        break;
      case 6:
        *(v2 + 48) = *(a1 + 32);
        break;
      case 7:
        *(v2 + 56) = *(a1 + 32);
        break;
      case 8:
        *(v2 + 64) = *(a1 + 32);
        break;
      case 9:
        *(v2 + 72) = *(a1 + 32);
        break;
      case 0xA:
        *(v2 + 80) = *(a1 + 32);
        break;
      case 0xB:
        *(v2 + 88) = *(a1 + 32);
        break;
      case 0xC:
        *(v2 + 96) = *(a1 + 32);
        break;
      case 0xD:
        *(v2 + 104) = *(a1 + 32);
        break;
      case 0xE:
        *(v2 + 112) = *(a1 + 32);
        break;
      default:
        if (*(a1 + 40) == 255)
        {
          *v2 = *(a1 + 32) != 0;
        }

        break;
    }
  }

  else
  {
    v4 = measureLaunchXPCHandle(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __setMeasurement_block_invoke_60_cold_1(v4);
    }
  }
}

void markMeasurement(uint64_t a1, int a2)
{
  v4 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);

  setMeasurement(a1, a2, v4);
}

void logLaunchSequenceEventTimeline(unint64_t a1)
{
  v116 = *MEMORY[0x277D85DE8];
  if (_prelaunchActivityMeasurements)
  {
    v1 = *(_prelaunchActivityMeasurements + 8);
    if (v1)
    {
      v2 = measureLaunchXPCHandle(a1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = "";
        if (*_launchSequenceActivityMeasurements)
        {
          v4 = " - [first unlock]";
        }

        else
        {
          v4 = "";
        }

        if (*_prelaunchActivityMeasurements)
        {
          v3 = " (helper)";
        }

        v112 = 136315394;
        v113 = v4;
        v114 = 2080;
        v115 = v3;
        _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "== Prelaunch Event Timeline%s%s ==", &v112, 0x16u);
      }

      v5 = _prelaunchActivityMeasurements;
      v6 = *(_prelaunchActivityMeasurements + 16);
      if (v6)
      {
        v7 = millisecondsFromBaselineNanosecondTime(v6, v1);
        v8 = measureLaunchXPCHandle(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v7;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "  Launchpad initialization: %lldms", &v112, 0xCu);
        }

        v5 = _prelaunchActivityMeasurements;
        v9 = *(_prelaunchActivityMeasurements + 16);
        if (v9)
        {
          v10 = *(_prelaunchActivityMeasurements + 8);
          if (v10)
          {
            v11 = millisecondsFromBaselineNanosecondTime(v9, v10);
            v12 = measureLaunchXPCHandle(v11);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v112 = 134217984;
              v113 = v11;
              _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "+ Launchpad initialization interval: %lldms", &v112, 0xCu);
            }

            v5 = _prelaunchActivityMeasurements;
          }
        }
      }

      v13 = *(v5 + 24);
      if (v13)
      {
        v14 = millisecondsFromBaselineNanosecondTime(v13, v1);
        v15 = measureLaunchXPCHandle(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v14;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "  XPCListener initialization: %lldms", &v112, 0xCu);
        }

        v5 = _prelaunchActivityMeasurements;
        v16 = *(_prelaunchActivityMeasurements + 24);
        if (v16)
        {
          v17 = *(_prelaunchActivityMeasurements + 16);
          if (v17)
          {
            v18 = millisecondsFromBaselineNanosecondTime(v16, v17);
            v19 = measureLaunchXPCHandle(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v112 = 134217984;
              v113 = v18;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "+ XPCListener initialization interval: %lldms", &v112, 0xCu);
            }

            v5 = _prelaunchActivityMeasurements;
          }
        }
      }

      a1 = *(v5 + 32);
      if (a1)
      {
        v20 = millisecondsFromBaselineNanosecondTime(a1, v1);
        v21 = measureLaunchXPCHandle(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v20;
          _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "  First-unlock check: %lldms", &v112, 0xCu);
        }

        v22 = _prelaunchActivityMeasurements;
        a1 = *(_prelaunchActivityMeasurements + 32);
        if (a1)
        {
          v23 = *(_prelaunchActivityMeasurements + 24);
          if (!v23)
          {
            goto LABEL_34;
          }

          v24 = millisecondsFromBaselineNanosecondTime(a1, v23);
          v25 = measureLaunchXPCHandle(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v24;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "+ First-unlock check interval: %lldms", &v112, 0xCu);
          }

          v22 = _prelaunchActivityMeasurements;
          a1 = *(_prelaunchActivityMeasurements + 32);
          if (a1)
          {
LABEL_34:
            v26 = *(v22 + 8);
            if (v26)
            {
              v27 = millisecondsFromBaselineNanosecondTime(a1, v26);
              v28 = measureLaunchXPCHandle(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v112 = 134217984;
                v113 = v27;
                _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_DEFAULT, "+ Total Prelaunch sequence interval: %lldms", &v112, 0xCu);
              }
            }
          }
        }
      }
    }
  }

  v29 = 16;
  if (*_launchSequenceActivityMeasurements)
  {
    v29 = 8;
  }

  v30 = *(_launchSequenceActivityMeasurements + v29);
  if (v30)
  {
    v31 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = "";
      if (*_launchSequenceActivityMeasurements)
      {
        v33 = " - [first unlock]";
      }

      else
      {
        v33 = "";
      }

      if (*_prelaunchActivityMeasurements)
      {
        v32 = " (helper)";
      }

      v112 = 136315394;
      v113 = v33;
      v114 = 2080;
      v115 = v32;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "== LaunchSequence Event Timeline%s%s ==", &v112, 0x16u);
    }

    v35 = _launchSequenceActivityMeasurements;
    if (*_launchSequenceActivityMeasurements == 1)
    {
      v36 = measureLaunchXPCHandle(v34);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *_launchSequenceActivityMeasurements;
        v112 = 67109120;
        LODWORD(v113) = v37;
        _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_DEFAULT, "  IsFirstUnlock: %{BOOL}d", &v112, 8u);
      }

      v35 = _launchSequenceActivityMeasurements;
    }

    v38 = *(v35 + 96);
    if (v38)
    {
      v39 = millisecondsFromBaselineNanosecondTime(v38, v30);
      v40 = measureLaunchXPCHandle(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v39;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "  NOI Engine allocate: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
    }

    v41 = *(v35 + 104);
    if (v41)
    {
      v42 = millisecondsFromBaselineNanosecondTime(v41, v30);
      v43 = measureLaunchXPCHandle(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v42;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEFAULT, "  NOI Engine initialized: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v44 = *(_launchSequenceActivityMeasurements + 104);
      if (v44)
      {
        v45 = *(_launchSequenceActivityMeasurements + 96);
        if (v45)
        {
          v46 = millisecondsFromBaselineNanosecondTime(v44, v45);
          v47 = measureLaunchXPCHandle(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v46;
            _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEFAULT, "+ NOIEngine initialization interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    if (*v35 == 1)
    {
      v48 = *(v35 + 16);
      if (v48)
      {
        v49 = millisecondsFromBaselineNanosecondTime(v48, v30);
        v50 = measureLaunchXPCHandle(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v49;
          _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEFAULT, "  Handled unlock checkpoint: %lldms", &v112, 0xCu);
        }

        v35 = _launchSequenceActivityMeasurements;
        v51 = *(_launchSequenceActivityMeasurements + 16);
        if (v51)
        {
          v52 = *(_launchSequenceActivityMeasurements + 8);
          if (v52)
          {
            v53 = millisecondsFromBaselineNanosecondTime(v51, v52);
            v54 = measureLaunchXPCHandle(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v112 = 134217984;
              v113 = v53;
              _os_log_impl(&dword_23255B000, v54, OS_LOG_TYPE_DEFAULT, "+ First unlock processing interval: %lldms", &v112, 0xCu);
            }

            v35 = _launchSequenceActivityMeasurements;
          }
        }
      }
    }

    v55 = *(v35 + 32);
    if (v55)
    {
      v56 = *(v35 + 16);
      if (!v56)
      {
        goto LABEL_78;
      }

      v57 = millisecondsFromBaselineNanosecondTime(v55, v56);
      v58 = measureLaunchXPCHandle(v57);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v57;
        _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEFAULT, "+ Launch sequence dispatch interval: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v55 = *(_launchSequenceActivityMeasurements + 32);
      if (v55)
      {
LABEL_78:
        v59 = millisecondsFromBaselineNanosecondTime(v55, v30);
        v60 = measureLaunchXPCHandle(v59);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v59;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEFAULT, "  Begin workspace initialization: %lldms", &v112, 0xCu);
        }

        v35 = _launchSequenceActivityMeasurements;
      }
    }

    v61 = *(v35 + 40);
    if (v61)
    {
      v62 = millisecondsFromBaselineNanosecondTime(v61, v30);
      v63 = measureLaunchXPCHandle(v62);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v62;
        _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_DEFAULT, "  End workspace initialization: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v64 = *(_launchSequenceActivityMeasurements + 40);
      if (v64)
      {
        v65 = *(_launchSequenceActivityMeasurements + 32);
        if (v65)
        {
          v66 = millisecondsFromBaselineNanosecondTime(v64, v65);
          v67 = measureLaunchXPCHandle(v66);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v66;
            _os_log_impl(&dword_23255B000, v67, OS_LOG_TYPE_DEFAULT, "+ Workspace initialization interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v68 = *(v35 + 48);
    if (v68)
    {
      v69 = millisecondsFromBaselineNanosecondTime(v68, v30);
      v70 = measureLaunchXPCHandle(v69);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v69;
        _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEFAULT, "  Begin persistence initialization: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
    }

    v71 = *(v35 + 56);
    if (v71)
    {
      v72 = millisecondsFromBaselineNanosecondTime(v71, v30);
      v73 = measureLaunchXPCHandle(v72);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v72;
        _os_log_impl(&dword_23255B000, v73, OS_LOG_TYPE_DEFAULT, "  End persistence initialization: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v74 = *(_launchSequenceActivityMeasurements + 56);
      if (v74)
      {
        v75 = *(_launchSequenceActivityMeasurements + 48);
        if (v75)
        {
          v76 = millisecondsFromBaselineNanosecondTime(v74, v75);
          v77 = measureLaunchXPCHandle(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v76;
            _os_log_impl(&dword_23255B000, v77, OS_LOG_TYPE_DEFAULT, "+ Persistence initialization interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v78 = *(v35 + 64);
    if (v78)
    {
      v79 = millisecondsFromBaselineNanosecondTime(v78, v30);
      v80 = measureLaunchXPCHandle(v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v79;
        _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_DEFAULT, "  Flow Engine allocate: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
    }

    v81 = *(v35 + 72);
    if (v81)
    {
      v82 = millisecondsFromBaselineNanosecondTime(v81, v30);
      v83 = measureLaunchXPCHandle(v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v82;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_DEFAULT, "  Flow Engine initialized: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v84 = *(_launchSequenceActivityMeasurements + 72);
      if (v84)
      {
        v85 = *(_launchSequenceActivityMeasurements + 64);
        if (v85)
        {
          v86 = millisecondsFromBaselineNanosecondTime(v84, v85);
          v87 = measureLaunchXPCHandle(v86);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v86;
            _os_log_impl(&dword_23255B000, v87, OS_LOG_TYPE_DEFAULT, "+ Flow Engine initialization interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v88 = *(v35 + 80);
    if (v88)
    {
      v89 = millisecondsFromBaselineNanosecondTime(v88, v30);
      v90 = measureLaunchXPCHandle(v89);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v89;
        _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_DEFAULT, "  Network Engine allocate: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
    }

    v91 = *(v35 + 88);
    if (v91)
    {
      v92 = millisecondsFromBaselineNanosecondTime(v91, v30);
      v93 = measureLaunchXPCHandle(v92);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v92;
        _os_log_impl(&dword_23255B000, v93, OS_LOG_TYPE_DEFAULT, "  Network Engine initialized: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v94 = *(_launchSequenceActivityMeasurements + 88);
      if (v94)
      {
        v95 = *(_launchSequenceActivityMeasurements + 80);
        if (v95)
        {
          v96 = millisecondsFromBaselineNanosecondTime(v94, v95);
          v97 = measureLaunchXPCHandle(v96);
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v96;
            _os_log_impl(&dword_23255B000, v97, OS_LOG_TYPE_DEFAULT, "+ Network Engine initialization interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v98 = *(v35 + 112);
    if (v98)
    {
      v99 = millisecondsFromBaselineNanosecondTime(v98, v30);
      v100 = measureLaunchXPCHandle(v99);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v112 = 134217984;
        v113 = v99;
        _os_log_impl(&dword_23255B000, v100, OS_LOG_TYPE_DEFAULT, "  XPC checkpoint ready: %lldms", &v112, 0xCu);
      }

      v35 = _launchSequenceActivityMeasurements;
      v101 = *(_launchSequenceActivityMeasurements + 112);
      if (v101)
      {
        v102 = *(_launchSequenceActivityMeasurements + 104);
        if (v102)
        {
          v103 = millisecondsFromBaselineNanosecondTime(v101, v102);
          v104 = measureLaunchXPCHandle(v103);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v103;
            _os_log_impl(&dword_23255B000, v104, OS_LOG_TYPE_DEFAULT, "+ XPC checkpoint dispatch interval: %lldms", &v112, 0xCu);
          }

          v35 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v105 = *(v35 + 112);
    if (*v35 == 1)
    {
      if (v105)
      {
        v106 = *(v35 + 8);
        if (v106)
        {
          v107 = millisecondsFromBaselineNanosecondTime(v105, v106);
          v108 = measureLaunchXPCHandle(v107);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v112 = 134217984;
            v113 = v107;
            v109 = "+ Total Launch sequence (first unlock) interval: %lldms";
LABEL_142:
            _os_log_impl(&dword_23255B000, v108, OS_LOG_TYPE_DEFAULT, v109, &v112, 0xCu);
            goto LABEL_143;
          }

          goto LABEL_143;
        }
      }
    }

    else if (v105)
    {
      v110 = *(v35 + 16);
      if (v110)
      {
        v111 = millisecondsFromBaselineNanosecondTime(v105, v110);
        v108 = measureLaunchXPCHandle(v111);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          v112 = 134217984;
          v113 = v111;
          v109 = "+ Total Launch sequence (unlocked) interval: %lldms";
          goto LABEL_142;
        }

LABEL_143:
      }
    }
  }
}

id analyticsDictionaryForPrelaunchSequence(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(_prelaunchActivityMeasurements + 8);
  v2 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    analyticsDictionaryForPrelaunchSequence_cold_1();
  }

  if (v1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = measureLaunchXPCHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v46) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Populating CoreAnalytics metrics for PrelaunchSequence measurements", &v46, 2u);
    }

    v6 = [MEMORY[0x277CCABB0] numberWithBool:*_launchSequenceActivityMeasurements];
    [v4 setObject:v6 forKeyedSubscript:CAPreLaunchEvent_IsFirstUnlock];

    v8 = measureLaunchXPCHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *_launchSequenceActivityMeasurements;
      v46 = 67109120;
      LODWORD(v47) = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "IsFirstUnlock: %{BOOL}d", &v46, 8u);
    }

    v10 = [MEMORY[0x277CCABB0] numberWithBool:*_prelaunchActivityMeasurements];
    [v4 setObject:v10 forKeyedSubscript:CAPreLaunchEvent_IsHelper];

    v12 = measureLaunchXPCHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *_prelaunchActivityMeasurements;
      v46 = 67109120;
      LODWORD(v47) = v13;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "IsHelper: %{BOOL}d", &v46, 8u);
    }

    v14 = _prelaunchActivityMeasurements;
    v15 = *(_prelaunchActivityMeasurements + 16);
    if (v15)
    {
      v16 = *(_prelaunchActivityMeasurements + 8);
      if (v16)
      {
        v17 = millisecondsFromBaselineNanosecondTime(v15, v16);
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
        [v4 setObject:v18 forKeyedSubscript:CAPrelaunchInterval_LaunchpadInitialization];

        v20 = measureLaunchXPCHandle(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v46 = 134217984;
          v47 = v17;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "Launchpad initialization: %llums", &v46, 0xCu);
        }

        v14 = _prelaunchActivityMeasurements;
      }
    }

    v21 = v14[3];
    if (v21)
    {
      v22 = v14[2];
      if (v22)
      {
        v23 = millisecondsFromBaselineNanosecondTime(v21, v22);
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
        [v4 setObject:v24 forKeyedSubscript:CAPrelaunchInterval_XPCListenerInitialization];

        v26 = measureLaunchXPCHandle(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v46 = 134217984;
          v47 = v23;
          _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "XPCListener initialization: %llums", &v46, 0xCu);
        }

        v14 = _prelaunchActivityMeasurements;
      }
    }

    v27 = v14[4];
    if (v27)
    {
      v28 = v14[3];
      if (v28)
      {
        v29 = millisecondsFromBaselineNanosecondTime(v27, v28);
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29];
        [v4 setObject:v30 forKeyedSubscript:CAPrelaunchInterval_FirstUnlockCheck];

        v32 = measureLaunchXPCHandle(v31);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v46 = 134217984;
          v47 = v29;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_INFO, "First-unlock check: %llums", &v46, 0xCu);
        }
      }
    }

    v33 = *(_prelaunchActivityMeasurements + 32);
    if (*_launchSequenceActivityMeasurements == 1)
    {
      if (v33)
      {
        v34 = *(_prelaunchActivityMeasurements + 8);
        if (v34)
        {
          v35 = millisecondsFromBaselineNanosecondTime(v33, v34);
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v35];
          [v4 setObject:v36 forKeyedSubscript:CAPrelaunchInterval_TotalPrelaunchToUnlockCheck];

          v38 = measureLaunchXPCHandle(v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v46 = 134217984;
            v47 = v35;
            v39 = "Total prelaunch sequence (first unlock) interval: %llums";
LABEL_37:
            _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, v39, &v46, 0xCu);
            goto LABEL_38;
          }

          goto LABEL_38;
        }
      }
    }

    else if (v33)
    {
      v41 = *(_prelaunchActivityMeasurements + 8);
      if (v41)
      {
        v42 = millisecondsFromBaselineNanosecondTime(v33, v41);
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
        [v4 setObject:v43 forKeyedSubscript:CAPrelaunchInterval_TotalPrelaunchToUnlockCheck];

        v38 = measureLaunchXPCHandle(v44);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v46 = 134217984;
          v47 = v42;
          v39 = "Total prelaunch sequence (unlocked) interval: %llums";
          goto LABEL_37;
        }

LABEL_38:
      }
    }

    v40 = measureLaunchXPCHandle(v33);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      analyticsDictionaryForPrelaunchSequence_cold_2();
    }

    goto LABEL_41;
  }

  v40 = measureLaunchXPCHandle(v3);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v46 = 134217984;
    v47 = 0;
    _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_INFO, "baseline is zero: %llu", &v46, 0xCu);
  }

  v4 = 0;
LABEL_41:

  return v4;
}

id analyticsDictionaryForLaunchSequence(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v1 = 16;
  if (*_launchSequenceActivityMeasurements)
  {
    v1 = 8;
  }

  v2 = *(_launchSequenceActivityMeasurements + v1);
  v3 = measureLaunchXPCHandle(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    analyticsDictionaryForLaunchSequence_cold_1();
  }

  if (v2)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = measureLaunchXPCHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v77) = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Populating CoreAnalytics metrics for LaunchSequence measurements", &v77, 2u);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithBool:*_launchSequenceActivityMeasurements];
    [v5 setObject:v7 forKeyedSubscript:CALaunchSequenceEvent_IsFirstUnlock];

    v9 = measureLaunchXPCHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *_launchSequenceActivityMeasurements;
      v77 = 67109120;
      LODWORD(v78) = v10;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "IsFirstUnlock: %{BOOL}d", &v77, 8u);
    }

    v11 = [MEMORY[0x277CCABB0] numberWithBool:*_prelaunchActivityMeasurements];
    [v5 setObject:v11 forKeyedSubscript:CALaunchSequenceEvent_IsHelper];

    v13 = measureLaunchXPCHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *_prelaunchActivityMeasurements;
      v77 = 67109120;
      LODWORD(v78) = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "IsHelper: %{BOOL}d", &v77, 8u);
    }

    v15 = _launchSequenceActivityMeasurements;
    if (*_launchSequenceActivityMeasurements == 1)
    {
      v16 = *(_launchSequenceActivityMeasurements + 16);
      if (v16)
      {
        v17 = *(_launchSequenceActivityMeasurements + 8);
        if (v17)
        {
          v18 = millisecondsFromBaselineNanosecondTime(v16, v17);
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18];
          [v5 setObject:v19 forKeyedSubscript:CALaunchSequenceInterval_ProcessedFirstUnlock];

          v21 = measureLaunchXPCHandle(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v77 = 134217984;
            v78 = v18;
            _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "First unlock processing interval: %llums", &v77, 0xCu);
          }

          v15 = _launchSequenceActivityMeasurements;
        }
      }
    }

    v22 = *(v15 + 32);
    if (v22)
    {
      v23 = *(v15 + 16);
      if (v23)
      {
        v24 = millisecondsFromBaselineNanosecondTime(v22, v23);
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v24];
        [v5 setObject:v25 forKeyedSubscript:CALaunchSequenceInterval_DispatchLaunchSequence];

        v27 = measureLaunchXPCHandle(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v24;
          _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "Launch sequence dispatch interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v28 = *(v15 + 40);
    if (v28)
    {
      v29 = *(v15 + 32);
      if (v29)
      {
        v30 = millisecondsFromBaselineNanosecondTime(v28, v29);
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
        [v5 setObject:v31 forKeyedSubscript:CALaunchSequenceInterval_InitializeWorkspace];

        v33 = measureLaunchXPCHandle(v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v30;
          _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_INFO, "Workspace initialization interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v34 = *(v15 + 56);
    if (v34)
    {
      v35 = *(v15 + 48);
      if (v35)
      {
        v36 = millisecondsFromBaselineNanosecondTime(v34, v35);
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
        [v5 setObject:v37 forKeyedSubscript:CALaunchSequenceInterval_InitializePersistence];

        v39 = measureLaunchXPCHandle(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v36;
          _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_INFO, "Persistence initialization interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v40 = *(v15 + 72);
    if (v40)
    {
      v41 = *(v15 + 64);
      if (v41)
      {
        v42 = millisecondsFromBaselineNanosecondTime(v40, v41);
        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v42];
        [v5 setObject:v43 forKeyedSubscript:CALaunchSequenceInterval_InitializeFlowEngine];

        v45 = measureLaunchXPCHandle(v44);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v42;
          _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_INFO, "Flow Engine initialization interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v46 = *(v15 + 88);
    if (v46)
    {
      v47 = *(v15 + 80);
      if (v47)
      {
        v48 = millisecondsFromBaselineNanosecondTime(v46, v47);
        v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
        [v5 setObject:v49 forKeyedSubscript:CALaunchSequenceInterval_InitializeNetworkEngine];

        v51 = measureLaunchXPCHandle(v50);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v48;
          _os_log_impl(&dword_23255B000, v51, OS_LOG_TYPE_INFO, "Network Engine initialization interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v52 = *(v15 + 104);
    if (v52)
    {
      v53 = *(v15 + 96);
      if (v53)
      {
        v54 = millisecondsFromBaselineNanosecondTime(v52, v53);
        v55 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v54];
        [v5 setObject:v55 forKeyedSubscript:CALaunchSequenceInterval_InitializeNOIEngine];

        v57 = measureLaunchXPCHandle(v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v54;
          _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_INFO, "NOIEngine initialization interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v58 = *(v15 + 112);
    if (v58)
    {
      v59 = *(v15 + 104);
      if (v59)
      {
        v60 = millisecondsFromBaselineNanosecondTime(v58, v59);
        v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v60];
        [v5 setObject:v61 forKeyedSubscript:CALaunchSequenceInterval_DispatchXPCCheckpoint];

        v63 = measureLaunchXPCHandle(v62);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v60;
          _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_INFO, "XPC checkpoint dispatch interval: %llums", &v77, 0xCu);
        }

        v15 = _launchSequenceActivityMeasurements;
      }
    }

    v64 = *(v15 + 112);
    if (*v15 == 1)
    {
      if (v64)
      {
        v65 = *(v15 + 8);
        if (v65)
        {
          v66 = millisecondsFromBaselineNanosecondTime(v64, v65);
          v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v66];
          [v5 setObject:v67 forKeyedSubscript:CALaunchSequenceInterval_TotalLaunchToXPC];

          v69 = measureLaunchXPCHandle(v68);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v77 = 134217984;
            v78 = v66;
            v70 = "Total launch sequence (first unlock) interval: %llums";
LABEL_65:
            _os_log_impl(&dword_23255B000, v69, OS_LOG_TYPE_INFO, v70, &v77, 0xCu);
            goto LABEL_66;
          }

          goto LABEL_66;
        }
      }
    }

    else if (v64)
    {
      v72 = *(v15 + 16);
      if (v72)
      {
        v73 = millisecondsFromBaselineNanosecondTime(v64, v72);
        v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v73];
        [v5 setObject:v74 forKeyedSubscript:CALaunchSequenceInterval_TotalLaunchToXPC];

        v69 = measureLaunchXPCHandle(v75);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          v77 = 134217984;
          v78 = v73;
          v70 = "Total launch sequence (unlocked) interval: %llums";
          goto LABEL_65;
        }

LABEL_66:
      }
    }

    v71 = measureLaunchXPCHandle(v64);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
    {
      analyticsDictionaryForLaunchSequence_cold_2();
    }

    goto LABEL_69;
  }

  v71 = measureLaunchXPCHandle(v4);
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    v77 = 134217984;
    v78 = 0;
    _os_log_impl(&dword_23255B000, v71, OS_LOG_TYPE_INFO, "baseline is zero: %llu", &v77, 0xCu);
  }

  v5 = 0;
LABEL_69:

  return v5;
}

void submitMeasurementsToCA(int a1)
{
  if (a1 == 2)
  {
    sf_synchronize(&launchseq_lock, &__block_literal_global_73);
  }

  else if (a1 == 1)
  {
    sf_synchronize(&prelaunch_lock, &__block_literal_global_66);
  }
}

void __submitMeasurementsToCA_block_invoke(uint64_t a1)
{
  v1 = _prelaunchActivityMeasurements;
  v2 = measureLaunchXPCHandle(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Ready to submit CoreAnalytics metrics for PrelaunchSequence measurements", buf, 2u);
    }

    AnalyticsSendEventLazy();
  }

  else
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "No PrelaunchSequence measurements available to submit to CoreAnalytics", v4, 2u);
    }
  }
}

void __submitMeasurementsToCA_block_invoke_71(uint64_t a1)
{
  v1 = _launchSequenceActivityMeasurements;
  v2 = measureLaunchXPCHandle(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Ready to submit CoreAnalytics metrics for LaunchSequence measurements", buf, 2u);
    }

    AnalyticsSendEventLazy();
  }

  else
  {
    if (v3)
    {
      *v4 = 0;
      _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "No LaunchSequence measurements available to submit to CoreAnalytics", v4, 2u);
    }
  }
}

void __submitAllMeasurementsToCA_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (_launchSequenceActivityMeasurements)
  {
    v1 = _prelaunchActivityMeasurements == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return;
  }

  v2 = *(_launchSequenceActivityMeasurements + 112);
  if (*_prelaunchActivityMeasurements == 1)
  {
    if (!v2 || !*(_launchSequenceActivityMeasurements + 72))
    {
      goto LABEL_15;
    }
  }

  else if (!v2 || !*(_launchSequenceActivityMeasurements + 72) || !*(_launchSequenceActivityMeasurements + 88))
  {
LABEL_15:
    v4 = measureLaunchXPCHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(_launchSequenceActivityMeasurements + 112);
      v6 = *(_launchSequenceActivityMeasurements + 72);
      v7 = *(_launchSequenceActivityMeasurements + 88);
      v8 = 134218496;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "Waiting on full set of launch events before submitting LaunchSequence measurements to CoreAnalytics: xpc_checkpoint_ready %llu, fae_initialized %llu, nae_initialized %llu", &v8, 0x20u);
    }

    return;
  }

  sf_synchronize(&prelaunch_lock, &__block_literal_global_66);
  sf_synchronize(&launchseq_lock, &__block_literal_global_73);
  logLaunchSequenceEventTimeline(v3);
  destroyMeasurementType(1);

  destroyMeasurementType(2);
}

uint64_t DeallocateExternalFunctionData(uint64_t result)
{
  v1 = *(*(result + 48) + 400);
  v2 = *v1;
  if (*v1)
  {
    do
    {
      v3 = *(v2 + 56);
      v4 = *(result + 48);
      *(*(v4 + 472) + 32) = v2;
      **(*(v4 + 472) + 32) = *(*(*(v4 + 472) + 40) + 640);
      *(*(*(v4 + 472) + 40) + 640) = *(*(v4 + 472) + 32);
      v2 = v3;
    }

    while (v3);
    v1 = *(*(result + 48) + 400);
  }

  if (v1[1])
  {
    for (i = 0; i != 517; ++i)
    {
      v6 = *(*(*(*(result + 48) + 400) + 8) + 8 * i);
      if (v6)
      {
        do
        {
          v7 = *(v6 + 8);
          v8 = *(result + 48);
          *(*(v8 + 472) + 32) = v6;
          **(*(v8 + 472) + 32) = *(*(*(v8 + 472) + 40) + 128);
          *(*(*(v8 + 472) + 40) + 128) = *(*(v8 + 472) + 32);
          v6 = v7;
        }

        while (v7);
      }
    }

    return genfree(result, *(*(*(result + 48) + 400) + 8), 4136);
  }

  return result;
}

uint64_t DefineFunction3(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, const char *a6, __int16 a7, uint64_t a8)
{
  v13 = a3;
  if ((a3 & 0xFFFFFFF7) - 101 > 0xFFFFFFFB || (result = 0, (a3 - 102) <= 0x13) && ((1 << (a3 - 102)) & 0xBA183) != 0)
  {
    Function = FindFunction(a1, a2);
    if (!Function)
    {
      v18 = *(a1 + 48);
      v19 = *(v18 + 472);
      v20 = *(*(v19 + 40) + 640);
      if (v20)
      {
        *(v19 + 32) = v20;
        *(*(*(v18 + 472) + 40) + 640) = **(*(v18 + 472) + 32);
        Function = *(*(*(a1 + 48) + 472) + 32);
      }

      else
      {
        Function = genalloc(a1, 0x50uLL);
      }

      v21 = EnvAddSymbol(a1, a2);
      *Function = v21;
      ++v21[1];
      v22 = *(a1 + 48);
      Function[7] = **(v22 + 400);
      **(v22 + 400) = Function;
      AddHashFunction(a1, Function);
    }

    *(Function + 16) = v13;
    Function[3] = a4;
    Function[1] = a5;
    if (a6)
    {
      if (strlen(a6) < 2 || (v23 = *a6, v23 != 42) && (v23 - 48) > 9 || (v24 = a6[1], v24 != 42) && (v24 - 48) >= 0xA)
      {
        a6 = 0;
      }
    }

    Function[4] = 0;
    Function[5] = a6;
    *(Function + 12) = 65537;
    *(Function + 26) = a7;
    result = 1;
    Function[8] = 0;
    Function[9] = a8;
  }

  return result;
}

void *FindFunction(uint64_t a1, char *a2)
{
  v2 = *(*(*(a1 + 48) + 400) + 8);
  if (v2)
  {
    v5 = HashSymbol(a2, 0x205uLL);
    SymbolHN = FindSymbolHN(a1, a2);
    v7 = *(*(*(*(a1 + 48) + 400) + 8) + 8 * v5);
    if (v7)
    {
      while (1)
      {
        v2 = *v7;
        if (**v7 == SymbolHN)
        {
          break;
        }

        v7 = v7[1];
        if (!v7)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

unint64_t AddHashFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (!*(*(v4 + 400) + 8))
  {
    v5 = gm2(a1, 0x1028uLL);
    v6 = 0;
    *(*(*(a1 + 48) + 400) + 8) = v5;
    do
    {
      *(*(*(*(a1 + 48) + 400) + 8) + 8 * v6++) = 0;
    }

    while (v6 != 517);
    v4 = *(a1 + 48);
  }

  v7 = *(v4 + 472);
  v8 = *(*(v7 + 40) + 128);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v4 + 472) + 40) + 128) = **(*(v4 + 472) + 32);
    v9 = *(*(*(a1 + 48) + 472) + 32);
  }

  else
  {
    v9 = genalloc(a1, 0x10uLL);
  }

  *v9 = a2;
  result = HashSymbol(*(*a2 + 24), 0x205uLL);
  v11 = *(*(*(a1 + 48) + 400) + 8);
  v12 = *(v11 + 8 * result);
  *(v11 + 8 * result) = v9;
  v9[1] = v12;
  return result;
}

uint64_t UndefineFunction(void *a1, char *a2)
{
  SymbolHN = FindSymbolHN(a1, a2);
  v4 = **(a1[6] + 400);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (*v4 != SymbolHN)
  {
    while (1)
    {
      v6 = v4;
      v4 = *(v4 + 56);
      if (!v4)
      {
        return 0;
      }

      v5 = *v4;
      if (*v4 == SymbolHN)
      {
        goto LABEL_8;
      }
    }
  }

  v6 = 0;
LABEL_8:
  DecrementSymbolCount(a1, v5);
  v8 = HashSymbol(*(*v4 + 24), 0x205uLL);
  v9 = a1[6];
  v10 = *(*(v9 + 400) + 8);
  v11 = *(v10 + 8 * v8);
  if (v11)
  {
    if (*v11 == v4)
    {
      *(v10 + 8 * v8) = v11[1];
      v9 = a1[6];
LABEL_14:
      *(*(v9 + 472) + 32) = v11;
      **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 128);
      *(*(*(v9 + 472) + 40) + 128) = *(*(v9 + 472) + 32);
    }

    else
    {
      while (1)
      {
        v12 = v11;
        v11 = v11[1];
        if (!v11)
        {
          break;
        }

        if (*v11 == v4)
        {
          v12[1] = v11[1];
          goto LABEL_14;
        }
      }
    }
  }

  if (v6)
  {
    v13 = (v6 + 56);
  }

  else
  {
    v13 = *(a1[6] + 400);
  }

  *v13 = *(v4 + 56);
  ClearUserDataList(a1, *(v4 + 64));
  v14 = a1[6];
  *(*(v14 + 472) + 32) = v4;
  **(*(v14 + 472) + 32) = *(*(*(v14 + 472) + 40) + 640);
  *(*(*(v14 + 472) + 40) + 640) = *(*(v14 + 472) + 32);
  return 1;
}

uint64_t AddFunctionParser(uint64_t a1, char *a2, uint64_t a3)
{
  Function = FindFunction(a1, a2);
  if (Function)
  {
    Function[4] = a3;
    Function[5] = 0;
    v6 = 1;
    *(Function + 24) = 0;
  }

  else
  {
    EnvPrintRouter(a1, "werror", "Function parsers can only be added for existing functions.\n");
    return 0;
  }

  return v6;
}

uint64_t RemoveFunctionParser(uint64_t a1, char *a2)
{
  Function = FindFunction(a1, a2);
  if (Function)
  {
    Function[4] = 0;
    return 1;
  }

  else
  {
    EnvPrintRouter(a1, "werror", "Function parsers can only be removed from existing functions.\n");
    return 0;
  }
}

uint64_t FuncSeqOvlFlags(uint64_t a1, char *a2, int a3, int a4)
{
  Function = FindFunction(a1, a2);
  if (Function)
  {
    *(Function + 25) = a3 != 0;
    *(Function + 24) = a4 != 0;
    return 1;
  }

  else
  {
    EnvPrintRouter(a1, "werror", "Only existing functions can be marked as using sequence expansion arguments/overloadable or not.\n");
    return 0;
  }
}

const char *GetArgumentTypeName(char a1)
{
  v1 = a1 - 97;
  if (v1 > 0x19)
  {
    return "unknown argument type";
  }

  else
  {
    return off_278989FC8[v1];
  }
}

uint64_t GetNthRestriction(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 117;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 117;
  }

  v4 = strlen(*(a1 + 40));
  if (v4 < 3)
  {
    return 117;
  }

  if (v4 >= a2 + 3)
  {
    return *(v2 + a2 + 2);
  }

  v6 = *(v2 + 2);
  if (v6 == 42)
  {
    LOBYTE(v6) = 117;
  }

  return v6;
}

unint64_t InstallFunctionList(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(*(result + 48) + 400);
  if (v4[1])
  {
    for (i = 0; i != 517; ++i)
    {
      v6 = *(*(*(result + 48) + 400) + 8);
      v7 = *(v6 + 8 * i);
      if (v7)
      {
        do
        {
          v8 = *(v7 + 8);
          v9 = *(result + 48);
          *(*(v9 + 472) + 32) = v7;
          **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 128);
          *(*(*(v9 + 472) + 40) + 128) = *(*(v9 + 472) + 32);
          v7 = v8;
        }

        while (v8);
        v6 = *(*(*(result + 48) + 400) + 8);
      }

      *(v6 + 8 * i) = 0;
    }

    v4 = *(*(result + 48) + 400);
  }

  *v4 = a2;
  if (a2)
  {
    do
    {
      result = AddHashFunction(v3, v2);
      v2 = *(v2 + 56);
    }

    while (v2);
  }

  return result;
}

uint64_t GetMinimumArgs(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *v1;
  v4[0] = v2;
  v4[1] = 0;
  if ((v2 - 48) > 9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return atoi(v4);
  }
}

uint64_t GetMaximumArgs(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v1)
  {
    v2 = v1[1];
    v4[0] = v2;
    v4[1] = 0;
    if ((v2 - 48) <= 9)
    {
      return atoi(v4);
    }
  }

  return 0xFFFFFFFFLL;
}

__CFString *NSStringForNSExpressionType(unint64_t a1)
{
  if (a1 < 0x15 && ((0x18E0FFu >> a1) & 1) != 0)
  {
    v1 = off_27898A1A8[a1];
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NSExpressionType %lu", a1];
  }

  return v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_DEFAULT, a4, va, 2u);
}

uint64_t DefglobalBasicCommands(uint64_t a1)
{
  AddSaveFunction(a1, "defglobal", SaveDefglobals, 40);
  EnvAddResetFunction(a1, "defglobal", ResetDefglobals, 50);
  EnvDefineFunction2(a1, "get-defglobal-list", 109, GetDefglobalListFunction, "GetDefglobalListFunction", "01w");
  EnvDefineFunction2(a1, "undefglobal", 118, UndefglobalCommand, "UndefglobalCommand", "11w");
  EnvDefineFunction2(a1, "defglobal-module", 119, DefglobalModuleFunction, "DefglobalModuleFunction", "11w");
  EnvDefineFunction2(a1, "list-defglobals", 118, ListDefglobalsCommand, "ListDefglobalsCommand", "01w");
  EnvDefineFunction2(a1, "ppdefglobal", 118, PPDefglobalCommand, "PPDefglobalCommand", "11w");
  AddWatchItem(a1, "globals", 0, *(*(a1 + 48) + 8) + 16, 0, DefglobalWatchAccess, DefglobalWatchPrint);

  return DefglobalBinarySetup(a1);
}

uint64_t ResetDefglobals(uint64_t a1)
{
  result = EnvGetResetGlobals(a1);
  if (result)
  {
    v3 = *(*(*(a1 + 48) + 8) + 8);

    return DoForAllConstructs(a1, ResetDefglobalAction, v3, 1, 0);
  }

  return result;
}

uint64_t ResetDefglobalAction(void *a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (EvaluateExpression(a1, *(a2 + 112), &v5))
  {
    WORD4(v5) = 2;
    *&v6 = EnvFalseSymbol(a1);
  }

  return QSetDefglobalValue(a1, a2, &v5, 0);
}

uint64_t DeallocateDeftemplateBloadData(uint64_t result)
{
  v1 = result;
  v2 = *(*(result + 48) + 488);
  v3 = 24 * *(v2 + 24);
  if (v3)
  {
    result = genfree(result, *(v2 + 40), v3);
    v2 = *(*(v1 + 48) + 488);
  }

  v4 = 96 * *(v2 + 8);
  if (v4)
  {
    result = genfree(v1, *v2, v4);
    v2 = *(*(v1 + 48) + 488);
  }

  v5 = 48 * *(v2 + 16);
  if (v5)
  {
    v6 = *(v2 + 32);

    return genfree(v1, v6, v5);
  }

  return result;
}

uint64_t BsaveFind(uint64_t a1)
{
  SaveBloadCount(a1, *(*(*(a1 + 48) + 488) + 8));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 488) + 16));
  SaveBloadCount(a1, *(*(*(a1 + 48) + 488) + 24));
  v2 = *(*(a1 + 48) + 488);
  v2[1] = 0;
  v2[2] = 0;
  v2[3] = 0;
  result = EnvGetNextDefmodule(a1, 0);
  if (result)
  {
    v4 = result;
    do
    {
      EnvSetCurrentModule(a1, v4);
      ++*(*(*(a1 + 48) + 488) + 24);
      NextDeftemplate = EnvGetNextDeftemplate(a1, 0);
      if (NextDeftemplate)
      {
        v6 = NextDeftemplate;
        do
        {
          v7 = *(*(a1 + 48) + 488);
          v8 = *(v7 + 8);
          *(v7 + 8) = v8 + 1;
          MarkConstructHeaderNeededItems(v6, v8);
          for (i = v6[6]; i; i = i[5])
          {
            ++*(*(*(a1 + 48) + 488) + 16);
            *(*i + 16) |= 4u;
          }

          v6 = EnvGetNextDeftemplate(a1, v6);
        }

        while (v6);
      }

      result = EnvGetNextDefmodule(a1, v4);
      v4 = result;
    }

    while (result);
  }

  return result;
}

const void *BsaveStorage(uint64_t a1, FILE *__stream)
{
  v5 = 24;
  GenWrite(&v5, 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 488) + 8), 8uLL, __stream);
  GenWrite((*(*(a1 + 48) + 488) + 16), 8uLL, __stream);
  return GenWrite((*(*(a1 + 48) + 488) + 24), 8uLL, __stream);
}

uint64_t BsaveBinaryItem(uint64_t a1, FILE *__stream)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(v25, 0, sizeof(v25));
  v32 = 24 * *(*(*(a1 + 48) + 488) + 24) + 48 * (*(*(*(a1 + 48) + 488) + 16) + *(*(*(a1 + 48) + 488) + 8));
  GenWrite(&v32, 8uLL, __stream);
  *(*(*(a1 + 48) + 488) + 8) = 0;
  NextDefmodule = EnvGetNextDefmodule(a1, 0);
  if (NextDefmodule)
  {
    v5 = NextDefmodule;
    do
    {
      EnvSetCurrentModule(a1, v5);
      ModuleItem = FindModuleItem(a1, "deftemplate");
      v7 = GetModuleItem(a1, 0, *(ModuleItem + 8));
      AssignBsaveDefmdlItemHdrVals(v25, v7);
      GenWrite(v25, 0x18uLL, __stream);
      v5 = EnvGetNextDefmodule(a1, v5);
    }

    while (v5);
  }

  *(*(*(a1 + 48) + 488) + 16) = 0;
  v8 = EnvGetNextDefmodule(a1, 0);
  if (v8)
  {
    v9 = v8;
    do
    {
      EnvSetCurrentModule(a1, v9);
      NextDeftemplate = EnvGetNextDeftemplate(a1, 0);
      if (NextDeftemplate)
      {
        v11 = NextDeftemplate;
        do
        {
          AssignBsaveConstructHeaderVals(&v29, v11);
          LOWORD(v31) = *(v11 + 56) & 1 | (2 * *(v11 + 58));
          v12 = *(v11 + 72);
          if (v12)
          {
            v13 = *(v12 + 40);
          }

          else
          {
            v13 = -1;
          }

          *(&v31 + 1) = v13;
          if (*(v11 + 48))
          {
            v14 = *(*(*(a1 + 48) + 488) + 16);
          }

          else
          {
            v14 = -1;
          }

          *(&v30 + 1) = v14;
          GenWrite(&v29, 0x30uLL, __stream);
          *(*(*(a1 + 48) + 488) + 16) += *(v11 + 58);
          v11 = EnvGetNextDeftemplate(a1, v11);
        }

        while (v11);
      }

      v9 = EnvGetNextDefmodule(a1, v9);
    }

    while (v9);
  }

  v15 = EnvGetNextDefmodule(a1, 0);
  if (v15)
  {
    v16 = v15;
    do
    {
      EnvSetCurrentModule(a1, v16);
      v17 = EnvGetNextDeftemplate(a1, 0);
      if (v17)
      {
        v18 = v17;
        do
        {
          for (i = *(v18 + 48); i; i = *(i + 40))
          {
            if (EnvGetDynamicConstraintChecking(a1) && (v20 = *(i + 16)) != 0)
            {
              v21 = *(v20 + 4);
            }

            else
            {
              v21 = -1;
            }

            *&v27 = v21;
            *&v26 = *(*i + 16) >> 3;
            BYTE8(v26) = BYTE8(v26) & 0xFE | *(i + 8) & 1;
            BYTE8(v26) = BYTE8(v26) & 0xFD | (2 * ((*(i + 8) & 2) != 0));
            BYTE8(v26) = BYTE8(v26) & 0xFB | (4 * ((*(i + 8) & 4) != 0));
            BYTE8(v26) = BYTE8(v26) & 0xF7 | *(i + 8) & 8;
            *(&v27 + 1) = HashedExpressionIndex(a1, *(i + 24));
            v22 = HashedExpressionIndex(a1, *(i + 32));
            if (*(i + 40))
            {
              v23 = 0;
            }

            else
            {
              v23 = -1;
            }

            *&v28 = v22;
            *(&v28 + 1) = v23;
            GenWrite(&v26, 0x30uLL, __stream);
          }

          v18 = EnvGetNextDeftemplate(a1, v18);
        }

        while (v18);
      }

      v16 = EnvGetNextDefmodule(a1, v16);
    }

    while (v16);
  }

  RestoreBloadCount(a1, (*(*(a1 + 48) + 488) + 8));
  RestoreBloadCount(a1, (*(*(a1 + 48) + 488) + 16));
  return RestoreBloadCount(a1, (*(*(a1 + 48) + 488) + 24));
}

uint64_t BloadStorage(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 488) + 8), 8uLL);
  GenReadBinary(a1, (*(*(a1 + 48) + 488) + 16), 8uLL);
  result = GenReadBinary(a1, (*(*(a1 + 48) + 488) + 24), 8uLL);
  v3 = *(a1 + 48);
  v4 = *(v3 + 488);
  v5 = v4[3];
  if (v5)
  {
    __ptr = 24 * v5;
    result = genalloc(a1, 24 * v5);
    v6 = *(a1 + 48);
    *(*(v6 + 488) + 40) = result;
    v7 = *(v6 + 488);
    v8 = v7[1];
    if (v8)
    {
      __ptr = 96 * v8;
      result = genalloc(a1, 96 * v8);
      v9 = *(a1 + 48);
      **(v9 + 488) = result;
      v10 = *(v9 + 488);
      v11 = *(v10 + 16);
      if (v11)
      {
        __ptr = 48 * v11;
        result = genalloc(a1, 48 * v11);
        *(*(*(a1 + 48) + 488) + 32) = result;
        return result;
      }
    }

    else
    {
      *v7 = 0;
      v10 = *(v6 + 488);
    }

    *(v10 + 32) = 0;
  }

  else
  {
    *v4 = 0;
    *(*(v3 + 488) + 32) = 0;
    *(*(v3 + 488) + 40) = 0;
  }

  return result;
}

uint64_t BloadBinaryItem(uint64_t a1)
{
  __ptr = 0;
  GenReadBinary(a1, &__ptr, 8uLL);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 488) + 24), 24, UpdateDeftemplateModule);
  BloadandRefresh(a1, *(*(*(a1 + 48) + 488) + 8), 48, UpdateDeftemplate);
  return BloadandRefresh(a1, *(*(*(a1 + 48) + 488) + 16), 48, UpdateDeftemplateSlot);
}

void *ClearBload(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 488);
  if (*(v3 + 8) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      UnmarkConstructHeader(a1, (*v3 + v4));
      ++v5;
      v2 = a1[6];
      v3 = *(v2 + 488);
      v4 += 96;
    }

    while (*(v3 + 8) > v5);
  }

  if (*(v3 + 16) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      DecrementSymbolCount(a1, *(*(v3 + 32) + v6));
      ++v7;
      v2 = a1[6];
      v3 = *(v2 + 488);
      v6 += 48;
    }

    while (*(v3 + 16) > v7);
  }

  v8 = 24 * *(v3 + 24);
  if (v8)
  {
    genfree(a1, *(v3 + 40), v8);
    v2 = a1[6];
  }

  v9 = *(v2 + 488);
  *(v9 + 24) = 0;
  v10 = 96 * *(v9 + 8);
  if (v10)
  {
    genfree(a1, *v9, v10);
    v9 = *(a1[6] + 488);
  }

  *(v9 + 8) = 0;
  v11 = 48 * *(v9 + 16);
  if (v11)
  {
    genfree(a1, *(v9 + 32), v11);
    v9 = *(a1[6] + 488);
  }

  *(v9 + 16) = 0;
  v12 = EnvAddSymbol(a1, "initial-fact");

  return CreateImpliedDeftemplate(a1, v12, 0);
}

uint64_t UpdateDeftemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + 48) + 488);
  v6 = *v5 + 96 * a3;
  result = UpdateConstructHeader(a1, a2, v6, 24, v5[5], 96, *v5);
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*(a1 + 48) + 488) + 32) + 48 * v8;
  }

  *(v6 + 48) = v9;
  v10 = *(a2 + 40);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = **(*(a1 + 48) + 496) + 96 * v10;
  }

  *(v6 + 72) = v11;
  v12 = *(v6 + 56) & 0xFE | *(a2 + 32) & 1;
  *(v6 + 56) = v12;
  *(v6 + 56) = (2 * (*(*(*(a1 + 48) + 24) + 4) & 1)) | v12 & 0xF9;
  *(v6 + 58) = *(a2 + 32) >> 1;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  return result;
}

uint64_t UpdateDeftemplateSlot(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 48);
  v4 = *(v3[61] + 32) + 48 * a3;
  v5 = *(*(v3[49] + 120) + 8 * *a2);
  *v4 = v5;
  ++*(v5 + 8);
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v3[45] + 56) + 32 * v6;
  }

  *(v4 + 24) = v7;
  v8 = *(a2 + 32);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v3[45] + 56) + 32 * v8;
  }

  *(v4 + 32) = v9;
  v10 = *(a2 + 16);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v3[43] + 16) + 80 * v10;
  }

  *(v4 + 16) = v11;
  v12 = *(v4 + 8) & 0xFE | *(a2 + 8) & 1;
  *(v4 + 8) = v12;
  v13 = v12 & 0xFFFFFFFD | (2 * ((*(a2 + 8) >> 1) & 1));
  *(v4 + 8) = v13;
  v14 = v13 & 0xFFFFFFFB | (4 * ((*(a2 + 8) >> 2) & 1));
  *(v4 + 8) = v14;
  *(v4 + 8) = v14 & 0xF7 | *(a2 + 8) & 8;
  if (*(a2 + 40) == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(*(result + 48) + 488) + 32) + 48 * a3 + 48;
  }

  *(v4 + 40) = v15;
  return result;
}

uint64_t InitializeAgenda(uint64_t a1)
{
  AllocateEnvironmentData(a1, 0x11u, 0x28uLL, 0);
  v2 = *(*(a1 + 48) + 136);
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  EnvAddClearFunction(a1, "agenda", AgendaClearFunction, 0);
  AddWatchItem(a1, "activations", 1, *(*(a1 + 48) + 136), 40, DefruleWatchAccess, DefruleWatchPrint);
  EnvDefineFunction2(a1, "refresh", 118, RefreshCommand, "RefreshCommand", "11w");
  EnvDefineFunction2(a1, "refresh-agenda", 118, RefreshAgendaCommand, "RefreshAgendaCommand", "01w");
  EnvDefineFunction2(a1, "get-salience-evaluation", 119, GetSalienceEvaluationCommand, "GetSalienceEvaluationCommand", "00");
  EnvDefineFunction2(a1, "set-salience-evaluation", 119, SetSalienceEvaluationCommand, "SetSalienceEvaluationCommand", "11w");

  return EnvDefineFunction2(a1, "agenda", 118, AgendaCommand, "AgendaCommand", "01w");
}

char *RefreshCommand(uint64_t a1)
{
  result = GetConstructName(a1, "refresh", "rule name");
  if (result)
  {
    v3 = result;
    Defrule = EnvFindDefrule(a1, result);
    if (Defrule)
    {

      return EnvRefresh(a1, Defrule);
    }

    else
    {

      return CantFindItemErrorMessage(a1, "defrule", v3);
    }
  }

  return result;
}

uint64_t RefreshAgendaCommand(uint64_t a1)
{
  v3 = 0;
  result = EnvArgCountCheck(a1, "refresh-agenda", 2, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      result = GetModuleName(a1, "refresh-agenda", 1, &v3);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      result = EnvGetCurrentModule(a1);
    }

    return EnvRefreshAgenda(a1, result);
  }

  return result;
}

uint64_t *GetSalienceEvaluationCommand(uint64_t a1)
{
  EnvArgCountCheck(a1, "get-salience-evaluation", 0, 0);
  v2 = *(*(*(a1 + 48) + 136) + 28);
  if (v2 > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_27898A670[v2];
  }

  return EnvAddSymbol(a1, v3);
}

uint64_t *SetSalienceEvaluationCommand(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v2 = *(*(*(a1 + 48) + 136) + 28);
  if (v2 > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_27898A670[v2];
  }

  if (EnvArgCountCheck(a1, "set-salience-evaluation", 0, 1) != -1)
  {
    if (EnvArgTypeCheck(a1, "set-salience-evaluation", 1, 2u, &v7))
    {
      v4 = *(v8 + 24);
      if (!strcmp(v4, "when-defined"))
      {
        v6 = 0;
      }

      else if (!strcmp(v4, "when-activated"))
      {
        v6 = 1;
      }

      else
      {
        if (strcmp(v4, "every-cycle"))
        {
          ExpectedTypeError1(a1, "set-salience-evaluation", 1, "symbol with value when-defined, when-activated, or every-cycle");
          return EnvAddSymbol(a1, v3);
        }

        v6 = 2;
      }

      *(*(*(a1 + 48) + 136) + 28) = v6;
    }

    return EnvAddSymbol(a1, v3);
  }

  return EnvAddSymbol(a1, v3);
}

uint64_t AgendaCommand(uint64_t a1)
{
  v3 = 0;
  result = EnvArgCountCheck(a1, "agenda", 2, 1);
  if (result != -1)
  {
    if (result == 1)
    {
      result = GetModuleName(a1, "agenda", 1, &v3);
      if (v3)
      {
        return result;
      }
    }

    else
    {
      result = EnvGetCurrentModule(a1);
    }

    return ListItemsDriver(a1, "wdisplay", result, "activation", "activations", EnvGetNextActivation, 0, PrintActivation, 0);
  }

  return result;
}

uint64_t AddActivation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 56) & 0x4000) != 0)
  {
    EnvFocus(a1, **(a2 + 16));
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 472);
  v8 = *(*(v7 + 40) + 448);
  if (v8)
  {
    *(v7 + 32) = v8;
    *(*(*(v6 + 472) + 40) + 448) = **(*(v6 + 472) + 32);
    v9 = *(a1 + 48);
    v10 = *(*(v9 + 472) + 32);
  }

  else
  {
    v10 = genalloc(a1, 0x38uLL);
    v9 = *(a1 + 48);
  }

  *v10 = a2;
  v10[1] = a3;
  v11 = *(v9 + 136);
  v12 = *(v11 + 16);
  *(v11 + 16) = v12 + 1;
  v10[3] = v12;
  *(v10 + 4) = EvaluateSalience(a1, a2);
  *(v10 + 8) = genrand();
  v10[5] = 0;
  v10[6] = 0;
  ++*(*(*(a1 + 48) + 136) + 8);
  *(a3 + 24) = v10;
  if ((*(*v10 + 57) & 0x10) != 0)
  {
    EnvPrintRouter(a1, "wtrace", "==> Activation ");
    PrintActivation(a1, "wtrace", v10);
    EnvPrintRouter(a1, "wtrace", "\n");
  }

  v13 = *(a2 + 16);
  SalienceGroup = ReuseOrCreateSalienceGroup(a1, v13, *(v10 + 4));

  return PlaceActivation(a1, (v13 + 32), v10, SalienceGroup);
}

uint64_t EvaluateSalience(uint64_t a1, uint64_t a2)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (!*(*(*(a1 + 48) + 136) + 28) || !*(a2 + 64))
  {
    return *(a2 + 48);
  }

  SetEvaluationError(a1, 0);
  if (!EvaluateExpression(a1, *(a2 + 64), &v5))
  {
    if (WORD4(v5) != 1)
    {
      SalienceNonIntegerError(a1);
      SalienceInformationError(a1, "defrule", *(*a2 + 24));
      SetEvaluationError(a1, 1);
      return *(a2 + 48);
    }

    result = *(v6 + 24);
    if ((result - 10001) > 0xFFFFB1DE)
    {
      *(a2 + 48) = result;
      return result;
    }

    SalienceRangeError(a1, -10000, 10000);
    SetEvaluationError(a1, 1);
  }

  SalienceInformationError(a1, "defrule", *(*a2 + 24));
  return *(a2 + 48);
}

uint64_t PrintActivation(uint64_t a1, FILE *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  gensprintf(v7, "%-6d ", *(a3 + 4));
  EnvPrintRouter(a1, a2, v7);
  EnvPrintRouter(a1, a2, *(**a3 + 24));
  EnvPrintRouter(a1, a2, ": ");
  return PrintPartialMatch(a1, a2, a3[1]);
}

int *ReuseOrCreateSalienceGroup(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = v5;
      v8 = *v5;
      if (v8 == a3)
      {
        return v7;
      }

      v9 = v8 >= a3;
      if (v8 < a3)
      {
        goto LABEL_8;
      }

      v5 = *(v7 + 3);
      v6 = v7;
      if (!v5)
      {
        v6 = v7;
        v7 = 0;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v9 = 1;
LABEL_8:
    v10 = *(a1 + 48);
    v11 = *(v10 + 472);
    v12 = *(*(v11 + 40) + 320);
    if (v12)
    {
      *(v11 + 32) = v12;
      *(*(*(v10 + 472) + 40) + 320) = **(*(v10 + 472) + 32);
      result = *(*(*(a1 + 48) + 472) + 32);
    }

    else
    {
      result = genalloc(a1, 0x28uLL);
    }

    *result = a3;
    *(result + 1) = 0;
    *(result + 2) = 0;
    v14 = v6;
    *(result + 3) = v7;
    *(result + 4) = v6;
    if (!v9)
    {
      *(v7 + 4) = result;
      v14 = *(result + 4);
    }

    if (v14)
    {
      *(v14 + 3) = result;
    }

    if (!v6)
    {
      *(a2 + 24) = result;
    }
  }

  return result;
}

uint64_t ClearRuleFromAgenda(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) + 32);
  if (v2)
  {
    v4 = result;
LABEL_3:
    while (2)
    {
      v5 = v2;
      v2 = v2[6];
      v6 = a2;
      while (*v5 != v6)
      {
        v6 = *(v6 + 96);
        if (!v6)
        {
          if (v2)
          {
            goto LABEL_3;
          }

          return result;
        }
      }

      result = RemoveActivation(v4, v5, 1, 1);
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t RemoveActivation(uint64_t result, uint64_t *a2, int a3, int a4)
{
  v6 = result;
  if (a3 != 1)
  {
    goto LABEL_11;
  }

  v7 = *(*a2 + 16);
  result = RemoveActivationFromGroup(result, a2, v7);
  v8 = a2[5];
  if (v8)
  {
    v9 = a2[6];
    *(v8 + 48) = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = *(*(v7 + 32) + 48);
  *(v7 + 32) = v9;
  if (v9)
  {
    v8 = 0;
LABEL_7:
    *(v9 + 40) = v8;
  }

LABEL_8:
  if ((*(*a2 + 56) & 0x1000) != 0)
  {
    EnvPrintRouter(v6, "wtrace", "<== Activation ");
    PrintActivation(v6, "wtrace", a2);
    result = EnvPrintRouter(v6, "wtrace", "\n");
  }

  *(*(*(v6 + 48) + 136) + 24) = 1;
LABEL_11:
  if (a4 == 1)
  {
    v10 = a2[1];
    if (v10)
    {
      *(v10 + 24) = 0;
    }
  }

  v11 = *(v6 + 48);
  --*(*(v11 + 136) + 8);
  *(*(v11 + 472) + 32) = a2;
  **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 448);
  *(*(*(v11 + 472) + 40) + 448) = *(*(v11 + 472) + 32);
  return result;
}

uint64_t EnvGetNextActivation(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2 + 48;
  }

  else
  {
    result = GetModuleItem(a1, 0, *(*(*(a1 + 48) + 128) + 8));
    if (!result)
    {
      return result;
    }

    v2 = result + 32;
  }

  return *v2;
}

uint64_t EnvSetActivationSalience(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a2 + 16);
  *(a2 + 16) = a3;
  return result;
}

uint64_t EnvGetActivationPPForm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  OpenStringDestination(a1, "ActPPForm", a2, a3);
  PrintActivation(a1, "ActPPForm", a4);

  return CloseStringDestination(a1, "ActPPForm");
}

uint64_t EnvGetActivationBasisPPForm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OpenStringDestination(a1, "ActPPForm", a2, a3);
  PrintPartialMatch(a1, "ActPPForm", *(a4 + 8));

  return CloseStringDestination(a1, "ActPPForm");
}

uint64_t MoveActivationToTop(uint64_t a1, void *a2)
{
  v2 = *(*a2 + 16);
  v3 = *(v2 + 32);
  if (v3 == a2)
  {
    return 0;
  }

  v4 = a2[5];
  v5 = a2[6];
  *(v4 + 48) = v5;
  if (v5)
  {
    *(v5 + 40) = v4;
  }

  v3[5] = a2;
  a2[5] = 0;
  a2[6] = v3;
  *(v2 + 32) = a2;
  v6 = *(*(a1 + 48) + 136);
  result = 1;
  *(v6 + 24) = 1;
  return result;
}

uint64_t EnvDeleteActivation(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    RemoveActivation(a1, a2, 1, 1);
  }

  else
  {
    RemoveAllActivations(a1);
  }

  return 1;
}

uint64_t RemoveAllActivations(uint64_t a1)
{
  v2 = *(GetDefruleModuleItem(a1, 0) + 32);
  if (v2)
  {
    do
    {
      v3 = v2[6];
      RemoveActivation(a1, v2, 1, 1);
      v2 = v3;
    }

    while (v3);
  }

  result = GetDefruleModuleItem(a1, 0);
  v5 = *(result + 24);
  if (v5)
  {
    do
    {
      v6 = *(v5 + 24);
      v7 = *(a1 + 48);
      *(*(v7 + 472) + 32) = v5;
      **(*(v7 + 472) + 32) = *(*(*(v7 + 472) + 40) + 320);
      *(*(*(v7 + 472) + 40) + 320) = *(*(v7 + 472) + 32);
      v5 = v6;
    }

    while (v6);
  }

  return result;
}

uint64_t DetachActivation(uint64_t a1, void *a2)
{
  if (!a2)
  {
    SystemError(a1, "AGENDA", 1);
  }

  v4 = *(*a2 + 16);
  RemoveActivationFromGroup(a1, a2, v4);
  if (*(v4 + 32) == a2)
  {
    *(v4 + 32) = a2[6];
  }

  v5 = a2[5];
  v6 = a2[6];
  v7 = a2 + 5;
  if (v5)
  {
    *(v5 + 48) = v6;
  }

  if (v6)
  {
    *(v6 + 40) = v5;
  }

  *v7 = 0;
  v7[1] = 0;
  *(*(*(a1 + 48) + 136) + 24) = 1;
  return 1;
}

uint64_t RemoveActivationFromGroup(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a3;
  do
  {
    v4 = *(v4 + 24);
    if (!v4)
    {
      break;
    }

    if (*v4 == v3)
    {
      v5 = *(v4 + 16);
      if (*(v4 + 8) == a2)
      {
        if (v5 == a2)
        {
          v7 = *(v4 + 24);
          v6 = *(v4 + 32);
          if (v6)
          {
            v8 = *(v4 + 32);
          }

          else
          {
            v8 = a3;
          }

          *(v8 + 24) = v7;
          if (v7)
          {
            *(v7 + 32) = v6;
          }

          v9 = *(result + 48);
          *(*(v9 + 472) + 32) = v4;
          **(*(v9 + 472) + 32) = *(*(*(v9 + 472) + 40) + 320);
          *(*(*(v9 + 472) + 40) + 320) = *(*(v9 + 472) + 32);
        }

        else
        {
          *(v4 + 8) = *(a2 + 48);
        }
      }

      else if (v5 == a2)
      {
        *(v4 + 16) = *(a2 + 40);
      }

      return result;
    }
  }

  while (*v4 >= v3);
  return result;
}

uint64_t EnvReorderAgenda(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2;
  if (a2)
  {
    goto LABEL_3;
  }

  while (1)
  {
    result = EnvGetNextDefmodule(a1, a2);
    v4 = result;
    if (!result)
    {
      break;
    }

LABEL_3:
    result = GetDefruleModuleItem(v3, v4);
    v6 = result;
    v7 = (result + 32);
    v8 = *(result + 32);
    *(result + 32) = 0;
    v9 = *(result + 24);
    if (v9)
    {
      do
      {
        v10 = *(v9 + 24);
        v11 = *(v3 + 48);
        *(*(v11 + 472) + 32) = v9;
        **(*(v11 + 472) + 32) = *(*(*(v11 + 472) + 40) + 320);
        *(*(*(v11 + 472) + 40) + 320) = *(*(v11 + 472) + 32);
        v9 = v10;
      }

      while (v10);
    }

    *(result + 24) = 0;
    if (v8)
    {
      do
      {
        v12 = *(v8 + 48);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        SalienceGroup = ReuseOrCreateSalienceGroup(v3, v6, *(v8 + 16));
        result = PlaceActivation(v3, v7, v8, SalienceGroup);
        v8 = v12;
      }

      while (v12);
    }

    if (v2)
    {
      return result;
    }

    a1 = v3;
    a2 = v4;
  }

  return result;
}

uint64_t EnvRefresh(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *(v2 + 88);
      v5 = *(v4 + 56);
      if (*v5)
      {
        v6 = 0;
        do
        {
          v7 = *(v5[2] + 8 * v6);
          if (v7)
          {
            do
            {
              if (*(v7[2] + 136) && !v7[3])
              {
                AddActivation(a1, v2, v7);
              }

              v7 = v7[5];
            }

            while (v7);
            v4 = *(v2 + 88);
          }

          ++v6;
          v5 = *(v4 + 56);
        }

        while (v6 < *v5);
      }

      v2 = *(v2 + 96);
    }

    while (v2);
  }

  return 1;
}