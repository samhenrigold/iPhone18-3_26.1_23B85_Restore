uint64_t FigAudioSessionCreateWithAVAudioSessionSiblingForFigAudioSession(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, uint64_t *a5)
{
  v10 = objc_autoreleasePoolPush();
  cf = 0;
  if (a2 && (v11 = *(CMBaseObjectGetVTable() + 16)) != 0)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = v12(a2, @"FAS_CoreSessionID", a1, &cf);
      v14 = cf;
      if (!v13)
      {
        UInt32 = FigCFNumberGetUInt32();
        v16 = a3[1];
        v18[0] = *a3;
        v18[1] = v16;
        v13 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, UInt32, v18, a4, a5);
        v14 = cf;
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      v13 = 4294948071;
    }
  }

  else
  {
    v13 = 4294948075;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(uint64_t a1, _OWORD *a2, void *a3, uint64_t *a4)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  return FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, 0xFFFFFFFFLL, v6, a3, a4);
}

uint64_t FigAudioSessionCreateUsingAuxiliaryAVAudioSession(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  cf = 0;
  if (!a4)
  {
    FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_2(v20);
LABEL_29:
    v16 = LODWORD(v20[0]);
    goto LABEL_21;
  }

  if (!a3)
  {
    FigAudioSessionCreateUsingAuxiliaryAVAudioSession_cold_1(v20);
    goto LABEL_29;
  }

  v9 = FigAudioSessionCreateWithAVAudioSession(a1, [MEMORY[0x1E698D710] auxiliarySession], &cf);
  if (v9)
  {
    v16 = v9;
    goto LABEL_21;
  }

  if (a2)
  {
    v10 = a2[1];
    v20[0] = *a2;
    v20[1] = v10;
    FigServer_GetClientPIDFromAuditToken();
    SInt32 = FigCFNumberCreateSInt32();
    v12 = cf;
    if (!cf)
    {
      goto LABEL_18;
    }

    v13 = *(CMBaseObjectGetVTable() + 16);
    if (!v13)
    {
      goto LABEL_18;
    }

    v14 = *(v13 + 56);
    if (!v14)
    {
      goto LABEL_23;
    }

    v15 = v14(v12, *MEMORY[0x1E69AFDA8], SInt32);
    if (v15)
    {
      v16 = v15;
      if (!SInt32)
      {
        goto LABEL_21;
      }

LABEL_20:
      CFRelease(SInt32);
      goto LABEL_21;
    }
  }

  else
  {
    v12 = cf;
    if (!cf)
    {
      v16 = 4294948075;
      goto LABEL_26;
    }

    SInt32 = 0;
  }

  v17 = *(CMBaseObjectGetVTable() + 16);
  if (!v17)
  {
LABEL_18:
    v16 = 4294948075;
LABEL_19:
    if (!SInt32)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v18 = *(v17 + 56);
  if (!v18)
  {
LABEL_23:
    v16 = 4294948071;
    if (SInt32)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v16 = v18(v12, *MEMORY[0x1E69AFD90], a3);
  if (v16)
  {
    goto LABEL_19;
  }

  *a4 = v12;
  cf = 0;
  if (SInt32)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
  return v16;
}

void audioSessionAVAudioSession_Finalize(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigCFDictionaryApplyBlock();
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:DerivedStorage[14] name:*MEMORY[0x1E698D6E8] object:*DerivedStorage];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:DerivedStorage[15] name:*MEMORY[0x1E698D5B0] object:*DerivedStorage];
  if (qword_1ED4CBA40 != -1)
  {
    FigAudioSessionCreateWithAVAudioSession_cold_1();
  }

  FigCFWeakReferenceTableRemoveValue();
  v5 = DerivedStorage[18];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[18] = 0;
  }

  v6 = DerivedStorage[13];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[13] = 0;
  }

  DerivedStorage[14] = 0;
  DerivedStorage[15] = 0;
  v7 = DerivedStorage[17];
  if (v7)
  {
    dispatch_release(v7);
  }

  *DerivedStorage = 0;
  objc_autoreleasePoolPop(v1);
}

uint64_t audioSessionAVAudioSession_CopyResolvedConfigurationForProperty(uint64_t a1, void *a2, const __CFAllocator *a3, __CFDictionary **a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForResolvedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(a2);
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForResolvedFigAudioSessionPropertyInternal && !audioSessionAVAudioSession_propertyIsInDenyList(MXSessionPropertyForResolvedFigAudioSessionPropertyInternal))
  {
    if (a1 && (v15 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v16 = *(v15 + 48);
      if (v16)
      {
        IsAvailable = v16(a1, MXSessionPropertyForResolvedFigAudioSessionPropertyInternal, a3, a4);
        goto LABEL_13;
      }

      v13 = 4294948071;
    }

    else
    {
      v13 = 4294948075;
    }
  }

  else if (FigCFEqual())
  {
    audioSessionAVAudioSession_CopyResolvedConfigurationForProperty_cold_1(a1, a4);
    v13 = 0;
  }

  else
  {
    if (FigCFEqual())
    {
      [*DerivedStorage sourceSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_10:
      v13 = 0;
      *a4 = UInt32;
      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyRoutingContext(a1, a3, a4);
LABEL_13:
      v13 = IsAvailable;
      goto LABEL_26;
    }

    if (FigCFEqual())
    {
      v17 = [*DerivedStorage inputTimeObserver];
LABEL_24:
      UInt32 = v17;
      goto LABEL_10;
    }

    if (FigCFEqual())
    {
      v17 = [*DerivedStorage outputTimeObserver];
      goto LABEL_24;
    }

    if (FigCFEqual())
    {
      v19 = a1;
      v20 = a3;
      v21 = 1836019574;
LABEL_35:
      IsAvailable = audioSessionAVAudioSession_copySpatializationCapabilities(v19, v20, v21, a4);
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      v19 = a1;
      v20 = a3;
      v21 = 1936684398;
      goto LABEL_35;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyNeroInformationDictionary(a1, a3, a4);
      goto LABEL_13;
    }

    if (FigCFEqual())
    {
      IsAvailable = audioSessionAVAudioSession_copyAudioDeviceIsAvailable(a1, a4);
      goto LABEL_13;
    }

    v13 = 4294948074;
  }

LABEL_26:
  if (*v11 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  objc_autoreleasePoolPop(v8);
  return v13;
}

uint64_t audioSessionAVAudioSession_CopyRequestedConfigurationForProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal && !audioSessionAVAudioSession_propertyIsInDenyList(MXSessionPropertyForRequestedFigAudioSessionPropertyInternal))
  {
    if (a1 && (v14 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v15 = *(v14 + 48);
      if (v15)
      {
        v13 = v15(a1, MXSessionPropertyForRequestedFigAudioSessionPropertyInternal, a3, a4);
      }

      else
      {
        v13 = 4294948071;
      }
    }

    else
    {
      v13 = 4294948075;
    }
  }

  else
  {
    if (FigCFEqual())
    {
      [*DerivedStorage opaqueSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_9:
      v13 = 0;
      *a4 = UInt32;
      goto LABEL_20;
    }

    if (FigCFEqual())
    {
      UInt32 = [*DerivedStorage category];
      if (UInt32)
      {
        UInt32 = CFRetain(UInt32);
      }

      goto LABEL_9;
    }

    v13 = 4294948074;
  }

LABEL_20:
  if (*v11 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  objc_autoreleasePoolPop(v8);
  return v13;
}

uint64_t audioSessionAVAudioSession_RequestConfigurationForProperty(uint64_t a1, void *key, uint64_t a3)
{
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(key);
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (key)
    {
      CFHash(key);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal)
  {
    if (a1 && (v8 = *(CMBaseObjectGetVTable() + 16)) != 0)
    {
      v9 = *(v8 + 56);
      if (v9)
      {
        v10 = v9(a1, MXSessionPropertyForRequestedFigAudioSessionPropertyInternal, a3);
      }

      else
      {
        v10 = 4294948071;
      }
    }

    else
    {
      v10 = 4294948075;
    }
  }

  else
  {
    v10 = 4294948074;
  }

  if (*v7 == 1)
  {
    if (key)
    {
      CFHash(key);
    }

    kdebug_trace();
  }

  return v10;
}

uint64_t audioSessionAVAudioSession_CopyCMSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t audioSessionAVAudioSession_SetCMSessionProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294948075;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    return 4294948075;
  }

  v7 = *(v6 + 56);
  if (!v7)
  {
    return 4294948071;
  }

  return v7(a1, a2, a3);
}

uint64_t audioSessionAVAudioSession_CopyMXSessionProperty(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  v16 = 0;
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (audioSessionAVAudioSession_propertyIsInDenyList(a2))
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294948074, "<<<< FigAudioSession(AV) >>>>", 602, v4);
LABEL_14:
    v14 = v10;
    goto LABEL_15;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_2(&v17);
    v14 = v17;
    goto LABEL_19;
  }

  v12 = [*DerivedStorage getMXSessionProperty:a2 error:&v16];
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *a4 = v12;
  if (v16)
  {
    v13 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, [v16 code], "<<<< FigAudioSession(AV) >>>>", 610, v4);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:
  if (*v8 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

LABEL_19:
  objc_autoreleasePoolPop(v7);
  return v14;
}

uint64_t audioSessionAVAudioSession_SetMXSessionProperty(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (audioSessionAVAudioSession_propertyIsInDenyList(a2))
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294948074, "<<<< FigAudioSession(AV) >>>>", 636, v3);
LABEL_12:
    v12 = v10;
    goto LABEL_13;
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_SetMXSessionProperty_cold_2(&v15);
    v12 = v15;
    goto LABEL_17;
  }

  [*DerivedStorage setMXSessionProperty:a2 value:a3 error:&v14];
  if (v14)
  {
    v11 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, [v14 code], "<<<< FigAudioSession(AV) >>>>", 643, v3);
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:
  if (*v8 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

LABEL_17:
  objc_autoreleasePoolPop(v6);
  return v12;
}

uint64_t audioSessionAVAudioSession_Activate(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [*DerivedStorage setActive:1 withOptions:0x20000000 error:&v6];
  v4 = [v6 code];
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v1);
  return v4;
}

uint64_t audioSessionAVAudioSession_Deactivate(uint64_t a1, uint64_t a2)
{
  v2 = objc_autoreleasePoolPush();
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v7 = 0;
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    [*DerivedStorage handleRemoteInterruption:0 postInterruptionNotification:v8 != 0 error:&v7];
  }

  else
  {
    [*DerivedStorage setActive:0 error:&v7];
  }

  v5 = [v7 code];
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t audioSessionAVAudioSession_IsRelatedSessionID(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = [*CMBaseObjectGetDerivedStorage() isRelatedSessionID:a2];
  objc_autoreleasePoolPop(v3);
  return v4;
}

uint64_t audioSessionAVAudioSession_SetMXSessionPropertiesAndCopyErrors(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v48 = 0;
  CFDictionaryGetKeysAndValues(a2, 0, 0);
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  v7 = audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe != 0;
  if (!audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    audioSessionAVAudioSession_SetMXSessionPropertiesAndCopyErrors_cold_2();
    v9 = 0;
    goto LABEL_57;
  }

  Count = FigCFDictionaryGetCount();
  v9 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a2, v9, 0);
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  if (!MutableCopy)
  {
LABEL_57:
    free(v9);
    goto LABEL_54;
  }

  v11 = MutableCopy;
  if (Count >= 1)
  {
    v12 = v9;
    do
    {
      v13 = *v12;
      if (audioSessionAVAudioSession_propertyIsInDenyList(*v12))
      {
        CFDictionaryRemoveValue(v11, v13);
      }

      ++v12;
      --Count;
    }

    while (Count);
  }

  v14 = FigCFDictionaryGetCount();
  if (v14 < 1)
  {
    v7 = 1;
  }

  else
  {
    v15 = v14;
    v16 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (*v9)
      {
        CFHash(*v9);
      }

      if (v15 != 1)
      {
        v17 = v9[1];
        if (v17)
        {
          CFHash(v17);
        }

        if (v15 >= 3)
        {
          v18 = v9[2];
          if (v18)
          {
            CFHash(v18);
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      v19 = &v48;
    }

    else
    {
      v19 = 0;
    }

    v7 = [*DerivedStorage setMXProperties:v11 propertyErrors:v19];
    if (*v16 == 1)
    {
      if (v15 >= 4)
      {
        v20 = v9[3];
        if (v20)
        {
          CFHash(v20);
        }

        if (v15 != 4)
        {
          v21 = v9[4];
          if (v21)
          {
            CFHash(v21);
          }

          if (v15 >= 6)
          {
            v22 = v9[5];
            if (v22)
            {
              CFHash(v22);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      v35 = v7;
      v36 = v11;
      v37 = v9;
      v38 = a3;
      v39 = v5;
      v23 = objc_opt_new();
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v24 = v48;
      v25 = [v48 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v45;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v45 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v44 + 1) + 8 * i);
            v40 = 0u;
            v41 = 0u;
            v42 = 0u;
            v43 = 0u;
            v30 = [v29 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v41;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v41 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  [v23 setObject:objc_msgSend(v29 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v40 + 1) + 8 * j)), *(*(&v40 + 1) + 8 * j)}];
                }

                v31 = [v29 countByEnumeratingWithState:&v40 objects:v49 count:16];
              }

              while (v31);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v44 objects:v50 count:16];
        }

        while (v26);
      }

      v5 = v39;
      *v38 = v23;
      v11 = v36;
      v9 = v37;
      v7 = v35;
    }
  }

  free(v9);
  CFRelease(v11);
LABEL_54:
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t audioSessionAVAudioSession_CopyMXSessionPropertiesAndErrors(uint64_t a1, const __CFArray *a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (audioSessionAVAudioSession_canUseGenericPipe_onceToken != -1)
  {
    audioSessionAVAudioSession_CopyMXSessionProperty_cold_1();
  }

  if (audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    v10 = 0;
    if (MutableCopy)
    {
      goto LABEL_9;
    }

    while (v10 < 0)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v10);
        if (audioSessionAVAudioSession_propertyIsInDenyList(ValueAtIndex))
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v10--);
        }

        ++v10;
        if (!MutableCopy)
        {
          break;
        }

LABEL_9:
        if (v10 >= CFArrayGetCount(MutableCopy))
        {
          Count = CFArrayGetCount(MutableCopy);
          v14 = Count;
          if (*MEMORY[0x1E695FF58] != 1)
          {
            goto LABEL_19;
          }

          if (Count >= 1)
          {
            v15 = CFArrayGetValueAtIndex(a2, 0);
            if (v15)
            {
              CFHash(v15);
            }

            if (v14 != 1)
            {
              v18 = CFArrayGetValueAtIndex(a2, 1);
              if (v18)
              {
                CFHash(v18);
              }

              if (v14 < 3)
              {
                v14 = 2;
              }

              else
              {
                v23 = CFArrayGetValueAtIndex(a2, 2);
                if (v23)
                {
                  CFHash(v23);
                }
              }
            }
          }

          goto LABEL_18;
        }
      }
    }

    v14 = 0;
    v13 = 0;
    if (*MEMORY[0x1E695FF58] == 1)
    {
LABEL_18:
      kdebug_trace();
    }

LABEL_19:
    v16 = [*DerivedStorage getMXProperties:a2 propertyErrors:{0, v13}];
    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *a3 = v16;
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (v14 >= 4)
      {
        v17 = CFArrayGetValueAtIndex(a2, 3);
        if (v17)
        {
          CFHash(v17);
        }

        if (v14 != 4)
        {
          v19 = CFArrayGetValueAtIndex(a2, 4);
          if (v19)
          {
            CFHash(v19);
          }

          if (v14 >= 6)
          {
            v20 = CFArrayGetValueAtIndex(a2, 5);
            if (v20)
            {
              CFHash(v20);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    v21 = 0;
  }

  else
  {
    audioSessionAVAudioSession_CopyMXSessionPropertiesAndErrors_cold_2(&v24);
    v21 = v24;
  }

  objc_autoreleasePoolPop(v7);
  return v21;
}

uint64_t audioSessionAVAudioSession_propertyIsInDenyList(void *value)
{
  if (audioSessionAVAudioSession_propertyIsInDenyList_onceToken != -1)
  {
    audioSessionAVAudioSession_propertyIsInDenyList_cold_1();
  }

  v2 = audioSessionAVAudioSession_propertyIsInDenyList_denyList;

  return CFSetContainsValue(v2, value);
}

uint64_t audioSessionAVAudioSession_copyRoutingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [*CMBaseObjectGetDerivedStorage() routingContextUID];
  if (v4)
  {
    v8 = *MEMORY[0x1E69AF350];
    v9[0] = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v5 = FigRoutingContextRemoteCopyContextForUUID();
  }

  else
  {
    audioSessionAVAudioSession_copyRoutingContext_cold_1(&v7);
    v5 = v7;
  }

  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t audioSessionAVAudioSession_copySpatializationCapabilities(uint64_t a1, const __CFAllocator *a2, uint64_t a3, __CFDictionary **a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  v8 = [*CMBaseObjectGetDerivedStorage() spatialPreferences:a3];
  if (!v8)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_3(v30);
LABEL_26:
    v24 = v30[0];
    goto LABEL_23;
  }

  v9 = v8;
  Mutable = CFDictionaryCreateMutable(a2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_2(v30);
    goto LABEL_26;
  }

  v11 = Mutable;
  v12 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    audioSessionAVAudioSession_copySpatializationCapabilities_cold_1(v30);
    v24 = v30[0];
    goto LABEL_29;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v9 spatialAudioSources];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v26 + 1) + 8 * i) intValue];
        FigCFArrayAppendInt32();
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if ([objc_msgSend(v9 "spatialAudioSources")] && objc_msgSend(v9, "prefersHeadTrackedSpatialization"))
  {
    FigCFArrayAppendInt32();
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_spatialAudioSources", v12);
  [v9 maximumSpatializableChannels];
  v18 = FigCFDictionarySetInt32();
  if (v18)
  {
    v24 = v18;
LABEL_29:
    CFRelease(v11);
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v19 = [v9 prefersLossyAudioSources];
  v20 = *MEMORY[0x1E695E4D0];
  v21 = *MEMORY[0x1E695E4C0];
  if (v19)
  {
    v22 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v22 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_prefersLossyAudioSources", v22);
  if ([v9 alwaysSpatialize])
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  CFDictionarySetValue(v11, @"SpatialCapabilitiesKey_alwaysSpatialize", v23);
  v24 = 0;
  *a4 = v11;
LABEL_22:
  CFRelease(v12);
LABEL_23:
  objc_autoreleasePoolPop(v7);
  return v24;
}

CFSetRef __audioSessionAVAudioSession_propertyIsInDenyList_block_invoke()
{
  values[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69AFDC0];
  values[0] = *MEMORY[0x1E69B03B8];
  values[1] = v0;
  result = CFSetCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9F8]);
  audioSessionAVAudioSession_propertyIsInDenyList_denyList = result;
  return result;
}

void __audioSessionAVAudioSession_canUseGenericPipe_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.private.coreaudio.mxsessionPropertyPipe", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(v3);
      }

      else
      {
        Value = 0;
      }

      CFRelease(v3);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v1);
  }

  else
  {
    Value = 0;
  }

  audioSessionAVAudioSession_canUseGenericPipe_canUseGenericPipe = Value;
}

void __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  v7 = 0;
  v5 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke_2;
  v6[3] = &__block_descriptor_40_e51_v24__0__OpaqueFigAudioSession__8__NSNotification_16l;
  v6[4] = a3;
  audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(v5, 2, a2, v6, &v7);
  if (v7)
  {
    CFDictionarySetValue(*(a1 + 40), a2, v7);
  }
}

void audioSessionAVAudioSession_addAVAudioSessionObserverForNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = objc_autoreleasePoolPush();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 128);
  v12 = *DerivedStorage;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __audioSessionAVAudioSession_addAVAudioSessionObserverForNotification_block_invoke;
  v14[3] = &unk_1E7495B00;
  v14[4] = a4;
  v14[5] = v11;
  v13 = [v12 addObserverForType:a2 name:a3 block:v14];
  if (a5)
  {
    *a5 = v13;
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t __audioSessionAVAudioSession_registerMXNotificationTranslationCallbacks_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  [a3 userInfo];

  return FigDispatchAsyncPostNotification();
}

uint64_t __audioSessionAVAudioSession_registerSpatialNotificationTranslationCallbacks_block_invoke(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigDispatchAsyncPostNotification();
}

void __audioSessionAVAudioSession_registerLossNotificationCallbacks_block_invoke(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64();
  FigServer_IsServerProcess();
  FigCFDictionarySetValue();
  CMNotificationCenterGetDefaultLocalCenter();
  FigDispatchAsyncPostNotification();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

BOOL FigCGRectEqualToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v8 = fabs(a2) != INFINITY;
  if (fabs(a1) == INFINITY || !v8)
  {
    v12 = fabs(a5) == INFINITY;
    return fabs(a6) == INFINITY || v12;
  }

  else
  {
    v9 = fabs(a6) != INFINITY;
    v10 = fabs(a5) == INFINITY || !v9;
    if (!v10 && (__figCGRectStandardize(&v17), __figCGRectStandardize(&v13), v17 == v13) && v18 == v14 && v19 == v15)
    {
      return v20 == v16;
    }

    else
    {
      return 0;
    }
  }
}

double *__figCGRectStandardize(double *result)
{
  v1 = result[2];
  if (v1 < 0.0 || result[3] < 0.0)
  {
    v2 = result[1];
    v3 = INFINITY;
    v4 = fabs(v2) != INFINITY;
    if (fabs(*result) == INFINITY || !v4)
    {
      v6 = 0.0;
      v1 = 0.0;
      v7 = INFINITY;
    }

    else
    {
      v8 = result[3];
      v9 = v1 + *result;
      if (v1 >= 0.0)
      {
        v7 = *result;
      }

      else
      {
        v1 = -v1;
        v7 = v9;
      }

      v6 = -v8;
      if (v8 < 0.0)
      {
        v3 = v2 + v8;
      }

      else
      {
        v6 = result[3];
        v3 = result[1];
      }
    }

    *result = v7;
    result[1] = v3;
    result[2] = v1;
    result[3] = v6;
  }

  return result;
}

