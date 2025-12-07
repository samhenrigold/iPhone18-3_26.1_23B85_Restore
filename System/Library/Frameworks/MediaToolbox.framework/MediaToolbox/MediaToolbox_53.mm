__n128 appendToTimeRangeArray(char **a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a1;
    if (v4 == v5)
    {
      a1[2] = (2 * v4);
      v6 = malloc_type_realloc(v6, 96 * v4, 0x1000040EED21634uLL);
      *a1 = v6;
      v4 = a1[1];
    }

    a1[1] = v4 + 1;
    v7 = &v6[48 * v4];
    result = *a2;
    v9 = *(a2 + 32);
    *(v7 + 1) = *(a2 + 16);
    *(v7 + 2) = v9;
    *v7 = result;
  }

  return result;
}

__n128 appendToTimeMappingArray(char **a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a1;
    if (v4 == v5)
    {
      a1[2] = (2 * v4);
      v6 = malloc_type_realloc(v6, 192 * v4, 0x1000040565EDBD2uLL);
      *a1 = v6;
      v4 = a1[1];
    }

    a1[1] = v4 + 1;
    v7 = &v6[96 * v4];
    v8 = *(a2 + 16);
    *v7 = *a2;
    *(v7 + 1) = v8;
    result = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 80);
    *(v7 + 4) = *(a2 + 64);
    *(v7 + 5) = v11;
    *(v7 + 2) = result;
    *(v7 + 3) = v10;
  }

  return result;
}

double OUTLINED_FUNCTION_8_47()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  *(v0 - 224) = 0u;
  *(v0 - 208) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_12_41()
{
  v0 = *&STACK[0x300];
  *&STACK[0x490] = *&STACK[0x2F0];
  *&STACK[0x4A0] = v0;
  result = *&STACK[0x310];
  *&STACK[0x4B0] = *&STACK[0x310];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_38@<X0>(__int128 a1@<0:X2, 8:X3>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, __int128 a5, __int128 time2a, uint64_t time2_16, uint64_t a8, CMTime *time1, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t time1a, uint64_t time1_8, uint64_t time1_16)
{
  time1_16 = a2;
  time2a = a5;
  time2_16 = v21;

  return CMTimeCompare(&time1a, &time2a);
}

uint64_t OUTLINED_FUNCTION_16_31(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 valuePtr)
{
  valuePtr = 0;

  return CFNumberGetValue(v19, kCFNumberSInt16Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_18_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CMByteStreamWriteBlockBuffer();
}

__n128 OUTLINED_FUNCTION_19_30@<Q0>(unint64_t a1@<X8>)
{
  STACK[0x2A0] = a1;
  v3 = v1[4];
  *&STACK[0x350] = v1[3];
  *&STACK[0x360] = v3;
  *&STACK[0x370] = v1[5];
  v4 = *(v2 - 208);
  *&STACK[0x2F0] = *(v2 - 224);
  *&STACK[0x300] = v4;
  result = *(v2 - 192);
  *&STACK[0x310] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_24_20()
{
  result = *v0;
  *(v1 - 128) = *v0;
  *(v1 - 112) = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_29_19()
{
  v1 = *(v0 + 64);
  *&STACK[0x460] = *(v0 + 48);
  *&STACK[0x470] = v1;
  result = *(v0 + 80);
  *&STACK[0x480] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_30_17()
{
  result = *(v0 - 224);
  *&STACK[0x2F0] = result;
  STACK[0x300] = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_35_13()
{
  *&STACK[0x490] = *&STACK[0x260];
  STACK[0x4A0] = STACK[0x270];
  result = *(v0 - 128);
  *&STACK[0x460] = result;
  STACK[0x470] = *(v0 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_14@<X0>(uint64_t a1@<X8>, CMTime *time1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t time2a, uint64_t time2_8, uint64_t time2_16, uint64_t a11, uint64_t time1a)
{
  time2_16 = a1;

  return CMTimeCompare(&time1a, &time2a);
}

__n128 OUTLINED_FUNCTION_45_13(__n128 a1)
{
  *&STACK[0x4B0] = a1;
  v1 = *&STACK[0x2A0];
  *&STACK[0x460] = *&STACK[0x290];
  *&STACK[0x470] = v1;
  result = *&STACK[0x2B0];
  *&STACK[0x480] = *&STACK[0x2B0];
  return result;
}

uint64_t OUTLINED_FUNCTION_49_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, CMTime *time2, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 time2a, CMTime *time2_16)
{
  time2a = a12;
  time2_16 = time2;

  return CMTimeCompare((v22 - 128), &time2a);
}

void *OUTLINED_FUNCTION_50_9()
{

  return malloc_type_calloc(1uLL, 0x18uLL, 0x102004024DAA5DEuLL);
}

uint64_t OUTLINED_FUNCTION_51_14()
{

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_52_14()
{
  result = *&STACK[0x238];
  *&STACK[0x350] = *&STACK[0x238];
  STACK[0x360] = STACK[0x248];
  return result;
}

double OUTLINED_FUNCTION_53_14()
{
  result = 0.0;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_11(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, CMTime *time2)
{

  return CMTimeCompare(&a9, &time2);
}

uint64_t OUTLINED_FUNCTION_61_12(__n128 a1)
{
  *&STACK[0x3F0] = a1;
  *&STACK[0x400] = a1;
  *&STACK[0x3D0] = a1;
  *&STACK[0x3E0] = a1;
  *&STACK[0x3B0] = a1;
  *&STACK[0x3C0] = a1;

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_62_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *time1, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t time1a)
{
  *(v14 - 112) = v13;

  return CMTimeCompare(&time1a, (v14 - 128));
}

void *OUTLINED_FUNCTION_63_9(size_t a1)
{

  return malloc_type_calloc(a1, 0x60uLL, 0x1000040565EDBD2uLL);
}

void *OUTLINED_FUNCTION_64_10(size_t a1)
{

  return malloc_type_calloc(a1, 0x30uLL, 0x1000040EED21634uLL);
}

CFDictionaryRef OUTLINED_FUNCTION_65_9(uint64_t a1, const __CFAllocator *a2, CMTimeRange *range, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19)
{
  rangea = a17;
  range_16 = a18;
  range_32 = a19;

  return CMTimeRangeCopyAsDictionary(&rangea, a2);
}

uint64_t OUTLINED_FUNCTION_66_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int valuePtr)
{
  valuePtr = 1065353216;

  return CFNumberGetValue(v15, kCFNumberFloat32Type, &valuePtr);
}

__n128 OUTLINED_FUNCTION_67_10()
{
  result = *&STACK[0x460];
  *&STACK[0x350] = *&STACK[0x460];
  STACK[0x360] = STACK[0x470];
  return result;
}

__n128 OUTLINED_FUNCTION_70_7()
{
  result = *&STACK[0x220];
  *&STACK[0x350] = *&STACK[0x220];
  STACK[0x360] = STACK[0x230];
  return result;
}

__n128 OUTLINED_FUNCTION_78_5()
{
  result = *(v0 - 256);
  *&STACK[0x420] = result;
  STACK[0x430] = *(v0 - 240);
  return result;
}

__n128 OUTLINED_FUNCTION_83_5()
{
  result = *&STACK[0x490];
  *(v0 + 24) = *&STACK[0x490];
  *(v0 + 40) = STACK[0x4A0];
  return result;
}

__n128 OUTLINED_FUNCTION_84_3()
{
  result = *&STACK[0x490];
  *(v0 + 72) = *&STACK[0x490];
  *(v0 + 88) = STACK[0x4A0];
  return result;
}

uint64_t OUTLINED_FUNCTION_92_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return CMByteStreamWriteBlockBuffer();
}

CMTime *OUTLINED_FUNCTION_94_4@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeSubtract(&STACK[0x460], &STACK[0x490], (v1 - 256));
}

CMTime *OUTLINED_FUNCTION_95_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 240) = a1;

  return CMTimeSubtract(&STACK[0x490], (v1 - 256), &STACK[0x460]);
}

uint64_t OUTLINED_FUNCTION_96_3()
{

  return CMBaseObjectGetVTable();
}

CFTypeID OUTLINED_FUNCTION_97_6()
{

  return CFGetTypeID(v0);
}

void __FigNWPathEvaluatorCreate_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void figNwPathEvaluatorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    nw_path_evaluator_cancel();
    v2 = *(DerivedStorage + 8);
    if (v2)
    {
      nw_release(v2);
    }

    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    dispatch_release(v4);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figNwPathEvaluatorCopyProperty(uint64_t a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  if (a1)
  {
    if (a4)
    {
      if (CFEqual(cf1, @"kFigNetworkPathEvaluatorProperty_EstimatedDownloadThroughput"))
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v18 = 0;
        v19 = &v18;
        v20 = 0x2000000000;
        v21 = 0;
        v6 = *DerivedStorage;
        block = MEMORY[0x1E69E9820];
        v12 = 0x40000000;
        v13 = __figNwPathEvaluatorCopyProperty_block_invoke;
        v14 = &unk_1E7490130;
        v15 = &v18;
        v16 = &v22;
        v17 = DerivedStorage;
        dispatch_sync(v6, &block);
        if (!*(v23 + 6))
        {
          *a4 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, block, v12);
        *(v23 + 6) = v7;
      }
    }

    else
    {
      figNwPathEvaluatorCopyProperty_cold_1();
    }
  }

  else
  {
    figNwPathEvaluatorCopyProperty_cold_2(0, cf1);
  }

  v8 = *(v23 + 6);
  _Block_object_dispose(&v22, 8);
  return v8;
}

void __figNwPathEvaluatorCopyProperty_block_invoke(void *a1)
{
  v2 = nw_path_evaluator_copy_path();
  if (v2)
  {
    v3 = v2;
    nw_path_get_estimated_download_throughput();
    *(*(a1[4] + 8) + 24) = FigCFNumberCreateUInt64();
    if (!*(*(a1[4] + 8) + 24))
    {
      *(*(a1[5] + 8) + 24) = -12786;
    }

    nw_release(v3);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = -12783;
  }
}

CFDictionaryRef figNwPathEvaluatorCopyCurrentPathInformation(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = *DerivedStorage;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __figNwPathEvaluatorCopyCurrentPathInformation_block_invoke;
    v6[3] = &unk_1E7490158;
    v6[4] = &v7;
    v6[5] = DerivedStorage;
    dispatch_sync(v2, v6);
    v3 = fnpe_CopyCurrentPathInformationFromNWPath(v8[3]);
  }

  else
  {
    figNwPathEvaluatorCopyCurrentPathInformation_cold_1();
    v3 = 0;
  }

  v4 = v8[3];
  if (v4)
  {
    nw_release(v4);
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

CFDictionaryRef fnpe_CopyCurrentPathInformationFromNWPath(NSObject *a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v11 = Mutable;
    if (a1)
    {
      v12 = nw_path_copy_interface();
      TypeFromNWInterface = FigNetworkInterfaceGetTypeFromNWInterface();
      if (v12)
      {
        nw_release(v12);
      }

      FigNetworkPathInformationSetInterfaceType(v11, TypeFromNWInterface);
      v14 = ((nw_path_get_status(a1) - 1) & 0xFFFFFFFD) == 0;
      FigNetworkPathInformationSetHostIsReachable(v11, v14);
      is_local = nw_path_is_local();
      FigNetworkPathInformationSetHostIsLocal(v11, is_local);
      if (((nw_path_get_status(a1) - 1) & 0xFFFFFFFD) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = MEMORY[0x19A8D6300](a1, 2);
      }

      FigNetworkPathInformationSetDoesUseCellular(v11, v16);
      v17 = MEMORY[0x19A8D62E0](a1);
    }

    else
    {
      FigNetworkPathInformationSetInterfaceType(Mutable, 0);
      FigNetworkPathInformationSetHostIsReachable(v11, 0);
      FigNetworkPathInformationSetHostIsLocal(v11, 0);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v22, v24);
      FigNetworkPathInformationSetDoesUseCellular(v11, 0);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v23, v25);
      v17 = 0;
    }

    FigNetworkPathInformationSetExpensive(v11, v17);
    Copy = CFDictionaryCreateCopy(v2, v11);
    CFRelease(v11);
    return Copy;
  }

  else
  {
    fnpe_CopyCurrentPathInformationFromNWPath_cold_1(0, v4, v5, v6, v7, v8, v9, v10, v20, v22, SHIDWORD(v22), v24);
    return 0;
  }
}

uint64_t __FigNwPathEvaluatorGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t OUTLINED_FUNCTION_2_124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t FigPlaybackCoordinatorCreate(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  cf = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v4 = fig_note_initialize_category_with_default_work_cf();
  FigPlaybackCoordinatorGetClassID(v4, v5);
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  FigPlaybackCoordinatorCreate_cold_8(v17);
  return v17[0];
}

void playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    playbackCoordinator_performStartupTaskNegotiatingTimingWithCoordinatedPlaybackGroup_cold_1(a4, a2, a5);
    return;
  }

  v10 = DerivedStorage;
  FigCFDictionaryGetFloat32IfPresent();
  playbackCoordinator_completePendingStartupTask(a1, 0);
  FigCFDictionaryGetValue();
  *(v10 + 192) = a5;
  *(v10 + 200) = a4;
  *(v10 + 184) = a2;
  v11 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  *(v10 + 208) = CFDateCreate(v11, Current);
  if (!*(v10 + 104))
  {
    if (*(v10 + 304))
    {
      playbackCoordinator_completePendingStartupTask(a1, 1);
    }

    if (!FigCFEqual())
    {
      return;
    }

    v47 = -1;
    v46 = 0;
    *type = *MEMORY[0x1E6960C70];
    v45 = *(MEMORY[0x1E6960C70] + 16);
    v42 = *type;
    v43 = v45;
    v41 = 0.0;
    v40 = 0;
    FigPlaybackCoordinatorGetCMBaseObject();
    v15 = CMBaseObjectGetDerivedStorage();
    v16 = *(MEMORY[0x1E6960C98] + 16);
    v39[0] = *MEMORY[0x1E6960C98];
    v39[1] = v16;
    v39[2] = *(MEMORY[0x1E6960C98] + 32);
    if (*(v15 + 184) != a2)
    {
      return;
    }

    v17 = v15;
    if (!*(v15 + 48) || *(v15 + 64) != 10000)
    {
      return;
    }

    FigCFDictionaryGetInt32IfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetFloat32IfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    if (v41 != 0.0 && (playbackCoordinator_systemEventSuspensionsActive() || figPlaybackCoordinator_isSuspendedForReason(a1, *MEMORY[0x1E69632F8])))
    {
      v21 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigSimpleMutexLock();
      v24 = playbackCoordinator_systemEventSuspensionsActive();
      v25 = v24;
      if (v24)
      {
        playbackCoordinator_endAllSystemEventSuspensions();
      }

      v26 = *MEMORY[0x1E69632F8];
      if (figPlaybackCoordinator_isSuspendedForReason(a1, *MEMORY[0x1E69632F8]))
      {
        figPlaybackCoordinator_endSuspensionForReason(a1, v26);
      }

      if (FigTimelineCoordinatorIsSuspended())
      {
        if (dword_1ED4CBE70)
        {
          v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        playbackCoordinator_completePendingStartupTask(a1, 1);
        FigSimpleMutexUnlock();
      }

      else
      {
        *(v17 + 328) = v25;
        FigSimpleMutexUnlock();
        if (*(v17 + 224))
        {
          if (dword_1ED4CBE70)
          {
            v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
          if (!v21)
          {
            return;
          }

LABEL_42:
          v20 = v21;
          goto LABEL_16;
        }
      }

      if (!v21)
      {
        return;
      }

      goto LABEL_42;
    }

    if (FigTimelineCoordinatorIsSuspended())
    {
      if (dword_1ED4CBE70)
      {
        goto LABEL_49;
      }

      goto LABEL_12;
    }

    if (*(v17 + 176) == v41)
    {
      if (!*(v17 + 112))
      {
        *time = v42;
        *&time[16] = v43;
        if (!figPlaybackCoordinator_isTimeInInterstitialRange(a1, time, v39))
        {
          if (dword_1ED4CBE70)
          {
            v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          return;
        }

        if (!dword_1ED4CBE70)
        {
          goto LABEL_12;
        }

        goto LABEL_49;
      }

      if (!*(v17 + 240))
      {
        if (dword_1ED4CBE70)
        {
          v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v18 = a1;
        v19 = 0;
        goto LABEL_13;
      }

      if (*(v17 + 128) & 1) != 0 && *(v17 + 164) != 0.0 && (*(v17 + 152))
      {
        v37 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
        *v37 = CFRetain(a1);
        v37[2] = a2;
        if (dword_1ED4CBE70)
        {
          v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        dispatch_async_f(*(v17 + 280), v37, playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask);
        return;
      }

      if (dword_1ED4CBE70)
      {
LABEL_49:
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_12:
      v18 = a1;
      v19 = 1;
LABEL_13:
      playbackCoordinator_completePendingStartupTask(v18, v19);
      return;
    }

    if (dword_1ED4CBE70)
    {
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigSimpleMutexLock();
    if (*(v17 + 272))
    {
      if (!dword_1ED4CBE70)
      {
        goto LABEL_65;
      }

      goto LABEL_55;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexLock();
    if (*(v17 + 328))
    {
      if (!dword_1ED4CBE70)
      {
LABEL_65:
        playbackCoordinator_completePendingStartupTask(a1, 0);
        FigSimpleMutexUnlock();
        return;
      }

LABEL_55:
      v30 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_65;
    }

    FigSimpleMutexUnlock();
    if (*(v17 + 224))
    {
      if (dword_1ED4CBE70)
      {
        v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
    }

    if (*(v17 + 176) == v41 || v41 == 0.0)
    {
      Mutable = 0;
LABEL_79:
      v36 = 1;
      goto LABEL_80;
    }

    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69632D8], *MEMORY[0x1E695E4D0]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69632E0], *MEMORY[0x1E695E4C0]);
    if (FigTimelineCoordinatorCoordinateRateChange())
    {
      v36 = 0;
    }

    else
    {
      *(v17 + 96) = v47;
      *(v17 + 176) = v41;
      *(v17 + 112) = 0;
      *time = v42;
      *&time[16] = v43;
      if (!figPlaybackCoordinator_isTimeInInterstitialRange(a1, time, v39))
      {
        goto LABEL_79;
      }

      if (dword_1ED4CBE70)
      {
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v36 = 1;
      playbackCoordinator_completePendingStartupTask(a1, 1);
    }

LABEL_80:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v36)
    {
      return;
    }

    goto LABEL_12;
  }

  v13 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1ED4CBE70)
  {
    LODWORD(v39[0]) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  playbackCoordinator_completePendingStartupTask(a1, 1);
  if (v13)
  {
    v20 = v13;
LABEL_16:
    CFRelease(v20);
  }
}

void playbackCoordinator_pause(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const void *a6, int a7, uint64_t a8, float a9, void (*a10)(uint64_t, void))
{
  v34 = a5;
  v36[23] = *MEMORY[0x1E69E9840];
  v36[0] = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v18 = DerivedStorage;
    cf = FigCFWeakReferenceHolderCopyReferencedObject();
    if (cf)
    {
      if (*(v18 + 48) && FigCFEqual() && (!*(v18 + 496) || *(v18 + 456)))
      {
        figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a10, a8, 0);
        v19 = *MEMORY[0x1E695E480];
        Current = CFAbsoluteTimeGetCurrent();
        v21 = CFDateCreate(v19, Current);
        v22 = *(v18 + 256);
        *(v18 + 256) = a6;
        *(v18 + 264) = v21;
        if (a6)
        {
          CFRetain(a6);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (a7 == 5)
        {
          FigSimpleMutexLock();
          *(v18 + 328) = 0;
          FigSimpleMutexUnlock();
        }

        else if (!a7)
        {
          figPlaybackCoordinator_updateReportingStats();
        }

        *(v18 + 112) = 0;
        v23 = a4 != 0;
        if (a4)
        {
          v24 = a9;
        }

        else
        {
          v24 = 0.0;
        }

        *(v18 + 176) = v24;
        *(v18 + 248) = 0;
        if (a9 == 0.0)
        {
          v23 = 0;
        }

        *(v18 + 252) = v23;
        if (*(v18 + 96) <= a3)
        {
          playbackCoordinator_completePendingStartupTask(a1, 0);
          if (dword_1ED4CBE70)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          *(v18 + 240) = 1;
          if (!FPSupport_CreateSetRateOptions(v19, 33, v36))
          {
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            if (a4 && (a7 == 6 || !a7))
            {
              FigCFDictionarySetValue();
            }

            v28 = v36[0];
            v27 = cf;
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v29 && !v29(cf, v28, v24))
            {
              figPlaybackCoordinator_checkForCommandCompletion(a1);
            }

            goto LABEL_35;
          }
        }

        else
        {
          if (dword_1ED4CBE70)
          {
            v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
        }

        v27 = cf;
LABEL_35:
        CFRelease(v27);
        if (v36[0])
        {
          CFRelease(v36[0]);
        }

        return;
      }

      v27 = cf;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
  if (v31)
  {
    (a10)(a8, 0, v30);
  }

  if (v27)
  {
    goto LABEL_35;
  }
}

void playbackCoordinator_prepareToSetRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, int a6, uint64_t a7, void (*a8)(uint64_t, void), float a9)
{
  v32 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    v17 = DerivedStorage;
    v18 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v18)
    {
      if (a9 == 0.0)
      {
        playbackCoordinator_prepareToSetRate_cold_1(v31);
      }

      else if (*(v17 + 48))
      {
        if (FigCFEqual())
        {
          if (!*(v17 + 496) || *(v17 + 456))
          {
            figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, a8, a7, 0);
            v19 = *MEMORY[0x1E695E480];
            Current = CFAbsoluteTimeGetCurrent();
            v21 = CFDateCreate(v19, Current);
            v22 = *(v17 + 256);
            *(v17 + 256) = a5;
            *(v17 + 264) = v21;
            if (a5)
            {
              CFRetain(a5);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            if (a6 == 5)
            {
              FigSimpleMutexLock();
              *(v17 + 328) = 0;
              FigSimpleMutexUnlock();
            }

            else if (!a6)
            {
              figPlaybackCoordinator_updateReportingStats();
            }

            *(v17 + 112) = 0;
            *(v17 + 176) = a9;
            *(v17 + 248) = 0;
            *(v17 + 252) = 1;
            if (*(v17 + 96) <= a3)
            {
              playbackCoordinator_completePendingStartupTask(a1, 0);
              if (dword_1ED4CBE70)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              *(v17 + 240) = 1;
              if (FPSupport_CreateSetRateOptions(v19, 33, &cf))
              {
                goto LABEL_32;
              }

              FigCFDictionarySetValue();
              FigCFDictionarySetValue();
              if (a6 == 6 || !a6)
              {
                FigCFDictionarySetValue();
              }

              v25 = cf;
              v26 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (!v26 || v26(v18, v25, a9))
              {
                goto LABEL_32;
              }

              v27 = *(v17 + 48);
              v28 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v28)
              {
                v28(v27, &v29);
              }

              v31[0] = v29;
              if (!figPlaybackCoordinator_isInterstitialScheduledAtTime(a1, v31))
              {
                figPlaybackCoordinator_checkForCommandCompletion(a1);
LABEL_32:
                CFRelease(v18);
                if (cf)
                {
                  CFRelease(cf);
                }

                return;
              }

              FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
            }

            else if (dword_1ED4CBE70)
            {
              v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
            goto LABEL_32;
          }

          playbackCoordinator_prepareToSetRate_cold_2(v31);
        }

        else
        {
          playbackCoordinator_prepareToSetRate_cold_3(v31);
        }
      }

      else
      {
        playbackCoordinator_prepareToSetRate_cold_4(v31);
      }
    }

    else
    {
      playbackCoordinator_prepareToSetRate_cold_5(v31);
    }
  }

  else
  {
    playbackCoordinator_prepareToSetRate_cold_6(v31);
    v18 = 0;
  }

  if (LODWORD(v31[0].value))
  {
    a8(a7, 0);
  }

  if (v18)
  {
    goto LABEL_32;
  }
}

double playbackCoordinator_proposeTimelineForIdentifier(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return playbackCoordinator_proposeTimelineForIdentifier_cold_2(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v20, v21, SHIDWORD(v21), vars0);
  }

  v11 = FigCFEqual();
  if (!v11)
  {
    return playbackCoordinator_proposeTimelineForIdentifier_cold_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, SHIDWORD(v21), vars0);
  }

  figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
  return result;
}

void figPlaybackCoordinator_transitionToNewCurrentItemAsync(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  figPlaybackCoordinator_transitionToNewCurrentItemIfReady(a1, v2);
  if (a1)
  {
    CFRelease(a1);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigCFRelease_9(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t figPlaybackCoordinator_Finalize(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = CMBaseObjectGetDerivedStorage();
  if (v3[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  if (v3[2])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListeners();
  }

  figPlaybackCoordinator_removeAllItemListeners(a1);
  figPlaybackCoordinator_removeTimebaseNotificationListeners(a1, v3[7]);
  v3[4] = 0;
  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a1, 0, 0, 0);
  playbackCoordinator_completePendingStartupTask(a1, 1);
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v5 = v4;
  if (v4)
  {
    v6 = *(DerivedStorage + 40);
    if (v6)
    {
      v7 = *(DerivedStorage + 48);
      CFRetain(v4);
      if (v7)
      {
        CFRetain(v7);
      }

      CFRetain(v6);
      v8 = *(DerivedStorage + 280);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __figPlaybackCoordinator_Finalize_block_invoke;
      block[3] = &__block_descriptor_tmp_86;
      block[4] = v5;
      block[5] = v6;
      block[6] = v7;
      dispatch_async(v8, block);
    }
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 216) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 360) = 0;
  v9 = *(DerivedStorage + 16);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 16) = 0;
  }

  v10 = *(DerivedStorage + 40);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 40) = 0;
  }

  v11 = *(DerivedStorage + 24);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 24) = 0;
  }

  v12 = *(DerivedStorage + 280);
  if (v12)
  {
    dispatch_release(v12);
    *(DerivedStorage + 280) = 0;
  }

  v13 = *(DerivedStorage + 168);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 168) = 0;
  }

  v14 = *(DerivedStorage + 296);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 296) = 0;
  }

  v15 = *(DerivedStorage + 304);
  if (v15)
  {
    CFRelease(v15);
    *(DerivedStorage + 304) = 0;
  }

  *(DerivedStorage + 312) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 288) = 0;
  v16 = *(DerivedStorage + 80);
  if (v16)
  {
    CFRelease(v16);
    *(DerivedStorage + 80) = 0;
  }

  v17 = *(DerivedStorage + 48);
  if (v17)
  {
    CFRelease(v17);
    *(DerivedStorage + 48) = 0;
  }

  v18 = *(DerivedStorage + 56);
  if (v18)
  {
    CFRelease(v18);
    *(DerivedStorage + 56) = 0;
  }

  v19 = *(DerivedStorage + 320);
  if (v19)
  {
    CFRelease(v19);
    *(DerivedStorage + 320) = 0;
  }

  v20 = *(DerivedStorage + 208);
  if (v20)
  {
    CFRelease(v20);
    *(DerivedStorage + 208) = 0;
  }

  v21 = *(DerivedStorage + 448);
  if (v21)
  {
    CFRelease(v21);
    *(DerivedStorage + 448) = 0;
  }

  v22 = *(DerivedStorage + 464);
  if (v22)
  {
    CFRelease(v22);
    *(DerivedStorage + 464) = 0;
  }

  v23 = *(DerivedStorage + 472);
  if (v23)
  {
    CFRelease(v23);
    *(DerivedStorage + 472) = 0;
  }

  v24 = *(DerivedStorage + 480);
  if (v24)
  {
    CFRelease(v24);
    *(DerivedStorage + 480) = 0;
  }

  figPlaybackCoordinator_resetInterstitialStateMachine(a1);
  if (v5)
  {
    CFRelease(v5);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  return FigNotificationCenterCheckWeakListenersWereRemovedBeforeFinalization();
}

