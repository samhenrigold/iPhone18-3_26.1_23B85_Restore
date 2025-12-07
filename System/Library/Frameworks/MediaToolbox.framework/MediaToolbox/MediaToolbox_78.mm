uint64_t FigPlayerResourceArbiterSetSpecifierForConsumer(unsigned __int8 *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a3);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetSpecifierForConsumer_cold_1(ConsumerInfo, a2, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetSpecifierForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetSpecifierForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t fpra_getConsumerInfo(uint64_t a1, uint64_t a2)
{
  ConsumerInfoIndex = fpra_getConsumerInfoIndex(a1, a2);
  if (ConsumerInfoIndex == -1)
  {
    return 0;
  }

  CFArrayGetValueAtIndex(*(a1 + 40), ConsumerInfoIndex);

  return FigStorageRefGetBytePtr();
}

uint64_t FigPlayerResourceArbiterSetNetworkSpecifierForConsumer(unsigned __int8 *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a3);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_1(ConsumerInfo, a2, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetNetworkSpecifierForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t FigPlayerResourceArbiterGetBudgetForConsumer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    FigSimpleMutexLock();
    PrimaryConsumerInfo = fpra_getPrimaryConsumerInfo(a1, a2);
    if (PrimaryConsumerInfo)
    {
      v9 = PrimaryConsumerInfo;
      if (a3)
      {
        if (_os_feature_enabled_impl())
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v9 + 56);
        }

        *a3 = v10;
      }

      if (a4)
      {
        v11 = 0;
        if (_os_feature_enabled_impl())
        {
          *a4 = *(v9 + 56);
        }

        else
        {
          *a4 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      FigPlayerResourceArbiterGetBudgetForConsumer_cold_1(&v13);
      v11 = v13;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigPlayerResourceArbiterGetBudgetForConsumer_cold_2(&v14);
    return v14;
  }

  return v11;
}

uint64_t fpra_getPrimaryConsumerInfo(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    Count = *(a1 + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      return 0;
    }

    CFArrayGetValueAtIndex(*(a1 + 40), v4);
    result = FigStorageRefGetBytePtr();
    ++v4;
  }

  while (*(result + 16) != a2);
  if (*(result + 32))
  {

    return FigStorageRefGetBytePtr();
  }

  return result;
}

uint64_t FigPlayerResourceArbiterGetNetworkBudgetForConsumer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer_cold_1(a1, a2, a3, &v4);
    return v4;
  }

  else
  {
    FigPlayerResourceArbiterGetNetworkBudgetForConsumer_cold_2(&v5);
    return v5;
  }
}

uint64_t fpra_getGroupInfoForConsumer(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  BytePtr = 0;
  while (1)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (BytePtr || v4 >= Count)
    {
      return BytePtr;
    }

    FigCFArrayGetValueAtIndex();
    BytePtr = FigStorageRefGetBytePtr();
    v7 = 0;
    while (1)
    {
      v8 = *(BytePtr + 16);
      if (v8)
      {
        v8 = CFArrayGetCount(v8);
      }

      if (v7 >= v8)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(BytePtr + 16), v7++);
      if (*(FigStorageRefGetBytePtr() + 16) == a2)
      {
        goto LABEL_13;
      }
    }

    BytePtr = 0;
LABEL_13:
    ++v4;
  }
}

uint64_t FigPlayerResourceArbiterSetStorebagForConsumer(unsigned __int8 *a1, uint64_t a2, const void *a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a2);
    if (ConsumerInfo)
    {
      FigPlayerResourceArbiterSetStorebagForConsumer_cold_1(ConsumerInfo, a3, a1);
      v7 = 0;
    }

    else
    {
      FigPlayerResourceArbiterSetStorebagForConsumer_cold_2(&v9);
      v7 = v9;
    }

    fpra_unlockAndNotifyClients(a1);
  }

  else
  {
    FigPlayerResourceArbiterSetStorebagForConsumer_cold_3(&v10);
    return v10;
  }

  return v7;
}

uint64_t FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if (_os_feature_enabled_impl())
      {
        if (fpra_getNumberOfActiveConsumers(a1) < 4)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }

      else
      {
        v5 = 0;
      }

      *a3 = v5;
      FigSimpleMutexUnlock();
      return 0;
    }

    else
    {
      FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigPlayerResourceArbiterGetExtendedBufferingPolicyForConsumer_cold_2(&v8);
    return v8;
  }
}

uint64_t FigPlayerResourceArbiterAssignReportingAgentForConsumer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    ConsumerInfo = fpra_getConsumerInfo(a1, a2);
    if (ConsumerInfo)
    {
      v7 = ConsumerInfo;
      GroupInfoForConsumer = fpra_getGroupInfoForConsumer(a1, a2);
      if (GroupInfoForConsumer)
      {
        v9 = GroupInfoForConsumer;
        v10 = *(v7 + 88);
        *(v7 + 88) = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v10)
        {
          CFRelease(v10);
        }

        if (a3)
        {
          v11 = *(v9 + 8);
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v12)
          {
            v12(a3, 0x1F0B65618, 0x1F0B43C58, v11, 0);
          }

          a3 = 0;
        }
      }

      else
      {
        FigPlayerResourceArbiterAssignReportingAgentForConsumer_cold_1(&v14);
        a3 = v14;
      }
    }

    else
    {
      a3 = 4294947686;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigPlayerResourceArbiterAssignReportingAgentForConsumer_cold_2(&v15);
    return v15;
  }

  return a3;
}

uint64_t FigPlayerResourceArbiterGetGlobalSingleton(void *a1)
{
  if (a1)
  {
    if (_MergedGlobals_142 != -1)
    {
      FigPlayerResourceArbiterGetGlobalSingleton_cold_1();
    }

    *a1 = qword_1ED4CBC60;
    return dword_1ED4CBC68;
  }

  else
  {
    FigPlayerResourceArbiterGetGlobalSingleton_cold_2(&v3);
    return v3;
  }
}

uint64_t fpra_getGlobalSingleton(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = MGCopyAnswer();
    SInt64 = FigCFNumberGetSInt64();
    if (v2)
    {
      CFRelease(v2);
    }

    if (SInt64)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      LODWORD(v11) = 0;
      v16 = 0.0;
      FigGetDecoderMaxPixelsPerSecondFromPlist(1635148593, &v11);
      FigGetDecoderMaxPixelsPerSecondFromPlist(1752589105, &v16);
      v5 = *&v11;
      v6 = v16;
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  CFPreferenceLongNumberWithDefault = FigGetCFPreferenceLongNumberWithDefault();
  v8 = FigGetCFPreferenceLongNumberWithDefault();
  v9 = FigGetCFPreferenceLongNumberWithDefault();
  *&v11 = CFPreferenceLongNumberWithDefault;
  BYTE8(v11) = v4;
  *(&v11 + 9) = 0;
  HIDWORD(v11) = 0;
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = v9;
  result = FigPlayerResourceArbiterCreate(&v11, a1);
  *(a1 + 8) = result;
  return result;
}

uint64_t FigPlayerResourceArbiterCreateForTestOnly(__int128 *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return FigPlayerResourceArbiterCreate(v4, a2);
}

uint64_t FigPlayerResourceArbiterCreate(__int128 *a1, uint64_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigPlayerResourceArbiterCreate_cold_3(v17);
    return v17[0];
  }

  FigGetAllocatorForMedia();
  MEMORY[0x19A8D3660](&FigPlayerResourceArbiterGetTypeID_sFigPlayerResourceArbiterRegisterOnce, FigPlayerResourceArbiter_initOnce_0);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerResourceArbiterCreate_cold_2(v17);
    return v17[0];
  }

  v5 = Instance;
  v6 = FigReentrantMutexCreate();
  *(v5 + 16) = v6;
  if (!v6)
  {
    v16 = 1448;
LABEL_16:
    FigPlayerResourceArbiterCreate_cold_1(v16, v5, v17);
    return v17[0];
  }

  *(v5 + 24) = 1;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  *(v5 + 32) = Mutable;
  if (!Mutable)
  {
    v16 = 1454;
    goto LABEL_16;
  }

  v9 = FigGetAllocatorForMedia();
  v10 = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
  *(v5 + 40) = v10;
  if (!v10)
  {
    v16 = 1457;
    goto LABEL_16;
  }

  v11 = *a1;
  v12 = a1[2];
  *(v5 + 64) = a1[1];
  *(v5 + 80) = v12;
  *(v5 + 48) = v11;
  v13 = CFCopyDescription(v5);
  if (dword_1EAF17BB8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *a2 = v5;
  if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

void groupInfoDeallocateCallback(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }
}

void consumerInfoDeallocateCallback(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 88) = 0;
  }
}

unint64_t fpra_sumPlayerNeedsAndAllocateFloor(uint64_t a1, int64x2_t *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  BytePtr[5] = BytePtr[7];
  BytePtr[7] = 0;
  result = fpra_isActiveConsumer(BytePtr);
  if (result)
  {
    v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(BytePtr);
    a2[2] = vaddq_s64(a2[2], vdupq_n_s64(v5));
    v6 = _os_feature_enabled_impl();
    v7 = BytePtr[9];
    if (v6)
    {
      IsMVStereo = FigPlayerResourceArbiterPlayerSpecifierGetIsMVStereo(v7);
      FrameRateFloor = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateFloor(BytePtr[9]);
      ResolutionFloor = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(BytePtr[9]);
      v12 = FrameRateFloor * (ResolutionFloor * v11);
      v13 = 2.0;
      if (!IsMVStereo)
      {
        v13 = 1.0;
      }

      v14 = (v13 * v12);
    }

    else
    {
      v15 = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(v7);
      v14 = (v15 * v16);
    }

    v17 = a2[1].u64[1];
    v18 = v17 >= v14;
    v19 = v17 > v14;
    v20 = v17 - v14;
    if (!v19)
    {
      v14 = 1;
    }

    if (!v18)
    {
      v20 = 0;
    }

    BytePtr[7] = v14;
    a2[1].i64[1] = v20;
    result = a2->u64[1];
    if (!result || (result = fpra_consumerInfoMaxDisplayPixelsNeeded(result), v5 > result))
    {
      a2->i64[1] = BytePtr;
    }
  }

  return result;
}

unint64_t fpra_allocateBudgetToConsumerByWeight(uint64_t a1, void *a2, void *a3, float a4)
{
  if (_os_feature_enabled_impl())
  {
    IsMVStereo = FigPlayerResourceArbiterPlayerSpecifierGetIsMVStereo(a3[9]);
    FrameRateCeiling = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateCeiling(a3[9]);
    if (FrameRateCeiling == 0.0)
    {
      FrameRateCeiling = FigPlayerResourceArbiterPlayerSpecifierGetFrameRateFloor(a3[9]);
    }

    v10 = FrameRateCeiling;
    v11 = fpra_consumerInfoMaxDisplayPixelsNeeded(a3);
    v12 = 2.0;
    if (!IsMVStereo)
    {
      v12 = 1.0;
    }

    v13 = (v12 * (v10 * v11));
  }

  else
  {
    v13 = fpra_consumerInfoMaxDisplayPixelsNeeded(a3);
  }

  v14 = v13 - a3[7];
  result = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, a3);
  v16 = a2[3];
  v17 = (v16 * a4);
  if (v14 < v17)
  {
    v17 = v14;
  }

  v18 = v17 + a3[7];
  if (v18 <= 1)
  {
    v18 = 1;
  }

  a3[7] = v18;
  if (a3[5] != v18)
  {
    *(a1 + 96) = 1;
  }

  a2[5] -= result;
  a2[3] = v16 - v17;
  return result;
}

unint64_t fpra_consumerInfoMaxDisplayPixelsNeeded(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    DisplaySize = FigPlayerResourceArbiterPlayerSpecifierGetDisplaySize(result);
    v5 = (DisplaySize * v4);
    ResolutionCeiling = FigPlayerResourceArbiterPlayerSpecifierGetResolutionCeiling(*(a1 + 72));
    v8 = (ResolutionCeiling * v7);
    ResolutionFloor = FigPlayerResourceArbiterPlayerSpecifierGetResolutionFloor(*(a1 + 72));
    v11 = ResolutionFloor * v10;
    if (v8 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v8;
    }

    if (!v5)
    {
      v12 = v8;
    }

    if (v12 <= v11)
    {
      return v11;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

uint64_t fpra_adjustTotalRunningDisplayPixels(uint64_t a1, void *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  result = fpra_isActiveConsumer(BytePtr);
  if (result)
  {
    if (BytePtr != a2[1])
    {
      v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(BytePtr);
      result = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, BytePtr);
      a2[5] += result - v5;
    }
  }

  return result;
}

unint64_t fpra_allocateBudgetToEachConsumerByWeight(uint64_t a1, uint64_t *a2)
{
  BytePtr = FigStorageRefGetBytePtr();
  result = fpra_isActiveConsumer(BytePtr);
  if (result && BytePtr != a2[1])
  {
    v5 = fpra_consumerInfoAdjustedDisplayPixelsNeeded(a2, BytePtr);
    v6 = a2[5];
    if (v6)
    {
      v7 = v5 / v6;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *a2;

    return fpra_allocateBudgetToConsumerByWeight(v8, a2, BytePtr, v7);
  }

  return result;
}

uint64_t fpra_isActiveConsumer(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    FigPlayerResourceArbiterPlayerSpecifierGetPlayerRole(result);
    if (FigCFEqual())
    {
      return 0;
    }

    else
    {
      result = FigPlayerResourceArbiterPlayerSpecifierGetIsFullyActive(*(a1 + 72));
      if (result)
      {
        if (FigPlayerResourceArbiterPlayerSpecifierGetDesiredRate(*(a1 + 72)) != 0.0)
        {
          return *(a1 + 32) == 0;
        }

        result = FigPlayerResourceArbiterPlayerSpecifierGetIsBuffering(*(a1 + 72));
        if (result)
        {
          return *(a1 + 32) == 0;
        }
      }
    }
  }

  return result;
}

unint64_t fpra_consumerInfoAdjustedDisplayPixelsNeeded(void *a1, uint64_t a2)
{
  v4 = fpra_consumerInfoMaxDisplayPixelsNeeded(a2);
  v5 = fpra_consumerInfoMaxDisplayPixelsNeeded(a2);
  if (v5)
  {
    v6 = *(a2 + 56) / v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (a1[1] == a2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 1.0 - fmin(((a1[4] / a1[2]) * v6), 1.0);
  }

  return (v7 * v4);
}

uint64_t fpra_consumerRequiresNetworkArbitration(uint64_t a1)
{
  result = fpra_isActiveConsumer(a1);
  if (result)
  {
    return *(a1 + 80) && FigPlayerResourceArbiterPlayerSpecifierGetIsFullyOffline(*(a1 + 72)) == 0;
  }

  return result;
}

const __CFArray *fpra_moreThanOneActiveConsumerWithoutBandwidthBudget(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      v6 = 1;
      do
      {
        CFArrayGetValueAtIndex(*(a1 + 16), v6 - 1);
        BytePtr = FigStorageRefGetBytePtr();
        if (fpra_consumerRequiresNetworkArbitration(BytePtr) && *(BytePtr + 64) == 0.0)
        {
          ++v5;
        }

        if (v6 >= v4)
        {
          break;
        }

        ++v6;
      }

      while (v5 < 2);
      return (v5 > 1);
    }
  }

  return result;
}

float fpra_getPriorTierToMeasuredBWWeight(uint64_t a1, uint64_t a2)
{
  PriorBitrate = FigPlayerResourceArbiterNetworkSpecifierGetPriorBitrate(*(a2 + 80));
  if (!PriorBitrate)
  {
    PriorBitrate = FigPlayerResourceArbiterNetworkSpecifierGetLowestBitrate(*(a2 + 80));
  }

  return PriorBitrate * 1.1 / *(a1 + 48);
}

const __CFArray *fpra_setupNetworkPredictionInput@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 216) = 0;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v5 = 1;
  while (1)
  {
    v6 = v4;
    result = *(a1 + 16);
    if (result)
    {
      result = CFArrayGetCount(result);
      v8 = result;
    }

    else
    {
      v8 = 0;
    }

    if (v6 >= v8)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 16), v6);
    result = *(FigStorageRefGetBytePtr() + 24);
    if (result)
    {
      result = FigRCLGetNumberWithDefault(result, @"disableWeightBWPredictionByResponseSize", 0);
      v4 = v6 + 1;
      if (result)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v5 = v6;
LABEL_10:
  *a2 = 5;
  *(a2 + 168) = 16;
  *(a2 + 40) = xmmword_196E72850;
  *(a2 + 16) = 60000000000;
  if (v6 < v8 || !v5)
  {
    *(a2 + 8) = 4;
  }

  return result;
}

uint64_t FigPlayerResourceArbiter_initOnce_0()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerResourceArbiterID = result;
  return result;
}

double fpra_init(uint64_t a1)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void fpra_finalize(void *a1)
{
  FigSimpleMutexDestroy();
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
    a1[5] = 0;
  }
}

__CFString *fpra_copyFormattingDesc(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFStringCreateMutable(AllocatorForMedia, 0);
  FigSimpleMutexLock();
  v4 = *(a1 + 40);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  if (*(a1 + 56))
  {
    CFStringAppendFormat(Mutable, 0, @"%p: [DeviceBudget: %llu/%llu]", a1, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%p: [DeviceBudget: %llu]", a1, *(a1 + 48));
  }

  CFStringAppendFormat(Mutable, 0, @" [Budget: %llu] [StepCost: %llu] {", *(a1 + 80), *(a1 + 88));
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(*(a1 + 40), i);
      BytePtr = FigStorageRefGetBytePtr();
      if (fpra_isActiveConsumer(BytePtr))
      {
        CFStringAppendFormat(Mutable, 0, @"\n\t%lld: ", *(BytePtr + 16));
        if (*(BytePtr + 8))
        {
          CFStringAppendFormat(Mutable, 0, @"%@: ", *(BytePtr + 8));
        }

        v8 = *(BytePtr + 72);
        if (v8)
        {
          v9 = CFCopyDescription(v8);
          CFStringAppendFormat(Mutable, 0, @"%@", v9);
          if (v9)
          {
            CFRelease(v9);
          }
        }

        v10 = *(BytePtr + 80);
        if (v10)
        {
          v11 = CFCopyDescription(v10);
          CFStringAppendFormat(Mutable, 0, @"%@", v11);
          if (v11)
          {
            CFRelease(v11);
          }
        }

        CFStringAppendFormat(Mutable, 0, @"[Budget: %llu] [Network Weight: %.3f]", *(BytePtr + 56), *(BytePtr + 64));
      }
    }
  }

  CFStringAppendFormat(Mutable, 0, @"\n Groups: ");
  for (j = 0; ; ++j)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = CFArrayGetCount(v13);
    }

    if (j >= v13)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 32), j);
    v14 = FigStorageRefGetBytePtr();
    CFStringAppendFormat(Mutable, 0, @"\n\t%@: [Bandwidth: %lld]", *v14, v14[6]);
  }

  CFStringAppendFormat(Mutable, 0, @"\n}");
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigPartialSampleTableGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_143 != -1)
  {
    FigPartialSampleTableGetTypeID_cold_1();
  }

  return qword_1ED4CBC88;
}

uint64_t fpst_registerFigPartialSampleTableType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CBC88 = result;
  return result;
}