CFMutableDictionaryRef FigCGSizeCreateDictionaryRepresentation(double a1, double a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  figCGAddSizeToDictionary(Mutable, a1, a2);
  v7.width = a1;
  v7.height = a2;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v7);
  if (!FigCFEqual())
  {
    FigCGSizeCreateDictionaryRepresentation_cold_1();
    if (!DictionaryRepresentation)
    {
      return Mutable;
    }

    goto LABEL_3;
  }

  if (DictionaryRepresentation)
  {
LABEL_3:
    CFRelease(DictionaryRepresentation);
  }

  return Mutable;
}

void figCGAddSizeToDictionary(__CFDictionary *a1, double a2, double a3)
{
  v7 = a2;
  v8 = a3;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &v7);
  v6 = CFNumberCreate(v4, kCFNumberCGFloatType, &v8);
  CFDictionaryAddValue(a1, @"Width", v5);
  CFDictionaryAddValue(a1, @"Height", v6);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t FigCGSizeMakeWithDictionaryRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v4 = 0;
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  v5 = &v9;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    result = CFDictionaryGetValue(theDict, *(&off_1E7495B60 + v4));
    if (!result)
    {
      break;
    }

    result = CFNumberGetValue(result, kCFNumberCGFloatType, v5);
    if (!result)
    {
      break;
    }

    v6 = 0;
    v5 = &v9 + 8;
    v4 = 1;
    if ((v7 & 1) == 0)
    {
      *a2 = v9;
      return 1;
    }
  }

  return result;
}

uint64_t FigCGRectMakeWithDictionaryRepresentation(CFDictionaryRef theDict, _OWORD *a2)
{
  v4 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  while (1)
  {
    result = CFDictionaryGetValue(theDict, *(&off_1E7495B70 + v4));
    if (!result)
    {
      break;
    }

    result = CFNumberGetValue(result, kCFNumberCGFloatType, &v7 + v4);
    if (!result)
    {
      break;
    }

    v4 += 8;
    if (v4 == 32)
    {
      v6 = v8;
      *a2 = v7;
      a2[1] = v6;
      return 1;
    }
  }

  return result;
}

uint64_t FigToolViewStart(uint64_t a1)
{
  if (*(a1 + 40))
  {
    FigToolViewStart_cold_1(&v6);
    return v6;
  }

  else
  {
    v5 = @"figtoolview.display";
    v2 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v5, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v3 = FigThreadCreate();
    if (!v3)
    {
      dispatch_semaphore_wait(*(a1 + 56), 0xFFFFFFFFFFFFFFFFLL);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  return v3;
}

uint64_t ftvFramebufferThread(uint64_t a1)
{
  cf = 0;
  *(a1 + 48) = CFRunLoopGetCurrent();
  if (IOMobileFramebufferGetSecondaryDisplay())
  {
    goto LABEL_10;
  }

  VSyncRunLoopSource = IOMobileFramebufferGetVSyncRunLoopSource();
  if (VSyncRunLoopSource)
  {
    v3 = *MEMORY[0x1E695E8E0];
    CFRunLoopAddSource(*(a1 + 48), VSyncRunLoopSource, *MEMORY[0x1E695E8E0]);
    HotPlugRunLoopSource = IOMobileFramebufferGetHotPlugRunLoopSource();
    if (HotPlugRunLoopSource)
    {
      CFRunLoopAddSource(*(a1 + 48), HotPlugRunLoopSource, v3);
      if (!IOMobileFramebufferEnableHotPlugDetectNotifications())
      {
        v6 = 0;
        if (!IOMobileFramebufferGetDigitalOutState())
        {
          ftvFramebufferThread_cold_2(&v6, a1, &cf);
          goto LABEL_7;
        }
      }

LABEL_10:
      ftvFramebufferThread_cold_1(&cf, a1);
      return 0;
    }
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t FigToolViewCopyPixelBufferAttributes(uint64_t a1, uint64_t a2, __CFDictionary **a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0x3432306634323076;
  v4 = v13;
  FigGetAlignmentForIOSurfaceOutputToDisplayService();
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = CFNumberCreate(v5, kCFNumberSInt32Type, v4);
    CFArrayAppendValue(v7, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v8 = 0;
    v4 = v13 + 4;
  }

  while ((v9 & 1) != 0);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966130], v7);
  if (v7)
  {
    CFRelease(v7);
  }

  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  *a3 = Mutable;
  return 0;
}

void FigToolViewSetVideoGravity(uint64_t a1, unsigned int a2)
{
  if (a2 < 3)
  {
    if (*(a1 + 224) != a2)
    {
      FigSimpleMutexLock();
      *(a1 + 224) = a2;
      FigSimpleMutexUnlock();
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954481, "<<< ftv(nero) >>>", 1606, v2);
  }
}

uint64_t FigToolViewAddVisualContext(CFMutableArrayRef *a1, const void *a2)
{
  FigSimpleMutexLock();
  CFArrayAppendValue(*a1, a2);
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigToolViewMarkNeedsClear(uint64_t a1)
{
  *(a1 + 25) = 1;
  FigSimpleMutexLock();
  v2 = 0;
  v3 = a1 + 192;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = a1 + 160 + 16 * v2;
    if (*v6)
    {
      CFRelease(*v6);
      *v6 = 0;
    }

    *(v6 + 8) = 1;
    v7 = *(v3 + 8 * v2);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 8 * v2) = 0;
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);

  return FigSimpleMutexUnlock();
}

void FigToolViewWaitUntilDoneThenDispose(uint64_t a1)
{
  FigThreadJoin();
  *(a1 + 8) = 0;
  CFArrayRemoveAllValues(*a1);
  if (*a1)
  {
    CFRelease(*a1);
  }

  FigSimpleMutexDestroy();
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 56) = 0;
  }

  if (*(a1 + 152))
  {
    FigSimpleMutexDestroy();
    *(a1 + 152) = 0;
  }

  if (*(a1 + 208))
  {
    FigSimpleMutexDestroy();
    *(a1 + 208) = 0;
  }

  v3 = 0;
  v4 = a1 + 192;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (a1 + 160 + 16 * v3);
    if (*v7)
    {
      CFRelease(*v7);
      *v7 = 0;
    }

    v8 = *(v4 + 8 * v3);
    if (v8)
    {
      CFRelease(v8);
      *(v4 + 8 * v3) = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v9 = *(a1 + 248);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 248) = 0;
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 232) = 0;
  }

  v11 = *(a1 + 240);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 240) = 0;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    CFRelease(v12);
  }

  free(a1);
}

uint64_t FigToolViewSetOverlayImage(uint64_t result, unsigned int a2, const void *a3)
{
  if (a2 <= 1)
  {
    v6 = result;
    FigSimpleMutexLock();
    v7 = v6 + 16 * a2;
    v10 = *(v7 + 160);
    v9 = v7 + 160;
    v8 = v10;
    *v9 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    *(v9 + 8) = 1;

    return FigSimpleMutexUnlock();
  }

  return result;
}

void ftvIOMFHotPlugNotificationCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 64))
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_3;
  }

  v25[0] = 0;
  IOMobileFramebufferDisableVSyncNotifications();
  if (!ftvClearIOMFLayers(a1, v25))
  {
    IOMobileFramebufferSwapWait();
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = a3 + 72 + 32 * v13;
    *v16 = 0;
    v17 = *(v16 + 8);
    if (v17)
    {
      CFRelease(v17);
      *(v16 + 8) = 0;
    }

    v18 = 0;
    v19 = v16 + 16;
    v20 = 1;
    do
    {
      v21 = v20;
      v22 = *(v19 + 8 * v18);
      if (v22)
      {
        CFRelease(v22);
        *(v19 + 8 * v18) = 0;
      }

      v20 = 0;
      v18 = 1;
    }

    while ((v21 & 1) != 0);
    v14 = 0;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  *(a3 + 68) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 64) = 0;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (a2)
  {
LABEL_3:
    v23 = 1065353216;
    v24 = 0;
    if (!IOMobileFramebufferSetDisplayDevice() && !FigIOMFSelectBestDigitalOutMode(a1, *(a3 + 32), &v23) && !IOMobileFramebufferGetID())
    {
      v6 = *&v23;
      if (!IOMobileFramebufferGetDisplaySize() && !ftvClearIOMFLayers(a1, &v24))
      {
        *(a3 + 72) = v24;
        if (!IOMobileFramebufferEnableVSyncNotifications())
        {
          *(a3 + 64) = 1;
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (Mutable)
          {
            v8 = Mutable;
            DictionaryRepresentation = FigCGSizeCreateDictionaryRepresentation(*(a3 + 136), *(a3 + 144));
            if (DictionaryRepresentation)
            {
              v10 = DictionaryRepresentation;
              CFDictionarySetValue(v8, @"DisplaySize", DictionaryRepresentation);
              v11 = MEMORY[0x1E695E4D0];
              if (v6 == 1.0)
              {
                v11 = MEMORY[0x1E695E4C0];
              }

              CFDictionarySetValue(v8, @"IsOverscanned", *v11);
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              CMNotificationCenterGetDefaultLocalCenter();
              CMNotificationCenterPostNotification();
              CFRelease(v10);
            }

            CFRelease(v8);
          }
        }
      }
    }
  }
}

void ftvCFDictionarySetSInt32Value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t OUTLINED_FUNCTION_3_145(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 a39, uint64_t a40)
{
  *(v40 - 176) = a39;
  *(v40 - 160) = a40;

  return CMBaseObjectGetVTable();
}

void FigSampleBufferRenderSynchronizerServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294951145, "<< FigSBRSServer >>", 808, v1);
  }

  else
  {
    FigServer_IsMediaplaybackd();

    FigXPCServerStart();
  }
}

uint64_t synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = FigXPCServerLookupAndRetainAssociatedObject();
  if (v3)
  {
    return v3;
  }

  synchronizerServer_lookupAndRetainSBRSByObjectIDForConnection_cold_1(&v6);
  return v6;
}

void synchronizerServer_disposeFSBRSServer(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    *(a1 + 64) = 1;
    *(a1 + 72) = 0;
    FigSimpleMutexUnlock();

    CFRelease(a1);
  }
}

void synchronizerServer_Finalize(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    FigSyncMomentSourceDestroy(v2);
    a1[4] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
    a1[5] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
    a1[6] = 0;
  }

  FigSimpleMutexDestroy();
  v5 = a1[10];
  if (v5)
  {
    os_release(v5);
    a1[10] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    CFRelease(v6);
    a1[3] = 0;
  }
}

uint64_t __FigSBRSServerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_131 = result;
  return result;
}

void synchronizerServer_syncMomentDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void synchronizerServer_timebaseSyncUpdateCallback_Async(const void **a1)
{
  v6 = 0;
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      FigSimpleMutexLock();
      if (*(v4 + 64) || FigXPCCreateBasicMessage() || (v5 = CFDataCreate(0, v2, 120)) == 0)
      {
        FigSimpleMutexUnlock();
      }

      else
      {
        synchronizerServer_timebaseSyncUpdateCallback_Async_cold_1(&v6, v5, v4, (v4 + 56));
      }
    }

    FigXPCRelease();
    CFRelease(v3);
  }

  else
  {
    FigXPCRelease();
    v4 = 0;
  }

  free(v2);
  free(a1);
  if (v4)
  {
    CFRelease(v4);
  }
}

uint64_t FigPlayerCelesteOneTimeInitialization()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigPlayerCelesteOneTimeInitialization_block_invoke;
  block[3] = &unk_1E7486A28;
  block[4] = &v3;
  if (FigPlayerCelesteOneTimeInitialization_onceToken != -1)
  {
    dispatch_once(&FigPlayerCelesteOneTimeInitialization_onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void __FigPlayerCelesteOneTimeInitialization_block_invoke_2(uint64_t a1)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  v2 = qword_1ED4CBA68;

  dispatch_sync(v2, &__block_literal_global_18_3);
}

void playerceleste_dumpPlayers(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __playerceleste_dumpPlayers_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = DerivedStorage;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, v6);
  }

  else
  {
    __playerceleste_dumpPlayers_block_invoke(v6);
  }
}

uint64_t FigPlayerCelesteCreateWithOptions(uint64_t a1, const void *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  theString = 0;
  v14 = 0;
  memset(&v15[8], 0, 80);
  cf = 0;
  v12 = 0;
  v6 = FigPlayerCelesteOneTimeInitialization();
  if (v6)
  {
    v10 = v6;
    v7 = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    FigPlayerCelesteCreateWithOptions_cold_11(v15);
LABEL_12:
    v7 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    FigPlayerCelesteCreateWithOptions_cold_10(v15);
    goto LABEL_12;
  }

  v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040EDED9539uLL);
  if (!v7)
  {
    FigPlayerCelesteCreateWithOptions_cold_9(v15);
    goto LABEL_14;
  }

  FigPlayerGetClassID();
  v8 = CMDerivedObjectCreate();
  if (!v8)
  {
    FigPlayerCelesteCreateWithOptions_cold_8(v15);
LABEL_14:
    v10 = LODWORD(v15[0]);
    goto LABEL_7;
  }

  v10 = v8;
LABEL_7:
  free(v7);
  return v10;
}

uint64_t playerceleste_callSetConnectionActive(uint64_t a1, uint64_t a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = *(result + 80);
  if (v4)
  {
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 24);
    result = VTable + 24;
    v6 = v7;
    if (v7)
    {
      v8 = *(v6 + 24);
      if (v8)
      {

        return v8(v4, a2);
      }
    }
  }

  return result;
}

uint64_t playerceleste_createFigAudioSessionUsingAudioSessionID(const __CFAllocator *a1, uint64_t a2, const __CFNumber *a3, CFTypeRef *a4)
{
  valuePtr = 0;
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  if (FPSupport_CanUseCMSession())
  {
    v9 = AudioSessionCopyCMSessionForSessionID();
    if (v9)
    {
      v10 = v9;
      v11 = FigAudioSessionCreateWithCMSession(a1, v9, &cf);
      SInt32 = 0;
      if (v11)
      {
        v21 = v11;
        v13 = 0;
        goto LABEL_18;
      }

      v13 = 0;
LABEL_10:
      SInt32 = FigCFNumberCreateSInt32();
      v18 = cf;
      if (cf && (v19 = *(CMBaseObjectGetVTable() + 16)) != 0)
      {
        v20 = *(v19 + 56);
        if (!v20)
        {
          v21 = 4294948071;
          if (!v10)
          {
LABEL_19:
            if (!v13)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

LABEL_18:
          CFRelease(v10);
          goto LABEL_19;
        }

        v21 = v20(v18, *MEMORY[0x1E69AFDC8], SInt32);
        if (!v21)
        {
          *a4 = cf;
          cf = 0;
          if (!v10)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v21 = 4294948075;
      }

      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    playerceleste_createFigAudioSessionUsingAudioSessionID_cold_1(v23);
LABEL_31:
    v21 = LODWORD(v23[0]);
    goto LABEL_23;
  }

  if (a2)
  {
    v14 = (CMBaseObjectGetDerivedStorage() + 165);
  }

  else
  {
    v14 = "";
  }

  v15 = CFStringCreateWithFormat(a1, 0, @"FigPlayer %s", v14);
  if (!v15)
  {
    playerceleste_createFigAudioSessionUsingAudioSessionID_cold_2(v23);
    goto LABEL_31;
  }

  v13 = v15;
  v16 = *(DerivedStorage + 36);
  v23[0] = *(DerivedStorage + 20);
  v23[1] = v16;
  v17 = FigAudioSessionCreateWithAVAudioSessionSiblingForAudioSessionID(a1, valuePtr, v23, v15, &cf);
  v10 = 0;
  if (!v17)
  {
    goto LABEL_10;
  }

  v21 = v17;
  SInt32 = 0;
LABEL_20:
  CFRelease(v13);
LABEL_21:
  if (SInt32)
  {
    CFRelease(SInt32);
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  return v21;
}

void playerceleste_reflectSubPlayerNotificationToClient(uint64_t a1, const void *a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a2)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (CFEqual(a3, @"RenderingStoppedForConfigurationChange"))
    {
      v9 = CMBaseObjectGetDerivedStorage();
      if (!FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue() || (v10 = *(v9 + 200)) == 0)
      {
        if (qword_1ED4CBA70 != -1)
        {
          __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
        }

        v10 = qword_1ED4CBA68;
      }

      CFRetain(a2);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __playerceleste_handleSubPlayerConfigurationChange_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a2;
      dispatch_async(v10, block);
    }

    else
    {
      if (*(DerivedStorage + 120) && CFEqual(a3, @"UserVolumeDidChange"))
      {
        v11 = playerceleste_copyUniqueClientID(a2);
        if (a5 && (Value = CFDictionaryGetValue(a5, *MEMORY[0x1E69AED70])) != 0)
        {
          v13 = CFEqual(v11, Value);
          CFRelease(v11);
          if (v13)
          {
            return;
          }
        }

        else
        {
          CFRelease(v11);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();

      CMNotificationCenterPostNotification();
    }
  }
}

double __playerceleste_getSharedQueue_block_invoke()
{
  qword_1ED4CBA68 = FigDispatchQueueCreateWithPriority();
  if (!qword_1ED4CBA68)
  {
    v2 = qword_1EAF17950;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 4294954434, "<<<< CELESTE >>>>", 884, v0);
  }

  return result;
}

void __playerceleste_dumpPlayers_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v32 = 0;
  number = 0;
  cf = 0;
  v27 = 0;
  valuePtr = 0;
  v26 = 0;
  theArray = 0;
  v25 = 0;
  memset(__str, 0, sizeof(__str));
  memset(v33, 0, sizeof(v33));
  v2 = *MEMORY[0x1E695E480];
  FigPlayerGetFigBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, @"RequiresNumVideoSlots", v2, &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberCFIndexType, &valuePtr);
    }
  }

  v6 = *(a1 + 32);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v7)
  {
    v7(v6, 0, &v32);
  }

  if (v32)
  {
    FigPlaybackItemGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, @"HasEnabledAudio", v2, &cf);
    }

    FigPlaybackItemGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      v13(v12, @"HasEnabledVideo", v2, &v31);
    }

    FigPlaybackItemGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      v16(v15, @"VisualContextArray", v2, &theArray);
    }
  }

  v17 = *(*(a1 + 40) + 88);
  if (v17)
  {
    v18 = *(CMBaseObjectGetVTable() + 16);
    if (v18)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        v19(v17, @"FAS_AudioSessionID", v2, &v27);
        if (v27)
        {
          CFNumberGetValue(v27, kCFNumberSInt32Type, &v26);
        }
      }
    }
  }

  FigServer_CopyProcessName();
  if (valuePtr < 1)
  {
    strcpy(__str, ", has no attached video layers");
  }

  else
  {
    if (valuePtr == 1)
    {
      v20 = "";
    }

    else
    {
      v20 = "s";
    }

    snprintf(__str, 0x100uLL, ", has %d attached video layer%s", valuePtr, v20);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      if (Count == 1)
      {
        v22 = "";
      }

      else
      {
        v22 = "s";
      }

      snprintf(v33, 0x100uLL, " with %d visual context%s", Count, v22);
    }
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (number)
  {
    CFRelease(number);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

uint64_t FigAudioSessionCopyRequestedConfigurationForProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t FigServer_SleepCallBack(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80);
  if (a3 == -536870112)
  {
    FigPlayerCMSession_SystemWillPowerOn();
  }

  else
  {
    if (a3 == -536870272)
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 0;
      FigSimpleMutexLock();
      v6 = qword_1ED4CBA90;
      if (qword_1ED4CBA90)
      {
        do
        {
          v7 = FigCFWeakReferenceTableCopyValue();
          if (v7)
          {
            DerivedStorage = CMBaseObjectGetDerivedStorage();
            if (*(DerivedStorage + 128))
            {
              goto LABEL_11;
            }

            CFRelease(v7);
          }

          v6 = *v6;
        }

        while (v6);
      }

      DerivedStorage = 0;
      v7 = 0;
LABEL_11:
      FigSimpleMutexUnlock();
      if (v7)
      {
        v9 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
        v10 = *(DerivedStorage + 200);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __fmpServer_systemWillSleep_block_invoke;
        block[3] = &unk_1E747EC60;
        block[5] = DerivedStorage;
        block[6] = v7;
        block[4] = v13;
        if (v9 && v10)
        {
          dispatch_async_and_wait(v10, block);
        }

        else
        {
          __fmpServer_systemWillSleep_block_invoke(block);
        }

        CFRelease(v7);
      }

      _Block_object_dispose(v13, 8);
      FigPlayerCMSession_SystemWillSleep();
    }

    else if (a3 != -536870288)
    {
      return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
    }

    IOAllowPowerChange(dword_1ED4CBA5C, a4);
  }

  return MEMORY[0x19A8D3680](qword_1ED4CBA80, 0);
}

void sub_1967F74FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __fmpServer_systemWillSleep_block_invoke(void *a1)
{
  cf = 0;
  if (*(a1[5] + 130))
  {
    FigSimpleMutexLock();
    playerceleste_notifyImminentRateChange(a1[6], 0.0);
    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 11, &cf);
      v2 = *(a1[5] + 80);
      v3 = cf;
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v4)
      {
        v5 = v4(v2, v3, 0.0);
LABEL_8:
        *(*(a1[4] + 8) + 24) = v5;
        *(CMBaseObjectGetDerivedStorage() + 130) = 0;
        FigSimpleMutexUnlock();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *(a1[5] + 80);
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v7)
      {
        v5 = v7(v6, 0.0);
        goto LABEL_8;
      }
    }

    v5 = -12782;
    goto LABEL_8;
  }