__CFString *figPlaybackCoordinator_CopyDebugDescription(const void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigPlaybackCoordinator %p> [%d]", a1, *(DerivedStorage + 496));
  return Mutable;
}

uint64_t figPlaybackCoordinator_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v7 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1E0](v7, a2, a3, a4);
}

uint64_t figPlaybackCoordinator_SetProperty(const void *a1, uint64_t a2, const void *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFBooleanGetTypeID()))
    {
      figPlaybackCoordinator_SetProperty_cold_1(&v10);
      return v10;
    }

    v7 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *v7 = v8;
    v7[1] = a3;
    dispatch_async_f(*(DerivedStorage + 280), v7, figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue);
  }

  return FigTimelineCoordinatorSetProperty();
}

void figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v9 = *(DerivedStorage + 224);
  if (v9)
  {
    v10 = *(DerivedStorage + 232);
  }

  else
  {
    v10 = 0;
  }

  *(DerivedStorage + 224) = a2;
  *(DerivedStorage + 232) = a3;
  *(DerivedStorage + 244) = 0;
  v11 = *(DerivedStorage + 256);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 256) = 0;
  }

  v12 = *(DerivedStorage + 264);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 264) = 0;
  }

  FigSimpleMutexUnlock();
  if (*(DerivedStorage + 56))
  {
    v13 = figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(a1, &cf);
    if (!v9 || v13)
    {
      goto LABEL_18;
    }

    v14 = cf;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    v14 = 0;
  }

  if (a4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v9(v10, v15);
  FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playbackCoordinator_completePendingStartupTask(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 192);
  if (result)
  {
    v13 = *(DerivedStorage + 192);
    v5 = *(DerivedStorage + 184);
    *(DerivedStorage + 184) = 0;
    v7 = *(DerivedStorage + 200);
    v6 = *(DerivedStorage + 208);
    *(DerivedStorage + 192) = 0;
    *(DerivedStorage + 200) = 0;
    if (v6)
    {
      v8 = *MEMORY[0x1E695E480];
      Current = CFAbsoluteTimeGetCurrent();
      v10 = CFDateCreate(v8, Current);
      if (v10)
      {
        v12 = v10;
        CFDateGetTimeIntervalSinceDate(v10, *(DerivedStorage + 208));
        figPlaybackCoordinator_updateReportingStats();
        CFRelease(v12);
      }

      v11 = *(DerivedStorage + 208);
      if (v11)
      {
        CFRelease(v11);
        *(DerivedStorage + 208) = 0;
      }
    }

    return v13(v7, v5, a2);
  }

  return result;
}

__n128 figPlaybackCoordinator_resetInterstitialStateMachine(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 368);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 368) = 0;
  }

  v3 = *(DerivedStorage + 440);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 440) = 0;
  }

  figPlaybackCoordinator_clearInterstitialEventTimer();
  *(DerivedStorage + 384) = 0;
  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *(DerivedStorage + 392) = *MEMORY[0x1E6960C98];
  *(DerivedStorage + 408) = v5;
  result = v4[2];
  *(DerivedStorage + 424) = result;
  return result;
}

uint64_t figPlaybackCoordinator_removeAllItemListeners(uint64_t a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 48))
  {
    v2 = result;
    if (*(result + 69))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      *(v2 + 69) = 0;
    }

    if (*(v2 + 68))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      result = FigNotificationCenterRemoveWeakListener();
      *(v2 + 68) = 0;
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_removeTimebaseNotificationListeners(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return v2;
}

void figPlaybackCoordinator_playerCurrentItemDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 48);
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  figPlaybackCoordinator_transitionToNewCurrentItemIfReady(a2, a4);
  if (v8 == *(DerivedStorage + 48) || (playbackCoordinator_endAllSystemEventSuspensions(), *(DerivedStorage + 496)))
  {
    if (!v8)
    {
      return;
    }
  }

  else
  {
    figPlaybackCoordinator_endPlayingInterstitialSuspension(a2, 1);
    if (!v8)
    {
      return;
    }
  }

  CFRelease(v8);
}

void figPlaybackCoordinator_playerRateDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = **&MEMORY[0x1E6960C70];
  FigCFDictionaryGetFloat32IfPresent();
  FigCFDictionaryGetInt32IfPresent();
  if (dword_1ED4CBE70)
  {
    LODWORD(time1.value) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a2, 0, 0, 0);
  FigPlaybackCoordinatorGetCMBaseObject();
  v9 = CMBaseObjectGetDerivedStorage();
  LODWORD(theArray[0].value) = 0;
  FigCFDictionaryGetInt32IfPresent();
  if (!*(v9 + 496) || LODWORD(theArray[0].value) != 1 && LODWORD(theArray[0].value) != 38)
  {
    v10 = *(DerivedStorage + 176);
    if (v10 != *&v15)
    {
      if (*&v15 == 0.0)
      {
        FigPlaybackCoordinatorGetCMBaseObject();
        CMBaseObjectGetDerivedStorage();
        v19 = 0;
        FigCFDictionaryGetInt32IfPresent();
        LOBYTE(v20.value) = 0;
        LODWORD(theArray[0].value) = 0;
        if (!FigCFDictionaryGetInt32IfPresent() || LODWORD(theArray[0].value) <= 1 || FigCFDictionaryGetBooleanIfPresent() && LOBYTE(v20.value))
        {
          v11 = *(DerivedStorage + 48);
          if (v11)
          {
            FigPlaybackItemGetCurrentTime(v11, &v14);
          }

          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v20 = v14;
          figPlaybackCoordinator_getGroupTimeFromPlayerTime(&v20, theArray);
          v14 = theArray[0];
          FigCFDictionarySetCMTime();
          CFDictionarySetValue(Mutable, *MEMORY[0x1E69632D0], *MEMORY[0x1E695E4D0]);
          FigTimelineCoordinatorCoordinateRateChange();
          *(DerivedStorage + 96) = v16;
          *(DerivedStorage + 176) = v15;
          *(DerivedStorage + 112) = 0;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        if (figPlaybackCoordinator_playerHasPlaybackStalled(a5))
        {
          v13 = MEMORY[0x1E6963328];
        }

        else if (figPlaybackCoordinator_playerIsAudioSessionInterrupted(a5))
        {
          v13 = MEMORY[0x1E69632F0];
        }

        else
        {
          v13 = MEMORY[0x1E6963330];
        }

        if (*v13)
        {
          playbackCoordinator_beginSystemEventSuspensionForReason(a2, *v13);
        }
      }

      else
      {
        if (v10 == 0.0 || *(DerivedStorage + 104))
        {
          return;
        }

        FigTimelineCoordinatorCoordinateRateChange();
        *(DerivedStorage + 96) = v16;
      }

      *(DerivedStorage + 176) = v15;
      *(DerivedStorage + 112) = 0;
    }
  }
}

void figPlaybackCoordinator_transitionToNewCurrentItemIfReady(const void *a1, uint64_t a2)
{
  v21 = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      v6(a2, 0, &v21);
      v7 = v21;
    }

    else
    {
      v7 = 0;
    }

    if (*(v5 + 496))
    {
      v8 = *(v5 + 48);
      if (v8)
      {
        if (!v7)
        {
          v20 = **&MEMORY[0x1E6960C70];
          v19 = v20;
          start = v20;
          v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v9)
          {
            v9(v8, &v20);
          }

          v10 = *(v5 + 48);
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10, &v19);
          }

          time1.source.start = v20;
          time2.start = v19;
          if ((CMTimeCompare(&time1.source.start, &time2.start) & 0x80000000) == 0)
          {
            v12 = *(v5 + 480);
            if (v12)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
              memset(&time1, 0, sizeof(time1));
              CMTimeMappingMakeFromDictionary(&time1, ValueAtIndex);
              time2 = time1.target;
              CMTimeRangeGetEnd(&start, &time2);
              CMTimeMake(&time2.start, 1, 10);
              CMTimeMake(&v14, 1, 1000);
              CMTimeAdd(&rhs, &time2.start, &v14);
              v14 = start;
              CMTimeAdd(&time2.start, &v14, &rhs);
              start = time2.start;
            }
          }

          time1.source.start = start;
          playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(a1, 4, &time1.source.start.value);
          figPlaybackCoordinator_beginPlayingPrimarySuspension(a1);
          v7 = v21;
        }
      }
    }

    figPlaybackCoordinator_transitionToNewCurrentItem(a1, v7);
    if (v21)
    {
      CFRelease(v21);
    }
  }
}

void playbackCoordinator_endAllSystemEventSuspensions()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = FigCFDictionaryCopyArrayOfValues();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 296));
  FigSimpleMutexUnlock();
  FigTimelineCoordinatorEndSuspensions();
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t figPlaybackCoordinator_endPlayingInterstitialSuspension(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 448))
  {
    FigTimelineCoordinatorEndSuspensionReApplyingGroupStateOnlyIfNeeded();
    v3 = *(DerivedStorage + 448);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 448) = 0;
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(uint64_t a1, int a2, __int128 *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = (*(DerivedStorage + 312) & ~a2) == 0;
  *(DerivedStorage + 312) &= ~a2;
  if (v5 && *(DerivedStorage + 304))
  {
    v6 = FigTimelineCoordinatorEndSuspensionProposingNewTime();
    v8 = *(DerivedStorage + 304);
    if (v8)
    {
      CFRelease(v8);
      *(DerivedStorage + 304) = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  return v6;
}

BOOL playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(uint64_t a1, int a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v4 = (*(DerivedStorage + 312) & a2) != 0;
  FigSimpleMutexUnlock();
  return v4;
}

void figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (!a2)
  {
    figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem_cold_1(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v17, cf, SHIDWORD(cf), v19);
    goto LABEL_6;
  }

  FigPlaybackItemGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14)
  {
LABEL_6:
    v16 = *(v11 + 480);
    *(v11 + 480) = 0;
    goto LABEL_7;
  }

  v14(v13, @"IntegratedTimelineTimeOffsets", *MEMORY[0x1E695E480], &cf);
  v15 = cf;
  v16 = *(v11 + 480);
  *(v11 + 480) = cf;
  if (v15)
  {
    CFRetain(v15);
  }

LABEL_7:
  if (v16)
  {
    CFRelease(v16);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

double figPlaybackCoordinator_currentItemReadyForPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_currentItemReadyForPlayback_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), vars0);
  }

  figPlaybackCoordinator_currentItemReadyForPlayback_cold_2(a2, a4, DerivedStorage);
  return result;
}

double figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), vars0);
  }

  if ((*(DerivedStorage + 64) - 102) <= 0xFFFFFFFD)
  {
    return figPlaybackCoordinator_currentItemFailedToBecomeReadyForInspectionOrPlayback_cold_2(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), vars0);
  }

  figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a2, 0, 1);
  return result;
}

void figPlaybackCoordinator_readyForInspection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    if (*(DerivedStorage + 64) == 100)
    {
      *(DerivedStorage + 64) = 101;
    }

    if (!*(DerivedStorage + 496) && !*(DerivedStorage + 480))
    {

      figPlaybackCoordinator_seekToGroupTimeIfOnlyReadyForInspection(a2);
    }
  }

  else
  {
    figPlaybackCoordinator_readyForInspection_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v14, v15, SHIDWORD(v15), vars0);
  }
}

uint64_t figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(uint64_t result, int a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  if (a2 == 1)
  {
    result = playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(result, a3);
    if (result)
    {
      v6 = MEMORY[0x1E6960C70];

      return playbackCoordinator_endCoordinatedPlaybackNotPossibleSuspension(v4, v3, v6);
    }
  }

  else if (!a2)
  {
    result = playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(result, a3);
    if (!result)
    {
      v5 = MEMORY[0x1E6960C70];

      return playbackCoordinator_beginCoordinatedPlaybackNotPossibleSuspension(v4, v3, v5);
    }
  }

  return result;
}

double figPlaybackCoordinator_getPlayerTimeFromGroupTime@<D0>(CMTime *a1@<X1>, uint64_t a2@<X2>, const __CFArray *a3@<X3>, char *a4@<X4>, CMTime *a5@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *&a1->value;
  *a5 = *a1;
  v12 = *(a2 + 12);
  if (v12)
  {
    *&lhs.source.start.value = *&a1->value;
    lhs.source.start.epoch = a1->epoch;
    *&rhs.source.start.value = *a2;
    rhs.source.start.epoch = *(a2 + 16);
    CMTimeSubtract(a5, &lhs.source.start, &rhs.source.start);
  }

  else if (a3 && CFArrayGetCount(a3) >= 1)
  {
    v38 = *a1;
    Count = CFArrayGetCount(a3);
    *time = *MEMORY[0x1E6960CC0];
    v14 = *(MEMORY[0x1E6960CC0] + 16);
    *&time[16] = v14;
    *&target.start.value = *time;
    target.start.epoch = v14;
    if (Count >= 1)
    {
      v15 = Count;
      v16 = 0;
      v17 = *(MEMORY[0x1E6960C98] + 16);
      *&lhs.source.start.value = *MEMORY[0x1E6960C98];
      *&lhs.source.start.epoch = v17;
      *&lhs.source.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      *v41 = *time;
      *&v41[16] = v14;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v16);
        CMTimeRangeMakeFromDictionary(&lhs.source, ValueAtIndex);
        time2 = lhs.source.start;
        v39 = *v41;
        CMTimeSubtract(&rhs.source.start, &time2, &v39);
        time2 = target.start;
        CMTimeAdd(&target.start, &time2, &rhs.source.start);
        *&rhs.source.start.value = *&target.start.value;
        rhs.source.start.epoch = target.start.epoch;
        time2 = v38;
        if ((CMTimeCompare(&rhs.source.start, &time2) & 0x80000000) == 0)
        {
          break;
        }

        *&rhs.source.start.value = *time;
        rhs.source.start.epoch = *&time[16];
        time2 = lhs.source.duration;
        CMTimeAdd(time, &rhs.source.start, &time2);
        *&rhs.source.start.value = *&lhs.source.start.value;
        *&rhs.source.start.epoch = *&lhs.source.start.epoch;
        *&rhs.source.duration.timescale = *&lhs.source.duration.timescale;
        CMTimeRangeGetEnd(v41, &rhs.source);
        ++v16;
      }

      while (v15 != v16);
    }

    lhs.source.start = v38;
    *&rhs.source.start.value = *time;
    rhs.source.start.epoch = *&time[16];
    CMTimeAdd(v41, &lhs.source.start, &rhs.source.start);
    v19 = 0;
    *&v11 = *v41;
    *&a5->value = *v41;
    a5->epoch = *&v41[16];
    goto LABEL_11;
  }

  v19 = 1;
LABEL_11:
  v20 = *(DerivedStorage + 480);
  if (!v20)
  {
    goto LABEL_44;
  }

  v21 = CFArrayGetCount(v20);
  v22 = v19 ^ 1;
  if (v21 < 1)
  {
    v22 = 1;
  }

  if (v22)
  {
LABEL_44:
    v34 = 0;
    if (!a4)
    {
      return *&v11;
    }

LABEL_45:
    *a4 = v34;
    return *&v11;
  }

  v36 = *&a5->value;
  epoch = a5->epoch;
  FigPlaybackCoordinatorGetCMBaseObject();
  v23 = CMBaseObjectGetDerivedStorage();
  v38 = **&MEMORY[0x1E6960C70];
  v24 = *(v23 + 480);
  if (!v24 || (v25 = CFArrayGetCount(v24), v25 < 1))
  {
LABEL_48:
    v34 = 0;
    goto LABEL_49;
  }

  v26 = v25;
  v27 = 1;
  v28 = v25;
  while (1)
  {
    v29 = CFArrayGetValueAtIndex(*(v23 + 480), v27 - 1);
    memset(&lhs, 0, sizeof(lhs));
    CMTimeMappingMakeFromDictionary(&lhs, v29);
    target = lhs.target;
    *&rhs.source.start.value = v36;
    memset(&time2, 0, sizeof(time2));
    rhs.source.start.epoch = epoch;
    *time = *&lhs.target.start.value;
    *&time[16] = lhs.target.start.epoch;
    CMTimeSubtract(&time2, &rhs.source.start, time);
    rhs.source = target;
    *time = v36;
    *&time[16] = epoch;
    if (CMTimeRangeContainsTime(&rhs.source, time) || (*time = time2, CMTimeAbsoluteValue(&rhs.source.start, time), CMTimeMake(time, 350, 1000), CMTimeCompare(&rhs.source.start, time) < 0) || (rhs.source = target, CMTimeRangeGetEnd(time, &rhs.source), *&rhs.source.start.value = v36, rhs.source.start.epoch = epoch, !CMTimeCompare(time, &rhs.source.start)))
    {
LABEL_47:
      *&rhs.source.start.value = *&lhs.source.start.value;
      rhs.source.start.epoch = lhs.source.start.epoch;
      *time = time2;
      CMTimeAdd(&v38, &rhs.source.start, time);
      goto LABEL_48;
    }

    if (!*(v23 + 496))
    {
      if ((v12 & 1) == 0 || v28 != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    rhs.source = target;
    CMTimeRangeGetEnd(time, &rhs.source);
    *&rhs.source.start.value = v36;
    rhs.source.start.epoch = epoch;
    if (CMTimeCompare(&rhs.source.start, time) >= 1)
    {
      v34 = 0;
      v38 = **&MEMORY[0x1E6960C88];
      goto LABEL_49;
    }

    v30 = *(v23 + 496);
    if ((v12 & 1) != 0 && v28 == 1)
    {
      if (*(v23 + 496))
      {
        goto LABEL_42;
      }

LABEL_29:
      rhs.source = target;
      CMTimeRangeGetEnd(time, &rhs.source);
      *&rhs.source.start.value = v36;
      rhs.source.start.epoch = epoch;
      if (CMTimeCompare(&rhs.source.start, time) > 0)
      {
        goto LABEL_47;
      }

      v30 = *(v23 + 496);
    }

    if (v30)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v38.flags)
    {
      goto LABEL_42;
    }

    *v41 = *&lhs.source.start.value;
    *&v41[16] = *&lhs.source.start.epoch;
    v42 = *&lhs.source.duration.timescale;
    if (v27 < v26)
    {
      break;
    }

    rhs.source = target;
    CMTimeRangeGetEnd(&v39, &rhs.source);
    *&rhs.source.start.value = v36;
    rhs.source.start.epoch = epoch;
    if (CMTimeCompare(&rhs.source.start, &v39) >= 1)
    {
      goto LABEL_52;
    }

LABEL_42:
    ++v27;
    if (!--v28)
    {
      goto LABEL_48;
    }
  }

  v31 = CFArrayGetValueAtIndex(*(v23 + 480), v27);
  CMTimeMappingMakeFromDictionary(&rhs, v31);
  *time = *&rhs.source.start.value;
  *&time[16] = *&rhs.source.start.epoch;
  v47[0] = *&rhs.source.duration.timescale;
  *(v47 + 12) = *(&rhs.source.duration.epoch + 4);
  flags = rhs.target.start.flags;
  if ((rhs.target.start.flags & 1) == 0)
  {
    goto LABEL_42;
  }

  if ((rhs.target.duration.flags & 1) == 0)
  {
    goto LABEL_42;
  }

  if (rhs.target.duration.epoch)
  {
    goto LABEL_42;
  }

  if (rhs.target.duration.value < 0)
  {
    goto LABEL_42;
  }

  v33 = rhs.target.start.epoch;
  rhs.source = target;
  CMTimeRangeGetEnd(&v39, &rhs.source);
  *&rhs.source.start.value = v36;
  rhs.source.start.epoch = epoch;
  if (CMTimeCompare(&rhs.source.start, &v39) < 1)
  {
    goto LABEL_42;
  }

  *&rhs.source.start.value = v36;
  rhs.source.start.epoch = epoch;
  v39.value = *&v47[1];
  v39.timescale = DWORD2(v47[1]);
  v39.flags = flags;
  v39.epoch = v33;
  if ((CMTimeCompare(&rhs.source.start, &v39) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_52:
  *&rhs.source.start.value = *v41;
  *&rhs.source.start.epoch = *&v41[16];
  *&rhs.source.duration.timescale = v42;
  CMTimeRangeGetEnd(&v39, &rhs.source);
  CMTimeMake(&rhs.source.start, 350, 1000);
  CMTimeSubtract(&v38, &v39, &rhs.source.start);
  rhs.source.start = v38;
  v39 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&rhs.source.start, &v39) < 0)
  {
    v38 = **&MEMORY[0x1E6960CC0];
  }

  v34 = 1;
LABEL_49:
  *&v11 = v38.value;
  *a5 = v38;
  if (a4)
  {
    goto LABEL_45;
  }

  return *&v11;
}

