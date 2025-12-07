uint64_t PKDKeyManagerIsReadyToCreateKeyRequestForKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_2(&v8);
    return v8;
  }

  if (!a2)
  {
    PKDKeyManagerIsReadyToCreateKeyRequestForKeyID_cold_1(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v4)
  {
    v5 = v4;
  }

  else if (*(cf + 8))
  {
    v5 = 4294955138;
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t PKDKeyManagerGetDecryptContextForKeyID(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_3(&v6);
    return v6;
  }

  if (!a2)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_2(&v6);
    return v6;
  }

  if (!a3)
  {
    PKDKeyManagerGetDecryptContextForKeyID_cold_1(&v6);
    return v6;
  }

  v5 = 0;
  result = keyManager_ensureDecryptContextForKeyID(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t keyManager_ensureDecryptContextForKeyID(uint64_t a1, void *a2, uint64_t *a3)
{
  v15 = 0;
  if (!a1)
  {
    keyManager_ensureDecryptContextForKeyID_cold_3(&cf);
LABEL_29:
    v8 = 0;
    v9 = 0;
    v7 = cf;
    goto LABEL_20;
  }

  if (!a2)
  {
    keyManager_ensureDecryptContextForKeyID_cold_2(&cf);
    goto LABEL_29;
  }

  FigSimpleMutexLock();
  if (*(a1 + 24))
  {
    FigSimpleMutexUnlock();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
    v7 = v6;
    v8 = 0;
    v9 = 0;
    goto LABEL_20;
  }

  if (keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &v15) || !v15 || !*(v15 + 19))
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  v10 = *(v15 + 20);
  if (!v10)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v9 = CFRetain(v10);
LABEL_12:
  FigSimpleMutexUnlock();
  if (!v8 || v8 == a1)
  {
    cf = 0;
    if (a3)
    {
      v16 = 0;
      FigSimpleMutexLock();
      v11 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
      if (v11)
      {
        v7 = v11;
      }

      else
      {
        keyManager_ensureDecryptContextForEntryInternal(a1, cf, &v16);
        v7 = v12;
        *a3 = v16;
      }

      FigSimpleMutexUnlock();
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      keyManager_ensureDecryptContextForKeyID_cold_1(&v16);
      v7 = v16;
    }
  }

  else
  {
    v7 = keyManager_ensureDecryptContextForKeyID(v8, v9, a3);
  }

LABEL_20:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v7;
}

uint64_t PKDKeyManagerRemoveKeyID(CFDictionaryRef *a1, void *a2)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerRemoveKeyID_cold_2(&v7);
    return v7;
  }

  if (!a2)
  {
    PKDKeyManagerRemoveKeyID_cold_1(&v7);
    return v7;
  }

  FigSimpleMutexLock();
  v4 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v4)
  {
    CFDictionaryRemoveValue(a1[11], a2);
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

uint64_t PKDKeyManagerCopySessionID(uint64_t a1, CFDataRef *a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      if (a2)
      {
        *a2 = 0;
        FigSimpleMutexLock();
        *a2 = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], *(a1 + 96), 0x8000100u, 0);
        FigSimpleMutexUnlock();
        return 0;
      }

      else
      {
        PKDKeyManagerCopySessionID_cold_1(&v5);
        return v5;
      }
    }

    else
    {
      PKDKeyManagerCopySessionID_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    PKDKeyManagerCopySessionID_cold_3(&v7);
    return v7;
  }
}

uint64_t PKDKeyManagerSetPropertyForKeyID(CFDictionaryRef *a1, void *a2, const void *a3, const __CFBoolean *a4)
{
  v61 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_8(v60);
    return v60[0];
  }

  if (!a2)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_7(v60);
    return v60[0];
  }

  if (!a3)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_6(v60);
    return v60[0];
  }

  if (!a4)
  {
    PKDKeyManagerSetPropertyForKeyID_cold_5(v60);
    return v60[0];
  }

  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v8)
  {
    v27 = v8;
  }

  else
  {
    v9 = cf;
    if (CFEqual(a3, *MEMORY[0x1E6961138]))
    {
      v9[80] = CFBooleanGetValue(a4);
      if (dword_1EAF17448)
      {
        v51 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v51;
        v12 = type;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v13 = v11;
        }

        else
        {
          v13 = v11 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = *(v9 + 3);
          v15 = v9[80];
          v52 = 136315906;
          v53 = "keyManager_setPropertyForEntryInternal";
          v54 = 2048;
          v55 = a1;
          v56 = 2114;
          v57 = v14;
          v58 = 1024;
          LODWORD(v59) = v15;
          _os_log_send_and_compose_impl(v13, 0, v60, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v12, "<<<< FigPKDKeyManager >>>> %s: %p %{public}@ use offline key:%d", &v52, 38);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_31:
      v27 = 0;
      goto LABEL_32;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F8]))
    {
      v9[80] = 1;
      if (dword_1EAF17448)
      {
        v51 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = v51;
        v18 = type;
        if (os_log_type_enabled(v16, type))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 0xFFFFFFFE;
        }

        if (v19)
        {
          v20 = *(v9 + 3);
          v52 = 136315906;
          v53 = "keyManager_setPropertyForEntryInternal";
          v54 = 2048;
          v55 = a1;
          v56 = 2114;
          v57 = v20;
          v58 = 2048;
          v59 = a4;
          _os_log_send_and_compose_impl(v19, 0, v60, 128, &dword_1962D5000, v16, v18, "<<<< FigPKDKeyManager >>>> %s: %p %{public}@ set offline key:%p", &v52, 42);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v26 = *(v9 + 11);
      *(v9 + 11) = a4;
      CFRetain(a4);
      if (v26)
      {
        CFRelease(v26);
      }

      goto LABEL_31;
    }

    if (!CFEqual(a3, *MEMORY[0x1E69610F0]))
    {
      v27 = 4294954512;
      goto LABEL_32;
    }

    v9[80] = 1;
    if (dword_1EAF17448)
    {
      v51 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v51;
      v23 = type;
      if (os_log_type_enabled(v21, type))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v25 = *(v9 + 3);
        v52 = 136315906;
        v53 = "keyManager_setPropertyForEntryInternal";
        v54 = 2048;
        v55 = a1;
        v56 = 2114;
        v57 = v25;
        v58 = 2048;
        v59 = a4;
        _os_log_send_and_compose_impl(v24, 0, v60, 128, &dword_1962D5000, v21, v23, "<<<< FigPKDKeyManager >>>> %s: %p %{public}@ set packaged offline key:%p", &v52, 42);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = CFGetTypeID(a4);
    if (v29 == CFDataGetTypeID())
    {
      v30 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a4, 0, 0, 0);
      v31 = v30;
      if (v30)
      {
        v33 = CFGetTypeID(v30);
        if (v33 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v31, *MEMORY[0x1E6962AF8]);
          if (Value && (v35 = Value, v36 = CFGetTypeID(Value), v36 == CFDataGetTypeID()))
          {
            v37 = CFDictionaryGetValue(v31, *MEMORY[0x1E6962AC0]);
            if (v37 && (v38 = v37, v39 = CFGetTypeID(v37), v39 == CFDataGetTypeID()))
            {
              v40 = CFDictionaryGetValue(v31, *MEMORY[0x1E6962B00]);
              if (v40)
              {
                v41 = v40;
                v42 = CFGetTypeID(v40);
                if (v42 == CFArrayGetTypeID())
                {
                  v43 = *(v9 + 11);
                  *(v9 + 11) = v35;
                  CFRetain(v35);
                  if (v43)
                  {
                    CFRelease(v43);
                  }

                  v44 = *(v9 + 5);
                  *(v9 + 5) = v38;
                  CFRetain(v38);
                  if (v44)
                  {
                    CFRelease(v44);
                  }

                  v45 = *(v9 + 6);
                  *(v9 + 6) = v41;
                  CFRetain(v41);
                  if (v45)
                  {
                    CFRelease(v45);
                  }

                  v46 = keyManager_ensureMovieIDInternal(a1, v38, v41);
                  if (!v46)
                  {
                    if (!v9[96])
                    {
                      v27 = 0;
                      goto LABEL_51;
                    }

                    v46 = keyManager_processOfflineKeyInternal(a1, v9, 6);
                  }

                  v27 = v46;
                  goto LABEL_51;
                }
              }

              PKDKeyManagerSetPropertyForKeyID_cold_2(v60);
            }

            else
            {
              PKDKeyManagerSetPropertyForKeyID_cold_3(v60);
            }
          }

          else
          {
            PKDKeyManagerSetPropertyForKeyID_cold_4(v60);
          }

          v27 = v60[0];
LABEL_51:
          CFRelease(v31);
          goto LABEL_32;
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, v48, cf);
      v27 = v32;
      if (v31)
      {
        goto LABEL_51;
      }
    }

    else
    {
      PKDKeyManagerSetPropertyForKeyID_cold_1(v60);
      v27 = v60[0];
    }
  }

LABEL_32:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v27;
}

uint64_t PKDKeyManagerCopyPropertyForKeyID(uint64_t a1, void *a2, const void *a3, CFTypeRef *a4)
{
  v41[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_4(v41);
    return LODWORD(v41[0]);
  }

  if (!a2)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_3(v41);
    return LODWORD(v41[0]);
  }

  if (!a3)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_2(v41);
    return LODWORD(v41[0]);
  }

  if (!a4)
  {
    PKDKeyManagerCopyPropertyForKeyID_cold_1(v41);
    return LODWORD(v41[0]);
  }

  *a4 = 0;
  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v8)
  {
    v9 = cf;
    if (CFEqual(a3, *MEMORY[0x1E6961138]))
    {
      v10 = MEMORY[0x1E695E4C0];
      if (*(v9 + 80))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      *a4 = CFRetain(*v10);
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F8]))
    {
      UInt32 = *(v9 + 11);
      if (UInt32)
      {
LABEL_12:
        UInt32 = CFRetain(UInt32);
LABEL_13:
        v12 = 0;
        *a4 = UInt32;
        goto LABEL_17;
      }

      goto LABEL_41;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610F0]))
    {
      PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, v9, a4);
LABEL_16:
      v12 = PackagedPersistentKeyFromEntryInternal;
      goto LABEL_17;
    }

    if (CFEqual(a3, *MEMORY[0x1E6961120]))
    {
      v41[0] = 0;
      if (!*(v9 + 148))
      {
        keyManager_ensureDecryptContextForEntryInternal(a1, v9, 0);
        if (PackagedPersistentKeyFromEntryInternal)
        {
          goto LABEL_16;
        }

        v20 = *(v9 + 9);
        if (v20)
        {
          v21 = **(a1 + 32);
          if (v21 == 3)
          {
            v22 = VCDDnY3lV491XcWac(v20, v41);
          }

          else
          {
            if (v21 != 2)
            {
LABEL_41:
              v12 = 4294955137;
              goto LABEL_17;
            }

            i2DzSgbBIIe95gyG0gW();
          }

          v12 = v22;
          if (!v22)
          {
            if (v41[0] == 0x285A0863BBA8E1D3)
            {
              v23 = 2;
            }

            else
            {
              v23 = v41[0] == 0x40791AC78BD5C571;
            }

            *(v9 + 36) = v23;
            *(v9 + 148) = 1;
            goto LABEL_48;
          }

LABEL_17:
          if (dword_1EAF17448)
          {
            v30 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v15 = v30;
            v16 = type;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v17 = v15;
            }

            else
            {
              v17 = v15 & 0xFFFFFFFE;
            }

            if (v17)
            {
              if (v9)
              {
                v18 = *(v9 + 3);
              }

              else
              {
                v18 = 0;
              }

              v31 = 136316162;
              v32 = "keyManager_copyPropertyForEntryInternal";
              v33 = 2048;
              v34 = a1;
              v35 = 2114;
              v36 = v18;
              v37 = 2114;
              v38 = a3;
              v39 = 2048;
              v40 = a4;
              LODWORD(v27) = 52;
              _os_log_send_and_compose_impl(v17, 0, v41, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v16, "<<<< FigPKDKeyManager >>>> %s: %p %{public}@ propertyKey:%{public}@ propertyValue: %p", &v31, v27);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          goto LABEL_28;
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, cf);
        if (PackagedPersistentKeyFromEntryInternal)
        {
          goto LABEL_16;
        }
      }

LABEL_48:
      UInt32 = FigCFNumberCreateUInt32();
      goto LABEL_13;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610E0]))
    {
      UInt32 = *(v9 + 15);
      if (!UInt32)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610A0]))
    {
      UInt32 = *(v9 + 5);
      if (!UInt32)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (CFEqual(a3, *MEMORY[0x1E69610D0]))
    {
      if (*(v9 + 9) && (jSNXSLgDwR(), v24 == -42656))
      {
        v25 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v25 = MEMORY[0x1E695E4C0];
      }
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x1E69610B8]))
      {
        v12 = 4294954512;
        goto LABEL_17;
      }

      v25 = MEMORY[0x1E695E4D0];
      if (*(v9 + 184))
      {
        v25 = MEMORY[0x1E695E4C0];
      }
    }

    UInt32 = *v25;
    goto LABEL_12;
  }

  v12 = v8;
LABEL_28:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t PKDKeyManagerCreatePackagedPersistentKeyForKeyID(CFDictionaryRef *a1, void *a2, uint64_t a3, CFDataRef *a4)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_4(&v11);
    return v11;
  }

  if (!a2)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_2(&v11);
    return v11;
  }

  if (!a4)
  {
    PKDKeyManagerCreatePackagedPersistentKeyForKeyID_cold_1(&v11);
    return v11;
  }

  *a4 = 0;
  FigSimpleMutexLock();
  PackagedPersistentKeyFromEntryInternal = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!PackagedPersistentKeyFromEntryInternal)
  {
    PackagedPersistentKeyFromEntryInternal = keyManager_createPackagedPersistentKeyFromEntryInternal(a1, cf, a4);
  }

  v8 = PackagedPersistentKeyFromEntryInternal;
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t keyManager_createPackagedPersistentKeyFromEntryInternal(uint64_t a1, const void **a2, CFDataRef *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2[11])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_6(v15);
    return v15[0];
  }

  if (!a2[5])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_5(v15);
    return v15[0];
  }

  if (!a2[6])
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_4(v15);
    return v15[0];
  }

  if (!a3)
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_3(v15);
    return v15[0];
  }

  *a3 = 0;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_createPackagedPersistentKeyFromEntryInternal_cold_2(v15);
    return v15[0];
  }

  v8 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6962AF8], a2[11]);
  CFDictionarySetValue(v8, *MEMORY[0x1E6962AC0], a2[5]);
  CFDictionarySetValue(v8, *MEMORY[0x1E6962B00], a2[6]);
  v9 = **(a1 + 32);
  if (v9 == 2)
  {
    v10 = MEMORY[0x1E6962B38];
LABEL_10:
    CFDictionarySetValue(v8, *MEMORY[0x1E6962B48], *v10);
    Data = CFPropertyListCreateData(v6, v8, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (Data)
    {
      v12 = 0;
      *a3 = Data;
    }

    else
    {
      keyManager_createPackagedPersistentKeyFromEntryInternal_cold_1(v15);
      v12 = v15[0];
    }

    goto LABEL_13;
  }

  if (v9 == 3)
  {
    v10 = MEMORY[0x1E6962B40];
    goto LABEL_10;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v12 = 4294955138;
LABEL_13:
  CFRelease(v8);
  return v12;
}

uint64_t PKDKeyManagerGetMovieID(void *a1, CFDictionaryRef theDict, void *a3)
{
  if (!a1)
  {
    PKDKeyManagerGetMovieID_cold_5(&v12);
    return v12;
  }

  if (!theDict)
  {
    PKDKeyManagerGetMovieID_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    PKDKeyManagerGetMovieID_cold_3(&v12);
    return v12;
  }

  *a3 = 0;
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962AC0]);
  if (!Value)
  {
    PKDKeyManagerGetMovieID_cold_2(&v12);
    return v12;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(theDict, *MEMORY[0x1E6962B00]);
  if (!v8)
  {
    PKDKeyManagerGetMovieID_cold_1(&v12);
    return v12;
  }

  v9 = v8;
  FigSimpleMutexLock();
  v10 = keyManager_ensureMovieIDInternal(a1, v7, v9);
  if (!v10)
  {
    *a3 = a1[5];
  }

  FigSimpleMutexUnlock();
  return v10;
}

uint64_t keyManager_ensureMovieIDInternal(void *a1, const __CFData *a2, CFArrayRef theArray)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    keyManager_ensureMovieIDInternal_cold_6(v22);
    return v22[0];
  }

  if (!a2)
  {
    keyManager_ensureMovieIDInternal_cold_5(v22);
    return v22[0];
  }

  if (!theArray)
  {
    keyManager_ensureMovieIDInternal_cold_4(v22);
    return v22[0];
  }

  if (a1[5])
  {
    return 0;
  }

  v21 = 0;
  Count = CFArrayGetCount(theArray);
  v6 = Count;
  if (Count)
  {
    v8 = malloc_type_malloc(4 * Count, 0x100004052888210uLL);
    v9 = 0;
    v10 = v8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      if (!ValueAtIndex || (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 != CFNumberGetTypeID()))
      {
        keyManager_ensureMovieIDInternal_cold_3(v22);
        goto LABEL_27;
      }

      if (!CFNumberGetValue(v12, kCFNumberSInt32Type, v10))
      {
        keyManager_ensureMovieIDInternal_cold_2(v22);
        goto LABEL_27;
      }

      ++v9;
      v10 += 4;
    }

    while (v6 != v9);
    v14 = a1[4];
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    if (*v14 == 2)
    {
      Qhl17oSYJtCJIxM();
    }

    else
    {
      if (*v14 != 3)
      {
        v6 = 4294955137;
        goto LABEL_21;
      }

      v17 = V2qUlL4PZ5VKVXDsUHg5z(BytePtr, Length, v8, v6, &v21);
    }

    v6 = v17;
    if (v17)
    {
      goto LABEL_21;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%llu", v21);
    a1[12] = v18;
    if (v18)
    {
      v6 = 0;
      a1[5] = v21;
      goto LABEL_21;
    }

    keyManager_ensureMovieIDInternal_cold_1(v22);
LABEL_27:
    v6 = v22[0];
  }

  else
  {
    v8 = 0;
  }

LABEL_21:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  free(v8);
  return v6;
}

uint64_t KeyManagerSetSecureStopManager(uint64_t a1, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    KeyManagerSetSecureStopManager_cold_2(v8);
LABEL_11:
    v5 = v8[0];
    goto LABEL_6;
  }

  if (!a2)
  {
    KeyManagerSetSecureStopManager_cold_1(v8);
    goto LABEL_11;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 120);
  *(a1 + 120) = a2;
  CFRetain(a2);
  if (v4)
  {
    CFRelease(v4);
  }

  FigSimpleMutexUnlock();
  v5 = 0;
LABEL_6:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