LABEL_9:
  if (playerceleste_canCallSetConnectionActive(a1[6]))
  {
    playerceleste_callSetConnectionActive(a1[6], 0);
  }

  *(a1[5] + 128) = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t playerceleste_canCallSetConnectionActive(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 80);
  if (result)
  {
    v2 = *(CMBaseObjectGetVTable() + 24);
    return v2 && *(v2 + 24);
  }

  return result;
}

void playerceleste_notifyImminentRateChange(uint64_t a1, float a2)
{
  if (*(CMBaseObjectGetDerivedStorage() + 80))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v3 = Mutable;
      FigCFDictionarySetFloat32();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterPostNotification();

      CFRelease(v3);
    }
  }
}

uint64_t FigAudioSessionSetMXSessionProperty_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    VTable = CMBaseObjectGetVTable();
    v8 = *(VTable + 16);
    result = VTable + 16;
    v7 = v8;
    if (v8)
    {
      v9 = *(v7 + 56);
      if (v9)
      {

        return v9(v5, a2, a3);
      }
    }
  }

  return result;
}

__CFString *playerceleste_copyUniqueClientID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"%u-%lld", *(DerivedStorage + 16), *(DerivedStorage + 8));
  return Mutable;
}

void __playerceleste_handleSubPlayerConfigurationChange_block_invoke(uint64_t a1)
{
  FigPlayerReevaluateRouteConfigurationForReason(*(a1 + 32), 0, @"SubPlayerConfigurationChanged from celeste player");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void playerceleste_updatePlayerBasedOnAppState(uint64_t a1, int a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 176);
  voucher_adopt();
  FigDebugGetAdoptedVoucherProcessIDAndUUIDString();
  if (a2 <= 3)
  {
    if ((a2 - 1) >= 2 && !a2)
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  if (a2 != 4)
  {
    if (a2 == 8)
    {
LABEL_8:
      v4 = MEMORY[0x1E695E4C0];
LABEL_9:
      v5 = *v4;
      FigPlayerGetFigBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v8(v7, @"ClientSuspended", v5);
      }

      FigPlayerGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v11)
      {
        v12 = v10;
        v13 = v5;
LABEL_13:
        v11(v12, 0x1F0B29EF8, v13);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_3:
    v4 = MEMORY[0x1E695E4D0];
    goto LABEL_9;
  }

  FigPlayerGetFigBaseObject();
  v15 = v14;
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v16)
  {
    v16(v15, @"ClientSuspended", *MEMORY[0x1E695E4C0]);
  }

  FigPlayerGetFigBaseObject();
  v18 = v17;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v13 = *MEMORY[0x1E695E4D0];
    v12 = v18;
    goto LABEL_13;
  }

LABEL_14:
}

void playerceleste_InterruptionNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_InterruptionNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = a2;
  block[6] = DerivedStorage;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_InterruptionNotification_block_invoke(block);
  }
}

void playerceleste_availableFormatsChangedNotification(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_availableFormatsChangedNotification_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, block);
  }

  else
  {
    FigPlayerReevaluateRouteConfigurationForReason(a2, 0, @"CelestePlayerInitiated_AvailableFormatsChanged");
  }
}

void playerceleste_ApplicationStateDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_ApplicationStateDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = DerivedStorage;
  block[6] = a2;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_ApplicationStateDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_PiPIsPossibleDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __playerceleste_PiPIsPossibleDidChangeNotification_block_invoke;
  v10[3] = &__block_descriptor_48_e5_v8__0l;
  v10[4] = a2;
  v10[5] = a5;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, v10);
  }

  else
  {
    __playerceleste_PiPIsPossibleDidChangeNotification_block_invoke(v10);
  }
}

void playerceleste_DisplayLayoutDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_DisplayLayoutDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a2;
  block[5] = a5;
  block[6] = DerivedStorage;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_DisplayLayoutDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_ActiveAudioRouteDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FigCFCopyCompactDescription();
  v9 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  if (dword_1EAF17958)
  {
    v15 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v11 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v12 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_64_e5_v8__0l;
  block[4] = a2;
  block[5] = v9;
  block[6] = DerivedStorage;
  block[7] = a5;
  if (!v11 || !v12)
  {
    __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke(block);
    if (!v9)
    {
      return;
    }

    goto LABEL_12;
  }

  dispatch_async_and_wait(v12, block);
  if (v9)
  {
LABEL_12:
    CFRelease(v9);
  }
}

void playerceleste_PickableRoutesDidChangeNotification(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v5 = *(DerivedStorage + 200);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __playerceleste_PickableRoutesDidChangeNotification_block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a2;
  v6[5] = DerivedStorage;
  if (v4 && v5)
  {
    dispatch_async_and_wait(v5, v6);
  }

  else
  {
    __playerceleste_PickableRoutesDidChangeNotification_block_invoke(v6);
  }
}

void playerceleste_AudioSessionIsActiveDidChangeNotification(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  dispatch_assert_queue_V2(qword_1ED4CBA68);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v9 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = a5;
  block[5] = DerivedStorage;
  block[6] = a2;
  if (v8 && v9)
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    __playerceleste_AudioSessionIsActiveDidChangeNotification_block_invoke(block);
  }
}

void playerceleste_notifyInterruptionWithInterruptorNameAndStatus(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  keys = @"InterruptorName";
  v9 = 0;
  values = a3;
  v7 = 0;
  if (a4)
  {
    v9 = @"InterruptionStatus";
    v7 = a4;
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t playerceleste_setRateInternal(uint64_t a1, uint64_t a2, uint64_t a3, int a4, CMTime *a5, CMTime *a6, uint64_t a7, float a8)
{
  v51 = *MEMORY[0x1E69E9840];
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigCFDictionaryGetInt32IfPresent();
  if (a8 == 0.0)
  {
    if (a2)
    {
      goto LABEL_3;
    }

    goto LABEL_25;
  }

  FigCFDictionaryGetBooleanIfPresent();
  v26 = FigCFCopyCompactDescription();
  if (dword_1EAF17958)
  {
    allocatora = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(allocatora, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v26)
  {
    CFRelease(v26);
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  v24 = playerceleste_beginInterruptionInternal(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (!v24)
  {
    *(CMBaseObjectGetDerivedStorage() + 130) = 1;
    if (a2)
    {
LABEL_3:
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      v18 = MEMORY[0x1E6960C70];
      if (v17)
      {
        v19 = *(DerivedStorage + 80);
        v20 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v20)
        {
LABEL_11:
          v50 = *v18;
          FigCFDictionaryGetCMTimeIfPresent();
          v49 = v50;
          v25 = &v49;
LABEL_12:
          playerceleste_setRateWithManualFade(a1, v25, a8);
          v24 = 0;
          goto LABEL_45;
        }

        v21 = v20(v19, a2, a8);
      }

      else
      {
        v49 = **&MEMORY[0x1E6960C70];
        FigCFDictionaryGetCMTimeIfPresent();
        v22 = *(DerivedStorage + 80);
        v46 = v49;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (!v23)
        {
          v24 = 4294954514;
LABEL_10:
          if (v24 != -12782)
          {
LABEL_45:
            if (a8 == 0.0 && !v24)
            {
              *(CMBaseObjectGetDerivedStorage() + 130) = 0;
            }

            goto LABEL_48;
          }

          goto LABEL_11;
        }

        v50 = v46;
        v21 = v23(v22, &v50, a8);
      }

      v24 = v21;
      goto LABEL_10;
    }

LABEL_25:
    if (a8 != 0.0 || *(DerivedStorage + 116) == 0.0)
    {
      v34 = *(DerivedStorage + 80);
      if (a4)
      {
        *&v47.value = *&a5->value;
        v47.epoch = a5->epoch;
        *&v45.value = *&a6->value;
        v45.epoch = a6->epoch;
        v35 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (!v35)
        {
          v24 = 4294954514;
          goto LABEL_45;
        }

        v50 = v47;
        v49 = v45;
        v36 = v35(v34, &v50, &v49, a7, a8);
      }

      else if (*(*(CMBaseObjectGetVTable() + 16) + 104))
      {
        FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a3, &cf);
        v39 = *(DerivedStorage + 80);
        v40 = cf;
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 104);
        if (!v41)
        {
          v24 = 4294954514;
          goto LABEL_48;
        }

        v36 = v41(v39, v40, a8);
      }

      else
      {
        v36 = FigPlayerSetRate(*(DerivedStorage + 80), a8);
      }

      v24 = v36;
      goto LABEL_45;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 104))
    {
      FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], a3, &cf);
      CMTimeMakeWithSeconds(&v50, *(DerivedStorage + 116), 1000);
      FigCFDictionarySetCMTime();
      v30 = *(DerivedStorage + 80);
      v31 = cf;
      v32 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (!v32)
      {
LABEL_42:
        CMTimeMakeWithSeconds(&v50, *(DerivedStorage + 116), 1000);
        v25 = &v50;
        goto LABEL_12;
      }

      v33 = v32(v30, v31, a8);
    }

    else
    {
      v37 = *(DerivedStorage + 80);
      CMTimeMakeWithSeconds(&v49, *(DerivedStorage + 116), 1000);
      v38 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (!v38)
      {
        v24 = 4294954514;
LABEL_41:
        if (v24 != -12782)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v50 = v49;
      v33 = v38(v37, &v50, a8);
    }

    v24 = v33;
    goto LABEL_41;
  }

  v28 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v28, @"CurrentRate");
  CFArrayAppendValue(v28, @"CurrentPlaybackState");
  NotificationPayloadForProperties = FPSupport_CreateNotificationPayloadForProperties(a1, 0, v28);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (NotificationPayloadForProperties)
  {
    CFRelease(NotificationPayloadForProperties);
  }

  if (v28)
  {
    CFRelease(v28);
  }

LABEL_48:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v24;
}

uint64_t playerceleste_revokePurgeAssertionIfNecessary(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 192);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 192) = 0;
  }

  return FigSimpleMutexUnlock();
}

void playerceleste_setRateWithManualFade(uint64_t a1, CMTime *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  number = 0;
  valuePtr = 0.0;
  v19 = *a2;
  if (CMTimeGetSeconds(&v19) >= 5.0)
  {
    v6 = 500000;
  }

  else
  {
    v19 = *a2;
    v6 = (CMTimeGetSeconds(&v19) * 100000.0);
  }

  FigPlayerGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v10 = 0.0;
  if (v9)
  {
    v9(v8, @"UserVolume", *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      CFRelease(number);
      v10 = valuePtr;
    }
  }

  v11 = v10 / 10.0;
  if (a3 == 0.0)
  {
    while (v10 > 0.0)
    {
      v10 = v10 - v11;
      if (v10 <= 0.0)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v10;
      }

      fpcel_setMovieVolumeOnSubPlayer(v16);
      usleep(v6);
    }

    v17 = *(DerivedStorage + 80);
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v18)
    {
      v18(v17, a3);
    }
  }

  else
  {
    fpcel_setMovieVolumeOnSubPlayer(0.0);
    v12 = *(DerivedStorage + 80);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v13)
    {
      v13(v12, a3);
    }

    v14 = valuePtr;
    if (valuePtr > 0.0)
    {
      v15 = 0.0;
      do
      {
        if ((v11 + v15) >= v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v11 + v15;
        }

        fpcel_setMovieVolumeOnSubPlayer(v15);
        usleep(v6);
        v14 = valuePtr;
      }

      while (v15 < valuePtr);
    }
  }

  fpcel_setMovieVolumeOnSubPlayer(valuePtr);
  *(DerivedStorage + 124) = a3;
}

void fpcel_setMovieVolumeOnSubPlayer(float a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  FigPlayerGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(v3, @"UserVolume", v1);
  }

  CFRelease(v1);
}

uint64_t playerceleste_pauseCurrentlyPlayingMovie(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  playerceleste_notifyImminentRateChange(a1, 0.0);
  result = playerceleste_setRateInternal(a1, 0, a2, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, 0.0);
  *(DerivedStorage + 124) = 0;
  return result;
}

void __playerceleste_deferItemRelease_block_invoke(uint64_t a1)
{
  v2 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferItemRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v3 = *(a1 + 32);
  block[4] = *(a1 + 40);
  if (v2 && v3)
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    __playerceleste_deferItemRelease_block_invoke_2(block);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }
}

void __playerceleste_deferItemRelease_block_invoke_2(uint64_t a1)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80, &qword_1ED4CBA80);
  CFRelease(*(a1 + 32));

  JUMPOUT(0x19A8D3680);
}

uint64_t playerceleste_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (*DerivedStorage)
  {
    return 4294954511;
  }

  v4 = DerivedStorage;
  *DerivedStorage = 1;
  if (*(DerivedStorage + 88))
  {
    v5 = &sFigAudioSessionNotifications;
    v6 = &off_1EE59EF58;
    v7 = 8;
    do
    {
      CMNotificationCenterGetDefaultLocalCenter();
      v6 += 2;
      FigNotificationCenterRemoveWeakListener();
      v5 += 2;
      --v7;
    }

    while (v7);
    FigStopForwardingMediaServicesProcessDeathNotification();
  }

  if (*(v4 + 128) && *(v4 + 130) && *(v4 + 80))
  {
    FPSupport_CreateSetRateOptions(*MEMORY[0x1E695E480], 22, &cf);
    FigSimpleMutexLock();
    v8 = *(v4 + 80);
    v9 = cf;
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v10)
    {
      v10(v8, v9, 0.0);
    }

    FigSimpleMutexUnlock();
    *(v4 + 124) = 0;
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }
  }

  *(CMBaseObjectGetDerivedStorage() + 130) = 0;
  if (*(v4 + 128))
  {
    if (playerceleste_canCallSetConnectionActive(a1))
    {
      playerceleste_callSetConnectionActive(a1, 0);
    }

    *(v4 + 128) = 0;
  }

  if (*(v4 + 80))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  playerceleste_revokePurgeAssertionIfNecessary(a1);
  if (*(v4 + 136))
  {
    FigCFWeakReferenceTableApplyFunction();
  }

  FigCFWeakReferenceTableRemoveValue();
  FigSimpleMutexLock();
  if (*(v4 + 80))
  {
    FigPlayerGetFigBaseObject();
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

  FigSimpleMutexUnlock();
  v14 = &qword_1ED4CBA90;
  FigSimpleMutexLock();
  v15 = &qword_1ED4CBA90;
  do
  {
    v15 = *v15;
    if (!v15)
    {
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  while (v15[1] != *(v4 + 8));
  for (i = qword_1ED4CBA90; i != v15; i = *i)
  {
    v14 = i;
  }

  *v14 = *i;
  --qword_1ED4CBA88;
  FigSimpleMutexUnlock();
  free(v15);
  return 0;
}

void playerceleste_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    playerceleste_Invalidate(a1);
  }

  v3 = *(DerivedStorage + 136);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 136) = 0;
  }

  v4 = *(DerivedStorage + 88);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 88) = 0;
  }

  v5 = *(DerivedStorage + 64);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 72);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 72) = 0;
  }

  v7 = *(DerivedStorage + 80);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 80) = 0;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 56) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 144) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 152) = 0;
  FigSimpleMutexDestroy();
  *(DerivedStorage + 184) = 0;
  v9 = *(DerivedStorage + 104);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 104) = 0;
  }

  v10 = *(DerivedStorage + 200);
  if (v10)
  {
    dispatch_release(v10);
    *(DerivedStorage + 200) = 0;
  }

  v11 = *(DerivedStorage + 176);
  if (v11)
  {

    *(DerivedStorage + 176) = 0;
  }

  v12 = *(DerivedStorage + 208);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 208) = 0;
  }
}

__CFString *playerceleste_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 165);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigPlayerCeleste %p %{public}s celestePlayerID %lld subPlayer %p>", a1, v5, *(DerivedStorage + 8), *(DerivedStorage + 80));
  return Mutable;
}

void fpcel_destroyPlaybackItemFromPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    if (!FigCFWeakReferenceTableRemoveValue())
    {
      FigPlaybackItemGetFigBaseObject();
      if (v5)
      {
        v6 = v5;
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v7)
        {
          v7(v6);
        }
      }
    }

    CFRelease(v4);
  }
}

uint64_t FigAudioSessionCopyMXSessionProperty_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294948075;
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    return 4294948075;
  }

  v9 = *(v8 + 48);
  if (!v9)
  {
    return 4294948071;
  }

  return v9(a1, a2, a3, a4);
}

uint64_t FigAudioSessionCopyCMSessionProperty(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    VTable = CMBaseObjectGetVTable();
    v10 = *(VTable + 16);
    result = VTable + 16;
    v9 = v10;
    if (v10)
    {
      v11 = *(v9 + 32);
      if (v11)
      {

        return v11(v7, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t FigAudioSessionIsRelatedToAudioSessionID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 96);
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

void itemceleste_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    v2 = DerivedStorage;
    *DerivedStorage = 1;
    if (*(DerivedStorage + 40))
    {
      *(DerivedStorage + 40) = 0;
    }

    if (*(DerivedStorage + 24))
    {
      if (*(DerivedStorage + 41))
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterRemoveWeakListener();
        *(v2 + 41) = 0;
      }

      FigPlaybackItemGetFigBaseObject();
      if (v3)
      {
        v4 = v3;
        v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v5)
        {
          v5(v4);
        }
      }
    }
  }
}

void itemceleste_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    itemceleste_Invalidate(a1);
  }

  v3 = FigCFWeakReferenceTableCopyValue();
  if (v3)
  {
    v4 = v3;
    CMBaseObjectGetDerivedStorage();
    FigCFWeakReferenceTableRemoveValue();
    playerceleste_deferPlayerRelease(v4);
  }

  FigCFWeakReferenceTableRemoveValue();
  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  *(DerivedStorage + 8) = 0;
  *(DerivedStorage + 16) = 0;
}

__CFString *itemceleste_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  if (a1)
  {
    v5 = (CMBaseObjectGetDerivedStorage() + 42);
  }

  else
  {
    v5 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigCelestePlaybackItem %p %s celesteItemID %lld subItem %p>", a1, v5, *(DerivedStorage + 16), *(DerivedStorage + 24));
  return Mutable;
}

uint64_t itemceleste_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  FigPlaybackItemGetFigBaseObject();
  v8 = v7;
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
    return 4294954514;
  }

  return v9(v8, a2, a3, a4);
}

void itemceleste_reflectSubItemNotificationToClient(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, const __CFDictionary *a5)
{
  if (!a2)
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a3, @"ReadyForInspection"))
  {
    if (!a5)
    {
      goto LABEL_12;
    }

    v9 = *(DerivedStorage + 40);
    v8 = (DerivedStorage + 40);
    if (!v9)
    {
      goto LABEL_12;
    }

    Value = CFDictionaryGetValue(a5, @"Properties");
    if (!Value)
    {
      goto LABEL_12;
    }

    v11 = Value;
    v14.length = CFArrayGetCount(Value);
    v14.location = 0;
    if (!CFArrayContainsValue(v11, v14, @"InitialSamples"))
    {
      goto LABEL_12;
    }

LABEL_11:
    *v8 = 0;
    goto LABEL_12;
  }

  if (CFEqual(a3, @"FailedToBecomeReadyForInspection"))
  {
    v12 = *(DerivedStorage + 40);
    v8 = (DerivedStorage + 40);
    if (v12)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
}

void playerceleste_deferPlayerRelease(uint64_t a1)
{
  if (qword_1ED4CBA70 != -1)
  {
    __FigPlayerCelesteOneTimeInitialization_block_invoke_2_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferPlayerRelease_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(qword_1ED4CBA68, block);
}

void __playerceleste_deferPlayerRelease_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  v4 = *(DerivedStorage + 200);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __playerceleste_deferPlayerRelease_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  if (v3 && v4)
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    __playerceleste_deferPlayerRelease_block_invoke_2(block);
  }
}

void __playerceleste_deferPlayerRelease_block_invoke_2(uint64_t a1)
{
  MEMORY[0x19A8D3680](qword_1ED4CBA80, &qword_1ED4CBA80);
  CFRelease(*(a1 + 32));

  JUMPOUT(0x19A8D3680);
}

uint64_t itemceleste_handleSetProperty(int a1, int a2, CFTypeRef cf, const void *a4, _BYTE *a5, void *a6, void *a7)
{
  *a5 = 0;
  if (cf)
  {
    v10 = CFRetain(cf);
  }

  else
  {
    v10 = 0;
  }

  *a6 = v10;
  if (a4)
  {
    v11 = CFRetain(a4);
  }

  else
  {
    v11 = 0;
  }

  *a7 = v11;
  return 0;
}

uint64_t itemceleste_GetDimensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 24);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(v5, a2, a3);
}

uint64_t itemceleste_GetDuration(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_SetCurrentTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking(a1);
  v7 = *(DerivedStorage + 24);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

uint64_t itemceleste_GetCurrentTime(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_CopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(CMBaseObjectGetDerivedStorage() + 24);
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t itemceleste_MakeReadyForInspection(uint64_t a1, const __CFArray *a2, _BYTE *a3)
{
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12.length = CFArrayGetCount(a2);
    v12.location = 0;
    if (CFArrayContainsValue(a2, v12, @"InitialSamples"))
    {
      *(DerivedStorage + 40) = 1;
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"CoreMedia Playback - %s", DerivedStorage + 42);
      FigResetDisplaySleepTimerOnBehalfOfSceneWithPID(v6, -1);
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  v7 = *(DerivedStorage + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v8)
  {
    result = v8(v7, a2, &v11);
    LOBYTE(v8) = v11;
    if (result)
    {
      v10 = 0;
    }

    else
    {
      v10 = v11 == 0;
    }

    if (v10)
    {
      LOBYTE(v8) = 0;
      result = 0;
      goto LABEL_15;
    }
  }

  else
  {
    result = 4294954514;
  }

  if (*(DerivedStorage + 40))
  {
    *(DerivedStorage + 40) = 0;
  }

LABEL_15:
  *a3 = v8;
  return result;
}

uint64_t itemceleste_CopyCommonMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_CopyChapterImageData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_GetNextThumbnailTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3, a4);
}