uint64_t figPlaybackCoordinator_addTimebaseNotificationListeners(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

void figPlaybackCoordinator_updateHLSInterstitialStartTimes()
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  memset(cf, 0, sizeof(cf));
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage[6])
  {
    goto LABEL_31;
  }

  v1 = *MEMORY[0x1E695E480];
  FigPlaybackItemGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = v4(v3, @"interstitialEvents", v1, cf);
    v6 = cf[0];
    v7 = DerivedStorage[59];
    DerivedStorage[59] = cf[0];
    if (v6)
    {
      CFRetain(v6);
    }
  }

  else
  {
    v7 = DerivedStorage[59];
    DerivedStorage[59] = 0;
    v5 = -12782;
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (!cf[0])
  {
LABEL_31:
    Mutable = 0;
    goto LABEL_32;
  }

  Count = CFArrayGetCount(cf[0]);
  Mutable = 0;
  v10 = 1;
  if (v5)
  {
    goto LABEL_34;
  }

  v11 = Count;
  if (Count < 1)
  {
    goto LABEL_34;
  }

  v33 = **&MEMORY[0x1E6960C70];
  FigPlaybackItemGetFigBaseObject();
  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v14 || v14(v13, @"currentDateAndTime", v1, &v35) || (FigDateTimeMakeFromDictionary(v35, &time), *&cf[1] = time, !v32) || !v31)
  {
    Mutable = 0;
    goto LABEL_34;
  }

  CMTimeMakeWithSeconds(&v33, seconds, 1000000000);
  lhs = v33;
  v28 = *&cf[1];
  CMTimeSubtract(&time, &lhs, &v28);
  v33 = time;
  v15 = CMTimeGetSeconds(&time);
  Mutable = CFArrayCreateMutable(v1, 0, MEMORY[0x1E695E9C0]);
  v16 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf[0], v16);
    v28.value = 0;
    if (!FigPlayerInterstitialEventCreateFromDictionary(0, ValueAtIndex, &v28.value))
    {
      FigPlayerInterstitialEventGetStartTime(v28.value, &time);
      lhs.value = time.value;
      flags = time.flags;
      lhs.timescale = time.timescale;
      epoch = time.epoch;
      if ((time.flags & 1) == 0)
      {
        started = FigPlayerInterstitialEventCopyStartDate(v28.value);
        if (started)
        {
          v21 = started;
          v22 = MEMORY[0x19A8CCD90]();
          CMTimeMakeWithSeconds(&time, v22 - v15, 1000000000);
          lhs.value = time.value;
          flags = time.flags;
          lhs.timescale = time.timescale;
          epoch = time.epoch;
          CFRelease(v21);
        }
      }

      time.value = lhs.value;
      time.timescale = lhs.timescale;
      time.flags = flags;
      time.epoch = epoch;
      v23 = CMTimeCopyAsDictionary(&time, v1);
      if (v23)
      {
        v24 = v23;
        CFArrayAppendValue(Mutable, v23);
        CFRelease(v24);
      }

      CFRelease(v28.value);
    }

    ++v16;
  }

  while (v11 != v16);
  if (!Mutable)
  {
LABEL_32:
    v10 = 1;
    goto LABEL_34;
  }

  if (CFArrayGetCount(Mutable) >= 1)
  {
    v25 = FigCFCopyCompactDescription();
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = DerivedStorage[58];
    DerivedStorage[58] = Mutable;
    CFRetain(Mutable);
    if (v26)
    {
      CFRelease(v26);
    }

    v10 = 0;
    goto LABEL_36;
  }

  v10 = 0;
LABEL_34:
  v27 = DerivedStorage[58];
  if (v27)
  {
    CFRelease(v27);
    DerivedStorage[58] = 0;
  }

LABEL_36:
  if (v35)
  {
    CFRelease(v35);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if ((v10 & 1) == 0)
  {
    CFRelease(Mutable);
  }
}

void figPlaybackCoordinator_seekDidComplete(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v24 = *MEMORY[0x1E6960C70];
  v25 = *(MEMORY[0x1E6960C70] + 16);
  v23 = 0;
  if (v8)
  {
    v16 = v8;
    if (*(DerivedStorage + 48) == a4)
    {
      FigCFDictionaryGetInt32IfPresent();
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v17)
      {
        v17(v16, &v23);
      }

      v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v18)
      {
        v18(a4, &v24);
      }

      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(DerivedStorage + 104))
      {
        figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a2);
      }

      else if (HIDWORD(v23))
      {
        if (HIDWORD(v23) == *(DerivedStorage + 244))
        {
          *(DerivedStorage + 244) = 0;
          figPlaybackCoordinator_checkForCommandCompletion(a2);
        }
      }

      figPlaybackCoordinator_updateInterstitialStateMachine(a2, 1);
    }

    else
    {
      figPlaybackCoordinator_seekDidComplete_cold_1(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, SHIDWORD(v21), v22);
    }

    CFRelease(v16);
  }

  else
  {
    figPlaybackCoordinator_seekDidComplete_cold_2(0, v9, v10, v11, v12, v13, v14, v15, v20, v21, SHIDWORD(v21), v22);
  }
}

void figPlaybackCoordinator_seekWasCancelled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v8)
  {
    v16 = v8;
    if (*(DerivedStorage + 48) == a4)
    {
      FigCFDictionaryGetInt32IfPresent();
      if (!*(DerivedStorage + 244))
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(a2, 0, 0, 0);
      }
    }

    else
    {
      figPlaybackCoordinator_seekWasCancelled_cold_1(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, SHIDWORD(v19), v20);
    }

    CFRelease(v16);
  }

  else
  {
    figPlaybackCoordinator_seekWasCancelled_cold_2(0, v9, v10, v11, v12, v13, v14, v15, v18, v19, SHIDWORD(v19), v20);
  }
}

double figPlaybackCoordinator_coordinationIdentifierChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_coordinationIdentifierChanged_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, v16, SHIDWORD(v16), vars0);
  }

  figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a2);
  return result;
}

double figPlaybackCoordinator_playbackStalled(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_playbackStalled_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v16, v17, SHIDWORD(v17), vars0);
  }

  v14 = *MEMORY[0x1E6963328];

  playbackCoordinator_beginSystemEventSuspensionForReason(a2, v14);
  return result;
}

double figPlaybackCoordinator_coordinatedPlaybackSupportChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) != a4)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_1(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v18, v19, SHIDWORD(v19), v20);
  }

  if (*(DerivedStorage + 64) != 10000)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_2(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v18, v19, SHIDWORD(v19), v20);
  }

  if (!a5)
  {
    return figPlaybackCoordinator_coordinatedPlaybackSupportChanged_cold_3(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v18, v19, SHIDWORD(v19), v20);
  }

  v16 = CFDictionaryGetValue(a5, @"IsCoordinatedPlaybackSupported") == *MEMORY[0x1E695E4D0];

  figPlaybackCoordinator_beginOrEndCoordinatedPlaybackNotPossibleSuspension(a2, v16, 1);
  return result;
}

void figPlaybackCoordinator_currentItemTimebaseDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {
    v14 = DerivedStorage;
    FigPlaybackItemGetFigBaseObject();
    v16 = v15;
    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v17)
    {
      v18 = v17(v16, @"Timebase", *MEMORY[0x1E695E480], &cf);
      v19 = cf;
      if (!v18)
      {
        v20 = *(v14 + 56);
        if (cf != v20)
        {
          figPlaybackCoordinator_removeTimebaseNotificationListeners(a2, v20);
          v21 = *(v14 + 56);
          v22 = cf;
          *(v14 + 56) = cf;
          if (v22)
          {
            CFRetain(v22);
          }

          if (v21)
          {
            CFRelease(v21);
          }

          figPlaybackCoordinator_addTimebaseNotificationListeners(a2, *(v14 + 56));
          figPlaybackCoordinator_handleCurrentTimebaseRateChange(a2);
          v19 = cf;
        }
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }
  }

  else
  {
    figPlaybackCoordinator_currentItemTimebaseDidChange_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v23, cf, SHIDWORD(cf), v25);
  }
}

void figPlaybackCoordinator_integratedTimelineOffsetsChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 48) == a4)
  {

    figPlaybackCoordinator_setIntegratedTimelineOffsetTimesForItem(a2, a4);
  }

  else
  {
    figPlaybackCoordinator_integratedTimelineOffsetsChanged_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v14, v15, SHIDWORD(v15), vars0);
  }
}

void figPlaybackCoordinator_primeNextInterstitialEventTimer(uint64_t a1, uint64_t a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figPlaybackCoordinator_clearInterstitialEventTimer();
  *&v15.value = *a2;
  v15.epoch = *(a2 + 16);
  FigPlaybackCoordinatorGetCMBaseObject();
  v7 = CMBaseObjectGetDerivedStorage();
  FigPlaybackCoordinatorGetCMBaseObject();
  v8 = CMBaseObjectGetDerivedStorage();
  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 1uLL, *(v8 + 280));
  if (v9)
  {
    v10 = v9;
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    dispatch_set_context(v10, v11);
    dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    dispatch_source_set_event_handler_f(v10, figPlaybackCoordinator_interstitialTimerEventProc);
    dispatch_source_set_cancel_handler_f(v10, 0);
    dispatch_set_finalizer_f(v10, FigCFRelease_9);
    dispatch_resume(v10);
    if (CMTimebaseAddTimerDispatchSource(*(v7 + 56), v10) || (v12 = *(v7 + 56), fireTime = v15, CMTimebaseSetTimerDispatchSourceNextFireTime(v12, v10, &fireTime, 1u)))
    {
      CFRelease(v10);
    }

    else
    {
      *(v7 + 388) = a3;
      if (dword_1ED4CBE70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(DerivedStorage + 376) = v10;
    }
  }

  else
  {
    v14 = qword_1ED4CBE68;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954510, "<<<< FigPlaybackCoordinator >>>>", 1237, v3);
  }
}

CMTime *figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials@<X0>(CMTime *a1@<X1>, CMTime *a2@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 368);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v17 = **&MEMORY[0x1E6960CC0];
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = *(MEMORY[0x1E6960C98] + 16);
      *&v16.start.value = *MEMORY[0x1E6960C98];
      *&v16.start.epoch = v9;
      *&v16.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v8);
        CMTimeRangeMakeFromDictionary(&v16, ValueAtIndex);
        range = v16;
        CMTimeRangeGetEnd(&time1, &range);
        *&range.start.value = *&a1->value;
        range.start.epoch = a1->epoch;
        if (CMTimeCompare(&time1, &range.start) >= 1)
        {
          break;
        }

        range.start = v17;
        time1 = v16.duration;
        CMTimeAdd(&v17, &range.start, &time1);
        if (v7 == ++v8)
        {
          goto LABEL_10;
        }
      }

      *&range.start.value = *&v16.start.value;
      *&range.start.epoch = *&v16.start.epoch;
      v11 = *&a1->value;
      *&range.duration.timescale = *&v16.duration.timescale;
      *&time1.value = v11;
      time1.epoch = a1->epoch;
      if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&range, &time1))
      {
        time1 = *a1;
        start = v16.start;
        CMTimeSubtract(&range.start, &time1, &start);
        time1 = v17;
        CMTimeAdd(&v17, &time1, &range.start);
      }
    }
  }

  else
  {
    v17 = **&MEMORY[0x1E6960CC0];
  }

LABEL_10:
  *&v16.start.value = *&a1->value;
  v16.start.epoch = a1->epoch;
  range.start = v17;
  return CMTimeSubtract(a2, &v16.start, &range.start);
}

void figPlaybackCoordinator_endDiscontinuitiyBasedInterstitialSuspensionProposingNewTime(uint64_t a1, __int128 *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 440))
  {
    v3 = DerivedStorage;
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    v7 = 0;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v5)
    {
      v5(v4, &v7);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    FigTimelineCoordinatorEndSuspensionWeaklyIfNeededProposingNewRateAndTime();
    v6 = *(v3 + 440);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 440) = 0;
    }
  }
}

uint64_t figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(uint64_t a1, CMTime *a2)
{
  v4 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *(a1 + 32);
  time = *a2;
  if (CMTimeRangeContainsTime(&range, &time))
  {
    return 1;
  }

  CMTimeMake(&time, 40, 1000);
  v7 = *a2;
  CMTimeAdd(&range.start, &v7, &time);
  time = *a1;
  if (CMTimeCompare(&range.start, &time) < 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  *&range.start.value = *a1;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&time, &range);
  *&range.start.value = *&a2->value;
  range.start.epoch = a2->epoch;
  return CMTimeCompare(&range.start, &time) >> 31;
}

uint64_t figPlaybackCoordinator_isTimeInInterstitialRange(uint64_t a1, CMTime *a2, _OWORD *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 368);
  if (!result)
  {
    v12 = *(MEMORY[0x1E6960C98] + 16);
    *&v17.start.value = *MEMORY[0x1E6960C98];
    *&v17.start.epoch = v12;
    *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  Count = CFArrayGetCount(result);
  v8 = *(MEMORY[0x1E6960C98] + 16);
  *&v17.start.value = *MEMORY[0x1E6960C98];
  *&v17.start.epoch = v8;
  *&v17.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  if (Count < 1)
  {
LABEL_6:
    result = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    memset(&v16, 0, sizeof(v16));
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 368), v10);
    CMTimeRangeMakeFromDictionary(&v16, ValueAtIndex);
    v15 = v16;
    v14 = *a2;
    if (figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(&v15, &v14))
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  v17 = v16;
  result = 1;
  if (a3)
  {
LABEL_9:
    v13 = *&v17.start.epoch;
    *a3 = *&v17.start.value;
    a3[1] = v13;
    a3[2] = *&v17.duration.timescale;
  }

  return result;
}

void figPlaybackCoordinator_interstitialTimerEventProc(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    figPlaybackCoordinator_interstitialTimerEventProc_cold_1(v1);
  }
}

void playbackCoordinator_completePendingStartupTaskOnQueue(uint64_t a1)
{
  v2 = *a1;
  playbackCoordinator_completePendingStartupTask(*a1, *(a1 + 8));
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void playbackCoordinator_beginSystemEventSuspensionForReason(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!CFDictionaryContainsKey(*(DerivedStorage + 296), a2))
  {
    if (FigTimelineCoordinatorSuspensionCreate())
    {
      return;
    }

    CFDictionarySetValue(*(DerivedStorage + 296), a2, 0);
  }

  FigSimpleMutexUnlock();
}

void figPlaybackCoordinator_handleCurrentTimebaseRateChange(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Rate = CMTimebaseGetRate(*(DerivedStorage + 56));
  if (*(DerivedStorage + 104))
  {
    v4 = Rate;
    if (dword_1ED4CBE70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v4 != 0.0)
    {
      figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(a1);
    }
  }

  else if (*(DerivedStorage + 224))
  {

    figPlaybackCoordinator_checkForCommandCompletion(a1);
  }
}

uint64_t FigPlaybackItemSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackItemGetFigBaseObject();
  v6 = v5;
  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 8);
  result = VTable + 8;
  v10 = *(v9 + 56);
  if (v10)
  {

    return v10(v6, a2, a3);
  }

  return result;
}

void figPlaybackCoordinator_currentItemTimebaseRateDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 56) == a4)
  {

    figPlaybackCoordinator_handleCurrentTimebaseRateChange(a2);
  }

  else
  {
    figPlaybackCoordinator_currentItemTimebaseRateDidChange_cold_1(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v14, v15, SHIDWORD(v15), vars0);
  }
}

uint64_t figPlaybackCoordinator_CopyParticipantSnapshots(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1D8](v3, a2);
}

double figPlaybackCoordinator_getGroupTimeFromPlayerTime@<D0>(CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  a3->epoch = a2->epoch;
  v7 = *&a2->value;
  *&a3->value = *&a2->value;
  if (*(DerivedStorage + 344))
  {
    lhs = *a2;
    v15 = *(DerivedStorage + 332);
    CMTimeAdd(a3, &lhs, &v15);
    v9 = 1;
    v10 = 1;
  }

  else
  {
    v8 = *(DerivedStorage + 368);
    if (v8 && CFArrayGetCount(v8) >= 1)
    {
      lhs = *a2;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(&lhs, a3);
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v9 = 1;
    }
  }

  v11 = *(v6 + 480);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    v13 = v9 ^ 1;
    if (Count < 1)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      v15 = *a3;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline(&v15.value, v10, &lhs);
      *&v7 = lhs.value;
      *a3 = lhs;
    }
  }

  return *&v7;
}

uint64_t figPlaybackCoordinator_copyGroupTimebaseFromCurrentItemTimebase(uint64_t a1, CMTimebaseRef *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v4 = *(DerivedStorage + 56);
  if (v4)
  {
    CMTimebaseGetTime(&v20, v4);
    value = v20.value;
    flags = v20.flags;
    timescale = v20.timescale;
    epoch = v20.epoch;
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v20 = **&MEMORY[0x1E6960CC0];
  if (*(DerivedStorage + 344))
  {
    v20 = *(DerivedStorage + 332);
    if ((flags & 1) == 0)
    {
      goto LABEL_19;
    }

    v8 = 1;
  }

  else
  {
    if ((flags & 1) == 0)
    {
      goto LABEL_19;
    }

    v7 = *(DerivedStorage + 368);
    if (v7 && CFArrayGetCount(v7) >= 1)
    {
      memset(&v19, 0, sizeof(v19));
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(&lhs, &v19);
      lhs = v19;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      CMTimeSubtract(&v20, &lhs, &rhs);
      v8 = 0;
      v9 = 0;
      goto LABEL_13;
    }

    v8 = 0;
  }

  v9 = 1;
LABEL_13:
  v10 = *(DerivedStorage + 480);
  if (v10)
  {
    Count = CFArrayGetCount(v10);
    v12 = v9 ^ 1;
    if (Count < 1)
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      memset(&v19, 0, sizeof(v19));
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = flags;
      lhs.epoch = epoch;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline(&lhs.value, v8, &v19);
      if (v19.flags)
      {
        memset(&lhs, 0, sizeof(lhs));
        rhs = v19;
        v16.value = value;
        v16.timescale = timescale;
        v16.flags = flags;
        v16.epoch = epoch;
        CMTimeSubtract(&lhs, &rhs, &v16);
        v16 = v20;
        v15 = lhs;
        CMTimeAdd(&rhs, &v16, &v15);
        v20 = rhs;
      }
    }
  }

LABEL_19:
  v13 = *(DerivedStorage + 56);
  v19 = v20;
  return figPlaybackCoordinator_copyTimebaseAndAddOffset(v13, &v19, a2);
}

uint64_t figPlaybackCoordinator_getGroupTimeFromPlayerTimeOnIntegratedTimeline@<X0>(__int128 *a1@<X1>, int a2@<W2>, CMTime *a3@<X8>)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a3 = **&MEMORY[0x1E6960C70];
  result = *(DerivedStorage + 480);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v8 = result;
      for (i = 0; ; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 480), i);
        memset(&v16, 0, sizeof(v16));
        CMTimeMappingMakeFromDictionary(&v16, ValueAtIndex);
        source = v16.source;
        *&v12.start.value = *a1;
        memset(&v14, 0, sizeof(v14));
        v12.start.epoch = *(a1 + 2);
        rhs = v16.source.start;
        CMTimeSubtract(&v14, &v12.start, &rhs);
        *&v12.start.value = *&source.start.value;
        *&v12.start.epoch = *&source.start.epoch;
        v11 = *a1;
        *&v12.duration.timescale = *&source.duration.timescale;
        *&rhs.value = v11;
        rhs.epoch = *(a1 + 2);
        if (CMTimeRangeContainsTime(&v12, &rhs))
        {
          break;
        }

        rhs = v14;
        CMTimeAbsoluteValue(&v12.start, &rhs);
        CMTimeMake(&rhs, 350, 1000);
        if (CMTimeCompare(&v12.start, &rhs) < 0)
        {
          break;
        }

        v12 = source;
        CMTimeRangeGetEnd(&rhs, &v12);
        *&v12.start.value = *a1;
        v12.start.epoch = *(a1 + 2);
        result = CMTimeCompare(&rhs, &v12.start);
        if (!result)
        {
          break;
        }

        if (a2)
        {
          if (v8 == 1 && !*(DerivedStorage + 496))
          {
            v12 = source;
            CMTimeRangeGetEnd(&rhs, &v12);
            *&v12.start.value = *a1;
            v12.start.epoch = *(a1 + 2);
            result = CMTimeCompare(&v12.start, &rhs);
            if (result >= 1)
            {
              break;
            }
          }
        }

        if (!--v8)
        {
          return result;
        }
      }

      *&v12.start.value = *&v16.target.start.value;
      v12.start.epoch = v16.target.start.epoch;
      rhs = v14;
      return CMTimeAdd(a3, &v12.start, &rhs);
    }
  }

  return result;
}

uint64_t figPlaybackCoordinator_suspensionReasonsChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figPlaybackCoordinator_timelineCoordinatorParticipantsDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *v8 = v9;
  if (a5)
  {
    v10 = CFRetain(a5);
  }

  else
  {
    v10 = 0;
  }

  v8[1] = v10;
  dispatch_async_f(*(DerivedStorage + 280), v8, figPlaybackCoordinator_timelineCoordinatorParticipantsDidChangeDispatch);
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t figPlaybackCoordinator_timelineCoordinatorDidIssueCommandToTimelineControl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 496))
  {
    if (*MEMORY[0x1E695E4C0] == v3 && !playbackCoordinator_coordinatedPlaybackNotPossibleSuspensionActive(v2, 4))
    {
      figPlaybackCoordinator_beginPlayingPrimarySuspension(v2);
    }
  }

  else if (*MEMORY[0x1E695E4D0] == v3)
  {
    figPlaybackCoordinator_handleChangeInInterstitialActiveStatusOnQueue_cold_1(v2);
  }

  else
  {
    v5 = DerivedStorage;
    figPlaybackCoordinator_endPlayingInterstitialSuspension(v2, *(DerivedStorage + 488));
    if (*(v5 + 104))
    {
      figPlaybackCoordinator_resetTimelineCoordinatorStateToCurrentItemIdentifierAndTiming(v2);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_EndSuspensionProposingNewTime(const void *a1, const void *a2, __int128 *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = malloc_type_malloc(0x28uLL, 0x1020040E349F4B1uLL);
  if (a1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v8 = 0;
  }

  *v7 = v8;
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  v7[1] = v9;
  v10 = *a3;
  v7[4] = *(a3 + 2);
  *(v7 + 1) = v10;
  dispatch_async_f(*(DerivedStorage + 280), v7, figPlaybackCoordinator_EndSuspensionProposingNewTimeOnQueue);
  return 0;
}

uint64_t figPlaybackCoordinator_EndSuspensionWithReason(const void *a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = malloc_type_malloc(0x10uLL, 0x60040FAFB2B2FuLL);
  if (v5)
  {
    v6 = v5;
    if (a1)
    {
      v7 = CFRetain(a1);
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    v6[1] = v8;
    dispatch_async_f(*(DerivedStorage + 280), v6, figPlaybackCoordinator_EndSuspensionWithReasonOnQueue);
    return 0;
  }

  else
  {
    figPlaybackCoordinator_EndSuspensionWithReason_cold_1(&v10);
    return v10;
  }
}

uint64_t figPlaybackCoordinator_SetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE2A0](v5, a2, a3);
}

uint64_t figPlaybackCoordinator_HandleAssignmentOfUUIDToLocalParticipantByMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE240](v3, a2);
}

uint64_t figPlaybackCoordinator_CopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v5 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1D0](v5, a2, a3);
}

uint64_t figPlaybackCoordinator_HandleRemovalOfParticipantStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE248](v3, a2);
}

uint64_t figPlaybackCoordinator_GetExpectedTimeAtHostTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  return FigTimelineCoordinatorGetExpectedTimeAtHostTime();
}

uint64_t figPlaybackCoordinator_HandleUpdatedTimelineStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE270](v3, a2);
}

uint64_t figPlaybackCoordinator_HandleReplacementOfAllParticipantStatesFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE250](v3, a2);
}

uint64_t figPlaybackCoordinator_HandleUpdatedParticipantStateFromMedium(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE268](v3, a2);
}

uint64_t figPlaybackCoordinator_DisconnectFromMedium()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v0 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE1F0](v0);
}

uint64_t figPlaybackCoordinator_StopTrackingPlayer(void *a1)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  dispatch_async_f(*(DerivedStorage + 280), a1, playbackCoordinator_stopTrackingPlayerOnQueue);
  return 0;
}

uint64_t figPlaybackCoordinator_ResetGroupTimelineExpectationsForIdentifier(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE288](v3, a2);
}