uint64_t FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, void *a3, const void *a4, uint64_t *a5)
{
  dataPointerOut = 0;
  blockBufferOut = 0;
  if (!a5)
  {
    FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks_cold_3(&v25);
    v20 = v25;
    goto LABEL_24;
  }

  if (_MergedGlobals_143 != -1)
  {
    FigPartialSampleTableGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  DataLength = CMBlockBufferGetDataLength(a2);
  if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
  {
    blockBufferOut = a2;
    CFRetain(a2);
  }

  else
  {
    v12 = CMBlockBufferGetDataLength(a2);
    DataPointer = CMBlockBufferCreateContiguous(a1, a2, a1, 0, 0, v12, 0, &blockBufferOut);
    if (DataPointer)
    {
LABEL_27:
      v20 = DataPointer;
      goto LABEL_30;
    }

    a2 = blockBufferOut;
  }

  DataPointer = CMBlockBufferGetDataPointer(a2, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_27;
  }

  if ((dataPointerOut & 3) == 0)
  {
    v14 = blockBufferOut;
    *(Instance + 16) = dataPointerOut;
    *(Instance + 24) = v14;
    CFRetain(v14);
    if (a3)
    {
      if (a4)
      {
        v15 = CFRetain(a4);
      }

      else
      {
        v15 = 0;
      }

      *(Instance + 72) = v15;
      __copy_assignment_8_8_t0w8_pa0_7864_8_pa0_3127_16_pa0_23876_24_pa0_18371_32((Instance + 32), a3);
    }

    v16 = CMBlockBufferGetDataLength(*(Instance + 24));
    v17 = *(Instance + 16);
    if (v17[1] >= 1 && *v17 <= 0x3FFuLL)
    {
      v18 = 2;
      while (1)
      {
        v19 = v17[v18];
        if (v19 < 0 || v19 > (v16 - 9))
        {
          break;
        }

        if (++v18 == 19)
        {
          goto LABEL_23;
        }
      }
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, dataPointerOut, blockBufferOut);
    if (!DataPointer)
    {
LABEL_23:
      v20 = 0;
      *a5 = Instance;
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks_cold_2(&v25);
  v20 = v25;
LABEL_30:
  if (Instance)
  {
    CFRelease(Instance);
  }

LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v20;
}

void *__copy_assignment_8_8_t0w8_pa0_7864_8_pa0_3127_16_pa0_23876_24_pa0_18371_32(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  result[3] = a2[3];
  result[4] = a2[4];
  return result;
}

uint64_t FigPartialSampleTableCreateFromBlockBufferUsingOutOfBandObjectRegistry(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, const void *a3, uint64_t *a4)
{
  v5[0] = 0;
  v5[1] = fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID;
  v5[2] = fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID;
  v5[3] = fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID;
  v5[4] = 0;
  return FigPartialSampleTableCreateFromBlockBufferUsingTranslationCallbacks(a1, a2, v5, a3, a4);
}

uint64_t fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"ByteStream", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CMByteStreamBaseGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    fpst_outOfBandRegistry_copyByteStreamTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"DataSourceURL", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CFURLGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    fpst_outOfBandRegistry_copyDataSourceTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(a1, @"FormatDescription", a2, &cf);
  if (v4)
  {
    v6 = v4;
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CMFormatDescriptionGetTypeID()))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = cf;
      return v6;
    }
  }

  else
  {
    fpst_outOfBandRegistry_copyFormatDescriptionTranslatedFromOutOfBandID_cold_1(&v9);
    v6 = v9;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

double fpst_accessor_stepByDecodeTimeInternal(uint64_t *a1, CMTime *a2, int a3, char *a4)
{
  if (!a1)
  {
    fpst_accessor_stepByDecodeTimeInternal_cold_3(&time1);
    return result;
  }

  time1 = *a2;
  v35 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v9;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a2;
    CMTimeAbsoluteValue(&v36, &time1);
    v43[0] = 0;
    time1 = v36;
    *&time2.value = v35;
    time2.epoch = v9;
    if (CMTimeCompare(&time1, &time2))
    {
      time1 = v36;
      *&time2.value = v35;
      time2.epoch = v9;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        fpst_accessor_stepByDecodeTimeInternal_cold_1(&time1);
      }

      else
      {
        v23 = a1[18];
        v24 = a1[10];
        if (!fpst_reading_runSegmentAtIndex(*a1, 10, v24, v43))
        {
          v25 = *a1;
          dataPointerOut = 0;
          v26 = *(*(v25 + 16) + 88);
          if (v26 >= 1 && !CMBlockBufferGetDataPointer(*(v25 + 24), v26, 0, 0, &dataPointerOut))
          {
            v27 = v43[0];
            if (v43[0])
            {
              while (1)
              {
                v39 = 0;
                v28 = *v27;
                memset(&time1, 0, sizeof(time1));
                time2 = *(v27 + 4);
                CMTimeMultiply(&time1, &time2, v23 - v28);
                time2 = time1;
                rhs = v36;
                if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
                {
                  break;
                }

                v23 = v28;
                rhs = v36;
                v37 = time1;
                CMTimeSubtract(&time2, &rhs, &v37);
                v36 = time2;
                if (v24 > 0)
                {
                  if (fpst_reading_runSegmentAtIndex(*a1, 10, --v24, &v39))
                  {
                    return result;
                  }

                  v27 = v39;
                  if (v39)
                  {
                    continue;
                  }
                }

                if (!fpst_accessor_moveToSampleIndex(a1, v28))
                {
                  *a4 = 1;
                }

                return result;
              }

              time2 = **&MEMORY[0x1E6960C70];
              rhs = v36;
              v37 = *(v27 + 4);
              v31 = CMTimeDivide();
              if (!a3 || (rhs = time2, *&v37.value = v35, v37.epoch = v9, !CMTimeCompare(&rhs, &v37)))
              {
                v32 = v23 - v31;
                goto LABEL_39;
              }

              emitter = fig_log_get_emitter();
              return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294949578, "<<<< FigPartialSampleTable >>>>", 2462, v4);
            }

            else
            {
              v32 = 0;
LABEL_39:
              fpst_accessor_moveToSampleIndex(a1, v32);
            }
          }
        }
      }
    }
  }

  else
  {
    v36 = *a2;
    v43[0] = 0;
    time1 = *a2;
    *&time2.value = v35;
    time2.epoch = v9;
    if (CMTimeCompare(&time1, &time2))
    {
      time1 = v36;
      *&time2.value = v35;
      time2.epoch = v9;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        fpst_accessor_stepByDecodeTimeInternal_cold_2(&time1);
        return result;
      }

      v11 = a1[18];
      v12 = a1[10];
      if (!fpst_reading_runSegmentAtIndex(*a1, 10, v12, v43))
      {
        v13 = *a1;
        dataPointerOut = 0;
        v14 = *(*(v13 + 16) + 88);
        if (v14 >= 1 && !CMBlockBufferGetDataPointer(*(v13 + 24), v14, 0, 0, &dataPointerOut))
        {
          v15 = v43[0];
          if (v43[0])
          {
            v16 = v12 + 1;
            while (1)
            {
              v39 = 0;
              v17 = *a1;
              if (v16 >= *dataPointerOut)
              {
                v18 = 0;
                v19 = (*(v17 + 16) + 8);
              }

              else
              {
                if (fpst_reading_runSegmentAtIndex(v17, 10, v16, &v39))
                {
                  return result;
                }

                v18 = v39;
                v19 = v39;
              }

              v20 = *v19;
              memset(&time1, 0, sizeof(time1));
              time2 = *(v15 + 4);
              CMTimeMultiply(&time1, &time2, v20 - v11);
              time2 = time1;
              rhs = v36;
              if (CMTimeCompare(&time2, &rhs) >= 1)
              {
                break;
              }

              time2 = v36;
              rhs = time1;
              CMTimeSubtract(&v36, &time2, &rhs);
              ++v16;
              v11 = v20;
              v15 = v18;
              if (!v18)
              {
                v21 = v20 - 1;
                v22 = 1;
                goto LABEL_33;
              }
            }

            time2 = **&MEMORY[0x1E6960C70];
            rhs = v36;
            v37 = *(v15 + 4);
            v29 = CMTimeDivide();
            if (a3)
            {
              rhs = time2;
              *&v37.value = v35;
              v37.epoch = v9;
              if (CMTimeCompare(&rhs, &v37))
              {
                v33 = fig_log_get_emitter();
                return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 4294949578, "<<<< FigPartialSampleTable >>>>", 2397, v4);
              }
            }

            v22 = 0;
            v21 = v29 + v11;
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }

LABEL_33:
          v30 = fpst_accessor_moveToSampleIndex(a1, v21);
          if (a4)
          {
            if (!v30)
            {
              *a4 = v22;
            }
          }
        }
      }
    }
  }

  return result;
}

