uint64_t remoteXPCMutableMovie_InsertEmptyTrackSegment(uint64_t a1, int a2, void *a3)
{
  v4 = v3;
  v22 = 0;
  v23 = 0;
  if (!a2 || a3[2] || (OUTLINED_FUNCTION_132(), !v6) || a3[5] || (OUTLINED_FUNCTION_132(), !v6) || (a3[3] & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_19:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_14;
  }

  v9 = v8;
  v10 = v7;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v14, v15, v16, v17, v18, v19, v20, v21))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_14;
  }

  if (remoteXPCMutableMovie_GetObjectID(v10, &v22))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_19();
  v11 = FigXPCCreateBasicMessage();
  if (v11 || (xpc_dictionary_set_int64(v23, "TrackID", v9), OUTLINED_FUNCTION_1_68(), v11 = FigXPCMessageSetCMTimeRange(), v11))
  {
    v4 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_14:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(gMutableMovieRemoteClient, v12, "remoteXPCMutableMovie_InsertEmptyTrackSegment");
  return v4;
}

uint64_t remoteXPCMutableMovie_InsertEmptySegment(uint64_t a1, void *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  if (a2[2] || (OUTLINED_FUNCTION_132(), !v3) || a2[5] || (OUTLINED_FUNCTION_132(), !v3) || (a2[3] & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_18:
    v8 = ObjectID;
    goto LABEL_13;
  }

  v5 = v4;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v11, v12, v13, v14, v15, v16, v17, v18))
  {
    v8 = 0;
    goto LABEL_13;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(v5, v19);
  if (ObjectID)
  {
    goto LABEL_18;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (OUTLINED_FUNCTION_1_68(), v7 = FigXPCMessageSetCMTimeRange(), v7))
  {
    v8 = v7;
  }

  else
  {
    v8 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_13:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v9, "remoteXPCMutableMovie_InsertEmptySegment");
  return v8;
}

uint64_t remoteXPCMutableMovie_DeleteTrackSegment(uint64_t a1, int a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_6:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_7;
  }

  v3 = a1;
  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v8, v9, v10, v11, v12, v13, v14, v15))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_7;
  }

  if (remoteXPCMutableMovie_GetObjectID(v3, &v16))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_14_19();
  v7 = FigXPCCreateBasicMessage();
  if (v7 || (xpc_dictionary_set_int64(v17, "TrackID", a2), OUTLINED_FUNCTION_1_68(), v7 = FigXPCMessageSetCMTimeRange(), v7))
  {
    v3 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(gMutableMovieRemoteClient, v4, "remoteXPCMutableMovie_DeleteTrackSegment");
  return v3;
}

uint64_t remoteXPCMutableMovie_DeleteSegment(uint64_t a1, uint64_t a2)
{
  v16[0] = 0;
  v16[1] = 0;
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
LABEL_5:
    v3 = ObjectID;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_7_27();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v8, v9, v10, v11, v12, v13, v14, v15))
  {
    v3 = 0;
    goto LABEL_6;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, v16);
  if (ObjectID)
  {
    goto LABEL_5;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7 || (OUTLINED_FUNCTION_1_68(), v7 = FigXPCMessageSetCMTimeRange(), v7))
  {
    v3 = v7;
  }

  else
  {
    v3 = FigXPCRemoteClientSendSyncMessage();
  }

LABEL_6:
  FigXPCRelease();
  OUTLINED_FUNCTION_6_18(gMutableMovieRemoteClient, v4, "remoteXPCMutableMovie_DeleteSegment");
  return v3;
}

uint64_t remoteXPCMutableMovie_ScaleTrackSegment(uint64_t a1, int a2, uint64_t a3)
{
  v25 = 0;
  v26 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_6:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_17_12();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v15, v17, v18, v20, v21, v22, v23, v24))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_7;
  }

  if (remoteXPCMutableMovie_GetObjectID(v3, &v25))
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_14_19();
  v8 = FigXPCCreateBasicMessage();
  if (v8 || (xpc_dictionary_set_int64(v26, "TrackID", a2), v16 = *a3, v19 = *(a3 + 16), OUTLINED_FUNCTION_10_24(), v8 = FigXPCMessageSetCMTimeRange(), v8) || (v8 = OUTLINED_FUNCTION_15_17(v8, 0x196ECE8E8, v9, v10, v11, v12, v13, v14, v16, v19), v8))
  {
    v3 = v8;
  }

  else
  {
    FigXPCRemoteClientSendSyncMessage();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_7:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(gMutableMovieRemoteClient, v5, "remoteXPCMutableMovie_ScaleTrackSegment");
  return v3;
}

uint64_t remoteXPCMutableMovie_ScaleSegment(uint64_t a1, uint64_t a2)
{
  v23[0] = 0;
  v23[1] = 0;
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, v16);
LABEL_5:
    OUTLINED_FUNCTION_24_11();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_17_12();
  if (!OUTLINED_FUNCTION_3_50(MEMORY[0x1E6960CC0], v13, v15, v16, v18, v19, v20, v21, v22))
  {
    OUTLINED_FUNCTION_23_16();
    goto LABEL_6;
  }

  if (remoteXPCMutableMovie_GetObjectID(v2, v23))
  {
    goto LABEL_5;
  }

  v6 = FigXPCCreateBasicMessage();
  if (v6 || (v14 = *a2, v17 = *(a2 + 16), OUTLINED_FUNCTION_10_24(), v6 = FigXPCMessageSetCMTimeRange(), v6) || (v6 = OUTLINED_FUNCTION_15_17(v6, 0x196ECE8E8, v7, v8, v9, v10, v11, v12, v14, v17), v6))
  {
    v2 = v6;
  }

  else
  {
    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_25_14();
  }

LABEL_6:
  FigXPCRelease();
  OUTLINED_FUNCTION_22_13(gMutableMovieRemoteClient, v4, "remoteXPCMutableMovie_ScaleSegment");
  return v2;
}

uint64_t remoteXPCMutableMovie_InsertSegmentFromTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, unsigned int a7)
{
  v18 = 0;
  xdict = 0;
  v16 = 0;
  value = 0;
  cf = 0;
  if (!a4 || (*(a5 + 12) & 1) == 0 || (*(a5 + 36) & 1) == 0 || *(a5 + 5) || (*(a5 + 3) & 0x8000000000000000) != 0 || *(a6 + 2))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v18);
    if (!ObjectID)
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        if (!FigRemote_ShouldConnectToMediaparserdForFileParsing() || (ObjectID = remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(a1, a2, xdict, &cf), !ObjectID))
        {
          ObjectID = FigFormatReaderXPCRemoteGetObjectID(a3, &value);
          if (!ObjectID)
          {
            xpc_dictionary_set_uint64(xdict, "FormatReader", value);
            ObjectID = FigTrackReaderXPCRemoteGetObjectID(a4, &v16);
            if (!ObjectID)
            {
              xpc_dictionary_set_uint64(xdict, "TrackReader", v16);
              xpc_dictionary_set_int64(xdict, "TrackID", a2);
              OUTLINED_FUNCTION_10_24();
              ObjectID = FigXPCMessageSetCMTimeRange();
              if (!ObjectID)
              {
                ObjectID = FigXPCMessageSetCMTime();
                if (!ObjectID)
                {
                  xpc_dictionary_set_uint64(xdict, "Flags", a7);
                  if (a7)
                  {
                    ObjectID = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
                  }

                  else
                  {
                    ObjectID = FigXPCRemoteClientSendSyncMessage();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v8 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t remoteXPCMutableMovie_InsertSegmentFromFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = v6;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  if (!a2 || (*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 40) || (*(a3 + 24) & 0x8000000000000000) != 0 || *(a4 + 16))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_6:
    v5 = ObjectID;
    goto LABEL_7;
  }

  ObjectID = remoteXPCMutableMovie_GetObjectID(a1, &v39);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  ObjectID = FigFormatReaderXPCRemoteGetObjectID(a2, &v38);
  if (ObjectID)
  {
    goto LABEL_6;
  }

  ObjectID = FigXPCCreateBasicMessage();
  if (ObjectID)
  {
    goto LABEL_6;
  }

  if (FigRemote_ShouldConnectToMediaparserdForFileParsing())
  {
    v14 = v40;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    value = 0;
    v16 = xpc_array_create(0, 0);
    if (v16)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v18 = *(DerivedStorage + 16);
        if (!v18 || CFSetContainsValue(*(DerivedStorage + 32), v18))
        {
LABEL_25:
          xdicta = v14;
          Count = CFDictionaryGetCount(*(DerivedStorage + 24));
          if (Count)
          {
            v22 = Count;
            if ((Count - 0x2000000000000000) < 0xE000000000000001 || (v24 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL)) == 0)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_11();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v14, LODWORD(cf[0]));
              OUTLINED_FUNCTION_19_15();
              v23 = 0;
              goto LABEL_45;
            }

            v23 = v24;
            v32 = a5;
            v25 = Mutable;
            v26 = v16;
            CFDictionaryGetKeysAndValues(*(DerivedStorage + 24), 0, v24);
            v27 = 0;
            while (1)
            {
              if (!CFSetContainsValue(*(DerivedStorage + 32), v23[v27]))
              {
                if (FigFileDoesFileExist())
                {
                  v28 = 2;
                }

                else
                {
                  v28 = 18;
                }

                if (remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(v23[v27], v28, cf, &value))
                {
                  OUTLINED_FUNCTION_19_15();
                  Mutable = v25;
                  a5 = v32;
                  goto LABEL_45;
                }

                xpc_array_set_uint64(v26, 0xFFFFFFFFFFFFFFFFLL, value);
                v7 = cf[0];
                CFArrayAppendValue(v25, cf[0]);
                if (v7)
                {
                  CFRelease(v7);
                  cf[0] = 0;
                }

                CFSetAddValue(*(DerivedStorage + 32), v23[v27]);
              }

              if (v22 == ++v27)
              {
                v16 = v26;
                Mutable = v25;
                a5 = v32;
                goto LABEL_42;
              }
            }
          }

          v23 = 0;
LABEL_42:
          if (xpc_array_get_count(v16))
          {
            xpc_dictionary_set_value(xdicta, "ByteStreamArray", v16);
          }

          v5 = 0;
          v7 = Mutable;
          Mutable = 0;
LABEL_45:
          free(v23);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          FigXPCRelease();
          if (v5)
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }

        if (FigFileDoesFileExist())
        {
          v19 = 2;
        }

        else
        {
          v19 = 18;
        }

        if (!remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(*(DerivedStorage + 16), v19, cf, &value))
        {
          xpc_array_set_uint64(v16, 0xFFFFFFFFFFFFFFFFLL, value);
          v20 = cf[0];
          CFArrayAppendValue(Mutable, cf[0]);
          if (v20)
          {
            CFRelease(v20);
            cf[0] = 0;
          }

          CFSetAddValue(*(DerivedStorage + 32), *(DerivedStorage + 16));
          goto LABEL_25;
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, xdict, LODWORD(cf[0]));
      }

      OUTLINED_FUNCTION_19_15();
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, xdict, LODWORD(cf[0]));
      OUTLINED_FUNCTION_19_15();
      Mutable = 0;
    }

    v23 = 0;
    goto LABEL_45;
  }

  v7 = 0;
LABEL_50:
  xpc_dictionary_set_uint64(v40, "FormatReader", v38);
  v29 = *(a3 + 16);
  *cf = *a3;
  v36 = v29;
  v37 = *(a3 + 32);
  v30 = FigXPCMessageSetCMTimeRange();
  if (!v30)
  {
    *cf = *a4;
    *&v36 = *(a4 + 16);
    v30 = FigXPCMessageSetCMTime();
    if (!v30)
    {
      xpc_dictionary_set_uint64(v40, "Flags", a5);
      if (a5)
      {
        v30 = FigXPCRemoteClientSendSyncMessageWithNoTimeoutCreatingReply();
      }

      else
      {
        v30 = FigXPCRemoteClientSendSyncMessage();
      }
    }
  }

  v5 = v30;
LABEL_56:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

double remoteXPCMutableMovie_storeSandboxRegistration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void remoteXPCMutableMovie_GetObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableMovie_GetObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void remoteXPCMutableMovie_GetObjectID_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double fgGetDurationFromBlockBuffer@<D0>(CMTime *__return_ptr a1@<X8>, OpaqueCMBlockBuffer *a2@<X0>)
{
  v3 = *MEMORY[0x1E6960C70];
  *a1 = **&MEMORY[0x1E6960C70];
  valuePtr = 0.0;
  if (a2)
  {
    v4 = CMGetAttachment(a2, @"FBPAKey_ApproximateDuration", 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr))
        {
          CMTimeMakeWithSeconds(a1, valuePtr, 90000);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          *&v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, LODWORD(valuePtr), v10);
        }
      }
    }
  }

  return *&v3;
}

uint64_t fgCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFStringRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_69();
  if (v8)
  {
    v10 = 4294954511;
  }

  else if (CFEqual(a2, @"FMFD_Type"))
  {
    v9 = CFStringCreateWithCString(a3, "GAP", 0x8000100u);
    v10 = 0;
    *a4 = v9;
  }

  else
  {
    v10 = 4294954512;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fgCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_1_69();
  if (v6)
  {
    v9 = 4294951251;
  }

  else
  {
    v7 = *(DerivedStorage + 13) != 0;
    while (1)
    {
      v8 = v7;
      if (*(DerivedStorage + 96 + 4 * v7) == a2)
      {
        break;
      }

      v7 = 1;
      if (v8)
      {
        v9 = 4294951254;
        goto LABEL_9;
      }
    }

    if (*(DerivedStorage + 8 * v7 + 104))
    {
      v9 = 0;
      *a3 = FigFormatDescriptionRetain();
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
      v9 = v10;
    }
  }

LABEL_9:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fgInstallCallbacksForTrack(uint64_t a1, int a2, void *a3, uint64_t a4)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (a3 && *(DerivedStorage + 8))
  {
    v10 = 4294951251;
  }

  else
  {
    v8 = *(DerivedStorage + 13) != 0;
    while (1)
    {
      v9 = v8;
      if (*(DerivedStorage + 96 + 4 * v8) == a2)
      {
        break;
      }

      v8 = 1;
      if (v9)
      {
        v10 = 4294951254;
        goto LABEL_11;
      }
    }

    v11 = (DerivedStorage + 24 * v8 + 32);
    if (a3)
    {
      *v11 = *a3;
      *(DerivedStorage + 24 * v8 + 40) = a3[1];
      *(DerivedStorage + 24 * v8 + 48) = a3[2];
    }

    else
    {
      *v11 = 0;
      *(DerivedStorage + 24 * v8 + 40) = 0;
      *(DerivedStorage + 24 * v8 + 48) = 0;
    }

    v10 = 0;
    *(DerivedStorage + 8 * v8 + 80) = a4;
  }

LABEL_11:
  FigSimpleMutexUnlock();
  return v10;
}

void FigManifoldCreateForGap_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fgManifoldInjectData(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void fgNoteStreamEnd(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigSCCFormatReaderCreateFromStream(const void *a1, const void *a2, uint64_t a3, CFTypeRef *a4, CFArrayRef *a5)
{
  if (!a1 || !a4)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v21 = v47;
    goto LABEL_21;
  }

  FigCFDictionaryGetBooleanIfPresent();
  FigFormatReaderGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    v21 = v9;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51);
    goto LABEL_21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v56, 0, sizeof(v56));
  CMTimeMake(&v56, 1001, 30000);
  *value = 0u;
  v55 = 0u;
  if (_MergedGlobals_46 != -1)
  {
    dispatch_once_f(&_MergedGlobals_46, 0, sccInfoRegisterType);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51);
    v21 = v48;
    goto LABEL_69;
  }

  v12 = Instance;
  if (a2)
  {
    v13 = CFRetain(a2);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 16) = v13;
  *(v12 + 24) = CFRetain(a1);
  *(v12 + 65) = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v15)
  {
    v15(CMBaseObject, 0x1F0B330B8, *MEMORY[0x1E695E4D0]);
  }

  value[0] = 0;
  value[1] = sccInfoCaptionDataInfoCallback;
  *&v55 = sccInfoEndOfFileCallback;
  *(&v55 + 1) = 0;
  v16 = FigSCCParserCreate(a1, value, v12, 1, a2, (v12 + 56));
  if (v16 || (v53 = v56, v17 = *(v12 + 56), v57 = v56, FigSCCParserSetFrameDuration(v17, &v57.value), v16))
  {
LABEL_68:
    v21 = v16;
    CFRelease(v12);
LABEL_69:
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  *(v12 + 32) = v53;
  Mutable = CFArrayCreateMutable(a2, 0, 0);
  *(v12 + 80) = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51);
    goto LABEL_68;
  }

  *DerivedStorage = v12;
LABEL_16:
  v19 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  DerivedStorage[1] = v19;
  if (v19)
  {
    v20 = *DerivedStorage;
    if (*(*DerivedStorage + 64))
    {
LABEL_18:
      v21 = 0;
      *a4 = 0;
      goto LABEL_21;
    }

    v22 = FigSCCParserParse(*(v20 + 7));
    v21 = 4294954450;
    switch(v22)
    {
      case 0xFFFFBF48:
      case 0xFFFFBF4B:
      case 0xFFFFBF4C:
      case 0xFFFFBF4D:
        v21 = 4294954448;
        goto LABEL_21;
      case 0xFFFFBF49:
      case 0xFFFFBF4A:
        goto LABEL_66;
      case 0xFFFFBF4E:
        v21 = 4294954447;
        goto LABEL_21;
      case 0xFFFFBF4F:
        v21 = 4294954516;
        goto LABEL_21;
      case 0xFFFFBF50:
        goto LABEL_21;
      default:
        if (v22)
        {
          goto LABEL_66;
        }

        v24 = *(v20 + 10);
        if (!v24)
        {
          goto LABEL_52;
        }

        Count = CFArrayGetCount(v24);
        v57.value = 0;
        v50 = Count;
        if (Count < 1)
        {
          goto LABEL_52;
        }

        v26 = 0;
        v52 = *MEMORY[0x1E695E4C0];
        break;
    }

    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v20 + 10), v26);
      v28 = *ValueAtIndex;
      value[0] = 0;
      value[1] = 0;
      v29 = ValueAtIndex[7];
      v30 = v29 ? CFArrayGetCount(v29) : 0;
      value[0] = sccInfoCaptionCoverterOutputCallback;
      value[1] = ValueAtIndex;
      v31 = FigCLCPCaptionGroupConverterFromSampleBufferCreate(value, v28, &v57.value);
      if (v31)
      {
        break;
      }

      FigCaptionGroupConverterFromSampleBufferGetCMBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v34)
      {
        goto LABEL_47;
      }

      v51 = v26;
      v31 = v34(v33, 0x1F0B206B8, v52);
      if (v31)
      {
        break;
      }

      if (v30 >= 1)
      {
        v35 = 0;
        while (1)
        {
          v36 = CFArrayGetValueAtIndex(ValueAtIndex[7], v35);
          v37 = v57.value;
          v38 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v38)
          {
            break;
          }

          v31 = v38(v37, v36);
          if (v31)
          {
            goto LABEL_48;
          }

          if (v30 == ++v35)
          {
            goto LABEL_39;
          }
        }

LABEL_47:
        v21 = 4294954514;
        goto LABEL_49;
      }

LABEL_39:
      v39 = v57.value;
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v40)
      {
        goto LABEL_47;
      }

      v31 = v40(v39);
      if (v31)
      {
        break;
      }

      if (v57.value)
      {
        CFRelease(v57.value);
        v57.value = 0;
      }

      v26 = v51 + 1;
      if (v51 + 1 == v50)
      {
        v21 = 0;
        goto LABEL_49;
      }
    }

LABEL_48:
    v21 = v31;
LABEL_49:
    if (v57.value)
    {
      CFRelease(v57.value);
    }

    if (!v21)
    {
LABEL_52:
      v41 = *(v20 + 10);
      if (v41)
      {
        v42 = CFArrayGetCount(v41);
        if (v42 >= 1)
        {
          v43 = v42;
          for (i = 0; i != v43; ++i)
          {
            value[0] = 0;
            FigTrackReaderGetClassID();
            if (CMDerivedObjectCreate())
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51);
            }

            else
            {
              v45 = CMBaseObjectGetDerivedStorage();
              *v45 = CFRetain(v20);
              v45[1] = i;
              v46 = value[0];
              if (value[0])
              {
                CFArrayAppendValue(DerivedStorage[1], value[0]);
                CFRelease(v46);
              }
            }
          }
        }
      }

      *(v20 + 64) = 1;
      goto LABEL_18;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_3();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51);
LABEL_66:
    v21 = v22;
  }

LABEL_21:
  if (a5)
  {
    *a5 = 0;
  }

  return v21;
}

uint64_t sccInfoCaptionDataInfoCallback(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v58 = 0;
  v47 = *MEMORY[0x1E6960C70];
  v56 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v57 = v5;
  v55 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  Frame = FigSCCParserCaptionDataInfoGetFrame(a1, 0, &v58);
  if (Frame)
  {
    return Frame;
  }

  DTS = FigSCCParserCaptionDataInfoGetDTS(a1, &v56);
  if (DTS)
  {
    goto LABEL_64;
  }

  DTS = FigSCCParserCaptionDataInfoGetChannel(a1, &v55 + 1, &v55, &v54);
  if (DTS)
  {
    goto LABEL_64;
  }

  if (v55 != 1668314222 || ((v54 - 1) | (HIDWORD(v55) - 1)) > 1)
  {
    v9 = 0;
    goto LABEL_54;
  }

  v10 = v54 + 2 * HIDWORD(v55) - 2;
  v11 = *(a2 + 80);
  if (!v11)
  {
    goto LABEL_17;
  }

  Count = CFArrayGetCount(v11);
  if (Count < 1)
  {
LABEL_15:
    v16 = *(a2 + 80);
    if (v16)
    {
      v17 = CFArrayGetCount(v16) + 1;
      goto LABEL_18;
    }

LABEL_17:
    v17 = 1;
LABEL_18:
    v18 = MEMORY[0x19A8CC720](v4, 72, 0x106004041A80DD0, 0);
    v19 = v18;
    if (!v18)
    {
      goto LABEL_71;
    }

    *(v18 + 64) = 0;
    *(v18 + 32) = 0u;
    *(v18 + 48) = 0u;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    if (v4)
    {
      v20 = CFRetain(v4);
    }

    else
    {
      v20 = 0;
    }

    v21 = 0;
    *v19 = v20;
    v19[2] = v17;
    v19[3] = v10;
    values[0].value = 0;
    cf.duration.value = 0;
    formatDescriptionOut.value = 0;
    if (v10 != 1)
    {
      keys = @"cccc";
      Mutable = CFDataCreateMutable(v4, 8);
      values[0].value = Mutable;
      if (!Mutable || (v23 = Mutable, *bytes = 942683748, CFDataAppendBytes(Mutable, bytes, 4), *v59 = bswap32(v10), CFDataAppendBytes(v23, v59, 4), (cf.duration.value = CFDictionaryCreate(v4, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0) || (v24 = CFDictionaryCreate(v4, MEMORY[0x1E69600A0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_20_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v45, v46);
        v9 = v43;
        goto LABEL_31;
      }

      v21 = v24;
    }

    v9 = CMFormatDescriptionCreate(v4, 0x636C6370u, 0x63363038u, v21, &formatDescriptionOut);
    if (!v9)
    {
      *(v19 + 2) = formatDescriptionOut.value;
    }

    if (v21)
    {
      CFRelease(v21);
    }

LABEL_31:
    if (cf.duration.value)
    {
      CFRelease(cf.duration.value);
    }

    if (values[0].value)
    {
      CFRelease(values[0].value);
    }

    if (v9)
    {
      sccInfoTrackRelease(v19);
      goto LABEL_54;
    }

    v25 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    *(v19 + 7) = v25;
    if (v25)
    {
      v26 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
      *(v19 + 8) = v26;
      if (v26)
      {
        sccInfoTrackRelease(0);
LABEL_39:
        CFArrayAppendValue(*(a2 + 80), v19);
        goto LABEL_40;
      }
    }

LABEL_71:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v45, v46);
    v9 = v42;
    sccInfoTrackRelease(v19);
    if (v9)
    {
      goto LABEL_54;
    }

    v19 = 0;
    goto LABEL_39;
  }

  v13 = Count;
  v14 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 80), v14);
    if (ValueAtIndex[3] == v10)
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_15;
    }
  }

  v19 = ValueAtIndex;
