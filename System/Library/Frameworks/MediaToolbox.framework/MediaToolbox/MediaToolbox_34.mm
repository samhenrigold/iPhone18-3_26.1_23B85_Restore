uint64_t FigStreamPlaylistParserStartServer()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigStreamPlaylistParserStartServer_block_invoke;
  block[3] = &unk_1E7483F70;
  block[4] = &v3;
  if (FigStreamPlaylistParserStartServer_sFigStreamPlaylistParserServerSetupOnce != -1)
  {
    dispatch_once(&FigStreamPlaylistParserStartServer_sFigStreamPlaylistParserServerSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigStreamPlaylistParserStartServer_block_invoke(uint64_t a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    FigCFDictionarySetInt32();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCServerStart();
    CFRelease(v4);
  }

  else
  {
    __FigStreamPlaylistParserStartServer_block_invoke_cold_1(a1 + 32);
  }
}

uint64_t __FigStreamPlaylistParserServerConnectionObjGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA8C8 = result;
  return result;
}

void streamPlaylistParserServerServerConnectionObj_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    xpc_release(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t OUTLINED_FUNCTION_1_67(uint64_t a1)
{

  return FigXPCServerLookupAndRetainAssociatedObject();
}

uint64_t OUTLINED_FUNCTION_3_49(uint64_t a1)
{

  return FigCFStringGetCStringPtrAndBufferToFree();
}

uint64_t remoteXPCMutableMovieClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCMutableMovieClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E7483FB8;
  block[4] = &v3;
  if (gMutableMovieRemoteClientSetupOnce != -1)
  {
    dispatch_once(&gMutableMovieRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void setOptionsDictionaryEntryForMoviePropertyFromFormatReader(__CFDictionary *a1, const void *a2)
{
  value = 0;
  if (!CFDictionaryContainsKey(a1, a2))
  {
    FigFormatReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, a2, *MEMORY[0x1E695E480], &value);
      if (value)
      {
        CFDictionaryAddValue(a1, a2, value);
        CFRelease(value);
      }
    }
  }
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(const __CFURL *a1, uint64_t a2, void *a3, CFTypeRef *a4)
{
  value = 0;
  cf = 0;
  ObjectID = remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(a1, a2, &cf, &value);
  if (ObjectID)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    xpc_dictionary_set_uint64(a3, "ByteStream", value);
    *a4 = cf;
  }

  return ObjectID;
}

uint64_t remoteXPCMutableMovie_SandboxRegisterURLAddToXPCMessageAndCopyRegistration(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = FigSandboxRegisterURLWithProcessAndCopyRegistration();
  if (v5)
  {
    return v5;
  }

  v6 = 0;
  *a4 = 0;
  return v6;
}

void remoteXPCMutableMovie_storeSandboxRegistration(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 40);
  if (Mutable || (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]), (*(DerivedStorage + 40) = Mutable) != 0))
  {
    if (a2)
    {

      CFSetAddValue(Mutable, a2);
    }
  }

  else
  {
    remoteXPCMutableMovie_storeSandboxRegistration_cold_1();
  }
}

uint64_t remoteXPCMutableMovieClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    *(result + 9) = 1;
  }

  return result;
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForURLAndGetObjectID(const __CFURL *a1, uint64_t a2, CFTypeRef *a3, void *a4)
{
  v10 = 0;
  cf = 0;
  v6 = FigByteStreamRemoteCreateWithURL(*MEMORY[0x1E695E480], a1, a2, &cf);
  if (v6)
  {
    ObjectID = v6;
  }

  else
  {
    ObjectID = FigByteStreamRemoteGetObjectID(cf, &v10);
    if (!ObjectID)
    {
      v8 = v10;
      *a3 = cf;
      *a4 = v8;
      return ObjectID;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return ObjectID;
}

__CFString *remoteXPCMutableMovie_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigMutableMovieXPCRemote %p retainCount: %ld allocator: %p ObjectID: %016llx>", a1, v5, v6, *DerivedStorage);
  return Mutable;
}

uint64_t remoteXPCMutableMovie_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteXPCMutableMovie_GetObjectID_cold_1(&v6);
    return v6;
  }

  else if (a2)
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      remoteXPCMutableMovie_GetObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  else
  {
    remoteXPCMutableMovie_GetObjectID_cold_3(&v8);
    return v8;
  }

  return result;
}

void setOptionsDictionaryEntryForTrackPropertyFromTrackReader(__CFDictionary *a1, const void *a2)
{
  value = 0;
  if (!CFDictionaryContainsKey(a1, a2))
  {
    FigTrackReaderGetFigBaseObject();
    v5 = v4;
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, a2, *MEMORY[0x1E695E480], &value);
      if (value)
      {
        CFDictionaryAddValue(a1, a2, value);
        CFRelease(value);
      }
    }
  }
}

uint64_t remoteXPCMutableMovie_CreateByteStreamForTrackMediaDataStorageURLAndSetObjectIDInXPCMessageIfNecessary(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFNumberCreateSInt32();
  cf = 0;
  value = 0;
  if (FigCFDictionaryGetValueIfPresent() || (v7 = *(DerivedStorage + 16), (value = v7) == 0) || CFSetContainsValue(*(DerivedStorage + 32), v7))
  {
    v8 = 0;
LABEL_10:
    v11 = 0;
    *a4 = v8;
    return v11;
  }

  if (FigFileDoesFileExist())
  {
    v9 = 2;
  }

  else
  {
    v9 = 18;
  }

  v10 = remoteXPCMutableMovie_CreateByteStreamForURLAndSetObjectIDToXPCMessage(value, v9, a3, &cf);
  if (!v10)
  {
    CFSetAddValue(*(DerivedStorage + 32), value);
    v8 = cf;
    goto LABEL_10;
  }

  v11 = v10;
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t OUTLINED_FUNCTION_3_50@<X0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 time2, uint64_t time2_16)
{
  time2 = *a1;
  time2_16 = *(a1 + 2);

  return CMTimeCompare(&a2, &time2);
}

uint64_t OUTLINED_FUNCTION_15_17(void x0_0, uint64_t a1, void x2_0, void x3_0, void a5, void a6, void a7, void a8, __int128 a3, uint64_t a4)
{

  return FigXPCMessageSetCMTime();
}

uint64_t OUTLINED_FUNCTION_18_13()
{

  return remoteXPCMutableMovieClient_EnsureClientEstablished();
}

uint64_t OUTLINED_FUNCTION_28_11(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{

  return FigXPCCreateBasicMessage();
}

uint64_t OUTLINED_FUNCTION_29_10()
{

  return FigXPCRemoteClientSendSyncMessage();
}

uint64_t FigManifoldCreateForGap(CFAllocatorRef Default, OpaqueCMBlockBuffer *a2, CMTime *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v27 = 0;
  v15 = MEMORY[0x1E6960CC0];
  if (a2)
  {
    memset(&v24, 0, 24);
    fgGetDurationFromBlockBuffer(&v24.start, a2);
    if ((v24.start.flags & 1) == 0)
    {
      return 4294951252;
    }

    start = v24.start;
    duration = *v15;
    if (CMTimeCompare(&start, &duration) <= 0)
    {
      return 4294951252;
    }
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigManifoldCreateForGap_cold_1(&v24);
    return LODWORD(v24.start.value);
  }

  FigManifoldGetClassID();
  v16 = CMDerivedObjectCreate();
  v17 = v27;
  if (!v16)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigReentrantMutexCreate();
    *(DerivedStorage + 16) = v19;
    if (v19)
    {
      if (!Default)
      {
        Default = CFAllocatorGetDefault();
      }

      *DerivedStorage = CFRetain(Default);
      *(DerivedStorage + 136) = a5;
      *(DerivedStorage + 144) = a6;
      *(DerivedStorage + 152) = a7;
      *(DerivedStorage + 96) = 0xCA000000C9;
      *(DerivedStorage + 124) = 0x736F756E76696465;
      start = *a3;
      duration = *v15;
      CMTimeRangeMake(&v24, &start, &duration);
      v20 = *&v24.start.epoch;
      *(DerivedStorage + 160) = *&v24.start.value;
      *(DerivedStorage + 176) = v20;
      *(DerivedStorage + 192) = *&v24.duration.timescale;
      start = *a3;
      duration = *v15;
      CMTimeRangeMake(&v24, &start, &duration);
      v16 = 0;
      v21 = *&v24.start.epoch;
      *(DerivedStorage + 208) = *&v24.start.value;
      *(DerivedStorage + 224) = v21;
      *(DerivedStorage + 240) = *&v24.duration.timescale;
      *(DerivedStorage + 13) = a4;
      *a8 = v27;
      return v16;
    }

    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24.start.value, v24.start.timescale, LODWORD(v24.start.epoch));
    v16 = v23;
    v17 = v27;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t fgInvalidate(const void *a1)
{
  CFRetain(a1);
  fgInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t fgFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fgInvalidateGuts(a1);
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  result = *(DerivedStorage + 16);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 16) = 0;
  }

  return result;
}

__CFString *fgCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (Mutable)
  {
    v3 = DerivedStorage;
    v4 = *(DerivedStorage + 96);
    time = *(DerivedStorage + 160);
    Seconds = CMTimeGetSeconds(&time);
    lhs = *(v3 + 160);
    rhs = *(v3 + 184);
    CMTimeAdd(&time, &lhs, &rhs);
    v6 = CMTimeGetSeconds(&time);
    v7 = *(v3 + 100);
    time = *(v3 + 208);
    v8 = CMTimeGetSeconds(&time);
    lhs = *(v3 + 208);
    rhs = *(v3 + 232);
    CMTimeAdd(&time, &lhs, &rhs);
    v9 = CMTimeGetSeconds(&time);
    v10 = 89;
    if (!*(v3 + 8))
    {
      v10 = 78;
    }

    CFStringAppendFormat(Mutable, 0, @"FigFigGapManifold : pending gap duration Video[%d][%f, %f] Audio[%d][%f %f]. Invalidated[%c]", v4, *&Seconds, *&v6, v7, *&v8, *&v9, v10);
  }

  return Mutable;
}

uint64_t fgSetProperty(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v2 + 1;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
    v3 = v5;
    v2 = *(DerivedStorage + 24) - 1;
  }

  else
  {
    v3 = 4294954512;
  }

  *(DerivedStorage + 24) = v2;
  FigSimpleMutexUnlock();
  return v3;
}

uint64_t fgInvalidateGuts(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 8))
  {
    v4 = *(DerivedStorage + 13) != 0;
    v5 = DerivedStorage + 104;
    do
    {
      v6 = v4;
      v7 = *(v5 + 8 * v4);
      if (v7)
      {
        CFRelease(v7);
        *(v5 + 8 * v6) = 0;
      }

      v4 = 1;
    }

    while (!v6);
    *(DerivedStorage + 8) = 1;
    fgEndAllTracks(a1, 0xFFFFC153);
    v3 = *(DerivedStorage + 24) - 1;
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

uint64_t fgEndAllTracks(uint64_t a1, unsigned int a2)
{
  FigManifoldGetFigBaseObject();
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  v4 = *(result + 13) != 0;
  v5 = result + 32;
  v6 = result + 96;
  v7 = result + 80;
  do
  {
    v8 = v4;
    v9 = v5 + 24 * v4;
    v12 = *(v9 + 16);
    v10 = (v9 + 16);
    v11 = v12;
    if (v12)
    {
      *v10 = 0;
      v13 = *(v3 + 24);
      *(v3 + 24) = 0;
      if (v13 >= 1)
      {
        v14 = v13;
        do
        {
          FigSimpleMutexUnlock();
          --v14;
        }

        while (v14);
      }

      v11(a1, *(v6 + 4 * v8), *(v7 + 8 * v8), a2);
      do
      {
        result = FigSimpleMutexLock();
        v15 = *(v3 + 24) + 1;
        *(v3 + 24) = v15;
      }

      while (v15 < v13);
    }

    v4 = 1;
  }

  while (!v8);
  return result;
}

uint64_t fgManifoldInjectData(const void *a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    fgManifoldInjectData(&time1);
    return LODWORD(time1.duration.value);
  }

  v6 = DerivedStorage;
  fgGetDurationFromBlockBuffer(&time1.duration, a4);
  value = time1.duration.value;
  flags = time1.duration.flags;
  timescale = time1.duration.timescale;
  if ((time1.duration.flags & 0x1D) != 1 || (time1.duration.value = value, time1.duration.timescale = timescale, epoch = time1.duration.epoch, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1.duration, &time2) <= 0))
  {
    fgManifoldInjectData(&time1);
    return LODWORD(time1.duration.value);
  }

  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v6 + 24);
  if (*(v6 + 8))
  {
    fgManifoldInjectData(&time1);
LABEL_95:
    value_low = LODWORD(time1.duration.value);
    goto LABEL_88;
  }

  if (*(v6 + 11))
  {
    fgManifoldInjectData(&time1);
    goto LABEL_95;
  }

  v8 = *(v6 + 13) != 0;
  v70 = v6 + 9;
  v68 = v6 + 104;
  allocator = *MEMORY[0x1E695E480];
  v65 = *MEMORY[0x1E69604B0];
  key = *MEMORY[0x1E6962E38];
  v64 = *MEMORY[0x1E695E4D0];
  v62 = a4;
  v61 = flags;
  while (1)
  {
    v9 = v8;
    *(v6 + 11) = 0;
    if (!*(v70 + v8))
    {
      v10 = *(v6 + 136);
      if (v10)
      {
        v11 = *(v6 + 24);
        *(v6 + 24) = 0;
        if (v11 >= 1)
        {
          v12 = v11;
          do
          {
            FigSimpleMutexUnlock();
            --v12;
          }

          while (v12);
        }

        value_low = v10(a1, *(v6 + 152), *(v6 + 124 + 4 * v9), *(v6 + 96 + 4 * v9));
        do
        {
          FigSimpleMutexLock();
          v14 = *(v6 + 24) + 1;
          *(v6 + 24) = v14;
        }

        while (v14 < v11);
        if (value_low)
        {
          goto LABEL_87;
        }

        *(v70 + v9) = 1;
        if (*(v6 + 8) || *(v6 + 12))
        {
          break;
        }
      }
    }

    v15 = v6 + 160 + 48 * v9;
    v16 = *(v15 + 24);
    time2.epoch = *(v15 + 40);
    *&time2.value = v16;
    rhs.value = value;
    rhs.timescale = timescale;
    rhs.flags = flags;
    rhs.epoch = epoch;
    CMTimeAdd(&time1.duration, &time2, &rhs);
    v17 = *&time1.duration.value;
    *(v15 + 40) = time1.duration.epoch;
    *(v15 + 24) = v17;
    v18 = *(v68 + 8 * v9);
    v19 = CMGetAttachment(a4, @"FBPAKey_FakeFormatDescription", 0);
    *(v68 + 8 * v9) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    *(v6 + 11) = 1;
    FigManifoldGetFigBaseObject();
    v20 = CMBaseObjectGetDerivedStorage();
    v79 = 0;
    if (*(v20 + 8))
    {
      fgManifoldInjectData(&time1);
      value_low = LODWORD(time1.duration.value);
      goto LABEL_63;
    }

    v21 = v20;
    v22 = v20 + 48 * v9;
    if (*(v22 + 172))
    {
      v23 = *(v22 + 184);
      time1.duration.epoch = *(v22 + 200);
      *&time1.duration.value = v23;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1.duration, &time2) >= 1)
      {
        v24 = v21 + 24 * v9;
        v26 = *(v24 + 40);
        v25 = (v24 + 40);
        if (v26)
        {
          v27 = v21 + 120;
          if (*(v21 + 120 + v9))
          {
            goto LABEL_59;
          }

          v28 = v21 + 104;
          v29 = *(v21 + 104 + 8 * v9);
          if (!v29)
          {
            v30 = *(v21 + 4 * v9 + 96);
            FigManifoldGetFigBaseObject();
            v31 = CMBaseObjectGetDerivedStorage();
            time2.value = 0;
            if (v30 == 202)
            {
              memset(&time1.duration.timescale, 0, 32);
              time1.duration.value = 0x40D5888000000000;
              time1.duration.timescale = 1633772320;
              HIDWORD(time1.duration.epoch) = 1024;
              HIDWORD(time1.presentationTimeStamp.value) = 2;
              CMAudioFormatDescriptionCreate(*v31, &time1, 0, 0, 0, 0, 0, &time2);
            }

            else if (v30 == 201)
            {
              CMVideoFormatDescriptionCreate(*v31, 0x61766331u, 1, 1, 0, &time2);
            }

            else
            {
              fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, v59, sampleSizeArray);
            }

            v29 = time2.value;
            v28 = v21 + 104;
            *(v21 + 104 + 8 * v9) = time2.value;
            if (!v29)
            {
              value_low = 4294954510;
              goto LABEL_63;
            }
          }

          v32 = *(v25 - 1);
          if (!v32)
          {
            goto LABEL_44;
          }

          v33 = *(v21 + 24);
          *(v21 + 24) = 0;
          if (v33 >= 1)
          {
            v67 = v28;
            v34 = v33;
            do
            {
              FigSimpleMutexUnlock();
              --v34;
            }

            while (v34);
            v29 = *(v67 + 8 * v9);
          }

          value_low = v32(a1, *(v21 + 4 * v9 + 96), *(v21 + 8 * v9 + 80), v29, 0);
          do
          {
            FigSimpleMutexLock();
            v35 = *(v21 + 24) + 1;
            *(v21 + 24) = v35;
          }

          while (v35 < v33);
          a4 = v62;
          flags = v61;
          if (value_low)
          {
            goto LABEL_63;
          }

          *(v27 + v9) = 1;
          if (*(v21 + 8))
          {
LABEL_82:
            value_low = 4294951251;
            goto LABEL_63;
          }

          if (*(v21 + 12))
          {
LABEL_83:
            value_low = 4294951251;
          }

          else
          {
LABEL_44:
            v36 = *(v21 + 13) != 0;
            v37 = 1;
            do
            {
              v38 = v36;
              if (!*(v27 + v36))
              {
                v37 = 0;
              }

              v36 = 1;
            }

            while (!v38);
            v39 = *(v21 + 144);
            if (v39)
            {
              v40 = v37 == 0;
            }

            else
            {
              v40 = 1;
            }

            a4 = v62;
            flags = v61;
            if (!v40)
            {
              v41 = *(v21 + 24);
              *(v21 + 24) = 0;
              if (v41 >= 1)
              {
                v42 = v41;
                do
                {
                  FigSimpleMutexUnlock();
                  --v42;
                }

                while (v42);
              }

              v39(a1, *(v21 + 152));
              do
              {
                FigSimpleMutexLock();
                v43 = *(v21 + 24) + 1;
                *(v21 + 24) = v43;
              }

              while (v43 < v41);
              if (*(v21 + 8) || *(v21 + 12))
              {
                goto LABEL_82;
              }
            }

LABEL_59:
            if (*(v21 + 104 + 8 * v9))
            {
              time2 = **&MEMORY[0x1E6960CC0];
              memset(&rhs, 0, sizeof(rhs));
              CMTimeMakeWithSeconds(&rhs, 0.5, 900000);
              time1.duration = time2;
              v44 = *(v22 + 184);
              v76.epoch = *(v22 + 200);
              for (*&v76.value = v44; CMTimeCompare(&time1.duration, &v76) < 0; *&v76.value = v56)
              {
                v45 = *v25;
                if (!*v25)
                {
                  break;
                }

                memset(&v76, 0, sizeof(v76));
                v46 = *(v22 + 184);
                time1.duration.epoch = *(v22 + 200);
                *&time1.duration.value = v46;
                v75 = rhs;
                CMTimeMinimum(&v76, &time1.duration, &v75);
                time1.duration = v76;
                v47 = *(v22 + 176);
                *&time1.presentationTimeStamp.value = *(v22 + 160);
                time1.presentationTimeStamp.epoch = v47;
                v48 = *(v22 + 176);
                *&time1.decodeTimeStamp.value = *(v22 + 160);
                time1.decodeTimeStamp.epoch = v48;
                value_low = 4294954510;
                if (CMSampleBufferCreate(allocator, 0, 1u, 0, 0, *(v21 + 104 + 8 * v9), 0, 1, &time1, 0, 0, &v79) || !v79)
                {
                  goto LABEL_62;
                }

                CMSetAttachment(v79, v65, v64, 1u);
                CMSetAttachment(v79, key, v64, 1u);
                v49 = *(v21 + 24);
                *(v21 + 24) = 0;
                if (v49 >= 1)
                {
                  v50 = v49;
                  do
                  {
                    FigSimpleMutexUnlock();
                    --v50;
                  }

                  while (v50);
                }

                value_low = v45(a1, *(v21 + 96 + 4 * v9), *(v21 + 80 + 8 * v9), 3, 0, v79);
                do
                {
                  FigSimpleMutexLock();
                  v51 = *(v21 + 24) + 1;
                  *(v21 + 24) = v51;
                }

                while (v51 < v49);
                if (value_low)
                {
                  goto LABEL_62;
                }

                if (*(v21 + 8) || *(v21 + 12))
                {
                  goto LABEL_83;
                }

                v52 = *(v22 + 160);
                lhs.epoch = *(v22 + 176);
                *&lhs.value = v52;
                v72 = v76;
                CMTimeAdd(&v75, &lhs, &v72);
                v53 = *&v75.value;
                *(v22 + 176) = v75.epoch;
                *(v22 + 160) = v53;
                v54 = *(v22 + 184);
                lhs.epoch = *(v22 + 200);
                *&lhs.value = v54;
                v72 = v76;
                CMTimeSubtract(&v75, &lhs, &v72);
                v55 = *&v75.value;
                *(v22 + 200) = v75.epoch;
                *(v22 + 184) = v55;
                if (v79)
                {
                  CFRelease(v79);
                  v79 = 0;
                }

                time1.duration = time2;
                v56 = *(v22 + 184);
                v76.epoch = *(v22 + 200);
              }
            }

            value_low = 0;
          }

LABEL_62:
          a4 = v62;
          flags = v61;
          goto LABEL_63;
        }
      }
    }

    value_low = 0;