void FigPartialSampleTableAccessorStepInPresentationOrder(uint64_t *a1, uint64_t a2, void *a3, CMTime *a4)
{
  v5 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v6;
  v7 = *(MEMORY[0x1E6960C98] + 16);
  *&v24.start.value = *MEMORY[0x1E6960C98];
  *&v24.start.epoch = v7;
  *&v24.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (a1)
  {
    v15 = v5;
    FigPartialSampleTableGetDecodeTimeRange(*a1, &v24, 0);
    v11 = 0;
    if (a2)
    {
      if (a2 > 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (a2 <= 0)
      {
        v13 = 32;
      }

      else
      {
        v13 = 8;
      }

      while (1)
      {
        v23 = 0;
        v22 = 0u;
        memset(v21, 0, sizeof(v21));
        v20 = 0;
        v18 = 0;
        SampleTiming = fpst_reading_runSegmentAtIndex(*a1, 14, a1[14], &v20);
        if (SampleTiming)
        {
          break;
        }

        v19 = *(v20 + v13);
        SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(a1, v21);
        if (SampleTiming)
        {
          break;
        }

        *&lhs.start.value = v22;
        lhs.start.epoch = v23;
        rhs = v19;
        CMTimeAdd(&v25, &lhs.start, &rhs);
        lhs = v24;
        rhs = v25;
        if (!CMTimeRangeContainsTime(&lhs, &rhs))
        {
          if (!a4)
          {
            goto LABEL_19;
          }

          SampleTiming = 0;
          *a4 = v25;
          break;
        }

        lhs.start = v19;
        fpst_accessor_stepByDecodeTimeInternal(a1, &lhs.start, 1, &v18);
        if (SampleTiming)
        {
          break;
        }

        if (v18)
        {
          FigPartialSampleTableAccessorStepInPresentationOrder_cold_1(&lhs);
          SampleTiming = lhs.start.value;
          break;
        }

        v11 += v12;
        if (a2 == v11)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (a4)
      {
        SampleTiming = 0;
        *&a4->value = v15;
        a4->epoch = v6;
      }

      else
      {
LABEL_19:
        SampleTiming = 0;
      }
    }
  }

  else
  {
    FigPartialSampleTableAccessorStepInPresentationOrder_cold_2(v21);
    v11 = 0;
    SampleTiming = v21[0];
  }

  if (a3)
  {
    if (!SampleTiming)
    {
      *a3 = v11;
    }
  }
}

uint64_t FigPartialSampleTableGetDecodeTimeRange(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v3 = *(MEMORY[0x1E6960C98] + 16);
  *&v22.start.value = *MEMORY[0x1E6960C98];
  *&v22.start.epoch = v3;
  *&v22.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  v20 = *MEMORY[0x1E6960C70];
  v21 = *(MEMORY[0x1E6960C70] + 16);
  if (!a2)
  {
    FigPartialSampleTableGetDecodeTimeRange_cold_3(v17);
LABEL_22:
    v7 = 0;
    value_low = LODWORD(v17[0].value);
    goto LABEL_10;
  }

  if (!a1)
  {
    FigPartialSampleTableGetDecodeTimeRange_cold_2(v17);
    goto LABEL_22;
  }

  if ((*(a1 + 116) & 1) == 0 || (*(a1 + 140) & 1) == 0 || *(a1 + 144) || (*(a1 + 128) & 0x8000000000000000) != 0)
  {
    memset(v17, 0, sizeof(v17));
    SampleTiming = FigPartialSampleTableCreateAccessorAtIndex(a1, 0, &v25);
    v7 = v25;
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v25, v17);
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    v19 = v17[2];
    FigPartialSampleTableAccessorStepInDecodeOrder(v7, *(*(a1 + 16) + 8) - 1, &v24);
    if (SampleTiming)
    {
      goto LABEL_19;
    }

    if (v24 != *(*(a1 + 16) + 8) - 1)
    {
      FigPartialSampleTableGetDecodeTimeRange_cold_1(&lhs);
      value_low = LODWORD(lhs.value);
      goto LABEL_10;
    }

    SampleTiming = FigPartialSampleTableAccessorGetSampleTiming(v7, v17);
    if (SampleTiming || (v18 = v17[2], SampleTiming = fpst_reading_runSegmentAtIndex(*v7, 10, v7[10], &v23), SampleTiming))
    {
LABEL_19:
      value_low = SampleTiming;
      goto LABEL_10;
    }

    v13 = v23;
    lhs = v18;
    v15 = *(v23 + 32);
    CMTimeAdd(&v18, &lhs, &v15);
    lhs = v19;
    v15 = v18;
    CMTimeRangeFromTimeToTime(&v22, &lhs, &v15);
    v20 = *(v13 + 32);
    v21 = *(v13 + 48);
    if (!*(a1 + 176))
    {
      v14 = *&v22.start.epoch;
      *(a1 + 104) = *&v22.start.value;
      *(a1 + 120) = v14;
      *(a1 + 136) = *&v22.duration.timescale;
      *(a1 + 80) = v20;
      *(a1 + 96) = v21;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 120);
    *&v22.start.value = *(a1 + 104);
    *&v22.start.epoch = v8;
    *&v22.duration.timescale = *(a1 + 136);
    v20 = *(a1 + 80);
    v21 = *(a1 + 96);
  }

  v9 = *&v22.start.epoch;
  *a2 = *&v22.start.value;
  a2[1] = v9;
  a2[2] = *&v22.duration.timescale;
  value_low = 0;
  if (a3)
  {
    *a3 = v20;
    *(a3 + 16) = v21;
  }

LABEL_10:
  FigPartialSampleTableAccessorDestroy(v7);
  return value_low;
}

uint64_t FigPartialSampleTableAccessorGetSampleTiming(uint64_t *a1, uint64_t a2)
{
  v18 = 0;
  if (a1)
  {
    if (a2)
    {
      v13 = *MEMORY[0x1E6960C70];
      *&v17.value = *MEMORY[0x1E6960C70];
      v4 = *(MEMORY[0x1E6960C70] + 16);
      v17.epoch = v4;
      v5 = fpst_reading_runSegmentAtIndex(*a1, 10, a1[10], &v18);
      if (v5)
      {
        return v5;
      }

      v6 = v18;
      v7 = a1[18] - *v18;
      if (v7 >= 0x80000000)
      {
        FigPartialSampleTableAccessorGetSampleTiming_cold_1(&rhs);
        return LODWORD(rhs.value);
      }

      time = *(v18 + 32);
      CMTimeMultiply(&rhs, &time, v7);
      v8 = *(v6 + 8);
      time.epoch = *(v6 + 24);
      *&time.value = v8;
      CMTimeAdd(&v17, &time, &rhs);
      *(a2 + 48) = v17;
      v5 = fpst_reading_runSegmentAtIndex(*a1, 11, a1[11], &v18);
      if (v5)
      {
        return v5;
      }

      else
      {
        v9 = *(v18 + 24);
        *a2 = *(v18 + 8);
        *(a2 + 16) = v9;
        *&rhs.value = v13;
        rhs.epoch = v4;
        v10 = fpst_reading_runSegmentAtIndex(*a1, 12, a1[12], &v18);
        if (!v10)
        {
          time = v17;
          v11 = *(v18 + 8);
          v14.epoch = *(v18 + 24);
          *&v14.value = v11;
          CMTimeAdd(&rhs, &time, &v14);
          *(a2 + 24) = rhs;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    FigPartialSampleTableAccessorGetSampleTiming_cold_2(&v17);
    return LODWORD(v17.value);
  }

  return v10;
}

uint64_t FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!a1)
  {
    FigPartialSampleTableAccessorGetMinimumUpcomingPresentationTime_cold_1(v17);
    return LODWORD(v17[0].value);
  }

  if ((*(*(*a1 + 16) + 1) & 2) == 0)
  {
    return 4294949584;
  }

  if (!a3)
  {
    return 0;
  }

  result = fpst_reading_runSegmentAtIndex(*a1, 16, a1[16], &v18);
  if (!result)
  {
    v8 = v18;
    v9 = *(v18 + 24);
    *a3 = *(v18 + 8);
    *(a3 + 16) = v9;
    v19 = *(v8 + 32);
    v10 = *(v8 + 40);
    v11 = *(v8 + 44);
    v12 = *(v8 + 48);
    *a4 = v19;
    v20 = v10;
    *(a4 + 8) = v10;
    *(a4 + 12) = v11;
    *(a4 + 16) = v12;
    if (a2)
    {
      if (v11)
      {
        memset(v17, 0, sizeof(v17));
        FigPartialSampleTableAccessorGetSampleTiming(a2, v17);
        time1.timescale = v20;
        time1.flags = v11;
        time1.epoch = v12;
        v15 = v17[2];
        time1.value = v19;
        if (CMTimeCompare(&time1, &v15) >= 1)
        {
          v13 = MEMORY[0x1E6960C88];
          *a3 = *MEMORY[0x1E6960C88];
          v14 = MEMORY[0x1E6960C70];
          *(a3 + 16) = *(v13 + 16);
          *a4 = *v14;
          *(a4 + 16) = *(v14 + 16);
          return 4294949584;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorGetPresentationTimeRange(uint64_t *a1, _OWORD *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!a1)
  {
    FigPartialSampleTableAccessorGetPresentationTimeRange_cold_1(v13);
    return LODWORD(v13[0].value);
  }

  if (!a2)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  result = FigPartialSampleTableAccessorGetSampleTiming(a1, v13);
  if (!result)
  {
    result = fpst_reading_runSegmentAtIndex(*a1, 12, a1[12], &v16);
    if (!result)
    {
      v17 = *(v16 + 32);
      v7 = *(v16 + 44);
      v18 = *(v16 + 40);
      if ((v7 & 0x1D) == 1)
      {
        v8 = *(v16 + 48);
        time1.start.value = *(v16 + 32);
        time1.start.timescale = *(v16 + 40);
        time1.start.flags = v7;
        time1.start.epoch = v8;
        time2 = **&MEMORY[0x1E6960CC0];
        if (CMTimeCompare(&time1.start, &time2))
        {
          time2 = v13[1];
          duration.value = v17;
          duration.timescale = v18;
          duration.flags = v7;
          duration.epoch = v8;
          CMTimeRangeMake(&time1, &time2, &duration);
          v9 = *&time1.start.epoch;
          *a2 = *&time1.start.value;
          a2[1] = v9;
          a2[2] = *&time1.duration.timescale;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorCopy(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*a1)
      {
        v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x102004019573705uLL);
        v5 = *(a1 + 16);
        *v4 = *a1;
        v4[1] = v5;
        v6 = *(a1 + 80);
        v8 = *(a1 + 32);
        v7 = *(a1 + 48);
        v4[4] = *(a1 + 64);
        v4[5] = v6;
        v4[2] = v8;
        v4[3] = v7;
        v10 = *(a1 + 112);
        v9 = *(a1 + 128);
        v11 = *(a1 + 96);
        *(v4 + 18) = *(a1 + 144);
        v4[7] = v10;
        v4[8] = v9;
        v4[6] = v11;
        CFRetain(*v4);
        result = 0;
        *a2 = v4;
      }

      else
      {
        FigPartialSampleTableAccessorCopy_cold_1(&v13);
        return v13;
      }
    }

    else
    {
      FigPartialSampleTableAccessorCopy_cold_2(&v14);
      return v14;
    }
  }

  else
  {
    FigPartialSampleTableAccessorCopy_cold_3(&v15);
    return v15;
  }

  return result;
}

void FigPartialSampleTableAccessorDestroy(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

uint64_t FigPartialSampleTableGetSampleCount(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (a1)
    {
      result = 0;
      *a2 = *(*(a1 + 16) + 8);
    }

    else
    {
      FigPartialSampleTableGetSampleCount_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigPartialSampleTableGetSampleCount_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigPartialSampleTableRecommendSampleTableFlagsForCursor(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a3)
  {
    v5 = a1 & 0xFFFFFFFFFFFFFFBFLL;
    if ((a1 & 8) != 0)
    {
      if ((a1 & 0x10) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 192))
      {
        v5 = a1 & 0xFFFFFFFFFFFFFFAFLL;
      }

      if ((v5 & 0x10) == 0 && !*(*(CMBaseObjectGetVTable() + 16) + 144))
      {
        v5 &= 0xFFFFFFFFFFFFFFA7;
      }
    }

    else if ((a1 & 0x10) != 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFFFA7;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFDLL;
    if ((v5 & 4) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      v6 = v5 & 0xFFFFFFFFFFFFFFF9;
    }

    if ((v6 & 0x100) != 0 && !*(*(CMBaseObjectGetVTable() + 16) + 200))
    {
      v6 &= 0xFFFFFFFFFFFFFEFDLL;
    }

    result = 0;
    *a3 = v6 & 0xFFFFFFFFFFFFFFDFLL;
  }

  else
  {
    FigPartialSampleTableRecommendSampleTableFlagsForCursor_cold_1(&v8);
    return v8;
  }

  return result;
}

uint64_t FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes(void *a1, void *a2)
{
  if (!a1)
  {
    FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes_cold_2(&v6);
    return v6;
  }

  result = 0;
  if (a2 && a1[18] != -1)
  {
    v5 = *(*a1 + 64);
    if (v5)
    {
      result = v5(*(*a1 + 72));
      if (!result)
      {
        *a2 = 0;
      }

      return result;
    }

    FigPartialSampleTableAccessorCopyTranslatedSampleDependencyAttributes_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer(const void *a1, OpaqueCMBlockBuffer *a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, char a8, int a9, int a10, CMTimeValue *a11, _DWORD *a12, char *a13)
{
  v196 = *MEMORY[0x1E69E9840];
  v168 = 0;
  v169 = 0;
  cf = 0;
  v167 = 0;
  v13 = MEMORY[0x1E6960C70];
  v165 = 0;
  v184 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a10 > 0)
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    v153 = *(MEMORY[0x1E6960C70] + 16);
    if (a10 >= a9)
    {
      v17 = a9;
    }

    else
    {
      v17 = a10;
    }

    v146 = v17;
    v145 = *MEMORY[0x1E695E480];
    v158 = a10;
    v148 = a8;
    if (a6 && a8 >= 1 && (dictionaryRepresentation = 0, FigSampleCursorGetFigBaseObject(), v19 = v18, (v20 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0))
    {
      v20(v19, @"CursorPlayableHorizon", v145, &dictionaryRepresentation);
      v143 = v153;
      if (!dictionaryRepresentation)
      {
LABEL_14:
        v23 = 0;
        v159 = 0;
        v156 = 0;
        v24 = 0;
        v142 = a3 + 3;
        v160 = -1;
        v151 = (a3 + 1);
        v152 = 1;
        v25 = *v13;
        v150 = (a3 + 2);
        v155 = *v13;
LABEL_15:
        *&v164.value = v25;
        v164.epoch = v153;
        FigPartialSampleTableCreateForWriting(v145, a2, a5, &v169);
        if (v26)
        {
          goto LABEL_334;
        }

        v27 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v27)
        {
          goto LABEL_318;
        }

        v26 = v27(a1, &v168);
        if (v26)
        {
          goto LABEL_334;
        }

        v28 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        v29 = v158;
        if (!v28)
        {
          goto LABEL_318;
        }

        v26 = v28(a1, &v164);
        if (v26)
        {
LABEL_334:
          value_low = v26;
          goto LABEL_319;
        }

        v30 = v148;
        if ((v148 & 0x80) != 0)
        {
          v31 = a7;
          if ((*(a7 + 12) & 1) == 0)
          {
            goto LABEL_53;
          }

          if ((*(a7 + 36) & 1) == 0)
          {
            goto LABEL_53;
          }

          if (*(a7 + 40))
          {
            goto LABEL_53;
          }

          if ((*(a7 + 24) & 0x8000000000000000) != 0)
          {
            goto LABEL_53;
          }

          v140 = *(a7 + 16);
          *&range.start.value = *a7;
          *&range.start.epoch = v140;
          *&range.duration.timescale = *(a7 + 32);
          CMTimeRangeGetEnd(time1, &range);
          range.start = v164;
          if (CMTimeCompare(&range.start, time1) < 0)
          {
            goto LABEL_53;
          }

          v30 = 1;
        }

        else
        {
          v31 = a7;
          if (!v148)
          {
            if (a1)
            {
              v61 = CFRetain(a1);
            }

            else
            {
              v61 = 0;
            }

            v148 = 0;
LABEL_106:
            cf = v61;
LABEL_107:
            v65 = v168;
            v66 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v66)
            {
              goto LABEL_318;
            }

            v26 = v66(v65, &v167);
            if (!v26)
            {
              v67 = v167;
              v68 = *(*(CMBaseObjectGetVTable() + 16) + 168);
              if (v68)
              {
                v26 = v68(v67, 1, &v165);
                if (v29 == 1 && v26 == -12840)
                {
                  v24 = 1;
                }

                if (v26)
                {
                  v70 = v26 == -12840;
                }

                else
                {
                  v70 = 1;
                }

                if (!v70)
                {
                  goto LABEL_334;
                }

                if (v165 != 1 && v167)
                {
                  CFRelease(v167);
                  v167 = 0;
                }

                v157 = 0;
                v71 = 0;
                while (1)
                {
                  v72 = v23;
                  v161 = 0;
                  v73 = v167;
                  if (!v167)
                  {
                    if (v156)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_1(&range);
                      goto LABEL_337;
                    }

                    v156 = 1;
                  }

                  v75 = v168;
                  v74 = v169;
                  v195 = 0u;
                  memset(v194, 0, sizeof(v194));
                  memset(v193, 0, sizeof(v193));
                  memset(v192, 0, sizeof(v192));
                  memset(v191, 0, sizeof(v191));
                  memset(v190, 0, sizeof(v190));
                  v188 = 0u;
                  memset(v189, 0, sizeof(v189));
                  v187 = 0u;
                  memset(&range, 0, sizeof(range));
                  lhs.value = 0;
                  rhs.value = 0;
                  v181 = 0;
                  dictionaryRepresentation = 0;
                  v179 = 0;
                  v180 = 0;
                  if ((a5 & 8) != 0)
                  {
                    v76 = 0;
                    v77 = 0;
                    *time1 = 0;
                    v178 = 0;
                    if ((a5 & 0x10) == 0)
                    {
                      v78 = *(*(CMBaseObjectGetVTable() + 16) + 144);
                      if (!v78)
                      {
                        goto LABEL_206;
                      }

                      v79 = v78(v75, time1, &v178, &lhs, &rhs);
                      if (v79)
                      {
                        goto LABEL_176;
                      }

                      v77 = *time1;
                      v76 = v178;
                    }

                    range.start.value = v77;
                    *&range.start.timescale = v76;
                    range.start.epoch = 0;
                    range.duration.value = 0;
                  }

                  if ((a5 & 4) != 0)
                  {
                    *time1 = 0;
                    v177 = 0;
                    v178 = 0;
                    v176 = 0;
                    v175 = 0;
                    v174 = 0;
                    v81 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                    if (!v81)
                    {
                      goto LABEL_206;
                    }

                    v79 = v81(v75, &v181, &v180, time1, &v178, &v177, &v176, &v175 + 1, &v175, &v174);
                    if (v79)
                    {
                      goto LABEL_176;
                    }

                    BYTE10(v187) = v174;
                    BYTE8(v187) = HIBYTE(v175);
                    BYTE9(v187) = v175;
                    *&v187 = v177;
                    *&range.duration.timescale = *time1;
                    range.duration.epoch = v178;
                    *&v188 = v176;
                    if (rhs.value)
                    {
                      if (rhs.value != v180)
                      {
                        v82 = 3538;
LABEL_181:
                        FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_2(v82, &v183);
                        value_low = v183;
                        goto LABEL_207;
                      }
                    }

                    else
                    {
                      rhs.value = v180;
                      v180 = 0;
                    }

                    value = lhs.value;
                    v96 = v181;
                    if (lhs.value)
                    {
                      if (lhs.value != v181)
                      {
                        v82 = 3546;
                        goto LABEL_181;
                      }
                    }

                    else
                    {
                      lhs.value = v181;
                      v181 = 0;
                      value = v96;
                    }
                  }

                  else
                  {
                    value = lhs.value;
                  }

                  if (value)
                  {
                    *time1 = 0;
                    if (!*v151)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_3(&v178);
LABEL_185:
                      value_low = v178;
                      goto LABEL_207;
                    }

                    v79 = (*v151)(a4);
                    if (v79)
                    {
                      goto LABEL_176;
                    }

                    *(&v188 + 1) = *time1;
                  }

                  else
                  {
                    *(&v188 + 1) = 0;
                  }

                  if (rhs.value)
                  {
                    *time1 = 0;
                    if (!*v150)
                    {
                      FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_4(&v178);
                      goto LABEL_185;
                    }

                    v79 = (*v150)(a4);
                    if (v79)
                    {
                      goto LABEL_176;
                    }

                    v189[0] = *time1;
                  }

                  else
                  {
                    v189[0] = 0;
                  }

                  v173 = 0;
                  v171 = 0u;
                  v172 = 0u;
                  memset(time1, 0, sizeof(time1));
                  v83 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                  if (!v83)
                  {
                    goto LABEL_206;
                  }

                  v79 = v83(v75, &v172);
                  if (!v79)
                  {
                    v84 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                    if (!v84)
                    {
                      goto LABEL_206;
                    }

                    v79 = v84(v75, &time1[24]);
                    if (!v79)
                    {
                      v85 = *(*(CMBaseObjectGetVTable() + 16) + 56);
                      if (!v85)
                      {
                        goto LABEL_206;
                      }

                      v79 = v85(v75, time1);
                      if (!v79)
                      {
                        *&v189[3] = *&time1[16];
                        *&v189[5] = v171;
                        *&v189[7] = v172;
                        v189[9] = v173;
                        *&v189[1] = *time1;
                        if ((a5 & 0x100) == 0 || !*(*(CMBaseObjectGetVTable() + 16) + 200))
                        {
                          goto LABEL_161;
                        }

                        v86 = *(*(CMBaseObjectGetVTable() + 16) + 200);
                        if (!v86)
                        {
                          goto LABEL_206;
                        }

                        v79 = v86(v75, v192, &v192[1] + 8);
                        if (!v79)
                        {
LABEL_161:
                          if ((a5 & 0x200) != 0)
                          {
                            FigSampleCursorUtilityGetMinimumUpcomingPresentationTime(v75, 0, v193, &v193[1]);
                          }

                          if (!v73)
                          {
                            goto LABEL_166;
                          }

                          v87 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                          if (!v87)
                          {
                            goto LABEL_206;
                          }

                          v79 = v87(v73, v191);
                          if (!v79)
                          {
LABEL_166:
                            if ((a5 & 0x80) == 0)
                            {
                              goto LABEL_167;
                            }

                            v178 = 0;
                            v97 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                            if (!v97)
                            {
                              goto LABEL_206;
                            }

                            v79 = v97(v75, &v179);
                            if (!v79)
                            {
                              v98 = v179;
                              v99 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                              if (!v99 || v99(v98, 1, &v178) || v178 != 1)
                              {
                                goto LABEL_341;
                              }

                              v100 = v179;
                              v101 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                              if (!v101)
                              {
                                goto LABEL_206;
                              }

                              v79 = v101(v100, v190);
                              if (!v79)
                              {
                                v102 = v179;
                                v103 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                                if (!v103)
                                {
                                  goto LABEL_206;
                                }

                                v79 = v103(v102, &v191[1] + 8);
                                if (!v79)
                                {
LABEL_341:
                                  if (v179)
                                  {
                                    CFRelease(v179);
                                    v179 = 0;
                                  }

                                  v104 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                                  if (!v104)
                                  {
LABEL_206:
                                    value_low = 4294954514;
                                    goto LABEL_207;
                                  }

                                  v79 = v104(v75, &v179);
                                  if (!v79)
                                  {
                                    v105 = v179;
                                    v106 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                                    if (!v106 || v106(v105, -1, &v178) || v178 != -1)
                                    {
                                      goto LABEL_204;
                                    }

                                    v107 = v179;
                                    v108 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                                    if (!v108)
                                    {
                                      goto LABEL_206;
                                    }

                                    v79 = v108(v107, &v190[1] + 8);
                                    if (!v79)
                                    {
LABEL_204:
                                      if (v179)
                                      {
                                        CFRelease(v179);
                                        v179 = 0;
                                      }

LABEL_167:
                                      if (a5)
                                      {
                                        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
                                        {
                                          v88 = *(*(CMBaseObjectGetVTable() + 16) + 64);
                                          if (v88)
                                          {
                                            v88(v75, v194, &v194[1], &v194[4], &v194[2]);
                                          }
                                        }
                                      }

                                      *time1 = 0;
                                      if (!*v142)
                                      {
                                        FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_5(&v178);
                                        goto LABEL_185;
                                      }

                                      v89 = *(*(CMBaseObjectGetVTable() + 16) + 160);
                                      if (!v89)
                                      {
                                        goto LABEL_206;
                                      }

                                      v79 = v89(v75, &dictionaryRepresentation);
                                      if (!v79)
                                      {
                                        v79 = (*v142)(a4, dictionaryRepresentation, time1);
                                        if (!v79)
                                        {
                                          *(&v195 + 1) = *time1;
                                          FigPartialSampleTableTryAppendSampleInformation(v74, &range, &v161, v90, v91, v92, v93, v94);
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
                    }
                  }

LABEL_176:
                  value_low = v79;
LABEL_207:
                  if (lhs.value)
                  {
                    CFRelease(lhs.value);
                  }

                  if (v181)
                  {
                    CFRelease(v181);
                  }

                  if (rhs.value)
                  {
                    CFRelease(rhs.value);
                  }

                  if (v180)
                  {
                    CFRelease(v180);
                  }

                  if (dictionaryRepresentation)
                  {
                    CFRelease(dictionaryRepresentation);
                  }

                  if (v179)
                  {
                    CFRelease(v179);
                  }

                  if (value_low)
                  {
                    goto LABEL_319;
                  }

                  v109 = v161;
                  v110 = v167;
                  if (v161 < 2)
                  {
                    goto LABEL_229;
                  }

                  if (!v167)
                  {
                    v152 = 0;
                    goto LABEL_236;
                  }

                  v111 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (!v111)
                  {
                    break;
                  }

                  v112 = v111(v110, v109 - 1, &v165);
                  if (v112)
                  {
                    value_low = v112;
                    if (v112 != -12840)
                    {
                      goto LABEL_319;
                    }
                  }

                  v152 = 0;
                  v110 = v167;
                  if (v165 == v109 - 1 || !v167)
                  {
LABEL_229:
                    if (v110 && (flags & 0x1D) == 1)
                    {
                      *&range.start.value = v155;
                      range.start.epoch = v153;
                      v113 = *(*(CMBaseObjectGetVTable() + 16) + 40);
                      if (v113)
                      {
                        v113(v110, &range);
                      }

                      if ((range.start.flags & 0x1D) == 1)
                      {
                        *time1 = *&range.start.value;
                        *&time1[16] = range.start.epoch;
                        lhs.value = v184;
                        lhs.timescale = timescale;
                        lhs.flags = flags;
                        lhs.epoch = v143;
                        v159 = CMTimeCompare(time1, &lhs) >= 0;
                      }

                      else
                      {
                        v159 = 0;
                      }
                    }
                  }

                  else
                  {
                    CFRelease(v167);
                    v152 = 0;
                    v167 = 0;
                  }

LABEL_236:
                  if (v160 != -1 || v161 < 1)
                  {
                    goto LABEL_247;
                  }

                  v114 = v168;
                  v115 = *(CMBaseObjectGetVTable() + 16);
                  if (v115)
                  {
                    v116 = v115;
                    if (!a1)
                    {
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    v116 = 0;
                    if (!a1)
                    {
                      goto LABEL_244;
                    }
                  }

                  v117 = *(CMBaseObjectGetVTable() + 16);
                  if (!v117)
                  {
LABEL_244:
                    v118 = 0;
                    goto LABEL_245;
                  }

                  v118 = v117;
LABEL_245:
                  if (v116 == v118 && *(v116 + 32) && (*(v118 + 32))(v114, a1))
                  {
                    if (v161 >= 2)
                    {
                      v131 = v167;
                      if (!v167)
                      {
                        goto LABEL_290;
                      }

                      v132 = *(CMBaseObjectGetVTable() + 16);
                      if (v132)
                      {
                        v133 = v132;
                        if (!a1)
                        {
LABEL_285:
                          v135 = 0;
                          goto LABEL_286;
                        }
                      }

                      else
                      {
                        v133 = 0;
                        if (!a1)
                        {
                          goto LABEL_285;
                        }
                      }

                      v134 = *(CMBaseObjectGetVTable() + 16);
                      if (!v134)
                      {
                        goto LABEL_285;
                      }

                      v135 = v134;
LABEL_286:
                      if (v133 == v135 && *(v133 + 32) && (*(v135 + 32))(v131, a1) == 1)
                      {
LABEL_290:
                        range.start.value = 0;
                        *time1 = 0;
                        lhs.value = 0;
                        rhs.value = 0;
                        v136 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                        if (!v136)
                        {
                          break;
                        }

                        v26 = v136(a1, 0, 0, &lhs, 0, 0, &range, 0, 0, 0);
                        if (v26)
                        {
                          goto LABEL_334;
                        }

                        v137 = v168;
                        v138 = *(*(CMBaseObjectGetVTable() + 16) + 152);
                        if (!v138)
                        {
                          break;
                        }

                        v26 = v138(v137, 0, 0, &rhs, 0, 0, time1, 0, 0, 0);
                        if (v26)
                        {
                          goto LABEL_334;
                        }

                        if (rhs.value != lhs.value)
                        {
                          FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_6(&dictionaryRepresentation);
                          value_low = dictionaryRepresentation;
                          goto LABEL_319;
                        }

                        v160 = range.start.value + v71 - *time1;
                        v157 = 1;
                        goto LABEL_247;
                      }
                    }

                    v160 = -1;
                    goto LABEL_247;
                  }

                  v157 = 1;
                  v160 = v71;
LABEL_247:
                  if (v24)
                  {
                    v160 = v161 - 1;
                    goto LABEL_316;
                  }

                  if (v159 && v157)
                  {
                    goto LABEL_316;
                  }

                  v119 = v167;
                  if (v167)
                  {
                    v120 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                    if (!v120)
                    {
                      break;
                    }

                    v121 = v120(v119, 1, &v165);
                    if (v121)
                    {
                      value_low = v121;
                      if (v121 != -12840)
                      {
                        goto LABEL_319;
                      }
                    }

                    if (v165 != 1 && v167)
                    {
                      CFRelease(v167);
                      v167 = 0;
                    }
                  }

                  v122 = cf;
                  if (cf)
                  {
                    v123 = v168;
                    v124 = *(CMBaseObjectGetVTable() + 16);
                    if (v124)
                    {
                      v125 = v124;
                    }

                    else
                    {
                      v125 = 0;
                    }

                    v127 = *(CMBaseObjectGetVTable() + 16);
                    if (v127)
                    {
                      v128 = v127;
                    }

                    else
                    {
                      v128 = 0;
                    }

                    v126 = v125 == v128 && *(v125 + 32) && (*(v128 + 32))(v123, v122) == -1;
                  }

                  else
                  {
                    v126 = 1;
                  }

                  v129 = v168;
                  v130 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (v130)
                  {
                    LOBYTE(v130) = v130(v129, v109, &v165) == 0;
                  }

                  if (v109 > 0 && v126 && ((v72 < v158) & v130) == 1)
                  {
                    v71 += v109;
                    v23 = v72 + 1;
                    if (v165 == v109)
                    {
                      continue;
                    }
                  }

                  if (!v157)
                  {
                    v139 = 0;
                    v146 = 0;
                    v158 = 1;
                    goto LABEL_299;
                  }

LABEL_316:
                  FigPartialSampleTableFinishWriting(v169);
                  if (v26)
                  {
                    goto LABEL_334;
                  }

                  v139 = 1;
LABEL_299:
                  if (v168)
                  {
                    CFRelease(v168);
                    v168 = 0;
                  }

                  if (v167)
                  {
                    CFRelease(v167);
                    v167 = 0;
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v169)
                  {
                    CFRelease(v169);
                    v169 = 0;
                  }

                  v23 = v72 + 1;
                  v25 = v155;
                  if (v139)
                  {
                    if (a12)
                    {
                      *a12 = v72 + 1;
                    }

                    if (a11)
                    {
                      *a11 = v160;
                    }

                    value_low = 0;
                    if (a13)
                    {
                      *a13 = v152;
                    }

                    goto LABEL_319;
                  }

                  goto LABEL_15;
                }
              }

LABEL_318:
              value_low = 4294954514;
              goto LABEL_319;
            }

            goto LABEL_334;
          }
        }

        v148 = v30;
        if ((*(v31 + 12) & 1) != 0 && (*(v31 + 36) & 1) != 0 && !*(v31 + 40) && (*(v31 + 24) & 0x8000000000000000) == 0)
        {
          range.start = v164;
          *time1 = *v31;
          *&time1[16] = *(v31 + 16);
          if (CMTimeCompare(&range.start, time1) <= 0)
          {
            v148 = 255;
LABEL_53:
            v44 = v168;
            v45 = *(*(CMBaseObjectGetVTable() + 16) + 168);
            if (v45)
            {
              v45(v44, -15, 0);
            }

            v46 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v46)
            {
              goto LABEL_318;
            }

            v26 = v46(a1, &cf);
            if (v26)
            {
              goto LABEL_334;
            }

            v47 = a7;
            if (v146 >= 1)
            {
              v48 = 1;
              while ((*(v47 + 12) & 1) != 0 && (*(v47 + 36) & 1) != 0 && !*(v47 + 40) && (*(v47 + 24) & 0x8000000000000000) == 0)
              {
                v56 = cf;
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 48);
                if (!v57)
                {
                  goto LABEL_318;
                }

                v26 = v57(v56, &v164);
                if (v26)
                {
                  goto LABEL_334;
                }

                v47 = a7;
                *&range.start.value = *a7;
                range.start.epoch = *(a7 + 16);
                *time1 = v164;
                if (CMTimeCompare(&range.start, time1) < 1)
                {
                  goto LABEL_81;
                }

LABEL_69:
                v53 = cf;
                v54 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                if (v54)
                {
                  v54(v53, 1, &v165);
                }

                if (v165 == 1)
                {
                  v39 = v48++ < v146;
                  if (v39)
                  {
                    continue;
                  }
                }

                goto LABEL_84;
              }

              if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
              {
                goto LABEL_84;
              }

              v49 = cf;
              v50 = *(CMBaseObjectGetVTable() + 16);
              if (v50)
              {
                v51 = v50;
                if (a1)
                {
LABEL_65:
                  v52 = *(CMBaseObjectGetVTable() + 16);
LABEL_68:
                  if (v51 == v52)
                  {
                    v55 = *(v51 + 80);
                    if (v55)
                    {
                      if (v55(v49, a1, 1))
                      {
                        goto LABEL_81;
                      }
                    }
                  }

                  goto LABEL_69;
                }
              }

              else
              {
                v51 = 0;
                if (a1)
                {
                  goto LABEL_65;
                }
              }

              v52 = 0;
              goto LABEL_68;
            }

LABEL_84:
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v29 = v158;
            if (a1)
            {
              v61 = CFRetain(a1);
            }

            else
            {
              v61 = 0;
            }

            goto LABEL_106;
          }
        }

        if (v146 < 1)
        {
LABEL_82:
          v58 = v168;
          v59 = *(CMBaseObjectGetVTable() + 16);
          if (v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = 0;
          }

          v29 = v158;
          if (v58 && (v62 = *(CMBaseObjectGetVTable() + 16)) != 0)
          {
            v63 = v62;
          }

          else
          {
            v63 = 0;
          }

          if (v60 == v63 && *(v60 + 32) && (*(v63 + 32))(a1, v58))
          {
            if (v168)
            {
              CFRelease(v168);
              v168 = 0;
            }

            v64 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v64)
            {
              goto LABEL_318;
            }

            v26 = v64(a1, &v168);
            if (v26)
            {
              goto LABEL_334;
            }
          }

          goto LABEL_107;
        }

        v32 = 1;
        while (1)
        {
          if ((*(v31 + 12) & 1) != 0 && (*(v31 + 36) & 1) != 0 && !*(v31 + 40) && (*(v31 + 24) & 0x8000000000000000) == 0)
          {
            v41 = v168;
            v42 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v42)
            {
              goto LABEL_318;
            }

            v26 = v42(v41, &v164);
            if (v26)
            {
              goto LABEL_334;
            }

            v31 = a7;
            v43 = *(a7 + 16);
            *&range.start.value = *a7;
            *&range.start.epoch = v43;
            *&range.duration.timescale = *(a7 + 32);
            CMTimeRangeGetEnd(time1, &range);
            range.start = v164;
            if ((CMTimeCompare(time1, &range.start) & 0x80000000) == 0)
            {
              goto LABEL_81;
            }

            goto LABEL_37;
          }

          if (!*(*(CMBaseObjectGetVTable() + 16) + 80))
          {
            goto LABEL_82;
          }

          v33 = v168;
          v34 = *(CMBaseObjectGetVTable() + 16);
          if (v34)
          {
            v35 = v34;
            if (!a1)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v35 = 0;
            if (!a1)
            {
LABEL_35:
              v36 = 0;
              goto LABEL_36;
            }
          }

          v36 = *(CMBaseObjectGetVTable() + 16);
LABEL_36:
          if (v35 == v36)
          {
            v40 = *(v35 + 80);
            if (v40)
            {
              if (v40(v33, a1, 0))
              {
LABEL_81:
                v29 = v158;
                goto LABEL_107;
              }
            }
          }

LABEL_37:
          v37 = v168;
          v38 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v38)
          {
            v38(v37, -1, &v165);
          }

          if (v165 == -1)
          {
            v39 = v32++ < v146;
            if (v39)
            {
              continue;
            }
          }

          goto LABEL_82;
        }
      }

      *&range.start.value = *v13;
      range.start.epoch = v153;
      memset(time1, 0, 24);
      CMTimeMakeFromDictionary(time1, dictionaryRepresentation);
      CFRelease(dictionaryRepresentation);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {
        v21(a1, &range);
      }

      lhs = range.start;
      rhs = *time1;
      CMTimeAdd(&v164, &lhs, &rhs);
      v184 = v164.value;
      flags = v164.flags;
      timescale = v164.timescale;
      epoch = v164.epoch;
    }

    else
    {
      epoch = v153;
    }

    v143 = epoch;
    goto LABEL_14;
  }

  FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer_cold_7(&range);
LABEL_337:
  value_low = LODWORD(range.start.value);
LABEL_319:
  if (v168)
  {
    CFRelease(v168);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v169)
  {
    CFRelease(v169);
  }

  return value_low;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_sRegisterFigPartialSampleTableOutOfBandObjectRegistryTypeOnce != -1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_cold_1();
  }

  return sFigPartialSampleTableOutOfBandObjectRegistryID;
}

uint64_t registerFigPartialSampleTableOutOfBandObjectRegistryType()
{
  result = _CFRuntimeRegisterClass();
  sFigPartialSampleTableOutOfBandObjectRegistryID = result;
  return result;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryCreate(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    if (FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_sRegisterFigPartialSampleTableOutOfBandObjectRegistryTypeOnce != -1)
    {
      FigPartialSampleTableOutOfBandObjectRegistryGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v4[3] = Mutable;
      if (Mutable)
      {
        v6 = FigSimpleMutexCreate();
        v4[2] = v6;
        if (v6)
        {
          result = 0;
          *a2 = v4;
          return result;
        }

        v8 = 4520;
      }

      else
      {
        v8 = 4517;
      }

      FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_2(v8, v4, &v9);
      return v9;
    }

    else
    {
      FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_3(&v10);
      return v10;
    }
  }

  else
  {
    FigPartialSampleTableOutOfBandObjectRegistryCreate_cold_4(&v11);
    return v11;
  }
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_6(&v14);
    return v14;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_5(&v14);
    return v14;
  }

  if (!a3)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_4(&v14);
    return v14;
  }

  if (!a4)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v9 = Value;
    v10 = a3 - 1;
    if (CFArrayGetCount(Value) > v10)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      v12 = 0;
      *a4 = ValueAtIndex;
      goto LABEL_10;
    }

    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_1(&v14);
  }

  else
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupAndRetainObjectForID_cold_2(&v14);
  }

  v12 = v14;
LABEL_10:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef cf)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_7(&v17);
    return v17;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_6(&v17);
    return v17;
  }

  if (!a3)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_5(&v17);
    return v17;
  }

  if (!cf)
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_4(&v17);
    return v17;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFNullGetTypeID())
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_3(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (!Value)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_2(&v17);
      goto LABEL_28;
    }

    Value = Mutable;
    CFDictionarySetValue(*(a1 + 24), a2, Mutable);
    CFRelease(Value);
  }

  v11 = a3 - 1;
  if (CFArrayGetCount(Value) <= v11)
  {
    if (CFArrayGetCount(Value) < v11)
    {
      v14 = *MEMORY[0x1E695E738];
      do
      {
        CFArrayAppendValue(Value, v14);
      }

      while (CFArrayGetCount(Value) < v11);
    }

    CFArrayAppendValue(Value, cf);
    goto LABEL_17;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(Value, v11);
  if (!ValueAtIndex || (v13 = CFGetTypeID(ValueAtIndex), v13 != CFNullGetTypeID()))
  {
    FigPartialSampleTableOutOfBandObjectRegistryRegisterObjectForKnownID_cold_1(&v17);
LABEL_28:
    v15 = v17;
    goto LABEL_18;
  }

  CFArraySetValueAtIndex(Value, v11, cf);
LABEL_17:
  v15 = 0;
LABEL_18:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(uint64_t a1, const void *a2, CFTypeRef cf, void *a4, char *a5)
{
  if (!a1)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_7(&v18);
    return v18;
  }

  if (!a2)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_6(&v18);
    return v18;
  }

  if (!cf)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_5(&v18);
    return v18;
  }

  if (!a4)
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_4(&v18);
    return v18;
  }

  v10 = CFGetTypeID(cf);
  if (v10 == CFNullGetTypeID())
  {
    FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_3(&v18);
    return v18;
  }

  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v12 = Value;
    v19.length = CFArrayGetCount(Value);
    v19.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v19, cf);
    if (FirstIndexOfValue != -1)
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_2(&v18);
      goto LABEL_25;
    }

    v12 = Mutable;
    CFDictionarySetValue(*(a1 + 24), a2, Mutable);
    CFRelease(v12);
  }

  if (CFArrayGetCount(v12) != -2)
  {
    CFArrayAppendValue(v12, cf);
    FirstIndexOfValue = CFArrayGetCount(v12) - 1;
    v14 = 1;
LABEL_13:
    *a4 = FirstIndexOfValue + 1;
    v16 = 0;
    if (a5)
    {
      *a5 = v14;
    }

    goto LABEL_15;
  }

  FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType_cold_1(&v18);
