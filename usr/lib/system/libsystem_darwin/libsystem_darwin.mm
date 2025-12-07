unint64_t os_simple_hash_with_seed(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v3 = (0xC6A4A7935BD1E995 * a2) ^ a3;
  if (a2 >= 8)
  {
    v4 = &a1[8 * (a2 >> 3)];
    v5 = 8 * (a2 >> 3);
    do
    {
      v6 = *a1;
      a1 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v3);
      v5 -= 8;
    }

    while (v5);
    a1 = v4;
  }

  v7 = a2 & 7;
  if (v7 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v7 != 6)
      {
        v3 ^= a1[6] << 48;
      }

      v3 ^= a1[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_18;
    }

    v3 ^= a1[4] << 32;
LABEL_18:
    v3 ^= a1[3] << 24;
LABEL_19:
    v3 ^= a1[2] << 16;
    goto LABEL_20;
  }

  if ((a2 & 7) <= 1)
  {
    if ((a2 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
    }

    goto LABEL_21;
  }

  if (v7 != 2)
  {
    goto LABEL_19;
  }

LABEL_20:
  v3 ^= a1[1] << 8;
LABEL_21:
  v3 = 0xC6A4A7935BD1E995 * (v3 ^ *a1);
  return (0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47);
}

uint64_t os_variant_has_internal_content(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (disabled_status)
  {
    return 0;
  }

  return _check_internal_release_type(a1);
}

uint64_t _check_internal_release_type(uint64_t has_internal_content_cold_1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (internal_release_type == 2)
  {
    return 0;
  }

  if (internal_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_has_internal_diagnostics(uint64_t has_internal_content_cold_1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x100) != 0)
  {
    return 0;
  }

  return _check_internal_release_type(has_internal_content_cold_1);
}

uint64_t sysctlbyname_get_data_np(const char *a1, void *a2, size_t *a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v6 = 4;
  if (sysctlnametomib(a1, v7, &v6))
  {
    return *__error();
  }

  else
  {
    return sysctl_get_data_np(v7, v6, a2, a3);
  }
}