LABEL_63:
    if (v79)
    {
      CFRelease(v79);
    }

    v8 = 1;
    if (v9)
    {
      goto LABEL_87;
    }
  }

  value_low = 4294951251;
LABEL_87:
  *(v6 + 11) = 0;
LABEL_88:
  --*(v6 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return value_low;
}

uint64_t fgNoteStreamEnd(const void *a1, unsigned int a2)
{
  FigManifoldGetFigBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 8))
  {
    fgNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 12) = 1;
    fgEndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t fgCopyTrackProperty()
{
  FigManifoldGetFigBaseObject();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    return 4294951251;
  }

  else
  {
    return 4294954512;
  }
}

void sccFormatReader_Finalize(uint64_t a1)
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

__CFString *sccFormatReader_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CFCopyDescription(*(*DerivedStorage + 24));
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCFormatReader: stream<%@>", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t sccFormatReader_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    sccFormatReader_CopyProperty_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (!a4)
  {
    sccFormatReader_CopyProperty_cold_1(&time1);
    return LODWORD(time1.value);
  }

  v8 = *DerivedStorage;
  if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration"))
  {
    v9 = *(v8 + 80);
    if (v9)
    {
      Count = CFArrayGetCount(v9);
      v22 = **&MEMORY[0x1E6960CC0];
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 80), i);
          time1 = v22;
          time2 = ValueAtIndex[1];
          CMTimeMaximum(&v22, &time1, &time2);
        }
      }
    }

    else
    {
      v22 = **&MEMORY[0x1E6960CC0];
    }

    time1 = v22;
    v14 = CMTimeCopyAsDictionary(&time1, a3);
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    LODWORD(time1.value) = *(v8 + 40);
    v17 = *MEMORY[0x1E695E480];
    v18 = kCFNumberSInt32Type;
LABEL_16:
    v14 = CFNumberCreate(v17, v18, &time1);
LABEL_12:
    v15 = v14;
LABEL_13:
    result = 0;
    *a4 = v15;
    return result;
  }

  if (FigCFEqual())
  {
    v19 = kFigFormatReaderIdentifier_SCC;
LABEL_21:
    v20 = *v19;
LABEL_22:
    v14 = CFRetain(v20);
    goto LABEL_12;
  }

  if (FigCFEqual())
  {
    v19 = MEMORY[0x1E695E4D0];
    goto LABEL_21;
  }

  if (FigCFEqual())
  {
    goto LABEL_24;
  }

  if (FigCFEqual() || FigCFEqual())
  {
    LODWORD(time1.value) = 1065353216;
    v17 = *MEMORY[0x1E695E480];
    v18 = kCFNumberFloat32Type;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {

    return sccInfoCopyFigMatrixAsArray(a3, a4);
  }

  else
  {
    if (FigCFEqual())
    {
LABEL_24:
      v21 = MEMORY[0x1E695E4D0];
      goto LABEL_25;
    }

    if (FigCFEqual())
    {
      v20 = *(v8 + 72);
      if (v20)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      v21 = MEMORY[0x1E695E4D0];
      if (!*(v8 + 65))
      {
        v21 = MEMORY[0x1E695E4C0];
      }

LABEL_25:
      v20 = *v21;
      if (*v21)
      {
        goto LABEL_22;
      }

LABEL_26:
      v15 = 0;
      goto LABEL_13;
    }

    return 4294954512;
  }
}

uint64_t sccInfoCopyFigMatrixAsArray(const __CFAllocator *a1, CFArrayRef *a2)
{
  v4 = 0;
  LODWORD(v5) = 0;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  *values = 0u;
  v18 = 0u;
  v6 = *MEMORY[0x1E695E480];
  v7 = &kIdentityMatrix;
  while (2)
  {
    v5 = v5;
    v8 = 3;
    v9 = v7;
    do
    {
      v10 = CFNumberCreate(v6, kCFNumberFloat32Type, v9);
      values[v5] = v10;
      if (!v10)
      {
        sccInfoCopyFigMatrixAsArray_cold_2(&v16);
        goto LABEL_9;
      }

      ++v5;
      v9 += 4;
      --v8;
    }

    while (v8);
    ++v4;
    v7 += 12;
    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  v11 = CFArrayCreate(a1, values, 9, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    v12 = 0;
    *a2 = v11;
    goto LABEL_10;
  }

  sccInfoCopyFigMatrixAsArray_cold_1(&v16);
LABEL_9:
  v12 = v16;
LABEL_10:
  for (i = 0; i != 9; ++i)
  {
    v14 = values[i];
    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v12;
}

uint64_t sccFormatReader_GetTrackCount(uint64_t a1, const __CFArray **a2)
{
  Count = *(*CMBaseObjectGetDerivedStorage() + 80);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  *a2 = Count;
  return 0;
}

uint64_t sccFormatReader_CopyTrackByIndex(uint64_t a1, CFIndex a2, void *a3, _DWORD *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v11 = *(*DerivedStorage + 10);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
  }

  else
  {
    Count = 0;
  }

  result = 4294954453;
  if ((a2 & 0x8000000000000000) == 0 && Count > a2)
  {
    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], a2);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a3 = ValueAtIndex;
    }

    if (a4)
    {
      *a4 = 1668047728;
    }

    if (a5)
    {
      v15 = CFArrayGetValueAtIndex(*(v10 + 10), a2);
      result = 0;
      *a5 = v15[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sccFormatReader_CopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  v9 = *(*DerivedStorage + 10);
  if (!v9)
  {
    return 4294954453;
  }

  Count = CFArrayGetCount(v9);
  if (Count < 1)
  {
    return 4294954453;
  }

  v11 = Count;
  v12 = 0;
  while (*(CFArrayGetValueAtIndex(*(v8 + 10), v12) + 2) != a2)
  {
    if (v11 == ++v12)
    {
      return 4294954453;
    }
  }

  if (a3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v12);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a3 = ValueAtIndex;
  }

  result = 0;
  if (a4)
  {
    *a4 = 1668047728;
  }

  return result;
}

uint64_t sccFormatReader_CopyTrackByType(uint64_t a1, CFIndex a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *DerivedStorage;
  v11 = *(*DerivedStorage + 10);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
  }

  else
  {
    Count = 0;
  }

  result = 4294954453;
  if ((a2 & 0x8000000000000000) == 0 && a3 == 1668047728 && Count > a2)
  {
    if (a4)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], a2);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a4 = ValueAtIndex;
    }

    if (a5)
    {
      v15 = CFArrayGetValueAtIndex(*(v10 + 10), a2);
      result = 0;
      *a5 = v15[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sccInfoEndOfFileCallback(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  v19 = 0;
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), v5);
    v7 = (ValueAtIndex + 48);
    v8 = *(ValueAtIndex + 6);
    if (v8)
    {
      break;
    }

LABEL_5:
    if (v4 == ++v5)
    {
      return 0;
    }
  }

  v9 = ValueAtIndex;
  v10 = *(v8 + 48);
  time = *(a1 + 32);
  CMTimeMultiply(&v18, &time, v10);
  *(v8 + 24) = v18;
  v11 = sccInfoSampleBufferCreate(v8, v9[2], *(a1 + 16), &v19);
  v12 = v19;
  if (!v11)
  {
    CFArrayAppendValue(v9[7], v19);
    v13 = *v8;
    time.epoch = *(v8 + 16);
    *&time.value = v13;
    v16 = *(v8 + 24);
    CMTimeAdd(&v18, &time, &v16);
    *(v9 + 1) = v18;
    if (v12)
    {
      CFRelease(v12);
      v19 = 0;
    }

    sccInfoSCCSampleReleaseAndClear(*v9, v7);
    goto LABEL_5;
  }

  v14 = v11;
  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

uint64_t sccInfoMalformedDataCallback(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a9 + 16);
  if (*(a9 + 72) || (v12 = CFArrayCreateMutable(*(a9 + 16), 0, MEMORY[0x1E695E9C0]), (*(a9 + 72) = v12) != 0))
  {
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v14 = Mutable;
      if (!FigCFDictionarySetInt32() && !FigCFDictionarySetInt32())
      {
        CFDictionarySetValue(v14, @"DiagnosticInformation", a2);
        CFDictionarySetValue(v14, @"ReferencedText", a3);
        FigCFDictionarySetInt32();
        v15 = CFDictionaryCreateMutable(v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v15)
        {
          v16 = v15;
          if (!FigCFDictionarySetCFIndex() && !FigCFDictionarySetCFIndex())
          {
            CFDictionarySetValue(v14, @"TextRange", v16);
            v17 = CFDictionaryCreateMutable(v11, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v17)
            {
              v18 = v17;
              if (!FigCFDictionarySetCFIndex() && !FigCFDictionarySetCFIndex())
              {
                CFDictionarySetValue(v14, @"TextRangeInLine", v18);
                CFArrayAppendValue(*(a9 + 72), v14);
              }

              CFRelease(v18);
            }

            else
            {
              sccInfoMalformedDataCallback_cold_1();
            }
          }

          CFRelease(v16);
        }

        else
        {
          sccInfoMalformedDataCallback_cold_2();
        }
      }

      CFRelease(v14);
    }

    else
    {
      sccInfoMalformedDataCallback_cold_3();
    }
  }

  else
  {
    sccInfoMalformedDataCallback_cold_4();
  }

  return 1;
}

uint64_t sccInfoRegisterType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CA8D8 = result;
  return result;
}

double sccInfo_Init(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void sccInfo_Finalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
      sccInfoTrackRelease(ValueAtIndex);
    }
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 72) = 0;
  }

  FigSCCParserRelease(*(a1 + 56));
  *(a1 + 56) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 16) = 0;
  }
}

void sccInfoTrackRelease(const __CFAllocator **a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a1[2];
    if (v3)
    {
      CFRelease(v3);
      a1[2] = 0;
    }

    v4 = a1[7];
    if (v4)
    {
      CFRelease(v4);
      a1[7] = 0;
    }

    v5 = a1[8];
    if (v5)
    {
      CFRelease(v5);
      a1[8] = 0;
    }

    sccInfoSCCSampleReleaseAndClear(v2, a1 + 6);
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void sccInfoSCCSampleReleaseAndClear(CFAllocatorRef allocator, void **a2)
{
  if (a2)
  {
    v3 = *a2;
    if (v3)
    {
      v5 = v3[7];
      if (v5)
      {
        CFRelease(v5);
        v3 = *a2;
      }

      CFAllocatorDeallocate(allocator, v3);
      *a2 = 0;
    }
  }
}

void sccTrackReader_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccTrackReader_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCTrackReader %p>", a1);
  return Mutable;
}

uint64_t sccTrackReader_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFArrayRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *DerivedStorage;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]);
  if (!a2)
  {
    sccTrackReader_CopyProperty_cold_2(&v18);
    return LODWORD(v18.value);
  }

  if (!a4)
  {
    sccTrackReader_CopyProperty_cold_1(&v18);
    return LODWORD(v18.value);
  }

  v10 = ValueAtIndex;
  if (FigCFEqual())
  {
    v11 = CFArrayCreate(a3, v10 + 2, 1, MEMORY[0x1E695E9C0]);
LABEL_10:
    v14 = v11;
    result = 0;
    *a4 = v14;
    return result;
  }

  if (FigCFEqual())
  {
    LODWORD(v18.value) = v8[10];
    v12 = *MEMORY[0x1E695E480];
    v13 = kCFNumberSInt32Type;
LABEL_7:
    v11 = CFNumberCreate(v12, v13, &v18);
    goto LABEL_10;
  }

  if (FigCFEqual())
  {
    v11 = CFRetain(*MEMORY[0x1E695E4D0]);
    goto LABEL_10;
  }

  if (FigCFEqual())
  {

    return sccInfoCopyFigMatrixAsArray(a3, a4);
  }

  else
  {
    if (FigCFEqual() || FigCFEqual())
    {
      v18 = *(v10 + 1);
      v11 = CMTimeCopyAsDictionary(&v18, a3);
      goto LABEL_10;
    }

    if (FigCFEqual())
    {
      Count = *(v10 + 7);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      v18.value = Count;
      v12 = *MEMORY[0x1E695E480];
      v13 = kCFNumberCFIndexType;
      goto LABEL_7;
    }

    if (FigCFEqual())
    {
      v17 = DerivedStorage[1];

      return sccCursorServiceCreate(v8, v17, 1, a3, a4);
    }

    else
    {
      return 4294954512;
    }
  }
}

uint64_t sccCursorServiceCreate(const void *a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  FigSampleCursorServiceGetClassID();
  v9 = CMDerivedObjectCreate();
  if (v9)
  {
    sccCursorServiceCreate_cold_1();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      v11 = CFRetain(a1);
    }

    else
    {
      v11 = 0;
    }

    *DerivedStorage = v11;
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    *a5 = 0;
  }

  return v9;
}

void sccCursorService_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccCursorService_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCCursorService %p>", a1);
  return Mutable;
}

uint64_t sccCursorCreate(CFArrayRef *a1, CFIndex a2, int a3, uint64_t a4, void *a5)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1[10], a2);
  v10 = 64;
  if (!a3)
  {
    v10 = 56;
  }

  v11 = *&ValueAtIndex[v10];
  if (v11 && CFArrayGetCount(v11))
  {
    FigSampleCursorGetClassID();
    v12 = CMDerivedObjectCreate();
    if (v12)
    {
      sccCursorCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a1);
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = a3;
      *a5 = 0;
    }
  }

  else
  {
    sccCursorCreate_cold_2(&v15);
    return v15;
  }

  return v12;
}

uint64_t sccCursorMoveToDTS(uint64_t *a1, CMTime *a2, char *a3, char *a4)
{
  v8 = *a1;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*a1 + 80), a1[1]);
  v10 = ValueAtIndex;
  v11 = 64;
  if (!*(a1 + 16))
  {
    v11 = 56;
  }

  v12 = *(&ValueAtIndex->value + v11);
  if (v12)
  {
    v13 = CFArrayGetCount(*(&ValueAtIndex->value + v11)) - 1;
  }

  else
  {
    v13 = -1;
  }

  v14 = *(v8 + 40);
  time = *a2;
  CMTimeConvertScale(&time1, &time, v14, kCMTimeRoundingMethod_RoundTowardZero);
  *&a2->value = *&time1.value;
  epoch = time1.epoch;
  a2->epoch = time1.epoch;
  *&time1.value = *&a2->value;
  time1.epoch = epoch;
  time = **&MEMORY[0x1E6960CC0];
  result = CMTimeCompare(&time1, &time);
  if ((result & 0x80000000) != 0)
  {
    v13 = 0;
    v20 = 0;
    v21 = 1;
    goto LABEL_20;
  }

  time1 = v10[1];
  time = *a2;
  result = CMTimeCompare(&time1, &time);
  if (result < 1)
  {
    v21 = 0;
    v20 = 1;
    goto LABEL_20;
  }

  time1 = **&MEMORY[0x1E6960C70];
  time = time1;
  v24 = time1;
  if (v13 < 0)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_19;
  }

  v17 = 0;
  while (1)
  {
    v18 = (v13 + v17) >> 1;
    v19 = CFArrayGetValueAtIndex(v12, v18);
    CMSampleBufferGetPresentationTimeStamp(&time1, v19);
    CMSampleBufferGetDuration(&time, v19);
    lhs = time1;
    v22 = time;
    CMTimeAdd(&v24, &lhs, &v22);
    lhs = *a2;
    v22 = time1;
    result = CMTimeCompare(&lhs, &v22);
    if ((result & 0x80000000) != 0)
    {
      v13 = v18 - 1;
      goto LABEL_14;
    }

    lhs = v24;
    v22 = *a2;
    result = CMTimeCompare(&lhs, &v22);
    if (result > 0)
    {
      break;
    }

    v17 = v18 + 1;
LABEL_14:
    if (v17 > v13)
    {
      goto LABEL_15;
    }
  }

  v13 = (v13 + v17) >> 1;
LABEL_19:
  v21 = 0;
  v20 = 0;
LABEL_20:
  a1[3] = v13;
  if (a3)
  {
    *a3 = v21;
  }

  if (a4)
  {
    *a4 = v20;
  }

  return result;
}

void sccCursor_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *sccCursor_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<SCCSampleCursor %p>{curSampleNumber:%lld}", a1, *(DerivedStorage + 24));
  return Mutable;
}