LABEL_25:
  v16 = v18;
LABEL_15:
  FigSimpleMutexUnlock();
  return v16;
}

void fpst_finalize(void *a1)
{
  for (i = 26; i != 111; i += 5)
  {
    v3 = a1[i];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = a1[22];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[9];
  if (v6)
  {

    CFRelease(v6);
  }
}

__CFString *fpst_copyFormattingDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTable %p", a1);
  v4 = *(a1 + 16);
  if (!v4)
  {
    CFStringAppendFormat(Mutable, 0, @"NO header>");
    return Mutable;
  }

  if (*(a1 + 176))
  {
    v5 = *(a1 + 584);
    dataPointerOut = v5;
    if (!v5)
    {
LABEL_9:
      v8 = CFRetain(@"-");
      goto LABEL_10;
    }
  }

  else
  {
    dataPointerOut = 0;
    v6 = *(v4 + 88);
    if (v6 < 1)
    {
      goto LABEL_9;
    }

    CMBlockBufferGetDataPointer(*(a1 + 24), v6, 0, 0, &dataPointerOut);
    v5 = dataPointerOut;
    if (!dataPointerOut)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v5 + 16);
  v7 = CFGetAllocator(Mutable);
  time = v13;
  v8 = CMTimeCopyDescription(v7, &time);
LABEL_10:
  v9 = v8;
  v10 = "WRITING";
  if (!*(a1 + 176))
  {
    v10 = "READING";
  }

  CFStringAppendFormat(Mutable, 0, @" (%s) (flags=0x%llx) - %lld samples - first DTS: %@>", v10, **(a1 + 16), *(*(a1 + 16) + 8), v8);
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

__CFString *fpst_copyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTable %p", a1);
  v4 = *(a1 + 16);
  if (!v4)
  {
    CFStringAppendFormat(Mutable, 0, @"\tNO header");
    return Mutable;
  }

  if (*(a1 + 176))
  {
    v5 = *(a1 + 584);
    dataPointerOut = v5;
    if (!v5)
    {
LABEL_9:
      v8 = CFRetain(@"-");
      goto LABEL_10;
    }
  }

  else
  {
    dataPointerOut = 0;
    v6 = *(v4 + 88);
    if (v6 < 1)
    {
      goto LABEL_9;
    }

    CMBlockBufferGetDataPointer(*(a1 + 24), v6, 0, 0, &dataPointerOut);
    v5 = dataPointerOut;
    if (!dataPointerOut)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v5 + 16);
  v7 = CFGetAllocator(Mutable);
  time = v31;
  v8 = CMTimeCopyDescription(v7, &time);
LABEL_10:
  v9 = v8;
  if (*(a1 + 176))
  {
    v10 = "WRITING";
  }

  else
  {
    v10 = "READING";
  }

  CFStringAppendFormat(Mutable, 0, @" (%s) (flags=0x%llx) - first DTS: %@", v10, **(a1 + 16), v8);
  if (v9)
  {
    CFRelease(v9);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = *(*(a1 + 16) + 8);
    if (v12 <= 0)
    {
      v15 = *(a1 + 160);
      v16 = 0.0;
      v13 = 0.0;
    }

    else
    {
      v13 = CMBlockBufferGetDataLength(v11) / *(*(a1 + 16) + 8);
      DataLength = CMBlockBufferGetDataLength(*(a1 + 176));
      v15 = *(a1 + 160);
      v12 = *(*(a1 + 16) + 8);
      v16 = (DataLength - v15) / v12;
    }

    v21 = "samples";
    if (v12 == 1)
    {
      v21 = "sample";
    }

    CFStringAppendFormat(Mutable, 0, @"\n\t%lld %s - %.2f used bytes per sample / %.2f bbuf bytes per sample - %zu bytes available", v12, v21, *&v16, *&v13, v15);
  }

  else
  {
    v17 = *(a1 + 24);
    if (v17)
    {
      v18 = *(*(a1 + 16) + 8);
      if (v18 < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v19 = CMBlockBufferGetDataLength(v17);
        v18 = *(*(a1 + 16) + 8);
        v20 = v19 / v18;
      }

      CFStringAppendFormat(Mutable, 0, @"\n\t%lld samples - %.2f bbuf bytes per sample", v18, *&v20, v29);
    }
  }

  v22 = 1;
  v23 = 224;
  do
  {
    v31.value = 0;
    if (*(a1 + 176))
    {
      value = *(a1 + v23);
      v31.value = value;
    }

    else
    {
      fpst_reading_runForType(a1, v22, &v31);
      value = v31.value;
    }

    v25 = fpst_descriptionForChangeType(v22);
    if (value)
    {
      if (*value == 1)
      {
        v26 = "segment";
      }

      else
      {
        v26 = "segments";
      }

      CFStringAppendFormat(Mutable, 0, @"\n\t\t[%s] run - %lld %s", v25, *value, v26);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\n\t\t[%s] run - no segments", v25, v28, v29);
    }

    ++v22;
    v23 += 40;
  }

  while (v22 != 18);
  return Mutable;
}

uint64_t fpst_reading_runForType(uint64_t a1, int a2, char **dataPointerOut)
{
  *dataPointerOut = 0;
  v3 = *(*(a1 + 16) + 8 * a2 + 8);
  if (v3 < 1)
  {
    return 4294949584;
  }

  else
  {
    return CMBlockBufferGetDataPointer(*(a1 + 24), v3, 0, 0, dataPointerOut);
  }
}

const char *fpst_descriptionForChangeType(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return "Unknown";
  }

  else
  {
    return off_1E74987D0[(a1 - 1)];
  }
}

uint64_t fpst_sizeForChangeType(int a1)
{
  if ((a1 - 1) > 0x10)
  {
    return 0;
  }

  else
  {
    return qword_196E7BF20[(a1 - 1)];
  }
}

uint64_t fpst_reading_runSegmentAtIndex(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v10 = 0;
  result = fpst_reading_runForType(a1, a2, &v10);
  if (!result)
  {
    v8 = v10;
    if (*v10 <= a3)
    {
      fpst_reading_runSegmentAtIndex_cold_1(&v11);
      return v11;
    }

    else
    {
      v9 = fpst_sizeForChangeType(a2);
      result = 0;
      *a4 = &v8[(v9 + 8) * a3 + 8];
    }
  }

  return result;
}

uint64_t FigPartialSampleTableOutOfBandObjectRegistry_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void FigPartialSampleTableOutOfBandObjectRegistry_Finalize(uint64_t a1)
{
  FigSimpleMutexDestroy();
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

__CFString *FigPartialSampleTableOutOfBandObjectRegistry_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPartialSampleTableOutOfBandObjectRegistry %p>", a1);
  return Mutable;
}

CMTime *OUTLINED_FUNCTION_1_196@<X0>(uint64_t a1@<X8>, CMTime *rhs, uint64_t a3, CMTime *lhs, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 rhsa, uint64_t rhs_16, uint64_t a12, uint64_t lhsa, uint64_t lhs_8, uint64_t lhs_16)
{
  lhs_16 = a1;
  rhsa = *(v15 + 136);
  rhs_16 = *(v15 + 152);

  return CMTimeSubtract((v16 - 96), &lhsa, &rhsa);
}

uint64_t OUTLINED_FUNCTION_7_107@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time2, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time2a, uint64_t time2_16)
{
  v17 = *(a1 + 8);
  time2_16 = *(a1 + 24);
  time2a = v17;

  return CMTimeCompare((v15 - 96), &time2a);
}

uint64_t OUTLINED_FUNCTION_13_61@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMTime *time2, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 time2a, uint64_t time2_16)
{
  *(v16 - 80) = a1;
  time2a = *(v15 + 32);
  time2_16 = *(v15 + 48);

  return CMTimeCompare((v16 - 96), &time2a);
}

__n128 OUTLINED_FUNCTION_20_40@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  a1[2] = *v1;
  a1[3].n128_u64[0] = v2;
  a1->n128_u64[0] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_48(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  v5 = v2[4];

  return fpst_reading_runSegmentAtIndex(v4, 4, v5, va);
}

uint64_t OUTLINED_FUNCTION_24_37(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  v5 = v2[7];

  return fpst_reading_runSegmentAtIndex(v4, 7, v5, va);
}

uint64_t OUTLINED_FUNCTION_25_38(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  v5 = v2[5];

  return fpst_reading_runSegmentAtIndex(v4, 5, v5, va);
}

uint64_t FigAgglomeratorNew(const void ***a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  if (v2)
  {
    v3 = FigReadWriteLockCreate();
    v2[1] = v3;
    if (v3)
    {
      *v2 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      goto LABEL_4;
    }

    v5 = 63;
  }

  else
  {
    v5 = 60;
  }

  if ((FigAgglomeratorNew_cold_1(v2, v5, &v6) & 1) == 0)
  {
    return v6;
  }

LABEL_4:
  result = 0;
  *a1 = v2;
  return result;
}

void FigAgglomeratorDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1[1])
    {
      FigReadWriteLockDestroy();
    }

    free(a1);
  }
}

uint64_t FigAgglomeratorSetObjectForKey(__CFDictionary **a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigReadWriteLockLockForWrite();
      v6 = *a1;
      if (a2)
      {
        CFDictionarySetValue(v6, a3, a2);
      }

      else
      {
        CFDictionaryRemoveValue(v6, a3);
      }

      FigReadWriteLockUnlockForWrite();
      return 0;
    }

    else
    {
      FigAgglomeratorSetObjectForKey_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigAgglomeratorSetObjectForKey_cold_2(&v9);
    return v9;
  }
}

CFMutableArrayRef FigAgglomeratorCopyCurrentAgglomeration(CFDictionaryRef *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FigReadWriteLockLockForRead();
  CFDictionaryApplyFunction(*a1, agglomerator_addDictionaryValueToMutableArray, Mutable);
  FigReadWriteLockUnlockForRead();
  return Mutable;
}

uint64_t FigSampleBufferAudioRendererCreateWithOptions(const __CFAllocator *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  theString = 0;
  v57 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    v48 = 0;
    v33 = 4294950916;
    goto LABEL_76;
  }

  v54 = a3;
  v6 = *MEMORY[0x1E695E480];
  FigSampleBufferAudioRendererGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    goto LABEL_71;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 488) = 0;
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(theString, (DerivedStorage + 488), 10, 0x600u);
  }

  v9 = FigReentrantMutexCreate();
  *DerivedStorage = v9;
  if (!v9)
  {
    goto LABEL_70;
  }

  snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorenderer.notification[%p]", v57);
  v10 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 8) = v10;
  if (!v10)
  {
    goto LABEL_70;
  }

  snprintf(__str, 0x80uLL, "com.apple.coremedia.audiorenderer.task[%p]", v57);
  v11 = dispatch_queue_create(__str, 0);
  *(DerivedStorage + 16) = v11;
  if (!v11)
  {
    goto LABEL_70;
  }

  *(DerivedStorage + 96) = 0;
  *(DerivedStorage + 100) = 0;
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 108) = 1065353216;
  *(DerivedStorage + 112) = 0;
  *(DerivedStorage + 120) = 0;
  v12 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 220) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 236) = *(v12 + 16);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 80) = Mutable;
  if (!Mutable)
  {
    goto LABEL_70;
  }

  *(DerivedStorage + 136) = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (*(DerivedStorage + 136))
  {
    v14 = 0;
  }

  else
  {
    v14 = @"TimeDomain";
  }

  *(DerivedStorage + 128) = v14;
  v53 = *MEMORY[0x1E695E4D0];
  *(DerivedStorage + 176) = CFRetain(*MEMORY[0x1E695E4D0]);
  v15 = *MEMORY[0x1E695E4C0];
  *(DerivedStorage + 184) = CFRetain(*MEMORY[0x1E695E4C0]);
  *(DerivedStorage + 192) = 0;
  *(DerivedStorage + 200) = CFRetain(v15);
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    Value = CFRetain(Value);
  }

  *(DerivedStorage + 168) = Value;
  if (FPSupport_GetAudioSpatializationPreferencesMonitor(Value, v17))
  {
    DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
    FPSupport_GetAudioSpatializationPreferencesMonitor(DefaultLocalCenter, v19);
    FigNotificationCenterAddWeakListener();
  }

  v7 = FigTimeRangeSetCreateMutable();
  if (v7)
  {
LABEL_71:
    v33 = v7;
    v48 = 0;
    goto LABEL_76;
  }

  v20 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(DerivedStorage + 16));
  *(DerivedStorage + 352) = v20;
  if (!v20 || (v21 = FigCFWeakReferenceHolderCreateWithReferencedObject()) == 0)
  {
LABEL_70:
    v48 = 0;
    v33 = 4294950914;
    goto LABEL_76;
  }

  v22 = *(DerivedStorage + 352);
  cf = v21;
  v23 = CFRetain(v21);
  dispatch_set_context(v22, v23);
  dispatch_source_set_event_handler_f(*(DerivedStorage + 352), audioRenderer_underrunTimerFire);
  dispatch_source_set_cancel_handler_f(*(DerivedStorage + 352), MEMORY[0x1E695D7C0]);
  dispatch_resume(*(DerivedStorage + 352));
  clockOut = 0;
  CMBaseObjectGetDerivedStorage();
  if (!FigPreferAudioSessionClock())
  {
    CMAudioDeviceClockCreate(a1, @"VirtualAudioDevice_Default", &clockOut);
    if (!dword_1EAF17BD8)
    {
LABEL_25:
      v27 = clockOut;
      goto LABEL_26;
    }

    v51 = v6;
    v24 = a2;
    valuePtr = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_24:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v24;
    v6 = v51;
    goto LABEL_25;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v27 = CFRetain(HostTimeClock);
  clockOut = v27;
  if (dword_1EAF17BD8)
  {
    v51 = v6;
    v24 = a2;
    valuePtr = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    goto LABEL_24;
  }

LABEL_26:
  if (!v27)
  {
    v29 = CMClockGetHostTimeClock();
    v27 = CFRetain(v29);
  }

  *(DerivedStorage + 64) = v27;
  *(DerivedStorage + 32) = 1;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    v30 = v53;
  }

  else
  {
    v30 = v15;
  }

  audioRenderer_setPropertyOnAudioRenderPipeline(v57, @"IsTimebaseStarter", v30, 1);
  FigSimpleMutexUnlock();
  v31 = CMBaseObjectGetDerivedStorage();
  timebaseOut[0] = 0;
  FigSimpleMutexLock();
  if (*(v31 + 473))
  {
    v33 = 0;
  }

  else
  {
    v32 = CMTimebaseCreateWithSourceClock(0, *(v31 + 64), timebaseOut);
    if (!v32)
    {
      v32 = audioRenderer_setMasterTimebase();
    }

    v33 = v32;
  }

  FigSimpleMutexUnlock();
  if (timebaseOut[0])
  {
    CFRelease(timebaseOut[0]);
  }

  if (!v33)
  {
    *(DerivedStorage + 101) = 0;
    *(DerivedStorage + 103) = 1;
    *(DerivedStorage + 144) = 0;
    valuePtr = 500;
    *type = 1000;
    clockOut = 0;
    if (a2)
    {
      if (CFDictionaryGetValueIfPresent(a2, @"LowWaterMarkMs", &clockOut))
      {
        if (clockOut)
        {
          v34 = CFGetTypeID(clockOut);
          if (v34 == CFNumberGetTypeID())
          {
            CFNumberGetValue(clockOut, kCFNumberIntType, &valuePtr);
          }
        }
      }

      if (CFDictionaryGetValueIfPresent(a2, @"HighWaterMarkMs", &clockOut))
      {
        if (clockOut)
        {
          v35 = CFGetTypeID(clockOut);
          if (v35 == CFNumberGetTypeID())
          {
            CFNumberGetValue(clockOut, kCFNumberIntType, type);
          }
        }
      }
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(timebaseOut, CFPreferenceNumberWithDefault, 1000);
    *(DerivedStorage + 268) = *timebaseOut;
    *(DerivedStorage + 284) = timebaseOut[2];
    v37 = FigGetCFPreferenceNumberWithDefault();
    CMTimeMake(timebaseOut, v37, 1000);
    *(DerivedStorage + 244) = *timebaseOut;
    *(DerivedStorage + 260) = timebaseOut[2];
    if (dword_1EAF17BD8)
    {
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 292) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v39 = CFStringCreateWithFormat(v6, 0, @"SBAR-%p", v57);
    *(DerivedStorage + 480) = v39;
    if (v39)
    {
      if (dword_1EAF17BD8)
      {
        LODWORD(clockOut) = 0;
        LOBYTE(valuePtr) = 0;
        v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v41 = clockOut;
        v42 = valuePtr;
        if (os_log_type_enabled(v40, valuePtr))
        {
          v43 = v41;
        }

        else
        {
          v43 = v41 & 0xFFFFFFFE;
        }

        if (v43)
        {
          v44 = v57;
          if (v57)
          {
            v45 = (CMBaseObjectGetDerivedStorage() + 488);
          }

          else
          {
            v45 = "";
          }

          if (*(DerivedStorage + 292))
          {
            v46 = 84;
          }

          else
          {
            v46 = 70;
          }

          if (*(DerivedStorage + 136))
          {
            v47 = 84;
          }

          else
          {
            v47 = 70;
          }

          v60 = 136316162;
          v61 = "FigSampleBufferAudioRendererCreateWithOptions";
          v62 = 2048;
          v63 = v44;
          v64 = 2082;
          v65 = v45;
          v66 = 1024;
          v67 = v46;
          v68 = 1024;
          v69 = v47;
          _os_log_send_and_compose_impl(v43, 0, timebaseOut, 128, &dword_1962D5000, v40, v42, "<< FigSBAudioRenderer >> %s: [%p] %{public}s Created; allowAtmosDecode creation option:%c, audioTimePitchDisallowed:%c\n", &v60, 44);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v33 = 0;
      *v54 = v57;
      v57 = 0;
      v48 = cf;
LABEL_68:
      CFRelease(v48);
      return v33;
    }

    v33 = 4294950914;
  }

  v48 = cf;
LABEL_76:
  if (v57)
  {
    v50 = v48;
    CFRelease(v57);
    v48 = v50;
  }

  if (v48)
  {
    goto LABEL_68;
  }

  return v33;
}

__CFString *audioRenderer_copyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 473))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferAudioRenderer=%p retainCount=%d%s allocator=%p", a1, v5, v6, v7);
  if (*(DerivedStorage + 32))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" timebaseStarter=%s", v8);
  CFStringAppendFormat(Mutable, 0, @" masterControlTimebase=%@", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @" synchronizerWeakReference=%@", *(DerivedStorage + 88));
  CFStringAppendFormat(Mutable, 0, @" audioOutputDeviceUniqueID=%@", *(DerivedStorage + 120));
  CFStringAppendFormat(Mutable, 0, @" audioTimePitchAlgorithm=%@", *(DerivedStorage + 128));
  CFStringAppendFormat(Mutable, 0, @" volume=%1.3f", *(DerivedStorage + 108));
  if (*(DerivedStorage + 104))
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" muted=%s", v9);
  if (*(DerivedStorage + 472))
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" silentMuted=%s", v10);
  if (*(DerivedStorage + 464))
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  CFStringAppendFormat(Mutable, 0, @" ducked=%s", v11);
  CFStringAppendFormat(Mutable, 0, @" volumeCurvesDictionary=%@", *(DerivedStorage + 112));
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t audioRenderer_removeNotificationListenerFromTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = result;
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v5 = *(v4 + 352);

    return CMTimebaseRemoveTimerDispatchSource(a2, v5);
  }

  return result;
}