LABEL_40:
  DTS = FigSCCParserCaptionDataInfoGetCaptionData(a1, &v53);
  if (DTS)
  {
    goto LABEL_64;
  }

  v27 = *(v19 + 7);
  if (!v27 || !CFArrayGetCount(v27))
  {
    OUTLINED_FUNCTION_2_63();
    v46 = *MEMORY[0x1E6960CC0];
    *&cf.duration.value = *MEMORY[0x1E6960CC0];
    v28 = *(MEMORY[0x1E6960CC0] + 16);
    cf.duration.epoch = v28;
    if (CMTimeCompare(values, &cf.duration))
    {
      OUTLINED_FUNCTION_2_63();
      *&values[1].value = v46;
      values[1].epoch = v28;
      *&values[2].value = v47;
      values[2].epoch = v5;
      memcpy(&cf, values, sizeof(cf));
      DTS = sccInfoEmptyMediaSampleBufferCreate(&cf, v4, &v51);
      if (DTS)
      {
        goto LABEL_64;
      }

      CFArrayAppendValue(*(v19 + 7), v51);
    }
  }

  v29 = (v19 + 12);
  v30 = *(v19 + 6);
  if (v30)
  {
    *&cf.duration.value = v56;
    cf.duration.epoch = v57;
    v40 = *v30;
    formatDescriptionOut.epoch = *(v30 + 16);
    *&formatDescriptionOut.value = v40;
    CMTimeSubtract(values, &cf.duration, &formatDescriptionOut);
    *(v30 + 24) = values[0];
    DTS = sccInfoSampleBufferCreate(v30, *(v19 + 2), v4, &v52);
    if (!DTS)
    {
      CFArrayAppendValue(*(v19 + 7), v52);
      goto LABEL_45;
    }

LABEL_64:
    v9 = DTS;
    goto LABEL_54;
  }

LABEL_45:
  v31 = v58;
  v32 = v53;
  OUTLINED_FUNCTION_2_63();
  BytePtr = CFDataGetBytePtr(v32);
  Length = CFDataGetLength(v32);
  formatDescriptionOut.value = 0;
  keys = 0;
  if (v10 - 1 >= 2)
  {
    v35 = 1667527730;
  }

  else
  {
    v35 = 1667522932;
  }

  v36 = MEMORY[0x19A8CC720](v4, 64, 0x1020040BABC55ACLL, 0);
  v37 = v36;
  cf.duration.value = v36;
  if (v36)
  {
    v36[2] = 0u;
    v36[3] = 0u;
    *v36 = 0u;
    v36[1] = 0u;
    v38 = CMBlockBufferCreateWithMemoryBlock(v4, 0, Length + 8, v4, 0, 0, Length + 8, 1u, &formatDescriptionOut);
    if (v38 || (keys = _byteswap_uint64(__PAIR64__(Length + 8, v35)), v38 = CMBlockBufferReplaceDataBytes(&keys, formatDescriptionOut.value, 0, 8uLL), v38) || (v38 = CMBlockBufferReplaceDataBytes(BytePtr, formatDescriptionOut.value, 8uLL, Length), v38))
    {
      v9 = v38;
      sccInfoSCCSampleReleaseAndClear(v4, &cf);
      goto LABEL_54;
    }

    *v37 = values[0];
    *(v37 + 12) = v31;
    *(v37 + 7) = formatDescriptionOut.value;
    cf.duration.value = 0;
    sccInfoSCCSampleReleaseAndClear(v4, &cf);
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v45, v46);
    v9 = v41;
    sccInfoSCCSampleReleaseAndClear(v4, &cf);
    if (v9)
    {
      goto LABEL_54;
    }
  }

  sccInfoSCCSampleReleaseAndClear(v4, v29);
  v9 = 0;
  *v29 = v37;
LABEL_54:
  if (v51)
  {
    CFRelease(v51);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return v9;
}

uint64_t sccInfoEmptyMediaSampleBufferCreate(CMSampleTimingInfo *sampleTimingArray, CFAllocatorRef allocator, void *a3)
{
  v6 = 0;
  v4 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, 1, sampleTimingArray, 0, 0, &v6);
  if (!v4)
  {
    CMSetAttachment(v6, *MEMORY[0x1E69604B0], *MEMORY[0x1E695E4D0], 1u);
    *a3 = v6;
  }

  return v4;
}

uint64_t sccInfoSampleBufferCreate(__int128 *a1, const opaqueCMFormatDescription *a2, const __CFAllocator *a3, void *a4)
{
  sampleSizeArray = CMBlockBufferGetDataLength(*(a1 + 7));
  v10 = 0;
  *&sampleTimingArray.duration.value = *(a1 + 24);
  sampleTimingArray.duration.epoch = *(a1 + 5);
  v8 = *a1;
  sampleTimingArray.presentationTimeStamp.epoch = *(a1 + 2);
  *&sampleTimingArray.presentationTimeStamp.value = v8;
  sampleTimingArray.decodeTimeStamp = **&MEMORY[0x1E6960C70];
  result = CMSampleBufferCreate(a3, *(a1 + 7), 1u, 0, 0, a2, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v10);
  if (!result)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t sccInfoCaptionCoverterOutputCallback(uint64_t a1, uint64_t a2, const __CFAllocator **a3)
{
  v5 = *a3;
  v16 = 0;
  v17 = 0;
  OUTLINED_FUNCTION_3_51();
  *&time2.duration.value = *(a2 + 24);
  time2.duration.epoch = *(a2 + 40);
  v6 = FigSampleBufferCreateForCaptionGroup();
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v7 = a3[8];
    if (v7 && CFArrayGetCount(v7) || (OUTLINED_FUNCTION_3_51(), v13 = *MEMORY[0x1E6960CC0], *&time2.duration.value = *MEMORY[0x1E6960CC0], v8 = *(MEMORY[0x1E6960CC0] + 16), time2.duration.epoch = v8, !CMTimeCompare(time1, &time2.duration)))
    {
      v9 = 0;
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_3_51();
    *&time1[1].value = v13;
    time1[1].epoch = v8;
    time1[2] = **&MEMORY[0x1E6960C70];
    memcpy(&time2, time1, sizeof(time2));
    v12 = sccInfoEmptyMediaSampleBufferCreate(&time2, v5, &v16);
    if (!v12)
    {
      v9 = v16;
      CFArrayAppendValue(a3[8], v16);
LABEL_6:
      CFArrayAppendValue(a3[8], v17);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v10 = v12;
    v9 = v16;
    if (v16)
    {
LABEL_7:
      CFRelease(v9);
    }
  }

LABEL_8:
  if (v17)
  {
    CFRelease(v17);
  }

  return v10;
}

uint64_t sccCursorService_CreateCursorAtPresentationTimeStamp(uint64_t a1, CMTime *a2, void *a3, char *a4, char *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *DerivedStorage;
  v10 = *(DerivedStorage + 8);
  v12 = *(DerivedStorage + 16);
  v18 = 0;
  v13 = sccCursorCreate(v11, v10, v12, *(v11 + 16), &v18);
  if (!v13)
  {
    v14 = v18;
    v15 = CMBaseObjectGetDerivedStorage();
    v17 = *a2;
    sccCursorMoveToDTS(v15, &v17, a4, a5);
    *a3 = v14;
  }

  return v13;
}

uint64_t sccCursorService_CreateCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v4 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 16);
  v10 = 0;
  v7 = sccCursorCreate(v5, v4, v6, *(v5 + 16), &v10);
  if (!v7)
  {
    v8 = v10;
    *(CMBaseObjectGetDerivedStorage() + 24) = 0;
    *a2 = v8;
  }

  return v7;
}

uint64_t sccCursorService_CreateCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *DerivedStorage;
  v5 = *(DerivedStorage + 8);
  v6 = *(DerivedStorage + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), v5);
  v8 = 64;
  if (!v6)
  {
    v8 = 56;
  }

  v9 = *&ValueAtIndex[v8];
  if (v9)
  {
    v10 = CFArrayGetCount(v9) - 1;
  }

  else
  {
    v10 = -1;
  }

  v14 = 0;
  v11 = sccCursorCreate(v4, v5, v6, *(v4 + 16), &v14);
  if (!v11)
  {
    v12 = v14;
    *(CMBaseObjectGetDerivedStorage() + 24) = v10;
    *a2 = v12;
  }

  return v11;
}

void sccFormatReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccFormatReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccInfoCopyFigMatrixAsArray_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccInfoCopyFigMatrixAsArray_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sccInfoMalformedDataCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sccInfoMalformedDataCallback_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sccInfoMalformedDataCallback_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double sccInfoMalformedDataCallback_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void sccTrackReader_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccTrackReader_CopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sccCursorServiceCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double sccCursorCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void sccCursorCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccCursor_CopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double sccCursor_Copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void sccCursor_CreateSampleBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccCursor_CreateSampleBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void sccCursor_CreateSampleBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigTextContainerCreateWithCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigTextContainerCreateWithCFData_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figTextContainerCreateWithCFStringOrDataPtr_internal_cold_1(const void *a1, _DWORD *a2)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v4;

  CFRelease(a1);
}

void figTextContainerCreateWithCFStringOrDataPtr_internal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_67();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t ckcb_invalidate(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v107 = 0;
  v108 = 0;
  FigSimpleMutexLock();
  v2 = CMBaseObjectGetDerivedStorage();
  if (!*(v2 + 8))
  {
    if (dword_1EAF16FE0)
    {
      v10 = OUTLINED_FUNCTION_1_70(v2, v3, v4, v5, v6, v7, v8, v9, v82, v86, v90, v94, SBYTE2(v94), SBYTE3(v94), SHIDWORD(v94));
      v18 = OUTLINED_FUNCTION_180_0(v10, v11, v12, v13, v14, v15, v16, v17, v83, v87, v91, v95, v98, v101, v104);
      v19 = OUTLINED_FUNCTION_124_0(v18);
      if (v19)
      {
        v24 = *(DerivedStorage + 56);
        v109 = 136315650;
        v110 = "ckcb_invalidate";
        v111 = 2114;
        v112 = v24;
        v113 = 2082;
        v114 = "ckcb_invalidate";
        LODWORD(v86) = 32;
        v82 = &v109;
        OUTLINED_FUNCTION_4_49(v19, v20, v115, v21, &dword_1962D5000, v22, v23, " %s: 📲 [API ENTRY => %{public}@]: %{public}s called");
        OUTLINED_FUNCTION_6_40();
      }

      OUTLINED_FUNCTION_0_68();
    }

    *(DerivedStorage + 8) = 1;
    v25 = *(DerivedStorage + 16);
    VTable = CMBaseObjectGetVTable();
    v35 = *(VTable + 16);
    v34 = VTable + 16;
    v36 = *(v35 + 136);
    if (v36)
    {
      v34 = v36(v25, &v108);
    }

    if (dword_1EAF16FE0)
    {
      v37 = OUTLINED_FUNCTION_1_70(v34, v27, v28, v29, v30, v31, v32, v33, v82, v86, v90, v94, SBYTE2(v94), SBYTE3(v94), SHIDWORD(v94));
      v45 = OUTLINED_FUNCTION_180_0(v37, v38, v39, v40, v41, v42, v43, v44, v84, v88, v92, v96, v99, v102, v105);
      if (OUTLINED_FUNCTION_124_0(v45))
      {
        OUTLINED_FUNCTION_2_64();
        OUTLINED_FUNCTION_4_49(v46, v47, v115, v48, &dword_1962D5000, v49, v50, " %s: ✂️ [%{public}@ =[DISASSOCIATED OBJECT]=> %{public}@]: Disassociating default boss from its compound boss");
        OUTLINED_FUNCTION_6_40();
      }

      OUTLINED_FUNCTION_0_68();
    }

    v51 = *(DerivedStorage + 32);
    if (v51)
    {
      v52 = CMBaseObjectGetVTable();
      v61 = *(v52 + 16);
      v60 = v52 + 16;
      v62 = *(v61 + 136);
      if (v62)
      {
        v60 = v62(v51, &v107);
      }

      if (dword_1EAF16FE0)
      {
        v63 = OUTLINED_FUNCTION_1_70(v60, v53, v54, v55, v56, v57, v58, v59, v82, v86, v90, v94, SBYTE2(v94), SBYTE3(v94), SHIDWORD(v94));
        v71 = OUTLINED_FUNCTION_180_0(v63, v64, v65, v66, v67, v68, v69, v70, v85, v89, v93, v97, v100, v103, v106);
        if (OUTLINED_FUNCTION_124_0(v71))
        {
          OUTLINED_FUNCTION_2_64();
          OUTLINED_FUNCTION_4_49(v72, v73, v115, v74, &dword_1962D5000, v75, v76, " %s: ✂️ [%{public}@ =[DISASSOCIATED OBJECT]=> %{public}@]: Disassociating client-managed boss from its compound boss");
          OUTLINED_FUNCTION_6_40();
        }

        OUTLINED_FUNCTION_0_68();
      }
    }

    v77 = *(DerivedStorage + 16);
    if (v77)
    {
      CFRelease(v77);
    }

    v78 = *(DerivedStorage + 32);
    if (v78)
    {
      CFRelease(v78);
    }

    v79 = *(DerivedStorage + 24);
    if (v79)
    {
      CFRelease(v79);
    }

    v80 = *(DerivedStorage + 40);
    if (v80)
    {
      CFRelease(v80);
    }

    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t ckcb_finalize(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ckcb_invalidate(a1);
  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = OUTLINED_FUNCTION_180_0(os_log_and_send_and_compose_flags_and_os_log_type, v4, v5, v6, v7, v8, v9, v10, v19, v20, v21, *v22, v22[2], OS_LOG_TYPE_DEFAULT, 0);
    v12 = OUTLINED_FUNCTION_124_0(v11);
    if (v12)
    {
      OUTLINED_FUNCTION_4_49(v12, v13, v23, v14, &dword_1962D5000, v15, v16, " %s: 💥 [%{public}@ FREED]");
      OUTLINED_FUNCTION_6_40();
    }

    OUTLINED_FUNCTION_0_68();
  }

  v17 = *(DerivedStorage + 56);
  if (v17)
  {
    CFRelease(v17);
  }

  return FigSimpleMutexDestroy();
}

uint64_t ckcb_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    goto LABEL_7;
  }

  v6 = *(DerivedStorage + 16);
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7(v6, a2, a3);
  if (v8)
  {
LABEL_7:
    v9 = v8;
    goto LABEL_9;
  }

  v9 = *(DerivedStorage + 32);
  if (v9)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v10)
    {
      v8 = v10(v9, a2, a3);
      goto LABEL_7;
    }

LABEL_8:
    v9 = 4294954514;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return v9;
}

BOOL ckcb_processRequest_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

void FigCSSCodePointTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSCodePointTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSNumberTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSNumberTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSNumericTokenCreate_internal_cold_1(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v4);
  *a2 = v5;
  CFRelease(a1);
}

void figCSSNumericTokenCreate_internal_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSNumericTokenCreate_internal_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSNumericTokenCreate_internal_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figCSSNumericTokenCreate_internal_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStringValueTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStringValueTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSStringValueTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSHashTokenCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSHashTokenCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_27();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSHashTokenCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSHashTokenCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenCreateSerializationString_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenCreateSerializationString_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCSSTokenCreateSerializationString_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

uint64_t FigCaptionRendererPaintOnCaptionCreate(void *a1)
{
  *a1 = 0;
  v7 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererPaintOnCaptionGetClassID_sRegisterFigCaptionRendererPaintOnCaptionBaseTypeOnce, RegisterFigCaptionRendererPaintOnCaptionBaseType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    v3 = v7;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v6 = 0;
    FigCaptionRendererCaptionCreate(&v6);
    *DerivedStorage = v6;
    *a1 = v3;
  }

  return v2;
}

void FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

size_t PostProcessPurchasedItemInternal(const __CFDictionary *a1, const __CFString *a2, void *a3, uint64_t a4, void (*a5)(uint64_t, float), uint64_t a6)
{
  __s1[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 0;
  }

  Value = CFDictionaryGetValue(a1, @"sinfs");
  v12 = Value;
  v457 = a5;
  v468 = a4;
  if (!Value)
  {
    v467 = 0;
    v460 = 0;
    v461 = 0;
    v462 = 0;
    v463 = 0;
    v469 = 0;
LABEL_254:
    v497 = -1;
    v498 = -1;
    LODWORD(v474) = 0;
    LODWORD(v472) = 0;
    v496 = -1;
    __pattern4 = 0;
    v494 = -1;
    v493 = 0;
    v492 = -1;
    v491 = 0;
    v490 = -1;
    ByteStreamSize = 4294967246;
    v489 = 0;
    if (!a4)
    {
      goto LABEL_394;
    }

    if (!v12)
    {
      goto LABEL_394;
    }

    v499 = 0;
    ByteStreamSize = GetByteStreamSize(a4, &v499);
    if (ByteStreamSize)
    {
      goto LABEL_394;
    }

    v266 = v499;
    if (v499 < 1)
    {
      ByteStreamSize = 4294967246;
      goto LABEL_394;
    }

    v470 = v12;
    LODWORD(v445) = 0;
    v267 = 0;
    v268 = v467;
    v440 = v467;
    v450 = a6;
    while (1)
    {
      if (v266 <= 0)
      {
LABEL_381:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        ByteStreamSize = v413;
        goto LABEL_393;
      }

      LODWORD(valuePtr[0]) = 0;
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_22_15();
      ReadMovieBytes(v269, v270, v271, v272);
      v273 = valuePtr[0];
      v274 = bswap32(valuePtr[0]);
      if (LODWORD(valuePtr[0]) == 0x1000000)
      {
        if (v266 <= 0xF)
        {
          goto LABEL_381;
        }
      }

      else if (v266 < v274 || v274 <= 7)
      {
        goto LABEL_381;
      }

      LODWORD(valuePtr[0]) = 0;
      v275 = OUTLINED_FUNCTION_10_25();
      ReadMovieBytes(v275, v276, 4u, v277);
      v278 = valuePtr[0];
      v279 = v267 + 8;
      if (v273 == 0x1000000)
      {
        *&valuePtr[0] = 0;
        v280 = OUTLINED_FUNCTION_10_25();
        ReadMovieBytes(v280, v281, 8u, v282);
        v274 = bswap64(*&valuePtr[0]);
        if (v274 > v266 || v274 <= 0xF)
        {
          goto LABEL_381;
        }

        v279 = v267 + 16;
      }

      v283 = 1937011555;
      if (v278 == 1987014509)
      {
        v488 = -1;
        v487 = 0;
        v486 = -1;
        v485 = 0;
        *&size[1] = -1;
        size[0] = 0;
        v483 = -1;
        v482 = 0;
        v481 = -1;
        v480 = 0;
        v478 = 0;
        v479 = -1;
        OUTLINED_FUNCTION_18_14();
        v284 = v274 - 8;
        if (v274 != 8)
        {
          break;
        }
      }

      v412 = -8;
      if (v273 == 0x1000000)
      {
        v412 = -16;
      }

LABEL_380:
      v267 = v279 + v274 + v412;
      v266 -= v274;
      if (!v266)
      {
        goto LABEL_381;
      }
    }

    v465 = 0;
    v459 = v279;
    v285 = v279;
LABEL_272:
    if (!FindAtomOffsetOfType(a4, 1953653099, v285, v284, &v488, &v487))
    {
      goto LABEL_374;
    }

    if (!FindAtomOffsetOfType(a4, 1953196132, v488, v487, &v479, &v478 + 1))
    {
      goto LABEL_318;
    }

    if (!FindAtomOffsetOfType(a4, 1835297121, v488, v487, &v486, &v485))
    {
      goto LABEL_318;
    }

    v286 = OUTLINED_FUNCTION_13_15();
    if (!FindAtomOffsetOfType(v286, v287 | 0x6D690000u, v288, v289, v290, v291))
    {
      goto LABEL_318;
    }

    if (!FindAtomOffsetOfType(a4, 1937007212, *&size[1], size[0], &v481, &v480))
    {
      goto LABEL_318;
    }

    v292 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v292, v293, 0x54u, v294);
    HIDWORD(valuePtr[0]) = bswap32(HIDWORD(valuePtr[0]));
    if (!FindAtomOffsetOfType(a4, 1751411826, v486, v485, &v483, &v482) || v482 < 0xC)
    {
      goto LABEL_318;
    }

    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1937011555, v295, v296, &v498, &v474);
    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, v283 + 23, v297, v298, &v494, &v493);
    if (v494 == -1)
    {
      OUTLINED_FUNCTION_14_20();
      FindAtomOffsetOfType(a4, v283 + 1743, v299, v300, &v494, &v493);
    }

    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1937007471, v301, v302, &v497, &v472);
    OUTLINED_FUNCTION_14_20();
    FindAtomOffsetOfType(a4, 1668232756, v303, v304, &v496, &__pattern4);
    OUTLINED_FUNCTION_14_20();
    if (!FindAtomOffsetOfType(a4, v283 + 1, v305, v306, &v490, &v489))
    {
LABEL_318:
      v497 = -1;
      v498 = -1;
      v496 = -1;
      v494 = -1;
      v492 = -1;
      v479 = -1;
      goto LABEL_319;
    }

    LODWORD(__s1[0]) = 0;
    v307 = OUTLINED_FUNCTION_2_65();
    ReadMovieBytes(v307, v308, v309, v310);
    v490 += 8;
    v489 -= 8;
    LODWORD(__len) = bswap32(__s1[0]);
    if (__len == 1936684398)
    {
      LOWORD(__s1[0]) = 0;
      v325 = OUTLINED_FUNCTION_4_50();
      ReadMovieBytes(v325, v326, 2u, v327);
      OUTLINED_FUNCTION_20_10();
      if (v99 != v100)
      {
        if (v328 == 256)
        {
          a4 = v468;
          if (IsSoundDescriptionISOv1(v468, v490, v489))
          {
            a6 = 36;
          }

          else
          {
            a6 = 52;
          }
        }

        else
        {
          a6 = 36;
          a4 = v468;
        }
      }

      else
      {
        LODWORD(__s1[0]) = 0;
        v329 = OUTLINED_FUNCTION_2_65();
        ReadMovieBytes(v329, v330, v331, v332);
        a6 = bswap32(__s1[0]);
      }

      v283 = v489 - a6;
      v338 = OUTLINED_FUNCTION_13_15();
      if (!FindAtomOffsetOfType(v338, v339 | 0x73690000u, v340, v283, v341, v342))
      {
        v352 = OUTLINED_FUNCTION_13_15();
        FindAtomOffsetOfType(v352, v353 | 0x70690000, v354, v283, v355, v356);
        OUTLINED_FUNCTION_16_16();
        if (!v357)
        {
          goto LABEL_318;
        }

        goto LABEL_286;
      }

      OUTLINED_FUNCTION_16_16();
    }

    else
    {
      v311 = OUTLINED_FUNCTION_6_41();
      v316 = v315 | 0x73690000;
      if (v318 == v317)
      {
        if (!FindImageDescriptionExtensionOffset(v311, v312, v316, v313, v314))
        {
          v319 = OUTLINED_FUNCTION_6_41();
          if (!FindImageDescriptionExtensionOffset(v319, v321, v320 | 0x70690000u, v322, v323))
          {
            goto LABEL_318;
          }

LABEL_286:
          v324 = 0;
          goto LABEL_300;
        }
      }

      else if (!FindSampleDescriptionExtensionOffset(v311, v312, v316, v313, v314))
      {
        v333 = OUTLINED_FUNCTION_6_41();
        if (!FindSampleDescriptionExtensionOffset(v333, v335, v334 | 0x70690000u, v336, v337))
        {
          goto LABEL_318;
        }

        goto LABEL_286;
      }

      v324 = 1;
    }

LABEL_300:
    if (v498 == -1)
    {
      goto LABEL_319;
    }

    v343 = (v497 & v496) == 0xFFFFFFFFFFFFFFFFLL || v494 == -1;
    v444 = v492;
    if (v343 || v492 == -1)
    {
      goto LABEL_319;
    }

    LODWORD(v441) = v324;
    if (!v467)
    {
      goto LABEL_327;
    }

    v345 = v470;
    v346 = v462;
    if (v469)
    {
      v347 = v469;
      v345 = v470;
      v348 = v440;
      v346 = v462;
      while (1)
      {
        v350 = *v347++;
        v349 = v350;
        if (HIDWORD(valuePtr[0]) == v350 || v349 == 0)
        {
          break;
        }

        ++v346;
        ++v345;
        if (!--v348)
        {
          goto LABEL_326;
        }
      }
    }

    if (!*v345)
    {
LABEL_326:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
      if (!v360)
      {
LABEL_327:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_328:
        v361 = v445;
        if (!v360)
        {
          goto LABEL_359;
        }
      }

LABEL_430:
      v12 = v470;
      ByteStreamSize = v360;
      goto LABEL_394;
    }

    v436 = bswap32(**v345);
    if (v436 <= 7)
    {
      goto LABEL_327;
    }

    v466 = *v346;
    v430 = *v345;
    if (*v346)
    {
      v359 = bswap32(**v346);
      if (v359 <= 0x17)
      {
        goto LABEL_327;
      }

      v438 = v359;
    }

    else
    {
      v438 = 0;
    }

    LODWORD(v431) = 0;
    v433 = v492 - 8;
    v362 = v492 + v491;
    v448 = v490 + v489;
    v452 = v448 - 8;
    v454 = v491 + 8;
    while (1)
    {
      if (v362 > v452)
      {
        goto LABEL_348;
      }

      LODWORD(__s1[0]) = 0;
      OUTLINED_FUNCTION_4_50();
      OUTLINED_FUNCTION_22_15();
      MovieBytes = ReadMovieBytes(v363, v364, v365, v366);
      v374 = bswap32(__s1[0]);
      if ((v448 - v362) < v374)
      {
        goto LABEL_327;
      }

      v375 = a6;
      v376 = v374;
      if (v374 <= 7)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
        a6 = v375;
        a4 = v468;
        goto LABEL_328;
      }

      LODWORD(__s1[0]) = 0;
      v377 = OUTLINED_FUNCTION_17_13(MovieBytes, v362 + 4, v368, v369, v370, v371, v372, v373, v420, v421, v422, v423, v424, v426, theString, v430, v431, v433, v434, v436, v438, v440, v441, v444, v445, v448, v450, v452, v454, __len, v457, v459, v460, v461, v462, v463, v466, v467, v468);
      v380 = ReadMovieBytes(v377, v378, 4u, v379);
      if (!v466 || LODWORD(__s1[0]) != 1145656661)
      {
        break;
      }

      v388 = v362 + 8;
      if (v376 <= 0x17)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
        LODWORD(v431) = v392;
        v391 = 4;
        goto LABEL_342;
      }

      v389 = OUTLINED_FUNCTION_17_13(v380, v381, v382, v383, v384, v385, v386, v387, v420, v421, v422, v423, v424, v426, theString, v430, v431, v433, v434, v436, v438, v440, v441, v444, v445, v448, v450, v452, v454, __len, v457, v459, v460, v461, v462, v463, v466, v467, v468);
      ReadMovieBytes(v389, v362 + 8, 0x10u, v390);
      if (!memcmp(__s1, v466 + 2, 0x10uLL))
      {
        goto LABEL_341;
      }

      v391 = 10;