uint64_t sysctl_get_data_np(int *a1, u_int a2, void *a3, size_t *a4)
{
  size = 0;
  if (sysctl(a1, a2, 0, &size, 0, 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = malloc_type_malloc(size, 0x8631963AuLL);
    if (v8 && !sysctl(a1, a2, v8, &size, 0, 0))
    {
      v9 = 0;
      *a3 = v8;
      *a4 = size;
      return v9;
    }
  }

  v9 = *__error();
  if (v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t os_parse_boot_arg_int(char *a1, uint64_t *a2)
{
  v8 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &v8, &v7);
  v4 = v8;
  v5 = _parse_boot_arg_int(v8, a1, a2);
  free(v4);
  return v5;
}

uint64_t os_variant_allows_internal_security_policies(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x1000000) != 0)
  {
    return 0;
  }

  if (can_has_debugger == 2)
  {
    if (development_kernel == 2)
    {
      return 0;
    }

    if (development_kernel != 3)
    {
      _check_internal_release_type_cold_2();
    }
  }

  else if (can_has_debugger != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_has_internal_ui(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if ((disabled_status & 0x10000) != 0)
  {
    return 0;
  }

  return _check_internal_release_type(a1);
}

int8x8_t ___initialize_status_block_invoke()
{
  v18[10] = *MEMORY[0x29EDCA608];
  v17 = 8;
  v18[0] = 0;
  if (!sysctlbyname("kern.osvariant_status", v18, &v17, 0, 0) && v18[0])
  {
    if ((v18[0] & 8) != 0)
    {
      can_has_debugger = (LODWORD(v18[0]) >> 2) & 3;
      if ((v18[0] & 0x8000) == 0)
      {
LABEL_40:
        if ((v18[0] & 0x2000000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_52;
      }
    }

    else if ((v18[0] & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    is_ephemeral = LOWORD(v18[0]) >> 14;
    if ((v18[0] & 0x2000000) == 0)
    {
LABEL_41:
      if ((v18[0] & 0x20) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

LABEL_52:
    has_full_logging = HIBYTE(LODWORD(v18[0])) & 3;
    if ((v18[0] & 0x20) == 0)
    {
LABEL_42:
      if ((v18[0] & 0x800) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }

LABEL_53:
    internal_release_type = (LODWORD(v18[0]) >> 4) & 3;
    if ((v18[0] & 0x800) == 0)
    {
LABEL_43:
      if ((v18[0] & 0x2000) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_54:
    factory_release_type = (LODWORD(v18[0]) >> 10) & 3;
    if ((v18[0] & 0x2000) == 0)
    {
LABEL_44:
      if ((v18[0] & 0x20000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_56;
    }

LABEL_55:
    darwin_release_type = (LODWORD(v18[0]) >> 12) & 3;
    if ((v18[0] & 0x20000) == 0)
    {
LABEL_45:
      if ((v18[0] & 0x200000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }

LABEL_56:
    recovery_release_type = HIWORD(LODWORD(v18[0])) & 3;
    if ((v18[0] & 0x200000) == 0)
    {
LABEL_46:
      if ((v18[0] & 0x8000000) == 0)
      {
LABEL_48:
        v11 = vdupq_n_s64(v18[0]);
        *v11.i8 = vand_s8(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v11, xmmword_299DDEAB0)), vceqzq_s64(vandq_s8(v11, xmmword_299DDEAC0))))), 0x1000100010001);
        result = vuzp1_s8(*v11.i8, *v11.i8);
        disabled_status = result.i32[0];
        return result;
      }

LABEL_47:
      allows_security_research = (LODWORD(v18[0]) >> 26) & 3;
      goto LABEL_48;
    }

LABEL_57:
    development_kernel = (LODWORD(v18[0]) >> 20) & 3;
    if ((v18[0] & 0x8000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (is_ephemeral)
  {
    ___initialize_status_block_invoke_cold_1(&v17, v18);
  }

  LODWORD(v17) = 0;
  v18[0] = 4;
  sysctlbyname("hw.ephemeral_storage", &v17, v18, 0, 0);
  if (v17)
  {
    v0 = 3;
  }

  else
  {
    v0 = 2;
  }

  is_ephemeral = v0;
  if (can_has_debugger)
  {
    ___initialize_status_block_invoke_cold_2(&v17, v18);
  }

  if (MEMORY[0xFFFFF4084])
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  can_has_debugger = v1;
  if (internal_release_type)
  {
    ___initialize_status_block_invoke_cold_3(&v17, v18);
  }

  if (factory_release_type)
  {
    ___initialize_status_block_invoke_cold_4(&v17, v18);
  }

  if (darwin_release_type)
  {
    ___initialize_status_block_invoke_cold_5(&v17, v18);
  }

  if (recovery_release_type)
  {
    ___initialize_status_block_invoke_cold_6(&v17, v18);
  }

  v18[0] = 0x4000;
  file = _read_file("/System/Library/CoreServices/SystemVersion.plist", v18);
  if (!file)
  {
    goto LABEL_19;
  }

  v3 = file;
  v4 = xpc_create_from_plist();
  if (!v4)
  {
LABEL_18:
    free(v3);
LABEL_19:
    if (access("/AppleInternal/Library/PreferenceBundles/Internal Settings.bundle", 0))
    {
      v6 = 2;
    }

    else
    {
      v6 = 3;
    }

    internal_release_type = v6;
    factory_release_type = 2;
    darwin_release_type = 2;
    recovery_release_type = 2;
    goto LABEL_23;
  }

  v5 = v4;
  if (MEMORY[0x29C2B1AA0]() != MEMORY[0x29EDCAA00])
  {
    xpc_release(v5);
    goto LABEL_18;
  }

  free(v3);
  string = xpc_dictionary_get_string(v5, "ReleaseType");
  if (string)
  {
    v13 = string;
    if (strcmp(string, "NonUI"))
    {
      factory_release_type = 2;
      if (strstr(v13, "Internal"))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      internal_release_type = v14;
      if (strstr(v13, "Darwin"))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      darwin_release_type = v15;
      if (strstr(v13, "Recovery"))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_73;
    }

    factory_release_type = 3;
    internal_release_type = 3;
    v16 = 2;
  }

  else
  {
    v16 = 2;
    internal_release_type = 2;
    factory_release_type = 2;
  }

  darwin_release_type = 2;
LABEL_73:
  recovery_release_type = v16;
  xpc_release(v5);
LABEL_23:
  if (development_kernel)
  {
    ___initialize_status_block_invoke_cold_7(&v17, v18);
  }

  v17 = 0;
  v18[0] = 0;
  data_np = sysctlbyname_get_data_np("kern.osbuildconfig", v18, &v17);
  v8 = v18[0];
  if (!data_np && (!strcmp(v18[0], "development") || !strcmp(v8, "debug") || !strcmp(v8, "profile") || !strcmp(v8, "kasan")))
  {
    development_kernel = 3;
  }

  free(v8);
  if (!development_kernel)
  {
    development_kernel = 2;
  }

  if (allows_security_research)
  {
    ___initialize_status_block_invoke_cold_8(&v17, v18);
  }

  LODWORD(v17) = 0;
  v18[0] = 4;
  sysctlbyname("hw.features.allows_security_research", &v17, v18, 0, 0);
  if (v17)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  allows_security_research = v9;
  _parse_disabled_status();
  return result;
}

uint64_t _parse_boot_arg_int(char *a1, char *a2, uint64_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  *__str = 0;
  v10 = 0;
  v11 = 0;
  v7[0] = a2;
  v7[1] = __str;
  v8 = xmmword_299DDEAF0;
  _enum_boot_arg_values(a1, v7, _check_boot_arg_value);
  v4 = BYTE9(v8);
  if (a3 && (BYTE9(v8) & 1) != 0)
  {
    if (BYTE8(v8))
    {
      v5 = 1;
LABEL_6:
      *a3 = v5;
      v4 = 1;
      return v4 & 1;
    }

    v7[0] = 0;
    v5 = strtoll(__str, v7, 0);
    v4 = 0;
    if (!*v7[0])
    {
      goto LABEL_6;
    }
  }

  return v4 & 1;
}

char *_enum_boot_arg_values(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  __stringp = a1;
  do
  {
    result = strsep(&__stringp, " \t");
    if (!result)
    {
      break;
    }

    v6 = result;
    v7 = strchr(result, 61);
    v8 = *v6;
    if (v8 == 45)
    {
      v9 = 0;
    }

    else if (v7)
    {
      *v7 = 0;
      v9 = v7 + 1;
    }

    else
    {
      v9 = "1";
    }

    result = a3(a2, v6, v9, v8 == 45);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t os_variant_has_factory_content(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (factory_release_type == 2)
  {
    return 0;
  }

  if (factory_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

BOOL _check_boot_arg_value(uint64_t a1, const char *a2, const char *a3, int a4)
{
  if (!strcmp(*a1, a2))
  {
    *(a1 + 25) = 1;
    *(a1 + 24) = a4;
    v7 = *(a1 + 8);
    if (v7)
    {
      if (a3)
      {
        v8 = a4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        v9 = "";
      }

      else
      {
        v9 = a3;
      }

      strlcpy(v7, v9, *(a1 + 16));
    }
  }

  return (*(a1 + 25) & 1) == 0;
}

uint64_t os_variant_is_darwinos(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (darwin_release_type == 2)
  {
    return 0;
  }

  if (darwin_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_uses_ephemeral_storage(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (is_ephemeral == 2)
  {
    return 0;
  }

  if (is_ephemeral != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t dirstatat_np()
{
  MEMORY[0x2A1C7C4A8]();
  v44 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    *__error() = 45;
    return 0xFFFFFFFFLL;
  }

  v3 = v1;
  v4 = v0;
  v5 = openat_NOCANCEL();
  if (v5 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v35 = v3;
  __dst = v4;
  __src = 0uLL;
  v7 = _dirstat_fileid_set_create();
  v41 = 0;
  v42 = &v41;
  v39 = xmmword_299DDEAD0;
  v40 = 1029;
  bzero(v43, 0x8000uLL);
  v8 = 0;
  v37 = 0;
  do
  {
    if (v8)
    {
      v41 = *v8;
      if (!v41)
      {
        v42 = &v41;
      }

      v9 = v8[1];
      free(v8);
      v10 = openat_NOCANCEL();
      if ((v10 & 0x80000000) == 0)
      {
        v11 = v10;
        goto LABEL_10;
      }

      goto LABEL_54;
    }

    v9 = 0;
    v11 = v6;
LABEL_10:
    while (1)
    {
      v12 = getattrlistbulk(v11, &v39, v43, 0x8000uLL, 0);
      if (v12 == -1)
      {
        break;
      }

      v13 = v12;
      if (!v12)
      {
        goto LABEL_52;
      }

      if (v12 >= 1)
      {
        v14 = v43;
        while (1)
        {
          v15 = v14[1];
          v16 = v14 + *v14;
          v18 = v14[3];
          v17 = v14[4];
          if ((v15 & 0x20000000) == 0)
          {
            break;
          }

          if (!v14[6])
          {
            v19 = (v14 + 7);
            if (v15)
            {
LABEL_23:
              if (v19 + *v19 + v19[1] <= v16)
              {
                v20 = v19 + *v19;
              }

              else
              {
                v20 = 0;
              }

              v19 += 2;
              if ((v15 & 8) != 0)
              {
LABEL_27:
                v23 = *v19++;
                v21 = v23 == 2;
                if ((v15 & 0x2000000) != 0)
                {
LABEL_28:
                  v24 = *v19;
                  v19 += 2;
                  v22 = v24;
                  if (!v21)
                  {
LABEL_29:
                    if ((v17 & 1) == 0)
                    {
                      v25 = 0;
                      if ((v17 & 4) == 0)
                      {
                        goto LABEL_31;
                      }

LABEL_43:
                      v30 = *v19;
                      v19 += 2;
                      v26 = v30;
                      if ((v17 & 0x400) == 0)
                      {
                        goto LABEL_34;
                      }

LABEL_32:
                      if (!v26)
                      {
                        v26 = *v19;
                      }

                      goto LABEL_34;
                    }

                    v29 = *v19++;
                    v25 = v29 == 1;
                    if ((v17 & 4) != 0)
                    {
                      goto LABEL_43;
                    }

LABEL_31:
                    v26 = 0;
                    if ((v17 & 0x400) != 0)
                    {
                      goto LABEL_32;
                    }

LABEL_34:
                    if (v25 || !_dirstat_fileid_set_add(v7, v22))
                    {
                      *&__src = __src + v26;
                    }

LABEL_47:
                    ++*(&__src + 1);
                    goto LABEL_48;
                  }

LABEL_19:
                  if ((v18 & 2) != 0 && !*v19 || !v20)
                  {
                    goto LABEL_47;
                  }

                  v27 = malloc_type_malloc(0x10uLL, 0x30040E4270A41uLL);
                  v28 = v27;
                  if (v9)
                  {
                    asprintf(v27 + 1, "%s/%s", v9, v20);
                    if (v28[1])
                    {
LABEL_41:
                      *v28 = 0;
                      *v42 = v28;
                      v42 = v28;
                      goto LABEL_47;
                    }
                  }

                  else
                  {
                    v31 = strdup(v20);
                    v28[1] = v31;
                    if (v31)
                    {
                      goto LABEL_41;
                    }
                  }

                  free(v28);
                  goto LABEL_47;
                }

LABEL_18:
                v22 = 0;
                if (!v21)
                {
                  goto LABEL_29;
                }

                goto LABEL_19;
              }

LABEL_17:
              v21 = 0;
              if ((v15 & 0x2000000) != 0)
              {
                goto LABEL_28;
              }

              goto LABEL_18;
            }

LABEL_16:
            v20 = 0;
            if ((v15 & 8) != 0)
            {
              goto LABEL_27;
            }

            goto LABEL_17;
          }

LABEL_48:
          v14 = v16;
          if (!--v13)
          {
            goto LABEL_10;
          }
        }

        v19 = (v14 + 6);
        if (v15)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    if (v11 == v6)
    {
      v37 = *__error();
    }

LABEL_52:
    if (v9)
    {
      close_NOCANCEL();
LABEL_54:
      free(v9);
    }

    v8 = v41;
  }

  while (v41);
  _dirstat_fileid_set_destroy(v7);
  if (v37)
  {
    *__error() = v37;
    v32 = 0xFFFFFFFFLL;
  }

  else
  {
    v32 = 0;
  }

  v33 = *__error();
  if (v35 < 0x10)
  {
    memcpy(__dst, &__src, v35);
  }

  else
  {
    *__dst = __src;
  }

  close_NOCANCEL();
  *__error() = v33;
  return v32;
}

void *_dirstat_fileid_set_create()
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A0040EE89F85BuLL);
  v0[2] = 0x2000;
  v1 = malloc_type_calloc(0x2000uLL, 8uLL, 0x2004093837F09uLL);
  *v0 = v1;
  if (!v1)
  {
    free(v0);
    return 0;
  }

  return v0;
}

void _dirstat_fileid_set_destroy(char **a1)
{
  v2 = a1[2];
  v3 = *a1;
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = &v3[8 * i];
      v6 = *v5;
      if (*v5)
      {
        do
        {
          *v5 = *v6;
          free(v6);
          v3 = *a1;
          v5 = &(*a1)[8 * i];
          v6 = *v5;
        }

        while (*v5);
        v2 = a1[2];
      }
    }
  }

  free(v3);

  free(a1);
}

uint64_t os_parse_boot_arg_string(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = 0;
  sysctlbyname_get_data_np("kern.bootargs", v10, &v9);
  v6 = v10[0];
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = 0;
  _enum_boot_arg_values(v6, v10, _check_boot_arg_value);
  v7 = BYTE1(v11);
  free(v6);
  return v7;
}

uint64_t os_variant_is_recovery(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (recovery_release_type == 2)
  {
    return 0;
  }

  if (recovery_release_type != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_mach_msg_get_audit_trailer(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1)
  {
    return 0;
  }

  if (v1[1] <= 0x33u)
  {
    return 0;
  }

  return a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
}

uint64_t os_mach_msg_get_context_trailer(uint64_t a1)
{
  v1 = (a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL));
  if (*v1)
  {
    return 0;
  }

  if (v1[1] <= 0x3Bu)
  {
    return 0;
  }

  return a1 + ((*(a1 + 4) + 3) & 0x1FFFFFFFCLL);
}

void os_assert_mach_port_status(uint64_t a1, mach_port_name_t a2, int *a3)
{
  v79 = *MEMORY[0x29EDCA608];
  v69 = 0;
  *port_info_out = 0u;
  v68 = 0u;
  port_info_outCnt = 10;
  attributes = mach_port_get_attributes(*MEMORY[0x29EDCA6B0], a2, 2, port_info_out, &port_info_outCnt);
  if (attributes)
  {
    os_assert_mach("get status", attributes);
  }

  v5 = *a3;
  if (*a3 != -1 && v5 != port_info_out[0])
  {
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    v24 = MEMORY[0x29EDCA988];
    v25 = v5;
    v26 = port_info_out[0];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v70 = 67109376;
    v71 = v26;
    v72 = 1024;
    v73 = v25;
    _os_log_send_and_compose_impl(v28, &v65, &v74, 80, &dword_299DD7000, v24, 16, "port set mismatch: actual = %u, expected = %u", &v70, 14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = a3[1];
  if (v7 != -1 && v7 != port_info_out[1])
  {
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    v29 = MEMORY[0x29EDCA988];
    v30 = v7;
    v31 = port_info_out[1];
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v70 = 67109376;
    v71 = v31;
    v72 = 1024;
    v73 = v30;
    _os_log_send_and_compose_impl(v32, &v65, &v74, 80, &dword_299DD7000, v29, 16, "sequence number mismatch: actual = %u, expected = %u", &v70, 14);
    _os_crash_msg();
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[2];
  if (v8 != -1)
  {
    v9 = port_info_out[2];
    if (v8 != port_info_out[2])
    {
LABEL_35:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v33 = MEMORY[0x29EDCA988];
      v34 = v8;
      v35 = v9;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v36 = 3;
      }

      else
      {
        v36 = 2;
      }

      v70 = 67109376;
      v71 = v35;
      v72 = 1024;
      v73 = v34;
      _os_log_send_and_compose_impl(v36, &v65, &v74, 80, &dword_299DD7000, v33, 16, "make-send count mismatch: actual = %u, expected = %u", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }
  }

  v10 = a3[3];
  if (v10 != -1)
  {
    v11 = port_info_out[3];
    if (v10 != port_info_out[3])
    {
LABEL_39:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v37 = MEMORY[0x29EDCA988];
      v38 = v10;
      v39 = v11;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v40 = 3;
      }

      else
      {
        v40 = 2;
      }

      v70 = 67109376;
      v71 = v39;
      v72 = 1024;
      v73 = v38;
      _os_log_send_and_compose_impl(v40, &v65, &v74, 80, &dword_299DD7000, v37, 16, "queue limit mismatch: actual = %u, expected = %u", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_43;
    }
  }

  v12 = a3[4];
  if (v12 != -1)
  {
    v13 = v68;
    if (v12 != v68)
    {
LABEL_43:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v41 = MEMORY[0x29EDCA988];
      v42 = v12;
      v43 = v13;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v70 = 67109376;
      v71 = v43;
      v72 = 1024;
      v73 = v42;
      _os_log_send_and_compose_impl(v44, &v65, &v74, 80, &dword_299DD7000, v41, 16, "message count mismatch: actual = %u, expected = %u", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_47;
    }
  }

  v14 = a3[5];
  if (v14 != -1)
  {
    v15 = DWORD1(v68);
    if (v14 != DWORD1(v68))
    {
LABEL_47:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v45 = MEMORY[0x29EDCA988];
      v46 = v14;
      v47 = v15;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v48 = 3;
      }

      else
      {
        v48 = 2;
      }

      v70 = 67109376;
      v71 = v47;
      v72 = 1024;
      v73 = v46;
      _os_log_send_and_compose_impl(v48, &v65, &v74, 80, &dword_299DD7000, v45, 16, "send-once rights mismatch: actual = %u, expected = %u", &v70, 14);
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v49 = MEMORY[0x29EDCA988];
      v50 = v22;
      v51 = v23;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v52 = 3;
      }

      else
      {
        v52 = 2;
      }

      v70 = 67109376;
      v71 = v51;
      v72 = 1024;
      v73 = v50;
      _os_log_send_and_compose_impl(v52, &v65, &v74, 80, &dword_299DD7000, v49, 16, "flags mismatch: actual = %#x, expected = %#x", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_55;
    }
  }

  v16 = a3[6];
  if (v16 != 0x7FFFFFFF)
  {
    v17 = DWORD2(v68);
    if (v16 != DWORD2(v68))
    {
LABEL_55:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v53 = MEMORY[0x29EDCA988];
      v54 = v16;
      v55 = v17;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v56 = 3;
      }

      else
      {
        v56 = 2;
      }

      v70 = 67109376;
      v71 = v55;
      v72 = 1024;
      v73 = v54;
      _os_log_send_and_compose_impl(v56, &v65, &v74, 80, &dword_299DD7000, v53, 16, "send rights mismatch: actual = %d, expected = %d", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }
  }

  v18 = a3[7];
  if (v18 != 0x7FFFFFFF)
  {
    v19 = HIDWORD(v68);
    if (v18 != HIDWORD(v68))
    {
LABEL_59:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v57 = MEMORY[0x29EDCA988];
      v58 = v18;
      v59 = v19;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v70 = 67109376;
      v71 = v59;
      v72 = 1024;
      v73 = v58;
      _os_log_send_and_compose_impl(v60, &v65, &v74, 80, &dword_299DD7000, v57, 16, "port-destroyed mismatch: actual = %d, expected = %d", &v70, 14);
      _os_crash_msg();
      __break(1u);
      goto LABEL_63;
    }
  }

  v20 = a3[8];
  if (v20 == 0x7FFFFFFF || (v21 = v69, v20 == v69))
  {
    v22 = a3[9];
    if (!v22)
    {
      return;
    }

    v23 = HIDWORD(v69);
    if (v22 == HIDWORD(v69))
    {
      return;
    }

    goto LABEL_51;
  }

LABEL_63:
  v65 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v61 = MEMORY[0x29EDCA988];
  v62 = v20;
  v63 = v21;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v64 = 3;
  }

  else
  {
    v64 = 2;
  }

  v70 = 67109376;
  v71 = v63;
  v72 = 1024;
  v73 = v62;
  _os_log_send_and_compose_impl(v64, &v65, &v74, 80, &dword_299DD7000, v61, 16, "no-senders mismatch: actual = %d, expected = %d", &v70, 14);
  _os_crash_msg();
  __break(1u);
}

double OUTLINED_FUNCTION_0()
{
  result = 0.0;
  *(v0 - 96) = 0u;
  *(v0 - 80) = 0u;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, float a2)
{
  *(v3 - 176) = a2;
  *(v2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v9, a2, v10 - 144, 80, a5, v8, 16, a8);
}

double OUTLINED_FUNCTION_5()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v1 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return _os_log_send_and_compose_impl(a1, va, v18 - 144, 80, a5, v17, 16, a8);
}

BOOL OUTLINED_FUNCTION_11()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return _os_crash_msg();
}

double OUTLINED_FUNCTION_13()
{
  result = 0.0;
  *(v0 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return _os_crash_msg();
}

uint64_t os_variant_allows_security_research(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (allows_security_research == 2)
  {
    return 0;
  }

  if (allows_security_research != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t os_variant_check(uint64_t a1, const char *a2)
{
  v4 = "AllowsInternalSecurityPolicies";
  for (i = &off_2A201FA38; ; i += 2)
  {
    v6 = strlen(v4);
    if (!strncasecmp(v4, a2, v6))
    {
      break;
    }

    v7 = *i;
    v4 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(i - 1);

  return v9(a1);
}

char *os_variant_copy_description(uint64_t a1)
{
  v10 = 0;
  __bufp = 0;
  result = open_memstream(&__bufp, &v10);
  if (result)
  {
    v3 = result;
    v4 = 0;
    v5 = "AllowsInternalSecurityPolicies";
    v6 = &off_2A201FA38;
    do
    {
      if ((*(v6 - 1))(a1))
      {
        if ((v4 & 1) != 0 && fputc(32, v3) == -1 || fputs(v5, v3) == -1)
        {
          v8 = *__error();
          fclose(v3);
          goto LABEL_13;
        }

        v4 = 1;
      }

      v7 = *v6;
      v6 += 2;
      v5 = v7;
    }

    while (v7);
    if (fclose(v3) != -1)
    {
      return __bufp;
    }

    v8 = *__error();
LABEL_13:
    free(__bufp);
    v9 = __error();
    result = 0;
    *v9 = v8;
  }

  return result;
}

uint64_t os_variant_init_4launchd()
{
  v6 = *MEMORY[0x29EDCA608];
  if (getpid() != 1)
  {
    os_variant_init_4launchd_cold_1(&v4, v5);
  }

  has_full_logging = 3;
  _parse_disabled_status();
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (!can_has_debugger)
  {
    os_variant_init_4launchd_cold_11(&v4, v5);
  }

  if (!is_ephemeral)
  {
    os_variant_init_4launchd_cold_10(&v4, v5);
  }

  if (!has_full_logging)
  {
    os_variant_init_4launchd_cold_9(&v4, v5);
  }

  if (!internal_release_type)
  {
    os_variant_init_4launchd_cold_8(&v4, v5);
  }

  if (!factory_release_type)
  {
    os_variant_init_4launchd_cold_7(&v4, v5);
  }

  if (!darwin_release_type)
  {
    os_variant_init_4launchd_cold_6(&v4, v5);
  }

  if (!recovery_release_type)
  {
    os_variant_init_4launchd_cold_5(&v4, v5);
  }

  if (!development_kernel)
  {
    os_variant_init_4launchd_cold_4(&v4, v5);
  }

  if (!allows_security_research)
  {
    os_variant_init_4launchd_cold_3(&v4, v5);
  }

  v0 = 0;
  v1 = (is_ephemeral << 14) | (4 * can_has_debugger) | (has_full_logging << 24) | (16 * internal_release_type) | (factory_release_type << 10) | (darwin_release_type << 12) | (recovery_release_type << 16) | (development_kernel << 20) | (allows_security_research << 26) | 0x70000000F0000000;
  do
  {
    if (*(&disabled_status + v0))
    {
      v2 = 0x100000000 << v0;
    }

    else
    {
      v2 = 0;
    }

    v1 |= v2;
    ++v0;
  }

  while (v0 != 4);
  *&v5[0] = v1;
  return sysctlbyname("kern.osvariant_status", 0, 0, v5, 8uLL);
}

void _parse_disabled_status()
{
  __stringp[10] = *MEMORY[0x29EDCA608];
  disabled_status = 0;
  if (!access("/var/db/disableAppleInternal", 0) || !access("/usr/share/misc/os_variant_override", 0))
  {
    file = _read_file("/usr/share/misc/os_variant_override", 0);
    if (!file)
    {
      file = strdup("content,diagnostics,ui,security");
      if (!file)
      {
        _parse_disabled_status_cold_1(&v5, __stringp);
      }
    }

    v1 = file;
    __stringp[0] = file;
    v2 = strsep(__stringp, ",\n");
    if (v2)
    {
      v3 = v2;
      while (strcmp(v3, "content"))
      {
        if (!strcmp(v3, "diagnostics"))
        {
          v4 = (&disabled_status + 1);
          goto LABEL_16;
        }

        if (*v3 == 117 && v3[1] == 105 && !v3[2])
        {
          v4 = (&disabled_status + 2);
          goto LABEL_16;
        }

        if (!strcmp(v3, "security"))
        {
          v4 = (&disabled_status + 3);
LABEL_16:
          *v4 = 1;
        }

        v3 = strsep(__stringp, ",\n");
        if (!v3)
        {
          goto LABEL_20;
        }
      }

      v4 = &disabled_status;
      goto LABEL_16;
    }

LABEL_20:
    free(v1);
  }
}

void *_read_file(uint64_t a1, off_t *a2)
{
  v3 = open_NOCANCEL();
  if (v3 == -1)
  {
    return 0;
  }

  memset(&v9, 0, sizeof(v9));
  v4 = 0;
  if (fstat(v3, &v9) || (st_size = v9.st_size) == 0)
  {
LABEL_14:
    close_NOCANCEL();
    free(v4);
    return 0;
  }

  if (a2)
  {
    v6 = *a2;
    if (!*a2)
    {
      v6 = 1024;
    }

    *a2 = v9.st_size;
  }

  else
  {
    v6 = 1024;
  }

  if (st_size > v6)
  {
    v4 = 0;
    goto LABEL_14;
  }

  v4 = malloc_type_malloc(st_size + 1, 0xCA8F296uLL);
  if (!v4)
  {
    goto LABEL_14;
  }

  NOCANCEL = read_NOCANCEL();
  *(v4 + st_size) = 0;
  if (NOCANCEL != st_size)
  {
    goto LABEL_14;
  }

  close_NOCANCEL();
  return v4;
}

uint64_t os_variant_has_full_logging(uint64_t a1)
{
  if (_initialize_status_once != -1)
  {
    os_variant_has_internal_content_cold_1();
  }

  if (has_full_logging == 2)
  {
    return 0;
  }

  if (has_full_logging != 3)
  {
    _check_internal_release_type_cold_2();
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return _os_crash_msg();
}

uint64_t os_localtime_file(char *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v5.tv_sec = 0;
  *&v5.tv_usec = 0;
  memset(&v4, 0, sizeof(v4));
  if (gettimeofday(&v5, 0) == -1)
  {
    os_localtime_file_cold_1(&v3, v6);
  }

  localtime_r(&v5.tv_sec, &v4);
  return snprintf(a1, 0x20uLL, "%d-%02d-%02d_%02d.%02d.%02d.%06d", v4.tm_year + 1900, v4.tm_mon + 1, v4.tm_mday, v4.tm_hour, v4.tm_min, v4.tm_sec, v5.tv_usec);
}

unint64_t os_simple_hash_string_with_seed(char *a1, uint64_t a2)
{
  v4 = strlen(a1);

  return os_simple_hash_with_seed(a1, v4, a2);
}

unint64_t os_simple_hash_string(char *a1)
{
  v2 = strlen(a1);

  return os_simple_hash_with_seed(a1, v2, 0);
}

uint64_t realpath_np(uint64_t a1)
{
  result = fcntl_NOCANCEL();
  if (result)
  {
    return *__error();
  }

  return result;
}

uint64_t memdup_np(void *a1, const void *a2, size_t size)
{
  v6 = malloc_type_malloc(size, 0x864A149CuLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  memcpy(v6, a2, size);
  result = 0;
  *a1 = v7;
  return result;
}

void *memdup2_np(const void *a1, size_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_malloc(a2, 0x5C008F58uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_malloc(a2, 0x2F48DA65uLL);
    if (!v4)
    {
      memdup2_np_cold_1(&v6, v7, a2);
    }
  }

  return memcpy(v4, a1, a2);
}

uint64_t os_subcommand_main(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v42 = 5242904;
  __endptr = 0;
  v4 = getenv("COLUMNS");
  if (v4)
  {
    v5 = v4;
    v6 = strtoul(v4, &__endptr, 0);
    if (__endptr != v5 && *__endptr)
    {
      LOWORD(v42) = v6;
    }
  }

  else
  {
    v41 = &v42;
    if (ioctl(0, 0x40087468uLL))
    {
      LODWORD(v42) = 5242904;
    }
  }

  __ttys = v42;
  v7 = _NSGetMachExecuteHeader();
  __endptr = 0;
  v8 = getsectdatafromheader_64(v7, "__DATA_CONST", "__subcommands", &__endptr);
  v9 = &v8[_dyld_get_image_slide()];
  v10 = _NSGetMachExecuteHeader();
  __endptr = 0;
  v11 = getsectdatafromheader_64(v10, "__DATA_CONST", "__subcommands", &__endptr);
  if (v9 < &v11[_dyld_get_image_slide() + __endptr])
  {
    while ((*(*v9 + 8) & 8) == 0)
    {
      v9 += 8;
      v12 = _NSGetMachExecuteHeader();
      __endptr = 0;
      v13 = getsectdatafromheader_64(v12, "__DATA_CONST", "__subcommands", &__endptr);
      if (v9 >= &v13[_dyld_get_image_slide() + __endptr])
      {
        goto LABEL_12;
      }
    }

    _main_cmd = *v9;
  }

LABEL_12:
  if (_os_subcommand_be_helpful(_main_cmd, v3, a2))
  {
    _print_subcommand_list(*MEMORY[0x29EDCA620]);
    return 0;
  }

  result = (*(_main_cmd + 9))();
  if (result == 64)
  {
    goto LABEL_25;
  }

  if (result)
  {
    return result;
  }

  v20 = *MEMORY[0x29EDCA658];
  v21 = __OFSUB__(v3, v20);
  v22 = (v3 - v20);
  if ((v22 < 0) ^ v21 | (v22 == 0))
  {
    v33 = *MEMORY[0x29EDCA610];
    v34 = "please provide a subcommand";
LABEL_24:
    os_subcommand_fprintf(result, v33, v34, v15, v16, v17, v18, v19, v41);
LABEL_25:
    _print_subcommand_list(*MEMORY[0x29EDCA610]);
    return 64;
  }

  v23 = (a2 + 8 * v20);
  v24 = *v23;
  result = _os_subcommand_find(*v23);
  if (!result)
  {
    v33 = *MEMORY[0x29EDCA610];
    v41 = v24;
    v34 = "unknown subcommand: %s";
    goto LABEL_24;
  }

  v25 = result;
  v26 = *(result + 8);
  if (v26)
  {
    v27 = geteuid();
    if (v27)
    {
      os_subcommand_fprintf(v27, *MEMORY[0x29EDCA610], "subcommand requires root: %s", v28, v29, v30, v31, v32, v24);
      return 77;
    }

    v26 = *(v25 + 8);
  }

  if ((v26 & 2) != 0)
  {
    v35 = isatty(1);
    if (!v35 || (v35 = isatty(0), !v35))
    {
      os_subcommand_fprintf(v35, *MEMORY[0x29EDCA610], "subcommand requires a tty: %s", v36, v37, v38, v39, v40, v24);
      return 69;
    }
  }

  if (_os_subcommand_be_helpful(v25, v22, v23))
  {
    return 0;
  }

  result = (*(v25 + 72))(v25, v22, v23);
  if (result == 64)
  {
    _os_subcommand_print_usage(v25, *MEMORY[0x29EDCA610]);
    return 64;
  }

  return result;
}

uint64_t _os_subcommand_be_helpful(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (a2 == 1 && (v4 & 0x10) != 0)
  {
LABEL_3:
    _os_subcommand_print_usage(a1, *MEMORY[0x29EDCA620]);
    return 1;
  }

  result = 0;
  if (a2 == 2 && (v4 & 0x20) != 0)
  {
    v6 = *(a3 + 8);
    if (strcmp(v6, "help") && (*v6 != 45 || *(v6 + 1) != 104 || *(v6 + 2)) && strcmp(v6, "-help") && strcmp(v6, "--help"))
    {
      return 0;
    }

    goto LABEL_3;
  }

  return result;
}

void _print_subcommand_list(FILE *a1)
{
  v10 = 0;
  v2 = _NSGetMachExecuteHeader();
  size = 0;
  v3 = getsectdatafromheader_64(v2, "__DATA_CONST", "__subcommands", &size);
  v4 = &v3[_dyld_get_image_slide()];
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__subcommands", &size);
  if (v4 < &v6[_dyld_get_image_slide() + size])
  {
    do
    {
      v7 = *v4;
      _print_header(a1, "SUBCOMMANDS", &v10);
      if ((*(v7 + 8) & 0xC) == 0)
      {
        _os_subcommand_print_help_line(v7, a1);
      }

      ++v4;
      v8 = _NSGetMachExecuteHeader();
      size = 0;
      v9 = getsectdatafromheader_64(v8, "__DATA_CONST", "__subcommands", &size);
    }

    while (v4 < &v9[_dyld_get_image_slide() + size]);
  }

  _os_subcommand_print_help_line(&__help_cmd, a1);
}

void *_os_subcommand_find(char *__s2)
{
  if (!__s2)
  {
    return _main_cmd;
  }

  if (!strcmp("help", __s2))
  {
    return &__help_cmd;
  }

  v2 = _NSGetMachExecuteHeader();
  size = 0;
  v3 = getsectdatafromheader_64(v2, "__DATA_CONST", "__subcommands", &size);
  v4 = &v3[_dyld_get_image_slide()];
  v5 = _NSGetMachExecuteHeader();
  size = 0;
  v6 = getsectdatafromheader_64(v5, "__DATA_CONST", "__subcommands", &size);
  if (v4 >= &v6[_dyld_get_image_slide() + size])
  {
    return 0;
  }

  while (1)
  {
    v7 = *v4;
    if ((*(*v4 + 8) & 8) == 0 && !strcmp(*(v7 + 16), __s2))
    {
      break;
    }

    v4 += 8;
    v8 = _NSGetMachExecuteHeader();
    size = 0;
    v9 = getsectdatafromheader_64(v8, "__DATA_CONST", "__subcommands", &size);
    if (v4 >= &v9[_dyld_get_image_slide() + size])
    {
      return 0;
    }
  }

  return v7;
}

void _os_subcommand_print_usage(uint64_t a1, FILE *a2)
{
  v44 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v38 = 1;
  v41 = 0;
  if (*(a1 + 56))
  {
    v4 = " [options]";
  }

  else
  {
    v4 = "";
  }

  if (_main_cmd == a1)
  {
    __str[0] = 0;
  }

  else
  {
    snprintf(__str, 0x40uLL, " %s", *(a1 + 16));
  }

  v5 = getprogname();
  if (asprintf(&v41, "%s%s%s", v5, __str, v4) < 0)
  {
    _os_subcommand_print_usage_cold_1(&v40, v42);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = 0;
    do
    {
      if (*(v6 + 8))
      {
        break;
      }

      v8 = v41;
      v9 = _os_subcommand_copy_option_spec_long(v6);
      if (asprintf(&v41, "%s %s", v41, v9) < 0)
      {
        _os_subcommand_print_usage_cold_1(&v40, v42);
      }

      ++v7;
      free(v9);
      free(v8);
      v10 = *(a1 + 48);
      v6 = v10 + 40 * v7;
    }

    while (v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8);
      if (v13)
      {
        break;
      }

      if ((v13 & 2) != 0)
      {
        v14 = "[";
      }

      else
      {
        v14 = "<";
      }

      if ((v13 & 2) != 0)
      {
        v15 = "]";
      }

      else
      {
        v15 = ">";
      }

      v16 = v41;
      v17 = _os_subcommand_copy_option_spec_long(v11);
      if (asprintf(&v41, "%s %s%s%s", v41, v14, v17, v15) < 0)
      {
        _os_subcommand_print_usage_cold_1(&v40, v42);
      }

      ++v12;
      free(v17);
      free(v16);
      v18 = *(a1 + 64);
      v11 = v18 + 40 * v12;
    }

    while (v18);
  }

  if (a1 != &__main_cmd && _main_cmd == a1)
  {
    v20 = v41;
    v21 = _os_subcommand_copy_option_spec_long(&_main_positional);
    if (asprintf(&v41, "%s <%s>", v41, v21) < 0)
    {
      _os_subcommand_print_usage_cold_1(&v40, v42);
    }

    free(v21);
    free(v20);
  }

  v22 = v41;
  wfprintf_np(a2, 0, 4uLL, WORD1(__ttys), "USAGE:");
  crfprintf_np(a2, "");
  wfprintf_np(a2, 4, 4uLL, WORD1(__ttys), "%s", v22);
  if (*(a1 + 80))
  {
    _print_header(a2, "DESCRIPTION", 0);
    wfprintf_np(a2, 4, 4uLL, WORD1(__ttys), "%s");
  }

  else if (*(a1 + 24))
  {
    crfprintf_np(a2, "");
    wfprintf_np(a2, 0, 4uLL, WORD1(__ttys), "DESCRIPTION: %s");
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    v24 = 0;
    do
    {
      if (*(v23 + 8))
      {
        break;
      }

      ++v24;
      _print_header(a2, "REQUIRED", &v39);
      _os_subcommand_print_option_usage(v23, a2, &v38);
      v25 = *(a1 + 48);
      v23 = v25 + 40 * v24;
    }

    while (v25);
    v26 = *(a1 + 64);
  }

  else
  {
    v26 = *(a1 + 64);
    if (!v26 && _main_cmd != a1)
    {
      goto LABEL_54;
    }
  }

  if (v26)
  {
    v27 = 0;
    v28 = v26;
    do
    {
      v29 = *(v28 + 8);
      if (v29)
      {
        break;
      }

      if ((v29 & 2) == 0)
      {
        _print_header(a2, "REQUIRED", &v39);
        _os_subcommand_print_option_usage(v28, a2, &v38);
        v26 = *(a1 + 64);
      }

      ++v27;
      v28 = v26 + 40 * v27;
    }

    while (v26);
  }

  if (a1 != &__main_cmd && _main_cmd == a1)
  {
    _print_header(a2, "REQUIRED", &v39);
    _os_subcommand_print_option_usage(&_main_positional, a2, &v38);
  }

LABEL_54:
  v39 = 0;
  v38 = 1;
  v31 = *(a1 + 56);
  if (v31)
  {
    v32 = 0;
    do
    {
      if (*(v31 + 8))
      {
        break;
      }

      ++v32;
      _print_header(a2, "OPTIONAL", &v39);
      _os_subcommand_print_option_usage(v31, a2, &v38);
      v33 = *(a1 + 56);
      v31 = v33 + 40 * v32;
    }

    while (v33);
  }

  v34 = *(a1 + 64);
  if (v34)
  {
    v35 = 0;
    v36 = *(a1 + 64);
    do
    {
      v37 = *(v36 + 8);
      if (v37)
      {
        break;
      }

      if ((v37 & 2) != 0)
      {
        _print_header(a2, "OPTIONAL", &v39);
        _os_subcommand_print_option_usage(v36, a2, &v38);
        v34 = *(a1 + 64);
      }

      ++v35;
      v36 = v34 + 40 * v35;
    }

    while (v34);
  }

  free(v22);
}

uint64_t os_subcommand_vfprintf(uint64_t a1, FILE *a2, const char *a3, va_list a4)
{
  if (!a1 || (*(a1 + 8) & 8) != 0)
  {
    getprogname();
    fprintf(a2, "%s: ");
  }

  else
  {
    getprogname();
    fprintf(a2, "%s-%s: ");
  }

  return vcrfprintf_np(a2, a3, a4);
}

FILE *_print_header(FILE *result, const char *a2, _BYTE *a3)
{
  v4 = result;
  if (a3)
  {
    if ((*a3 & 1) == 0)
    {
      crfprintf_np(result, "");
      crfprintf_np(v4, "%s:", a2);
      result = crfprintf_np(v4, "");
      *a3 = 1;
    }
  }

  else
  {
    crfprintf_np(result, "");
    crfprintf_np(v4, "%s:", a2);

    return crfprintf_np(v4, "");
  }

  return result;
}

void _os_subcommand_print_help_line(uint64_t a1, FILE *a2)
{
  fprintf(a2, "    %-8s    ", *(a1 + 16));
  if (strlen(*(a1 + 16)) < 0xC)
  {
    v4 = -16;
  }

  else
  {
    crfprintf_np(a2, "");
    v4 = 16;
  }

  wfprintf_np(a2, v4, 0x10uLL, WORD1(__ttys), "%s", *(a1 + 24));
}

uint64_t _help_invoke(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a3 + 8);
  }

  v4 = *MEMORY[0x29EDCA620];
  v5 = _os_subcommand_find(v3);
  v6 = v5;
  v7 = MEMORY[0x29EDCA610];
  if (v5)
  {
    v8 = 0;
    v9 = v5;
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "unrecognized subcommand: %s\n", v3);
    v9 = _main_cmd;
    v8 = 69;
  }

  if (v6)
  {
    v10 = v4;
  }

  else
  {
    v10 = *v7;
  }

  _os_subcommand_print_usage(v9, v10);
  if (v9 == _main_cmd)
  {
    _print_subcommand_list(v10);
  }

  return v8;
}

void _os_subcommand_print_option_usage(uint64_t a1, FILE *a2, _BYTE *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((*a3 & 1) == 0)
  {
    crfprintf_np(a2, "");
  }

  v6 = _os_subcommand_copy_option_spec_long(a1);
  v7 = v6;
  v12 = v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    if (asprintf(&v12, "-%c | %s", *(v8 + 24), v6) < 0)
    {
      _os_subcommand_print_usage_cold_1(&v11, v13);
    }

    v9 = v12;
  }

  else
  {
    v9 = v6;
    v7 = 0;
  }

  free(v7);
  fprintf(a2, "    %-8s    ", v9);
  if (strlen(v9) < 0xC)
  {
    v10 = -16;
  }

  else
  {
    crfprintf_np(a2, "");
    v10 = 16;
  }

  wfprintf_np(a2, v10, 0x10uLL, WORD1(__ttys), "%s", *(a1 + 32));
  *a3 = 0;
  free(v9);
}

char *_os_subcommand_copy_option_spec_long(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 16);
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v7 = 0;
  if (v2)
  {
    snprintf(__str, 0x40uLL, "--%s", *v2);
    v3 = *(v2 + 8);
    if (v3)
    {
      if (v3 == 2)
      {
        snprintf(v9, 0x40uLL, "[=%s]");
      }

      else
      {
        snprintf(v9, 0x40uLL, "=<%s>");
      }
    }

    if ((*(a1 + 8) & 4) == 0)
    {
      v4 = v9;
      goto LABEL_10;
    }
  }

  else
  {
    v4 = __str;
    snprintf(__str, 0x40uLL, "%s", *(a1 + 24));
    if ((*(a1 + 8) & 4) == 0)
    {
LABEL_10:
      _stoupper(v4);
    }
  }

  if (asprintf(&v7, "%s%s", __str, v9) < 0)
  {
    _os_subcommand_print_usage_cold_1(&v6, v8);
  }

  return v7;
}

size_t _stoupper(char *a1)
{
  v1 = a1;
  result = strlen(a1);
  if (result)
  {
    v3 = result;
    do
    {
      result = ___toupper(*v1);
      *v1++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double OUTLINED_FUNCTION_1_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4_1()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t fcheck_np(FILE *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (feof(a1))
  {
    return 0xFFFFFFFFLL;
  }

  ferror(a1);
  return 1;
}

uint64_t dup_np(int a1)
{
  v6 = *MEMORY[0x29EDCA608];
  while (1)
  {
    result = dup(a1);
    if ((result & 0x80000000) == 0)
    {
      break;
    }

    v3 = *__error();
    if (v3 != 4)
    {
      if ((v3 - 23) < 2)
      {
        dup_np_cold_1();
      }

      if (v3 == 9)
      {
        dup_np_cold_2();
      }

      dup_np_cold_3(&v4, v5);
    }
  }

  return result;
}

uint64_t claimfd_np(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (a2 && change_fdguard_np())
  {
    claimfd_np_cold_1(&v6, v7);
  }

  *a1 = -1;
  return v4;
}

uint64_t xferfd_np(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  if (change_fdguard_np())
  {
    claimfd_np_cold_1(&v6, v7);
  }

  *a1 = -1;
  return v4;
}

uint64_t close_drop_np(_DWORD *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    result = guarded_close_np();
  }

  else
  {
    result = close_NOCANCEL();
  }

  if (result == -1)
  {
    close_drop_np_cold_1(&v4, v5);
  }

  *a1 = -1;
  return result;
}

_DWORD *close_drop_optional_np(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    return close_drop_np(a1, a2);
  }

  return a1;
}

uint64_t zsnprintf_np(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = vsnprintf(a1, a2, a3, va);
  if (v9 >= a2)
  {
    v10 = a2 - 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 < 0)
  {
    return 0;
  }

  return v10;
}

uint64_t crfprintf_np(FILE *a1, const char *a2, ...)
{
  va_start(va, a2);
  vfprintf(a1, a2, va);
  return fputc(10, a1);
}

uint64_t vcrfprintf_np(FILE *a1, const char *a2, va_list a3)
{
  vfprintf(a1, a2, a3);

  return fputc(10, a1);
}

void vwfprintf_np(FILE *a1, int64_t a2, size_t a3, unint64_t a4, char *a5, va_list a6)
{
  v27 = 0;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = -a2;
  }

  v26 = v6;
  if (a4 - 1 < a3)
  {
    vwfprintf_np_cold_3();
  }

  if (a2 >= 1 && a4 && v6 >= a4)
  {
    vwfprintf_np_cold_1();
  }

  if (a2 < 0 && a4 && v6 >= a4)
  {
    vwfprintf_np_cold_2();
  }

  v10 = vasprintf(&v27, a5, a6);
  v11 = 0;
  if ((v10 & 0x80000000) != 0)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_39;
  }

  v12 = v27;
  v13 = 0;
  v14 = 0;
  if (v27)
  {
    v15 = v10;
    v11 = malloc_type_malloc(v10 + 1, 0xD1A1641CuLL);
    if (v11)
    {
      v16 = malloc_type_malloc(v26 + 1, 0xB936889uLL);
      v13 = v16;
      if (v16)
      {
        v17 = v16;
        if ((a2 & 0x8000000000000000) == 0)
        {
          memset(v16, 32, a2);
          v17 = &v13[a2];
        }

        *v17 = 0;
        v18 = malloc_type_malloc(a3 + 1, 0x4632BAFEuLL);
        v14 = v18;
        if (v18)
        {
          memset(v18, 32, a3);
          v14[a3] = 0;
          do
          {
            v19 = v26;
            if (v12 == v27)
            {
              v20 = v13;
            }

            else
            {
              v19 = a3;
              v20 = v14;
            }

            v21 = a4 - v19;
            if (a4 - v19 >= v15)
            {
              v22 = v15;
            }

            else
            {
              v22 = a4 - v19;
            }

            if (a4)
            {
              v23 = v22;
            }

            else
            {
              v23 = v15;
            }

            strlcpy(v11, v12, v23 + 1);
            v24 = strchr(v11, 10);
            if (!v24 && a4 && v21 < v15)
            {
              v24 = strrchr(v11, 32);
            }

            if (v24)
            {
              *v24 = 0;
              v23 = v24 - v11;
              v12 += v24 - v11 + 1;
            }

            fprintf(a1, "%s%s\n", v20, v11);
            v15 -= v23;
          }

          while (v15);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = 0;
  }

LABEL_39:
  free(v14);
  free(v13);
  free(v11);
  free(v27);
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v11, v9, v8, 80, a5, v10, 16, a8);
}

uint64_t os_crash_set_reporter_port(host_priv_t a1, unsigned int a2, mach_port_t a3)
{
  if ((a2 & 8) != 0)
  {
    v6 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | 0x2000;
  }

  else
  {
    v6 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | ((a2 & 1) << 10);
  }

  port = 0;
  v7 = MEMORY[0x29C2B1820]();
  special_port = host_get_special_port(v7, -1, 2, &port);
  if (!a2)
  {
    return 0;
  }

  if (MEMORY[0x29C2B1820](special_port) == a1 || port == a1)
  {
    return host_set_exception_ports(a1, v6, a3, -2147483645, 1);
  }

  return task_set_exception_ports(a1, v6, a3, -2147483645, 1);
}

uint64_t os_crash_get_reporter_port_array(task_t a1, _OWORD *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  *port = 0;
  v4 = MEMORY[0x29C2B1820]();
  special_port = host_get_special_port(v4, -1, 2, port);
  if (MEMORY[0x29C2B1820](special_port) == a1 || port[0] == a1)
  {
    v7 = MEMORY[0x29C2B1820]();
    exception_ports = host_get_exception_ports(v7, 0x3C00u, masks, &port[1], old_handlers, old_behaviors, old_flavors);
  }

  else
  {
    exception_ports = task_get_exception_ports(a1, 0x3C00u, masks, &port[1], old_handlers, old_behaviors, old_flavors);
  }

  v8 = exception_ports;
  if (!exception_ports)
  {
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    if (!port[1])
    {
      return 0;
    }

    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x29EDCA6B0];
    do
    {
      v13 = masks[v11];
      if ((v13 & 0x400) != 0)
      {
        v17 = a2 + 2 * v10;
        v18 = old_handlers[v11];
        *v17 = 1;
        v17[1] = v18;
        if (mach_port_mod_refs(*v12, v18, 0, 1))
        {
          v19 = -1;
        }

        else
        {
          v19 = v18;
        }

        v17[1] = v19;
        ++v10;
        v13 = masks[v11];
        if ((v13 & 0x1000) == 0)
        {
LABEL_11:
          if ((v13 & 0x800) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_29;
        }
      }

      else if ((v13 & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      v20 = a2 + 2 * v10;
      v21 = old_handlers[v11];
      *v20 = 2;
      v20[1] = v21;
      if (mach_port_mod_refs(*v12, v21, 0, 1))
      {
        v22 = -1;
      }

      else
      {
        v22 = v21;
      }

      v20[1] = v22;
      ++v10;
      v13 = masks[v11];
      if ((v13 & 0x800) == 0)
      {
LABEL_12:
        if ((v13 & 0x2000) == 0)
        {
          goto LABEL_17;
        }

LABEL_13:
        v14 = a2 + 2 * v10;
        v15 = old_handlers[v11];
        *v14 = 4;
        v14[1] = v15;
        if (mach_port_mod_refs(*v12, v15, 0, 1))
        {
          v16 = -1;
        }

        else
        {
          v16 = v15;
        }

        v14[1] = v16;
        ++v10;
        goto LABEL_17;
      }

LABEL_29:
      v23 = a2 + 2 * v10;
      v24 = old_handlers[v11];
      *v23 = 3;
      v23[1] = v24;
      if (mach_port_mod_refs(*v12, v24, 0, 1))
      {
        v25 = -1;
      }

      else
      {
        v25 = v24;
      }

      v23[1] = v25;
      ++v10;
      if ((masks[v11] & 0x2000) != 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v8 = mach_port_deallocate(*v12, old_handlers[v11]);
      if (v8)
      {
        os_assert_mach("deallocate port", v8);
      }

      ++v11;
    }

    while (v11 < port[1]);
  }

  return v8;
}

void os_crash_port_array_deallocate(uint64_t result)
{
  v1 = 0;
  v2 = result + 4;
  v3 = MEMORY[0x29EDCA6B0];
  do
  {
    v4 = *(v2 + v1);
    if (v4 + 1 >= 2)
    {
      v5 = mach_port_deallocate(*v3, v4);
      if (v5)
      {
        os_assert_mach("deallocate port", v5);
      }
    }

    v1 += 8;
  }

  while (v1 != 128);
}

uint64_t os_crash_spawnattr_set_reporter_port(posix_spawnattr_t *a1, unsigned int a2, mach_port_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | 0x2000;
  if ((a2 & 8) == 0)
  {
    v3 = (a2 << 9) & 0x800 | (((a2 >> 1) & 1) << 12) | ((a2 & 1) << 10);
  }

  if (a3 - 1 > 0xFFFFFFFD)
  {
    return 15;
  }

  if (!a2)
  {
    return 0;
  }

  result = posix_spawnattr_setexceptionports_np(a1, v3, a3, -2147483645, 1);
  if (result)
  {
    os_crash_spawnattr_set_reporter_port_cold_1(&v5, v6, result);
  }

  return result;
}

uint64_t __os_temporary_resource_shortage()
{
  v0 = sleep_NOCANCEL();

  return MEMORY[0x2A1C74F38](v0);
}

uint64_t _print_preamble(FILE *a1, const char *a2, va_list a3)
{
  v6 = getprogname();
  fprintf(a1, "%s: ", v6);

  return vfprintf(a1, a2, a3);
}

uint64_t os_parse_boot_arg_from_buffer_int(const char *a1, char *a2, uint64_t *a3)
{
  v5 = strdup(a1);
  v6 = _parse_boot_arg_int(v5, a2, a3);
  free(v5);
  return v6;
}

uint64_t os_parse_boot_arg_from_buffer_string(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = strdup(a1);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v11 = 0;
  _enum_boot_arg_values(v7, v10, _check_boot_arg_value);
  v8 = BYTE1(v11);
  free(v7);
  return v8;
}

BOOL os_boot_arg_string_to_int(const char *a1, uint64_t *a2)
{
  __endptr = 0;
  v3 = strtoll(a1, &__endptr, 0);
  v4 = *__endptr;
  if (!*__endptr)
  {
    *a2 = v3;
  }

  return v4 == 0;
}

void os_enumerate_boot_args(uint64_t a1, uint64_t (*a2)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  v6 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &v6, &v5);
  v4 = v6;
  _enum_boot_arg_values(v6, a1, a2);

  free(v4);
}

void os_enumerate_boot_args_from_buffer(const char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, unsigned __int8 *, const char *, BOOL))
{
  v5 = strdup(a1);
  _enum_boot_arg_values(v5, a2, a3);

  free(v5);
}

void os_enumerate_boot_args_b(uint64_t a1)
{
  __s1 = 0;
  sysctlbyname_get_data_np("kern.bootargs", &__s1, &v4);
  v2 = __s1;
  v3 = strdup(__s1);
  _enum_boot_arg_values(v3, a1, _visit_boot_args_enumerator_block);
  free(v3);

  free(v2);
}

void os_enumerate_boot_args_from_buffer_b(const char *a1, uint64_t a2)
{
  v3 = strdup(a1);
  _enum_boot_arg_values(v3, a2, _visit_boot_args_enumerator_block);

  free(v3);
}

BOOL _dirstat_fileid_set_add(char **a1, unint64_t a2)
{
  v4 = a1[2];
  if (a1[3] > 10 * v4 && (a1[4] & 1) == 0)
  {
    v4 *= 2;
    v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
      goto LABEL_4;
    }

    v14 = a1[1];
    if (!v14)
    {
      goto LABEL_16;
    }

    do
    {
      a1[1] = *v14;
      free(v14);
      v14 = a1[1];
    }

    while (v14);
    v5 = malloc_type_calloc(v4, 8uLL, 0x2004093837F09uLL);
    if (v5)
    {
LABEL_4:
      v6 = v5;
      v7 = a1[2];
      v8 = *a1;
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v10 = &v8[8 * i];
          v11 = *v10;
          if (*v10)
          {
            v12 = a2 % v4;
            do
            {
              *v10 = *v11;
              v13 = *&v6[8 * v12];
              if (v13)
              {
                *(v13 + 8) = v11;
                v13 = *&v6[8 * v12];
              }

              *v11 = v13;
              v11[1] = 0;
              *&v6[8 * v12] = v11;
              v8 = *a1;
              v10 = &(*a1)[8 * i];
              v11 = *v10;
            }

            while (*v10);
          }
        }
      }

      free(v8);
      *a1 = v6;
      a1[2] = v4;
    }

    else
    {
LABEL_16:
      *(a1 + 32) = 1;
      v4 = a1[2];
    }
  }

  v15 = a2 % v4;
  v16 = *a1;
  v17 = &(*a1)[8 * v15];
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    if (*(v17 + 2) == a2)
    {
      return v17 != 0;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    v18 = a1[1];
    if (v18)
    {
      a1[1] = *v18;
    }

    else
    {
      v18 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
      if (!v18)
      {
        *(a1 + 32) = 1;
        return v17 != 0;
      }

      v16 = *a1;
    }

    *(v18 + 2) = a2;
    ++a1[3];
    *v18 = *(v16 + 8 * v15);
    *(v18 + 1) = 0;
    v19 = *(v16 + 8 * v15);
    if (v19)
    {
      *(v19 + 8) = v18;
    }

    *(v16 + 8 * v15) = v18;
  }

  return v17 != 0;
}

uint64_t sysexit_np(unsigned int a1)
{
  v1 = &_negative_one;
  v2 = a1 - 200;
  v3 = &unk_29F28E7D8;
  if (a1 <= 0x6B)
  {
    v3 = &_posix_errors + 32 * a1;
  }

  if (v2 <= 0x16)
  {
    v4 = &_darwin_errors + 32 * v2;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v1 = v4;
  }

  return v1[1];
}

char *os_flagset_copy_string(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  bzero(&v21, 0x3FAuLL);
  qmemcpy(__s1, "[none]", sizeof(__s1));
  if (a1)
  {
    v9 = (a1 + 8);
    v10 = __s1;
    v11 = 1024;
    v12 = 64;
    do
    {
      v13 = *(v9 - 1);
      if (!v13)
      {
        break;
      }

      if ((v13 & a2) != 0)
      {
        v14 = *v9;
        v15 = __s1;
        if (v10 != __s1)
        {
          v16 = zsnprintf_np(v10, v11, "%s", v4, v5, v6, v7, v8, "|");
          v15 = &v10[v16];
          v11 -= v16;
        }

        v17 = zsnprintf_np(v15, v11, "%s", v4, v5, v6, v7, v8, v14);
        v10 = &v15[v17];
        v11 -= v17;
      }

      v9 += 2;
      --v12;
    }

    while (v12);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      result = strdup(__s1);
      if (result)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    result = strdup(__s1);
    if (!result)
    {
      os_flagset_copy_string_cold_1(__s1, &v19, v22);
    }
  }

  return result;
}

char *os_mach_msg_copy_description(unsigned int *a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = (v2 >> 8) & 0x1F;
  v4 = v2 & 0x1F;
  v5 = (v2 >> 16) & 0x1F;
  if ((v3 - 27) >= 0xFFFFFFF5)
  {
    v6 = _mach_port_dispositions[2 * v3 + 1];
  }

  else
  {
    v6 = "[invalid]";
  }

  if ((v4 - 27) >= 0xFFFFFFF5)
  {
    v7 = _mach_port_dispositions[2 * v4 + 1];
  }

  else
  {
    v7 = "[invalid]";
  }

  if ((v5 - 27) >= 0xFFFFFFF5)
  {
    v8 = _mach_port_dispositions[2 * v5 + 1];
  }

  else
  {
    v8 = "[invalid]";
  }

  v20 = 0;
  if ((v2 & 0x80000000) != 0)
  {
    v9 = a1[6];
  }

  else
  {
    v9 = 0;
  }

  v10 = os_flagset_copy_string(&_mach_msgh_bits, v2);
  if (asprintf(&v20, "id = %#x, size = %u, bits = %s, local disp = %s, local port = %#x, remote disp = %s, remote port = %#x, voucher disp = %s, voucher port = %#x, out-of-line descriptor cnt = %u", a1[5], a1[1], v10, v6, a1[3], v7, a1[2], v8, a1[4], v9) == -1)
  {
    v19 = 0;
    memset(v22, 0, sizeof(v22));
    v13 = MEMORY[0x29EDCA988];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 + 1;
    }

    v17 = *__error();
    v21[0] = 67109120;
    v21[1] = v17;
    LODWORD(v18) = 8;
    _os_log_send_and_compose_impl(v16, &v19, v22, 80, &dword_299DD7000, v13, 16, "assertion failure: ret -> %{errno}d", v21, v18);
    _os_crash_msg();
    __break(1u);
  }

  v11 = v20;
  free(v10);
  return v11;
}

char *os_mach_msg_trailer_copy_description(uint64_t a1)
{
  v291 = *MEMORY[0x29EDCA608];
  v279 = 0;
  v2 = *(a1 + 4);
  if (*a1)
  {
    v3 = asprintf(&v279, "type = %u, size = %u", *a1, v2);
    if (v3)
    {
      v38 = v3;
      *v286 = 0;
      v284 = 0u;
      v285 = 0u;
      v282 = 0u;
      v283 = 0u;
      *__str = 0u;
      v39 = MEMORY[0x29EDCA988];
      os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
      OUTLINED_FUNCTION_8();
      if (v26)
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 + 1;
      }

      v289 = 134217984;
      v290 = v38;
      _os_log_send_and_compose_impl(v41, v286, __str, 80, &dword_299DD7000, v39, 16, "assertion failure: ret.r -> %llu", &v289);
      _os_crash_msg();
      __break(1u);
    }

    return v279;
  }

  if (v2 >= 8)
  {
    v6 = snprintf(__str, 0x200uLL, "format = %u, size = %u", 0, v2);
    if ((v6 & 0x80000000) != 0)
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      if (v26)
      {
        v7 = v42;
      }

      else
      {
        v7 = v42 + 1;
      }

      v43 = __error();
      v44 = strerror(*v43);
      v45 = OUTLINED_FUNCTION_1(v44, 4.8149e-34);
      v50 = OUTLINED_FUNCTION_4(v45, &v280, v46, v47, &dword_299DD7000, v48, v49, "error printing buffer: %s");
      OUTLINED_FUNCTION_12(v50, v51, v52, v53, v54, v55, v56, v57, v221, v234, v242, v249, v255, v261, v267, v273, v279, v280);
      __break(1u);
    }

    else
    {
      v7 = v6;
      if (v6 < 0x201)
      {
        if (*(a1 + 4) < 0xCu)
        {
          goto LABEL_22;
        }

        v8 = &__str[v6];
        v9 = 512 - v6;
        v10 = snprintf(v8, v9, ", seqno = %u", *(a1 + 8));
        if ((v10 & 0x80000000) == 0)
        {
          v1 = v10;
          if (v9 >= v10)
          {
            if (*(a1 + 4) < 0x14u)
            {
              goto LABEL_22;
            }

            v11 = &v8[v10];
            v12 = v9 - v10;
            v13 = snprintf(v11, v12, ", security.uid = %u, security.gid = %u", *(a1 + 12), *(a1 + 16));
            if ((v13 & 0x80000000) == 0)
            {
              v1 = v13;
              if (v12 >= v13)
              {
                if (*(a1 + 4) < 0x34u)
                {
                  goto LABEL_22;
                }

                v14 = &v11[v13];
                v15 = v12 - v13;
                v16 = snprintf(v14, v15, ", audit.auid = %u, audit.euid = %u, audit.egid = %u, audit.ruid = %u, audit.rgid = %u, audit.pid = %u, audit.asid = %u, audit.pidvers = %u", *(a1 + 20), *(a1 + 24), *(a1 + 28), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 44), *(a1 + 48));
                if ((v16 & 0x80000000) == 0)
                {
                  if (v15 >= v16)
                  {
                    if (*(a1 + 4) < 0x3Cu)
                    {
                      goto LABEL_22;
                    }

                    v17 = &v14[v16];
                    v18 = v15 - v16;
                    v19 = snprintf(v17, v18, ", context = %#llx", *(a1 + 52));
                    if ((v19 & 0x80000000) == 0)
                    {
                      LODWORD(v14) = v19;
                      if (v18 >= v19)
                      {
                        if (*(a1 + 4) < 0x44u)
                        {
                          goto LABEL_22;
                        }

                        v20 = v18 - v19;
                        v21 = snprintf(&v17[v19], v20, ", labels.sender = %#x", *(a1 + 64));
                        if ((v21 & 0x80000000) == 0)
                        {
                          v22 = v21;
                          if (v20 >= v21)
                          {
                            goto LABEL_22;
                          }

LABEL_52:
                          OUTLINED_FUNCTION_0();
                          v210 = MEMORY[0x29EDCA988];
                          os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
                          OUTLINED_FUNCTION_8();
                          *v286 = v211;
                          *&v286[4] = v22;
                          OUTLINED_FUNCTION_2();
                          v213 = _os_log_send_and_compose_impl(v212, &v280, &v289, 80, &dword_299DD7000, v210, 16, "buffer too small: needed = %d, actual = %lu", v226, v234);
                          result = OUTLINED_FUNCTION_12(v213, v214, v215, v216, v217, v218, v219, v220, v233, v241, v242, v249, v255, v261, v267, v273, v279, v280);
                          __break(1u);
                          return result;
                        }

LABEL_51:
                        OUTLINED_FUNCTION_0();
                        v22 = MEMORY[0x29EDCA988];
                        OUTLINED_FUNCTION_11();
                        OUTLINED_FUNCTION_8();
                        v195 = __error();
                        v196 = strerror(*v195);
                        v197 = OUTLINED_FUNCTION_1(v196, 4.8149e-34);
                        v202 = OUTLINED_FUNCTION_4(v197, &v280, v198, v199, &dword_299DD7000, v200, v201, "error printing buffer: %s");
                        OUTLINED_FUNCTION_12(v202, v203, v204, v205, v206, v207, v208, v209, v226, v234, v242, v249, v255, v261, v267, v273, v279, v280);
                        __break(1u);
                        goto LABEL_52;
                      }

LABEL_50:
                      OUTLINED_FUNCTION_0();
                      OUTLINED_FUNCTION_11();
                      OUTLINED_FUNCTION_8();
                      *v286 = v180;
                      *&v286[4] = v14;
                      OUTLINED_FUNCTION_2();
                      v187 = OUTLINED_FUNCTION_6(v181, v182, v183, v184, &dword_299DD7000, v185, v186, "buffer too small: needed = %d, actual = %lu", v225, v234, v242, v249, v255, v261, v267, v273, v279);
                      OUTLINED_FUNCTION_12(v187, v188, v189, v190, v191, v192, v193, v194, v232, v240, v248, v254, v260, v266, v272, v278, v279, v280);
                      __break(1u);
                      goto LABEL_51;
                    }

LABEL_49:
                    OUTLINED_FUNCTION_0();
                    OUTLINED_FUNCTION_11();
                    OUTLINED_FUNCTION_8();
                    v165 = __error();
                    v166 = strerror(*v165);
                    v167 = OUTLINED_FUNCTION_1(v166, 4.8149e-34);
                    v172 = OUTLINED_FUNCTION_4(v167, &v280, v168, v169, &dword_299DD7000, v170, v171, "error printing buffer: %s");
                    OUTLINED_FUNCTION_12(v172, v173, v174, v175, v176, v177, v178, v179, v225, v234, v242, v249, v255, v261, v267, v273, v279, v280);
                    __break(1u);
                    goto LABEL_50;
                  }

LABEL_48:
                  OUTLINED_FUNCTION_0();
                  LODWORD(v14) = v149;
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_8();
                  *v286 = v150;
                  *&v286[4] = v14;
                  OUTLINED_FUNCTION_2();
                  v157 = OUTLINED_FUNCTION_6(v151, v152, v153, v154, &dword_299DD7000, v155, v156, "buffer too small: needed = %d, actual = %lu", v224, v234, v242, v249, v255, v261, v267, v273, v279);
                  OUTLINED_FUNCTION_12(v157, v158, v159, v160, v161, v162, v163, v164, v231, v239, v247, v253, v259, v265, v271, v277, v279, v280);
                  __break(1u);
                  goto LABEL_49;
                }

LABEL_47:
                OUTLINED_FUNCTION_0();
                OUTLINED_FUNCTION_11();
                OUTLINED_FUNCTION_8();
                v134 = __error();
                v135 = strerror(*v134);
                v136 = OUTLINED_FUNCTION_1(v135, 4.8149e-34);
                v141 = OUTLINED_FUNCTION_4(v136, &v280, v137, v138, &dword_299DD7000, v139, v140, "error printing buffer: %s");
                OUTLINED_FUNCTION_12(v141, v142, v143, v144, v145, v146, v147, v148, v224, v234, v242, v249, v255, v261, v267, v273, v279, v280);
                __break(1u);
                goto LABEL_48;
              }

LABEL_46:
              OUTLINED_FUNCTION_0();
              OUTLINED_FUNCTION_11();
              OUTLINED_FUNCTION_8();
              *v286 = v119;
              *&v286[4] = v1;
              OUTLINED_FUNCTION_2();
              v126 = OUTLINED_FUNCTION_6(v120, v121, v122, v123, &dword_299DD7000, v124, v125, "buffer too small: needed = %d, actual = %lu", v223, v234, v242, v249, v255, v261, v267, v273, v279);
              OUTLINED_FUNCTION_12(v126, v127, v128, v129, v130, v131, v132, v133, v230, v238, v246, v252, v258, v264, v270, v276, v279, v280);
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_8();
            v104 = __error();
            v105 = strerror(*v104);
            v106 = OUTLINED_FUNCTION_1(v105, 4.8149e-34);
            v111 = OUTLINED_FUNCTION_4(v106, &v280, v107, v108, &dword_299DD7000, v109, v110, "error printing buffer: %s");
            OUTLINED_FUNCTION_12(v111, v112, v113, v114, v115, v116, v117, v118, v223, v234, v242, v249, v255, v261, v267, v273, v279, v280);
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_11();
          OUTLINED_FUNCTION_8();
          *v286 = v89;
          *&v286[4] = v1;
          OUTLINED_FUNCTION_2();
          v96 = OUTLINED_FUNCTION_6(v90, v91, v92, v93, &dword_299DD7000, v94, v95, "buffer too small: needed = %d, actual = %lu", v222, v234, v242, v249, v255, v261, v267, v273, v279);
          OUTLINED_FUNCTION_12(v96, v97, v98, v99, v100, v101, v102, v103, v229, v237, v245, v251, v257, v263, v269, v275, v279, v280);
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_8();
        v74 = __error();
        v75 = strerror(*v74);
        v76 = OUTLINED_FUNCTION_1(v75, 4.8149e-34);
        v81 = OUTLINED_FUNCTION_4(v76, &v280, v77, v78, &dword_299DD7000, v79, v80, "error printing buffer: %s");
        OUTLINED_FUNCTION_12(v81, v82, v83, v84, v85, v86, v87, v88, v222, v234, v242, v249, v255, v261, v267, v273, v279, v280);
        __break(1u);
        goto LABEL_44;
      }
    }

    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    if (v26)
    {
      v65 = v63;
    }

    else
    {
      v65 = v63 + 1;
    }

    *v286 = v64;
    *&v286[4] = v7;
    *&v286[8] = 2048;
    *&v286[10] = 512;
    LODWORD(v234) = 18;
    v66 = OUTLINED_FUNCTION_6(v65, v58, v59, v60, &dword_299DD7000, v61, v62, "buffer too small: needed = %d, actual = %lu", v286, v234, v242, v249, v255, v261, v267, v273, v279);
    OUTLINED_FUNCTION_12(v66, v67, v68, v69, v70, v71, v72, v73, v228, v236, v244, v250, v256, v262, v268, v274, v279, v280);
    __break(1u);
    goto LABEL_43;
  }

LABEL_22:
  if (_dispatch_is_multithreaded())
  {
    goto LABEL_29;
  }

  result = strdup(__str);
  if (!result)
  {
    v23 = strlen(__str);
    OUTLINED_FUNCTION_0();
    v24 = MEMORY[0x29EDCA988];
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    OUTLINED_FUNCTION_8();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 + 1;
    }

    v28 = __error();
    v29 = strerror(*v28);
    *v286 = 136315650;
    *&v286[4] = "known-constant allocation";
    *&v286[12] = 2048;
    *&v286[14] = v23;
    v287 = 2080;
    v288 = v29;
    LODWORD(v234) = 32;
    v30 = _os_log_send_and_compose_impl(v27, &v280, &v289, 80, &dword_299DD7000, v24, 16, "allocation failed: obj = %s, size = %lu, error = %s", v286, v234, v242);
    OUTLINED_FUNCTION_12(v30, v31, v32, v33, v34, v35, v36, v37, v227, v235, v243, v249, v255, v261, v267, v273, v279, v280);
    __break(1u);
    do
    {
      __os_temporary_resource_shortage();
LABEL_29:
      result = strdup(__str);
    }

    while (!result);
  }

  return result;
}

char *os_mach_port_copy_description(uint64_t name)
{
  v71[1] = *MEMORY[0x29EDCA608];
  v68 = 0;
  *ptype = 0;
  *port_info_out = 0u;
  v67 = 0u;
  port_info_outCnt = 10;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  if (name != -1)
  {
    v1 = name;
    if (!name)
    {
      v2 = strdup("null");
      if (v2)
      {
LABEL_6:
        v10 = v2;
        v11 = 0;
        v12 = 0;
LABEL_36:
        free(v11);
        free(v62);
        free(v12);
        free(v63);
        return v10;
      }

      v71[0] = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v3 = __error();
      strerror(*v3);
      LODWORD(v70[0]) = 136315650;
      OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_3();
      v9 = OUTLINED_FUNCTION_4(v4, v71, v5, v6, &dword_299DD7000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
      OUTLINED_FUNCTION_14(v9);
      __break(1u);
      goto LABEL_5;
    }

    v13 = MEMORY[0x29EDCA6B0];
    v14 = mach_port_type(*MEMORY[0x29EDCA6B0], name, &ptype[1]);
    if (v14)
    {
      if (asprintf(&v63, "[%#x]", v14) == -1)
      {
        goto LABEL_38;
      }

      v12 = 0;
    }

    else
    {
      v63 = os_flagset_copy_string(&_mach_port_rights, ptype[1]);
      v12 = os_flagset_copy_string(&_mach_port_requests, ptype[1]);
    }

    attributes = mach_port_get_attributes(*v13, v1, 2, port_info_out, &port_info_outCnt);
    if (attributes == 17)
    {
      if ((ptype[1] & 0x20000) == 0)
      {
        v16 = strdup("[none]");
        if (v16)
        {
          goto LABEL_27;
        }

        v71[0] = 0;
        OUTLINED_FUNCTION_5();
        v1 = MEMORY[0x29EDCA988];
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_8();
        if (v18)
        {
          v12 = v17;
        }

        else
        {
          v12 = v17 + 1;
        }

        v19 = __error();
        strerror(*v19);
        LODWORD(v70[0]) = 136315650;
        OUTLINED_FUNCTION_9();
        OUTLINED_FUNCTION_3();
        v25 = OUTLINED_FUNCTION_4(v20, v71, v21, v22, &dword_299DD7000, v23, v24, "allocation failed: obj = %s, size = %lu, error = %s");
        attributes = OUTLINED_FUNCTION_14(v25);
        __break(1u);
      }
    }

    else if (!attributes)
    {
      if (HIDWORD(v68))
      {
        v16 = os_flagset_copy_string(&_mach_port_status, HIDWORD(v68));
LABEL_27:
        v62 = v16;
        goto LABEL_28;
      }

LABEL_26:
      v16 = strdup("[none]");
      if (!v16)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (asprintf(&v62, "[%#x]", attributes) != -1)
    {
LABEL_28:
      if ((ptype[1] & 0x10000) != 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = (ptype[1] & 0x100000) >> 18;
      }

      if (MEMORY[0x29C2B1850](*v13, v1, v33, ptype))
      {
        asprintf(&v61, ", %s urefs = [%#x]");
      }

      else
      {
        asprintf(&v61, ", %s urefs = %u");
      }

      if (asprintf(&v64, "name = %#x, rights = %s, requests = %s, status = %s%s", v1, v63, v12, v62, v61) != -1)
      {
        v10 = v64;
        v11 = v61;
        goto LABEL_36;
      }

      v70[0] = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v35 = __error();
      OUTLINED_FUNCTION_7(*v35, 1.5047e-36);
      OUTLINED_FUNCTION_4(v36, v70, v37, v38, &dword_299DD7000, v39, v40, "assertion failure: ret -> %{errno}d");
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v70[0] = 0;
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8();
      v41 = __error();
      OUTLINED_FUNCTION_7(*v41, 1.5047e-36);
      OUTLINED_FUNCTION_4(v42, v70, v43, v44, &dword_299DD7000, v45, v46, "assertion failure: ret -> %{errno}d");
      _os_crash_msg();
      __break(1u);
    }

    v70[0] = 0;
    OUTLINED_FUNCTION_5();
    v1 = MEMORY[0x29EDCA988];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_8();
    if (v18)
    {
      v12 = v26;
    }

    else
    {
      v12 = v26 + 1;
    }

    v27 = __error();
    OUTLINED_FUNCTION_7(*v27, 1.5047e-36);
    OUTLINED_FUNCTION_4(v28, v70, v29, v30, &dword_299DD7000, v31, v32, "assertion failure: ret -> %{errno}d");
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

LABEL_5:
  v2 = strdup("dead-name");
  if (v2)
  {
    goto LABEL_6;
  }

  v71[0] = 0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v47 = __error();
  strerror(*v47);
  LODWORD(v70[0]) = 136315650;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  v53 = OUTLINED_FUNCTION_4(v48, v71, v49, v50, &dword_299DD7000, v51, v52, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_14(v53);
  __break(1u);
LABEL_40:
  v71[0] = 0;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8();
  v54 = __error();
  strerror(*v54);
  LODWORD(v70[0]) = 136315650;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  v60 = OUTLINED_FUNCTION_4(v55, v71, v56, v57, &dword_299DD7000, v58, v59, "allocation failed: obj = %s, size = %lu, error = %s");
  result = OUTLINED_FUNCTION_14(v60);
  __break(1u);
  return result;
}

void os_assert_mach(int a1, kern_return_t r)
{
  v20 = *MEMORY[0x29EDCA608];
  if (r)
  {
    LODWORD(v2) = r;
    if ((r - 1100) > 6)
    {
      v3 = mach_error_string(r & 0xFFFFC1FF);
      if (!strcmp(v3, "unknown error code"))
      {
        snprintf(__str, 0x40uLL, "[%#x|%#x|%#x]", v2 >> 26, (v2 >> 14) & 0xFFF, v2 & 0x1FF);
      }

      if ((v2 + 309) >= 0xA)
      {
        goto LABEL_9;
      }
    }

    else
    {
      bootstrap_strerror(r);
    }

    snprintf(v18, 0x10uLL, "%d", v2);
    do
    {
      OUTLINED_FUNCTION_13();
      v2 = MEMORY[0x29EDCA988];
      OUTLINED_FUNCTION_11();
      *v13 = 136315906;
      OUTLINED_FUNCTION_10();
      v14 = v18;
      LODWORD(v10) = 42;
      _os_log_send_and_compose_impl(v4, &v12, v17, 80, &dword_299DD7000, v2, 16, "%s failed: %s error = %s [%s]", v13, v10, v11);
      _os_crash_msg();
      __break(1u);
LABEL_9:
      snprintf(v18, 0x10uLL, "%#x", v2);
      v5 = os_flagset_copy_string(&_mach_special_bits, v2 & 0x3E00);
    }

    while (!v5);
    v6 = v5;
    OUTLINED_FUNCTION_13();
    v7 = MEMORY[0x29EDCA988];
    os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
    *v13 = 136316162;
    OUTLINED_FUNCTION_10();
    v14 = v18;
    v15 = v8;
    v16 = v6;
    LODWORD(v10) = 52;
    _os_log_send_and_compose_impl(v9, &v12, v17, 80, &dword_299DD7000, v7, 16, "%s failed: %s error = %s [%s], special bits = %s", v13, v10, v11);
    _os_crash_msg();
    __break(1u);
  }
}

void os_variant_init_4launchd_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: getpid() == 1 -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (allows_security_research) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (development_kernel) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (recovery_release_type) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (darwin_release_type) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (factory_release_type) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (internal_release_type) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_9(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (has_full_logging) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (is_ephemeral) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_variant_init_4launchd_cold_11(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: (can_has_debugger) != OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void _parse_disabled_status_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = MEMORY[0x29EDCA988];
  if (OUTLINED_FUNCTION_3_0())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  v7 = strerror(*v6);
  v9 = 136315650;
  v10 = "known-constant allocation";
  v11 = 2048;
  v12 = 31;
  v13 = 2080;
  v14 = v7;
  v8 = 32;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_299DD7000, v4, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v9, v8);
  _os_crash_msg();
  __break(1u);
}

void ___initialize_status_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: is_ephemeral == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: can_has_debugger == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: internal_release_type == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: factory_release_type == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: darwin_release_type == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: recovery_release_type == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: development_kernel == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void ___initialize_status_block_invoke_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: allows_security_research == OS_VARIANT_S_UNKNOWN -> %llu");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_localtime_file_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v4 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = *__error();
  v8[0] = 67109120;
  v8[1] = v6;
  v7 = 8;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_299DD7000, v4, 16, "assertion failure: gettimeofday(&tv, ((void *)0)) -> %{errno}d", v8, v7);
  _os_crash_msg();
  __break(1u);
}

void memdup2_np_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v11 = 136315650;
  v12 = "known-constant allocation";
  v13 = 2048;
  v14 = a3;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_299DD7000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void _os_subcommand_print_usage_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_0_1(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: ret -> %llu");
  OUTLINED_FUNCTION_3_1(v8);
  __break(1u);
}

void dup_np_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  v2 = __error();
  v9 = symerror_np(*v2);
  v8 = OUTLINED_FUNCTION_0_2(v9, v3, v4, v5, &dword_299DD7000, v6, v7, "unhandled error: %s");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void claimfd_np_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  v8 = OUTLINED_FUNCTION_0_2(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "change_fdguard_np: %{darwin.errno}d");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void close_drop_np_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  OUTLINED_FUNCTION_3_0();
  __error();
  OUTLINED_FUNCTION_2_2();
  v8 = OUTLINED_FUNCTION_0_2(v2, v3, v4, v5, &dword_299DD7000, v6, v7, "assertion failure: ret -> %{errno}d");
  OUTLINED_FUNCTION_4_0(v8);
  __break(1u);
}

void os_crash_spawnattr_set_reporter_port_cold_1(void *a1, _OWORD *a2, int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = 134217984;
  v9 = a3;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_299DD7000, v6, 16, "assertion failure: error -> %llu", &v8);
  _os_crash_msg();
  __break(1u);
}

void verr_np(uint64_t a1, const char *a2, va_list a3)
{
  v3 = a1;
  v4 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a2, a3);
  v5 = *v4;
  v6 = strerror_np(v3);
  fprintf(v5, ": %s\n", v6);
  v7 = sysexit_np(v3);
  exit(v7);
}

void verrc_np(int a1, uint64_t a2, const char *a3, va_list a4)
{
  v4 = a2;
  v6 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a3, a4);
  v7 = *v6;
  v8 = strerror_np(v4);
  fprintf(v7, ": %s\n", v8);
  exit(a1);
}

uint64_t vwarn_np(uint64_t a1, const char *a2, va_list a3)
{
  v3 = a1;
  v4 = MEMORY[0x29EDCA610];
  _print_preamble(*MEMORY[0x29EDCA610], a2, a3);
  v5 = *v4;
  v6 = strerror_np(v3);
  return fprintf(v5, ": %s\n", v6);
}

char *strerror_np(unsigned int a1)
{
  if (a1 <= 0x6B)
  {
    return strerror(a1);
  }

  v2 = &_negative_one;
  v3 = a1 - 200;
  v4 = v3 >= 0x16;
  v5 = v3 == 22;
  v6 = &_darwin_errors + 32 * v3;
  if (!v5 && v4)
  {
    v6 = &unk_29F28E7D8;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v2 = v6;
  }

  return v2[3];
}

uint64_t strexit_np(int a1)
{
  v1 = &_zero;
  if ((a1 - 79) >= 0xFFFFFFF1)
  {
    v2 = &_sysexits + 32 * (a1 - 64);
  }

  else
  {
    v2 = &unk_29F28E8D8;
  }

  if (a1 == 173)
  {
    v2 = &_badreceipt;
  }

  if (a1)
  {
    v1 = v2;
  }

  return v1[3];
}

uint64_t symerror_np(unsigned int a1)
{
  v1 = &_negative_one;
  v2 = a1 - 200;
  v3 = &unk_29F28E7D8;
  if (a1 <= 0x6B)
  {
    v3 = &_posix_errors + 32 * a1;
  }

  if (v2 <= 0x16)
  {
    v4 = &_darwin_errors + 32 * v2;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 & 0x80000000) == 0)
  {
    v1 = v4;
  }

  return v1[2];
}

uint64_t symexit_np(int a1)
{
  v1 = &_zero;
  if ((a1 - 79) >= 0xFFFFFFF1)
  {
    v2 = &_sysexits + 32 * (a1 - 64);
  }

  else
  {
    v2 = &unk_29F28E8D8;
  }

  if (a1 == 173)
  {
    v2 = &_badreceipt;
  }

  if (a1)
  {
    v1 = v2;
  }

  return v1[2];
}

void os_flagset_copy_string_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  v5 = strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  v6 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = __error();
  v9 = strerror(*v8);
  v11 = 136315650;
  v12 = "known-constant allocation";
  v13 = 2048;
  v14 = v5;
  v15 = 2080;
  v16 = v9;
  v10 = 32;
  _os_log_send_and_compose_impl(v7, a2, a3, 80, &dword_299DD7000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
  _NSGetMachExecuteHeader();
}