uint64_t audioRenderer_bapOutputRemoveWeakListeners(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListeners();
  }

  return v2;
}

uint64_t audioRenderer_setRateAndTimeWithoutFARP(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v20 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v17, 0, sizeof(v17));
  if (!*(DerivedStorage + 32))
  {
    return 0;
  }

  v8 = DerivedStorage;
  v9 = *(DerivedStorage + 24);
  if (!v9)
  {
    return 0;
  }

  if (*(a2 + 12))
  {
    v12 = CMTimebaseCopySource(v9);
    v10 = v12;
    if (*(a3 + 12))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      time = *a3;
      CMSyncConvertTime(&v17, &time, HostTimeClock, v10);
    }

    else
    {
      CMSyncGetTime(&v17, v12);
    }
  }

  else
  {
    v10 = 0;
    v17 = **&MEMORY[0x1E6960C70];
  }

  if (dword_1EAF17BD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v15 = *(v8 + 24);
  time = *a2;
  immediateSourceTime = v17;
  v11 = CMTimebaseSetRateAndAnchorTime(v15, a4, &time, &immediateSourceTime);
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

void audioRenderer_postWasFlushedAutomaticallyNotificationForTime(uint64_t a1, CMTime *a2)
{
  v3 = *MEMORY[0x1E695E480];
  v6 = *a2;
  v4 = CMTimeCopyAsDictionary(&v6, v3);
  Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"FlushMediaTime", v4);
  audioRenderer_postNotification(a1, @"WasFlushedAutomatically", Mutable);
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t audioRenderer_flushWithType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17BD8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (*(DerivedStorage + 473))
  {
    FigSimpleMutexUnlock();
    return 4294954511;
  }

  else
  {
    audioRenderer_flushWithType_cold_1(DerivedStorage, a1, v2);
    return 0;
  }
}

uint64_t audioRenderer_updateUnderrunState(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimebaseGetTime(&v4, *(DerivedStorage + 24));
  return audioRenderer_updateUnderrunStateExplicit(a1, &v4, *(DerivedStorage + 96) != 0.0);
}

dispatch_queue_t audioRenderer_setupTimebaseRateChangedListenerAsyncQueue(dispatch_queue_t *a1)
{
  result = dispatch_queue_create("com.apple.coremedia.audiorenderer.timebaselistener", 0);
  *a1 = result;
  return result;
}

void audioRenderer_timebaseRateChangedListenerAsync(const void **a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = a1[1];
  FigSimpleMutexLock();
  if (v4 == *(DerivedStorage + 24))
  {
    if (dword_1EAF17BD8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(DerivedStorage + 296) = 0;
    if (*(DerivedStorage + 297))
    {
      audioRenderer_resynchronize(v2);
      *(DerivedStorage + 297) = 0;
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v2);
  CFRelease(v4);
  free(a1);
}

uint64_t audioRenderer_setAudioProcessingTap(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 473))
  {
    return audioRenderer_setAudioProcessingTap_cold_1(DerivedStorage, a1, a2);
  }

  return FigSimpleMutexUnlock();
}

uint64_t audioRenderer_applySoftwareVolume(uint64_t a1, CFTypeRef cf1, int a3, float a4, float a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = a5;
  valuePtr = a4;
  if (dword_1EAF17BD8)
  {
    HIBYTE(v23) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (CFEqual(cf1, @"SoftwareVolume1"))
  {
    v13 = 0;
    v14 = kFigAudioRenderPipelineProperty_SoftwareVolume1RampDuration;
LABEL_10:
    v15 = *v14;
    goto LABEL_12;
  }

  if (CFEqual(cf1, @"SoftwareVolume2"))
  {
    v13 = 0;
    v14 = kFigAudioRenderPipelineProperty_SoftwareVolume2RampDuration;
    goto LABEL_10;
  }

  if (!CFEqual(cf1, @"SoftwareVolume5"))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, v23);
    return v10;
  }

  v15 = 0;
  v13 = 1;
LABEL_12:
  if (a5 < 0.0)
  {
    v24 = 0.0;
  }

  v16 = *MEMORY[0x1E695E480];
  v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  v18 = CFNumberCreate(v16, kCFNumberFloatType, &v24);
  if ((v13 & 1) != 0 || (v19 = audioRenderer_setPropertyOnAudioRenderPipeline(a1, v15, v18, 0), !v19))
  {
    v20 = audioRenderer_setPropertyOnAudioRenderPipeline(a1, cf1, v17, 1);
    v11 = v20;
    if (a3 == 1 && !v20)
    {
      if (v24 > 0.0)
      {
        usleep((v24 * 1000.0 * 1000.0));
      }

      v11 = 0;
    }

    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = v19;
  if (v18)
  {
LABEL_22:
    CFRelease(v18);
  }

LABEL_23:
  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

__CFString *audioRenderer_deviceRendererProtocolCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"FigSampleBufferAudioRenderer <FigSampleBufferAudioDeviceRendererProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t audioRenderer_flushFromMediaTime(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00407482C56DuLL);
  if (a1)
  {
    v9 = CFRetain(a1);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  v10 = *(a2 + 16);
  *(v8 + 8) = *a2;
  *(v8 + 3) = v10;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async_f(global_queue, v8, audioRenderer_flushFromMediaTimeDispatchAsync);
  return 0;
}

uint64_t audioRenderer_setRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, float a4)
{
  v109 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v82 = **&MEMORY[0x1E6960C70];
  v81 = v82;
  v80 = v82;
  v79 = v82;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 473))
  {
    v25 = 0;
    value_low = 0;
    goto LABEL_77;
  }

  if (dword_1EAF17BD8)
  {
    LODWORD(valuePtr) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a4 != 0.0 && !*(DerivedStorage + 72) && *(DerivedStorage + 101))
  {
    if (dword_1EAF17BD8)
    {
      LODWORD(valuePtr) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v25 = 0;
    value_low = 4294950909;
    goto LABEL_77;
  }

  *(DerivedStorage + 296) = 0;
  CMTimebaseGetTime(&v82, *(DerivedStorage + 24));
  if (*(DerivedStorage + 56))
  {
    v92 = a2->value;
    flags = a2->flags;
    timescale = a2->timescale;
    epoch = a2->epoch;
    v90 = a3->value;
    v13 = a3->flags;
    v91 = a3->timescale;
    v78 = a3->epoch;
    v14 = CMBaseObjectGetDerivedStorage();
    valuePtr = a4;
    value = 0;
    *type = 0;
    cf = 0;
    target = 0;
    FigRenderPipelineGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v18 = v17(v16, @"SourceSampleBufferQueue", 0, type);
      if (v18)
      {
        value_low = v18;
        v19 = 0;
        goto LABEL_121;
      }

      if (a4 == 0.0)
      {
        v19 = 0;
        v77 = 0;
      }

      else
      {
        v33 = MEMORY[0x1E695E480];
        if (!*(v14 + 296) && CMTimebaseGetRate(*(v14 + 24)) == 0.0)
        {
          v77 = 0;
          v19 = 0;
        }

        else
        {
          v34 = *(v14 + 216);
          *(v14 + 216) = v34 + 1;
          LODWORD(time.value) = v34;
          value = CFNumberCreate(0, kCFNumberIntType, &time);
          if (!value || (v35 = CFDictionaryCreate(*v33, MEMORY[0x1E6960580], &value, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
LABEL_123:
            value_low = 4294950914;
            goto LABEL_17;
          }

          v19 = v35;
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          v77 = 1;
        }

        if (*(v14 + 100))
        {
          Ready = CMSampleBufferCreateReady(*v33, 0, 0, 0, 0, 0, 0, 0, &cf);
          if (Ready || (CMSetAttachment(cf, *MEMORY[0x1E6962DF8], *MEMORY[0x1E695E4D0], 1u), Ready = CMBufferQueueEnqueue(*type, cf), Ready))
          {
LABEL_120:
            value_low = Ready;
LABEL_121:
            v20 = 0;
            v21 = 0;
            goto LABEL_17;
          }
        }
      }

      if (!*(v14 + 32))
      {
        v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
        if (!v21)
        {
LABEL_122:
          v20 = 0;
          goto LABEL_123;
        }

        FigRenderPipelineGetFigBaseObject();
        v43 = v42;
        v44 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (!v44)
        {
          v20 = 0;
          goto LABEL_16;
        }

        v45 = v44(v43, @"PipelineRate", v21);
        v20 = 0;
        if (v45)
        {
          goto LABEL_117;
        }

LABEL_91:
        if (!v77)
        {
          value_low = 0;
          goto LABEL_17;
        }

        value_low = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target);
        if (target)
        {
          CMSetAttachment(target, *MEMORY[0x1E6960518], value, 1u);
          CMBufferQueueEnqueue(*type, target);
          goto LABEL_17;
        }

        goto LABEL_123;
      }

      v75 = v13;
      v76 = flags;
      if ((v13 & 1) != 0 && a4 != 0.0 && (flags & 1) != 0 && !*(v14 + 296) && CMTimebaseGetRate(*(v14 + 24)) == 0.0)
      {
        if (dword_1EAF17BD8)
        {
          v74 = epoch;
          v84 = 0;
          v83 = OS_LOG_TYPE_DEFAULT;
          v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v56 = v84;
          v57 = v83;
          if (os_log_type_enabled(v55, v83))
          {
            v58 = v56;
          }

          else
          {
            v58 = v56 & 0xFFFFFFFE;
          }

          if (v58)
          {
            if (a1)
            {
              v59 = (CMBaseObjectGetDerivedStorage() + 488);
            }

            else
            {
              v59 = "";
            }

            time.value = v92;
            time.timescale = timescale;
            time.flags = flags;
            time.epoch = v74;
            Seconds = CMTimeGetSeconds(&time);
            time.value = v90;
            time.timescale = v91;
            time.flags = v75;
            time.epoch = v78;
            v61 = CMTimeGetSeconds(&time);
            v62 = *(v14 + 296);
            Rate = CMTimebaseGetRate(*(v14 + 24));
            v64 = *(v14 + 24);
            LODWORD(timebaseTime.value) = 136317186;
            *(&timebaseTime.value + 4) = "audioRenderer_setRateAndTimeWithFARP";
            LOWORD(timebaseTime.flags) = 2048;
            *(&timebaseTime.flags + 2) = a1;
            HIWORD(timebaseTime.epoch) = 2082;
            v95 = v59;
            v96 = 2048;
            v97 = a4;
            v98 = 2048;
            v99 = Seconds;
            v100 = 2048;
            v101 = v61;
            v102 = 1024;
            v103 = v62;
            v104 = 2048;
            v105 = Rate;
            v106 = 2048;
            v107 = v64;
            _os_log_send_and_compose_impl(v58, 0, &time, 128, &dword_1962D5000, v55, v57, "<< FigSBAudioRenderer >> %s: [%p] %{public}s Synchronizing FARP with rate %1.3f and mediaTime: %1.3f hostTime: %1.3f; waitingForFARPToStartTimebase: %d; currentTimebaseRate: %1.3f, masterControlTimebase: [%p]", &timebaseTime, 88);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          epoch = v74;
        }

        v65 = epoch;
        v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
        if (v21)
        {
          v20 = CMTimebaseCopySource(*(v14 + 24));
          if (!v20)
          {
            audioRenderer_setRateAndAnchorTime_cold_1(&time);
            value_low = LODWORD(time.value);
LABEL_17:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v21)
            {
              CFRelease(v21);
            }

            if (*type)
            {
              CFRelease(*type);
            }

            if (v20)
            {
              CFRelease(v20);
            }

            if (target)
            {
              CFRelease(target);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (value)
            {
              CFRelease(value);
            }

            if (value_low)
            {
              goto LABEL_106;
            }

            goto LABEL_34;
          }

          v66 = *(v14 + 24);
          HostTimeClock = CMClockGetHostTimeClock();
          timebaseTime.value = v90;
          timebaseTime.timescale = v91;
          timebaseTime.flags = v75;
          timebaseTime.epoch = v78;
          CMSyncConvertTime(&time, &timebaseTime, HostTimeClock, v20);
          timebaseTime.value = v92;
          timebaseTime.timescale = timescale;
          timebaseTime.flags = v76;
          timebaseTime.epoch = v65;
          v45 = CMTimebaseSetRateAndAnchorTime(v66, a4, &timebaseTime, &time);
          if (v45)
          {
            goto LABEL_117;
          }

          FigRenderPipelineGetFigBaseObject();
          v69 = v68;
          v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v70)
          {
            goto LABEL_16;
          }

          v45 = v70(v69, @"PipelineRate", v21);
          if (v45)
          {
LABEL_117:
            value_low = v45;
            goto LABEL_17;
          }

          v71 = *(v14 + 56);
          v72 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v72)
          {
            v45 = v72(v71);
            if (v45)
            {
              goto LABEL_117;
            }

            goto LABEL_91;
          }

LABEL_16:
          value_low = 4294954514;
          goto LABEL_17;
        }

        goto LABEL_122;
      }

      if (dword_1EAF17BD8)
      {
        v73 = epoch;
        v84 = 0;
        v83 = OS_LOG_TYPE_DEFAULT;
        v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v38 = v84;
        v39 = v83;
        if (os_log_type_enabled(v37, v83))
        {
          v40 = v38;
        }

        else
        {
          v40 = v38 & 0xFFFFFFFE;
        }

        if (v40)
        {
          if (a1)
          {
            v41 = (CMBaseObjectGetDerivedStorage() + 488);
          }

          else
          {
            v41 = "";
          }

          time.value = v92;
          time.timescale = timescale;
          time.flags = flags;
          time.epoch = v73;
          v47 = CMTimeGetSeconds(&time);
          time.value = v90;
          time.timescale = v91;
          time.flags = v75;
          time.epoch = v78;
          v48 = CMTimeGetSeconds(&time);
          v49 = *(v14 + 296);
          v50 = CMTimebaseGetRate(*(v14 + 24));
          LODWORD(timebaseTime.value) = 136316930;
          *(&timebaseTime.value + 4) = "audioRenderer_setRateAndTimeWithFARP";
          LOWORD(timebaseTime.flags) = 2048;
          *(&timebaseTime.flags + 2) = a1;
          HIWORD(timebaseTime.epoch) = 2082;
          v95 = v41;
          v96 = 2048;
          v97 = a4;
          v98 = 2048;
          v99 = v47;
          v100 = 2048;
          v101 = v48;
          v102 = 1024;
          v103 = v49;
          v104 = 2048;
          v105 = v50;
          _os_log_send_and_compose_impl(v40, 0, &time, 128, &dword_1962D5000, v37, v39, "<< FigSBAudioRenderer >> %s: [%p] %{public}s Starting FARP with rate %1.3f and mediaTime: %1.3f hostTime: %1.3f; waitingForFARPToStartTimebase: %d; currentTimebaseRate: %1.3f", &timebaseTime, 78);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        epoch = v73;
      }

      v51 = *(v14 + 56);
      v52 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v52)
      {
        time.value = v92;
        time.timescale = timescale;
        time.flags = v76;
        time.epoch = epoch;
        timebaseTime.value = v90;
        timebaseTime.timescale = v91;
        timebaseTime.flags = v75;
        timebaseTime.epoch = v78;
        Ready = v52(v51, &time, &timebaseTime, a4, a4);
        if (!Ready)
        {
          if (a4 == 0.0)
          {
            v20 = 0;
            v21 = 0;
          }

          else
          {
            v53 = epoch;
            v20 = 0;
            v21 = 0;
            *(v14 + 296) = 1;
            *(v14 + 304) = v92;
            *(v14 + 312) = timescale;
            *(v14 + 300) = a4;
            *(v14 + 316) = v76;
            v54 = v90;
            *(v14 + 320) = v53;
            *(v14 + 328) = v54;
            *(v14 + 336) = v91;
            *(v14 + 340) = v75;
            *(v14 + 344) = v78;
          }

          goto LABEL_91;
        }

        goto LABEL_120;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = 0;
    v21 = 0;
    goto LABEL_16;
  }

  time = *a2;
  timebaseTime = *a3;
  updated = audioRenderer_setRateAndTimeWithoutFARP(a1, &time, &timebaseTime, a4);
  if (updated)
  {
LABEL_105:
    value_low = updated;
LABEL_106:
    v25 = 0;
    goto LABEL_77;
  }

LABEL_34:
  if (a2->flags)
  {
    v81 = *a2;
  }

  else
  {
    CMTimebaseGetTime(&v81, *(DerivedStorage + 24));
  }

  v24 = *(DerivedStorage + 96) != 0.0;
  time = v82;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, v24);
  if (updated)
  {
    goto LABEL_105;
  }

  time = v82;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, 0);
  if (updated)
  {
    goto LABEL_105;
  }

  time = v81;
  updated = audioRenderer_updateUnderrunStateExplicit(a1, &time, a4 != 0.0);
  if (updated)
  {
    goto LABEL_105;
  }

  if (!*(DerivedStorage + 48))
  {
    v25 = 0;
    v29 = 0;
LABEL_48:
    value_low = 0;
    *(DerivedStorage + 96) = a4;
    goto LABEL_50;
  }

  audioRenderer_getLowWaterDurationScaledForRate(&v80, a4);
  time = v80;
  v25 = CMTimeCopyAsDictionary(&time, 0);
  v26 = *(DerivedStorage + 48);
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v27)
  {
    value_low = 4294954514;
LABEL_77:
    FigSimpleMutexUnlock();
    goto LABEL_78;
  }

  v28 = v27(v26, @"LowWaterDuration", v25);
  if (v28)
  {
    value_low = v28;
    goto LABEL_77;
  }

  audioRenderer_getHighWaterDurationScaledForRate(&v79, a4);
  time = v79;
  v29 = CMTimeCopyAsDictionary(&time, 0);
  v30 = *(DerivedStorage + 48);
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v31)
  {
    v32 = v31(v30, @"HighWaterDuration", v29);
    if (v32)
    {
      value_low = v32;
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  value_low = 4294954514;
LABEL_50:
  FigSimpleMutexUnlock();
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_78:
  if (v25)
  {
    CFRelease(v25);
  }

  return value_low;
}

uint64_t audioRenderer_shouldEnableSpatialization(uint64_t a1, uint64_t a2)
{
  result = FPSupport_GetAudioFormatDescriptionSpatializationEligibility(a2, 0);
  if (result)
  {
    if (result == 2)
    {
      v4 = a1;
      v5 = 0;
    }

    else
    {
      if (result != 1)
      {
        return 1;
      }

      v4 = a1;
      v5 = 1;
    }

    result = audioRenderer_isSpatializationAllowed(v4, v5);
    if (!result)
    {
      return result;
    }

    return 1;
  }

  return result;
}

uint64_t audioRenderer_applyCachedPropertiesToFARPApplierFunction(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E695E738] == a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  FigRenderPipelineGetFigBaseObject();
  v5 = v4;
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(v5, a1, v3);
  }

  return result;
}

