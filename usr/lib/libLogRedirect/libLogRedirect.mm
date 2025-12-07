char *resetDyldInsertLibraries(const char *a1)
{
  result = getenv("DYLD_INSERT_LIBRARIES");
  if (result)
  {
    v3 = result;
    strlen(result);
    v4 = __chkstk_darwin();
    v5 = &v16 - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4 + 1);
    v6 = *v3;
    if (!*v3)
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }

    v7 = v5;
    do
    {
      v8 = 0;
      for (i = v6; i; i = v3[++v8])
      {
        if (i == 58)
        {
          break;
        }
      }

      if (v8)
      {
        v10 = v8;
        while (v3[v10] != 47)
        {
          if (!--v10)
          {
            goto LABEL_11;
          }
        }

        v11 = &v3[v10];
        v6 = 47;
      }

      else
      {
LABEL_11:
        v11 = v3;
      }

      v12 = v6 == 47;
      v13 = v6 == 47;
      if (v12)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      if (&v3[v8] != v14 && strncmp(v14, a1, v3 - v11 - v13 + v8))
      {
        if (v7 != v5)
        {
          *v7++ = 58;
        }

        v7 = stpncpy(v7, v3, v8);
        i = v3[v8];
      }

      if (i == 58)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v3 = &v15[v8];
      v6 = v15[v8];
    }

    while (v6);
    if (v7 > v5)
    {
      *v7 = 0;
      return setenv("DYLD_INSERT_LIBRARIES", v5, 1);
    }

    else
    {
      return unsetenv("DYLD_INSERT_LIBRARIES");
    }
  }

  return result;
}

uint64_t GetEnvMode(const char *a1, uint64_t a2, int a3)
{
  v5 = getenv(a1);
  if (v5)
  {
    if (*v5)
    {
      v6 = strtol(v5, 0, 0);
      if ((v6 - 0x7FFFFFFF) > 0xFFFFFFFF80000001)
      {
        return v6 & a3;
      }
    }
  }

  return a2;
}

