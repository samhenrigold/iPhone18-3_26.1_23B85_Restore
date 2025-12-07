@interface LibLogRedirect
@end

@implementation LibLogRedirect

void __LibLogRedirect_OSLogHook_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  mach_get_times();
  if (LibLogRedirect_OSLogHook_prevLogHook)
  {
    (*(LibLogRedirect_OSLogHook_prevLogHook + 16))();
  }

  v6 = hookMode;
  if ((hookMode & 1) == 0)
  {
    return;
  }

  if ((hookMode & 0x200) != 0 || ((v7 = *a3, a3[16]) || a3[17] || (v19 = a3[4]) == 0 ? (v8 = 0) : (v8 = strstr(v19, "/System/Library/Frameworks/Foundation.framework") != 0), (v4 & 0xFE) == 0x10 || (v7 & 0xE0000) == 0x20000 || v8))
  {
LABEL_16:
    if (v4 == 17 && (v6 & 0x400) == 0)
    {
      if ((v12 = a3[16], v13 = a3[17], v14 = a3[11], v12) && !strcmp(v12, "com.apple.runtime-issues") || v13 && !strcmp(v13, "RuntimeIssues"))
      {
        if (v14 && strstr(v14, "xcode:text-backtrace"))
        {
          return;
        }
      }
    }

LABEL_24:
    v15 = *(a1 + 32);
    if (!HookValidateParamsBuffersOnly(v15) || !*(v15 + 48) || !*(v15 + 56) || (*(v15 + 64) & 0x80000000) != 0 || (pthread_getspecific(logRedirectThreadLockFlagsKey) & 8) != 0)
    {
      return;
    }

    v16 = os_log_copy_message_string();
    v17 = pthread_getspecific(logRedirectThreadLockFlagsKey);
    if ((v17 & 2) != 0)
    {
      v18 = 12;
    }

    else
    {
      os_unfair_lock_lock(&logRedirectLock);
      v18 = 14;
    }

    pthread_setspecific(logRedirectThreadLockFlagsKey, (v18 | v17));
    v20 = HookHandleLogMessage_lastOutputSuccessful;
    HookHandleLogMessage_lastOutputSuccessful = 0;
    v21 = HookBufferAppend((v15 + 16), *(v15 + 56), "%c %llx ", 76, HookHandleLogMessage_logSequenceNum);
    ++HookHandleLogMessage_logSequenceNum;
    if (!v21)
    {
      v22 = *__error();
      v23 = "Failed to update flags for log message";
LABEL_142:
      v24 = v15;
      goto LABEL_143;
    }

    if (!v16)
    {
      v23 = "Failed to copy log message content";
      v24 = v15;
      v22 = 94;
LABEL_143:
      HookWriteError(v24, v22, v23);
      goto LABEL_144;
    }

    v75 = v21;
    v25 = v20 ^ 1;
    if ((*(v15 + 68) & 1) == 0)
    {
      v26 = a3[5];
      if (!v26)
      {
        v26 = 0;
        a3[5] = 0;
        *(a3 + 12) = 0;
      }

      v78 = v26;
      memset(&v79, 0, sizeof(v79));
      localtime_r(&v78, &v79);
      tm_isdst = v79.tm_isdst;
      v28 = ((v79.tm_gmtoff * 0x7777777777777777) >> 64) - v79.tm_gmtoff;
      *(a3 + 14) = (v28 >> 5) + (v28 >> 63) + 60 * v79.tm_isdst;
      *(a3 + 15) = tm_isdst;
    }

    v77 = hookMode;
    v29 = HookBufferAppend((v15 + 32), 0, "{t:%ld.%06d", a3[5], *(a3 + 12));
    if (!v29)
    {
      goto LABEL_141;
    }

    v30 = v29;
    v76 = v25 | ((v77 & 0x100) >> 8);
    if (v76)
    {
      v31 = *(a3 + 14);
    }

    else
    {
      v31 = *(a3 + 14);
      if (HookBufferFillMetadata_last_0 == v31)
      {
        goto LABEL_51;
      }
    }

    v32 = HookBufferAppend((v15 + 32), v29, ",tz:%d", v31);
    if (!v32)
    {
      goto LABEL_141;
    }

    v30 = v32;
    if (v77 & 0x100) != 0 || (HookBufferFillMetadata_last_0 = *(a3 + 14), (v76))
    {
      v33 = *(a3 + 15);
LABEL_52:
      v34 = HookBufferAppend((v15 + 32), v30, ",tzDST:%d", v33);
      if (!v34)
      {
        goto LABEL_141;
      }

      v30 = v34;
      if (v77 & 0x100) != 0 || (HookBufferFillMetadata_last_1 = *(a3 + 15), (v76))
      {
        v35 = a3[2];
LABEL_57:
        v36 = HookBufferAppend((v15 + 32), v30, ",tid:0x%llx", v35);
        if (!v36)
        {
          goto LABEL_141;
        }

        v30 = v36;
        if ((v77 & 0x100) == 0)
        {
          HookBufferFillMetadata_last_2 = a3[2];
        }

LABEL_60:
        name = os_log_type_get_name();
        appended = HookBufferAppendEscapedString((v15 + 32), v30, v76 & 1, ",type:", name, HookBufferFillMetadata_last_3);
        if (!appended)
        {
          goto LABEL_141;
        }

        v39 = appended;
        if ((v77 & 0x100) == 0)
        {
          free(HookBufferFillMetadata_last_3);
          if (name)
          {
            v40 = strdup(name);
          }

          else
          {
            v40 = 0;
          }

          HookBufferFillMetadata_last_3 = v40;
        }

        v41 = HookBufferAppendEscapedString((v15 + 32), v39, v76 & 1, ",subsystem:", a3[16], HookBufferFillMetadata_last_4);
        if (!v41)
        {
          goto LABEL_141;
        }

        v42 = v41;
        if ((v77 & 0x100) == 0)
        {
          free(HookBufferFillMetadata_last_4);
          v43 = a3[16];
          if (v43)
          {
            v43 = strdup(v43);
          }

          HookBufferFillMetadata_last_4 = v43;
        }

        v44 = HookBufferAppendEscapedString((v15 + 32), v42, v76 & 1, ",category:", a3[17], HookBufferFillMetadata_last_5);
        if (!v44)
        {
          goto LABEL_141;
        }

        v45 = v44;
        if ((v77 & 0x100) != 0)
        {
          if ((hookMode & 2) == 0)
          {
            goto LABEL_96;
          }

          v45 = HookBufferAppend((v15 + 32), v44, ",offset:0x%llx", a3[8]);
          if (!v45)
          {
            goto LABEL_141;
          }

          goto LABEL_84;
        }

        free(HookBufferFillMetadata_last_5);
        v46 = a3[17];
        if (v46)
        {
          v46 = strdup(v46);
        }

        HookBufferFillMetadata_last_5 = v46;
        if ((hookMode & 2) == 0)
        {
          goto LABEL_96;
        }

        if (v76)
        {
          v47 = a3[8];
        }

        else
        {
          v47 = a3[8];
          if (HookBufferFillMetadata_last_6 == v47)
          {
LABEL_84:
            v49 = a3[3];
            if (v49)
            {
              memset(&v79, 0, 37);
              uuid_unparse(v49, &v79);
              v50 = HookBufferAppendEscapedString((v15 + 32), v45, v76 & 1, ",imgUUID:", &v79, HookBufferFillMetadata_last_7);
              if (!v50)
              {
                goto LABEL_141;
              }

              v51 = v50;
              if ((v77 & 0x100) == 0)
              {
                free(HookBufferFillMetadata_last_7);
                HookBufferFillMetadata_last_7 = strdup(&v79);
              }
            }

            else
            {
              v52 = HookBufferAppendEscapedString((v15 + 32), v45, v76 & 1, ",imgUUID:", 0, HookBufferFillMetadata_last_7);
              if (!v52)
              {
                goto LABEL_141;
              }

              v51 = v52;
              if ((v77 & 0x100) == 0)
              {
                free(HookBufferFillMetadata_last_7);
                HookBufferFillMetadata_last_7 = 0;
              }
            }

            v53 = HookBufferAppendEscapedString((v15 + 32), v51, v76 & 1, ",imgPath:", a3[4], HookBufferFillMetadata_last_8);
            if (!v53)
            {
              goto LABEL_141;
            }

            v45 = v53;
            if ((v77 & 0x100) == 0)
            {
              free(HookBufferFillMetadata_last_8);
              v54 = a3[4];
              if (v54)
              {
                v54 = strdup(v54);
              }

              HookBufferFillMetadata_last_8 = v54;
            }

LABEL_96:
            if ((hookMode & 4) != 0)
            {
              v58 = getprogname();
              v59 = HookBufferAppendEscapedString((v15 + 32), v45, v76 & 1, ",procName:", v58, HookBufferFillMetadata_last_9);
              if (!v59)
              {
                goto LABEL_141;
              }

              v45 = v59;
              if ((v77 & 0x100) != 0)
              {
                goto LABEL_152;
              }

              free(HookBufferFillMetadata_last_9);
              v60 = getprogname();
              if (v60)
              {
                v61 = getprogname();
                v60 = strdup(v61);
              }

              HookBufferFillMetadata_last_9 = v60;
              if ((v76 & 1) != 0 || (v62 = HookBufferFillMetadata_last_10, v62 != getpid()))
              {
LABEL_152:
                v63 = getpid();
                v64 = HookBufferAppend((v15 + 32), v45, ",pid:%d", v63);
                if (!v64)
                {
                  goto LABEL_141;
                }

                v45 = v64;
                if ((v77 & 0x100) != 0)
                {
                  goto LABEL_116;
                }

                HookBufferFillMetadata_last_10 = getpid();
                if (v76)
                {
                  goto LABEL_116;
                }
              }

              v65 = HookBufferFillMetadata_last_11;
              if (v65 != geteuid())
              {
LABEL_116:
                v66 = geteuid();
                v67 = HookBufferAppend((v15 + 32), v45, ",uid:%u", v66);
                if (!v67)
                {
                  goto LABEL_141;
                }

                v45 = v67;
                if ((v77 & 0x100) == 0)
                {
                  HookBufferFillMetadata_last_11 = geteuid();
                }
              }
            }

            v55 = hookMode;
            if ((hookMode & 8) != 0)
            {
              v56 = HookBufferAppend((v15 + 32), v45, ",cTime:0x%llx", a3[1]);
              if (!v56)
              {
                goto LABEL_141;
              }

              v45 = v56;
              v55 = hookMode;
            }

            if ((v55 & 0x10) != 0)
            {
              v57 = HookBufferAppendEscapedString((v15 + 32), v45, v76 & 1, ",format:", a3[11], HookBufferFillMetadata_last_12);
              if (!v57)
              {
                goto LABEL_141;
              }

              v45 = v57;
              if ((v77 & 0x100) != 0)
              {
                if ((hookMode & 0x20) == 0)
                {
                  goto LABEL_138;
                }

                v45 = HookBufferAppend((v15 + 32), v57, ",traceID:0x%llx", *a3);
                if (!v45)
                {
                  goto LABEL_141;
                }

LABEL_127:
                *&v79.tm_sec = 0;
                identifier = os_activity_get_identifier(&_os_activity_current, &v79);
                if (v76 & 1 | (HookBufferFillMetadata_last_14 != identifier))
                {
                  v71 = identifier;
                  v72 = HookBufferAppend((v15 + 32), v45, ",act:0x%llx", identifier);
                  if (!v72)
                  {
                    goto LABEL_141;
                  }

                  v45 = v72;
                  if ((v77 & 0x100) != 0)
                  {
                    v45 = HookBufferAppend((v15 + 32), v72, ",parentAct:0x%llx", *&v79.tm_sec);
                    if (!v45)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_138;
                  }

                  HookBufferFillMetadata_last_14 = v71;
                }

                if (!(v76 & 1 | (HookBufferFillMetadata_last_15 != *&v79.tm_sec)))
                {
                  goto LABEL_138;
                }

                v73 = HookBufferAppend((v15 + 32), v45, ",parentAct:0x%llx", *&v79.tm_sec);
                v45 = v73;
                if (v73 && (v77 & 0x100) == 0)
                {
                  HookBufferFillMetadata_last_15 = *&v79.tm_sec;
                  goto LABEL_138;
                }

                if (v73)
                {
LABEL_138:
                  v74 = HookBufferAppendMetadataEndWithLineCount((v15 + 32), v45, v16);
                  if (v74)
                  {
                    if ((HookWrite(v15, v75, v74, v16) & 0x80000000) == 0)
                    {
                      HookHandleLogMessage_lastOutputSuccessful = 1;
LABEL_144:
                      if ((v17 & 1) == 0)
                      {
                        pthread_setspecific(logRedirectThreadLockFlagsKey, v17);
                        if ((v17 & 2) == 0)
                        {
                          os_unfair_lock_unlock(&logRedirectLock);
                        }
                      }

                      free(v16);
                      return;
                    }

                    v22 = *__error();
                    v23 = "Failed to write log message";
                    goto LABEL_142;
                  }
                }

LABEL_141:
                v22 = *__error();
                v23 = "Failed to copy log message metadata";
                goto LABEL_142;
              }

              free(HookBufferFillMetadata_last_12);
              v68 = a3[11];
              if (v68)
              {
                v68 = strdup(v68);
              }

              HookBufferFillMetadata_last_12 = v68;
              v55 = hookMode;
            }

            if ((v55 & 0x20) == 0)
            {
              goto LABEL_138;
            }

            if (v76 & 1 | (HookBufferFillMetadata_last_13 != *a3))
            {
              v69 = HookBufferAppend((v15 + 32), v45, ",traceID:0x%llx", *a3);
              if (!v69)
              {
                goto LABEL_141;
              }

              v45 = v69;
              if ((v77 & 0x100) == 0)
              {
                HookBufferFillMetadata_last_13 = *a3;
              }
            }

            goto LABEL_127;
          }
        }

        v48 = HookBufferAppend((v15 + 32), v45, ",offset:0x%llx", v47);
        if (!v48)
        {
          goto LABEL_141;
        }

        v45 = v48;
        HookBufferFillMetadata_last_6 = a3[8];
        goto LABEL_84;
      }

LABEL_56:
      v35 = a3[2];
      if (HookBufferFillMetadata_last_2 == v35)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    }

LABEL_51:
    v33 = *(a3 + 15);
    if (HookBufferFillMetadata_last_1 == v33)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if ((v7 & 0x60000) == 0x40000)
  {
    return;
  }

  v9 = a3[4];
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = 0;
  while (1)
  {
    v11 = strlen(HookIsSystemFramework_SysPaths[v10]);
    if (!strncmp(v9, HookIsSystemFramework_SysPaths[v10], v11))
    {
      break;
    }

    if (++v10 == 4)
    {
      goto LABEL_16;
    }
  }
}

@end