CMTime *audioRenderer_getLowWaterDurationScaledForRate@<X0>(CMTime *a2@<X8>, float a3@<S0>)
{
  result = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x1E6960C70];
  if (a3 <= 1.0)
  {
    v6 = *(&result[11].value + 4);
    a2->epoch = *(&result[11].epoch + 4);
    *&a2->value = v6;
  }

  else
  {
    v7 = *(result + 268);
    return CMTimeMultiplyByFloat64(a2, &v7, a3);
  }

  return result;
}

CMTime *audioRenderer_getHighWaterDurationScaledForRate@<X0>(CMTime *a2@<X8>, float a3@<S0>)
{
  result = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x1E6960C70];
  if (a3 <= 1.0)
  {
    v6 = *(&result[10].value + 4);
    a2->epoch = *(&result[10].epoch + 4);
    *&a2->value = v6;
  }

  else
  {
    v7 = *(result + 244);
    return CMTimeMultiplyByFloat64(a2, &v7, a3);
  }

  return result;
}

void audioRenderer_callFlushFromMediaTimeCallbackAsync(uint64_t a1)
{
  (*(a1 + 8))(*(a1 + 24), *(a1 + 16));
  CFRelease(*a1);

  free(a1);
}

uint64_t OUTLINED_FUNCTION_4_159(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  *(v45 - 160) = 0;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_12_75(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_21_41(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_44_28(uint64_t *a1)
{

  return FigSimpleMutexLock();
}

void OUTLINED_FUNCTION_49_19(const void *a1@<X1>, int a2@<W8>)
{
  if (a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v2;
  }

  CFDictionarySetValue(v3, a1, v6);
}

BOOL OUTLINED_FUNCTION_68_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, os_log_type_t type)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_69_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_70_14(uint64_t *a1)
{

  return FigSimpleMutexLock();
}

uint64_t FigStreamTrackList_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackListID = result;
  return result;
}

uint64_t FigStreamTrackListAddTrack(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v4 = (a1 + 24);
    if (FigCFArrayContainsValue())
    {
      FigStreamTrackListAddTrack_cold_1(&v14);
      return v14;
    }

    else
    {
      CFArrayAppendValue(*(a1 + 24), a2);
      Count = CFArrayGetCount(*(a1 + 24));
      v6 = 0;
      v7 = Count - 1;
      v8 = Count - 2;
      while (1)
      {
        v9 = *(a1 + 32);
        if (v9)
        {
          v9 = CFArrayGetCount(v9);
        }

        if (v6 >= v9)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(a1 + 32), v6);
        v10 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v10)
        {
          v11 = v10;
          if (*v4)
          {
            v12 = CFArrayGetCount(*v4) - 1;
          }

          else
          {
            v12 = -1;
          }

          if (v12 == v7)
          {
            FigStreamTrackListAddTrack_cold_3(v11, v7, v8, v4);
          }

          else if (!FigStreamTrackListAddTrack_cold_2(v11, &v15))
          {
            return v15;
          }
        }

        ++v6;
      }

      return 0;
    }
  }

  else
  {
    FigStreamTrackListAddTrack_cold_4(&v16);
    return v16;
  }
}

double FigStreamTrackListRemoveTrack(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LastIndexOfValue = FigCFArrayGetLastIndexOfValue();
    if (LastIndexOfValue == -1)
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294947602, "<<<< FSTL >>>>", 243, v2);
    }

    else
    {
      v5 = LastIndexOfValue;
      if (FigCFArrayGetValueAtIndex())
      {
        CFArrayRemoveValueAtIndex(*(a1 + 24), v5);
        for (i = 0; ; ++i)
        {
          Count = *(a1 + 32);
          if (Count)
          {
            Count = CFArrayGetCount(Count);
          }

          if (i >= Count)
          {
            break;
          }

          CFArrayGetValueAtIndex(*(a1 + 32), i);
          v9 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v9)
          {
            v10 = v9;
            v11 = *(v9 + 32);
            if (v11 != -1 && v11 >= v5)
            {
              v13 = *(a1 + 24);
              if (v13 && CFArrayGetCount(v13) >= 2)
              {
                v14 = v10[4] - 1;
              }

              else
              {
                v14 = -1;
              }

              v10[4] = v14;
            }

            CFRelease(v10);
          }
        }
      }

      else
      {
        FigStreamTrackListRemoveTrack_cold_1(&v16);
      }
    }
  }

  else
  {
    FigStreamTrackListRemoveTrack_cold_2(&v17);
  }

  return result;
}

uint64_t FigStreamTrackListRemoveAllTracks(uint64_t a1)
{
  CFArrayRemoveAllValues(*(a1 + 24));
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(a1 + 32), i);
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v4[4] = -1;
      CFRelease(v4);
    }
  }

  return 0;
}

const __CFArray *FigStreamTrackListGetCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t FigStreamTrackListCreateIterator(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = *(a2 + 16);
    MEMORY[0x19A8D3660](&FigStreamTrackListIteratorGetTypeID_sFigStreamTrackListIteratorRegisterOnce, FigStreamTrackListIterator_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      Instance[3] = CFRetain(a2);
      if (v5)
      {
        v7 = CFRetain(v5);
      }

      else
      {
        v7 = 0;
      }

      Instance[2] = v7;
      Instance[4] = -1;
    }

    else if (!FigStreamTrackListCreateIterator_cold_1(&v14))
    {
      return v14;
    }

    v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v8)
    {
      v9 = v8;
      CFArrayAppendValue(*(a2 + 32), v8);
      *a3 = Instance;
      CFRelease(v9);
      return 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15[1]);
      v10 = v12;
      if (Instance)
      {
        CFRelease(Instance);
      }
    }
  }

  else
  {
    FigStreamTrackListCreateIterator_cold_2(v15);
    return v15[0];
  }

  return v10;
}

uint64_t FigStreamTrackListCreate(const __CFAllocator *a1, const void *a2, void *a3)
{
  if (!a3)
  {
    FigStreamTrackListCreate_cold_3(&v15);
    return v15;
  }

  MEMORY[0x19A8D3660](&FigStreamTrackListGetTypeID_sFigStreamTrackListRegisterOnce, FigStreamTrackList_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigStreamTrackListCreate_cold_2(&v14);
    return v14;
  }

  v7 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v7[3] = Mutable;
  if (!Mutable)
  {
    v12 = 337;
LABEL_14:
    FigStreamTrackListCreate_cold_1(v12, v7, &v13);
    return v13;
  }

  v9 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v7[4] = v9;
  if (!v9)
  {
    v12 = 340;
    goto LABEL_14;
  }

  if (a2)
  {
    v10 = CFRetain(a2);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  v7[2] = v10;
  *a3 = v7;
  return result;
}

uint64_t FigStreamTrackListIterator_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStreamTrackListIteratorID = result;
  return result;
}

uint64_t FigStreamTrackListIteratorResetAndCopyTrack(uint64_t a1, void *a2)
{
  if (a1)
  {
    *(a1 + 32) = -1;

    return FigStreamTrackListIteratorCopyNextTrack(a1, a2);
  }

  else
  {
    v6 = v2;
    v7 = v3;
    FigStreamTrackListIteratorResetAndCopyTrack_cold_1(&v5);
    return v5;
  }
}

uint64_t FigStreamTrackListIteratorCopyNextTrack(uint64_t a1, void *a2)
{
  if (!a1)
  {
    FigStreamTrackListIteratorCopyNextTrack_cold_2(&v13);
    return v13;
  }

  if (!a2)
  {
    FigStreamTrackListIteratorCopyNextTrack_cold_1(&v12);
    return v12;
  }

  v4 = *(*(a1 + 24) + 24);
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v6 = *(a1 + 32);
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = *(*(a1 + 24) + 24);
    if (v7)
    {
      v7 = CFArrayGetCount(v7);
    }

    v8 = *(a1 + 32);
    if (v6 >= v7)
    {
      goto LABEL_13;
    }

    ++v8;
  }

  *(a1 + 32) = v8;
LABEL_13:
  if (v8 >= Count)
  {
    v10 = 0;
  }

  else
  {
    ValueAtIndex = FigCFArrayGetValueAtIndex();
    v10 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  result = 0;
  *a2 = v10;
  return result;
}

void *fstl_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fstl_finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    CFRelease(v4);
    a1[2] = 0;
  }
}

CFStringRef fstl_copyFormattingDesc(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 16);
  Count = CFArrayGetCount(*(a1 + 32));
  return CFStringCreateWithFormat(v2, 0, @"TrackList [%@] iterators:%d tracks %@", v3, Count, *(a1 + 24));
}

void *fstli_init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void fstli_finalize(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 24);
  while (1)
  {
    Count = *(v3 + 32);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v2 >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(v3 + 32), v2);
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      CFRelease(v5);
      ++v2;
    }

    else
    {
      CFArrayRemoveValueAtIndex(*(v3 + 32), v2);
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t synchronizerCentral_subSynchronizerNotificationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

CFMutableStringRef synchronizerCentral_CopyDebugDesc(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateMutable(v1, 0);
}

uint64_t synchronizerCentral_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v7 = *CMBaseObjectGetDerivedStorage();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(v7, a2, a3, &cf);
  }

  else
  {
    v9 = 4294954514;
  }

  if (a4)
  {
    *a4 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t synchronizerCentral_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t synchronizerCentral_processRateChangeWithRenderersSetApplier(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    v3 = result;
    FigSampleBufferRenderSynchronizerCentralClientAccessProtocolGetProtocolID();
    result = CMBaseObjectImplementsProtocol();
    if (result)
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 12);
      FigSampleBufferRenderSynchronizerCentralClientAccessProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v7 = *(ProtocolVTable + 16)) != 0)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          result = v8(v3, v4, v5);
        }

        else
        {
          result = 4294954514;
        }
      }

      else
      {
        result = 4294954508;
      }

      *(a2 + 8) = result;
    }
  }

  return result;
}

uint64_t synchronizerCentral_SetRateAndTime(uint64_t a1, __int128 *a2, float a3)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  return synchronizerCentral_SetRateAndAnchorTime(a1, &v4, MEMORY[0x1E6960C70], a3);
}

uint64_t synchronizerCentral_CopyReadOnlyTimebase(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_AcquirePlaybackAssertion(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_ReleasePlaybackAssertion(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t synchronizerCentral_ConvertTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  v10 = *a3;
  v11 = *(a3 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, a2, &v12, a4);
}

__n128 OUTLINED_FUNCTION_4_160@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 + 28) = *a1;
  *(v1 + 44) = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_139(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

uint64_t FigTTMLDocumentWriterCreateLanguageIdentifierInserter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateLanguageIdentifierInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateLanguageIdentifierInserter_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterLanguageIdentifierInserter_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      v7 = DerivedStorage;
      if (CFEqual(@"languageIdentifier", a2))
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = CFRetain(v8);
        }

        else
        {
          v9 = 0;
        }

        result = 0;
        *a4 = v9;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figTTMLLayout_CopyChildNodeArray_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLDocumentWriterLanguageIdentifierInserter_CopyProperty_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      if (CFEqual(@"languageIdentifier", a2))
      {
        v7 = CFGetTypeID(a3);
        if (v7 == CFStringGetTypeID())
        {
          v8 = *(v6 + 8);
          *(v6 + 8) = a3;
          CFRetain(a3);
          if (v8)
          {
            CFRelease(v8);
          }

          return 0;
        }

        else
        {
          FigRemote_CopyPixelBufferAndPoolAttributesFromDictionary_cold_1(&v10);
          return v10;
        }
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty_cold_2(&v11);
      return v11;
    }
  }

  else
  {
    figTTMLDocumentWriterLanguageIdentifierInserter_SetProperty_cold_3(&v12);
    return v12;
  }
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = FigTTMLDocumentWriterStartElement(*DerivedStorage, a2);
  if (a2 == 7 && !result)
  {
    v6 = DerivedStorage[1];
    if (v6)
    {

      return FigTTMLDocumentWriterSetAttribute(a1, @"http://www.w3.org/XML/1998/namespace lang", v6);
    }

    else
    {
      return 4294950719;
    }
  }

  return result;
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterAddCaptionData(v3, a2);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_SetAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v5 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterSetAttribute(v5, a2, a3);
}

uint64_t figTTMLDocumentWriterLanguageIdentifierInserter_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

uint64_t fapu_registerClass(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioProcessingUnitCreateWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, CFTypeRef *a6)
{
  v10 = 0;
  v11[0] = &v10;
  v11[1] = 0x2000000000;
  v12 = 0;
  if (!a4)
  {
    v9 = 420;
LABEL_9:
    FigAudioProcessingUnitCreateWithOptions_cold_1(v9, v11);
    goto LABEL_10;
  }

  MEMORY[0x19A8D3660](&FigAudioProcessingUnitGetClassID_sRegisterFigAudioProcessingUnitOnce, fapu_registerClass);
  v6 = CMDerivedObjectCreate();
  *(v11[0] + 24) = v6;
  if (!v6)
  {
    CMBaseObjectGetDerivedStorage();
    if (FigCFDictionaryGetValueIfPresent())
    {
      if (FigCFDictionaryGetValueIfPresent())
      {
        v9 = 430;
      }

      else
      {
        v9 = 428;
      }
    }

    else
    {
      v9 = 426;
    }

    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v11[0] + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __FigAudioProcessingUnitCreateWithOptions_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v5 = result;
    v6 = *(result + 40);
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      result = v7(v6, a2, a3);
    }

    else
    {
      result = 4294954514;
    }

    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t fapu_updateLoggingIDCStr(uint64_t a1, const void *a2, const void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  fapu_FourCCToPrintableStr(v9, *(a1 + 112));
  fapu_FourCCToPrintableStr(v8, *(a1 + 116));
  fapu_FourCCToPrintableStr(v7, *(a1 + 120));
  return snprintf((a1 + 16), 0x5FuLL, "FAPU %p:%p %s/%s/%s", a2, a3, v9, v8, v7);
}

uint64_t FigAudioProcessingUnitCreateCopy(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5, CFTypeRef *a6)
{
  if (!a4)
  {
    v24 = 491;
LABEL_23:
    FigAudioProcessingUnitCreateCopy_cold_1(v24, &v25);
    return v25;
  }

  if (!a5)
  {
    v24 = 492;
    goto LABEL_23;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MEMORY[0x19A8D3660](&FigAudioProcessingUnitGetClassID_sRegisterFigAudioProcessingUnitOnce, fapu_registerClass);
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    return v11;
  }

  v12 = CMBaseObjectGetDerivedStorage();
  v13 = *(DerivedStorage + 112);
  *(v12 + 128) = *(DerivedStorage + 128);
  *(v12 + 112) = v13;
  *(v12 + 132) = *(DerivedStorage + 132);
  *v12 = CFRetain(a4);
  FigAudioQueueTimingShimGetAudioQueue(a4);
  v11 = ATAudioProcessingNodeInstantiate();
  if (v11)
  {
    return v11;
  }

  fapu_updateLoggingIDCStr(v12, a2, a3);
  v14 = *(DerivedStorage + 136);
  if (v14)
  {
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v15)
    {
      return 4294954514;
    }

    v11 = v15(0, @"prrp", v14);
    if (v11)
    {
      return v11;
    }
  }

  v16 = *(DerivedStorage + 144);
  if (v16)
  {
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v17)
    {
      return 4294954514;
    }

    v11 = v17(0, @"prsp", v16);
    if (v11)
    {
      return v11;
    }
  }

  v18 = *(DerivedStorage + 152);
  if (v18)
  {
    v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v19)
    {
      return 4294954514;
    }

    v11 = v19(0, @"ausp", v18);
    if (v11)
    {
      return v11;
    }
  }

  v20 = *(DerivedStorage + 160);
  if (v20)
  {
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v21)
    {
      v11 = v21(0, @"grtx", v20);
      if (!v11)
      {
        goto LABEL_17;
      }

      return v11;
    }

    return 4294954514;
  }

LABEL_17:
  v22 = 0;
  *a6 = 0;
  return v22;
}

CFStringRef fapu_CopyFormattingDesc(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E480];
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithCString(v1, v2, 0x600u);
}

void fapu_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ATAudioProcessingNodeDispose();
  *(DerivedStorage + 8) = 0;
  v2 = *(DerivedStorage + 136);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 136) = 0;
  }

  v3 = *(DerivedStorage + 144);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 144) = 0;
  }

  v4 = *(DerivedStorage + 152);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 152) = 0;
  }

  v5 = *(DerivedStorage + 160);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 160) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

CFStringRef fapu_CopyDebugDescription(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E480];
  if (a1)
  {
    v2 = (CMBaseObjectGetDerivedStorage() + 16);
  }

  else
  {
    v2 = "";
  }

  return CFStringCreateWithCString(v1, v2, 0x600u);
}

double fapu_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    v7 = DerivedStorage[17];
LABEL_9:
    *a4 = CFRetain(v7);
    return result;
  }

  if (FigCFEqual())
  {
    v7 = DerivedStorage[18];
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v7 = DerivedStorage[19];
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v7 = DerivedStorage[20];
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954509, "<<<< FigAudioProcessingUnit >>>>", 265, v4);
}

double fapu_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (DerivedStorage[17])
      {
        fapu_SetProperty_cold_1(&v17);
      }

      else if (a2 && (v8 = CFGetTypeID(a2), v8 == CFStringGetTypeID()))
      {
        v9 = DerivedStorage[17];
        DerivedStorage[17] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        if (ATAudioProcessingNodeSetProperty())
        {
          return fapu_SetProperty_cold_2();
        }
      }

      else
      {
        fapu_SetProperty_cold_3(&v17);
      }
    }
  }

  else if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (DerivedStorage[18])
      {
        fapu_SetProperty_cold_4(&v17);
      }

      else if (a2 && (v10 = CFGetTypeID(a2), v10 == CFDictionaryGetTypeID()))
      {
        v11 = DerivedStorage[18];
        DerivedStorage[18] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (ATAudioProcessingNodeSetProperty())
        {
          return fapu_SetProperty_cold_5();
        }
      }

      else
      {
        fapu_SetProperty_cold_6(&v17);
      }
    }
  }

  else if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (DerivedStorage[19])
      {
        fapu_SetProperty_cold_7(&v17);
      }

      else if (a2 && (v12 = CFGetTypeID(a2), v12 == CFDictionaryGetTypeID()))
      {
        v13 = DerivedStorage[19];
        DerivedStorage[19] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        if (ATAudioProcessingNodeSetProperty())
        {
          return fapu_SetProperty_cold_8();
        }
      }

      else
      {
        fapu_SetProperty_cold_9(&v17);
      }
    }
  }

  else if (FigCFEqual())
  {
    if (!FigCFEqual())
    {
      if (DerivedStorage[20])
      {
        fapu_SetProperty_cold_10(&v17);
      }

      else if (a2 && (v15 = CFGetTypeID(a2), v15 == CFStringGetTypeID()))
      {
        v16 = DerivedStorage[20];
        DerivedStorage[20] = a3;
        if (a3)
        {
          CFRetain(a3);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        if (ATAudioProcessingNodeSetProperty())
        {
          return fapu_SetProperty_cold_11();
        }
      }

      else
      {
        fapu_SetProperty_cold_12(&v17);
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954509, "<<<< FigAudioProcessingUnit >>>>", 306, v3);
  }

  return result;
}

uint64_t fapu_ScheduleParameters(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  FigAudioQueueTimingShimConvertTimingShimTimeToAQTime();
  return ATAudioProcessingNodeScheduleParameters();
}

uint64_t fapu_CancelScheduledParameters(uint64_t a1)
{
  v1 = *(CMBaseObjectGetDerivedStorage() + 8);

  return MEMORY[0x1EEDB4178](v1);
}

uint64_t fapu_FourCCToPrintableStr(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v5 = 24;
  v6 = MEMORY[0x1E69E9830];
  do
  {
    v7 = a2 >> v5;
    v8 = (a2 >> v5);
    if (v8 > 0x7F)
    {
      v9 = __maskrune((a2 >> v5), 0x40000uLL);
    }

    else
    {
      v9 = *(v6 + 4 * (a2 >> v5) + 60) & 0x40000;
    }

    if (v9)
    {
      *(a1 + v4) = v7;
    }

    else
    {
      *(a1 + v4) = 92;
      v10 = v4 + 2;
      *(a1 + (v4 + 1)) = 120;
      if (v8 <= 0x9F)
      {
        v11 = 48;
      }

      else
      {
        v11 = 55;
      }

      v4 += 3;
      *(a1 + v10) = v11 + ((a2 >> v5) >> 4);
      if (((a2 >> v5) & 0xF) <= 9)
      {
        v12 = 48;
      }

      else
      {
        v12 = 55;
      }

      *(a1 + v4) = v12 + (v7 & 0xF);
    }

    ++v4;
    v5 -= 8;
  }

  while (v5 != -8);
  *(a1 + v4) = 0;
  return a1;
}

CFTypeRef PKDCopyDisposeStorageAllocator(uint64_t a1)
{
  if (PKDCopyDisposeStorageAllocator_once != -1)
  {
    PKDCopyDisposeStorageAllocator_cold_1();
  }

  result = qword_1EE59F118;
  if (qword_1EE59F118)
  {

    return CFRetain(result);
  }

  return result;
}

CFAllocatorRef PKDDisposeStorageAllocatorInitOnce(uint64_t a1)
{
  memset(&v3, 0, sizeof(v3));
  v3.info = *a1;
  v3.allocate = PKDDisposeStorageAllocatorAllocateCallback;
  v3.deallocate = PKDDisposeStorageAllocatorDeallocateCallback;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &v3);
  *(a1 + 8) = result;
  return result;
}