void figPlaybackCoordinator_EndSuspensionProposingNewTimeOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v18 = *(a1 + 16);
  v4 = *(MEMORY[0x1E6960C98] + 16);
  v15 = *MEMORY[0x1E6960C98];
  v16 = v4;
  v17 = *(MEMORY[0x1E6960C98] + 32);
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, v3);
  v7 = *(DerivedStorage + 368);
  if (v7 && CFArrayGetCount(v7) >= 1)
  {
    FigPlaybackCoordinatorGetCMBaseObject();
    if (!*(CMBaseObjectGetDerivedStorage() + 440) || (rhs = v18, FigPlaybackCoordinatorGetCMBaseObject(), v8 = CMBaseObjectGetDerivedStorage(), v9 = *(v8 + 408), *lhs = *(v8 + 392), *&lhs[16] = v9, v21 = *(v8 + 424), !figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(lhs, &rhs)))
    {
      *lhs = v18;
      if (figPlaybackCoordinator_isTimeInInterstitialRange(v2, lhs, &v15))
      {
        *&v18.value = v15;
        v18.epoch = v16;
      }
    }

    FigPlaybackCoordinatorGetCMBaseObject();
    if (*(CMBaseObjectGetDerivedStorage() + 440))
    {
      rhs = v18;
      FigPlaybackCoordinatorGetCMBaseObject();
      v10 = CMBaseObjectGetDerivedStorage();
      v11 = *(v10 + 408);
      *lhs = *(v10 + 392);
      *&lhs[16] = v11;
      v21 = *(v10 + 424);
      if (!figPlaybackCoordinator_timeRangeContainsTimeWithStartTolerance(lhs, &rhs))
      {
        CFArrayAppendValue(Mutable, *(DerivedStorage + 440));
        v12 = *(DerivedStorage + 440);
        if (v12)
        {
          CFRelease(v12);
          *(DerivedStorage + 440) = 0;
        }
      }
    }
  }

  if (*(DerivedStorage + 344))
  {
    *lhs = v18;
    rhs = *(DerivedStorage + 332);
    CMTimeAdd(&v18, lhs, &rhs);
  }

  else
  {
    v13 = *(DerivedStorage + 368);
    if (v13 && CFArrayGetCount(v13) >= 1)
    {
      *lhs = v18;
      figPlaybackCoordinator_getGroupTimeFromPlayerTimeForInterstitials(lhs, &v18);
    }
  }

  *lhs = v18;
  FigTimelineCoordinatorEndSuspensionsProposingNewTime();
  v14 = *(a1 + 8);
  if (v14)
  {
    CFRelease(v14);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(a1);
}

void figPlaybackCoordinator_EndSuspensionWithReasonOnQueue(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 328) = 0;
  FigSimpleMutexUnlock();
  figPlaybackCoordinator_endSuspensionForReason(v2, v3);
  v5 = *(a1 + 8);
  if (v5)
  {
    CFRelease(v5);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_endSuspensionForReason(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  v3 = *(CMBaseObjectGetDerivedStorage() + 16);

  return MEMORY[0x1EEDBE218](v3, a2);
}

BOOL playbackCoordinator_systemEventSuspensionsActive()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v0 = FigCFDictionaryGetCount() > 0;
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t figPlaybackCoordinator_isSuspendedForReason(uint64_t a1, uint64_t a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  FigTimelineCoordinatorCopyActiveSuspensionReasons();
  return 0;
}

void playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask(uint64_t a1)
{
  v2 = *a1;
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  v12 = v4;
  if (*(DerivedStorage + 184) == *(a1 + 8))
  {
    if (v4)
    {
      v13 = *(DerivedStorage + 48);
      if (v13)
      {
        if (*(DerivedStorage + 64) == 10000)
        {
          v14 = *(DerivedStorage + 168);
          FigPlaybackItemGetFigBaseObject();
          v16 = v15;
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v17)
          {
            v17(v16, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v14);
          }

          cf = 0;
          FigPlayerGetFigBaseObject();
          v19 = v18;
          v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v20)
          {
            v20(v19, @"SynchronizedNULL", *MEMORY[0x1E695E480], &cf);
            if (cf)
            {
              CFRelease(cf);
            }
          }

          playbackCoordinator_completePendingStartupTask(v2, 1);
        }

        else
        {
          playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_1(v13, v5, v6, v7, v8, v9, v10, v11, v21, cf, SHIDWORD(cf), v23);
        }
      }

      else
      {
        playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_2(0, v5, v6, v7, v8, v9, v10, v11, v21, cf, SHIDWORD(cf), v23);
      }

      goto LABEL_11;
    }

    playbackCoordinator_setReferenceTimebaseAndCompleteStartupTask_cold_3(0, v5, v6, v7, v8, v9, v10, v11, v21, cf, SHIDWORD(cf), v23);
  }

  else if (v4)
  {
LABEL_11:
    CFRelease(v12);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

uint64_t figPlaybackCoordinator_isInterstitialScheduledAtTime(uint64_t a1, CMTime *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 368);
  if (v5 && CFArrayGetCount(v5) >= 1)
  {
    v19 = *a2;
    return figPlaybackCoordinator_isTimeInInterstitialRange(a1, &v19, 0);
  }

  else
  {
    v7 = *(DerivedStorage + 464);
    if (v7 && CFArrayGetCount(v7) >= 1 && (*&v15.value = *&a2->value, v15.epoch = a2->epoch, FigPlaybackCoordinatorGetCMBaseObject(), v8 = CMBaseObjectGetDerivedStorage(), (v9 = *(v8 + 464)) != 0) && (Count = CFArrayGetCount(v9), Count >= 1))
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 464), v12);
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, ValueAtIndex);
        v6 = 1;
        CMTimeMake(&v18, 1, 1000);
        v17 = v19;
        v16 = v15;
        if (faqrp_timeDifferenceIsWithinTolerance(&v17, &v16, &v18))
        {
          break;
        }

        if (v11 == ++v12)
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

  return v6;
}

__n128 OUTLINED_FUNCTION_1_128()
{
  result = *v0;
  v1[10] = *v0;
  v1[11].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_2_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a21, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __n128 a22, unint64_t a23)
{
  result = a22;
  v23[6] = a22;
  v23[7].n128_u64[0] = a23;
  return result;
}

void OUTLINED_FUNCTION_3_101()
{

  figPlaybackCoordinator_completePendingCommandAndRecordNewCallback(v0, 0, 0, 0);
}

uint64_t OUTLINED_FUNCTION_4_99(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_5_86(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

void OUTLINED_FUNCTION_7_62()
{
  *(v2 + 12) = 2048;
  *(v2 + 14) = v0;
  *(v2 + 22) = 1024;
  *(v2 + 24) = v1;
  *(v2 + 28) = 2114;
  *(v2 + 30) = v4;
  *(v2 + 38) = 2114;
  *(v2 + 40) = v3;
  *(v2 + 48) = 2048;
}

uint64_t OUTLINED_FUNCTION_8_48(uint64_t a1)
{

  return FigNotificationCenterAddWeakListener();
}

__n128 OUTLINED_FUNCTION_12_42()
{
  result = *v0;
  *(v1 - 144) = *v0;
  *(v1 - 128) = v0[1].n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_14_39(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  a17 = *v54;
  a18 = *(v54 + 16);

  return figPlaybackCoordinator_getPlayerTimeFromGroupTime(&a42, &a17, a4, &a38, &a54);
}

CFComparisonResult OUTLINED_FUNCTION_15_36()
{

  return CFStringCompare(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_17_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, int a22)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_18_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  a26 = a21;
  *(v37 + 16) = a22;

  return figPlaybackCoordinator_getGroupTimeFromPlayerTime(&a26, &a37);
}

uint64_t OUTLINED_FUNCTION_19_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  *(v18 - 224) = a17;
  *(v18 - 208) = a18;
  return v18 - 192;
}

uint64_t OUTLINED_FUNCTION_22_23(uint64_t a1, uint64_t a2, __int128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CMTime *time2, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 time2a, uint64_t time2_16)
{
  time2a = a10;
  time2_16 = a11;

  return CMTimeCompare((v32 - 160), &time2a);
}

Float64 OUTLINED_FUNCTION_23_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CMTime *time, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t timea)
{
  *(v53 + 160) = *a14;
  *(v53 + 176) = *(a14 + 16);

  return CMTimeGetSeconds(&timea);
}

CMTime *OUTLINED_FUNCTION_27_20@<X0>(CMTime *a1@<X8>)
{

  return CMTimeMake(a1, 20, 1000);
}

uint64_t OUTLINED_FUNCTION_28_20(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

__n128 OUTLINED_FUNCTION_29_20()
{
  result = *(v0 - 144);
  *(v0 - 192) = result;
  *(v0 - 176) = *(v0 - 128);
  return result;
}

__n128 OUTLINED_FUNCTION_30_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a27, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __n128 a28, uint64_t a29)
{
  result = a28;
  *(v29 - 192) = a28;
  *(v29 - 176) = a29;
  return result;
}

__n128 OUTLINED_FUNCTION_32_18()
{
  result = v1[10];
  *v0 = result;
  v0[1].n128_u64[0] = v1[11].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_36_18()
{
  result = *v0;
  v1[4] = *v0;
  v1[5].n128_u64[0] = v0[1].n128_u64[0];
  return result;
}

double OUTLINED_FUNCTION_42_15()
{

  FigTimelineCoordinatorSetReadinessHintFromTimelineControl();
  return result;
}

uint64_t FigTTMLHeadCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, CFTypeRef *a4)
{
  if (a4)
  {
    FigTTMLNodeGetClassID();
    Default = CMDerivedObjectCreate();
    if (Default)
    {
      return Default;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    Default = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a3);
    if (Default)
    {
      return Default;
    }

    *(DerivedStorage + 152) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
    Default = FigTTMLAddCurrentElementAttributesToDictionary(a2, *(DerivedStorage + 24));
    if (Default)
    {
      return Default;
    }

    *a3 = 0;
    a3[1] = 0;
    FigTTMLParseNode(a2, figTTMLHead_ConsumeChildNode, a3);
    if (Default)
    {
      return Default;
    }

    v11 = *(DerivedStorage + 144);
    v10 = (DerivedStorage + 144);
    if (!v11 && (Default = FigTTMLLayoutCreateDefault(a1, a3, v10), Default))
    {
      return Default;
    }

    else
    {
      v12 = 0;
      *a4 = 0;
    }
  }

  else
  {
    FigTTMLHeadCreate_cold_1(&v14);
    return v14;
  }

  return v12;
}

uint64_t FigTTMLHeadCreateDefault(const __CFAllocator *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  if (a3)
  {
    FigTTMLNodeGetClassID();
    Default = CMDerivedObjectCreate();
    if (!Default)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = FigTTMLInitializeNodeBaseStorage(DerivedStorage, a2);
      if (v8)
      {
        return v8;
      }

      else
      {
        *(DerivedStorage + 152) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
        *a2 = 0;
        a2[1] = 0;
        Default = FigTTMLLayoutCreateDefault(a1, a2, (DerivedStorage + 144));
        if (!Default)
        {
          *a3 = 0;
        }
      }
    }
  }

  else
  {
    FigTTMLHeadCreateDefault_cold_1(&v10);
    return v10;
  }

  return Default;
}

void figTTMLHead_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[17];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[17] = 0;
  }

  v3 = DerivedStorage[18];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[18] = 0;
  }

  v4 = DerivedStorage[19];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[19] = 0;
  }

  FigTTMLReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figTTMLHead_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"head %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figTTMLHead_CopyChildNodeArray(const void *a1, __CFArray **a2)
{
  v3 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    v7 = *(DerivedStorage + 152);
    if (v7)
    {
      v8.length = CFArrayGetCount(*(DerivedStorage + 152));
    }

    else
    {
      v8.length = 0;
    }

    v8.location = 0;
    CFArrayAppendArray(Mutable, v7, v8);
    v9 = *(v6 + 136);
    if (v9)
    {
      CFArrayAppendValue(Mutable, v9);
    }

    v10 = *(v6 + 144);
    if (v10)
    {
      CFArrayAppendValue(Mutable, v10);
    }

    v11 = 0;
    *a2 = Mutable;
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    v11 = v13;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  return v11;
}

uint64_t figTTMLHead_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 8;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figTTMLHead_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t CreateTrackReaderDictionary(const __CFAllocator *a1, void *a2)
{
  value = 0;
  MovieInformationLockForRead(a2[1]);
  v4 = FigSimpleMutexCreate();
  a2[2] = v4;
  if (!v4)
  {
    CreateTrackReaderDictionary_cold_2(&v16);
LABEL_14:
    v13 = v16;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    CreateTrackReaderDictionary_cold_1(&v16);
    goto LABEL_14;
  }

  v6 = Mutable;
  TrackCount = MovieInformationGetTrackCount(a2[1]);
  if (TrackCount < 1)
  {
LABEL_7:
    v13 = 0;
    a2[3] = v6;
  }

  else
  {
    v8 = TrackCount;
    v9 = 0;
    while (1)
    {
      TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a2[1], v9);
      TrackReaderForMovieTrack = CreateTrackReaderForMovieTrack(a1, a2[1], TrackForTrackIndex, &value);
      v12 = value;
      if (TrackReaderForMovieTrack)
      {
        break;
      }

      CFDictionarySetValue(v6, TrackForTrackIndex, value);
      CFRelease(v12);
      value = 0;
      if (v8 == ++v9)
      {
        goto LABEL_7;
      }
    }

    v13 = TrackReaderForMovieTrack;
    if (value)
    {
      CFRelease(value);
    }

    CFRelease(v6);
  }

LABEL_8:
  MovieInformationUnlockForRead(a2[1]);
  return v13;
}

uint64_t MovieFormatReaderGetMovieInformation(uint64_t a1)
{
  if (a1)
  {
    if (CMBaseObjectGetVTable() == &kMovieFormatReaderVTable)
    {
      return *(CMBaseObjectGetDerivedStorage() + 8);
    }

    MovieFormatReaderGetMovieInformation_cold_1();
  }

  else
  {
    MovieFormatReaderGetMovieInformation_cold_2();
  }

  return 0;
}

uint64_t MovieFormatReaderCreateWithMovieInformation(void *a1, char a2, CFTypeRef *a3)
{
  cf = 0;
  if (!a1)
  {
    MovieFormatReaderCreateWithMovieInformation_cold_3(&v21);
LABEL_27:
    v13 = v21;
    goto LABEL_9;
  }

  v6 = CFGetAllocator(a1);
  FigFormatReaderGetClassID();
  DeepCopy = CMDerivedObjectCreate();
  if (DeepCopy)
  {
LABEL_8:
    v13 = DeepCopy;
    goto LABEL_9;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = FigSimpleMutexCreate();
  *(DerivedStorage + 80) = v9;
  if (!v9)
  {
    MovieFormatReaderCreateWithMovieInformation_cold_2(&v21);
    goto LABEL_27;
  }

  v10 = FigSimpleMutexCreate();
  *(DerivedStorage + 72) = v10;
  if (!v10)
  {
    MovieFormatReaderCreateWithMovieInformation_cold_1(&v21);
    goto LABEL_27;
  }

  IsMutable = MovieInformationIsMutable(a1);
  v12 = !IsMutable;
  if (!IsMutable)
  {
LABEL_14:
    *(DerivedStorage + 8) = CFRetain(a1);
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    DeepCopy = MovieInformationLockForWrite(a1);
    if (DeepCopy)
    {
      goto LABEL_8;
    }

    v13 = MovieInformationEnsureMutationsWillNotify(a1);
    MovieInformationUnlockForWrite(a1);
    if (!v13)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (cf)
    {
      CFRelease(cf);
    }

    return v13;
  }

  DeepCopy = MovieInformationCreateDeepCopy(*MEMORY[0x1E695E480], a1, 0, (DerivedStorage + 8));
  if (DeepCopy)
  {
    goto LABEL_8;
  }

  v12 = 1;
LABEL_15:
  DeepCopy = CreateTrackReaderDictionary(v6, DerivedStorage);
  if (DeepCopy)
  {
    goto LABEL_8;
  }

  MovieInformationLockForRead(*(DerivedStorage + 8));
  if (!v12)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterAddListener();
    *(DerivedStorage + 120) = 1;
    TrackCount = MovieInformationGetTrackCount(*(DerivedStorage + 8));
    if (TrackCount >= 1)
    {
      v15 = TrackCount;
      for (i = 0; i != v15; ++i)
      {
        v21 = 0;
        TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(*(DerivedStorage + 8), i);
        CopyTrackReader(DerivedStorage, TrackForTrackIndex, &v21);
        v18 = v21;
        if (v21)
        {
          v19 = CMBaseObjectGetDerivedStorage();
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterAddListener();
          *(v19 + 64) = 1;
          CFRelease(v18);
        }
      }
    }
  }

  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  v13 = 0;
  *a3 = cf;
  return v13;
}