uint64_t itemceleste_SetCurrentTimeWithRange(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking(a1);
  v11 = *(DerivedStorage + 24);
  v18 = *a2;
  v19 = *(a2 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v12)
  {
    return 4294954514;
  }

  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  v20 = v14;
  v21 = v15;
  return v12(v11, &v24, a3, &v22, &v20);
}

uint64_t itemceleste_SetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_CopyFormatReader(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_SeekToDateWithID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking(a1);
  v7 = *(DerivedStorage + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3);
}

uint64_t itemceleste_SetCurrentTimeWithRangeAndID(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking(a1);
  v13 = *(DerivedStorage + 24);
  v20 = *a2;
  v21 = *(a2 + 2);
  v18 = *a4;
  v19 = *(a4 + 2);
  v16 = *a5;
  v17 = *(a5 + 2);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v14)
  {
    return 4294954514;
  }

  v26 = v20;
  v27 = v21;
  v24 = v18;
  v25 = v19;
  v22 = v16;
  v23 = v17;
  return v14(v13, &v26, a3, &v24, &v22, a6);
}

uint64_t itemceleste_CopyAsset(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 24);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t itemceleste_ExtractAndRetainNextSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 24);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(v7, a2, a3, a4);
}

uint64_t itemceleste_SetCurrentTimeWithOptions(uint64_t a1, __int128 *a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  itemceleste_interruptIfNecessaryForSeeking(a1);
  v7 = *(DerivedStorage + 24);
  v10 = *a2;
  v11 = *(a2 + 2);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v8)
  {
    return 4294954514;
  }

  v12 = v10;
  v13 = v11;
  return v8(v7, &v12, a3);
}

void itemceleste_interruptIfNecessaryForSeeking(uint64_t a1)
{
  cf[26] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = FigCFWeakReferenceTableCopyValue();
  if (v2)
  {
    v3 = v2;
    v4 = CMBaseObjectGetDerivedStorage();
    if (!*(v4 + 128) && !*(v4 + 161))
    {
      cf[0] = 0;
      v5 = *(v4 + 80);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(v5, 0, cf);
        v7 = cf[0];
        if (cf[0])
        {
          if (cf[0] != *(DerivedStorage + 24))
          {
            goto LABEL_9;
          }

          if (dword_1EAF17958)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          playerceleste_beginInterruptionInternal(v3, 0);
          v7 = cf[0];
          if (cf[0])
          {
LABEL_9:
            CFRelease(v7);
          }
        }
      }
    }

    playerceleste_deferPlayerRelease(v3);
  }
}

uint64_t playerceleste_AddToPlayQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[21] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  if (!*(DerivedStorage + 80))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
LABEL_17:
    v15 = v12;
    goto LABEL_19;
  }

  FigPlayerGetFigBaseObject();
  v10 = v9;
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, 0x1F0B25918, *MEMORY[0x1E695E480], cf);
    v11 = cf[0];
  }

  if ((!*(DerivedStorage + 161) || v11 == *MEMORY[0x1E695E4D0]) && !*(DerivedStorage + 129))
  {
    if (dword_1EAF17958)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v12 = playerceleste_beginInterruptionInternal(a1, 0);
    if (v12)
    {
      if (!*(DerivedStorage + 160))
      {
        goto LABEL_17;
      }
    }
  }

  if (a2)
  {
    a2 = *(v7 + 24);
  }

  if (a3)
  {
    a3 = *(v8 + 24);
  }

  v13 = *(DerivedStorage + 80);
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v14)
  {
    v12 = v14(v13, a2, a3);
    goto LABEL_17;
  }

  v15 = 4294954514;
LABEL_19:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v15;
}

void playerceleste_RemoveFromPlayQueue(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = *(DerivedStorage + 80);
  if (v6)
  {
    if (a2)
    {
      v7 = *(v5 + 24);
    }

    else
    {
      v7 = 0;
    }

    v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v9)
    {

      v9(v6, v7);
    }
  }

  else
  {
    v8 = qword_1EAF17950;

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294954516, "<<<< CELESTE >>>>", 3663, v2);
  }
}

uint64_t playerceleste_CopyPlayQueueItem(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  if (a2)
  {
    v7 = CMBaseObjectGetDerivedStorage();
    v8 = *(v6 + 80);
    if (v8)
    {
      v9 = *(v7 + 24);
      goto LABEL_6;
    }

LABEL_13:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17950, 4294954516, "<<<< CELESTE >>>>", 3728, v3);
LABEL_14:
    v11 = v15;
    goto LABEL_15;
  }

  v8 = *(DerivedStorage + 80);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = 0;
LABEL_6:
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v10)
  {
    v11 = v10(v8, v9, &cf);
    v12 = cf;
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = cf == 0;
    }

    if (v13)
    {
      goto LABEL_16;
    }

    FigCFWeakReferenceTableApplyFunction();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17950, 4294954516, "<<<< CELESTE >>>>", 3723, v3);
    goto LABEL_14;
  }

  v11 = 4294954514;
LABEL_15:
  v12 = cf;
LABEL_16:
  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

uint64_t playerceleste_SetRate(uint64_t a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = playerceleste_setRateInternal(a1, 0, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a2);
  *(DerivedStorage + 124) = a2;
  return result;
}

uint64_t playerceleste_GetRate(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t playerceleste_SetRateWithFade(uint64_t a1, __int128 *a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetCMTime();
  v7 = playerceleste_setRateInternal(a1, Mutable, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a3);
  *(DerivedStorage + 124) = a3;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v7;
}

uint64_t playerceleste_StartPreroll(uint64_t a1, uint64_t a2, float a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 80);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 4294954514;
  }

  v7.n128_f32[0] = a3;

  return v6(v5, a2, v7);
}

uint64_t playerceleste_StepByCount(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a2);
}

uint64_t playerceleste_SetRateAndAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4, float a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = *a2;
  v12 = *a3;
  result = playerceleste_setRateInternal(a1, 0, 0, 1, &v13, &v12, a4, a5);
  *(DerivedStorage + 124) = a5;
  return result;
}

uint64_t playerceleste_SetRateWithOptions(uint64_t a1, uint64_t a2, float a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = playerceleste_setRateInternal(a1, a2, 0, 0, MEMORY[0x1E6960CC0], MEMORY[0x1E6960CC0], 0, a3);
  *(DerivedStorage + 124) = a3;
  return result;
}

double playerceleste_ReevaluateRouteConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v4)
  {

    FigPlayerReevaluateRouteConfigurationForReason(v4, a2, @" -> celeste sub-player");
  }

  else
  {
    v6 = qword_1EAF17950;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 4294954514, "<<<< CELESTE >>>>", 4532, v2);
  }

  return result;
}

double playerceleste_AddExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v5)
    {

      v5(v4, a2);
    }
  }

  else
  {
    v7 = qword_1EAF17950;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954514, "<<<< CELESTE >>>>", 4549, v2);
  }

  return result;
}

double playerceleste_RemoveExternalStartupTask(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v4)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 136);
    if (v5)
    {

      v5(v4, a2);
    }
  }

  else
  {
    v7 = qword_1EAF17950;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954514, "<<<< CELESTE >>>>", 4566, v2);
  }

  return result;
}

double playerceleste_CopyDisplayedCVPixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(CMBaseObjectGetDerivedStorage() + 80);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v7)
    {

      v7(v6, a2, a3);
    }
  }

  else
  {
    v9 = qword_1EAF17950;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 4294954514, "<<<< CELESTE >>>>", 4584, v3);
  }

  return result;
}

uint64_t fpcel_findCelesteItemIDForSubItem(uint64_t a1, uint64_t a2, void *a3)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 24) == *a3)
  {
    a3[1] = *(result + 16);
  }

  return result;
}

uint64_t playerceleste_SetConnectionActive(uint64_t a1, int a2)
{
  if (a2)
  {
    return 4294954514;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 128))
  {
    return 0;
  }

  v5 = DerivedStorage;
  if (playerceleste_canCallSetConnectionActive(a1))
  {
    playerceleste_callSetConnectionActive(a1, 0);
  }

  result = 0;
  *(v5 + 128) = 0;
  return result;
}

uint64_t playerceleste_DuckVolume(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v7 = *(CMBaseObjectGetDerivedStorage() + 80);
  v8 = *(CMBaseObjectGetVTable() + 32);
  if (!v8)
  {
    return 4294954514;
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    return 4294954514;
  }

  v9.n128_f32[0] = a3;
  v10.n128_f32[0] = a4;

  return v11(v7, a2, v9, v10);
}

uint64_t playerceleste_SilentMute(uint64_t a1, uint64_t a2)
{
  v3 = *(CMBaseObjectGetDerivedStorage() + 80);
  v4 = *(CMBaseObjectGetVTable() + 32);
  if (!v4)
  {
    return 4294954514;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v3, a2);
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticBBuf(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!(a2 | a3))
  {
    MTGetCGAffineTransformFrom3x3MatrixArray_cold_5(&v13);
    goto LABEL_16;
  }

  v7 = FigAtomStreamInitWithBBuf();
  if (v7)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v7, "(Fig)", 76, v3);
  }

  else
  {
    AtomWithType = FigAtomStreamPositionAtFirstAtomWithType();
    if (AtomWithType)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, AtomWithType, "(Fig)", 79, v3);
    }

    else
    {
      CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
      if (!CurrentAtomTypeAndDataLength)
      {
        FigCreateHapticPatternDictionaryFromAppleHapticBBuf_cold_7(&v13);
LABEL_16:
        v12 = v13;
        goto LABEL_6;
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, CurrentAtomTypeAndDataLength, "(Fig)", 83, v3);
    }
  }

  v12 = v11;
LABEL_6:

  if (!v12)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }
  }

  objc_autoreleasePoolPop(v6);
  return v12;
}

void *ffs_hapticFilterPatternDictionary(void *a1)
{
  v1 = a1;
  v2 = [a1 objectForKey:@"Pattern"];
  v3 = [v2 indexesOfObjectsPassingTest:&__block_literal_global_9];
  if ([v3 count])
  {
    v1 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v1];
    v4 = [MEMORY[0x1E695DF70] arrayWithArray:v2];
    [v4 removeObjectsAtIndexes:v3];
    [v1 setObject:v4 forKey:@"Pattern"];
  }

  return v1;
}

uint64_t FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf(OpaqueCMBlockBuffer *a1, void *a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  v18 = 0;
  if (!a1)
  {
    v13 = 0;
    goto LABEL_8;
  }

  DataLength = CMBlockBufferGetDataLength(a1);
  v8 = malloc_type_malloc(DataLength, 0x1954E82EuLL);
  if (!v8)
  {
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_5(&v19);
LABEL_17:
    v13 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = CMBlockBufferCopyDataBytes(a1, 0, DataLength, v8);
  if (v10)
  {
    v15 = v10;
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_1(v10, v9);
    goto LABEL_12;
  }

  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:DataLength deallocator:&__block_literal_global_117];
  v17 = 0;
  v12 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v11 options:0 error:&v17];
  if (!v12)
  {
    FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_4(&v17);
    goto LABEL_17;
  }

  v13 = ffs_hapticFilterPatternDictionary(v12);
  if (a3)
  {
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:&v17];
    if (v13)
    {
      [MEMORY[0x1E696AEC0] stringEncodingForData:v14 encodingOptions:0 convertedString:&v18 usedLossyConversion:0];
      if (v18)
      {
        goto LABEL_8;
      }

      FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_2(&v19);
    }

    else
    {
      FigCreateHapticPatternDictionaryFromAppleHapticRawBBuf_cold_3(&v17);
    }

LABEL_20:
    v15 = v19;
    if (v19)
    {
      goto LABEL_12;
    }
  }

LABEL_8:
  if (a2)
  {
    *a2 = v13;
  }

  v15 = 0;
  if (a3)
  {
    *a3 = v18;
  }

LABEL_12:
  objc_autoreleasePoolPop(v6);
  return v15;
}

uint64_t __ffs_hapticFilterPatternDictionary_block_invoke(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 objectForKeyedSubscript:{@"Event", "objectForKeyedSubscript:", @"EventType"}];

  return [v2 isEqualToString:@"AudioCustom"];
}

uint64_t OUTLINED_FUNCTION_2_174(void **a1)
{
  v2 = *a1;

  return [v2 code];
}

uint64_t OVCBicubicPrescalerScalePixelBuffer(uint64_t a1, __CVBuffer *a2, __CVBuffer *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v114[1] = *MEMORY[0x1E69E9840];
  v114[0] = 0;
  v110 = 0;
  v108 = 0u;
  v109 = 0;
  memset(&v107, 0, sizeof(v107));
  if (!a1)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_7(&v106);
    return LODWORD(v106.a);
  }

  if (!a2)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_6(&v106);
    return LODWORD(v106.a);
  }

  if (!a3)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_5(&v106);
    return LODWORD(v106.a);
  }

  if (OVCGetCurrentOpenGLContext() != *a1)
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_1(&v106);
    return LODWORD(v106.a);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a3))
  {
    OVCBicubicPrescalerScalePixelBuffer_cold_2(&v106);
    return LODWORD(v106.a);
  }

  glDisable(0xBE2u);
  PlaneCount = CVPixelBufferGetPlaneCount(a2);
  v96 = CVPixelBufferGetPixelFormatType(a2);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v18 = CVPixelBufferGetWidth(a3);
  v19 = CVPixelBufferGetHeight(a3);
  v20 = Width;
  v21 = Height;
  v129.origin.x = 0.0;
  v129.origin.y = 0.0;
  v115.origin.x = a4;
  v115.origin.y = a5;
  v115.size.width = a6;
  v115.size.height = a7;
  v129.size.width = Width;
  v129.size.height = Height;
  v116 = CGRectIntersection(v115, v129);
  x = v116.origin.x;
  y = v116.origin.y;
  v24 = v116.size.width;
  v25 = v116.size.height;
  key = *MEMORY[0x1E6965D70];
  v26 = CVBufferCopyAttachment(a2, *MEMORY[0x1E6965D70], 0);
  bvc_getCleanApertureRect(v26, Width, Height, &v108);
  if (v27)
  {
    a_low = v27;
    if (!v26)
    {
      return a_low;
    }

    goto LABEL_32;
  }

  v85 = v26;
  *&v108 = *&v108 - x;
  v117.origin.x = *&v108;
  *(&v108 + 1) = *(&v108 + 1) - y;
  v117.origin.y = *(&v108 + 1);
  v117.size.width = v109.width;
  v117.size.height = v109.height;
  v130.origin.x = 0.0;
  v130.origin.y = 0.0;
  v130.size.width = v24;
  v130.size.height = v25;
  v118 = CGRectIntersection(v117, v130);
  v92 = y;
  v93 = x;
  v28 = v118.origin.x;
  v29 = v118.origin.y;
  v94 = v25;
  v95 = v24;
  v30 = v118.size.width;
  v31 = v118.size.height;
  *&v108 = v118.origin.x;
  *(&v108 + 1) = *&v118.origin.y;
  v109.width = v118.size.width;
  v109.height = v118.size.height;
  v82 = v19;
  v83 = v18;
  v87 = v18;
  v86 = v19;
  CGAffineTransformMakeScale(&v107, v18 / v95, v19 / v94);
  v106 = v107;
  v119.origin.x = v28;
  v119.origin.y = v29;
  v33 = v92;
  v32 = v93;
  v119.size.width = v30;
  v119.size.height = v31;
  v35 = v94;
  v34 = v95;
  v120 = CGRectApplyAffineTransform(v119, &v106);
  v89 = v120.origin.y;
  v90 = v120.origin.x;
  v88 = v120.size.width;
  rect = v120.size.height;
  v36 = 0;
  if (PlaneCount <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = PlaneCount;
  }

  v98 = v37;
  v38 = v114;
  __asm { FMOV            V0.2D, #1.0 }

  v97 = _Q0;
  while (1)
  {
    v105 = 0;
    WidthOfPlane = OVCCVPixelBufferGetWidthOfPlane(a2, v36);
    HeightOfPlane = OVCCVPixelBufferGetHeightOfPlane(a2, v36);
    v46.i64[0] = WidthOfPlane;
    v46.i64[1] = HeightOfPlane;
    v101 = vcvtq_f64_u64(v46);
    v47 = OVCCVPixelBufferGetWidthOfPlane(a3, v36);
    OVCCVPixelBufferGetHeightOfPlane(a3, v36);
    CGAffineTransformMakeScale(&v106, v101.f64[0] / v20, v101.f64[1] / v21);
    v104 = v106;
    v121.origin.x = v93;
    v121.origin.y = v92;
    v121.size.width = v95;
    v121.size.height = v94;
    v122 = CGRectApplyAffineTransform(v121, &v104);
    v48 = v122.size.width;
    v100 = v122.origin.x;
    v123 = CGRectIntegral(v122);
    v99 = v123.origin.y;
    v49 = v123.size.height;
    v50 = v123.size.height;
    OVCRegisterTextureAsRenderTargetForAttributes(*(a1 + 16), v96, v47, v123.size.height, v36, v38);
    if (v51)
    {
      goto LABEL_26;
    }

    ovcbp_getProgramForPixelFormatAndPlane(a1, v96, v36, 0, &v105);
    if (v51)
    {
      goto LABEL_26;
    }

    glUseProgram(*v105);
    glDisable(0xC11u);
    glViewport(0, 0, v47, v50);
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClear(0x4000u);
    if (glCheckFramebufferStatus(0x8D40u) != 36053)
    {
      break;
    }

    glActiveTexture(0x84C0u);
    glUniform1i(*(v105 + 12), 0);
    OVCRegisterPixelBufferAsTexture(*a1, *(a1 + 24), a2, v36, 1);
    if (v51)
    {
      goto LABEL_26;
    }

    v102 = vdivq_f64(v97, v101);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glUniform2f(*(v105 + 4), WidthOfPlane, HeightOfPlane);
    v52 = v102.f64[0];
    v53 = v102.f64[1];
    glUniform2f(*(v105 + 8), v52, v53);
    glActiveTexture(0x84C1u);
    glUniform1i(*(v105 + 16), 1);
    glBindTexture(0xDE1u, *(a1 + 40));
    ptr = xmmword_196E7ACB0;
    v113 = xmmword_196E7ACC0;
    v54.f64[0] = v100;
    v55.f64[0] = v100 + v48;
    v54.f64[1] = v99 + v49;
    v55.f64[1] = v99;
    v56 = vmulq_f64(v102, vcvtq_f64_f32(vcvt_f32_f64(v55)));
    *&v55.f64[0] = vcvt_f32_f64(vmulq_f64(v102, vcvtq_f64_f32(vcvt_f32_f64(v54))));
    v57 = vcvt_hight_f32_f64(*&v55.f64[0], v56);
    v58 = vextq_s8(v57, v57, 8uLL);
    v57.i32[2] = LODWORD(v55.f64[0]);
    v58.i32[2] = vcvt_f32_f64(v56).u32[0];
    *v111 = v57;
    *&v111[16] = v58;
    glVertexAttribPointer(*(v105 + 20), 2, 0x1406u, 0, 0, &ptr);
    glEnableVertexAttribArray(*(v105 + 20));
    glVertexAttribPointer(*(v105 + 24), 2, 0x1406u, 0, 0, v111);
    glEnableVertexAttribArray(*(v105 + 24));
    glDrawArrays(6u, 0, 4);
    ++v36;
    ++v38;
    if (v98 == v36)
    {
      v59 = 0;
      while (1)
      {
        v105 = 0;
        v60 = OVCCVPixelBufferGetWidthOfPlane(a3, v59);
        v61 = OVCCVPixelBufferGetHeightOfPlane(a3, v59);
        v62 = v61;
        CGAffineTransformMakeScale(&v106, v60 / v87, v61 / v86);
        v104 = v106;
        v124.origin.x = v32;
        v124.origin.y = v33;
        v124.size.width = v34;
        v124.size.height = v35;
        v125 = CGRectApplyAffineTransform(v124, &v104);
        v63 = v125.origin.y;
        v64 = v125.size.height;
        v126 = CGRectIntegral(v125);
        v65 = v126.origin.y;
        v66 = v126.size.height;
        v104 = v106;
        v126.origin.y = v89;
        v126.origin.x = v90;
        v126.size.width = v88;
        v126.size.height = rect;
        v127 = CGRectApplyAffineTransform(v126, &v104);
        v128 = CGRectIntegral(v127);
        v67 = v128.origin.x;
        v68 = v128.origin.y;
        v69 = v128.size.width;
        v70 = v128.size.height;
        OVCRegisterPixelBufferAsRenderTarget(*a1, *(a1 + 24), a3, v59);
        if (v51)
        {
          break;
        }

        ovcbp_getProgramForPixelFormatAndPlane(a1, v96, v59, 1, &v105);
        if (v51)
        {
          break;
        }

        glUseProgram(*v105);
        glViewport(0, 0, v60, v62);
        glEnable(0xC11u);
        glScissor(0, 0, v60, v62);
        glClearColor(0.0, 0.0, 0.0, 0.0);
        glClear(0x4000u);
        glScissor(v67, v68, v69, v70);
        if (glCheckFramebufferStatus(0x8D40u) != 36053)
        {
          OVCBicubicPrescalerScalePixelBuffer_cold_4(&v104);
          goto LABEL_29;
        }

        v71.f64[0] = v66;
        v71.f64[1] = v60;
        v103 = vdivq_f64(v97, v71);
        glActiveTexture(0x84C0u);
        glUniform1i(*(v105 + 12), 0);
        glBindTexture(0xDE1u, *(v114 + v59));
        glTexParameteri(0xDE1u, 0x2800u, 9728);
        glTexParameteri(0xDE1u, 0x2801u, 9728);
        glTexParameteri(0xDE1u, 0x2802u, 33071);
        glTexParameteri(0xDE1u, 0x2803u, 33071);
        glUniform2f(*(v105 + 4), v60, v66);
        v72 = v103.f64[1];
        v73 = v103.f64[0];
        glUniform2f(*(v105 + 8), v72, v73);
        glActiveTexture(0x84C1u);
        glUniform1i(*(v105 + 16), 1);
        glBindTexture(0xDE1u, *(a1 + 40));
        ptr = xmmword_196E7ACB0;
        v113 = xmmword_196E7ACC0;
        v74 = v64 + v63 - v65;
        v75.f32[0] = v63 - v65;
        v76 = vmuld_lane_f64(0.0, v103, 1);
        v77 = v74 * v103.f64[0];
        *v111 = v76;
        *&v111[4] = v77;
        *&v111[8] = v76;
        v75.f32[1] = v60;
        v78 = vmulq_f64(v103, vcvtq_f64_f32(v75));
        *&v111[12] = vcvt_hight_f32_f64(vcvt_f32_f64(v78), v78);
        *&v111[28] = v77;
        glVertexAttribPointer(*(v105 + 20), 2, 0x1406u, 0, 0, &ptr);
        glEnableVertexAttribArray(*(v105 + 20));
        glVertexAttribPointer(*(v105 + 24), 2, 0x1406u, 0, 0, v111);
        glEnableVertexAttribArray(*(v105 + 24));
        glDrawArrays(6u, 0, 4);
        ++v59;
        v33 = v92;
        v32 = v93;
        v35 = v94;
        v34 = v95;
        if (v98 == v59)
        {
          glFlush();
          CVBufferPropagateAttachments(a2, a3);
          a_low = OVCCreateCleanApertureDictionaryFromRect(v83, v82, &v110, v90, v89, v88, rect);
          v80 = v110;
          if (!a_low)
          {
            CVBufferSetAttachment(a3, key, v110, kCVAttachmentMode_ShouldNotPropagate);
            v80 = v110;
          }

          v26 = v85;
          if (!v80)
          {
            goto LABEL_31;
          }

          CFRelease(v80);
          if (v85)
          {
            goto LABEL_32;
          }

          return a_low;
        }
      }

LABEL_26:
      a_low = v51;
      goto LABEL_30;
    }
  }

  OVCBicubicPrescalerScalePixelBuffer_cold_3(&v104);
LABEL_29:
  a_low = LODWORD(v104.a);
LABEL_30:
  v26 = v85;
LABEL_31:
  if (v26)
  {
LABEL_32:
    CFRelease(v26);
  }

  return a_low;
}

