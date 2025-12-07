void *cryptex_trampoline_upgrade_wait_options_create()
{
  v3 = *MEMORY[0x29EDCA608];
  result = malloc_type_calloc(1uLL, 8uLL, 0x8709206FuLL);
  if (!result)
  {
    cryptex_trampoline_upgrade_wait_options_create_cold_1(&v1, v2);
  }

  return result;
}

void cryptex_trampoline_upgrade_wait_options_destroy(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void cryptex_trampoline_upgrade_wait_options_set_cryptex_name(char **a1, const char *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  if (a2)
  {
    if (_dispatch_is_multithreaded())
    {
      while (1)
      {
        v5 = strdup(a2);
        if (v5)
        {
          break;
        }

        __os_temporary_resource_shortage();
      }
    }

    else
    {
      v5 = strdup(a2);
      if (!v5)
      {
        cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(a2, &v6, v7);
      }
    }

    *a1 = v5;
  }
}

uint64_t cryptex_trampoline_upgrade_wait(char *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v13 = 0;
  is_ongoing = sysctl_upgrade_is_ongoing(&v13);
  if (is_ongoing)
  {
    v3 = is_ongoing;
    v4 = *__error();
    if (cryptex_trampoline_osl_onceToken != -1)
    {
      cryptex_trampoline_upgrade_wait_cold_1();
    }

    v5 = cryptex_trampoline_osl_trampoline_log;
    if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&dword_29871D000, v5, OS_LOG_TYPE_ERROR, "Failed to read upgrade sysctl.: %{darwin.errno}d", buf, 8u);
    }

    a1 = 0;
  }

  else
  {
    if (!v13)
    {
      a1 = 0;
      v3 = 0;
      goto LABEL_8;
    }

    if (a1)
    {
      v7 = *a1;
      if (*a1)
      {
        if (_dispatch_is_multithreaded())
        {
          while (1)
          {
            v8 = strdup(v7);
            if (v8)
            {
              break;
            }

            __os_temporary_resource_shortage();
          }
        }

        else
        {
          v8 = strdup(v7);
          if (!v8)
          {
            cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(v7, &v14, buf);
          }
        }

        a1 = v8;
      }

      else
      {
        a1 = 0;
      }
    }

    v9 = *__error();
    if (cryptex_trampoline_osl_onceToken != -1)
    {
      cryptex_trampoline_upgrade_wait_cold_1();
    }

    v10 = cryptex_trampoline_osl_trampoline_log;
    if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      *&buf[4] = a1;
      _os_log_impl(&dword_29871D000, v10, OS_LOG_TYPE_INFO, "Blocking on upgrade for cryptex '%{public}s.", buf, 0xCu);
    }

    *__error() = v9;
    v3 = cryptex_trampoline_upgrade_interface_wait();
    v4 = *__error();
    if (v3)
    {
      if (cryptex_trampoline_osl_onceToken != -1)
      {
        cryptex_trampoline_upgrade_wait_cold_1();
      }

      v11 = cryptex_trampoline_osl_trampoline_log;
      if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_impl(&dword_29871D000, v11, OS_LOG_TYPE_ERROR, "Error encountered blocking on cryptex upgrade.: %{darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      if (cryptex_trampoline_osl_onceToken != -1)
      {
        cryptex_trampoline_upgrade_wait_cold_1();
      }

      v12 = cryptex_trampoline_osl_trampoline_log;
      if (os_log_type_enabled(cryptex_trampoline_osl_trampoline_log, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        *&buf[4] = a1;
        _os_log_impl(&dword_29871D000, v12, OS_LOG_TYPE_INFO, "Unblocked after upgrade for cryptex '%{public}s.", buf, 0xCu);
      }

      v3 = 0;
    }
  }

  *__error() = v4;
LABEL_8:
  free(a1);
  return v3;
}

os_log_t __cryptex_trampoline_osl_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "trampoline");
  cryptex_trampoline_osl_trampoline_log = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _os_log_send_and_compose_impl();
}

uint64_t sysctl_upgrade_is_ongoing(BOOL *a1)
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("kern.proc_rsr_in_progress", &v4, &v3, 0, 0))
  {
    return *__error();
  }

  result = 0;
  if (a1)
  {
    *a1 = v4 != 0;
  }

  return result;
}

void cryptex_trampoline_upgrade_wait_options_create_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1();
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void cryptex_trampoline_upgrade_wait_options_set_cryptex_name_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v5 = __error();
  strerror(*v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(v6, v7, v8, v9, &dword_29871D000);
  _os_crash_msg();
  __break(1u);
}