void MovieMutationNotificationCallback(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  v21 = 0;
  if (!CFEqual(cf1, @"MovieChanges"))
  {
    if (CFEqual(cf1, @"TrackAdded"))
    {
      if (!a5 || !CFDictionaryGetValueIfPresent(a5, @"TrackInfo", &v21))
      {
        return;
      }

      v12 = v21;
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      value = 0;
      if (CreateTrackReaderForMovieTrack(*MEMORY[0x1E695E480], *(DerivedStorage + 8), v12, &value))
      {
        v14 = value;
        if (!value)
        {
          goto LABEL_35;
        }
      }

      else
      {
        FigSimpleMutexLock();
        v14 = value;
        CFDictionarySetValue(*(DerivedStorage + 24), v12, value);
        FigSimpleMutexUnlock();
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        *(CMBaseObjectGetDerivedStorage() + 64) = 1;
        if (!v14)
        {
LABEL_35:
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          return;
        }
      }

      v15 = v14;
    }

    else
    {
      v16 = CFEqual(cf1, @"TrackRemoved");
      if (!a5 || !v16 || !CFDictionaryGetValueIfPresent(a5, @"TrackInfo", &v21))
      {
        return;
      }

      v17 = v21;
      v18 = CMBaseObjectGetDerivedStorage();
      value = 0;
      CopyTrackReader(v18, v17, &value);
      v19 = value;
      if (!value)
      {
        FigSimpleMutexLock();
        CFDictionaryRemoveValue(*(v18 + 24), v17);
        FigSimpleMutexUnlock();
        goto LABEL_35;
      }

      *(CMBaseObjectGetDerivedStorage() + 64) = 0;
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterBarrier();
      FigSimpleMutexLock();
      CFDictionaryRemoveValue(*(v18 + 24), v17);
      FigSimpleMutexUnlock();
      v15 = v19;
    }

    CFRelease(v15);
    goto LABEL_35;
  }

  if (!a5)
  {
    return;
  }

  v8 = CFGetTypeID(a5);
  if (v8 != CFDictionaryGetTypeID())
  {
    return;
  }

  value = 0;
  if (!CFDictionaryGetValueIfPresent(a5, @"ChangeBits", &value))
  {
    return;
  }

  valuePtr = 0;
  CFNumberGetValue(value, kCFNumberSInt64Type, &valuePtr);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = valuePtr;
  if (valuePtr)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    v10 = valuePtr;
  }

  v11 = MEMORY[0x1E695E4D0];
  if ((v10 & 0x100) != 0)
  {
    CFDictionarySetValue(Mutable, @"TrackReferenceDictionary", *MEMORY[0x1E695E4D0]);
    v10 = valuePtr;
    if ((valuePtr & 0x80) == 0)
    {
LABEL_9:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_39;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_9;
  }

  v20 = *v11;
  CFDictionarySetValue(Mutable, @"AlternateGroupArray", *v11);
  CFDictionarySetValue(Mutable, @"AlternateGroupAssignmentsArray", v20);
  v10 = valuePtr;
  if ((valuePtr & 0x200) == 0)
  {
LABEL_10:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  CFDictionarySetValue(Mutable, @"PreferredRate", *v11);
  v10 = valuePtr;
  if ((valuePtr & 0x400) == 0)
  {
LABEL_11:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  CFDictionarySetValue(Mutable, @"PreferredVolume", *v11);
  v10 = valuePtr;
  if ((valuePtr & 0x1000) == 0)
  {
LABEL_12:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  CFDictionarySetValue(Mutable, @"FormatDescriptionsChanged", *v11);
  v10 = valuePtr;
  if ((valuePtr & 0x2000) == 0)
  {
LABEL_13:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  CFDictionarySetValue(Mutable, @"EnabledTracksChanged", *v11);
  LOBYTE(v10) = valuePtr;
  if ((valuePtr & 0x4000) == 0)
  {
LABEL_14:
    if ((v10 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  CFDictionarySetValue(Mutable, @"ContainsChapters", *v11);
  LOBYTE(v10) = valuePtr;
  if ((valuePtr & 8) == 0)
  {
LABEL_15:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  ReactToMovieMetadataChange(a2, 8, Mutable);
  LOBYTE(v10) = valuePtr;
  if ((valuePtr & 0x10) == 0)
  {
LABEL_16:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_46:
    ReactToMovieMetadataChange(a2, 32, Mutable);
    if ((valuePtr & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_45:
  ReactToMovieMetadataChange(a2, 16, Mutable);
  LOBYTE(v10) = valuePtr;
  if ((valuePtr & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_17:
  if ((v10 & 0x40) != 0)
  {
LABEL_18:
    ReactToMovieMetadataChange(a2, 64, Mutable);
  }

LABEL_19:
  if (CFDictionaryGetCount(Mutable))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

double CopyTrackReader(uint64_t a1, const void *a2, void *a3)
{
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {
    v8 = Value;
    CFRetain(Value);
    FigSimpleMutexUnlock();
    *a3 = v8;
  }

  else
  {
    FigSimpleMutexUnlock();
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954453, "<<< FFR_Movie >>>", 3176, v3);
  }

  return result;
}

void TrackMutationNotificationCallback(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const void *a5)
{
  if (CFEqual(cf1, @"TrackChanges"))
  {
    if (!a5)
    {
      return;
    }

    v8 = CFGetTypeID(a5);
    if (v8 != CFDictionaryGetTypeID())
    {
      return;
    }

    value = 0;
    if (!CFDictionaryGetValueIfPresent(a5, @"ChangeBits", &value))
    {
      return;
    }

    v17 = 0;
    CFNumberGetValue(value, kCFNumberSInt64Type, &v17);
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = v17;
    v11 = MEMORY[0x1E695E4D0];
    if (v17)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      v12 = *v11;
      CFDictionarySetValue(Mutable, @"UneditedSampleCount", *v11);
      CFDictionarySetValue(Mutable, @"UneditedTrackDuration", v12);
      CFDictionarySetValue(Mutable, @"NominalFrameRate", v12);
      CFDictionarySetValue(Mutable, @"MinSampleDuration", v12);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      FigSimpleMutexLock();
      v14 = *(DerivedStorage + 56);
      if (v14)
      {
        CFRelease(v14);
        *(DerivedStorage + 56) = 0;
      }

      FigSimpleMutexUnlock();
      v10 = v17;
      if ((v17 & 4) == 0)
      {
LABEL_7:
        if ((v10 & 0x40) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_47;
      }
    }

    else if ((v17 & 4) == 0)
    {
      goto LABEL_7;
    }

    CFDictionarySetValue(Mutable, @"TrackFormatDescriptionArray", *v11);
    v10 = v17;
    if ((v17 & 0x40) == 0)
    {
LABEL_8:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_48;
    }

LABEL_47:
    CFDictionarySetValue(Mutable, @"TrackEnabled", *v11);
    v10 = v17;
    if ((v17 & 0x80) == 0)
    {
LABEL_9:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_49;
    }

LABEL_48:
    CFDictionarySetValue(Mutable, @"TrackLanguageCode", *v11);
    v10 = v17;
    if ((v17 & 0x100) == 0)
    {
LABEL_10:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_50;
    }

LABEL_49:
    CFDictionarySetValue(Mutable, @"ExtendedLanguageTagString", *v11);
    v10 = v17;
    if ((v17 & 0x200) == 0)
    {
LABEL_11:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_51;
    }

LABEL_50:
    CFDictionarySetValue(Mutable, @"CleanApertureDimensions", *v11);
    v10 = v17;
    if ((v17 & 0x400) == 0)
    {
LABEL_12:
      if ((v10 & 0x800) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_52;
    }

LABEL_51:
    CFDictionarySetValue(Mutable, @"TrackDimensions", *v11);
    v10 = v17;
    if ((v17 & 0x800) == 0)
    {
LABEL_13:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_53;
    }

LABEL_52:
    CFDictionarySetValue(Mutable, @"TrackExcludeFromAutoSelection", *v11);
    v10 = v17;
    if ((v17 & 0x1000) == 0)
    {
LABEL_14:
      if ((v10 & 0x400000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

LABEL_53:
    CFDictionarySetValue(Mutable, @"AlternateGroupID", *v11);
    v10 = v17;
    if ((v17 & 0x400000) == 0)
    {
LABEL_15:
      if ((v10 & 0x800000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_55;
    }

LABEL_54:
    CFDictionarySetValue(Mutable, @"ProvisionalAlternateGroupID", *v11);
    v10 = v17;
    if ((v17 & 0x800000) == 0)
    {
LABEL_16:
      if ((v10 & 0x2000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_56;
    }

LABEL_55:
    CFDictionarySetValue(Mutable, @"DefaultAlternateGroupID", *v11);
    v10 = v17;
    if ((v17 & 0x2000) == 0)
    {
LABEL_17:
      if ((v10 & 0x4000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }

LABEL_56:
    v15 = *v11;
    CFDictionarySetValue(Mutable, @"EstimatedDataRate", *v11);
    CFDictionarySetValue(Mutable, @"UneditedNumDataBytes", v15);
    v10 = v17;
    if ((v17 & 0x4000) == 0)
    {
LABEL_18:
      if ((v10 & 0x8000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_58;
    }

LABEL_57:
    CFDictionarySetValue(Mutable, @"ProductionApertureDimensions", *v11);
    v10 = v17;
    if ((v17 & 0x8000) == 0)
    {
LABEL_19:
      if ((v10 & 0x10000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_59;
    }

LABEL_58:
    CFDictionarySetValue(Mutable, @"EncodedPixelsDimensions", *v11);
    v10 = v17;
    if ((v17 & 0x10000) == 0)
    {
LABEL_20:
      if ((v10 & 0x20000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_60;
    }

LABEL_59:
    CFDictionarySetValue(Mutable, @"Volume", *v11);
    v10 = v17;
    if ((v17 & 0x20000) == 0)
    {
LABEL_21:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_61;
    }

LABEL_60:
    CFDictionarySetValue(Mutable, @"TrackLayer", *v11);
    v10 = v17;
    if ((v17 & 0x40000) == 0)
    {
LABEL_22:
      if ((v10 & 0x80000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_62;
    }

LABEL_61:
    CFDictionarySetValue(Mutable, @"TrackQTLoadSettings", *v11);
    v10 = v17;
    if ((v17 & 0x80000) == 0)
    {
LABEL_23:
      if ((v10 & 0x100000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_63;
    }

LABEL_62:
    CFDictionarySetValue(Mutable, @"TrackMatrix", *v11);
    v10 = v17;
    if ((v17 & 0x100000) == 0)
    {
LABEL_24:
      if ((v10 & 2) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_64;
    }

LABEL_63:
    CFDictionarySetValue(Mutable, @"TrackReferencesChanged", *v11);
    v10 = v17;
    if ((v17 & 2) == 0)
    {
LABEL_25:
      if ((v10 & 0x200000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_65;
    }

LABEL_64:
    CFDictionarySetValue(Mutable, @"EditCursorService", *v11);
    v10 = v17;
    if ((v17 & 0x200000) == 0)
    {
LABEL_26:
      if ((v10 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_66;
    }

LABEL_65:
    CFDictionarySetValue(Mutable, @"ContainsChapters", *v11);
    v10 = v17;
    if ((v17 & 8) == 0)
    {
LABEL_27:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_67;
    }

LABEL_66:
    ReactToTrackMetadataChange(a2, 8, Mutable);
    v10 = v17;
    if ((v17 & 0x10) == 0)
    {
LABEL_28:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_68;
    }

LABEL_67:
    ReactToTrackMetadataChange(a2, 16, Mutable);
    v10 = v17;
    if ((v17 & 0x20) == 0)
    {
LABEL_29:
      if ((v10 & 0x1000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_69;
    }

LABEL_68:
    ReactToTrackMetadataChange(a2, 32, Mutable);
    v10 = v17;
    if ((v17 & 0x1000000) == 0)
    {
LABEL_30:
      if ((v10 & 0x2000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }

LABEL_69:
    CFDictionarySetValue(Mutable, @"SampleGroupDescriptions", *v11);
    v10 = v17;
    if ((v17 & 0x2000000) == 0)
    {
LABEL_31:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_71;
    }

LABEL_70:
    CFDictionarySetValue(Mutable, @"HasRollInformation", *v11);
    v10 = v17;
    if ((v17 & 0x4000000) == 0)
    {
LABEL_32:
      if ((v10 & 0x8000000) == 0)
      {
LABEL_34:
        if (CFDictionaryGetCount(Mutable))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        return;
      }

LABEL_33:
      CFDictionarySetValue(Mutable, @"HasAudioSampleDependencyInformation", *v11);
      goto LABEL_34;
    }

LABEL_71:
    v16 = *v11;
    CFDictionarySetValue(Mutable, @"HEVCSyncSampleNALUnitTypes", *v11);
    CFDictionarySetValue(Mutable, @"HEVCTemporalLevelInfoCombinations", v16);
    if ((v17 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (CFEqual(cf1, @"TrackEditSegmentsChanged"))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
  }
}

uint64_t MovieFormatReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }

  if (*(DerivedStorage + 80))
  {
    FigSimpleMutexDestroy();
  }

  v4 = *(DerivedStorage + 64);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 64) = 0;
  }

  v5 = *(DerivedStorage + 88);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 88) = 0;
  }

  v6 = *(DerivedStorage + 104);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 104) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 112);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 112) = 0;
  }

  return FigSimpleMutexDestroy();
}

__CFString *MovieFormatReaderCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    if (*DerivedStorage)
    {
      v6 = CFCopyDescription(*DerivedStorage);
      v5 = *(DerivedStorage + 8);
    }

    else
    {
      v6 = 0;
    }

    TrackCount = MovieInformationGetTrackCount(v5);
    IsMutable = MovieInformationIsMutable(*(DerivedStorage + 8));
    v9 = " Mutable";
    if (!IsMutable)
    {
      v9 = "";
    }

    CFStringAppendFormat(Mutable, 0, @"\tMovieFormatReader: %p stream<%@> trackCount<%d>%s", a1, v6, TrackCount, v9);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tMovieFormatReader: %p APPEARS INVALIDATED", a1);
  }

  return Mutable;
}

uint64_t MovieFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  if (!a4)
  {
    MovieFormatReaderCopyProperty_cold_6(keys);
    goto LABEL_31;
  }

  *a4 = 0;
  if (CFEqual(a2, @"Duration"))
  {
    keys[1] = 0;
    *&v43 = 0;
    keys[0] = 0;
    MovieInformationGetMovieDuration(*(DerivedStorage + 8), keys);
    context = **&MEMORY[0x1E6960CC0];
    FigSimpleMutexLock();
    CFDictionaryApplyFunction(*(DerivedStorage + 24), FindMaximumEditedTrackDuration, &context);
    FigSimpleMutexUnlock();
    time1 = context;
    *&v40.value = *keys;
    v40.epoch = v43;
    if (CMTimeCompare(&time1, &v40) < 0)
    {
      *keys = *&context.value;
      *&v43 = context.epoch;
    }

    *&time1.value = *keys;
    time1.epoch = v43;
    v8 = CMTimeCopyAsDictionary(&time1, a3);
    *a4 = v8;
    if (!v8)
    {
      MovieFormatReaderCopyProperty_cold_1(&time1);
      value_low = LODWORD(time1.value);
      goto LABEL_10;
    }

LABEL_9:
    value_low = 0;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"NominalDuration"))
  {
    keys[1] = 0;
    *&v43 = 0;
    keys[0] = 0;
    MovieInformationGetMovieDuration(*(DerivedStorage + 8), keys);
    *&context.value = *keys;
    context.epoch = v43;
    v10 = CMTimeCopyAsDictionary(&context, a3);
    *a4 = v10;
    if (v10)
    {
      goto LABEL_9;
    }

    MovieFormatReaderCopyProperty_cold_2(&context);
LABEL_38:
    value_low = LODWORD(context.value);
    goto LABEL_10;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v12 = kFigFormatReaderIdentifier_QuickTime_ISO;
LABEL_16:
    v13 = *v12;
LABEL_17:
    AlternateGroupArray = CFRetain(v13);
LABEL_18:
    value_low = 0;
LABEL_19:
    *a4 = AlternateGroupArray;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
LABEL_15:
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_16;
  }

  if (CFEqual(a2, @"ImportantResourceLocation"))
  {
    time1.value = 0;
    v40.value = 0;
    keys[0] = @"LocationOffset";
    keys[1] = @"LocationSize";
    MovieInformationGetMoovLocation(*(DerivedStorage + 8), &time1, &v40);
    v15 = *MEMORY[0x1E695E480];
    context.value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &time1);
    *&context.timescale = CFNumberCreate(v15, kCFNumberSInt64Type, &v40);
    *a4 = CFDictionaryCreate(a3, keys, &context, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (context.value)
    {
      CFRelease(context.value);
    }

    v16 = *&context.timescale;
    if (!*&context.timescale)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  if (CFEqual(a2, @"AlternateGroupArray"))
  {
    v17 = *(DerivedStorage + 8);
    v18 = a3;
    v19 = 1;
LABEL_29:
    AlternateGroupArray = MovieInformationCreateAlternateGroupArray(v18, v17, v19);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"AlternateGroupAssignmentsArray"))
  {
    v17 = *(DerivedStorage + 8);
    v18 = a3;
    v19 = 0;
    goto LABEL_29;
  }

  if (CFEqual(a2, @"TrackReferenceDictionary"))
  {
    TrackReferenceDictionary = MovieInformationCreateTrackReferenceDictionary(a3, *(DerivedStorage + 8), a4);
LABEL_36:
    value_low = TrackReferenceDictionary;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"Lyrics"))
  {
    TrackReferenceDictionary = GetLyricsFromMovieMetadata(a3, DerivedStorage, a4);
    goto LABEL_36;
  }

  if (CFEqual(a2, @"LyricsScanCompleted"))
  {
    value_low = 0;
    *a4 = *MEMORY[0x1E695E4D0];
    goto LABEL_10;
  }

  if (CFEqual(a2, @"PreferredRate"))
  {
    LODWORD(keys[0]) = 1065353216;
    v21 = *(DerivedStorage + 8);
    v22 = keys;
    v23 = 0;
LABEL_45:
    MovieInformationGetBasicMetrics(v21, v22, v23, 0, 0);
    v24 = *MEMORY[0x1E695E480];
    v25 = kCFNumberFloat32Type;
LABEL_46:
    AlternateGroupArray = CFNumberCreate(v24, v25, keys);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"PreferredVolume"))
  {
    LODWORD(keys[0]) = 1065353216;
    v21 = *(DerivedStorage + 8);
    v23 = keys;
    v22 = 0;
    goto LABEL_45;
  }

  if (CFEqual(a2, @"Timescale"))
  {
    LODWORD(keys[0]) = 0;
    MovieInformationGetBasicMetrics(*(DerivedStorage + 8), 0, 0, keys, 0);
LABEL_49:
    v24 = *MEMORY[0x1E695E480];
    v25 = kCFNumberSInt32Type;
    goto LABEL_46;
  }

  if (CFEqual(a2, @"MovieMatrix"))
  {
    v44 = 0;
    *keys = 0u;
    v43 = 0u;
    MovieInformationGetBasicMetrics(*(DerivedStorage + 8), 0, 0, 0, keys);
    AlternateGroupArray = FigMatrixToCFArray(a3, keys);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"iTunesGaplessInfo"))
  {
    AlternateGroupArray = CreateiTunesGaplessInfoDictionaryEnhanced(DerivedStorage);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"iTunesSoundCheckVolumeNormalization"))
  {
    keys[0] = CopySoundCheckInfoDictionary_0(DerivedStorage);
    if (keys[0])
    {
      LODWORD(context.value) = 0;
      LODWORD(time1.value) = 4;
      if (AudioFormatGetProperty(0x73636462u, 8u, keys, &time1, &context))
      {
        CFRelease(keys[0]);
        goto LABEL_58;
      }

      v26 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &context);
      CFRelease(keys[0]);
      if (!v26)
      {
        goto LABEL_58;
      }

LABEL_62:
      value_low = 0;
      *a4 = v26;
      goto LABEL_10;
    }

LABEL_58:
    value_low = 4294954512;
    goto LABEL_10;
  }

  if (CFEqual(a2, @"SoundCheckInfo"))
  {
    AlternateGroupArray = CopySoundCheckInfoDictionary_0(DerivedStorage);
    goto LABEL_18;
  }

  if (!CFEqual(a2, @"iTunesStoreItemKind"))
  {
    if (CFEqual(a2, @"QuickTimeUserDataReader"))
    {
      AssureQuickTimeUserDataReaderCreated(DerivedStorage);
      v13 = *(DerivedStorage + 88);
      if (v13)
      {
        goto LABEL_17;
      }

LABEL_80:
      value_low = 4294954513;
      goto LABEL_10;
    }

    if (CFEqual(a2, @"QuickTimeMetadataReader"))
    {
      AssureQuickTimeMetadataReaderCreated(DerivedStorage);
      v13 = *(DerivedStorage + 96);
      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_80;
    }

    if (CFEqual(a2, @"ISOUserDataReader"))
    {
      AssureISOUserDataReaderCreated(DerivedStorage);
      v13 = *(DerivedStorage + 104);
      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_80;
    }

    if (CFEqual(a2, @"iTunesMetadataReader"))
    {
      AssureiTunesMetadataReaderCreated(DerivedStorage);
      v13 = *(DerivedStorage + 112);
      if (v13)
      {
        goto LABEL_17;
      }

      goto LABEL_80;
    }

    if (CFEqual(a2, @"MetadataReaders"))
    {
      AssureQuickTimeUserDataReaderCreated(DerivedStorage);
      AssureQuickTimeMetadataReaderCreated(DerivedStorage);
      AssureISOUserDataReaderCreated(DerivedStorage);
      AssureiTunesMetadataReaderCreated(DerivedStorage);
      if (!*(DerivedStorage + 88) && !*(DerivedStorage + 104) && !*(DerivedStorage + 96) && !*(DerivedStorage + 112))
      {
        goto LABEL_9;
      }

      Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v26 = Mutable;
        v30 = *(DerivedStorage + 96);
        if (v30)
        {
          CFArrayAppendValue(Mutable, v30);
        }

        v31 = *(DerivedStorage + 112);
        if (v31)
        {
          CFArrayAppendValue(v26, v31);
        }

        v32 = *(DerivedStorage + 88);
        if (v32)
        {
          CFArrayAppendValue(v26, v32);
        }

        v33 = *(DerivedStorage + 104);
        if (v33)
        {
          CFArrayAppendValue(v26, v33);
        }

        goto LABEL_62;
      }

      MovieFormatReaderCopyProperty_cold_3(keys);
      goto LABEL_31;
    }

    if (CFEqual(a2, @"MetadataReaderTypes"))
    {
      v34 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
      if (v34)
      {
        v26 = v34;
        if (MovieInformationMetadataFormatIsAvailable(*(DerivedStorage + 8), @"com.apple.itunes"))
        {
          CFArrayAppendValue(v26, @"iTunesMetadataReader");
        }

        if (MovieInformationMetadataFormatIsAvailable(*(DerivedStorage + 8), @"com.apple.quicktime.mdta"))
        {
          CFArrayAppendValue(v26, @"QuickTimeMetadataReader");
        }

        if (MovieInformationMetadataFormatIsAvailable(*(DerivedStorage + 8), @"com.apple.quicktime.udta"))
        {
          CFArrayAppendValue(v26, @"QuickTimeUserDataReader");
        }

        if (MovieInformationMetadataFormatIsAvailable(*(DerivedStorage + 8), @"org.mp4ra"))
        {
          CFArrayAppendValue(v26, @"ISOUserDataReader");
        }

        if (CFArrayGetCount(v26) < 1)
        {
          v16 = v26;
LABEL_24:
          CFRelease(v16);
          goto LABEL_9;
        }

        goto LABEL_62;
      }

      MovieFormatReaderCopyProperty_cold_4(keys);
LABEL_31:
      value_low = LODWORD(keys[0]);
      goto LABEL_10;
    }

    if (CFEqual(a2, @"CreationDate"))
    {
      CopyCreationDate(a3, DerivedStorage, a4);
      goto LABEL_36;
    }

    if (CFEqual(a2, @"HasCompressedMovieAtom"))
    {
      HasCompressedMovieAtom = MovieInformationHasCompressedMovieAtom(*(DerivedStorage + 8));
      goto LABEL_110;
    }

    if (CFEqual(a2, @"CouldContainFragments"))
    {
      if (!MovieInformationCouldContainFragments(*(DerivedStorage + 8)))
      {
        goto LABEL_120;
      }
    }

    else
    {
      if (!CFEqual(a2, @"ContainsFragments"))
      {
        if (CFEqual(a2, @"MovieExtendsDuration"))
        {
          keys[1] = 0;
          *&v43 = 0;
          keys[0] = 0;
          MovieInformationGetMovieExtendsDuration(*(DerivedStorage + 8), keys);
          *&context.value = *keys;
          context.epoch = v43;
          v38 = CMTimeCopyAsDictionary(&context, a3);
          *a4 = v38;
          if (v38)
          {
            goto LABEL_9;
          }

          MovieFormatReaderCopyProperty_cold_5(&context);
          goto LABEL_38;
        }

        if (CFEqual(a2, @"CanMutate"))
        {
          HasCompressedMovieAtom = MovieInformationIsMutable(*(DerivedStorage + 8));
        }

        else if (CFEqual(a2, @"IsSelfContained"))
        {
          HasCompressedMovieAtom = MovieInformationAllTracksAreSelfContained(*(DerivedStorage + 8));
        }

        else
        {
          if (!CFEqual(a2, @"ContainsChapters"))
          {
            if (CFEqual(a2, @"PictureCollection"))
            {
              TrackReferenceDictionary = CopyPictureCollection(a3, DerivedStorage, a4);
              goto LABEL_36;
            }

            if (CFEqual(a2, @"FirstFragmentSequenceNumber"))
            {
              LODWORD(keys[0]) = 0;
              if (MovieInformationGetFirstFragmentSequenceNumber(*(DerivedStorage + 8), keys))
              {
                goto LABEL_49;
              }
            }

            else
            {
              if (!CFEqual(a2, @"FragmentCount"))
              {
                if (!CFEqual(a2, @"IsAssetAnalysisActive"))
                {
                  if (CFEqual(a2, @"AssetAnalysisMessages"))
                  {
                    if (MovieInformationGetAssetAnalysisReporter(*(DerivedStorage + 8)))
                    {
                      FigAssetAnalysisReporterCopyMessages();
                    }

                    goto LABEL_9;
                  }

                  goto LABEL_58;
                }

                AssetAnalysisReporter = MovieInformationGetAssetAnalysisReporter(*(DerivedStorage + 8));
                v12 = MEMORY[0x1E695E4D0];
                v36 = MEMORY[0x1E695E4C0];
                v37 = AssetAnalysisReporter == 0;
LABEL_111:
                if (v37)
                {
                  v12 = v36;
                }

                goto LABEL_16;
              }

              LODWORD(keys[0]) = 0;
              if (MovieInformationGetParsedFragmentCount(*(DerivedStorage + 8), keys))
              {
                goto LABEL_49;
              }
            }

            AlternateGroupArray = 0;
            goto LABEL_18;
          }

          HasCompressedMovieAtom = MovieInformationContainsChapters(*(DerivedStorage + 8));
        }

LABEL_110:
        v12 = MEMORY[0x1E695E4D0];
        v36 = MEMORY[0x1E695E4C0];
        v37 = HasCompressedMovieAtom == 0;
        goto LABEL_111;
      }

      if (!MovieInformationContainsFragments(*(DerivedStorage + 8)))
      {
LABEL_120:
        v12 = MEMORY[0x1E695E4C0];
        goto LABEL_16;
      }
    }

    if (!*(*(DerivedStorage + 8) + 91))
    {
      goto LABEL_15;
    }

    goto LABEL_120;
  }

  keys[0] = 0;
  value_low = CopyiTunesStoreItemKindValue(a3, DerivedStorage, keys);
  AlternateGroupArray = keys[0];
  if (!value_low)
  {
    if (keys[0])
    {
      v27 = CFGetTypeID(keys[0]);
      TypeID = CFNumberGetTypeID();
      AlternateGroupArray = keys[0];
      if (v27 == TypeID)
      {
        goto LABEL_19;
      }
    }
  }

  if (AlternateGroupArray)
  {
    CFRelease(AlternateGroupArray);
  }

LABEL_10:
  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return value_low;
}

uint64_t GetLyricsFromMovieMetadata(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  AssureiTunesMetadataReaderCreated(a2);
  v6 = *(a2 + 112);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, @"itsk", @"@lyr", 0, a1, a3, 0);
}

CFMutableDictionaryRef CreateiTunesGaplessInfoDictionaryEnhanced(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 33))
    {
      return 0;
    }
  }

  else
  {
    AssureiTunesMetadataReaderCreated(a1);
    v2 = FigGaplessInfoFetchiTunesParametersFromMetadataReader(*(a1 + 112), a1 + 40);
    *(a1 + 33) = v2;
    *(a1 + 32) = 1;
    if (!v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 8);
  v17 = *MEMORY[0x1E6960C70];
  v18 = *(MEMORY[0x1E6960C70] + 16);
  NthTrackOfType = MovieInformationFindNthTrackOfType(v3, 0, 1936684398);
  if (!NthTrackOfType)
  {
    return 0;
  }

  v5 = NthTrackOfType;
  v6 = MovieTrackCopyFormatDescriptionArray(NthTrackOfType);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CFArrayGetCount(v6) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0)) != 0)
  {
    v9 = ValueAtIndex;
    MovieTrackGetMediaDuration(v5, &v17);
    v10 = *(a1 + 40);
    v11 = *(a1 + 44);
    v12 = *(a1 + 48);
    v15 = v17;
    v16 = v18;
    v13 = FigGaplessInfoCreateEnhanced_CorrectingWithUneditedDuration(v9, &v15, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v7);
  return v13;
}

CFTypeRef CopySoundCheckInfoDictionary_0(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigSimpleMutexLock();
  if (*(a1 + 56))
  {
    goto LABEL_2;
  }

  *(a1 + 56) = 1;
  AssureiTunesMetadataReaderCreated(a1);
  v3 = *(a1 + 112);
  if (!v3)
  {
    goto LABEL_2;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    goto LABEL_2;
  }

  alloc = *MEMORY[0x1E695E480];
  if (v4(v3, @"itlk", @"com.apple.iTunes.iTunNORM", 0) || cf == 0)
  {
    goto LABEL_2;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(cf))
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v8 = CFDataGetTypeID();
    if (v8 != CFGetTypeID(cf))
    {
LABEL_2:
      FigSimpleMutexUnlock();
      goto LABEL_3;
    }

    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    v7 = CFStringCreateWithBytes(alloc, BytePtr, Length, 0x8000100u, 0);
  }

  v11 = v7;
  if (!v7)
  {
    goto LABEL_2;
  }

  v12 = CFStringGetLength(v7);
  if (v12 <= 44)
  {
    CopySoundCheckInfoDictionary_cold_2();
  }

  else
  {
    v13 = v12;
    v14 = (v12 / 9) / 5;
    v29 = v12 / 9;
    if (5 * v14 == (v12 / 9))
    {
      v15 = malloc_type_malloc(v12 + 1, 0x4DAE81F8uLL);
      if (v15)
      {
        v16 = v15;
        if (CFStringGetCString(v11, v15, v13 + 1, 0))
        {
          v27 = v11;
          v17 = 0;
          keys[0] = xmmword_1E7490230;
          keys[1] = *off_1E7490240;
          v38 = @"sc peak amplitude msec";
          v36 = 0;
          if (v14 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v14;
          }

          v28 = v18;
          *values = 0u;
          v35 = 0u;
          v26 = v16;
          do
          {
            v31 = 0;
            if (v29 >= 5)
            {
              v19 = cStr;
              v20 = v28;
              do
              {
                sscanf(v16, "%X", &v31);
                v16 += 9;
                snprintf(v19, values - v19, "%u%s", v31, " ");
                v19 += strlen(v19);
                --v20;
              }

              while (v20);
            }

            values[v17++] = CFStringCreateWithCString(alloc, cStr, 0);
          }

          while (v17 != 5);
          v21 = 0;
          *(a1 + 64) = CFDictionaryCreate(alloc, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v16 = v26;
          do
          {
            v22 = values[v21];
            if (v22)
            {
              CFRelease(v22);
            }

            ++v21;
          }

          while (v21 != 5);
          v11 = v27;
        }

        free(v16);
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      }
    }

    else
    {
      CopySoundCheckInfoDictionary_cold_1();
    }
  }

  FigSimpleMutexUnlock();
  CFRelease(v11);
LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

  result = *(a1 + 64);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t CopyiTunesStoreItemKindValue(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  AssureiTunesMetadataReaderCreated(a2);
  v6 = *(a2 + 112);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    return 4294954514;
  }

  return v7(v6, @"itsk", @"stik", 0, a1, a3, 0);
}

uint64_t AssureQuickTimeUserDataReaderCreated(CFTypeRef *a1)
{
  FigSimpleMutexLock();
  if (!a1[11])
  {
    MovieInformationLockForRead(a1[1]);
    MovieInformationCreateQuickTimeUserDataReader(a1[1], a1 + 11);
    MovieInformationUnlockForRead(a1[1]);
  }

  return FigSimpleMutexUnlock();
}

uint64_t AssureQuickTimeMetadataReaderCreated(CFTypeRef *a1)
{
  FigSimpleMutexLock();
  if (!a1[12])
  {
    MovieInformationLockForRead(a1[1]);
    MovieInformationCreateQuickTimeMetadataReader(a1[1], a1 + 12);
    MovieInformationUnlockForRead(a1[1]);
  }

  return FigSimpleMutexUnlock();
}

uint64_t AssureISOUserDataReaderCreated(CFTypeRef *a1)
{
  FigSimpleMutexLock();
  if (!a1[13])
  {
    MovieInformationLockForRead(a1[1]);
    MovieInformationCreateISOUserDataReader(a1[1], a1 + 13);
    MovieInformationUnlockForRead(a1[1]);
  }

  return FigSimpleMutexUnlock();
}

uint64_t AssureiTunesMetadataReaderCreated(CFTypeRef *a1)
{
  FigSimpleMutexLock();
  if (!a1[14])
  {
    MovieInformationLockForRead(a1[1]);
    MovieInformationCreateiTunesMetadataReader(a1[1], a1 + 14);
    MovieInformationUnlockForRead(a1[1]);
  }

  return FigSimpleMutexUnlock();
}

double FindMaximumEditedTrackDuration(uint64_t a1, const void *a2, CMTime *a3)
{
  memset(&v7, 0, sizeof(v7));
  GetTrackEditedDuration(a2, &v7);
  time1 = v7;
  v5 = *a3;
  if (CMTimeCompare(&time1, &v5) >= 1)
  {
    result = *&v7.value;
    *a3 = v7;
  }

  return result;
}

void GetTrackEditedDuration(const void *a1@<X0>, CMTime *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  v28 = 0;
  *a2 = **&MEMORY[0x1E6960C70];
  if (*(v5 + 723))
  {
    if (*(v5 + 201))
    {
      v6 = MEMORY[0x1E6960C68];
      *&a2->value = *MEMORY[0x1E6960C68];
      a2->epoch = *(v6 + 16);
    }

    else
    {
      v18 = DerivedStorage;
      TrackDurationValue = MovieTrackGetTrackDurationValue(v5);
      v20 = *(*v18 + 240);

      CMTimeMake(a2, TrackDurationValue, v20);
    }
  }

  else
  {
    v26 = 0uLL;
    v27 = 0;
    MovieTrackGetMediaDuration(v5, &v26);
    v25 = 0;
    MovieTrackReaderCreateEditCursorService(a1, *MEMORY[0x1E695E480], &v25);
    memset(&v24, 0, sizeof(v24));
    GetGaplessSourceTimeRange(&v24);
    v7 = v25;
    *&range.start.value = v26;
    range.start.epoch = v27;
    v23 = v24;
    FigGaplessInfoCreateSegmentDataForTrack(v25, &range.start, &v23, &v28);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v28 && (v8 = CFGetTypeID(v28), v8 == CFDataGetTypeID()))
    {
      v9 = MEMORY[0x1E6960CC0];
      *&a2->value = *MEMORY[0x1E6960CC0];
      a2->epoch = *(v9 + 16);
      Length = CFDataGetLength(v28);
      if (Length >= 0x60)
      {
        v11 = Length;
        BytePtr = CFDataGetBytePtr(v28);
        v13 = *(BytePtr + 4);
        *&v23.start.value = *(BytePtr + 3);
        *&v23.start.epoch = v13;
        *&v23.duration.timescale = *(BytePtr + 5);
        if (v11 >= 0xC0)
        {
          v14 = &BytePtr[96 * (v11 / 0x60)];
          v15 = *(BytePtr + 4);
          *&range.start.value = *(BytePtr + 3);
          *&range.start.epoch = v15;
          *&range.duration.timescale = *(BytePtr + 5);
          v16 = *(v14 - 3);
          v17 = *(v14 - 1);
          *&v21.start.epoch = *(v14 - 2);
          *&v21.duration.timescale = v17;
          *&v21.start.value = v16;
          CMTimeRangeGetUnion(&v23, &range, &v21);
        }

        *a2 = v23.duration;
      }
    }

    else
    {
      MovieTrackGetMediaDuration(v5, a2);
    }

    if (v28)
    {
      CFRelease(v28);
    }
  }
}

uint64_t MovieTrackReaderCreateEditCursorService(const void *a1, uint64_t a2, CFTypeRef *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *DerivedStorage;
  v6 = *(DerivedStorage + 8);
  if (MovieTrackIsValid(v6))
  {
    FigEditCursorServiceGetClassID();
    v8 = CMDerivedObjectCreate();
    if (!v8)
    {
      v9 = CMBaseObjectGetDerivedStorage();
      if (v7)
      {
        v10 = CFRetain(v7);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      if (v6)
      {
        v11 = CFRetain(v6);
        v10 = *v9;
      }

      else
      {
        v11 = 0;
      }

      *(v9 + 8) = v11;
      if (v10[90])
      {
        if (a1)
        {
          v12 = CFRetain(a1);
        }

        else
        {
          v12 = 0;
        }

        *(v9 + 16) = v12;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(v9 + 24) = 1;
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(v9 + 25) = 1;
      }

      v8 = 0;
      *a3 = 0;
    }
  }

  else
  {
    MovieTrackReaderCreateEditCursorService_cold_1(&v14);
    return v14;
  }

  return v8;
}

void GetGaplessSourceTimeRange(_OWORD *a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  *a2 = *MEMORY[0x1E6960C98];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  v9 = 0;
  v7 = (DerivedStorage + 8);
  v6 = *(DerivedStorage + 8);
  if (*(v6 + 24) == 1936684398)
  {
    v8 = MovieTrackCopyFormatDescriptionArray(v6);
    if (v8)
    {
      GetGaplessSourceTimeRange_cold_1(v8, v7, &v9);
    }
  }
}

uint64_t MovieEditCursorServiceEditsChanged(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

uint64_t MovieEditCursorServiceTimeRangesMayNoLongerIncrease(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void MovieEditCursorServiceFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 24) = 0;
  }

  if (*(DerivedStorage + 25))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    *(DerivedStorage + 25) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *MovieEditCursorServiceCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v6 = DerivedStorage[1];
    if (v6)
    {
      v9 = 1061109567;
      v8 = 0;
      MovieInformationLockForRead(v5);
      MovieTrackGetBasicInfo(v6, &v9, &v8);
      MovieInformationUnlockForRead(*DerivedStorage);
      CFStringAppendFormat(Mutable, 0, @"<MovieEditCursorService: '%c%c%c%c' trackID %d>", HIBYTE(v9), BYTE2(v9), BYTE1(v9), v9, v8);
    }
  }

  return Mutable;
}

void MovieEditCursorFinalize(uint64_t a1)
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

__CFString *MovieEditCursorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v6 = *(DerivedStorage + 8);
    if (v6)
    {
      v8 = 0;
      MovieInformationLockForRead(v5);
      MovieTrackGetBasicInfo(v6, &v8, &v8 + 1);
      MovieInformationUnlockForRead(*DerivedStorage);
      CFStringAppendFormat(Mutable, 0, @"<MovieEditCursor: %c%c%c%c trackID %d, editIndex %d>", BYTE3(v8), BYTE2(v8), BYTE1(v8), v8, HIDWORD(v8), *(DerivedStorage + 16));
    }
  }

  return Mutable;
}

uint64_t MovieEditCursorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (!a4)
  {
    MovieEditCursorCopyProperty_cold_1(&v12);
    v10 = v12;
    goto LABEL_13;
  }

  *a4 = 0;
  if (CFEqual(a2, @"TimeRangesMayIncrease"))
  {
    v7 = *MEMORY[0x1E695E4C0];
    if (*(*DerivedStorage + 90) && MovieInformationCouldContainFragments(*DerivedStorage))
    {
      v7 = *MEMORY[0x1E695E4D0];
    }

    v8 = v7;
  }

  else
  {
    if (!CFEqual(a2, @"RepeatsEdits"))
    {
      v10 = 4294954512;
      goto LABEL_13;
    }

    if (*(DerivedStorage[1] + 723))
    {
      v9 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v9 = MEMORY[0x1E695E4C0];
    }

    v8 = *v9;
  }

  v10 = 0;
  *a4 = CFRetain(v8);
LABEL_13:
  MovieInformationUnlockForRead(*DerivedStorage);
  return v10;
}

uint64_t CopyCreationDateAsDictionary(const __CFAllocator *a1, const void *a2, const __CFDictionary *a3, __CFDictionary **a4)
{
  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      CFDictionaryAddValue(Mutable, @"CreationDate_Value", a2);
      if (a3 && CFDictionaryGetValue(a3, @"locale"))
      {
        v9 = MEMORY[0x19A8CD070]();
        if (v9)
        {
          CFDictionaryAddValue(v8, @"CreationDate_LocaleIdentifier", v9);
        }
      }

      result = 0;
      *a4 = v8;
    }

    else
    {
      CopyCreationDateAsDictionary_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    CopyCreationDateAsDictionary_cold_2(&v12);
    return v12;
  }

  return result;
}

uint64_t MovieFormatReaderGetTrackCount(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*(DerivedStorage + 8));
  *a2 = MovieInformationGetTrackCount(*(DerivedStorage + 8));
  MovieInformationUnlockForRead(*(DerivedStorage + 8));
  return 0;
}

uint64_t CreateTrackReaderForMovieTrack(uint64_t a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  FigTrackReaderGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = CFRetain(a2);
  }

  else
  {
    v9 = 0;
  }

  *DerivedStorage = v9;
  if (a3)
  {
    v10 = CFRetain(a3);
  }

  else
  {
    v10 = 0;
  }

  DerivedStorage[1] = v10;
  v11 = FigReentrantMutexCreate();
  DerivedStorage[2] = v11;
  if (!v11)
  {
    v15 = 5379;
LABEL_15:
    CreateTrackReaderForMovieTrack_cold_1(v15, &v16);
    return v16;
  }

  v12 = FigSimpleMutexCreate();
  DerivedStorage[6] = v12;
  if (!v12)
  {
    v15 = 5382;
    goto LABEL_15;
  }

  v13 = 0;
  *a4 = 0;
  return v13;
}

void MovieTrackReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 64))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterBarrier();
  }

  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 24) = 0;
  }

  v3 = *(DerivedStorage + 40);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 40) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 16))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  if (*(DerivedStorage + 48))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 48) = 0;
  }

  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 56) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v6 = *(DerivedStorage + 8);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 8) = 0;
  }
}