void ovcbp_getProgramForPixelFormatAndPlane(uint64_t a1, int a2, uint64_t a3, int a4, void *a5)
{
  if (!a5)
  {
    ovcbp_getProgramForPixelFormatAndPlane_cold_2(&v14);
    return;
  }

  if (!a1)
  {
    ovcbp_getProgramForPixelFormatAndPlane_cold_1(&v13);
    return;
  }

  if (a2 == 875704422 || a2 == 875704438)
  {
    if (a3 == 1)
    {
      v10 = a4 == 0;
      v11 = 156;
      v12 = 184;
    }

    else
    {
      if (a3)
      {
        emitter = fig_log_get_emitter();
        v7 = v5;
        v8 = 4294954792;
        v9 = 203;
        goto LABEL_14;
      }

      v10 = a4 == 0;
      v11 = 100;
      v12 = 128;
    }
  }

  else
  {
    if (a2 != 1111970369)
    {
      emitter = fig_log_get_emitter();
      v7 = v5;
      v8 = 4294954794;
      v9 = 209;
      goto LABEL_14;
    }

    if (a3)
    {
      emitter = fig_log_get_emitter();
      v7 = v5;
      v8 = 4294954792;
      v9 = 168;
LABEL_14:

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v8, "<<<< OVCBicubicPrescaler >>>>", v9, v7);
      return;
    }

    v10 = a4 == 0;
    v11 = 44;
    v12 = 72;
  }

  if (!v10)
  {
    v12 = v11;
  }

  *a5 = a1 + v12;
}

void OVCBicubicPrescalerDestroy(char *a1)
{
  if (a1)
  {
    if (a1[8])
    {
      FigOVCGLObjectCacheWrapperInvalidate(*(a1 + 3));
      OVCGLObjectCacheDestroy(*(a1 + 2));
    }

    *(a1 + 2) = 0;
    v2 = *(a1 + 3);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 3) = 0;
    }

    OVCGLObjectCacheDestroy(*(a1 + 4));
    *(a1 + 4) = 0;
    if (OVCGetCurrentOpenGLContext() == *a1)
    {
      glDeleteTextures(1, a1 + 10);
      *(a1 + 10) = 0;
      for (i = 44; i != 212; i += 28)
      {
        glDeleteProgram(*&a1[i]);
        *&a1[i] = 0;
      }
    }

    free(a1);
  }
}

uint64_t ovcbp_createAndSetupProgram(GLuint *a1, uint64_t a2, uint64_t a3)
{
  v4 = OVCCreateGLProgram(a2, a3, a1);
  if (v4)
  {
    v11 = v4;
    if (!a1)
    {
      return v11;
    }

    goto LABEL_19;
  }

  UniformLocation = glGetUniformLocation(*a1, "tex_dim");
  if (UniformLocation < 0)
  {
    v13 = 636;
LABEL_18:
    ovcbp_createAndSetupProgram_cold_1(v13, &v14);
    v11 = v14;
LABEL_19:
    glDeleteProgram(*a1);
    return v11;
  }

  a1[1] = UniformLocation;
  v6 = glGetUniformLocation(*a1, "tex_dim_rcp");
  if (v6 < 0)
  {
    v13 = 640;
    goto LABEL_18;
  }

  a1[2] = v6;
  AttribLocation = glGetAttribLocation(*a1, "position");
  if (AttribLocation < 0)
  {
    v13 = 645;
    goto LABEL_18;
  }

  a1[5] = AttribLocation;
  v8 = glGetAttribLocation(*a1, "texcoord");
  if (v8 < 0)
  {
    v13 = 649;
    goto LABEL_18;
  }

  a1[6] = v8;
  v9 = glGetUniformLocation(*a1, "sampler_pixels");
  if (v9 < 0)
  {
    v13 = 653;
    goto LABEL_18;
  }

  a1[3] = v9;
  v10 = glGetUniformLocation(*a1, "sampler_kernel");
  if (v10 < 0)
  {
    v13 = 657;
    goto LABEL_18;
  }

  v11 = 0;
  a1[4] = v10;
  return v11;
}

float ovcbp_polynomial(float a1)
{
  v1 = fabsf(a1);
  v2 = a1 * a1;
  v3 = (a1 * a1) * v1;
  if (v1 >= 1.0)
  {
    result = 0.0;
    if (v1 >= 2.0)
    {
      return result;
    }

    v4 = v2 * 6.0 - v3 + v1 * -12.0;
    v5 = 8.0;
  }

  else
  {
    v4 = v2 * -6.0 + v3 * 3.0;
    v5 = 4.0;
  }

  return (v4 + v5) * 0.1666666;
}

size_t OVCCVPixelBufferGetWidthOfPlane(__CVBuffer *a1, size_t a2)
{
  if (CVPixelBufferIsPlanar(a1))
  {

    return CVPixelBufferGetWidthOfPlane(a1, a2);
  }

  else if (a2)
  {
    return 0;
  }

  else
  {

    return CVPixelBufferGetWidth(a1);
  }
}

size_t OVCCVPixelBufferGetHeightOfPlane(__CVBuffer *a1, size_t a2)
{
  if (CVPixelBufferIsPlanar(a1))
  {

    return CVPixelBufferGetHeightOfPlane(a1, a2);
  }

  else if (a2)
  {
    return 0;
  }

  else
  {

    return CVPixelBufferGetHeight(a1);
  }
}

uint64_t OVCCreateCleanApertureDictionaryFromRect(unint64_t a1, unint64_t a2, CFDictionaryRef *a3, double a4, double a5, double a6, double a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0.0;
  valuePtr = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  *values = 0u;
  v22 = 0u;
  *keys = 0u;
  v20 = 0u;
  if (!a3)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_6(&v18);
LABEL_19:
    v10 = v18;
    goto LABEL_8;
  }

  v16 = a5 + (a7 - a2) * 0.5;
  valuePtr = a4 + (a6 - a1) * 0.5;
  v14 = a7;
  v15 = a6;
  v8 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  if (!values[0])
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_5(&v18);
    goto LABEL_19;
  }

  keys[0] = *MEMORY[0x1E6965D68];
  values[1] = CFNumberCreate(v8, kCFNumberDoubleType, &v16);
  if (!values[1])
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_4(&v18);
    goto LABEL_19;
  }

  keys[1] = *MEMORY[0x1E6965D78];
  *&v22 = CFNumberCreate(v8, kCFNumberDoubleType, &v15);
  if (!v22)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_3(&v18);
    goto LABEL_19;
  }

  *&v20 = *MEMORY[0x1E6965D80];
  *(&v22 + 1) = CFNumberCreate(v8, kCFNumberDoubleType, &v14);
  if (!*(&v22 + 1))
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_2(&v18);
    goto LABEL_19;
  }

  *(&v20 + 1) = *MEMORY[0x1E6965D60];
  v9 = CFDictionaryCreate(v8, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    OVCCreateCleanApertureDictionaryFromRect_cold_1(&v18);
    goto LABEL_19;
  }

  v10 = 0;
  *a3 = v9;
LABEL_8:
  for (i = 0; i != 4; ++i)
  {
    v12 = values[i];
    if (v12)
    {
      CFRelease(v12);
    }
  }

  return v10;
}

uint64_t OVCCreateOpenGLContext(uint64_t *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
    if (v3)
    {
      v4 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:2 properties:v3];
      if (v4)
      {
        v5 = 0;
        *a1 = v4;
      }

      else
      {
        OVCCreateOpenGLContext_cold_1(&v7);
        v5 = v7;
      }
    }

    else
    {
      OVCCreateOpenGLContext_cold_2(&v8);
      v5 = v8;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    OVCCreateOpenGLContext_cold_3(&v9);
    return v9;
  }

  return v5;
}

void OVCDestroyOpenGLContext(void *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();

    objc_autoreleasePoolPop(v2);
  }
}

uint64_t OVCSetCurrentOpenGLContext(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([MEMORY[0x1E6977FE8] setCurrentContext:a1])
  {
    v3 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
    v3 = v4;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

uint64_t OVCSetOpenGLContextPriority(void *a1, int a2)
{
  v11[0] = 0;
  v4 = objc_autoreleasePoolPush();
  if (a2 == 2)
  {
    v11[0] = 0;
  }

  else
  {
    if (a2 == 1)
    {
      v5 = 1;
    }

    else
    {
      if (a2)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11[1]);
        v6 = v7;
        goto LABEL_10;
      }

      v5 = 2;
    }

    v11[0] = v5;
  }

  [a1 setParameter:608 to:v11];
  v6 = 0;
LABEL_10:
  objc_autoreleasePoolPop(v4);
  return v6;
}

uint64_t OVCGetCurrentOpenGLContext()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x1E6977FE8] currentContext];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t OVCCreateShader(GLchar *a1, GLenum type, GLuint *a3)
{
  string = a1;
  params = 0;
  Shader = glCreateShader(type);
  v5 = Shader;
  if (Shader)
  {
    glShaderSource(Shader, 1, &string, 0);
    glCompileShader(v5);
    glGetShaderiv(v5, 0x8B81u, &params);
    if (params == 1 || (fig_log_get_emitter(), FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, string), !v6))
    {
      v7 = 0;
      *a3 = v5;
      v5 = 0;
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    OVCCreateShader_cold_1(&v13);
    v7 = v13;
  }

  glDeleteShader(v5);
  return v7;
}

uint64_t OVCTexImagePixelBuffer(void *a1, __CVBuffer *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, int a9)
{
  v17 = objc_autoreleasePoolPush();
  if (a2)
  {
    IOSurface = CVPixelBufferGetIOSurface(a2);
    if (IOSurface)
    {
      BYTE4(v24) = 0;
      LODWORD(v24) = a9;
      v19 = [a1 texImageIOSurface:IOSurface target:a3 internalFormat:a4 width:a5 height:a6 format:a7 type:a8 plane:v24 invert:?];
      v20 = 0;
      if ((v19 & 1) == 0)
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v25, v26);
        v20 = v21;
      }
    }

    else
    {
      OVCTexImagePixelBuffer_cold_1(&v27);
      v20 = v27;
    }
  }

  else
  {
    OVCTexImagePixelBuffer_cold_2(&v28);
    v20 = v28;
  }

  objc_autoreleasePoolPop(v17);
  return v20;
}

double ovc_getTextureAttributesForRendering(int a1, uint64_t a2, int *a3, int *a4, _DWORD *a5)
{
  if (a1 == 875704422 || a1 == 875704438)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        emitter = fig_log_get_emitter();
        v10 = v5;
        v11 = 4294954792;
        v12 = 642;
        goto LABEL_22;
      }

      v7 = 33319;
      v8 = 33319;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = 6403;
      v8 = 6403;
      if (!a3)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    *a3 = v7;
    goto LABEL_16;
  }

  if (a1 != 1111970369)
  {
    emitter = fig_log_get_emitter();
    v10 = v5;
    v11 = 4294954794;
    v12 = 647;
    goto LABEL_22;
  }

  if (a2)
  {
    emitter = fig_log_get_emitter();
    v10 = v5;
    v11 = 4294954792;
    v12 = 619;
LABEL_22:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v11, "<<<< OVCUtilities >>>>", v12, v10);
  }

  v8 = 32993;
  v7 = 6408;
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (a4)
  {
    *a4 = v8;
  }

  if (a5)
  {
    *a5 = 5121;
  }

  return result;
}

uint64_t OVCRegisterFenceBlock(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 setBlockFence:a3 onQueue:a2])
  {
    return 0;
  }

  OVCRegisterFenceBlock_cold_1(&v4);
  return v4;
}

void OUTLINED_FUNCTION_3_146(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, GLuint texture)
{

  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, texture, 0);
}

uint64_t MTProxyAudioProcessingTapCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  MEMORY[0x19A8D3660](&paptap_OneTimeInitialization_sInitializationOnce, paptap_OneTimeInitializationWork);
  MTAudioProcessingTapGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    *CMBaseObjectGetDerivedStorage() = a2;
    *a3 = 0;
  }

  return v5;
}

uint64_t MTAudioProcessingTapIsProxyTap(uint64_t result)
{
  if (result)
  {
    MTAudioProcessingTapGetClassID();
    result = CMBaseObjectIsMemberOfClass();
    if (result)
    {
      return CMBaseObjectGetVTable() == &paptap_VTable;
    }
  }

  return result;
}

uint64_t MTProxyAudioProcessingTapGetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (MTAudioProcessingTapIsProxyTap(a1))
  {
    result = 0;
    *a2 = *DerivedStorage;
  }

  else
  {
    MTProxyAudioProcessingTapGetObjectID_cold_1(&v6);
    return v6;
  }

  return result;
}

__CFString *paptap_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<MTProxyAudioProcessingTap %p> Retain count %d Created with object ID %016llx", a1, v4, *DerivedStorage);
  return Mutable;
}

uint64_t RegisterFigCaptionConversionValidatorBaseType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigCaptionConversionValidatorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigCaptionConversionValidatorGetClassID_sRegisterFigCaptionConversionValidatorBaseTypeOnce, RegisterFigCaptionConversionValidatorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMetricItemVariantChangeEventCreateInternal(const __CFAllocator *a1, __int128 *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, char a14, CFTypeRef *a15)
{
  ensureMetricEventTrace();
  if (!a15)
  {
    FigMetricItemVariantChangeEventCreateInternal_cold_1(&v42);
    return v42;
  }

  FigMetricEventGetClassID();
  v23 = CMDerivedObjectCreate();
  v24 = 0;
  if (!v23)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v26 = FigSimpleMutexCreate();
    *(DerivedStorage + 136) = v26;
    if (v26)
    {
      *DerivedStorage = 1;
      *(DerivedStorage + 8) = 7;
      if (a3)
      {
        v27 = CFRetain(a3);
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
        v27 = CFDateCreate(a1, Current);
      }

      *(DerivedStorage + 16) = v27;
      v29 = *a2;
      *(DerivedStorage + 48) = *(a2 + 2);
      *(DerivedStorage + 32) = v29;
      if (a4)
      {
        v30 = CFRetain(a4);
      }

      else
      {
        v30 = 0;
      }

      *(DerivedStorage + 24) = v30;
      if (a5)
      {
        v31 = CFRetain(a5);
      }

      else
      {
        v31 = 0;
      }

      *(DerivedStorage + 56) = v31;
      if (a6)
      {
        v32 = CFRetain(a6);
      }

      else
      {
        v32 = 0;
      }

      *(DerivedStorage + 64) = v32;
      if (a13)
      {
        v33 = CFRetain(a13);
      }

      else
      {
        v33 = 0;
      }

      *(DerivedStorage + 72) = v33;
      *(DerivedStorage + 80) = a14;
      *(DerivedStorage + 88) = a7;
      *(DerivedStorage + 96) = a8;
      *(DerivedStorage + 104) = a9;
      *(DerivedStorage + 112) = a10;
      *(DerivedStorage + 120) = a11;
      *(DerivedStorage + 128) = a12;
      if (a7)
      {
        CFRetain(a7);
        a8 = *(DerivedStorage + 96);
      }

      if (a8)
      {
        CFRetain(a8);
      }

      v34 = *(DerivedStorage + 104);
      if (v34)
      {
        CFRetain(v34);
      }

      v35 = *(DerivedStorage + 112);
      if (v35)
      {
        CFRetain(v35);
      }

      v36 = *(DerivedStorage + 120);
      if (v36)
      {
        CFRetain(v36);
      }

      v37 = *(DerivedStorage + 128);
      if (v37)
      {
        CFRetain(v37);
      }

      v23 = 0;
      *a15 = 0;
      return v23;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, a15, 0);
    v23 = v39;
    v24 = cf;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v23;
}

uint64_t meivc_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = DerivedStorage[8];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = DerivedStorage[9];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = DerivedStorage[2];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[13];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[14];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[15];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[16];
  if (v12)
  {
    CFRelease(v12);
  }

  return FigSimpleMutexDestroy();
}

uint64_t meivc_setImmutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 0;

  return FigSimpleMutexUnlock();
}

uint64_t meivc_isMutable(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v2;
}

CFTypeRef meivc_copySessionID(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 24);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t meivc_setSessionID(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    v5 = 0;
  }

  else
  {
    meivc_setSessionID_cold_1(&v7);
    v5 = v7;
  }

  FigSimpleMutexUnlock();
  return v5;
}

uint64_t meivc_getMediaTime@<X0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *a2 = *(DerivedStorage + 32);
  *(a2 + 16) = *(DerivedStorage + 48);

  return FigSimpleMutexUnlock();
}

