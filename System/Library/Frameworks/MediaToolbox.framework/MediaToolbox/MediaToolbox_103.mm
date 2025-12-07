uint64_t ckb_destroyGroup(const void *a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_147();
    v5 = OUTLINED_FUNCTION_104_2();
    v13 = OUTLINED_FUNCTION_126(v5, v6, v7, v8, v9, v10, v11, v12, v36, v38, v40, *v42, v42[2], v42[3], v42[4]);
    v21 = OUTLINED_FUNCTION_19_4(v13, v14, v15, v16, v17, v18, v19, v20, v37, v39, v41, v43, v44, v45, v46);
    if (OUTLINED_FUNCTION_115_1(v21))
    {
      OUTLINED_FUNCTION_50_1();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v22, v23, v24, v25, v26, v27, v2, v28);
      OUTLINED_FUNCTION_612();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v29, v30, v31, v32, v33);
  }

  v34 = ckb_destroyGroupWithMutex(a1, a2);
  FigSimpleMutexUnlock();
  return v34;
}

uint64_t ckb_copyAuthorizationToken(const void *a1, uint64_t a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = 0;
  cf = a1;
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v35 = DerivedStorage;
  FigSimpleMutexLock();
  if (dword_1EAF16CF0)
  {
    OUTLINED_FUNCTION_4_24();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_28_1(v8))
    {
      v9 = *(DerivedStorage + 184);
      v39 = 136315650;
      v40 = "ckb_copyAuthorizationToken";
      v41 = 2114;
      v42 = v9;
      v43 = 2082;
      v44 = "ckb_copyAuthorizationToken";
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_23();
      _os_log_send_and_compose_impl(v10, v11, v12, v13, v14, v15, type, v16);
      OUTLINED_FUNCTION_408();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v17, v18, v19, v20, v21);
  }

  if (!a2 || !a3)
  {
    OUTLINED_FUNCTION_62_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl() && *(CMBaseObjectGetDerivedStorage() + 192))
  {
    v22 = ckb_replaceBossStorageAndCopyUpdatedBossWhenBossStaleWithBossMutex(a1, &cf, &v35);
    if (!v22)
    {
      v23 = 1;
      goto LABEL_12;
    }

LABEL_30:
    v31 = v22;
    v23 = 0;
    goto LABEL_22;
  }

  v23 = 0;
LABEL_12:
  v24 = OUTLINED_FUNCTION_184();
  ExistingKeyIfAnyWithBossMutex = ckb_getExistingKeyIfAnyWithBossMutex(v24, v25, 3, 1, v26, v27);
  if (ExistingKeyIfAnyWithBossMutex)
  {
LABEL_32:
    v31 = ExistingKeyIfAnyWithBossMutex;
    goto LABEL_22;
  }

  if (!v36)
  {
    v31 = 0;
    *a3 = 0;
    goto LABEL_22;
  }

  if (*(v36 + 32) != 2 || !*(v36 + 24) || (v29 = *(v36 + 16)) == 0 || FigContentKeySpecifierGetKeySystem(v29) != 3)
  {
    OUTLINED_FUNCTION_62_1();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_32;
  }

  v30 = *(v36 + 56);
  if (v30)
  {
    v30 = CFRetain(v30);
  }

  v31 = 0;
  *a3 = v30;
LABEL_22:
  v32 = _os_feature_enabled_impl();
  if (v23 && v32 && v31 && cf)
  {
    CFRelease(cf);
  }

  FigSimpleMutexUnlock();
  return v31;
}

uint64_t ckb_copyActiveBossIfCurrentBossIsStale(uint64_t a1, uint64_t *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *a2 = 0;
  FigSimpleMutexLock();
  if (*(DerivedStorage + 192))
  {
    if (!*(DerivedStorage + 160))
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { NULL != storage->clientManagedBossWeak } : Client requested an active boss but this stale boss does not have a weak reference to an active boss");
    }

    v4 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v4)
    {
      v5 = 0;
      *a2 = v4;
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v9, v10);
      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  FigSimpleMutexUnlock();
  return v5;
}

double ckr_addStatusCallbacks(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (!a2 || !a3 || !a4)
  {
    return result;
  }

  v7 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E00406EC85580uLL);
  if (v7)
  {
    v8 = v7;
    dispatch_retain(a4);
    v8[7] = a4;
    __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v8 + 3, a2);
    v8[2] = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v10 = *(a1 + 224);
    *v8 = 0;
    v8[1] = v10;
    *v10 = v8;
    *(a1 + 224) = v8;
    if (dword_1EAF16CF0)
    {
      OUTLINED_FUNCTION_147();
      v18 = OUTLINED_FUNCTION_126(qword_1EAF16CE8, v11, v12, v13, v14, v15, v16, v17, v40, v42, v44, *v46, v46[2], v46[3], v46[4]);
      v26 = OUTLINED_FUNCTION_116_0(v18, v19, v20, v21, v22, v23, v24, v25, v41, v43, v45, v47, v48, v49, v50);
      if (OUTLINED_FUNCTION_109_0(v26))
      {
        OUTLINED_FUNCTION_53_0();
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_456(v27, v28, v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      return OUTLINED_FUNCTION_524(v35, v36, v37, v38, v39);
    }
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double ckg_removeContentKey(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v6 = *(a1 + 40);
      Identifier = FigContentKeySpecifierGetIdentifier(a2);
      Value = CFDictionaryGetValue(v6, Identifier);
      if (Value)
      {
        v10 = Value;
        v34 = 0;
        v35 = 0;
        cf = 0;
        v11 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
        OUTLINED_FUNCTION_140_0();
        ckbutil_contentKeySpecifier_copyLoggingArguments(a2, v12, v13, &cf);
        if (dword_1EAF16CF0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_28();
          if (v2)
          {
            v15 = FigContentKeySpecifierGetIdentifier(a2);
            v36 = 136316930;
            v37 = "ckg_removeContentKey";
            v38 = 2114;
            v39 = a1;
            v40 = 2114;
            v41 = v10;
            v42 = 2112;
            v43 = v15;
            v44 = 2112;
            v45 = v35;
            v46 = 2112;
            v47 = v34;
            v48 = 2112;
            v49 = cf;
            v50 = 2112;
            v51 = v11;
            OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_23();
            _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v21, 0, v22);
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_417(v23, v24, v25, v26, v27);
        }

        if (v11)
        {
          CFRelease(v11);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v28 = *(a1 + 40);
        v29 = FigContentKeySpecifierGetIdentifier(a2);
        CFDictionaryRemoveValue(v28, v29);
      }

      return result;
    }

    v30 = qword_1EAF16CE8;
    v31 = v3;
    v32 = 2535;
  }

  else
  {
    v30 = qword_1EAF16CE8;
    v31 = v3;
    v32 = 2534;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, 4294948146, "(Fig)", v32, v31);
}

uint64_t ckg_ensureContentKeyForRequest(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v208 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_12_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
    v16 = v143;
LABEL_96:
    v8 = 0;
    goto LABEL_65;
  }

  if (a2[8])
  {
    v16 = 0;
    goto LABEL_96;
  }

  v8 = FigCFWeakReferenceHolderCopyReferencedObject();
  ContentKey = ckg_getContentKey(a1, a2[2], &cf);
  if (ContentKey)
  {
LABEL_134:
    v16 = ContentKey;
    goto LABEL_65;
  }

  if (!cf || (CFRetain(cf), (v10 = cf) == 0))
  {
    *v176 = a3;
    v178 = a4;
    v179 = v8;
    if (*(a1 + 32))
    {
      goto LABEL_13;
    }

    v11 = a2[3];
    v12 = *(a1 + 64);
    v13 = *(v11 + 28);
    if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 1 && FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 2)
    {
      goto LABEL_13;
    }

    v14 = FigCFWeakReferenceHolderCopyReferencedObject();
    v15 = v14;
    if (*(a1 + 32))
    {
      v16 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
      v16 = v172;
      if (!v15)
      {
LABEL_12:
        if (v16)
        {
          goto LABEL_93;
        }

LABEL_13:
        CFGetAllocator(a1);
        v18 = a2[2];
        v17 = a2[3];
        if (v17)
        {
          v19 = *(a1 + 32);
          v20 = *(a1 + 72);
          context = xmmword_1E747EF20;
          if (_MergedGlobals_28 != -1)
          {
            dispatch_once_f(&_MergedGlobals_28, &context, ckbutil_registerClass);
          }

          Instance = _CFRuntimeCreateInstance();
          if (!Instance || (!v18 ? (v22 = 0) : (v22 = CFRetain(v18)), (*(Instance + 16) = v22, *(Instance + 24) = CFRetain(v17), !v19) ? (v31 = 0) : (v31 = CFRetain(v19)), (*(Instance + 64) = v31, !v20) ? (v32 = 0) : (v32 = CFRetain(v20)), *(Instance + 48) = v32, v33 = FigCFWeakReferenceHolderCreateWithReferencedObject(), (*(Instance + 88) = v33) == 0))
          {
            OUTLINED_FUNCTION_12_9();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_38:
            v16 = v44;
            if (v44)
            {
              goto LABEL_39;
            }

            goto LABEL_99;
          }

          v34 = *MEMORY[0x1E695E480];
          v35 = ck_createLoggingIdentifier_sNextLoggingIdentifier++;
          v173 = "CK";
          v174 = v35;
          v36 = CFStringCreateWithFormat(v34, 0, @"%s/%llu");
          if (!v36)
          {
            FigUserCrashWithMessage("[💥 CKB assert]: { NULL != loggingIdentifier } : Failed to allocate a logging identifier for a new FigContentKey");
            *(Instance + 96) = 0;
            *(Instance + 104) = v178;
            OUTLINED_FUNCTION_12_9();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            goto LABEL_38;
          }

          *(Instance + 96) = v36;
          *(Instance + 104) = v178;
          v141 = ck_ensureCryptor(Instance, v37, v38, v39, v40, v41, v42, v43, "CK", v174, v175, v176[0], v176[1], HIBYTE(v176[1]), *&v176[2], v177, v179, v180, v181, cf, SWORD1(cf), SHIDWORD(cf), v183, v186, *v187, *&v187[2], *&v187[4], v188, v189, v190[0], *&v190[4], *&v190[12], *v191, *&v191[8], *&v191[16], *&v191[24], *&v191[32], v192, *v193, *&v193[8], *&v193[16], *&v193[24], v194, v195, *(&v195 + 1), context, *(&context + 1), v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
          if (!v141)
          {
            cf = Instance;
            v142 = Instance;
            Instance = 0;
            goto LABEL_100;
          }

          v16 = v141;
        }

        else
        {
          OUTLINED_FUNCTION_12_9();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
          v16 = v144;
          Instance = 0;
          if (!v144)
          {
LABEL_99:
            v142 = cf;
LABEL_100:
            v145 = v142[3];
            v146 = *(v145 + 32);
            if (v146)
            {
              if (v146 == 2)
              {
                v147 = @"On an AirPlay receiver";
              }

              else if (v146 == 1)
              {
                v147 = @"On the Lightning-to-HDMI display adapter";
              }

              else
              {
                FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : %s was unable to allocate a description for decrypt destination %d", "ckbutil_decryptDestination_getLoggingDescription", v146);
                v147 = 0;
                v145 = v142[3];
              }
            }

            else
            {
              v147 = @"On-Device";
            }

            v148 = *(v145 + 28);
            if (v148 >= 3)
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { NULL != descriptionOut } : %s was unable to allocate a description for playback destination %d", "ckbutil_playbackDestination_getLoggingDescription", v148);
              v149 = 0;
            }

            else
            {
              v149 = off_1E747EF30[v148];
            }

            *v187 = 0;
            v188 = 0;
            v186 = 0;
            OUTLINED_FUNCTION_77_2();
            ckbutil_contentKeySpecifier_copyLoggingArguments(v150, v151, v152, v153);
            if (dword_1EAF16CF0)
            {
              v185 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v155 = v185;
              v156 = type;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
              {
                v157 = v155;
              }

              else
              {
                v157 = v155 & 0xFFFFFFFE;
              }

              if (v157)
              {
                v158 = v142[12];
                Identifier = FigContentKeySpecifierGetIdentifier(v142[2]);
                v160 = @"[]";
                if (*(v142 + 104))
                {
                  v160 = Identifier;
                }

                v161 = v142[3];
                if (v161[24])
                {
                  v162 = "YES";
                }

                else
                {
                  v162 = "NO";
                }

                if (v161[64])
                {
                  v163 = "YES";
                }

                else
                {
                  v163 = "NO";
                }

                if (v161[65])
                {
                  v164 = "YES";
                }

                else
                {
                  v164 = "NO";
                }

                v189 = 136317954;
                *v190 = "ck_logKeyCreation";
                *&v190[8] = 2114;
                *&v190[10] = v158;
                *&v190[18] = 2048;
                *v191 = v142;
                *&v191[8] = 2112;
                *&v191[10] = v160;
                *&v191[18] = 2112;
                *&v191[20] = v188;
                *&v191[28] = 2112;
                *&v191[30] = *v187;
                *&v191[38] = 2112;
                v192 = v186;
                *v193 = 2080;
                *&v193[2] = v162;
                *&v193[10] = 2080;
                *&v193[12] = v163;
                *&v193[20] = 2080;
                *&v193[22] = v164;
                *&v193[30] = 2112;
                v194 = v147;
                LOWORD(v195) = 2112;
                *(&v195 + 2) = v149;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_23();
                _os_log_send_and_compose_impl(v165, v166, v167, v168, v169, v170, v156, v171);
              }

              OUTLINED_FUNCTION_7();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            if (v186)
            {
              CFRelease(v186);
            }

            v16 = 0;
            if (Instance)
            {
              goto LABEL_44;
            }

            goto LABEL_45;
          }
        }

LABEL_39:
        *v187 = 0;
        v188 = 0;
        v186 = 0;
        OUTLINED_FUNCTION_77_2();
        ckbutil_contentKeySpecifier_copyLoggingArguments(v18, v45, v46, v47);
        OUTLINED_FUNCTION_94_1();
        v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v49 = type;
        v50 = os_log_type_enabled(v48, type);
        v51 = OUTLINED_FUNCTION_16_1(v50);
        v52 = v186;
        if (v51)
        {
          OUTLINED_FUNCTION_48_3();
          v189 = v53;
          *&v190[10] = @"[No Key]";
          *&v190[18] = 1024;
          *v191 = v16;
          *&v191[4] = 2112;
          *&v191[6] = v54;
          *&v191[14] = 2112;
          *&v191[16] = v55;
          *&v191[24] = 2112;
          *&v191[26] = v52;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_44_0();
          _os_log_send_and_compose_impl(v56, v57, v58, v59, v60, v61, v49, v62);
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_238_0(v63, v64, v65, v66, v67);
        if (v52)
        {
          CFRelease(v52);
        }

        if (Instance)
        {
LABEL_44:
          CFRelease(Instance);
        }

LABEL_45:
        if (!v16)
        {
          v68 = a2[2];
          v69 = cf;
          v70 = FigContentKeySpecifierGetIdentifier(v68);
          if (v69)
          {
            v71 = v70;
            ckg_removeContentKey(a1, v68);
            v72 = *(a1 + 40);
            v73 = FigContentKeySpecifierGetIdentifier(v68);
            CFDictionarySetValue(v72, v73, v69);
            *v187 = 0;
            v188 = 0;
            v186 = 0;
            v74 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
            OUTLINED_FUNCTION_77_2();
            ckbutil_contentKeySpecifier_copyLoggingArguments(v68, v75, v76, v77);
            if (dword_1EAF16CF0)
            {
              OUTLINED_FUNCTION_94_1();
              v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v79 = type;
              v80 = os_log_type_enabled(v78, type);
              if (OUTLINED_FUNCTION_28_1(v80))
              {
                v189 = 136317186;
                *v190 = "ckg_setContentKey";
                *&v190[8] = 2114;
                OUTLINED_FUNCTION_36_3();
                *v191 = "PARENTS";
                *&v191[8] = v81;
                *&v191[10] = v82;
                OUTLINED_FUNCTION_109_1();
                *&v191[20] = v71;
                *&v191[28] = v83;
                *&v191[30] = v84;
                *&v191[38] = v83;
                v192 = v85;
                *v193 = v83;
                *&v193[2] = v86;
                *&v193[10] = v83;
                *&v193[12] = v74;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_44_0();
                _os_log_send_and_compose_impl(v87, v88, v89, v90, v91, v92, v79, v93);
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_417(v94, v95, v96, v97, v98);
            }

            if (v74)
            {
              CFRelease(v74);
            }

            v8 = v179;
            if (v186)
            {
              CFRelease(v186);
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_9();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
            v8 = v179;
            if (ContentKey)
            {
              goto LABEL_134;
            }
          }

          v10 = cf;
          goto LABEL_56;
        }

LABEL_93:
        v8 = v179;
        goto LABEL_65;
      }

LABEL_11:
      CFRelease(v15);
      goto LABEL_12;
    }

    v25 = Mutable;
    v26 = *MEMORY[0x1E695E4C0];
    v27 = *MEMORY[0x1E695E4D0];
    if (v13 == 1)
    {
      v28 = *MEMORY[0x1E695E4C0];
    }

    else
    {
      v28 = *MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"ExternalProtectionMonitorPerCryptor", v28);
    if (v12)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    CFDictionarySetValue(v25, @"RequiresReencryptionContext", v29);
    if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) == 1)
    {
      v30 = kFigCPEProtectionScheme_PKD;
    }

    else
    {
      if (FigContentKeySpecifierGetKeySystem(*(v11 + 16)) != 2)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
        goto LABEL_84;
      }

      v30 = kFigCPEProtectionScheme_BasicAES;
    }

    v118 = *v30;
    v119 = CFGetAllocator(a1);
    v120 = FigCPEProtectorCreateForScheme(v119, v118, v25, a1 + 32);
    if (!v120)
    {
      if (*(v11 + 28) != 1)
      {
        goto LABEL_77;
      }

      v121 = *(v11 + 40);
      if (!v121)
      {
        goto LABEL_77;
      }

      v122 = *(a1 + 32);
      v123 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v123)
      {
        v16 = 4294954514;
        goto LABEL_91;
      }

      v120 = v123(v122, @"NeroTransport", v121);
      if (!v120)
      {
LABEL_77:
        KeySystem = FigContentKeySpecifierGetKeySystem(*(v11 + 16));
        LoggingDescription = ckbutil_keySystem_getLoggingDescription(KeySystem);
        v16 = ckbutil_keyGroupID_copyLoggingDescription(*(a1 + 16));
        if (dword_1EAF16CF0)
        {
          v175 = LoggingDescription;
          LODWORD(v188) = 0;
          v187[0] = OS_LOG_TYPE_DEFAULT;
          v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v127 = v188;
          v128 = v187[0];
          if (os_log_type_enabled(v126, v187[0]))
          {
            v129 = v127;
          }

          else
          {
            v129 = v127 & 0xFFFFFFFE;
          }

          if (v129)
          {
            v189 = 136317186;
            *v190 = "ckg_ensureProtector";
            *&v190[8] = 2114;
            OUTLINED_FUNCTION_36_3();
            *v191 = "PARENTS";
            *&v191[8] = v130;
            *&v191[10] = v131;
            OUTLINED_FUNCTION_109_1();
            *&v191[20] = v175;
            *&v191[28] = 2080;
            *&v191[30] = v132;
            *&v191[38] = 2080;
            v192 = v133;
            *v193 = v134;
            *&v193[2] = v25;
            *&v193[10] = v134;
            *&v193[12] = v16;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_108();
            _os_log_send_and_compose_impl(v135, v136, v137, v138, v139, v126, v128, v140);
          }

          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v16)
        {
          CFRelease(v16);
          v16 = 0;
        }

LABEL_91:
        CFRelease(v25);
        if (!v15)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_84:
    v16 = v120;
    goto LABEL_91;
  }

LABEL_56:
  if (a2[8])
  {
    OUTLINED_FUNCTION_12_9();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v173, v174, v175);
    goto LABEL_134;
  }

  if (v10)
  {
    v99 = CFRetain(v10);
  }

  else
  {
    v99 = 0;
  }

  a2[8] = v99;
  if (dword_1EAF16CF0)
  {
    LODWORD(v188) = 0;
    v187[0] = OS_LOG_TYPE_DEFAULT;
    v100 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v101 = v187[0];
    v102 = os_log_type_enabled(v100, v187[0]);
    if (OUTLINED_FUNCTION_109_0(v102))
    {
      v189 = 136315906;
      *v190 = "ckr_setContentKey";
      *&v190[8] = 2114;
      OUTLINED_FUNCTION_36_3();
      *v191 = "MATCHES";
      *&v191[8] = v103;
      *&v191[10] = v104;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_44_0();
      _os_log_send_and_compose_impl(v105, v106, v107, v108, v109, v110, v101, v111);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v112, v113, v114, v115, v116);
  }

  v16 = 0;
LABEL_65:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v16;
}

uint64_t ck_removeListenersOnCryptor(uint64_t result)
{
  if (*(result + 72))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_56_3();
    FigNotificationCenterRemoveWeakListener();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_55_4();

    return FigNotificationCenterRemoveWeakListener();
  }

  return result;
}

double ckr_cancelAndReleaseRequestTimer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 208);
    v1 = (a1 + 208);
    if (v2)
    {
      ckbutil_cancelAndReleaseTimer(v1);
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        v11 = OUTLINED_FUNCTION_126(qword_1EAF16CE8, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, *v39, v39[2], v39[3], v39[4]);
        v19 = OUTLINED_FUNCTION_180_0(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v41, v42, v43);
        if (OUTLINED_FUNCTION_124_0(v19))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_128_0(v20, v21, v22, v23, v24, v25, v26, v27);
        }

        OUTLINED_FUNCTION_7();
        return OUTLINED_FUNCTION_345_0(v28, v29, v30, v31, v32);
      }
    }
  }

  return result;
}

void ck_finalize(void *a1)
{
  ck_cancelAndReleaseRenewalTimer(a1);
  ck_removeListenersOnCryptor(a1);
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
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

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[12];
  if (v10)
  {

    CFRelease(v10);
  }
}

double ck_cancelAndReleaseRenewalTimer(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    v1 = (a1 + 80);
    if (v2)
    {
      ckbutil_cancelAndReleaseTimer(v1);
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        v11 = OUTLINED_FUNCTION_126(qword_1EAF16CE8, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, *v39, v39[2], v39[3], v39[4]);
        v19 = OUTLINED_FUNCTION_180_0(v11, v12, v13, v14, v15, v16, v17, v18, v34, v36, v38, v40, v41, v42, v43);
        if (OUTLINED_FUNCTION_124_0(v19))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_108();
          OUTLINED_FUNCTION_128_0(v20, v21, v22, v23, v24, v25, v26, v27);
        }

        OUTLINED_FUNCTION_7();
        return OUTLINED_FUNCTION_345_0(v28, v29, v30, v31, v32);
      }
    }
  }

  return result;
}