CFMutableStringRef MovieTrackReaderCopyDebugDescription(const void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (*DerivedStorage)
  {
    v5 = DerivedStorage[1];
    if (v5)
    {
      TrackType = MovieTrackGetTrackType(DerivedStorage[1]);
      v31 = 0;
      MovieInformationLockForRead(*DerivedStorage);
      MovieTrackGetMediaDuration(v5, &time);
      timescale = time.timescale;
      value = time.value;
      v32 = *&time.flags;
      epoch_high = HIDWORD(time.epoch);
      MovieTrackGetBasicInfo(v5, &v31, &v31 + 1);
      NumFormatDescriptions = MovieTrackGetNumFormatDescriptions(v5);
      v8 = *(*DerivedStorage + 48);
      v27 = Mutable;
      if (v8)
      {
        v26 = CFCopyDescription(v8);
      }

      else
      {
        v26 = 0;
      }

      v9 = HIDWORD(v31);
      v23 = BYTE3(v31);
      v22 = BYTE2(v31);
      v20 = v31;
      v21 = BYTE1(v31);
      if (MovieTrackIsValid(v5))
      {
        v10 = "";
      }

      else
      {
        v10 = " (Invalidated)";
      }

      v11 = *(v5 + 288);
      time.value = value;
      time.timescale = timescale;
      *&time.flags = v32;
      HIDWORD(time.epoch) = epoch_high;
      Seconds = CMTimeGetSeconds(&time);
      v13 = "s";
      if (NumFormatDescriptions == 1)
      {
        v13 = "";
      }

      v19 = v10;
      Mutable = v27;
      CFStringAppendFormat(v27, 0, @"\tMovieTrackReader: stream<%@> mediaType %c%c%c%c trackType %c%c%c%c trackID %d%s contains %d samples media duration %1.3f seconds (%lld/%d) has %d formatDescription%s", v26, v23, v22, v21, v20, HIBYTE(TrackType), BYTE2(TrackType), BYTE1(TrackType), TrackType, v9, v19, v11, *&Seconds, value, timescale, NumFormatDescriptions, v13);
      v14 = *(v5 + 728);
      if (v14 && *(v14 + 56))
      {
        v15 = *(v14 + 8);
        CMTimeMake(&time, *v14, *(v5 + 232));
        v16 = CMTimeGetSeconds(&time);
        CMTimeMake(&lhs, *(v5 + 224), *(v5 + 232));
        CMTimeMake(&rhs, **(v5 + 728), *(v5 + 232));
        CMTimeAdd(&time, &lhs, &rhs);
        v17 = CMTimeGetSeconds(&time);
        CFStringAppendFormat(v27, 0, @"\nFragments supply %d samples or %1.3f seconds (%1.3f total media duration)", v15, *&v16, *&v17);
      }

      if (v26)
      {
        CFRelease(v26);
      }

      MovieInformationUnlockForRead(*DerivedStorage);
    }
  }

  return Mutable;
}

void MovieTrackReaderCopyProperty(const void *a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && DerivedStorage[1])
  {
    v10 = CMBaseObjectGetDerivedStorage();
    v11 = *v10;
    v12 = v10[1];
    MovieInformationLockForRead(*v10);
    if (!a4)
    {
      MovieTrackReaderCopyProperty_cold_4(&valuePtr);
      goto LABEL_20;
    }

    if (!MovieTrackIsValid(v12))
    {
      MovieTrackReaderCopyProperty_cold_3(&valuePtr);
      goto LABEL_20;
    }

    *a4 = 0;
    if (CFEqual(a2, @"TrackFormatDescriptionArray"))
    {
      value = MovieTrackCopyFormatDescriptionArray(v12);
LABEL_19:
      *a4 = value;
LABEL_20:
      MovieInformationUnlockForRead(v11);
      return;
    }

    if (CFEqual(a2, @"TrackTimescale"))
    {
      MediaTimeScale = MovieTrackGetMediaTimeScale(v12);
LABEL_12:
      LODWORD(valuePtr.start.value) = MediaTimeScale;
      v16 = *MEMORY[0x1E695E480];
      v17 = kCFNumberSInt32Type;
LABEL_13:
      value = CFNumberCreate(v16, v17, &valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"TrackDuration"))
    {
      memset(&valuePtr, 0, 24);
      GetTrackEditedDuration(a1, &valuePtr.start);
LABEL_18:
      *&v48.start.value = *&valuePtr.start.value;
      v48.start.epoch = valuePtr.start.epoch;
      value = CMTimeCopyAsDictionary(&v48.start, a3);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"UneditedTrackDuration"))
    {
      memset(&valuePtr, 0, 24);
      MovieTrackGetMediaDuration(v12, &valuePtr);
      goto LABEL_18;
    }

    if (CFEqual(a2, @"UneditedNumDataBytes"))
    {
      valuePtr.start.value = 0;
      if (MovieTrackComputeTotalTrackBytes(v11, v12, &valuePtr.start.value))
      {
        goto LABEL_20;
      }

      v18 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
      v20 = kCFNumberSInt64Type;
      goto LABEL_24;
    }

    if (CFEqual(a2, @"UneditedSampleCount"))
    {
      MediaTimeScale = MovieTrackGetSampleCount(v12);
      goto LABEL_12;
    }

    if (CFEqual(a2, @"EstimatedDataRate"))
    {
      v50 = 0;
      if (MovieTrackComputeTotalTrackBytes(v11, v12, &v50))
      {
        goto LABEL_20;
      }

      memset(&valuePtr, 0, 24);
      MovieTrackGetMediaDuration(v12, &valuePtr);
      v21 = v50;
      *&v48.start.value = *&valuePtr.start.value;
      v48.start.epoch = valuePtr.start.epoch;
      v22 = v21 / CMTimeGetSeconds(&v48.start);
      v51 = v22;
      v18 = *MEMORY[0x1E695E480];
      p_valuePtr = &v51;
      goto LABEL_38;
    }

    if (CFEqual(a2, @"PeakDataRate"))
    {
      LODWORD(valuePtr.start.value) = 0;
      v23 = MovieTrackComputePeakDataRate();
LABEL_36:
      if (v23)
      {
        goto LABEL_20;
      }

      v18 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
LABEL_38:
      v20 = kCFNumberFloat32Type;
LABEL_24:
      value = CFNumberCreate(v18, v20, p_valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"NominalFrameRate"))
    {
      LODWORD(valuePtr.start.value) = 0;
      v23 = MovieTrackComputeNominalFrameRate();
      goto LABEL_36;
    }

    if (CFEqual(a2, @"Volume"))
    {
      LODWORD(valuePtr.start.value) = MovieTrackGetVolume(v12);
      v16 = *MEMORY[0x1E695E480];
      v17 = kCFNumberFloat32Type;
      goto LABEL_13;
    }

    if (CFEqual(a2, @"LoudnessInfo"))
    {
      CopyLoudnessDictionaryFromUserData(v10, a3, a4);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"TrackFrameReorderingRequired"))
    {
      v24 = *(v12 + 24);
      if (v24 > 1935893869)
      {
        if (v24 != 1986618469)
        {
          v25 = 1935893870;
LABEL_51:
          if (v24 != v25)
          {
            goto LABEL_20;
          }
        }
      }

      else if (v24 != 1635088502)
      {
        v25 = 1885954932;
        goto LABEL_51;
      }

      IsFrameReorderingRequired = MovieTrackIsFrameReorderingRequired(v11, v12);
LABEL_53:
      v27 = MEMORY[0x1E695E4D0];
      if (!IsFrameReorderingRequired)
      {
        v27 = MEMORY[0x1E695E4C0];
      }

LABEL_55:
      value = *v27;
LABEL_56:
      value = CFRetain(value);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"TrackLanguageCode"))
    {
      valuePtr.start.value = 0;
      MovieTrackGetLanguageInformation(v12, 0, &valuePtr, 0);
      value = valuePtr.start.value;
      if (!valuePtr.start.value)
      {
        goto LABEL_19;
      }

      goto LABEL_56;
    }

    if (CFEqual(a2, @"ExtendedLanguageTagString"))
    {
      valuePtr.start.value = 0;
      MovieTrackGetLanguageInformation(v12, 0, 0, &valuePtr);
      value = valuePtr.start.value;
      if (!valuePtr.start.value)
      {
        goto LABEL_20;
      }

      goto LABEL_56;
    }

    if (CFEqual(a2, @"TrackQTLoadSettings"))
    {
      *a4 = MovieInformationCreateQTLoadSettingsDictionary(a3, v11, v12);
      goto LABEL_20;
    }

    if (CFEqual(a2, @"TrackEnabled"))
    {
      IsEnabled = MovieTrackIsEnabled(v12);
      goto LABEL_65;
    }

    if (CFEqual(a2, @"TrackDimensions"))
    {
      LODWORD(valuePtr.start.value) = 0;
      LODWORD(v48.start.value) = 0;
      MovieTrackGetSpatialInformation(v12, &valuePtr, &v48, 0);
LABEL_70:
      v53.width = *&valuePtr.start.value;
      v53.height = *&v48.start.value;
      value = CGSizeCreateDictionaryRepresentation(v53);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"CleanApertureDimensions"))
    {
      LODWORD(valuePtr.start.value) = 0;
      LODWORD(v48.start.value) = 0;
      MovieTrackGetCleanApertureDimensions(v12, &valuePtr, &v48);
      if (!v29)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }

    if (CFEqual(a2, @"ProductionApertureDimensions"))
    {
      LODWORD(valuePtr.start.value) = 0;
      LODWORD(v48.start.value) = 0;
      MovieTrackGetProductionApertureDimensions(v12, &valuePtr, &v48);
      if (!v30)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }

    if (CFEqual(a2, @"EncodedPixelsDimensions"))
    {
      LODWORD(valuePtr.start.value) = 0;
      LODWORD(v48.start.value) = 0;
      MovieTrackGetEncodedPixelsDimensions(v12, &valuePtr, &v48);
      if (!v31)
      {
        goto LABEL_20;
      }

      goto LABEL_70;
    }

    if (CFEqual(a2, @"TrackMatrix"))
    {
      memset(&valuePtr, 0, 36);
      MovieTrackGetSpatialInformation(v12, 0, 0, &valuePtr);
      value = FigMatrixToCFArray(a3, &valuePtr);
      goto LABEL_19;
    }

    if (CFEqual(a2, @"TrackLayer"))
    {
      Layer = MovieTrackGetLayer(v12);
    }

    else if (CFEqual(a2, @"AlternateGroupID"))
    {
      Layer = MovieInformationGetTrackAlternateGroupID(v11, v12);
    }

    else
    {
      if (CFEqual(a2, @"ProvisionalAlternateGroupID"))
      {
        LOWORD(valuePtr.start.value) = 0;
        if (!MovieTrackGetProvisionalAlternateGroupID(v12, &valuePtr))
        {
          value = 0;
          goto LABEL_19;
        }

        goto LABEL_87;
      }

      if (!CFEqual(a2, @"DefaultAlternateGroupID"))
      {
        if (!CFEqual(a2, @"TrackExcludeFromAutoSelection"))
        {
          if (CFEqual(a2, @"TrackIsSelfContained"))
          {
            IsFrameReorderingRequired = MovieTrackIsSelfContained(v12);
          }

          else if (CFEqual(a2, @"ContainsUnsupportedDataReferences"))
          {
            IsFrameReorderingRequired = MovieTrackContainsUnsupportedDataReferences(v11, v12);
          }

          else
          {
            if (CFEqual(a2, @"AdvanceDecodeDelta"))
            {
              value = MovieTrackCreateAdvanceDecodeDeltaDictionary(a3, v11, v12);
              goto LABEL_19;
            }

            if (CFEqual(a2, @"ShowTimeCode"))
            {
              LOBYTE(valuePtr.start.value) = 0;
              MovieTrackGetTimecodeMustBeShown(v12, &valuePtr);
              if (v33)
              {
                goto LABEL_20;
              }

              v34 = MEMORY[0x1E695E4D0];
              if (LOBYTE(valuePtr.start.value) != 1)
              {
                v34 = MEMORY[0x1E695E4C0];
              }

              value = CFRetain(*v34);
              goto LABEL_19;
            }

            if (CFEqual(a2, @"TrackName"))
            {
              value = CreateTrackNameDictionary(a3, v10);
              goto LABEL_19;
            }

            if (CFEqual(a2, @"QuickTimeUserDataReader"))
            {
              value = AssureTrackQuickTimeUserDataReaderCreated(v10);
              if (!value)
              {
                goto LABEL_20;
              }

              goto LABEL_56;
            }

            if (CFEqual(a2, @"ISOUserDataReader"))
            {
              value = AssureTrackISOUserDataReaderCreated(v10);
              if (!value)
              {
                goto LABEL_20;
              }

              goto LABEL_56;
            }

            if (CFEqual(a2, @"QuickTimeMetadataReader"))
            {
              value = AssureTrackQuickTimeMetadataReaderCreated(v10);
              if (!value)
              {
                goto LABEL_20;
              }

              goto LABEL_56;
            }

            if (CFEqual(a2, @"MetadataReaders"))
            {
              v35 = AssureTrackQuickTimeUserDataReaderCreated(v10);
              v36 = AssureTrackQuickTimeMetadataReaderCreated(v10);
              v37 = AssureTrackISOUserDataReaderCreated(v10);
              v38 = v37;
              if (v35 || v37 || v36)
              {
                Mutable = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
                if (Mutable)
                {
                  v40 = Mutable;
                  if (v36)
                  {
                    CFArrayAppendValue(Mutable, v36);
                  }

                  if (v35)
                  {
                    CFArrayAppendValue(v40, v35);
                  }

                  if (v38)
                  {
                    CFArrayAppendValue(v40, v38);
                  }

                  *a4 = v40;
                }

                else
                {
                  MovieTrackReaderCopyProperty_cold_1(&valuePtr);
                }
              }

              goto LABEL_20;
            }

            if (CFEqual(a2, @"MetadataReaderTypes"))
            {
              v41 = CFArrayCreateMutable(a3, 0, MEMORY[0x1E695E9C0]);
              if (v41)
              {
                v42 = v41;
                if (MovieTrackMetadataFormatIsAvailable(v11, v12, @"com.apple.quicktime.udta"))
                {
                  CFArrayAppendValue(v42, @"QuickTimeUserDataReader");
                }

                if (MovieTrackMetadataFormatIsAvailable(v11, v12, @"org.mp4ra"))
                {
                  CFArrayAppendValue(v42, @"ISOUserDataReader");
                }

                if (MovieTrackMetadataFormatIsAvailable(v11, v12, @"com.apple.quicktime.mdta"))
                {
                  CFArrayAppendValue(v42, @"QuickTimeMetadataReader");
                }

                if (CFArrayGetCount(v42) < 1)
                {
                  CFRelease(v42);
                }

                else
                {
                  *a4 = v42;
                }
              }

              else
              {
                MovieTrackReaderCopyProperty_cold_2(&valuePtr);
              }

              goto LABEL_20;
            }

            if (CFEqual(a2, @"EditCursorService"))
            {
              MovieTrackReaderCreateEditCursorService(a1, a3, a4);
              goto LABEL_20;
            }

            if (CFEqual(a2, @"HasRollInformation"))
            {
              IsFrameReorderingRequired = MovieTrackHasRollInformation(v12);
            }

            else if (CFEqual(a2, @"HasAudioSampleDependencyInformation"))
            {
              IsFrameReorderingRequired = MovieTrackHasAudioDependencyInformation(v12);
            }

            else if (CFEqual(a2, @"EditsExcludePrimingAndRemainderDuration"))
            {
              IsFrameReorderingRequired = MovieTrackEditsExcludeAudioPrimingAndRemainderDuration(v12);
            }

            else
            {
              if (CFEqual(a2, @"GaplessSourceTimeRange"))
              {
                memset(&valuePtr, 0, sizeof(valuePtr));
                GetGaplessSourceTimeRange(&valuePtr);
                v48 = valuePtr;
                value = CMTimeRangeCopyAsDictionary(&v48, a3);
                goto LABEL_19;
              }

              if (CFEqual(a2, @"HasSeamSamples"))
              {
                IsFrameReorderingRequired = MovieTrackHasSeamSamples(v12);
              }

              else if (CFEqual(a2, @"ContainsChapters"))
              {
                IsFrameReorderingRequired = MovieTrackIsChapterTrack(v11, v12);
              }

              else
              {
                if (CFEqual(a2, @"MinSampleDuration"))
                {
                  CopyMinSampleDurationDictionary(v10, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"MaxEditRate"))
                {
                  CopyMaxEditRateNumber(v10, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"SampleDescriptionAtomLocation"))
                {
                  MovieTrackCreateSampleDescriptionAtomLocationDictionary(v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"ExternalDataReferenceSchemes"))
                {
                  MovieTrackCopyExternalDataReferenceSchemes(v11, v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"MediaCharacteristicArray"))
                {
                  FigMediaCharacteristicsCopyMediaCharacteristicsForTrackInformation(a3, v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"HEVCSyncSampleNALUnitTypes"))
                {
                  MovieTrackCopySyncSampleCombinations(a3, v12, a4, v43, v44, v45, v46, v47, v48.start.value, *&v48.start.timescale, v48.start.epoch, v48.duration.value, *&v48.duration.timescale, v48.duration.epoch, valuePtr.start.value, *&valuePtr.start.timescale, valuePtr.start.epoch, valuePtr.duration.value, *&valuePtr.duration.timescale, valuePtr.duration.epoch);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"HEVCTemporalLevelInfoCombinations"))
                {
                  MovieTrackCopyTemporalLevelCombinations(a3, v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"SampleGroupDescriptions"))
                {
                  MovieTrackCopySampleGroupDescriptionDictionary(a3, v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"LatentBaseDecodeTimeStampOfFirstTrackFragment"))
                {
                  MovieTrackCopyLatentBaseDecodeTimeStampOfFirstTrackFragmentDictionary(a3, v12, a4);
                  goto LABEL_20;
                }

                if (CFEqual(a2, @"UsesAudibleDRM"))
                {
                  IsFrameReorderingRequired = MovieTrackUsesAudibleDRM(v12);
                }

                else if (CFEqual(a2, @"AudibleContentIsAuthorized"))
                {
                  IsFrameReorderingRequired = MovieTrackAudibleContentIsAuthorized(v11, v12);
                }

                else
                {
                  if (!CFEqual(a2, @"HasEditListBox"))
                  {
                    goto LABEL_20;
                  }

                  IsFrameReorderingRequired = MovieTrackHasEditList(v12);
                }
              }
            }
          }

          goto LABEL_53;
        }

        IsEnabled = MovieTrackIsExcludedFromAutoSelection(v12);
LABEL_65:
        v27 = MEMORY[0x1E695E4D0];
        if (IsEnabled != 1)
        {
          v27 = MEMORY[0x1E695E4C0];
        }

        goto LABEL_55;
      }

      Layer = MovieTrackGetDefaultAlternateGroupID(v12);
    }

    LOWORD(valuePtr.start.value) = Layer;