uint64_t LogRedirect_init()
{
  EnvMode = GetEnvMode("OS_LOG_TRANSLATE_PRINT_MODE", 0, 255);
  v1 = EnvMode & 0xFFFFFFDF;
  if ((EnvMode & 0x10) == 0)
  {
    v1 = EnvMode;
  }

  interceptionMode = v1;
  if (v1)
  {
    redirectHandle_stdout = os_log_create("com.apple.developer", "stdout");
    v1 = interceptionMode;
  }

  if ((v1 & 2) != 0)
  {
    redirectHandle_stderr = os_log_create("com.apple.developer", "stderr");
    v1 = interceptionMode;
  }

  if ((v1 & 3) == 0)
  {
    v1 &= 0xFFFFFFCC;
    interceptionMode = v1;
  }

  if ((v1 & 0xC0) == 0xC0)
  {
    v2 = 0;
    interceptionMode = v1 & 0xFFFFFF3F;
  }

  else
  {
    if ((v1 & 0x40) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if ((v1 & 0x40) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    if ((v1 & 0xC0) != 0)
    {
      while (dup2(v4, v3) == -1)
      {
        if (*__error() != 4)
        {
          v2 = *__error();
          goto LABEL_22;
        }
      }
    }

    v2 = 0;
  }

LABEL_22:
  unsetenv("OS_LOG_TRANSLATE_PRINT_MODE");
  return v2;
}

ssize_t __logredirect__write(uint64_t __fd, void *__buf, ssize_t __nbyte)
{
  v5 = __fd;
  if ((__fd - 3) < 0xFFFFFFFE || !__PAIR64__(hookMode, interceptionMode) || (pthread_getspecific(logRedirectThreadLockFlagsKey) & 4) != 0)
  {
    LOBYTE(v7) = 0;
    v9 = 1;
LABEL_12:
    __nbyte = write(v5, __buf, __nbyte);
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = 8;
  }

  v7 = interceptionMode >> (v5 != 1);
  v8 = interceptionMode & v6;
  if ((interceptionMode & v6) != 0 && (v7 & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = pthread_getspecific(logRedirectThreadLockFlagsKey);
    if ((v9 & 2) != 0)
    {
      v10 = 4;
    }

    else
    {
      os_unfair_lock_lock(&logRedirectLock);
      v10 = 6;
    }

    pthread_setspecific(logRedirectThreadLockFlagsKey, (v10 | v9));
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (__nbyte >> 31)
  {
    v12 = __error();
    v13 = 22;
    goto LABEL_29;
  }

  if (!__buf && __nbyte)
  {
    v12 = __error();
    v13 = 14;
LABEL_29:
    *v12 = v13;
    __nbyte = -1;
    if (v9)
    {
      return __nbyte;
    }

    goto LABEL_17;
  }

LABEL_13:
  if ((v7 & 1) != 0 && __nbyte >= 1)
  {
    v14[0] = __buf;
    v14[1] = __nbyte;
    LogRedirectSendToOSLog(v5, v14, 1u, __nbyte);
  }

  if ((v9 & 1) == 0)
  {
LABEL_17:
    pthread_setspecific(logRedirectThreadLockFlagsKey, v9);
    if ((v9 & 2) == 0)
    {
      os_unfair_lock_unlock(&logRedirectLock);
    }
  }

  return __nbyte;
}

unint64_t __logredirect__write_nocancel(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  if ((a1 - 3) < 0xFFFFFFFE || !__PAIR64__(hookMode, interceptionMode) || (pthread_getspecific(logRedirectThreadLockFlagsKey) & 4) != 0)
  {
    LOBYTE(v7) = 0;
    v9 = 1;
LABEL_12:
    a3 = __write_nocancel();
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    v6 = 4;
  }

  else
  {
    v6 = 8;
  }

  v7 = interceptionMode >> (v5 != 1);
  v8 = interceptionMode & v6;
  if ((interceptionMode & v6) != 0 && (v7 & 1) == 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = pthread_getspecific(logRedirectThreadLockFlagsKey);
    if ((v9 & 2) != 0)
    {
      v10 = 4;
    }

    else
    {
      os_unfair_lock_lock(&logRedirectLock);
      v10 = 6;
    }

    pthread_setspecific(logRedirectThreadLockFlagsKey, (v10 | v9));
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  if (a3 >> 31)
  {
    v12 = __error();
    v13 = 22;
    goto LABEL_29;
  }

  if (!a2 && a3)
  {
    v12 = __error();
    v13 = 14;
LABEL_29:
    *v12 = v13;
    a3 = -1;
    if (v9)
    {
      return a3;
    }

    goto LABEL_17;
  }

LABEL_13:
  if ((v7 & 1) != 0 && a3 >= 1)
  {
    v14[0] = a2;
    v14[1] = a3;
    LogRedirectSendToOSLog(v5, v14, 1u, a3);
  }

  if ((v9 & 1) == 0)
  {
LABEL_17:
    pthread_setspecific(logRedirectThreadLockFlagsKey, v9);
    if ((v9 & 2) == 0)
    {
      os_unfair_lock_unlock(&logRedirectLock);
    }
  }

  return a3;
}

uint64_t LogRedirectWritev(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if ((a1 - 3) >= 0xFFFFFFFE && __PAIR64__(hookMode, interceptionMode) && (pthread_getspecific(logRedirectThreadLockFlagsKey) & 4) == 0)
  {
    if (a1 == 1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 8;
    }

    v9 = interceptionMode >> (a1 != 1);
    v10 = interceptionMode & v8;
    if ((interceptionMode & v8) != 0 && (v9 & 1) == 0)
    {
      v11 = 1;
    }

    else
    {
      v11 = pthread_getspecific(logRedirectThreadLockFlagsKey);
      if ((v11 & 2) != 0)
      {
        v12 = 4;
      }

      else
      {
        os_unfair_lock_lock(&logRedirectLock);
        v12 = 6;
      }

      pthread_setspecific(logRedirectThreadLockFlagsKey, (v12 | v11));
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    if ((a3 - 1025) > 0xFFFFFBFF)
    {
      if (!a2)
      {
LABEL_37:
        v15 = __error();
        v16 = 14;
LABEL_38:
        *v15 = v16;
        v13 = -1;
        if (v11)
        {
          return v13;
        }

        goto LABEL_17;
      }

      v17 = 0;
      v13 = 0;
      v18 = a3;
      v19 = (a2 + 8);
      v20 = (a2 + 8);
      while (1)
      {
        v22 = *v20;
        v20 += 2;
        v21 = v22;
        v13 += v22;
        if (v22 >> 31 || v13 >= 0x80000000)
        {
          break;
        }

        if (v21)
        {
          v17 |= *(v19 - 1) == 0;
        }

        v19 = v20;
        if (!--v18)
        {
          if (((v13 > 0) & v17) != 1)
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }
      }
    }

    v15 = __error();
    v16 = 22;
    goto LABEL_38;
  }

  LOBYTE(v9) = 0;
  v11 = 1;
LABEL_12:
  v13 = a4(a1, a2, a3);
LABEL_13:
  if ((v9 & 1) != 0 && v13 >= 1)
  {
    LogRedirectSendToOSLog(a1, a2, a3, v13);
  }

  if ((v11 & 1) == 0)
  {
LABEL_17:
    pthread_setspecific(logRedirectThreadLockFlagsKey, v11);
    if ((v11 & 2) == 0)
    {
      os_unfair_lock_unlock(&logRedirectLock);
    }
  }

  return v13;
}

void LogRedirectSendToOSLog(int a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  if (a1 == 1)
  {
    v4 = OS_LOG_TYPE_INFO;
  }

  else
  {
    v4 = OS_LOG_TYPE_DEBUG;
  }

  v5 = &redirectHandle_stdout;
  if (a1 != 1)
  {
    v5 = &redirectHandle_stderr;
  }

  if (a3 >= 1)
  {
    v7 = 0;
    v8 = *v5;
    v24 = a3;
    while (1)
    {
      v9 = a2 + 16 * v7;
      v10 = a4 >= *(v9 + 8) ? *(v9 + 8) : a4;
      if (v10)
      {
        v11 = *v9;
        if ((interceptionMode & 0x20) == 0)
        {
          break;
        }

        v12 = v10 - 1;
        v13 = v11[v10 - 1];
        a4 -= v13 == 10;
        if (v13 != 10)
        {
          break;
        }

        --v10;
        if (v12)
        {
          break;
        }
      }

LABEL_36:
      if (++v7 == v24)
      {
        return;
      }
    }

    while (1)
    {
      if (v10 >= 0x3E8)
      {
        v14 = 1000;
      }

      else
      {
        v14 = v10;
      }

      if (v10 >= 0x3E9)
      {
        v15 = 4;
        v16 = v14;
        while (1)
        {
          v17 = v11[v16 - 1];
          if ((v17 & 0xC0) != 0x80)
          {
            break;
          }

          --v16;
          if (!--v15)
          {
            goto LABEL_27;
          }
        }

        if (v17 <= 0xBF)
        {
          v18 = 0;
        }

        else
        {
          v18 = -1;
        }

        v14 = v18 + v16;
      }

LABEL_27:
      if ((interceptionMode & 0x10) == 0)
      {
        break;
      }

      if (os_log_type_enabled(v8, v4))
      {
        *buf = 68158210;
        v27 = v14;
        v28 = 2096;
        v29 = v11;
        v30 = 1024;
        v31 = v14;
        v20 = v4;
        v21 = v8;
        v22 = "__stdio__[%.*P](%u)";
        v23 = 24;
LABEL_34:
        _os_log_impl(&dword_0, v21, v20, v22, buf, v23);
      }

LABEL_35:
      v10 -= v14;
      a4 -= v14;
      v11 += v14;
      if (!v10)
      {
        goto LABEL_36;
      }
    }

    v19 = strnlen(v11, v14);
    if (v19 + 1 < v14)
    {
      v14 = v19 + 1;
    }

    if (!os_log_type_enabled(v8, v4))
    {
      goto LABEL_35;
    }

    *buf = 68157954;
    v27 = v14;
    v28 = 2080;
    v29 = v11;
    v20 = v4;
    v21 = v8;
    v22 = "%.*s";
    v23 = 18;
    goto LABEL_34;
  }
}

uint64_t LogHook_init(uint64_t a1)
{
  if ((HookValidateParamsBuffersOnly(a1) & 1) == 0)
  {
    hookMode = 0;
    v6 = 14;
    goto LABEL_20;
  }

  v2 = getenv("OS_LOG_DT_HOOK_PREFIX");
  v3 = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = strlen(v2);
  if (!v4)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v4 < 0x81)
  {
LABEL_8:
    v6 = 0;
    v5 = 1;
    goto LABEL_9;
  }

  v3 = 0;
  v5 = 0;
  hookMode = 0;
  v6 = 7;
LABEL_9:
  v7 = "libLogRedirect:";
  if (v3)
  {
    v7 = v3;
  }

  v8 = HookBufferAppend(a1, 0, "\n%s ", v7);
  *(a1 + 48) = v8;
  if (v5 && !v8)
  {
    hookMode = 0;
    v6 = *__error();
  }

  if (!v6)
  {
    EnvMode = GetEnvMode("OS_LOG_DT_HOOK_MODE", 0, 1855);
    hookMode = EnvMode;
    if (EnvMode)
    {
      v6 = 0;
      *(a1 + 68) = 1;
    }

    else if (EnvMode)
    {
      hookMode = 0;
      v6 = 22;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_20:
  unsetenv("OS_LOG_DT_HOOK_MODE");
  unsetenv("OS_LOG_DT_HOOK_PREFIX");
  return v6;
}

void *HookValidateParamsBuffersOnly(void *result)
{
  if (result)
  {
    if (*result && result[1] && result[2] && result[3] && result[4])
    {
      return (result[5] != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t HookBufferAppend(void *a1, unint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = a1[1];
  v5 = v4 - a2;
  v6 = *a1 && v4 > a2;
  if (!v6 || v4 - a2 <= 1)
  {
    goto LABEL_9;
  }

  v10 = vsnprintf((*a1 + a2), v5, a3, va);
  if ((v10 & 0x80000000) != 0)
  {
    return 0;
  }

  if (v5 <= v10)
  {
LABEL_9:
    v8 = __error();
    result = 0;
    *v8 = 12;
    return result;
  }

  return v10 + a2;
}

void LibLogRedirect_InitComplete(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!(hookMode | a1 | a2 | interceptionMode))
  {
    return;
  }

  v6 = a2;
  v7 = a1;
  if (pthread_key_create(&logRedirectThreadLockFlagsKey, 0))
  {
    v8 = *__error();
    interceptionMode = 0;
    hookMode = 0;
    v9 = 1;
  }

  else
  {
    v9 = pthread_getspecific(logRedirectThreadLockFlagsKey);
    if ((v9 & 2) != 0)
    {
      v10 = 12;
    }

    else
    {
      os_unfair_lock_lock(&logRedirectLock);
      v10 = 14;
    }

    pthread_setspecific(logRedirectThreadLockFlagsKey, (v10 | v9));
    v8 = 0;
  }

  if (!HookValidateParamsBuffersOnly(a3) || !*(a3 + 48))
  {
    *__error() = 14;
    interceptionMode = 0;
    hookMode = 0;
    if (!a3)
    {
      v15 = 2;
LABEL_31:
      write(v15, "\nlibLogRedirect: 0 0 E 0 {errorCode:14}\tFailed to initialize\n", 0x3DuLL);
      goto LABEL_32;
    }

LABEL_28:
    if (*(a3 + 64) < 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = *(a3 + 64);
    }

    goto LABEL_31;
  }

  v11 = HookBufferAppend((a3 + 16), 0, "%x %x ", hookMode, interceptionMode);
  *(a3 + 56) = v11;
  if (!v11)
  {
LABEL_27:
    interceptionMode = 0;
    hookMode = 0;
    goto LABEL_28;
  }

  if (v7)
  {
    v12 = "Failed to initialize LogHook";
    v13 = a3;
    v14 = v7;
    goto LABEL_26;
  }

  if (v6)
  {
    v12 = "Failed to initialize LogRedirect";
    v13 = a3;
    v14 = v6;
    goto LABEL_26;
  }

  if (v8)
  {
    v12 = "Failed to initialize libLogRedirect";
    v13 = a3;
    v14 = v8;
    goto LABEL_26;
  }

  v16 = HookBufferAppend((a3 + 16), v11, "%c 0 ", 73);
  if (!v16)
  {
    hookMode = 0;
    *(a3 + 56) = HookBufferAppend((a3 + 16), 0, "0 %x ", interceptionMode);
    v14 = *__error();
    v12 = "Failed to initialize LogHook flags";
LABEL_25:
    v13 = a3;
LABEL_26:
    if ((HookWriteError(v13, v14, v12) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v17 = v16;
  v18 = HookBufferAppend((a3 + 32), 0, "{version:2}\t");
  if (!v18)
  {
    hookMode = 0;
    *(a3 + 56) = HookBufferAppend((a3 + 16), 0, "0 %x ", interceptionMode);
    v14 = *__error();
    v12 = "Failed to initialize LogHook metadata";
    goto LABEL_25;
  }

  if (HookWrite(a3, v17, v18, "Initialization successful"))
  {
    goto LABEL_27;
  }

LABEL_32:
  if ((v9 & 1) == 0)
  {
    pthread_setspecific(logRedirectThreadLockFlagsKey, v9);
    if ((v9 & 2) == 0)
    {
      os_unfair_lock_unlock(&logRedirectLock);
    }
  }

  if (hookMode)
  {
    if (a4)
    {
      LibLogRedirect_OSLogHook_prevLogHook = os_log_set_hook_with_params();
    }
  }
}

uint64_t HookWriteError(uint64_t a1, int a2, char *a3)
{
  if (!HookValidateParamsBuffersOnly(a1) || !*(a1 + 48) || (v6 = *(a1 + 56)) == 0 || !a3 || (*(a1 + 64) & 0x80000000) != 0)
  {
    *__error() = 14;
    return 0xFFFFFFFFLL;
  }

  if (HookWriteError_lastErrorCode == a2 && HookWriteError_lastStaticError == a3)
  {
    return 1;
  }

  v8 = HookBufferAppend((a1 + 16), v6, "%c %llx ", 69, HookWriteError_errorSequenceNum);
  ++HookWriteError_errorSequenceNum;
  HookWriteError_lastErrorCode = a2;
  HookWriteError_lastStaticError = a3;
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = HookBufferAppend((a1 + 32), 0, "{errorCode:%d", a2);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  appended = HookBufferAppendMetadataEndWithLineCount((a1 + 32), v10, a3);
  if (!appended)
  {
    return 0xFFFFFFFFLL;
  }

  return HookWrite(a1, v9, appended, a3);
}

uint64_t HookWrite(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (HookValidateParamsBuffersOnly(a1) && (v8 = a1[6]) != 0 && a1[7] && a4 && (a1[8] & 0x80000000) == 0)
  {
    v21 = *a1;
    v22[0] = v8;
    v22[1] = a1[2];
    v22[2] = a2;
    v22[3] = a1[4];
    v22[4] = a3;
    v22[5] = a4;
    v9 = strlen(a4);
    v10 = 0;
    v22[6] = v9;
    v22[7] = "\n";
    v22[8] = 1;
    do
    {
      v11 = writev(*(a1 + 16), &v22[2 * v10 - 1], 5 - v10);
      if (v11 < 0)
      {
        if (*__error() != 4)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v12 = v10 << 32;
        v13 = &v22[2 * v10];
        v14 = v10 - 5;
        while (1)
        {
          v15 = *v13;
          v13 += 2;
          v16 = v11 - v15;
          if (v11 < v15)
          {
            break;
          }

          v12 += 0x100000000;
          ++v10;
          v11 = v16;
          if (__CFADD__(v14++, 1))
          {
            return 0;
          }
        }

        if (v11 >= 1)
        {
          v18 = (&v22[-1] + (v12 >> 28));
          v19 = v18[1] - v11;
          *v18 += v11;
          v18[1] = v19;
        }
      }
    }

    while (v10 < 5);
    return 0;
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

unint64_t HookBufferAppendMetadataEndWithLineCount(void *a1, unint64_t a2, _BYTE *a3)
{
  v3 = 1;
  while (*a3 == 10)
  {
    ++v3;
LABEL_6:
    ++a3;
  }

  if (*a3)
  {
    goto LABEL_6;
  }

  if (v3 >= 2)
  {
    return HookBufferAppend(a1, a2, ",lines:%d}\t", v3);
  }

  return HookBufferAppend(a1, a2, "}\t");
}

unint64_t HookBufferAppendEscapedString(uint64_t *a1, unint64_t a2, char a3, char *a4, char *__s1, char *__s2)
{
  if (!a1)
  {
    goto LABEL_46;
  }

  if (!*a1)
  {
    goto LABEL_46;
  }

  v7 = a2;
  if (a1[1] <= a2)
  {
    goto LABEL_46;
  }

  if (__s1)
  {
    v10 = __s1;
    if (__s2)
    {
      v10 = __s1;
      if ((a3 & 1) == 0)
      {
        v11 = strcmp(__s1, __s2);
        v10 = __s1;
        if (!v11)
        {
          return v7;
        }
      }
    }

LABEL_11:
    v12 = *a4;
    if (*a4)
    {
      v13 = a4 + 1;
      do
      {
        *(*a1 + v7++) = v12;
        if (v7 >= a1[1] - 1)
        {
          goto LABEL_46;
        }

        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }

    if (!__s1 || (*(*a1 + v7) = 34, ++v7, v7 < a1[1] - 1))
    {
      v15 = *v10;
      if (*v10)
      {
        v16 = (v10 + 1);
        do
        {
          if (v15 > 11)
          {
            switch(v15)
            {
              case 12:
                LOBYTE(v15) = 102;
                goto LABEL_34;
              case 13:
                LOBYTE(v15) = 114;
LABEL_34:
                *(*a1 + v7++) = 92;
                if (v7 >= a1[1] - 1)
                {
                  goto LABEL_46;
                }

LABEL_35:
                *(*a1 + v7++) = v15;
                if (v7 >= a1[1] - 1)
                {
                  goto LABEL_46;
                }

                goto LABEL_36;
              case 92:
                goto LABEL_34;
            }
          }

          else
          {
            switch(v15)
            {
              case 8:
                LOBYTE(v15) = 98;
                goto LABEL_34;
              case 9:
                LOBYTE(v15) = 116;
                goto LABEL_34;
              case 10:
                LOBYTE(v15) = 110;
                goto LABEL_34;
            }
          }

          if (v15 >= 0x20 && v15 != 34 && v15 != 127 && v15 != 125)
          {
            goto LABEL_35;
          }

          v7 = HookBufferAppend(a1, v7, "\\u%04X", v15);
          if (!v7)
          {
            return v7;
          }

LABEL_36:
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }

      v18 = *a1;
      if (!__s1)
      {
LABEL_45:
        *(v18 + v7) = 0;
        return v7;
      }

      *(v18 + v7++) = 34;
      if (v7 < a1[1] - 1)
      {
        v18 = *a1;
        goto LABEL_45;
      }
    }

LABEL_46:
    v7 = 0;
    *__error() = 12;
    return v7;
  }

  v10 = "null";
  if (__s2 || (a3 & 1) != 0)
  {
    goto LABEL_11;
  }

  return v7;
}

uint64_t __logredirect__fork()
{
  result = __fork();
  if (!result)
  {
    hookMode = 0;
    interceptionMode = 0;
  }

  return result;
}

void __library_initializer()
{
  resetDyldInsertLibraries("libLogRedirect.dylib");
  v0 = LogRedirect_init();
  v1 = LogHook_init(&hookParams);

  LibLogRedirect_InitComplete(v1, v0, &hookParams, 1);
}