uint64_t sccCursor_CopyProperty(uint64_t a1, uint64_t a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    v7 = DerivedStorage;
    if (FigCFEqual())
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*v7 + 80), v7[1]);
      CurrentSample = sccCursorGetCurrentSample(v7);
      memset(&time, 0, sizeof(time));
      CMSampleBufferGetPresentationTimeStamp(&time, CurrentSample);
      memset(&v12, 0, sizeof(v12));
      lhs = ValueAtIndex[1];
      rhs = time;
      CMTimeSubtract(&v12, &lhs, &rhs);
      time = v12;
      v10 = CMTimeCopyAsDictionary(&time, a3);
      result = 0;
      *a4 = v10;
    }

    else
    {
      return 4294954512;
    }
  }

  else
  {
    sccCursor_CopyProperty_cold_1(&time);
    return LODWORD(time.value);
  }

  return result;
}

const void *sccCursorGetCurrentSample(uint64_t a1)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(*a1 + 80), *(a1 + 8));
  v3 = 64;
  if (!*(a1 + 16))
  {
    v3 = 56;
  }

  v4 = *&ValueAtIndex[v3];
  v5 = *(a1 + 24);

  return CFArrayGetValueAtIndex(v4, v5);
}

uint64_t sccCursor_Copy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    sccCursor_Copy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    v6 = DerivedStorage[1];
    *v5 = *DerivedStorage;
    v5[1] = v6;
    v7 = *v5;
    if (v7)
    {
      CFRetain(v7);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t sccCursor_CompareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 24);
  v5 = *(v3 + 24);
  v6 = v4 < v5;
  v7 = v4 > v5;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t sccCursor_GetPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetPresentationTimeStamp(&v6, CurrentSample);
  *a2 = v6;
  return 0;
}

uint64_t sccCursor_GetDuration(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&v6, 0, sizeof(v6));
  CMSampleBufferGetDuration(&v6, CurrentSample);
  *a2 = v6;
  return 0;
}

uint64_t sccCursor_GetDependencyInfo(uint64_t a1, _BYTE *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

uint64_t sccCursor_CreateSampleBuffer(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 24);
  v7 = *DerivedStorage;
  ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), *(DerivedStorage + 8));
  v9 = 64;
  if (!*(DerivedStorage + 16))
  {
    v9 = 56;
  }

  v10 = *&ValueAtIndex[v9];
  if (!a2)
  {
    goto LABEL_7;
  }

  v11 = ValueAtIndex;
  v12 = CMBaseObjectGetDerivedStorage();
  if (v11 != CFArrayGetValueAtIndex(*(v7 + 80), *(v12 + 8)))
  {
    sccCursor_CreateSampleBuffer_cold_1(&v17);
    return v17;
  }

  v13 = *(v12 + 24);
  if (v6 > v13)
  {
    sccCursor_CreateSampleBuffer_cold_3(&v19);
    return v19;
  }

  if (v13 != v6)
  {
    sccCursor_CreateSampleBuffer_cold_2(&v18);
    return v18;
  }

  else
  {
LABEL_7:
    v14 = CFArrayGetValueAtIndex(v10, v6);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    result = 0;
    *a3 = v15;
  }

  return result;
}

uint64_t sccCursor_StepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = **&MEMORY[0x1E6960C70];
  v8 = 0;
  CurrentSample = sccCursorGetCurrentSample(DerivedStorage);
  memset(&lhs, 0, sizeof(lhs));
  CMSampleBufferGetPresentationTimeStamp(&lhs, CurrentSample);
  v10 = lhs;
  v6 = *a2;
  CMTimeAdd(&v9, &lhs, &v6);
  lhs = v9;
  sccCursorMoveToDTS(DerivedStorage, &lhs, &v8 + 1, &v8);
  if (HIBYTE(v8) | v8)
  {
    return 4294954456;
  }

  else
  {
    return 0;
  }
}

uint64_t sccCursor_CopyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]) + 2);
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  return 0;
}

uint64_t sccCursor_StepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = DerivedStorage[3];
  v8 = v7 + a2;
  if (a2 < 1)
  {
    v12 = v8 & ~(v8 >> 63);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]);
    v10 = 64;
    if (!*(v6 + 16))
    {
      v10 = 56;
    }

    Count = *&ValueAtIndex[v10];
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    v12 = Count - 1;
    if (Count > v8)
    {
      v12 = v7 + a2;
    }
  }

  v6[3] = v12;
  if (a3)
  {
    *a3 = v12 - v7;
  }

  return 0;
}

uint64_t sccTrackReader_GetTrackInfo(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *a2 = *(CFArrayGetValueAtIndex(*(*DerivedStorage + 80), DerivedStorage[1]) + 2);
  }

  if (a3)
  {
    *a3 = 1668047728;
  }

  return 0;
}

uint64_t sccTrackReader_CopySampleCursorService(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage[1];
  v5 = *(*DerivedStorage + 16);
  v6 = *DerivedStorage;

  return sccCursorServiceCreate(v6, v4, 0, v5, a2);
}

dispatch_queue_t __FigDisplayMirroringGetAccessQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.coremedia.displaymirroringobserver", 0);
  FigDisplayMirroringGetAccessQueue_sFigDisplayMirroringAccessQueue = result;
  return result;
}

void FigAudioUnitRenderPipelineCreate(uint64_t a1, const __CFDictionary *a2, Float64 *a3)
{
  if (a3)
  {
    outData.mSampleRate = 0.0;
    FigRenderPipelineGetClassID();
    if (CMDerivedObjectCreate())
    {
      return;
    }

    mSampleRate = outData.mSampleRate;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    memset(&v67, 0, sizeof(v67));
    CMTimeMake(&v67, 1, 2);
    memset(&v66, 0, sizeof(v66));
    CMTimeMake(&v66, 1, 1);
    memset(&outData, 0, sizeof(outData));
    values = @"com.apple.coremedia.audiounitrenderpipeline";
    valuePtr = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!a2)
    {
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(a2, @"FormatDescription");
    v11 = CFDictionaryGetValue(a2, @"PreparedQueueLowWaterLevel");
    if (v11)
    {
      CMTimeMakeFromDictionary(&v62, v11);
      v67 = v62;
    }

    v12 = CFDictionaryGetValue(a2, @"PreparedQueueHighWaterLevel");
    if (v12)
    {
      CMTimeMakeFromDictionary(&v62, v12);
      v66 = v62;
    }

    v13 = CFDictionaryGetValue(a2, @"AudioDeviceID");
    if (v13)
    {
      HIDWORD(valuePtr) = CFNumberGetValue(v13, kCFNumberIntType, &valuePtr + 4);
    }

    if (Value)
    {
      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      v15 = CMBufferQueueCreate(v8, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 8));
      if (v15)
      {
LABEL_18:
        if (v9)
        {
          CFRelease(v9);
        }

        if (!v15)
        {
          *a3 = mSampleRate;
        }

        return;
      }

      *(DerivedStorage + 16) = Value;
      CFRetain(Value);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(DerivedStorage + 16));
      if (StreamBasicDescription)
      {
        v17 = StreamBasicDescription;
        outInstance = 0;
        *&v62.value = xmmword_196E76740;
        LODWORD(v62.epoch) = 0;
        Next = AudioComponentFindNext(0, &v62);
        if (Next && !AudioComponentInstanceNew(Next, &outInstance))
        {
          v26 = outInstance;
          *(DerivedStorage + 32) = outInstance;
        }

        else
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62.value, v62.timescale, LODWORD(v62.epoch));
          if (v23)
          {
            v24 = v23;
            emitter = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v24, "<<<< FAURP >>>>", 483, v3);
            goto LABEL_17;
          }

          v26 = *(DerivedStorage + 32);
        }

        LODWORD(valuePtr) = 40;
        Property = AudioUnitGetProperty(v26, 8u, 2u, 0, &outData, &valuePtr);
        if (Property)
        {
          v28 = Property;
          v29 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v28, "<<<< FAURP >>>>", 494, v3);
        }

        else
        {
          if (outData.mSampleRate == 0.0)
          {
            outData.mSampleRate = v17->mSampleRate;
          }

          v30 = CMAudioFormatDescriptionCreate(v8, &outData, 0, 0, 0, 0, 0, (DerivedStorage + 24));
          if (v30)
          {
            v31 = v30;
            v32 = fig_log_get_emitter();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v31, "<<<< FAURP >>>>", 524, v3);
          }

          else
          {
            LODWORD(valuePtr) = 40;
            v33 = AudioUnitSetProperty(*(DerivedStorage + 32), 8u, 1u, 0, v17, 0x28u);
            if (v33)
            {
              v34 = v33;
              v35 = fig_log_get_emitter();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v34, "<<<< FAURP >>>>", 535, v3);
            }

            else
            {
              if (HIDWORD(valuePtr))
              {
                figAudioUnitSetOutputDevice(DerivedStorage, SHIDWORD(valuePtr), &valuePtr + 1);
              }

              CurrentOutputDevice = figAudioUnitGetCurrentOutputDevice(DerivedStorage, &valuePtr + 1);
              v37 = HIDWORD(valuePtr);
              if (CurrentOutputDevice)
              {
                v37 = 0;
              }

              *(DerivedStorage + 84) = v37;
              *(DerivedStorage + 40) = figAudioUnit_RenderProc;
              *(DerivedStorage + 48) = DerivedStorage;
              v38 = AudioUnitSetProperty(*(DerivedStorage + 32), 0x17u, 1u, 0, (DerivedStorage + 40), 0x10u);
              if (v38)
              {
                v39 = v38;
                v40 = fig_log_get_emitter();
                FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v39, "<<<< FAURP >>>>", 565, v3);
              }

              else
              {
                v41 = AudioUnitInitialize(*(DerivedStorage + 32));
                if (v41)
                {
                  v42 = v41;
                  v43 = fig_log_get_emitter();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, v42, "<<<< FAURP >>>>", 572, v3);
                }

                else
                {
                  LODWORD(valuePtr) = 4;
                  v44 = AudioUnitGetProperty(*(DerivedStorage + 32), 0xEu, 0, 0, (DerivedStorage + 120), &valuePtr);
                  if (v44)
                  {
                    v45 = v44;
                    v46 = fig_log_get_emitter();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v45, "<<<< FAURP >>>>", 589, v3);
                  }

                  else
                  {
                    v47 = *(DerivedStorage + 120);
                    *(DerivedStorage + 144) = 0;
                    *(DerivedStorage + 148) = 4 * v47;
                    v48 = MEMORY[0x19A8CC720](v8, v17->mBytesPerFrame * v47, 543810113, 0);
                    *(DerivedStorage + 112) = v48;
                    if (v48)
                    {
                      v49 = CMSimpleQueueCreate(v8, 32, (DerivedStorage + 136));
                      if (v49)
                      {
                        v50 = v49;
                        v51 = fig_log_get_emitter();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v50, "<<<< FAURP >>>>", 607, v3);
                      }

                      else
                      {
                        v53 = CMSimpleQueueCreate(v8, 32, (DerivedStorage + 152));
                        if (v53)
                        {
                          v54 = v53;
                          v55 = fig_log_get_emitter();
                          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, v54, "<<<< FAURP >>>>", 613, v3);
                        }

                        else
                        {
                          v56 = FigSemaphoreCreate();
                          *(DerivedStorage + 176) = v56;
                          if (v56)
                          {
                            *(DerivedStorage + 168) = 1;
                            v57 = FigThreadCreate();
                            if (v57)
                            {
                              v58 = v57;
                              v59 = fig_log_get_emitter();
                              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v59, v58, "<<<< FAURP >>>>", 626, v3);
                            }

                            else
                            {
                              v61 = *(DerivedStorage + 8);
                              v62 = **&MEMORY[0x1E6960CC0];
                              v20 = CMBufferQueueInstallTrigger(v61, faurpSourceDataBecameReady, DerivedStorage, 7, &v62, (DerivedStorage + 128));
                            }
                          }

                          else
                          {
                            v60 = fig_log_get_emitter();
                            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 4294967188, "<<<< FAURP >>>>", 619, v3);
                          }
                        }
                      }
                    }

                    else
                    {
                      v52 = fig_log_get_emitter();
                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 4294967188, "<<<< FAURP >>>>", 601, v3);
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_17;
      }

      v22 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954586, "<<<< FAURP >>>>", 465, v3);
    }

    else
    {
LABEL_16:
      v19 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 4294954444, "<<<< FAURP >>>>", 448, v3);
    }

LABEL_17:
    v15 = v20;
    goto LABEL_18;
  }

  v21 = fig_log_get_emitter();

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954444, "<<<< FAURP >>>>", 1008, v3);
}

uint64_t figAudioUnitRenderPipelineInvalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v2 = DerivedStorage;
    if (!*DerivedStorage)
    {
      *DerivedStorage = 1;
      if (*(DerivedStorage + 160))
      {
        *(DerivedStorage + 168) = 0;
        FigMemoryBarrier();
        FigSemaphoreSignal();
        FigThreadJoin();
        *(v2 + 160) = 0;
      }

      if (*(v2 + 176))
      {
        FigSemaphoreDestroy();
        *(v2 + 176) = 0;
      }

      v3 = *(v2 + 32);
      if (v3)
      {
        AudioUnitUninitialize(v3);
        AudioComponentInstanceDispose(*(v2 + 32));
        *(v2 + 32) = 0;
      }

      v4 = *(v2 + 112);
      if (v4 && *(v2 + 120))
      {
        CFAllocatorDeallocate(*MEMORY[0x1E695E480], v4);
        *(v2 + 112) = 0;
        *(v2 + 120) = 0;
      }

      v5 = *(v2 + 8);
      if (v5)
      {
        v6 = *(v2 + 128);
        if (v6)
        {
          CMBufferQueueRemoveTrigger(v5, v6);
          *(v2 + 128) = 0;
          v5 = *(v2 + 8);
        }

        CFRelease(v5);
        *(v2 + 8) = 0;
      }

      v7 = *(v2 + 136);
      if (v7)
      {
        while (1)
        {
          v8 = CMSimpleQueueDequeue(v7);
          if (!v8)
          {
            break;
          }

          CFRelease(v8);
          v7 = *(v2 + 136);
        }

        FigSimpleQueueRelease();
        *(v2 + 136) = 0;
      }

      v9 = *(v2 + 152);
      if (v9)
      {
        while (1)
        {
          v10 = CMSimpleQueueDequeue(v9);
          if (!v10)
          {
            break;
          }

          CFRelease(v10);
          v9 = *(v2 + 152);
        }

        FigSimpleQueueRelease();
        *(v2 + 152) = 0;
      }

      v11 = *(v2 + 16);
      if (v11)
      {
        CFRelease(v11);
        *(v2 + 16) = 0;
      }

      v12 = *(v2 + 24);
      if (v12)
      {
        CFRelease(v12);
        *(v2 + 24) = 0;
      }

      v13 = *(v2 + 184);
      if (v13)
      {
        CFRelease(v13);
        *(v2 + 184) = 0;
      }
    }
  }

  return 0;
}

__CFString *figAudioUnitRenderPipelineCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigAudioUnitRenderPipeline %p>", a1);
  return Mutable;
}

void figAudioUnitRenderPipelineCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CMClockRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v9 = DerivedStorage, *DerivedStorage))
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 875;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< FAURP >>>>", v12, v11);
    return;
  }

  if (CFEqual(@"SourceSampleBufferQueue", a2))
  {
    v13 = *(v9 + 1);
    goto LABEL_11;
  }

  if (CFEqual(@"Timebase", a2))
  {
    v13 = *(v9 + 23);
LABEL_11:
    *a4 = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    return;
  }

  if (!CFEqual(@"PreferredClock", a2))
  {
    if (CFEqual(@"IsRunning", a2))
    {
      v15 = MEMORY[0x1E695E4D0];
      if (!v9[80])
      {
        v15 = MEMORY[0x1E695E4C0];
      }

      v16 = CFRetain(*v15);
    }

    else
    {
      if (CFEqual(@"EndPresentationTimeForQueuedSamples", a2))
      {
        memset(&v19, 0, sizeof(v19));
        CMBufferQueueGetEndPresentationTimeStamp(&v19, *(v9 + 1));
      }

      else
      {
        if (!CFEqual(@"PipelineLatency", a2))
        {
          return;
        }

        memset(&v19, 0, sizeof(v19));
        StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(v9 + 3));
        if (!StreamBasicDescription)
        {
          emitter = fig_log_get_emitter();
          v11 = v4;
          v12 = 910;
          goto LABEL_4;
        }

        CMTimeMake(&v19, *(v9 + 30), StreamBasicDescription->mSampleRate);
      }

      v18 = v19;
      v16 = CMTimeCopyAsDictionary(&v18, a3);
    }

    *a4 = v16;
    return;
  }

  v14 = *(v9 + 21);
  if (v14)
  {

    CMAudioDeviceClockCreateFromAudioDeviceID(a3, v14, a4);
  }

  else
  {

    CMAudioDeviceClockCreate(a3, 0, a4);
  }
}

void figAudioUnitRenderPipelineSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v7 = DerivedStorage, *DerivedStorage))
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 849;
LABEL_4:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954444, "<<<< FAURP >>>>", v10, v9);
    return;
  }

  if (!CFEqual(@"Timebase", a2))
  {
    return;
  }

  if (a3)
  {
    TypeID = CMTimebaseGetTypeID();
    if (TypeID != CFGetTypeID(a3))
    {
      emitter = fig_log_get_emitter();
      v9 = v3;
      v10 = 857;
      goto LABEL_4;
    }
  }

  v12 = *(v7 + 23);
  if (v12)
  {
    CFRelease(v12);
  }

  *(v7 + 23) = a3;
  if (a3)
  {
    CFRetain(a3);
  }
}

uint64_t figAudioUnitRenderPipelineSetRateAndAnchorTime(uint64_t a1, uint64_t a2, float a3)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3 == 1.0)
  {
    v6 = CMBaseObjectGetDerivedStorage();
    mSampleRate = CMAudioFormatDescriptionGetStreamBasicDescription(*(v6 + 16))->mSampleRate;
    memset(&immediateSourceTime, 0, sizeof(immediateSourceTime));
    CMTimebaseGetTimeWithTimeScale(&immediateSourceTime, *(v6 + 184), mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v8 = AudioOutputUnitStart(*(v6 + 32));
    if (v8)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, LODWORD(timebaseTime.value), timebaseTime.timescale);
    }

    CMTimebaseSetRate(*(v6 + 184), a3);
    *(v6 + 80) = 1;
    return v8;
  }

  if (a3 != 0.0)
  {
    v13 = DerivedStorage;
    if (*(DerivedStorage + 80))
    {
      v8 = AudioOutputUnitStop(*(DerivedStorage + 32));
      *(v13 + 80) = 0;
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v13 + 184);
    v17 = a3;
    goto LABEL_17;
  }

  v22 = *a2;
  v9 = *(a2 + 12);
  v23 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = CMBaseObjectGetDerivedStorage();
  v12 = v11;
  if (*(v11 + 80))
  {
    v8 = AudioOutputUnitStop(*(v11 + 32));
    *(v12 + 80) = 0;
  }

  else
  {
    v8 = 0;
  }

  v14 = *(v12 + 184);
  if ((v9 & 0x1D) != 1)
  {
    v17 = 0.0;
LABEL_17:
    CMTimebaseSetRate(v14, v17);
    return v8;
  }

  v15 = CMTimebaseCopySource(v14);
  v16 = *(v12 + 184);
  CMSyncGetTime(&immediateSourceTime, v15);
  timebaseTime.value = v22;
  timebaseTime.timescale = v23;
  timebaseTime.flags = v9;
  timebaseTime.epoch = v10;
  CMTimebaseSetRateAndAnchorTime(v16, 0.0, &timebaseTime, &immediateSourceTime);
  if (v15)
  {
    CFRelease(v15);
  }

  return v8;
}