uint64_t meivc_setMediaTime(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v4 = 0;
    v5 = *a2;
    *(DerivedStorage + 48) = *(a2 + 2);
    *(DerivedStorage + 32) = v5;
  }

  else
  {
    meivc_setMediaTime_cold_1(&v7);
    v4 = v7;
  }

  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigAlternateFilterMonitorCreateForContentSteering(void *a1, const void *a2, const void *a3, const __CFSet *a4, uint64_t a5, uint64_t a6, int a7, const void *a8, const void *a9, const void *a10, CFTypeRef cf, const void *a12, char a13, CFTypeRef *a14)
{
  FigAlternateFilterMonitorGetClassID();
  v21 = CMDerivedObjectCreate();
  if (v21)
  {
    return v21;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = FigReentrantMutexCreate();
  *DerivedStorage = v23;
  if (!v23)
  {
    FigAlternateFilterMonitorCreateForContentSteering_cold_2(&theArray);
    return theArray;
  }

  v21 = FigRetainProxyCreate();
  if (v21)
  {
    return v21;
  }

  v24 = a2 ? CFRetain(a2) : 0;
  *(DerivedStorage + 40) = v24;
  v25 = a3 ? CFRetain(a3) : 0;
  *(DerivedStorage + 48) = v25;
  v26 = *MEMORY[0x1E695E480];
  *(DerivedStorage + 88) = CFSetCreateCopy(*MEMORY[0x1E695E480], a4);
  *(DerivedStorage + 80) = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 96) = 0x4072C00000000000;
  v27 = vnegq_f64(0);
  *(DerivedStorage + 104) = v27;
  *(DerivedStorage + 168) = FigHTTPSchedulerRetain(0, v27);
  *(DerivedStorage + 184) = a7 | 1;
  v28 = a8 ? CFRetain(a8) : 0;
  *(DerivedStorage + 192) = v28;
  v29 = a9 ? CFRetain(a9) : 0;
  *(DerivedStorage + 200) = v29;
  v30 = a10 ? CFRetain(a10) : 0;
  *(DerivedStorage + 208) = v30;
  v31 = a12 ? CFRetain(a12) : 0;
  *(DerivedStorage + 240) = v31;
  *(DerivedStorage + 128) = a6;
  *(DerivedStorage + 152) = a13;
  v21 = FigNetworkHistoryCopySharedPredictor();
  if (v21)
  {
    return v21;
  }

  v32 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  v33 = FigCFSetCopyValuesAsCFArray();
  if (v33)
  {
    v37 = v33;
  }

  else
  {
    Mutable = CFArrayCreateMutable(v26, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v35 = Mutable;
      v36 = *(v32 + 48);
      if (v36)
      {
        CFArrayInsertValueAtIndex(Mutable, 0, v36);
      }

      v37 = 0;
      *(v32 + 56) = v35;
    }

    else
    {
      FigAlternateFilterMonitorCreateForContentSteering_cold_1(&v41);
      v37 = v41;
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (!v37)
  {
    v38 = cf;
    if (cf)
    {
      v38 = CFRetain(cf);
    }

    *(DerivedStorage + 160) = v38;
    v37 = FigAlternatePathwayPreferenceFilterCreate(a1, *(DerivedStorage + 48), *(DerivedStorage + 56), (DerivedStorage + 24));
    if (!v37)
    {
      *a14 = 0;
    }
  }

  return v37;
}

uint64_t famcs_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage[1];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[1] = 0;
  }

  v4 = DerivedStorage[7];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[7] = 0;
  }

  v5 = DerivedStorage[5];
  if (v5)
  {
    CFRelease(v5);
    DerivedStorage[5] = 0;
  }

  v6 = DerivedStorage[6];
  if (v6)
  {
    CFRelease(v6);
    DerivedStorage[6] = 0;
  }

  v7 = DerivedStorage[11];
  if (v7)
  {
    CFRelease(v7);
    DerivedStorage[11] = 0;
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    CFRelease(v8);
    DerivedStorage[3] = 0;
  }

  v9 = DerivedStorage[10];
  if (v9)
  {
    CFRelease(v9);
    DerivedStorage[10] = 0;
  }

  v10 = DerivedStorage[4];
  if (v10)
  {
    CFRelease(v10);
    DerivedStorage[4] = 0;
  }

  v11 = DerivedStorage[15];
  if (v11)
  {
    CFRelease(v11);
    DerivedStorage[15] = 0;
  }

  v12 = DerivedStorage[8];
  if (v12)
  {
    CFRelease(v12);
    DerivedStorage[8] = 0;
  }

  v13 = DerivedStorage[17];
  if (v13)
  {
    CFRelease(v13);
    DerivedStorage[17] = 0;
  }

  v14 = DerivedStorage[9];
  if (v14)
  {
    CFRelease(v14);
    DerivedStorage[9] = 0;
  }

  v15 = DerivedStorage[18];
  if (v15)
  {
    CFRelease(v15);
    DerivedStorage[18] = 0;
  }

  v16 = DerivedStorage[24];
  if (v16)
  {
    CFRelease(v16);
    DerivedStorage[24] = 0;
  }

  v17 = DerivedStorage[20];
  if (v17)
  {
    CFRelease(v17);
    DerivedStorage[20] = 0;
  }

  v18 = DerivedStorage[21];
  if (v18)
  {
    CFRelease(v18);
    DerivedStorage[21] = 0;
  }

  v19 = DerivedStorage[25];
  if (v19)
  {
    CFRelease(v19);
    DerivedStorage[25] = 0;
  }

  v20 = DerivedStorage[26];
  if (v20)
  {
    CFRelease(v20);
    DerivedStorage[26] = 0;
  }

  v21 = CMBaseObjectGetDerivedStorage();
  FigHTTPStopAndReleaseTimer((v21 + 176));
  famcs_clearNetworkRequestState(a1);
  v22 = DerivedStorage[30];
  if (v22)
  {
    CFRelease(v22);
    DerivedStorage[30] = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famcs_copyDebugDesc(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[FigAlternateFilterMonitorForContentSteering pathways=%@ currentPathway=%@]", v2, *(DerivedStorage + 48));
  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

void famcs_setLastTimestampClientDidPause(uint64_t a1, const __CFNumber *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr);
  *(DerivedStorage + 104) = valuePtr;
  famcs_ensureSteeringReloadTimerIsScheduled(a1);
}

uint64_t famcs_createPathwayIDDescriptionGivenPathwayClones(const __CFArray *a1, uint64_t *a2)
{
  if (a2)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = 0;
      if (!a1)
      {
        goto LABEL_5;
      }

LABEL_4:
      for (i = CFArrayGetCount(a1); v6 < i; i = 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        ID = FigPathwayCloneGetID(ValueAtIndex);
        CFArrayAppendValue(v5, ID);
        ++v6;
        if (a1)
        {
          goto LABEL_4;
        }

LABEL_5:
        ;
      }

      *a2 = FigCFCopyCompactDescription();
      CFRelease(v5);
      return 0;
    }

    else
    {
      famcs_createPathwayIDDescriptionGivenPathwayClones_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    famcs_createPathwayIDDescriptionGivenPathwayClones_cold_2(&v12);
    return v12;
  }
}

BOOL famcs_shouldSendSteeringManifestRequest(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if (UpTimeNanoseconds - fmax(*(CMBaseObjectGetDerivedStorage() + 96) * 1000000000.0, 3.0e10) >= *(DerivedStorage + 104) || UpTimeNanoseconds + *(DerivedStorage + 96) * -1000000000.0 <= *(DerivedStorage + 112))
  {
    return 0;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  theArray = 0;
  cf = 0;
  if (*(v3 + 136))
  {
    v4 = v3;
    if (*(v3 + 72))
    {
      if (*(v3 + 144))
      {
        v5 = *MEMORY[0x1E695E480];
        v6 = CFArrayCreate(*MEMORY[0x1E695E480], (v3 + 136), 1, MEMORY[0x1E695E9C0]);
        if (v6)
        {
          v14 = v6;
          v17 = !FigAlternateOfflinePlayableForMediaSelectionFilterCreate(v5, *(v4 + 144), *(v4 + 72), 1, &cf) && (v15 = cf, (v16 = *(*(CMBaseObjectGetVTable() + 16) + 24)) != 0) && !v16(v15, v14, &theArray) && theArray && CFArrayGetCount(theArray) == 1;
          CFRelease(v14);
          if (theArray)
          {
            CFRelease(theArray);
          }

          goto LABEL_16;
        }

        famcs_shouldSendSteeringManifestRequest_cold_1(0, v7, v8, v9, v10, v11, v12, v13, theArray, cf, SHIDWORD(cf), v21);
      }
    }
  }

  v17 = 0;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return !v17;
}

void famcs_setSteeringRequestReloadTimer(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = fmax(a2, 0.0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigHTTPStopAndReleaseTimer((DerivedStorage + 176));
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = CMBaseObjectGetDerivedStorage();
  FigHTTPCreateTimer(*(v5 + 8), famcs_steeringRequestReloadTimerCallback, *(v5 + 168), (v5 + 176), v2);
}

uint64_t famcs_copyMonitorFromRetainProxy(uint64_t a1, void *a2)
{
  if (!a2)
  {
    famcs_copyMonitorFromRetainProxy_cold_3(&v10);
    return v10;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    famcs_copyMonitorFromRetainProxy_cold_1(&v8);
    v6 = v8;
    goto LABEL_7;
  }

  Owner = FigRetainProxyGetOwner();
  if (!Owner)
  {
    *a2 = 0;
LABEL_10:
    famcs_copyMonitorFromRetainProxy_cold_2(&v9);
    v6 = v9;
    goto LABEL_7;
  }

  v4 = CFRetain(Owner);
  *a2 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != FigAlternateFilterMonitorGetTypeID())
  {
    goto LABEL_10;
  }

  v6 = 0;
LABEL_7:
  FigRetainProxyUnlockMutex();
  return v6;
}

uint64_t famcs_handleSteeringManifestNetworkError(uint64_t a1, uint64_t a2, int a3, __CFError *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0.0;
  if (a3 == -12668)
  {
LABEL_6:
    *(DerivedStorage + 96) = v8;
    goto LABEL_7;
  }

  if (a2 && a3 == -16853)
  {
    v9 = MEMORY[0x19A8CCD90](a2, 0.0);
    v8 = v9 - CFAbsoluteTimeGetCurrent();
    if (v8 < 1.0)
    {
      v8 = 1.0;
    }

    goto LABEL_6;
  }

LABEL_7:
  if (dword_1EAF17490)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return famcs_setSteeringRequestReloadTimer(a1, *(DerivedStorage + 96));
}

uint64_t famcs_invokeTrigger(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, @"AlternateFilterMonitorProperty_PathwayPriorityList", a2);
}

uint64_t famcs_copyFilterForCurrentState(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    FigSimpleMutexLock();
    v5 = *(v4 + 24);
    if (v5)
    {
      v5 = CFRetain(v5);
    }

    *a2 = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    famcs_copyFilterForCurrentState_cold_1(&v7);
    return v7;
  }
}