CFTypeRef PKDMSECopyDisposeStorageAllocator(uint64_t a1)
{
  if (PKDMSECopyDisposeStorageAllocator_once != -1)
  {
    PKDMSECopyDisposeStorageAllocator_cold_1();
  }

  result = qword_1EE59F128;
  if (qword_1EE59F128)
  {

    return CFRetain(result);
  }

  return result;
}

void *PKDMovieIDCreateForPastis(uint64_t a1)
{
  result = CreateCommon(a1);
  result[2] = Qhl17oSYJtCJIxM;
  result[3] = MzdSdcDIXg8COV;
  return result;
}

void *CreateCommon(uint64_t a1)
{
  PKDMovieIDGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v2 = dispatch_queue_create("com.apple.PKDMovieID", 0);
    Instance[4] = v2;
    if (!v2)
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t PKDMovieIDGetTypeID()
{
  v1 = xmmword_1E74988E8;
  if (PKDMovieIDGetTypeID_once != -1)
  {
    dispatch_once_f(&PKDMovieIDGetTypeID_once, &v1, CFRuntimeClassRegisterOnce_0);
  }

  return PKDMovieIDGetTypeID_typeID;
}

double PKDMovieIDInit(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void PKDMovieIDFinalize(void *context)
{
  v2 = context[4];
  if (v2)
  {
    dispatch_sync_f(v2, context, FinalizeGuts);
    v3 = context[4];

    dispatch_release(v3);
  }
}

uint64_t CFRuntimeClassRegisterOnce_0(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t PKDMovieIDGetValue(uint64_t a1, CFDictionaryRef theDict, void *a3)
{
  cf = 0;
  v14 = 0;
  context = a1;
  if (theDict)
  {
    v6 = *MEMORY[0x1E6962AC0];
    if (!CFDictionaryContainsKey(theDict, *MEMORY[0x1E6962AC0]) || (v7 = *MEMORY[0x1E6962B00], !CFDictionaryContainsKey(theDict, *MEMORY[0x1E6962B00])))
    {
      result = 4294955136;
      LODWORD(v14) = -12160;
      goto LABEL_8;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    Value = CFDictionaryGetValue(theDict, v6);
    CFDictionarySetValue(Mutable, v6, Value);
    v10 = CFDictionaryGetValue(theDict, v7);
    CFDictionarySetValue(Mutable, v7, v10);
    cf = Mutable;
  }

  dispatch_sync_f(*(a1 + 32), &context, GetMovieIDGuts);
  result = v14;
  if (a3 && !v14)
  {
    *a3 = *(a1 + 40);
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
    return v14;
  }

  return result;
}

void GetMovieIDGuts(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (v3 && *(a1 + 8) && (v4 = *MEMORY[0x1E6962AC0], CFDictionaryGetValue(v3, *MEMORY[0x1E6962AC0]), CFDictionaryGetValue(*(a1 + 8), v4), !FigCFEqual()))
  {
    GetMovieIDGuts_cold_1(&v27);
    v6 = 0;
    v5 = v27;
  }

  else if (v2[5])
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v27 = 0;
    Value = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x1E6962AC0]);
    v8 = CFDictionaryGetValue(*(a1 + 8), *MEMORY[0x1E6962B00]);
    Count = CFArrayGetCount(v8);
    v10 = Count;
    if (Count)
    {
      theData = Value;
      v11 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
      v12 = 0;
      v25 = v10;
      v26 = v11;
      v13 = v10;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v12);
        if (!ValueAtIndex || (v15 = ValueAtIndex, v16 = CFGetTypeID(ValueAtIndex), v16 != CFNumberGetTypeID()))
        {
          GetMovieIDGuts_cold_2(&v28);
          v5 = v28;
          goto LABEL_21;
        }

        if (!CFNumberGetValue(v15, kCFNumberSInt32Type, v11))
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, theData, v25);
          if (v17)
          {
            break;
          }
        }

        ++v12;
        v11 += 4;
        if (v13 == v12)
        {
          v10 = v25;
          v6 = v26;
          Value = theData;
          goto LABEL_15;
        }
      }

      v5 = v17;
LABEL_21:
      v6 = v26;
    }

    else
    {
      v6 = 0;
LABEL_15:
      v18 = v2[2];
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(Value);
      v21 = v18(BytePtr, Length, v6, v10, &v27);
      if (v21)
      {
        v5 = v21;
      }

      else
      {
        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = CFRetain(v22);
        }

        v5 = 0;
        v2[5] = v27;
        v2[6] = v22;
      }
    }
  }

  free(v6);
  *(a1 + 16) = v5;
}

uint64_t PKDGetSchemeFromSinf(const __CFData *a1, unsigned int *a2)
{
  if (a1)
  {
    v10 = 1935894637;
    v8 = 0;
    v9 = 0;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, &v10, 1, &v9, &v8);
    if (result)
    {
      v7 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v8 != 12)
    {
      v7 = 0;
      result = 4294955137;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    result = 0;
    v7 = bswap32(*(v9 + 4));
    if (a2)
    {
LABEL_11:
      *a2 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 4294955146;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t PKDCopyDefaultKeyIDFromSinf(const __CFData *a1, CFDataRef *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v9 = 0;
    v10[0] = 0x74656E6373636869;
    v8 = 0;
    BytePtr = CFDataGetBytePtr(a1);
    Length = CFDataGetLength(a1);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, v10, 2, &v9, &v8);
    if (result)
    {
      v7 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v8 < 0x18)
    {
      v7 = 0;
      result = 4294955137;
      if (!a2)
      {
        return result;
      }

      goto LABEL_11;
    }

    v7 = CFDataCreate(*MEMORY[0x1E695E480], (v9 + 8), 16);
    result = 0;
    if (a2)
    {
LABEL_11:
      *a2 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 4294955146;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  return result;
}

unint64_t PKDCopyInfoFromPackagedPersistentKey(const void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a1)
  {
    v5 = a5;
    v10 = CFGetTypeID(a1);
    if (v10 == CFDataGetTypeID())
    {
      v11 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a1, 0, 0, 0);
      v12 = v11;
      if (!v11 || (v14 = CFGetTypeID(v11), v14 != CFDictionaryGetTypeID()))
      {
        v13 = PKDCopyInfoFromPackagedPersistentKey_cold_2(v12 == 0, &v28);
        v5 = v28;
        if (v13)
        {
          return v5;
        }

        goto LABEL_25;
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(v12, *MEMORY[0x1E6962B48]);
        if (Value)
        {
          Value = CFRetain(Value);
        }

        *a2 = Value;
      }

      if (a3)
      {
        v16 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AC0]);
        if (!v16)
        {
          v26 = 747;
          goto LABEL_30;
        }

        v17 = CFRetain(v16);
        *a3 = v17;
        if (!v17 || (v18 = CFGetTypeID(v17), v18 != CFDataGetTypeID()))
        {
          v26 = 747;
          goto LABEL_31;
        }
      }

      if (a4)
      {
        v19 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962B00]);
        if (!v19)
        {
          v26 = 752;
          a3 = a4;
          goto LABEL_30;
        }

        v20 = CFRetain(v19);
        *a4 = v20;
        if (!v20 || (v21 = CFGetTypeID(v20), v21 != CFArrayGetTypeID()))
        {
          v26 = 752;
          goto LABEL_31;
        }
      }

      if (!v5)
      {
LABEL_25:
        CFRelease(v12);
        return v5;
      }

      v22 = CFDictionaryGetValue(v12, *MEMORY[0x1E6962AF8]);
      if (v22)
      {
        v23 = CFRetain(v22);
        *v5 = v23;
        if (v23)
        {
          v24 = CFGetTypeID(v23);
          if (v24 == CFDataGetTypeID())
          {
            v5 = 0;
            goto LABEL_25;
          }
        }

        v26 = 757;
LABEL_31:
        PKDCopyInfoFromPackagedPersistentKey_cold_1(v26, &v27);
        v5 = v27;
        goto LABEL_25;
      }

      v26 = 757;
      a3 = v5;
LABEL_30:
      *a3 = 0;
      goto LABEL_31;
    }
  }

  PKDCopyInfoFromPackagedPersistentKey_cold_3(&v29);
  return v29;
}

uint64_t PKDCopyDefaultKeyIDFromSinfArray(CFArrayRef theArray, CFDataRef *a2)
{
  v12 = 0;
  v11 = 0;
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    *a2 = 0;
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); ; i = 0)
    {
      if (v5 >= i)
      {
        v9 = v11;
        goto LABEL_13;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      if (ValueAtIndex)
      {
        v8 = ValueAtIndex;
        if (!PKDGetSchemeFromSinf(ValueAtIndex, &v12))
        {
          v4 = PKDCopyDefaultKeyIDFromSinf(v8, &v11);
          if (!v4)
          {
            v9 = v11;
            if (v11)
            {
              break;
            }
          }
        }
      }

      ++v5;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

    v4 = 0;
LABEL_13:
    *a2 = v9;
  }

  else
  {
    PKDCopyDefaultKeyIDFromSinfArray_cold_1(&v13);
    return v13;
  }

  return v4;
}

unint64_t PKDPersistentKeyIsForCTRModeDecryption(const void *a1, _BYTE *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDPersistentKeyIsForCTRModeDecryption_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    PKDPersistentKeyIsForCTRModeDecryption_cold_1(&v7);
    return v7;
  }

  *a2 = 0;
  v3 = PKDCopyInfoFromPackagedPersistentKey(a1, &cf, 0, 0, 0);
  v4 = cf;
  if (!v3)
  {
    *a2 = FigCFEqual();
    v4 = cf;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v3;
}

uint64_t PKDCopyDecryptFormatTypeFromSinfArray(CFArrayRef theArray, void *a2)
{
  v10 = 0;
  if (a2)
  {
    v4 = 0;
    *a2 = 0;
    if (!theArray)
    {
      goto LABEL_4;
    }

LABEL_3:
    for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
      if (ValueAtIndex && !PKDGetSchemeFromSinf(ValueAtIndex, &v10))
      {
        switch(v10)
        {
          case 0x63626332u:
            goto LABEL_13;
          case 0x63656E63u:
            v7 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
LABEL_15:
            if (*v7)
            {
              v8 = CFRetain(*v7);
              goto LABEL_18;
            }

            goto LABEL_17;
          case 0x63626373u:
LABEL_13:
            v7 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
            goto LABEL_15;
        }
      }

      ++v4;
      if (theArray)
      {
        goto LABEL_3;
      }

LABEL_4:
      ;
    }

LABEL_17:
    v8 = 0;
LABEL_18:
    result = 0;
    *a2 = v8;
  }

  else
  {
    PKDCopyDecryptFormatTypeFromSinfArray_cold_1(&v11);
    return v11;
  }

  return result;
}

const __CFData *FigPKDParsePSSHAndCopyContentKeyInfo(const __CFData *a1, __CFString **a2, CFMutableArrayRef *a3)
{
  v27 = 0;
  if (!a1)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_6(&v28);
LABEL_40:
    v10 = 0;
    v24 = v28;
    goto LABEL_31;
  }

  v3 = a2;
  if (!a2)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_5(&v28);
    goto LABEL_40;
  }

  if (!a3)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_4(&v28);
    goto LABEL_40;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigPKDParsePSSHAndCopyContentKeyInfo_cold_3(&v28);
    goto LABEL_40;
  }

  v8 = Mutable;
  v9 = FigFairplayPSSHAtomParserParseAndCreateRecord(v6, a1, &v27);
  if (v9)
  {
    v24 = v9;
LABEL_35:
    CFRelease(v8);
    v10 = v27;
    goto LABEL_31;
  }

  v10 = v27;
  v11 = *(v27 + 8);
  if (v11)
  {
    v26 = v3;
    v12 = MEMORY[0x1E695E9D8];
    v13 = MEMORY[0x1E695E9E8];
    while (1)
    {
      v14 = CFDataCreate(v6, v11, 16);
      if (!v14)
      {
        FigPKDParsePSSHAndCopyContentKeyInfo_cold_2(&v28);
        goto LABEL_34;
      }

      v15 = v14;
      v16 = CFDictionaryCreateMutable(v6, 0, v12, v13);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      CFDictionarySetValue(v16, @"PKDPSSH_KeyID", v15);
      v18 = *(v11 + 16);
      if (v18 && CFDataGetLength(v18) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_ContentIdentifier", *(v11 + 16));
      }

      v19 = *(v11 + 24);
      if (v19 && CFArrayGetCount(v19) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_VersionList", *(v11 + 24));
      }

      v20 = *(v11 + 32);
      if (v20 && CFDataGetLength(v20) >= 1)
      {
        CFDictionarySetValue(v17, @"PKDPSSH_RemoteContext", *(v11 + 32));
      }

      CFArrayAppendValue(v8, v17);
      CFRelease(v15);
      CFRelease(v17);
      v11 = *(v11 + 40);
      if (!v11)
      {
        v10 = v27;
        v3 = v26;
        goto LABEL_21;
      }
    }

    FigPKDParsePSSHAndCopyContentKeyInfo_cold_1(v15, &v28);
LABEL_34:
    v24 = v28;
    goto LABEL_35;
  }

LABEL_21:
  v21 = *v10;
  if (*v10 == 1667392306 || v21 == 1667392371)
  {
    v23 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
LABEL_29:
    *v3 = *v23;
    goto LABEL_30;
  }

  if (v21 == 1667591779)
  {
    v23 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    goto LABEL_29;
  }

LABEL_30:
  v24 = 0;
  *a3 = v8;
LABEL_31:
  FigFairplayPSSHAtomParserDestroyRecord(v10);
  return v24;
}

void PKDGetCPCBitfieldFromLabels(const __CFArray *a1, char *a2)
{
  if (a1)
  {
    v9 = a2;
    if (CFArrayGetCount(a1) < 1)
    {
      v4 = 0;
    }

    else
    {
      v3 = 0;
      v4 = 0;
      do
      {
        CFArrayGetValueAtIndex(a1, v3);
        v5 = &dword_1E7498920;
        v6 = 5;
        do
        {
          if (FigCFEqual())
          {
            v8 = 1 << *v5;
            goto LABEL_10;
          }

          v5 += 4;
          --v6;
        }

        while (v6);
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
        if (v7)
        {
          return;
        }

        v8 = 1;
LABEL_10:
        v4 |= v8;
        ++v3;
      }

      while (v3 < CFArrayGetCount(a1));
    }

    if (v9)
    {
      *v9 = v4;
    }
  }

  else
  {
    PKDGetCPCBitfieldFromLabels_cold_1(v11);
  }
}

uint64_t PKDGetSystemCPC(void *a1)
{
  if (PKDGetSystemCPC_getCPCOnceToken != -1)
  {
    PKDGetSystemCPC_cold_1();
  }

  if (PKDGetSystemCPC_err)
  {
    PKDGetSystemCPC_cold_2(&v3);
    return v3;
  }

  else
  {
    result = 0;
    if (a1)
    {
      *a1 = PKDGetSystemCPC_sSystemCPC;
    }
  }

  return result;
}

uint64_t PKDCopyDecryptFormatTypeFromCodecType(int a1, void *a2)
{
  v4 = 0;
  v5 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_Pastis;
  if (a1 <= 1902407031)
  {
    if (a1 > 1902207794)
    {
      if (a1 > 1902212706)
      {
        if (a1 == 1902212707 || a1 == 1902403958)
        {
          goto LABEL_34;
        }

        v6 = 1902405681;
LABEL_29:
        if (a1 != v6)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

      if (a1 == 1902207795 || a1 == 1902211171)
      {
        goto LABEL_34;
      }

      v7 = 30257;
LABEL_20:
      v6 = v7 | 0x71610000;
      goto LABEL_29;
    }

    if (a1 <= 1667790434)
    {
      if (a1 != 1667331683 && a1 != 1667524657)
      {
        goto LABEL_36;
      }
    }

    else if (a1 != 1667790435)
    {
      if (a1 == 1700886115)
      {
        goto LABEL_34;
      }

      v7 = 24931;
      goto LABEL_20;
    }

    v5 = kFigCPEProtectorCryptorCreationOptionDecryptFormatType_MSE;
    goto LABEL_34;
  }

  if (a1 > 2053202274)
  {
    if (a1 > 2053207650)
    {
      if (a1 == 2053207651)
      {
        goto LABEL_34;
      }

      v6 = 2053464883;
    }

    else
    {
      if ((a1 - 2053202739) <= 0x3D && ((1 << (a1 - 51)) & 0x2020000000000001) != 0)
      {
        goto LABEL_34;
      }

      v6 = 2053202275;
    }

    goto LABEL_29;
  }

  if (a1 > 1902928226)
  {
    if (a1 == 1902928227 || a1 == 1902998904)
    {
      goto LABEL_34;
    }

    v6 = 1903522657;
    goto LABEL_29;
  }

  if (a1 != 1902407032 && a1 != 1902537827)
  {
    v6 = 1902671459;
    goto LABEL_29;
  }

LABEL_34:
  v4 = *v5;
  if (*v5)
  {
    v4 = CFRetain(v4);
  }

LABEL_36:
  *a2 = v4;
  return 0;
}

uint64_t PKDCopyDecryptFormatTypeFromFormatDescription(const opaqueCMFormatDescription *a1, void *a2)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  PKDCopyDecryptFormatTypeFromCodecType(MediaSubType, a2);
  return 0;
}

__CFString *PKDLogPrivateData(uint64_t a1)
{
  if (!a1)
  {
    return @"[]";
  }

  v1 = a1;
  if (!FigIsItOKToLogURLs())
  {
    return @"[]";
  }

  return v1;
}

uint64_t PKDCopyIdentifierForFormatDescription(const opaqueCMFormatDescription *a1, char *a2, CFTypeRef *a3)
{
  v25 = 0;
  cf = 0;
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension || (v7 = Extension, v8 = CFGetTypeID(Extension), v8 != CFDictionaryGetTypeID()))
  {
    Mutable = 0;
LABEL_46:
    v19 = 1;
LABEL_19:
    MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
    v18 = 0;
    if (MediaSubType <= 2053202738)
    {
      if (MediaSubType > 1902212706)
      {
        if (MediaSubType != 1902212707)
        {
          v21 = 24931;
          goto LABEL_29;
        }
      }

      else if (MediaSubType != 1667331683)
      {
        v22 = 1700886115;
        goto LABEL_30;
      }
    }

    else if (((MediaSubType - 2053202739) > 0x3D || ((1 << (MediaSubType - 51)) & 0x2020000000000001) == 0) && MediaSubType != 2053464883)
    {
      v21 = 30307;
LABEL_29:
      v22 = v21 | 0x7A610000;
LABEL_30:
      if (MediaSubType != v22)
      {
        goto LABEL_32;
      }
    }

    v25 = CFRetain(@"TransportStreamIdentifier");
    v18 = 1;
    goto LABEL_32;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    PKDCopyIdentifierForFormatDescription_cold_1();
    goto LABEL_46;
  }

  Value = CFDictionaryGetValue(v7, @"sinf");
  if (Value)
  {
    v11 = Value;
    v12 = CFGetTypeID(Value);
    if (v12 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v11) >= 1)
      {
        v13 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
          v15 = CFGetTypeID(ValueAtIndex);
          if (v15 == CFDataGetTypeID())
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v13;
        }

        while (v13 < CFArrayGetCount(v11));
      }
    }

    else
    {
      v16 = CFGetTypeID(v11);
      if (v16 == CFDataGetTypeID())
      {
        CFArrayAppendValue(Mutable, v11);
      }
    }
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    v19 = 0;
    goto LABEL_19;
  }

  Base64EncodedStringFromCFData = PKDCopyDefaultKeyIDFromSinfArray(Mutable, &cf);
  if (Base64EncodedStringFromCFData || (v18 = 1, Base64EncodedStringFromCFData = FigCreateBase64EncodedStringFromCFData(), Base64EncodedStringFromCFData))
  {
    v23 = Base64EncodedStringFromCFData;
LABEL_37:
    CFRelease(Mutable);
    goto LABEL_38;
  }

  v19 = 0;
LABEL_32:
  if (a2)
  {
    *a2 = v18;
  }

  v23 = 0;
  if (a3)
  {
    *a3 = v25;
    v25 = 0;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v23;
}

const __CFString *PKDCreateTransportStreamEncryptionInitData(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"{\n  codc : %u,\n  mtyp : %u,\n  cont : mpts\n}", a2, a1);
  if (result)
  {
    v4 = result;
    ExternalRepresentation = CFStringCreateExternalRepresentation(v2, result, 0x600u, 0x20u);
    CFRelease(v4);
    return ExternalRepresentation;
  }

  return result;
}