uint64_t figAudioUnitSetOutputDevice(uint64_t a1, int a2, int *a3)
{
  inData = a2;
  result = AudioUnitSetProperty(*(a1 + 32), 0x7D0u, 0, 0, &inData, 4u);
  if (a3)
  {
    if (!result)
    {
      *a3 = inData;
    }
  }

  return result;
}

uint64_t figAudioUnitGetCurrentOutputDevice(uint64_t a1, _DWORD *a2)
{
  outData = 0;
  ioDataSize = 4;
  result = AudioUnitGetProperty(*(a1 + 32), 0x7D0u, 0, 0, &outData, &ioDataSize);
  if (a2)
  {
    if (!result)
    {
      *a2 = outData;
    }
  }

  return result;
}

uint64_t figAudioUnit_RenderProc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v9 = *(a1 + 112);
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 16));
  if (StreamBasicDescription && *(a1 + 120) >= a5)
  {
    v11 = StreamBasicDescription;
    v12 = 0;
    if (a5)
    {
      while (1)
      {
        while (1)
        {
          v13 = *(a1 + 88);
          if (v13)
          {
            NumSamples = *(a1 + 104);
            goto LABEL_12;
          }

          v14 = CMSimpleQueueDequeue(*(a1 + 136));
          *(a1 + 88) = v14;
          if (!v14)
          {
            goto LABEL_19;
          }

          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
          if (!CMSampleBufferGetDataBuffer(v14))
          {
            break;
          }

          NumSamples = CMSampleBufferGetNumSamples(*(a1 + 88));
          *(a1 + 104) = NumSamples;
          *(a1 + 144) -= NumSamples;
          if (NumSamples)
          {
            goto LABEL_10;
          }
        }

        NumSamples = *(a1 + 104);
        if (NumSamples)
        {
LABEL_10:
          v13 = *(a1 + 88);
LABEL_12:
          if (a5 - v12 >= NumSamples - *(a1 + 96))
          {
            v16 = NumSamples - *(a1 + 96);
          }

          else
          {
            v16 = a5 - v12;
          }

          DataBuffer = CMSampleBufferGetDataBuffer(v13);
          CMBlockBufferCopyDataBytes(DataBuffer, *(a1 + 96) * v11->mBytesPerFrame, v16 * v11->mBytesPerFrame, v9);
          mBytesPerFrame = v11->mBytesPerFrame;
          v19 = *(a1 + 104);
          v20 = *(a1 + 96) + v16;
          *(a1 + 96) = v20;
          if (v20 == v19)
          {
            CMSimpleQueueEnqueue(*(a1 + 152), *(a1 + 88));
            *(a1 + 88) = 0;
            if (CMSimpleQueueGetCount(*(a1 + 136)) <= 0)
            {
              FigSemaphoreSignal();
            }
          }

          v9 += v16 * mBytesPerFrame;
          v12 += v16;
          if (v12 >= a5)
          {
            break;
          }
        }
      }
    }

LABEL_19:
    *(a6 + 16) = *(a1 + 112);
    *(a6 + 12) = v11->mBytesPerFrame * v12;
  }

  return 0;
}

uint64_t faurpTransferThread(uint64_t a1)
{
  if (CMAudioFormatDescriptionGetStreamBasicDescription(*(a1 + 16)))
  {
    while (1)
    {
      FigSemaphoreWaitRelative();
      if (!*(a1 + 168))
      {
        break;
      }

      v2 = *(a1 + 144);
      v3 = *(a1 + 148);
      while (v2 < v3)
      {
        v4 = CMBufferQueueDequeueAndRetain(*(a1 + 8));
        if (!v4)
        {
          break;
        }

        v5 = v4;
        CMSimpleQueueEnqueue(*(a1 + 136), v4);
        NumSamples = CMSampleBufferGetNumSamples(v5);
        v3 = *(a1 + 148);
        v2 = *(a1 + 144) + NumSamples;
        *(a1 + 144) = v2;
      }

      while (1)
      {
        v7 = CMSimpleQueueDequeue(*(a1 + 152));
        if (!v7)
        {
          break;
        }

        CFRelease(v7);
      }
    }
  }

  return 0;
}

_BYTE *faurpSourceDataBecameReady(_BYTE *result)
{
  if (!*result)
  {
    return FigSemaphoreSignal();
  }

  return result;
}

uint64_t FigVTTMetadataCreate(uint64_t a1, CFTypeRef *a2)
{
  if (a2)
  {
    FigVTTNodeGetClassID();
    v3 = CMDerivedObjectCreate();
    if (!v3)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v3 = FigVTTInitializeNodeBaseStorage(DerivedStorage);
      if (!v3)
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVTTMetadataCreate_cold_1(&v6);
    return v6;
  }

  return v3;
}

void figVTTMetadata_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();

  FigVTTReleaseNodeBaseStorage(DerivedStorage);
}

CFStringRef figVTTMetadata_CopyDebugDesc(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  v1 = FigCFCopyCompactDescription();
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"metadata: %@", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t figVTTMetadata_GetNodeType(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    result = 0;
    *a2 = 2;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    figVTTMetadata_GetNodeType_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t figVTTMetadata_copyNodeDocumentSerialization(uint64_t a1, CFStringRef *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *(DerivedStorage + 8);
    if (v4 && (v5 = CFRetain(v4)) != 0)
    {
      v6 = v5;
      *a2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n", v5);
      CFRelease(v6);
      return 0;
    }

    else
    {
      figVTTMetadata_copyNodeDocumentSerialization_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    figVTTMetadata_copyNodeDocumentSerialization_cold_2(&v9);
    return v9;
  }
}

uint64_t figTextContainerRegisterFigTextContainer()
{
  result = _CFRuntimeRegisterClass();
  sFigTextContainerID = result;
  return result;
}

uint64_t FigTextContainerCreateWithCFData(const __CFAllocator *a1, CFDataRef theData, CFStringEncoding a3, uint64_t a4, uint64_t *a5)
{
  if (theData)
  {
    if (a5)
    {
      BytePtr = CFDataGetBytePtr(theData);
      Length = CFDataGetLength(theData);

      return figTextContainerCreateWithCFStringOrDataPtr_internal(a1, 0, BytePtr, Length, a3, a5);
    }

    else
    {
      FigTextContainerCreateWithCFData_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigTextContainerCreateWithCFData_cold_2(&v13);
    return v13;
  }
}

uint64_t figTextContainerCreateWithCFStringOrDataPtr_internal(const __CFAllocator *a1, const __CFString *a2, UInt8 *bytes, CFIndex numBytes, CFStringEncoding encoding, uint64_t *a6)
{
  if (a2)
  {
    Copy = CFStringCreateCopy(a1, a2);
  }

  else
  {
    Copy = CFStringCreateWithBytes(a1, bytes, numBytes, encoding, 1u);
  }

  v8 = Copy;
  if (Copy)
  {
    MEMORY[0x19A8D3660](&FigTextContainerGetTypeID_sRegisterFigTextContainerOnce, figTextContainerRegisterFigTextContainer);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v10 = Instance;
      *(Instance + 16) = v8;
      Length = CFStringGetLength(v8);
      result = 0;
      *(v10 + 24) = Length;
      *a6 = v10;
    }

    else
    {
      figTextContainerCreateWithCFStringOrDataPtr_internal_cold_1(v8, &v13);
      return v13;
    }
  }

  else
  {
    figTextContainerCreateWithCFStringOrDataPtr_internal_cold_2(&v14);
    return v14;
  }

  return result;
}

uint64_t FigTextContainerGetLength(uint64_t a1, void *a2)
{
  if (a1)
  {
    result = 0;
    *a2 = *(a1 + 24);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigTextContainerGetLength_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigTextContainerGetCharacterAtIndex(uint64_t a1, CFRange buffer)
{
  if (a1)
  {
    if (buffer.location < 0 || *(a1 + 24) <= buffer.location)
    {
      FigTextContainerGetCharacterAtIndex_cold_1(&v4);
      return v4;
    }

    else
    {
      length = buffer.length;
      buffer.length = 1;
      CFStringGetCharacters(*(a1 + 16), buffer, length);
      return 0;
    }
  }

  else
  {
    FigTextContainerGetCharacterAtIndex_cold_2(&v5);
    return v5;
  }
}

uint64_t FigTextContainerGetCharactersForRange(uint64_t a1, CFRange a2, UniChar *a3)
{
  if (a1)
  {
    if (a2.location < 0 || (v3 = *(a1 + 24), a2.location >= v3))
    {
      FigTextContainerGetCharactersForRange_cold_1(&v5);
      return v5;
    }

    else if (a2.location + a2.length > v3)
    {
      FigTextContainerGetCharactersForRange_cold_2(&v6);
      return v6;
    }

    else
    {
      CFStringGetCharacters(*(a1 + 16), a2, a3);
      return 0;
    }
  }

  else
  {
    FigTextContainerGetCharactersForRange_cold_3(&v7);
    return v7;
  }
}

uint64_t figTextContainer_Init(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figTextContainer_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigContentKeyCompoundBossCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v5 = fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    FigContentKeyBossGetClassID(v5, v6);
    v7 = CMDerivedObjectCreate();
    if (v7)
    {
LABEL_18:
      v19 = v7;
      goto LABEL_24;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v9 = FigSimpleMutexCreate();
    *DerivedStorage = v9;
    if (v9)
    {
      v10 = *MEMORY[0x1E695E480];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      *(DerivedStorage + 24) = Mutable;
      if (Mutable)
      {
        v12 = CFDictionaryCreateMutable(v10, 0, 0, MEMORY[0x1E695E9E8]);
        *(DerivedStorage + 40) = v12;
        if (v12)
        {
          *(DerivedStorage + 48) = FigIsItOKToLogURLs();
          if (a2)
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v13 = ckcb_createLoggingIdentifier_sNextLoggingIdentifier++;
          v14 = CFStringCreateWithFormat(v10, 0, @"%s/%llu", "CKCB", v13);
          if (!v14)
          {
            FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifierOut } : Failed to allocate a logging identifier for a new FigContentCompoundBoss");
          }

          *(DerivedStorage + 56) = v14;
          v7 = FigContentKeyBossCreate(v10, a2, (DerivedStorage + 16));
          if (!v7)
          {
            v21 = 0;
            v15 = *(DerivedStorage + 16);
            v16 = *(*(CMBaseObjectGetVTable() + 16) + 136);
            if (v16)
            {
              v16(v15, &v21);
            }

            if (dword_1EAF16FE0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (dword_1EAF16FE0)
              {
                v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v19 = 0;
            *a3 = cf;
            return v19;
          }

          goto LABEL_18;
        }

        FigContentKeyCompoundBossCreate_cold_1(v23);
      }

      else
      {
        FigContentKeyCompoundBossCreate_cold_2(v23);
      }
    }

    else
    {
      FigContentKeyCompoundBossCreate_cold_3(v23);
    }
  }

  else
  {
    FigContentKeyCompoundBossCreate_cold_4(v23);
  }

  v19 = v23[0];
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t ckcb_processRequest(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, const void *a5, const void *a6, void *a7, uint64_t a8, NSObject *a9, uint64_t *a10)
{
  v74 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v56 = 0;
  v57[0] = 1;
  v57[1] = ckcb_requestDidSucceed;
  v57[2] = ckcb_requestDidFail;
  v57[3] = 0;
  v55 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_processRequest_cold_1(context);
    goto LABEL_65;
  }

  v54 = a2;
  if (dword_1EAF16FE0)
  {
    LODWORD(v62) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_processRequest_cold_4(context);
    goto LABEL_65;
  }

  if (!a10)
  {
    ckcb_processRequest_cold_3(context);
    goto LABEL_65;
  }

  NextRequestID = ckbutil_getNextRequestID();
  v18 = *MEMORY[0x1E695E480];
  *context = xmmword_1E7484000;
  if (ckcbr_getTypeID_once != -1)
  {
    dispatch_once_f(&ckcbr_getTypeID_once, context, ckbutil_registerClass);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    if (ckcb_processRequest_cold_2(context))
    {
      goto LABEL_29;
    }

LABEL_65:
    v48 = context[0];
    FigSimpleMutexUnlock();
    return v48;
  }

  v20 = a2[2];
  if (v20)
  {
    v20 = CFRetain(v20);
  }

  *(Instance + 32) = v20;
  *(Instance + 40) = CFRetain(a2);
  *(Instance + 48) = a3;
  *(Instance + 56) = a4;
  if (a8)
  {
    *(Instance + 96) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  if (a9)
  {
    dispatch_retain(a9);
  }

  *(Instance + 104) = a9;
  __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24((Instance + 64), a7);
  if (a5)
  {
    v21 = CFRetain(a5);
  }

  else
  {
    v21 = 0;
  }

  *(Instance + 16) = v21;
  if (a6)
  {
    v22 = CFRetain(a6);
  }

  else
  {
    v22 = 0;
  }

  *(Instance + 24) = v22;
  *(Instance + 112) = NextRequestID;
  v23 = CFStringCreateWithFormat(v18, 0, @"%s/%llu", "CKCBR", NextRequestID);
  if (!v23)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifierOut } : Failed to allocate a logging identifier for a new FigContentKeyCompoundBossRequest");
  }

  *(Instance + 120) = v23;
  *type = 0;
  v62 = 0;
  cf = 0;
  v24 = ckbutil_keyGroupID_copyLoggingDescription(*(Instance + 48));
  ckbutil_contentKeySpecifier_copyLoggingArguments(*(Instance + 32), &v62, type, &cf);
  if (dword_1EAF16FE0)
  {
    v59 = 0;
    v58 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_29:
  if (FigContentKeySpecifierGetKeySystem(a2[2]) != 1)
  {
    v26 = DerivedStorage[4];
    if (v26)
    {
      v27 = *(*(CMBaseObjectGetVTable() + 16) + 136);
      if (v27)
      {
        v27(v26, &v55);
      }

      if (dword_1EAF16FE0)
      {
        LODWORD(v62) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v29 = v62;
        v30 = type[0];
        if (os_log_type_enabled(v28, type[0]))
        {
          v31 = v29;
        }

        else
        {
          v31 = v29 & 0xFFFFFFFE;
        }

        if (v31)
        {
          v32 = DerivedStorage[7];
          v63 = 136316162;
          v64 = "ckcb_processRequest";
          v65 = 2114;
          v66 = v32;
          v67 = 2048;
          v68 = NextRequestID;
          v69 = 2082;
          v70 = "The client-managed boss";
          v71 = 2114;
          v72 = v55;
          LODWORD(v50) = 52;
          _os_log_send_and_compose_impl(v31, 0, context, 128, &dword_1962D5000, v28, v30, " %s: ▶️ [%{public}@ =[COMPOUND BOSS SENDING REQUEST]=> CKCBR/%llu]: to %{public}s %{public}@", &v63, v50);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        a2 = v54;
      }

      v45 = DerivedStorage[4];
      GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
      v47 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v47)
      {
        v43 = v47(v45, a2, a3, a4, a5, a6, v57, a1, GlobalNetworkBufferingQueue, &v56);
        if (!v43)
        {
          v44 = DerivedStorage[5];
LABEL_55:
          v43 = ckcb_associateChildBossRequestIDWithRequestWithBossMutex(a1, v44, v56, Instance);
          if (!v43)
          {
            v48 = 0;
            *a10 = NextRequestID;
            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_66;
      }

LABEL_57:
      v48 = 4294954514;
      goto LABEL_58;
    }
  }

  v33 = DerivedStorage[2];
  v34 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v34)
  {
    v34(v33, &v55);
  }

  if (dword_1EAF16FE0)
  {
    LODWORD(v62) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v62;
    v37 = type[0];
    if (os_log_type_enabled(v35, type[0]))
    {
      v38 = v36;
    }

    else
    {
      v38 = v36 & 0xFFFFFFFE;
    }

    if (v38)
    {
      v39 = DerivedStorage[7];
      v63 = 136316162;
      v64 = "ckcb_processRequest";
      v65 = 2114;
      v66 = v39;
      v67 = 2048;
      v68 = NextRequestID;
      v69 = 2082;
      v70 = "The default boss";
      v71 = 2114;
      v72 = v55;
      LODWORD(v50) = 52;
      _os_log_send_and_compose_impl(v38, 0, context, 128, &dword_1962D5000, v35, v37, " %s: ▶️ [%{public}@ =[COMPOUND BOSS SENDING REQUEST]=> CKCBR/%llu]: to %{public}s %{public}@", &v63, v50);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = v54;
  }

  v40 = DerivedStorage[2];
  v41 = FigThreadGetGlobalNetworkBufferingQueue();
  v42 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v42)
  {
    goto LABEL_57;
  }

  v43 = v42(v40, a2, a3, a4, a5, a6, v57, a1, v41, &v56);
  if (!v43)
  {
    v44 = DerivedStorage[3];
    goto LABEL_55;
  }

LABEL_66:
  v48 = v43;
LABEL_58:
  FigSimpleMutexUnlock();
  if (Instance)
  {
    CFRelease(Instance);
  }

  return v48;
}

uint64_t ckcb_destroyGroup(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_destroyGroup_cold_1(v11);
    v7 = v11[0];
  }

  else
  {
    if (dword_1EAF16FE0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = *(DerivedStorage + 16);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v6)
    {
      v7 = v6(v5, a2);
    }

    else
    {
      v7 = 4294954514;
    }

    v8 = *(DerivedStorage + 32);
    if (v8)
    {
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (v9)
      {
        v7 = v9(v8, a2);
      }

      else
      {
        v7 = 4294954514;
      }
    }
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t ckcb_setClientManagedBoss(uint64_t a1, const void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_setClientManagedBoss_cold_1(cf);
LABEL_31:
    v16 = LODWORD(cf[0]);
    goto LABEL_28;
  }

  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_setClientManagedBoss_cold_3(cf);
    goto LABEL_31;
  }

  if (qword_1ED4CA8F8 != -1)
  {
    ckcb_setClientManagedBoss_cold_2();
  }

  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = a2;
  CFRetain(a2);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 32);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v7)
  {
    v7(v6, &v20);
  }

  if (dword_1EAF16FE0)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v9 = *(DerivedStorage + 16);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (v10)
  {
    v10(v9, 4);
  }

  if (_MergedGlobals_47)
  {
    v11 = *(DerivedStorage + 32);
    if (v11)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v12)
      {
        v12(v11, 10);
      }
    }
  }

  cf[0] = 0;
  v13 = *(DerivedStorage + 16);
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v15 = v14(v13, @"kCKBP_CMCDHeaderVendor", *MEMORY[0x1E695E480], cf);
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = cf[0];
      if (cf[0])
      {
        v17 = *(DerivedStorage + 32);
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v18)
        {
          v18(v17, @"kCKBP_CMCDHeaderVendor", v16);
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 4294954514;
  }

LABEL_28:
  FigSimpleMutexUnlock();
  return v16;
}

uint64_t ckcb_copyAuthorizationToken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    ckcb_copyAuthorizationToken_cold_1(v13);
LABEL_19:
    v10 = v13[0];
    goto LABEL_15;
  }

  if (dword_1EAF16FE0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!a2)
  {
    ckcb_copyAuthorizationToken_cold_3(v13);
    goto LABEL_19;
  }

  if (!a3)
  {
    ckcb_copyAuthorizationToken_cold_2(v13);
    goto LABEL_19;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    v8 = *(CMBaseObjectGetVTable() + 16);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = v9[13];
    if (v11 && *v9 >= 2uLL)
    {
      v10 = v11(v7, a2, a3);
    }

    else
    {
      v10 = 4294954514;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t ckcb_requestDidSucceed(const void *a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, const void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v12 = CMBaseObjectGetDerivedStorage();
  if (*(v12 + 8))
  {
    ckcb_requestDidSucceed_cold_1(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, SHIDWORD(v25), v26);
  }

  else
  {
    if (*(DerivedStorage + 16) == a2)
    {
      Value = CFDictionaryGetValue(*(DerivedStorage + 24), a4);
      if (!Value)
      {
        goto LABEL_8;
      }

      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, Value, a5, a6, 0);
      v21 = *(DerivedStorage + 24);
    }

    else
    {
      v20 = CFDictionaryGetValue(*(DerivedStorage + 40), a4);
      if (!v20)
      {
        goto LABEL_8;
      }

      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, v20, a5, a6, 0);
      v21 = *(DerivedStorage + 40);
    }

    CFDictionaryRemoveValue(v21, a4);
  }

LABEL_8:

  return FigSimpleMutexUnlock();
}