LABEL_87:
    v16 = *MEMORY[0x1E695E480];
    v17 = kCFNumberSInt16Type;
    goto LABEL_13;
  }

  emitter = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_Movie >>>", 5229, v4);
}

__CFDictionary *CreateTrackNameDictionary(const __CFAllocator *a1, uint64_t *a2)
{
  v4 = AssureTrackQuickTimeUserDataReaderCreated(a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6 || (v7 = v6(v5, @"udta", @"tnam")) == 0)
  {
    value = 0;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v18)
    {
      goto LABEL_34;
    }

    v19 = v18(v5, @"udta", @"name", 0, *MEMORY[0x1E695E480], &value, 0);
    v20 = value;
    if (v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = value == 0;
    }

    if (v21)
    {
      Mutable = 0;
      if (!value)
      {
        return Mutable;
      }

      goto LABEL_36;
    }

    v22 = CFGetTypeID(value);
    if (v22 == CFStringGetTypeID())
    {
      theDict = @"eng";
      Mutable = CFDictionaryCreate(a1, &theDict, &value, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
LABEL_34:
      Mutable = 0;
    }

    v20 = value;
    if (!value)
    {
      return Mutable;
    }

LABEL_36:
    CFRelease(v20);
    return Mutable;
  }

  v8 = v7;
  if (v7 < 1)
  {
    return 0;
  }

  v9 = 0;
  Mutable = 0;
  v11 = *MEMORY[0x1E695E480];
  do
  {
    theDict = 0;
    value = 0;
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v12 && !v12(v5, @"udta", @"tnam", v9, v11, &value, &theDict))
    {
      valuePtr = 0;
      v13 = CFDictionaryGetValue(theDict, @"languageCode");
      if (v13)
      {
        CFNumberGetValue(v13, kCFNumberSInt16Type, &valuePtr);
        v14 = *a2;
        v15 = *(*a2 + 81) ? *(v14 + 82) == 0 : *(v14 + 84) != 0;
        StringForLanguageCode = FigCreateStringForLanguageCode(v11, valuePtr, v15);
        if (StringForLanguageCode)
        {
          v17 = StringForLanguageCode;
          if (Mutable || (Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
          {
            CFDictionarySetValue(Mutable, v17, value);
          }

          CFRelease(v17);
        }
      }

      if (value)
      {
        CFRelease(value);
      }

      if (theDict)
      {
        CFRelease(theDict);
      }
    }

    ++v9;
  }

  while (v8 != v9);
  return Mutable;
}

uint64_t AssureTrackQuickTimeUserDataReaderCreated(void *a1)
{
  FigSimpleMutexLock();
  if (!a1[3])
  {
    MovieInformationLockForRead(*a1);
    MovieTrackCreateQuickTimeUserDataReader(*a1, a1[1], a1 + 3);
    MovieInformationUnlockForRead(*a1);
  }

  FigSimpleMutexUnlock();
  return a1[3];
}

uint64_t AssureTrackISOUserDataReaderCreated(void *a1)
{
  FigSimpleMutexLock();
  if (!a1[4])
  {
    MovieInformationLockForRead(*a1);
    MovieTrackCreateISOUserDataReader(*a1, a1[1], a1 + 4);
    MovieInformationUnlockForRead(*a1);
  }

  FigSimpleMutexUnlock();
  return a1[4];
}

uint64_t AssureTrackQuickTimeMetadataReaderCreated(void *a1)
{
  FigSimpleMutexLock();
  if (!a1[5])
  {
    MovieInformationLockForRead(*a1);
    MovieTrackCreateQuickTimeMetadataReader(*a1, a1[1], a1 + 5);
    MovieInformationUnlockForRead(*a1);
  }

  FigSimpleMutexUnlock();
  return a1[5];
}

uint64_t CopyMinSampleDurationDictionary(uint64_t a1, void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  memset(&v8[1], 0, sizeof(CMTime));
  v5 = MovieTrackComputeMinSampleDuration();
  if (!v5)
  {
    v7 = CFGetAllocator(*(a1 + 8));
    v8[0] = v8[1];
    v4 = CMTimeCopyAsDictionary(v8, v7);
    *(a1 + 56) = v4;
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
LABEL_5:
    v4 = CFRetain(v4);
  }

LABEL_6:
  *a2 = v4;
  FigSimpleMutexUnlock();
  return v5;
}

uint64_t CopyMaxEditRateNumber(void *a1, CFNumberRef *a2)
{
  valuePtr = 1065353216;
  v3 = MovieTrackComputeMaxEditRate();
  if (!v3)
  {
    *a2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  }

  return v3;
}

double MovieTrackReaderGetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && DerivedStorage[1])
  {
    MovieInformationLockForRead(*DerivedStorage);
    MovieTrackGetBasicInfo(DerivedStorage[1], a3, a2);
    MovieInformationUnlockForRead(*DerivedStorage);
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_Movie >>>", 5245, v3);
  }

  return result;
}

uint64_t MovieTrackReaderGetTrackEditCount(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && DerivedStorage[1])
  {
    MovieInformationLockForRead(*DerivedStorage);
    EditSegmentCount = MovieTrackGetEditSegmentCount(DerivedStorage[1]);
    MovieInformationUnlockForRead(*DerivedStorage);
    return EditSegmentCount;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
    return 0;
  }
}

double MovieTrackReaderGetTrackEditWithIndex(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && DerivedStorage[1])
  {
    if (a3)
    {
      MovieInformationLockForRead(*DerivedStorage);
      MovieTrackGetEditSegmentWithIndex(DerivedStorage[1], a2, a3);
      MovieInformationUnlockForRead(*DerivedStorage);
    }

    else
    {
      MovieTrackReaderGetTrackEditWithIndex_cold_1(&v9);
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_Movie >>>", 5278, v3);
  }

  return result;
}

double MovieTrackReaderGetTrackEditIndexWithTrackTime(uint64_t a1, __int128 *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage && DerivedStorage[1])
  {
    MovieInformationLockForRead(*DerivedStorage);
    v7 = DerivedStorage[1];
    v15 = *a2;
    v16 = *(a2 + 2);
    MovieTrackFindEditIndexForTrackTime(v7, &v15, a3, v8, v9, v10, v11, v12);
    MovieInformationUnlockForRead(*DerivedStorage);
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_Movie >>>", 5324, v3);
  }

  return result;
}

void MovieCursorService_finalize(uint64_t a1)
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

__CFString *MovieCursorService_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_Movie_CursorService %p>{ track %p }", a1, *(DerivedStorage + 8));
  return Mutable;
}

uint64_t CreateMovieSampleCursor(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (MovieTrackIsValid(a3))
  {
    FigSampleCursorGetClassID();
    v7 = CMDerivedObjectCreate();
    if (v7)
    {
      v11 = v7;
      CreateMovieSampleCursor_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = MovieSampleAccessorCreate(a2, a3, (DerivedStorage + 8));
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        if (a2)
        {
          v10 = CFRetain(a2);
        }

        else
        {
          v10 = 0;
        }

        v11 = 0;
        *DerivedStorage = v10;
      }
    }
  }

  else
  {
    CreateMovieSampleCursor_cold_2(&v13);
    v11 = v13;
  }

  *a4 = 0;
  return v11;
}

void MovieCursor_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieSampleAccessorDispose(*(DerivedStorage + 8));
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  *DerivedStorage = 0;
  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
}

__CFString *MovieCursor_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  TrackType = MovieTrackGetTrackType(*(DerivedStorage[1] + 8));
  v19 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  MovieTrackGetBasicInfo(*(DerivedStorage[1] + 8), 0, &v19);
  MovieInformationUnlockForRead(*DerivedStorage);
  v6 = DerivedStorage[1];
  v7 = *(v6 + 80);
  v8 = v19;
  IsValid = MovieTrackIsValid(*(v6 + 8));
  v10 = "";
  if (!IsValid)
  {
    v10 = " (INVALIDATED)";
  }

  CFStringAppendFormat(Mutable, 0, @"<Movie_SampleCursor %p>{ sampleNum %d, Track ID %d%s, Type %c%c%c%c }", a1, v7, v8, v10, HIBYTE(TrackType), BYTE2(TrackType), BYTE1(TrackType), TrackType);
  v11 = DerivedStorage[1];
  v12 = *(v11 + 8);
  v13 = *(v12 + 728);
  if (v13)
  {
    if (*(v13 + 56))
    {
      v14 = *(v11 + 80);
      v15 = *(v12 + 288);
      v16 = v14 >= v15;
      v17 = v14 - v15;
      if (v17 != 0 && v16)
      {
        CFStringAppendFormat(Mutable, 0, @"\nFragment Sample %d of %d [Fragment %p Run %p IndexInRun %u/%d]", v17, *(v13 + 8), *(v11 + 200), *(v11 + 208), v14 - *(*(v11 + 208) + 16), *(*(v11 + 208) + 40));
      }
    }
  }

  return Mutable;
}

uint64_t MovieCursor_copyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMTimeValue *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (!a4)
  {
    MovieCursor_copyProperty_cold_2(&v22);
LABEL_36:
    value_low = LODWORD(v22.value);
    goto LABEL_30;
  }

  if (!MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieCursor_copyProperty_cold_1(&v22);
    goto LABEL_36;
  }

  *a4 = 0;
  if (!CFEqual(a2, @"CursorPlayableHorizon"))
  {
    if (CFEqual(a2, @"SampleDependencyAttributes"))
    {
      v22.value = 0;
      SampleDependencyAttributeDictionary = MovieSampleAccessorCreateSampleDependencyAttributeDictionary(a3, DerivedStorage[1], &v22);
LABEL_8:
      value_low = SampleDependencyAttributeDictionary;
      if (SampleDependencyAttributeDictionary)
      {
        goto LABEL_30;
      }

      value = v22.value;
LABEL_16:
      *a4 = value;
      goto LABEL_30;
    }

    if (CFEqual(a2, @"GradualDecoderRefresh"))
    {
      LOWORD(v22.value) = 0;
      if (!MovieSampleAccessorGetRollValue())
      {
        value_low = 4294954513;
        goto LABEL_30;
      }

      LOWORD(v21.value) = -LOWORD(v22.value);
      AdvanceDecodeDeltaDictionary = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &v21);
    }

    else
    {
      if (CFEqual(a2, @"SeamIdentifier"))
      {
        v22.value = 0;
        v18 = MovieSampleAccessorCopySeamIdentifier();
        value_low = 0;
        value = 0;
        if (!v18)
        {
          value = 0;
        }

        goto LABEL_16;
      }

      if (CFEqual(a2, @"AdvanceDecodeDelta"))
      {
        AdvanceDecodeDeltaDictionary = DerivedStorage[2];
        if (!AdvanceDecodeDeltaDictionary)
        {
          AdvanceDecodeDeltaDictionary = MovieTrackCreateAdvanceDecodeDeltaDictionary(a3, *DerivedStorage[1], *(DerivedStorage[1] + 8));
          DerivedStorage[2] = AdvanceDecodeDeltaDictionary;
          if (!AdvanceDecodeDeltaDictionary)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (!CFEqual(a2, @"MoreSamplesMayBeForthcoming"))
        {
          if (!CFEqual(a2, @"SampleGroupData"))
          {
            value_low = 4294954512;
            goto LABEL_30;
          }

          v22.value = 0;
          MovieSampleAccessorCreateSampleGroupDataDictionary(a3, DerivedStorage[1], &v22);
          goto LABEL_8;
        }

        v19 = *MEMORY[0x1E695E4C0];
        if (*(*DerivedStorage + 90) && MovieInformationCouldContainFragments(*DerivedStorage))
        {
          v19 = *MEMORY[0x1E695E4D0];
        }

        AdvanceDecodeDeltaDictionary = v19;
      }

      AdvanceDecodeDeltaDictionary = CFRetain(AdvanceDecodeDeltaDictionary);
    }

LABEL_28:
    value_low = 0;
    goto LABEL_29;
  }

  memset(&v22, 0, sizeof(v22));
  value_low = MovieSampleAccessorComputePlayableHorizon(DerivedStorage[1], &v22, v8, v9, v10, v11, v12, v13);
  if (!value_low)
  {
    v21 = v22;
    AdvanceDecodeDeltaDictionary = CMTimeCopyAsDictionary(&v21, a3);
LABEL_29:
    *a4 = AdvanceDecodeDeltaDictionary;
  }

LABEL_30:
  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

uint64_t MovieCursor_copy(const void *a1, CFTypeRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  cf = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    CFGetAllocator(a1);
    FigSampleCursorGetClassID();
    v5 = CMDerivedObjectCreate();
    if (v5)
    {
      v9 = v5;
      MovieCursor_copy_cold_1();
    }

    else
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v7 = MovieSampleAccessorCopy(DerivedStorage[1], &v11);
      if (!v7)
      {
        v6[1] = v11;
        v11 = 0;
        v8 = *DerivedStorage;
        if (*DerivedStorage)
        {
          v8 = CFRetain(v8);
        }

        v9 = 0;
        *v6 = v8;
        *a2 = cf;
        cf = 0;
        goto LABEL_7;
      }

      v9 = v7;
    }
  }

  else
  {
    MovieCursor_copy_cold_2(&v13);
    v9 = v13;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_7:
  MovieInformationUnlockForRead(*DerivedStorage);
  MovieSampleAccessorDispose(v11);
  return v9;
}

uint64_t MovieCursor_compareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(*(DerivedStorage + 8) + 80);
  v5 = *(*(v3 + 8) + 80);
  v6 = v4 >= v5;
  v7 = v4 > v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t MovieCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieSampleAccessorGetPTS(DerivedStorage[1], &v6);
    value_low = 0;
    *a2 = v6;
  }

  else
  {
    MovieCursor_getPresentationTimeStamp_cold_1(&v6);
    value_low = LODWORD(v6.value);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

uint64_t MovieCursor_getDecodeTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieSampleAccessorGetDTS(DerivedStorage[1], &v6);
    value_low = 0;
    *a2 = v6;
  }

  else
  {
    MovieCursor_getDecodeTimeStamp_cold_1(&v6);
    value_low = LODWORD(v6.value);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

uint64_t MovieCursor_getDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    SampleDuration = MovieSampleAccessorGetSampleDuration(DerivedStorage[1], a2);
  }

  else
  {
    MovieCursor_getDuration_cold_1(&v6);
    SampleDuration = v6;
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return SampleDuration;
}

uint64_t MovieCursor_getDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _DWORD *a4, BOOL *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    DependencyInfo = MovieSampleAccessorGetDependencyInfo(DerivedStorage[1], a2, a3, 0, 0, a4, a5);
    MovieInformationUnlockForRead(*DerivedStorage);
    return DependencyInfo;
  }

  else
  {
    MovieCursor_getDependencyInfo_cold_1(&v12);
    return v12;
  }
}

BOOL MovieCursor_testReorderingBoundary(uint64_t a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v10 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    DTSTimeValue = MovieSampleAccessorGetDTSTimeValue(DerivedStorage[1]);
    PTSTimeValue = MovieSampleAccessorGetPTSTimeValue(*(v5 + 8));
    MovieTrackGetCompositionOffsetRange(*DerivedStorage[1], *(DerivedStorage[1] + 8), &v10 + 1, &v10);
    if (a3)
    {
      v8 = DTSTimeValue + SHIDWORD(v10) >= PTSTimeValue;
    }

    else
    {
      v8 = DTSTimeValue + v10 <= PTSTimeValue;
    }
  }

  else
  {
    MovieCursor_testReorderingBoundary_cold_1();
    v8 = 0;
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v8;
}

uint64_t MovieCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieSampleAccessorGetDTS(DerivedStorage[1], &v10);
    lhs = v10;
    v6 = *a2;
    CMTimeAdd(&v8, &lhs, &v6);
    v10 = v8;
    MovieSampleAccessorMoveToSampleForDTS(DerivedStorage[1], &v8, &v9 + 1, &v9);
    if (HIBYTE(v9) | v9)
    {
      value_low = 4294954456;
    }

    else
    {
      value_low = 0;
    }
  }

  else
  {
    MovieCursor_stepByDecodeTime_cold_1(&v8);
    value_low = LODWORD(v8.value);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

uint64_t MovieCursor_stepByPresentationTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v11, 0, sizeof(v11));
  v10 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieSampleAccessorGetPTS(DerivedStorage[1], &v11);
    lhs = v11;
    v7 = *a2;
    CMTimeAdd(&v9, &lhs, &v7);
    v11 = v9;
    MovieSampleAccessorMoveToSampleAtPTS(DerivedStorage[1], &v9, &v10 + 1, &v10);
    value_low = v4;
    if (!v4)
    {
      if (HIBYTE(v10) | v10)
      {
        value_low = 4294954456;
      }

      else
      {
        value_low = 0;
      }
    }
  }

  else
  {
    MovieCursor_stepByPresentationTime_cold_1(&v9);
    value_low = LODWORD(v9.value);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

uint64_t MovieCursor_copyChunkDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, BOOL *a8, BOOL *a9, _BYTE *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieSampleAccessorGetChunkDetails(DerivedStorage[1], &v21, a4, a5, a6, a7, a8, a9, a10);
    v19 = v18;
    if (!v18)
    {
      if (a2 | a3)
      {
        v19 = MovieTrackCopyDataSourceForSampleDescriptionID(*DerivedStorage, *(DerivedStorage[1] + 8), v21, a3, a2);
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    MovieCursor_copyChunkDetails_cold_1(&v22);
    v19 = v22;
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v19;
}

uint64_t MovieCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    v6 = MovieSampleAccessorStepCursor(DerivedStorage[1], a2, a3);
    if (v6 == -12840)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    MovieCursor_stepInDecodeOrderAndReportStepsTaken_cold_1(&v9);
    v7 = v9;
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return v7;
}

uint64_t MovieCursor_stepInPresentationOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MovieInformationLockForRead(*DerivedStorage);
  if (!MovieTrackIsValid(*(DerivedStorage[1] + 8)))
  {
    MovieCursor_stepInPresentationOrderAndReportStepsTaken_cold_1(&v12);
    v10 = v12;
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    v6 = a2;
    while (1)
    {
      MovieSampleAccessorStepBackPTS(DerivedStorage[1]);
      if (v7)
      {
        break;
      }

      if (__CFADD__(v6++, 1))
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v10 = v7;
    if (v7 != -12840)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a2)
  {
    v6 = a2;
    do
    {
      MovieSampleAccessorStepFwdPTS(DerivedStorage[1]);
      if (v7)
      {
        goto LABEL_14;
      }
    }

    while (v6-- > 1);
  }

LABEL_13:
  v6 = 0;
LABEL_15:
  v10 = 0;
  if (a3)
  {
    *a3 = a2 - v6;
  }

LABEL_17:
  MovieInformationUnlockForRead(*DerivedStorage);
  return v10;
}

uint64_t MovieCursor_getDecodeToPresentationTimeDeltaRange(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  MovieInformationLockForRead(*DerivedStorage);
  v6 = *(*(DerivedStorage + 8) + 8);
  if (MovieTrackIsValid(v6))
  {
    MovieTrackGetCompositionOffsetRange(**(DerivedStorage + 8), v6, &v14 + 1, &v14);
    if (a2)
    {
      v7 = SHIDWORD(v14);
      MediaTimeScale = MovieTrackGetMediaTimeScale(v6);
      CMTimeMake(&v13, v7, MediaTimeScale);
      *a2 = v13;
    }

    if (a3)
    {
      v9 = v14;
      v10 = MovieTrackGetMediaTimeScale(v6);
      CMTimeMake(&v13, v9, v10);
      value_low = 0;
      *a3 = v13;
    }

    else
    {
      value_low = 0;
    }
  }

  else
  {
    MovieCursor_getDecodeToPresentationTimeDeltaRange_cold_1(&v13);
    value_low = LODWORD(v13.value);
  }

  MovieInformationUnlockForRead(*DerivedStorage);
  return value_low;
}

void ReactToMovieMetadataChange(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v6 = __ROR8__(a2 - 8, 3);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = @"QuickTimeMetadataReader";
      v9 = DerivedStorage + 12;
      v8 = DerivedStorage[12];
      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (v6 != 7)
      {
        goto LABEL_15;
      }

      v7 = @"iTunesMetadataReader";
      v9 = DerivedStorage + 14;
      v8 = DerivedStorage[14];
      if (v8)
      {
        goto LABEL_5;
      }
    }

LABEL_6:
    FigSimpleMutexUnlock();
    if (v7)
    {
      v10 = *MEMORY[0x1E695E4D0];
      CFDictionarySetValue(a3, v7, *MEMORY[0x1E695E4D0]);
      CFDictionarySetValue(a3, @"MetadataReaderTypes", v10);

      CFDictionarySetValue(a3, @"MetadataReaders", v10);
    }

    return;
  }

  if (!v6)
  {
    v7 = @"ISOUserDataReader";
    v9 = DerivedStorage + 13;
    v8 = DerivedStorage[13];
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_5:
    CFRelease(v8);
    *v9 = 0;
    goto LABEL_6;
  }

  if (v6 == 1)
  {
    v7 = @"QuickTimeUserDataReader";
    v9 = DerivedStorage + 11;
    v8 = DerivedStorage[11];
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:

  FigSimpleMutexUnlock();
}