void FinalizeGuts(uint64_t a1)
{
  if (*(a1 + 40))
  {
    (*(a1 + 24))();
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t OUTLINED_FUNCTION_2_196(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return FigDispatchAsyncPostNotification();
}

uint64_t FigNeroidLayerViewCreate(uint64_t a1, CFTypeRef *a2)
{
  FigLayerViewGetClassID(a1, a2);
  v3 = CMDerivedObjectCreate();
  if (!v3)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CAImageQueueCreate();
    CAImageQueueSetFlags();
    *a2 = 0;
  }

  return v3;
}

void flv_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *flv_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigLayerView %p %@>", a1, *DerivedStorage);
  return Mutable;
}

uint64_t flv_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"PixelBufferAttributes"))
  {
    Mutable = CFDictionaryCreateMutable(a3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
    v10 = v9;
    if (Mutable)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      FigCFArrayAppendInt32();
      FigCFArrayAppendInt32();
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E6966130], v10);
    }

    CFRelease(v10);
LABEL_14:
    result = 0;
    *a4 = Mutable;
    return result;
  }

  if (CFEqual(a2, @"DisplayInfo"))
  {
    v12 = *(DerivedStorage + 8);
    if (!v12)
    {
      Mutable = 0;
      goto LABEL_14;
    }

LABEL_13:
    Mutable = CFRetain(v12);
    goto LABEL_14;
  }

  if (CFEqual(a2, @"ImageQueue"))
  {
    v12 = *DerivedStorage;
    goto LABEL_13;
  }

  return 4294954512;
}

uint64_t flv_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"DisplayInfo"))
  {
    return 4294954512;
  }

  v6 = *(DerivedStorage + 8);
  *(DerivedStorage + 8) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t RegisterFigFramePrefetcherType()
{
  result = _CFRuntimeRegisterClass();
  sFigFramePrefetcherID = result;
  return result;
}

uint64_t FigFramePrefetcherActivate(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (sInitActiveGlobalsOnce != -1)
  {
    FigFramePrefetcherActivate_cold_1();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    started = 0;
  }

  else
  {
    ffp_DeactivateActivePrefetcher();
    sActivePrefetcher = a1;
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      started = 0;
    }

    else
    {
      *(a1 + 80) = 1;
      *(a1 + 82) = FigHTTPRequestPerformingMandatoryActivity();
      *(a1 + 96) = 0;
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v3 = *(a1 + 32);
      if (v3)
      {
        FigStreamingCacheSetProperty(v3, @"FSC_IsDonor", *MEMORY[0x1E695E4C0]);
      }

      if (*(a1 + 40) && *(a1 + 48) && (*(a1 + 68) & 1) != 0)
      {
        started = ffp_StartRun(a1, 0);
      }

      else
      {
        started = 0;
      }

      *(a1 + 81) = started == 0;
    }

    FigRetainProxyUnlockMutex();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  return started;
}

uint64_t InitActiveGlobals(uint64_t a1)
{
  result = FigReentrantMutexCreate();
  sActivePrefetcherLock = result;
  return result;
}

double ffp_DeactivateActivePrefetcher()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = sActivePrefetcher;
  if (sActivePrefetcher)
  {
    sActivePrefetcher = 0;
    FigRetainProxyLockMutex();
    *(v0 + 80) = 0;
    v1 = *(v0 + 32);
    if (v1)
    {
      FigStreamingCacheSetProperty(v1, @"FSC_IsDonor", *MEMORY[0x1E695E4D0]);
    }

    FigRetainProxyUnlockMutex();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t ffp_StartRun(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 > 3)
  {
    ffp_Halt(a1, 0);
    return 0;
  }

  else
  {
    *(a1 + 88) = a2;
    CMTimeMakeWithSeconds(&time, kFFPRunIntervals[a2], 2);
    *(a1 + 128) = time;
    v3 = MEMORY[0x1E6960CC0];
    *(a1 + 104) = *MEMORY[0x1E6960CC0];
    *(a1 + 120) = *(v3 + 16);
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return ffp_TakeNextStep(a1);
  }
}

uint64_t FigFramePrefetcherDeactivate(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (sInitActiveGlobalsOnce != -1)
  {
    FigFramePrefetcherActivate_cold_1();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    ffp_DeactivateActivePrefetcher();
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigFramePrefetcherCreate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, void *a5)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a5)
  {
    FigFramePrefetcherCreate_cold_6(&v19);
    return v19;
  }

  if (!a3)
  {
    FigFramePrefetcherCreate_cold_5(&v19);
    return v19;
  }

  if (!a2)
  {
    FigFramePrefetcherCreate_cold_4(&v19);
    return v19;
  }

  if (!a4)
  {
    FigFramePrefetcherCreate_cold_3(&v19);
    return v19;
  }

  if (sRegisterFigFramePrefetcherTypeOnce != -1)
  {
    FigFramePrefetcherCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigFramePrefetcherCreate_cold_2(&v19);
    return v19;
  }

  v10 = Instance;
  v11 = FigRetainProxyCreate();
  if (v11)
  {
    v17 = v11;
    CFRelease(v10);
  }

  else
  {
    v10[3] = CFRetain(a4);
    v10[4] = CFRetain(a3);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterAddWeakListener();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, @"PlayerType", @"scrub");
    if (!FigReportingAgentCreateFromAsset(a2))
    {
      v13 = v10[21];
      if (v13)
      {
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (v14)
        {
          v14(v13, 0);
        }
      }
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    FigRetainProxyRetain();
    v15 = v10[2];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v16)
    {
      v17 = v16(a2, ffp_PumpTransferCallback, v15);
    }

    else
    {
      v17 = 4294954514;
    }

    *a5 = v10;
  }

  return v17;
}

uint64_t ffp_NoteMandatoryActivityLevelChange(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  dispatch_get_global_queue(0, 0);

  return FigDeferNotificationToDispatchQueue();
}

uint64_t ffp_PumpTransferCallback(uint64_t a1, const void *a2, CFErrorRef err)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    cf[0] = 0;
    GlobalNetworkBufferingLowPriorityQueue = FigThreadGetGlobalNetworkBufferingLowPriorityQueue();
    if (Code)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2 == 0;
    }

    if (v7)
    {
      Code = -19310;
    }

    if (Code)
    {
      goto LABEL_41;
    }

    v8 = GlobalNetworkBufferingLowPriorityQueue;
    *(Owner + 40) = FigBytePumpRetain(a2);
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v10 = *(Owner + 168);
    if (v10)
    {
      FigBytePumpGetFigBaseObject();
      v12 = v11;
      v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v13)
      {
        v13(v12, 0x1F0B1F518, v10);
      }
    }

    v14 = *(Owner + 40);
    v15 = *(Owner + 16);
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 88);
    Code = v16 ? v16(v14, ffp_BytePumpFn, ffp_DateMappingCallback, v15) : -12782;
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    if (Code)
    {
      goto LABEL_41;
    }

    v17 = *(Owner + 32);
    FigBytePumpGetFigBaseObject();
    v19 = v18;
    v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v20)
    {
      goto LABEL_40;
    }

    v21 = v20(v19, 0x1F0B1F098, v17);
    if (v21)
    {
LABEL_22:
      Code = v21;
LABEL_41:
      ffp_Halt(Owner, Code);
      goto LABEL_42;
    }

    FigBytePumpGetFigBaseObject();
    v23 = v22;
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v24)
    {
      goto LABEL_40;
    }

    v25 = *MEMORY[0x1E695E4D0];
    v21 = v24(v23, 0x1F0B1F0D8, *MEMORY[0x1E695E4D0]);
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v27 = v26;
    v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v28)
    {
      goto LABEL_40;
    }

    v29 = *MEMORY[0x1E695E4C0];
    v21 = v28(v27, 0x1F0B1F0F8, *MEMORY[0x1E695E4C0]);
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v31 = v30;
    v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v32)
    {
      goto LABEL_40;
    }

    v21 = v32(v31, 0x1F0B1F138, v25);
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v34 = v33;
    v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v35)
    {
      goto LABEL_40;
    }

    v21 = v35(v34, 0x1F0B1F158, v29);
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v37 = v36;
    v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v38)
    {
      goto LABEL_40;
    }

    v21 = v38(v37, 0x1F0B1F178, v8);
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v40 = v39;
    v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v41)
    {
LABEL_40:
      Code = -12782;
      goto LABEL_41;
    }

    v21 = v41(v40, 0x1F0B1F638, @"SFPrefetcher");
    if (v21)
    {
      goto LABEL_22;
    }

    FigBytePumpGetFigBaseObject();
    v43 = v42;
    v44 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v44 || v44(v43, 0x1F0B1EE98, *MEMORY[0x1E695E480], cf))
    {
      v45 = *(Owner + 40);
      v46 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v46)
      {
        v21 = v46(v45);
        if (!v21)
        {
          goto LABEL_42;
        }

        goto LABEL_22;
      }

      goto LABEL_40;
    }

    if (*(Owner + 24))
    {
      ffp_AlternateListChanged(Owner, cf[0]);
    }

    CFRelease(cf[0]);
  }

LABEL_42:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

double figFramePrefetcherInit(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void figFramePrefetcherFinalize(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17BF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  if (sActivePrefetcher == a1)
  {
    ffp_DeactivateActivePrefetcher();
  }

  FigSimpleMutexUnlock();
  FigRetainProxyLockMutex();
  if (a1[5])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigRetainProxyInvalidate();
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  if (a1[5])
  {
    FigBytePumpGetFigBaseObject();
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v8)
    {
      v8(v7, 0x1F0B1F098, 0);
    }

    v9 = a1[5];
    if (v9)
    {
      CFRelease(v9);
      a1[5] = 0;
    }
  }

  v10 = a1[21];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[21] = 0;
  FigRetainProxyUnlockMutex();
  v11 = a1[2];
  if (v11)
  {
    CFRelease(v11);
    a1[2] = 0;
  }
}

CFStringRef figFramePrefetcherCopyDebugDesc(void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v2, 0, @"[FigFramePrefetcher %p (%d) pump %p]", a1, v3, a1[5]);
}

uint64_t ffp_NoteAlternateListChanged(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    cf = 0;
    FigBytePumpGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5 && !v5(v4, 0x1F0B1EE98, *MEMORY[0x1E695E480], &cf) && *(Owner + 24))
    {
      ffp_AlternateListChanged(Owner, cf);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t ffp_NoteDurationChanged(uint64_t a1, uint64_t a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    ffp_EstablishDuration(Owner);
  }

  return FigRetainProxyUnlockMutex();
}

void ffp_AlternateListChanged(uint64_t a1, CFDictionaryRef theDict)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    if (dword_1EAF17BF8)
    {
      LODWORD(duration.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v6 = *(a1 + 24);
    v7 = *(a1 + 40);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v8)
    {
      LODWORD(duration.value) = 0;
      *&start[0].start.value = *MEMORY[0x1E6960CC0];
      v9 = *(MEMORY[0x1E6960CC0] + 16);
      start[0].start.epoch = v9;
      v15 = *&start[0].start.value;
      *&v17.start.value = *&start[0].start.value;
      v17.start.epoch = v9;
      v10 = v8(v7, v6, 0, 0, 0, 1, start, &v17, 0, &duration, 0, 0);
      if (v10)
      {
        v14 = v10;
        goto LABEL_19;
      }

      v11 = *(a1 + 48);
      *(a1 + 48) = v6;
      if (v6)
      {
        CFRetain(v6);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v12 = *(a1 + 40);
      *&start[0].start.value = v15;
      start[0].start.epoch = v9;
      duration = **&MEMORY[0x1E6960C70];
      CMTimeRangeMake(&v17, &start[0].start, &duration);
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v13)
      {
        start[0] = v17;
        v14 = v13(v12, start, 0, 0, 0, &duration, 0);
        ffp_EstablishDuration(a1);
        if (!v14)
        {
          return;
        }

        goto LABEL_20;
      }
    }

    v14 = -12782;
LABEL_19:
    ffp_EstablishDuration(a1);
LABEL_20:
    ffp_Halt(a1, v14);
    return;
  }

  Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
  if (Value)
  {
    v4 = Value;
    v21.length = CFArrayGetCount(Value);
    v21.location = 0;
    if (!CFArrayContainsValue(v4, v21, *(a1 + 48)))
    {

      ffp_Halt(a1, -19312);
    }
  }
}

void ffp_EstablishDuration(uint64_t a1)
{
  if ((*(a1 + 68) & 1) == 0)
  {
    FigBytePumpGetFigBaseObject();
    v3 = v2;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      dictionaryRepresentation = 0;
      if (!v4(v3, @"FBP_Duration", v5, &dictionaryRepresentation))
      {
        CMTimeMakeFromDictionary(&v7, dictionaryRepresentation);
        *(a1 + 56) = v7;
        if (*(a1 + 81))
        {
          started = ffp_StartRun(a1, 0);
          if (started)
          {
            ffp_Halt(a1, started);
          }
        }

        CFRelease(dictionaryRepresentation);
      }
    }
  }
}

void ffp_Halt(_BYTE *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2 && (v3 = *MEMORY[0x1E695E480], (v4 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], a2, 0)) != 0))
  {
    v5 = v4;
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v7 = Mutable;
    if (Mutable)
    {
      CFDictionaryAddValue(Mutable, @"FFP_Finished_Err", v5);
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  if (dword_1EAF17BF8)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  a1[81] = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v7)
  {
    CFRelease(v7);
  }
}

uint64_t ffp_TakeNextStep(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v16, 0, sizeof(v16));
  CMTimeMake(&rhs, 10, 1000);
  lhs = *(a1 + 104);
  CMTimeAdd(&v16, &lhs, &rhs);
  memset(&v15, 0, sizeof(v15));
  rhs = *(a1 + 104);
  lhs = *(a1 + 128);
  CMTimeAdd(&v15, &rhs, &lhs);
  v14 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (*(a1 + 80) && !*(a1 + 82) && (v4 = *(a1 + 40)) != 0)
  {
    v5 = UpTimeNanoseconds;
    v6 = kFFPRunIntervals[*(a1 + 88)];
    v13 = v16;
    type = v15;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (!v7)
    {
      v10 = 4294954514;
      goto LABEL_13;
    }

    v8 = v6;
    rhs = v13;
    lhs = type;
    v9 = v7(v4, &rhs, v5 + 10000000, &lhs, 1, &v14, v8);
    v10 = v9;
    if (v9 != -12648)
    {
      if (!v9)
      {
        *(a1 + 104) = v15;
        *(a1 + 83) = 0;
        ++*(a1 + 96);
        return v10;
      }

LABEL_13:
      ffp_Halt(a1, v10);
    }
  }

  else
  {
    if (dword_1EAF17BF8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  return v10;
}

uint64_t ffp_DeferredNoteMandatoryActivityLevelChange(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    v3 = FigHTTPRequestPerformingMandatoryActivity();
    if (v3 != *(Owner + 82))
    {
      v4 = v3;
      *(Owner + 82) = v3;
      if (dword_1EAF17BF8)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 = *(Owner + 82);
      }

      if (!v4 && *(Owner + 81))
      {
        ffp_TakeNextStep(Owner);
      }
    }
  }

  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

CFStringRef FigTTMLCGColorCopyAsTTMLColorSyntax(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    FigTTMLCGColorCopyAsTTMLColorSyntax_cold_1();
    return 0;
  }

  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    FigTTMLCGColorCopyAsTTMLColorSyntax_cold_2();
    return 0;
  }

  Components = CGColorGetComponents(a1);
  *v4.i64 = *Components;
  v4.f32[0] = *Components;
  v5 = Components[1];
  v6 = Components[2];
  v7 = Components[3];

  return FigTTMLCopyRGBAColorAsColorSyntax(v4, v5, v6, v7);
}

CFStringRef FigTTMLCMTimeCopyAsClockTimeSyntax(CMTime *a1, int32_t a2, CMTime *a3, uint64_t a4)
{
  memset(&v25, 0, sizeof(v25));
  time = *a3;
  CMTimeMultiply(&v25, &time, a2);
  v23 = *a1;
  CMTimeMultiplyByRatio(&time, &v23, v25.value, v25.timescale);
  v6 = 0;
  Seconds = CMTimeGetSeconds(&time);
  v8 = a2;
  v9 = 60 * a2;
  v10 = 1;
  do
  {
    v11 = v10;
    v12 = (v6 + Seconds) / v9;
    if (FigCFEqual())
    {
      v6 = 2 * (v12 / -10 + (v6 + Seconds) / v9);
    }

    else if (FigCFEqual())
    {
      v6 = 4 * (v12 / -20 + ((v12 + (v12 >> 63)) >> 1));
    }

    v10 = 0;
  }

  while ((v11 & 1) != 0);
  v13 = 3600 * a2;
  v14 = (v6 + Seconds) / v13;
  v15 = v6 + Seconds - v14 * v13;
  v16 = v15 / v9;
  v17 = v15 - (v15 / v9) * v9;
  v18 = v17 / v8;
  v19 = v17 % v8;
  v20 = FigCFEqual();
  v21 = *MEMORY[0x1E695E480];
  if (v20)
  {
    return CFStringCreateWithFormat(v21, 0, @"%02d:%02d:%02d:%02d", v14, v16, v18, v19);
  }

  else
  {
    return CFStringCreateWithFormat(v21, 0, @"%02d:%02d:%02d;%02d", v14, v16, v18, v19);
  }
}

__CFString *FigTTMLCMTimeCopyAsOffsetTimeSyntax(CMTime *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  time = *a1;
  Seconds = CMTimeGetSeconds(&time);
  CFStringAppendFormat(Mutable, 0, @"%lld", Seconds);
  v4 = vabdd_f64(Seconds, Seconds) * 100.0 + 0.5;
  if (v4)
  {
    CFStringAppendFormat(Mutable, 0, @".%02u", v4);
  }

  CFStringAppend(Mutable, @"s");
  return Mutable;
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Identifier(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFStringGetTypeID()))
  {
    CFDictionarySetValue(a2, @"http://www.w3.org/XML/1998/namespace id", a1);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Identifier_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Position(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFDictionaryGetTypeID()))
  {
    FigGeometryPointMakeFromDictionary();
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_1(&v4);
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Position_cold_2(&v4);
  }

  return v4;
}

void figTTMLStringifyFigGeometryDimensionAndAppend(CFMutableStringRef theString, uint64_t a2, int a3)
{
  if (vabdd_f64(*&a2, *&a2) <= 0.001)
  {
    CFStringAppendFormat(theString, 0, @"%lld", *&a2);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"%f", a2);
  }

  if (a3 > 1701650463)
  {
    if (a3 == 1701650464)
    {
      v5 = @"em";
    }

    else
    {
      if (a3 != 1886920736)
      {
        return;
      }

      v5 = @"px";
    }
  }

  else if (a3 == 622862368)
  {
    v5 = @"%";
  }

  else
  {
    if (a3 != 1667591276)
    {
      return;
    }

    v5 = @"c";
  }

  CFStringAppend(theString, v5);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_overflow_hidden;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_overflow_visible;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling overflow", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ClipOverflow_cold_1(&v6);
    return v6;
  }
}

double FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ShowBackground_cold_1(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_showBackground_whenActive;
LABEL_7:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling showBackground", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_showBackground_always;
    goto LABEL_7;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 252, v2);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Opacity(const __CFNumber *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CFNumberGetTypeID()))
  {
    valuePtr = 0;
    CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%3.1f", valuePtr);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling opacity", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Opacity_cold_1(&v8);
    return v8;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = @"true";
    }

    else
    {
      v4 = @"false";
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml/profile/imsc1#styling forcedDisplay", v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_ForcedDisplay_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor(CGColor *a1, __CFDictionary *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == CGColorGetTypeID()))
  {
    v5 = FigTTMLCGColorCopyAsTTMLColorSyntax(a1);
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling backgroundColor", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor_cold_1(&v7);
    return v7;
  }
}

double FigTTMLDocumentWriterMapPropertyToAttribute_WritingMode(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_writingMode_LeftToRightAndTopToBottom;
LABEL_11:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling writingMode", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_writingMode_RightToLeftAndTopToBottom;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndRightToLeft;
    goto LABEL_11;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_writingMode_TopToBottomAndLeftToRight;
    goto LABEL_11;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 324, v2);
}

double FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign(const void *a1, __CFDictionary *a2)
{
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != CFStringGetTypeID()))
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_DisplayAlign_cold_1(&v7);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_displayAlign_before;
LABEL_9:
    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling displayAlign", *v5);
    return result;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_displayAlign_center;
    goto LABEL_9;
  }

  if (FigCFEqual())
  {
    v5 = kFigTTML_AttributeValue_tts_displayAlign_after;
    goto LABEL_9;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", 347, v2);
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Hidden(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_display_none;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_display_auto;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling display", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Hidden_cold_1(&v6);
    return v6;
  }
}

uint64_t FigTTMLDocumentWriterMapPropertyToAttribute_Invisible(const void *a1, __CFDictionary *a2)
{
  if (a1 && (v3 = CFGetTypeID(a1), v3 == CFBooleanGetTypeID()))
  {
    if (FigCFEqual())
    {
      v4 = kFigTTML_AttributeValue_tts_visibility_hidden;
    }

    else
    {
      v4 = kFigTTML_AttributeValue_tts_visibility_visible;
    }

    CFDictionarySetValue(a2, @"http://www.w3.org/ns/ttml#styling visibility", *v4);
    return 0;
  }

  else
  {
    FigTTMLDocumentWriterMapPropertyToAttribute_Invisible_cold_1(&v6);
    return v6;
  }
}