NSObject *ckb_sendStatusCallbacksToAllClientsForRequestWithBossMutex(uint64_t a1, uint64_t a2)
{
  v148[16] = *MEMORY[0x1E69E9840];
  if (*(a2 + 258))
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { !request->sentStatusCallbacks } : ERROR: A request should not be sending its callback clients any status callbacks more than once.");
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = &unk_1EAF16000;
  if (a1)
  {
    v7 = DerivedStorage;
    v8 = &off_196E72000;
    if (!DerivedStorage[3])
    {
LABEL_20:
      FigGetAllocatorForMedia();
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      v48 = *(a2 + 216);
      if (!v48)
      {
LABEL_44:
        v52 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = 0;
        if (!MutableCopy)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      v49 = 1;
      *&v47 = 136316162;
      *v136 = v47;
      *&v47 = 136316418;
      *v132 = v47;
      v50 = &unk_1EAF16000;
      while (1)
      {
        v51 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (!v51)
        {
          goto LABEL_43;
        }

        v52 = v51;
        if (!v49)
        {
          FigCFDictionarySetBoolean();
        }

        v53 = *(a2 + 176);
        if (v53)
        {
          IsKeyCallbacksExistSentinel = ckbutil_errorIsKeyCallbacksExistSentinel(v53);
          v55 = v50[828];
          if (!IsKeyCallbacksExistSentinel)
          {
            if (v55)
            {
              v140[0] = 0;
              BYTE4(v139) = 0;
              v82 = v6;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v83 = v140[0];
              v8 = 0;
              if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
              {
                v84 = v83;
              }

              else
              {
                v84 = v83 & 0xFFFFFFFE;
              }

              if (v84)
              {
                v85 = *(a2 + 248);
                CFErrorGetCode(*(a2 + 176));
                *v144 = v132[0];
                *&v144[4] = "ckb_sendStatusCallbackForRequestWithBossMutex";
                *&v144[12] = 2114;
                *&v144[14] = v85;
                *&v144[22] = 2082;
                OUTLINED_FUNCTION_42_3();
                *&v147[2] = v86;
                *&v147[4] = v87;
                *&v147[12] = 2112;
                *&v147[14] = v52;
                OUTLINED_FUNCTION_62();
                OUTLINED_FUNCTION_108();
                _os_log_send_and_compose_impl(v88, v89, v90, v91, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, 0, " %s: ☎️ [%{public}@ =[CALLBACK]=> %{public}s %p]: Sending request FAILED callback (error = %ld) to this interested client: %@");
              }

              v6 = v82;
              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_238_0(v97, v98, v99, v100, v101);
              v50 = &unk_1EAF16000;
            }

            goto LABEL_41;
          }

          if (v55)
          {
            OUTLINED_FUNCTION_45_4();
            v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v64 = OUTLINED_FUNCTION_123_2(v56, v57, v58, v59, v60, v61, v62, v63, v127, v129, v132[0], v132[1], v136[0], v136[1], v138, v139, BYTE4(v139), v140[0]);
            if (OUTLINED_FUNCTION_16_1(v64))
            {
              *v144 = v136[0];
              OUTLINED_FUNCTION_48_3();
              OUTLINED_FUNCTION_36_3();
              OUTLINED_FUNCTION_42_3();
              OUTLINED_FUNCTION_109_1();
              *&v147[4] = v52;
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_20_3();
              _os_log_send_and_compose_impl(v65, v66, v67, v68, &dword_1962D5000, v8, os_log_and_send_and_compose_flags_and_os_log_type, " %s: ☎️ [%{public}@ =[CALLBACK]=> %{public}s %p]: Request was SKIPPED, sending callback to this interested client: %@");
            }

LABEL_39:
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0(v92, v93, v94, v95, v96);
          }
        }

        else if (v50[828])
        {
          OUTLINED_FUNCTION_45_4();
          v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v77 = OUTLINED_FUNCTION_123_2(v69, v70, v71, v72, v73, v74, v75, v76, v127, v129, v132[0], v132[1], v136[0], v136[1], v138, v139, BYTE4(v139), v140[0]);
          if (OUTLINED_FUNCTION_16_1(v77))
          {
            *v144 = v136[0];
            OUTLINED_FUNCTION_48_3();
            OUTLINED_FUNCTION_36_3();
            OUTLINED_FUNCTION_42_3();
            OUTLINED_FUNCTION_109_1();
            *&v147[4] = v52;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_20_3();
            _os_log_send_and_compose_impl(v78, v79, v80, v81, &dword_1962D5000, v8, os_log_and_send_and_compose_flags_and_os_log_type, " %s: ☎️ [%{public}@ =[CALLBACK]=> %{public}s %p]: Sending request SUCCEEDED callback to this interested client: %@");
          }

          goto LABEL_39;
        }

LABEL_41:
        v102 = __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v148, v48 + 3);
        v109 = OUTLINED_FUNCTION_98_0(v102, v103, v104, v48[7], v105, v106, v107, v108, v127, v129, v132[0], v132[1], v136[0], v136[1], v138, v139, *v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, *v147, *&v147[8], *&v147[16], v148[0]);
        if (v109)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = v109;
          OUTLINED_FUNCTION_45_4();
          v111 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v112 = os_log_type_enabled(v111, BYTE4(v139));
          if (OUTLINED_FUNCTION_115_1(v112))
          {
            *v144 = 136315906;
            OUTLINED_FUNCTION_43_3();
            *&v144[22] = 2048;
            v145 = v52;
            LOWORD(v146) = 1024;
            *(&v146 + 2) = os_log_and_send_and_compose_flags_and_os_log_type;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_20_3();
            _os_log_send_and_compose_impl(v113, v114, v115, v116, v117, v111, BYTE4(v139), v118);
          }

          OUTLINED_FUNCTION_16();
          OUTLINED_FUNCTION_414(v119, v120, v121, v122, v123);
          if (!MutableCopy)
          {
LABEL_46:
            if (v52)
            {
              CFRelease(v52);
            }

            if (!os_log_and_send_and_compose_flags_and_os_log_type)
            {
LABEL_49:
              *(a2 + 258) = 1;
            }

            return os_log_and_send_and_compose_flags_and_os_log_type;
          }

LABEL_45:
          CFRelease(MutableCopy);
          goto LABEL_46;
        }

        CFRelease(v52);
        v49 = 0;
LABEL_43:
        v48 = *v48;
        if (!v48)
        {
          goto LABEL_44;
        }
      }
    }

    *v140 = 1;
    v141 = DerivedStorage[8];
    v142 = DerivedStorage[9];
    v143 = 0;
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    FigGetAllocatorForMedia();
    v10 = FigCFDictionaryCreateMutableCopy();
    if (v9)
    {
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_92_2();
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v12 = os_log_type_enabled(v11, BYTE3(v139));
        if (OUTLINED_FUNCTION_28_1(v12))
        {
          *v144 = 136316162;
          *&v144[4] = "ckb_sendApplicationStatusCallbackForRequestWithBossMutex";
          *&v144[12] = 2114;
          OUTLINED_FUNCTION_36_3();
          OUTLINED_FUNCTION_42_3();
          *&v147[2] = 2080;
          *&v147[4] = v13;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_20_3();
          _os_log_send_and_compose_impl(v14, v15, v16, v17, v18, v11, BYTE3(v139), v19);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_417(v20, v21, v22, v23, v24);
        v8 = &off_196E72000;
      }

      v25 = __copy_assignment_8_8_t0w8_pa0_16609_8_pa0_37959_16_pa0_51628_24(v148, v140);
      os_log_and_send_and_compose_flags_and_os_log_type = OUTLINED_FUNCTION_98_0(v25, v26, v27, v7[11], v28, v29, v30, v31, v127, v129, v131, v134, v135, v137, v138, v139, *v140, v141, v142, v143, *v144, *&v144[8], *&v144[16], v145, v146, *v147, *&v147[8], *&v147[16], v148[0]);
      if (os_log_and_send_and_compose_flags_and_os_log_type)
      {
        OUTLINED_FUNCTION_92_2();
        v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v33 = os_log_type_enabled(v32, BYTE3(v139));
        if (OUTLINED_FUNCTION_16_1(v33))
        {
          *v144 = 136315906;
          OUTLINED_FUNCTION_43_3();
          *&v144[22] = 2048;
          v145 = v9;
          LOWORD(v146) = 1024;
          *(&v146 + 2) = os_log_and_send_and_compose_flags_and_os_log_type;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl(v34, v35, v36, v37, v38, v39, BYTE3(v139), v40);
        }

        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_238_0(v41, v42, v43, v44, v45);
        if (v10)
        {
          goto LABEL_16;
        }

LABEL_17:
        if (v9)
        {
          CFRelease(v9);
        }

        if (os_log_and_send_and_compose_flags_and_os_log_type)
        {
          return os_log_and_send_and_compose_flags_and_os_log_type;
        }

        goto LABEL_20;
      }

      CFRelease(v9);
      v9 = 0;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v129, v131);
      os_log_and_send_and_compose_flags_and_os_log_type = v126;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    CFRelease(v10);
    goto LABEL_17;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v127, v129, v131);
  if (v124)
  {
    return v124;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v128, v130, v133);
  os_log_and_send_and_compose_flags_and_os_log_type = v125;
  if (!v125)
  {
    goto LABEL_49;
  }

  return os_log_and_send_and_compose_flags_and_os_log_type;
}

void ckb_completeProcessingRequestWithBossMutex(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  v6 = a3[25];
  if (v6 || (v6 = a3[23]) != 0 || (v6 = a3[24]) != 0)
  {
    v7 = CFRetain(v6);
    cf = v7;
  }

  else
  {
    FigCreateErrorForOSStatus(-19158, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a1, a2, a3, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ckb_httpReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, size_t a5, size_t a6, char a7, int a8)
{
  v129[16] = *MEMORY[0x1E69E9840];
  v118 = 0;
  if (ckb_copyBossFromRetainProxy(a3, &v118))
  {
    goto LABEL_61;
  }

  v115 = v8;
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { NULL != storage } : contentKeyBoss storage is NULL and should trigger a TTR. Crash as a consequence.");
  }

  FigSimpleMutexLock();
  v15 = v118;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v122 = 0;
  v123 = 0;
  HIDWORD(v121) = 0;
  v120 = 0;
  Value = CFDictionaryGetValue(*(DerivedStorage + 128), a2);
  if (!Value)
  {
    goto LABEL_66;
  }

  v18 = ckb_copyGroupAndRequestFromIDWithBossMutex(v15, Value, &v123, &v122);
  if (v18)
  {
    goto LABEL_9;
  }

  v18 = ckg_ensureContentKeyForRequest(v123, v122, v15, *(DerivedStorage + 152));
  if (v18)
  {
    goto LABEL_9;
  }

  if (a8)
  {
    v18 = FigCFHTTPCopyErrorCodeAndCommentForHTTPStatusCode(a8, &v121 + 1, &v120);
LABEL_9:
    a2 = v18;
    goto LABEL_37;
  }

  if (!a4)
  {
    if ((a7 & 2) == 0)
    {
LABEL_36:
      a2 = 0;
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  v26 = *(v122 + 14);
  if (!v26)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    v18 = OUTLINED_FUNCTION_121_0(AllocatorForMedia, v28, v29, v30, v31, v32, v33, v34, v109, v112, v8, v118, type, v120, v121, v122);
    if (v18)
    {
      goto LABEL_9;
    }

    v26 = *(v122 + 14);
  }

  appended = CMBlockBufferAppendBufferReference(v26, a4, a5, a6, 0);
  a2 = appended;
  if ((a7 & 2) != 0 && !appended)
  {
LABEL_18:
    if (*(v122 + 14))
    {
      FigCFDictionarySetValue();
      v36 = v122;
      v37 = *(v122 + 12);
      if (v37)
      {
        CFRelease(v37);
        v36 = v122;
        *(v122 + 12) = 0;
      }

      v36[26] = 0;
      CFDictionaryRemoveValue(*(DerivedStorage + 128), 0);
      if (dword_1EAF16CF0)
      {
        v45 = OUTLINED_FUNCTION_102_1(qword_1EAF16CE8, v38, v39, v40, v41, v42, v43, v44, v109, v112, v115, v118, type, SWORD2(type), SBYTE6(type), 0, v120, v121, v122, v123, 0);
        v53 = OUTLINED_FUNCTION_124_2(v45, v46, v47, v48, v49, v50, v51, v52, v110, v113, v116, v118, type, SWORD2(type), SBYTE6(type), HIBYTE(type), v120, v121, v122, v123, cf);
        if (OUTLINED_FUNCTION_115_1(v53))
        {
          OUTLINED_FUNCTION_75_2();
          LODWORD(blockBufferOut) = 136315906;
          OUTLINED_FUNCTION_3_21();
          v126 = @"HTTP";
          OUTLINED_FUNCTION_146();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl(v54, v55, v56, v57, v58, v59, a2, v60);
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v61, v62, v63, v64, v65);
      }

      v66 = v122;
      v129[0] = 0;
      cf = 0;
      blockBufferOut = 0;
      if (v122)
      {
        v67 = CFGetAllocator(v15);
        v68 = *(v66 + 14);
        v69 = FigGetAllocatorForMedia();
        DataLength = CMBlockBufferGetDataLength(*(v66 + 14));
        if (!CMBlockBufferCreateContiguous(v67, v68, v69, 0, 0, DataLength, 0, &blockBufferOut))
        {
          CFGetAllocator(v15);
          CMBlockBufferGetDataLength(blockBufferOut);
          if (!FigCreateCFDataWithBlockBufferNoCopy())
          {
            v71 = CFGetAllocator(v15);
            if (!FigContentKeyResponseParamsCreate(v71, 1, 0, 0, cf, v129))
            {
              ckb_processResponseInternalWithBossMutex(v15, *(v66 + 4), v129[0]);
            }
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_49_0();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v109, v112, v115);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v129[0])
      {
        CFRelease(v129[0]);
      }

      if (blockBufferOut)
      {
        CFRelease(blockBufferOut);
      }

      goto LABEL_36;
    }

LABEL_66:
    OUTLINED_FUNCTION_49_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_9;
  }

LABEL_37:
  if (!v122)
  {
    goto LABEL_49;
  }

  if (!HIDWORD(v121))
  {
    if (a2 && dword_1EAF16CF0)
    {
      v89 = OUTLINED_FUNCTION_102_1(qword_1EAF16CE8, v19, v20, v21, v22, v23, v24, v25, v109, v112, v115, v118, type, SWORD2(type), SBYTE6(type), 0, v120, v121, v122, v123, 0);
      v90 = HIBYTE(type);
      v91 = os_log_type_enabled(v89, HIBYTE(type));
      if (OUTLINED_FUNCTION_16_1(v91))
      {
        OUTLINED_FUNCTION_75_2();
        LODWORD(blockBufferOut) = 136316162;
        OUTLINED_FUNCTION_3_21();
        v126 = @"HTTP";
        v127 = 1024;
        LODWORD(v128) = a2;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl(v92, v93, v94, v95, v96, v97, v90, v98);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v104, v105, v106, v107, v108);
      if (!v15)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

LABEL_49:
    if (v15)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  if (dword_1EAF16CF0)
  {
    v72 = OUTLINED_FUNCTION_102_1(qword_1EAF16CE8, v19, v20, v21, v22, v23, v24, v25, v109, v112, v115, v118, type, SWORD2(type), SBYTE6(type), 0, v120, v121, v122, v123, 0);
    v80 = OUTLINED_FUNCTION_124_2(v72, v73, v74, v75, v76, v77, v78, v79, v111, v114, v117, v118, type, SWORD2(type), SBYTE6(type), HIBYTE(type), v120, v121, v122, v123, cf);
    if (OUTLINED_FUNCTION_115_1(v80))
    {
      OUTLINED_FUNCTION_75_2();
      LODWORD(blockBufferOut) = 136316162;
      OUTLINED_FUNCTION_66_2();
      v126 = @"HTTP";
      OUTLINED_FUNCTION_110_1();
      v128 = v81;
      OUTLINED_FUNCTION_146();
      OUTLINED_FUNCTION_36();
      _os_log_send_and_compose_impl(v82, v83, v84, v85, v86, v87, a2, v88);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v99, v100, v101, v102, v103);
    LODWORD(a2) = HIDWORD(v121);
    goto LABEL_49;
  }

  LODWORD(a2) = HIDWORD(v121);
  if (v15)
  {
LABEL_50:
    if (a2)
    {
      if (v122)
      {
        v129[0] = 0;
        FigCreateErrorForOSStatus(a2, v129);
        ckb_processErrorForRequestWithBossMutex(v15, v123, v122, v129[0]);
        if (v129[0])
        {
          CFRelease(v129[0]);
        }
      }
    }
  }

LABEL_54:
  if (v120)
  {
    CFRelease(v120);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (v123)
  {
    CFRelease(v123);
  }

  FigSimpleMutexUnlock();
LABEL_61:
  if (v118)
  {
    CFRelease(v118);
  }
}

uint64_t ckb_processResponseInternalWithBossMutex(uint64_t a1, const void *a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
    if (a3)
    {
      goto LABEL_3;
    }
  }

  FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when trying to process a response");
LABEL_3:
  cf[0] = 0;
  if (!a1)
  {
    FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
  }

  v6 = OUTLINED_FUNCTION_76_3();
  v9 = ckb_copyGroupAndRequestFromIDWithBossMutex(v6, v7, 0, v8);
  if (v9)
  {
    KeySystem = 0;
  }

  else
  {
    KeySystem = FigContentKeySpecifierGetKeySystem(*(cf[0] + 2));
  }

  if (!v9)
  {
    if (KeySystem != 1)
    {
      if (KeySystem != 3)
      {
        if (KeySystem != 2)
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { false } : Tried to processResponse for a key with invalid system %d", KeySystem);
          v9 = 0;
          goto LABEL_114;
        }

        OUTLINED_FUNCTION_99_1();
        if (a1)
        {
          if (a3)
          {
LABEL_13:
            v11 = OUTLINED_FUNCTION_76_3();
            v15 = ckb_copyGroupAndRequestFromIDWithBossMutex(v11, v12, v13, v14);
            if (v15)
            {
              goto LABEL_26;
            }

            v15 = OUTLINED_FUNCTION_118_1(v15, v16, v17, v18, v19, v20, v21, v22, v183, v184, v185, v186, v187, v188, *type, v190, *v191, *&v191[8], *&v191[16], v192, *v193, *&v193[8], *&v193[16], *&v193[24], *&v193[32], *&v193[40], *&v193[48], v194, cf[0]);
            if (v15)
            {
              goto LABEL_26;
            }

            if (!cf[0])
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
            }

            v23 = *(cf[0] + 8);
            if (!v23)
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: request formerly had a key set on it, but now does not. Setting a key on a request is specified as a one-way operation");
            }

            if (FigContentKeySpecifierGetKeySystem(*(v23 + 16)) != 2)
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { FigContentKeySpecifierGetKeySystem(key->keySpecifier) == kFigContentKeySystem_ClearKey } : Bug in CKB: Tried to do a clear-key processResponse against a non-clear-key");
            }

            v24 = *(v23 + 72);
            v25 = *(a3 + 40);
            v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v26)
            {
              v15 = v26(v24, *MEMORY[0x1E69610D8], v25);
              if (v15)
              {
LABEL_26:
                v9 = v15;
                goto LABEL_65;
              }

              v9 = *(a3 + 32);
              if (!v9)
              {
                goto LABEL_65;
              }

              v27 = *(v23 + 72);
              v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v28)
              {
                v15 = v28(v27, *MEMORY[0x1E69610C8], v9);
                goto LABEL_26;
              }
            }

            v9 = 4294954514;
LABEL_65:
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v43 = *v191;
            if (*v191)
            {
LABEL_68:
              CFRelease(v43);
            }

LABEL_114:
            v186 = 0;
            v187 = 0;
            if (a1)
            {
              if (a3)
              {
                goto LABEL_116;
              }
            }

            else
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
              if (a3)
              {
                goto LABEL_116;
              }
            }

            FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when finish processing a response");
LABEL_116:
            v60 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, &v187, &v186);
            if (v60)
            {
              v9 = v60;
            }

            else
            {
              Current = CFAbsoluteTimeGetCurrent();
              v69 = v186;
              *(v186 + 30) = Current;
              v70 = v69[8];
              if (!v9)
              {
                if (!v70)
                {
                  FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: request formerly had a key set on it, but now does not. Setting a key on a request is specified as a one-way operation");
                }

                v71 = *(v70 + 40);
                started = *(a3 + 24);
                *(v70 + 40) = started;
                if (started)
                {
                  started = CFRetain(started);
                }

                if (v71)
                {
                  CFRelease(v71);
                }

                if (*(*(v70 + 24) + 28) == 2)
                {
                  goto LABEL_149;
                }

                v73 = v186;
                v74 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040FFD3A10EuLL);
                if (!v74)
                {
                  OUTLINED_FUNCTION_51_3();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, v184, v185);
                  goto LABEL_149;
                }

                v75 = v74;
                *v74 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v75[1] = FigCFWeakReferenceHolderCreateWithReferencedObject();
                v76 = v73[17];
                if (v76)
                {
                  v76 = CFRetain(v76);
                }

                v75[2] = v76;
                v77 = v73[20];
                if (v77)
                {
                  v77 = CFRetain(v77);
                }

                v75[3] = v77;
                GlobalNetworkBufferingQueue = FigThreadGetGlobalNetworkBufferingQueue();
                if (GlobalNetworkBufferingQueue)
                {
                  if (!*(v70 + 40))
                  {
LABEL_148:
                    ckb_renewalTimerFinalizer(v75);
                    goto LABEL_149;
                  }

                  v79 = GlobalNetworkBufferingQueue;
                  v80 = ck_cancelAndReleaseRenewalTimer(v70);
                  v81 = MEMORY[0x19A8CCD90](*(v70 + 40), v80);
                  v82 = v81 - CFAbsoluteTimeGetCurrent();
                  if (v82 > 0.0)
                  {
                    started = ckbutil_createAndStartTimer(v82, v75, ckb_renewalTimerEventHandler, ckb_renewalTimerFinalizer, v79, (v70 + 80));
                    if (started)
                    {
LABEL_134:
                      v83 = started;
                      OUTLINED_FUNCTION_46_2();
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v85 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]);
                      if (OUTLINED_FUNCTION_71_0(v85))
                      {
                        v86 = *(v70 + 96);
                        *v191 = 136315650;
                        *&v191[4] = "ck_startRenewalTimer";
                        *&v191[12] = 2114;
                        *&v191[14] = v86;
                        *&v191[22] = 1024;
                        LODWORD(v192) = v83;
                        OUTLINED_FUNCTION_100();
                        OUTLINED_FUNCTION_20_3();
                        OUTLINED_FUNCTION_129_2(v87, v88, v89, v90, v91, v92, v93, v94);
                      }

                      OUTLINED_FUNCTION_16();
                      OUTLINED_FUNCTION_449(v108, v109, v110, v111, v112);
                      goto LABEL_148;
                    }

                    v95 = 0;
                    goto LABEL_139;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_51_3();
                  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, v184, v185);
                  if (started)
                  {
                    goto LABEL_134;
                  }

                  v82 = 0.0;
                }

                v95 = 1;
LABEL_139:
                if (dword_1EAF16CF0)
                {
                  OUTLINED_FUNCTION_46_2();
                  v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v97 = type[0];
                  v98 = os_log_type_enabled(v96, type[0]);
                  if (OUTLINED_FUNCTION_28_1(v98))
                  {
                    v99 = *(v70 + 96);
                    v100 = *(v70 + 40);
                    *v191 = 136315906;
                    *&v191[4] = "ck_startRenewalTimer";
                    *&v191[12] = 2114;
                    *&v191[14] = v99;
                    *&v191[22] = 2112;
                    v192 = v100;
                    *v193 = 2048;
                    *&v193[2] = v82;
                    OUTLINED_FUNCTION_100();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl(v101, v102, v103, v104, v105, v106, v97, v107);
                  }

                  OUTLINED_FUNCTION_7();
                  started = fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (v95)
                {
                  goto LABEL_148;
                }

LABEL_149:
                OUTLINED_FUNCTION_120_1(started, v61, v62, v63, v64, v65, v66, v67, v183, v184, v185, v186, v187, v188, *type, v190);
                v113 = FigContentKeySpecifierGetKeySystem(*(v70 + 16));
                LoggingDescription = ckbutil_keySystem_getLoggingDescription(v113);
                if (dword_1EAF16CF0)
                {
                  v115 = LoggingDescription;
                  OUTLINED_FUNCTION_89_2();
                  v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v117 = BYTE3(v188);
                  v118 = os_log_type_enabled(v116, BYTE3(v188));
                  if (OUTLINED_FUNCTION_28_1(v118))
                  {
                    *v191 = 136316930;
                    *&v191[4] = "ck_logProcessResponse";
                    *&v191[12] = 2114;
                    OUTLINED_FUNCTION_80_2();
                    v192 = v119;
                    *v193 = v120;
                    *&v193[2] = v121;
                    *&v193[10] = 2112;
                    *&v193[12] = v115;
                    *&v193[20] = 2112;
                    *&v193[22] = v122;
                    *&v193[30] = 2080;
                    *&v193[32] = v123;
                    *&v193[40] = 2112;
                    *&v193[42] = v124;
                    OUTLINED_FUNCTION_100();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl(v125, v126, v127, v128, v129, v130, v117, v131);
                  }

                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_417(v132, v133, v134, v135, v136);
                }

                v137 = *type;
                if (!*type)
                {
                  goto LABEL_155;
                }

                goto LABEL_154;
              }

              if (v70)
              {
                v139 = FigContentKeySpecifierGetKeySystem(*(v70 + 16));
                v140 = ckbutil_keySystem_getLoggingDescription(v139);
                OUTLINED_FUNCTION_120_1(v140, v141, v142, v143, v144, v145, v146, v147, v183, v184, v185, v186, v187, v188, *type, v190);
                OUTLINED_FUNCTION_89_2();
                v148 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v149 = os_log_type_enabled(v148, BYTE3(v188));
                v150 = OUTLINED_FUNCTION_71_0(v149);
                v151 = *type;
                if (v150)
                {
                  *v191 = 136316930;
                  *&v191[4] = "ck_logProcessResponseFailed";
                  *&v191[12] = 2114;
                  OUTLINED_FUNCTION_80_2();
                  v192 = v152;
                  *v193 = 1024;
                  *&v193[2] = v9;
                  *&v193[6] = 2112;
                  *&v193[8] = v140;
                  *&v193[16] = 2112;
                  *&v193[18] = v153;
                  *&v193[26] = 2080;
                  *&v193[28] = v154;
                  *&v193[36] = 2112;
                  *&v193[38] = v151;
                  OUTLINED_FUNCTION_100();
                  OUTLINED_FUNCTION_20_3();
                  OUTLINED_FUNCTION_129_2(v155, v156, v157, v158, v159, v160, v161, v162);
                }

                OUTLINED_FUNCTION_16();
                OUTLINED_FUNCTION_449(v178, v179, v180, v181, v182);
                if (!v151)
                {
                  goto LABEL_155;
                }

                v137 = v151;
LABEL_154:
                CFRelease(v137);
LABEL_155:
                ckb_transitionRequestToTerminalStateWithOSStatusWithBossMutex(a1, v187, v186, v9);
LABEL_156:
                if (v186)
                {
                  CFRelease(v186);
                }

                if (v187)
                {
                  CFRelease(v187);
                }

                return v9;
              }
            }

            OUTLINED_FUNCTION_46_2();
            v163 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v164 = type[0];
            v165 = os_log_type_enabled(v163, type[0]);
            if (OUTLINED_FUNCTION_124_0(v165))
            {
              *v191 = 136315650;
              *&v191[4] = "ckb_completeResponseProcessingWithBossMutex";
              *&v191[12] = 2114;
              OUTLINED_FUNCTION_80_2();
              v192 = a2;
              OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_44_0();
              _os_log_send_and_compose_impl(v166, v167, v168, v169, v170, v171, v164, v172);
            }

            OUTLINED_FUNCTION_16();
            OUTLINED_FUNCTION_345_0(v173, v174, v175, v176, v177);
            goto LABEL_156;
          }
        }

        else
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
          if (a3)
          {
            goto LABEL_13;
          }
        }

        FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when trying to process a response");
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_99_1();
      if (a1)
      {
        if (a3)
        {
LABEL_31:
          v29 = OUTLINED_FUNCTION_76_3();
          v33 = ckb_copyGroupAndRequestFromIDWithBossMutex(v29, v30, v31, v32);
          if (v33 || (v33 = OUTLINED_FUNCTION_118_1(v33, v34, v35, v36, v37, v38, v39, v40, v183, v184, v185, v186, v187, v188, *type, v190, *v191, *&v191[8], *&v191[16], v192, *v193, *&v193[8], *&v193[16], *&v193[24], *&v193[32], *&v193[40], *&v193[48], v194, cf[0]), v33))
          {
            v9 = v33;
          }

          else
          {
            if (!cf[0])
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
            }

            v41 = *(cf[0] + 8);
            if (!v41)
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: request formerly had a key set on it, but now does not. Setting a key on a request is specified as a one-way operation");
            }

            if (FigContentKeySpecifierGetKeySystem(*(v41 + 16)) != 3)
            {
              FigUserCrashWithMessage("[💥 CKB assert]: { FigContentKeySpecifierGetKeySystem(key->keySpecifier) == kFigContentKeySystem_AuthorizationToken } : Bug in CKB: Tried to set an authorization token using a key which is not an authorization token");
            }

            v9 = *(v41 + 56);
            v42 = *(a3 + 40);
            *(v41 + 56) = v42;
            if (v42)
            {
              CFRetain(v42);
            }

            if (v9)
            {
              CFRelease(v9);
              v9 = 0;
            }
          }

          if (*v191)
          {
            CFRelease(*v191);
          }

          v43 = cf[0];
          if (cf[0])
          {
            goto LABEL_68;
          }

          goto LABEL_114;
        }
      }

      else
      {
        FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
        if (a3)
        {
          goto LABEL_31;
        }
      }

      FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when trying to process a response");
      goto LABEL_31;
    }

    CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      if (a3)
      {
        goto LABEL_49;
      }
    }

    else
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
      if (a3)
      {
        goto LABEL_49;
      }
    }

    FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when trying to process a response");