uint64_t PKDKeyManagerGetKeyRequestStateAndID(CFDictionaryRef *a1, void *a2, _DWORD *a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerGetKeyRequestStateAndID_cold_2(v12);
    return v12[0];
  }

  if (!a2)
  {
    PKDKeyManagerGetKeyRequestStateAndID_cold_1(v12);
    return v12[0];
  }

  FigSimpleMutexLock();
  v8 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v8)
  {
    if (a3)
    {
      *a3 = *(cf + 42);
    }

    if (a4)
    {
      *a4 = *(cf + 22);
    }

    if (dword_1EAF17448)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

uint64_t PKDKeyManagerTestAndSetKeyRequestState(CFDictionaryRef *a1, void *a2, unsigned int a3, unsigned int a4, char *a5, void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerTestAndSetKeyRequestState_cold_2(v24);
LABEL_26:
    v18 = 0;
    v22 = 0;
    v12 = v24[0];
    goto LABEL_15;
  }

  if (!a2)
  {
    PKDKeyManagerTestAndSetKeyRequestState_cold_1(v24);
    goto LABEL_26;
  }

  FigSimpleMutexLock();
  v12 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (v12)
  {
    v18 = 0;
    v22 = 0;
  }

  else
  {
    v13 = cf;
    if (*(cf + 42) == a3)
    {
      *(cf + 42) = a4;
      if (a4 >= a3)
      {
        v14 = a4;
      }

      else
      {
        keyManager_resetKeyRequestContextForEntryInternal(a1, v13);
        v13 = cf;
        v14 = *(cf + 42);
      }

      if (v14 == 2 && (v15 = PKDGetNewRequestID(), v13 = cf, *(cf + 22) = v15, dword_1EAF17448))
      {
        v16 = a5;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        a5 = v16;
        v22 = 1;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = cf;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }

    v18 = v13[22];
  }

  FigSimpleMutexUnlock();
LABEL_15:
  if (dword_1EAF17448)
  {
    v21 = a5;
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a5 = v21;
  }

  if (a5)
  {
    *a5 = v22;
  }

  if (a6)
  {
    *a6 = v18;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void keyManager_resetKeyRequestContextForEntryInternal(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  if (v3)
  {
    PKDAPIProviderDestroyExchange(*(a1 + 32), v3);
    *(a2 + 64) = 0;
  }

  v4 = *(a2 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 56) = 0;
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a2 + 32) = 0;
  }

  v6 = *(a2 + 88);
  if (v6)
  {
    CFRelease(v6);
    *(a2 + 88) = 0;
  }

  v7 = *(a2 + 104);
  if (v7)
  {
    CFRelease(v7);
    *(a2 + 104) = 0;
  }

  v8 = *(a2 + 112);
  if (v8)
  {
    CFRelease(v8);
    *(a2 + 112) = 0;
  }

  v9 = *(a2 + 152);
  if (v9)
  {
    CFRelease(v9);
    *(a2 + 152) = 0;
  }

  v10 = *(a2 + 160);
  if (v10)
  {
    CFRelease(v10);
    *(a2 + 160) = 0;
  }

  *(a2 + 176) = 0;
  *(a2 + 80) = 0;
}

uint64_t PKDKeyManagerSetKeyRequestError(CFDictionaryRef *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerSetKeyRequestError_cold_4(v16);
LABEL_28:
    v6 = v16[0];
    goto LABEL_20;
  }

  if (!a2)
  {
    PKDKeyManagerSetKeyRequestError_cold_3(v16);
    goto LABEL_28;
  }

  if (!a3)
  {
    PKDKeyManagerSetKeyRequestError_cold_2(v16);
    goto LABEL_28;
  }

  FigSimpleMutexLock();
  v6 = keyManager_copyEntryForKeyIDInternal(a1, a2, 1, &cf);
  if (!v6)
  {
    v7 = cf;
    *(cf + 42) = 1;
    v8 = v7[15];
    v7[15] = a3;
    CFRetain(a3);
    if (v8)
    {
      CFRelease(v8);
    }

    keyManager_resetKeyRequestContextForEntryInternal(a1, cf);
    v9 = *(cf + 16);
    if (v9)
    {
      while (1)
      {
        v10 = *(v9 + 40);
        if (!*v9 || !*(v9 + 32) || !*(v9 + 24))
        {
          break;
        }

        v11 = malloc_type_calloc(1uLL, 0x30uLL, 0x10E0040DE8CDC7DuLL);
        if (!v11)
        {
          PKDKeyManagerSetKeyRequestError_cold_1();
          goto LABEL_15;
        }

        v12 = FigCFWeakReferenceHolderCopyReferencedObject();
        *v11 = v12;
        if (!v12)
        {
          goto LABEL_15;
        }

        v11[6] = *(v9 + 8);
        *(v11 + 4) = *(v9 + 16);
        *(v11 + 5) = *(v9 + 24);
        *(v11 + 2) = CFRetain(a3);
        dispatch_async_f(*v9, v11, keyManager_dispatchKeyRequestErrorOccurredCallback);
LABEL_16:
        v9 = v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      v11 = 0;
LABEL_15:
      keyManager_releaseCallbackContext(v11);
      goto LABEL_16;
    }
  }

LABEL_19:
  FigSimpleMutexUnlock();
LABEL_20:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t PKDKeyManagerAbsorbKeyRequestContext(CFDictionaryRef *a1, CFDictionaryRef *a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v33 = 0;
  v34 = 0;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v34 = &v33;
          FigSimpleMutexLock();
          v8 = keyManager_copyEntryForKeyIDInternal(a1, a3, 1, &cf);
          if (v8)
          {
            v29 = v8;
          }

          else
          {
            v32 = a3;
            v9 = *(cf + 16);
            if (v9)
            {
              v10 = 0;
              v11 = *MEMORY[0x1E695E480];
              do
              {
                v12 = v9;
                v9 = *(v9 + 40);
                v13 = FigCFWeakReferenceHolderCopyReferencedObject();
                if (!v13)
                {
LABEL_13:
                  if (v10)
                  {
                    *(v10 + 40) = 0;
                    v19 = v34;
                    *(v10 + 48) = v34;
                    *v19 = v10;
                    v34 = (v10 + 40);
                  }

                  continue;
                }

                v14 = v13;
                v15 = MEMORY[0x19A8CC720](v11, 56, 0x10E004083C12A20, 0);
                if (v15)
                {
                  v16 = v15;
                  *(v15 + 48) = 0;
                  *(v15 + 32) = 0u;
                  *v15 = 0u;
                  *(v15 + 16) = 0u;
                  dispatch_retain(*v12);
                  *v16 = *v12;
                  *(v16 + 8) = *(v12 + 8);
                  *(v16 + 16) = *(v12 + 16);
                  *(v16 + 24) = *(v12 + 24);
                  v17 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  *(v16 + 32) = v17;
                  if (v17)
                  {
                    v18 = 0;
                    v10 = v16;
                    goto LABEL_12;
                  }

                  PKDKeyManagerAbsorbKeyRequestContext_cold_1(v37);
                }

                else
                {
                  PKDKeyManagerAbsorbKeyRequestContext_cold_2(v37);
                }

                v18 = v37[0];
LABEL_12:
                CFRelease(v14);
                if (!v18)
                {
                  goto LABEL_13;
                }
              }

              while (v9);
            }

            FigSimpleMutexUnlock();
            if (!cf)
            {
              PKDKeyManagerAbsorbKeyRequestContext_cold_4(v37);
              v29 = v37[0];
              goto LABEL_29;
            }

            FigSimpleMutexLock();
            v20 = keyManager_copyEntryForKeyIDInternal(a2, a4, 1, &value);
            if (!v20)
            {
              v21 = v33;
              if (v33)
              {
                do
                {
                  v22 = (v21 + 40);
                  v23 = *(v21 + 40);
                  v24 = *(v21 + 48);
                  v25 = (v23 + 48);
                  if (!v23)
                  {
                    v25 = &v34;
                  }

                  *v25 = v24;
                  *v24 = v23;
                  *v22 = 0;
                  v26 = *(value + 17);
                  *(v21 + 48) = v26;
                  *v26 = v21;
                  *(value + 17) = v22;
                  v21 = v23;
                }

                while (v23);
              }

              FigSimpleMutexUnlock();
              if (value)
              {
                FigSimpleMutexLock();
                *(value + 19) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v27 = CFRetain(a4);
                v28 = value;
                *(value + 20) = v27;
                CFDictionarySetValue(a1[11], v32, v28);
                FigSimpleMutexUnlock();
                v29 = 0;
                goto LABEL_29;
              }

              PKDKeyManagerAbsorbKeyRequestContext_cold_3(v37);
              goto LABEL_45;
            }

            v29 = v20;
          }

          FigSimpleMutexUnlock();
          goto LABEL_29;
        }

        PKDKeyManagerAbsorbKeyRequestContext_cold_5(v37);
      }

      else
      {
        PKDKeyManagerAbsorbKeyRequestContext_cold_6(v37);
      }
    }

    else
    {
      PKDKeyManagerAbsorbKeyRequestContext_cold_7(v37);
    }
  }

  else
  {
    PKDKeyManagerAbsorbKeyRequestContext_cold_8(v37);
  }

LABEL_45:
  v29 = v37[0];
LABEL_29:
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v29;
}

uint64_t PKDKeyManagerInstallCallbacksForKeyID(CFDictionaryRef *a1, void *a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  cf = 0;
  if (!a1)
  {
    PKDKeyManagerInstallCallbacksForKeyID_cold_4(&v18);
    return v18;
  }

  if (!a2)
  {
    PKDKeyManagerInstallCallbacksForKeyID_cold_3(&v18);
    return v18;
  }

  FigSimpleMutexLock();
  v10 = keyManager_copyEntryForKeyIDInternal(a1, a2, 0, &cf);
  if (!v10 && a3 && a4 && a5)
  {
    v11 = cf;
    v12 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], 56, 0x10E004083C12A20, 0);
    if (v12)
    {
      v13 = v12;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0u;
      *v12 = 0u;
      *(v12 + 16) = 0u;
      dispatch_retain(a4);
      *v13 = a4;
      *(v13 + 8) = *a5;
      *(v13 + 16) = *(a5 + 8);
      *(v13 + 24) = *(a5 + 16);
      v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *(v13 + 32) = v14;
      if (v14)
      {
        v10 = 0;
        *(v13 + 40) = 0;
        v15 = v11[17];
        *(v13 + 48) = v15;
        *v15 = v13;
        v11[17] = v13 + 40;
        goto LABEL_10;
      }

      PKDKeyManagerInstallCallbacksForKeyID_cold_1(&v18);
    }

    else
    {
      PKDKeyManagerInstallCallbacksForKeyID_cold_2(&v18);
    }

    v10 = v18;
  }

LABEL_10:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

uint64_t PKDKeyManagerInvalidate(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = keyManager_invalidateInternal(a1);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t keyManager_createInternal(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a3)
  {
    keyManager_createInternal_cold_3(&v12);
    return v12;
  }

  *a3 = 0;
  v12 = xmmword_1E748D9D8;
  if (keyManager_getTypeID_once != -1)
  {
    dispatch_once_f(&keyManager_getTypeID_once, &v12, CFRuntimeClassRegisterOnce);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    keyManager_createInternal_cold_2(&v12);
    return v12;
  }

  v6 = Instance;
  v7 = FigSimpleMutexCreate();
  v6[2] = v7;
  if (!v7)
  {
    v11 = 2884;
LABEL_16:
    keyManager_createInternal_cold_1(v11, v6, &v12);
    return v12;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6[11] = Mutable;
  if (!Mutable)
  {
    v11 = 2887;
    goto LABEL_16;
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"AuditToken");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v6[13] = Value;
  }

  result = 0;
  *a3 = v6;
  return result;
}

double keyManagerEntry_init(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void keyManagerEntry_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 168) = 0;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = **(v2 + 32);
    if (v4 == 3)
    {
      Y08TTM99sD0XheA(v3);
    }

    else if (v4 == 2)
    {
      N8pdwAfn();
    }

    *(a1 + 72) = 0;
  }

  keyManager_resetKeyRequestContextForEntryInternal(v2, a1);
  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 16) = 0;
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    v11 = (a1 + 136);
    v12 = *MEMORY[0x1E695E480];
    do
    {
      v13 = *(v10 + 40);
      if (*v10)
      {
        dispatch_release(*v10);
        *v10 = 0;
      }

      v14 = *(v10 + 32);
      if (v14)
      {
        CFRelease(v14);
        *(v10 + 32) = 0;
      }

      v15 = *(v10 + 40);
      v16 = *(v10 + 48);
      v17 = (v15 + 48);
      if (!v15)
      {
        v17 = v11;
      }

      *v17 = v16;
      *v16 = v15;
      CFAllocatorDeallocate(v12, v10);
      v10 = v13;
    }

    while (v13);
  }
}

uint64_t CFRuntimeClassRegisterOnce(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 8) = result;
  return result;
}

uint64_t keyManager_processOnlineKeyInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 64))
  {
    keyManager_processOnlineKeyInternal_cold_6(v31);
    return v31[0];
  }

  v3 = a3;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    keyManager_processOnlineKeyInternal_cold_5(v31);
    return v31[0];
  }

  v8 = Mutable;
  v9 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    keyManager_processOnlineKeyInternal_cold_4(v8, v31);
    return v31[0];
  }

  v10 = v9;
  if (v3 == 2)
  {
    v11 = *(a2 + 88);
    if (v11)
    {
      CFRelease(v11);
      *(a2 + 88) = 0;
    }

    v12 = *(a1 + 104);
    if (v12)
    {
      CFDictionarySetValue(v8, @"lGxB4ky", v12);
    }
  }

  if (*(a2 + 72))
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(v8, @"RulIk", *(a2 + 56));
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt64();
  if (dword_1EAF17448)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v14 = PKDAPIProviderProcessCKC(*(a1 + 32), v8, v10);
  if (v14)
  {
    v15 = keyManager_cleanFairPlayStateIfNecessary(a1, v14);
    if (v15 || (v15 = PKDAPIProviderProcessCKC(*(a1 + 32), v8, v10), v15))
    {
LABEL_43:
      v26 = v15;
      goto LABEL_49;
    }
  }

  if (v3 == 1)
  {
    if (FigCFDictionaryGetInt64IfPresent())
    {
      *(a2 + 72) = 0;
    }

    if (dword_1EAF17448)
    {
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 72))
    {
      goto LABEL_47;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, v29, v30);
    goto LABEL_43;
  }

  if (v3 == 3)
  {
    v16 = *(a2 + 104);
    Value = CFDictionaryGetValue(v10, @"sPJ8AGu5PT");
    *(a2 + 104) = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (dword_1EAF17448)
    {
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 104))
    {
      v23 = *(a2 + 112);
      v24 = CFDictionaryGetValue(v10, @"o9YYYJ64ntzC");
      *(a2 + 112) = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (dword_1EAF17448)
      {
        v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (*(a2 + 112))
      {
LABEL_47:
        v26 = 0;
        if (FigCFDictionaryGetInt64IfPresent())
        {
          *(a2 + 184) = 1;
        }

        goto LABEL_49;
      }

      keyManager_processOnlineKeyInternal_cold_1(v31);
    }

    else
    {
      keyManager_processOnlineKeyInternal_cold_2(v31);
    }
  }

  else
  {
    v20 = *(a2 + 88);
    v21 = CFDictionaryGetValue(v10, @"igoeg");
    *(a2 + 88) = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (dword_1EAF17448)
    {
      v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 88))
    {
      goto LABEL_47;
    }

    keyManager_processOnlineKeyInternal_cold_3(v31);
  }

  v26 = v31[0];
LABEL_49:
  CFRelease(v8);
  CFRelease(v10);
  return v26;
}

uint64_t PKDAPIProviderProcessCKC(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 3)
  {
    return YuSm1Tar2l(a2, a3);
  }

  if (*a1 == 2)
  {
    return gojqbvrX305gQO(a2, a3);
  }

  return 4294955137;
}

uint64_t keyManager_cleanFairPlayStateIfNecessary(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 == -42670 || a2 == -42844)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    wnFx1xLULXLA();
    a2 = 0;
    if (v4)
    {
      v6 = v4;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      return v6;
    }
  }

  return a2;
}

void keyManager_dispatchPersistentKeyUpdatedCallback(const void **a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2(*a1, a1[1]);
  }

  keyManager_releaseCallbackContext(a1);
}

void keyManager_releaseCallbackContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

void PKDAPIProviderDestroyExchange(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 3)
  {
    JvfqldDvSIjTyuq(a2);
  }

  else if (*a1 == 2)
  {
    JE2f6WCx();
  }
}

void keyManager_dispatchKeyRequestErrorOccurredCallback(const void **a1)
{
  v2 = a1[5];
  if (v2)
  {
    v2(*a1, a1[2]);
  }

  keyManager_releaseCallbackContext(a1);
}

double keyManager_init(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

CFTypeRef InitPKDAPIProviderForPastis(uint64_t a1)
{
  *a1 = 2;
  result = PKDCopyDisposeStorageAllocator(a1);
  *(a1 + 8) = result;
  return result;
}

CFTypeRef InitPKDAPIProviderForMSECTR(uint64_t a1)
{
  *a1 = 3;
  result = PKDMSECopyDisposeStorageAllocator(a1);
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_71(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_7_53(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_9_40(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, os_log_type_t type, int a16)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigCaptionDecoderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigXPCImageQueueGaugeServerAssociateCopiedNeighborImageQueueGauge(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  xpc_connection_get_pid(a1);

  return FigXPCServerAssociateCopiedObjectWithNeighborProcess();
}

uint64_t FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigImageQueueGaugeGetTypeID())
      {
        return 0;
      }
    }

    FigXPCImageQueueGaugeServerCopyImageQueueGaugeForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

const void *FigXPCImageQueueGaugeServerHandlesMessagesForObject(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == FigImageQueueGaugeGetTypeID());
  }

  return result;
}

uint64_t FigXPCImageQueueGaugeServerStartAsSubserver(uint64_t a1)
{
  if (gImageQueueGaugeServer)
  {
    FigXPCImageQueueGaugeServerStartAsSubserver_cold_1(&v3);
    return v3;
  }

  if (!a1)
  {
    FigXPCImageQueueGaugeServerStartAsSubserver_cold_2(&v3);
    return v3;
  }

  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = __FigXPCImageQueueGaugeServerStartAsSubserver_block_invoke;
  v2[3] = &__block_descriptor_tmp_67;
  v2[4] = a1;
  if (FigXPCImageQueueGaugeServerStartAsSubserver_onceToken == -1)
  {
    return 0;
  }

  dispatch_once(&FigXPCImageQueueGaugeServerStartAsSubserver_onceToken, v2);
  return 0;
}

uint64_t FigDataChannelConfigurationGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigDataChannelConfigurationGetTypeID_sRegisterDataChannelConfigurationTypeOnce != -1)
  {
    FigDataChannelConfigurationGetTypeID_cold_1();
  }

  return FigDataChannelConfigurationGetTypeID_sDataChannelConfigurationTypeID;
}

uint64_t __FigDataChannelConfigurationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigDataChannelConfigurationGetTypeID_sDataChannelConfigurationTypeID = result;
  return result;
}

double dataChannelConfiguration_init(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void dataChannelConfiguration_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    CFRelease(v7);
    a1[8] = 0;
  }
}

uint64_t dataChannelConfiguration_equal(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  result = FigCFEqual();
  if (result)
  {
    return FigCFEqual() != 0;
  }

  return result;
}

CFStringRef dataChannelConfiguration_copyDebugDesc(uint64_t a1)
{
  if (!a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[DataChannelConfiguration %p]", 0);
  }

  v2 = FigCFCopyCompactDescription();
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[DataChannelConfiguration <%p|%@>] activationID %u Resources: %@ Channels: %@ ", a1, *(a1 + 40), *(a1 + 36), *(a1 + 24), v2);
  CFRelease(v2);
  return v3;
}

uint64_t FigDataChannelConfigurationCreate(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {

    return dataChannelConfiguration_createDataChannelConfiguration(a1, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    FigDataChannelConfigurationCreate_cold_1(&v6);
    return v6;
  }
}

uint64_t dataChannelConfiguration_createDataChannelConfiguration(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  if (FigDataChannelConfigurationGetTypeID_sRegisterDataChannelConfigurationTypeOnce != -1)
  {
    FigDataChannelConfigurationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    dataChannelConfiguration_createDataChannelConfiguration_cold_3(&v14);
    return v14;
  }

  v6 = Instance;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v6 + 16) = Mutable;
  if (!Mutable)
  {
    v13 = 240;
LABEL_20:
    dataChannelConfiguration_createDataChannelConfiguration_cold_2(v13, v6, &v14);
    return v14;
  }

  v8 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(v6 + 24) = v8;
  if (!v8)
  {
    v13 = 242;
    goto LABEL_20;
  }

  add = atomic_fetch_add(&dataChannelConfiguration_createDataChannelConfiguration_sCurrentDataChannelConfigurationActivationID, 1u);
  *(v6 + 32) = 0;
  *(v6 + 36) = add;
  v10 = dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID;
  v11 = dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID;
  atomic_compare_exchange_strong(&dataChannelConfiguration_createDataChannelConfiguration_sCurrentDataChannelConfigurationActivationID, &v11, 1u);
  if (v11 != v10)
  {
    dataChannelConfiguration_createDataChannelConfiguration_kMaxDataChannelConfigurationActivationID = v11;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 40) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 48) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 56) = 0;
  }

  if (FigCFDictionaryGetStringIfPresent())
  {
    *(v6 + 64) = 0;
  }

  result = 0;
  *a3 = v6;
  return result;
}

uint64_t FigDataChannelConfigurationCreateCopy(const __CFAllocator *a1, uint64_t a2, uint64_t *a3)
{
  v28 = 0;
  if (!a2)
  {
    FigDataChannelConfigurationCreateCopy_cold_4(&v29);
    return v29;
  }

  if (!a3)
  {
    FigDataChannelConfigurationCreateCopy_cold_3(&v29);
    return v29;
  }

  v6 = dataChannelConfiguration_createDataChannelConfiguration(a1, 0, &v28);
  v7 = v28;
  if (v6)
  {
    v26 = v6;
    if (!v28)
    {
      return v26;
    }

    goto LABEL_27;
  }

  *(v28 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v7 + 40) = v8;
  v9 = *(a2 + 48);
  if (v9)
  {
    v9 = CFRetain(v9);
  }

  *(v7 + 48) = v9;
  v10 = *(a2 + 56);
  if (v10)
  {
    v10 = CFRetain(v10);
  }

  *(v7 + 56) = v10;
  v11 = *(a2 + 64);
  if (v11)
  {
    v11 = CFRetain(v11);
  }

  *(v7 + 64) = v11;
  v12 = *(a2 + 16);
  if (!v12 || (v13 = CFArrayGetCount(v12), v13 < 1))
  {
LABEL_17:
    v19 = *(a2 + 24);
    if (!v19 || (Count = CFArrayGetCount(v19), Count < 1))
    {
LABEL_22:
      v26 = 0;
      *a3 = v7;
      return v26;
    }

    v21 = Count;
    v22 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), v22);
      MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, ValueAtIndex);
      if (!MutableCopy)
      {
        break;
      }

      v25 = MutableCopy;
      CFArrayAppendValue(*(v7 + 24), MutableCopy);
      CFRelease(v25);
      if (v21 == ++v22)
      {
        goto LABEL_22;
      }
    }

    FigDataChannelConfigurationCreateCopy_cold_2(&v29);
    v26 = v29;
LABEL_27:
    CFRelease(v7);
    return v26;
  }

  v14 = v13;
  v15 = 0;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(*(a2 + 16), v15);
    v17 = CFDictionaryCreateMutableCopy(a1, 0, v16);
    if (!v17)
    {
      break;
    }

    v18 = v17;
    CFArrayAppendValue(*(v7 + 16), v17);
    CFRelease(v18);
    if (v14 == ++v15)
    {
      goto LABEL_17;
    }
  }

  FigDataChannelConfigurationCreateCopy_cold_1(&v29);
  v26 = v29;
  if (v7)
  {
    goto LABEL_27;
  }

  return v26;
}