uint64_t ckcb_requestDidFail(const void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, const void *a6)
{
  v46[28] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v12 = CMBaseObjectGetDerivedStorage();
  if (*(v12 + 8))
  {
    ckcb_requestDidFail_cold_1(v12, v13, v14, v15, v16, v17, v18, v19, v37, v38, SHIDWORD(v38), v39);
    return FigSimpleMutexUnlock();
  }

  if (*(DerivedStorage + 16) == a2)
  {
    theArray = CFDictionaryGetValue(*(DerivedStorage + 24), a4);
    if (theArray)
    {
      if (*(CMBaseObjectGetDerivedStorage() + 32) && (FigCFErrorIsEqualToOSStatus(a5, @"CoreMediaErrorDomain", -17297) || FigCFErrorIsEqualToOSStatus(a5, @"CoreMediaErrorDomain", -17383)))
      {
        v40 = a4;
        v41 = DerivedStorage;
        v43 = CMBaseObjectGetDerivedStorage();
        v45 = 0;
        v46[0] = 1;
        v46[1] = ckcb_requestDidSucceed;
        v46[2] = ckcb_requestDidFail;
        v46[3] = 0;
        v44 = 0;
        if (CFArrayGetCount(theArray) >= 1)
        {
          v22 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v22);
            if (!ValueAtIndex)
            {
              break;
            }

            v24 = ValueAtIndex;
            v25 = *(v43 + 32);
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 136);
            if (v26)
            {
              v26(v25, &v44);
            }

            if (dword_1EAF16FE0)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v28 = *(v43 + 32);
            v29 = v24[5];
            v30 = v24[6];
            v31 = *(v24 + 56);
            v33 = v24[2];
            v32 = v24[3];
            GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
            v35 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v35)
            {
              if (!v35(v28, v29, v30, v31, v33, v32, v46, a1, GlobalNetworkBufferingQueue, &v45) && !ckcb_associateChildBossRequestIDWithRequestWithBossMutex(a1, *(v43 + 40), v45, v24) && ++v22 < CFArrayGetCount(theArray))
              {
                continue;
              }
            }

            goto LABEL_20;
          }

          ckcb_requestDidFail_cold_2();
        }

LABEL_20:
        a4 = v40;
        DerivedStorage = v41;
      }

      else
      {
        ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, theArray, 0, a6, a5);
      }

      v21 = *(DerivedStorage + 24);
      goto LABEL_22;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 40), a4);
    if (Value)
    {
      ckcb_sendStatusCallbackForRequestsWithBossMutex(a1, Value, 0, a6, a5);
      v21 = *(DerivedStorage + 40);
LABEL_22:
      CFDictionaryRemoveValue(v21, a4);
    }
  }

  return FigSimpleMutexUnlock();
}

uint64_t ckcb_associateChildBossRequestIDWithRequestWithBossMutex(uint64_t a1, const __CFDictionary *a2, const void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
LABEL_8:
    CFArrayAppendValue(Value, a4);
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Value = Mutable;
    CFDictionarySetValue(a2, a3, Mutable);
    v12 = 0;
    v13 = 0;
    cf = 0;
    ckbutil_contentKeySpecifier_copyLoggingArguments(*(a4[5] + 16), &v13, &v12, &cf);
    if (dword_1EAF16FE0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(Value);
    goto LABEL_8;
  }

  ckcb_associateChildBossRequestIDWithRequestWithBossMutex_cold_1(v14);
  return v14[0];
}

double ckcb_sendStatusCallbackForRequestsWithBossMutex(const void *a1, CFArrayRef theArray, const void *a3, const void *a4, const void *a5)
{
  if (CFArrayGetCount(theArray) >= 1)
  {
    v11 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      if (!ValueAtIndex)
      {
        break;
      }

      v20 = ValueAtIndex;
      v21 = malloc_type_calloc(1uLL, 0x28uLL, 0x6004075FDF98BuLL);
      if (v21)
      {
        v29 = v21;
        if (a1)
        {
          v30 = CFRetain(a1);
        }

        else
        {
          v30 = 0;
        }

        *v29 = v30;
        v29[1] = CFRetain(v20);
        if (a5)
        {
          v31 = CFRetain(a5);
        }

        else
        {
          v31 = 0;
        }

        v29[2] = v31;
        if (a3)
        {
          v32 = CFRetain(a3);
        }

        else
        {
          v32 = 0;
        }

        v29[3] = v32;
        if (a4)
        {
          v33 = CFRetain(a4);
        }

        else
        {
          v33 = 0;
        }

        v29[4] = v33;
        dispatch_async_f(v20[13], v29, ckcb_sendStatusCallbackOnQueueWithBossMutex);
      }

      else
      {
        ckcb_sendStatusCallbackForRequestsWithBossMutex_cold_1(0, v22, v23, v24, v25, v26, v27, v28, v34, v35, SHIDWORD(v35), v36);
      }

      if (++v11 >= CFArrayGetCount(theArray))
      {
        return result;
      }
    }

    return ckcb_sendStatusCallbackForRequestsWithBossMutex_cold_2(0, v13, v14, v15, v16, v17, v18, v19, v34, v35, SHIDWORD(v35), v36);
  }

  return result;
}

void ckcb_sendStatusCallbackOnQueueWithBossMutex(CFTypeRef *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    ckcb_sendStatusCallbackOnQueueWithBossMutex_cold_1(DerivedStorage, v3, v4, v5, v6, v7, v8, v9, v23, v24, SHIDWORD(v24), v25);
    v10 = 0;
  }

  else
  {
    v10 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v10)
    {
      goto LABEL_13;
    }

    v12 = a1[1];
    v11 = a1[2];
    if (v11 && (v13 = v12[10]) != 0)
    {
      if (dword_1EAF16FE0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = a1[1];
        v11 = a1[2];
        v13 = v12[10];
      }

      v16 = *a1;
      v17 = v12[4];
      v18 = v12[14];
    }

    else
    {
      v13 = v12[9];
      if (!v13)
      {
        goto LABEL_13;
      }

      if (dword_1EAF16FE0)
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v12 = a1[1];
        v13 = v12[9];
      }

      v16 = *a1;
      v17 = v12[4];
      v18 = v12[14];
      v11 = a1[3];
    }

    v13(v10, v16, v17, v18, v11, a1[4]);
  }

LABEL_13:
  if (*a1)
  {
    CFRelease(*a1);
  }

  v19 = a1[1];
  if (v19)
  {
    CFRelease(v19);
  }

  v20 = a1[3];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = a1[2];
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = a1[4];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  free(a1);
}

void ckcbr_finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[13];
  if (v8)
  {

    dispatch_release(v8);
  }
}

double OUTLINED_FUNCTION_0_68()
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

uint64_t OUTLINED_FUNCTION_1_70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_4_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, 0, a3, 128, a5, v8, v9, a8);
}

void TextParserBase::TextParserBase(TextParserBase *this, int a2, int (*a3)(uint64_t, uint64_t *, uint64_t *, __CFData *, __CFData *, void *), void *a4)
{
  *this = &unk_1F0AE32E0;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = a2;
  *(this + 3) = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
}

void TextParserBase::~TextParserBase(TextParserBase *this)
{
  *this = &unk_1F0AE32E0;
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void TextRendererBase::TextRendererBase(TextRendererBase *this)
{
  *this = &unk_1F0AE3320;
  *(this + 8) = 1;
  *(this + 2) = 0;
}

void TextRendererBase::SetProperties(TextRendererBase *this, CFDictionaryRef theDict)
{
  Count = CFDictionaryGetCount(theDict);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
    v7 = malloc_type_calloc(v5, 8uLL, 0xC0040B8AA526DuLL);
    v8 = v7;
    if (v6 && v7)
    {
      CFDictionaryGetKeysAndValues(theDict, v6, v7);
      v9 = v6;
      v10 = v8;
      do
      {
        v12 = *v9++;
        v11 = v12;
        v13 = *v10++;
        (*(*this + 48))(this, v11, v13);
        --v5;
      }

      while (v5);
    }

    free(v6);

    free(v8);
  }
}

uint64_t TextRendererBase::SetProperty(TextRendererBase *this, CFTypeRef cf1, const __CFBoolean *a3)
{
  if (!CFEqual(cf1, @"DoDisplay"))
  {
    return 4294965101;
  }

  Value = CFBooleanGetValue(a3);
  result = 0;
  *(this + 8) = Value != 0;
  return result;
}

uint64_t FigCSSSimpleTokenCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  v4 = FigCSSBaseTokenCreate(a1, a2, 0, &cf);
  if (v4)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v4;
}

uint64_t FigCSSCodePointTokenCreate(const __CFAllocator *a1, uint64_t a2, int a3, CFTypeRef *a4)
{
  cf = 0;
  valuePtr = a3;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v8 = Mutable;
    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(v8, @"code_point", v9);
      v11 = FigCSSBaseTokenCreate(a1, a2, v8, &cf);
      if (!v11)
      {
        *a4 = cf;
        cf = 0;
      }

      CFRelease(v10);
    }

    else
    {
      FigCSSCodePointTokenCreate_cold_1(&v15);
      v11 = v15;
    }

    CFRelease(v8);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    FigCSSCodePointTokenCreate_cold_2(&v15);
    return v15;
  }

  return v11;
}

uint64_t FigCSSNumberTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, CFTypeRef *a4, double a5)
{
  cf = 0;
  if (!a2)
  {
    FigCSSNumberTokenCreate_cold_3(&v9);
    return v9;
  }

  if (a3 >= 2)
  {
    FigCSSNumberTokenCreate_cold_2(&v9);
    return v9;
  }

  if (!a4)
  {
    FigCSSNumberTokenCreate_cold_1(&v9);
    return v9;
  }

  v6 = figCSSNumericTokenCreate_internal(a1, 22, a2, a3, 0, &cf, a5);
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v6;
}

uint64_t figCSSNumericTokenCreate_internal(CFAllocatorRef allocator, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, CFTypeRef *a6, double a7)
{
  valuePtr = a7;
  cf = 0;
  if (!a3)
  {
    figCSSNumericTokenCreate_internal_cold_7(&v22);
    return v22;
  }

  if (a4 >= 2)
  {
    figCSSNumericTokenCreate_internal_cold_6(&v22);
    return v22;
  }

  if (!a6)
  {
    figCSSNumericTokenCreate_internal_cold_5(&v22);
    return v22;
  }

  if (a2 == 23 && !a5)
  {
    figCSSNumericTokenCreate_internal_cold_4(&v22);
    return v22;
  }

  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    figCSSNumericTokenCreate_internal_cold_3(&v22);
    return v22;
  }

  v13 = Mutable;
  v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (v14)
  {
    v15 = v14;
    v16 = @"integer";
    if (a4)
    {
      v16 = 0;
    }

    if (a4 == 1)
    {
      v17 = @"number";
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      CFDictionarySetValue(v13, @"number_value", v14);
      CFDictionarySetValue(v13, @"number_type", v17);
      if (a2 == 23)
      {
        CFDictionarySetValue(v13, @"dimension_units", a5);
      }

      v18 = FigCSSBaseTokenCreate(allocator, a2, v13, &cf);
      if (!v18)
      {
        *a6 = cf;
        cf = 0;
      }

      CFRelease(v15);
      CFRelease(v17);
      goto LABEL_19;
    }

    figCSSNumericTokenCreate_internal_cold_1(v14, &v22);
  }

  else
  {
    figCSSNumericTokenCreate_internal_cold_2(&v22);
  }

  v18 = v22;
LABEL_19:
  CFRelease(v13);
  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigCSSDimensionTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, const void *a4, CFTypeRef *a5, double a6)
{
  cf = 0;
  v7 = figCSSNumericTokenCreate_internal(a1, 23, a2, a3, a4, &cf, a6);
  if (v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a5 = cf;
  }

  return v7;
}

uint64_t FigCSSPercentageTokenCreate(const __CFAllocator *a1, uint64_t a2, unsigned int a3, CFTypeRef *a4, double a5)
{
  cf = 0;
  v6 = figCSSNumericTokenCreate_internal(a1, 24, a2, a3, 0, &cf, a5);
  if (v6)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a4 = cf;
  }

  return v6;
}

uint64_t FigCSSStringValueTokenCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (!a3)
  {
    FigCSSStringValueTokenCreate_cold_3(&v13);
    return v13;
  }

  if (!a4)
  {
    FigCSSStringValueTokenCreate_cold_2(&v13);
    return v13;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCSSStringValueTokenCreate_cold_1(&v13);
    return v13;
  }

  v9 = Mutable;
  CFDictionarySetValue(Mutable, @"value", a3);
  v10 = FigCSSBaseTokenCreate(a1, a2, v9, &cf);
  if (!v10)
  {
    *a4 = cf;
    cf = 0;
  }

  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t FigCSSHashTokenCreate(const __CFAllocator *a1, unsigned int a2, const void *a3, CFTypeRef *a4)
{
  cf = 0;
  if (a2 >= 2)
  {
    FigCSSHashTokenCreate_cold_5(&v15);
    return v15;
  }

  if (!a3)
  {
    FigCSSHashTokenCreate_cold_4(&v15);
    return v15;
  }

  if (!a4)
  {
    FigCSSHashTokenCreate_cold_3(&v15);
    return v15;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FigCSSHashTokenCreate_cold_2(&v15);
    return v15;
  }

  v9 = Mutable;
  v10 = @"unrestricted";
  if (a2)
  {
    v10 = 0;
  }

  if (a2 == 1)
  {
    v11 = @"id";
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    CFDictionarySetValue(Mutable, @"hash_type", v11);
    CFDictionarySetValue(v9, @"value", a3);
    v12 = FigCSSBaseTokenCreate(a1, 11, v9, &cf);
    if (!v12)
    {
      *a4 = cf;
      cf = 0;
    }

    CFRelease(v11);
  }

  else
  {
    FigCSSHashTokenCreate_cold_1(&v15);
    v12 = v15;
  }

  CFRelease(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t FigCSSTokenCreateSerializationString(const __CFAllocator *a1, CFTypeRef cf, CFStringRef *a3)
{
  v24 = 0;
  theDict = 0;
  if (!cf)
  {
    FigCSSTokenCreateSerializationString_cold_3(&valuePtr);
    return LODWORD(valuePtr);
  }

  v6 = CFGetTypeID(cf);
  if (v6 == FigCSSTokenGetTypeID())
  {
    if (a3)
    {
      TokenType = FigCSSTokenGetTokenType(cf, &v24);
      if (TokenType || (TokenType = FigCSSTokenCopyAttributes(cf, &theDict), TokenType))
      {
        v17 = TokenType;
      }

      else
      {
        switch(v24)
        {
          case 0:
            v14 = "INVALID";
            goto LABEL_54;
          case 1:
            v14 = "EOF";
            goto LABEL_54;
          case 2:
            v14 = " ";
            goto LABEL_54;
          case 3:
            Value = CFDictionaryGetValue(theDict, @"value");
            v9 = CFStringCreateWithFormat(a1, 0, @"%@", Value);
            goto LABEL_58;
          case 4:
            v14 = "TODO{<bad-string-token>}";
            goto LABEL_54;
          case 5:
            LODWORD(valuePtr) = 0;
            v16 = CFDictionaryGetValue(theDict, @"code_point");
            CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr);
            chars = LOWORD(valuePtr);
            v9 = CFStringCreateWithCharacters(a1, &chars, 1);
            goto LABEL_58;
          case 6:
            v14 = "TODO{<unicode-range-token>}";
            goto LABEL_54;
          case 7:
          case 8:
          case 11:
          case 32:
            v8 = CFDictionaryGetValue(theDict, @"value");
            switch(v24)
            {
              case 8:
                v9 = CFStringCreateWithFormat(a1, 0, @"@%@", v8);
                goto LABEL_58;
              case 32:
                v9 = CFStringCreateWithFormat(a1, 0, @"%@("), v8;
                goto LABEL_58;
              case 11:
                v9 = CFStringCreateWithFormat(a1, 0, @"#%@", v8);
                goto LABEL_58;
            }

            v19 = v8;
            goto LABEL_34;
          case 9:
            v14 = "TODO{<url-token>}";
            goto LABEL_54;
          case 10:
            v14 = "TODO{<bad-url-token>}";
            goto LABEL_54;
          case 12:
            v14 = ",";
            goto LABEL_54;
          case 13:
            v14 = ":";
            goto LABEL_54;
          case 14:
            v14 = ";";
            goto LABEL_54;
          case 15:
            v14 = "||";
            goto LABEL_54;
          case 16:
            v14 = "(";
            goto LABEL_54;
          case 17:
            v14 = ")";
            goto LABEL_54;
          case 18:
            v14 = "{";
            goto LABEL_54;
          case 19:
            v14 = "}";
            goto LABEL_54;
          case 20:
            v14 = "[";
            goto LABEL_54;
          case 21:
            v14 = "]";
            goto LABEL_54;
          case 22:
          case 23:
          case 24:
            v10 = CFDictionaryGetValue(theDict, @"number_value");
            v11 = CFDictionaryGetValue(theDict, @"number_type");
            if (v11 && CFEqual(v11, @"integer"))
            {
              valuePtr = -1.0;
              CFNumberGetValue(v10, kCFNumberDoubleType, &valuePtr);
              v12 = 0;
              v13 = valuePtr;
            }

            else
            {
              v13 = 0;
              v12 = 1;
            }

            if (v24 == 23)
            {
              v15 = CFDictionaryGetValue(theDict, @"dimension_units");
              if (v12)
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%@%@", v10, v15);
              }

              else
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%lld%@", v13, v15);
              }
            }

            else if (v24 == 24)
            {
              if (v12)
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%@%%", v10);
              }

              else
              {
                v9 = CFStringCreateWithFormat(a1, 0, @"%lld%%", v13);
              }
            }

            else if (v12)
            {
              v19 = v10;
LABEL_34:
              v9 = CFStringCreateWithFormat(a1, 0, @"%@", v19);
            }

            else
            {
              v9 = CFStringCreateWithFormat(a1, 0, @"%lld", v13);
            }

LABEL_58:
            v17 = 0;
            *a3 = v9;
            break;
          case 25:
            v14 = "-->";
            goto LABEL_54;
          case 26:
            v14 = "<!--";
            goto LABEL_54;
          case 27:
            v14 = "^=";
            goto LABEL_54;
          case 28:
            v14 = "$=";
            goto LABEL_54;
          case 29:
            v14 = "*=";
            goto LABEL_54;
          case 30:
            v14 = "~=";
            goto LABEL_54;
          case 31:
            v14 = "|=";
            goto LABEL_54;
          default:
            v14 = "{UNKNOWN}";
LABEL_54:
            v9 = CFStringCreateWithCString(a1, v14, 0x8000100u);
            goto LABEL_58;
        }
      }

      goto LABEL_59;
    }

    FigCSSTokenCreateSerializationString_cold_2(&valuePtr);
  }

  else
  {
    FigCSSTokenCreateSerializationString_cold_1(&valuePtr);
  }

  v17 = LODWORD(valuePtr);