LABEL_49:
    v44 = OUTLINED_FUNCTION_99_1();
    if (a1)
    {
      if (a3)
      {
LABEL_51:
        v45 = ckb_copyGroupAndRequestFromIDWithBossMutex(a1, a2, cf, v191);
        if (v45)
        {
          goto LABEL_175;
        }

        v45 = ckg_ensureContentKeyForRequest(cf[0], *v191, a1, *(v44 + 152));
        if (v45)
        {
          goto LABEL_175;
        }

        v46 = *v191;
        if (!*v191)
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { request != NULL } : Passed a NULL request from which to extract a FigContentKey");
        }

        v47 = *(v46 + 64);
        if (v47)
        {
          if (a3)
          {
LABEL_57:
            Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (Mutable)
            {
              if (FigContentKeySpecifierGetKeySystem(v47[2]) == 1 && *(v47[3] + 28) == 2)
              {
                FigCFDictionarySetValue();
              }

              goto LABEL_61;
            }

            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, v184, v185);
            if (!v45)
            {
LABEL_61:
              v49 = v47[9];
              if (v49)
              {
                v50 = CFRetain(v49);
              }

              else
              {
                v50 = 0;
              }

              v51 = *(a3 + 40);
              if (v51)
              {
                v52 = CFRetain(v51);
              }

              else
              {
                v52 = 0;
              }

              v53 = *(a3 + 16);
              if (v53 != 1)
              {
                if (v53 == 2)
                {
                  v54 = 0;
                  v9 = 0;
                  goto LABEL_89;
                }

                FigUserCrashWithMessage("[💥 CKB assert]: { false } : Bug in CKB: attempted to process response of invalid type %d", *(a3 + 16));
              }

              v9 = 0;
LABEL_88:
              v54 = 1;
LABEL_89:
              if (*v191)
              {
                CFRelease(*v191);
              }

              if (cf[0])
              {
                CFRelease(cf[0]);
              }

              if (v9)
              {
                goto LABEL_108;
              }

              FigSimpleMutexUnlock();
              if (v50)
              {
                if (Mutable)
                {
                  goto LABEL_96;
                }
              }

              else
              {
                FigUserCrashWithMessage("[💥 CKB assert]: { cryptor != NULL } : Bug in CKB: Attempted to processResponse against a NULL cryptor");
                if (Mutable)
                {
LABEL_96:
                  if (v52)
                  {
                    goto LABEL_97;
                  }

LABEL_144:
                  FigUserCrashWithMessage("[💥 CKB assert]: { keyResponse != NULL } : Bug in CKB: Attempted to processResponse without any key response!");
LABEL_97:
                  if (v54)
                  {
                    v55 = *(CMBaseObjectGetVTable() + 16);
                    if (*v55 >= 4uLL)
                    {
                      v56 = v55[12];
                      if (v56)
                      {
                        v57 = v56(v50, v52, Mutable);
LABEL_105:
                        v9 = v57;
LABEL_107:
                        FigSimpleMutexLock();
LABEL_108:
                        if (v52)
                        {
                          CFRelease(v52);
                        }

                        if (Mutable)
                        {
                          CFRelease(Mutable);
                        }

                        if (v50)
                        {
                          CFRelease(v50);
                        }

                        goto LABEL_114;
                      }
                    }
                  }

                  else
                  {
                    v58 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                    if (v58)
                    {
                      v57 = v58(v50, *MEMORY[0x1E6961138], *MEMORY[0x1E695E4D0]);
                      if (v57)
                      {
                        goto LABEL_105;
                      }

                      v59 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                      if (v59)
                      {
                        v57 = v59(v50, *MEMORY[0x1E69610F0], v52);
                        goto LABEL_105;
                      }
                    }
                  }

                  v9 = 4294954514;
                  goto LABEL_107;
                }
              }

              FigUserCrashWithMessage("[💥 CKB assert]: { cryptorKeyResponseOptions != NULL } : Bug in CKB: Attempted to processResponse with NULL keyResponseParams");
              if (v52)
              {
                goto LABEL_97;
              }

              goto LABEL_144;
            }

LABEL_175:
            v9 = v45;
            v50 = 0;
            Mutable = 0;
            v52 = 0;
            goto LABEL_88;
          }
        }

        else
        {
          FigUserCrashWithMessage("[💥 CKB assert]: { key != NULL } : Bug in CKB: request formerly had a key set on it, but now does not. Setting a key on a request is specified as a one-way operation");
          if (a3)
          {
            goto LABEL_57;
          }
        }

        FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: NULL keyResponseParams passed to this function");
        goto LABEL_57;
      }
    }

    else
    {
      FigUserCrashWithMessage("[💥 CKB assert]: { boss != NULL } : Bug in CKB: Passed a NULL boss to this function");
      if (a3)
      {
        goto LABEL_51;
      }
    }

    FigUserCrashWithMessage("[💥 CKB assert]: { keyResponseParams != NULL } : Bug in CKB: Passed a NULL keyResponseParams when trying to process a response");
    goto LABEL_51;
  }

  return v9;
}

void ckb_renewalTimerEventHandler(uint64_t a1)
{
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v3)
  {
    v4 = v3;
    v5 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v5)
    {
      v6 = v5;
      if (dword_1EAF16CF0)
      {
        OUTLINED_FUNCTION_147();
        v7 = OUTLINED_FUNCTION_104_2();
        v15 = OUTLINED_FUNCTION_126(v7, v8, v9, v10, v11, v12, v13, v14, v36, v38, v40, *v42, v42[2], v42[3], v42[4]);
        v23 = OUTLINED_FUNCTION_19_4(v15, v16, v17, v18, v19, v20, v21, v22, v37, v39, v41, v43, v44, v45, v46);
        if (OUTLINED_FUNCTION_115_1(v23))
        {
          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_36();
          _os_log_send_and_compose_impl(v24, v25, v26, v27, v28, v29, v1, v30);
          OUTLINED_FUNCTION_612();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v31, v32, v33, v34, v35);
      }

      ckb_renew(v4, v6[2], 0, *(a1 + 16), *(a1 + 24), 0);
      CFRelease(v4);
      CFRelease(v6);
    }

    else
    {

      CFRelease(v4);
    }
  }
}