uint64_t FigDataChannelConfigurationAddFigImageQueue(const void *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  cf = 0;
  if (!a1)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_3(&v16);
    return v16;
  }

  if (!a2)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigDataChannelConfigurationAddFigImageQueue_cold_1(&v16);
    return v16;
  }

  v10 = CFGetAllocator(a1);
  dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(v10, a5, &cf);
  v12 = cf;
  if (!v11)
  {
    v11 = dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, cf);
  }

  v13 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t dataChannelConfiguration_addOutputQueueCommon(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    dataChannelConfiguration_addOutputQueueCommon_cold_1(v22);
    return v22[0];
  }

  v11 = Mutable;
  if (!a2)
  {
LABEL_14:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", cf, v21, v22[1]);
    goto LABEL_15;
  }

  v12 = CFGetTypeID(a2);
  if (v12 != FigImageQueueGetTypeID())
  {
    v17 = CFGetTypeID(a2);
    if (v17 == FigDataQueueGetTypeID())
    {
      FigCFDictionarySetValue();
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  cf = 0;
  FigCFDictionarySetValue();
  FigImageQueueGetFigBaseObject();
  v14 = v13;
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    v18 = 4294954514;
    goto LABEL_17;
  }

  v16 = v15(v14, @"CAImageQueue", v9, &cf);
  if (!v16)
  {
    CAImageQueueGetIdentifier();
    FigCFDictionarySetInt64();
    CFRelease(cf);
LABEL_9:
    FigCFDictionarySetValue();
    if (a4)
    {
      FigCFDictionarySetValue();
    }

    if (a5)
    {
      FigCFDictionarySetValue();
    }

    CFArrayAppendValue(*(a1 + 16), v11);
    v18 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v18 = v16;
LABEL_17:
  CFRelease(v11);
  return v18;
}

uint64_t FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, a5);
      }

      else
      {
        FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddFigImageQueueWithSidebandVideoProperties_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationAddFigDataQueue(const void *a1, const void *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  cf = 0;
  if (!a1)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_3(&v16);
    return v16;
  }

  if (!a2)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_2(&v16);
    return v16;
  }

  if (!a3)
  {
    FigDataChannelConfigurationAddFigDataQueue_cold_1(&v16);
    return v16;
  }

  v10 = CFGetAllocator(a1);
  dataChannelConfiguration_copySidebandVideoPropertiesArrayFromFormatDescriptionArray(v10, a5, &cf);
  v12 = cf;
  if (!v11)
  {
    v11 = dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, cf);
  }

  v13 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  return v13;
}

uint64_t FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {

        return dataChannelConfiguration_addOutputQueueCommon(a1, a2, a3, a4, a5);
      }

      else
      {
        FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddFigDataQueueWithSidebandVideoProperties_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationAddDataChannelResource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v4 = Mutable;
        FigCFDictionarySetValue();
        CFArrayAppendValue(*(a1 + 24), v4);
        CFRelease(v4);
        return 0;
      }

      else
      {
        FigDataChannelConfigurationAddDataChannelResource_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigDataChannelConfigurationAddDataChannelResource_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationAddDataChannelResource_cold_3(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationSetModificationID(uint64_t a1, int a2)
{
  if (a1)
  {
    result = 0;
    *(a1 + 32) = a2;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    FigDataChannelConfigurationSetModificationID_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetModificationID(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t FigDataChannelConfigurationGetActivationID(uint64_t result)
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

CFIndex FigDataChannelConfigurationGetChannelCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

CFIndex FigDataChannelConfigurationGetResourceCount(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return CFArrayGetCount(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex(uint64_t a1, CFIndex idx, uint64_t a3)
{
  if (a1)
  {
    if (idx < 0)
    {
      goto LABEL_8;
    }

    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
LABEL_8:
      FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_1(&v7);
      return v7;
    }

    else
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      FigCFDictionarySetUInt32();
      return 0;
    }
  }

  else
  {
    FigDataChannelConfigurationSetCAImageQueueSlotIDAtIndex_cold_2(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3)
{
  if (!a1)
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_4(&v8);
    return v8;
  }

  if (!a3)
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_3(&v8);
    return v8;
  }

  if (idx < 0)
  {
    goto LABEL_10;
  }

  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_10:
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_1(&v8);
    return v8;
  }

  CFArrayGetValueAtIndex(*(a1 + 16), idx);
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigDataChannelConfigurationGetCAImageQueueSlotIDAtIndex_cold_2(&v8);
    return v8;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex(uint64_t a1, CFIndex idx, uint64_t a3)
{
  if (a1)
  {
    if (idx < 0)
    {
      goto LABEL_8;
    }

    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (Count <= idx)
    {
LABEL_8:
      FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_1(&v7);
      return v7;
    }

    else
    {
      CFArrayGetValueAtIndex(*(a1 + 16), idx);
      FigCFDictionarySetBoolean();
      return 0;
    }
  }

  else
  {
    FigDataChannelConfigurationSetFirstFrameWasEnqueuedAtIndex_cold_2(&v8);
    return v8;
  }
}

uint64_t FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex(uint64_t a1, CFIndex idx, _BYTE *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (idx < 0)
      {
        goto LABEL_9;
      }

      Count = *(a1 + 16);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (Count <= idx)
      {
LABEL_9:
        FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_1(&v8);
        return v8;
      }

      else
      {
        CFArrayGetValueAtIndex(*(a1 + 16), idx);
        FigCFDictionaryGetBooleanIfPresent();
        result = 0;
        *a3 = 0;
      }
    }

    else
    {
      FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    FigDataChannelConfigurationGetFirstFrameWasEnqueuedAtIndex_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCreateFromDictionary(const __CFAllocator *a1, CFDictionaryRef theDict, void *a3)
{
  v6 = 0;
  memset(&value[1], 0, 40);
  if (a3)
  {
    if (theDict)
    {
      if (CFDictionaryGetValue(theDict, @"ChannelArray"))
      {
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigDataChannelConfigurationCreateFromDictionary_cold_4(value);
      }

      else
      {
        FigDataChannelConfigurationCreateFromDictionary_cold_5(value);
      }
    }

    else
    {
      FigDataChannelConfigurationCreateFromDictionary_cold_6(value);
    }
  }

  else
  {
    FigDataChannelConfigurationCreateFromDictionary_cold_7(value);
  }

  v4 = LODWORD(value[0]);
  if (v6)
  {
    CFRelease(v6);
  }

  return v4;
}

uint64_t FigDataChannelConfigurationCopyLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlayerLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v3);
        if (!Copy)
        {
          FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_1();
          return 0;
        }
      }

      else
      {
        Copy = 0;
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_2(&v6);
      return v6;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlayerItemLoggingIdentifier_cold_3(&v7);
    return v7;
  }

  return result;
}

uint64_t FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier(CFTypeRef cf, CFStringRef *a2)
{
  if (cf)
  {
    if (a2)
    {
      Copy = *(cf + 8);
      if (Copy)
      {
        v5 = CFGetAllocator(cf);
        Copy = CFStringCreateCopy(v5, *(cf + 8));
      }

      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigDataChannelConfigurationCopyPlaybackItemUniqueInstanceIdentifier_cold_2(&v8);
    return v8;
  }

  return result;
}

const void *OUTLINED_FUNCTION_4_89()
{
  v3 = *(v1 + 16);

  return CFArrayGetValueAtIndex(v3, v0);
}

uint64_t FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateParagraphStyleAttributeInserter_cold_1(&v8);
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

void figTTMLDocumentWriterParagraphStyleAttributeInserter_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterParagraphStyleAttributeInserter_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

void initMappingArray()
{
  v9[14] = *MEMORY[0x1E69E9840];
  v9[0] = *MEMORY[0x1E6961208];
  v0 = *MEMORY[0x1E6961220];
  v9[1] = FigTTMLDocumentWriterMapPropertyToAttribute_BackgroundColor;
  v9[2] = v0;
  v1 = *MEMORY[0x1E6961278];
  v9[3] = FigTTMLDocumentWriterMapPropertyToAttribute_Hidden;
  v9[4] = v1;
  v2 = *MEMORY[0x1E6961230];
  v9[5] = FigTTMLDocumentWriterMapPropertyToAttribute_TextAlign;
  v9[6] = v2;
  v3 = *MEMORY[0x1E6961228];
  v9[7] = FigTTMLDocumentWriterMapPropertyToAttribute_LinePadding;
  v9[8] = v3;
  v4 = *MEMORY[0x1E6961238];
  v9[9] = FigTTMLDocumentWriterMapPropertyToAttribute_LineHeight;
  v9[10] = v4;
  v5 = *MEMORY[0x1E6961218];
  v9[11] = FigTTMLDocumentWriterMapPropertyToAttribute_MultiRowAlign;
  v9[12] = v5;
  v9[13] = FigTTMLDocumentWriterMapPropertyToAttribute_FillLineGap;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 7, 0);
  for (i = 0; i != 14; i += 2)
  {
    v8 = malloc_type_malloc(0x10uLL, 0xE00402B90B96AuLL);
    *v8 = *&v9[i];
    CFArrayAppendValue(Mutable, v8);
  }

  sCaptionPropertyToAttributeMappingArray = Mutable;
}

void OUTLINED_FUNCTION_1_112(int a1, CFRange a2, int a3, int a4, int a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  a2.location = 0;

  CFArrayApplyFunction(v16, a2, v15, va);
}

__CFString *FigAlternateGetVideoContentTypeStringFromCollection(__CFString *result)
{
  if (result)
  {
    FigTagCollectionGetTagsWithCategory();
    FigTagCollectionGetTagsWithCategory();
    FigTagCollectionGetTagsWithCategory();
    if (FigTagEqualToTag() && FigTagEqualToTag() && FigTagEqualToTag())
    {
      return @"3D";
    }

    else if (FigTagEqualToTag() && FigTagEqualToTag() && (FigTagEqualToTag() || FigTagEqualToTag()))
    {
      return @"IM";
    }

    else if (FigTagEqualToTag())
    {
      return @"EQUI";
    }

    else if (FigTagEqualToTag())
    {
      return @"HEQU";
    }

    else if (FigTagEqualToTag())
    {
      return @"PRIM";
    }

    else if (FigTagEqualToTag())
    {
      return @"2D";
    }

    else
    {
      return @"Unknown";
    }
  }

  return result;
}

uint64_t FigAlternateAreAllAlternatesOnSameHost(const __CFArray *a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  Count = CFArrayGetCount(a1);
  v33 = 0;
  if (Count < 1)
  {
    LOBYTE(IsMediaGroupOnSameHost) = 1;
    return IsMediaGroupOnSameHost;
  }

  v5 = Count;
  v6 = 0;
  v7 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7);
    v9 = ValueAtIndex;
    if (!ValueAtIndex)
    {
      v17 = 0;
      v10 = 0;
LABEL_19:
      v11 = 0;
      v13 = 1;
      goto LABEL_20;
    }

    v10 = CFArrayGetCount(ValueAtIndex);
    if (v10 < 1)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v6 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 1;
    do
    {
      v14 = CFArrayGetValueAtIndex(v9, v12 - 1);
      PlaylistAlternateURL = FigAlternateGetPlaylistAlternateURL(v14);
      if (PlaylistAlternateURL)
      {
        v16 = PlaylistAlternateURL;
        if (!v6)
        {
          v6 = CFURLCopyAbsoluteURL(PlaylistAlternateURL);
        }

        if (FigCFHTTPIsHTTPBasedURL(v16))
        {
          if (!FigCFHTTPDoURLHostsAndPortsMatch(v6, v16))
          {
            v13 = 0;
          }
        }

        else
        {
          ++v11;
        }
      }

      if (v12 >= v10)
      {
        break;
      }

      ++v12;
    }

    while (v13);
    v33 = v6;
    v17 = v6;
LABEL_20:
    v18 = v11 == v10 || v11 < 1;
    LOBYTE(IsMediaGroupOnSameHost) = v18 ? v13 : 0;
    if (!IsMediaGroupOnSameHost)
    {
      break;
    }

    v20 = CFArrayGetCount(v9);
    Mutable = CFSetCreateMutable(allocator, 0, MEMORY[0x1E695E9F8]);
    if (v20 >= 1)
    {
      for (i = 0; i != v20; ++i)
      {
        v23 = CFArrayGetValueAtIndex(v9, i);
        if (FigAlternateGetVideoGroupIDString(v23))
        {
          VideoGroupIDString = FigAlternateGetVideoGroupIDString(v23);
          CFSetAddValue(Mutable, VideoGroupIDString);
        }

        if (FigAlternateGetAudioGroupIDString(v23))
        {
          AudioGroupIDString = FigAlternateGetAudioGroupIDString(v23);
          CFSetAddValue(Mutable, AudioGroupIDString);
        }

        if (FigAlternateGetSubtitleGroupIDString(v23))
        {
          SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v23);
          CFSetAddValue(Mutable, SubtitleGroupIDString);
        }
      }
    }

    if (!Mutable)
    {
      goto LABEL_43;
    }

    if (!figStreamAlternate_IsMediaGroupOnSameHost(a2, &v33, Mutable) || !figStreamAlternate_IsMediaGroupOnSameHost(a3, &v33, Mutable))
    {
      LOBYTE(IsMediaGroupOnSameHost) = 0;
      goto LABEL_43;
    }

    IsMediaGroupOnSameHost = figStreamAlternate_IsMediaGroupOnSameHost(a4, &v33, Mutable);
    if (v17)
    {
      CFRelease(v17);
      v6 = 0;
      v33 = 0;
    }

    CFRelease(Mutable);
    Mutable = 0;
    if (++v7 >= v5 || !IsMediaGroupOnSameHost)
    {
      goto LABEL_43;
    }
  }

  LOBYTE(IsMediaGroupOnSameHost) = 0;
  Mutable = 0;
LABEL_43:
  if (v6)
  {
    CFRelease(v6);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return IsMediaGroupOnSameHost;
}

uint64_t figStreamAlternate_IsMediaGroupOnSameHost(const __CFDictionary *a1, const __CFURL **a2, const __CFSet *a3)
{
  v5 = FigCFDictionaryCopyArrayOfKeys();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      v10 = *MEMORY[0x1E6962BB0];
      v11 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if (CFSetContainsValue(a3, ValueAtIndex))
        {
          CFDictionaryGetValue(a1, ValueAtIndex);
          v13 = FigCFDictionaryCopyArrayOfValues();
          if (v13)
          {
            v14 = v13;
            v15 = CFArrayGetCount(v13);
            if (v15 < 1)
            {
              v11 = 1;
            }

            else
            {
              v16 = v15;
              v17 = 1;
              v11 = 1;
              do
              {
                v18 = CFArrayGetValueAtIndex(v14, v17 - 1);
                Value = CFDictionaryGetValue(v18, v10);
                if (Value && !FigCFHTTPDoURLHostsAndPortsMatch(*a2, Value))
                {
                  v11 = 0;
                }

                if (v17 >= v16)
                {
                  break;
                }

                ++v17;
              }

              while (v11);
            }

            CFRelease(v14);
          }

          else
          {
            v11 = 1;
          }
        }

        ++v9;
      }

      while (v9 < v8 && v11);
    }

    CFRelease(v6);
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

uint64_t FPSupportVideoRangeToAlternateVideoRange(int a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return dword_196E77EA8[a1 - 1];
  }
}

uint64_t figStreamAlternate_FigCreateAudioFormatLookupOnce()
{
  qword_1ED4CAEC8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  result = FigSimpleMutexCreate();
  qword_1ED4CAED0 = result;
  return result;
}

uint64_t FigStreamAlternateGetPersistentIDForMediaTypeInMediaSelectionArray(const __CFArray *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    goto LABEL_15;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Count < 1)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v7 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v7 - 1);
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      goto LABEL_6;
    }

    v10 = Value;
    if (!FigCFStringGetOSTypeValue() || figStreamAlternate_isSelectionClosedCaptionsMediaType(ValueAtIndex))
    {
      goto LABEL_6;
    }

    if (CFSetContainsValue(Mutable, v10))
    {
      goto LABEL_15;
    }

    CFSetAddValue(Mutable, v10);
    if (a2)
    {
LABEL_6:
      v11 = 0;
    }

    else
    {
      v11 = FigCFDictionaryGetValue();
    }

    if (v7 >= Count)
    {
      break;
    }

    ++v7;
  }

  while (!v11);
LABEL_16:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v11;
}

BOOL FigStreamAlternateCanConcurrentlyDecodeAlternates(__CFArray *a1, __CFArray *a2)
{
  if (FigAlternateIs4k(a1))
  {
    if (FigAlternateHasStereoVideo(a1))
    {
      FigAlternateGetFrameRate(a1);
      if (CelestialShouldLimit4kStereoConcurrentPlayback())
      {
        return 0;
      }
    }
  }

  if (!FigAlternateIs4k(a2) || !FigAlternateHasStereoVideo(a2))
  {
    return 1;
  }

  FigAlternateGetFrameRate(a2);
  return CelestialShouldLimit4kStereoConcurrentPlayback() == 0;
}

CFMutableArrayRef FigStreamAlternateCopyAvailableVideoDynamicRanges(const __CFArray *a1)
{
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (a1)
    {
      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        v5 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
          VideoQualityIndex = FigAlternateGetVideoQualityIndex(ValueAtIndex, v7);
          FigAlternateStreamVideoQualityIndexToCMVideoDynamicRange(VideoQualityIndex);
          FigCFArrayAppendInt32();
          --v5;
        }

        while (v5 > 1);
      }
    }
  }

  else
  {
    FigStreamAlternateCopyAvailableVideoDynamicRanges_cold_1();
  }

  return Mutable;
}

uint64_t FigStreamAlternateCopyMaximumVideoResolution(CFArrayRef theArray, double *a2)
{
  v4 = 0;
  v5 = 0;
  v7 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v8 = 0.0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v4 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    Resolution = FigAlternateGetResolution(ValueAtIndex);
    if (Resolution * v12 > v8)
    {
      v5 = 1;
      v6 = v12;
      v7 = Resolution;
      v8 = Resolution * v12;
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v5)
  {
    *a2 = v7;
    a2[1] = v6;
  }

  return v5;
}

CFIndex FigStreamAlternateGetPixelsPerSecondLimits(CFArrayRef theArray, uint64_t a2, __CFArray **a3, __CFArray **a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (result = CFArrayGetCount(theArray); v9 < result; result = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    PixelPerSecondCount = FigAlternateGetPixelPerSecondCount(ValueAtIndex);
    if (!FigAlternateIsIFrameOnly(ValueAtIndex))
    {
      if (!a2 || (FigAlternateGetVideoLayoutTags(ValueAtIndex), FigCFEqual()))
      {
        if (PixelPerSecondCount > v10)
        {
          v7 = ValueAtIndex;
          v10 = PixelPerSecondCount;
        }

        if (PixelPerSecondCount < v11)
        {
          v8 = ValueAtIndex;
          v11 = PixelPerSecondCount;
        }
      }
    }

    ++v9;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

CFNumberRef FigStreamAlternateCopyNominalVideoFrameRate(CFArrayRef theArray)
{
  v2 = 0;
  v3 = 0.0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    FrameRate = FigAlternateGetFrameRate(ValueAtIndex);
    v7 = FrameRate;
    if (v7 == 0.0)
    {
      goto LABEL_18;
    }

    if (v3 == 0.0)
    {
      v8 = FrameRate;
      goto LABEL_19;
    }

    if (vabds_f32(v3, v7) <= 0.01)
    {
LABEL_18:
      v8 = v3;
    }

    else
    {
      if (v3 <= v7)
      {
        v8 = FrameRate;
      }

      else
      {
        v8 = v3;
      }

      if (v3 < v7)
      {
        v7 = v3;
      }

      if (fabsf(v8 + (v7 * -2.0)) >= 0.01 && fabsf(v8 + (v7 * -3.0)) >= 0.01 && fabsf(v8 + (v7 * -4.0)) >= 0.01)
      {
        v8 = 0.0;
      }
    }

LABEL_19:
    ++v2;
    v3 = v8;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  valuePtr = v3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

uint64_t __figAlternateFeatureDisabledCodecString_block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_78 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_113(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{

  return FigAlternateGetRenditionInfoForMediaType(a1, v9, v10, v11, v12, 0, 0, a8, a9);
}

void *OUTLINED_FUNCTION_3_86(uint64_t a1, size_t a2)
{

  return malloc_type_calloc(1uLL, a2, 0x100004052888210uLL);
}

uint64_t RegisterFigBandwidthPredictorType()
{
  result = _CFRuntimeRegisterClass();
  sFigBandwidthPredictorID = result;
  return result;
}

uint64_t FigBandwidthPredictorCreate(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (sRegisterFigBandwidthPredictorTypeOnce != -1)
  {
    FigBandwidthPredictorCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v6 = Instance;
    FigSymptomsManagerTriggerScorecardsUpdate();
    Value = CFDictionaryGetValue(a2, @"FBP_StoreBagConfiguration");
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v6[2] = Value;
    *a3 = CFRetain(v6);
    CFRelease(v6);
    return 0;
  }

  else
  {
    FigBandwidthPredictorCreate_cold_2(&v9);
    return v9;
  }
}

void figBandwidthPredictorFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t FigRemakerFamilyServer_Destroy(uint64_t a1, uint64_t a2)
{
  *(a2 + 165) = 1;
  if (*(a2 + 32))
  {
    if (FigXPCServerGetConnectionRefcon())
    {
      FigPixelBufferRecipientFlushPixelBufferBackings();
    }

    frs_runningStatsUpdateProgress(a2);
    v3 = *(a2 + 32);
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v4)
      {
        v4(v3);
      }
    }
  }

  return FigXPCServerDisassociateObjectWithConnection();
}

void frs_runningStatsUpdateProgress(uint64_t a1)
{
  cf = 0;
  FigRemakerGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(v3, @"Remaker_Progress", *MEMORY[0x1E695E480], &cf);
    if (cf)
    {
      FigCFNumberGetFloat32();
      *(a1 + 160) = v5;
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }
}

uint64_t FigRemakerFamilyServer_RemakerStartOutput(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigRemakerGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_RemakerStartOutput_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges(const void *a1, void *a2)
{
  v9 = 0;
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetReaderGetTypeID()))
  {
    data = xpc_dictionary_get_data(a2, "TimeRanges", &v9);
    v6 = v9;
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v7)
    {
      return v7(a1, data, v6 / 0x30);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRanges_cold_1(&v10);
    return v10;
  }
}

uint64_t FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack(const void *a1, void *a2)
{
  v10 = 0;
  if (!a1 || (v4 = CFGetTypeID(a1), v4 != FigAssetReaderGetTypeID()))
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_2(&v11);
    return v11;
  }

  int64 = xpc_dictionary_get_int64(a2, "TrackID");
  if (!int64)
  {
    FigRemakerFamilyServer_ReaderStartExtractionForTimeRangesFromTrack_cold_1(&v11);
    return v11;
  }

  data = xpc_dictionary_get_data(a2, "TimeRanges", &v10);
  v7 = v10;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (v8)
  {
    return v8(a1, int64, data, v7 / 0x30);
  }

  else
  {
    return 4294954514;
  }
}