LABEL_342:
      a6 = v375;
      v362 = v388;
      a4 = v468;
      if (v391)
      {
        if (v391 == 10)
        {
          goto LABEL_348;
        }

LABEL_358:
        v361 = v445;
        v360 = v431;
        if (v431)
        {
          goto LABEL_430;
        }

LABEL_359:
        v406 = v361 + 1;
        if (v457)
        {
          v457(a6, v406 / v268);
        }

        LODWORD(v445) = v406;
        if (v441)
        {
          v283 = 1937011555;
          if (__len == 1986618469)
          {
            v407 = 1768780388;
LABEL_367:
            LODWORD(__s1[0]) = v407;
            v408 = OUTLINED_FUNCTION_2_65();
            WriteMovieBytes(v408, v409, v410, v411);
          }

          else if (__len == 1936684398)
          {
            v407 = 1936552548;
            goto LABEL_367;
          }

          v465 = 1;
        }

        else
        {
          v465 = 1;
          v283 = 1937011555;
        }

LABEL_319:
        v358 = v285 - v488;
        v285 = v488 + v487;
        v284 = v284 - v487 + v358;
        if (!v284)
        {
LABEL_374:
          v412 = -8;
          if (v273 == 0x1000000)
          {
            v412 = -16;
          }

          if (!v465)
          {
            v279 = v459;
            goto LABEL_380;
          }

          ByteStreamSize = 0;
LABEL_393:
          v12 = v470;
          goto LABEL_394;
        }

        goto LABEL_272;
      }
    }

    if (LODWORD(__s1[0]) != 1701147238)
    {
      a4 = v468;
LABEL_348:
      v393 = v454;
      if (v438 + v436 > v454)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
        a6 = v450;
        goto LABEL_328;
      }

      LODWORD(__s1[0]) = bswap32(v454);
      v394 = OUTLINED_FUNCTION_4_50();
      WriteMovieBytes(v394, v433, 4u, v395);
      v455 = v454 - v436;
      v396 = v393 - v436 - v438;
      WriteMovieBytes(a4, v444 - 4, v436 - 4, (v430 + 1));
      if (v466)
      {
        WriteMovieBytes(a4, v436 - 4 + v444 - 4, v438, v466);
        if (v396 < 8)
        {
          LODWORD(__s1[0]) = bswap32(v455);
          v401 = OUTLINED_FUNCTION_4_50();
          v402 = v436 - 4 + v444 - 4;
        }

        else
        {
LABEL_354:
          LODWORD(__s1[0]) = bswap32(v396);
          OUTLINED_FUNCTION_4_50();
          OUTLINED_FUNCTION_22_15();
          WriteMovieBytes(v397, v398, v399, v400);
          LODWORD(__s1[0]) = 1701147238;
          v401 = OUTLINED_FUNCTION_4_50();
        }

        WriteMovieBytes(v401, v402, 4u, v403);
      }

      else
      {
        if (v396 > 7)
        {
          goto LABEL_354;
        }

        LODWORD(v436) = v436 + v396;
      }

      a6 = v450;
      LODWORD(__s1[0]) = bswap32(v436);
      v404 = OUTLINED_FUNCTION_4_50();
      WriteMovieBytes(v404, v433, 4u, v405);
      goto LABEL_358;
    }

LABEL_341:
    v391 = 0;
    v454 += v376;
    v388 = v362 + v376;
    goto LABEL_342;
  }

  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 0;
  }

  OUTLINED_FUNCTION_5_45();
  v15 = malloc_type_calloc(Count, 4uLL, v14);
  if (!v15)
  {
    return 4294967188;
  }

  v469 = v15;
  v470 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
  if (!v470)
  {
    v460 = 0;
    v461 = 0;
    v462 = 0;
    v463 = 0;
    v12 = 0;
    ByteStreamSize = 4294967188;
    v416 = v469;
    goto LABEL_395;
  }

  OUTLINED_FUNCTION_5_45();
  v463 = malloc_type_calloc(v16, v17, v18);
  if (!v463)
  {
    v460 = 0;
    v461 = 0;
    v462 = 0;
    v463 = 0;
LABEL_428:
    ByteStreamSize = 4294967188;
    goto LABEL_429;
  }

  v462 = malloc_type_calloc(Count, 8uLL, 0x10040436913F5uLL);
  if (!v462)
  {
    v460 = 0;
    v461 = 0;
    v462 = 0;
    goto LABEL_428;
  }

  v461 = malloc_type_calloc(1uLL, 8 * Count, 0x10040436913F5uLL);
  if (!v461)
  {
    v460 = 0;
    v461 = 0;
    goto LABEL_428;
  }

  OUTLINED_FUNCTION_5_45();
  v22 = malloc_type_calloc(v19, v20, v21);
  if (!v22)
  {
    v460 = 0;
    goto LABEL_428;
  }

  v464 = Count;
  v467 = Count;
  theString = a2;
  v431 = a3;
  v449 = a6;
  v460 = v22;
  v23 = 0;
  v24 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v23);
    if (!ValueAtIndex)
    {
      ByteStreamSize = 4294966618;
      goto LABEL_393;
    }

    v26 = ValueAtIndex;
    if (Count == 1 || (LODWORD(valuePtr[0]) = 0, (v27 = CFDictionaryGetValue(ValueAtIndex, @"id")) == 0))
    {
      LODWORD(v28) = 0;
    }

    else
    {
      CFNumberGetValue(v27, kCFNumberSInt32Type, valuePtr);
      LODWORD(v28) = valuePtr[0];
    }

    v29 = CFDictionaryGetValue(v26, @"sinf");
    v30 = v29;
    if (v29)
    {
      v470[v23] = CFDataGetBytePtr(v29);
      v463[v23] = CFDataGetLength(v30);
    }

    v31 = CFDictionaryGetValue(v26, @"sinf2");
    if (v31)
    {
      v462[v23] = CFDataGetBytePtr(v31);
    }

    v32 = CFDictionaryGetValue(v26, @"pinf");
    v33 = v32;
    if (v32 && !v470[v23])
    {
      v470[v23] = CFDataGetBytePtr(v32);
      v463[v23] = CFDataGetLength(v33);
    }

    v34 = CFDictionaryGetValue(v26, @"dpInfo");
    if (v34)
    {
      v35 = v34;
      v461[v23] = CFDataGetBytePtr(v34);
      v460[v23] = CFDataGetLength(v35);
      v24 = 1;
    }

    v469[v23] = v28;
    if (!(v30 | v33))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
      ByteStreamSize = v418;
LABEL_429:
      v416 = v469;
      v12 = v470;
      goto LABEL_395;
    }

    ++v23;
  }

  while (Count != v23);
  v12 = v470;
  if (!v24)
  {
    a6 = v449;
    goto LABEL_254;
  }

  v496 = -1;
  v493 = 0;
  v494 = -1;
  v491 = 0;
  v492 = -1;
  v489 = 0;
  v490 = -1;
  v487 = 0;
  v488 = -1;
  v485 = 0;
  v486 = -1;
  size[0] = 0;
  v36 = CFPreferencesCopyAppValue(@"UseChunkedDecrypt", @"com.apple.coremedia");
  v37 = v431;
  if (v36)
  {
    v38 = v36;
    v39 = CFGetTypeID(v36);
    if (v39 == CFBooleanGetTypeID())
    {
      CFBooleanGetValue(v38);
    }

    CFRelease(v38);
  }

  if (!a4)
  {
    goto LABEL_382;
  }

  v497 = 0;
  ByteStreamSize = GetByteStreamSize(a4, &v497);
  if (ByteStreamSize)
  {
    goto LABEL_394;
  }

  v41 = v497;
  if (v497 < 1)
  {
LABEL_382:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_69();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_383:
    ByteStreamSize = v419;
    if (!v419)
    {
      goto LABEL_384;
    }

    goto LABEL_394;
  }

  v42 = 0;
  v43 = 0;
  HIDWORD(v423) = 0;
  OUTLINED_FUNCTION_8_20();
  OUTLINED_FUNCTION_21_14();
  v44 = v467;
  while (1)
  {
    if (v41 <= 0)
    {
LABEL_40:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_69();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_383;
    }

    LODWORD(valuePtr[0]) = 0;
    v45 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v45, v42, 4u, v46);
    v47 = bswap32(valuePtr[0]);
    LODWORD(v447) = valuePtr[0];
    if (LODWORD(valuePtr[0]) == 0x1000000)
    {
      if (v41 <= 0xF)
      {
        goto LABEL_40;
      }
    }

    else if (v41 < v47 || v47 <= 7)
    {
      goto LABEL_40;
    }

    LODWORD(valuePtr[0]) = 0;
    v48 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v48, v49, 4u, v50);
    v51 = v42;
    v52 = valuePtr[0];
    v443 = v51;
    OUTLINED_FUNCTION_7_28();
    if (v123)
    {
      *&valuePtr[0] = 0;
      v54 = OUTLINED_FUNCTION_10_25();
      ReadMovieBytes(v54, v55, 8u, v56);
      v57 = bswap64(*&valuePtr[0]);
      if (v57 > v41 || v57 <= 0xF)
      {
        goto LABEL_40;
      }

      v53 = v443 + 16;
    }

    if (v52 == v28)
    {
      break;
    }

    OUTLINED_FUNCTION_7_28();
    v257 = -8;
    if (v123)
    {
      v257 = -16;
    }

LABEL_249:
    v42 = v256 + v255 + v257;
    v41 -= v256;
    if (!v41)
    {
      if (v43)
      {
        goto LABEL_384;
      }

      ByteStreamSize = 4294954764;
      goto LABEL_394;
    }
  }

  v435 = v53;
  v58 = &v481;
  *&size[1] = -1;
  v482 = 0;
  v483 = -1;
  v480 = 0;
  v481 = -1;
  v478 = 0;
  v479 = -1;
  v475 = 0;
  v474 = -1;
  v473 = 0;
  v472 = -1;
  v471 = 0;
  OUTLINED_FUNCTION_18_14();
  LODWORD(__s1[0]) = v28 - 5;
  v59 = OUTLINED_FUNCTION_2_65();
  v61 = v60;
  WriteMovieBytes(v59, v62, v63, v64);
  memset(valuePtr, 0, sizeof(valuePtr));
  LODWORD(v478) = 0;
  v432 = v61;
  v65 = v61 - 8;
  if (v61 == 8)
  {
    LODWORD(__s1[0]) = v28;
    v262 = OUTLINED_FUNCTION_2_65();
    WriteMovieBytes(v262, v263, v264, v265);
    OUTLINED_FUNCTION_7_28();
    v257 = -8;
    if (v123)
    {
      v257 = -16;
    }

LABEL_248:
    v43 = 1;
    v256 = v432;
    v255 = v435;
    goto LABEL_249;
  }

  v66 = 0;
  v67 = v435;
  do
  {
    v458 = v67;
    LODWORD(v467) = v65;
    if (!FindAtomOffsetOfType(a4, 1953653099, v67, v65, &size[1], &v482))
    {
      break;
    }

    if (!FindAtomOffsetOfType(a4, 1953196132, v58[4], v482, &v472, &v471))
    {
      goto LABEL_72;
    }

    if (!FindAtomOffsetOfType(a4, 1835297121, v58[4], v482, &v483, &v480))
    {
      goto LABEL_72;
    }

    v68 = OUTLINED_FUNCTION_13_15();
    if (!FindAtomOffsetOfType(v68, v69 | 0x6D690000u, v70, v71, v72, v73))
    {
      goto LABEL_72;
    }

    if (!FindAtomOffsetOfType(a4, 1937007212, *v58, HIDWORD(v478), &v474, &v473))
    {
      goto LABEL_72;
    }

    v74 = OUTLINED_FUNCTION_10_25();
    ReadMovieBytes(v74, v75, 0x54u, v76);
    HIDWORD(valuePtr[0]) = bswap32(HIDWORD(valuePtr[0]));
    if (!FindAtomOffsetOfType(a4, 1751411826, v58[2], v480, &v479, &v475) || v475 < 0xC)
    {
      goto LABEL_72;
    }

    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, 1937011555, v77, v78, &v496, &v493);
    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, v30 + 23, v79, v80, &v490, &v487);
    v446 = v58[10];
    if (v446 == -1)
    {
      OUTLINED_FUNCTION_12_21();
      FindAtomOffsetOfType(a4, v30 + 1743, v81, v82, &v490, &v487);
    }

    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, ByteStreamSize + 259, v83, v84, &v494, &v491);
    OUTLINED_FUNCTION_12_21();
    FindAtomOffsetOfType(a4, 1668232756, v85, v86, &v492, &v489);
    OUTLINED_FUNCTION_12_21();
    if (!FindAtomOffsetOfType(a4, v30 + 1, v87, v88, &v486, size))
    {
LABEL_72:
      v58[16] = -1;
      v58[14] = -1;
      v58[12] = -1;
      v58[10] = -1;
      v58[8] = -1;
      v472 = -1;
      goto LABEL_73;
    }

    LODWORD(__s1[0]) = 0;
    v89 = OUTLINED_FUNCTION_2_65();
    ReadMovieBytes(v89, v90, v91, v92);
    LODWORD(v425) = __s1[0];
    v93 = bswap32(__s1[0]);
    v94 = v58[6] + 8;
    v58[6] = v94;
    size[0] -= 8;
    switch(v93)
    {
      case 0x636C6370u:
        LODWORD(__s1[0]) = 0;
        v105 = OUTLINED_FUNCTION_2_65();
        ReadMovieBytes(v105, v106, v107, v108);
        if (LODWORD(__s1[0]) != 942683760)
        {
          goto LABEL_72;
        }

        v109 = OUTLINED_FUNCTION_13_15();
        if (!FindAtomOffsetOfType(v109, v110 | 0x73690000u, v111, v112, v113, v114))
        {
          v58[8] = 0;
          v485 = 0;
        }

        break;
      case 0x736F756Eu:
        LOWORD(__s1[0]) = 0;
        v95 = OUTLINED_FUNCTION_4_50();
        ReadMovieBytes(v95, v96, 2u, v97);
        OUTLINED_FUNCTION_20_10();
        if (v99 != v100)
        {
          if (v98 == 256)
          {
            IsSoundDescriptionISOv1(a4, v58[6], size[0]);
          }
        }

        else
        {
          LODWORD(__s1[0]) = 0;
          v101 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v101, v102, v103, v104);
        }

        v116 = OUTLINED_FUNCTION_13_15();
        if (!FindAtomOffsetOfType(v116, v117 | 0x73690000u, v118, v119, v120, v121))
        {
          goto LABEL_72;
        }

        break;
      case 0x76696465u:
        if (!FindImageDescriptionExtensionOffset(a4, v94, 1936289382, &v488, &v485))
        {
          goto LABEL_72;
        }

        break;
      default:
        if (!FindSampleDescriptionExtensionOffset(a4, v94, 1936289382, &v488, &v485))
        {
          goto LABEL_72;
        }

        break;
    }

    ByteStreamSize = v58[16];
    if (ByteStreamSize != -1)
    {
      v28 = v58[14];
      v122 = v58[12];
      v30 = v58[10];
      v123 = (v28 & v122) == 0xFFFFFFFFFFFFFFFFLL || v30 == -1;
      if (!v123 && v58[8] != -1)
      {
        v125 = 0;
        v126 = v469;
        v127 = v464;
        do
        {
          v129 = *v126++;
          v128 = v129;
          if (HIDWORD(valuePtr[0]) == v129 || v128 == 0)
          {
            v132 = v125 >> 32;
            goto LABEL_97;
          }

          v125 += 0x100000000;
          --v127;
        }

        while (v127);
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_69();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
        if (v131)
        {
          goto LABEL_433;
        }

        ByteStreamSize = v58[16];
        v28 = v58[14];
        v122 = v58[12];
        v132 = -1;
        v30 = v58[10];
LABEL_97:
        v421 = v132;
        v422 = v41;
        v453 = v58[17];
        __pattern4 = 0;
        v498 = 0;
        v499 = 0;
        v476 = 0;
        GetDefaultFairPlayContextID(0);
        NOAHabXy();
        v134 = FAIRPLAY_CALL_LOG(v133);
        if (v134 == -42032)
        {
          GetDefaultFairPlayContextID(1);
          NOAHabXy();
          v134 = FAIRPLAY_CALL_LOG(v135);
        }

        v136 = v134;
        if (!v134)
        {
          if (v446 == -1)
          {
            LODWORD(__s1[0]) = 0;
            v142 = OUTLINED_FUNCTION_2_65();
            ReadMovieBytes(v142, v143, v144, v145);
            v141 = bswap32(__s1[0]);
            if (v141 > 0xFF || (v141 != 16 ? (v146 = v141 == 8) : (v146 = 1), !v146))
            {
              v136 = 4294966630;
              goto LABEL_169;
            }

            LODWORD(__len) = 0;
          }

          else
          {
            LODWORD(__s1[0]) = 0;
            v137 = OUTLINED_FUNCTION_2_65();
            ReadMovieBytes(v137, v138, v139, v140);
            v141 = 0;
            LODWORD(__len) = bswap32(__s1[0]);
            __pattern4 = __len;
          }

          LODWORD(__s1[0]) = 0;
          v147 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v147, v148, v149, v150);
          v151 = __s1[0];
          v152 = v28 + 8;
          if (v28 == -1)
          {
            v152 = -1;
          }

          v442 = v152;
          v153 = v122 == -1 ? -1 : v122 + 8;
          LODWORD(__s1[0]) = 0;
          v154 = OUTLINED_FUNCTION_2_65();
          ReadMovieBytes(v154, v155, v156, v157);
          LODWORD(v28) = __s1[0];
          v158 = FigThreadRegisterAbortAction();
          if (!v158 || (v136 = v158, v158 == -17561))
          {
            v136 = 0;
            if (v151)
            {
              if (!v476)
              {
                LODWORD(v159) = 0;
                v160 = bswap32(v151);
                v439 = v30 + 12;
                v161 = bswap32(v28);
                v28 = ByteStreamSize + 8;
                v162 = v141 >> 3;
                v163 = v161;
                LODWORD(v429) = v162;
                if (v446 == -1)
                {
                  v164 = v162;
                }

                else
                {
                  v164 = 4;
                }

                LODWORD(v437) = v164;
                v165 = v160;
                v166 = HIDWORD(v423);
                LODWORD(v30) = 1;
                LODWORD(v451) = v160;
                while (1)
                {
                  if (v163 && (LODWORD(__s1[0]) = 0, v167 = OUTLINED_FUNCTION_4_50(), ReadMovieBytes(v167, v28, 4u, v168), LODWORD(__s1[0]) = 0, v169 = OUTLINED_FUNCTION_2_65(), ReadMovieBytes(v169, v170, v171, v172), LODWORD(v159) = bswap32(__s1[0]), v28 += 12, --v163, v163))
                  {
                    LODWORD(__s1[0]) = 0;
                    v173 = OUTLINED_FUNCTION_4_50();
                    ReadMovieBytes(v173, v28, 4u, v174);
                    v175 = bswap32(__s1[0]);
                    LODWORD(ByteStreamSize) = __len;
                  }

                  else
                  {
                    LODWORD(ByteStreamSize) = __len;
                    v163 = 0;
                    v175 = v30 + 1;
                  }

                  v176 = v476;
                  if (v30 < v175 && !v476)
                  {
                    break;
                  }

LABEL_164:
                  v136 = 0;
                  if (!v160 || v176)
                  {
                    goto LABEL_169;
                  }
                }

                HIDWORD(v425) = v163;
                v427 = v28;
                v30 = v30;
                v177 = v175;
                while (2)
                {
                  if (v159 >= v160)
                  {
                    v159 = v160;
                  }

                  else
                  {
                    v159 = v159;
                  }

                  OUTLINED_FUNCTION_5_45();
                  v181 = malloc_type_calloc(v178, v179, v180);
                  v28 = v181;
                  v182 = 4 * v159;
                  if (ByteStreamSize)
                  {
                    memset_pattern4(v181, &__pattern4, 4 * v159);
                    ByteStreamSize = (v159 * ByteStreamSize);
                    goto LABEL_151;
                  }

                  v183 = ReadMovieBytes(v468, v439 + (v451 - v160) * v437, v159 * v437, v181);
                  if (v446 != -1)
                  {
                    if (v159)
                    {
                      ByteStreamSize = 0;
                      v190 = v28 - 4;
                      do
                      {
                        v191 = bswap32(*(v190 + v182));
                        *(v190 + v182) = v191;
                        ByteStreamSize += v191;
                        v182 -= 4;
                      }

                      while (v182);
                      goto LABEL_151;
                    }

LABEL_150:
                    ByteStreamSize = 0;
                    goto LABEL_151;
                  }

                  if (v429 == 2)
                  {
                    v194 = (v159 - 1);
                    if (v159 - 1 < 0)
                    {
                      goto LABEL_150;
                    }

                    ByteStreamSize = 0;
                    do
                    {
                      v195 = bswap32(*(v28 + 2 * v194)) >> 16;
                      *(v28 + 4 * v194) = v195;
                      ByteStreamSize += v195;
                      v215 = v194-- <= 0;
                    }

                    while (!v215);
                  }

                  else
                  {
                    if (v429 != 1)
                    {
                      goto LABEL_150;
                    }

                    v192 = (v159 - 1);
                    if (v159 - 1 < 0)
                    {
                      goto LABEL_150;
                    }

                    ByteStreamSize = 0;
                    do
                    {
                      v193 = *(v28 + v192);
                      *(v28 + 4 * v192) = v193;
                      ByteStreamSize += v193;
                      --v192;
                    }

                    while (v192 != -1);
                  }

LABEL_151:
                  if (v153 == -1)
                  {
                    LODWORD(__s1[0]) = 0;
                    v200 = OUTLINED_FUNCTION_17_13(v183, ((4 * v30 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + v442, v184, v185, v186, v187, v188, v189, v420, v421, v422, v423, v425, v427, theString, v429, v431, v432, v434, v435, v437, v439, v442, v443, v446, v447, v449, v451, v453, __len, v457, v458, v460, v461, v462, v463, v464, v467, v468);
                    ReadMovieBytes(v200, v201, 4u, v202);
                    v199 = bswap32(__s1[0]);
                  }

                  else
                  {
                    __s1[0] = 0;
                    v196 = OUTLINED_FUNCTION_17_13(v183, ((8 * v30 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + v153, v184, v185, v186, v187, v188, v189, v420, v421, v422, v423, v425, v427, theString, v429, v431, v432, v434, v435, v437, v439, v442, v443, v446, v447, v449, v451, v453, __len, v457, v458, v460, v461, v462, v463, v464, v467, v468);
                    ReadMovieBytes(v196, v197, 8u, v198);
                    v199 = bswap64(__s1[0]);
                  }

                  if (v199 + ByteStreamSize > v453)
                  {
                    v136 = 4294966630;
                    a4 = v468;
                    break;
                  }

                  v203 = malloc_type_malloc(ByteStreamSize, 0xE340FF8AuLL);
                  if (*(*(CMBaseObjectGetVTable() + 16) + 8))
                  {
                    OUTLINED_FUNCTION_19_16();
                    v204();
                  }

                  __s1[1] = v28;
                  __s1[0] = v159;
                  __s1[2] = v203;
                  __s1[3] = ByteStreamSize;
                  T40gmCiYgO7uIqkoes4oO6isuYo();
                  if (*(*(CMBaseObjectGetVTable() + 16) + 16))
                  {
                    OUTLINED_FUNCTION_19_16();
                    v205();
                  }

                  free(v203);
                  free(v28);
                  v160 -= v159;
                  if (v457)
                  {
                    v457(v449, (((v451 - v160) / v165) + v166) / v44);
                  }

                  ++v30;
                  v176 = v476;
                  LODWORD(ByteStreamSize) = __len;
                  if (v30 >= v177 || v476)
                  {
                    a4 = v468;
                    v28 = v427;
                    v163 = HIDWORD(v425);
                    goto LABEL_164;
                  }

                  continue;
                }
              }
            }
          }
        }

LABEL_169:
        v58 = &v481;
        if (v498)
        {
          FigThreadUnregisterAbortAction();
        }

        v12 = v470;
        v37 = v431;
        OUTLINED_FUNCTION_8_20();
        OUTLINED_FUNCTION_21_14();
        if (v206)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_69();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
          v136 = v207;
        }

        v41 = v422;
        if (v499)
        {
          v208 = Hz73b(v499);
          FAIRPLAY_CALL_LOG(v208);
        }

        if (v136)
        {
          goto LABEL_414;
        }

        if (v485)
        {
          v30 = v470[v421];
          v209 = v485 + 8;
          if (v30)
          {
            v210 = bswap32(*v30);
            if (v210 > v463[v421] || v210 <= 7)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_435:
              v136 = v245;
              goto LABEL_414;
            }

            v211 = 0;
            v212 = v210 - 8;
            if (v212)
            {
              v213 = (v30 + 8);
              while (1)
              {
                v214 = bswap32(*v213);
                v215 = v214 >= 8 && v212 > v214;
                if (!v215)
                {
                  break;
                }

                if (v213[1] == 1701147238)
                {
                  v216 = 0;
                }

                else
                {
                  v216 = v214;
                }

                v211 += v216;
                v213 = (v213 + v214);
                v212 -= v214;
                if (!v212)
                {
                  goto LABEL_191;
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
            }

LABEL_191:
            v217 = v211 + 8;
            if (v211 + 8 > v209)
            {
              v218 = v486 + size[0];
              v219 = v488 + v485;
              if (v219 + 8 <= v218)
              {
                LODWORD(__s1[0]) = 0;
                v220 = OUTLINED_FUNCTION_2_65();
                ReadMovieBytes(v220, v221, v222, v223);
                if (LODWORD(__s1[0]) == 1701147238)
                {
                  LODWORD(__s1[0]) = 0;
                  OUTLINED_FUNCTION_4_50();
                  OUTLINED_FUNCTION_22_15();
                  ReadMovieBytes(v224, v225, v226, v227);
                  v228 = bswap32(__s1[0]);
                  if (v219 + v228 > v218)
                  {
                    LODWORD(v228) = 0;
                  }

                  v209 += v228;
                }
              }
            }

            v215 = v217 > v209;
            LODWORD(ByteStreamSize) = 1937007212;
            if (v215)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_69();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
LABEL_433:
              v136 = v131;
              v12 = v470;
LABEL_414:
              ByteStreamSize = v136;
              if (!v136)
              {
                goto LABEL_384;
              }

              goto LABEL_394;
            }
          }

          v229 = v209;
          OUTLINED_FUNCTION_9_5();
          v232 = malloc_type_malloc(v230, v231);
          if (v232)
          {
            v233 = v232;
            v58 = &v481;
            ReadMovieBytes(a4, v488 - 8, v485 + 8, v232);
            v234 = bswap32(*v233) - 8;
            if (v234)
            {
              v235 = v233 + 2;
              while (*v235)
              {
                if (v235[1] == 1634562662)
                {
                  v239 = bswap32(v235[2]);
                  if (v239)
                  {
                    v240 = v239 == 1061109567;
                  }

                  else
                  {
                    v240 = 1;
                  }

                  if (v240)
                  {
                    v237 = 0;
                  }

                  else
                  {
                    v237 = v239;
                  }

                  goto LABEL_215;
                }

                v236 = bswap32(*v235);
                v235 = (v235 + v236);
                v234 -= v236;
                if (!v234)
                {
                  break;
                }
              }
            }

            v237 = 0;
LABEL_215:
            if (v30)
            {
              v242 = *v30;
              v241 = *(v30 + 4);
              OUTLINED_FUNCTION_9_5();
              ByteStreamSize = malloc_type_malloc(v243, v244);
              if (!ByteStreamSize)
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0_69();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
                if (v245)
                {
                  v12 = v470;
                  goto LABEL_435;
                }
              }

              v246 = bswap32(v242);
              *ByteStreamSize = bswap32(v229) | (v241 << 32);
              v58 = (ByteStreamSize + 8);
              v247 = v229 - 8;
              LODWORD(v41) = v246 - 8;
              __len = v229;
              if (v246 == 8)
              {
                if (v247 > 7)
                {
                  v58 = &v481;
                  v41 = v422;
                  OUTLINED_FUNCTION_11_23();
                  goto LABEL_228;
                }

                bzero((ByteStreamSize + 8), (v229 - 8));
                v58 = &v481;
                v41 = v422;
                OUTLINED_FUNCTION_11_23();
              }

              else
              {
                v248 = 0;
                v28 = v30 + 8;
                OUTLINED_FUNCTION_11_23();
                do
                {
                  v37 = bswap32(*v28);
                  v249 = v58;
                  if (*(v28 + 4) != 1701147238)
                  {
                    memmove(v58, v28, v37);
                    v250 = bswap32(*v58);
                    v249 = (v58 + v250);
                    v247 -= v250;
                    v248 = v58;
                    v58 = (v58 + v250);
                  }

                  v28 += v37;
                  v41 = (v41 - v37);
                }

                while (v41);
                if (v247 <= 7)
                {
                  bzero(v249, v247);
                  OUTLINED_FUNCTION_15_18();
                  if (v248)
                  {
                    *v248 = bswap32(bswap32(*v248) + v247);
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_15_18();
LABEL_228:
                  *v251 = bswap32(v247) | 0x6565726600000000;
                  v253 = v252 - 8;
                  if (v253)
                  {
                    bzero(v251 + 1, v253);
                  }
                }
              }

              LODWORD(v229) = __len;
              memmove(v233, ByteStreamSize, __len);
              if (ByteStreamSize)
              {
                free(ByteStreamSize);
              }
            }

            else
            {
              v233[1] = 1701147238;
              bzero(v233 + 2, v485);
              OUTLINED_FUNCTION_11_23();
            }

            v238 = v468;
            WriteMovieBytes(v468, v58[8] - 8, v229, v233);
            OUTLINED_FUNCTION_21_14();
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_69();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v420, v421, v422);
            v58 = &v481;
            if (v131)
            {
              goto LABEL_433;
            }

            v237 = 0;
            v233 = 0;
            v238 = v468;
            OUTLINED_FUNCTION_11_23();
          }
        }

        else
        {
          if (v425 != 942683760)
          {
            v136 = 4294966630;
            goto LABEL_414;
          }

          v233 = 0;
          v238 = a4;
          v237 = 1664495672;
        }

        ++HIDWORD(v423);
        v254 = v58[6];
        LODWORD(__s1[0]) = bswap32(v237);
        WriteMovieBytes(v238, v254 + 4, 4u, __s1);
        a4 = v238;
        if (v233)
        {
          free(v233);
        }

        v66 = 1;
        v12 = v470;
        goto LABEL_73;
      }

      v12 = v470;
      OUTLINED_FUNCTION_8_20();
    }

    OUTLINED_FUNCTION_21_14();
LABEL_73:
    v115 = v58[4];
    v67 = v115 + v482;
    v65 = v467 - v482 + v458 - v115;
  }

  while (v65);
  LODWORD(__s1[0]) = v28;
  v258 = OUTLINED_FUNCTION_2_65();
  WriteMovieBytes(v258, v259, v260, v261);
  OUTLINED_FUNCTION_7_28();
  v257 = -8;
  if (v123)
  {
    v257 = -16;
  }

  if (!v66)
  {
    goto LABEL_248;
  }