void ckb_requestTimerEventHandler(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v2)
  {
    v3 = v2;
    CMBaseObjectGetDerivedStorage();
    if (FigSimpleMutexLock())
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v37, cf);

      CFRelease(v3);
    }

    else
    {
      v4 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v4)
      {
        v5 = FigCFWeakReferenceHolderCopyReferencedObject();
        if (v5)
        {
          if (dword_1EAF16CF0)
          {
            OUTLINED_FUNCTION_147();
            v14 = OUTLINED_FUNCTION_23_4(v6, v7, v8, v9, v10, v11, v12, v13, v35, v37, cf, v40, v41, v42, v43);
            v22 = OUTLINED_FUNCTION_34_5(v14, v15, v16, v17, v18, v19, v20, v21, v36, v38, cf, v40, v41, v42, v43);
            if (OUTLINED_FUNCTION_16_1(v22))
            {
              v44 = 136315394;
              OUTLINED_FUNCTION_2_28();
              OUTLINED_FUNCTION_23();
              _os_log_send_and_compose_impl(v23, v24, v25, v26, v27, v28, v1, v29);
              OUTLINED_FUNCTION_507();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_238_0(v30, v31, v32, v33, v34);
          }

          cf = 0;
          FigCreateErrorForOSStatus(-19152, &cf);
          ckb_processErrorForRequestWithBossMutex(v3, v4, v5, cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      else
      {
        v5 = 0;
      }

      FigSimpleMutexUnlock();
      CFRelease(v3);
      if (v4)
      {
        CFRelease(v4);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

void ckb_customURLReadCallback(uint64_t a1, const void *a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, unint64_t a6)
{
  v151[16] = *MEMORY[0x1E69E9840];
  v145 = 0;
  v146 = 0;
  v143 = 0;
  v144 = 0;
  v142 = 0;
  if (ckb_copyBossFromRetainProxy(a1, &v146))
  {
    return;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  Value = CFDictionaryGetValue(*(DerivedStorage + 120), a2);
  if (!Value)
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_49;
  }

  HTTPStatusCode = ckb_copyGroupAndRequestFromIDWithBossMutex(v146, Value, &v144, &v145);
  if (HTTPStatusCode)
  {
    goto LABEL_49;
  }

  v151[0] = 0;
  cf[0] = 0;
  HTTPStatusCode = FigCustomURLResponseInfoGetHTTPStatusCode();
  if (HTTPStatusCode)
  {
    if (HTTPStatusCode != -17360)
    {
      goto LABEL_49;
    }
  }

  HTTPStatusCode = FigCFHTTPCreateCFErrorFromHTTPStatusCode(v151[0], cf);
  if (HTTPStatusCode)
  {
    goto LABEL_49;
  }

  if (a6 | cf[0])
  {
    if (a6)
    {
      v13 = a6;
    }

    else
    {
      v13 = cf[0];
    }

    v14 = CFRetain(v13);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v14)
    {
      goto LABEL_46;
    }
  }

  if (!a4)
  {
    if ((a5 & 1) == 0)
    {
LABEL_45:
      v14 = 0;
LABEL_46:
      HTTPStatusCode = 0;
      goto LABEL_50;
    }

    goto LABEL_22;
  }

  v15 = *(v145 + 14);
  if (!v15)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    HTTPStatusCode = OUTLINED_FUNCTION_121_0(AllocatorForMedia, v17, v18, v19, v20, v21, v22, v23, v117, v121, v125, v129, 0, 0, v144, v145);
    if (HTTPStatusCode)
    {
      goto LABEL_49;
    }

    v15 = *(v145 + 14);
  }

  DataLength = CMBlockBufferGetDataLength(a4);
  HTTPStatusCode = CMBlockBufferAppendBufferReference(v15, a4, 0, DataLength, 0);
  v14 = 0;
  if ((a5 & 1) != 0 && !HTTPStatusCode)
  {
LABEL_22:
    if (*(v145 + 14))
    {
      HTTPStatusCode = FigCustomURLResponseInfoCopyContentRenewalDate();
      if (!HTTPStatusCode || HTTPStatusCode == -17360)
      {
        HTTPStatusCode = FigCustomURLResponseInfoCopyUniversalTypeIdentifier();
        if (!HTTPStatusCode || HTTPStatusCode == -17360)
        {
          CFDictionaryRemoveValue(*(DerivedStorage + 120), a2);
          if (dword_1EAF16CF0)
          {
            LODWORD(v147) = 0;
            BYTE4(v129) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v26 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            if (OUTLINED_FUNCTION_109_0(v26))
            {
              OUTLINED_FUNCTION_60_3();
              LODWORD(cf[0]) = 136315906;
              OUTLINED_FUNCTION_3_21();
              v149 = @"CustomURL";
              OUTLINED_FUNCTION_146();
              OUTLINED_FUNCTION_108();
              _os_log_send_and_compose_impl(v27, v28, v29, v30, v31, os_log_and_send_and_compose_flags_and_os_log_type, 0, v32);
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v33, v34, v35, v36, v37);
          }

          v39 = v145;
          v38 = v146;
          v151[0] = 0;
          v147 = 0;
          cf[0] = 0;
          if (v145)
          {
            v40 = CFGetAllocator(v146);
            v41 = *(v39 + 14);
            v42 = FigGetAllocatorForMedia();
            v43 = CMBlockBufferGetDataLength(*(v39 + 14));
            if (!CMBlockBufferCreateContiguous(v40, v41, v42, 0, 0, v43, 0, cf))
            {
              CFGetAllocator(v38);
              CMBlockBufferGetDataLength(cf[0]);
              if (!FigCreateCFDataWithBlockBufferNoCopy())
              {
                v44 = CFGetAllocator(v38);
                v45 = FigCFEqual() ? 2 : 1;
                if (!FigContentKeyResponseParamsCreate(v44, v45, v142, 0, v147, v151))
                {
                  ckb_processResponseInternalWithBossMutex(v38, *(v39 + 4), v151[0]);
                }
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_239();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v117, v121, v125);
          }

          if (v147)
          {
            CFRelease(v147);
          }

          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (v151[0])
          {
            CFRelease(v151[0]);
          }

          goto LABEL_45;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_49:
    v14 = 0;
  }

LABEL_50:
  if (!v146 || !v145)
  {
    goto LABEL_73;
  }

  v147 = 0;
  if (!v14)
  {
    if (!HTTPStatusCode)
    {
      goto LABEL_73;
    }

    FigCreateErrorForOSStatus(HTTPStatusCode, &v147);
    if (dword_1EAF16CF0)
    {
      v71 = OUTLINED_FUNCTION_5_19(v63, v64, v65, v66, v67, v68, v69, v70, v117, v121, v125, v129, SBYTE2(v129), SBYTE3(v129), SHIDWORD(v129));
      v79 = OUTLINED_FUNCTION_116_0(v71, v72, v73, v74, v75, v76, v77, v78, v119, v123, v127, v131, v134, v137, typea);
      if (OUTLINED_FUNCTION_109_0(v79))
      {
        OUTLINED_FUNCTION_60_3();
        LODWORD(cf[0]) = 136316162;
        OUTLINED_FUNCTION_66_2();
        v149 = @"CustomURL";
        OUTLINED_FUNCTION_110_1();
        v150 = v80;
        OUTLINED_FUNCTION_146();
        OUTLINED_FUNCTION_108();
        OUTLINED_FUNCTION_456(v81, v82, v83, v84, v85, v86, v87, v88);
        OUTLINED_FUNCTION_329_0();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v112, v113, v114, v115, v116);
    }

    v111 = v147;
    if (!v147)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  IsKeyCallbacksExistSentinel = ckbutil_errorIsKeyCallbacksExistSentinel(v14);
  if (!IsKeyCallbacksExistSentinel || *(v145 + 257))
  {
    if (!dword_1EAF16CF0)
    {
      goto LABEL_67;
    }

    v54 = OUTLINED_FUNCTION_5_19(IsKeyCallbacksExistSentinel, v47, v48, v49, v50, v51, v52, v53, v117, v121, v125, v129, SBYTE2(v129), SBYTE3(v129), SHIDWORD(v129));
    v62 = OUTLINED_FUNCTION_116_0(v54, v55, v56, v57, v58, v59, v60, v61, v118, v122, v126, v130, v133, v136, type);
    if (!OUTLINED_FUNCTION_109_0(v62))
    {
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_60_3();
    LODWORD(cf[0]) = 136316162;
    OUTLINED_FUNCTION_3_21();
    v149 = @"CustomURL";
    OUTLINED_FUNCTION_110_1();
    v150 = v14;
    OUTLINED_FUNCTION_146();
    goto LABEL_65;
  }

  if (!dword_1EAF16CF0)
  {
    goto LABEL_67;
  }

  v89 = OUTLINED_FUNCTION_5_19(IsKeyCallbacksExistSentinel, v47, v48, v49, v50, v51, v52, v53, v117, v121, v125, v129, SBYTE2(v129), SBYTE3(v129), SHIDWORD(v129));
  v97 = OUTLINED_FUNCTION_116_0(v89, v90, v91, v92, v93, v94, v95, v96, v120, v124, v128, v132, v135, v138, typeb);
  if (OUTLINED_FUNCTION_109_0(v97))
  {
    OUTLINED_FUNCTION_60_3();
    LODWORD(cf[0]) = 136315906;
    OUTLINED_FUNCTION_3_21();
    v149 = @"CustomURL";
    OUTLINED_FUNCTION_146();
LABEL_65:
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_456(v98, v99, v100, v101, v102, v103, v104, v105);
    OUTLINED_FUNCTION_329_0();
  }

LABEL_66:
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_524(v106, v107, v108, v109, v110);
LABEL_67:
  v111 = CFRetain(v14);
  v147 = v111;
  if (v111)
  {
LABEL_71:
    ckb_processErrorForRequestWithBossMutex(v146, v144, v145, v111);
    if (v147)
    {
      CFRelease(v147);
    }
  }

LABEL_73:
  FigSimpleMutexUnlock();
  if (v143)
  {
    CFRelease(v143);
  }

  if (v145)
  {
    CFRelease(v145);
  }

  if (v144)
  {
    CFRelease(v144);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v146)
  {
    CFRelease(v146);
  }
}

void ck_persistentKeyUpdatedCallback_cold_1(CFTypeRef *a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, v10, v11);
  if (v8)
  {
    if (*a1)
    {
      CFRelease(*a1);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    if (*a3)
    {
      CFRelease(*a3);
    }

    if (*a4)
    {
      CFRelease(*a4);
    }

    free(a1);
  }
}

void ck_externalProtectionStateChangedCallback_cold_1(CFTypeRef *a1, CFTypeRef *a2, CFTypeRef *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v8, v9);
  if (v6)
  {
    if (*a1)
    {
      CFRelease(*a1);
    }

    if (*a2)
    {
      CFRelease(*a2);
    }

    if (*a3)
    {
      CFRelease(*a3);
    }

    free(a1);
  }
}

void ckb_processRequestViaNextHandlerWithBossMutex_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  v6 = a1[25];
  if (v6 || (v6 = a1[23]) != 0 || (v6 = a1[24]) != 0)
  {
    v7 = CFRetain(v6);
    cf = v7;
  }

  else
  {
    FigCreateErrorForOSStatus(-19158, &cf);
    v7 = cf;
  }

  ckb_transitionRequestToTerminalStateWithBossMutex(a2, a3, a1, v7);
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL ckb_copyGroupAndRequestFromIDWithBossMutex_cold_1(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return v2 == 0;
}

double FigVirtualDisplaySourceMovieCreate_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualDisplaySourceMovieCreate_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigVirtualDisplaySourceMovieCreate_cold_3()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: false condition", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double mov_finalize_cold_1()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double mov_finalize_cold_2()
{
  v0 = OUTLINED_FUNCTION_1_31(*MEMORY[0x1E69E9840], v25, v28, v31, v34, SWORD2(v34), SBYTE6(v34), SHIBYTE(v34));
  v8 = OUTLINED_FUNCTION_103_0(v0, v1, v2, v3, v4, v5, v6, v7, v26, v29, v32, v35, v37, v38, v39);
  v9 = OUTLINED_FUNCTION_77_0(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_2_25(v41, 4.8151e-34);
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_1_24(v17, v18, v19, v20, &dword_1962D5000, v21, v22, "<<<< FigVirtualDisplaySourceMovie >>>> %s: %d: check failed", v27, v30, v33, v36);
    OUTLINED_FUNCTION_192_0();
  }

  else
  {
    v23 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v9, v10, v11, v23, v12, v13, v14, v15, v27, v30, v33, v36, v40);
}

double FigXPCPlaybackCoordinatorClientHandleMessage(const void *a1, void *a2)
{
  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(a1) && a2)
  {
    if (a1)
    {
      v5 = CFGetTypeID(a1);
      if (v5 == FigPlaybackCoordinatorGetTypeID(v5, v6))
      {
        FigXPCMessageGetOpCode();
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_376();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

uint64_t remoteXPCPlaybackCoordinator_BeginSuspension(uint64_t a1, const void *a2)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1 || !a2)
  {
    goto LABEL_9;
  }

  v5 = DerivedStorage;
  OUTLINED_FUNCTION_2_29();
  v6 = FigXPCCreateBasicMessage();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = FigXPCMessageSetTimelineCoordinatorSuspension();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v6)
  {
    goto LABEL_10;
  }

  int64 = xpc_dictionary_get_int64(0, "SuspensionID");
  if (!int64)
  {
LABEL_9:
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_10:
    v8 = v6;
    goto LABEL_8;
  }

  CFDictionarySetValue(*(v5 + 56), a2, int64);
  v8 = 0;
LABEL_8:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspensionProposingNewTime(uint64_t a1, const void *a2, __int128 *a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    if (a2)
    {
      v7 = DerivedStorage;
      Value = CFDictionaryGetValue(*(DerivedStorage + 56), a2);
      if (Value)
      {
        v9 = Value;
        CFDictionaryRemoveValue(*(v7 + 56), a2);
        v10 = FigXPCCreateBasicMessage();
        if (!v10)
        {
          FigXPCMessageSetCMTime();
          xpc_dictionary_set_int64(0, "SuspensionID", v9);
          v10 = FigXPCRemoteClientSendSyncMessage();
        }
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 234, v3);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 231, v3);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 230, v3);
  }

  v11 = v10;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v11;
}

uint64_t remoteXPCPlaybackCoordinator_EndSuspensionWithReason(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage())
      {
        FigXPCMessageSetCFString();
        OUTLINED_FUNCTION_4_25();
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_EndSuspensionWithReason");
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_SetWeakMediumAndCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 287, v3);
LABEL_13:
    v11 = v9;
    goto LABEL_9;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 288, v3);
    goto LABEL_13;
  }

  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBE68, 4294951574, "<<<< FigPlaybackCoordinator_Remote >>>>", 289, v3);
    goto LABEL_13;
  }

  v8 = DerivedStorage;
  OUTLINED_FUNCTION_2_29();
  v9 = FigXPCCreateBasicMessage();
  if (v9)
  {
    goto LABEL_13;
  }

  v9 = FigXPCRemoteClientSendSyncMessage();
  if (v9)
  {
    goto LABEL_13;
  }

  __copy_assignment_8_8_t0w16_pa0_12868_16_pa0_63777_24_pa0_904_32(v8 + 16, a3);
  v10 = *(v8 + 8);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = 0;
  *(v8 + 8) = FigCFWeakReferenceHolderCreateWithReferencedObject();
LABEL_9:
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v11;
}

uint64_t remoteXPCPlaybackCoordinator_HandleAssignmentOfUUIDToLocalParticipantByMedium(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFObject())
    {
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  v3 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v3, v4, "remoteXPCPlaybackCoordinator_HandleAssignmentOfUUIDToLocalParticipantByMedium");
  FigXPCRelease();
  return v2;
}

uint64_t remoteXPCPlaybackCoordinator_CopyParticipantSnapshotForUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a1 && a2 && a3)
  {
    OUTLINED_FUNCTION_2_29();
    v6 = FigXPCCreateBasicMessage();
    if (!v6)
    {
      v6 = FigXPCMessageSetCFObject();
      if (!v6)
      {
        v6 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v6)
        {
          v6 = FigXPCMessageCopyTimelineCoordinatorParticipantSnapshot();
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v8 = v6;
  OUTLINED_FUNCTION_6_18(gCoordinatorRemoteClient, v7, "remoteXPCPlaybackCoordinator_CopyParticipantSnapshotForUUID");
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCPlaybackCoordinator_CopyParticipantSnapshots(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage())
      {
        OUTLINED_FUNCTION_4_25();
        if (!FigXPCRemoteClientSendSyncMessageCreatingReply())
        {
          FigXPCMessageCopyTimelineCoordinatorParticipantSnapshots();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_CopyParticipantSnapshots");
  FigXPCRelease();
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_HandleRemovalOfParticipantStateFromMedium(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFObject())
      {
        OUTLINED_FUNCTION_4_25();
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_HandleRemovalOfParticipantStateFromMedium");
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_GetExpectedTimeAtHostTime(uint64_t a1, __int128 *a2, uint64_t a3)
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  if (a1 && a3 && (*(a2 + 3) & 0x1D) == 1)
  {
    CMTime = FigXPCCreateBasicMessage();
    if (!CMTime)
    {
      CMTime = FigXPCMessageSetCMTime();
      if (!CMTime)
      {
        CMTime = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!CMTime)
        {
          CMTime = FigXPCMessageGetCMTime();
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v8 = CMTime;
  OUTLINED_FUNCTION_6_18(gCoordinatorRemoteClient, v7, "remoteXPCPlaybackCoordinator_GetExpectedTimeAtHostTime");
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCPlaybackCoordinator_HandleUpdatedTimelineStateFromMedium(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
      {
        OUTLINED_FUNCTION_4_25();
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_HandleUpdatedTimelineStateFromMedium");
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_HandleReplacementOfAllParticipantStatesFromMedium(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFArray())
      {
        OUTLINED_FUNCTION_4_25();
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_HandleReplacementOfAllParticipantStatesFromMedium");
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_HandleUpdatedParticipantStateFromMedium(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_2_29();
      if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary())
      {
        OUTLINED_FUNCTION_4_25();
        FigXPCRemoteClientSendSyncMessage();
      }
    }

    else
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  v4 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v4, v5, "remoteXPCPlaybackCoordinator_HandleUpdatedParticipantStateFromMedium");
  FigXPCRelease();
  return v3;
}

uint64_t remoteXPCPlaybackCoordinator_DisconnectFromMedium()
{
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_29();
  v0 = FigXPCCreateBasicMessage();
  if (!v0)
  {
    v0 = FigXPCRemoteClientSendSyncMessage();
  }

  v1 = v0;
  FigXPCRemoteClientKillServerOnTimeout();
  FigXPCRelease();
  return v1;
}

uint64_t remoteXPCPlaybackCoordinator_ResetGroupTimelineExpectationsForIdentifier(uint64_t a1)
{
  OUTLINED_FUNCTION_7_11(a1);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_5_20();
  if (v1)
  {
    OUTLINED_FUNCTION_2_29();
    if (!FigXPCCreateBasicMessage())
    {
      FigXPCMessageSetCFString();
      OUTLINED_FUNCTION_4_25();
      FigXPCRemoteClientSendSyncMessage();
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, v8);
  }

  v3 = OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_6_18(v3, v4, "remoteXPCPlaybackCoordinator_ResetGroupTimelineExpectationsForIdentifier");
  FigXPCRelease();
  return v2;
}

void remoteXPCPlaybackCoordinator_asyncReloadCompletion(const void **a1)
{
  v2 = *a1;
  FigPlaybackCoordinatorGetCMBaseObject();
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_2_29();
  if (!FigXPCCreateBasicMessage())
  {
    xpc_dictionary_set_int64(0, "FetchID", a1[1]);
    FigXPCRemoteClientSendSyncMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  if (v2)
  {
    CFRelease(v2);
  }

  FigXPCRelease();
  free(a1);
}

CFMutableDictionaryRef CreateGaplessInfoDictionary(uint64_t a1)
{
  FigSimpleMutexLock();
  if (*(a1 + 347))
  {
    Enhanced_NoCorrection = FigGaplessInfoCreateEnhanced_NoCorrection(*(a1 + 264), *(a1 + 360), *(a1 + 364), *(a1 + 352));
  }

  else
  {
    Enhanced_NoCorrection = 0;
  }

  FigSimpleMutexUnlock();
  return Enhanced_NoCorrection;
}

uint64_t EnsureMetadataReaderCreated_0(uint64_t a1, const __CFAllocator *a2)
{
  v35 = 0;
  outPropertyData = 0;
  v34 = 0;
  FigSimpleMutexLock();
  if (*(a1 + 336))
  {
    v5 = 0;
    goto LABEL_30;
  }

  v4 = *(a1 + 328);
  if (v4 != -1)
  {
LABEL_3:
    if ((v4 & 0x8000000000000000) == 0)
    {
      FigMetadataReaderCreateForID3(a2, *(a1 + 16), v4, (a1 + 336));
      if (*(a1 + 336))
      {
        v5 = 0;
        *(a1 + 344) = 1;
        *(a1 + 346) = 0;
        goto LABEL_30;
      }

LABEL_8:
      ioPropertyDataSize = 8;
      AudioFileStreamGetProperty(*(a1 + 48), 0x61617274u, &ioPropertyDataSize, &outPropertyData);
      v6 = outPropertyData;
      LODWORD(size) = 0;
      cf = 0;
      v7 = OUTLINED_FUNCTION_9_11();
      if (!AudioFileStreamGetPropertyInfo(v7, v8, v9, 0) && size)
      {
        v10 = malloc_type_calloc(1uLL, size, 0x10E0040CAA52137uLL);
        if (v10)
        {
          v11 = OUTLINED_FUNCTION_9_11();
          if (!AudioFileStreamGetProperty(v11, v12, v13, v10))
          {
            FigMetadataReaderCreateWithVorbisCommentFields(a2, v10, v6, &cf);
            v14 = cf;
LABEL_13:
            *(a1 + 336) = v14;
            FigReleaseAudioFileMetadataItems(v10);
            free(v10);
            if (*(a1 + 336))
            {
              v5 = 0;
              *(a1 + 346) = 1;
              *(a1 + 344) = 0;
              goto LABEL_30;
            }

            v15 = outPropertyData;
            cf = 0;
            __s1 = 8;
            size = 0;
            if (AudioFileStreamGetProperty(*(a1 + 48), 0x696E666Fu, &__s1, &cf))
            {
              goto LABEL_49;
            }

            v16 = 0;
            v17 = cf;
            if (__s1 != 8 || !cf)
            {
              goto LABEL_21;
            }

            v18 = CFGetTypeID(cf);
            if (v18 != CFDictionaryGetTypeID() || CFDictionaryGetCount(cf) < 1)
            {
LABEL_49:
              v16 = 0;
            }

            else
            {
              FigMetadataReaderCreateWithAudioFileProperties(a2, cf, v15, &size);
              v16 = size;
            }

            v17 = cf;
LABEL_21:
            *(a1 + 336) = v16;
            if (v17)
            {
              CFRelease(v17);
              v16 = *(a1 + 336);
            }

            if (v16)
            {
              *(a1 + 344) = 0;
              *(a1 + 346) = 0;
            }

            goto LABEL_25;
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_3_5();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, v32, v34);
        }

        v14 = 0;
        goto LABEL_13;
      }

      v14 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 345))
  {
    cf = 0;
    __s1 = 0;
    size = 0;
    *(a1 + 345) = 1;
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v22 = *MEMORY[0x1E695E480];
      v23 = v21(CMBaseObject, *MEMORY[0x1E695FF80], *MEMORY[0x1E695E480], &v35);
      if (!v23)
      {
        if (!CFBooleanGetValue(v35))
        {
          goto LABEL_25;
        }

        v24 = CMByteStreamGetCMBaseObject();
        v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v25)
        {
          v26 = v25(v24, *MEMORY[0x1E695FF78], v22, &v34);
          if (v26)
          {
            v5 = v26;
          }

          else
          {
            CFNumberGetValue(v34, kCFNumberSInt64Type, &cf);
            v27 = cf - 128;
            if (cf < 128)
            {
              goto LABEL_25;
            }

            v28 = *(a1 + 16);
            v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v29)
            {
              v30 = v29(v28, 3, v27, &__s1, &size);
              if (!v30)
              {
                if (!memcmp(&__s1, "TAG", 3uLL))
                {
                  v4 = cf - 128;
                  *(a1 + 328) = cf - 128;
                }

                else
                {
                  v4 = *(a1 + 328);
                }

                goto LABEL_3;
              }

              v5 = v30;
            }

            else
            {
              v5 = 4294954514;
            }
          }
        }

        else
        {
          v5 = 4294954514;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        goto LABEL_26;
      }

      v5 = v23;
    }

    else
    {
      v5 = 4294954514;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_26;
  }

LABEL_7:
  if (!*(a1 + 336))
  {
    goto LABEL_8;
  }

LABEL_25:
  v5 = 0;
LABEL_26:
  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

LABEL_30:
  FigSimpleMutexUnlock();
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

  return v5;
}

uint64_t GetAudioFileStreamPacketTableInfo(uint64_t result)
{
  if (!*(result + 347))
  {
    v1 = result;
    FigSimpleMutexLock();
    ioPropertyDataSize = 16;
    if (!AudioFileStreamGetProperty(*(v1 + 48), 0x706E666Fu, &ioPropertyDataSize, (v1 + 352)) && *(v1 + 352) >= 1)
    {
      *(v1 + 347) = 1;
      if ((*(v1 + 360) & 0x80000000) != 0)
      {
        *(v1 + 360) = 0;
      }

      if ((*(v1 + 364) & 0x80000000) != 0)
      {
        *(v1 + 364) = 0;
      }
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

uint64_t PushBytesThroughParser(uint64_t a1)
{
  v21 = 0;
  v1 = *(a1 + 88);
  if (v1 >= *(a1 + 24))
  {
    return 4294954423;
  }

  v20 = 0;
  v3 = *(a1 + 16);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v4 || v4(v3, v1, &v20) || !v20)
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 88);
    if (v7 - v8 >= 1024)
    {
      v5 = 1024;
    }

    else
    {
      v5 = v7 - v8;
    }

    if (v7 != v8)
    {
      goto LABEL_17;
    }

    return 4294954423;
  }

  if (v20 >= *(a1 + 72))
  {
    v5 = *(a1 + 72);
  }

  else
  {
    v5 = v20;
  }

  v6 = *(a1 + 324);
  if (v6 && *(a1 + 88) + v5 > *(a1 + 24) - *(a1 + 248) * v6)
  {
    v5 = v20;
  }

LABEL_17:
  if (v5 < 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
    return v13;
  }

  v10 = *(a1 + 16);
  v11 = *(a1 + 88);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v12)
  {
    return 4294954514;
  }

  v13 = v12(v10, v5, v11, a1 + 96, &v21);
  if (v13)
  {
    return v13;
  }

  v14 = 0;
  *(a1 + 104) = 0;
  do
  {
    CMBlockBufferGetDataPointer(*(a1 + 96), v14, (a1 + 112), 0, (a1 + 120));
    v15 = AudioFileStreamParseBytes(*(a1 + 48), *(a1 + 112), *(a1 + 120), 0);
    if (v15)
    {
      v9 = v15;
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, v21, v22);
      return v9;
    }

    v14 = *(a1 + 104) + *(a1 + 112);
    *(a1 + 104) = v14;
  }

  while (v14 < v21);
  v16 = *(a1 + 88) + v21;
  *(a1 + 88) = v16;
  if (v16 == *(a1 + 24))
  {
    AudioFileStreamParseBytes(*(a1 + 48), 0, 0, 0);
  }

  v17 = *(a1 + 324);
  if (v17 && *(a1 + 88) == *(a1 + 24))
  {
    *(a1 + 200) = *(a1 + 152) - v17;
    *(a1 + 192) = 1;
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    CFRelease(v18);
  }

  v9 = 0;
  *(a1 + 96) = 0;
  return v9;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtPresentationTimeStamp(uint64_t a1, uint64_t a2, void *a3, BOOL *a4, BOOL *a5)
{
  v8 = *CMBaseObjectGetDerivedStorage();
  v15 = 0;
  v9 = createFigAudioPacketAccessor(v8, &v15);
  if (v9)
  {
    return v9;
  }

  v10 = v15;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_315();
  v12 = moveToSampleAtPTS(v11, &v14, a4, a5);
  if (v12)
  {
    CFRelease(v10);
  }

  else
  {
    *a3 = v10;
  }

  return v12;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtFirstSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v7 = 0;
  v4 = createFigAudioPacketAccessor(v3, &v7);
  if (!v4)
  {
    v5 = v7;
    *(CMBaseObjectGetDerivedStorage() + 8) = 0;
    *a2 = v5;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursorService_createCursorAtLastSampleInDecodeOrder(uint64_t a1, void *a2)
{
  v3 = *CMBaseObjectGetDerivedStorage();
  v9 = 0;
  v4 = createFigAudioPacketAccessor(v3, &v9);
  if (v4)
  {
    return v4;
  }

  v5 = v9;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(v3);
  if (AudioFileStreamPacketAndFrameCount)
  {
    CFRelease(v5);
  }

  else
  {
    *(DerivedStorage + 8) = v3[36] - 1;
    *a2 = v5;
  }

  return AudioFileStreamPacketAndFrameCount;
}

uint64_t moveToSampleAtPTS(uint64_t *a1, CMTime *a2, BOOL *a3, BOOL *a4)
{
  time1 = *a2;
  v32 = **&MEMORY[0x1E6960CC0];
  v8 = CMTimeCompare(&time1, &v32);
  if (v8 < 0)
  {
    value = 0;
    v10 = 0;
    v12 = *a1;
    v16 = *(*a1 + 228);
    if (v16)
    {
LABEL_18:
      v14 = value / v16;
      goto LABEL_19;
    }
  }

  else
  {
    v9 = a2->flags & 0x1D;
    v10 = v9 != 1;
    if (v9 == 1)
    {
      memset(&time1, 0, sizeof(time1));
      OUTLINED_FUNCTION_315();
      CMTimeConvertScale(&time1, &v32, v20, kCMTimeRoundingMethod_RoundTowardZero);
      value = time1.value;
      v12 = *a1;
    }

    else
    {
      AudioFileStreamPacketAndFrameCount = GetAudioFileStreamPacketAndFrameCount(*a1);
      if (AudioFileStreamPacketAndFrameCount)
      {
        return AudioFileStreamPacketAndFrameCount;
      }

      v12 = *a1;
      v13 = *(*a1 + 288);
      if (v13 >= 2)
      {
        v14 = v13 - 1;
        v10 = 1;
        goto LABEL_20;
      }

      value = *(v12 + 296);
    }

    v16 = *(v12 + 228);
    if (value > 0x7FFFFFFFFFFEA06ELL)
    {
      if (v16)
      {
        v31 = *(v12 + 228);
      }

      else
      {
        v31 = 1;
      }

      v14 = 0x7FFFFFFFFFFEA06FLL / v31;
      goto LABEL_20;
    }

    if (v16)
    {
      goto LABEL_18;
    }
  }

  *&time1.timescale = 0;
  time1.epoch = 0;
  time1.value = value;
  LODWORD(v32.value) = 24;
  Property = AudioFileStreamGetProperty(*(v12 + 48), 0x6672706Bu, &v32, &time1);
  if (Property)
  {
    v29 = Property;
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32.value, v32.timescale, LODWORD(v32.epoch));
    return v29;
  }

  v14 = *&time1.timescale;
  v18 = *(v12 + 432);
  if (v18 >= *&time1.timescale)
  {
    v19 = *&time1.timescale;
  }

  else
  {
    v19 = *(v12 + 432);
  }

  if (v18 >= 1)
  {
    v14 = v19;
  }

LABEL_19:
  if (v14 < 0)
  {
    return 4294954456;
  }

LABEL_20:
  a1[1] = v14;
  if (a3)
  {
    v22 = v8 < 0 || a2->value < 0;
    *a3 = v22;
  }

  if (!a4)
  {
    return 0;
  }

  v23 = *a1;
  v24 = a1[1];
  LODWORD(v25) = *(*a1 + 228);
  if (v25 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v25;
  }

  if ((0x7FFFFFFFFFFEA06FLL / v25) <= v24 || ((v26 = *(v23 + 432), v26 >= 1) ? (v27 = v26 <= v24) : (v27 = 0), v27))
  {
    v28 = 0;
  }

  else if (*(v23 + 272))
  {
    v28 = *(v23 + 288) > v24;
  }

  else
  {
    time1.value = 0;
    LODWORD(v32.value) = 24;
    *&time1.timescale = v24;
    time1.epoch = 0;
    v28 = AudioFileStreamGetProperty(*(v23 + 48), 0x706B6672u, &v32, &time1) == 0;
  }

  v29 = 0;
  *a4 = v10 || !v28;
  return v29;
}

uint64_t figAudioFileStreamCursor_getSampleDependencyInfo(uint64_t a1, BOOL *a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *DerivedStorage;
  v18 = 0;
  *v16 = 0u;
  *cf = 0u;
  v14 = 0u;
  *v15 = 0u;
  v7 = DerivedStorage[1];
  v8 = *(v6 + 432);
  v9 = 4294954456;
  if (v8 < 1 || v8 > v7)
  {
    SetupPacketRequest(v7, 1, &v14, *(v6 + 224) == 0, *(v6 + 400));
    FigSimpleMutexLock();
    v11 = ObtainRequestedPackets(v6, &v14);
    FigSimpleMutexUnlock();
    v9 = v11 == -12873 ? 4294954456 : v11;
    if (!v9)
    {
      v12 = v16[0];
      if (v16[0])
      {
        *a2 = *v16[0] != 0;
        LODWORD(v12) = v12[1];
      }

      else
      {
        *a2 = 1;
      }

      v9 = 0;
      *a3 = v12;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = 0;
  free(v15[1]);
  v15[1] = 0;
  free(v16[0]);
  return v9;
}

void *SetupPacketRequest(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *(a3 + 64) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 48) = 0u;
  result = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 3u, 0, (a3 + 48));
  if (!result)
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = 0;
    *(a3 + 40) = a2;
    if (a4)
    {
      result = OUTLINED_FUNCTION_13_7(16 * a2);
      *(a3 + 24) = result;
    }

    if (a5)
    {
      result = OUTLINED_FUNCTION_4_26(8 * a2);
      *(a3 + 32) = result;
    }

    *(a3 + 56) = 0;
  }

  return result;
}

uint64_t ObtainRequestedPackets(uint64_t a1, void *a2)
{
  v21 = 0;
  v20 = 0;
  v19 = 0;
  result = FillPacketRequestFromCache(a1 + 136, a2, *(a1 + 224), &v19 + 1, &v19);
  if (result)
  {
    return result;
  }

  if (v19)
  {
    return 0;
  }

LABEL_3:
  v5 = a2[2];
  if (v5 >= a2[1])
  {
    return 0;
  }

  v6 = *a2 + v5;
  v7 = *(a1 + 432);
  if (v7 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 432);
  }

  if (v7 >= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v16 = OUTLINED_FUNCTION_6_19();
    AudioFileStreamSeek(v16, 0, v17, v18);
    v15 = 0;
    v13 = *(a1 + 304);
    v14 = *(a1 + 160);
    if (!v14)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 != *(a1 + 80))
  {
    v10 = OUTLINED_FUNCTION_6_19();
    result = AudioFileStreamSeek(v10, v9, v11, v12);
    if (result)
    {
      return result;
    }

    v13 = v21 + *(a1 + 304);
    v9 = v9;
    v14 = *(a1 + 160);
    v15 = v9;
    if (!v14)
    {
LABEL_17:
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      *(a1 + 136) = xmmword_196E732D0;
      *(a1 + 192) = 0;
      *(a1 + 80) = v15;
      *(a1 + 88) = v13;
      goto LABEL_18;
    }

LABEL_16:
    CFRelease(v14);
    v15 = v9;
    goto LABEL_17;
  }

LABEL_18:
  while (1)
  {
    result = PushBytesThroughParser(a1);
    if (result)
    {
      break;
    }

    result = FillPacketRequestFromCache(a1 + 136, a2, *(a1 + 224), &v19 + 1, &v19);
    if (result)
    {
      break;
    }

    if (HIBYTE(v19))
    {
      if (v19)
      {
        return 0;
      }

      goto LABEL_3;
    }
  }

  if (result == -12873)
  {
    if (a2[2])
    {
      result = 0;
    }

    else
    {
      result = 4294954423;
    }

    *(a1 + 432) = *(a1 + 80);
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_getPresentationTimeStamp(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v4 = MapPacketNumberToFrameNumber(*DerivedStorage, DerivedStorage[1], &value);
  if (!v4)
  {
    CMTimeMake(&v6, value, *(*DerivedStorage + 252));
    *a2 = v6;
  }

  return v4;
}

uint64_t FigAudioFileStreamCursor_getDuration(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  v48 = 0;
  *v46 = 0u;
  *cf = 0u;
  v44 = 0u;
  *v45 = 0u;
  if (*(v3 + 228))
  {
    v4 = *(v3 + 252);
    v5 = *(v3 + 228);
LABEL_19:
    v17 = CMTimeMake(&v43, v5, v4);
    OUTLINED_FUNCTION_5_21(v17, v18, v19, v20, v21, v22, v23, v24, v25, v42, v26, v43.value);
    return v1;
  }

  v6 = DerivedStorage[1];
  v7 = *(v3 + 432);
  if (v7 >= 1 && v7 <= v6)
  {
    return 4294954456;
  }

  v9 = *(v3 + 152);
  if (v9)
  {
    v10 = *(v3 + 136);
    if (v6 < v10 || v6 >= v10 + v9)
    {
      if (v9 < 1)
      {
        v4 = *(v3 + 252);
        v5 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = (*(v3 + 168) + 8);
        while (1)
        {
          v16 = *v14;
          v14 += 4;
          v15 = v16;
          if ((v13 ^ 0x7FFFFFFFFFFFFFFFLL) < v16)
          {
            break;
          }

          v13 += v15;
          if (v9 == ++v12)
          {
            v12 = *(v3 + 152);
            break;
          }
        }

        v4 = *(v3 + 252);
        v5 = v13 / v12;
      }

      goto LABEL_19;
    }
  }

  OUTLINED_FUNCTION_12_10();
  SetupPacketRequest(v28, 1, &v44, v29, v30);
  FigSimpleMutexLock();
  LODWORD(v1) = ObtainRequestedPackets(v3, &v44);
  FigSimpleMutexUnlock();
  if (v1 == -12873)
  {
    v1 = 4294954456;
  }

  else
  {
    v1 = v1;
  }

  if (!v1)
  {
    if (v45[1])
    {
      v31 = CMTimeMake(&v43, *(v45[1] + 2), *(v3 + 252));
      OUTLINED_FUNCTION_5_21(v31, v32, v33, v34, v35, v36, v37, v38, v39, v42, v40, v43.value);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v42, LODWORD(v43.value), v43.timescale);
      v1 = v41;
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  cf[0] = 0;
  free(v45[1]);
  v45[1] = 0;
  free(v46[0]);
  return v1;
}

uint64_t FigAudioFileStreamCursor_getDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  v10 = *CMBaseObjectGetDerivedStorage();
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

  if (!a2)
  {
    return 0;
  }

  *a2 = 1;
  if (!*(v10 + 400))
  {
    return 0;
  }

  v15 = 0;
  v14 = 0;
  result = figAudioFileStreamCursor_getSampleDependencyInfo(a1, &v15, &v14);
  if (!result)
  {
    v13 = v15 && v14 == 0;
    *a2 = v13;
  }

  return result;
}

double FigAudioFileStreamCursor_createSampleBuffer(uint64_t a1, uint64_t a2, CMSampleBufferRef *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v8 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v8 = 0;
  }

  v9 = *DerivedStorage;
  sbuf = 0;
  memset(&v83, 0, sizeof(v83));
  v81 = 0;
  *v79 = 0u;
  *dataBuffer = 0u;
  v77 = 0u;
  *v78 = 0u;
  if (!FigAudioFileStreamCursor_getPresentationTimeStamp(a1, &v83))
  {
    if (v8 && *(v8 + 8) < DerivedStorage[1])
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954454, "-+= FFR_AudioFileStream =+-", 2448, v3);
    }

    else
    {
      OUTLINED_FUNCTION_12_10();
      SetupPacketRequest(v11, v12, &v77, v13, v14);
      FigSimpleMutexLock();
      v15 = ObtainRequestedPackets(v9, &v77);
      FigSimpleMutexUnlock();
      if (v15 == -12873)
      {
        v16 = -12840;
      }

      else
      {
        v16 = v15;
      }

      if (!v16)
      {
        v17 = *MEMORY[0x1E695E480];
        v18 = *(v9 + 264);
        presentationTimeStamp = v83;
        if (CMAudioSampleBufferCreateWithPacketDescriptions(v17, dataBuffer[0], 1u, 0, 0, v18, v78[0], &presentationTimeStamp, v78[1], &sbuf))
        {
          if (sbuf)
          {
            CFRelease(sbuf);
          }
        }

        else
        {
          if (LOBYTE(dataBuffer[1]))
          {
            v19 = sbuf;
            v20 = *(v9 + 228) * *(v9 + 324);
            memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
            OUTLINED_FUNCTION_8_12(v20);
            keys.value = *MEMORY[0x1E6962E70];
            values.value = CFNumberCreate(v17, kCFNumberCFIndexType, &v81);
            *&keys.timescale = *MEMORY[0x1E6962E68];
            OUTLINED_FUNCTION_3_23();
            *&values.timescale = CMTimeCopyAsDictionary(&time, v17);
            v21 = CFDictionaryCreate(v17, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CMSetAttachment(v19, *MEMORY[0x1E6962DE8], v21, 0);
            if (values.value)
            {
              CFRelease(values.value);
            }

            if (*&values.timescale)
            {
              CFRelease(*&values.timescale);
            }

            if (v21)
            {
              CFRelease(v21);
            }
          }

          v22 = MEMORY[0x1E6960CC0];
          if (*(v9 + 368) && !*(v9 + 347))
          {
            memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
            OUTLINED_FUNCTION_8_12(*(v9 + 372));
            memset(&time, 0, sizeof(time));
            v23 = CMSampleBufferGetPresentationTimeStamp(&time, sbuf);
            keys = presentationTimeStamp;
            OUTLINED_FUNCTION_11_11(v23, v24, v25, v26, v27, v28, v29, v30, *&presentationTimeStamp.value, packetDescriptions, v68, v70, v73, rhs.value, *&rhs.timescale, rhs.epoch, v76, v77, *(&v77 + 1), v78[0], v78[1], v79[0], v79[1], dataBuffer[0], dataBuffer[1], v81, v82, v83.value, *&v83.timescale, v83.epoch, sbuf, v31, time.value);
            if (CMTimeCompare(&keys, &values) >= 1)
            {
              memset(&keys, 0, sizeof(keys));
              v32 = OUTLINED_FUNCTION_2_30();
              CMTimeSubtract(v34, v32, v33);
              values = keys;
              v35 = CMTimeCopyAsDictionary(&values, v17);
              CMSetAttachment(sbuf, *MEMORY[0x1E6960560], v35, 1u);
              if (v35)
              {
                CFRelease(v35);
              }
            }

            keys = time;
            values = presentationTimeStamp;
            v36 = CMTimeCompare(&keys, &values);
            v46 = sbuf;
            if (v36 < 1)
            {
              keys = *v22;
            }

            else
            {
              OUTLINED_FUNCTION_11_11(v36, v37, v38, v39, v40, v41, v42, v43, v44, packetDescriptionsa, v69, v71, v74, rhs.value, *&rhs.timescale, rhs.epoch, v76, v77, *(&v77 + 1), v78[0], v78[1], v79[0], v79[1], dataBuffer[0], dataBuffer[1], v81, v82, v83.value, *&v83.timescale, v83.epoch, sbuf, v45, time.value);
              rhs = presentationTimeStamp;
              CMTimeSubtract(&keys, &values, &rhs);
            }

            CMSampleBufferSetOutputPresentationTimeStamp(v46, &keys);
          }

          if (*(v9 + 376))
          {
            if (!*(v9 + 347))
            {
              v47 = DerivedStorage[1];
              v48 = v78[0];
              v49 = *(v9 + 384);
              if (v78[0] + v47 > v49)
              {
                v72 = *&v22->value;
                *&presentationTimeStamp.value = *&v22->value;
                epoch = v22->epoch;
                presentationTimeStamp.epoch = epoch;
                v51 = v49 - v47;
                if (v49 >= v47)
                {
                  if (v51 < v78[0])
                  {
                    v52 = *(v9 + 228);
                    if (!v52 && v78[1])
                    {
                      v52 = *(v78[1] + 4 * v51 + 2);
                    }

                    v53 = *(v9 + 392);
                    if (v52 > v53)
                    {
                      OUTLINED_FUNCTION_8_12(v52 - v53);
                      v48 = v78[0];
                    }

                    v54 = v51 + 1;
                    if (v54 < v48)
                    {
                      v55 = 16 * v49 - 16 * v47 + 24;
                      do
                      {
                        v56 = *(v9 + 228);
                        if (!v56 && v78[1])
                        {
                          v56 = *(v78[1] + v55);
                        }

                        memset(&time, 0, sizeof(time));
                        CMTimeMake(&time, v56, *(v9 + 208));
                        v57 = OUTLINED_FUNCTION_2_30();
                        CMTimeAdd(v59, v57, v58);
                        presentationTimeStamp = keys;
                        ++v54;
                        v55 += 16;
                      }

                      while (v54 < v78[0]);
                    }
                  }
                }

                else
                {
                  CMSampleBufferGetDuration(&presentationTimeStamp, sbuf);
                }

                OUTLINED_FUNCTION_3_23();
                *&keys.value = v72;
                keys.epoch = epoch;
                if (CMTimeCompare(&time, &keys) >= 1)
                {
                  OUTLINED_FUNCTION_3_23();
                  v60 = CMTimeCopyAsDictionary(&time, v17);
                  CMSetAttachment(sbuf, *MEMORY[0x1E6960558], v60, 1u);
                  if (v60)
                  {
                    CFRelease(v60);
                  }
                }
              }
            }
          }

          if (*(v9 + 400) && v78[0] >= 1)
          {
            v61 = 0;
            do
            {
              SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
              if (SampleAttachmentsArray)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, v61);
                if (ValueAtIndex)
                {
                  v64 = ValueAtIndex;
                  presentationTimeStamp.value = 0;
                  FigPacketDependencyInfoCopyAsSampleDependencyAttributeDictionary();
                  if (presentationTimeStamp.value)
                  {
                    CFDictionaryApplyFunction(presentationTimeStamp.value, appendAttributesToDictionary, v64);
                    CFRelease(presentationTimeStamp.value);
                  }
                }
              }

              ++v61;
            }

            while (v61 < v78[0]);
          }

          *a3 = sbuf;
          sbuf = 0;
        }
      }

      if (dataBuffer[0])
      {
        CFRelease(dataBuffer[0]);
      }

      dataBuffer[0] = 0;
      free(v78[1]);
      v78[1] = 0;
      free(v79[0]);
    }
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_stepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  memset(&v12, 0, sizeof(v12));
  v5 = *DerivedStorage;
  v4 = DerivedStorage[1];
  LODWORD(v6) = *(*DerivedStorage + 228);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v6;
  }

  if (v4 >= (0x7FFFFFFFFFFEA06FLL / v6))
  {
    return 4294954456;
  }

  v7 = DerivedStorage;
  v11 = 0;
  value.value = 0;
  result = MapPacketNumberToFrameNumber(v5, v4, &value.value);
  if (!result)
  {
    CMTimeMake(&v13, value.value, *(v5 + 252));
    value = v13;
    v9 = *a2;
    CMTimeAdd(&v12, &value, &v9);
    value = v12;
    result = moveToSampleAtPTS(v7, &value, &v11 + 1, &v11);
    if (!result)
    {
      if (HIBYTE(v11) | v11)
      {
        return 4294954456;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigAudioFileStreamCursor_stepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage[1];
  LODWORD(v7) = *(*DerivedStorage + 228);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v7;
  }

  if (v6 >= (0x7FFFFFFFFFFEA06FLL / v7))
  {
    v8 = 4294954456;
    v9 = DerivedStorage[1];
  }

  else
  {
    v8 = 0;
    v9 = v6 + a2;
    if (a2 <= 0)
    {
      v9 = (v6 + a2) & ~((v6 + a2) >> 63);
    }
  }

  DerivedStorage[1] = v9;
  if (a3)
  {
    *a3 = v9 - v6;
  }

  return v8;
}

void AudioFileStream_FigPacketsProc(uint64_t a1, unsigned int a2, unsigned int a3, unint64_t a4, void *a5)
{
  v9 = 0;
  v10 = a3;
  if (!a5 || !*(a1 + 400))
  {
    goto LABEL_12;
  }

  v12 = OUTLINED_FUNCTION_4_26(8 * a3);
  v9 = v12;
  if (!v12)
  {
LABEL_10:
    v15 = a2;
    outPropertyData = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v13 = 0;
  v14 = v12 + 1;
  while (1)
  {
    ioPropertyDataSize = 16;
    outPropertyData = (v13 + *(a1 + 80));
    v44 = 0;
    if (AudioFileStreamGetProperty(*(a1 + 48), 0x706B6470u, &ioPropertyDataSize, &outPropertyData))
    {
      break;
    }

    *(v14 - 4) = v44 != 0;
    *v14 = HIDWORD(v44);
    v14 += 2;
    if (v10 == ++v13)
    {
      goto LABEL_12;
    }
  }

  free(v9);
  v9 = 0;
LABEL_12:
  v15 = a2;
  outPropertyData = 0;
  if (a5)
  {
LABEL_13:
    DataLength = CMBlockBufferGetDataLength(*(a1 + 160));
    v17 = *a5;
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = (a1 + 152);
      v20 = *(a1 + 152);
      v21 = *(a1 + 184);
      if (v21 - v20 >= v10)
      {
        v27 = &v18[16 * v20];
        if (!v9)
        {
          v30 = 0;
          if (!v10)
          {
LABEL_37:
            v29 = 0;
            *v19 = v20 + v10;
            v28 = a5[2 * v10 - 2] - v17 + HIDWORD(a5[2 * v10 - 1]);
            goto LABEL_38;
          }

LABEL_32:
          v31 = a5;
          v32 = v9;
          v33 = v10;
          do
          {
            *v27 = *v31;
            *v27 += DataLength - v17;
            if (v9)
            {
              *v30 = *v32;
            }

            ++v32;
            v30 += 8;
            ++v31;
            v27 += 16;
            --v33;
          }

          while (v33);
          v20 = *v19;
          goto LABEL_37;
        }

        v25 = *(a1 + 176);
LABEL_27:
        v30 = &v25[8 * v20];
        if (!v10)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v22 = 64;
      if (v10 > 0x40)
      {
        v22 = v10;
      }

      v23 = v21 + v22;
      v24 = malloc_type_realloc(v18, 16 * (v21 + v22), 0x1000040451B5BE8uLL);
      *(a1 + 184) = v23;
      *(a1 + 168) = v24;
      if (v9)
      {
        v25 = malloc_type_realloc(*(a1 + 176), 8 * v23, 0x10000404A09149AuLL);
LABEL_23:
        *(a1 + 176) = v25;
        v19 = (a1 + 152);
        v20 = *(a1 + 152);
        v27 = (*(a1 + 168) + 16 * v20);
        goto LABEL_27;
      }
    }

    else
    {
      v26 = 128;
      if (v10 > 0x80)
      {
        v26 = v10;
      }

      *(a1 + 184) = v26;
      *(a1 + 152) = 0;
      v24 = OUTLINED_FUNCTION_13_7(16 * v26);
      *(a1 + 168) = v24;
      if (v9)
      {
        v25 = OUTLINED_FUNCTION_4_26(8 * *(a1 + 184));
        goto LABEL_23;
      }
    }

    v30 = 0;
    v19 = (a1 + 152);
    v20 = *(a1 + 152);
    v27 = &v24[16 * v20];
    if (!v10)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v17 = 0;
  v28 = v10 * *(a1 + 224);
  *(a1 + 152) += v10;
  v29 = 1;
LABEL_38:
  v34 = *(a1 + 120);
  if (v34 > a4 || v34 + *(a1 + 112) <= a4)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      v36 = *MEMORY[0x1E695E480];
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, v15 - v17, *MEMORY[0x1E695E480], 0, 0, v15 - v17, 1u, &outPropertyData))
      {
        goto LABEL_60;
      }

      CMBlockBufferReplaceDataBytes((a4 + v17), outPropertyData, 0, v15 - v17);
      v35 = 0;
      goto LABEL_47;
    }

LABEL_61:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", blockBufferOut, v41, outPropertyData);
    if (!v39)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

  v35 = v17 + a4 - v34 + *(a1 + 104);
  if (v35 < 0 || (v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  v36 = *MEMORY[0x1E695E480];
  if (CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], *(a1 + 96), v35, v28, 0, &outPropertyData))
  {
    goto LABEL_60;
  }

LABEL_47:
  if (*(a1 + 160))
  {
    goto LABEL_50;
  }

  if (!CMBlockBufferCreateEmpty(v36, 8u, 0, (a1 + 160)))
  {
    *(a1 + 136) = *(a1 + 80);
LABEL_50:
    if (*(a1 + 144) == -1)
    {
      if (v29)
      {
        v37 = *(a1 + 304) + *(a1 + 136) * *(a1 + 224);
      }

      else
      {
        v38 = *(a1 + 120);
        if (v38 > a4 || v38 + *(a1 + 112) <= a4)
        {
          goto LABEL_57;
        }

        v37 = *(a1 + 88) + v35 - *(*(a1 + 168) + 16 * (*(a1 + 80) - *(a1 + 136)));
      }

      *(a1 + 144) = v37;
    }

LABEL_57:
    CMBlockBufferAppendBufferReference(*(a1 + 160), outPropertyData, 0, 0, 0);
    if (outPropertyData)
    {
      CFRelease(outPropertyData);
    }

    *(a1 + 80) += v10;
    goto LABEL_60;
  }

LABEL_62:
  if (outPropertyData)
  {
    CFRelease(outPropertyData);
  }

LABEL_60:
  free(v9);
}

double FigAudioFileStreamFormatReaderCreateFromStream_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigAudioFileStreamFormatReaderCreateFromStream_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioFileStreamFormatReaderCreateFromStream_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigAudioFileStreamFormatReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double CopyAudioFileStreamDuration_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double CopyAudioFileStreamDuration_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double MapPacketNumberToFrameNumber_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigAudioFileStreamTrackReaderCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigAudioFileStreamTrackReaderCopySampleCursorService_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double createFigAudioPacketAccessor_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void FigAudioFileStreamCursor_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FillPacketRequestFromCache_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigAudioFileStreamCursor_copy_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double AudioFileStream_FigPropertyListenerProc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double AudioFileStream_FigPropertyListenerProc_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void AudioFileStream_FigPropertyListenerProc_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void AudioFileStream_FigPropertyListenerProc_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigDataChannelResourceServer_DisposeServedState(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (dword_1EAF16D10)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = a1[1];
    if (v3)
    {
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v4)
      {
        v4(v3);
      }

      v5 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v5)
      {
        v6 = v5;
        v7 = a1[1];
        v8 = *(*(CMBaseObjectGetVTable() + 24) + 80);
        if (v8)
        {
          v8(v6, v7);
        }

        CFRelease(v6);
      }

      v9 = a1[1];
      if (v9)
      {
        CFRelease(v9);
        a1[1] = 0;
      }
    }

    v10 = a1[2];
    if (v10)
    {
      CFRelease(v10);
    }

    free(a1);
  }
}

uint64_t FigTextSampleBufferDecryptSample(uint64_t a1, opaqueCMSampleBuffer *a2, CFTypeRef *a3)
{
  cf = 0;
  blockBufferOut = 0;
  Decryptor = FigSampleBufferGetDecryptor();
  if (Decryptor)
  {
    v7 = Decryptor;
    if (Decryptor != *(a1 + 56))
    {
      v8 = CFGetTypeID(Decryptor);
      TypeID = FigCPECryptorGetTypeID();
      v10 = *(a1 + 56);
      if (v8 == TypeID)
      {
        *(a1 + 56) = v7;
        CFRetain(v7);
        if (v10)
        {
          CFRelease(v10);
        }
      }

      else if (v10)
      {
        CFRelease(*(a1 + 56));
        *(a1 + 56) = 0;
      }
    }
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  if (FigCPEIsSupportedFormatDescription(FormatDescription) && !*(a1 + 56))
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 0, blockBufferOut);
    goto LABEL_38;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  IsRangeContiguous = CMBlockBufferIsRangeContiguous(DataBuffer, 0, 0);
  v14 = MEMORY[0x1E695E480];
  if (IsRangeContiguous)
  {
    blockBufferOut = CFRetain(DataBuffer);
  }

  else
  {
    v15 = *MEMORY[0x1E695E480];
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v17 = CMBlockBufferCreateContiguous(v15, DataBuffer, v15, 0, 0, DataLength, 0, &blockBufferOut);
    if (v17)
    {
      goto LABEL_38;
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    v19 = blockBufferOut;
    v20 = CMBlockBufferGetDataLength(blockBufferOut);
    v32 = 0;
    v17 = CMBlockBufferCreateWithMemoryBlock(*v14, 0, v20, *v14, 0, 0, v20, 1u, &v32);
    if (!v17)
    {
      v21 = v32;
      v22 = *(CMBaseObjectGetVTable() + 16);
      if (*v22 >= 4uLL && (v23 = v22[4]) != 0)
      {
        v24 = v23(v18, v19, v21);
        if (!v24)
        {
          v25 = blockBufferOut;
          v18 = v32;
          blockBufferOut = v32;
          if (v32)
          {
            CFRetain(v32);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          goto LABEL_22;
        }

        v26 = v24;
      }

      else
      {
        v26 = 4294954514;
      }

      CFRelease(v32);
LABEL_26:
      v18 = 0;
      goto LABEL_30;
    }

LABEL_38:
    v26 = v17;
    goto LABEL_26;
  }

LABEL_22:
  if (FigCFEqual())
  {
    v26 = 0;
  }

  else
  {
    CopyWithNoData = FigSampleBufferCreateCopyWithNoData();
    if (CopyWithNoData)
    {
      v26 = CopyWithNoData;
    }

    else
    {
      v26 = CMSampleBufferSetDataBuffer(0, blockBufferOut);
      if (!v26)
      {
        *a3 = 0;
        cf = 0;
      }
    }
  }

LABEL_30:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v26;
}

uint64_t FigTextSampleBufferCopyAttributedString(uint64_t a1, const __CFAllocator *a2, CMSampleBufferRef sbuf, __CFAttributedString **a4, char *a5, _BYTE *a6, double *a7)
{
  keys[6] = *MEMORY[0x1E69E9840];
  dataPointerOut = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  AssureDefaultAttributes(a1, a2, FormatDescription);
  if (v16)
  {
    return v16;
  }

  totalLengthOut = 0;
  lengthAtOffsetOut = 0;
  v114 = *(a1 + 65);
  DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
  CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
  v18 = dataPointerOut;
  v19 = totalLengthOut;
  v20 = (dataPointerOut + 2);
  v21 = *dataPointerOut;
  dataPointerOut += 2;
  v22 = bswap32(v21);
  if ((v22 & 0x80000000) != 0)
  {
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_2_31();
    v100 = 706;
LABEL_103:
    FigSignalErrorAtGM(v96, v97, v98, v99, v100);
    return v16;
  }

  v23 = SHIWORD(v22);
  if (SHIWORD(v22) + 2 > totalLengthOut)
  {
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_2_31();
    v100 = 707;
    goto LABEL_103;
  }

  dataPointerOut = &v20[SHIWORD(v22)];
  if (SHIWORD(v22) < 2)
  {
    goto LABEL_8;
  }

  v24 = *v20;
  if (v24 == 255)
  {
    if (v18[3] == 254)
    {
      goto LABEL_97;
    }

LABEL_8:
    v25 = a2;
    v26 = v23;
    v27 = 134217984;
    v28 = 0;
    goto LABEL_9;
  }

  if (v24 != 254 || v18[3] != 255)
  {
    goto LABEL_8;
  }

LABEL_97:
  v25 = a2;
  v26 = v23;
  v27 = 256;
  v28 = 1;
LABEL_9:
  v29 = CFStringCreateWithBytes(v25, v20, v26, v27, v28);
  if (!v29)
  {
    OUTLINED_FUNCTION_62_0();
    v96 = "%s signalled err=%d at <>:%d";
    v99 = "(Fig)";
    v97 = 0;
    v98 = 4294954566;
    v100 = 719;
    goto LABEL_103;
  }

  v120 = a1;
  cf = v29;
  v30 = CFRetain(v29);
  Length = CFStringGetLength(v30);
  if (CFStringFind(v30, @"\r\n", 0).length || CFStringFind(v30, @"\n\r", 0).length)
  {
    OUTLINED_FUNCTION_1_32();
    Results = CFStringCreateArrayWithFindResults(v32, v33, v34, v141, v35);
    MutableCopy = CFStringCreateMutableCopy(a2, Length, v30);
    if (MutableCopy)
    {
      v38 = MutableCopy;
      OUTLINED_FUNCTION_1_32();
      if (CFStringFindAndReplace(v39, v40, v41, v142, v42) || (OUTLINED_FUNCTION_1_32(), CFStringFindAndReplace(v43, v44, v45, v143, v46)))
      {
        v23 = CFStringGetLength(v38);
        CFRetain(v38);
        CFRelease(cf);
        cf = v38;
        theArray = Results;
      }

      else
      {
        theArray = Results;
      }

      goto LABEL_16;
    }

    OUTLINED_FUNCTION_62_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", attrName, v103, v104);
    theArray = 0;
    v38 = Results;
    if (Results)
    {
LABEL_16:
      CFRelease(v38);
    }
  }

  else
  {
    theArray = 0;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v47 = cf;
  if (totalLengthOut <= v23 + 2)
  {
    v51 = v120;
    Mutable = CFAttributedStringCreate(a2, cf, *(v120 + 40));
    goto LABEL_23;
  }

  v48 = &v18[v19];
  v49 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFAttributedStringBeginEditing(Mutable);
  v137.location = 0;
  v137.length = 0;
  CFAttributedStringReplaceString(Mutable, v137, cf);
  v138.length = CFAttributedStringGetLength(Mutable);
  v51 = v120;
  v138.location = 0;
  CFAttributedStringSetAttributes(Mutable, v138, *(v120 + 40), 1u);
  v52 = dataPointerOut;
  if ((dataPointerOut + 8) <= v48)
  {
    attrName = *MEMORY[0x1E69631E0];
    v107 = *MEMORY[0x1E69608A8];
    v108 = *MEMORY[0x1E69607D0];
    v105 = *MEMORY[0x1E69631D8];
    v106 = *MEMORY[0x1E6960990];
    v104 = *MEMORY[0x1E6960878];
    v103 = *MEMORY[0x1E6960858];
    v122 = *MEMORY[0x1E695E4D0];
    v121 = *MEMORY[0x1E695E4C0];
    v109 = v48;
    do
    {
      v54 = bswap32(*v52);
      dataPointerOut = v52 + 4;
      v55 = *(v52 + 1);
      v56 = (v52 + 8);
      dataPointerOut = v52 + 8;
      v57 = v54 - 8;
      if ((v54 - 8) < 0 || &v56[v57] > v48)
      {
        OUTLINED_FUNCTION_62_0();
        OUTLINED_FUNCTION_2_31();
        FigSignalErrorAtGM(v93);
        v53 = v94;
        CFRelease(Mutable);
        v47 = cf;
        goto LABEL_92;
      }

      v58 = bswap32(v55);
      switch(v58)
      {
        case 0x66726364u:
          v114 = 1;
          break;
        case 0x74777270u:
          v61 = *v56;
          if (!v61)
          {
            v62 = v54 - 8;
            v63 = @"None";
            goto LABEL_54;
          }

          if (v61 == 1)
          {
            v62 = v54 - 8;
            v63 = @"AutomaticSoftWrap";
LABEL_54:
            v139.length = CFAttributedStringGetLength(Mutable);
            v139.location = 0;
            CFAttributedStringSetAttribute(Mutable, v139, attrName, v63);
            v57 = v62;
          }

          break;
        case 0x74626F78u:
          v64 = bswap32(*(v52 + 4));
          v65 = bswap32(*(v52 + 5));
          v11 = (v65 >> 16);
          v12 = (v64 >> 16);
          v13 = ((bswap32(*(v52 + 7)) >> 16) - (v65 >> 16));
          v14 = ((bswap32(*(v52 + 6)) >> 16) - (v64 >> 16));
          break;
        case 0x7374796Cu:
          v110 = v54 - 8;
          desc = *v51;
          keys[0] = v108;
          keys[1] = v107;
          keys[2] = v106;
          keys[3] = v105;
          keys[4] = v104;
          keys[5] = v103;
          v134 = 0u;
          v135 = 0u;
          *values = 0u;
          fontNameOut = 0;
          valuePtr = 0.0;
          v59 = *v56;
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          else
          {
            Count = 0;
          }

          if (v110 < 0xE)
          {
            goto LABEL_51;
          }

          v66 = bswap32(v59) >> 16;
          if (((12 * v66) | 2uLL) > v110 || Mutable == 0)
          {
            goto LABEL_51;
          }

          v69 = CFAttributedStringGetLength(Mutable);
          if (v66 >= 1)
          {
            v70 = 0;
            allocator = v49;
            v119 = v52 + 10;
            v115 = v66;
            v116 = v69;
            v117 = Mutable;
            while (1)
            {
              v71 = &v119[12 * v70];
              v72 = bswap32(*v71);
              if ((v72 & 0x80000000) != 0)
              {
                break;
              }

              v73 = HIWORD(v72);
              v74 = v73;
              if (v69 < v73 || (v75 = bswap32(*(v71 + 1)) >> 16, v76 = v75, v77 = v75 - v73, v77 < 0) || v69 < v75)
              {
                v49 = allocator;
                break;
              }

              v78 = v71[6];
              v126 = v71[7];
              v127 = *(v71 + 2);
              if (Count < 1)
              {
                v81 = v73;
              }

              else
              {
                v79 = 0;
                v80 = 0;
                v81 = v73;
                do
                {
                  v82 = *CFArrayGetValueAtIndex(theArray, v79);
                  LODWORD(v83) = v82 < v76;
                  v84 = v82 < v74;
                  v85 = v82 < v74;
                  if (v84)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    v83 = v83;
                  }

                  v81 -= v85;
                  v77 -= v83;
                  v79 = ++v80;
                }

                while (Count > v80);
              }

              if (v78)
              {
                v86 = v122;
              }

              else
              {
                v86 = v121;
              }

              if ((v78 & 2) != 0)
              {
                v87 = v122;
              }

              else
              {
                v87 = v121;
              }

              values[0] = v86;
              values[1] = v87;
              if ((v78 & 4) != 0)
              {
                v88 = v122;
              }

              else
              {
                v88 = v121;
              }

              *&v134 = v88;
              valuePtr = v126;
              v49 = allocator;
              *(&v134 + 1) = CFNumberCreate(allocator, kCFNumberCGFloatType, &valuePtr);
              *&v135 = FigCreateCFArrayFromColorValues();
              CMTextFormatDescriptionGetFontName(desc, __rev16(v127), &fontNameOut);
              if (fontNameOut)
              {
                *(&v135 + 1) = CFRetain(fontNameOut);
                v89 = 6;
              }

              else
              {
                v89 = 5;
              }

              Mutable = v117;
              v90 = CFDictionaryCreate(allocator, keys, values, v89, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v140.location = v81;
              v140.length = v77;
              CFAttributedStringSetAttributes(v117, v140, v90, 0);
              CFRelease(v90);
              for (i = 0; i != 6; ++i)
              {
                v92 = values[i];
                if (v92)
                {
                  CFRelease(v92);
                  values[i] = 0;
                }
              }

              ++v70;
              v69 = v116;
              if (v70 == v115)
              {
                goto LABEL_52;
              }
            }

LABEL_51:
            OUTLINED_FUNCTION_62_0();
            OUTLINED_FUNCTION_2_31();
            FigSignalErrorAtGM(v68);
          }

LABEL_52:
          v51 = v120;
          v48 = v109;
          v57 = v110;
          break;
      }

      v52 = &dataPointerOut[v57];
      dataPointerOut = v52;
    }

    while ((v52 + 8) <= v48);
  }

  CFAttributedStringEndEditing(Mutable);
  v47 = cf;
LABEL_23:
  *a4 = Mutable;
  if (Mutable)
  {
    if (a5)
    {
      *a5 = v114;
    }

    if (a6)
    {
      *a6 = *(v51 + 64);
    }

    v53 = 0;
    if (a7)
    {
      *a7 = v11;
      a7[1] = v12;
      a7[2] = v13;
      a7[3] = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_62_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", attrName, v103, v104);
    v53 = v101;
  }

LABEL_92:
  if (theArray)
  {
    CFRelease(theArray);
  }

  CFRelease(v47);
  return v53;
}

double FigByteFlumeBaseInitialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 16) = 1;
  if (!FigRetainProxyCreate())
  {
    v6 = dispatch_queue_create("com.apple.coremedia.byteflume", 0);
    *(a2 + 8) = v6;
    if (!v6)
    {
      v7 = qword_1EAF16D28;

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954361, "FigByteFlumeCommon", 213, v3);
    }
  }

  return result;
}

CFMutableDictionaryRef FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
    OUTLINED_FUNCTION_228();
    FigCFDictionarySetValueFromKeyInDict();
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  }

  return Mutable;
}

uint64_t FigByteFlumeCreateReportingAgent(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const void *a5, int a6, const __CFDictionary *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v14 = Mutable;
    if (a7)
    {
      a7 = FigRCLCopyConfigurationGroupName(a7);
      if (a7)
      {
        v15 = OUTLINED_FUNCTION_228();
        CFDictionarySetValue(v15, v16, v17);
      }
    }

    cf = a7;
    v51 = a1;
    if (a2)
    {
      v48 = a5;
      Value = FigCFDictionaryGetValue();
      if (!Value || (v19 = Value, v20 = CFGetTypeID(Value), v20 != CFStringGetTypeID()))
      {
        v19 = 0;
      }

      v47 = a6;
      v21 = FigCFDictionaryGetValue();
      v22 = FigCFDictionaryGetValue();
      if (!v22 || (v23 = v22, v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
      {
        v23 = 0;
      }

      v46 = v21;
      v25 = FigCFDictionaryGetValue();
      if (!v25 || (v26 = v25, v27 = CFGetTypeID(v25), v27 != CFStringGetTypeID()))
      {
        v26 = 0;
      }

      v28 = v14;
      v29 = FigCFDictionaryGetValue();
      if (!v29 || (v30 = v29, v31 = CFGetTypeID(v29), v31 != CFStringGetTypeID()))
      {
        v30 = 0;
      }

      v32 = FigCFDictionaryGetValue();
      if (!v32 || (v33 = v32, v34 = v19, v35 = a3, v36 = CFGetTypeID(v32), v37 = v36 == CFDictionaryGetTypeID(), a3 = v35, v19 = v34, !v37))
      {
        v33 = 0;
      }

      v14 = v28;
      if (v23)
      {
        CFDictionarySetValue(v28, @"MediaIdentifier", v23);
      }

      if (v26)
      {
        CFDictionarySetValue(v28, @"ContentProvider", v26);
      }

      a5 = v48;
      if (v30)
      {
        CFDictionarySetValue(v28, @"StorefrontID", v30);
      }

      a6 = v47;
      if (v33)
      {
        CFDictionarySetValue(v14, @"ServiceInformationKey", v33);
      }

      a1 = v51;
      v38 = v46;
    }

    else
    {
      v38 = 0;
      v19 = 0;
    }

    if (a3)
    {
      a3 = CFDictionaryGetValue(a3, @"X-Playback-Session-Id");
    }

    if (a6)
    {
      v39 = 0;
    }

    else
    {
      v39 = FigIsItOKToLogURLs() != 0;
    }

    v40 = (a1 + 32);
    FigReportingAgentCreate(a3, 0, a4, v19, v38, a5, 2, v14, v39, (a1 + 32));
    if (dword_1EAF16D30 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      a1 = v51;
    }

    v42 = *v40;
    if (*v40)
    {
      v43 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v43)
      {
        v43(v42, 0);
      }
    }

    CFRelease(v14);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v44 = MGCopyAnswer();
  *(a1 + 40) = *MEMORY[0x1E695E4D0] == v44;
  if (v44)
  {
    CFRelease(v44);
  }

  result = FigGetCFPreferenceNumberWithDefault();
  *(a1 + 44) = result;
  return result;
}

uint64_t pfp_replyingMessageHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  cf = 0;
  v8 = 0;
  BlockBufferDataWithSize = FigXPCMessageCreateBlockBufferDataWithSize();
  if (BlockBufferDataWithSize || (BlockBufferDataWithSize = FigXPCMessageCopyCFString(), BlockBufferDataWithSize))
  {
    v6 = BlockBufferDataWithSize;
    v5 = 0;
  }

  else
  {
    PlaylistFileParserFromDataInProcess = CreatePlaylistFileParserFromDataInProcess(cf, &v8);
    v5 = v8;
    if (!PlaylistFileParserFromDataInProcess)
    {
      PlaylistFileParserFromDataInProcess = FigXPCMessageSetCFArray();
    }

    v6 = PlaylistFileParserFromDataInProcess;
  }

  PlaylistFileParserDestroy(v5);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

void CreatePlaylistFileParserFromData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreatePlaylistFileParserFromData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreatePlaylistFileParserFromDataInProcess_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreatePlaylistFileParserFromDataInProcess_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreatePlaylistFileParserFromDataInProcess_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void CreatePlaylistFileParserFromDataInProcess_cold_4(const void *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

void CreatePlaylistFileParserFromDataInProcess_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

CFTypeRef FigCopyUTITypesForFormatReaderIdentifier(CFTypeRef cf1)
{
  v1 = cf1;
  theDict = 0;
  if (!cf1)
  {
    return v1;
  }

  if (CFEqual(cf1, @"com.apple.coremedia.formatreader.quicktime-iso"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>";
  }

  else if (CFEqual(v1, @"com.apple.coremedia.formatreader.webvtt"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>";
  }

  else if (CFEqual(v1, @"com.apple.coremedia.formatreader.mpeg"))
  {
    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MPG2</string>\t\t\t<string>mMPG</string>           <string>m2ts</string>\t\t\t<string>MPEG</string>\t\t\t<string>MPG </string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/mpeg</string>\t\t\t<string>video/x-mpeg</string>\t\t\t<string>video/mpeg2</string>\t\t\t<string>video/x-mpeg2</string>\t\t\t<string>video/mpg</string>\t\t\t<string>video/x-mpg</string>\t\t\t<string>video/mp2t</string>\t\t\t<string>video/mp2p</string>\t\t\t<string>video/x-mp2p</string>\t\t\t<string>video/mp1s</string>\t\t\t<string>video/x-mp1s</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mpeg</string>\t\t\t<string>m2v</string>\t\t\t<string>mpe</string>\t\t\t<string>mpg</string>\t\t\t<string>mp2</string>\t\t\t<string>mod</string>\t\t\t<string>vob</string>\t\t\t<string>m2ts</string>\t\t\t<string>m2t</string>\t\t\t<string>ts</string>\t\t\t<string>mts</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mpeg</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.mpeg-2-video</string>\t\t\t<string>public.mpeg-2-transport-stream</string>\t\t</array>\t</dict></dict></plist>";
  }

  else
  {
    if (!CFEqual(v1, @"com.apple.coremedia.formatreader.audiofilestream"))
    {
      goto LABEL_18;
    }

    v2 = "<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>mp3!</string>\t\t\t<string>MP3!</string>\t\t\t<string>MPG3</string>\t\t\t<string>mpg3</string>\t\t\t<string>Mp3 </string>\t\t\t<string>MP3 </string>\t\t\t<string>amr </string>\t\t\t<string>amrw</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>audio/mpeg</string>\t\t\t<string>audio/AMR</string>\t\t\t<string>audio/AMR-WB</string>\t\t\t<string>audio/aac</string>\t\t\t<string>audio/flac</string>\t\t\t<string>audio/usac</string>\t\t\t<string>audio/ogg</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mp3</string>\t\t\t<string>m1a</string>\t\t\t<string>m2a</string>\t\t\t<string>mpa</string>\t\t\t<string>mp2</string>\t\t\t<string>mp1</string>\t\t\t<string>aac</string>\t\t\t<string>adts</string>\t\t\t<string>amr</string>\t\t\t<string>awb</string>\t\t\t<string>ac3</string>\t\t\t<string>ec3</string>\t\t\t<string>eac3</string>\t\t\t<string>flac</string>\t\t\t<string>latm</string>\t\t\t<string>loas</string>\t\t\t<string>xhe</string>\t\t\t<string>ogg</string>\t\t\t<string>oga</string>\t\t\t<string>opus</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>public.mp3</string>\t\t\t<string>public.mp2</string>\t\t\t<string>public.aac-audio</string>\t\t\t<string>org.3gpp.adaptive-multi-rate-audio</string>\t\t\t<string>public.ac3-audio</string>\t\t\t<string>public.enhanced-ac3-audio</string>\t\t\t<string>org.xiph.flac</string>\t\t\t<string>public.mp4a-loas</string>\t\t\t<string>org.xiph.ogg-audio</string>\t\t</array>\t</dict></dict></plist>";
  }

  FigFormatReaderCreatePropertyListDictionaryFromCString(v2, 0, &theDict);
  if (!v3)
  {
    if (!theDict)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
    if (Value)
    {
      v5 = CFDictionaryGetValue(Value, @"com.apple.uti");
      v1 = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      goto LABEL_12;
    }
  }

LABEL_18:
  v1 = 0;
LABEL_12:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v1;
}

double FigFormatReaderCreatePropertyListDictionaryFromCString(char *__s, int a2, const __CFDictionary **a3)
{
  if (a3)
  {
    *a3 = 0;
    if (__s && (v6 = *MEMORY[0x1E695E480], v7 = strlen(__s), (v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], __s, v7, *MEMORY[0x1E695E498])) != 0))
    {
      v9 = v8;
      v10 = CFPropertyListCreateWithData(v6, v8, 0, 0, 0);
      if (v10)
      {
        v11 = v10;
        if (a2)
        {
          if (qword_1ED4CA6E8)
          {
            CFDictionaryGetValue(v10, @"ContainerLabelling");
            FigCFDictionaryGetValueIfPresent();
          }
        }

        *a3 = v11;
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_10();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0, v14);
      }

      CFRelease(v9);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_10();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

uint64_t FigCopySetOfFormatReaderSupportedFileExtensions()
{
  OUTLINED_FUNCTION_14_9();
  v3 = v2;
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"public.filename-extension");
  }

  return v3;
}

const void *FigCopyQTMovieMIMETypes()
{
  theDict = 0;
  ensureRegistryInitialized();
  if (v0)
  {
    return 0;
  }

  FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>com.apple.ostype</key>\t\t<array>\t\t\t<string>MooV</string>\t\t</array>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>video/quicktime</string>\t\t\t<string>video/mp4</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>mov</string>\t\t\t<string>qt</string>\t\t\t<string>qta</string>\t\t\t<string>mqv</string>\t\t\t<string>mp4</string>\t\t\t<string>m4a</string>\t\t\t<string>m4v</string>\t\t\t<string>m4b</string>\t\t\t<string>m4p</string>\t\t\t<string>m4r</string>\t\t\t<string>aax</string>\t\t\t<string>3gp</string>\t\t\t<string>3gpp</string>\t\t\t<string>3g2</string>\t\t\t<string>3gp2</string>\t\t\t<string>aivu</string>\t\t</array>\t\t<key>com.apple.uti</key>\t\t<array>\t\t\t<string>com.apple.quicktime-movie</string>\t\t\t<string>com.apple.quicktime-audio</string>\t\t\t<string>public.mpeg-4</string>\t\t\t<string>public.mpeg-4-audio</string>\t\t\t<string>com.apple.m4a-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio</string>\t\t\t<string>com.apple.protected-mpeg-4-audio-b</string>\t\t\t<string>com.apple.m4v-video</string>\t\t\t<string>com.apple.mpeg-4-ringtone</string>\t\t\t<string>com.audible.aax-audiobook</string>\t\t\t<string>public.3gpp</string>\t\t\t<string>public.3gpp2</string>\t\t\t<string>com.apple.immersive-video</string>\t\t</array>\t</dict></dict></plist>", 1, &theDict);
  if (v1)
  {
    goto LABEL_11;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  if (Value)
  {
    v3 = CFDictionaryGetValue(Value, @"public.mime-type");
    v4 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    goto LABEL_7;
  }

LABEL_11:
  v4 = 0;
LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v4;
}

const void *FigCopyWebVTTMIMETypes()
{
  theDict = 0;
  ensureRegistryInitialized();
  if (v0)
  {
    return 0;
  }

  FigFormatReaderCreatePropertyListDictionaryFromCString("<?xml version=1.0 encoding=UTF-8?><!DOCTYPE plist PUBLIC -//Apple Computer//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd><plist version=1.0><dict>\t<key>ContainerLabelling</key>\t<dict>\t\t<key>public.mime-type</key>\t\t<array>\t\t\t<string>text/vtt</string>\t\t</array>\t\t<key>public.filename-extension</key>\t\t<array>\t\t\t<string>vtt</string>\t\t\t<string>webvtt</string>\t\t</array>\t\t\t<key>com.apple.uti</key>\t\t\t<array>\t\t\t\t<string>org.w3.webvtt</string>\t\t\t</array>\t</dict></dict></plist>", 1, &theDict);
  if (v1)
  {
    goto LABEL_11;
  }

  if (!theDict)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  if (Value)
  {
    v3 = CFDictionaryGetValue(Value, @"public.mime-type");
    v4 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    goto LABEL_7;
  }

LABEL_11:
  v4 = 0;
LABEL_7:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v4;
}

void *FigCopyMPEGTransportStreamMIMETypes()
{
  ensureRegistryInitialized();
  if (v0)
  {
    return 0;
  }

  v1 = CFArrayCreate(*MEMORY[0x1E695E480], &kFigRepresentativeMIMEType_MPEG2TS, 1, MEMORY[0x1E695E9C0]);
  CFGetAllocator(v1);
  MutableCopy = FigCFArrayCreateMutableCopy();
  CFArrayGetCount(v1);
  OUTLINED_FUNCTION_4_27();
  v5.location = 0;
  CFArrayApplyFunction(v1, v5, v3, MutableCopy);
  if (v1)
  {
    CFRelease(v1);
  }

  return MutableCopy;
}

uint64_t FigCopySetOfFormatReaderSupportedMIMETypes()
{
  OUTLINED_FUNCTION_14_9();
  v3 = v2;
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"public.mime-type");
  }

  return v3;
}

uint64_t FigCopySetOfFormatReaderSupportedFileTypes()
{
  OUTLINED_FUNCTION_14_9();
  v3 = v2;
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"com.apple.ostype");
  }

  return v3;
}

uint64_t FigCopySetOfFormatReaderSupportedUTIs()
{
  OUTLINED_FUNCTION_14_9();
  v3 = v2;
  if (!v2)
  {
    *v0 = copySetOfRegistryEntryLabels(v1, @"com.apple.uti");
  }

  return v3;
}

uint64_t FigFormatReaderCreateForStreamReturningResults(uint64_t a1, const __CFDictionary *a2, const __CFAllocator *a3, uint64_t a4, CFTypeRef *a5, CFTypeRef *a6, _DWORD *a7, CFTypeRef *a8)
{
  *v49 = 0u;
  *v50 = 0u;
  *cf = 0u;
  ensureRegistryInitialized();
  if (v16)
  {
    goto LABEL_49;
  }

  if (a2)
  {
    v17 = a4;
    Value = CFDictionaryGetValue(a2, @"Selection_OutOfBandMIMEType");
    v19 = CFDictionaryGetValue(a2, @"Selection_OutOfBandFileType");
    a2 = CFDictionaryGetValue(a2, @"Selection_AllowableTypes");
    if (Value)
    {
      v20 = OUTLINED_FUNCTION_5_22();
      AttemptMIMETypeInstantiation(v20, v21, v17, Value, a2, v22);
      goto LABEL_30;
    }

    if (v19)
    {
      v23 = OUTLINED_FUNCTION_5_22();
      v26 = v17;
      v27 = v19;
      v28 = a2;
LABEL_7:
      AttemptUTIInstantiation(v23, v24, v26, v27, v28, v25);
      goto LABEL_30;
    }

    a4 = v17;
  }

  anURL = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v30)
  {
    v30(CMBaseObject, *MEMORY[0x1E695FFA0], a3, &anURL);
    if (anURL)
    {
      v31 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
      if (v31)
      {
        v32 = v31;
        v33 = a2;
        v34 = CFStringFind(v31, @".", 4uLL);
        if (v34.length >= 1)
        {
          Length = CFStringGetLength(v32);
          v53.location = v34.location + 1;
          v53.length = Length + ~v34.location;
          v36 = CFStringCreateWithSubstring(a3, v32, v53);
          if (v36)
          {
            v37 = v36;
            AttemptInstantiationForMatchingLabel(a1, a4, @"public.filename-extension", 0, v36, 1, v33, cf);
            CFRelease(v37);
          }
        }

        CFRelease(v32);
        a2 = v33;
      }

      if (anURL)
      {
        CFRelease(anURL);
      }
    }
  }

  if (!v49[1])
  {
    v38 = a2;
    anURL = 0;
    v39 = CMByteStreamGetCMBaseObject();
    v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v40 && !v40(v39, *MEMORY[0x1E6960DC8], a3, &anURL))
    {
      valuePtr = 0;
      CFNumberGetValue(anURL, kCFNumberSInt32Type, &valuePtr);
      v41 = CFStringCreateWithBytes(a3, &valuePtr, 4, 0, 0);
      if (v41)
      {
        AttemptInstantiationForMatchingLabel(a1, a4, @"com.apple.ostype", 1, v41, 0, v38, cf);
        v42 = 0;
LABEL_23:
        if (anURL)
        {
          CFRelease(anURL);
        }

        if ((v42 & 1) == 0)
        {
          CFRelease(v41);
        }

        if (!v49[1])
        {
          v43 = OUTLINED_FUNCTION_5_22();
          AttemptMIMETypeInstantiation(v43, v44, a4, 0, v38, v45);
          if (!v49[1])
          {
            AttemptSuggestedFileNameInstantiation(a3, a1, a4, v38, cf);
            if (!v49[1])
            {
              v23 = OUTLINED_FUNCTION_5_22();
              v26 = a4;
              v27 = 0;
              v28 = v38;
              goto LABEL_7;
            }
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = 1;
    goto LABEL_23;
  }

LABEL_30:
  if (LODWORD(v49[0]) || !v49[1])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
LABEL_49:
    v46 = v16;
    goto LABEL_36;
  }

  *a5 = v49[1];
  v49[1] = 0;
  if (a7)
  {
    *a7 = v50[1];
  }

  v46 = 0;
  if (a6)
  {
    *a6 = v50[0];
    v50[0] = 0;
  }

LABEL_36:
  if (a8)
  {
    *a8 = cf[0];
  }

  else if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v49[1])
  {
    CFRelease(v49[1]);
  }

  if (v50[0])
  {
    CFRelease(v50[0]);
  }

  return v46;
}

const __CFString *FigFormatReaderUtilityCopyRepresentativeMIMETypeForMIMEType(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    ensureRegistryInitialized();
    if (v2)
    {
      return 0;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v1);
    CFStringLowercase(MutableCopy, 0);
    v5 = MutableCopy;
    cf = 0;
    CFDictionaryApplyFunction(qword_1ED4CA6E8, FFRFindRepresentativeMIMEType, &v5);
    v4 = cf;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (!v4)
    {
      return 0;
    }

    else
    {
      return CFRetain(v4);
    }
  }

  return result;
}