uint64_t FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel(const void *a1, void *a2, void *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 96);
      if (v8)
      {
        v9 = v8(a1, int64) != 0;
      }

      else
      {
        v9 = 0;
      }

      xpc_dictionary_set_BOOL(a3, "IsTrackQueueAboveHighWaterLevelOut", v9);
      return 0;
    }

    else
    {
      FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_1(&v11);
      return v11;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterIsTrackQueueAboveHighWaterLevel_cold_2(&v12);
    return v12;
  }
}

uint64_t FigRemakerFamilyServer_WriterMarkEndOfDataForTrack(const void *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v6)
      {

        return v6(a1, int64);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterMarkEndOfDataForTrack_cold_2(&v9);
    return v9;
  }
}

uint64_t FigRemakerFamilyServer_WriterFinish(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 120);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFinish_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_WriterFinishAsync(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 128);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFinishAsync_cold_1(&v5);
    return v5;
  }
}

uint64_t FigRemakerFamilyServer_WriterEndPass(const void *a1, void *a2)
{
  if (a1 && (v4 = CFGetTypeID(a1), v4 == FigAssetWriterGetTypeID()))
  {
    int64 = xpc_dictionary_get_int64(a2, "TrackID");
    if (int64)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (v6)
      {

        return v6(a1, int64);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      FigRemakerFamilyServer_WriterEndPass_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterEndPass_cold_2(&v9);
    return v9;
  }
}

uint64_t FigRemakerFamilyServer_WriterFlush(const void *a1)
{
  if (a1 && (v2 = CFGetTypeID(a1), v2 == FigAssetWriterGetTypeID()))
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v3)
    {

      return v3(a1);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    FigRemakerFamilyServer_WriterFlush_cold_1(&v5);
    return v5;
  }
}

uint64_t frs_MakeWrapperForRemakerFamilyInternal(uint64_t a1, void *a2, const void *a3, uint64_t *a4, uint64_t a5, __int128 *a6, int a7)
{
  v9 = a5;
  v14 = malloc_type_calloc(1uLL, 0xD0uLL, 0x10E00401ACD5DA1uLL);
  if (!v14)
  {
    frs_MakeWrapperForRemakerFamilyInternal_cold_2(a1, valuePtr);
    return LODWORD(valuePtr[0]);
  }

  v15 = v14;
  v14[4] = a3;
  CFRetain(a3);
  *(v15 + 16) = v9;
  v16 = *(v15 + 32);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = CFGetTypeID(*(v15 + 32));
  if (v17 == FigAssetReaderGetTypeID())
  {
    v18 = 2;
    goto LABEL_10;
  }

  v19 = CFGetTypeID(v16);
  if (v19 == FigAssetWriterGetTypeID())
  {
    v18 = 3;
    goto LABEL_10;
  }

  v20 = CFGetTypeID(v16);
  if (v20 == FigRemakerGetTypeID())
  {
    v18 = 1;
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

LABEL_10:
  *(v15 + 152) = v18;
  v21 = FigSandboxAssertionCreateForPID();
  if (v21 || (*(v15 + 40) = os_retain(a2), v21 = FigXPCServerAssociateObjectWithConnection(), v21))
  {
    v49 = v21;
    FigRemakerFamilyServer_Destroy(a1, v15);
    return v49;
  }

  FigSimpleMutexLock();
  v22 = _MergedGlobals_79;
  *v15 = qword_1ED4CAEE8;
  _MergedGlobals_79 = v22 + 1;
  qword_1ED4CAEE8 = v15;
  *(v15 + 49) = a7;
  if (!a7)
  {
    goto LABEL_51;
  }

  v23 = *a6;
  *(v15 + 68) = a6[1];
  *(v15 + 52) = v23;
  v24 = &qword_1ED4CAEF0;
  do
  {
    v24 = *v24;
    if (!v24)
    {
      v58 = 0;
      number = 0;
      v26 = malloc_type_calloc(1uLL, 0x18uLL, 0x102004014030ADEuLL);
      if (!v26)
      {
        frs_MakeWrapperForRemakerFamilyInternal_cold_1(valuePtr);
        v49 = LODWORD(valuePtr[0]);
        if (LODWORD(valuePtr[0]))
        {
          goto LABEL_67;
        }

        goto LABEL_51;
      }

      v24 = v26;
      *(v26 + 2) = *(v15 + 16);
      if (in_audio_mx_server_process())
      {
        UsingPrimaryAVAudioSessionSiblingForAuditToken = CMSessionCreate();
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          goto LABEL_66;
        }

        v25 = *MEMORY[0x1E695E480];
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateWithCMSession(*MEMORY[0x1E695E480], v58, v24 + 2);
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v25 = *MEMORY[0x1E695E480];
        v28 = *(v15 + 68);
        valuePtr[0] = *(v15 + 52);
        valuePtr[1] = v28;
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigAudioSessionCreateUsingPrimaryAVAudioSessionSiblingForAuditToken(v25, valuePtr, @"FigRemaker", v24 + 2);
        if (UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
LABEL_66:
          v49 = UsingPrimaryAVAudioSessionSiblingForAuditToken;
          free(v24);
          goto LABEL_67;
        }
      }

      v29 = v24[2];
      LODWORD(valuePtr[0]) = *(v24 + 2);
      if (in_audio_mx_server_process())
      {
        if (v29)
        {
          v30 = *(CMBaseObjectGetVTable() + 16);
          if (v30)
          {
            v31 = *(v30 + 56);
            if (v31)
            {
              v31(v29, *MEMORY[0x1E69AFD90], @"RemakerServer");
            }
          }

          v32 = *(CMBaseObjectGetVTable() + 16);
          if (v32)
          {
            v33 = *(v32 + 56);
            if (v33)
            {
              v33(v29, *MEMORY[0x1E69AFCC0], *MEMORY[0x1E69AF648]);
            }
          }

          v34 = CFNumberCreate(v25, kCFNumberSInt32Type, valuePtr);
          if (v34)
          {
            v35 = v34;
            v36 = *(CMBaseObjectGetVTable() + 16);
            if (v36)
            {
              v37 = *(v36 + 56);
              if (v37)
              {
                v37(v29, *MEMORY[0x1E69AFDA8], v35);
              }
            }

            goto LABEL_36;
          }
        }

        else
        {
          v35 = CFNumberCreate(v25, kCFNumberSInt32Type, valuePtr);
          if (v35)
          {
LABEL_36:
            CFRelease(v35);
          }
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      UsingPrimaryAVAudioSessionSiblingForAuditToken = CMNotificationCenterAddListener();
      if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
      {
        UsingPrimaryAVAudioSessionSiblingForAuditToken = FigStartForwardingMediaServicesProcessDeathNotification();
        if (!UsingPrimaryAVAudioSessionSiblingForAuditToken)
        {
          *v24 = qword_1ED4CAEF0;
          qword_1ED4CAEF0 = v24;
          goto LABEL_40;
        }
      }

      goto LABEL_66;
    }
  }

  while (*(v24 + 2) != *(v15 + 16));
  v58 = 0;
  number = 0;
  v25 = *MEMORY[0x1E695E480];
LABEL_40:
  v38 = v24[2];
  if (!v38 || (v39 = *(CMBaseObjectGetVTable() + 16)) == 0 || (v40 = *(v39 + 48)) == 0 || (v40(v38, *MEMORY[0x1E69AFCA0], v25, &number), !number))
  {
    ++*(v24 + 3);
    goto LABEL_51;
  }

  LODWORD(valuePtr[0]) = 0;
  Value = CFNumberGetValue(number, kCFNumberSInt32Type, valuePtr);
  v42 = valuePtr[0];
  CFRelease(number);
  ++*(v24 + 3);
  if (Value)
  {
    if ((v42 & 0xFFFFFFF7) != 0)
    {
      v43 = *(v15 + 32);
      if (v43)
      {
        v44 = CFGetTypeID(v43);
        TypeID = FigRemakerGetTypeID();
        v46 = *(v15 + 32);
        if (v44 == TypeID)
        {
          v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v47)
          {
            v48 = &kFigRemakerProperty_ThrottleForBackground;
LABEL_62:
            if (!v47(v46, *v48, *MEMORY[0x1E695E4D0]))
            {
              goto LABEL_51;
            }
          }

          goto LABEL_63;
        }

        if (!v46)
        {
          goto LABEL_51;
        }

        v51 = CFGetTypeID(*(v15 + 32));
        v52 = FigAssetReaderGetTypeID();
        v46 = *(v15 + 32);
        if (v51 == v52)
        {
          v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v47)
          {
            v48 = &kFigAssetReaderProperty_ThrottleForBackground;
            goto LABEL_62;
          }

LABEL_63:
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v55, v56, LODWORD(valuePtr[0]));
          v49 = v54;
          if (!v54)
          {
            goto LABEL_51;
          }

LABEL_67:
          FigRemakerFamilyServer_Destroy(a1, v15);
          FigSimpleMutexUnlock();
          return v49;
        }

        if (v46)
        {
          v53 = CFGetTypeID(*(v15 + 32));
          if (v53 == FigAssetWriterGetTypeID())
          {
            v46 = *(v15 + 32);
            v47 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v47)
            {
              v48 = &kFigAssetWriterProperty_ThrottleForBackground;
              goto LABEL_62;
            }

            goto LABEL_63;
          }
        }
      }
    }
  }

LABEL_51:
  FigSimpleMutexUnlock();
  *(v15 + 157) = VTIsBackgroundRunningSupportedForClientPID();
  v49 = 0;
  if (a4)
  {
    *a4 = v15;
  }

  return v49;
}

uint64_t frs_FilterClientNotifications(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!FigCFEqual() && !FigCFEqual())
  {
    if (FigCFEqual())
    {
      a1[166] = 1;
      v4 = 168;
LABEL_12:
      *&a1[v4] = FigGetContinuousUpTimeNanoseconds();
      return 0;
    }

    if (FigCFEqual())
    {
      a1[176] = 1;
      v4 = 184;
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      a1[177] = 1;
LABEL_11:
      v4 = 192;
      goto LABEL_12;
    }

    if (FigCFEqual())
    {
      a1[178] = 1;
      goto LABEL_11;
    }
  }

  return 0;
}

uint64_t frs_appStateChangeListener(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (frs_appStateChangeListener_dynamicBackgroundMemoryOnce != -1)
  {
    frs_appStateChangeListener_cold_1();
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69AFA50]);
  if (Value)
  {
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
    {
      v8 = valuePtr;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = &qword_1ED4CAEF0;
  FigSimpleMutexLock();
  do
  {
    v9 = *v9;
    if (v9)
    {
      v10 = v9 == a2;
    }

    else
    {
      v10 = 1;
    }
  }

  while (!v10);
  if (!v9)
  {
    return FigSimpleMutexUnlock();
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        for (i = qword_1ED4CAEE8; i; i = *i)
        {
          if (*(i + 49) && *(i + 16) == *(a2 + 8))
          {
            *(i + 165) = 1;
          }
        }
      }

      return FigSimpleMutexUnlock();
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    v13 = qword_1ED4CAEE8;
    if (!qword_1ED4CAEE8)
    {
      return FigSimpleMutexUnlock();
    }

    while (1)
    {
      if (!*(v13 + 49) || *(v13 + 16) != *(a2 + 8))
      {
        goto LABEL_46;
      }

      *(v13 + 158) = 1;
      v14 = *(v13 + 32);
      if (!v14)
      {
        goto LABEL_44;
      }

      v15 = CFGetTypeID(v14);
      if (v15 == FigRemakerGetTypeID())
      {
        v16 = -16101;
      }

      else
      {
        v17 = *(v13 + 32);
        if (!v17)
        {
          goto LABEL_44;
        }

        v18 = CFGetTypeID(v17);
        if (v18 != FigAssetReaderGetTypeID())
        {
          v19 = *(v13 + 32);
          if (v19)
          {
            v20 = CFGetTypeID(v19);
            if (v20 == FigAssetWriterGetTypeID())
            {
              v16 = -16121;
            }

            else
            {
              v16 = 0;
            }

            goto LABEL_45;
          }

LABEL_44:
          v16 = 0;
          goto LABEL_45;
        }

        v16 = -16111;
      }

LABEL_45:
      frs_stopAndFailClient(v13, v16);
LABEL_46:
      v13 = *v13;
      if (!v13)
      {
        return FigSimpleMutexUnlock();
      }
    }
  }

  if (v8 == 4)
  {
    if (frs_appStateChangeListener_allowDynamicMemoryUsage)
    {
      frs_setAppForegroundState(*(a2 + 8), 0);
    }

    v21 = qword_1ED4CAEE8;
    if (!qword_1ED4CAEE8)
    {
      return FigSimpleMutexUnlock();
    }

    v12 = MEMORY[0x1E695E4D0];
    do
    {
      if (*(v21 + 49) && *(v21 + 16) == *(a2 + 8) && !*(v21 + 156))
      {
        *(v21 + 156) = 1;
      }

      v21 = *v21;
    }

    while (v21);
    goto LABEL_57;
  }

  if (v8 != 8)
  {
    return FigSimpleMutexUnlock();
  }

LABEL_28:
  if (frs_appStateChangeListener_allowDynamicMemoryUsage)
  {
    frs_setAppForegroundState(*(a2 + 8), 1);
  }

  v12 = MEMORY[0x1E695E4C0];
LABEL_57:
  v22 = qword_1ED4CAEE8;
  if (qword_1ED4CAEE8)
  {
    v23 = *v12;
    do
    {
      if (*(v22 + 16) == *(a2 + 8))
      {
        v24 = *(v22 + 32);
        if (v24)
        {
          v25 = CFGetTypeID(v24);
          TypeID = FigRemakerGetTypeID();
          v27 = *(v22 + 32);
          if (v25 == TypeID)
          {
            v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v28)
            {
              v29 = v27;
              v30 = @"Remaker_ThrottleForBackground";
LABEL_72:
              v36 = v28(v29, v30, v23);
              if (v36 == -12125 || v36 == -12139)
              {
                frs_stopAndFailClient(v22, v36);
              }
            }
          }

          else if (v27)
          {
            v31 = CFGetTypeID(*(v22 + 32));
            v32 = FigAssetReaderGetTypeID();
            v33 = *(v22 + 32);
            if (v31 == v32)
            {
              v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v28)
              {
                v29 = v33;
                v30 = @"AssetReader_ThrottleForBackground";
                goto LABEL_72;
              }
            }

            else if (v33)
            {
              v34 = CFGetTypeID(*(v22 + 32));
              if (v34 == FigAssetWriterGetTypeID())
              {
                v35 = *(v22 + 32);
                v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v28)
                {
                  v29 = v35;
                  v30 = @"AssetWriter_ThrottleForBackground";
                  goto LABEL_72;
                }
              }
            }
          }
        }
      }

      v22 = *v22;
    }

    while (v22);
  }

  return FigSimpleMutexUnlock();
}

uint64_t __frs_appStateChangeListener_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  frs_appStateChangeListener_allowDynamicMemoryUsage = result;
  return result;
}

const void *frs_setAppForegroundState(const void *result, int a2)
{
  v2 = MEMORY[0x1E695E4C0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  v3 = qword_1ED4CAEE8;
  if (qword_1ED4CAEE8)
  {
    v4 = result;
    v5 = *v2;
    do
    {
      if (!*(v3 + 49))
      {
        goto LABEL_20;
      }

      if (*(v3 + 16) != v4)
      {
        goto LABEL_20;
      }

      result = *(v3 + 32);
      if (!result)
      {
        goto LABEL_20;
      }

      v6 = CFGetTypeID(result);
      TypeID = FigRemakerGetTypeID();
      result = *(v3 + 32);
      if (v6 == TypeID)
      {
        FigRemakerGetFigBaseObject();
        v9 = v8;
        VTable = CMBaseObjectGetVTable();
        v11 = *(VTable + 8);
        result = (VTable + 8);
        v12 = *(v11 + 56);
        if (v12)
        {
          v13 = v9;
          v14 = @"Remaker_MinimizeMemoryUsage";
LABEL_19:
          result = v12(v13, v14, v5);
        }
      }

      else if (result)
      {
        v15 = CFGetTypeID(result);
        v16 = FigAssetReaderGetTypeID();
        result = *(v3 + 32);
        if (v15 != v16)
        {
          if (!result)
          {
            goto LABEL_20;
          }

          v21 = CFGetTypeID(result);
          result = FigAssetWriterGetTypeID();
          if (v21 != result)
          {
            goto LABEL_20;
          }

          FigAssetWriterGetFigBaseObject();
          v23 = v22;
          v24 = CMBaseObjectGetVTable();
          v25 = *(v24 + 8);
          result = (v24 + 8);
          v12 = *(v25 + 56);
          if (!v12)
          {
            goto LABEL_20;
          }

          v13 = v23;
          v14 = @"AssetWriter_MinimizeMemoryUsage";
          goto LABEL_19;
        }

        FigAssetReaderGetFigBaseObject();
        v18 = v17;
        v19 = CMBaseObjectGetVTable();
        v20 = *(v19 + 8);
        result = (v19 + 8);
        v12 = *(v20 + 56);
        if (v12)
        {
          v13 = v18;
          v14 = @"AssetReader_MinimizeMemoryUsage";
          goto LABEL_19;
        }
      }

LABEL_20:
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void frs_stopAndFailClient(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (*(a1 + 84))
  {
    return;
  }

  keys = 0;
  v3 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = CFGetTypeID(v4);
    if (v5 == FigAssetReaderGetTypeID())
    {
      v6 = @"AssetReader_Failed";
      v7 = &kFigAssetReaderNotificationParameter_OSStatus;
LABEL_11:
      v12 = *v7;
      keys = *v7;
      goto LABEL_13;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = CFGetTypeID(v8);
      if (v9 == FigAssetWriterGetTypeID())
      {
        v6 = @"AssetWriter_Failed";
        v7 = &kFigAssetWriterNotificationParameter_OSStatus;
        goto LABEL_11;
      }

      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = CFGetTypeID(v10);
        if (v11 == FigRemakerGetTypeID())
        {
          v6 = @"Remaker_Failed";
          v7 = &kFigRemakerNotificationParameter_OSStatus;
          goto LABEL_11;
        }
      }
    }
  }

  v12 = 0;
  v6 = 0;
LABEL_13:
  frs_runningStatsUpdateProgress(a1);
  FigRemakerGetFigBaseObject();
  if (v13)
  {
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v15)
    {
      v15(v14);
    }
  }

  if (v12 && v6)
  {
    v16 = CFDictionaryCreate(v3, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = CFRetain(v17);
    }

    *(a1 + 84) = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __frs_stopAndFailClient_block_invoke;
    block[3] = &__block_descriptor_tmp_129;
    block[4] = v6;
    block[5] = v17;
    block[6] = v16;
    block[7] = values;
    dispatch_async(gRemakerFamilyServerState_4, block);
  }
}

void __frs_stopAndFailClient_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects(const __CFArray *a1, const void *a2, CFTypeRef *a3)
{
  if (!a1)
  {
    v10 = 0;
    *a3 = 0;
    return v10;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
LABEL_7:
    v10 = 0;
    *a3 = CFRetain(a1);
    return v10;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
    if (!ValueAtIndex)
    {
      frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_4(&value);
      return value;
    }

    if (CFDictionaryContainsKey(ValueAtIndex, a2))
    {
      break;
    }

    if (v7 == ++v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *MEMORY[0x1E695E480];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (!MutableCopy)
  {
    frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_3(&value);
    return value;
  }

  v13 = MutableCopy;
  v14 = 0;
  while (1)
  {
    valuePtr = 0;
    value = 0;
    v15 = CFArrayGetValueAtIndex(v13, v14);
    if (!v15)
    {
      frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_2(&v24);
      goto LABEL_24;
    }

    v16 = v15;
    v17 = CFDictionaryGetValue(v15, a2);
    if (v17)
    {
      break;
    }

LABEL_16:
    if (v7 == ++v14)
    {
      v10 = 0;
      *a3 = v13;
      return v10;
    }
  }

  CFNumberGetValue(v17, kCFNumberSInt64Type, &valuePtr);
  v18 = MTAudioProcessingTapServerLookupAndRetainObject(valuePtr, &value);
  if (v18)
  {
    v10 = v18;
    goto LABEL_25;
  }

  v19 = CFDictionaryCreateMutableCopy(v11, 0, v16);
  if (v19)
  {
    v20 = v19;
    CFDictionaryReplaceValue(v19, a2, value);
    CFRelease(value);
    CFArraySetValueAtIndex(v13, v14, v20);
    CFRelease(v20);
    goto LABEL_16;
  }

  frs_CopySourceAudioTrackArrayReplacingAudioProcessingTapServerObjects_cold_1(&v24);
LABEL_24:
  v10 = v24;
LABEL_25:
  CFRelease(v13);
  return v10;
}

uint64_t frs_createVideoCompositionProcessorPropertiesFromSerializableProperties(const __CFDictionary *a1, void *a2)
{
  value = 0;
  if (!a1)
  {
    frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_4(&v21);
    goto LABEL_25;
  }

  v4 = CFDictionaryGetValue(a1, @"VideoCompositionProcessor_OutputBufferDescription");
  if (v4)
  {
    v5 = v4;
    v6 = *MEMORY[0x1E695E480];
    Count = CFDictionaryGetCount(a1);
    MutableCopy = CFDictionaryCreateMutableCopy(v6, Count, a1);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      v10 = CFGetTypeID(v5);
      if (v10 == CFArrayGetTypeID())
      {
        v11 = CFArrayGetCount(v5);
        Mutable = CFArrayCreateMutable(v6, v11, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v13 = Mutable;
          if (v11 >= 1)
          {
            v14 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v5, v14);
              v16 = CMTagCollectionCreateFromData(ValueAtIndex, v6, &value);
              if (v16)
              {
                break;
              }

              CFArrayAppendValue(v13, value);
              if (value)
              {
                CFRelease(value);
                value = 0;
              }

              if (v11 == ++v14)
              {
                goto LABEL_12;
              }
            }

            v17 = v16;
            CFRelease(v9);
            v19 = v13;
            goto LABEL_22;
          }

LABEL_12:
          CFDictionarySetValue(v9, @"VideoCompositionProcessor_OutputBufferDescription", v13);
          CFRelease(v13);
          if (a2)
          {
LABEL_13:
            v17 = 0;
            *a2 = v9;
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_2(&v21);
      }

      else
      {
        frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_1(&v21);
      }

      v17 = v21;
      v19 = v9;
LABEL_22:
      CFRelease(v19);
      goto LABEL_18;
    }

    frs_createVideoCompositionProcessorPropertiesFromSerializableProperties_cold_3(&v21);
LABEL_25:
    v17 = v21;
    goto LABEL_18;
  }

  v9 = CFRetain(a1);
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v9)
  {
    CFRelease(v9);
  }

  v17 = 0;
LABEL_18:
  if (value)
  {
    CFRelease(value);
  }

  return v17;
}

void fsr_ConnectionRefconDestructor(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void OUTLINED_FUNCTION_12_35()
{
  *(v0 - 208) = 0;
  *(v0 - 112) = 0;
  *(v0 - 104) = 0;
}

uint64_t OUTLINED_FUNCTION_15_32()
{
  *v0 = 0u;
  v0[1] = 0u;

  return xpc_connection_get_audit_token();
}

SecTaskRef OUTLINED_FUNCTION_16_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, audit_token_t *token, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 tokena, __int128 token_16)
{
  v35 = *v32;
  v36 = v33[1];
  tokena = *v33;
  token_16 = v36;

  return SecTaskCreateWithAuditToken(v35, &tokena);
}

CFNumberRef OUTLINED_FUNCTION_17_27(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int valuePtr)
{
  valuePtr = v31;

  return CFNumberCreate(v32, kCFNumberSInt32Type, &valuePtr);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20, uint64_t a21)
{
  *(v22 - 64) = a20;
  *(v22 - 48) = a21;
  return v21;
}

CFTypeID OUTLINED_FUNCTION_24_18(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

void OUTLINED_FUNCTION_36_15()
{
  *(v0 - 128) = 0;
  *(v0 - 120) = 0;
  *(v0 - 144) = 0;
  *(v0 - 136) = 0;
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 176) = 0;
  *(v0 - 168) = 0;
  *(v0 - 192) = 0;
  *(v0 - 184) = 0;
  *(v0 - 208) = 0;
  *(v0 - 200) = 0;
}

CMTime *OUTLINED_FUNCTION_40_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTimeRange *range, uint64_t a6, CMTime *a7, uint64_t a8, __int128 a9, __int128 a10, __int128 rangea, __int128 range_16, __int128 range_32, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20)
{
  rangea = a18;
  range_16 = a19;
  range_32 = a20;

  return CMTimeRangeGetEnd(&a15, &rangea);
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return CMBaseObjectGetVTable();
}

