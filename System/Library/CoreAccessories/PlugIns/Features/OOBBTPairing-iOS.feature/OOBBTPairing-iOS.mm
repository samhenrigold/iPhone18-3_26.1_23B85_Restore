void init_logging_modules(uint64_t a1, char a2, uint64_t a3)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __init_logging_modules_block_invoke;
  block[3] = &__block_descriptor_tmp;
  v4 = a2;
  block[4] = a3;
  block[5] = a1;
  if (init_logging_modules_onceToken != -1)
  {
    dispatch_once(&init_logging_modules_onceToken, block);
  }
}

void __init_logging_modules_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = &off_233622000;
  if (*(a1 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D86220];
    do
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v3);
      if (!v8)
      {
        v8 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v13) = v4;
          _os_log_error_impl(&dword_23361B000, v6, OS_LOG_TYPE_ERROR, "Subsystem missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
          v7 = *(a1 + 32);
          v8 = "<Undefined>";
        }
      }

      v9 = *(v7 + v3 + 8);
      if (!v9)
      {
        v9 = "<Undefined>";
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __init_logging_modules_block_invoke_cold_1(v16, v4, &v16[4]);
          v9 = "<Undefined>";
        }
      }

      v10 = os_log_create(v8, v9);
      *(*(a1 + 40) + 8 * v4) = v10;
      if (v10)
      {
        ++v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v13 = v8;
          v14 = 2080;
          v15 = v9;
          _os_log_debug_impl(&dword_23361B000, v6, OS_LOG_TYPE_DEBUG, "Created log object %s: %s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = v8;
        v14 = 2080;
        v15 = v9;
        _os_log_error_impl(&dword_23361B000, v6, OS_LOG_TYPE_ERROR, "Failed to create os_log_t object %s: %s!", buf, 0x16u);
      }

      ++v4;
      v11 = *(a1 + 48);
      v3 += 16;
    }

    while (v4 < v11);
    v2 = &off_233622000;
  }

  else
  {
    LODWORD(v11) = 0;
    v5 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = *(v2 + 115);
    LODWORD(v13) = v5;
    _os_log_impl(&dword_23361B000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Created %d log object(s)!", buf, 8u);
    LODWORD(v11) = *(a1 + 48);
  }

  gLogObjects = *(a1 + 40);
  gNumLogObjects = v11;
}

uint64_t init_logging()
{
  init_logging_modules(&_gLogObjects, 1, _kLoggingModuleEntries);

  return MEMORY[0x28213A088]();
}

void __callbackSessionEvent(uint64_t a1, int a2, int a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (gLogObjects)
    {
      v5 = gNumLogObjects < 1;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [ACCOOBBTPairingAccessory init];
      }

      v13 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *gLogObjects;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_23361B000, v13, OS_LOG_TYPE_DEFAULT, "ERROR - OOBBTPairing __callbackSessionEvent called with a BTResult of %d", buf, 8u);
    }

    goto LABEL_24;
  }

  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = a4;
      if (gLogObjects)
      {
        v10 = gNumLogObjects <= 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      if (a2)
      {
        if (a2 == 2)
        {
          if (v11)
          {
            v12 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              [ACCOOBBTPairingAccessory init];
            }

            v12 = MEMORY[0x277D86220];
            v16 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23361B000, v12, OS_LOG_TYPE_INFO, "BTSession terminated", buf, 2u);
          }

          [v13 setIsBTReady:0];
          [v13 setBTAccessoryManager:0];
          *buf = [v13 BTSession];
          BTSessionDetachWithQueue();
          [v13 setBTSession:0];
          goto LABEL_24;
        }

        if (v11)
        {
          v15 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [ACCOOBBTPairingAccessory init];
          }

          v15 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          goto LABEL_58;
        }

        *buf = 67109120;
        *&buf[4] = a2;
        v22 = "Unhandled BTSessionEvent: %d";
        v23 = buf;
        v24 = v15;
        v25 = OS_LOG_TYPE_INFO;
        v26 = 8;
        goto LABEL_57;
      }

      if (v11)
      {
        v14 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [ACCOOBBTPairingAccessory init];
        }

        v14 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23361B000, v14, OS_LOG_TYPE_INFO, "BTSession attached", buf, 2u);
      }

      if (a1)
      {
        [v13 setBTSession:a1];
        *buf = 0;
        [v13 BTSession];
        Default = BTAccessoryManagerGetDefault();
        v19 = *buf;
        v20 = logObjectForModule();
        v15 = v20;
        if (v19 && !Default)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *v27 = 0;
            _os_log_impl(&dword_23361B000, v15, OS_LOG_TYPE_INFO, "Successfully established BT session", v27, 2u);
          }

          [v13 setBTAccessoryManager:*buf];
          [v13 setIsBTReady:1];
          v15 = [v13 setup_complete_semaphore];
          dispatch_semaphore_signal(v15);
          goto LABEL_58;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 0;
          v22 = "Unabled to establish BT session";
          v23 = v27;
          goto LABEL_56;
        }
      }

      else
      {
        v15 = logObjectForModule();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v22 = "ERROR - OOBBTPairing __callbackSessionEvent called with a NULL BTSession";
          v23 = buf;
LABEL_56:
          v24 = v15;
          v25 = OS_LOG_TYPE_DEFAULT;
          v26 = 2;
LABEL_57:
          _os_log_impl(&dword_23361B000, v24, v25, v22, v23, v26);
        }
      }