uint64_t FigFormatReaderUtilityEstablishCombinedDataRateProfileForTracksCommon(uint64_t a1, const __CFArray *a2, void *a3, unsigned int a4, CMTime *a5)
{
  v230 = 0;
  v231[0] = 0;
  v229 = 0;
  *&v228.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v228.epoch = v6;
  v185 = *&v228.value;
  *&v227.value = *&v228.value;
  v227.epoch = v6;
  if (!a1 || !a2 || !a3)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_73;
  }

  Duration = FigFormatReaderUtilityGetDuration(a1, 1, &v228);
  if (Duration)
  {
    goto LABEL_73;
  }

  theArray = a2;
  v13 = MEMORY[0x1E6960CC0];
  if ((v228.flags & 0x1D) != 1 || (time1 = v228, v196 = *MEMORY[0x1E6960CC0], *&time2.value = *MEMORY[0x1E6960CC0], v14 = *(MEMORY[0x1E6960CC0] + 16), time2.epoch = v14, CMTimeCompare(&time1, &time2) < 1))
  {
    v227 = *v13;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_73;
  }

  time1 = v228;
  CMTimeMultiplyByFloat64(&v227, &time1, 1.0 / a4);
  bzero(a3, 8 * a4);
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v16 = 0;
    v161 = a5;
    v167 = v5;
    v155 = Count;