void OUTLINED_FUNCTION_47_10()
{

  CFRelease(v0);
}

CFTypeID OUTLINED_FUNCTION_48_12(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_49_7()
{

  return CMBaseObjectGetVTable();
}

__n128 OUTLINED_FUNCTION_61_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, uint64_t a17)
{
  result = a16;
  *(v17 - 112) = a16;
  *(v17 - 96) = a17;
  return result;
}

CMTime *OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3)
{

  return CMTimeMake(&a3, a1 - v3, 1000000000);
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CAF08 != -1)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_cold_1();
  }

  return qword_1ED4CAF10;
}

uint64_t __FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlaySubPipeManagerForRenderPipelineGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CAF08 != -1)
  {
    FigBufferedAirPlaySubPipeManagerForRenderPipelineGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigBufferedAirPlaySubPipeManagerForRenderPipelineCreate_block_invoke()
{
  dword_1ED4CAF04 = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceBooleanWithDefault();
  _MergedGlobals_80 = result;
  return result;
}

__CFString *bapspManager_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlaySubPipeManagerForRenderPipelinet %p>", a1);
  return Mutable;
}

uint64_t bapspManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspManager_setProperty_block_invoke;
  block[3] = &unk_1E748DF78;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __bapspManager_invalidate_block_invoke_2(uint64_t a1)
{
  result = bapspManager_clearCurrentSubPipe(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t bapspManager_setSubPipeTerminationInFlight(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 136) != a2)
  {
    *(result + 136) = a2;

    return CMBaseObjectGetDerivedStorage();
  }

  return result;
}

void bapspManager_scheduleProcessingDataIfPossible(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (bapspManager_dataFlowIsAllowed(a1))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 72);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __bapspManager_dequeueInspectSendSampleBuffer_block_invoke;
    v4[3] = &__block_descriptor_tmp_130_0;
    v4[4] = DerivedStorage;
    v4[5] = a1;
    dispatch_async(v3, v4);
  }
}

BOOL bapspManager_dataFlowIsAllowed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 104);
  if (v3)
  {
    v4 = *(DerivedStorage + 88);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      LODWORD(v3) = v3(v4) != 0;
    }
  }

  v5 = *(v2 + 56) != -999999.875 && *(v2 + 136) == 0;
  return !v3 && v5;
}

void bapspManager_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __bapspManager_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_132_1;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

uint64_t bapspManager_isSubPipeStarted(uint64_t a1)
{
  BOOLean = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 104))
  {
    return 0;
  }

  FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, @"IsStarted", *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_5;
  }

  Value = CFBooleanGetValue(BOOLean);
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v5);
  }

  return Value;
}

void bapspManager_startDataFlowIfRateIsValid(const void *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 56) != -999999.875)
  {
    CMBaseObjectGetDerivedStorage();

    bapspManager_scheduleProcessingDataIfPossible(a1);
  }
}

uint64_t bapspManager_reset(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __bapspManager_reset_block_invoke;
  v8[3] = &unk_1E748DFA0;
  v8[4] = &v10;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v9 = a2;
  dispatch_sync(v5, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t bapspManager_flush(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __bapspManager_flush_block_invoke;
  v8[3] = &unk_1E748DFC8;
  v8[4] = &v11;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v10 = *(a2 + 2);
  v9 = *a2;
  dispatch_sync(v5, v8);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t OUTLINED_FUNCTION_9_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_16_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, char a20, char a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

CFTypeRef OUTLINED_FUNCTION_23_27()
{

  return CMGetAttachment(v0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_25_20()
{
  v2 = *(v0 + 56);
  v3 = (*(v0 + 40) + 56);

  return CFNumberGetValue(v2, kCFNumberFloat64Type, v3);
}

void OUTLINED_FUNCTION_26_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
}

void FigMediaProcessorCreateForVideoRotation(const __CFAllocator *a1, int a2, int a3, int a4, const void *a5, const void *a6, void *a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, unsigned int a14, uint64_t *a15)
{
  v39 = 0;
  v37 = 0;
  cf = 0;
  v36 = 0;
  if ((a6 == 0) != (a7 != 0))
  {
    v16 = v15;
    v17 = 93;
LABEL_16:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v17, v16);
    return;
  }

  if (!a10)
  {
    v16 = v15;
    v17 = 95;
    goto LABEL_16;
  }

  if (a2 > 179)
  {
    if (a2 != 180 && a2 != 270)
    {
      goto LABEL_11;
    }
  }

  else if (a2)
  {
    if (a2 != 90)
    {
LABEL_11:
      v16 = v15;
      v17 = 103;
      goto LABEL_16;
    }
  }

  else if (!(a4 | a3))
  {
    v16 = v15;
    v17 = 100;
    goto LABEL_16;
  }

  if (a3 && a4)
  {
    v16 = v15;
    v17 = 106;
    goto LABEL_16;
  }

  FigSampleBufferProcessorCreateForVideoRotation(a1, a2, a3, a4, a5, &v39);
  if (!v21)
  {
    v22 = *MEMORY[0x1E695E480];
    if (a6)
    {
      FigSampleBufferProviderCreateForBufferQueue(v22, a6, &cf);
      if (v23)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v24 = *a8;
      v35 = *(a8 + 16);
      v25 = a9[1];
      v31 = *a9;
      v32 = v25;
      v33 = a9[2];
      v34 = v24;
      if (FigSampleBufferProviderCreateForVisualContext(v22, a7, &v34, &v31, &cf))
      {
        goto LABEL_25;
      }
    }

    v31 = *a11;
    *&v32 = *(a11 + 16);
    v34 = *a12;
    v35 = *(a12 + 16);
    FigSampleBufferConsumerCreateForBufferQueue(a10, &v31, &v34, &v37);
    if (!v26)
    {
      if (a13)
      {
        v27 = a1;
        FigActivitySchedulerCreateForCFRunLoop(a1, a13, &v36);
        if (v28)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v27 = a1;
        FigActivitySchedulerCreateForNewThread(a1, a14, @"com.apple.coremedia.mediaprocessor.videorotation", &v36);
        if (v29)
        {
          goto LABEL_25;
        }
      }

      FigMediaProcessorCreate(v27, v39, cf, v37, v36, a15);
    }
  }

LABEL_25:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v37)
  {
    CFRelease(v37);
  }
}

uint64_t FigAlternateFilterMonitorTriggerSetBoss(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2)
  {
    v5 = *(DerivedStorage + 32);
    *(DerivedStorage + 32) = 0;
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (!v4)
  {
    FigAlternateFilterMonitorTriggerSetBoss_cold_1(&v7);
    return v7;
  }

  a2 = v4;
  v5 = *(DerivedStorage + 32);
  *(DerivedStorage + 32) = v4;
  CFRetain(v4);
  if (v5)
  {
LABEL_4:
    CFRelease(v5);
  }

LABEL_5:
  FigSimpleMutexUnlock();
  if (a2)
  {
    CFRelease(a2);
  }

  return 0;
}

uint64_t FigAlternateFilterMonitorTriggerInvoke(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 32))
  {
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  v6 = famt_copyObserverEntries(a1);
  if (!v6)
  {
    FigAlternateFilterMonitorTriggerInvoke_cold_1(&v15);
    v13 = v15;
    if (!v5)
    {
      return v13;
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = FigAlternateSelectionBossLockForConfiguration(v5);
  if (!v8)
  {
    if (CFArrayGetCount(v7) >= 1)
    {
      v9 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v9);
        v11 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v11)
        {
          v12 = v11;
          ValueAtIndex[1](a1, v11, a2, ValueAtIndex[2]);
          CFRelease(v12);
        }

        ++v9;
      }

      while (v9 < CFArrayGetCount(v7));
    }

    v8 = FigAlternateSelectionBossUnlockForConfiguration(v5);
  }

  v13 = v8;
  CFRelease(v7);
  if (v5)
  {
LABEL_13:
    CFRelease(v5);
  }

  return v13;
}

CFArrayRef famt_copyObserverEntries(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v3, *(DerivedStorage + 40));
  FigSimpleMutexUnlock();
  return Copy;
}