LABEL_59:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v17;
}

uint64_t FigRecalcSumIndex(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      off_1EE59EBD8 = *(result + 8);
    }
  }

  return result;
}

uint64_t FigCaptionRendererPaintOnCaptionSetCurrentTime(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v7 = *(a2 + 16);
    *(DerivedStorage + 8) = *a2;
    *(DerivedStorage + 24) = v7;
    if (!*(DerivedStorage + 64))
    {
      cf.value = 0;
      FigCaptionRendererCaptionProtocolGetProtocolID();
      ProtocolVTable = CMBaseObjectGetProtocolVTable();
      if (ProtocolVTable && (v9 = *(ProtocolVTable + 16)) != 0 && (v10 = *(v9 + 32)) != 0)
      {
        v10(a1, &cf);
        value = cf.value;
        v12 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = cf.value;
        if (value)
        {
          CFRetain(value);
        }
      }

      else
      {
        v12 = *(DerivedStorage + 64);
        *(DerivedStorage + 64) = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    cf = *(DerivedStorage + 32);
    Seconds = CMTimeGetSeconds(&cf);
    FigBytePumpGetFigBaseObject();
    *&v79 = v14;
    *(&v79 + 1) = v15;
    FigCaptionRendererIntervalProtocolGetProtocolID();
    v16 = CMBaseObjectGetProtocolVTable();
    if (v16)
    {
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = *(v17 + 8);
        if (v18)
        {
          v18(a1, &v79);
        }
      }
    }

    v19 = *(DerivedStorage + 8);
    cf.epoch = *(DerivedStorage + 24);
    *&cf.value = v19;
    v20 = CMTimeGetSeconds(&cf);
    if (v20 == *&v79)
    {
      *(DerivedStorage + 56) = 1;
      if (a3)
      {
        v81 = 0;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v21 = CMBaseObjectGetProtocolVTable();
        if (v21 && (v22 = *(v21 + 16)) != 0 && (v23 = *(v22 + 16)) != 0)
        {
          v23(a1, &v81);
          v24 = v81;
        }

        else
        {
          v24 = 0;
        }

        v59 = *(MEMORY[0x1E695F050] + 16);
        v79 = *MEMORY[0x1E695F050];
        v80 = v59;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v60 = CMBaseObjectGetProtocolVTable();
        if (v60)
        {
          v61 = *(v60 + 16);
          if (v61)
          {
            v62 = *(v61 + 104);
            if (v62)
            {
              v62(v24, &v79);
            }
          }
        }

        FigBytePumpGetFigBaseObject();
        v78[0] = v63;
        v78[1] = v64;
        FigCaptionRendererIntervalProtocolGetProtocolID();
        v65 = CMBaseObjectGetProtocolVTable();
        if (v65)
        {
          v66 = *(v65 + 16);
          if (v66)
          {
            v67 = *(v66 + 8);
            if (v67)
            {
              v67(a1, v78);
            }
          }
        }

        v68 = *(DerivedStorage + 8);
        cf.epoch = *(DerivedStorage + 24);
        *&cf.value = v68;
        v69 = CMTimeGetSeconds(&cf);
        v70 = *v78;
        v76 = v79;
        v77 = v80;
        *(DerivedStorage + 72) = 0x2100000021;
        v71 = v81;
        FigCaptionRendererNodeProtocolGetProtocolID();
        v72 = CMBaseObjectGetProtocolVTable();
        if (v72)
        {
          v73 = *(v72 + 16);
          if (v73)
          {
            v74 = *(v73 + 312);
            if (v74)
            {
              LODWORD(cf.value) = 0;
              HIDWORD(cf.value) = ((Seconds - (v69 - v70)) * 1000.0);
              *&cf.timescale = v76;
              v83 = v77;
              v74(v71, &cf);
            }
          }
        }

        return 0;
      }
    }

    else
    {
      *(DerivedStorage + 56) = 0;
    }

    v25 = *(DerivedStorage + 72);
    v26 = __OFSUB__(v25, 33);
    v25 -= 33;
    *(DerivedStorage + 72) = v25;
    if ((v25 < 0) ^ v26 | (v25 == 0))
    {
      *(DerivedStorage + 72) = *(DerivedStorage + 76);
      v27 = CMBaseObjectGetDerivedStorage();
      FigBytePumpGetFigBaseObject();
      v29 = v28;
      *&v79 = v30;
      *(&v79 + 1) = v28;
      FigCaptionRendererIntervalProtocolGetProtocolID();
      v31 = CMBaseObjectGetProtocolVTable();
      if (v31)
      {
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = *(v32 + 8);
          if (v33)
          {
            v33(a1, &v79);
            v29 = *(&v79 + 1);
          }
        }
      }

      if (v29 <= 0.0)
      {
        FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_1();
      }

      else
      {
        v34 = *(v27 + 64);
        Length = CFAttributedStringGetLength(v34);
        v36 = *(v27 + 8);
        cf.epoch = *(v27 + 24);
        *&cf.value = v36;
        v37 = CMTimeGetSeconds(&cf);
        cf = *(v27 + 32);
        v38 = CMTimeGetSeconds(&cf);
        v39 = v37 - *&v79;
        v40 = 1.0;
        if (v38 > 0.0 && Length >= 1)
        {
          v41 = v39 * 1000.0 / 33.0;
          v42 = v41 + v41;
          v43 = v41 < 0.0;
          v44 = 0.0;
          if (!v43)
          {
            v44 = v42;
          }

          v45 = v44 / Length;
          v40 = 1.0;
          if (v45 <= 1.0)
          {
            v40 = v45;
          }
        }

        if ((v38 - v39) * 1000.0 >= 66.0)
        {
          v46 = v40;
        }

        else
        {
          v46 = 1.0;
        }

        LODWORD(v47) = llround(v46 * Length);
        if (v47 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v47;
        }

        if (Length >= v47)
        {
          v48.length = v47;
        }

        else
        {
          v48.length = Length;
        }

        v48.location = 0;
        v49 = CFAttributedStringCreateWithSubstring(*MEMORY[0x1E695E480], v34, v48);
        FigCaptionRendererCaptionProtocolGetProtocolID();
        v50 = CMBaseObjectGetProtocolVTable();
        if (v50)
        {
          v51 = *(v50 + 16);
          if (v51)
          {
            v52 = *(v51 + 24);
            if (v52)
            {
              v52(a1, v49);
            }
          }
        }

        if (v49)
        {
          CFRelease(v49);
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v53 = CMBaseObjectGetProtocolVTable();
        if (v53)
        {
          v54 = *(v53 + 16);
          if (v54)
          {
            v55 = *(v54 + 232);
            if (v55)
            {
              v55(a1, 1);
            }
          }
        }

        FigCaptionRendererNodeProtocolGetProtocolID();
        v56 = CMBaseObjectGetProtocolVTable();
        if (v56)
        {
          v57 = *(v56 + 16);
          if (v57)
          {
            v58 = *(v57 + 216);
            if (v58)
            {
              v58(a1, 1);
            }
          }
        }
      }
    }

    return 0;
  }

  FigCaptionRendererPaintOnCaptionSetCurrentTime_cold_2(&cf);
  return LODWORD(cf.value);
}

uint64_t FigCaptionRendererPaintOnCaptionSetAnimationDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 16);
  *(DerivedStorage + 32) = *a2;
  *(DerivedStorage + 48) = v4;
  return 0;
}

void FigCaptionRendererPaintOnCaptionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 64) = 0;
  }
}

__CFString *FigCaptionRendererPaintOnCaptionCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption: <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererBaseProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererBaseProtocol> on <%p>", a1);
  return Mutable;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererIntervalProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_GetRange(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererIntervalProtocol_SetRange(uint64_t a1, double a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMTimeMake(&v11, a3, 1);
  *(DerivedStorage + 32) = v11;
  v6 = *DerivedStorage;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v8 = *(ProtocolVTable + 16);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v9(v6, a2, a3);
      }
    }
  }

  return 0;
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererNodeProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetParentNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetChildren(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_HasChildNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v7 = *(ProtocolVTable + 16);
  if (!v7)
  {
    return 4294954508;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v5, a2, a3);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AddChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemoveChildNode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemovelAllChildrenNodes(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetViewport(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 64);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetViewport(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetFCRBounds(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v12[3] = v11;
  return v6(v3, v12);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetFCRBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGBounds(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 96);
  if (!v16)
  {
    return 4294954514;
  }

  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(v9, v11, v12, v13, v14);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGSize(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 112);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGSize(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 120);
  if (!v6)
  {
    return 4294954508;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetCGOrigin(uint64_t a1, double a2, double a3)
{
  v5 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 128);
  if (!v10)
  {
    return 4294954514;
  }

  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return v10(v5, v7, v8);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetCGOrigin(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 136);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetPaddings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v15 = *(ProtocolVTable + 16);
  if (!v15)
  {
    return 4294954508;
  }

  v16 = *(v15 + 144);
  if (!v16)
  {
    return 4294954514;
  }

  return v16(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetInsetCGBounds(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 152);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_PurgeImageCache(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 160);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 168);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCache(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 176);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCacheWidth(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 184);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageCacheHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 192);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AllocateImageBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v9 = *(ProtocolVTable + 16);
  if (!v9)
  {
    return 4294954508;
  }

  v10 = *(v9 + 200);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v7, a2, a3, a4);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetImageBuffer(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 208);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 216);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetNeedRedraw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 224);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 232);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetNeedLayout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 240);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_HasActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 248);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetZOrder(uint64_t a1, double a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v6 = *(ProtocolVTable + 16);
  if (!v6)
  {
    return 4294954508;
  }

  v7 = *(v6 + 256);
  if (!v7)
  {
    return 4294954514;
  }

  v5.n128_f64[0] = a2;

  return v7(v3, v5);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetZOrder(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 264);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_ResetNodeTree(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 272);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Draw(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 280);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Layout(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 288);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_ExecActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 296);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_Compose(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 304);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_OnChildUpdateDisplayRequest(uint64_t a1, __int128 *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 4);
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 312);
  if (!v6)
  {
    return 4294954514;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  return v6(v3, v11);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_AddAction(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 320);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_RemoveAllActions(uint64_t a1)
{
  v1 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v3 = *(ProtocolVTable + 16);
  if (!v3)
  {
    return 4294954508;
  }

  v4 = *(v3 + 328);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v1);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 336);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_GetActions(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 344);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_SelectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 352);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_UnselectAt(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v11 = *(ProtocolVTable + 16);
  if (!v11)
  {
    return 4294954508;
  }

  v12 = *(v11 + 360);
  if (!v12)
  {
    return 4294954514;
  }

  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return v12(v7, a2, v9, v10);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_IsSelected(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 368);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_BeginScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 376);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererNodeProtocol_EndScene(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererNodeProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 384);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

__CFString *FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigCaptionRendererPaintOnCaption <FigCaptionRendererCaptionProtocol> on <%p>", a1);
  return Mutable;
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetContent(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 32);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetFormat(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetFormat(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 48);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetExtendedLanguageTagString(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetExtendedLanguageTagString(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 64);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetTextHighlightArray(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetTextHighlightArray(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 80);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_SetInvisible(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererCaption_FigCaptionRendererCaptionProtocol_GetInvisible(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_GetSuggestLineHeight(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 104);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetWritingMode(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 112);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t FigCaptionRendererPaintOnCaption_FigCaptionRendererCaptionProtocol_SetLayoutSampleWithCTAttributes(uint64_t a1, uint64_t a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  FigCaptionRendererCaptionProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (!ProtocolVTable)
  {
    return 4294954508;
  }

  v5 = *(ProtocolVTable + 16);
  if (!v5)
  {
    return 4294954508;
  }

  v6 = *(v5 + 88);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v3, a2);
}

uint64_t RegisterFigCaptionRendererPaintOnCaptionBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

size_t PostProcessPurchasedItem(const __CFDictionary *a1, const __CFString *a2, void *a3, void (*a4)(uint64_t, float), uint64_t a5)
{
  v10 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], a2, kCFURLPOSIXPathStyle, 0);
  if (v10)
  {
    v11 = v10;
    v12 = CMByteStreamCreateForFileURL();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = PostProcessPurchasedItemInternal(a1, a2, a3, 0, a4, a5);
    }

    CFRelease(v11);
  }

  else
  {
    PostProcessPurchasedItem_cold_1(&v15);
    return v15;
  }

  return v13;
}

uint64_t ObtainSinfInfoFromMedia(CFStringRef filePath, __CFArray **a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!filePath)
  {
    ObtainSinfInfoFromMedia_cold_9(&v7);
    return v7;
  }

  if (!a2)
  {
    ObtainSinfInfoFromMedia_cold_8(&v7);
    return v7;
  }

  v2 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v2)
  {
    ObtainSinfInfoFromMedia_cold_7(&v7);
    return v7;
  }

  v3 = v2;
  v4 = CMByteStreamCreateForFileURL();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v19 = -1;
    v18 = 0;
    v17 = -1;
    v16 = 0;
    v15 = -1;
    v14 = 0;
    v13 = -1;
    v12 = 0;
    v11 = -1;
    v10 = 0;
    v9 = -1;
    size[4] = 0;
    *&size[1] = -1;
    size[0] = 0;
    v5 = 4294967246;
  }

  CFRelease(v3);
  return v5;
}

uint64_t PPGetRentalInfoFromSinfInfo(const __CFArray *a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    value = 0;
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, @"sinf", &value))
    {
      Length = CFDataGetLength(value);
      BytePtr = CFDataGetBytePtr(value);
      v18 = 0;
      v19 = 0;
      DefaultFairPlayContextID = GetDefaultFairPlayContextID(0);
      RbFpir(DefaultFairPlayContextID, BytePtr, Length, &v18);
      v6 = FAIRPLAY_CALL_LOG(v12);
      if (v6 == -42032)
      {
        v13 = GetDefaultFairPlayContextID(1);
        RbFpir(v13, BytePtr, Length, &v18);
        v6 = FAIRPLAY_CALL_LOG(v14);
      }

      if (!v6)
      {
        v15 = v19;
        if (*(a2 + 8) - 1 >= v19)
        {
          *a2 = v18;
          v16 = HIDWORD(v19);
          *(a2 + 8) = v15;
          *(a2 + 12) = v16;
        }

        v6 = 0;
      }
    }
  }

  return v6;
}

uint64_t GetDefaultFairPlayContextID(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x19A8D3660](&sInitFPCtxtLockOnce, createInitFPCtxtLock);
  FigSimpleMutexLock();
  if (a1 || !sFairPlayContext)
  {
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      memset(v11, 0, sizeof(v11));
      Length = CFStringGetLength(v2);
      CFStringGetSystemEncoding();
      CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
      zxcm2Qme0x(CStringPtrAndBufferToFree, Length, v11);
      LODWORD(Length) = FAIRPLAY_CALL_LOG(v6);
      free(0);
      if (!Length)
      {
        strcpy(v13, "/Media/iTunes_Control/iTunes/");
        v7 = getuid();
        v8 = getpwuid(v7);
        if (v8)
        {
          snprintf(__str, 0x400uLL, "%s%s", v8->pw_dir, v13);
          v9 = XtCqEf5X(0, v11, __str, &sFairPlayContext);
          FAIRPLAY_CALL_LOG(v9);
        }
      }

      CFRelease(v3);
    }
  }

  FigSimpleMutexUnlock();
  return sFairPlayContext;
}

uint64_t GetByteStreamSize(uint64_t a1, void *a2)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  result = v4(CMBaseObject, *MEMORY[0x1E695FF78], 0, &number);
  if (!result)
  {
    CFNumberGetValue(number, kCFNumberSInt64Type, a2);
    CFRelease(number);
    return 0;
  }

  return result;
}

void CompareMD5(const __CFData *a1, void *a2)
{
  if (CFDataGetLength(a1) != 16)
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954516;
    v10 = 4072;
    goto LABEL_8;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (*a2 != *BytePtr || a2[1] != *(BytePtr + 1))
  {
    emitter = fig_log_get_emitter();
    v8 = v2;
    v9 = 4294954766;
    v10 = 4076;
LABEL_8:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "<<<< POSTPURCHASE >>>>", v10, v8);
  }
}

uint64_t FindAtomOffsetOfType(uint64_t a1, int a2, uint64_t a3, unsigned int a4, void *a5, _DWORD *a6)
{
  if (!a4)
  {
    return 0;
  }

  v8 = a4;
  while (1)
  {
    v15 = 0;
    ReadMovieBytes(a1, a3, 4u, &v15);
    v12 = bswap32(v15);
    v16 = 0;
    ReadMovieBytes(a1, a3 + 4, 4u, &v16);
    if (v12 < 8 || v8 < v12)
    {
      return 0;
    }

    if (bswap32(v16) == a2)
    {
      break;
    }

    a3 += v12;
    v8 -= v12;
    if (!v8)
    {
      return 0;
    }
  }

  if (a5)
  {
    *a5 = a3 + 8;
  }

  if (a6)
  {
    *a6 = v12 - 8;
  }

  return 1;
}

uint64_t ReadMovieBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 8);
  if (v11)
  {
    v12 = 0;
    return v11(a1, a3, a2, a4, &v12);
  }

  return result;
}

uint64_t FindImageDescriptionExtensionOffset(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, _DWORD *a5)
{
  v10 = a2 + 86;
  LOWORD(v16) = 0;
  ReadMovieBytes(a1, a2 + 84, 2u, &v16);
  if (!v16)
  {
    LOWORD(v16) = 0;
    ReadMovieBytes(a1, a2 + 176, 2u, &v16);
    v10 += bswap32(v16) >> 16;
  }

  v16 = 0;
  ReadMovieBytes(a1, a2, 4u, &v16);
  v11 = bswap32(v16);
  if (v11 >= 8)
  {
    v12 = v10 + v11;
    v13 = v10 + 8;
    do
    {
      v16 = 0;
      ReadMovieBytes(a1, v10, 4u, &v16);
      if (!v16)
      {
        break;
      }

      v14 = bswap32(v16);
      v16 = 0;
      ReadMovieBytes(a1, v10 + 4, 4u, &v16);
      if (bswap32(v16) == a3)
      {
        *a4 = v13;
        *a5 = v14 - 8;
        return 1;
      }

      v10 += v14;
      v13 = v10 + 8;
    }

    while (v10 + 8 <= v12);
  }

  return 0;
}