LABEL_384:
  if (v37 && (Length = CFStringGetLength(theString), v415 = CFStringGetLength(@".m4p"), Length >= v415) && (v501.length = v415, v501.location = Length - v415, CFStringCompareWithOptions(theString, @".m4p", v501, 1uLL) == kCFCompareEqualTo))
  {
    ByteStreamSize = 0;
    *v37 = @"m4a";
  }

  else
  {
    ByteStreamSize = 0;
  }

LABEL_394:
  v416 = v469;
  if (v469)
  {
LABEL_395:
    free(v416);
  }

  if (v12)
  {
    free(v12);
  }

  if (v463)
  {
    free(v463);
  }

  if (v462)
  {
    free(v462);
  }

  if (v461)
  {
    free(v461);
  }

  if (v460)
  {
    free(v460);
  }

  return ByteStreamSize;
}

double PostProcessGetRentalInfo(const __CFString *a1, uint64_t a2)
{
  buffer[128] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
      {
        FigSharedRemote_GetRentalInfo(buffer, v3, v3 + 4, v3 + 8, v3 + 12, v4, v5, v6, v13, buffer[0], buffer[1], buffer[2], buffer[3], buffer[4], buffer[5], buffer[6], buffer[7], buffer[8], buffer[9], buffer[10]);
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v9 = v2;
    v10 = emitter;
    v11 = 4028;
  }

  else
  {
    v8 = fig_log_get_emitter();
    v9 = v2;
    v10 = v8;
    v11 = 4027;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954516, "<<<< POSTPURCHASE >>>>", v11, v9);
}

uint64_t EncryptedFileMD5Check(const __CFDictionary *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  valuePtr = 0;
  v54 = 0;
  CMByteStreamGetCMBaseObject();
  FigCRABSGetClassID();
  if (CMBaseObjectIsMemberOfClass())
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_9_5();
  v9 = malloc_type_malloc(0x8000uLL, v8);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_87;
  }

  ByteStreamSize = GetByteStreamSize(a2, &v57);
  if (ByteStreamSize)
  {
LABEL_87:
    v25 = ByteStreamSize;
    v22 = 0;
    v13 = 0;
    goto LABEL_76;
  }

  if (a4)
  {
    FigSimpleMutexLock();
    v11 = v57;
    a4[1] = 0;
    a4[2] = v11;
    FigSimpleMutexUnlock();
  }

  if (!a1)
  {
    v22 = 0;
    theArray = 0;
    v51 = 0;
    v21 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a1, @"FileMD5");
  v13 = Value;
  if (Value)
  {
    v14 = CFGetTypeID(Value);
    if (v14 != CFDataGetTypeID())
    {
      goto LABEL_86;
    }
  }

  v15 = CFDictionaryGetValue(a1, @"ChunkMD5Array");
  v16 = v15;
  if (v15)
  {
    v17 = CFGetTypeID(v15);
    if (v17 != CFArrayGetTypeID())
    {
      goto LABEL_86;
    }
  }

  v18 = CFDictionaryGetValue(a1, @"MD5ChunkSize");
  theArray = v16;
  if (!v18)
  {
    if (v13)
    {
      v51 = v13;
      v23 = 1;
      v22 = FigDigestMD5Create();
      v13 = 0;
      v21 = 1;
      goto LABEL_23;
    }

    v22 = 0;
    v51 = 0;
    v21 = 0;
LABEL_18:
    v23 = 1;
    goto LABEL_23;
  }

  v19 = v18;
  v20 = CFGetTypeID(v18);
  if (v20 != CFNumberGetTypeID())
  {
LABEL_86:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_58();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_87;
  }

  CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
  v21 = v13 != 0;
  v51 = v13;
  if (v13)
  {
    v22 = FigDigestMD5Create();
  }

  else
  {
    v22 = 0;
  }

  v13 = FigDigestMD5Create();
  v23 = 0;
LABEL_23:
  v24 = FigThreadRegisterAbortAction();
  if (!v24 || (v25 = v24, v24 == -17561))
  {
    v25 = 0;
    if (!v59)
    {
      v26 = v57;
      if (v57 >= 1)
      {
        v45 = 0;
        v46 = v7;
        v48 = 0;
        idx = 0;
        v49 = 0;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v53 = 0;
          v29 = v26 - v28;
          if (v29 >= 0x8000)
          {
            v29 = 0x8000;
          }

          v30 = valuePtr - v27;
          if (v29 < valuePtr - v27)
          {
            v30 = v29;
          }

          if (v23)
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }

          v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v32)
          {
            v25 = -12782;
            goto LABEL_76;
          }

          v33 = v32(a2, v31, v28, v9, &v53);
          if (v33)
          {
LABEL_75:
            v25 = v33;
            goto LABEL_76;
          }

          if (v21)
          {
            MEMORY[0x19A8D1840](v22, v9, v53);
          }

          if (v23)
          {
            break;
          }

          MEMORY[0x19A8D1840](v13, v9, v53);
          v28 += v53;
          v27 += v53;
          if (v27 < valuePtr && v28 != v57)
          {
            goto LABEL_61;
          }

          FigDigestMD5GetDigest();
          if (CFArrayGetCount(theArray) <= idx)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            v38.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
            v25 = v39;
            v36 = v46;
            if (!v39)
            {
              goto LABEL_60;
            }
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
            v36 = v46;
            if (ValueAtIndex)
            {
              CompareMD5(ValueAtIndex, v60);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_58();
              v38.n128_f64[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, v46, v47);
            }

            v25 = v37;
            if (!v37)
            {
LABEL_60:
              ++idx;
              MEMORY[0x19A8D1880](v13, v38);
              v27 = 0;
              v49 = v28;
LABEL_61:
              v41 = !v21;
              if (v28 < v57)
              {
                v41 = 1;
              }

              if ((v41 & 1) == 0)
              {
                FigDigestMD5GetDigest();
                CompareMD5(v51, v60);
                if (v42)
                {
                  goto LABEL_74;
                }
              }

              goto LABEL_65;
            }
          }

          if (!v36)
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_75;
          }

          if (v48 && v45 == idx)
          {
LABEL_74:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_58();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45);
            goto LABEL_75;
          }

          v54 = v49;
          v55 = valuePtr;
          v40 = *(*(CMBaseObjectGetVTable() + 24) + 8);
          if (!v40 || v40(v36, 8, 1, &v54))
          {
            goto LABEL_76;
          }

          MEMORY[0x19A8D1880](v13);
          if (v21)
          {
            MEMORY[0x19A8D1880](v22);
          }

          MEMORY[0x19A8D1880](v13);
          v28 = 0;
          v27 = 0;
          v49 = 0;
          v48 = 1;
          v45 = idx;
          idx = 0;
LABEL_65:
          if (a4)
          {
            FigSimpleMutexLock();
            a4[1] = v28;
            FigSimpleMutexUnlock();
          }

          if (!v59)
          {
            v26 = v57;
            if (v28 < v57)
            {
              continue;
            }
          }

          v25 = 0;
          goto LABEL_76;
        }

        v28 += v53;
        goto LABEL_61;
      }
    }
  }

LABEL_76:
  if (v58)
  {
    FigThreadUnregisterAbortAction();
  }

  v43 = v59;
  free(v9);
  if (v22)
  {
    MEMORY[0x19A8D1860](v22);
  }

  if (v13)
  {
    MEMORY[0x19A8D1860](v13);
  }

  if (v43)
  {
    return 4294954762;
  }

  else
  {
    return v25;
  }
}

uint64_t ObtainCFDataSinfsFromMedia(const __CFString *a1, __CFArray **a2)
{
  theArray = 0;
  v3 = ObtainSinfInfoFromMedia(a1, &theArray);
  if (v3)
  {
    v11 = v3;
    goto LABEL_11;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v11 = 0;
LABEL_11:
    Mutable = 0;
    goto LABEL_12;
  }

  v5 = Count;
  Mutable = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E695E480];
  v9 = MEMORY[0x1E695E9C0];
  while (1)
  {
    value = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"sinf", &value))
    {
      break;
    }

LABEL_8:
    if (v5 == ++v7)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (Mutable || (Mutable = CFArrayCreateMutable(v8, v5, v9)) != 0)
  {
    CFArrayAppendValue(Mutable, value);
    goto LABEL_8;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", value, theArray, v16);
  v11 = v13;
LABEL_12:
  if (theArray)
  {
    CFRelease(theArray);
  }

  *a2 = Mutable;
  return v11;
}

void PostProcessPurchasedItem_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ObtainSinfInfoFromMedia_cold_9(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void ReadMovieBytesIntoCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double ReadMovieBytesIntoCFData_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double airplayRoute_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v8 = DerivedStorage, *DerivedStorage))
  {
    v23 = qword_1EAF16FF8;
    v24 = v3;
    v25 = 756;
  }

  else
  {
    if (CFEqual(a2, @"FigAudioSession"))
    {
      if (!a3 || (v9 = CFGetTypeID(a3), v9 == FigAudioSessionGetTypeID()))
      {
        v11 = CMBaseObjectGetDerivedStorage();
        CFRetain(a1);
        if (a3)
        {
          CFRetain(a3);
        }

        v12 = OUTLINED_FUNCTION_3_52();
        v30 = 0x40000000;
        v31 = __airplayRoute_setNewFigAudioSession_block_invoke;
        v32 = &__block_descriptor_tmp_201;
        v33 = v11;
        v34 = a1;
        v35 = a3;
        dispatch_sync(v12, &block);
      }

      return result;
    }

    if (CFEqual(a2, @"AirPlayVideoActive"))
    {
      v13 = FigCFEqual();
      v14 = CMBaseObjectGetDerivedStorage();
      if (*v14)
      {
        return result;
      }

      v15 = v14;
      CFRetain(a1);
      v16 = OUTLINED_FUNCTION_3_52();
      v30 = 0x40000000;
      v17 = __airplayRoute_setAirPlayVideoIsActive_block_invoke;
      v18 = &__block_descriptor_tmp_205;
LABEL_15:
      v31 = v17;
      v32 = v18;
      LOBYTE(v35) = v13;
      v33 = v15;
      v34 = a1;
      p_block = &block;
LABEL_16:
      dispatch_async(v16, p_block);
      return result;
    }

    if (CFEqual(a2, @"VideoForMusicActive"))
    {
      v13 = FigCFEqual();
      v19 = CMBaseObjectGetDerivedStorage();
      if (*v19)
      {
        return result;
      }

      v15 = v19;
      CFRetain(a1);
      v16 = OUTLINED_FUNCTION_3_52();
      v30 = 0x40000000;
      v17 = __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke;
      v18 = &__block_descriptor_tmp_206;
      goto LABEL_15;
    }

    if (CFEqual(a2, @"AllowBackgroundClientProcessToBeUnsuspended"))
    {
      CFRetain(a1);
      if (a3)
      {
        CFRetain(a3);
      }

      OUTLINED_FUNCTION_0_52();
      v28[1] = 0x40000000;
      v28[2] = __airplayRoute_SetProperty_block_invoke;
      v28[3] = &__block_descriptor_tmp_199;
      v28[4] = v8;
      v28[5] = a3;
      v28[6] = a1;
      p_block = v28;
      goto LABEL_16;
    }

    if (CFEqual(a2, @"PickerContextUUID"))
    {
      airplayRoute_updateRoutingContextUUID(a1, a3);
      return result;
    }

    if (CFEqual(a2, @"ClientPID"))
    {
      block = 0;
      if (a3)
      {
        v21 = CFGetTypeID(a3);
        if (v21 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(a3, kCFNumberSInt32Type, &block))
          {
            *(v8 + 30) = block;
          }
        }
      }

      return result;
    }

    if (CFEqual(a2, @"PlaybackActive"))
    {
      if (a3)
      {
        Value = CFBooleanGetValue(a3);
      }

      else
      {
        Value = 0;
      }

      if (Value == v8[64])
      {
        return result;
      }

      v8[64] = Value;
LABEL_43:
      airplayRoute_updateRoutingRegistry(a1);
      return result;
    }

    if (CFEqual(a2, @"DisableBufferedAudio"))
    {
      if (!a3 || *MEMORY[0x1E695E4D0] != a3)
      {
        return result;
      }

      v8[152] = 1;
      goto LABEL_43;
    }

    if (!CFEqual(a2, @"IsPIPMuted"))
    {
      return result;
    }

    if (a3)
    {
      v26 = CFGetTypeID(a3);
      if (v26 == CFBooleanGetTypeID())
      {
        v27 = CFBooleanGetValue(a3);
        if (v8[139] == v27)
        {
          return result;
        }

        v8[139] = v27;
        goto LABEL_43;
      }
    }

    v23 = qword_1EAF16FF8;
    v24 = v3;
    v25 = 842;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954436, "<<<< FigAirPlay_Route >>>>", v25, v24);
}

uint64_t airplayRoute_stopRoutingContextListeners(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_16();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_12_22();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t airplayRoute_stopFigAudioSessionListeners(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 112))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_16_17();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

uint64_t airplayRoute_stopEndpointNotificationListeners(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_15_19();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

void airplayRoute_currentEndpointChangedNotificationCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v27 = 0;
  if (dword_1EAF17000 >= 2)
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v5)
    {
      if (a2)
      {
        v10 = (CMBaseObjectGetDerivedStorage() + 153);
      }

      else
      {
        v10 = "";
      }

      v28 = 136315650;
      v29 = "airplayRoute_currentEndpointChangedNotificationCallback";
      v30 = 2048;
      v31 = a2;
      v32 = 2082;
      v33 = v10;
      v11 = OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, os_log_and_send_and_compose_flags_and_os_log_type, 0, v16, &v28, 32);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v17, v18, v19, v20, v21);
  }

  if (a2 && !*DerivedStorage)
  {
    if (a5)
    {
      FigCFDictionaryGetBooleanIfPresent();
    }

    if (*(DerivedStorage + 88))
    {
      CFRetain(a2);
      v22 = *(DerivedStorage + 88);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __airplayRoute_currentEndpointChangedNotificationCallback_block_invoke;
      block[3] = &__block_descriptor_tmp_39;
      v24 = v27;
      block[4] = DerivedStorage;
      block[5] = a2;
      dispatch_async(v22, block);
    }
  }
}