CFTypeRef FigAlternateFilterMonitorTriggerAddObserver(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf[0] = FigCFWeakReferenceHolderCreateWithReferencedObject();
  if (cf[0])
  {
    cf[1] = a3;
    cf[2] = a4;
    FigSimpleMutexLock();
    CFArrayAppendValue(*(DerivedStorage + 40), cf);
    FigSimpleMutexUnlock();
    result = cf[0];
    if (cf[0])
    {
      CFRelease(cf[0]);
      return 0;
    }
  }

  else
  {
    FigAlternateFilterMonitorTriggerAddObserver_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t FigAlternateFilterMonitorTriggerRemoveObserver(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  for (i = 0; ; ++i)
  {
    Count = *(DerivedStorage + 40);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      FigSimpleMutexUnlock();
      return 0;
    }

    CFArrayGetValueAtIndex(*(DerivedStorage + 40), i);
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (FigCFEqual())
    {
      break;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  CFArrayRemoveValueAtIndex(*(DerivedStorage + 40), i);
  FigSimpleMutexUnlock();
  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t FigAlternateFilterMonitorTriggerCreateForNotification(const __CFAllocator *a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterMonitorTriggerGetClassID_sRegisterFigAlternateFilterMonitorTriggerTypeOnce, RegisterFigAlternateFilterMonitorTriggerType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v10 = CFRetain(a2);
  }

  else
  {
    v10 = 0;
  }

  *DerivedStorage = v10;
  v11 = FigReentrantMutexCreate();
  DerivedStorage[3] = v11;
  if (!v11)
  {
    v17 = 403;
LABEL_18:
    FigAlternateFilterMonitorTriggerCreateForNotification_cold_1(v17, &v18);
    return v18;
  }

  if (a3)
  {
    v12 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  }

  else
  {
    v12 = 0;
  }

  DerivedStorage[1] = v12;
  v13 = dispatch_queue_create("com.apple.coremedia.alternateFilterMonitorTrigger.callback", 0);
  DerivedStorage[2] = v13;
  if (!v13)
  {
    v17 = 408;
    goto LABEL_18;
  }

  Mutable = CFArrayCreateMutable(a1, 0, &kObserverEntryCFArrayValueCallbacks);
  DerivedStorage[5] = Mutable;
  if (!Mutable)
  {
    v17 = 411;
    goto LABEL_18;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  v15 = FigNotificationCenterAddWeakListener();
  if (!v15)
  {
    *a4 = 0;
  }

  return v15;
}

uint64_t famt_equal(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  if (!FigCFEqual())
  {
    return 0;
  }

  if (*(DerivedStorage + 8))
  {
    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v4 = 0;
  }

  if (*(v3 + 8))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v6 = 0;
  }

  v5 = FigCFEqual();
  if (v4)
  {
    CFRelease(v4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

uint64_t famt_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  }

  else
  {
    v2 = 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  if (v2)
  {
    CFRelease(v2);
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v3 = *(DerivedStorage + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(DerivedStorage + 32);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef famt_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = famt_copyObserverEntries(a1);
  v4 = *MEMORY[0x1E695E480];
  v5 = *DerivedStorage;
  if (!v3)
  {
    return CFStringCreateWithFormat(v4, 0, @"[FigAlternateFilterMonitorTrigger<%p> %@ numObservers:%d]", a1, v5, 0);
  }

  v6 = v3;
  Count = CFArrayGetCount(v3);
  v8 = CFStringCreateWithFormat(v4, 0, @"[FigAlternateFilterMonitorTrigger<%p> %@ numObservers:%d]", a1, v5, Count);
  CFRelease(v6);
  return v8;
}

uint64_t RegisterFigAlternateFilterMonitorTriggerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t famt_observerEntryCFArrayRetainCallBack(uint64_t a1, __int128 *a2)
{
  v3 = MEMORY[0x19A8CC720](a1, 24, 0xE004023458D36, 0);
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *(a2 + 2);
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v5;
  return v3;
}

void famt_observerEntryCFArrayReleaseCallBack(CFAllocatorRef allocator, CFTypeRef *ptr)
{
  if (*ptr)
  {
    CFRelease(*ptr);
  }

  v4 = ptr[2];
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t remoteXPCCPEClient_EnsureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __remoteXPCCPEClient_EnsureClientEstablished_block_invoke;
  block[3] = &unk_1E748E070;
  block[4] = &v3;
  if (remoteXPCCPEClient_EnsureClientEstablished_gCPERemoteClientSetupOnce != -1)
  {
    dispatch_once(&remoteXPCCPEClient_EnsureClientEstablished_gCPERemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFMutableDictionaryRef __FigCPERemoteSetStorageLocation_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  _MergedGlobals_81 = result;
  return result;
}

uint64_t FigAlternateSelectionBossGetClassID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  return sFigAlternateSelectionBossClassID;
}

uint64_t RegisterFigAlternateSelectionBossType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateSelectionBossGetTypeID(uint64_t a1, uint64_t a2)
{
  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAlternateSelectionBossAddFilter(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = fasb_addFilterGuts();
    FigSimpleMutexUnlock();
    return v3;
  }

  else
  {
    FigAlternateSelectionBossAddFilter_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSelectionBossRemoveFilter(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = fasb_removeFilter();
    FigSimpleMutexUnlock();
    return v3;
  }

  else
  {
    FigAlternateSelectionBossRemoveFilter_cold_1(&v5);
    return v5;
  }
}

uint64_t FigAlternateSelectionBossHasFilter(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v11 = DerivedStorage;
    FigSimpleMutexLock();
    v12 = 0;
    while (1)
    {
      Count = *(v11 + 40);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (v12 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v11 + 40), v12);
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v15)
      {
        v15(ValueAtIndex);
      }

      ++v12;
      if (FigCFEqual())
      {
        a2 = 1;
        goto LABEL_11;
      }
    }

    a2 = 0;
LABEL_11:
    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateSelectionBossHasFilter_cold_1(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v17, v18, SHIDWORD(v18), v19);
  }

  return a2;
}

const __CFArray *fasb_copyInitialAlternateListProperty(const __CFArray *result, __CFString *a2, const __CFArray **a3)
{
  if (a2 == @"HasHDRAlternates")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasHDRAlternate(result);
LABEL_14:
    v5 = MEMORY[0x1E695E4D0];
    if (!HasHDRAlternate)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    result = CFRetain(*v5);
    goto LABEL_17;
  }

  if (a2 == @"HasAtmosAlternates")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasATMOSAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasMultiChannelAudio")
  {
    goto LABEL_11;
  }

  if (a2 == @"HasLosslessAudio")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasLosslessAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasBinauralAudio")
  {
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasBinauralAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 == @"HasPlayableMultiChannelAudio")
  {
LABEL_11:
    HasHDRAlternate = FigAlternateSelectionUtility_AlternateListHasMultiChannelAudioAlternate(result);
    goto LABEL_14;
  }

  if (a2 != @"HighestVideoResolutionAlternateWithMultiChannelAudio")
  {
    return result;
  }

  result = FigAlternateSelectionUtility_HighestVideoResolutionAlternateWithMultiChannelAudio(result);
LABEL_17:
  *a3 = result;
  return result;
}

uint64_t FigAlternateSelectionBossSetProperty(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    FigAlternateSelectionBossSetProperty_cold_1(&v12);
    return v12;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    v8 = *(v7 + 104);
    *(v7 + 104) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (!v8)
    {
      goto LABEL_16;
    }

    CFRelease(v8);
  }

  else
  {
    if (!FigCFEqual())
    {
      v8 = 4294954509;
      goto LABEL_16;
    }

    v9 = *MEMORY[0x1E695E4D0];
    v10 = CMBaseObjectGetDerivedStorage();
    if (v9 == a3)
    {
      if (!*(v10 + 122))
      {
        FigAlternateSelectionBossLockForConfiguration(a1);
        v8 = 0;
        *(v10 + 122) = 1;
        goto LABEL_16;
      }
    }

    else if (*(v10 + 122))
    {
      v8 = FigAlternateSelectionBossUnlockForConfiguration(a1);
      if (!v8)
      {
        *(v10 + 122) = 0;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t FigAlternateSelectionBossAddMonitor(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v21 = 0;
  if (!a2)
  {
    FigAlternateSelectionBossAddMonitor_cold_1(&v23);
    return v23;
  }

  v5 = DerivedStorage;
  FigSimpleMutexLock();
  v6 = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v23 = 0;
  v7 = CFGetAllocator(a1);
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || (v9 = v8(a2, @"AlternateFilterMonitorProperty_Trigger", v7, &v23), !v23))
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  if (!v9)
  {
    v10 = FigAlternateFilterMonitorTriggerSetBoss(v23, a1);
    if (v10)
    {
LABEL_34:
      v9 = v10;
      goto LABEL_17;
    }

    for (i = 0; ; ++i)
    {
      Count = *(v6 + 64);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 64), i);
      v14 = CFGetAllocator(a1);
      v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v15 && !v15(ValueAtIndex, @"AlternateFilterMonitorProperty_Trigger", v14, &cf) && FigCFEqual())
      {
        v19 = cf;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v20)
        {
          v10 = v20(a2, @"AlternateFilterMonitorProperty_Trigger", v19);
          goto LABEL_34;
        }

        v9 = 4294954514;
        goto LABEL_17;
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (!v9)
  {
    CFArrayAppendValue(*(v5 + 64), a2);
    CMNotificationCenterGetDefaultLocalCenter();
    v16 = FigNotificationCenterAddWeakListener();
    if (v16 || (CMNotificationCenterGetDefaultLocalCenter(), v16 = FigNotificationCenterAddWeakListener(), v16))
    {
      v9 = v16;
    }

    else
    {
      v17 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v17)
      {
        v9 = v17(a2, &v21);
        if (!v9 && v21)
        {
          fasb_addFilterGuts();
          v9 = 0;
        }
      }

      else
      {
        v9 = 4294954514;
      }
    }
  }

  FigSimpleMutexUnlock();
  if (v21)
  {
    CFRelease(v21);
  }

  return v9;
}

uint64_t FigAlternateSelectionBossApplyFilters(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = fasb_applyFiltersGuts(a1);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t fasb_applyFiltersGuts(const void *a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  context = 0;
  v61 = 0;
  v62 = 0;
  if (*(DerivedStorage + 80))
  {
    Mutable = 0;
    Copy = 0;
    v12 = 0;
    *(DerivedStorage + 96) = 1;
    goto LABEL_81;
  }

  context = a1;
  Mutable = *(DerivedStorage + 24);
  if (!Mutable)
  {
    Copy = 0;
    goto LABEL_30;
  }

  v61 = 0;
  v62 = 0;
  v5 = *(DerivedStorage + 56);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v6)
  {
    v6(v5, Mutable, &v64, &v63);
  }

  else
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v7)
    {
      v7(v5, Mutable, &v64);
    }
  }

  theArray[0] = 0;
  memset(v67, 0, sizeof(v67));
  FigAlternateFilterApplyInfoGetStorage(v63, v67);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = 0; ; ++i)
    {
      Count = theArray[0];
      if (theArray[0])
      {
        Count = CFArrayGetCount(theArray[0]);
      }

      if (i >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], i);
      v71 = 0;
      *key = 0u;
      v70 = 0u;
      FigAlternateFilterApplyInfoGetStorage(ValueAtIndex, key);
      CFDictionarySetValue(Mutable, key[0], ValueAtIndex);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
    if (v13)
    {
      v12 = v13;
      Mutable = 0;
      Copy = 0;
      goto LABEL_81;
    }
  }

  v14 = CFGetAllocator(a1);
  Copy = CFArrayCreateCopy(v14, v64);
  if (Copy)
  {
    if (v63)
    {
      theArray[0] = 0;
      memset(v67, 0, sizeof(v67));
      FigAlternateFilterApplyInfoGetStorage(v63, v67);
      v15 = theArray[0];
      v62 = 0;
      if (theArray[0])
      {
        v16 = CFArrayGetCount(theArray[0]);
        if (v16 >= 1)
        {
          v17 = 0;
          v18 = v16 + 1;
          do
          {
            if (v17)
            {
              break;
            }

            v19 = CFArrayGetValueAtIndex(v15, v18 - 2);
            v71 = 0;
            *key = 0u;
            v70 = 0u;
            FigAlternateFilterApplyInfoGetStorage(v19, key);
            v17 = key[1];
            if (key[1])
            {
              v17 = key[0];
              v62 = key[0];
            }

            --v18;
          }

          while (v18 > 1);
        }
      }
    }

    v20 = *(v3 + 112);
    *(v3 + 112) = Mutable;
    if (Mutable)
    {
      CFRetain(Mutable);
    }

    if (v20)
    {
      CFRelease(v20);
    }

LABEL_30:
    v21 = FigCFEqual();
    if (!v21)
    {
      v22 = *(v3 + 32);
      *(v3 + 32) = Copy;
      if (Copy)
      {
        CFRetain(Copy);
      }

      if (v22)
      {
        CFRelease(v22);
      }
    }

    v23 = *(v3 + 40);
    if (!v23 || CFArrayGetCount(v23) < 1)
    {
LABEL_74:
      if (!v21)
      {
        goto LABEL_76;
      }

      goto LABEL_75;
    }

    if (v21 && *(v3 + 120) && !*(v3 + 121) && !*(v3 + 123))
    {
LABEL_75:
      if (!*(v3 + 97))
      {
LABEL_80:
        v12 = 0;
        goto LABEL_81;
      }

LABEL_76:
      *(v3 + 97) = 0;
      v61 = Copy;
      v48 = *(v3 + 8);
      if (v48)
      {
        v49.length = CFArrayGetCount(*(v3 + 8));
      }

      else
      {
        v49.length = 0;
      }

      v49.location = 0;
      CFArrayApplyFunction(v48, v49, fasb_dispatchAlternateChangedDelegateFn, &context);
      goto LABEL_80;
    }

    v24 = *(v3 + 120) == 0;
    v59 = CMBaseObjectGetDerivedStorage();
    v25 = fasb_copyVerboseDescriptionInternal(a1, v24);
    if (!v25)
    {
      fasb_applyFiltersGuts_cold_3();
LABEL_73:
      *(v3 + 120) = 1;
      goto LABEL_74;
    }

    v26 = v25;
    v56 = Copy;
    v55 = v21;
    v27 = CFGetAllocator(a1);
    v28 = CFArrayCreateMutable(v27, 0, MEMORY[0x1E695E9C0]);
    if (v28)
    {
      v29 = CFGetAllocator(a1);
      v30 = CFStringCreateMutable(v29, 0);
      if (v30)
      {
        v31 = CFGetAllocator(a1);
        theString = CFStringCreateWithFormat(v31, 0, @"[%p:%@]", a1, *(v59 + 104));
        if (theString)
        {
          cf = a1;
          LineFromString = fasb_copyNextLineFromString(v26, 0);
          if (LineFromString)
          {
            v33 = LineFromString;
            v34 = 0;
            do
            {
              v35 = v26;
              Length = CFStringGetLength(v33);
              v37 = CFStringGetLength(v30);
              v38 = CFStringGetLength(v33) + v37;
              if (v38 + CFStringGetLength(theString) < 980 || CFStringGetLength(v30) < 1)
              {
                v26 = v35;
              }

              else
              {
                CFArrayAppendValue(v28, v30);
                v26 = v35;
                CFRelease(v30);
                v39 = CFGetAllocator(cf);
                v30 = CFStringCreateMutable(v39, 0);
                if (!v30)
                {
                  fasb_applyFiltersGuts_cold_2();
                  goto LABEL_67;
                }
              }

              v34 += Length;
              CFStringAppend(v30, v33);
              CFRelease(v33);
              v33 = fasb_copyNextLineFromString(v26, v34);
            }

            while (v33);
          }

          if (CFStringGetLength(v30) >= 1)
          {
            CFStringAppend(v30, @"\nLOG COMPLETE");
            CFArrayAppendValue(v28, v30);
            CFRelease(v30);
            v30 = 0;
          }

          if (CFArrayGetCount(v28) < 1)
          {
            v33 = 0;
          }

          else
          {
            v54 = v26;
            v40 = 0;
            do
            {
              v41 = CFArrayGetValueAtIndex(v28, v40);
              if (dword_1EAF17490)
              {
                v42 = v41;
                v66 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v44 = v66;
                v45 = type;
                if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                {
                  v46 = v44;
                }

                else
                {
                  v46 = v44 & 0xFFFFFFFE;
                }

                if (v46)
                {
                  v47 = *(v59 + 104);
                  LODWORD(v67[0]) = 136315906;
                  *(v67 + 4) = "fasb_log";
                  WORD6(v67[0]) = 2048;
                  *(v67 + 14) = cf;
                  WORD3(v67[1]) = 2114;
                  *(&v67[1] + 1) = v47;
                  LOWORD(theArray[0]) = 2114;
                  *(theArray + 2) = v42;
                  LODWORD(v52) = 42;
                  _os_log_send_and_compose_impl(v46, 0, key, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v45, "<<HLS-FASB>> %s: [%p:%{public}@]\n%{public}@", v67, v52);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              ++v40;
            }

            while (v40 < CFArrayGetCount(v28));
            v33 = 0;
            v26 = v54;
          }

LABEL_67:
          CFRelease(v26);
          CFRelease(theString);
          v26 = v33;
          if (!v33)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }
    }

    else
    {
      v30 = 0;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, v52, v53);
LABEL_68:
    CFRelease(v26);
LABEL_69:
    if (v28)
    {
      CFRelease(v28);
    }

    v21 = v55;
    Copy = v56;
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_73;
  }

  fasb_applyFiltersGuts_cold_1(key);
  v12 = LODWORD(key[0]);
LABEL_81:
  if (v63)
  {
    CFRelease(v63);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

  return v12;
}

uint64_t FigAlternateSelectionLogNextFilterOperation(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *(DerivedStorage + 121) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigAlternateSelectionBossInitializeAlternateList(void *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4, CFTypeRef *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = *(DerivedStorage + 24);
  cf = 0;
  if (!a2)
  {
    FigAlternateSelectionBossInitializeAlternateList_cold_3(&v26);
    return v26;
  }

  v12 = DerivedStorage;
  FigSimpleMutexLock();
  *(v12 + 97) = 1;
  v13 = *(v12 + 24);
  if (v13)
  {
    CFRelease(v13);
    *(v12 + 24) = 0;
  }

  v14 = CFGetAllocator(a1);
  MutableCopy = CFArrayCreateMutableCopy(v14, 0, a2);
  *(v12 + 24) = MutableCopy;
  if (MutableCopy)
  {
    if (a4)
    {
      if (CFArrayGetCount(a4) >= 1)
      {
        v24 = fasb_applyExpandersGuts(a1, a4, &cf);
        if (v24)
        {
          v22 = v24;
          goto LABEL_21;
        }
      }
    }

    if (!a3)
    {
      v16 = 0;
      if (!v11)
      {
LABEL_15:
        v20 = *(v12 + 8);
        if (v20)
        {
          v21.length = CFArrayGetCount(*(v12 + 8));
        }

        else
        {
          v21.length = 0;
        }

        v21.location = 0;
        CFArrayApplyFunction(v20, v21, fasb_dispatchMediaSelectionArrayChangedDelegateFn, a1);
LABEL_19:
        v22 = fasb_applyFiltersGuts(a1);
        if (a5)
        {
          *a5 = cf;
          cf = 0;
        }

        goto LABEL_21;
      }

LABEL_14:
      if (!v16)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

    v16 = FigCFEqual() == 0;
    v17 = *(v12 + 16);
    if (v17)
    {
      CFRelease(v17);
      *(v12 + 16) = 0;
    }

    v18 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v18, a3);
    *(v12 + 16) = Copy;
    if (Copy)
    {
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    FigAlternateSelectionBossInitializeAlternateList_cold_1(&v26);
  }

  else
  {
    FigAlternateSelectionBossInitializeAlternateList_cold_2(&v26);
  }

  v22 = v26;
LABEL_21:
  FigSimpleMutexUnlock();
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t FigAlternateSelectionBossAddDelegate(const void *a1, uint64_t a2, void *a3, NSObject *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v16 = DerivedStorage;
    FigSimpleMutexLock();
    v17 = CFGetAllocator(a1);
    v18 = MEMORY[0x19A8CC720](v17, 40, 0xE004012604DDCLL, 0);
    if (v18)
    {
      v19 = v18;
      v20 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      *v19 = v20;
      if (v20)
      {
        __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(v19 + 1, a3);
        if (a4)
        {
          dispatch_retain(a4);
        }

        else
        {
          a4 = FigDispatchQueueCreateWithPriority();
        }

        v19[4] = a4;
        CFArrayAppendValue(*(v16 + 8), v19);
        v21 = 0;
      }

      else
      {
        FigAlternateSelectionBossAddDelegate_cold_1(&v24);
        v21 = v24;
      }
    }

    else
    {
      FigAlternateSelectionBossAddDelegate_cold_2(v25);
      v21 = v25[0];
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    FigAlternateSelectionBossAddDelegate_cold_3(DerivedStorage, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25[0], v25[1]);
    return 0;
  }

  return v21;
}

__CFString *fasb_copyVerboseDescriptionInternal(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = 0;
  v22 = 0;
  FigSimpleMutexLock();
  context = a1;
  v5 = fasb_copyDesc(a1);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v7, 0);
    v9 = Mutable;
    if (Mutable)
    {
      v20 = Mutable;
      CFStringAppendFormat(Mutable, 0, @"%@", v6);
      CFStringAppendFormat(v9, 0, @"\n%sMonitors:\n%s{", "  ", "  ");
      v10 = DerivedStorage[8];
      if (v10)
      {
        v11.length = CFArrayGetCount(DerivedStorage[8]);
      }

      else
      {
        v11.length = 0;
      }

      v11.location = 0;
      CFArrayApplyFunction(v10, v11, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      CFStringAppendFormat(v9, 0, @"\n%sFilters:\n%s{", "  ", "  ");
      CFStringAppendFormat(v9, 0, @"\n%s%sTo decode base64 encoded filter output, run:\n%s%s%% B64=ENCODEDVALUE;python3 -cimport base64,sys;n=int.from_bytes(base64.b64decode(sys.argv[1]),'little');print([i for i in range(0,n.bit_length())if 0!=(n&(1<<i))]) $B64", "  ", "  ", "  ", "  ", context);
      v12 = DerivedStorage[5];
      if (v12)
      {
        v13.length = CFArrayGetCount(DerivedStorage[5]);
      }

      else
      {
        v13.length = 0;
      }

      v13.location = 0;
      CFArrayApplyFunction(v12, v13, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      if (a2)
      {
        CFStringAppendFormat(v9, 0, @"\n%sAlternates:\n%s{", "  ", "  ");
        v14 = DerivedStorage[3];
        if (v14)
        {
          v15.length = CFArrayGetCount(DerivedStorage[3]);
        }

        else
        {
          v15.length = 0;
        }

        v15.location = 0;
        CFArrayApplyFunction(v14, v15, fasb_appendDescriptionApplierFn, &context);
        CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
      }

      CFStringAppendFormat(v9, 0, @"\n%sFiltered Alternates:\n%s{", "  ", "  ");
      v16 = DerivedStorage[4];
      if (v16)
      {
        v17.length = CFArrayGetCount(DerivedStorage[4]);
      }

      else
      {
        v17.length = 0;
      }

      v17.location = 0;
      CFArrayApplyFunction(v16, v17, fasb_appendDescriptionApplierFn, &context);
      CFStringAppendFormat(v9, 0, @"\n%s}", "  ");
    }

    FigSimpleMutexUnlock();
    CFRelease(v6);
  }

  else
  {
    FigSimpleMutexUnlock();
    return 0;
  }

  return v9;
}

uint64_t FigAlternateSelectionBossCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigAlternateSelectionBossCreate_cold_8(&v16);
    return v16;
  }

  if (sRegisterFigAlternateSelectionBossClassIDOnce != -1)
  {
    FigAlternateSelectionBossGetClassID_cold_1();
  }

  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x1E695E480];
  v7 = FigReentrantMutexCreateWithFlags();
  *DerivedStorage = v7;
  if (!v7)
  {
    FigAlternateSelectionBossCreate_cold_7(&v16);
    return v16;
  }

  Mutable = CFArrayCreateMutable(a1, 0, &kDelegateEntryCFArrayValueCallbacks);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    FigAlternateSelectionBossCreate_cold_6(&v16);
    return v16;
  }

  AllocatorForMedia = FigGetAllocatorForMedia();
  v4 = FigAlternateFilterTreeCreate(AllocatorForMedia, (DerivedStorage + 48));
  if (v4)
  {
    return v4;
  }

  v4 = fasb_rebuildFilterTree(0);
  if (v4)
  {
    return v4;
  }

  v10 = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 64) = v10;
  if (!v10)
  {
    FigAlternateSelectionBossCreate_cold_5(&v16);
    return v16;
  }

  v11 = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 72) = v11;
  if (!v11)
  {
    FigAlternateSelectionBossCreate_cold_4(&v16);
    return v16;
  }

  v12 = CFDictionaryCreate(a1, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(DerivedStorage + 112) = v12;
  if (!v12)
  {
    FigAlternateSelectionBossCreate_cold_3(&v16);
    return v16;
  }

  *(DerivedStorage + 104) = &stru_1F0B1AFB8;
  v13 = FigConditionVariableCreate();
  *(DerivedStorage + 88) = v13;
  if (!v13)
  {
    FigAlternateSelectionBossCreate_cold_2(&v16);
    return v16;
  }

  v14 = 0;
  *(DerivedStorage + 123) = FigGetCFPreferenceNumberWithDefault();
  *a2 = 0;
  return v14;
}

BOOL FigAlternateSelectionUtility_AlternateListHasOnlyAudioOnly(CFArrayRef theArray)
{
  if (theArray)
  {
    v2 = CFArrayGetCount(theArray) > 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v3 >= v4)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3++);
    if (!FigAlternateIsAudioOnly(ValueAtIndex))
    {
      return 0;
    }
  }

  return v2;
}

CFIndex FigAlternateSelectionUtility_GetLowestRequiredHDCPLevel(const __CFArray *a1, char *a2, int *a3, char *a4, int *a5)
{
  result = CFArrayGetCount(a1);
  if (result < 1)
  {
    v9 = 0;
    v8 = 0;
    v12 = -2;
    v11 = -2;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = -2;
    v12 = -2;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      CodecString = FigAlternateGetCodecString(ValueAtIndex);
      if (FigAlternateHasVideo(ValueAtIndex) || !CodecString)
      {
        HDCPLevel = FigAlternateGetHDCPLevel(ValueAtIndex);
        IsIFrameOnly = FigAlternateIsIFrameOnly(ValueAtIndex);
        if (HDCPLevel >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = HDCPLevel;
        }

        if (v12 == -2)
        {
          v17 = HDCPLevel;
        }

        if (HDCPLevel >= v11)
        {
          v18 = v11;
        }

        else
        {
          v18 = HDCPLevel;
        }

        if (v11 == -2)
        {
          v18 = HDCPLevel;
        }

        if (IsIFrameOnly)
        {
          v8 = 1;
        }

        else
        {
          v9 = 1;
          v12 = v17;
        }

        if (IsIFrameOnly)
        {
          v11 = v18;
        }
      }

      ++v10;
      result = CFArrayGetCount(a1);
    }

    while (v10 < result);
  }

  *a2 = v9;
  *a4 = v8;
  *a3 = v12;
  *a5 = v11;
  return result;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasHDRAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetVideoRange(ValueAtIndex) >= 2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasMultiChannelAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetMaxAudioChannelCount(ValueAtIndex) >= 3)
    {
      return 1;
    }
  }

  return 0;
}

CFDictionaryRef FigAlternateSelectionUtility_HighestVideoResolutionAlternateWithMultiChannelAudio(CFArrayRef theArray)
{
  v2 = 0;
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  v5 = v4;
  v6 = *MEMORY[0x1E695F060];
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); v2 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    if (FigAlternateGetMaxAudioChannelCount(ValueAtIndex) >= 3)
    {
      Resolution = FigAlternateGetResolution(ValueAtIndex);
      if (Resolution > v6 && v10 > v5)
      {
        v5 = v10;
        v6 = Resolution;
      }
    }

    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  if (v3 == v6 && v4 == v5)
  {
    return 0;
  }

  v12 = v6;
  v13 = v5;

  return CGSizeCreateDictionaryRepresentation(*&v12);
}

uint64_t FigAlternateSelectionUtility_AlternateListHasPlayableMultiChannelAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateGetMaxPlayableAudioChannelCount(ValueAtIndex) >= 3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasLosslessAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasLosslessAudio(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasBinauralAudioAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasBinauralAudio(ValueAtIndex))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FigAlternateSelectionUtility_AlternateListHasATMOSAlternate(CFArrayRef theArray)
{
  v2 = 0;
  while (1)
  {
    v3 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v2 >= v3)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
    if (FigAlternateHasAudioFormat(ValueAtIndex, 7))
    {
      return 1;
    }
  }

  return 0;
}

__CFString *figAlternateSelectionBossCopyFormattingDesc(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = fasb_copyDesc(a1);
  FigSimpleMutexUnlock();
  return v2;
}