uint64_t OUTLINED_FUNCTION_11_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_13_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_14_62(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFIndex MovieProxyDataCreateForByteStream(const __CFAllocator *a1, const __CFURL *a2, CFTypeRef *a3)
{
  v3 = a2;
  v21 = 0;
  blockBufferOut = 0;
  v20 = 0;
  if (!a2)
  {
    MovieProxyDataCreateForByteStream_cold_2(v30);
LABEL_50:
    CFDataWithBlockBufferNoCopy = LODWORD(v30[0]);
    goto LABEL_38;
  }

  if (!a3)
  {
    MovieProxyDataCreateForByteStream_cold_1(v30);
    v3 = 0;
    goto LABEL_50;
  }

  MovieUsesFragments(a2, &v20, 0);
  if (v20)
  {
    v30[0] = 0;
    url = 0;
    ptr[0] = 0;
    cf[0] = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = MovieInformationCreate(*MEMORY[0x1E695E480], 0, v30);
    if (v7 || (MoovParseByteStream(v30[0], 10, v3, 0), v7) || (MovieHeaderMakerCreateWithMovieInformation(v6, v30[0], 2, ptr), v7))
    {
      CFDataWithBlockBufferNoCopy = v7;
      v15 = 0;
      v12 = 0;
    }

    else
    {
      v8 = @"com.apple.quicktime-movie";
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10 && (v10(CMBaseObject, *MEMORY[0x1E695FFA0], v6, &url), url))
      {
        v11 = CFURLCopyPathExtension(url);
        v12 = v11;
        if (v11)
        {
          FileTypeForMovieFamilyExtension = FigGetFileTypeForMovieFamilyExtension(v11);
          if (FileTypeForMovieFamilyExtension)
          {
            v8 = FileTypeForMovieFamilyExtension;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      CFDataWithBlockBufferNoCopy = MovieHeaderMakerCopyMovieHeaderAsBlockBuffer(ptr[0], v6, v8, url, cf);
      if (CFDataWithBlockBufferNoCopy)
      {
        v15 = 0;
      }

      else
      {
        v15 = cf[0];
        cf[0] = 0;
      }
    }

    if (url)
    {
      CFRelease(url);
    }

    if (v30[0])
    {
      CFRelease(v30[0]);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    MovieHeaderMakerRelease(ptr[0]);
    if (CFDataWithBlockBufferNoCopy)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0;
  }

  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  *ptr = 0u;
  url = 0;
  *cf = 0u;
  v24 = 0u;
  v16 = FigAtomStreamInitWithByteStream();
  if (v16)
  {
    CFDataWithBlockBufferNoCopy = v16;
  }

  else
  {
    v17 = CMBlockBufferCreateEmpty(a1, 0x10u, 0, &url);
    v3 = url;
    if (!v17)
    {
      v17 = FigAtomWriterInitWithBlockBuffer();
      v3 = url;
      if (!v17)
      {
        cf[1] = url;
        if (v15)
        {
          cf[0] = v15;
        }

        v17 = ProcessChildAtoms(v30, ptr, CreateMovieProxyForByteStream_atomDispatch, 1, TopLevelOmitFilter, cf);
        v3 = url;
        if (!v17)
        {
          v18 = CMBlockBufferCreateContiguous(a1, url, a1, 0, 0, 0, 0, &blockBufferOut);
          if (v18)
          {
            CFDataWithBlockBufferNoCopy = v18;
          }

          else
          {
            CFDataWithBlockBufferNoCopy = FigCreateCFDataWithBlockBufferNoCopy();
            if (!CFDataWithBlockBufferNoCopy)
            {
              *a3 = v21;
              v21 = 0;
            }
          }

          goto LABEL_36;
        }
      }
    }

    CFDataWithBlockBufferNoCopy = v17;
    if (v3)
    {
      CFRelease(v3);
    }
  }

LABEL_52:
  v3 = 0;
LABEL_36:
  if (v15)
  {
    CFRelease(v15);
  }

LABEL_38:
  if (v21)
  {
    CFRelease(v21);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return CFDataWithBlockBufferNoCopy;
}

uint64_t ProcessMovieAtom(_OWORD *a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  if (*a4)
  {
    memset(v8, 0, sizeof(v8));
    result = FigAtomStreamInitWithBBuf();
    if (result)
    {
      return result;
    }

    a1 = v8;
  }

  result = ProcessContainerAtom(a1, a2, 1836019574, ProcessMovieAtom_atomDispatch, 3, CommonOmitFilter, a4);
  *a3 = 1;
  return result;
}

uint64_t ProcessChildAtoms(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t, char *, uint64_t), uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v26 = 0;
  theBuffer = 0;
  v25 = 0;
  v23 = 0;
  v12 = a4 - 1;
  do
  {
    CurrentAtomTypeAndDataLength = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (CurrentAtomTypeAndDataLength)
    {
LABEL_35:
      v21 = CurrentAtomTypeAndDataLength;
      goto LABEL_32;
    }

    if (a4 < 1)
    {
      goto LABEL_12;
    }

    if (v26 != *a3)
    {
      v16 = 0;
      v15 = a3;
      while (v12 != v16)
      {
        v17 = *(v15 + 4);
        v15 += 2;
        ++v16;
        if (v26 == v17)
        {
          v14 = v16 >= a4;
          goto LABEL_10;
        }
      }

LABEL_12:
      v18 = 0;
      v14 = 1;
      goto LABEL_13;
    }

    v14 = 0;
    v15 = a3;
LABEL_10:
    CurrentAtomTypeAndDataLength = v15[1](a1, a2, &v23, a6);
    if (CurrentAtomTypeAndDataLength)
    {
      goto LABEL_35;
    }

    v18 = 1;
LABEL_13:
    if (v23)
    {
      v21 = 0;
      goto LABEL_32;
    }

    v19 = !v14;
    if (!a5)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      v18 = a5(v26);
    }

    if (!v18)
    {
      CurrentAtomTypeAndDataLength = FigAtomWriterBeginAtom();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_35;
      }

      if (v25)
      {
        CurrentAtomTypeAndDataLength = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_35;
        }

        CMBlockBufferGetDataLength(theBuffer);
        CurrentAtomTypeAndDataLength = FigAtomWriterAppendBlockBufferData();
        if (CurrentAtomTypeAndDataLength)
        {
          goto LABEL_35;
        }

        if (theBuffer)
        {
          CFRelease(theBuffer);
        }

        theBuffer = 0;
      }

      CurrentAtomTypeAndDataLength = FigAtomWriterEndAtom();
      if (CurrentAtomTypeAndDataLength)
      {
        goto LABEL_35;
      }
    }

    Atom = FigAtomStreamAdvanceToNextAtom();
  }

  while (!Atom);
  if (Atom == -12890)
  {
    v21 = 0;
  }

  else
  {
    v21 = Atom;
  }

LABEL_32:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v21;
}

uint64_t OUTLINED_FUNCTION_7_96(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, size_t lengthAtOffsetOut, char *dataPointerOut)
{

  return CMBlockBufferGetDataPointer(a1, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_8_83(uint64_t a1, unsigned __int16 a2)
{

  return FigAtomWriterBeginAtom();
}

uint64_t FigVCPInvalidatePrologue(uint64_t a1)
{
  v1 = 1;
  if (!FigAtomicCompareAndSwap32())
  {
    FigAtomicCompareAndSwap32();
    return 0;
  }

  return v1;
}

CMTime *FigVCPGetFoldedTime@<X0>(CMTime *result@<X0>, uint64_t a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = *result;
  if ((*(a2 + 12) & 0x1D) == 1)
  {
    v5 = result;
    *&time1.start.value = *a2;
    time1.start.epoch = *(a2 + 16);
    v9 = *MEMORY[0x1E6960CC0];
    *&time2.value = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    time2.epoch = v6;
    result = CMTimeCompare(&time1.start, &time2);
    if ((result & 0x80000000) == 0 && (*(a2 + 36) & 0x1D) == 1)
    {
      *&time1.start.value = *(a2 + 24);
      time1.start.epoch = *(a2 + 40);
      *&time2.value = v9;
      time2.epoch = v6;
      result = CMTimeCompare(&time1.start, &time2);
      if (result >= 1)
      {
        *&time1.start.value = *&v5->value;
        time1.start.epoch = v5->epoch;
        time2 = *a2;
        result = CMTimeCompare(&time1.start, &time2);
        if (result >= 1)
        {
          v7 = *&v5->value;
          time2.epoch = v5->epoch;
          v8 = *(a2 + 16);
          *&time1.start.value = *a2;
          *&time1.start.epoch = v8;
          *&time1.duration.timescale = *(a2 + 32);
          *&time2.value = v7;
          return CMTimeFoldIntoRange(a3, &time2, &time1);
        }
      }
    }
  }

  return result;
}

uint64_t FigVCPGetFoldedTimeRanges(__int128 *a1, CMTime *a2, uint64_t a3, CMTime *a4, CMTime *a5, CMTime *a6, CMTime *a7)
{
  v37 = **&MEMORY[0x1E6960C70];
  v36 = v37;
  v35 = v37;
  v34 = v37;
  if ((*(a1 + 12) & 1) == 0)
  {
    FigVCPGetFoldedTimeRanges_cold_1(&time1);
    return LODWORD(time1.start.value);
  }

  if ((*(a3 + 12) & 0x1D) == 1 && (*&time1.start.value = *a3, time1.start.epoch = *(a3 + 16), v28 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, (CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0) && (*(a3 + 36) & 0x1D) == 1 && (*&time1.start.value = *(a3 + 24), time1.start.epoch = *(a3 + 40), *&time2.value = v28, time2.epoch = v14, CMTimeCompare(&time1.start, &time2) > 0))
  {
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    time2 = *a2;
    if (!CMTimeCompare(&time1.start, &time2))
    {
      v22 = *a1;
      time2.epoch = *(a1 + 2);
      v23 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v23;
      *&time1.duration.timescale = *(a3 + 32);
      *&time2.value = v22;
      FigVCPGetFoldedTime(&time2, &time1, &v37);
      *&v36.value = *&v37.value;
      epoch = v37.epoch;
      goto LABEL_13;
    }

    v15 = *a1;
    time2.epoch = *(a1 + 2);
    v16 = *(a3 + 16);
    *&time1.start.value = *a3;
    *&time1.start.epoch = v16;
    *&time1.duration.timescale = *(a3 + 32);
    *&time2.value = v15;
    FigVCPGetFoldedTime(&time2, &time1, &v37);
    *&time1.start.value = *a1;
    time1.start.epoch = *(a1 + 2);
    time2 = *a2;
    if (CMTimeCompare(&time1.start, &time2) < 0)
    {
      v24 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v24;
      *&time1.duration.timescale = *(a3 + 32);
      CMTimeRangeGetEnd(&time2, &time1);
      *&time1.start.value = *&a2->value;
      time1.start.epoch = a2->epoch;
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        v25 = *(a3 + 16);
        *&time1.start.value = *a3;
        *&time1.start.epoch = v25;
        *&time1.duration.timescale = *(a3 + 32);
        CMTimeRangeGetEnd(&v36, &time1);
        v35 = *a3;
        memset(&time2, 0, sizeof(time2));
        *&time1.start.value = *&a2->value;
        time1.start.epoch = a2->epoch;
        rhs = *a1;
        CMTimeSubtract(&time2, &time1.start, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        time1.start = v36;
        v30 = v37;
        CMTimeSubtract(&rhs, &time1.start, &v30);
        memset(&v30, 0, sizeof(v30));
        time1.start = time2;
        lhs = rhs;
        CMTimeSubtract(&v30, &time1.start, &lhs);
        time1.start = v30;
        lhs = *(a3 + 24);
        if (CMTimeCompare(&time1.start, &lhs) < 0)
        {
          *&time1.start.value = *a3;
          time1.start.epoch = *(a3 + 16);
          lhs = v30;
          CMTimeAdd(&v34, &time1.start, &lhs);
        }

        else
        {
          v26 = *(a3 + 16);
          *&time1.start.value = *a3;
          *&time1.start.epoch = v26;
          *&time1.duration.timescale = *(a3 + 32);
          CMTimeRangeGetEnd(&v34, &time1);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v17 = *(a3 + 16);
      *&time1.start.value = *a3;
      *&time1.start.epoch = v17;
      *&time1.duration.timescale = *(a3 + 32);
      CMTimeRangeGetEnd(&time2, &time1);
      *&time1.start.value = *a1;
      time1.start.epoch = *(a1 + 2);
      if ((CMTimeCompare(&time1.start, &time2) & 0x80000000) == 0)
      {
        v18 = *(a3 + 16);
        v36 = *a3;
        v19 = *(a3 + 32);
        *&time1.start.value = *a3;
        *&time1.start.epoch = v18;
        *&time1.duration.timescale = v19;
        CMTimeRangeGetEnd(&v35, &time1);
        memset(&time2, 0, sizeof(time2));
        *&time1.start.value = *a1;
        time1.start.epoch = *(a1 + 2);
        rhs = *a2;
        CMTimeSubtract(&time2, &time1.start, &rhs);
        memset(&rhs, 0, sizeof(rhs));
        time1.start = v37;
        v30 = *a3;
        CMTimeSubtract(&rhs, &time1.start, &v30);
        memset(&v30, 0, sizeof(v30));
        time1.start = time2;
        lhs = rhs;
        CMTimeSubtract(&v30, &time1.start, &lhs);
        time1.start = v30;
        lhs = *(a3 + 24);
        if (CMTimeCompare(&time1.start, &lhs) < 0)
        {
          v27 = *(a3 + 16);
          *&time1.start.value = *a3;
          *&time1.start.epoch = v27;
          *&time1.duration.timescale = *(a3 + 32);
          CMTimeRangeGetEnd(&lhs, &time1);
          time1.start = v30;
          CMTimeSubtract(&v34, &lhs, &time1.start);
        }

        else
        {
          v34 = *a3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v37 = *a1;
  }

  *&v36.value = *&a2->value;
  epoch = a2->epoch;
LABEL_13:
  v36.epoch = epoch;
LABEL_14:
  if (a4)
  {
    *a4 = v37;
  }

  if (a5)
  {
    *a5 = v36;
  }

  if (a6)
  {
    *a6 = v35;
  }

  result = 0;
  if (a7)
  {
    *a7 = v34;
  }

  return result;
}

uint64_t fvcp_preprocessParameters_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPPreprocessParametersID = result;
  return result;
}

uint64_t FigVCPPreprocessParametersCreate(const __CFAllocator *a1, uint64_t a2, void *a3, double a4, double a5)
{
  cf = 0;
  if (a3)
  {
    Mutable = FigVCPPreprocessParametersCreateMutable(a1, &cf);
    if (Mutable)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      v8 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      FigCFDictionarySetInt();
      v9 = cf;
      *(cf + 3) = v8;
      v9[16] = 100;
      *a3 = v9;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreate_cold_1(&v12);
    return v12;
  }

  return Mutable;
}

uint64_t FigVCPPreprocessParametersCreateMutable(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    MEMORY[0x19A8D3660](&FigVCPPreprocessParametersGetTypeID_sRegisterFigVCPPreprocessParametersOnce, fvcp_preprocessParameters_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      result = 0;
      *(v4 + 16) = 1065353216;
      *a2 = v4;
    }

    else
    {
      FigVCPPreprocessParametersCreateMutable_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreateMutable_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigVCPPreprocessParametersCreateCopy(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x19A8D3660](&FigVCPPreprocessParametersGetTypeID_sRegisterFigVCPPreprocessParametersOnce, fvcp_preprocessParameters_Register);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      *(Instance + 16) = *(a2 + 16);
      v7 = *(a2 + 24);
      if (v7)
      {
        v7 = CFRetain(v7);
      }

      *(v6 + 24) = v7;
      v8 = *(a2 + 32);
      if (v8)
      {
        v8 = CFRetain(v8);
      }

      *(v6 + 32) = v8;
      v9 = *(a2 + 40);
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      *(v6 + 40) = v9;
      v10 = *(a2 + 48);
      if (v10)
      {
        v11 = CFRetain(v10);
      }

      else
      {
        v11 = 0;
      }

      result = 0;
      *(v6 + 48) = v11;
      *(v6 + 64) = *(a2 + 64);
      *a3 = v6;
    }

    else
    {
      FigVCPPreprocessParametersCreateCopy_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FigVCPPreprocessParametersCreateCopy_cold_2(&v14);
    return v14;
  }

  return result;
}

uint64_t FigVCPSourceStartOver(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(a1);
}

uint64_t FigVCPSourceCheckSampleAvailability(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v12)
  {
    return 4294954514;
  }

  v14 = *a4;
  v15 = *(a4 + 2);
  return v12(a1, a2, a3, &v14, a5, a6);
}

uint64_t FigVCPSourceSetCurrentTime(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v6)
  {
    return 4294954514;
  }

  v8 = *a3;
  v9 = *(a3 + 2);
  return v6(a1, a2, &v8);
}

uint64_t FigVCPSourceCopyConformedImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVCPSourceCopySampleBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVCPSourceCopyConformedTimedImages(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t FigVCPSourceCopyTimedSampleBuffers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t FigVCPSourceHasNoMoreSamples(uint64_t a1)
{
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v2)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t FigVCPSourceGetEarliestSequentialSampleTimeAfterTime(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a2;
  v11 = *(a2 + 2);
  return v8(a1, &v10, a3, a4);
}

uint64_t FigVCPSourceThrottleForBackground(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 16);
  result = VTable + 16;
  v7 = *(v6 + 72);
  if (v7)
  {

    return v7(a1, a2);
  }

  return result;
}

uint64_t FigVCPSourceCopyPerformanceDictionary(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t FigVCPSourceSetPreprocessParameters(uint64_t a1, const void *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 16) == 1986618469)
  {
    v4 = result;
    FigSimpleMutexLock();
    if (!FigCFEqual())
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      v6 = *(v4 + 40);
      if (v6)
      {
        CFRelease(v6);
        *(v4 + 40) = 0;
      }

      ++*(v4 + 48);
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t FigVCPSourceGetTypeID()
{
  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fvcp_source_createCommon(uint64_t a1, int a2, int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef *a8)
{
  if (!a2)
  {
    v24 = 3003;
LABEL_20:
    fvcp_source_createCommon_cold_1(v24, &v25);
    return v25;
  }

  if (!a4)
  {
    v24 = 3004;
    goto LABEL_20;
  }

  if (!a8)
  {
    v24 = 3005;
    goto LABEL_20;
  }

  if (!a6)
  {
    v24 = 3006;
    goto LABEL_20;
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v14 = CMDerivedObjectCreate();
  if (v14)
  {
    return v14;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 8) = a7;
  v16 = CMBaseObjectGetDerivedStorage();
  *(v16 + 216) = CFRetain(a4);
  *(v16 + 224) = 0;
  *(v16 + 16) = a3;
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(v16 + 240) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(v16 + 256) = v19;
  *(v16 + 264) = v18;
  *(v16 + 280) = v19;
  *(v16 + 288) = a5;
  *(v16 + 232) = FigSimpleMutexCreate();
  *(v16 + 296) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v20)
  {
    return 4294954514;
  }

  v14 = v20(a4, fvcp_source_sourceImageAvailable, 0);
  if (v14)
  {
    return v14;
  }

  v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v21)
  {
    return 4294954514;
  }

  v14 = v21(a4, fvcp_source_noMoreImages, 0);
  if (v14)
  {
    return v14;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v14 = FigNotificationCenterAddWeakListener();
  if (v14)
  {
    return v14;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v22 = FigNotificationCenterAddWeakListener();
  if (!v22)
  {
    *a8 = 0;
  }

  return v22;
}

uint64_t FigVCPVisualContextSourceCreateWithSamplingWindow(const __CFAllocator *a1, int a2, int a3, const void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v22 = 0;
  v11 = fvcp_source_createCommon(a1, a2, a3, a4, a6, a7, a8, &v22);
  if (!v11)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = a5[3];
    v21[2] = a5[2];
    v21[3] = v13;
    v14 = a5[5];
    v21[4] = a5[4];
    v21[5] = v14;
    v15 = a5[1];
    v21[0] = *a5;
    v21[1] = v15;
    if (FigVideoCompositionTimeWindowDurationIsZero(v21))
    {
      if (a9)
      {
LABEL_4:
        *a9 = v22;
        return v11;
      }
    }

    else
    {
      v16 = *a5;
      *(DerivedStorage + 136) = a5[1];
      *(DerivedStorage + 120) = v16;
      v17 = a5[2];
      v18 = a5[3];
      v19 = a5[4];
      *(DerivedStorage + 200) = a5[5];
      *(DerivedStorage + 184) = v19;
      *(DerivedStorage + 168) = v18;
      *(DerivedStorage + 152) = v17;
      *(DerivedStorage + 328) = FigSimpleMutexCreate();
      *(DerivedStorage + 336) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      if (a9)
      {
        goto LABEL_4;
      }
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v11;
}

uint64_t FigVCPVisualContextGroupSourceCreate(const __CFAllocator *a1, int a2, int a3, CFArrayRef theArray, const __CFArray *a5, uint64_t a6, uint64_t a7, uint64_t a8, CFTypeRef *a9)
{
  cf = 0;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a5)
    {
LABEL_3:
      v17 = CFArrayGetCount(a5);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  value = 0;
  if (!a2)
  {
    FigVCPVisualContextGroupSourceCreate_cold_7(&v32);
LABEL_32:
    v26 = v32;
    goto LABEL_33;
  }

  if (!theArray)
  {
    FigVCPVisualContextGroupSourceCreate_cold_6(&v32);
    goto LABEL_32;
  }

  if (!a5)
  {
    FigVCPVisualContextGroupSourceCreate_cold_5(&v32);
    goto LABEL_32;
  }

  if (!a9)
  {
    FigVCPVisualContextGroupSourceCreate_cold_4(&v32);
    goto LABEL_32;
  }

  if (!a7)
  {
    FigVCPVisualContextGroupSourceCreate_cold_3(&v32);
    goto LABEL_32;
  }

  if (Count != v17)
  {
    FigVCPVisualContextGroupSourceCreate_cold_1(&v32);
    goto LABEL_32;
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v18 = CMDerivedObjectCreate();
  if (v18)
  {
    v26 = v18;
    goto LABEL_33;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = CMBaseObjectGetDerivedStorage();
  *v20 = a2;
  *(v20 + 24) = FigSimpleMutexCreate();
  *(v20 + 104) = 0;
  *(v20 + 8) = a8;
  *(DerivedStorage + 224) = FigCFArrayCreateCopy();
  Mutable = CFArrayCreateMutable(a1, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigVCPVisualContextGroupSourceCreate_cold_2(&v32);
    goto LABEL_32;
  }

  v22 = Mutable;
  v28 = DerivedStorage;
  if (Count < 1)
  {
LABEL_20:
    v26 = 0;
    *(v28 + 216) = v22;
    *a9 = cf;
    return v26;
  }

  v23 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v23);
    Common = fvcp_source_createCommon(a1, a2, a3, ValueAtIndex, a6, a7, a8, &value);
    if (Common)
    {
      break;
    }

    CFArrayAppendValue(v22, value);
    if (value)
    {
      CFRelease(value);
      value = 0;
    }

    if (Count == ++v23)
    {
      goto LABEL_20;
    }
  }

  v26 = Common;
  CFRelease(v22);
  if (value)
  {
    CFRelease(value);
  }

LABEL_33:
  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t FigVCPBufferQueueSourceCreate(const __CFAllocator *a1, int a2, const void *a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v33 = 0;
  if (!a2)
  {
    FigVCPBufferQueueSourceCreate_cold_4(v32);
    return LODWORD(v32[0]);
  }

  if (!a3)
  {
    FigVCPBufferQueueSourceCreate_cold_3(v32);
    return LODWORD(v32[0]);
  }

  if (!a9)
  {
    FigVCPBufferQueueSourceCreate_cold_2(v32);
    return LODWORD(v32[0]);
  }

  if (!a7)
  {
    FigVCPBufferQueueSourceCreate_cold_1(v32);
    return LODWORD(v32[0]);
  }

  MEMORY[0x19A8D3660](&FigVCPSourceGetClassID_sRegisterFigVCPSourceBaseTypeOnce, fvcp_source_RegisterFigVCPSourceBaseType);
  v16 = CMDerivedObjectCreate();
  v17 = v33;
  if (v16)
  {
    goto LABEL_11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  *(DerivedStorage + 24) = FigSimpleMutexCreate();
  *(DerivedStorage + 104) = 0;
  *(DerivedStorage + 8) = a8;
  v19 = CMBaseObjectGetDerivedStorage();
  *(v19 + 216) = CFRetain(a3);
  *(v19 + 224) = 0;
  *(v19 + 264) = 0;
  v20 = *(a4 + 16);
  *(v19 + 268) = *a4;
  *(v19 + 284) = v20;
  v21 = MEMORY[0x1E6960C70];
  v22 = *MEMORY[0x1E6960C70];
  *(v19 + 304) = *MEMORY[0x1E6960C70];
  v23 = *(v21 + 16);
  *(v19 + 320) = v23;
  *(v19 + 328) = v22;
  *(v19 + 344) = v23;
  *(v19 + 352) = a6;
  *(v19 + 296) = FigSimpleMutexCreate();
  *(v19 + 232) = FigSimpleMutexCreate();
  *(v19 + 360) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v24 = a5[3];
  v32[2] = a5[2];
  v32[3] = v24;
  v25 = a5[5];
  v32[4] = a5[4];
  v32[5] = v25;
  v26 = a5[1];
  v32[0] = *a5;
  v32[1] = v26;
  if (!FigVideoCompositionTimeWindowDurationIsZero(v32))
  {
    v27 = *a5;
    *(v19 + 136) = a5[1];
    *(v19 + 120) = v27;
    v28 = a5[2];
    v29 = a5[3];
    v30 = a5[4];
    *(v19 + 200) = a5[5];
    *(v19 + 184) = v30;
    *(v19 + 168) = v29;
    *(v19 + 152) = v28;
    *(v19 + 256) = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v16 = FigNotificationCenterAddWeakListener();
  v17 = v33;
  if (v16)
  {
LABEL_11:
    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    *a9 = v33;
  }

  return v16;
}

uint64_t fvcp_pendingFrame_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPPendingFrameID = result;
  return result;
}

__n128 FigVCPPendingFrameGetFrameTime@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

__n128 FigVCPPendingFrameGetFoldedFrameTime@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 56);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 72);
  return result;
}

uint64_t FigVCPPendingFrameGetCompletionStatus(uint64_t a1)
{
  if (!FigAtomicCompareAndSwap32() && !FigAtomicCompareAndSwap32())
  {
    return 4294954989;
  }

  result = FigAtomicCompareAndSwapPtr();
  if (result)
  {
    return *(a1 + 200);
  }

  return result;
}

uint64_t FigVCPPendingFrameSkipCoreAnimationPostProcessing(uint64_t a1)
{
  CFDictionaryGetValue(*(a1 + 24), @"EnablePostProcessing");

  return FigCFEqual();
}

void FigVCPPendingFrameReleaseAndClearSourceFrames(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 96) = 0;
    }

    v3 = *(a1 + 104);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 104) = 0;
    }
  }

  else
  {
    v4 = *(a1 + 112);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(a1 + 128) + 8 * i);
        if (v6)
        {
          CFRelease(v6);
          *(*(a1 + 128) + 8 * i) = 0;
          v4 = *(a1 + 112);
        }
      }
    }

    v7 = *(a1 + 128);
    if (v7)
    {
      *(a1 + 128) = 0;
      free(v7);
    }

    v8 = *(a1 + 120);
    if (v8)
    {
      *(a1 + 120) = 0;
      free(v8);
    }

    *(a1 + 112) = 0;
    v9 = *(a1 + 136);
    if (v9 >= 1)
    {
      for (j = 0; j < v9; ++j)
      {
        v11 = *(*(a1 + 152) + 8 * j);
        if (v11)
        {
          CFRelease(v11);
          *(*(a1 + 152) + 8 * j) = 0;
          v9 = *(a1 + 136);
        }
      }
    }

    v12 = *(a1 + 152);
    if (v12)
    {
      *(a1 + 152) = 0;
      free(v12);
    }

    v13 = *(a1 + 144);
    if (v13)
    {
      *(a1 + 144) = 0;
      free(v13);
    }

    *(a1 + 136) = 0;
  }
}

uint64_t FigVCPPendingFrameCreateWithWindowedSamples(uint64_t a1, uint64_t a2, const void *a3, __int128 *a4, __int128 *a5, char a6, int a7, int a8, char a9, CFTypeRef cf, const void *a11, uint64_t *a12)
{
  v23 = 0;
  v21 = *a4;
  v22 = *(a4 + 2);
  v19 = *a5;
  v20 = *(a5 + 2);
  v12 = figvcp_pendingFrame_createCommon(a1, a2, a3, &v21, &v19, a6, a7, a8, a9, &v23);
  if (v12)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
    v14 = v23;
    if (!v23)
    {
      return v12;
    }

LABEL_11:
    CFRelease(v14);
    return v12;
  }

  if (cf)
  {
    v13 = CFRetain(cf);
  }

  else
  {
    v13 = 0;
  }

  v14 = v23;
  *(v23 + 96) = v13;
  if (a11)
  {
    v15 = CFRetain(a11);
    v14 = v23;
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 104) = v15;
  *(v14 + 88) = 1;
  if (!a12)
  {
    goto LABEL_11;
  }

  *a12 = v14;
  return v12;
}

uint64_t figvcp_pendingFrame_createCommon(uint64_t a1, int a2, const void *a3, __int128 *a4, __int128 *a5, char a6, int a7, int a8, char a9, uint64_t *a10)
{
  if (!a3)
  {
    figvcp_pendingFrame_createCommon_cold_5(&v24);
    return v24;
  }

  if ((*(a4 + 3) & 0x1D) != 1)
  {
    figvcp_pendingFrame_createCommon_cold_1(&v24);
    return v24;
  }

  if ((*(a5 + 3) & 1) != 0 && (*(a5 + 3) & 0x1D) != 1)
  {
    figvcp_pendingFrame_createCommon_cold_4(&v24);
    return v24;
  }

  if (!a10)
  {
    figvcp_pendingFrame_createCommon_cold_3(&v24);
    return v24;
  }

  MEMORY[0x19A8D3660](&FigVCPPendingFrameGetTypeID_sRegisterFigVCPPendingFrameOnce, fvcp_pendingFrame_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    figvcp_pendingFrame_createCommon_cold_2(&v24);
    return v24;
  }

  v18 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = CFRetain(a3);
  v19 = *a4;
  *(v18 + 48) = *(a4 + 2);
  *(v18 + 32) = v19;
  if (*(a5 + 3))
  {
    v20 = a5;
  }

  else
  {
    v20 = a4;
  }

  v21 = *v20;
  *(v18 + 72) = *(v20 + 2);
  *(v18 + 56) = v21;
  *(v18 + 80) = a6;
  *(v18 + 84) = a7;
  *(v18 + 240) = a8;
  *(v18 + 204) = a9;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  result = 0;
  *(v18 + 248) = UpTimeNanoseconds;
  *a10 = v18;
  return result;
}

uint64_t FigVCPPendingFrameCreate(uint64_t a1, int a2, const void *a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, char a9, unint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v48[0] = 0;
  if (!a3)
  {
    FigVCPPendingFrameCreate_cold_9(&v46);
    goto LABEL_39;
  }

  if ((*(a4 + 12) & 0x1D) != 1)
  {
    FigVCPPendingFrameCreate_cold_1(&v46);
    goto LABEL_39;
  }

  if ((*(a5 + 12) & 1) != 0 && (*(a5 + 12) & 0x1D) != 1)
  {
    FigVCPPendingFrameCreate_cold_8(&v46);
    goto LABEL_39;
  }

  if (!a16)
  {
    FigVCPPendingFrameCreate_cold_7(&v46);
    goto LABEL_39;
  }

  v18 = a10;
  if (a10 < 1)
  {
    v20 = 0;
    v22 = 0;
    goto LABEL_19;
  }

  if (a10 >> 62 || !(4 * a10) || (v19 = malloc_type_malloc(4 * a10, 0x100004052888210uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_6(&v46);
LABEL_39:
    v20 = 0;
LABEL_41:
    v33 = v46;
    goto LABEL_34;
  }

  v20 = v19;
  if (a10 >> 61 || !(8 * a10) || (v21 = malloc_type_malloc(8 * a10, 0x2004093837F09uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_5(&v46);
    goto LABEL_41;
  }

  v22 = v21;
  for (i = 0; i != a10; ++i)
  {
    v20[i] = *(a11 + 4 * i);
    v24 = *(a12 + 8 * i);
    if (v24)
    {
      v24 = CFRetain(v24);
    }

    v22[i] = v24;
  }

LABEL_19:
  v25 = a13;
  if (a13 < 1)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_32;
  }

  if (a13 >> 62 || !(4 * a13) || (v26 = malloc_type_malloc(4 * a13, 0x100004052888210uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_4(&v46);
    v27 = 0;
    goto LABEL_44;
  }

  v27 = v26;
  if (a13 >> 61 || !(8 * a13) || (v28 = malloc_type_malloc(8 * a13, 0x2004093837F09uLL)) == 0)
  {
    FigVCPPendingFrameCreate_cold_3(&v46);
LABEL_44:
    v29 = 0;
    v33 = v46;
    if (!v22)
    {
      goto LABEL_51;
    }

LABEL_45:
    if (a10 >= 1)
    {
      v36 = v22;
      do
      {
        if (*v36)
        {
          CFRelease(*v36);
        }

        ++v36;
        --v18;
      }

      while (v18);
    }

    free(v22);
    goto LABEL_51;
  }

  v29 = v28;
  for (j = 0; j != a13; ++j)
  {
    v27[j] = *(a14 + 4 * j);
    v31 = *(a15 + 8 * j);
    if (v31)
    {
      v31 = CFRetain(v31);
    }

    v29[j] = v31;
  }

LABEL_32:
  v46 = *a4;
  v47 = *(a4 + 16);
  v44 = *a5;
  v45 = *(a5 + 16);
  v32 = figvcp_pendingFrame_createCommon(a1, a2, a3, &v46, &v44, a6, a7, a8, a9, v48);
  v33 = v32;
  if (!v32)
  {
    v34 = v48[0];
    *(v48[0] + 14) = a10;
    v34[15] = v20;
    v34[16] = v22;
    v34[17] = a13;
    v34[18] = v27;
    v34[19] = v29;
    *a16 = v34;
    v48[0] = 0;
    v20 = 0;
LABEL_34:
    free(v20);
    v27 = 0;
    goto LABEL_35;
  }

  FigVCPPendingFrameCreate_cold_2(v32);
  if (v22)
  {
    goto LABEL_45;
  }

LABEL_51:
  free(v20);
  if (v29)
  {
    if (a13 >= 1)
    {
      v37 = v29;
      do
      {
        if (*v37)
        {
          CFRelease(*v37);
        }

        ++v37;
        --v25;
      }

      while (v25);
    }

    free(v29);
  }

LABEL_35:
  free(v27);
  if (v48[0])
  {
    CFRelease(v48[0]);
  }

  return v33;
}

BOOL FigVCPPendingFrameShouldGenerateHDRStats(uint64_t a1)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    goto LABEL_2;
  }

  if (*(a1 + 184))
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = CVBufferCopyAttachment(*(a1 + 176), *MEMORY[0x1E6965D88], 0);
    v6 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965F30], 0);
    v7 = CVBufferCopyAttachment(v4, *MEMORY[0x1E6965F98], 0);
    v2 = FigCFEqual() && FigCFEqual() && FigCFEqual() != 0;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  else
  {
LABEL_2:
    v2 = 0;
  }

  *(a1 + 204) = v2;
  return v2;
}

void FigVCPPendingFrameSetRenderedFrame(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 176) = v3;

  fvcp_pendingFrame_propagateSceneLuxAttachmentFromSourceToRenderedFrameIfApplicable(a1);
}