void airplayRoute_pickableRoutesChangedGuts(uint64_t a1)
{
  v363[16] = *MEMORY[0x1E69E9840];
  if (*CMBaseObjectGetDerivedStorage())
  {
    return;
  }

  v337 = 0;
  v338 = 0;
  value = 0;
  v336 = 0;
  BOOLean = 0;
  v334 = 0;
  v331 = 0;
  v332 = 0;
  theDict = 0;
  HIWORD(v326) = 0;
  WORD2(v326) = 0;
  BYTE3(v326) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = DerivedStorage;
  if (dword_1EAF17000)
  {
    v13 = OUTLINED_FUNCTION_4_51(DerivedStorage, v5, v6, v7, v8, v9, v10, v11, v286, v290, v294, v298, v302, v306, v310, v314, v318, alloc, v326, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
    LODWORD(v1) = v13;
    v2 = v341;
    if (os_log_type_enabled(v13, type[0]))
    {
      v14 = v341;
    }

    else
    {
      v14 = v341 & 0xFFFFFFFE;
    }

    if (v14)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_20_11();
      *cf = 136317442;
      *&cf[4] = "airplayRoute_updateRouteInformation";
      v343 = 2048;
      v344 = a1;
      v345 = 2082;
      v346 = v15;
      v347 = 2112;
      *v348 = v16;
      *&v348[8] = 1024;
      v349 = v17;
      v350 = 0;
      v351 = 8;
      v352 = v18;
      v353 = 2048;
      v354 = v19;
      v355 = 2048;
      v356 = v20;
      v357 = 1024;
      v358 = v21;
      v359 = 1024;
      v360 = v22;
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v28, type[0], v29);
      v2 = v341;
    }

    OUTLINED_FUNCTION_0_70();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v30 = MEMORY[0x1E695E4D0];
  if (!*(v12 + 8))
  {
    v44 = 1;
    goto LABEL_58;
  }

  v31 = *(v12 + 112);
  v1 = *MEMORY[0x1E695E480];
  if (v31)
  {
    v32 = *(CMBaseObjectGetVTable() + 16);
    if (v32)
    {
      v33 = *(v32 + 48);
      if (v33)
      {
        v33(v31, *MEMORY[0x1E69B0370], v1, &v331);
      }
    }
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (!CFPreferenceNumberWithDefault)
  {
    CFPreferenceNumberWithDefault = getenv("ENABLE_BUFFERED_LOCAL_PLAYBACK");
    if (!CFPreferenceNumberWithDefault || *CFPreferenceNumberWithDefault != 49 || CFPreferenceNumberWithDefault[1])
    {
      v45 = *(v12 + 8);
      v46 = v331;
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (v47)
      {
        v48 = v47(v45, v46, &v338);
        if (v48)
        {
          goto LABEL_376;
        }

        goto LABEL_37;
      }

LABEL_75:
      OUTLINED_FUNCTION_5_46();
      v84 = 0;
      v44 = -12782;
LABEL_76:
      LOBYTE(v85) = 1;
LABEL_79:
      v97 = 5;
LABEL_250:
      v107 = *(v12 + 40);
      if (v107)
      {
        CFRetain(*(v12 + 40));
      }

      airplayRoute_stopEndpointNotificationListeners(a1);
      v204 = *(v12 + 32);
      if (v204 && !airplayRoute_endpointStreamsHaveSameID(v204, v337))
      {
        FigEndpointRelinquishStreamResource();
      }

      v205 = *(v12 + 24);
      if (v205)
      {
        CFRelease(v205);
        *(v12 + 24) = 0;
      }

      v206 = *(v12 + 80);
      if (v206)
      {
        CFRelease(v206);
        *(v12 + 80) = 0;
      }

      v207 = *(v12 + 96);
      if (v207)
      {
        CFRelease(v207);
        *(v12 + 96) = 0;
      }

      *(v12 + 104) = 0;
      *(v12 + 49) = 256;
      v208 = *(v12 + 40);
      if (v208)
      {
        CFRelease(v208);
        *(v12 + 40) = 0;
      }

      v209 = *(v12 + 56);
      if (v209)
      {
        CFRelease(v209);
        *(v12 + 56) = 0;
      }

      v210 = *(v12 + 32);
      if (v210)
      {
        CFRelease(v210);
        *(v12 + 32) = 0;
      }

      if (!v44)
      {
        if (v1)
        {
          *(v12 + 49) = 1;
          v211 = *(v12 + 56);
          v212 = v336;
          *(v12 + 56) = v336;
          if (v212)
          {
            CFRetain(v212);
          }

          if (v211)
          {
            CFRelease(v211);
          }
        }

        v213 = *(v12 + 40);
        *(v12 + 40) = v318;
        if (v318)
        {
          CFRetain(v318);
        }

        if (v213)
        {
          CFRelease(v213);
        }

        if (v30)
        {
          v214 = *(v12 + 32);
          v215 = v337;
          *(v12 + 32) = v337;
          if (v215)
          {
            CFRetain(v215);
          }

          if (v214)
          {
            CFRelease(v214);
          }
        }

        v216 = *(v12 + 80);
        *(v12 + 80) = v84;
        if (v84)
        {
          CFRetain(v84);
        }

        if (v216)
        {
          CFRelease(v216);
        }

        v217 = *(v12 + 96);
        v218 = value;
        *(v12 + 96) = value;
        if (v218)
        {
          CFRetain(v218);
        }

        if (v217)
        {
          CFRelease(v217);
        }

        v219 = *(v12 + 24);
        v220 = v338;
        *(v12 + 24) = v338;
        if (v220)
        {
          CFRetain(v220);
        }

        if (v219)
        {
          CFRelease(v219);
        }

        if (*(CMBaseObjectGetDerivedStorage() + 24))
        {
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_15_19();
          FigNotificationCenterAddWeakListener();
        }

        *(v12 + 104) = BYTE4(v314);
        *(v12 + 50) = v85;
      }

      if (!FigCFEqual())
      {
        *(v12 + 48) = 0;
      }

      goto LABEL_299;
    }
  }

  if (dword_1EAF17000)
  {
    v42 = OUTLINED_FUNCTION_4_51(CFPreferenceNumberWithDefault, v35, v36, v37, v38, v39, v40, v41, v286, v290, v294, v298, v302, v306, v310, v314, v318, alloc, v326, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
    v43 = type[0];
    os_log_type_enabled(v42, type[0]);
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *cf = 136315650;
      OUTLINED_FUNCTION_18_15();
      OUTLINED_FUNCTION_59();
      v49 = OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl(v49, v50, v51, v52, v53, v42, v43, v54);
    }

    OUTLINED_FUNCTION_0_70();
    OUTLINED_FUNCTION_238_0(v55, v56, v57, v58, v59);
  }

  v60 = *(v12 + 8);
  v61 = v331;
  v62 = *(*(CMBaseObjectGetVTable() + 16) + 192);
  if (!v62)
  {
    goto LABEL_75;
  }

  v48 = v62(v60, v61, &v338);
  if (v48)
  {
LABEL_376:
    v44 = v48;
    OUTLINED_FUNCTION_5_46();
    v84 = 0;
    goto LABEL_76;
  }

  if (!v338)
  {
    goto LABEL_40;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v64 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v64)
  {
    v64(CMBaseObject, *MEMORY[0x1E6961698], *v30);
  }

LABEL_37:
  if (v338)
  {
    v65 = *(v12 + 8);
    VTable = CMBaseObjectGetVTable();
    v75 = *(VTable + 8);
    v74 = (VTable + 8);
    v76 = *(v75 + 48);
    if (v76)
    {
      v77 = MEMORY[0x1E69AF4C8];
LABEL_42:
      v74 = v76(v65, *v77, v1, &BOOLean);
      v44 = 1;
      if (!v74)
      {
        v74 = BOOLean;
        if (BOOLean)
        {
          v74 = CFBooleanGetValue(BOOLean);
          v44 = v74;
        }
      }

      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_40:
  v65 = *(v12 + 8);
  v78 = CMBaseObjectGetVTable();
  v79 = *(v78 + 8);
  v74 = (v78 + 8);
  v76 = *(v79 + 48);
  if (v76)
  {
    v77 = MEMORY[0x1E69AF4D0];
    goto LABEL_42;
  }

LABEL_45:
  v44 = 1;
LABEL_46:
  if (dword_1EAF17000)
  {
    v80 = OUTLINED_FUNCTION_4_51(v74, v67, v68, v69, v70, v71, v72, v73, v286, v290, v294, v298, v302, v306, v310, v314, v318, alloc, v326, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
    v81 = v341;
    v1 = type[0];
    if (os_log_type_enabled(v80, type[0]))
    {
      v82 = v81;
    }

    else
    {
      v82 = v81 & 0xFFFFFFFE;
    }

    if (v82)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *cf = 136316162;
      OUTLINED_FUNCTION_9_24();
      OUTLINED_FUNCTION_22_16();
      *&v348[8] = 1024;
      v349 = v44;
      OUTLINED_FUNCTION_59();
      _os_log_send_and_compose_impl(v82, 0, v363, 128, &dword_1962D5000, v80, v1, "<<<< FigAirPlay_Route >>>> %s: [%p] %{public}s Selected endpoint from routing context [%p], Local Playback = %d");
    }

    OUTLINED_FUNCTION_0_70();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    BOOLean = 0;
  }

LABEL_58:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v84 = Mutable;
  if (!Mutable)
  {
    LOBYTE(v85) = v44;
    OUTLINED_FUNCTION_5_46();
    v44 = -12862;
    goto LABEL_79;
  }

  v85 = *v30;
  v86 = *MEMORY[0x1E695E4C0];
  if (v44)
  {
    v87 = *v30;
  }

  else
  {
    v87 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"IsLocalPlaybackEnabled", v87);
  if (!v338)
  {
    v93 = 0;
    LODWORD(v302) = 0;
    v94 = 0;
    LODWORD(v30) = 0;
    v318 = 0;
    LODWORD(v1) = 0;
    goto LABEL_105;
  }

  LODWORD(v1) = FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    LOBYTE(v85) = v44;
    OUTLINED_FUNCTION_5_46();
    v44 = -12782;
    goto LABEL_79;
  }

  v88 = v85;
  LOBYTE(v85) = v44;
  v310 = v86;
  v89 = OUTLINED_FUNCTION_19_17();
  v91 = v90(v89);
  if (v91)
  {
    v44 = v91;
    OUTLINED_FUNCTION_5_46();
    goto LABEL_79;
  }

  if (!value)
  {
    OUTLINED_FUNCTION_5_46();
    v44 = -12860;
    goto LABEL_79;
  }

  CFDictionaryAddValue(v84, @"NewRouteName", value);
  if (FigGetCFPreferenceNumberWithDefault())
  {
    v85 = v88;
    CFDictionarySetValue(v84, @"IsLocalPlaybackEnabled", v88);
    LODWORD(v302) = 0;
    v92 = 0;
    v44 = 1;
  }

  else if (*(v12 + 140))
  {
    LODWORD(v302) = 0;
    v92 = 0;
    v85 = v88;
  }

  else
  {
    if (*(v12 + 32) && FigEndpointContainsStream())
    {
      v95 = *(v12 + 32);
      v85 = v88;
      if (v95)
      {
        v96 = CFRetain(v95);
      }

      else
      {
        v96 = 0;
      }

      v337 = v96;
    }

    else
    {
      FigEndpointAcquireAndCopyStreamResource();
      v96 = v337;
      v85 = v88;
    }

    HaveSameID = airplayRoute_endpointStreamsHaveSameID(*(v12 + 32), v96);
    v92 = v337 != 0;
    LODWORD(v302) = HaveSameID != 0;
  }

  LODWORD(v306) = v92;
  if (CelestialIsAppleTV() || CelestialIsAudioAccessory())
  {
    v99 = 0;
  }

  else
  {
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v108 = OUTLINED_FUNCTION_19_17();
      v109(v108);
    }

    if (BOOLean)
    {
      if (CFBooleanGetValue(BOOLean))
      {
        HIDWORD(v294) = v44;
        v110 = CMBaseObjectGetDerivedStorage();
        v341 = 0;
        v111 = *(v110 + 112);
        if (v111)
        {
          v112 = *(CMBaseObjectGetVTable() + 16);
          if (v112 && *(v112 + 48) && (v113 = OUTLINED_FUNCTION_19_17(), v114(v113), v341))
          {
            v115 = CFGetTypeID(v341);
            if (v115 == CFBooleanGetTypeID())
            {
              v116 = CFBooleanGetValue(v341);
              LODWORD(v111) = v116 == 0;
              if (!v116 && dword_1EAF17000)
              {
                *type = 0;
                HIBYTE(v339) = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v118 = *type;
                v119 = HIBYTE(v339);
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v339)))
                {
                  v120 = v118;
                }

                else
                {
                  v120 = v118 & 0xFFFFFFFE;
                }

                if (v120)
                {
                  if (a1)
                  {
                    CMBaseObjectGetDerivedStorage();
                  }

                  *cf = 136315906;
                  OUTLINED_FUNCTION_9_24();
                  OUTLINED_FUNCTION_22_16();
                  OUTLINED_FUNCTION_59();
                  _os_log_send_and_compose_impl(v120, 0, v363, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v119, "<<<< FigAirPlay_Route >>>> %s: [%p] %{public}s Disallowing AP Video on session %p");
                }

                LODWORD(v111) = 1;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              LODWORD(v111) = 0;
            }

            if (v341)
            {
              CFRelease(v341);
            }
          }

          else
          {
            LODWORD(v111) = 0;
          }
        }

        v99 = v111 == 0;
      }

      else
      {
        v99 = 0;
      }

      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    else
    {
      v99 = 0;
    }

    if (v336)
    {
      CFRelease(v336);
      v336 = 0;
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v284 = OUTLINED_FUNCTION_19_17();
      v285(v284);
    }
  }

  v363[0] = 0;
  *cf = 0;
  FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
LABEL_91:
    v94 = 0;
    goto LABEL_92;
  }

  v100 = OUTLINED_FUNCTION_19_17();
  v94 = 0;
  if (!v101(v100) && v363[0])
  {
    v102 = CFGetTypeID(v363[0]);
    if (v102 == CFBooleanGetTypeID())
    {
      v94 = CFBooleanGetValue(v363[0]) == 0;
      goto LABEL_92;
    }

    goto LABEL_91;
  }

LABEL_92:
  FigEndpointGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v318 = 0;
    goto LABEL_99;
  }

  v103 = OUTLINED_FUNCTION_19_17();
  v318 = 0;
  if (v104(v103))
  {
LABEL_99:
    LODWORD(v1) = v99;
    goto LABEL_100;
  }

  LODWORD(v1) = v99;
  if (*cf)
  {
    v105 = CFGetTypeID(*cf);
    if (v105 == CFArrayGetTypeID() && (FirstValue = FigCFArrayGetFirstValue()) != 0)
    {
      v318 = CFRetain(FirstValue);
    }

    else
    {
      v318 = 0;
    }

    goto LABEL_99;
  }

LABEL_100:
  if (v363[0])
  {
    CFRelease(v363[0]);
  }

  LODWORD(v30) = v306;
  if (*cf)
  {
    CFRelease(*cf);
  }

  v93 = v338;
LABEL_105:
  HIDWORD(v314) = v94;
  if (*(v12 + 24) == v93 && *(v12 + 49) == v1 && FigCFEqual() && ((*(v12 + 40) == v318) & v302) == 1)
  {
    if (*(v12 + 50) == v44)
    {
      goto LABEL_110;
    }

    if (v44 != 1)
    {
      LOBYTE(v85) = v44;
      v44 = 0;
      v97 = 4;
      goto LABEL_250;
    }
  }

  if (v1)
  {
    HIDWORD(v302) = v1;
    alloc = *MEMORY[0x1E695E480];
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v121 = OUTLINED_FUNCTION_7_29();
      v122(v121);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"AirPlayFromCloudSupported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v123 = OUTLINED_FUNCTION_7_29();
      v124(v123);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"AirPlayPlayQueueSupported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v125 = OUTLINED_FUNCTION_7_29();
      v126(v125);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"ExternalPlaybackCannotFetchMediaFromSender", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v127 = OUTLINED_FUNCTION_7_29();
      v128(v127);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"ExternalPlaybackDoesNotSupportEncryptedCRABS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v129 = OUTLINED_FUNCTION_7_29();
      v130(v129);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"ExternalPlaybackDoesNotRequireVodkaForHLS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v131 = OUTLINED_FUNCTION_7_29();
      v132(v131);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsOfflineHLS", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    v133 = FigEndpointGetCMBaseObject();
    v134 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v134)
    {
      v134(v133, *MEMORY[0x1E6962080], alloc, &theDict);
    }

    if (theDict)
    {
      v298 = v85;
      if (FigCFDictionaryGetBooleanIfPresent())
      {
        if (dword_1EAF17000)
        {
          LODWORD(v306) = v30;
          v30 = v86;
          v135 = v85;
          HIDWORD(v294) = v44;
          LODWORD(v341) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v136 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v137 = v341;
          v138 = type[0];
          if (os_log_type_enabled(v136, type[0]))
          {
            v139 = v137;
          }

          else
          {
            v139 = v137 & 0xFFFFFFFE;
          }

          if (v139)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *cf = 136315906;
            OUTLINED_FUNCTION_9_24();
            v345 = 2082;
            OUTLINED_FUNCTION_17_14();
            OUTLINED_FUNCTION_59();
            v149 = OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl(v149, v150, v151, v152, v153, v136, v138, v154);
          }

          OUTLINED_FUNCTION_0_70();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v85 = v135;
          v86 = v30;
          LODWORD(v30) = v306;
        }
      }

      else
      {
        v140 = 0;
        v141 = 0;
        if (a1)
        {
          v142 = 0;
          if (theDict)
          {
            v142 = CFDictionaryGetValue(theDict, @"webAppVersion");
            if (v142)
            {
              ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, v142, @".");
              v140 = ArrayBySeparatingStrings;
              if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v140, 0)) != 0)
              {
                IntValue = CFStringGetIntValue(ValueAtIndex);
                v141 = 0;
                if (IntValue != 0x80000000 && IntValue && IntValue != 0x7FFFFFFF)
                {
                  v141 = IntValue > 40 || (IntValue & 0xFFFFFFFE) == 18;
                }
              }

              else
              {
                v141 = 0;
              }
            }

            else
            {
              v141 = 0;
              v140 = 0;
            }
          }
        }

        else
        {
          v142 = 0;
        }

        if (dword_1EAF17000)
        {
          v310 = v86;
          HIDWORD(v294) = v44;
          LODWORD(v341) = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v148 = type[0];
          v306 = v147;
          os_log_type_enabled(v147, type[0]);
          OUTLINED_FUNCTION_46();
          if (v86)
          {
            if (a1)
            {
              CMBaseObjectGetDerivedStorage();
            }

            *cf = 136316162;
            OUTLINED_FUNCTION_18_15();
            v347 = 2112;
            *v348 = v142;
            *&v348[8] = 1024;
            v349 = v141;
            OUTLINED_FUNCTION_59();
            v155 = OUTLINED_FUNCTION_30();
            _os_log_send_and_compose_impl(v155, v156, v157, v158, v159, v306, v148, v160);
          }

          OUTLINED_FUNCTION_0_70();
          OUTLINED_FUNCTION_238_0(v161, v162, v163, v164, v165);
        }

        if (v140)
        {
          CFRelease(v140);
        }

        HIBYTE(v326) = v141;
        v85 = v298;
      }

      if (FigCFDictionaryGetBooleanIfPresent())
      {
        isAirPlayVideoFeatureEnabledInServerBag = BYTE6(v326);
      }

      else
      {
        isAirPlayVideoFeatureEnabledInServerBag = airplayroute_isAirPlayVideoFeatureEnabledInServerBag(a1, theDict, @"supportsInterstitials", @"AirPlayMPV1ReceiverNativeInterstitialsEnabledMinimumVersion");
        BYTE6(v326) = isAirPlayVideoFeatureEnabledInServerBag;
      }

      if (isAirPlayVideoFeatureEnabledInServerBag)
      {
        isAirPlayVideoFeatureEnabledInServerBag = FigCFDictionaryGetBooleanIfPresent();
        if (!isAirPlayVideoFeatureEnabledInServerBag)
        {
          isAirPlayVideoFeatureEnabledInServerBag = airplayroute_isAirPlayVideoFeatureEnabledInServerBag(a1, theDict, @"supportsIntegratedTimeline", @"AirPlayMPV1ReceiverIntegratedTimelineEnabledMinimumVersion");
          BYTE4(v326) = isAirPlayVideoFeatureEnabledInServerBag;
        }
      }

      if (dword_1EAF17000)
      {
        v174 = OUTLINED_FUNCTION_4_51(isAirPlayVideoFeatureEnabledInServerBag, v166, v167, v168, v169, v170, v171, v172, v286, v290, v294, v298, v302, v306, v86, v314, v318, alloc, v326, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
        v175 = type[0];
        os_log_type_enabled(v174, type[0]);
        OUTLINED_FUNCTION_46();
        if (v86)
        {
          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *cf = 136316162;
          *&cf[4] = "airplayRoute_updateRouteInformation";
          v343 = 2048;
          v344 = a1;
          v345 = 2082;
          OUTLINED_FUNCTION_17_14();
          *&v348[4] = v176;
          *&v348[6] = v177;
          OUTLINED_FUNCTION_59();
          v178 = OUTLINED_FUNCTION_30();
          _os_log_send_and_compose_impl(v178, v179, v180, v181, v182, v174, v175, v183);
        }

        OUTLINED_FUNCTION_0_70();
        OUTLINED_FUNCTION_238_0(v184, v185, v186, v187, v188);
        v85 = v298;
        v86 = v310;
      }

      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      v94 = HIDWORD(v314);
    }

    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsAirPlayVideoWithSharePlay", v189);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsInterstitials", v190);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsIntegratedTimeline", v191);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsStopAtEndOfQueue", v192);
    OUTLINED_FUNCTION_23_17();
    CFDictionaryAddValue(v84, @"ExternalPlaybackSupportsCoordinatedAPV", v193);
    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v194 = OUTLINED_FUNCTION_7_29();
      v195(v194);
    }

    if (BOOLean)
    {
      if (BYTE6(v326) || (v197 = FigCFEqual(), v196 = v86, !v197))
      {
        v196 = v85;
      }
    }

    else
    {
      v196 = v86;
    }

    CFDictionaryAddValue(v84, @"ExternalPlaybackReportsValidSeekResponseTime", v196);
    if (BOOLean)
    {
      CFRelease(BOOLean);
      BOOLean = 0;
    }

    FigEndpointGetCMBaseObject();
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v198 = OUTLINED_FUNCTION_7_29();
      v199(v198);
    }

    if (BOOLean)
    {
      CFDictionaryAddValue(v84, @"AirPlayVideoV2Supported", BOOLean);
      if (BOOLean)
      {
        CFRelease(BOOLean);
        BOOLean = 0;
      }
    }

    CFDictionaryAddValue(v84, @"IsURLPlaybackEnabled", v85);
    v200 = FigEndpointGetCMBaseObject();
    v201 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v201)
    {
      v201(v200, *MEMORY[0x1E6961FA0], alloc, &v334);
    }

    if (v334)
    {
      CFDictionaryAddValue(v84, @"AirPlayVodkaVersion", v334);
      if (v334)
      {
        CFRelease(v334);
        v334 = 0;
      }
    }

    if (FigCFEqual())
    {
      v202 = v86;
    }

    else
    {
      v202 = v85;
    }

    CFDictionaryAddValue(v84, @"IsPlaybackTokenChanged", v202);
    LODWORD(v1) = HIDWORD(v302);
  }

  if (v30)
  {
    HIDWORD(v302) = v1;
    v281 = v85;
    LOBYTE(v85) = v44;
    CFDictionaryAddValue(v84, @"IsBufferedAudioEnabled", v281);
    if (v302)
    {
      v282 = v86;
    }

    else
    {
      v282 = v281;
    }

    CFDictionaryAddValue(v84, @"IsBufferedAudioStreamChanged", v282);
    *(v12 + 152) = 0;
    v283 = airplayRoute_copyRoutingContext(a1, &v332);
    if (v283)
    {
      v44 = v283;
      v97 = 5;
      LODWORD(v1) = HIDWORD(v302);
LABEL_350:
      LODWORD(v30) = 1;
      goto LABEL_250;
    }

    airplayRoute_updateRoutingRegistryInternal(a1, v332);
    LODWORD(v1) = HIDWORD(v302);
  }

  v203 = CMBaseObjectGetDerivedStorage();
  if (*(v203 + 49) || *(v203 + 40) || *(v203 + 32) || !*(v203 + 50))
  {
    LODWORD(v85) = v44;
    if (v1)
    {
      v44 = 0;
      if (v94)
      {
        v97 = 3;
      }

      else
      {
        v97 = 4;
      }

      LODWORD(v1) = 1;
      goto LABEL_250;
    }

    v97 = 4;
    if ((v30 & 1) == 0)
    {
      LODWORD(v30) = 0;
      LODWORD(v1) = 0;
      v44 = 0;
      if (v85)
      {
        v97 = 5;
      }

      else
      {
        v97 = 4;
      }

      goto LABEL_250;
    }

    LODWORD(v1) = 0;
    v44 = 0;
    goto LABEL_350;
  }

  if (v1)
  {
    LOBYTE(v85) = v44;
    v44 = 0;
    LODWORD(v1) = 1;
    if (v94)
    {
      v97 = 1;
    }

    else
    {
      v97 = 2;
    }

    goto LABEL_250;
  }

  if (v30)
  {
    LOBYTE(v85) = v44;
    LODWORD(v1) = 0;
    v44 = 0;
    LODWORD(v30) = 1;
    v97 = 2;
    goto LABEL_250;
  }

  if (!v44)
  {
    LODWORD(v30) = 0;
    LOBYTE(v85) = 0;
    LODWORD(v1) = 0;
    if (v94)
    {
      v97 = 1;
    }

    else
    {
      v97 = 2;
    }

    goto LABEL_250;
  }

LABEL_110:
  v97 = 0;
  v107 = 0;
  v44 = 0;