LABEL_9:
    v224 = 0;
    *&time1.value = v196;
    time1.epoch = v14;
    v173 = v16;
    if (!FigCFArrayGetInt32AtIndex())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_20_0();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_73;
    }

    v17 = v224;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v18)
    {
      goto LABEL_74;
    }

    Duration = v18(a1, v17, v231, 0);
    if (Duration)
    {
      goto LABEL_73;
    }

    v19 = v231[0];
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v20)
    {
LABEL_74:
      v133 = 4294954514;
      goto LABEL_75;
    }

    Duration = v20(v19, &v230);
    if (!Duration)
    {
      v21 = v230;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v22)
      {
        Duration = v22(v21, &v229);
        if (!Duration)
        {
          v23 = 0;
          v24 = 0;
          while (1)
          {
            v222 = 0;
            v223 = 0;
            *multiplier = 0;
            v220 = 0;
            *&time2.value = v185;
            time2.epoch = v6;
            v25 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 152);
            if (!v25)
            {
              goto LABEL_74;
            }

            v135 = &v220;
            v142 = 0;
            Duration = v25(v21, 0, 0, 0, &v223, multiplier, 0, &v220 + 1);
            if (Duration)
            {
              goto LABEL_73;
            }

            if (v220)
            {
              v26 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 56);
              if (!v26)
              {
                goto LABEL_74;
              }

              Duration = v26(v21, &time2);
              if (Duration)
              {
                goto LABEL_73;
              }

              time = time2;
              CMTimeMultiply(&rhs, &time, multiplier[0]);
              OUTLINED_FUNCTION_2_32();
              v27 = CMTimeAdd(&time1, &time, &rhs);
              v35 = OUTLINED_FUNCTION_11_12(v27, v28, v29, v30, v31, v32, v33, v34, &v220, 0, v149, v155, v161, v167, v173, theArray, v185, *(&v185 + 1), v196, *(&v196 + 1), v207, v213, v214, *(&v214 + 1), v215, v216, time.value, *&time.timescale, time.epoch, v218, *&rhs.value, rhs.epoch);
              OUTLINED_FUNCTION_1_33();
              Seconds = CMTimeGetSeconds(&rhs);
              if ((OUTLINED_FUNCTION_0_35(v37, v38, v39, v40, v41, v42, v43, v44, v136, v143, v150, v156, v162, v168, v174, theArrayc, v186, v191, v197, v202, v208, v213, v214, *(&v214 + 1), v215, v216, *&time.value, time.epoch, v218, *&rhs.value, rhs.epoch) & 0x80000000) == 0)
              {
                v45 = (v35 * v24 / Seconds);
                do
                {
                  *(a3 + v23) += v45;
                  OUTLINED_FUNCTION_2_32();
                  v214 = *&v227.value;
                  OUTLINED_FUNCTION_7_13();
                  v49 = CMTimeSubtract(v48, v46, v47);
                  v67 = OUTLINED_FUNCTION_6_20(v49, v50, v51, v52, v53, v54, v55, v56, v57, v137, v144, v149, v155, v161, v167, v173, theArray, v185, *(&v185 + 1), v196, *(&v196 + 1), v207, v213, v214, *(&v214 + 1), v215, v216, time.value, *&time.timescale, time.epoch, v218, v58, rhs.value);
                  v24 -= v45;
                  if (v23 + 1 >= a4)
                  {
                    OUTLINED_FUNCTION_9_12(v59, v60, v61, v62, v63, v64, v65, v66, v67, v138, v145, v151, v157, v163, v169, v175, theArraya, v187, v192, v68);
                  }

                  else
                  {
                    ++v23;
                  }
                }

                while ((OUTLINED_FUNCTION_0_35(v59, v60, v61, v62, v63, v64, v65, v66, v138, v145, v151, v157, v163, v169, v175, theArraya, v187, v192, v198, v203, v209, v213, v214, *(&v214 + 1), v215, v216, *&time.value, time.epoch, v218, *&rhs.value, rhs.epoch) & 0x80000000) == 0);
              }

              LOBYTE(v69) = 1;
            }

            else
            {
              v213 = 0;
              if (*multiplier >= 1)
              {
                v70 = 0;
                while (1)
                {
                  v71 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 56);
                  if (!v71)
                  {
                    goto LABEL_74;
                  }

                  Duration = v71(v21, &time2);
                  if (Duration)
                  {
                    goto LABEL_73;
                  }

                  if (!v70 || !HIBYTE(v220))
                  {
                    v72 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 144);
                    if (!v72)
                    {
                      goto LABEL_74;
                    }

                    Duration = v72(v21, 0, &v213, 0, 0);
                    if (Duration)
                    {
                      goto LABEL_73;
                    }
                  }

                  OUTLINED_FUNCTION_2_32();
                  v214 = *&time2.value;
                  OUTLINED_FUNCTION_7_13();
                  v76 = CMTimeAdd(v75, v73, v74);
                  OUTLINED_FUNCTION_6_20(v76, v77, v78, v79, v80, v81, v82, v83, v84, v135, v142, v149, v155, v161, v167, v173, theArray, v185, *(&v185 + 1), v196, *(&v196 + 1), v207, v213, v214, *(&v214 + 1), v215, v216, time.value, *&time.timescale, time.epoch, v218, v85, rhs.value);
                  v94 = OUTLINED_FUNCTION_11_12(v86, v87, v88, v89, v90, v91, v92, v93, v139, v146, v152, v158, v164, v170, v176, theArrayd, v188, v193, v199, v204, v210, v213, v214, *(&v214 + 1), v215, v216, time.value, *&time.timescale, time.epoch, v218, *&rhs.value, rhs.epoch);
                  OUTLINED_FUNCTION_1_33();
                  v95 = CMTimeGetSeconds(&rhs);
                  if (OUTLINED_FUNCTION_0_35(v96, v97, v98, v99, v100, v101, v102, v103, v140, v147, v153, v159, v165, v171, v177, theArraye, v189, v194, v200, v205, v211, v213, v214, *(&v214 + 1), v215, v216, *&time.value, time.epoch, v218, *&rhs.value, rhs.epoch) >= 1)
                  {
                    v21 = (v94 * v24 / v95);
                    do
                    {
                      *(a3 + v23) += v21;
                      OUTLINED_FUNCTION_2_32();
                      v214 = *&v227.value;
                      OUTLINED_FUNCTION_7_13();
                      v107 = CMTimeSubtract(v106, v104, v105);
                      v125 = OUTLINED_FUNCTION_6_20(v107, v108, v109, v110, v111, v112, v113, v114, v115, v135, v142, v149, v155, v161, v167, v173, theArray, v185, *(&v185 + 1), v196, *(&v196 + 1), v207, v213, v214, *(&v214 + 1), v215, v216, time.value, *&time.timescale, time.epoch, v218, v116, rhs.value);
                      v24 -= v21;
                      if (v23 + 1 >= a4)
                      {
                        OUTLINED_FUNCTION_9_12(v117, v118, v119, v120, v121, v122, v123, v124, v125, v141, v148, v154, v160, v166, v172, v178, theArrayb, v190, v195, v126);
                      }

                      else
                      {
                        ++v23;
                      }
                    }

                    while (OUTLINED_FUNCTION_0_35(v117, v118, v119, v120, v121, v122, v123, v124, v141, v148, v154, v160, v166, v172, v178, theArrayb, v190, v195, v201, v206, v212, v213, v214, *(&v214 + 1), v215, v216, *&time.value, time.epoch, v218, *&rhs.value, rhs.epoch) > 0);
                  }

                  v127 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 168);
                  if (v127)
                  {
                    v128 = v127(v21, 1, &v222);
                  }

                  else
                  {
                    v128 = -12782;
                  }

                  if (v222 != 1 && v128 == 0)
                  {
                    v130 = -12840;
                  }

                  else
                  {
                    v130 = v128;
                  }

                  if (++v70 >= *multiplier || v130)
                  {
                    v69 = v130 == 0;
                    goto LABEL_56;
                  }
                }
              }

              v69 = 1;
