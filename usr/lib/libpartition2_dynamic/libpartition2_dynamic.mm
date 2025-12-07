void sub_2997D2EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2997D3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2997D320C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32s40r(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  _Block_object_assign((a1 + 40), v5, 8);
}

void __destroy_helper_block_e8_32s40r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);
}

uint64_t _lp2_delete_directory_contents(const char *a1)
{
  v24 = *MEMORY[0x29EDCA608];
  value = 0;
  v2 = removefile_state_alloc();
  removefile_state_set(v2, 1u, _lp2_delete_directory_contents_confirm);
  removefile_state_set(v2, 2u, &value);
  removefile_state_set(v2, 3u, _lp2_delete_directory_contents_error);
  removefile_state_set(v2, 4u, &value);
  _os_log_pack_size();
  v3 = &v21[-((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _os_log_pack_fill(v3, v4, 0, &dword_2997D0000, "Deleting contents of %{private}s...");
  *v5 = 136380675;
  *(v5 + 4) = a1;
  _LPLogPack(1, v3);
  if (removefile(a1, v2, 3u))
  {
    if (!value)
    {
      value = *__error();
    }
  }

  else
  {
    strcpy(path, ".XXXXXXXX");
    v6 = open(a1, 1048832);
    if (v6 == -1)
    {
      v10 = *__error();
    }

    else
    {
      v7 = v6;
      v8 = mkstempsat_np(v6, path, 8);
      if (v8 == -1)
      {
        v10 = *__error();
      }

      else
      {
        v9 = v8;
        if (unlinkat(v7, path, 0) || fcopyfile(v9, v7, 0, 5u))
        {
          v10 = *__error();
        }

        else
        {
          v10 = 0;
        }

        close(v9);
      }

      close(v7);
    }

    value = v10;
    if (v10)
    {
      _os_log_pack_size();
      v11 = &v21[-((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0)];
      v13 = _os_log_pack_fill(v11, v12, 0, &dword_2997D0000, "Could not reset metadata on %{private}s: %s");
      v14 = strerror(value);
      *v13 = 136380931;
      *(v13 + 4) = a1;
      *(v13 + 12) = 2080;
      *(v13 + 14) = v14;
      _LPLogPack(1, v11);
    }
  }

  _os_log_pack_size();
  v15 = &v21[-((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = _os_log_pack_fill(v15, v16, 0, &dword_2997D0000, "Deleting contents of %{private}s %s (result: %d).");
  v18 = value;
  v19 = "failed";
  *v17 = 136381187;
  *(v17 + 4) = a1;
  if (!v18)
  {
    v19 = "succeeded";
  }

  *(v17 + 12) = 2080;
  *(v17 + 14) = v19;
  *(v17 + 22) = 1024;
  *(v17 + 24) = v18;
  _LPLogPack(1, v15);
  removefile_state_free(v2);
  return value;
}

uint64_t _execForLibpartition(const char **a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v40 = 0;
  *v42 = -1;
  if (pipe(v42))
  {
    _os_log_pack_size();
    v2 = &v37 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _os_log_pack_fill(v2, v3, 0, &dword_2997D0000, "pipe failed while preparing to execute %s: %s", v37, v38);
    v5 = *a1;
    v6 = __error();
    v7 = strerror(*v6);
    *v4 = 136315394;
    *(v4 + 4) = v5;
    *(v4 + 12) = 2080;
    *(v4 + 14) = v7;
    _LPLogPack(1, v2);
    return 0xFFFFFFFFLL;
  }

  v38 = 0;
  v39 = 0;
  posix_spawn_file_actions_init(&v39);
  posix_spawn_file_actions_adddup2(&v39, v42[1], 1);
  posix_spawn_file_actions_addclose(&v39, v42[0]);
  posix_spawnattr_init(&v38);
  posix_spawnattr_setflags(&v38, 0x4000);
  v9 = posix_spawn(&v40, *a1, &v39, 0, a1, 0);
  if (v9)
  {
    v8 = v9;
    _os_log_pack_size();
    v10 = &v37 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = _os_log_pack_fill(v10, v11, 0, &dword_2997D0000, "posix_spawn %s failed: %s", v37, v38);
    v13 = *a1;
    v14 = strerror(v8);
    *v12 = 136315394;
    *(v12 + 4) = v13;
    *(v12 + 12) = 2080;
    *(v12 + 14) = v14;
    _LPLogPack(1, v10);
    close(v42[0]);
    goto LABEL_5;
  }

  bzero(v41, 0x400uLL);
  v16 = v42[0];
  close(v42[1]);
  v42[1] = -1;
  v17 = read(v16, v41, 0x400uLL);
  if (v17 >= 1)
  {
    do
    {
      execlogfunction(v17, v18, v19, v20, v21, v22, v23, v24, v17);
      v17 = read(v16, v41, 0x400uLL);
    }

    while (v17 > 0);
  }

  HIDWORD(v37) = 0;
  if (waitpid(v40, &v37 + 1, 0) == -1)
  {
    v8 = *__error();
    _os_log_pack_size();
    v25 = &v37 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v27 = _os_log_pack_fill(v25, v26, 0, &dword_2997D0000, "waitpid failed for %s: %s", v37, v38);
    v28 = *a1;
    v29 = __error();
    v30 = strerror(*v29);
    *v27 = 136315394;
    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    *(v27 + 14) = v30;
    _LPLogPack(1, v25);
  }

  else
  {
    if ((BYTE4(v37) & 0x7F) == 0x7F)
    {
      _os_log_pack_size();
      v31 = &v37 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v31, v32, 0, &dword_2997D0000, "%s was stopped by signal %d", v37, v38);
      v34 = *a1;
      v35 = SHIDWORD(v37) >> 8;
    }

    else
    {
      if ((BYTE4(v37) & 0x7F) == 0)
      {
        v8 = BYTE5(v37);
        goto LABEL_5;
      }

      _os_log_pack_size();
      v31 = &v37 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v31, v36, 0, &dword_2997D0000, "%s was terminated by signal %d", v37, v38);
      v34 = *a1;
      v35 = BYTE4(v37) & 0x7F;
    }

    *v33 = 136315394;
    *(v33 + 4) = v34;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v35;
    _LPLogPack(1, v31);
    v8 = 0xFFFFFFFFLL;
  }

LABEL_5:
  posix_spawnattr_destroy(&v38);
  posix_spawn_file_actions_destroy(&v39);
  if (v42[1] != -1)
  {
    close(v42[1]);
  }

  return v8;
}

char *___is_running_in_ramdisk_block_invoke()
{
  v3 = *MEMORY[0x29EDCA608];
  bzero(__s1, 0x400uLL);
  v1 = 1024;
  result = sysctlbyname("kern.bootargs", __s1, &v1, 0, 0);
  if (!result)
  {
    result = strstr(__s1, "-restore");
    if (result)
    {
      _is_running_in_ramdisk_is_ramdisk = 1;
    }
  }

  return result;
}

uint64_t _lp2_delete_directory_contents_error(uint64_t a1, uint64_t a2, int *a3)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v5 = __error();
  v6 = *v5;
  *a3 = *v5;
  _os_log_pack_size();
  v7 = v12 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _os_log_pack_fill(v7, v8, 0, &dword_2997D0000, "Could not removefile(3) path %{private}s: %s");
  v10 = strerror(v6);
  *v9 = 136380931;
  *(v9 + 4) = a2;
  *(v9 + 12) = 2080;
  *(v9 + 14) = v10;
  _LPLogPack(1, v7);
  return 2;
}

void execlogfunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v13[0] = &a9;
  v9 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%.*s" arguments:&a9];
  _os_log_pack_size();
  v10 = v13 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _os_log_pack_fill(v10, v11, 0, &dword_2997D0000, "%@");
  *v12 = 138412290;
  *(v12 + 4) = v9;
  _LPLogPack(3, v10);
}

id _LPLogObject(uint64_t a1)
{
  if (_LPLogObject_onceToken != -1)
  {
    _LPLogObject_cold_1();
  }

  v2 = _LPLogObject_obj;

  return v2;
}

void _LPLogPack(uint64_t a1, uint64_t a2)
{
  if (sLogLevel >= a1)
  {
    v3 = _LPLogObject(a1);
    v4 = os_log_pack_compose();

    if (sLogToStandardOut == 1)
    {
      v5 = fprintf(*MEMORY[0x29EDCA620], "%s\n", v4);
    }

    if (sLogToOSLog == 1)
    {
      v6 = _LPLogObject(v5);
      os_log_pack_send();
    }

    if (sLogToConsole == 1)
    {
      dprintf(sConsoleFD, "%s\n", v4);
    }

    free(v4);
  }
}

uint64_t LPLogSetOutput(char a1)
{
  sLogToStandardOut = a1 & 1;
  sLogToOSLog = (a1 & 2) != 0;
  sLogToConsole = (a1 & 4) != 0;
  result = sConsoleFD;
  if ((a1 & 4) != 0)
  {
    if (sConsoleFD == -1)
    {
      result = open("/dev/console", 10);
      sConsoleFD = result;
      if (result == -1)
      {
        sLogToConsole = 0;
      }
    }
  }

  else
  {
    if (sConsoleFD != -1)
    {
      result = close(sConsoleFD);
    }

    sConsoleFD = -1;
  }

  return result;
}

BOOL iterateSafely(uint64_t a1, int a2, id a3, void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  if (a2 < 1)
  {
    v10 = 0;
LABEL_10:
    _os_log_pack_size();
    v13 = &v17 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v13, v14, 0, &dword_2997D0000, "%s : IOIterator was still invalid after attempting %d times", v17, v18);
    *v15 = 136315394;
    *(v15 + 4) = "_Bool iterateSafely(io_iterator_t, int, void (^__strong)(io_object_t), void (^__strong)(void))";
    *(v15 + 12) = 1024;
    *(v15 + 14) = a2;
    _LPLogPack(1, v13);
  }

  else
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = IOIteratorNext(a1);
      if (v11)
      {
        v12 = v11;
        do
        {
          v7[2](v7, v12);
          IOObjectRelease(v12);
          v12 = IOIteratorNext(a1);
        }

        while (v12);
      }

      if (IOIteratorIsValid(a1))
      {
        break;
      }

      MEMORY[0x29C29F210](a1);
      v8[2](v8);
      v10 = ++v9 < a2;
      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }
  }

  return v10;
}