__CFString *fasb_copyDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = DerivedStorage[5];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  v7 = DerivedStorage[3];
  if (v7)
  {
    v8 = CFArrayGetCount(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = DerivedStorage[4];
  if (v9)
  {
    v10 = CFArrayGetCount(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = DerivedStorage[2];
  if (v11)
  {
    v11 = CFArrayGetCount(v11);
  }

  CFStringAppendFormat(Mutable, 0, @"<FigAlternateSelectionBoss:%p [filterCount %d] [alternateCount %d] [filteredAlternateCount %d] [mediaSelectionArrayCount %d]>", a1, Count, v8, v10, v11);
  return Mutable;
}

void fasb_copyDelegateEntryValues(uint64_t a1, void *a2)
{
  v4 = *a1;
  if (v4)
  {
    v4 = CFRetain(v4);
  }

  *a2 = v4;
  __copy_constructor_8_8_pa0_38126_0_pa0_35993_8_pa0_4849_16(a2 + 1, (a1 + 8));
  v5 = *(a1 + 32);
  a2[4] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void fasb_delegateEntryReleaseAndClearValues(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t fasb_insertFilteringInfoToDescriptionHelper(const void *a1, __CFString *a2, uint64_t a3, CFIndex *a4, CFIndex *a5, CFIndex *a6, int a7)
{
  if (*(a3 + 8) < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = *(a3 + 32);
    if (v15)
    {
      v16 = CFArrayGetCount(v15) == 0;
    }

    else
    {
      v16 = 1;
    }
  }

  Count = *a6;
  if (*a6)
  {
LABEL_9:
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_27:
    v31 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v31, 0);
    if (!Mutable)
    {
      fasb_insertFilteringInfoToDescriptionHelper_cold_1(cf);
      return LODWORD(cf[0]);
    }

    goto LABEL_28;
  }

  v18 = *(a3 + 24);
  if (v18)
  {
    Count = CFBitVectorGetCount(v18);
    *a6 = Count;
    goto LABEL_9;
  }

  Count = 0;
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_10:
  v42 = v16;
  v43 = a7;
  v19 = *(a3 + 24);
  cf[0] = &stru_1F0B1AFB8;
  if (CFBitVectorGetCount(v19) >= Count)
  {
    Count = CFBitVectorGetCount(v19);
  }

  v20 = 0;
  v21 = &stru_1F0B1AFB8;
  if (v19)
  {
    v23 = Count - 1;
    v22 = Count < 1;
    v24 = MEMORY[0x1E695E480];
    if (!v22)
    {
      v25 = v23 >> 3;
      if (v25 >= 0x41)
      {
        v26 = 65;
      }

      else
      {
        v26 = v25;
      }

      v20 = malloc_type_calloc(1uLL, v26 + 1, 0x7BF2EF6DuLL);
      if (v20)
      {
        if (CFBitVectorGetCount(v19) <= 0x210)
        {
          v27.length = CFBitVectorGetCount(v19);
        }

        else
        {
          v27.length = 528;
        }

        v27.location = 0;
        CFBitVectorGetBits(v19, v27, v20);
        FigCreateBase64EncodedStringFromBytes();
        v21 = cf[0];
      }

      else
      {
        v21 = &stru_1F0B1AFB8;
      }
    }
  }

  else
  {
    v24 = MEMORY[0x1E695E480];
  }

  free(v20);
  Mutable = CFStringCreateMutableCopy(*v24, 0, v21);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v16 = v42;
  a7 = v43;
  if (!Mutable)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, v7);
    return v29;
  }

LABEL_28:
  v32 = *a5;
  if (!*a5)
  {
    v32 = CFStringGetLength(Mutable) + 4;
    *a5 = v32;
  }

  CFStringPad(Mutable, @" ", v32, 0);
  if (v16)
  {
    CFStringAppendFormat(Mutable, 0, @"%3ld ->%3ld: ", *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v33 = *a5;
    Length = CFStringGetLength(@"000 ->000: ");
    CFStringPad(Mutable, @" ", Length + v33, 0);
  }

  CFStringInsert(a2, *a4, Mutable);
  v35 = 0;
  *a4 += CFStringGetLength(Mutable);
  while (1)
  {
    v36 = *(a3 + 32);
    if (v36)
    {
      v36 = CFArrayGetCount(v36);
    }

    if (v35 >= v36)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 32), v35);
    v48 = 0;
    *cf = 0u;
    v47 = 0u;
    FigAlternateFilterApplyInfoGetStorage(ValueAtIndex, cf);
    if (!fasb_insertFilteringInfo_iterateToNextNewLine(a2, a4))
    {
      break;
    }

    v44[0] = *cf;
    v44[1] = v47;
    v45 = v48;
    inserted = fasb_insertFilteringInfoToDescriptionHelper(a1, a2, v44, a4, a5, a6, 0);
    if (inserted)
    {
LABEL_43:
      v30 = inserted;
      goto LABEL_45;
    }

    ++v35;
  }

  if (a7)
  {
    while (fasb_insertFilteringInfo_iterateToNextNewLine(a2, a4))
    {
      v48 = 0;
      *cf = 0u;
      v47 = 0u;
      inserted = fasb_insertFilteringInfoToDescriptionHelper(a1, a2, cf, a4, a5, a6, 0);
      if (inserted)
      {
        goto LABEL_43;
      }
    }
  }

  v30 = 0;
LABEL_45:
  CFRelease(Mutable);
  return v30;
}

uint64_t fasb_insertFilteringInfo_iterateToNextNewLine(const __CFString *a1, CFIndex *a2)
{
  v6.location = 0;
  v6.length = 0;
  v4 = *a2;
  v7.length = CFStringGetLength(a1) - *a2;
  v7.location = v4;
  result = CFStringFindWithOptions(a1, @"\n", v7, 0, &v6);
  if (result)
  {
    *a2 = v6.location + 1;
    return 1;
  }

  return result;
}

uint64_t fasb_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = CMBaseObjectGetDerivedStorage();
  for (i = 0; ; ++i)
  {
    Count = *(v2 + 64);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    CFArrayGetValueAtIndex(*(v2 + 64), i);
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  v5 = DerivedStorage[3];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = DerivedStorage[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = DerivedStorage[4];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = DerivedStorage[5];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = DerivedStorage[6];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = DerivedStorage[7];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = DerivedStorage[8];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = DerivedStorage[9];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = DerivedStorage[1];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = DerivedStorage[13];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = DerivedStorage[14];
  if (v15)
  {
    CFRelease(v15);
  }

  FigConditionVariableDestroy();

  return FigSimpleMutexDestroy();
}

void fasb_delegateEntryCFArrayReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  fasb_delegateEntryReleaseAndClearValues(a2);

  CFAllocatorDeallocate(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_76(uint64_t a1)
{

  return FigCFWeakReferenceHolderCopyReferencedObject();
}

uint64_t initValkRTCReportingUserInfoClientName()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingUserInfoClientName");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingUserInfoClientName = result;
  }

  else
  {
    result = constantValkRTCReportingUserInfoClientName;
  }

  _MergedGlobals_7[0] = kRTCReportingUserInfoClientNameFunction;
  return result;
}

void *__RTCReportingLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/RTCReporting.framework/RTCReporting", 2);
  RTCReportingLibrary_sLib = result;
  return result;
}

uint64_t initValkRTCReportingUserInfoServiceName()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingUserInfoServiceName");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingUserInfoServiceName = result;
  }

  else
  {
    result = constantValkRTCReportingUserInfoServiceName;
  }

  off_1ED4CA200[0] = kRTCReportingUserInfoServiceNameFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoClientType()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoClientType");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoClientType = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoClientType;
  }

  off_1ED4CA208[0] = kRTCReportingSessionInfoClientTypeFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoSessionID()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoSessionID");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoSessionID = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoSessionID;
  }

  off_1ED4CA210[0] = kRTCReportingSessionInfoSessionIDFunction;
  return result;
}

uint64_t initValkRTCReportingSessionInfoContainsRealtimeEvents()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  v0 = dlsym(RTCReportingLibrary_sLib, "kRTCReportingSessionInfoContainsRealtimeEvents");
  if (v0)
  {
    result = *v0;
    constantValkRTCReportingSessionInfoContainsRealtimeEvents = result;
  }

  else
  {
    result = constantValkRTCReportingSessionInfoContainsRealtimeEvents;
  }

  off_1ED4CA218[0] = kRTCReportingSessionInfoContainsRealtimeEventsFunction;
  return result;
}

Class initRTCReporting()
{
  if (RTCReportingLibrary_sOnce != -1)
  {
    initValkRTCReportingUserInfoClientName_cold_1();
  }

  result = objc_getClass("RTCReporting");
  classRTCReporting = result;
  off_1ED4CA220 = RTCReportingFunction;
  return result;
}

uint64_t FigAirPlayRoutePuppetCreate(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, CFTypeRef *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v8 = fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    FigAirPlayRouteGetClassID(v8, v9);
    v10 = CMDerivedObjectCreate();
    if (!v10)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (DerivedStorage)
      {
        v12 = DerivedStorage;
        *(DerivedStorage + 16) = 0;
        v13 = (DerivedStorage + 16);
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, v13, 10, 0x600u);
        }

        if (a3)
        {
          v14 = CFRetain(a3);
        }

        else
        {
          v14 = 0;
        }

        *v12 = v14;
        if (a2)
        {
          v12[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
        }

        if (dword_1EAF174B0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v10 = 0;
        *a5 = 0;
      }

      else
      {
        return 4294954510;
      }
    }
  }

  else
  {
    FigAirPlayRoutePuppetCreate_cold_1(v17);
    return v17[0];
  }

  return v10;
}

void airplayRoutePuppet_Finalize(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF174B0 >= 2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 8))
  {
    v3 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v3)
    {
      v4 = v3;
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
      CFRelease(v4);
    }

    v5 = *(DerivedStorage + 8);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 8) = 0;
    }
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }
}

uint64_t airplayRoutePuppet_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    FigBytePumpGetFigBaseObject();
    v9 = v8;
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {

      return v10(v9, a2, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_CopyProperty_cold_1(&v12);
    return v12;
  }
}

uint64_t airplayRoutePuppet_SetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (FigCFEqual() || FigCFEqual())
    {
      return 0;
    }

    else
    {
      FigBytePumpGetFigBaseObject();
      v8 = v7;
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {

        return v9(v8, a2, a3);
      }

      else
      {
        return 4294954514;
      }
    }
  }

  else
  {
    airplayRoutePuppet_SetProperty_cold_1(&v10);
    return v10;
  }
}

const void *airplayRoutePuppet_Activate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = FigCFWeakReferenceHolderCopyReferencedObject();
      if (result)
      {
        v4 = result;
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
        CFRelease(v4);
        return 0;
      }
    }
  }

  else
  {
    airplayRoutePuppet_Activate_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t airplayRoutePuppet_ReevaluateCurrentRoute(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ReevaluateCurrentRoute_cold_1(&v6);
    return v6;
  }
}

uint64_t airplayRoutePuppet_ResetRoutingContextIfNeeded(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ResetRoutingContextIfNeeded_cold_1(&v6);
    return v6;
  }
}

uint64_t airplayRoutePuppet_SuspendAirPlayScreen(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v5 = *DerivedStorage;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(v5, a2);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_SuspendAirPlayScreen_cold_1(&v8);
    return v8;
  }
}

uint64_t airplayRoutePuppet_ResumeAirPlayScreen(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {

      return v4(v3);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    airplayRoutePuppet_ResumeAirPlayScreen_cold_1(&v6);
    return v6;
  }
}

void FigSampleBufferProcessorCreateForVideoRotation(uint64_t a1, int a2, int a3, int a4, const void *a5, CFTypeRef *a6)
{
  if (!a6)
  {
    emitter = fig_log_get_emitter();
    v13 = v6;
    v14 = 672;
LABEL_35:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<< sbp_vrot >>>", v14, v13);
    return;
  }

  if (a2 > 179)
  {
    if (a2 != 180 && a2 != 270)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 != 90)
    {
LABEL_9:
      emitter = fig_log_get_emitter();
      v13 = v6;
      v14 = 680;
      goto LABEL_35;
    }
  }

  else if (!(a4 | a3))
  {
    emitter = fig_log_get_emitter();
    v13 = v6;
    v14 = 677;
    goto LABEL_35;
  }

  if (a3 && a4)
  {
    emitter = fig_log_get_emitter();
    v13 = v6;
    v14 = 683;
    goto LABEL_35;
  }

  if (!a5)
  {
    emitter = fig_log_get_emitter();
    v13 = v6;
    v14 = 686;
    goto LABEL_35;
  }

  v15 = *MEMORY[0x1E695E480];
  FigSampleBufferProcessorGetClassID();
  if (CMDerivedObjectCreate())
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = a2;
  v17 = DerivedStorage;
  *(DerivedStorage + 40) = a5;
  CFRetain(a5);
  *(v17 + 16) = 0;
  v56 = (v17 + 16);
  *(v17 + 24) = 0;
  v18 = CMBaseObjectGetDerivedStorage();
  v19 = *MEMORY[0x1E6966130];
  Value = CFDictionaryGetValue(*(v18 + 40), *MEMORY[0x1E6966130]);
  v21 = Value;
  valuePtr = 0;
  v58 = v17;
  if (!Value)
  {
    v57 = 0;
    goto LABEL_46;
  }

  v22 = CFGetTypeID(Value);
  if (v22 != CFArrayGetTypeID() || CFArrayGetCount(v21) < 1)
  {
    v33 = CFGetTypeID(v21);
    if (v33 == CFNumberGetTypeID())
    {
      v57 = CFRetain(v21);
      CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
      v34 = 0;
      while (*&kSupportedPixelFormats[v34] != valuePtr)
      {
        v34 += 4;
        if (v34 == 44)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      v57 = 0;
    }

    v21 = 0;
    goto LABEL_46;
  }

  Count = CFArrayGetCount(v21);
  ValueAtIndex = CFArrayGetValueAtIndex(v21, 0);
  v57 = CFRetain(ValueAtIndex);
  MutableCopy = CFArrayCreateMutableCopy(v15, 0, v21);
  if (MutableCopy)
  {
    v21 = MutableCopy;
    if (Count < 1)
    {
      if (CFArrayGetCount(MutableCopy))
      {
        v17 = v58;
        goto LABEL_46;
      }
    }

    else
    {
      v54 = v18;
      v26 = 0;
      do
      {
        v27 = Count--;
        v28 = CFArrayGetValueAtIndex(v21, Count);
        CFNumberGetValue(v28, kCFNumberSInt32Type, &valuePtr);
        v29 = 0;
        while (*&kSupportedPixelFormats[v29] != valuePtr)
        {
          v29 += 4;
          if (v29 == 44)
          {
            CFArrayRemoveValueAtIndex(v21, Count);
            v26 = 1;
            break;
          }
        }
      }

      while (v27 > 1);
      v18 = v54;
      if (CFArrayGetCount(v21))
      {
        v17 = v58;
        if (v26)
        {
          v30 = CFDictionaryCreateMutableCopy(v15, 0, *(v54 + 40));
          if (v30)
          {
            v31 = v30;
            CFDictionarySetValue(v30, v19, v21);
            CFRelease(*(v54 + 40));
            *(v54 + 40) = v31;
            v32 = CFDictionaryCreateMutableCopy(v15, 0, v31);
            if (!v32)
            {
              FigSampleBufferProcessorCreateForVideoRotation_cold_1(&v60);
              goto LABEL_83;
            }

            goto LABEL_47;
          }

          FigSampleBufferProcessorCreateForVideoRotation_cold_2(&v60);
          v32 = 0;
          goto LABEL_83;
        }

LABEL_46:
        v32 = CFDictionaryCreateMutableCopy(v15, 0, *(v18 + 40));
        if (v32)
        {
LABEL_47:
          v35 = v18;
          if (*v18 == 270 || *v18 == 90)
          {
            v36 = *(v18 + 40);
            v37 = *MEMORY[0x1E6966208];
            v38 = CFDictionaryGetValue(v36, *MEMORY[0x1E6966208]);
            v39 = *MEMORY[0x1E69660B8];
            v40 = CFDictionaryGetValue(*(v35 + 40), *MEMORY[0x1E69660B8]);
            if (v38 && v40 != 0)
            {
              CFDictionarySetValue(v32, v37, v40);
              CFDictionarySetValue(v32, v39, v38);
            }
          }

          CFDictionaryRemoveValue(v32, *MEMORY[0x1E6966088]);
          CFDictionaryRemoveValue(v32, *MEMORY[0x1E69660A0]);
          CFDictionaryRemoveValue(v32, *MEMORY[0x1E6966090]);
          CFDictionaryRemoveValue(v32, *MEMORY[0x1E6966078]);
          CFDictionaryRemoveValue(v32, *MEMORY[0x1E6966020]);
          CFDictionaryRemoveValue(v32, *MEMORY[0x1E6966060]);
          v42 = 0;
          *(v35 + 32) = CFRetain(v32);
LABEL_55:
          v17 = v58;
          if (!v21)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }

        FigSampleBufferProcessorCreateForVideoRotation_cold_8(&v60);
LABEL_83:
        v42 = v60;
        if (!v21)
        {
LABEL_57:
          if (v32)
          {
            CFRelease(v32);
          }

          goto LABEL_59;
        }

LABEL_56:
        CFRelease(v21);
        goto LABEL_57;
      }
    }

    CFRelease(v21);
LABEL_73:
    key = v19;
    Mutable = CFArrayCreateMutable(v15, 0, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v21 = Mutable;
      for (i = 0; i != 44; i += 4)
      {
        valuePtr = *&kSupportedPixelFormats[i];
        v47 = CFNumberCreate(v15, kCFNumberSInt32Type, &valuePtr);
        if (!v47)
        {
          FigSampleBufferProcessorCreateForVideoRotation_cold_5(&v60);
          v32 = 0;
          v42 = v60;
          goto LABEL_55;
        }

        v48 = v47;
        CFArrayAppendValue(v21, v47);
        CFRelease(v48);
      }

      v49 = CFGetAllocator(0);
      v50 = VTPixelTransferSessionCreate(v49, (v18 + 16));
      if (v50)
      {
        v42 = v50;
        v32 = 0;
        goto LABEL_55;
      }

      v51 = CFDictionaryCreateMutableCopy(v15, 0, *(v18 + 40));
      v32 = v51;
      v17 = v58;
      if (v51)
      {
        CFDictionarySetValue(v51, key, v21);
        v52 = CFDictionaryCreateMutableCopy(v15, 0, *(v18 + 40));
        if (v52)
        {
          v53 = v52;
          CFDictionarySetValue(v52, key, v57);
          CFRelease(*(v18 + 40));
          *(v18 + 40) = v53;
          goto LABEL_47;
        }

        FigSampleBufferProcessorCreateForVideoRotation_cold_3(&v60);
      }

      else
      {
        FigSampleBufferProcessorCreateForVideoRotation_cold_4(&v60);
      }

      goto LABEL_83;
    }

    FigSampleBufferProcessorCreateForVideoRotation_cold_6(&v60);
  }

  else
  {
    FigSampleBufferProcessorCreateForVideoRotation_cold_7(&v60);
  }

  v42 = v60;
  v17 = v58;
LABEL_59:
  if (v57)
  {
    CFRelease(v57);
  }

  if (!v42 && (!*v56 || !sbp_vrot_ensurePoolUpToDate(0, 0)))
  {
    v43 = (v17 + 8);
    if (!VTImageRotationSessionCreate())
    {
      v44 = *MEMORY[0x1E695E4D0];
      if ((!a4 || !VTSessionSetProperty(*v43, *MEMORY[0x1E6983D00], *MEMORY[0x1E695E4D0])) && (!a3 || !VTSessionSetProperty(*v43, *MEMORY[0x1E6983D08], v44)))
      {
        VTSessionSetProperty(*v43, *MEMORY[0x1E6983CF0], v44);
        *a6 = 0;
      }
    }
  }
}

uint64_t sbp_vrot_ensurePoolUpToDate(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = (DerivedStorage + 48);
  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    if (!a2 || *(DerivedStorage + 56) == a2)
    {
      return 0;
    }

    CFRelease(v5);
    *v6 = 0;
  }

  if (VTAvoidIOSurfaceBackings())
  {
    if (a2)
    {
LABEL_8:
      v8 = 0;
      v9 = 1;
      goto LABEL_9;
    }

LABEL_15:
    v13 = *(DerivedStorage + 40);
    if (v13)
    {
      MutableCopy = CFRetain(v13);
      a2 = 0;
      v8 = 0;
    }

    else
    {
      a2 = 0;
      v8 = 0;
      MutableCopy = 0;
    }

    goto LABEL_20;
  }

  if (CFDictionaryContainsKey(*(DerivedStorage + 40), *MEMORY[0x1E69660D8]))
  {
    if (a2)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v14 = *MEMORY[0x1E695E480];
  v8 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v9 = 0;
LABEL_9:
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(DerivedStorage + 40));
    valuePtr = a2;
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v11)
    {
      v12 = v11;
      CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966130], v11);
      CFRelease(v12);
    }

    if (v9)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v14, 0, *(DerivedStorage + 40));
LABEL_12:
  FigCFDictionarySetValue();
LABEL_20:
  *(DerivedStorage + 56) = a2;
  v15 = CFGetAllocator(a1);
  v7 = CVPixelBufferPoolCreate(v15, 0, MutableCopy, v6);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

uint64_t sbp_vrot_invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 72) = 0;
  MEMORY[0x19A8D4DF0](*(DerivedStorage + 8));
  return 0;
}

void sbp_vrot_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    VTPixelTransferSessionInvalidate(v3);
    CFRelease(*(DerivedStorage + 16));
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }

  v6 = *(DerivedStorage + 48);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 48) = 0;
  }

  if (*(DerivedStorage + 64))
  {
    FigFormatDescriptionRelease();
    *(DerivedStorage + 64) = 0;
  }

  v7 = *(DerivedStorage + 32);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 32) = 0;
  }
}

__CFString *sbp_vrot_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_VideoRotation %p>", a1);
  return Mutable;
}

uint64_t sbp_vrot_copyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"SampleBufferProcessor_SourcePixelBufferAttributes"))
  {
    v8 = *(DerivedStorage + 32);
    if (v8)
    {
LABEL_3:
      v9 = CFRetain(v8);
LABEL_7:
      result = 0;
      *a4 = v9;
      return result;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"SampleBufferProcessor_OutputPixelBufferPool"))
  {
    sbp_vrot_ensurePoolUpToDate(a1, 0);
    v8 = *(DerivedStorage + 48);
    if (v8)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  return 4294954512;
}

uint64_t sbp_vrot_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 72) = a2;
  *(DerivedStorage + 80) = a3;
  return 0;
}

void FigSCCParserRelease(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 15);
    if (v4)
    {
      CFRelease(v4);
    }

    FigCEA608DataInspectorRelease(*(a1 + 14));
    sccParserMalformedDataInfoRelease(v2, *(a1 + 17));
    CFAllocatorDeallocate(v2, a1);
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

uint64_t FigSCCParserCaptionDataInfoGetChannel(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *a1;
    }

    if (a3)
    {
      *a3 = a1[1];
    }

    v6 = 0;
    if (a4)
    {
      *a4 = a1[2];
    }
  }

  else
  {
    v9 = v4;
    v10 = v5;
    FigSCCParserCaptionDataInfoGetChannel_cold_1(&v8);
    return v8;
  }

  return v6;
}

uint64_t FigSCCParserCaptionDataInfoGetFrame(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = *(a1 + 32);
    }

    result = 0;
    if (a3)
    {
      *a3 = *(a1 + 60);
    }
  }

  else
  {
    v8 = v3;
    v9 = v4;
    FigSCCParserCaptionDataInfoGetFrame_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetDTS(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      v6 = *(a1 + 36);
      *(a2 + 16) = *(a1 + 52);
      *a2 = v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = v2;
    v9 = v3;
    FigSCCParserCaptionDataInfoGetDTS_cold_1(&v7);
    return v7;
  }

  return result;
}