LABEL_58:

LABEL_24:
    }
  }
}

id logObjectForModule()
{
  if (gLogObjects)
  {
    v0 = gNumLogObjects < 1;
  }

  else
  {
    v0 = 1;
  }

  if (v0)
  {
    v1 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v1)
    {
      logObjectForModule_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  return v10;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ascii_to_hex(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = 0;
      v14 = -86;
      v13 = -86;
      v5 = &v14;
      v6 = 1;
      do
      {
        v7 = v6;
        v8 = *(a2 + 2 * v3 + v4);
        v9 = v8 - 48;
        v10 = v8 - 65;
        if ((v8 - 97) >= 6)
        {
          v11 = 0;
        }

        else
        {
          v11 = v8 - 87;
        }

        v12 = v8 - 55;
        if (v10 > 5)
        {
          v12 = v11;
        }

        if (v9 < 0xA)
        {
          v12 = v9;
        }

        *v5 = v12;
        v5 = &v13;
        v4 = 1;
        v6 = 0;
      }

      while ((v7 & 1) != 0);
      *(result + v3++) = v13 | (16 * v14);
    }

    while (v3 != a3 >> 1);
  }

  return result;
}

uint64_t printBytes(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = a2;
    if (a2)
    {
      v7 = result;
      do
      {
        v8 = *v7++;
        result = printf(a3, v8);
        --v4;
      }

      while (v4);
      if (a4)
      {

        return putchar(10);
      }
    }
  }

  return result;
}

const char *removeNewline(const char *a1)
{
  v2 = strlen(a1);
  if (v2 && a1[v2 - 1] == 10)
  {
    a1[v2 - 1] = 0;
  }

  return a1;
}

uint64_t obfuscatedPointer(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = obfuscatedPointer_salt;
    if (!obfuscatedPointer_salt)
    {
      v2 = random();
      obfuscatedPointer_salt = v2;
    }

    return v1 + v2;
  }

  return result;
}

BOOL getMemoryUse(void *a1, void *a2, void *a3)
{
  v33 = -1431655766;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v18 = v6;
  v16 = v6;
  v17 = v6;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  *task_info_out = v6;
  v11 = v6;
  task_info_outCnt = 93;
  v7 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v7)
  {
    if (a1)
    {
      *a1 = v11;
    }

    if (a2)
    {
      *a2 = *task_info_out;
    }

    if (a3)
    {
      *a3 = v19;
    }
  }

  return v7 == 0;
}

void __init_logging_modules_block_invoke_cold_1(uint8_t *buf, int a2, _DWORD *a3)
{
  *buf = 67109120;
  *a3 = a2;
  _os_log_error_impl(&dword_23361B000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Category missing for logging module %d!\n(Check LoggingModuleEntry_t table)", buf, 8u);
}

void logObjectForModule_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 134218240;
  *&v8[4] = gLogObjects;
  *&v8[12] = 1024;
  *&v8[14] = gNumLogObjects;
  OUTLINED_FUNCTION_1(&dword_23361B000, MEMORY[0x277D86220], a3, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x277D85DE8]);
}

char *createHexString(uint64_t a1, unint64_t a2, int a3)
{
  if (a1 && a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      if (!a3)
      {
        v5 = (2 * a2) | 1;
LABEL_10:
        v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
        if (v7)
        {
          v8 = 0;
          v9 = v7;
          v14 = v7;
          v10 = v7;
          v11 = v5;
          while (a3)
          {
            if (v8 >= a2 - 1)
            {
              v12 = v10;
              v13 = v11;
              goto LABEL_17;
            }

            snprintf(v10, v11, "%02X ");
LABEL_18:
            ++v8;
            v11 -= 3;
            v10 += 3;
            v9 += 2;
            v5 -= 2;
            if (a2 == v8)
            {
              return v14;
            }
          }

          v12 = v9;
          v13 = v5;
LABEL_17:
          snprintf(v12, v13, "%02X");
          goto LABEL_18;
        }

        goto LABEL_21;
      }

      if (is_mul_ok(a2, 3uLL))
      {
        v5 = 3 * a2;
        goto LABEL_10;
      }
    }

    do
    {
LABEL_21:
      result = malloc_type_malloc(0xEuLL, 0x100004077774924uLL);
    }

    while (!result);
    strcpy(result, "<print error>");
    return result;
  }

  result = malloc_type_malloc(7uLL, 0x100004077774924uLL);
  if (result)
  {
    strcpy(result, "(null)");
  }

  return result;
}