void ReactToTrackMetadataChange(uint64_t a1, uint64_t a2, __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  switch(a2)
  {
    case 8:
      v6 = @"ISOUserDataReader";
      v8 = DerivedStorage + 4;
      v7 = DerivedStorage[4];
      if (!v7)
      {
LABEL_8:
        FigSimpleMutexUnlock();
        if (v6)
        {
          v9 = *MEMORY[0x1E695E4D0];
          CFDictionarySetValue(a3, v6, *MEMORY[0x1E695E4D0]);
          CFDictionarySetValue(a3, @"MetadataReaderTypes", v9);

          CFDictionarySetValue(a3, @"MetadataReaders", v9);
        }

        return;
      }

LABEL_7:
      CFRelease(v7);
      *v8 = 0;
      goto LABEL_8;
    case 16:
      v6 = @"QuickTimeUserDataReader";
      v8 = DerivedStorage + 3;
      v7 = DerivedStorage[3];
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    case 32:
      v6 = @"QuickTimeMetadataReader";
      v8 = DerivedStorage + 5;
      v7 = DerivedStorage[5];
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
  }

  FigSimpleMutexUnlock();
}

uint64_t OUTLINED_FUNCTION_5_87(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CMNotificationCenterPostNotification();
}

uint64_t MoovIsParsingError(int a1)
{
  result = 1;
  if (a1 <= -12720)
  {
    v4 = a1 + 12896;
    if (v4 > 0x33 || ((1 << v4) & 0x900000000007FLL) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= -207)
    {
      v3 = a1 + 12719;
      if (v3 <= 9 && ((1 << v3) & 0x23D) != 0)
      {
        return result;
      }

      return 0;
    }

    if (a1 <= 560360819)
    {
      if (a1 == -206)
      {
        return result;
      }

      v5 = 560226676;
LABEL_15:
      if (a1 == v5)
      {
        return result;
      }

      return 0;
    }

    if (a1 != 560360820 && a1 != 1718449215)
    {
      v5 = 2003329396;
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t ParseMovieAtom(_OWORD *a1, uint64_t *a2)
{
  v4 = *a2;
  v18[1] = 0;
  v19 = 0;
  v17 = 0;
  v18[0] = a2;
  v16 = 0;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  v5 = 0;
  if (*(v4 + 85))
  {
    v9 = "File contains multiple 'moov' atoms";
    v10 = v4;
    v11 = a1;
    v12 = 3;
LABEL_16:
    _MovieAtomReportParsingMessage(v10, 0, v11, v9, v12);
    goto LABEL_19;
  }

  memset(v15, 0, sizeof(v15));
  if (!*(v4 + 56))
  {
    if (*(v4 + 80))
    {
      v14 = 0;
      BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf();
      if (BBuf)
      {
        goto LABEL_18;
      }

      v5 = CMByteStreamCreateForBlockBuffer();
      if (v5)
      {
        goto LABEL_19;
      }

      *(v4 + 56) = v17;
      BBuf = FigAtomStreamInitWithByteStream();
      if (BBuf)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(v4 + 48);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(v4 + 56) = v8;
    }
  }

  BBuf = FigAtomStreamInitWithParent();
  if (BBuf)
  {
LABEL_18:
    v5 = BBuf;
    goto LABEL_19;
  }

  ParseChildAtoms(v4, v15, 7, &ParseMovieAtom_atomDispatch, v18);
  if (v7)
  {
    v5 = v7;
    v9 = "while parsing";
    v10 = v4;
    v11 = a1;
    v12 = 6;
    goto LABEL_16;
  }

  if (*(v4 + 87))
  {
    if (!v19 || (BBuf = ParseMovieExtendsAtomFromBBuf(v19, v18), !BBuf))
    {
      v5 = 0;
      *(v4 + 85) = 1;
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  ParseMovieAtom_cold_1();
  v5 = v14;
LABEL_19:
  if (v17)
  {
    CFRelease(v17);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v5)
  {
    if (*(v4 + 89) && *(v4 + 85))
    {
      *(v4 + 85) = 0;
    }
  }

  else if (*(v4 + 154))
  {
    return 0;
  }

  else if (*(a2 + 26))
  {
    return 0;
  }

  else
  {
    return 1937010544;
  }

  return v5;
}

uint64_t ParseMovieFragmentAtom(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v13 = 0u;
  v14 = 0u;
  v10 = 0;
  if (!*(v2 + 154))
  {
    return 0;
  }

  v12 = 0;
  v11 = 0;
  memset(v9, 0, sizeof(v9));
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    goto LABEL_13;
  }

  BBuf = FigAtomStreamInitWithBBuf();
  if (BBuf)
  {
    goto LABEL_13;
  }

  if (!*(a2 + 8))
  {
    BBuf = FigAtomStreamGetCurrentAtomGlobalOffset();
    if (!BBuf)
    {
      goto LABEL_6;
    }

LABEL_13:
    v7 = BBuf;
    goto LABEL_8;
  }

  *(&v13 + 1) = a2[2];
LABEL_6:
  *&v13 = a2;
  *&v14 = a1;
  ParseChildAtoms(v2, v9, 2, &ParseMovieFragmentAtom_atomDispatch, &v13);
  v7 = v6;
  if (v6)
  {
    _MovieAtomReportParsingMessage(v2, 0, a1, "Encountered an error during parsing of movie fragment atom", 3u);
  }

  else
  {
    *(v2 + 156) = 1;
  }

LABEL_8:
  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

uint64_t ParseMovieMetaDataAtom(uint64_t a1, uint64_t **a2)
{
  v3 = **a2;
  v11 = 0;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  FigAtomStreamGetCurrentAtomVersionAndFlags();
  v4 = FigAtomStreamInitWithParent();
  if (!v4)
  {
    ParseChildAtoms(v3, v9, 1, &ParseMovieMetaDataAtom_atomDispatch, &v8);
    v4 = v7;
  }

  if (v4 == -12893 || v4 == 0)
  {
    v4 = 0;
  }

  else
  {
    _MovieAtomReportParsingMessage(v3, 0, a1, "while parsing", 6u);
  }

  if (v8 == 1835299937)
  {
    return FigAtomStreamGetCurrentAtomGlobalOffset();
  }

  return v4;
}

uint64_t ParseEditListAtom(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  sourceBuffer = 0;
  HIDWORD(v10) = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    v8 = CurrentAtomTypeAndDataLength;
  }

  else
  {
    _MovieAtomReportParsingMessage(v4, v3, a1, "'elst' atom size less than minimum", 2u);
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, 0);
    v8 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v9 = *(v3 + 696);
  if (v9)
  {
    CFRelease(v9);
  }

  *(v3 + 696) = 0;
  *(v3 + 704) = 0;
LABEL_3:
  if (sourceBuffer)
  {
    CFRelease(sourceBuffer);
  }

  return v8;
}

uint64_t ParseMediaInfoAtom(__int128 *a1, _DWORD *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2[2];
  v6 = bswap32(v5);
  if (v6 <= 1885954931)
  {
    if (!v6)
    {
      v17 = a1[5];
      v44 = a1[4];
      v45 = v17;
      v46 = a1[6];
      v18 = a1[1];
      dataPointerOut = *a1;
      v41 = v18;
      v19 = a1[3];
      v42 = a1[2];
      v43 = v19;
      if (!FigAtomStreamAdvanceToNextAtomWithType())
      {
        v20 = ParseMediaHandlerAtom();
        if (v20)
        {
          return v20;
        }
      }

      v5 = a2[2];
      goto LABEL_20;
    }

    v7 = 1635088502;
LABEL_7:
    if (v6 == v7)
    {
      goto LABEL_8;
    }

LABEL_20:
    v8 = *(*a2 + 8);
    v9 = ****a2;
    *(&v38[0] + 1) = a2;
    dataPointerOut = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    *&v38[0] = bswap32(v5);
    MovieTrackSetParsedTrackType(v8, v38[0]);
    v10 = FigAtomStreamInitWithParent();
    if (v10)
    {
      goto LABEL_49;
    }

    v11 = &ParseMediaInfoAtomForGenericMedia_atomDispatch;
    v12 = v9;
    v13 = 4;
    goto LABEL_22;
  }

  if (v6 == 1885954932)
  {
LABEL_8:
    v8 = *(*a2 + 8);
    v9 = ****a2;
    *(&v38[0] + 1) = a2;
    dataPointerOut = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    *&v38[0] = v6;
    MovieTrackSetParsedTrackType(v8, v6);
    v10 = FigAtomStreamInitWithParent();
    if (v10)
    {
      goto LABEL_49;
    }

    v11 = &ParseVideoMediaInfoAtom_atomDispatch;
    v12 = v9;
    v13 = 3;
LABEL_22:
    ParseChildAtoms(v12, &dataPointerOut, v13, v11, v38);
    if (!v10)
    {
      v21 = ConvertSampleDescriptionsToFormatDescriptions(v9, v8);
      goto LABEL_24;
    }

LABEL_49:
    v22 = v10;
    goto LABEL_50;
  }

  if (v6 != 1936684398)
  {
    v7 = 1986618469;
    goto LABEL_7;
  }

  v8 = *(*a2 + 8);
  v9 = ****a2;
  memset(v38, 0, sizeof(v38));
  v39[0] = 1936684398;
  v39[1] = a2;
  MovieTrackSetParsedTrackType(v8, 1936684398);
  v10 = FigAtomStreamInitWithParent();
  if (v10)
  {
    goto LABEL_49;
  }

  ParseChildAtoms(v9, v38, 3, &ParseSoundMediaInfoAtom_atomDispatch, v39);
  if (v10)
  {
    goto LABEL_49;
  }

  v14 = v8[7];
  if (v14)
  {
    *&dataPointerOut = 0;
    if (CFArrayGetCount(v14) && (v15 = CFArrayGetValueAtIndex(v8[7], 0)) != 0 && v8[5])
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8[5], *v15);
    }

    else
    {
      ValueAtIndex = 0;
    }

    lengthAtOffsetOut = 0;
    CMBlockBufferGetDataPointer(ValueAtIndex, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (lengthAtOffsetOut <= 0x23)
    {
      _MovieAtomReportParsingMessage(v9, v8, a1, "Invalid size for sound description", 2u);
      v35 = 3621;
    }

    else
    {
      if (*(dataPointerOut + 16) || !*(v9 + 82) || !*(v9 + 84))
      {
        if (*(v9 + 81))
        {
          if (*(v9 + 82))
          {
LABEL_33:
            v24 = MEMORY[0x1E6960620];
            goto LABEL_38;
          }
        }

        else if (!*(v9 + 84))
        {
          goto LABEL_33;
        }

        v24 = MEMORY[0x1E6960618];
LABEL_38:
        v25 = CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(ValueAtIndex, *v24);
        MovieTrackSetSampleOverrides(v8, 0, 0);
        v10 = ConvertSampleDescriptionsToFormatDescriptions(v9, v8);
        if (v10)
        {
          goto LABEL_49;
        }

        if (v25)
        {
          FirstFormatDescription = GetFirstFormatDescription(v8);
          if (FirstFormatDescription)
          {
            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FirstFormatDescription);
            MovieTrackSetSampleOverrides(v8, StreamBasicDescription->mBytesPerPacket, StreamBasicDescription->mFramesPerPacket);
          }

          return 0;
        }

        goto LABEL_42;
      }

      _MovieAtomReportParsingMessage(v9, v8, a1, "V0 sound description in file with QT ftyp and ISO file extension", 2u);
      v35 = 3626;
    }

    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954448, "<<< FFR_Movie >>>", v35, v2);
    goto LABEL_24;
  }

  v10 = ConvertSampleDescriptionsToFormatDescriptions(v9, v8);
  if (v10)
  {
    goto LABEL_49;
  }

LABEL_42:
  v28 = GetFirstFormatDescription(v8);
  if (!v28)
  {
    return 0;
  }

  v29 = CMAudioFormatDescriptionGetStreamBasicDescription(v28);
  mFormatID = v29->mFormatID;
  if (mFormatID == 1634492791 || mFormatID == 1970037111)
  {
    return 0;
  }

  v32 = v29;
  if (!v29->mBytesPerPacket)
  {
    return 0;
  }

  CommonSampleSize = MovieSampleTableGetCommonSampleSize(v8);
  if (!CommonSampleSize || v32->mBytesPerPacket == CommonSampleSize)
  {
    return 0;
  }

  snprintf(&dataPointerOut, 0x100uLL, "ASBD mBytesPerPacket %d expected to match common sample size %d from the sample table", v32->mBytesPerPacket, CommonSampleSize);
  _MovieAtomReportParsingMessage(v9, v8, a1, &dataPointerOut, 5u);
  _MovieAtomReportParsingMessage(v9, v8, 0, "ASBD mBytesPerPacket does not match the common sample size", 2u);
  v34 = fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, 4294954448, "<<< FFR_Movie >>>", 3155, v2);
LABEL_24:
  v22 = v21;
  if (v21)
  {
LABEL_50:
    _MovieAtomReportParsingMessage(v9, v8, a1, "while parsing", 5u);
  }

  return v22;
}

uint64_t ParseSampleTableAtom(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 8);
  v3 = v2[1];
  v4 = **v2;
  v5 = *v4;
  if (!*(v4 + 24))
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_5;
    }

    DoPostParsingSampleTableCommon(v5, v3, v8);
LABEL_7:
    CurrentAtomTypeAndDataLength = v6;
    goto LABEL_5;
  }

  FigAtomStreamGetCurrentAtomGlobalOffset();
  v6 = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (v6)
  {
    goto LABEL_7;
  }

  CurrentAtomTypeAndDataLength = 0;
  *(v3 + 718) = 1;
LABEL_5:
  *(v3 + 712) = CurrentAtomTypeAndDataLength;
  return CurrentAtomTypeAndDataLength;
}

uint64_t ParseSampleDescriptionAtom(uint64_t a1, uint64_t a2)
{
  v3 = **(a2 + 8);
  v4 = *(v3 + 8);
  v5 = ***v3;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  theSourceBuffer = 0;
  v9 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength)
  {
    v7 = CurrentAtomTypeAndDataLength;
  }

  else
  {
    FigAtomStreamGetCurrentAtomGlobalOffset();
    ParseSampleDescriptionAtom_cold_5(v5, v4, a1, &v21);
    v7 = v21;
    if (!v21)
    {
      goto LABEL_4;
    }
  }

  ReleaseSampleDescriptionInfoArray(v4);
LABEL_4:
  if (theSourceBuffer)
  {
    CFRelease(theSourceBuffer);
  }

  return v7;
}

uint64_t ParseSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v3 = **(a2 + 8);
  v4 = *(v3 + 8);
  v5 = ***v3;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  cf = 0;
  v6 = CommonSampleToGroupAtomParseAndCreateArrayBBuf(v5, v4, a1, &v13, &v15, &v12);
  if (!v6)
  {
    MovieTrackAddAndRetainSampleGroup(v4, v13, v14, &cf);
    if (!v6)
    {
      v7 = v12;
      MovieSampleGroupSet_sbgp(cf, v15, v12);
      v9 = v8;
      if (!v7)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v9 = v6;
  v7 = v12;
  if (v12)
  {
LABEL_4:
    CFRelease(v7);
  }

LABEL_5:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t ParseMOVCompactSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v3 = **(a2 + 8);
  v4 = *(v3 + 8);
  v5 = ***v3;
  v17 = 0;
  cf = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v6 = CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf(v5, v4, a1, &v16, v11, &cf, &v14);
  if (v6)
  {
LABEL_11:
    v9 = v6;
    goto LABEL_13;
  }

  if (!v12)
  {
    MovieTrackAddAndRetainSampleGroup(v4, v16, v17, &v13);
    if (!v6)
    {
      v7 = v14;
      MovieSampleGroupSet_csgp(v13, v11, cf, v14);
      v9 = v8;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  ParseMOVCompactSampleToGroupAtom_cold_1(v5, v4, a1, &v18);
  v9 = v18;
LABEL_13:
  v7 = v14;
  if (v14)
  {
LABEL_5:
    CFRelease(v7);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

uint64_t ParseISOCompactSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v3 = **(a2 + 8);
  v4 = *(v3 + 8);
  v5 = ***v3;
  v17 = 0;
  cf = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v6 = CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf(v5, v4, a1, &v16, v11, &cf, &v14);
  if (v6)
  {
LABEL_11:
    v9 = v6;
    goto LABEL_13;
  }

  if (!v12)
  {
    MovieTrackAddAndRetainSampleGroup(v4, v16, v17, &v13);
    if (!v6)
    {
      v7 = v14;
      MovieSampleGroupSet_csgp(v13, v11, cf, v14);
      v9 = v8;
      if (!v7)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  ParseISOCompactSampleToGroupAtom_cold_1(v5, v4, a1, &v18);
  v9 = v18;
LABEL_13:
  v7 = v14;
  if (v14)
  {
LABEL_5:
    CFRelease(v7);
  }

LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return v9;
}

uint64_t CommonSampleToGroupAtomParseAndCreateArrayBBuf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, CMBlockBufferRef *a6)
{
  result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (!result)
  {
    result = FigAtomStreamGetCurrentAtomVersionAndFlags();
    if (!result)
    {
      _MovieAtomReportParsingMessage(a1, a2, a3, "'sbgp' V0 atom size less than minimum", 2u);
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954448, "<<< FFR_Movie >>>", 2558, v6);
    }
  }

  return result;
}

uint64_t CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMBlockBufferRef *a6, void *a7)
{
  v23 = 0;
  blockBufferOut = 0;
  v22 = 0;
  sourceBuffer = 0;
  cf = 0;
  v16 = 0;
  v17 = 0;
  *(v18 + 6) = 0;
  v18[0] = 0;
  v15 = 0;
  v14 = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags(), CurrentAtomTypeAndDataLength))
  {
    v12 = CurrentAtomTypeAndDataLength;
  }

  else
  {
    CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_4(a1, a2, a3, &dataPointerOut);
    v12 = dataPointerOut;
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (sourceBuffer)
  {
    CFRelease(sourceBuffer);
  }

  return v12;
}

uint64_t CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CMBlockBufferRef *a6, void *a7)
{
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  dataPointerOut[1] = 0;
  *v14 = 0;
  *(&v14[1] + 2) = 0;
  CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
  if (CurrentAtomTypeAndDataLength || (CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomVersionAndFlags(), CurrentAtomTypeAndDataLength))
  {
    v12 = CurrentAtomTypeAndDataLength;
  }

  else
  {
    if ((((4 << ((v19 >> 4) & 3)) + (4 << ((v19 >> 2) & 3))) & 4) != 0)
    {
      CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_2(a1, a2, a3, dataPointerOut);
    }

    else
    {
      CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf_cold_6(a1, a2, a3, dataPointerOut);
    }

    v12 = LODWORD(dataPointerOut[0]);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  return v12;
}

uint64_t GetISOCompactSampleToGroupPatternEntryValue(uint64_t result, unsigned int **a2, int a3, unsigned int *a4)
{
  v4 = 0;
  HIDWORD(v6) = result - 4;
  LODWORD(v6) = result - 4;
  v5 = v6 >> 2;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v7 = (*a2 + 2);
      v4 = bswap32(**a2) >> 16;
      goto LABEL_12;
    }

    if (v5 == 7)
    {
      v7 = *a2 + 1;
      v4 = bswap32(**a2);
      goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      v7 = (*a2 + 1);
      v4 = **a2;
LABEL_12:
      *a2 = v7;
    }
  }

  else
  {
    v8 = **a2;
    if (!a3)
    {
      v4 = v8 & 0xF;
      v7 = (*a2 + 1);
      goto LABEL_12;
    }

    v4 = v8 >> 4;
  }

  *a4 = v4;
  return result;
}

const void *GetFirstFormatDescription(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  if (!CFArrayGetCount(v2))
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), 0);
  if (!ValueAtIndex || !*(a1 + 48))
  {
    return 0;
  }

  v4 = *ValueAtIndex;
  v5 = *(a1 + 48);

  return CFArrayGetValueAtIndex(v5, v4);
}

uint64_t ParseGenericMediaInfoHeaderAtom(uint64_t a1, uint64_t a2)
{
  v3 = **(a2 + 8);
  v4 = *(v3 + 8);
  v5 = ***v3;
  FigAtomStreamGetCurrentAtomTypeAndDataLength();
  ParseGenericMediaInfoHeaderAtom_cold_1(v5, v4, a1, &v7);
  return v7;
}

uint64_t SaveiTunesMetaDataAtomLocation(uint64_t a1, uint64_t **a2)
{
  if (*(**a2 + 136) <= 0)
  {
    return FigAtomStreamGetCurrentAtomGlobalOffset();
  }

  else
  {
    return 0;
  }
}

uint64_t ParseMetaDataHandlerAtom(uint64_t a1, _DWORD *a2)
{
  result = FigAtomStreamReadCurrentAtomData();
  if (!result)
  {
    *a2 = bswap32(0);
  }

  return result;
}

uint64_t ParseDataCompressionAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamReadCurrentAtomData();
  *(a2 + 12) = bswap32(0);
  return result;
}

void *InitInflatorLibrary_0()
{
  result = dlopen("/usr/lib/libz.dylib", 6);
  if (result)
  {
    v1 = result;
    _MergedGlobals_94 = dlsym(result, "inflateInit_");
    off_1ED4CB478 = dlsym(v1, "inflate");
    result = dlsym(v1, "inflateEnd");
    off_1ED4CB480 = result;
  }

  return result;
}

uint64_t ParseFragmentSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *v5;
  v16[0] = 0;
  v15 = 0;
  cf = 0;
  v14 = 0;
  v12 = 0;
  if (v4)
  {
    ArrayBBuf = CommonSampleToGroupAtomParseAndCreateArrayBBuf(v6, v4, a1, &v14, v16, &cf);
    if (ArrayBBuf)
    {
      v10 = ArrayBBuf;
      v9 = cf;
      if (cf)
      {
LABEL_6:
        CFRelease(v9);
      }
    }

    else
    {
      v8 = FragmentInfoAddAndRetainSampleGroup(*(a2 + 8), *(a2 + 16), v14, v15, &v12);
      v9 = cf;
      if (!v8)
      {
        MovieSampleGroupSet_sbgp(v12, v16[0], cf);
      }

      v10 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    ParseFragmentSampleToGroupAtom_cold_1();
    v10 = v16[1];
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

uint64_t ParseFragmentMOVCompactSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *v5;
  v18 = 0;
  v17 = 0;
  cf = 0;
  v16 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if (v4)
  {
    v7 = CommonMOVCompactSampleToGroupAtomParseAndCreateArrayBBuf(v6, v4, a1, &v17, v12, &v16, &cf);
    if (v7)
    {
      v10 = v7;
      v9 = cf;
      if (cf)
      {
LABEL_6:
        CFRelease(v9);
      }
    }

    else
    {
      v8 = FragmentInfoAddAndRetainSampleGroup(*(a2 + 8), *(a2 + 16), v17, v18, &v14);
      v9 = cf;
      if (!v8)
      {
        MovieSampleGroupSet_csgp(v14, v12, v16, cf);
      }

      v10 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    ParseFragmentMOVCompactSampleToGroupAtom_cold_1();
    v10 = v19;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

uint64_t ParseFragmentISOCompactSampleToGroupAtom(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *v5;
  v18 = 0;
  v17 = 0;
  cf = 0;
  v16 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  if (v4)
  {
    v7 = CommonISOCompactSampleToGroupAtomParseAndCreateArrayBBuf(v6, v4, a1, &v17, v12, &v16, &cf);
    if (v7)
    {
      v10 = v7;
      v9 = cf;
      if (cf)
      {
LABEL_6:
        CFRelease(v9);
      }
    }

    else
    {
      v8 = FragmentInfoAddAndRetainSampleGroup(*(a2 + 8), *(a2 + 16), v17, v18, &v14);
      v9 = cf;
      if (!v8)
      {
        MovieSampleGroupSet_csgp(v14, v12, v16, cf);
      }

      v10 = v8;
      if (v9)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    ParseFragmentISOCompactSampleToGroupAtom_cold_1();
    v10 = v19;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}