void *IsSoundDescriptionISOv1(uint64_t a1, uint64_t a2, size_t size)
{
  v3 = size;
  v6 = size;
  result = malloc_type_calloc(1uLL, size, 0xED726FD7uLL);
  if (result)
  {
    v8 = result;
    ReadMovieBytes(a1, a2, v3, result);
    v9 = MEMORY[0x19A8D3160](v8, v6, 1);
    free(v8);
    return v9;
  }

  return result;
}

uint64_t FindSampleDescriptionExtensionOffset(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  v19 = 0;
  ReadMovieBytes(a1, a2, 4u, &v19);
  v10 = v19;
  v19 = 0;
  ReadMovieBytes(a1, a2 + 8, 4u, &v19);
  v11 = v19;
  LOWORD(v19) = 0;
  ReadMovieBytes(a1, a2 + 12, 2u, &v19);
  result = 0;
  if (v19 == 256)
  {
    v13 = bswap32(v10);
    v14 = bswap32(v11);
    if (v14 >= 0x10 && v14 < v13)
    {
      v16 = v13 + a2;
      v17 = v14 + a2;
      v19 = 0;
      WriteMovieBytes(a1, a2 + 8, 4u, &v19);
      LOWORD(v19) = 0;
      WriteMovieBytes(a1, a2 + 12, 2u, &v19);
      while (1)
      {
        if (v17 + 8 > v16)
        {
          return 0;
        }

        v19 = 0;
        ReadMovieBytes(a1, v17, 4u, &v19);
        if (!v19)
        {
          return 0;
        }

        v18 = bswap32(v19);
        v19 = 0;
        ReadMovieBytes(a1, v17 + 4, 4u, &v19);
        if (bswap32(v19) == a3)
        {
          break;
        }

        v17 += v18;
      }

      *a4 = v17 + 8;
      *a5 = v18 - 8;
      return 1;
    }
  }

  return result;
}

uint64_t WriteMovieBytes(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = VTable + 16;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    return v11(a1, a3, a2, a4, &v12);
  }

  return result;
}

void ReadMovieBytesIntoCFData(uint64_t a1, uint64_t a2, CFIndex capacity, __CFData **a4)
{
  v7 = capacity;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], capacity);
  v9 = Mutable;
  if (!Mutable)
  {
    ReadMovieBytesIntoCFData_cold_2();
    goto LABEL_6;
  }

  v13 = 0;
  CFDataSetLength(Mutable, v7);
  MutableBytePtr = CFDataGetMutableBytePtr(v9);
  if (!MutableBytePtr)
  {
    ReadMovieBytesIntoCFData_cold_1(&v14);
    if (!v14)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = MutableBytePtr;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v12 || v12(a1, v7, a2, v11, &v13))
  {
LABEL_5:
    CFRelease(v9);
    v9 = 0;
  }

LABEL_6:
  *a4 = v9;
}

uint64_t createInitFPCtxtLock(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  sInitFPCtxtLock = result;
  return result;
}

void FigSampleBufferConsumerCreateForBufferQueue2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  if (a1)
  {
    if (a6)
    {
      v12 = *MEMORY[0x1E695E480];
      FigSampleBufferConsumerGetClassID();
      if (!CMDerivedObjectCreate())
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        *(DerivedStorage + 136) = FigBufferQueueRetain();
        v17 = *(a2 + 16);
        *(DerivedStorage + 12) = *a2;
        *(DerivedStorage + 28) = v17;
        *(DerivedStorage + 40) = a3;
        v18 = *(a4 + 16);
        *(DerivedStorage + 48) = *a4;
        *(DerivedStorage + 64) = v18;
        *(DerivedStorage + 72) = a5;
        v19 = MEMORY[0x1E6960C70];
        *(DerivedStorage + 80) = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 96) = *(v19 + 16);
        CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
        if (!CMBufferQueueCreate(v12, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 144)))
        {
          *(DerivedStorage + 160) = CFArrayCreateMutable(v12, 0, MEMORY[0x1E695E9C0]);
          *DerivedStorage = FigSimpleMutexCreate();
          *(DerivedStorage + 8) = 1;
          *(DerivedStorage + 104) = FigSimpleMutexCreate();
          *a6 = 0;
        }
      }

      return;
    }

    emitter = fig_log_get_emitter();
    v14 = v6;
    v15 = 860;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v14 = v6;
    v15 = 858;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954535, "<<<< MENTOROUTPUT >>>>", v15, v14);
}

__CFString *sbcbq_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerToBufferQueue %p>", a1);
  return Mutable;
}

double sbcbq_setProperty(void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"HighWaterDuration"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      if (v8 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&time1, a3);
        v9 = *&time1.value;
        epoch = time1.epoch;
        *(DerivedStorage + 28) = time1.epoch;
        *(DerivedStorage + 12) = v9;
        v11 = *(DerivedStorage + 12);
        time1.epoch = epoch;
        *&time1.value = v11;
        time2 = *(DerivedStorage + 80);
        p_time1 = &time1;
        p_time2 = &time2;
LABEL_5:
        CMTimeCompare(p_time1, p_time2);
        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 727;
    goto LABEL_22;
  }

  if (CFEqual(a2, @"LowWaterDuration"))
  {
    if (a3)
    {
      v18 = CFGetTypeID(a3);
      if (v18 == CFDictionaryGetTypeID())
      {
        CMTimeMakeFromDictionary(&time1, a3);
        result = *&time1.value;
        *(DerivedStorage + 48) = time1;
        if ((*(DerivedStorage + 60) & 0x1D) == 1)
        {
          if (*(DerivedStorage + 112))
          {
            v19 = *(DerivedStorage + 128);
            if (v19)
            {
              CMBufferQueueRemoveTrigger(*(DerivedStorage + 136), v19);
              *(DerivedStorage + 128) = 0;
              v20 = *(DerivedStorage + 136);
              time1 = *(DerivedStorage + 48);
              CMBufferQueueInstallTrigger(v20, sbcbq_LowWater, a1, 2, &time1, (DerivedStorage + 128));
            }
          }
        }

        return result;
      }
    }

    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 755;
LABEL_22:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< MENTOROUTPUT >>>>", v17, v16);
  }

  if (!CFEqual(a2, @"PrerollDuration"))
  {
    return result;
  }

  if (!a3 || (v21 = CFGetTypeID(a3), v21 != CFDictionaryGetTypeID()))
  {
    emitter = fig_log_get_emitter();
    v16 = v3;
    v17 = 773;
    goto LABEL_22;
  }

  memset(&time1, 0, sizeof(time1));
  CMTimeMakeFromDictionary(&time1, a3);
  time2 = time1;
  v25 = *(DerivedStorage + 80);
  if (CMTimeCompare(&time2, &v25))
  {
    v22 = *&time1.value;
    *(DerivedStorage + 80) = *&time1.value;
    v23 = time1.epoch;
    *(DerivedStorage + 96) = time1.epoch;
    *&time2.value = v22;
    time2.epoch = v23;
    v24 = *(DerivedStorage + 12);
    v25.epoch = *(DerivedStorage + 28);
    *&v25.value = v24;
    p_time1 = &time2;
    p_time2 = &v25;
    goto LABEL_5;
  }

  return result;
}

uint64_t sbcbq_resetSideQueueAndSwitchToMainQueue(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  CMBufferQueueReset(*(DerivedStorage + 144));
  CFArrayRemoveAllValues(*(DerivedStorage + 160));
  *(DerivedStorage + 8) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

BOOL sbcbq_isQueueBelowPrerollLevel(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = **&MEMORY[0x1E6960C70];
  v2 = 48;
  if ((*(DerivedStorage + 92) & 0x1D) == 1)
  {
    v2 = 80;
  }

  v7 = *(DerivedStorage + v2);
  v3 = 136;
  if (!*(DerivedStorage + 8))
  {
    v3 = 144;
  }

  CMBufferQueueGetDuration(&v8, *(DerivedStorage + v3));
  time1 = v8;
  v5 = v7;
  return CMTimeCompare(&time1, &v5) < 1;
}

uint64_t sbcbq_countNonMarkerOnlySampleBuffers(opaqueCMSampleBuffer *a1, void *a2)
{
  if (CMSampleBufferGetNumSamples(a1) >= 1)
  {
    ++*a2;
  }

  return 0;
}

uint64_t sbcbq_setAttachmentIfSampleBufferInPTSRange(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetPresentationTimeStamp(&v7, a1);
  time1 = *(a2 + 16);
  v5 = v7;
  if (CMTimeCompare(&time1, &v5) <= 0)
  {
    time1 = v7;
    v5 = *(a2 + 40);
    if (CMTimeCompare(&time1, &v5) < 0)
    {
      CMSetAttachment(a1, *a2, *(a2 + 8), 1u);
    }
  }

  return 0;
}

uint64_t FigAirPlayRouteGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_48 != -1)
  {
    FigAirPlayRouteGetClassID_cold_1();
  }

  return qword_1ED4CA908;
}

uint64_t airplayRoute_registerBaseClass(uint64_t a1)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAirPlayRouteCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(__str, 0, sizeof(__str));
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (_MergedGlobals_48 != -1)
  {
    FigAirPlayRouteGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294954510;
  }

  v6 = DerivedStorage;
  *(DerivedStorage + 153) = 0;
  v7 = (DerivedStorage + 153);
  if (FigCFDictionaryGetStringIfPresent())
  {
    CFStringGetCString(0, v7, 10, 0x600u);
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.airplayroute_serialize.%s", v7);
  v8 = dispatch_queue_create(__str, 0);
  *(v6 + 88) = v8;
  if (!v8)
  {
    return 4294954434;
  }

  *(v6 + 50) = 1;
  *(v6 + 139) = 0;
  if (dword_1EAF17000)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v10 = 0;
  *a3 = 0;
  return v10;
}

void airplayRoute_Finalize(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *v4 = 1;
  if (*(v4 + 72))
  {
    if (dword_1EAF17000 >= 2)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(DerivedStorage, v3);
    v8 = *(v4 + 72);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(SharedInstance, a1, v8);
    }
  }

  *(v4 + 138) = 0;
  airplayRoute_stopRoutingContextListeners(a1);
  v10 = *(v4 + 8);
  if (v10)
  {
    CFRelease(v10);
    *(v4 + 8) = 0;
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    CFRelease(v11);
    *(v4 + 16) = 0;
  }

  if (*(v4 + 112))
  {
    airplayRoute_stopFigAudioSessionListeners(a1);
    v12 = *(v4 + 112);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  MX_RunningBoardServices_InvalidateMediaPlaybackProcessAssertion();
  v13 = *(v4 + 128);
  if (v13)
  {
    CFRelease(v13);
    *(v4 + 128) = 0;
  }

  v14 = *(v4 + 88);
  if (v14)
  {
    dispatch_release(v14);
    *(v4 + 88) = 0;
  }

  airplayRoute_ResumeAirPlayScreen(a1);
  if (*(v4 + 32))
  {
    FigEndpointRelinquishStreamResource();
  }

  v15 = *(v4 + 40);
  if (v15)
  {
    CFRelease(v15);
    *(v4 + 40) = 0;
  }

  v16 = *(v4 + 32);
  if (v16)
  {
    CFRelease(v16);
    *(v4 + 32) = 0;
  }

  airplayRoute_stopEndpointNotificationListeners(a1);
  v17 = *(v4 + 24);
  if (v17)
  {
    CFRelease(v17);
    *(v4 + 24) = 0;
  }

  v18 = *(v4 + 80);
  if (v18)
  {
    CFRelease(v18);
    *(v4 + 80) = 0;
  }

  v19 = *(v4 + 96);
  if (v19)
  {
    CFRelease(v19);
    *(v4 + 96) = 0;
  }

  v20 = *(v4 + 72);
  if (v20)
  {
    CFRelease(v20);
    *(v4 + 72) = 0;
  }

  v21 = *(v4 + 56);
  if (v21)
  {
    CFRelease(v21);
    *(v4 + 56) = 0;
  }

  *(v4 + 104) = 0;
  v22 = *(v4 + 144);
  if (v22)
  {
    CFRelease(v22);
    *(v4 + 144) = 0;
  }
}

uint64_t airplayRoute_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  if (!a1 || (v9 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_CopyProperty_cold_1(&v27);
    v12 = v27;
  }

  else
  {
    if (CFEqual(a2, @"IsSetupForAirPlayVideo"))
    {
      v10 = *(v9 + 11);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __airplayRoute_CopyProperty_block_invoke;
      block[3] = &__block_descriptor_tmp_195;
      block[4] = v9;
      block[5] = a4;
      v11 = block;
      goto LABEL_5;
    }

    if (!CFEqual(a2, @"PickerContextUUID"))
    {
      if (CFEqual(a2, @"BufferedAudioStream"))
      {
        v10 = *(v9 + 11);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 0x40000000;
        v20[2] = __airplayRoute_CopyProperty_block_invoke_3;
        v20[3] = &__block_descriptor_tmp_197;
        v20[4] = a4;
        v20[5] = v9;
        v11 = v20;
      }

      else
      {
        if (!CFEqual(a2, @"DoesCurrentRouteUseScreen"))
        {
          goto LABEL_6;
        }

        v10 = *(v9 + 11);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 0x40000000;
        v19[2] = __airplayRoute_CopyProperty_block_invoke_4;
        v19[3] = &__block_descriptor_tmp_198;
        v19[4] = a4;
        v19[5] = v9;
        v11 = v19;
      }

LABEL_5:
      dispatch_sync(v10, v11);
LABEL_6:
      v12 = 0;
      goto LABEL_7;
    }

    v15 = *(v9 + 11);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __airplayRoute_CopyProperty_block_invoke_2;
    v21[3] = &unk_1E7484268;
    v21[4] = &v23;
    v21[5] = a1;
    dispatch_sync(v15, v21);
    v16 = v24[3];
    if (v16)
    {
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        v17(v16, *MEMORY[0x1E69AF4E8], a3, a4);
      }

      goto LABEL_6;
    }

    v18 = *(v9 + 2);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    v12 = 0;
    *a4 = v18;
  }

LABEL_7:
  v13 = v24[3];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(&v23, 8);
  return v12;
}

uint64_t airplayRoute_ResumeAirPlayScreen(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v3 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_ResumeAirPlayScreen_cold_1(v6);
    return v6[0];
  }

  if (*(DerivedStorage + 48) && *(DerivedStorage + 104))
  {
    result = *(DerivedStorage + 40);
    if (!result)
    {
      return result;
    }

    if (dword_1EAF17000)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v3 + 48) = 0;
    FigEndpointStreamResume();
  }

  return 0;
}

void airplayRoute_routeConfigUpdatedNotificationCallback(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17000 >= 2)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a5)
  {
    CFDictionaryGetValue(a5, *MEMORY[0x1E69AF3B8]);
    if (FigCFEqual())
    {
      if (dword_1EAF17000 >= 2)
      {
        v13 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v10 = *(DerivedStorage + 88);
      if (v10)
      {
        if (a2)
        {
          CFRetain(a2);
          v10 = *(DerivedStorage + 88);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __airplayRoute_routeConfigUpdatedNotificationCallback_block_invoke;
        block[3] = &__block_descriptor_tmp_185;
        block[4] = DerivedStorage;
        block[5] = a2;
        dispatch_async(v10, block);
      }
    }
  }
}

void __airplayRoute_currentEndpointChangedNotificationCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    if (*(a1 + 48))
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();
    }

    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t airplayRoute_endpointStreamsHaveSameID(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  cf = 0;
  v3 = MEMORY[0x1E6962568];
  if (!a1)
  {
    goto LABEL_4;
  }

  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    v6 = 4294954514;
    goto LABEL_14;
  }

  v6 = v5(CMBaseObject, *v3, 0, &cf);
  if (v6)
  {
LABEL_14:
    airplayRoute_endpointStreamsHaveSameID_cold_1(v6);
    goto LABEL_17;
  }

LABEL_4:
  if (!a2)
  {
LABEL_7:
    v10 = FigCFEqual();
    goto LABEL_8;
  }

  v7 = FigEndpointStreamGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = v8(v7, *v3, 0, &v12);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 4294954514;
  }

  airplayRoute_endpointStreamsHaveSameID_cold_2(v9);
LABEL_17:
  v10 = 0;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v10;
}

void airplayRoute_updateRoutingRegistryInternal(uint64_t a1, uint64_t a2)
{
  cf[26] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2)
  {
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 8);
    DerivedStorage = VTable + 8;
    v9 = *(v8 + 48);
    if (v9)
    {
      DerivedStorage = v9(a2, *MEMORY[0x1E69AF4E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EAF17000 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    DerivedStorage = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(DerivedStorage, v5);
  v12 = *(v6 + 72);
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v13 || v13(SharedInstance, a1, v12))
  {
    goto LABEL_16;
  }

  v14 = *(v6 + 72);
  if (v14)
  {
    CFRelease(v14);
    *(v6 + 72) = 0;
  }

  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  if (cf[0])
  {
    if (*(v6 + 64))
    {
      if (!*(v6 + 152) && !CFPreferenceNumberWithDefault && !*(v6 + 140) && !*(v6 + 139))
      {
        v17 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(CFPreferenceNumberWithDefault, v16);
        v18 = cf[0];
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v19)
        {
          if (!v19(v17, a1, v18))
          {
            v20 = *(v6 + 72);
            v21 = cf[0];
            *(v6 + 72) = cf[0];
            if (v21)
            {
              CFRetain(v21);
            }

            if (v20)
            {
              CFRelease(v20);
            }
          }
        }
      }
    }

LABEL_16:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }
}

void __airplayRoute_endpointStreamsChangedCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __airplayRoute_routeConfigUpdatedNotificationCallback_block_invoke(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    airplayRoute_pickableRoutesChangedGuts(*(a1 + 40));
  }

  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t airplayRoute_playbackWillBeInterruptedNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void airplayRoute_overlayPresentDidChangeNotificationCallback(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();

  airplayRoute_checkIfPrimaryAppChanged(a2);
}

uint64_t airplayRoute_routingContextDidChangeNotificationCallback(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();

  return airplayRoute_ResetRoutingContextIfNeeded(a2);
}

void airplayRoute_checkIfPrimaryAppChanged(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = DerivedStorage;
    if (!*DerivedStorage)
    {
      if (*(DerivedStorage + 88))
      {
        CFRetain(a1);
        v4 = *(v3 + 88);
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 0x40000000;
        v5[2] = __airplayRoute_checkIfPrimaryAppChanged_block_invoke;
        v5[3] = &__block_descriptor_tmp_186;
        v5[4] = v3;
        v5[5] = a1;
        dispatch_async(v4, v5);
      }
    }
  }
}

void __airplayRoute_checkIfPrimaryAppChanged_block_invoke(uint64_t a1)
{
  cf = 0;
  v2 = *(a1 + 32);
  if (!*v2)
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      v5 = *MEMORY[0x1E695E480];
      v6 = *(CMBaseObjectGetVTable() + 16);
      if (v6)
      {
        v7 = *(v6 + 48);
        if (v7)
        {
          v7(v4, *MEMORY[0x1E69AEDE8], v5, &cf);
        }
      }

      FigCFEqual();
      Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetBoolean();
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

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t airplayRoute_ResetRoutingContextIfNeeded(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 88);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __airplayRoute_ResetRoutingContextIfNeeded_block_invoke;
  v5[3] = &__block_descriptor_tmp_187;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_async(v3, v5);
  return 0;
}