uint64_t FigSCCParserCaptionDataInfoGetCaptionData(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 64);
    }

    else
    {
      FigSCCParserCaptionDataInfoGetCaptionData_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigSCCParserCaptionDataInfoGetCaptionData_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t sccLineStreamSkipSpaces(void *a1)
{
  v1 = a1;
  __dst = 0;
  v3 = 0;
  while (1)
  {
    sccLineStreamReadData(a1, 1uLL, &__dst, &v3);
    if (!v3)
    {
      return 0;
    }

    if (__dst != 9 && __dst != 32)
    {
      break;
    }

    __dst = 0;
    v3 = 0;
    a1 = v1;
  }

  v1[4] -= v3;
  return 1;
}

void *sccLineStreamReadData(void *result, size_t a2, void *__dst, size_t *a4)
{
  v5 = result[4];
  if (result[3] - v5 + result[2] >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = result[3] - v5 + result[2];
  }

  if (v6)
  {
    v7 = result;
    result = memcpy(__dst, (*result + v5), v6);
    v7[4] += v6;
  }

  *a4 = v6;
  return result;
}

void sccParserCaptionDataInfoRelease(CFAllocatorRef allocator, void *ptr)
{
  if (ptr)
  {
    v4 = ptr[8];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = ptr[9];
    if (v5)
    {
      CFRelease(v5);
    }

    CFAllocatorDeallocate(allocator, ptr);
  }
}

unint64_t OUTLINED_FUNCTION_2_112@<X0>(__int16 a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int16 __str)
{
  __str = a1;

  return strtoul(&__str, (v24 - 176), 10);
}

uint64_t OUTLINED_FUNCTION_5_77(uint64_t a1, CMTime *time2, CMTime *time1, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t time2a, __int128 time2_8, uint64_t time1a, uint64_t time1_8, uint64_t time1_16, uint64_t a15, int a16)
{
  time2a = v16;
  LODWORD(time2_8) = v17;
  *(&time2_8 + 4) = a15;
  HIDWORD(time2_8) = a16;

  return CMTimeCompare(&time1a, &time2a);
}

unint64_t OUTLINED_FUNCTION_11_42@<X0>(__int16 a1@<W8>)
{
  *(v1 - 164) = a1;

  return strtoul((v1 - 164), (v1 - 176), 16);
}

uint64_t FigVenueDescriptionMetadataSupplierCreate(uint64_t a1, const void *a2, const void *a3, uint64_t *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  cf = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!a2)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_6(v19);
LABEL_21:
    v15 = v19[0];
    goto LABEL_22;
  }

  if (!a4)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_5(v19);
    goto LABEL_21;
  }

  FigStaticMetadataSupplierGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v15 = v7;
    goto LABEL_22;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v11 = CFDateCreate(v9, Current);
  DerivedStorage[11] = v11;
  if (!v11)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_4(v19);
    goto LABEL_21;
  }

  v12 = FigSimpleMutexCreate();
  DerivedStorage[4] = v12;
  if (!v12)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_3(v19);
    goto LABEL_21;
  }

  v13 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[5] = v13;
  if (!v13)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_2(v19);
    goto LABEL_21;
  }

  DerivedStorage[6] = 0;
  DerivedStorage[7] = DerivedStorage + 6;
  *DerivedStorage = CFRetain(a2);
  if (a3)
  {
    v14 = CFRetain(a3);
  }

  else
  {
    v14 = 0;
  }

  DerivedStorage[1] = v14;
  v15 = FigRetainProxyCreate();
  if (!v15)
  {
    FigVenueDescriptionMetadataSupplierCreate_cold_1(DerivedStorage, &cf, a4);
    goto LABEL_12;
  }

LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_12:
  if (dword_1EAF174D0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v15;
}

void vdms_reevaluateProcessingStateAndNotify(uint64_t a1, int a2)
{
  v131[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 16);
  if (a2 && v6 == 6)
  {
    *(DerivedStorage + 16) = 4;
  }

  v117 = v6;
  v7 = 0;
  v8 = &dword_1EAF17000;
  v9 = *MEMORY[0x1E695E480];
  v118 = DerivedStorage;
  while (2)
  {
    for (i = *(v5 + 16); i == 4; *(v5 + 16) = i)
    {
      *type = 0;
      theArray = 0;
      v11 = CMBaseObjectGetDerivedStorage();
      if (*(v11 + 16) == 4)
      {
        if (*(v11 + 64))
        {
          FigBytePumpGetFigBaseObject();
          v13 = v12;
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v14)
          {
            v15 = v14(v13, @"FBSP_Metadata", v9, &theArray);
            if (!v15)
            {
LABEL_11:
              v16 = 0;
              while (1)
              {
                Count = theArray;
                if (theArray)
                {
                  Count = CFArrayGetCount(theArray);
                }

                if (v16 >= Count)
                {
                  break;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
                CFDictionaryGetValue(ValueAtIndex, @"key");
                ++v16;
                if (FigCFEqual())
                {
                  Value = CFDictionaryGetValue(ValueAtIndex, @"value");
                  if (Value)
                  {
                    v20 = CFGetTypeID(Value);
                    if (v20 == CFDataGetTypeID())
                    {
                      v21 = 0;
                      v7 = 0;
                      goto LABEL_31;
                    }
                  }

                  if (v8[308])
                  {
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v8 = &dword_1EAF17000;
                  }

                  v131[0] = 0;
                  v15 = -15855;
                  goto LABEL_29;
                }
              }

LABEL_58:
              v7 = 0;
LABEL_30:
              v21 = 1;
              goto LABEL_31;
            }

LABEL_28:
            v131[0] = 0;
LABEL_29:
            FigCreateErrorForOSStatus(v15, v131);
            v7 = v131[0];
            goto LABEL_30;
          }
        }

        else
        {
          v22 = *v11;
          v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v23)
          {
            v15 = v23(v22, @"assetProperty_HLSMetadata", &type[4], type, 0);
            if (v15)
            {
              goto LABEL_28;
            }

            v15 = *type;
            if (*type)
            {
              goto LABEL_28;
            }

            if (*&type[4] != 2)
            {
              v131[0] = 0;
              v15 = -15853;
              goto LABEL_29;
            }

            FigAssetGetCMBaseObject();
            v25 = v24;
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v26)
            {
              v15 = v26(v25, @"assetProperty_HLSMetadata", v9, &theArray);
              if (!v15)
              {
                if (!theArray)
                {
                  goto LABEL_79;
                }

                goto LABEL_11;
              }

              goto LABEL_28;
            }
          }
        }

        v15 = -12782;
        goto LABEL_28;
      }

      if (!v8[308])
      {
        goto LABEL_58;
      }

      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
      v5 = v118;
      v21 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = 0;
      v8 = &dword_1EAF17000;
LABEL_31:
      if (theArray)
      {
        CFRelease(theArray);
      }

      if (v7)
      {
        v54 = v117;
        if (*(v5 + 64) || !FigCFErrorIsEqualToOSStatus(v7, @"CoreMediaErrorDomain", -12785))
        {
          vdms_RTCReportingUpdatePayloadTransferError(a1, v7);
          goto LABEL_149;
        }

        if (v8[308])
        {
          LODWORD(theArray) = 0;
          type[4] = OS_LOG_TYPE_DEFAULT;
          v74 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v75 = theArray;
          v76 = type[4];
          if (os_log_type_enabled(v74, type[4]))
          {
            v77 = v75;
          }

          else
          {
            v77 = v75 & 0xFFFFFFFE;
          }

          if (v77)
          {
            v78 = *(CMBaseObjectGetDerivedStorage() + 8);
            v121 = 136315650;
            v122 = "vdms_reevaluateProcessingStateAndNotify";
            v123 = 2048;
            v124 = a1;
            v125 = 2114;
            v126 = v78;
            LODWORD(v116) = 32;
            _os_log_send_and_compose_impl(v77, 0, v131, 128, &dword_1962D5000, v74, v76, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Asset's pump invalidated. Transferring a new pump", &v121, v116);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v5 = v118;
          v8 = &dword_1EAF17000;
        }

        FigRetainProxyRetain();
        v91 = *v5;
        v92 = *(v5 + 72);
        v93 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v93 && !v93(v91, vdms_pumpTransferCallback, v92))
        {
          v99 = 2;
        }

        else
        {
          if (v8[308])
          {
            LODWORD(theArray) = 0;
            type[4] = OS_LOG_TYPE_DEFAULT;
            v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v95 = theArray;
            v96 = type[4];
            if (os_log_type_enabled(v94, type[4]))
            {
              v97 = v95;
            }

            else
            {
              v97 = v95 & 0xFFFFFFFE;
            }

            if (v97)
            {
              v98 = *(CMBaseObjectGetDerivedStorage() + 8);
              v121 = 136315650;
              v122 = "vdms_reevaluateProcessingStateAndNotify";
              v123 = 2048;
              v124 = a1;
              v125 = 2114;
              v126 = v98;
              LODWORD(v116) = 32;
              _os_log_send_and_compose_impl(v97, 0, v131, 128, &dword_1962D5000, v94, v96, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]: Bytepump transfer failed", &v121, v116);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v5 = v118;
            v8 = &dword_1EAF17000;
          }

          FigRetainProxyRelease();
LABEL_149:
          v99 = 7;
        }

LABEL_153:
        *(v5 + 16) = v99;
        goto LABEL_81;
      }

      if (v21)
      {
LABEL_79:
        v7 = 0;
        *(v5 + 16) = 6;
        goto LABEL_80;
      }

      if (v8[308])
      {
        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v28 = theArray;
        v29 = type[4];
        if (os_log_type_enabled(v27, type[4]))
        {
          v30 = v28;
        }

        else
        {
          v30 = v28 & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = *(CMBaseObjectGetDerivedStorage() + 8);
          v121 = 136315650;
          v122 = "vdms_reevaluateProcessingStateAndNotify";
          v123 = 2048;
          v124 = a1;
          v125 = 2114;
          v126 = v31;
          LODWORD(v116) = 32;
          _os_log_send_and_compose_impl(v30, 0, v131, 128, &dword_1962D5000, v27, v29, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Asset contains venue description", &v121, v116);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = &dword_1EAF17000;
      }

      updated = vdms_updateResourcesAndTransferMetadata(a1);
      if (updated)
      {
        v33 = updated;
        v131[0] = 0;
        FigCreateErrorForOSStatus(updated, v131);
        v7 = v131[0];
        if (v8[308])
        {
          v34 = v9;
          LODWORD(theArray) = 0;
          type[4] = OS_LOG_TYPE_DEFAULT;
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v36 = theArray;
          v37 = type[4];
          if (os_log_type_enabled(v35, type[4]))
          {
            v38 = v36;
          }

          else
          {
            v38 = v36 & 0xFFFFFFFE;
          }

          if (v38)
          {
            v39 = *(CMBaseObjectGetDerivedStorage() + 8);
            v121 = 136315906;
            v122 = "vdms_reevaluateProcessingStateAndNotify";
            v123 = 2048;
            v124 = a1;
            v125 = 2114;
            v126 = v39;
            v127 = 1024;
            v128 = v33;
            LODWORD(v116) = 38;
            _os_log_send_and_compose_impl(v38, 0, v131, 128, &dword_1962D5000, v35, v37, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]: updateResourcesAndTransferMetadata failed %d", &v121, v116);
          }

          v9 = v34;
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          i = 7;
          v5 = v118;
          v8 = &dword_1EAF17000;
        }

        else
        {
          i = 7;
        }
      }

      else
      {
        v7 = 0;
        i = 5;
      }
    }

    if (i <= 4)
    {
      if (i == 1)
      {
        type[4] = OS_LOG_TYPE_DEFAULT;
        v48 = *v5;
        v49 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v49)
        {
          v50 = v49(v48, @"assetProperty_HLSMetadata", &type[4]);
          if (!v50)
          {
            if (type[4])
            {
              *(v5 + 16) = 4;
              continue;
            }

            goto LABEL_80;
          }

          v110 = v50;
        }

        else
        {
          v110 = -12782;
        }

        v131[0] = 0;
        FigCreateErrorForOSStatus(v110, v131);
        v7 = v131[0];
        vdms_RTCReportingUpdatePayloadTransferError(a1, v131[0]);
        v54 = v117;
        if (!v8[308])
        {
          goto LABEL_149;
        }

        LODWORD(theArray) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v112 = theArray;
        v113 = type[0];
        if (os_log_type_enabled(v111, type[0]))
        {
          v114 = v112;
        }

        else
        {
          v114 = v112 & 0xFFFFFFFE;
        }

        if (v114)
        {
          v115 = *(CMBaseObjectGetDerivedStorage() + 8);
          v121 = 136315906;
          v122 = "vdms_reevaluateProcessingStateAndNotify";
          v123 = 2048;
          v124 = a1;
          v125 = 2114;
          v126 = v115;
          v127 = 1024;
          v128 = v110;
          LODWORD(v116) = 38;
          _os_log_send_and_compose_impl(v114, 0, v131, 128, &dword_1962D5000, v111, v113, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Asset load failed: %d", &v121, v116);
        }

        goto LABEL_167;
      }

      if (i == 3)
      {
        if (*(v5 + 64))
        {
          theArray = 0;
          if (v8[308])
          {
            v42 = v9;
            *&type[4] = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v44 = *&type[4];
            v45 = type[0];
            if (os_log_type_enabled(v43, type[0]))
            {
              v46 = v44;
            }

            else
            {
              v46 = v44 & 0xFFFFFFFE;
            }

            if (v46)
            {
              v47 = *(CMBaseObjectGetDerivedStorage() + 8);
              v121 = 136315650;
              v122 = "vdms_reevaluateProcessingStateAndNotify";
              v123 = 2048;
              v124 = a1;
              v125 = 2114;
              v126 = v47;
              LODWORD(v116) = 32;
              _os_log_send_and_compose_impl(v46, 0, v131, 128, &dword_1962D5000, v43, v45, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Copying metadata from pump", &v121, v116);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v9 = v42;
            v5 = v118;
            v8 = &dword_1EAF17000;
          }

          FigSimpleMutexUnlock();
          FigBytePumpGetFigBaseObject();
          v52 = v51;
          v53 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v53)
          {
            v53(v52, @"FBSP_Metadata", v9, &theArray);
          }

          FigSimpleMutexLock();
          *(v5 + 16) = 4;
          if (theArray)
          {
            CFRelease(theArray);
          }

          continue;
        }

        v54 = v117;
        if (!v8[308])
        {
          goto LABEL_149;
        }

        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v101 = theArray;
        v102 = type[4];
        if (os_log_type_enabled(v100, type[4]))
        {
          v103 = v101;
        }

        else
        {
          v103 = v101 & 0xFFFFFFFE;
        }

        if (v103)
        {
          v104 = *(CMBaseObjectGetDerivedStorage() + 8);
          v121 = 136315650;
          v122 = "vdms_reevaluateProcessingStateAndNotify";
          v123 = 2048;
          v124 = a1;
          v125 = 2114;
          v126 = v104;
          LODWORD(v116) = 32;
          _os_log_send_and_compose_impl(v103, 0, v131, 128, &dword_1962D5000, v100, v102, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]: Transferred pump is NULL", &v121, v116);
        }

LABEL_167:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v118;
        v8 = &dword_1EAF17000;
        goto LABEL_149;
      }

LABEL_80:
      v54 = v117;
      goto LABEL_81;
    }

    break;
  }

  if (i == 6)
  {
    if (vdms_getAllDataChannelResourceProcessingStatus(a1) == 1)
    {
      v54 = v117;
      if (v8[308])
      {
        LODWORD(theArray) = 0;
        type[4] = OS_LOG_TYPE_DEFAULT;
        v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v70 = theArray;
        v71 = type[4];
        if (os_log_type_enabled(v69, type[4]))
        {
          v72 = v70;
        }

        else
        {
          v72 = v70 & 0xFFFFFFFE;
        }

        if (v72)
        {
          v73 = *(CMBaseObjectGetDerivedStorage() + 8);
          v121 = 136315650;
          v122 = "vdms_reevaluateProcessingStateAndNotify";
          v123 = 2048;
          v124 = a1;
          v125 = 2114;
          v126 = v73;
          LODWORD(v116) = 32;
          _os_log_send_and_compose_impl(v72, 0, v131, 128, &dword_1962D5000, v69, v71, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Transferring data", &v121, v116);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v5 = v118;
        v8 = &dword_1EAF17000;
      }

      v99 = 5;
      goto LABEL_153;
    }

    goto LABEL_80;
  }

  if (i != 5)
  {
    goto LABEL_80;
  }

  vdms_updateResourcesAndTransferMetadata(a1);
  AllDataChannelResourceProcessingStatus = vdms_getAllDataChannelResourceProcessingStatus(a1);
  if (AllDataChannelResourceProcessingStatus == 2)
  {
    v54 = v117;
    if (v8[308])
    {
      LODWORD(theArray) = 0;
      type[4] = OS_LOG_TYPE_DEFAULT;
      v105 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v106 = theArray;
      v107 = type[4];
      if (os_log_type_enabled(v105, type[4]))
      {
        v108 = v106;
      }

      else
      {
        v108 = v106 & 0xFFFFFFFE;
      }

      if (v108)
      {
        v109 = *(CMBaseObjectGetDerivedStorage() + 8);
        v121 = 136315650;
        v122 = "vdms_reevaluateProcessingStateAndNotify";
        v123 = 2048;
        v124 = a1;
        v125 = 2114;
        v126 = v109;
        LODWORD(v116) = 32;
        _os_log_send_and_compose_impl(v108, 0, v131, 128, &dword_1962D5000, v105, v107, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  All FVT processing complete", &v121, v116);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v5 = v118;
      v8 = &dword_1EAF17000;
    }

    v99 = 6;
    goto LABEL_153;
  }

  v54 = v117;
  if (AllDataChannelResourceProcessingStatus == 3)
  {
    v131[0] = 0;
    FigCreateErrorForOSStatus(-15856, v131);
    v7 = v131[0];
    vdms_RTCReportingUpdatePayloadTransferError(a1, v131[0]);
    if (v8[308])
    {
      LODWORD(theArray) = 0;
      type[4] = OS_LOG_TYPE_DEFAULT;
      v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v87 = theArray;
      v88 = type[4];
      if (os_log_type_enabled(v86, type[4]))
      {
        v89 = v87;
      }

      else
      {
        v89 = v87 & 0xFFFFFFFE;
      }

      if (v89)
      {
        v90 = *(CMBaseObjectGetDerivedStorage() + 8);
        v121 = 136315906;
        v122 = "vdms_reevaluateProcessingStateAndNotify";
        v123 = 2048;
        v124 = a1;
        v125 = 2114;
        v126 = v90;
        v127 = 1024;
        v128 = -15856;
        LODWORD(v116) = 38;
        _os_log_send_and_compose_impl(v89, 0, v131, 128, &dword_1962D5000, v86, v88, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  Static metadata processing failed: %d", &v121, v116);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v54 = v117;
      v8 = &dword_1EAF17000;
    }

    v99 = 7;
    v5 = v118;
    goto LABEL_153;
  }

LABEL_81:
  if (v8[308])
  {
    LODWORD(theArray) = 0;
    type[4] = OS_LOG_TYPE_DEFAULT;
    v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v56 = theArray;
    v57 = type[4];
    if (os_log_type_enabled(v55, type[4]))
    {
      v58 = v56;
    }

    else
    {
      v58 = v56 & 0xFFFFFFFE;
    }

    if (v58)
    {
      v59 = *(CMBaseObjectGetDerivedStorage() + 8);
      v60 = *(v118 + 16);
      v121 = 136316162;
      v122 = "vdms_reevaluateProcessingStateAndNotify";
      v123 = 2048;
      v124 = a1;
      v125 = 2114;
      v126 = v59;
      v127 = 1024;
      v128 = v54;
      v129 = 1024;
      v130 = v60;
      LODWORD(v116) = 44;
      _os_log_send_and_compose_impl(v58, 0, v131, 128, &dword_1962D5000, v55, v57, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]: State transition old (%d) new (%d)", &v121, v116);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = v118;
    v8 = &dword_1EAF17000;
  }

  v61 = *(v5 + 16);
  if (v54 == v61 || (v54 != 7 ? (v62 = v54 == 6) : (v62 = 2), v61 != 7 ? (v63 = v61 == 6) : (v63 = 2), v63 == v62))
  {
LABEL_126:
    if (!v7)
    {
      return;
    }

    goto LABEL_127;
  }

  if (v8[308])
  {
    LODWORD(theArray) = 0;
    type[4] = OS_LOG_TYPE_DEFAULT;
    v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v65 = theArray;
    v66 = type[4];
    if (os_log_type_enabled(v64, type[4]))
    {
      v67 = v65;
    }

    else
    {
      v67 = v65 & 0xFFFFFFFE;
    }

    if (v67)
    {
      v68 = *(CMBaseObjectGetDerivedStorage() + 8);
      v121 = 136316162;
      v122 = "vdms_postProcessingStateNotificationIfNeeded";
      v123 = 2048;
      v124 = a1;
      v125 = 2114;
      v126 = v68;
      v127 = 1024;
      v128 = v62;
      v129 = 1024;
      v130 = v63;
      LODWORD(v116) = 44;
      _os_log_send_and_compose_impl(v67, 0, v131, 128, &dword_1962D5000, v64, v66, "<<<< FigVenueDescriptionMetadataSupplier >>>> %s: [%p|%{public}@]:  changing processing state from %d to %d", &v121, v116);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  Mutable = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v80 = Mutable;
    FigCFDictionarySetInt32();
    FigCFDictionarySetValue();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (v61 == 6)
    {
      v81 = CMBaseObjectGetDerivedStorage();
      if (a1)
      {
        v82 = v81;
        if (*(v81 + 80))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v84 = CFDateCreate(v9, Current);
          if (v84)
          {
            vdms_reevaluateProcessingStateAndNotify_cold_1(v82, v84);
          }

          else
          {
            vdms_reevaluateProcessingStateAndNotify_cold_2();
          }
        }
      }

      else
      {
        vdms_reevaluateProcessingStateAndNotify_cold_3(v81);
      }
    }

    CFRelease(v80);
    goto LABEL_126;
  }

  vdms_reevaluateProcessingStateAndNotify_cold_4();
  if (v7)
  {
LABEL_127:
    CFRelease(v7);
  }
}