LABEL_299:
  if (v318)
  {
    CFRelease(v318);
  }

  if (v107)
  {
    CFRelease(v107);
  }

  if (v337)
  {
    CFRelease(v337);
  }

  if (value)
  {
    CFRelease(value);
  }

  if (v84)
  {
    CFRelease(v84);
  }

  if (v338)
  {
    CFRelease(v338);
  }

  if (v332)
  {
    CFRelease(v332);
  }

  if (v336)
  {
    CFRelease(v336);
  }

  if (v331)
  {
    CFRelease(v331);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  HIBYTE(v326) = 0;
  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (dword_1EAF17000)
  {
    v229 = OUTLINED_FUNCTION_4_51(BooleanIfPresent, v222, v223, v224, v225, v226, v227, v228, v286, v290, v294, v298, v302, v306, v310, v314, v318, alloc, v326, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
    v237 = OUTLINED_FUNCTION_26_15(v229, v230, v231, v232, v233, v234, v235, v236, v287, v291, v295, v299, v303, v307, v311, v315, v319, allocb, v327, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
    if (OUTLINED_FUNCTION_109_0(v237))
    {
      OUTLINED_FUNCTION_20_11();
      *cf = 136317698;
      *&cf[4] = "airplayRoute_updateRouteInformation";
      v343 = 2048;
      v344 = a1;
      v345 = 2082;
      v346 = v238;
      v347 = 2112;
      *v348 = v239;
      *&v348[8] = 1024;
      v349 = v240;
      v350 = 0;
      v351 = 8;
      v352 = v241;
      v353 = 2048;
      v354 = v242;
      v355 = 2048;
      v356 = v243;
      v357 = 1024;
      v358 = v244;
      v359 = 1024;
      v360 = v245;
      v361 = 1024;
      v362 = HIBYTE(v328);
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_38();
      _os_log_send_and_compose_impl(v246, v247, v248, v249, v250, v251, v84, v252);
    }

    OUTLINED_FUNCTION_0_70();
    v253 = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EAF17000)
    {
      v261 = OUTLINED_FUNCTION_4_51(v253, v254, v255, v256, v257, v258, v259, v260, v288, v292, v296, v300, v304, v308, v312, v316, v320, alloca, v328, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
      v269 = OUTLINED_FUNCTION_26_15(v261, v262, v263, v264, v265, v266, v267, v268, v289, v293, v297, v301, v305, v309, v313, v317, v321, allocc, v329, theDict, v331, v332, BOOLean, v334, value, v336, v337, v338, v339, type[0], v341);
      if (OUTLINED_FUNCTION_109_0(v269))
      {
        *cf = 136316162;
        OUTLINED_FUNCTION_9_24();
        v345 = 2082;
        OUTLINED_FUNCTION_17_14();
        *&v348[4] = v270;
        *&v348[6] = v44;
        OUTLINED_FUNCTION_59();
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v271, v272, v273, v274, v275, v276, v84, v277);
      }

      OUTLINED_FUNCTION_0_70();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (v97 - 1 >= 2 && v97 - 3 >= 2)
  {
    if (v97 == 5)
    {
      v279 = CMBaseObjectGetDerivedStorage();
      v280 = *(v279 + 80);
      if (v280)
      {
        CFRelease(v280);
        *(v279 + 80) = 0;
      }

      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }
  }

  else
  {
    CMBaseObjectGetDerivedStorage();
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

BOOL airplayroute_isAirPlayVideoFeatureEnabledInServerBag(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, __CFString *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  cf = 0;
  v14 = 0;
  Value = CFDictionaryGetValue(theDict, @"webAppVersion");
  if (!Value || (getBuildNumberFromVersionString(Value, &v15 + 1, &v15), HIDWORD(v15) != 19) || (FigRCLCreateConfiguration(@"com.apple.mediaplaybackd", @"kFigRemoteConfigurationLoaderStoreBagType_AirPlay", 0, &cf), v6))
  {
    v8 = 0;
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v7 = FigRCLCopyCFType(cf, a4);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = CFGetTypeID(v7);
  if (v9 == CFStringGetTypeID())
  {
    getBuildNumberFromVersionString(v8, &v14 + 1, &v14);
    v11 = HIDWORD(v15) == HIDWORD(v14) && v15 >= v14;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  if (dword_1EAF17000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t airplayRoute_copyRoutingContext(uint64_t a1, CFTypeRef *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v6 = DerivedStorage, *DerivedStorage))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v30, v31);
LABEL_22:
    v21 = v19;
    goto LABEL_17;
  }

  if (!*(DerivedStorage + 16))
  {
    v16 = *(DerivedStorage + 112);
    if (!v16)
    {
      goto LABEL_11;
    }

    v17 = *(CMBaseObjectGetVTable() + 16);
    if (!v17)
    {
      v21 = 4294948075;
      goto LABEL_17;
    }

    v18 = *(v17 + 8);
    if (!v18)
    {
      v21 = 4294948071;
      goto LABEL_17;
    }

    v19 = v18(v16, @"FAS_RoutingContext", *MEMORY[0x1E695E480], &cf);
    if (!v19)
    {
LABEL_11:
      Mutable = 0;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v2)
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = *(v6 + 16);
      v33 = 136315906;
      v34 = "airplayRoute_copyRoutingContext";
      v35 = 2048;
      v36 = a1;
      v37 = 2082;
      v38 = v8 + 153;
      v39 = 2114;
      v40 = v9;
      v10 = OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, os_log_and_send_and_compose_flags_and_os_log_type, 0, v15, &v33, 42);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_238_0(v22, v23, v24, v25, v26);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AF350], *(v6 + 16));
  v27 = FigRoutingContextRemoteCopyContextForUUID();
  if (!v27)
  {
LABEL_15:
    v21 = 0;
    *a2 = cf;
    cf = 0;
    if (!Mutable)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v21 = v27;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void getBuildNumberFromVersionString(CFStringRef theString, SInt32 *a2, SInt32 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @".");
    v7 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) > 1)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        if (!ValueAtIndex)
        {
LABEL_15:
          CFRelease(v7);
          return;
        }

        *a2 = CFStringGetIntValue(ValueAtIndex);
      }

      if (a3)
      {
        v9 = CFArrayGetValueAtIndex(v7, 1);
        if (v9)
        {
          *a3 = CFStringGetIntValue(v9);
        }
      }

      goto LABEL_15;
    }

    if (dword_1EAF17000 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_109_0(v11))
      {
        v20 = 136315394;
        v21 = "getBuildNumberFromVersionString";
        v22 = 2112;
        v23 = theString;
        v19 = 22;
        OUTLINED_FUNCTION_38();
        _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v17, 0, v18, &v20, v19);
      }

      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v7)
    {
      goto LABEL_15;
    }
  }
}

void airplayRoute_endpointStreamsChangedCallback(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 88))
      {
        CFRetain(a2);
        OUTLINED_FUNCTION_0_52();
        v6[1] = 0x40000000;
        v6[2] = __airplayRoute_endpointStreamsChangedCallback_block_invoke;
        v6[3] = &__block_descriptor_tmp_184_0;
        v6[4] = v4;
        v6[5] = a2;
        dispatch_async(v5, v6);
      }
    }
  }
}

_BYTE *airplayRoute_isActiveDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v9 = result;
    if (!*result)
    {
      if (a5)
      {
        result = CFDictionaryGetValue(a5, *MEMORY[0x1E69AFA78]);
      }

      else
      {
        result = 0;
      }

      v10 = result == *MEMORY[0x1E695E4D0];
      if (*(v9 + 14) == a4 && v9[138] != v10)
      {
        v9[138] = v10;
      }
    }
  }

  return result;
}

void airplayRoute_audioBehaviorOrPrefersConcurrentAirPlayAudioDidChange(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 && !*DerivedStorage && *(DerivedStorage + 112) == a4 && airplayRoute_updateAudioSessionPolicyForBuffered(a2))
  {

    airplayRoute_pickableRoutesChangedGuts(a2);
  }
}

void airplayRoute_audioModeDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!*DerivedStorage)
  {
    v6 = *(DerivedStorage + 112);
    if (v6 == a4)
    {
      v7 = *MEMORY[0x1E695E480];
      if (a4)
      {
        v8 = *(CMBaseObjectGetVTable() + 16);
        if (v8)
        {
          v9 = *(v8 + 48);
          if (v9)
          {
            v9(v6, *MEMORY[0x1E69AFCE8], v7, &cf);
          }
        }
      }

      Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetValue();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
      if (cf)
      {
        CFRelease(cf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

void airplayRoute_resetRoutingContextIfNeededInternal(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return;
  }

  v3 = DerivedStorage;
  v4 = airplayRoute_copyRoutingContext(a1, &cf);
  v5 = cf;
  if (v4 || (airplayRoute_updateRoutingRegistryInternal(a1, cf), FigCFEqual()))
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_5;
  }

  airplayRoute_stopRoutingContextListeners(a1);
  v6 = *(v3 + 1);
  *(v3 + 1) = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_13_16();
    FigNotificationCenterAddWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_12_22();
    FigNotificationCenterAddWeakListener();
  }

  airplayRoute_pickableRoutesChangedGuts(a1);
  if (v5)
  {
LABEL_5:

    CFRelease(v5);
  }
}

void __airplayRoute_updateRoutingRegistry_block_invoke(uint64_t a1)
{
  cf = 0;
  if (!airplayRoute_copyRoutingContext(*(a1 + 32), &cf))
  {
    airplayRoute_updateRoutingRegistryInternal(*(a1 + 32), cf);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = cf;
  if (cf)
  {

    CFRelease(v3);
  }
}

uint64_t airplayRoute_createOrReleaseClientAssertionIfNeeded(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = result;
    if (!*result)
    {
      result = *(result + 120);
      if (result)
      {
        if (*(v3 + 128))
        {
          if (!*(v3 + 136) && !*(v3 + 137))
          {
            MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion();
            result = *(v3 + 128);
            if (result)
            {
              CFRelease(result);
              result = 0;
LABEL_12:
              *(v3 + 128) = result;
            }
          }
        }

        else if (*(v3 + 136) || *(v3 + 137))
        {
          result = MX_RunningBoardServices_CreateMediaPlaybackProcessAssertionForPID();
          goto LABEL_12;
        }
      }
    }
  }

  return result;
}

void __airplayRoute_updateRoutingContextUUID_block_invoke(void *a1)
{
  if (!*a1[4] && !FigCFEqual())
  {
    v5 = a1[4];
    v4 = a1[5];
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    airplayRoute_resetRoutingContextIfNeededInternal(a1[6]);
  }

  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t airplayRoute_Activate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && !*DerivedStorage && *(DerivedStorage + 88))
  {
    airplayRoute_updateRoutingContextUUID(a1, 0);
  }

  return 0;
}

uint64_t airplayRoute_ReevaluateCurrentRoute(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (!*DerivedStorage)
    {
      v3 = *(DerivedStorage + 88);
      if (v3)
      {
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __airplayRoute_ReevaluateCurrentRoute_block_invoke;
        v5[3] = &__block_descriptor_tmp_208_0;
        v5[4] = DerivedStorage;
        v5[5] = a1;
        dispatch_sync(v3, v5);
      }
    }
  }

  return 0;
}

uint64_t __airplayRoute_setNewFigAudioSession_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  airplayRoute_stopFigAudioSessionListeners(*(a1 + 40));
  v6 = CFRetain(*(*a2 + 112));
  global_queue = dispatch_get_global_queue(0, 0);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 0x40000000;
  a3[2] = __airplayRoute_setNewFigAudioSession_block_invoke_2;
  a3[3] = &__block_descriptor_tmp_200;
  a3[4] = v6;
  dispatch_async(global_queue, a3);
  v8 = *(a1 + 40);
  result = CMBaseObjectGetDerivedStorage();
  if (v8)
  {
    if (!*result)
    {
      *(result + 136) = 0;
      return airplayRoute_createOrReleaseClientAssertionIfNeeded(v8);
    }
  }

  return result;
}

uint64_t __airplayRoute_setAirPlayVideoIsActive_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25_15();
  if (v3)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v6(v2, *MEMORY[0x1E69AFC48], *v4);
    }
  }

  *(*v1 + 136) = *(v0 + 48);
  v7 = *(v0 + 40);

  return airplayRoute_createOrReleaseClientAssertionIfNeeded(v7);
}

uint64_t __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_25_15();
  if (v3)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *(CMBaseObjectGetVTable() + 16);
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6)
    {
      v6(v2, *MEMORY[0x1E69AFCF8], *v4);
    }
  }

  *(*v1 + 137) = *(v0 + 48);
  v7 = *(v0 + 40);

  return airplayRoute_createOrReleaseClientAssertionIfNeeded(v7);
}

uint64_t FigAssetCacheInspectorCreate_Remote(uint64_t a1, const void *a2, void *a3)
{
  v12 = 0;
  xdict = 0;
  value = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  cf[0] = MEMORY[0x1E69E9820];
  cf[1] = 0x40000000;
  cf[2] = __raci_ensureClientEstablished_block_invoke;
  cf[3] = &unk_1E74843C8;
  cf[4] = &v15;
  if (qword_1ED4CA918 != -1)
  {
    dispatch_once(&qword_1ED4CA918, cf);
  }

  v5 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    ObjectID = FigXPCCreateBasicMessage();
    if (ObjectID || (ObjectID = FigAssetXPCRemoteGetObjectID(a2, &value), ObjectID))
    {
      v5 = ObjectID;
    }

    else
    {
      xpc_dictionary_set_uint64(xdict, "AssetToken", value);
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v5)
      {
        uint64 = xpc_dictionary_get_uint64(v12, *MEMORY[0x1E69615A0]);
        cf[0] = 0;
        FigAssetCacheInspectorGetClassID();
        v5 = CMDerivedObjectCreate();
        v8 = cf[0];
        if (!v5)
        {
          *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
          v5 = FigXPCRemoteClientAssociateObject();
          v8 = cf[0];
          if (!v5)
          {
            if (cf[0])
            {
              v9 = CFRetain(cf[0]);
              v8 = cf[0];
            }

            else
            {
              v9 = 0;
            }

            v5 = 0;
            *a3 = v9;
          }
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t raci_invalidate(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (!FigAtomicCompareAndSwap32())
  {
    goto LABEL_6;
  }

  v1 = FigXPCRemoteClientDisassociateObject();
  if (v1)
  {
    v3 = v1;
    goto LABEL_7;
  }

  if (FigAtomicCompareAndSwap32())
  {
    v2 = FigXPCCreateBasicMessage();
    if (v2)
    {
      v3 = v2;
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
LABEL_6:
    v3 = 0;
  }

LABEL_7:
  FigXPCRelease();
  return v3;
}

uint64_t raci_copyProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  ObjectID = raci_getObjectID(a1, &v5);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_1_71();
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v3 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t raci_setProperty(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  ObjectID = raci_getObjectID(a1, &v5);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_1_71();
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v3 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t raci_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  if (cf && (v7 = CFGetTypeID(cf), v7 == CFDictionaryGetTypeID()))
  {
    if (a4)
    {
      ObjectID = raci_getObjectID(a1, &v13);
      if (!ObjectID)
      {
        ObjectID = FigXPCCreateBasicMessage();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageSetCFDictionary();
          if (!ObjectID)
          {
            ObjectID = FigXPCMessageSetCFObject();
            if (!ObjectID)
            {
              ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
              if (!ObjectID)
              {
                ObjectID = FigXPCMessageCopyCFArray();
              }
            }
          }
        }
      }
    }

    else
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950034, "<<< FigAssetCacheInspectorRemote >>>", 130, v4);
    }
  }

  else
  {
    v11 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 4294950034, "<<< FigAssetCacheInspectorRemote >>>", 129, v4);
  }

  v9 = ObjectID;
  FigXPCRelease();
  FigXPCRelease();
  return v9;
}

void __raci_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*(a1 + 32) + 8) + 24) = v2;
}

void raci_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void raci_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t TTMLParserParseStream(uint64_t a1, uint64_t a2)
{
  v638 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v620 = 0;
  v618 = 0;
  v614 = a1;
  CFSetRemoveAllValues(*(a1 + 56));
  v3 = *MEMORY[0x1E695E480];
  v4 = FigTTMLTreeCreate(*MEMORY[0x1E695E480], a2, &v620);
  if (v4 || (v4 = FigTTMLTreeCopySliceTimeRangeArray(v620, &theArray), v4))
  {
    v46 = v4;
    v6 = 0;
  }

  else
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = 0;
      v6 = 0;
      key = *MEMORY[0x1E6961450];
      v604 = *MEMORY[0x1E695E4D0];
      v607 = @"CaptionData";
      v606 = *MEMORY[0x1E6961240];
      v559 = *MEMORY[0x1E6961338];
      v544 = *MEMORY[0x1E6961358];
      v599 = *MEMORY[0x1E6961390];
      v589 = *MEMORY[0x1E69613B0];
      v574 = *MEMORY[0x1E6961328];
      v504 = *MEMORY[0x1E6961308];
      v525 = *MEMORY[0x1E69613B8];
      v483 = *MEMORY[0x1E6961278];
      v441 = *MEMORY[0x1E6961340];
      v420 = *MEMORY[0x1E6961348];
      v399 = *MEMORY[0x1E6961350];
      alloc = v3;
      while (1)
      {
        memset(&v616, 0, sizeof(v616));
        v608 = v5;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
        CMTimeRangeMakeFromDictionary(&v616, ValueAtIndex);
        if (v6)
        {
          CFRelease(v6);
        }

        v8 = v620;
        *v615 = v616;
        value = 0;
        v627 = 0;
        v624 = 0;
        cf = 0;
        v622 = 0;
        v623 = 0;
        Mutable = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        OUTLINED_FUNCTION_19_18(Mutable, v10, v11, v12, v13, v14, v15, v16, v17, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v608, v610, key, v612, alloc, v614, v18, *v615);
        active = FigTTMLTreeCopyActiveRegionArray(v8, &context.start.value, &v627);
        if (active)
        {
          v46 = active;
          v6 = 0;
          epoch = 0;
          goto LABEL_209;
        }

        v610 = CFArrayGetCount(v627);
        v612 = Mutable;
        if (v610 < 1)
        {
          break;
        }

        v20 = 0;
        epoch = 0;
        while (1)
        {
          v22 = CFArrayGetValueAtIndex(v627, v20);
          OUTLINED_FUNCTION_19_18(v22, v23, v24, v25, v26, v27, v28, v29, v30, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, v31, *v615);
          SynchronicTree = FigTTMLTreeCreateSynchronicTree(v3, v8, &context.start.value, v22, &v624);
          if (SynchronicTree)
          {
            break;
          }

          SynchronicTree = FigTTMLSynchronicTreeCopyCaptionArray(v624, &v623);
          if (SynchronicTree)
          {
            break;
          }

          v33 = CFArrayGetCount(v623);
          if (v33 >= 1)
          {
            v34 = v33;
            for (i = 0; i != v34; ++i)
            {
              v36 = CFArrayGetValueAtIndex(v623, i);
              if (epoch)
              {
                CFRelease(epoch);
              }

              context.start.value = 0;
              *&context.start.timescale = v614;
              context.start.epoch = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (context.start.epoch)
              {
                v639.length = CFArrayGetCount(v36);
                v639.location = 0;
                CFArrayApplyFunction(v36, v639, ttmlParser_addTextNodeSourceInformation, &context);
                epoch = context.start.epoch;
              }

              else
              {
                OUTLINED_FUNCTION_76_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v357, v378, v399);
                epoch = 0;
                if (v45)
                {
                  v46 = v45;
                  v6 = 0;
                  goto LABEL_209;
                }
              }

              v37 = CFDictionaryGetCount(epoch);
              if (!epoch || v37)
              {
                if (epoch)
                {
                  if (*(v614 + 32))
                  {
                    v38 = CFDictionaryGetValue(epoch, key);
                    if (v38)
                    {
                      (*(v614 + 32))(*(v614 + 48), v38);
                    }
                  }
                }
              }

              else
              {
                CFRelease(epoch);
                epoch = 0;
              }

              SynchronicTree = FigTTMLTreeGetParameters(v8, &v622);
              if (SynchronicTree)
              {
                goto LABEL_137;
              }

              SynchronicTree = FigCaptionDataCreateForTTML(v3, v36, v624, v22, epoch, v622, &cf);
              if (SynchronicTree)
              {
                goto LABEL_137;
              }

              context = *v615;
              v39 = CFArrayGetCount(v36);
              if (v39)
              {
                v40 = v39;
                v41 = 0;
                while (1)
                {
                  v42 = CFArrayGetValueAtIndex(v36, v41);
                  memset(&v634, 0, sizeof(v634));
                  FigTTMLNodeGetActiveTimeRange(v42, &v634);
                  if (v43)
                  {
                    break;
                  }

                  range = context;
                  otherRange = v634;
                  CMTimeRangeGetUnion(&context, &range, &otherRange);
                  if (v40 == ++v41)
                  {
                    goto LABEL_31;
                  }
                }

                v46 = v43;
                v3 = alloc;
                goto LABEL_47;
              }

LABEL_31:
              v634 = context;
              v3 = alloc;
              v44 = FigCaptionCreate(alloc, &v634.start.value, cf, &value);
              if (v44)
              {
                v46 = v44;
LABEL_47:
                Mutable = v612;
                goto LABEL_48;
              }

              Mutable = v612;
              CFArrayAppendValue(v612, value);
              if (cf)
              {
                CFRelease(cf);
                cf = 0;
              }

              if (value)
              {
                CFRelease(value);
                value = 0;
              }
            }
          }

          if (v624)
          {
            CFRelease(v624);
            v624 = 0;
          }

          if (v623)
          {
            CFRelease(v623);
            v623 = 0;
          }

          if (++v20 == v610)
          {
            goto LABEL_50;
          }
        }

LABEL_137:
        v46 = SynchronicTree;
LABEL_48:
        v6 = 0;
LABEL_209:
        if (v623)
        {
          CFRelease(v623);
        }

        if (v624)
        {
          CFRelease(v624);
        }

        if (epoch)
        {
          CFRelease(epoch);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (value)
        {
          CFRelease(value);
        }

        if (v627)
        {
          CFRelease(v627);
        }

        if (v46)
        {
          goto LABEL_236;
        }

        if (v618)
        {
          CFRelease(v618);
          v618 = 0;
        }

        context = v616;
        v355 = FigSampleBufferCreateFromFigCaptions(v3, v6, &context.start.value, &v618);
        if (v355)
        {
          v46 = v355;
          goto LABEL_236;
        }

        (*(v614 + 16))(*(v614 + 24), v618);
        v5 = v609 + 1;
        if (v609 + 1 == Count)
        {
          goto LABEL_235;
        }
      }

      epoch = 0;
LABEL_50:
      CFDictionaryGetValue(*(v614 + 64), @"ConsolidateiTTRegions");
      if (FigCFEqual())
      {
        v633 = 0;
        v631 = 0;
        v632 = 0;
        v629 = 0;
        v630 = 0;
        v47 = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v48 = CFArrayGetCount(Mutable);
          if (v48 >= 1)
          {
            v49 = v48;
            for (j = 0; v49 != j; ++j)
            {
              v51 = CFArrayGetValueAtIndex(Mutable, j);
              if (v633)
              {
                CFRelease(v633);
                v633 = 0;
              }

              FigCaptionGetCMBaseObject();
              v53 = v52;
              v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v54 || v54(v53, v607, alloc, &v633))
              {
                goto LABEL_148;
              }

              range.start.value = 0;
              otherRange.start.value = 0;
              FigCaptionDataGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_78;
              }

              v55 = OUTLINED_FUNCTION_8_21();
              if (v56(v55))
              {
                goto LABEL_78;
              }

              if (!range.start.value)
              {
                OUTLINED_FUNCTION_76_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v357, v378, v399);
                goto LABEL_78;
              }

              FigCaptionRegionGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_78;
              }

              v57 = OUTLINED_FUNCTION_14_21();
              if (v58(v57, v559, alloc))
              {
                goto LABEL_78;
              }

              v59 = FigCFEqual();
              if (v59)
              {
                OUTLINED_FUNCTION_3_53(v59, v60, v61, v62, v63, v64, v65, v66, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v67);
                v68 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_9_25(v68, v69, v70, v71, v72, v73, v74, v75, v358, v379, v400, v421, v442, v463, v484, v505, v526, v545, v560, v575, v590);
                v76 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_13_17(v76, v77, v78, v79, v80, v81, v82, v83, v359, v380, v401, v422, v443, v464, v485, v506, v527, v546, v561, v576);
                v84 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_11_24(v84, v85, v86, v87, v88, v89, v90, v91, v360, v381, v402, v423, v444, v465, v486, v507);
                v92 = OUTLINED_FUNCTION_17_15();
                OUTLINED_FUNCTION_10_26(v92, v93, v94, v95, v96, v97, v98, v99, v361, v382, v403, v424, v445, v466, v487, v508, v528);
                v100 = OUTLINED_FUNCTION_17_15();
                v108 = OUTLINED_FUNCTION_20_12(v100, v101, v102, v103, v104, v105, v106, v107, v362, v383, v404, v425, v446, v467, v488, v509, v529, v547, v562, v577, v591, v600, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, range.start.value);
                if (!ttmlParser_doPropertiesMatch(v108, &context, 5))
                {
                  goto LABEL_78;
                }

                v109 = v483;
                v634.start.value = v483;
                OUTLINED_FUNCTION_0_71();
                v110 = _MergedGlobals_50;
              }

              else
              {
                v111 = FigCFEqual();
                if (v111)
                {
                  OUTLINED_FUNCTION_3_53(v111, v112, v113, v114, v115, v116, v117, v118, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599);
                  MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v119);
                  v120 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_9_25(v120, v121, v122, v123, v124, v125, v126, v127, v363, v384, v405, v426, v447, v468, v489, v510, v530, v548, v563, v578, v592);
                  v128 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_13_17(v128, v129, v130, v131, v132, v133, v134, v135, v364, v385, v406, v427, v448, v469, v490, v511, v531, v549, v564, v579);
                  v136 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_11_24(v136, v137, v138, v139, v140, v141, v142, v143, v365, v386, v407, v428, v449, v470, v491, v512);
                  v144 = OUTLINED_FUNCTION_18_16();
                  OUTLINED_FUNCTION_10_26(v144, v145, v146, v147, v148, v149, v150, v151, v366, v387, v408, v429, v450, v471, v492, v513, v532);
                  v152 = OUTLINED_FUNCTION_18_16();
                  v160 = OUTLINED_FUNCTION_20_12(v152, v153, v154, v155, v156, v157, v158, v159, v367, v388, v409, v430, v451, v472, v493, v514, v533, v550, v565, v580, v593, v601, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, range.start.value);
                  if (!ttmlParser_doPropertiesMatch(v160, &context, 5))
                  {
                    goto LABEL_78;
                  }

                  v109 = v483;
                  v634.start.value = v483;
                  OUTLINED_FUNCTION_0_71();
                  v110 = qword_1ED4CA928;
                }

                else
                {
                  v163 = FigCFEqual();
                  if (v163)
                  {
                    OUTLINED_FUNCTION_1_72(v163, v164, v165, v166, v167, v168, v169, v170, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599);
                    MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v171);
                    v172 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_4_52(v172, v173, v174, v175, v176, v177, v178, v179, v368, v389, v410, v431, v452, v473, v494, v515, v534, v551, v566, v581, v594);
                    OUTLINED_FUNCTION_16_18();
                    v180 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_6_42(v180, v181, v182, v183, v184, v185, v186, v187, v369, v390, v411, v432, v453, v474, v495, v516, v535, v552, v567, v582);
                    OUTLINED_FUNCTION_16_18();
                    v188 = OUTLINED_FUNCTION_23_18();
                    OUTLINED_FUNCTION_12_23(v188, v189, v190, v191, v192, v193, v194, v195, v370, v391, v412, v433, v454, v475, v496, v517, v536);
                    v196 = OUTLINED_FUNCTION_23_18();
                    v204 = OUTLINED_FUNCTION_21_15(v196, v197, v198, v199, v200, v201, v202, v203, v371, v392, v413, v434, v455, v476, v497, v518, v537, v553, v568, v583, v595, v602, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, range.start.value);
                    if (!ttmlParser_doPropertiesMatch(v204, &context, 4))
                    {
                      goto LABEL_78;
                    }

                    v109 = v483;
                    v634.start.value = v483;
                    OUTLINED_FUNCTION_0_71();
                    v110 = qword_1ED4CA930;
                  }

                  else
                  {
                    v205 = FigCFEqual();
                    if (!v205)
                    {
                      goto LABEL_78;
                    }

                    OUTLINED_FUNCTION_1_72(v205, v206, v207, v208, v209, v210, v211, v212, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599);
                    MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v213);
                    v214 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_4_52(v214, v215, v216, v217, v218, v219, v220, v221, v372, v393, v414, v435, v456, v477, v498, v519, v538, v554, v569, v584, v596);
                    OUTLINED_FUNCTION_16_18();
                    v222 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_6_42(v222, v223, v224, v225, v226, v227, v228, v229, v373, v394, v415, v436, v457, v478, v499, v520, v539, v555, v570, v585);
                    OUTLINED_FUNCTION_16_18();
                    v230 = OUTLINED_FUNCTION_22_17();
                    OUTLINED_FUNCTION_12_23(v230, v231, v232, v233, v234, v235, v236, v237, v374, v395, v416, v437, v458, v479, v500, v521, v540);
                    v238 = OUTLINED_FUNCTION_22_17();
                    v246 = OUTLINED_FUNCTION_21_15(v238, v239, v240, v241, v242, v243, v244, v245, v375, v396, v417, v438, v459, v480, v501, v522, v541, v556, v571, v586, v597, v603, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, range.start.value);
                    if (!ttmlParser_doPropertiesMatch(v246, &context, 4))
                    {
                      goto LABEL_78;
                    }

                    v109 = v483;
                    v634.start.value = v483;
                    OUTLINED_FUNCTION_0_71();
                    v110 = qword_1ED4CA938;
                  }
                }
              }

              *&v634.start.timescale = CFDictionaryGetValue(v110, v109);
              LOBYTE(v634.start.epoch) = Mutable;
              CMBaseObject = FigCaptionDataGetCMBaseObject();
              if (ttmlParser_doPropertiesMatch(CMBaseObject, &v634, 1))
              {
                v162 = 0;
                goto LABEL_79;
              }