LABEL_56:
              *multiplier = 0;
              if (!v69)
              {
                goto LABEL_62;
              }
            }

            v131 = multiplier[0];
            if (*multiplier < 1)
            {
LABEL_62:
              if (!v69)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v132 = *(*(OUTLINED_FUNCTION_12_11() + 16) + 168);
              if (!v132 || v132(v21, v131, &v222) || v222 != *multiplier)
              {
LABEL_63:
                if (v229)
                {
                  CFRelease(v229);
                  v229 = 0;
                }

                a5 = v161;
                if (v230)
                {
                  CFRelease(v230);
                  v230 = 0;
                }

                if (v231[0])
                {
                  CFRelease(v231[0]);
                  v231[0] = 0;
                }

                v16 = v173 + 1;
                if (v173 + 1 != v155)
                {
                  goto LABEL_9;
                }

                goto LABEL_70;
              }
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_74;
    }

LABEL_73:
    v133 = Duration;
    goto LABEL_75;
  }

LABEL_70:
  v133 = 0;
  if (a5)
  {
    *a5 = v227;
  }

LABEL_75:
  if (v229)
  {
    CFRelease(v229);
  }

  if (v230)
  {
    CFRelease(v230);
  }

  if (v231[0])
  {
    CFRelease(v231[0]);
  }

  return v133;
}

uint64_t FigFormatReaderUtilityGetDuration(uint64_t a1, int a2, CMTime *a3)
{
  v15 = **&MEMORY[0x1E6960C70];
  dictionaryRepresentation = 0;
  BOOLean = 0;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = v6(a1, @"AccurateDurationIsKnown", *MEMORY[0x1E695E480], &BOOLean);
  if (!v8)
  {
    if (CFBooleanGetValue(BOOLean))
    {
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v10 = kFigFormatReaderProperty_NominalDuration;
        goto LABEL_9;
      }
    }

    else
    {
      if (!a2)
      {
        v11 = 4294949523;
        goto LABEL_12;
      }

      v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v9)
      {
        v10 = kFigFormatReaderProperty_EstimatedDuration;
LABEL_9:
        v8 = v9(a1, *v10, v7, &dictionaryRepresentation);
        if (!v8)
        {
          CMTimeMakeFromDictionary(&v15, dictionaryRepresentation);
          v11 = 0;
          goto LABEL_12;
        }

        goto LABEL_20;
      }
    }

LABEL_11:
    v11 = 4294954514;
    goto LABEL_12;
  }

LABEL_20:
  v11 = v8;
LABEL_12:
  if (a3)
  {
    *a3 = v15;
  }

  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v11;
}

uint64_t RegisterStaticFormatReader(char *a1, uint64_t a2)
{
  theDict = 0;
  FigFormatReaderCreatePropertyListDictionaryFromCString(a1, 1, &theDict);
  if (v3)
  {
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(theDict, @"ContainerLabelling");
  v5 = malloc_type_calloc(1uLL, 0x18uLL, 0xF00404EBE86FAuLL);
  if (!v5)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, theDict, v11);
LABEL_10:
    v7 = v3;
    goto LABEL_6;
  }

  v6 = v5;
  *v5 = a2;
  v5[1] = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6[2] = 0;
  CFArrayAppendValue(_MergedGlobals_29, v6);
  v7 = 0;
LABEL_6:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v7;
}

uint64_t figTTMLDocumentWriterRegionAttributeInserter_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v16 = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &v16);
  if (v7)
  {
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_17:
    v7 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, a2);
    goto LABEL_18;
  }

  v8 = FigCaptionRegionGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v9)
  {
LABEL_8:
    v12 = 4294954514;
    goto LABEL_19;
  }

  v7 = v9(v8, *MEMORY[0x1E6961338], v6, &cf);
  if (v7)
  {
    goto LABEL_18;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_top;
LABEL_15:
    v13 = *v11;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_bottom;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_left;
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v10 = *DerivedStorage;
    v11 = kFigTTML_AttributeValue_region_right;
    goto LABEL_15;
  }

  if (!cf || !CFStringGetLength(cf))
  {
    goto LABEL_17;
  }

  v10 = *DerivedStorage;
  v13 = cf;
LABEL_16:
  v7 = FigTTMLDocumentWriterSetAttribute(v10, @"region", v13);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  v12 = v7;
LABEL_19:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

__CFDictionary *FigMentorNotificationPayloadCreate(uint64_t a1, const void *a2, uint64_t a3, int a4, const void *a5, int a6)
{
  v9 = a3;
  if (!a2 && !a3 && !a5)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (Mutable)
  {
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"Mentor_Order", a2);
    }

    if (v9)
    {
      FigCFDictionarySetInt32();
    }

    if (FigCFEqual() || FigCFEqual())
    {
      v13 = *MEMORY[0x1E695E4D0];
      v14 = *MEMORY[0x1E695E4C0];
      v15 = (a4 ? *MEMORY[0x1E695E4D0] : *MEMORY[0x1E695E4C0]);
      CFDictionarySetValue(v12, @"Mentor_SamplesWereGenerated", v15);
      if (FigCFEqual())
      {
        if (a6)
        {
          v16 = v13;
        }

        else
        {
          v16 = v14;
        }

        CFDictionarySetValue(v12, @"Mentor_LastsForever", v16);
      }
    }

    if (a5)
    {
      CFDictionarySetValue(v12, @"Mentor_NotificationThatWasRequestedButDropped", a5);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
  }

  return v12;
}

uint64_t FigSampleBufferAudioRendererAirPlayCreateWithOptions(uint64_t a1, uint64_t a2, const void *a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_6_2();
  fig_note_initialize_category_with_default_work_cf();
  v6 = 4294950916;
  if (!a3 || !a4)
  {
    return v6;
  }

  *cf = 0;
  FigSampleBufferAudioRendererGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    snprintf(__str, 0x80uLL, "com.apple.coremedia.samplebufferaudiorendererairplay.state[%p]", *cf);
    v9 = dispatch_queue_create(__str, 0);
    *(DerivedStorage + 16) = v9;
    if (v9)
    {
      snprintf(__str, 0x80uLL, "com.apple.coremedia.samplebufferaudiorendererairplay.notification[%p]", *cf);
      v10 = dispatch_queue_create(__str, 0);
      *(DerivedStorage + 8) = v10;
      if (v10)
      {
        *DerivedStorage = a3;
        CFRetain(a3);
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(DerivedStorage + 77) = 1;
        v11 = *cf;
        v12 = CMBaseObjectGetDerivedStorage();
        *(v12 + 80) = 0;
        v13 = (v12 + 80);
        if (FigCFDictionaryGetStringIfPresent())
        {
          CFStringGetCString(0, v13, 10, 0x600u);
        }

        *a4 = v11;
        if (dword_1EAF16D70)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_7();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }
    }

    v6 = 4294950914;
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  return v6;
}

uint64_t audioRendererAirPlay_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  if (!a4)
  {
    return 4294950916;
  }

  v9 = DerivedStorage;
  if (FigCFEqual())
  {
    audioRendererAirPlay_copyRoutingContext(a1, a4);
LABEL_4:
    v10 = 0;
    goto LABEL_5;
  }

  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v14 = v9[2];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __audioRendererAirPlay_CopyProperty_block_invoke;
      v18[3] = &__block_descriptor_tmp_22;
      v18[4] = a4;
      v18[5] = v9;
      v15 = v18;
    }

    else if (FigCFEqual())
    {
      v14 = v9[2];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = __audioRendererAirPlay_CopyProperty_block_invoke_2;
      v17[3] = &__block_descriptor_tmp_18;
      v17[4] = a4;
      v17[5] = v9;
      v15 = v17;
    }

    else
    {
      if (!FigCFEqual())
      {
        v13 = CMBaseObjectCopyProperty(*v9, a2, a3, a4);
        goto LABEL_12;
      }

      v14 = v9[2];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __audioRendererAirPlay_CopyProperty_block_invoke_3;
      block[3] = &__block_descriptor_tmp_19;
      block[4] = a4;
      block[5] = v9;
      v15 = block;
    }

    dispatch_sync(v14, v15);
    goto LABEL_4;
  }

  audioRendererAirPlay_copyRoutingContext(a1, &v19);
  v10 = v19;
  if (!v19)
  {
    *a4 = 0;
    return v10;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(v10, *MEMORY[0x1E69AF4E8], a3, a4);
LABEL_12:
    v10 = v13;
    goto LABEL_5;
  }

  v10 = 4294954514;
LABEL_5:
  if (v19)
  {
    CFRelease(v19);
  }

  return v10;
}

void audioRendererAirPlay_removeRoutingContextListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    FigNotificationCenterRemoveWeakListener();
  }
}

void audioRendererAirPlay_removeEndpointListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    FigNotificationCenterRemoveWeakListener();
  }
}

void audioRendererAirPlay_removeBufferedAirPlayOutputListeners(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_187();
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    FigNotificationCenterRemoveWeakListener();
  }
}

void audioRendererAirPlay_routingContextRouteChangedListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  v7 = *(DerivedStorage + 24);
  if (v7 == a4)
  {
    v8 = *(DerivedStorage + 32);
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (v9)
    {
      v10 = v9(v7, v8, &cf);
      v11 = cf;
      if (!v10)
      {
        IsDisallowedInternal = audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(a2, cf);
        v11 = cf;
        if (!IsDisallowedInternal)
        {
          audioRendererAirPlay_routeToEndpointInternal(a2, cf);
          v11 = cf;
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }
}

uint64_t audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(uint64_t a1, uint64_t a2)
{
  BOOLean[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BOOLean[0] = 0;
  v4 = *(DerivedStorage + 24);
  if (!v4)
  {
    return v4;
  }

  v5 = DerivedStorage;
  if (a2)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = MEMORY[0x1E69AF4C8];
  }

  else
  {
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = MEMORY[0x1E69AF4D0];
  }

  v4 = v6(v4, *v7, 0, BOOLean);
  v8 = BOOLean[0];
  if (!v4 && BOOLean[0])
  {
    Value = CFBooleanGetValue(BOOLean[0]);
    if (dword_1EAF16D70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v11 = *v5;
    if (Value)
    {
      v12 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v13)
    {
      v4 = v13(v11, @"NonBAOPlaybackIsDisallowed", *v12);
LABEL_17:
      v8 = BOOLean[0];
      goto LABEL_18;
    }

LABEL_16:
    v4 = 4294954514;
    goto LABEL_17;
  }

LABEL_18:
  if (v8)
  {
    CFRelease(v8);
  }

  return v4;
}

uint64_t audioRendererAirPlay_addEndpointListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_endpointStreamsChangedListener(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 40) == a4)
  {

    return audioRendererAirPlay_routeToEndpointInternal(a2, a4);
  }

  return result;
}

uint64_t audioRendererAirPlay_addBufferedAirPlayOutputListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t audioRendererAirPlay_setRoutingContextAndRemoteDeviceIDInternal(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (FigCFEqual() && FigCFEqual())
  {
    v22 = 0;
    v9 = 0;
    goto LABEL_22;
  }

  v8 = DerivedStorage[3];
  if (v8)
  {
    v8 = CFRetain(v8);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (DerivedStorage[8])
  {
    SharedInstance = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(v8, v7);
    v11 = DerivedStorage[8];
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v12)
    {
      v12(SharedInstance, a1, v11);
    }

    v13 = DerivedStorage[8];
    if (v13)
    {
      CFRelease(v13);
      DerivedStorage[8] = 0;
    }
  }

  v14 = OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_removeRoutingContextListeners(v14, v15);
  v16 = DerivedStorage[3];
  DerivedStorage[3] = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  audioRendererAirPlay_updateRoutingRegistryInternal(a1);
  OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_addRoutingContextListeners();
  v17 = DerivedStorage[4];
  DerivedStorage[4] = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v18 = DerivedStorage[3];
  if (!v18)
  {
    v19 = 0;
    goto LABEL_21;
  }

  v24 = DerivedStorage[4];
  VTable = CMBaseObjectGetVTable();
  v26 = *(VTable + 16);
  IsDisallowedInternal = VTable + 16;
  v27 = *(v26 + 144);
  if (v27)
  {
    IsDisallowedInternal = v27(v18, v24, &cf);
    if (!IsDisallowedInternal)
    {
      IsDisallowedInternal = audioRendererAirPlay_setNonBAOPlaybackIsDisallowedInternal(a1, cf);
      if (!IsDisallowedInternal)
      {
        v19 = cf;
LABEL_21:
        IsDisallowedInternal = audioRendererAirPlay_routeToEndpointInternal(a1, v19);
        v22 = IsDisallowedInternal;
        if (!IsDisallowedInternal)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }
    }

    v22 = IsDisallowedInternal;
  }

  else
  {
    v22 = 4294954514;
  }

LABEL_29:
  if (DerivedStorage[8])
  {
    v28 = FigBufferedAirPlayGlobalRoutingRegistryGetSharedInstance(IsDisallowedInternal, v21);
    v29 = DerivedStorage[8];
    v30 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v30)
    {
      v30(v28, a1, v29);
    }

    v31 = DerivedStorage[8];
    if (v31)
    {
      CFRelease(v31);
      DerivedStorage[8] = 0;
    }
  }

  v32 = OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_removeRoutingContextListeners(v32, v33);
  v34 = DerivedStorage[3];
  DerivedStorage[3] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  audioRendererAirPlay_updateRoutingRegistryInternal(a1);
  OUTLINED_FUNCTION_4_28();
  audioRendererAirPlay_addRoutingContextListeners();
LABEL_22:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v22;
}

uint64_t audioRendererAirPlay_addRoutingContextListeners()
{
  OUTLINED_FUNCTION_187();
  result = CMBaseObjectGetDerivedStorage();
  if (v0)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_84_0();

    return FigNotificationCenterAddWeakListener();
  }

  return result;
}

uint64_t __audioRendererAirPlay_setIsActiveAudioSessionApp_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 76) == v1 || (*(DerivedStorage + 76) = v1, (v3 = *(DerivedStorage + 56)) == 0))
  {
    v5 = 0;
  }

  else
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v4)
    {
      v5 = v4(v3, v1, 0, 0);
    }

    else
    {
      v5 = 4294954514;
    }
  }

  return OUTLINED_FUNCTION_12_7(v5);
}

void __audioRendererAirPlay_setBufferedAirPlayAllowed_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 77) != v3)
  {
    *(DerivedStorage + 77) = v3;
    audioRendererAirPlay_updateRoutingRegistryInternal(v2);
    audioRendererAirPlay_updateBufferedAirPlayOutput(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t audioRendererAirPlay_routeToEndpointInternal_cold_1(uint64_t a1, uint64_t a2, const void **a3, const void *a4)
{
  audioRendererAirPlay_removeEndpointListeners(a1, a2);
  v6 = *a3;
  *a3 = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return audioRendererAirPlay_addEndpointListeners();
}

uint64_t audioRendererAirPlay_updateBufferedAirPlayOutput_cold_1(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_187();
  audioRendererAirPlay_removeBufferedAirPlayOutputListeners(v3, *v6);
  v7 = *v4;
  *v4 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return audioRendererAirPlay_addBufferedAirPlayOutputListeners();
}

void FigImageQueueConfigurationCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, v7);
  *a2 = v4;

  CFRelease(a1);
}

void FigImageQueueConfigurationCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueConfigurationAddFigImageQueue_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueConfigurationAddFigImageQueue_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigImageQueueConfigurationAddFigImageQueue_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t flumeStreamCreateReadStatsDictionary(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a3)
  {
    return 4294954516;
  }

  FigByteFlumeGetFigBaseObject();
  v6 = v5;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, @"FBF_URL", a2, &cf);
  }

  *a3 = FigByteStreamStatsCreateStatsDictionary();
  result = cf;
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return result;
}