uint64_t airplayRoute_updateAudioSessionPolicyForBuffered(const void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 8;
  v3 = *(CMBaseObjectGetDerivedStorage() + 112);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = Mutable;
  cf = 0;
  if (v3)
  {
    v6 = Mutable == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v13 = 0;
    if (!Mutable)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  CFArrayAppendValue(Mutable, *MEMORY[0x1E69AFCC0]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B0020]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69AFF80]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B02C0]);
  CFArrayAppendValue(v5, *MEMORY[0x1E69B0370]);
  v7 = *(CMBaseObjectGetVTable() + 16);
  if (v7)
  {
    v8 = *(v7 + 112);
    if (v8)
    {
      v8(v3, v5, &cf, 0);
    }
  }

  FigCFDictionaryGetValue();
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  }

  FigCFDictionaryGetValue();
  v10 = FigCFDictionaryGetValue();
  FigCFDictionaryGetValue();
  v11 = valuePtr == 32 || valuePtr == 16;
  if (v11 && !v10)
  {
    if (dword_1EAF17000)
    {
LABEL_17:
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v13 = 1;
LABEL_30:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  if (FigCFEqual() || FigCFEqual() && !v10 || FigCFEqual() || FigCFEqual() || FigCFEqual() || FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (FigCFEqual())
  {
    if (dword_1EAF17000)
    {
LABEL_38:
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      v13 = 1;
      goto LABEL_30;
    }

LABEL_39:
    v13 = 1;
    goto LABEL_40;
  }

  v13 = 0;
LABEL_40:
  CFRelease(v5);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_42:
  if (v13 == *(DerivedStorage + 140))
  {
    return 0;
  }

  *(DerivedStorage + 140) = v13;
  airplayRoute_updateRoutingRegistry(a1);
  return 1;
}

void airplayRoute_updateRoutingRegistry(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v3 = *(DerivedStorage + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __airplayRoute_updateRoutingRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_194;
  block[4] = a1;
  dispatch_async(v3, block);
}

void airplayRoute_updateRoutingContextUUID(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v5 = *(DerivedStorage + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __airplayRoute_updateRoutingContextUUID_block_invoke;
  block[3] = &__block_descriptor_tmp_207_0;
  block[4] = DerivedStorage;
  block[5] = a2;
  block[6] = a1;
  dispatch_async(v5, block);
}

void __airplayRoute_setNewFigAudioSession_block_invoke(void *a1)
{
  cf = 0;
  v3 = a1 + 4;
  v2 = a1[4];
  if (!*v2)
  {
    if (*(v2 + 112))
    {
      __airplayRoute_setNewFigAudioSession_block_invoke_cold_1(a1, (a1 + 4), v21);
    }

    v6 = a1[4];
    v7 = *(v6 + 112);
    v8 = a1[6];
    *(v6 + 112) = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    airplayRoute_updateAudioSessionPolicyForBuffered(a1[5]);
    if (*(a1[4] + 112))
    {
      v10 = a1[5];
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (!v10 || *DerivedStorage)
      {
        __airplayRoute_setNewFigAudioSession_block_invoke_cold_2(DerivedStorage);
      }

      else
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
      }

      v12 = *v3;
      v13 = *(*v3 + 144);
      if (v13)
      {
        CFRelease(v13);
        *(*v3 + 144) = 0;
        v12 = *v3;
      }

      v14 = *(v12 + 112);
      v9 = *MEMORY[0x1E695E480];
      if (v14)
      {
        v15 = *(CMBaseObjectGetVTable() + 16);
        if (v15)
        {
          v16 = *(v15 + 48);
          if (v16)
          {
            v16(v14, *MEMORY[0x1E69AFF80], v9, v12 + 144);
          }
        }
      }

      airplayRoute_checkIfPrimaryAppChanged(a1[5]);
    }

    else
    {
      v9 = *MEMORY[0x1E695E480];
    }

    airplayRoute_resetRoutingContextIfNeededInternal(a1[5]);
    v17 = *(a1[4] + 112);
    if (v17)
    {
      v18 = *(CMBaseObjectGetVTable() + 16);
      if (v18)
      {
        v19 = *(v18 + 48);
        if (v19)
        {
          v19(v17, *MEMORY[0x1E69AFCE8], v9, &cf);
        }
      }
    }

    Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
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

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }
}

void __airplayRoute_setNewFigAudioSession_block_invoke_2(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (v4)
    {
      v5 = *(v4 + 104);
      if (v5)
      {
        v5(v3, Mutable, 0);
      }
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v6 = *(a1 + 32);

  CFRelease(v6);
}

void __airplayRoute_setAirPlayVideoIsActive_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && *(v2 + 112))
  {
    __airplayRoute_setAirPlayVideoIsActive_block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*v2 && *(v2 + 112))
  {
    __airplayRoute_setAudioOnlyAirPlayVideoIsActive_block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t airplayRoute_SuspendAirPlayScreen(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || (v5 = DerivedStorage, *DerivedStorage))
  {
    airplayRoute_SuspendAirPlayScreen_cold_2(v21);
    return v21[0];
  }

  if (!a2)
  {
    if (!*(DerivedStorage + 48) && *(DerivedStorage + 104) && *(DerivedStorage + 40))
    {
      if (dword_1EAF17000)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v5 + 48) = 1;
      FigEndpointStreamSuspend();
    }

    return 0;
  }

  v6 = CMBaseObjectGetDerivedStorage();
  if (*v6)
  {
    airplayRoute_SuspendAirPlayScreen_cold_1(v21);
    return v21[0];
  }

  v7 = v6;
  if (*(v6 + 48) || !*(v6 + 104) || !*(v6 + 40))
  {
    return 0;
  }

  v8 = dispatch_semaphore_create(0);
  if (dword_1EAF17000)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(v7 + 48) = 1;
  dispatch_retain(v8);
  v13 = *(v7 + 40);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v14)
  {
    v14(v13, 0, airplayRoute_screenStreamCompletionCallback, v8);
  }

  v15 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v8, v15))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
    v10 = v16;
  }

  else
  {
    v10 = 0;
  }

  dispatch_release(v8);
  if (dword_1EAF17000)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v10;
}

void airplayRoute_screenStreamCompletionCallback(int a1, int a2, dispatch_semaphore_t dsema)
{
  dispatch_semaphore_signal(dsema);

  dispatch_release(dsema);
}

uint64_t OUTLINED_FUNCTION_4_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, char a30, int a31)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_26_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, os_log_type_t type, int a31)
{

  return os_log_type_enabled(a1, type);
}

uint64_t virtualDisplaySourceRegisterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigVirtualDisplaySourceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVirtualDisplaySourceGetClassID_once, virtualDisplaySourceRegisterType);

  return CMBaseClassGetCFTypeID();
}

void __raci_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = Mutable;
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"AssetCacheInspector_ServerConnectionDied");
    FigRemote_ShouldConnectToMediaparserdForFileParsing();
    FigRemote_ShouldConnectToMediaplaybackd();
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();

    CFRelease(v3);
  }

  else
  {
    __raci_ensureClientEstablished_block_invoke_cold_1(a1);
  }
}

uint64_t raci_deadConnectionCallback(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();

  return FigAtomicCompareAndSwap32();
}

uint64_t raci_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (FigAtomicCompareAndSwap32())
  {
    if (FigAtomicCompareAndSwap32())
    {
      result = 0;
      *a2 = *(DerivedStorage + 8);
    }

    else
    {
      raci_getObjectID_cold_1(&v5);
      return v5;
    }
  }

  else
  {
    raci_getObjectID_cold_2(&v6);
    return v6;
  }

  return result;
}

void FigSampleBufferConsumerCreateThatDiscards(CFTypeRef *a1)
{
  if (a1)
  {
    FigSampleBufferConsumerGetClassID();
    if (!CMDerivedObjectCreate())
    {
      *a1 = 0;
    }
  }

  else
  {

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954535, "(Fig)", 192, v1);
  }
}

__CFString *blackhole_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferConsumerThatDiscards %p>", a1);
  return Mutable;
}

uint64_t FigSampleBufferConsumerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferConsumerGetClassID_sRegisterFigSampleBufferConsumerTypeOnce, RegisterFigSampleBufferConsumerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t ttmlParser_RegisterTTMLParser()
{
  result = _CFRuntimeRegisterClass();
  sTTMLParserID = result;
  return result;
}

uint64_t TTMLParserCreate(uint64_t a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v8 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&TTMLParserGetTypeID_sRegisterTTMLParserOnce, ttmlParser_RegisterTTMLParser);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v10 = Instance;
    Instance[2] = a2;
    Instance[3] = a1;
    Instance[7] = CFSetCreateMutable(v8, 0, 0);
    if (a3)
    {
      Copy = CFDictionaryCreateCopy(v8, a3);
    }

    else
    {
      Copy = CFDictionaryCreate(v8, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v12 = Copy;
    result = 0;
    v10[8] = v12;
    *a4 = v10;
  }

  else
  {
    TTMLParserCreate_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t TTMLParserRegisterReportingCallbacks(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(a1 + 48) = a2;
  *(a1 + 32) = *a3;
  return 0;
}

double ttmlParser_Init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void ttmlParser_Finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ttmlParser_addTextNodeSourceInformation(void *value, uint64_t a2)
{
  if (value && !*a2)
  {
    ParentNode = value;
    v4 = *MEMORY[0x1E6961450];
    v5 = *MEMORY[0x1E695E480];
    v6 = MEMORY[0x1E695E9C0];
    do
    {
      valuea = 0;
      theArray = 0;
      if (CFSetContainsValue(*(*(a2 + 8) + 56), ParentNode))
      {
        goto LABEL_13;
      }

      v7 = FigTTMLNodeCopySkippedElementLocalNames(ParentNode, &theArray);
      if (v7)
      {
        v11 = v7;
      }

      else
      {
        if (!theArray || !CFArrayGetCount(theArray))
        {
          goto LABEL_13;
        }

        if (CFDictionaryGetValueIfPresent(*(a2 + 16), v4, &valuea))
        {
          CFRetain(valuea);
LABEL_12:
          v9 = valuea;
          v10 = theArray;
          v15.length = CFArrayGetCount(theArray);
          v15.location = 0;
          CFArrayAppendArray(v9, v10, v15);
LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        Mutable = CFArrayCreateMutable(v5, 0, v6);
        valuea = Mutable;
        if (Mutable)
        {
          CFDictionaryAddValue(*(a2 + 16), v4, Mutable);
          goto LABEL_12;
        }

        ttmlParser_addTextNodeSourceInformation_cold_1(&v14);
        v11 = v14;
      }

LABEL_14:
      if (valuea)
      {
        CFRelease(valuea);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v11)
      {
        *a2 = v11;
        return;
      }

      CFSetAddValue(*(*(a2 + 8) + 56), ParentNode);
      *a2 = 0;
      ParentNode = FigTTMLNodeGetParentNode(ParentNode);
    }

    while (ParentNode);
  }
}

uint64_t ttmlParser_getTopRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getBottomRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getLeftRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_getRightRegionRect()
{
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometryPointMake();
  FigGeometryDimensionMake();
  FigGeometryDimensionMake();
  FigGeometrySizeMake();
  return FigGeometryRectMake();
}

uint64_t ttmlParser_doPropertiesMatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  if (!a3)
  {
    return 1;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = a3 - 1;
  for (i = a2 + 8; ; i += 24)
  {
    v7 = *(i - 8);
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v8 || v8(a1, v7, v4, &cf) || (!*(i + 8) || cf) && !FigCFEqual())
    {
      v9 = 0;
      goto LABEL_15;
    }

    if (!v5)
    {
      break;
    }

    --v5;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  v9 = 1;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t ttmlParser_initializePredefinedRegion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObject = FigCaptionRegionGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(CMBaseObject, a1, a2);
  }

  return result;
}

void OUTLINED_FUNCTION_0_71()
{

  JUMPOUT(0x19A8D3660);
}

uint64_t OUTLINED_FUNCTION_2_67(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __int128 a61, __int128 a62, __int128 a63)
{
  v66 = *(v64 - 208);
  a61 = *(v64 - 224);
  a62 = v66;
  v67 = *(v64 - 176);
  a63 = *(v64 - 192);
  a64 = v67;

  return MEMORY[0x1EEDBD2D8](&a61, &STACK[0x210]);
}

uint64_t OUTLINED_FUNCTION_4_52(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 216) = result;
  *(v21 - 208) = 0;
  *(v21 - 200) = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_42(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 192) = result;
  *(v20 - 184) = 0;
  *(v20 - 176) = a20;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return FigCaptionDynamicStyleCreate();
}

void OUTLINED_FUNCTION_9_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 - 216) = a1;
  *(v21 - 208) = 0;
  *(v21 - 200) = a21;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_10_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 144) = a1;
  *(v17 - 136) = 0;
  *(v17 - 128) = a17;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_11_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 168) = a1;
  *(v16 - 160) = 0;
  *(v16 - 152) = a16;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_12_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 168) = a1;
  *(v17 - 160) = 0;
  *(v17 - 152) = a17;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *(v20 - 192) = a1;
  *(v20 - 184) = 0;
  *(v20 - 176) = a20;

  JUMPOUT(0x19A8D3660);
}

void OUTLINED_FUNCTION_16_18()
{

  JUMPOUT(0x19A8D3660);
}

const void *OUTLINED_FUNCTION_17_15()
{
  v3 = *(v1 + 2336);

  return CFDictionaryGetValue(v3, v0);
}

const void *OUTLINED_FUNCTION_18_16()
{
  v3 = *(v1 + 2344);

  return CFDictionaryGetValue(v3, v0);
}

__n128 OUTLINED_FUNCTION_19_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, uint64_t a35)
{
  result = a34;
  *(v35 - 224) = a34;
  *(v35 - 208) = a35;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v61 - 120) = a1;
  *(v61 - 112) = 1;

  return FigCaptionRegionGetCMBaseObject();
}

uint64_t OUTLINED_FUNCTION_21_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v61 - 144) = a1;
  *(v61 - 136) = 1;

  return FigCaptionRegionGetCMBaseObject();
}

const void *OUTLINED_FUNCTION_22_17()
{
  v3 = *(v1 + 2360);

  return CFDictionaryGetValue(v3, v0);
}

const void *OUTLINED_FUNCTION_23_18()
{
  v3 = *(v1 + 2352);

  return CFDictionaryGetValue(v3, v0);
}

uint64_t remakerFamily_formatWriterErrorOccurred(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return remakerFamily_HandleNotificationErrorPayload(a2, 0, a5, @"OSStatus");
}

void remakerFamily_renderPipelineLostDecoderState(uint64_t a1, uint64_t a2)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = 4294951184;
    }

    else
    {
      v6 = 4294951192;
    }

    remakerFamily_PostFailureNotificationIfError(v4, a2, v6, 1u, 0);

    CFRelease(v4);
  }
}

void remakerFamily_MediaProcessorProcessSampleBufferFailed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  remakerFamily_HandleNotificationErrorPayload(v7, a2, a5, @"Result");
  if (v7)
  {
    CFRelease(v7);
  }
}

void remakerFamily_MediaProcessorSessionTerminated(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (dword_1EAF17020)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = 4294951184;
    }

    else
    {
      v7 = CFGetTypeID(v3);
      if (v7 == FigAssetWriterGetTypeID())
      {
        v6 = 4294951172;
      }

      else
      {
        v6 = 4294951192;
      }
    }

    remakerFamily_PostFailureNotificationIfError(v3, a2, v6, 1u, 0);
    CFRelease(v3);
  }

  else
  {
    remakerFamily_PostFailureNotificationIfError(0, a2, 4294951192, 1u, 0);
  }
}

uint64_t remakerFamily_registerDarwinNotification(uint64_t a1, int *a2)
{
  v7 = 0;
  out_token = -1;
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    remakerFamily_registerDarwinNotification_cold_2(&v8);
LABEL_7:
    v4 = v8;
    goto LABEL_4;
  }

  if (notify_register_check(CStringPtrAndBufferToFree, &out_token))
  {
    remakerFamily_registerDarwinNotification_cold_1(&v8);
    goto LABEL_7;
  }

  v4 = 0;
  *a2 = out_token;
LABEL_4:
  free(v7);
  return v4;
}

uint64_t remakerFamily_postDarwinNotificationWithState(uint64_t a1, int val, uint64_t a3)
{
  if (!notify_is_valid_token(val))
  {
    goto LABEL_5;
  }

  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (!CStringPtrAndBufferToFree)
  {
    v9 = 977;
LABEL_10:
    remakerFamily_postDarwinNotificationWithState_cold_1(v9, &v10);
    v7 = v10;
    goto LABEL_6;
  }

  v6 = CStringPtrAndBufferToFree;
  if (notify_set_state(val, a3))
  {
    v9 = 980;
    goto LABEL_10;
  }

  if (notify_post(v6))
  {
    v9 = 983;
    goto LABEL_10;
  }

LABEL_5:
  v7 = 0;
LABEL_6:
  free(0);
  return v7;
}

uint64_t remakerFamily_SetRemakerState(uint64_t a1, int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexLock();
  }

  v7 = *DerivedStorage;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 != 7)
      {
        if (a2 != 8)
        {
          goto LABEL_29;
        }

        if (v7 == 7)
        {
          v8 = 0;
          goto LABEL_39;
        }

        if (v7 != 6)
        {
          v8 = 0;
          v9 = 8;
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (a2 == 5)
      {
        if (v7 == 4)
        {
          v8 = 0;
          v9 = 5;
          goto LABEL_38;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294954511, "<<<< FigExportCommmon >>>>", 1271, v3);
        goto LABEL_34;
      }

      if (v7 != 8)
      {
        v8 = 0;
        v9 = 6;
        goto LABEL_38;
      }
    }

    v8 = 0;
    v9 = 7;
    goto LABEL_38;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if ((v7 - 1) <= 1)
      {
        v8 = 0;
        v9 = 3;
        goto LABEL_38;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294954511, "<<<< FigExportCommmon >>>>", 1255, v3);
    }

    else
    {
      if (v7 == 3)
      {
        v8 = 0;
        v9 = 4;
        goto LABEL_38;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294954511, "<<<< FigExportCommmon >>>>", 1263, v3);
    }

    goto LABEL_34;
  }

  if (a2 == 1)
  {
    if (!v7)
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_38;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294955190, "<<<< FigExportCommmon >>>>", 1239, v3);
    goto LABEL_34;
  }

  if (a2 == 2)
  {
    if (v7 == 1)
    {
      v8 = 0;
      v9 = 2;
LABEL_38:
      *DerivedStorage = v9;
      goto LABEL_39;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294954511, "<<<< FigExportCommmon >>>>", 1247, v3);
    goto LABEL_34;
  }

LABEL_29:
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17018, 4294955190, "<<<< FigExportCommmon >>>>", 1294, v3);
LABEL_34:
  v8 = v10;
LABEL_39:
  if (*(DerivedStorage + 8))
  {
    FigSimpleMutexUnlock();
  }

  if (a3)
  {
    *a3 = *DerivedStorage;
  }

  return v8;
}