LABEL_78:
              v162 = 1;
LABEL_79:
              if (otherRange.start.value)
              {
                CFRelease(otherRange.start.value);
              }

              Mutable = v612;
              if (range.start.value)
              {
                CFRelease(range.start.value);
              }

              if (!v162)
              {
                continue;
              }

              if (v632)
              {
                CFRelease(v632);
                v632 = 0;
              }

              FigCaptionDataGetCMBaseObject();
              if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                goto LABEL_148;
              }

              v247 = OUTLINED_FUNCTION_8_21();
              if (v248(v247))
              {
                goto LABEL_148;
              }

              if (!v632)
              {
                OUTLINED_FUNCTION_76_0();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v357, v378, v399);
                goto LABEL_148;
              }

              if (v629)
              {
                CFRelease(v629);
                v629 = 0;
              }

              v249 = FigCaptionRegionGetCMBaseObject();
              v250 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (!v250 || v250(v249, v559, alloc, &v629))
              {
                goto LABEL_148;
              }

              v251 = *(MEMORY[0x1E6962828] + 16);
              *&context.start.value = *MEMORY[0x1E6962828];
              *&context.start.epoch = v251;
              v252 = *(MEMORY[0x1E6962828] + 48);
              *&context.duration.timescale = *(MEMORY[0x1E6962828] + 32);
              v636 = v252;
              otherRange.start.value = 0;
              FigCaptionRegionGetCMBaseObject();
              if (*(*(CMBaseObjectGetVTable() + 8) + 48))
              {
                v253 = OUTLINED_FUNCTION_14_21();
                if (!v254(v253, v599, alloc))
                {
                  FigCaptionDynamicStyleGetInitialValue();
                  memset(&v634, 0, 32);
                  FigGeometryPointMakeFromDictionary();
                  if (otherRange.start.value)
                  {
                    CFRelease(otherRange.start.value);
                    otherRange.start.value = 0;
                  }

                  FigCaptionRegionGetCMBaseObject();
                  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                  {
                    v255 = OUTLINED_FUNCTION_14_21();
                    if (!v256(v255, v589, alloc))
                    {
                      FigCaptionDynamicStyleGetInitialValue();
                      FigGeometryDimensionMakeFromDictionary();
                      if (otherRange.start.value)
                      {
                        CFRelease(otherRange.start.value);
                        otherRange.start.value = 0;
                      }

                      FigCaptionRegionGetCMBaseObject();
                      if (*(*(CMBaseObjectGetVTable() + 8) + 48))
                      {
                        v257 = OUTLINED_FUNCTION_14_21();
                        if (!v258(v257, v574, alloc))
                        {
                          FigCaptionDynamicStyleGetInitialValue();
                          FigGeometryDimensionMakeFromDictionary();
                          FigGeometrySizeMake();
                          FigGeometryRectMake();
                        }
                      }
                    }
                  }
                }
              }

              if (otherRange.start.value)
              {
                CFRelease(otherRange.start.value);
              }

              TopRegionRect = ttmlParser_getTopRegionRect();
              v267 = OUTLINED_FUNCTION_2_67(TopRegionRect, v260, v261, v262, v263, v264, v265, v266, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, *&range.start.value, *&range.start.epoch, *&range.duration.timescale);
              v268 = alloc;
              if (v267)
              {
                v269 = v632;
                OUTLINED_FUNCTION_0_71();
                v270 = qword_1ED4CA940;
LABEL_114:
                v632 = v270;
                if (v270)
                {
                  CFRetain(v270);
                }

                if (v269)
                {
                  CFRelease(v269);
                }

                if (v630)
                {
                  CFRelease(v630);
                  v630 = 0;
                }

                if (FigCaptionDataCreateMutableCopy())
                {
                  goto LABEL_148;
                }

                v296 = v632;
                v297 = FigCaptionDataGetCMBaseObject();
                v298 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v298 || v298(v297, v606, v296))
                {
                  goto LABEL_148;
                }

                if (v631)
                {
                  CFRelease(v631);
                  v631 = 0;
                }

                if (FigCaptionCreateMutableCopy(alloc, v51, &v631))
                {
                  goto LABEL_148;
                }

                v299 = v630;
                FigCaptionGetCMBaseObject();
                v301 = v300;
                v302 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (!v302 || v302(v301, v607, v299))
                {
                  goto LABEL_148;
                }

                Mutable = v612;
                CFArraySetValueAtIndex(v612, j, v631);
                v303 = CFStringCreateWithFormat(alloc, 0, @"region(%@)", v629);
                goto LABEL_129;
              }

              BottomRegionRect = ttmlParser_getBottomRegionRect();
              v279 = OUTLINED_FUNCTION_2_67(BottomRegionRect, v272, v273, v274, v275, v276, v277, v278, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, *&range.start.value, *&range.start.epoch, *&range.duration.timescale);
              Mutable = v612;
              if (v279)
              {
                v269 = v632;
                OUTLINED_FUNCTION_0_71();
                v270 = qword_1ED4CA948;
                goto LABEL_114;
              }

              LeftRegionRect = ttmlParser_getLeftRegionRect();
              if (OUTLINED_FUNCTION_2_67(LeftRegionRect, v281, v282, v283, v284, v285, v286, v287, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, *&range.start.value, *&range.start.epoch, *&range.duration.timescale))
              {
                v269 = v632;
                OUTLINED_FUNCTION_0_71();
                v270 = qword_1ED4CA950;
                goto LABEL_114;
              }

              RightRegionRect = ttmlParser_getRightRegionRect();
              if (OUTLINED_FUNCTION_2_67(RightRegionRect, v289, v290, v291, v292, v293, v294, v295, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599, v604, Count, v606, v607, v609, v610, key, v612, alloc, v614, *v615, *&v615[8], *&v615[16], *&v615[24], *&v615[32], *&v615[40], v616.start.value, *&v616.start.timescale, v616.start.epoch, v616.duration.value, *&v616.duration.timescale, v616.duration.epoch, v617, v618, theArray, v620, otherRange.start.value, *&otherRange.start.timescale, otherRange.start.epoch, otherRange.duration.value, *&otherRange.duration.timescale, otherRange.duration.epoch, v622, v623, v624, cf, value, v627, *&range.start.value, *&range.start.epoch, *&range.duration.timescale))
              {
                v269 = v632;
                OUTLINED_FUNCTION_0_71();
                v270 = qword_1ED4CA958;
                goto LABEL_114;
              }

              v303 = CFStringCreateWithFormat(v268, 0, @"region(%@)", v629);
LABEL_129:
              v304 = v303;
              CFArrayAppendValue(v47, v303);
              if (v304)
              {
                CFRelease(v304);
              }
            }
          }
        }

        if (*(v614 + 32))
        {
          if (v47)
          {
            v305.length = CFArrayGetCount(v47);
          }

          else
          {
            v305.length = 0;
          }

          v305.location = 0;
          CFArraySortValues(v47, v305, MEMORY[0x1E695D7F0], 0);
          v306 = 0;
          v307 = 0;
          while (v47)
          {
            if (v306 >= CFArrayGetCount(v47))
            {
              if (CFArrayGetCount(v47))
              {
                (*(v614 + 32))(*(v614 + 48), v47);
              }

              break;
            }

            v308 = CFArrayGetValueAtIndex(v47, v306);
            if (!v307 || CFStringCompare(v307, v308, 0))
            {
              ++v306;
              v307 = v308;
            }

            else
            {
              CFArrayRemoveValueAtIndex(v47, v306);
            }
          }
        }

LABEL_148:
        if (v629)
        {
          CFRelease(v629);
        }

        v3 = alloc;
        if (v47)
        {
          CFRelease(v47);
        }

        if (v630)
        {
          CFRelease(v630);
        }

        Mutable = v612;
        if (v631)
        {
          CFRelease(v631);
        }

        if (v632)
        {
          CFRelease(v632);
        }

        if (v633)
        {
          CFRelease(v633);
        }
      }

      CFDictionaryGetValue(*(v614 + 64), @"FixUpiTTLeftRegionOrigin");
      if (FigCFEqual())
      {
        range.start.value = 0;
        otherRange.start.value = 0;
        v633 = 0;
        v631 = 0;
        v632 = 0;
        v630 = 0;
        FigGeometryDimensionMake();
        memset(&v634, 0, 32);
        FigGeometryPointMake();
        *&context.start.value = *&v634.start.value;
        *&context.start.epoch = *&v634.start.epoch;
        v309 = FigGeometryPointCopyAsDictionary();
        if (!FigCaptionDynamicStyleCreate())
        {
          if (v612)
          {
            v310 = CFArrayGetCount(v612);
            if (v310 >= 1)
            {
              v311 = v310;
              for (k = 0; v311 != k; ++k)
              {
                v313 = CFArrayGetValueAtIndex(v612, k);
                if (range.start.value)
                {
                  CFRelease(range.start.value);
                  range.start.value = 0;
                }

                FigCaptionGetCMBaseObject();
                v315 = v314;
                v316 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (!v316 || v316(v315, v607, alloc, &range))
                {
                  break;
                }

                if (otherRange.start.value)
                {
                  CFRelease(otherRange.start.value);
                  otherRange.start.value = 0;
                }

                v317 = FigCaptionDataGetCMBaseObject();
                if (!*(*(CMBaseObjectGetVTable() + 8) + 48))
                {
                  break;
                }

                v318 = OUTLINED_FUNCTION_8_21();
                v320 = v319(v318);
                if (v320)
                {
                  break;
                }

                if (!otherRange.start.value)
                {
                  OUTLINED_FUNCTION_76_0();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v357, v378, v399);
                  break;
                }

                OUTLINED_FUNCTION_1_72(v320, v321, v322, v323, v324, v325, v326, v327, v357, v378, v399, v420, v441, v462, v483, v504, v525, v544, v559, v574, v589, v599);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v328);
                v329 = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                OUTLINED_FUNCTION_4_52(v329, v330, v331, v332, v333, v334, v335, v336, v376, v397, v418, v439, v460, v481, v502, v523, v542, v557, v572, v587, v598);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v317);
                v337 = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                OUTLINED_FUNCTION_6_42(v337, v338, v339, v340, v341, v342, v343, v344, v377, v398, v419, v440, v461, v482, v503, v524, v543, v558, v573, v588);
                MEMORY[0x19A8D3660](&ttmlParser_initializePredefinedRegions_sInitializeOnce, v317);
                *(&v636 + 1) = CFDictionaryGetValue(qword_1ED4CA930, Mutable);
                v637 = 0;
                v345 = FigCaptionRegionGetCMBaseObject();
                if (ttmlParser_doPropertiesMatch(v345, &context, 3))
                {
                  if (v632)
                  {
                    CFRelease(v632);
                    v632 = 0;
                  }

                  if (FigCaptionDataCreateMutableCopy())
                  {
                    break;
                  }

                  if (v631)
                  {
                    CFRelease(v631);
                    v631 = 0;
                  }

                  if (FigCaptionRegionCreateMutableCopy())
                  {
                    break;
                  }

                  v346 = v630;
                  v347 = FigCaptionRegionGetCMBaseObject();
                  v348 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v348)
                  {
                    break;
                  }

                  if (v348(v347, v599, v346))
                  {
                    break;
                  }

                  v349 = v631;
                  v350 = FigCaptionDataGetCMBaseObject();
                  v351 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v351 || v351(v350, v606, v349))
                  {
                    break;
                  }

                  if (v633)
                  {
                    CFRelease(v633);
                    v633 = 0;
                  }

                  if (FigCaptionCreateMutableCopy(alloc, v313, &v633))
                  {
                    break;
                  }

                  v352 = v632;
                  FigCaptionGetCMBaseObject();
                  Mutable = v353;
                  v354 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v354 || v354(Mutable, v607, v352))
                  {
                    break;
                  }

                  CFArraySetValueAtIndex(v612, k, v633);
                }
              }
            }
          }
        }

        if (v630)
        {
          CFRelease(v630);
        }

        v3 = alloc;
        if (v309)
        {
          CFRelease(v309);
        }

        if (v631)
        {
          CFRelease(v631);
        }

        v6 = v612;
        if (v632)
        {
          CFRelease(v632);
        }

        if (v633)
        {
          CFRelease(v633);
        }

        if (otherRange.start.value)
        {
          CFRelease(otherRange.start.value);
        }

        if (range.start.value)
        {
          CFRelease(range.start.value);
        }

        v46 = 0;
      }

      else
      {
        v46 = 0;
        v6 = Mutable;
      }

      Mutable = 0;
      goto LABEL_209;
    }

    v6 = 0;
LABEL_235:
    v46 = 0;
  }

LABEL_236:
  if (v618)
  {
    CFRelease(v618);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v620)
  {
    CFRelease(v620);
  }

  return v46;
}

void ttmlParser_initializePredefinedRegionsAux()
{
  v57[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6961340];
  v57[0] = *MEMORY[0x1E6961358];
  v57[1] = v0;
  v1 = *MEMORY[0x1E6961350];
  v57[2] = *MEMORY[0x1E6961348];
  v57[3] = v1;
  ttmlParser_getTopRegionRect();
  ttmlParser_getBottomRegionRect();
  ttmlParser_getLeftRegionRect();
  ttmlParser_getRightRegionRect();
  v2 = 0;
  Mutable = 0;
  v4 = *MEMORY[0x1E695E480];
  v55 = *MEMORY[0x1E6961390];
  key = *MEMORY[0x1E6961338];
  v49 = *MEMORY[0x1E6961328];
  v52 = *MEMORY[0x1E69613B0];
  v5 = *MEMORY[0x1E6961308];
  v6 = *MEMORY[0x1E69613B8];
  v7 = 32;
  v8 = *MEMORY[0x1E6961318];
  v9 = *MEMORY[0x1E695E4D0];
  while (1)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, key, v57[v2]);
    v10 = FigGeometryPointCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30(v10, v11, v12, v13, v14, v15, v16, v17, v49, v52))
    {
      break;
    }

    v18 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v18, v55, v19);
    v20 = FigGeometryDimensionCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30(v20, v21, v22, v23, v24, v25, v26, v27, v50, v53))
    {
      break;
    }

    v28 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v28, v54, v29);
    v30 = FigGeometryDimensionCopyAsDictionary();
    if (OUTLINED_FUNCTION_7_30(v30, v31, v32, v33, v34, v35, v36, v37, v51, v54))
    {
      break;
    }

    v38 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v38, v49, v39);
    if (FigCaptionDynamicStyleCreate())
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v40, v5, v41);
    if (FigCaptionDynamicStyleCreate())
    {
      break;
    }

    v42 = OUTLINED_FUNCTION_15_20();
    CFDictionarySetValue(v42, v6, v43);
    CFDictionarySetValue(Mutable, v8, v9);
    if (Mutable)
    {
      v44 = CFRetain(Mutable);
    }

    else
    {
      v44 = 0;
    }

    *off_1E7484410[v2++] = v44;
    v7 += 64;
    if (v2 == 4)
    {
      if (!FigCaptionRegionCreate())
      {
        v45 = 0;
        v46 = *MEMORY[0x1E6961300];
        do
        {
          if (FigCaptionRegionCreateMutable())
          {
            break;
          }

          CMBaseObject = FigCaptionRegionGetCMBaseObject();
          v48 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v48)
          {
            break;
          }

          if (v48(CMBaseObject, v46, 0))
          {
            break;
          }

          CFDictionaryApplyFunction(*off_1E7484410[v45], ttmlParser_initializePredefinedRegion, 0);
          *off_1E7484430[v45++] = 0;
        }

        while (v45 != 4);
      }

      break;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void remakerFamily_IntermediateMediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (!v4)
  {
    return;
  }

  OUTLINED_FUNCTION_16_19();
  if (v5)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, v18);
    goto LABEL_25;
  }

  *(a2 + 256) = 1;
  v6 = *(a2 + 152);
  if (*(v6 + 160))
  {
    v7 = *(v6 + 128);
    if (v7)
    {
      if (CFArrayGetCount(v7) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 240), v2);
          if (!FigMediaProcessorIsAtEndOfOutputData(ValueAtIndex))
          {
            *(a2 + 256) = 0;
          }

          OUTLINED_FUNCTION_19_19();
        }

        while (!v9);
      }
    }
  }

  v10 = CFGetTypeID(v4);
  if (v10 == FigRemakerGetTypeID())
  {
    v11 = *(a2 + 248);
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = *(a2 + 152);
  v11 = *(v12 + 72);
  if (v11)
  {
    if (*(v12 + 160))
    {
      v13 = *(v12 + 128);
      if (v13 && CFArrayGetCount(v13) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        do
        {
          v14 = CFArrayGetValueAtIndex(*(a2 + 240), v2);
          v15 = CFArrayGetValueAtIndex(*(*(a2 + 152) + 128), v2);
          if (FigMediaProcessorIsAtEndOfOutputData(v14))
          {
            CMBufferQueueMarkEndOfData(v15);
          }

          OUTLINED_FUNCTION_19_19();
        }

        while (!v9);
      }

      goto LABEL_25;
    }

LABEL_24:
    CMBufferQueueMarkEndOfData(v11);
  }

LABEL_25:

  CFRelease(v4);
}

void remakerFamily_CustomMediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    OUTLINED_FUNCTION_16_19();
    if (v4)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    }

    else
    {
      *(a2 + 280) = 1;
      v5 = *(a2 + 272);
      if (v5)
      {
        CMBufferQueueMarkEndOfData(v5);
      }
    }

    CFRelease(v3);
  }
}

void remakerFamily_MediaProcessorDidReachEndOfOutputData(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v3)
  {
    OUTLINED_FUNCTION_16_19();
    if (v5)
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
    }

    else
    {
      *(a2 + 296) = 1;
      if (*(a2 + 356) && *(a2 + 288))
      {
        CFRetain(a2);
        dispatch_async_f(*(a2 + 368), a2, remakerFamily_startNextPassWork);
      }

      else if (*(v4 + 184))
      {
        remakerFamily_markFormatWriterTrackWithEOD(a2);
      }

      else
      {
        v6 = *(*(a2 + 152) + 72);
        if (v6)
        {
          CMBufferQueueMarkEndOfData(v6);
        }
      }

      remakerFamily_performLastStepIfComplete(v3);
    }

    CFRelease(v3);
  }
}