uint64_t FigVCPPendingFrameSetRenderComplete(uint64_t a1)
{
  FigAtomicCompareAndSwap32();
  FigAtomicCompareAndSwap32();

  return FigAtomicCompareAndSwap32();
}

uint64_t FigVCPPendingFrameGenerateHDRMetadataAndAttachToRenderedFrame(uint64_t a1)
{
  if (*(a1 + 212) && (*(a1 + 208) & 1) != 0 && (DataFromStatistics = VTHDRMetadataGenerationSessionCreateDataFromStatistics(), DataFromStatistics))
  {
    return DataFromStatistics;
  }

  else
  {
    return 0;
  }
}

uint64_t fvcp_timing_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPTimingID = result;
  return result;
}

CFTypeRef FigVCPTimingCopyTimebase(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

__n128 FigVCPTimingGetOutputFrameDuration@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[2];
  *a2 = result;
  a2[1].n128_u64[0] = a1[3].n128_u64[0];
  return result;
}

uint64_t FigVCPTimingSetTimebase(uint64_t a1, OpaqueCMTimebase *a2)
{
  v4 = FigVCPTimingCopyTimebase(a1);
  v5 = v4;
  if (!a2)
  {
    FigVCPTimingSetTimebase_cold_1(&v10);
    v7 = v10;
    if (!v5)
    {
      return v7;
    }

    goto LABEL_6;
  }

  if (v4)
  {
    v9 = fvcp_timing_removeTimebaseListeners(a1);
    if (v9)
    {
      v7 = v9;
LABEL_6:
      CFRelease(v5);
      return v7;
    }
  }

  fvcp_timing_setTimebase(a1, a2);
  CMNotificationCenterGetDefaultLocalCenter();
  v6 = FigNotificationCenterAddWeakListener();
  if (!v6)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    v6 = FigNotificationCenterAddWeakListener();
  }

  v7 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return v7;
}

uint64_t fvcp_timing_setTimebase(uint64_t a1, CMTimebaseRef timebase)
{
  timeOut = **&MEMORY[0x1E6960C70];
  rateOut = 0.0;
  CMTimebaseGetTimeAndRate(timebase, &timeOut, &rateOut);
  if (rateOut > 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  if (rateOut == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  FigSimpleMutexLock();
  *(a1 + 188) = timeOut;
  *(a1 + 164) = v5;
  *(a1 + 214) = 0;
  ++*(a1 + 184);
  FigSimpleMutexUnlock();
  FigSimpleMutexLock();
  v6 = *(a1 + 72);
  *(a1 + 72) = timebase;
  if (timebase)
  {
    CFRetain(timebase);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return FigSimpleMutexUnlock();
}

BOOL FigVCPTimingUsesTimebase(uint64_t a1)
{
  v1 = FigVCPTimingCopyTimebase(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

uint64_t FigVCPTimingSetLoopTimeRange(_OWORD *a1, uint64_t a2)
{
  if ((*(a2 + 12) & 1) == 0 || (*(a2 + 36) & 1) == 0 || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0 || (*(a2 + 12) & 0x1D) == 1 && (time1 = *a2, v8 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v4 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v4, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0) && (*(a2 + 36) & 0x1D) == 1 && (time1 = *(a2 + 24), *&time2.value = v8, time2.epoch = v4, CMTimeCompare(&time1, &time2) > 0))
  {
    FigSimpleMutexLock();
    v6 = *(a2 + 16);
    v5 = *(a2 + 32);
    a1[7] = *a2;
    a1[8] = v6;
    a1[9] = v5;
    FigSimpleMutexUnlock();
    return 0;
  }

  else
  {
    FigVCPTimingSetLoopTimeRange_cold_1(&time1);
    return LODWORD(time1.value);
  }
}

uint64_t FigVCPTimingGetLoopTimeRange@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  FigSimpleMutexLock();
  v4 = a1[8];
  *a2 = a1[7];
  a2[1] = v4;
  a2[2] = a1[9];

  return FigSimpleMutexUnlock();
}

uint64_t FigVCPTimingStartOver(uint64_t a1, CMTime *a2, CMTime *a3, int a4, int a5)
{
  v13 = a5;
  v14 = a4;
  FigSimpleMutexLock();
  *(a1 + 168) = 0;
  if (a5 == -1)
  {
    *(a1 + 169) = 1;
  }

  else
  {
    time1 = *a2;
    v11 = *a3;
    *(a1 + 169) = CMTimeCompare(&time1, &v11) == 0;
    if (a5 == 1)
    {
      time1 = *a2;
      v11 = *a3;
      if (!CMTimeCompare(&time1, &v11) && !FigVCPTimingUsesTimebase(a1))
      {
        *(a1 + 170) = 1;
      }
    }
  }

  ++*(a1 + 184);
  FigSimpleMutexUnlock();
  v9 = FigVCPTimingUsesTimebase(a1);
  fvcp_timing_setNextFrameTime(a1, &a2->value, &a3->value, &v14, &v13, v9, a5 == 0);
  return 0;
}

uint64_t fvcp_timing_setNextFrameTime(uint64_t a1, __int128 *a2, __int128 *a3, _DWORD *a4, _DWORD *a5, int a6, int a7)
{
  FigSimpleMutexLock();
  if (a2)
  {
    v14 = *a2;
    *(a1 + 204) = *(a2 + 2);
    *(a1 + 188) = v14;
  }

  if (a3)
  {
    v15 = *a3;
    *(a1 + 104) = *(a3 + 2);
    *(a1 + 88) = v15;
  }

  if (a4)
  {
    *(a1 + 160) = *a4;
  }

  if (a5)
  {
    *(a1 + 164) = *a5;
  }

  if (a6)
  {
    *(a1 + 213) = *(a1 + 164) == 0;
  }

  if (a7)
  {
    *(a1 + 212) = 1;
  }

  *(a1 + 214) = 0;
  ++*(a1 + 184);

  return FigSimpleMutexUnlock();
}

uint64_t FigVCPTimingResetNextFrameTimeToCurrentTimebaseTime(uint64_t a1)
{
  v4 = **&MEMORY[0x1E6960C70];
  v2 = FigVCPTimingCopyTimebase(a1);
  if (v2)
  {
    CMTimebaseGetTime(&v4, v2);
  }

  if (v4.flags)
  {
    FigSimpleMutexLock();
    *(a1 + 188) = v4;
    *(a1 + 213) = *(a1 + 164) == 0;
    *(a1 + 214) = 0;
    ++*(a1 + 184);
    FigSimpleMutexUnlock();
  }

  return 0;
}

uint64_t FigVCPTimingCopyProcessingState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 104);
  v5 = *(a1 + 136);
  v6 = *(a1 + 88);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 48) = v5;
  *a2 = v6;
  *(a2 + 16) = v4;
  v7 = *(a1 + 168);
  v8 = *(a1 + 200);
  v9 = *(a1 + 152);
  *(a2 + 96) = *(a1 + 184);
  *(a2 + 112) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v7;
  result = FigSimpleMutexUnlock();
  *(a2 + 88) = *(a1 + 24);
  return result;
}

uint64_t FigVCPTimingSaveProcessingState(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 184);
  if (v4 == *(a2 + 96))
  {
    v5 = *(a2 + 100);
    *(a1 + 204) = *(a2 + 116);
    *(a1 + 188) = v5;
    *(a1 + 212) = *(a2 + 124);
    *(a1 + 184) = v4 + 1;
  }

  return FigSimpleMutexUnlock();
}

BOOL FigVCPTimingIsProcessingStateFresh(uint64_t a1, uint64_t a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 184) == *(a2 + 96) && *(a1 + 168) == *(a2 + 80);
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t FigVCPTimingCreate(const __CFAllocator *a1, uint64_t a2, int a3, char a4, int a5, uint64_t a6, uint64_t *a7)
{
  cf = 0;
  if (!a7)
  {
    FigVCPTimingCreate_cold_3(&v26);
    return v26;
  }

  if ((*(a2 + 12) & 0x1D) != 1)
  {
    FigVCPTimingCreate_cold_1(&v26);
    return v26;
  }

  MEMORY[0x19A8D3660](&FigVCPTimingGetTypeID_sRegisterFigVCPTimingOnce, fvcp_timing_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPTimingCreate_cold_2(&v26);
    return v26;
  }

  v15 = Instance;
  *(Instance + 64) = FigSimpleMutexCreate();
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 56) = a3;
  *(v15 + 60) = a4;
  *(v15 + 24) = a6;
  *(v15 + 80) = FigSimpleMutexCreate();
  v17 = MEMORY[0x1E6960C70];
  v18 = *MEMORY[0x1E6960C70];
  *(v15 + 188) = *MEMORY[0x1E6960C70];
  v19 = *(v17 + 16);
  *(v15 + 204) = v19;
  *(v15 + 214) = 0;
  *(v15 + 212) = 0;
  *(v15 + 88) = v18;
  *(v15 + 104) = v19;
  *(v15 + 160) = 0;
  *(v15 + 169) = 0;
  if (!a5)
  {
    v22 = 0;
LABEL_8:
    v23 = 0;
    *a7 = v15;
    v15 = 0;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  HostTimeClock = CMClockGetHostTimeClock();
  v21 = CMTimebaseCreateWithSourceClock(a1, HostTimeClock, &cf);
  v22 = cf;
  if (!v21)
  {
    fvcp_timing_setTimebase(v15, cf);
    v22 = cf;
    goto LABEL_8;
  }

  v23 = v21;
  if (cf)
  {
LABEL_9:
    CFRelease(v22);
  }

LABEL_10:
  if (v15)
  {
    CFRelease(v15);
  }

  return v23;
}

uint64_t FigVCPProcessingStateHasReachedTheEnd(uint64_t a1)
{
  v3 = *(a1 + 112);
  if ((~v3 & 5) == 0 || (*(a1 + 112) & 9) == 9)
  {
    return 1;
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x1D) != 1)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v7 = *(a1 + 116);
  v8 = *(a1 + 76);
  if (*(a1 + 81))
  {
    if (v8 < 0)
    {
      v11 = *(a1 + 100);
      v13.epoch = *(a1 + 16);
      time1.value = v11;
      time1.timescale = *(a1 + 108);
      time1.flags = v3;
      time1.epoch = v7;
      v13.value = *a1;
      v13.timescale = *(a1 + 8);
      v13.flags = v6;
      if (CMTimeCompare(&time1, &v13) < 0)
      {
        return 1;
      }
    }

    else
    {
      v9 = *(a1 + 100);
      v13.epoch = *(a1 + 16);
      time1.value = v9;
      time1.timescale = *(a1 + 108);
      time1.flags = v3;
      time1.epoch = v7;
      v13.value = *a1;
      v13.timescale = *(a1 + 8);
      v13.flags = v6;
      if (CMTimeCompare(&time1, &v13) > 0)
      {
        return 1;
      }
    }
  }

  else if (v8 < 0)
  {
    v12 = *(a1 + 100);
    v13.epoch = *(a1 + 16);
    time1.value = v12;
    time1.timescale = *(a1 + 108);
    time1.flags = v3;
    time1.epoch = v7;
    v13.value = *a1;
    v13.timescale = *(a1 + 8);
    v13.flags = v6;
    if (CMTimeCompare(&time1, &v13) <= 0)
    {
      return 1;
    }
  }

  else
  {
    v10 = *(a1 + 100);
    v13.epoch = *(a1 + 16);
    time1.value = v10;
    time1.timescale = *(a1 + 108);
    time1.flags = v3;
    time1.epoch = v7;
    v13.value = *a1;
    v13.timescale = *(a1 + 8);
    v13.flags = v6;
    if ((CMTimeCompare(&time1, &v13) & 0x80000000) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigVCPProcessingStateAdvanceCurrentTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 56);
  if (v5 && FigVCPSourceArrayGetSourceWithTrackID(a2, v5))
  {
    fvcp_processingState_advanceCurrentTimeWithSourceTiming();
  }

  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v12 = *(a3 + 44);
  v13 = *(a3 + 52);
  if ((*(a1 + 76) & 0x80000000) != 0)
  {
    time = *(a1 + 100);
    CMTimeConvertScale(&lhs, &time, v7, kCMTimeRoundingMethod_RoundTowardPositiveInfinity);
    lhs.value += ((v6 - lhs.value) % v6 + v6) % v6;
    rhs.value = v6;
    rhs.timescale = v7;
    *&rhs.flags = v12;
    HIDWORD(rhs.epoch) = v13;
    CMTimeSubtract(&time, &lhs, &rhs);
  }

  else
  {
    time = *(a1 + 100);
    CMTimeConvertScale(&lhs, &time, v7, kCMTimeRoundingMethod_RoundTowardNegativeInfinity);
    lhs.value += (lhs.value % v6 + v6) / v6 * v6 - (lhs.value % v6 + v6);
    rhs.value = v6;
    rhs.timescale = v7;
    *&rhs.flags = v12;
    HIDWORD(rhs.epoch) = v13;
    CMTimeAdd(&time, &lhs, &rhs);
  }

  *(a1 + 100) = time;
  return 0;
}

const void *FigVCPSourceArrayGetSourceWithTrackID(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v7);
    if (*CMBaseObjectGetDerivedStorage() == a2)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t fvcp_output_Register()
{
  result = _CFRuntimeRegisterClass();
  sFigVCPOutputID = result;
  return result;
}

uint64_t FigVCPOutputGetOutputDurationWaterLevels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = fvcp_output_copyOutputDurationWaterLevel(a1);
  if (a2)
  {
    v6 = v5[1];
    *(a2 + 16) = *(v5 + 4);
    *a2 = v6;
  }

  if (a3)
  {
    v7 = *(v5 + 40);
    *(a3 + 16) = *(v5 + 7);
    *a3 = v7;
LABEL_6:
    CFRelease(v5);
    return 0;
  }

  if (v5)
  {
    goto LABEL_6;
  }

  return 0;
}

CFTypeRef fvcp_output_copyOutputDurationWaterLevel(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  return v3;
}

__n128 FigVCPOutputDurationWaterLevelGetUpperBound@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[1];
  *a2 = result;
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  return result;
}

__n128 FigVCPOutputDurationWaterLevelGetLowerBound@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 56);
  return result;
}

uint64_t FigVCPOutputCopyOutputTagCollectionArray(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v4 = *(a1 + 80);
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }

    FigSimpleMutexUnlock();
    *a2 = v5;
  }

  return 0;
}

uint64_t FigVCPOutputCreate(uint64_t a1, CFArrayRef theArray, const __CFArray *a3, __int128 *a4, __int128 *a5, uint64_t a6, void *a7)
{
  if (!theArray)
  {
    FigVCPOutputCreate_cold_4(&v28);
    return LODWORD(v28.value);
  }

  if (!a7)
  {
    FigVCPOutputCreate_cold_3(&v28);
    return LODWORD(v28.value);
  }

  if (a3)
  {
    Count = CFArrayGetCount(theArray);
    if (Count != CFArrayGetCount(a3))
    {
      FigVCPOutputCreate_cold_1(&v28);
      return LODWORD(v28.value);
    }
  }

  MEMORY[0x19A8D3660](&FigVCPOutputGetTypeID_sRegisterFigVCPOutputOnce, fvcp_output_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPOutputCreate_cold_2(&v28);
    return LODWORD(v28.value);
  }

  v16 = Instance;
  v28 = *a4;
  v27 = *a5;
  v17 = FigVCPOutputDurationWaterLevelCreate(a1, &v28, &v27, (Instance + 96));
  if (v17)
  {
LABEL_17:
    v25 = v17;
    CFRelease(v16);
    return v25;
  }

  v16[11] = FigSimpleMutexCreate();
  v16[9] = CFRetain(theArray);
  if (a3)
  {
    v18 = CFRetain(a3);
  }

  else
  {
    v18 = 0;
  }

  v16[10] = v18;
  v16[3] = a6;
  v16[6] = FigSimpleMutexCreate();
  v19 = CFArrayGetCount(theArray);
  if (v19 >= 1)
  {
    v20 = v19;
    v21 = 0;
    v22 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 56);
      if (v24)
      {
        v28 = *v22;
        v27 = v28;
        v24(ValueAtIndex, 1, &v28, &v27);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      v17 = FigNotificationCenterAddWeakListener();
      if (v17)
      {
        goto LABEL_17;
      }
    }

    while (v20 != ++v21);
  }

  v25 = 0;
  *a7 = v16;
  return v25;
}

uint64_t FigVCPOutputDurationWaterLevelCreate(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t *a4)
{
  if (!a4)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_5(&time1);
    return LODWORD(time1.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if ((a3->flags & 0x1D) != 1)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_2(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  v12 = *a3;
  if (CMTimeCompare(&time1, &v12) <= 0)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_4(&time1);
    return LODWORD(time1.value);
  }

  MEMORY[0x19A8D3660](&FigVCPOutputDurationWaterLevelGetTypeID_sRegisterFigVCPOutputDurationWaterLevelOnce, fvcp_outputDurationWaterLevel_Register);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigVCPOutputDurationWaterLevelCreate_cold_3(&time1);
    return LODWORD(time1.value);
  }

  v8 = Instance;
  result = 0;
  v10 = *&a2->value;
  *(v8 + 32) = a2->epoch;
  *(v8 + 16) = v10;
  v11 = *&a3->value;
  *(v8 + 56) = a3->epoch;
  *(v8 + 40) = v11;
  *a4 = v8;
  return result;
}

void fvcp_output_OutputOccupancyChanged(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = fvcp_output_copyOutputDurationWaterLevel(a2);
  v10 = *(v5 + 5);
  memset(&v9, 0, sizeof(v9));
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v6)
  {
    v6(&v9, a4);
  }

  else
  {
    v9 = **&MEMORY[0x1E6960C70];
  }

  time1 = v9;
  v7 = v10;
  if (CMTimeCompare(&time1, &v7) <= 0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  CFRelease(v5);
}

uint64_t FigVCPOutputSetOutputDurationHighAndLowWaterLevels(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v14 = 0;
  if ((a3->flags & 0x1D) != 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_1(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a3;
  v11 = *MEMORY[0x1E6960CC0];
  *&time2.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_6(&time1);
    return LODWORD(time1.value);
  }

  if ((a2->flags & 0x1D) != 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_2(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a2;
  *&time2.value = v11;
  time2.epoch = v6;
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_5(&time1);
    return LODWORD(time1.value);
  }

  time1 = *a3;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_4(&time1);
    return LODWORD(time1.value);
  }

  v7 = *MEMORY[0x1E695E480];
  time1 = *a2;
  time2 = *a3;
  v8 = FigVCPOutputDurationWaterLevelCreate(v7, &time1, &time2, &v14);
  value = v14;
  if (!v8)
  {
    FigVCPOutputSetOutputDurationHighAndLowWaterLevels_cold_3(a1, v14, &v14, &time1);
    value = time1.value;
  }

  if (value)
  {
    CFRelease(value);
  }

  return v8;
}

uint64_t FigVCPOutputAllOutputsCanAccomodateFrame(uint64_t a1, uint64_t a2)
{
  v4 = fvcp_output_copyOutputDurationWaterLevel(a1);
  v20 = *(v4 + 2);
  Count = CFArrayGetCount(*(a1 + 72));
  v19 = **&MEMORY[0x1E6960C88];
  if (Count >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E6960C70];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v6);
      memset(&v18, 0, sizeof(v18));
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v9)
      {
        v9(&v18, ValueAtIndex);
      }

      else
      {
        v18 = *v7;
      }

      time1 = v19;
      v16 = v18;
      CMTimeMinimum(&v19, &time1, &v16);
      ++v6;
    }

    while (Count != v6);
  }

  v18 = v19;
  time1 = v20;
  v10 = CMTimeCompare(&v18, &time1);
  v11 = v10 >> 31;
  if ((v10 & 0x80000000) == 0 || Count < 1)
  {
LABEL_15:
    if (!v4)
    {
      return v11;
    }

LABEL_16:
    CFRelease(v4);
    return v11;
  }

  v12 = 0;
  while (1)
  {
    v13 = CFArrayGetValueAtIndex(*(a1 + 72), v12);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v14)
    {
      v14 = (v14)(v13);
    }

    if (v14 <= a2)
    {
      break;
    }

    if (Count == ++v12)
    {
      v11 = 1;
      goto LABEL_15;
    }
  }

  v11 = 0;
  if (v4)
  {
    goto LABEL_16;
  }

  return v11;
}

uint64_t FigVCPOutputSetUpcomingImageInfo(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v10);
    v16 = *a3;
    v17 = *(a3 + 2);
    v14 = *a4;
    v15 = *(a4 + 2);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v12)
    {
      break;
    }

    v20 = v16;
    v21 = v17;
    v18 = v14;
    v19 = v15;
    result = v12(ValueAtIndex, a2, &v20, &v18);
    if (result)
    {
      return result;
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputSetDirection(uint64_t a1, int a2)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (a2 >= 0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = -1.0;
  }

  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v7);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (!v9)
    {
      break;
    }

    result = v9(ValueAtIndex, v5);
    if (result)
    {
      return result;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return 4294954514;
}

uint64_t FigVCPOutputSetHDRDisplayMetadataPolicy(uint64_t a1, const void *a2)
{
  v4 = (a1 + 32);
  if (FigCFEqual())
  {
    return 0;
  }

  FigVCPOutputSetHDRDisplayMetadataPolicy_cold_1(a1, a2, v4, &v6);
  return v6;
}

uint64_t FigVCPOutputFlush(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v6)
      {
        v6(ValueAtIndex);
      }
    }
  }

  return FigAtomicCompareAndSwap32();
}