uint64_t flumeStream_issueReadAndWaitForCompletion(const void *a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v71 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v65 = 0;
  v14 = CFGetAllocator(a1);
  if (a5)
  {
    *a5 = 0;
  }

  if (a3 < 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D88, 4294954424, "<<<< FlumeStream >>>>", 462, v6);
    goto LABEL_53;
  }

  v15 = *(CMBaseObjectGetDerivedStorage() + 8);
  v16 = v15 < a3;
  v17 = v15 - a3;
  if (v16)
  {
    v55 = v6;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v61);
    if (!v54)
    {
      if (a2)
      {
LABEL_52:
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF16D88, 4294954423, "<<<< FlumeStream >>>>", 466, v55);
        goto LABEL_53;
      }

LABEL_50:
      v19 = 0;
      v28 = 0;
      v29 = 0;
      goto LABEL_42;
    }

LABEL_53:
    v29 = v54;
    goto LABEL_57;
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  if (v17 <= 0)
  {
    v55 = v6;
    goto LABEL_52;
  }

  if (v17 < a2)
  {
    a2 = v17;
  }

  if (qword_1ED4CA708 != -1)
  {
    dispatch_once_f(&qword_1ED4CA708, &qword_1ED4CA710, figFlumeStreamReadRecord_RegisterType);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v61);
    v29 = v56;
    goto LABEL_56;
  }

  v19 = Instance;
  v20 = dispatch_semaphore_create(0);
  *(v19 + 72) = v20;
  if (!v20)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v58, v59, v61);
    v29 = v57;
    CFRelease(v19);
LABEL_56:
    if (!v29)
    {
      v19 = 0;
      goto LABEL_13;
    }

LABEL_57:
    v19 = 0;
LABEL_58:
    v28 = 0;
    goto LABEL_42;
  }

LABEL_13:
  *(v19 + 16) = a3;
  *(v19 + 24) = a2;
  *(v19 + 32) = 0;
  *(v19 + 56) = a4;
  if (a5)
  {
    Empty = CMBlockBufferCreateEmpty(v14, 0, 0, (v19 + 64));
    if (Empty)
    {
      v29 = Empty;
      goto LABEL_58;
    }
  }

  *(v19 + 40) = FigAtomicIncrement32();
  *(v19 + 80) = 1;
  v22 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  CFRetain(v19);
  v23 = *DerivedStorage;
  v24 = *(v19 + 40);
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v25)
  {
    v26 = v25(v23, a3, a2, 0, flumeStream_incrementalReadCallback, v19, v24, &v65);
    if (v26 || (*(v19 + 48) = v65, v26 = FigThreadRegisterAbortAction(), v26))
    {
      v29 = v26;
      v28 = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v27 = dispatch_time(0, 10000000000);
      }

      else
      {
        v27 = -1;
      }

      v30 = dispatch_semaphore_wait(*(v19 + 72), v27);
      v38 = v30;
      if (v30)
      {
        v39 = OUTLINED_FUNCTION_0_36(v30, v31, v32, v33, v34, v35, v36, v37, v58, v59, v61, v62, SBYTE2(v62), SBYTE3(v62), SHIDWORD(v62));
        if (os_log_type_enabled(v39, type))
        {
          v40 = v64;
        }

        else
        {
          v40 = v64 & 0xFFFFFFFE;
        }

        if (v40)
        {
          v66[0] = 136315906;
          OUTLINED_FUNCTION_3_24();
          v67 = 1024;
          v68 = v38;
          v69 = v41;
          v70 = v42;
          LODWORD(v60) = 38;
          OUTLINED_FUNCTION_2_33();
          _os_log_send_and_compose_impl(v43, v44, v45, v46, v47, v48, type, v49, v66, v60);
        }

        OUTLINED_FUNCTION_1_34();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (*v22 == 1)
        {
          kdebug_trace();
        }

        v50 = *DerivedStorage;
        v51 = v65;
        v52 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v52)
        {
          v52(v50, v51);
        }

        if (*v22 == 1)
        {
          kdebug_trace();
        }

        v28 = 0;
        v29 = 4294954364;
      }

      else
      {
        v28 = *(v19 + 32);
        if (a5)
        {
          *a5 = *(v19 + 64);
        }

        *(v19 + 64) = 0;
        v29 = *(v19 + 80);
      }
    }
  }

  else
  {
    v28 = 0;
    v29 = 4294954514;
  }

  if (*v22 == 1)
  {
    kdebug_trace();
  }

LABEL_42:
  if (a6)
  {
    *a6 = v28;
  }

  FigThreadUnregisterAbortAction();
  if (v19)
  {
    CFRelease(v19);
  }

  return v29;
}

BOOL FigByteStreamCreateForByteFlume_cold_2(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return *MEMORY[0x1E695FF58] == 1;
}

BOOL FigFlumeStreamGetAvailableLengthAtOffset_cold_3(_DWORD *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a1 = v2;
  return *MEMORY[0x1E695FF58] == 1;
}

void stylePropertyRangeValueApplier(uint64_t a1, CFStringRef *a2)
{
  FigBytePumpGetFigBaseObject();
  v44 = v4;
  v45 = v5;
  FigCaptionRendererIntervalProtocolGetProtocolID();
  ProtocolVTable = CMBaseObjectGetProtocolVTable();
  if (ProtocolVTable)
  {
    v7 = *(ProtocolVTable + 16);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        v8(a1, &v44);
      }
    }
  }

  Value = FigCaptionRendererIntervalGetValue(a1);
  cf = 0;
  if (!Value)
  {
    return;
  }

  v10 = Value;
  if (CFStringCompare(*a2, *MEMORY[0x1E6960990], 0) == kCFCompareEqualTo)
  {
    valuePtr = 0;
    CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
    if (valuePtr != 1)
    {
      return;
    }

LABEL_17:
    v11 = OUTLINED_FUNCTION_1_35();
    goto LABEL_18;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E69608A8], 0) == kCFCompareEqualTo)
  {
    v15 = MEMORY[0x1E6961488];
    goto LABEL_16;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E69607D0], 0) == kCFCompareEqualTo)
  {
    v15 = MEMORY[0x1E69614A8];
LABEL_16:
    if (OUTLINED_FUNCTION_2_34(0, *v15))
    {
      return;
    }

    goto LABEL_17;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E6960930], 0) == kCFCompareEqualTo)
  {
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v16)
    {
      v17 = v16(v10);
    }

    else
    {
      v17 = &stru_1F0B1AFB8;
    }

    v23 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return;
    }

    v25 = Mutable;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v27 || (v27(CMBaseObject, *MEMORY[0x1E6961248], v23, &cf), !cf))
    {
LABEL_43:
      v30 = FigCaptionDataGetCMBaseObject();
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31)
      {
        v31(v30, *MEMORY[0x1E6961250], v23, &cf);
      }

      if (cf)
      {
        FigCaptionDynamicStyleGetInitialValue();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        v32 = MEMORY[0x1E6960B78];
        v33 = FigCFEqual();
        v34 = MEMORY[0x1E6960B70];
        if (!v33)
        {
          v34 = v32;
        }

        CFDictionarySetValue(v25, *MEMORY[0x1E6960948], *v34);
      }

      UInt32 = FigCFNumberCreateUInt32();
      if (UInt32)
      {
        CFDictionarySetValue(v25, *MEMORY[0x1E6960958], UInt32);
        v36 = CFAttributedStringCreate(v23, v17, v25);
        if (v36)
        {
          v37 = v36;
          v38 = OUTLINED_FUNCTION_1_35();
          CFAttributedStringSetAttribute(v38, v46, v39, v37);
          CFRelease(v37);
        }
      }

      CFRelease(v25);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_58;
    }

    FigCaptionDynamicStyleGetInitialValue();
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (FigCFEqual())
    {
      v28 = MEMORY[0x1E6960B68];
    }

    else
    {
      v29 = *MEMORY[0x1E6960B38];
      if (FigCFEqual())
      {
        goto LABEL_42;
      }

      if (!FigCFEqual())
      {
        if (FigCFEqual())
        {
          v29 = *MEMORY[0x1E6960B48];
        }

        goto LABEL_42;
      }

      v28 = MEMORY[0x1E6960B40];
    }

    v29 = *v28;
LABEL_42:
    CFDictionarySetValue(v25, *MEMORY[0x1E6960938], v29);
    goto LABEL_43;
  }

  if (CFStringCompare(*a2, *MEMORY[0x1E6960890], 0))
  {
    v11 = OUTLINED_FUNCTION_1_35();
    v14 = v10;
LABEL_18:
    CFAttributedStringSetAttribute(v11, v12, v13, v14);
    return;
  }

  v18 = OUTLINED_FUNCTION_2_34(0, *MEMORY[0x1E6961510]);
  if (v18 == kCFCompareEqualTo)
  {
    v22 = 1;
LABEL_57:
    valuePtr = v22;
    UInt32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    v40 = OUTLINED_FUNCTION_1_35();
    CFAttributedStringSetAttribute(v40, v47, v41, UInt32);
LABEL_58:
    if (UInt32)
    {
      CFRelease(UInt32);
    }

    return;
  }

  v19 = OUTLINED_FUNCTION_2_34(v18, *MEMORY[0x1E6961520]);
  if (v19 == kCFCompareEqualTo)
  {
    v22 = 2;
    goto LABEL_57;
  }

  v20 = OUTLINED_FUNCTION_2_34(v19, *MEMORY[0x1E6961518]);
  if (v20 == kCFCompareEqualTo)
  {
    v22 = 3;
    goto LABEL_57;
  }

  v21 = OUTLINED_FUNCTION_2_34(v20, *MEMORY[0x1E6961500]);
  if (v21 == kCFCompareEqualTo)
  {
    v22 = 4;
    goto LABEL_57;
  }

  if (OUTLINED_FUNCTION_2_34(v21, *MEMORY[0x1E69614F8]) == kCFCompareEqualTo)
  {
    v22 = v45;
    if ((v45 - 1) <= 3)
    {
      goto LABEL_57;
    }
  }
}

void FigCaptionRendererCaptionArrayInputCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererCaptionArrayInputCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererCaptionArrayInputCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double startInputDoAsync_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double startInputDoAsync_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double enumCaptions_applierFunc_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyRangedValuesOfStyleProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t HandleSampleBufferConsumerRemoteMessage(uint64_t a1, void *a2, void *a3)
{
  v32 = 0;
  v30 = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  v6 = *MEMORY[0x1E69615A0];
  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  *&v39 = 0;
  v7 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v7)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v31, v33);
  }

  v15 = v7;
  if (v7)
  {
    return v15;
  }

  switch(v32)
  {
    case 778268793:
      OUTLINED_FUNCTION_198_0();
      return FigXPCHandleStdCopyPropertyMessage();
    case 779314548:
      OUTLINED_FUNCTION_198_0();
      return FigXPCHandleStdSetPropertyMessage();
    case 1634232695:
      v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v26)
      {
        v19 = v26(0) != 0;
      }

      else
      {
        v19 = 0;
      }

      v28 = "IsQueueAtOrAboveHighWater";
      goto LABEL_71;
    case 1651273591:
      v25 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v25)
      {
        v19 = v25(0) != 0;
      }

      else
      {
        v19 = 0;
      }

      v28 = "IsQueueBelowLowWater";
      goto LABEL_71;
    case 1651273842:
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 104);
      if (v18)
      {
        v19 = v18(0) != 0;
      }

      else
      {
        v19 = 0;
      }

      v28 = "IsQueueBelowPrerollLevel";
LABEL_71:
      xpc_dictionary_set_BOOL(a3, v28, v19);
      return 0;
    case 1936941670:
      *&v39 = 0;
      *&v37 = 0;
      v10 = FigXPCServerCopyMemoryRecipient();
      if (v10)
      {
        return v10;
      }

      v10 = FigXPCMessageCopyCMSampleBuffer();
      if (v10)
      {
        return v10;
      }

      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        v11 = OUTLINED_FUNCTION_198_0();
        v10 = v12(v11);
        if (!v10)
        {
          return FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage();
        }

        return v10;
      }

      return 4294954514;
    case 1701670255:
      return FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2();
    case 1718383987:
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 72);
      if (!v9)
      {
        return 4294954514;
      }

      return v9(0);
    case 1768844407:
      if (!*(v30 + 48))
      {
        *(v30 + 16) = FigXPCRetain();
        *(v30 + 8) = xpc_dictionary_get_uint64(a2, v6);
        v24 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v24)
        {
          v15 = v24(0, FigXPCSampleBufferConsumerServerLowWaterTriggerCallback, v30, v30 + 40);
          if (!v15)
          {
            *(v30 + 48) = 1;
          }

          return v15;
        }

        return 4294954514;
      }

      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v30, v31, v33);
      return v8;
    case 1852798057:
      *&v39 = 0;
      *&v37 = 0;
      v10 = FigXPCMessageCopyCFString();
      if (v10)
      {
        return v10;
      }

      v10 = FigXPCMessageCopyCFDictionary();
      if (v10)
      {
        return v10;
      }

      xpc_dictionary_get_uint64(a2, "NotificationDeliveryFlags");
      if (*(*(CMBaseObjectGetVTable() + 16) + 64))
      {
        v20 = OUTLINED_FUNCTION_198_0();
        return v21(v20);
      }

      return 4294954514;
    case 1886610019:
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v16)
      {
        v17 = v16(0);
      }

      else
      {
        v17 = 0;
      }

      xpc_dictionary_set_uint64(a3, "GetPendingSampleBufferCount", v17);
      return 0;
    case 1919773815:
      v13 = *(v30 + 40);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v14)
      {
        v15 = v14(0, v13);
        if (!v15)
        {
          *(v30 + 48) = 0;
        }
      }

      else
      {
        v15 = 4294954514;
      }

      v27 = *(v30 + 16);
      if (v27)
      {
        *(v30 + 16) = 0;
        xpc_release(v27);
      }

      break;
    case 1935766644:
      v35 = *MEMORY[0x1E6960C70];
      v36 = *(MEMORY[0x1E6960C70] + 16);
      v34 = *MEMORY[0x1E6960C70];
      CMTime = FigXPCMessageCopyCFString();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFObject();
        if (!CMTime)
        {
          CMTime = FigXPCMessageGetCMTime();
          if (!CMTime)
          {
            CMTime = FigXPCMessageGetCMTime();
            if (!CMTime)
            {
              v23 = *(*(CMBaseObjectGetVTable() + 16) + 56);
              if (!v23)
              {
                return 4294954514;
              }

              v39 = v35;
              v40 = v36;
              v37 = v34;
              v38 = v36;
              return v23(0, 0, 0, &v39, &v37);
            }
          }
        }
      }

      return CMTime;
    case 1685024621:
      return FigXPCServerDisassociateObjectWithConnection();
    default:
      return 4294951138;
  }

  return v15;
}

void FigXPCSampleBufferConsumerServerAssociateNeighborFigSampleBufferConsumer(int a1, const void *a2)
{
  v7 = 0;
  if (a2 && (v3 = OUTLINED_FUNCTION_5_23(a1, a2), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(v2, &v7))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateObjectWithNeighborProcess();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM(v5);
  }
}

void FigXPCSampleBufferConsumerServerAssociateCopiedNeighborFigSampleBufferConsumer(int a1, const void *a2)
{
  v7 = 0;
  if (a2 && (v3 = OUTLINED_FUNCTION_5_23(a1, a2), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(v2, &v7))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateCopiedObjectWithNeighborProcess();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM(v5);
  }
}

void FigXPCSampleBufferConsumerServerAssociateCopiedSampleBufferConsumerWithNeighborProcessByPID(int a1, CFTypeRef cf)
{
  v7 = 0;
  if (cf && (v3 = CFGetTypeID(cf), v3 == FigSampleBufferConsumerGetTypeID()))
  {
    if (CreateSampleBufferConsumerServerState(cf, &v7))
    {
      OUTLINED_FUNCTION_652();
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      OUTLINED_FUNCTION_1_36();
      OUTLINED_FUNCTION_652();

      FigXPCServerAssociateCopiedObjectWithNeighborProcessByPID();
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_10();
    OUTLINED_FUNCTION_652();

    FigSignalErrorAtGM(v5);
  }
}

uint64_t FigXPCSampleBufferConsumerServerLowWaterTriggerCallback(uint64_t a1)
{
  if (!FigXPCCreateBasicMessage())
  {
    xpc_connection_send_message(*(a1 + 16), 0);
  }

  return FigXPCRelease();
}

void CreateSampleBufferConsumerServerState_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t figVTTCue_MapCueAttributeToCueSettings_writingMode(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1)
  {
    if (CFEqual(a1, @"tb"))
    {
      v5 = kFigVTT_AttributeValue_cue_horizontal;
    }

    else if (CFEqual(a1, @"lr"))
    {
      v5 = kFigVTT_AttributeValue_cue_leftToRight;
    }

    else
    {
      if (!CFEqual(a1, @"rl"))
      {
        return 0;
      }

      v5 = kFigVTT_AttributeValue_cue_rightToLeft;
    }

    v6 = *v5;
    if (*v5 && CFStringGetLength(*v5) >= 1)
    {
      CFDictionarySetValue(a3, @"vertical", v6);
    }
  }

  return 0;
}

void figVTTCue_processCSSAttribute(void *key, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    Value = CFDictionaryGetValue(*(a2 + 8), key);
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(*a2, key);
      if (v6)
      {
        v7 = v6;
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (Mutable)
        {
          v9 = Mutable;
          *(a2 + 24) = v5(v7, Mutable);
          if (FigCFDictionaryGetCount() >= 1)
          {
            CFArrayAppendValue(*(a2 + 16), v9);
          }

          CFRelease(v9);
        }

        else
        {
          *(a2 + 24) = -17882;
        }
      }
    }
  }
}

void figVTTCue_processClassStyleReference(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = CFStringCreateWithFormat(v4, 0, @"<c.%@>", a1);
      v8 = CFStringCreateWithFormat(v4, 0, @"</c>");
      CFDictionarySetValue(v6, @"openTag", v7);
      CFDictionarySetValue(v6, @"closeTag", v8);
      if (v7)
      {
        CFRelease(v7);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      if (FigCFDictionaryGetCount() >= 1)
      {
        CFArrayAppendValue(*(a2 + 16), v6);
      }

      CFRelease(v6);
    }

    else
    {
      *(a2 + 24) = -17882;
    }
  }
}

void FigVTTCueCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_setNodeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeValue_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_copyNodeDocumentSerialization_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_38();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void figVTTCue_MapCueAttributeToCueSettings_fromFigGeometryDimension_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_35();
  FigSignalErrorAtGM(v2);
  *a1 = v3;
}

void FigCPEServerStart(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, HandleCPEMessage, HandleNoReplyCPEMessage);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    v1 = FigXPCServerStart();
    if (!v1)
    {
      FigCPEProtectorServerStart(v1);
    }
  }
}

uint64_t HandleCPEMessage(uint64_t a1, uint64_t a2, void *a3)
{
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    return FigSecureStopManagerServerHandleMessage(a1, a2, a3);
  }

  return result;
}

uint64_t jsonParserServer_replyingMessageHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIDWORD(v4) = 0;
  result = FigXPCMessageGetOpCode();
  if (!result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, cf1, range);
  }

  return result;
}

void __FigJSONParserStartServer_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *(*(*a1 + 8) + 24) = v2;
}

uint64_t FigInterstitialCreatePropertyListsFromJSONData_Remote(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CMTimeValue *a4, _OWORD *a5, CFTypeRef *a6)
{
  v33 = 0;
  cf = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  if (!a1)
  {
LABEL_53:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_54;
  }

  if (qword_1ED4CA728 != -1)
  {
    dispatch_once(&qword_1ED4CA728, &__block_literal_global_16);
  }

  v11 = _MergedGlobals_31;
  if (_MergedGlobals_31)
  {
    goto LABEL_46;
  }

  OSStatus = FigXPCCreateBasicMessage();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCMessageSetCFString();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  FigXPCMessageSetUInt32();
  OSStatus = FigXPCMessageSetCFData();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  OSStatus = FigXPCMessageGetOSStatus();
  if (OSStatus)
  {
    goto LABEL_54;
  }

  if (a2)
  {
    *a2 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    if (cf)
    {
      v13 = CFGetTypeID(cf);
      if (v13 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(cf) >= 1)
        {
          v14 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
            if (!ValueAtIndex)
            {
              goto LABEL_53;
            }

            v16 = CFGetTypeID(ValueAtIndex);
            if (v16 != CFURLGetTypeID())
            {
              goto LABEL_53;
            }
          }

          while (++v14 < CFArrayGetCount(cf));
        }

        *a2 = cf;
        cf = 0;
      }
    }
  }

  if (a3)
  {
    *a3 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    if (v30)
    {
      v17 = CFGetTypeID(v30);
      if (v17 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v30) >= 1)
        {
          v18 = 0;
          do
          {
            v19 = CFArrayGetValueAtIndex(v30, v18);
            if (!v19)
            {
              goto LABEL_53;
            }

            v20 = CFGetTypeID(v19);
            if (v20 != CFNumberGetTypeID())
            {
              goto LABEL_53;
            }
          }

          while (++v18 < CFArrayGetCount(v30));
        }

        *a3 = v30;
        v30 = 0;
      }
    }
  }

  if (a4)
  {
    v27.start.value = 0;
    *a4 = 0;
    OSStatus = FigXPCMessageCopyCFObject();
    if (OSStatus)
    {
      goto LABEL_54;
    }

    *a4 = v27.start.value;
  }

  if (a5)
  {
    v28 = 0;
    v21 = MEMORY[0x1E6960C98];
    v22 = *(MEMORY[0x1E6960C98] + 16);
    *a5 = *MEMORY[0x1E6960C98];
    a5[1] = v22;
    a5[2] = *(v21 + 32);
    OSStatus = FigXPCMessageCopyCFObject();
    if (!OSStatus)
    {
      if (v28)
      {
        v23 = CFGetTypeID(v28);
        if (v23 == CFDictionaryGetTypeID())
        {
          CMTimeRangeMakeFromDictionary(&v27, v28);
          v24 = *&v27.start.epoch;
          *a5 = *&v27.start.value;
          a5[1] = v24;
          a5[2] = *&v27.duration.timescale;
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }

      goto LABEL_40;
    }

LABEL_54:
    v11 = OSStatus;
    goto LABEL_46;
  }

LABEL_40:
  if (!a6)
  {
LABEL_45:
    v11 = 0;
    goto LABEL_46;
  }

  *a6 = 0;
  v11 = FigXPCMessageCopyCFObject();
  if (!v11 && v29)
  {
    v25 = CFGetTypeID(v29);
    if (v25 == CFStringGetTypeID())
    {
      v11 = 0;
      *a6 = v29;
      v29 = 0;
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_46:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v11;
}

void __fjp_ensureClientEstablished_block_invoke_cold_1()
{
  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
  _MergedGlobals_31 = v0;
}

uint64_t assetDownloaderServer_handleRemoteMessage(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  cf[0] = 0;
  v5 = FigXPCServerLookupAndRetainAssociatedObject();
  if (!v5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", object, v9, v10);
  }

  v7 = v5;
  if (!v5)
  {
    return 4294950644;
  }

  return v7;
}

uint64_t assetDownloaderServer_downloadSuccessCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32) && !FigXPCCreateBasicMessage())
      {
        xpc_connection_send_message(*(v1 + 32), 0);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_downloadFailureCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFError())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_loadedTimeRangeChangedCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        if (!FigXPCCreateBasicMessage() && !FigXPCMessageSetCFDictionary() && !FigXPCMessageSetCFArray() && !FigXPCMessageSetCFDictionary())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didResolveMediaSelection(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didFinishDownloadForMediaSelection(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v2)
    {
      if (*(v1 + 32))
      {
        OUTLINED_FUNCTION_2_36();
        if (!FigXPCCreateBasicMessage())
        {
          OUTLINED_FUNCTION_3_25(0);
          if (!FigXPCMessageSetCFArray())
          {
            OUTLINED_FUNCTION_4_29(0);
          }
        }
      }
    }
  }

  return FigXPCRelease();
}

uint64_t assetDownloaderServer_didFinishLoadingMetadata(uint64_t result)
{
  if (result)
  {
    if (!*(result + 56))
    {
      *(result + 56) = 1;
      if (!*(result + 72))
      {
        if (*(result + 64))
        {
          *(result + 72) = 1;
          return MX_RunningBoardServices_InvalidateBackgroundDownloadProcessAssertion();
        }
      }
    }
  }

  return result;
}

uint64_t assetDownloaderServer_progressUpdateCallback(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_39();
    if (v4)
    {
      if (*(v1 + 32))
      {
        v5 = v3;
        v6 = v2;
        if (!FigXPCCreateBasicMessage())
        {
          xpc_dictionary_set_int64(0, "ExpectedBytesToDownload", v6);
          xpc_dictionary_set_int64(0, "BytesDownloaded", v5);
          xpc_connection_send_message(*(v1 + 32), 0);
        }
      }
    }
  }

  return FigXPCRelease();
}