uint64_t remakerFamily_Invalidate(const void *a1)
{
  cf[23] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (FigAtomicCompareAndSwap32())
  {
    remakerFamily_SetRemakerState(a1, 8, 0);
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      v4 = *(DerivedStorage + 184);
      if (v4)
      {
        if (dispatch_get_current_queue() == v3)
        {
          FigFormatWriterGetFigBaseObject();
          if (v8)
          {
            v9 = v8;
            v10 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v10)
            {
              v10(v9);
            }
          }
        }

        else
        {
          dispatch_sync_f(v3, v4, remakerFamily_InvalidateWriter);
          v5 = *(DerivedStorage + 80);
          if (v5 && CFArrayGetCount(v5) >= 1)
          {
            OUTLINED_FUNCTION_18_17();
            do
            {
              if (*(OUTLINED_FUNCTION_45_7() + 47))
              {
                if (dword_1EAF17020)
                {
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_7();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                FigSemaphoreSignal();
              }

              OUTLINED_FUNCTION_19_19();
            }

            while (!v7);
          }
        }
      }
    }

    if (*(DerivedStorage + 376))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigPlaybackBossInvalidate(*(DerivedStorage + 376));
    }

    if (*(DerivedStorage + 184))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListeners();
      FigFormatWriterGetFigBaseObject();
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v13)
        {
          v13(v12);
        }
      }
    }

    v14 = *(DerivedStorage + 80);
    if (v14 && CFArrayGetCount(v14) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        v15 = OUTLINED_FUNCTION_45_7();
        remakerFamily_removeTrackNotifications(v15);
        OUTLINED_FUNCTION_19_19();
      }

      while (!v7);
    }

    v16 = *(DerivedStorage + 56);
    if (v16 && dispatch_get_current_queue() != v16)
    {
      v17 = OUTLINED_FUNCTION_383();
      dispatch_sync_f(v17, v18, v19);
    }

    if (a1)
    {
      v20 = CFGetTypeID(a1);
      if (v20 == FigAssetWriterGetTypeID())
      {
        FigSemaphoreSignal();
      }

      v21 = CFGetTypeID(a1);
      if (v21 == FigRemakerGetTypeID())
      {
        if (*(DerivedStorage + 20))
        {
          if (*(DerivedStorage + 168))
          {
            CMBaseObject = CMByteStreamGetCMBaseObject();
            v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v23)
            {
              v23(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], cf);
              if (cf[0])
              {
                FigFileDeleteFile();
                if (cf[0])
                {
                  CFRelease(cf[0]);
                  cf[0] = 0;
                }
              }
            }
          }
        }
      }
    }

    v24 = *(DerivedStorage + 80);
    if (v24 && CFArrayGetCount(v24) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        v25 = OUTLINED_FUNCTION_45_7();
        remakerFamily_invalidateTrack(v25);
        OUTLINED_FUNCTION_19_19();
      }

      while (!v7);
    }

    if (a1)
    {
      v26 = CFGetTypeID(a1);
      if (v26 == FigRemakerGetTypeID())
      {
        goto LABEL_58;
      }
    }

    v27 = *(DerivedStorage + 216);
    if (v27)
    {
      CFRelease(v27);
      *(DerivedStorage + 216) = 0;
    }

    v28 = *(DerivedStorage + 168);
    if (v28)
    {
      CFRelease(v28);
      *(DerivedStorage + 168) = 0;
    }

    v29 = *(DerivedStorage + 184);
    if (v29)
    {
      CFRelease(v29);
      *(DerivedStorage + 184) = 0;
    }

    if (a1)
    {
LABEL_58:
      v30 = CFGetTypeID(a1);
      if (v30 == FigAssetWriterGetTypeID())
      {
        v31 = CMBaseObjectGetDerivedStorage();
        if (*(v31 + 368) == 1)
        {
          v32 = v31;
          if (!remakerFamily_postDarwinNotificationWithState(*(v31 + 352), *(v31 + 360), 0))
          {
            *(v32 + 368) = 0;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t remakerFamily_createTempFile(uint64_t a1, const __CFURL *a2, const __CFURL *a3, const char *a4, CFTypeRef *a5, CFURLRef *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  cf = 0;
  v9 = MEMORY[0x1E695E480];
  if (a2)
  {
    v11 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
    if (!v11)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_28;
    }

    v12 = a2;
LABEL_21:
    v19 = remakerFamily_associateAdditionalURLWithExistingSandboxRegistration(v12, v11);
    v18 = 0;
    if (v19)
    {
      goto LABEL_28;
    }

LABEL_22:
    if (a5)
    {
      v19 = CMByteStreamCreateForFileURL();
      if (v19)
      {
        goto LABEL_28;
      }

      *a5 = cf;
      cf = 0;
    }

    if (a6)
    {
      *a6 = v11;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if (!a3)
  {
    v18 = FigCFURLCreateFromSystemTemporaryDirectory();
    if (!v18)
    {
      v11 = 0;
      v19 = 0;
      goto LABEL_28;
    }

    v11 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
    v19 = 0;
    if (v11)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  remakerFamily_MapError(a1, 6);
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a3, 1u, buffer, 1024))
  {
    goto LABEL_19;
  }

  v14 = _amkrtemp();
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    if (a4)
    {
      v16 = buffer;
      snprintf(buffer, 0x400uLL, "%s%s", v14, a4);
    }

    v17 = strlen(v16);
    v11 = CFURLCreateFromFileSystemRepresentation(*v9, v16, v17, 0);
    free(v15);
    if (v11)
    {
      goto LABEL_20;
    }
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, v23, 0);
  if (!v20)
  {
LABEL_19:
    v11 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v19 = v20;
  v18 = FigCFURLCreateFromSystemTemporaryDirectory();
  if (!v18)
  {
LABEL_27:
    v11 = 0;
    goto LABEL_28;
  }

  v11 = FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix();
  if (v11)
  {
    goto LABEL_22;
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v19;
}

uint64_t remakerFamily_generateLoggingIdentifier(int a1, char *a2)
{
  LoggingIdentifierOfLength = FigCFStringCreateLoggingIdentifierOfLength();
  if (!LoggingIdentifierOfLength)
  {
    return 0;
  }

  v5 = LoggingIdentifierOfLength;
  v13 = LoggingIdentifierOfLength;
  v6 = OUTLINED_FUNCTION_383();
  v9 = CFStringCreateWithFormat(v6, v7, v8, a1, v13);
  if (v9)
  {
    v10 = v9;
    if (CFStringGetCString(v9, a2, 10, 0x600u))
    {
      v11 = 0;
    }

    else
    {
      v11 = 4294955190;
    }

    CFRelease(v5);
    v5 = v10;
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

uint64_t remakerFamily_createVirtualCaptureCardAndByteStream(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  cf = 0;
  Singleton = FigVirtualCaptureCardGetSingleton();
  if (!Singleton)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0, 0);
  }

  v5 = Singleton;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t remakerFamily_startSourceRendererOfTrack(uint64_t a1, __int128 *a2)
{
  v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(a1 + 56);
  if (v6)
  {
    v16 = *a2;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v17 = v16;
      started = v7(v6, &v17);
      if (started && started != -12782)
      {
        goto LABEL_15;
      }
    }
  }

  if (!*(a1 + 168))
  {
    goto LABEL_13;
  }

  if (*(a1 + 428) == 1)
  {
    v17 = *a2;
    OUTLINED_FUNCTION_89();
    if (!FigVideoCompositionInstructionArrayIsValid(v10, &v17, &v16))
    {
      v15 = CFGetTypeID(v5);
      remakerFamily_MapError(v15, 4);
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16.value, v16.timescale, LODWORD(v16.epoch));
      goto LABEL_15;
    }
  }

  *(a1 + 184) = 0;
  v17 = *a2;
  OUTLINED_FUNCTION_89();
  started = FigVideoCompositionProcessorStartRenderingFramesForTimeRange(v11);
  if (!started)
  {
LABEL_13:
    if (!*(a1 + 200))
    {
      v13 = 0;
      goto LABEL_17;
    }

    *(a1 + 216) = 0;
    v17 = *a2;
    OUTLINED_FUNCTION_89();
    started = FigAudioQueueOfflineMixerStartRenderingForTimeRange(v12, &v17, &v16);
  }

LABEL_15:
  v13 = started;
LABEL_17:
  CFRelease(v5);
  return v13;
}

uint64_t remakerFamily_createAudioMixdownSourceTrack(const void *a1, uint64_t a2, const void *a3, const void *a4, const void *a5, const void *a6, uint64_t a7, void *a8, intptr_t *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v62[0] = 0;
  v60 = 0;
  cf = 0;
  v59 = 0;
  v15 = *MEMORY[0x1E695E4C0];
  v16 = *(DerivedStorage + 72);
  v17 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v17)
  {
    goto LABEL_13;
  }

  cf1 = a6;
  v18 = v17(v16, a2, &v59);
  if (v18)
  {
    goto LABEL_57;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
LABEL_13:
    v23 = 0;
    v30 = 4294954514;
LABEL_14:
    v28 = v15;
    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_265();
  v18 = v20(v19);
  if (v18)
  {
    goto LABEL_57;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_82();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, 4294955190, "<<<< FigExportCommmon >>>>", 3250);
    goto LABEL_57;
  }

  v21 = CFGetTypeID(a1);
  v18 = remakerFamily_copyFormatDescription(v21, v59, &cf);
  if (v18)
  {
LABEL_57:
    v30 = v18;
    v23 = 0;
    goto LABEL_14;
  }

  Channel = remakerFamily_createChannel(a1, a2, 1936684398, v62);
  v23 = v62[0];
  if (Channel || (v24 = OUTLINED_FUNCTION_69_0(), Channel = remakerFamily_setupMultiPassTrackIfNecessary(v24, v25, v26), Channel))
  {
    v30 = Channel;
    goto LABEL_14;
  }

  *(v23 + 48) = 0;
  *(v23 + 50) = 1;
  *(v23 + 40) = CFRetain(cf);
  v27 = *(DerivedStorage + 440);
  v28 = v15;
  if (v27)
  {
    v28 = SecTaskCopyValueForEntitlement(v27, @"com.apple.coreaudio.allow-amr-decode", 0);
  }

  if (FigAudioFormatDescriptionGetCinematicAudioEffectEligibility())
  {
    v62[1] = 0;
    v62[2] = 0;
    CMAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout();
    v29 = FigAudioChannelLayoutIsSupportedForCinematicAudio() == 0;
  }

  else
  {
    v29 = 0;
  }

  v32 = CFGetAllocator(a1);
  v33 = *MEMORY[0x1E695E4D0];
  RenderPipelineOptions = remakerFamily_createRenderPipelineOptions(v32, cf, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], *MEMORY[0x1E695E4D0] == v28, 0, *(DerivedStorage + 424), 0, 0, *(DerivedStorage + 32), v29, a8, 0, DerivedStorage + 41, a2, &v60);
  if (RenderPipelineOptions)
  {
    goto LABEL_50;
  }

  v35 = CFGetAllocator(a1);
  FigAudioQueueRenderPipelineCreate(v35, v60, (v23 + 56));
  if (RenderPipelineOptions)
  {
    goto LABEL_50;
  }

  FigRenderPipelineGetFigBaseObject();
  v37 = v36;
  v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v38)
  {
    v38(v37, @"HandleFormatDescriptionChanges", v33);
  }

  FigRenderPipelineGetFigBaseObject();
  v40 = v39;
  v41 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v41)
  {
    v41(v40, @"AllowedToUseHardware", v15);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  RenderPipelineOptions = FigNotificationCenterAddWeakListeners();
  if (RenderPipelineOptions)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a3))
    {
      v55 = CFGetTypeID(a1);
      remakerFamily_MapError(v55, 2);
      OUTLINED_FUNCTION_82();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_50;
    }

    FigRenderPipelineGetFigBaseObject();
    v44 = v43;
    v45 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v45)
    {
      goto LABEL_51;
    }

    RenderPipelineOptions = v45(v44, @"AudioCurves", a3);
    if (RenderPipelineOptions)
    {
      goto LABEL_50;
    }
  }

  if (a4)
  {
    v46 = MTAudioProcessingTapGetTypeID();
    if (v46 != CFGetTypeID(a4))
    {
      goto LABEL_49;
    }

    FigRenderPipelineGetFigBaseObject();
    if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
    {
LABEL_51:
      v30 = 4294954514;
      goto LABEL_15;
    }

    v47 = OUTLINED_FUNCTION_39_9();
    RenderPipelineOptions = v48(v47);
    if (RenderPipelineOptions)
    {
LABEL_50:
      v30 = RenderPipelineOptions;
      goto LABEL_15;
    }
  }

  if (!a5)
  {
    goto LABEL_44;
  }

  v49 = CFDataGetTypeID();
  if (v49 != CFGetTypeID(a5))
  {
LABEL_49:
    OUTLINED_FUNCTION_82();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_50;
  }

  FigRenderPipelineGetFigBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    goto LABEL_51;
  }

  v50 = OUTLINED_FUNCTION_39_9();
  RenderPipelineOptions = v51(v50);
  if (RenderPipelineOptions)
  {
    goto LABEL_50;
  }

LABEL_44:
  if (cf1 && !CFEqual(cf1, @"TimeDomain") && !CFEqual(cf1, @"Spectral") && !CFEqual(cf1, @"LowQualityZeroLatency") && !CFEqual(cf1, @"Varispeed"))
  {
    goto LABEL_49;
  }

  FigRenderPipelineGetFigBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    v52 = OUTLINED_FUNCTION_39_9();
    v53(v52);
  }

  v30 = 0;
  *a9 = v23;
  v62[0] = 0;
  v23 = 0;
LABEL_15:
  remakerFamily_discardChannel(a1, v23);
  if (v60)
  {
    CFRelease(v60);
    v60 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  return v30;
}

uint64_t remakerfamily_updateClientPID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 32))
  {
    v3 = 30;
  }

  else
  {
    v3 = 31;
  }

  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (DerivedStorage + 36));
  v5 = *(DerivedStorage + 376);
  if (v5)
  {
    FigPlaybackBossSetClientPID(v5, v4);
  }

  if (*(DerivedStorage + 184))
  {
    FigFormatWriterGetFigBaseObject();
    v1 = v6;
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v7(v1, @"ClientPID", v4);
    }
  }

  if (!*(DerivedStorage + 56) || !FigDispatchQueueSetPriorityAndClientPID())
  {
    v8 = *(DerivedStorage + 80);
    if (v8)
    {
      if (CFArrayGetCount(v8) >= 1)
      {
        OUTLINED_FUNCTION_18_17();
        propertyKey = *MEMORY[0x1E69835A8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v1);
          v10 = *(ValueAtIndex + 36);
          if (v10)
          {
            OUTLINED_FUNCTION_44_10(v10);
            if (!*(ValueAtIndex + 48))
            {
              v11 = *(ValueAtIndex + 8);
              if (v11 == 1986618469 || v11 == 1635088502)
              {
                VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(ValueAtIndex + 36));
                VTSessionSetProperty(VTCompressionSession, propertyKey, v4);
              }
            }
          }

          if (*(ValueAtIndex + 8) == 1936684398)
          {
            v14 = *(ValueAtIndex + 25);
            if (v14)
            {
              FigAudioQueueOfflineMixerSetProperty(v14, @"AudioQueueOfflineMixer_ClientPID", v4);
            }
          }

          if (*(ValueAtIndex + 7))
          {
            FigRenderPipelineGetFigBaseObject();
            v16 = v15;
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v17)
            {
              v17(v16, @"ClientPID", v4);
            }
          }

          v18 = *(ValueAtIndex + 29);
          if (v18)
          {
            OUTLINED_FUNCTION_44_10(v18);
            if (*(*(ValueAtIndex + 19) + 160))
            {
              v19 = *(ValueAtIndex + 30);
              if (v19)
              {
                Count = CFArrayGetCount(v19);
                if (Count >= 2)
                {
                  v21 = Count;
                  for (i = 1; i != v21; ++i)
                  {
                    v23 = CFArrayGetValueAtIndex(*(ValueAtIndex + 30), i);
                    OUTLINED_FUNCTION_44_10(v23);
                  }
                }
              }
            }
          }

          v24 = *(ValueAtIndex + 33);
          if (v24)
          {
            OUTLINED_FUNCTION_44_10(v24);
          }

          if (*(ValueAtIndex + 8) == 1986618469)
          {
            v25 = *(ValueAtIndex + 21);
            if (v25)
            {
              FigVideoCompositionProcessorSetProperty(v25, @"VideoCompositionProcessor_ClientPID", v4);
            }
          }

          if (*(ValueAtIndex + 356))
          {
            v26 = *(ValueAtIndex + 52);
            if (v26)
            {
              FigPlaybackBossSetClientPID(v26, v4);
            }
          }

          ++v1;
        }

        while (v1 != v3);
      }
    }
  }

  CFRelease(v4);
  return 0;
}

BOOL remakerFamily_PostFailureNotificationIfError(const void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  v56 = __PAIR64__(a5, a4);
  v5 = a3;
  v81 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    return v5 != 0;
  }

  v9 = DerivedStorage;
  OUTLINED_FUNCTION_16_19();
  if (v10)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v54, v55, v56);
    return v5 != 0;
  }

  if (dword_1EAF17020)
  {
    OUTLINED_FUNCTION_147();
    v18 = OUTLINED_FUNCTION_126(qword_1EAF17018, v11, v12, v13, v14, v15, v16, v17, v54, v55, v56, type, SBYTE2(type), SBYTE3(type), SBYTE4(type));
    if (os_log_type_enabled(v18, BYTE3(type)))
    {
      v19 = HIDWORD(type);
    }

    else
    {
      v19 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v19)
    {
      remakerFamily_StateDesc(*v9);
      v58 = 136315650;
      OUTLINED_FUNCTION_2_6();
      *v61 = a1;
      *&v61[8] = 2082;
      v62 = v20;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v21, v22, v23, v24, v25, v18, BYTE3(type), v26);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v27 = CFGetTypeID(a1);
  if (v27 == FigAssetReaderGetTypeID())
  {
    v28 = @"AssetReader_Failed";
    goto LABEL_14;
  }

  v29 = CFGetTypeID(a1);
  if (v29 == FigAssetWriterGetTypeID())
  {
    v28 = @"AssetWriter_Failed";
LABEL_14:
    if (!v5)
    {
      return v5 != 0;
    }

    goto LABEL_18;
  }

  v28 = @"Remaker_Failed";
  if (!v5)
  {
    return v5 != 0;
  }

LABEL_18:
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  remakerfamily_setFailureStatusIfError(a1, v5);
  if (a2 && dword_1EAF17020)
  {
    OUTLINED_FUNCTION_147();
    v42 = OUTLINED_FUNCTION_126(qword_1EAF17018, v35, v36, v37, v38, v39, v40, v41, v54, v55, v56, type, SBYTE2(type), SBYTE3(type), SBYTE4(type));
    if (os_log_type_enabled(v42, BYTE3(type)))
    {
      v43 = HIDWORD(type);
    }

    else
    {
      v43 = HIDWORD(type) & 0xFFFFFFFE;
    }

    if (v43)
    {
      v58 = 136315906;
      OUTLINED_FUNCTION_114();
      *v61 = a2;
      OUTLINED_FUNCTION_0_72();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v44, v45, v46, v47, v48, v42, BYTE3(type), v49);
    }

    OUTLINED_FUNCTION_7();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v56 == 1)
  {
    remakerFamily_invalidateAllMediaProcessors(a1);
  }

  remakerFamily_safelyPostNotification(a1, SHIDWORD(v56), v28, Mutable, a1, v32, v33, v34, v54, v55, v56, type, SBYTE2(type), BYTE3(type), SHIDWORD(type), v58, v59, *v60, *&v60[4], *&v61[2], v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
  v50 = CFGetTypeID(a1);
  if (v50 == FigAssetReaderGetTypeID())
  {
    v51 = CMBaseObjectGetDerivedStorage();
    if (CFArrayGetCount(*(v51 + 80)) >= 1)
    {
      OUTLINED_FUNCTION_18_17();
      do
      {
        if (*(*(OUTLINED_FUNCTION_45_7() + 19) + 80))
        {
          FigSemaphoreSignal();
        }

        OUTLINED_FUNCTION_19_19();
      }

      while (!v52);
    }
  }

  else
  {
    v53 = CFGetTypeID(a1);
    if (v53 == FigAssetWriterGetTypeID())
    {
      FigSemaphoreSignal();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5 != 0;
}

uint64_t remakerFamily_startNextSegmentIfMultiPassComplete(uint64_t a1)
{
  theArray = 0;
  if (!*(a1 + 356))
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, theArray, LODWORD(v24[0]));
    goto LABEL_51;
  }

  v2 = a1;
  v3 = remakerFamily_createRelatedTrackArray(a1, &theArray);
  if (v3)
  {
LABEL_51:
    v14 = v3;
    goto LABEL_45;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    OUTLINED_FUNCTION_18_17();
    v4 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v1);
      v6 = ValueAtIndex;
      if (ValueAtIndex[52] && !*(ValueAtIndex + 424))
      {
        v4 = 0;
      }

      if (ValueAtIndex[7] && !*(ValueAtIndex + 64))
      {
        v4 = 0;
      }

      if (ValueAtIndex[25] && !*(ValueAtIndex + 216))
      {
        v4 = 0;
      }

      if (ValueAtIndex[21] && !*(ValueAtIndex + 184))
      {
        v4 = 0;
      }

      v7 = ValueAtIndex[19];
      v8 = *(v7 + 72);
      if (v8)
      {
        if (!CMBufferQueueIsEmpty(v8))
        {
          v4 = 0;
        }

        v7 = v6[19];
      }

      if (*(v7 + 112) && !*(v7 + 200))
      {
        v4 = 0;
      }

      if (v6[51])
      {
        v2 = v6;
      }

      OUTLINED_FUNCTION_19_19();
    }

    while (!v9);
    if (!v4)
    {
      v14 = 0;
      goto LABEL_45;
    }
  }

  v10 = FigCFWeakReferenceHolderCopyReferencedObject();
  CMBaseObjectGetDerivedStorage();
  if (v10)
  {
    OUTLINED_FUNCTION_16_19();
    if (v11)
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, theArray, LODWORD(v24[0]));
LABEL_35:
      v14 = 0;
      goto LABEL_36;
    }

    v12 = *(v2 + 400);
    if (!v12)
    {
      goto LABEL_35;
    }

    if (CFArrayGetCount(v12) < 1)
    {
      goto LABEL_35;
    }

    CFArrayRemoveValueAtIndex(*(v2 + 400), 0);
    v13 = *(v2 + 400);
    if (!v13 || CFArrayGetCount(v13) < 1)
    {
      goto LABEL_35;
    }

    v19 = CFArrayGetValueAtIndex(*(v2 + 400), 0);
    v20 = v19[1];
    v24[0] = *v19;
    v24[1] = v20;
    v24[2] = v19[2];
    Segment = remakerFamily_resetSourceRenderersForNextSegment(v2, v24, 0);
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, theArray, LODWORD(v24[0]));
  }

  v14 = Segment;
LABEL_36:
  v15 = *(v2 + 400);
  if (!v15 || !CFArrayGetCount(v15))
  {
    v16 = *(v2 + 408);
    if (v16)
    {
      dispatch_semaphore_signal(v16);
    }

    v17 = *(*(v2 + 152) + 72);
    if (v17)
    {
      CMBufferQueueMarkEndOfData(v17);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_45:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v14;
}

void remakerFamily_markFormatWriterTrackWithEOD(uint64_t a1)
{
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  queue = 0;
  if (v2)
  {
    v4 = *(DerivedStorage + 184);
    v5 = *(a1 + 300);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {
      v6(v4, v5, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], &queue);
      if (queue)
      {
        CMBufferQueueMarkEndOfData(queue);
        FigBufferQueueRelease();
      }
    }

    CFRelease(v2);
  }
}

uint64_t remakerFamily_setFormatWriterTrackProperties(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0x100000;
  valuePtr = 0;
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  context[0] = v7;
  context[1] = a2;
  if (v7)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E695E480];
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v11 = *(DerivedStorage + 184);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v12)
    {
      v12(v11, a2, @"PreferredChunkAlignment", v10);
    }

    v13 = CFNumberCreate(v9, kCFNumberIntType, &v18);
    v14 = *(DerivedStorage + 184);
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v15)
    {
      v15(v14, a2, @"PreferredChunkSize", v13);
    }

    if (a4)
    {
      CFDictionaryApplyFunction(a4, remaker_formatWriterSetOneTrackProperty, context);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    CFRelease(v8);
  }

  return 0;
}

const void *remaker_formatWriterSetOneTrackProperty(const void *cf, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v3 = cf;
    if (cf)
    {
      v5 = *a3;
      v6 = *(a3 + 2);
      v7 = CFGetTypeID(cf);
      cf = CFStringGetTypeID();
      if (v7 == cf)
      {
        if (v5)
        {
          if (v6 >= 1)
          {
            VTable = CMBaseObjectGetVTable();
            v9 = *(VTable + 16);
            cf = (VTable + 16);
            v10 = *(v9 + 24);
            if (v10)
            {

              return v10(v5, v6, v3, a2);
            }
          }
        }
      }
    }
  }

  return cf;
}

uint64_t remakerFamily_createRemakerVideoDecoderSpecification(const void *a1, uint64_t a2, __CFDictionary **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955190;
  }

  v6 = DerivedStorage;
  *a3 = 0;
  v7 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v9 = Mutable;
  v10 = *(v6 + 427);
  v11 = *MEMORY[0x1E695E4D0];
  if (v10)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69841F8], *MEMORY[0x1E695E4D0]);
  }

  CFDictionaryAddValue(v9, *MEMORY[0x1E6984200], v11);
  result = 0;
  *a3 = v9;
  return result;
}

uint64_t remakerFamily_setVideoRenderPipelineProperties(uint64_t a1, int a2, int a3, int a4, const opaqueCMFormatDescription *a5, const void *a6, int a7, int a8, uint64_t a9, CFDictionaryRef theDict)
{
  v66 = 0;
  if (a7)
  {
    v14 = 0;
  }

  else
  {
    v14 = -20;
  }

  valuePtr = v14;
  v15 = *MEMORY[0x1E695E480];
  v16 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRenderPipelineGetFigBaseObject();
  v19 = v18;
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v20)
  {
    goto LABEL_15;
  }

  v63 = DerivedStorage;
  v21 = *MEMORY[0x1E695E4D0];
  if (v20(v19, @"ObeyEmptyMediaMarkers", *MEMORY[0x1E695E4D0]))
  {
    goto LABEL_58;
  }

  if (a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = *MEMORY[0x1E695E4C0];
  }

  FigRenderPipelineGetFigBaseObject();
  v19 = v23;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v24)
  {
    goto LABEL_15;
  }

  if (v24(v19, @"RenderEmptyMedia", v22))
  {
LABEL_58:
    OUTLINED_FUNCTION_37_9();
    goto LABEL_17;
  }

  FigRenderPipelineGetFigBaseObject();
  v26 = v25;
  v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v27)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (v27(v26, @"VideoDecoderPriority", v16))
  {
    goto LABEL_58;
  }

  if (a8)
  {
    MaxLogicalCoreCount = 1;
  }

  else
  {
    MaxLogicalCoreCount = FigThreadGetMaxLogicalCoreCount();
  }

  v66 = MaxLogicalCoreCount;
  v15 = CFNumberCreate(v15, kCFNumberCFIndexType, &v66);
  FigRenderPipelineGetFigBaseObject();
  v31 = v30;
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v32)
  {
    v32(v31, @"VideoDecoderThreadCount", v15);
  }

  if (a6)
  {
    v33 = CFGetTypeID(a6);
    if (v33 == CFStringGetTypeID())
    {
      goto LABEL_62;
    }
  }

  v67 = 0;
  if (a5 && CMFormatDescriptionGetExtensions(a5))
  {
    Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
    if (v67 > 1 && Int32IfPresent != 0)
    {
      a6 = *MEMORY[0x1E6983A20];
    }
  }

  if (a6)
  {
LABEL_62:
    v36 = CFGetTypeID(a6);
    if (v36 == CFStringGetTypeID())
    {
      FigRenderPipelineGetFigBaseObject();
      v38 = v37;
      v39 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v39)
      {
        goto LABEL_16;
      }

      v40 = v39(v38, @"FieldMode", a6);
      if (v40)
      {
        goto LABEL_59;
      }
    }
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DC0]);
    v42 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DD8]);
    v43 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6983DE0]);
    if (Value)
    {
      FigRenderPipelineGetFigBaseObject();
      v45 = v44;
      v46 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v46)
      {
        goto LABEL_16;
      }

      v40 = v46(v45, @"ColorPrimaries", Value);
      if (v40)
      {
        goto LABEL_59;
      }
    }

    if (v42)
    {
      FigRenderPipelineGetFigBaseObject();
      v48 = v47;
      v49 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v49)
      {
        goto LABEL_16;
      }

      v40 = v49(v48, @"TransferFunction", v42);
      if (v40)
      {
        goto LABEL_59;
      }
    }

    if (v43)
    {
      FigRenderPipelineGetFigBaseObject();
      v51 = v50;
      v52 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v52)
      {
        goto LABEL_16;
      }

      v40 = v52(v51, @"YCbCrMatrix", v43);
      if (v40)
      {
        goto LABEL_59;
      }
    }
  }

  if (a9)
  {
    FigRenderPipelineGetFigBaseObject();
    v54 = v53;
    v55 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v55)
    {
      goto LABEL_16;
    }

    v40 = v55(v54, @"DecompressionSessionProperties", a9);
    if (v40)
    {
LABEL_59:
      v19 = v40;
      goto LABEL_17;
    }
  }

  if (!a4)
  {
    goto LABEL_54;
  }

  FigRenderPipelineGetFigBaseObject();
  v57 = v56;
  v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v58)
  {
LABEL_16:
    v19 = 4294954514;
    goto LABEL_17;
  }

  v40 = v58(v57, @"PreserveSyncFrames", v21);
  if (v40)
  {
    goto LABEL_59;
  }

LABEL_54:
  v59 = *(v63 + 464);
  if (v59)
  {
    FigRenderPipelineGetFigBaseObject();
    v61 = v60;
    v62 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v62)
    {
      v62(v61, @"PlaybackSessionID", v59);
    }
  }

  v19 = 0;
LABEL_17:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v19;
}