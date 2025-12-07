void *ktrace_thread_map_task_for_thread(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  return value;
}

void set_task_unique_id(uint64_t a1, void *a2, void *key)
{
  value = 0;
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (*a2 != -1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *a2 = key;
  if (CFDictionaryGetValueIfPresent(*(a1 + 24), key, &value))
  {
    a2[4] = *(value + 4);
  }

  CFDictionarySetValue(*(a1 + 24), key, a2);
}

uint64_t get_jetsam_coalition_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    return *(value + 4);
  }

  else
  {
    return -1;
  }
}

void rename_thread(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v6 = malloc_type_malloc(0x40uLL, 0x4DA560C5uLL);
  __strlcpy_chk();
  v7 = *(a1 + 40);

  CFDictionarySetValue(v7, a2, v6);
}

const char *extend_thread_name(uint64_t a1, const void *a2, const char *a3, uint64_t a4)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = CFDictionaryGetValue(*(a1 + 40), a2);
  if (result)
  {
    v7 = result;
    result = strlen(result);
    v8 = &result[a4 - 64] >= 0xFFFFFFFFFFFFFFBFLL ? a4 : 63 - result;
    if (v8)
    {
      v9 = &result[v7];

      return strlcpy(v9, a3, v8 + 1);
    }
  }

  return result;
}

void new_jetsam_coalition(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (CFDictionaryGetValue(*(a1 + 80), a2))
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    if (Value)
    {
      *Value = a2;
      Value[1] = a3;
      Value[2] = a4;
      Value[3] = a5;
    }
  }

  else
  {
    v11 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
    if (!v11)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v12 = v11;
    *v11 = a2;
    v11[1] = a3;
    v11[2] = a4;
    v11[3] = a5;
    v13 = *(a1 + 80);

    CFDictionarySetValue(v13, a2, v12);
  }
}

void set_task_jetsam_coalition(uint64_t a1, void *key, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (key != -1)
  {
    value = 0;
    CFDictionaryGetValueIfPresent(*(a1 + 24), key, &value);
    if (value)
    {
      *(value + 4) = a3;
    }

    else
    {
      v6 = malloc_type_malloc(0x28uLL, 0x1010040139C5EC2uLL);
      if (v6)
      {
        v6[3] = 0;
        *v6 = key;
        v6[1] = -1;
        *(v6 + 4) = -1;
      }

      v6[4] = a3;
      CFDictionarySetValue(*(a1 + 24), key, v6);
    }
  }
}

void *new_thread_group(uint64_t a1, const void *a2, _BYTE *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (!a3)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value)
  {
    v7 = Value;
    *Value = a2;
    if (*a3)
    {
      __strlcpy_chk();
    }
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
    if (!v8)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v7 = v8;
    *v8 = a2;
    __strlcpy_chk();
    v7[3] = 0;
    CFDictionarySetValue(*(a1 + 64), a2, v7);
  }

  return v7;
}

void set_thread_thread_group(uint64_t a1, const void *a2, void *key)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*(a1 + 64), key);
  if (Value || (Value = new_thread_group(a1, key, "")) != 0)
  {
    v7 = Value;
    v8 = *(a1 + 72);

    CFDictionarySetValue(v8, a2, v7);
  }
}

void *thread_group_set_flags(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  result = CFDictionaryGetValue(*(a1 + 64), a2);
  if (result)
  {
    result[3] = a3 | 0x8000000000000000;
  }

  return result;
}

void delete_jetsam_coalition(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 80);

  CFDictionaryRemoveValue(v3, a2);
}

void delete_thread_group(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a1 + 64);

  CFDictionaryRemoveValue(v3, a2);
}

uint64_t ktrace_thread_map_pid_for_parent_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = -1;
  CFDictionaryGetValueIfPresent(*(a1 + 56), a2, &value);
  return value;
}

void *ktrace_thread_map_task_for_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 16), a2, &value);
  return value;
}

uint64_t kthmap_name_for_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 16), a2, &value);
  if (value)
  {
    return *(value + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t kthmap_jetsam_coalition_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 32), a2, &value);
  if (value)
  {
    return *(value + 4);
  }

  else
  {
    return -1;
  }
}

uint64_t kthmap_jetsam_coalition_for_pid(uint64_t a1, int a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  value = 0;
  CFDictionaryGetValueIfPresent(*(a1 + 16), a2, &value);
  if (value)
  {
    return *(value + 4);
  }

  else
  {
    return -1;
  }
}

uint64_t kthmap_thread_group_for_tid(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*(a1 + 72), a2);
  if (Value)
  {
    return *Value;
  }

  else
  {
    return -1;
  }
}

char *kthmap_name_for_thread_group(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value)
  {
    return Value + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t kthmap_flags_for_thread_group(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (!Value)
  {
    return 2;
  }

  v5 = Value[3];
  if ((v5 & 0x8000000000000000) == 0)
  {
    return 91;
  }

  result = 0;
  if (a3)
  {
    *a3 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

unint64_t ktrace_thread_map_estimate_threads(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (ktrace_chunk_tag(a1, a2) != 7424)
  {
    return 0;
  }

  v4 = ktrace_chunk_size(a1, v3);
  if (ktrace_chunk_is_64_bit(a1))
  {
    return v4 >> 5;
  }

  else
  {
    return v4 / 0x1C;
  }
}

void *task_alloc(uint64_t a1, int a2, const char *a3, size_t a4)
{
  v8 = malloc_type_malloc(0x28uLL, 0x1010040139C5EC2uLL);
  v9 = v8;
  if (v8)
  {
    if (a3)
    {
      v10 = strndup(a3, a4);
      v9[3] = v10;
      if (!v10)
      {
        free(v9);
        return 0;
      }
    }

    else
    {
      v8[3] = 0;
    }

    *v9 = a1;
    *(v9 + 2) = a2;
    *(v9 + 12) = -1;
    v9[4] = -1;
  }

  return v9;
}

void kthmap_iterate_threads(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 0x40000000;
  context[2] = __kthmap_iterate_threads_block_invoke;
  context[3] = &unk_27886EB50;
  context[4] = a2;
  CFDictionaryApplyFunction(v2, CFDictionaryApplierTrampoline, context);
}

uint64_t kthmap_read_catalog(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = __kthmap_read_catalog_block_invoke;
  v4[3] = &__block_descriptor_tmp_7_2;
  v4[4] = a1;
  ktrace_catalog_iterate_processes(a2, v4);
  *(a1 + 96) &= ~2u;
  return a1;
}

uint64_t __kthmap_read_catalog_block_invoke(uint64_t a1, void *a2)
{
  name = ktrace_process_last_name(a2);
  if (name)
  {
    v5 = name;
    v6 = strlen(name);
    v7 = ktrace_process_id(a2);
    v8 = ktrace_process_unique_id(a2);
    Value = CFDictionaryGetValue(*(*(a1 + 32) + 16), v7);
    if (!Value)
    {
      v10 = task_alloc(v8, v7, v5, v6);
      if (!v10)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      Value = v10;
      CFDictionarySetValue(*(*(a1 + 32) + 16), v7, v10);
    }

    v11 = *Value;
    if (*Value == -1)
    {
      *Value = v8;
      CFDictionarySetValue(*(*(a1 + 32) + 24), v8, Value);
      v11 = *Value;
    }

    v12 = Value[3];
    if (v11 == v8)
    {
      *(Value + 2) = v7;
      if (v12)
      {
        if (strlen(v12) >= v6)
        {
LABEL_15:
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 0x40000000;
          v14[2] = __kthmap_read_catalog_block_invoke_2;
          v14[3] = &__block_descriptor_tmp_5_2;
          v14[4] = *(a1 + 32);
          v14[5] = Value;
          ktrace_process_iterate_threads(a2, v14);
          return 1;
        }

        free(v12);
        Value[3] = 0;
      }
    }

    else
    {
      if (v12)
      {
        free(Value[3]);
        Value[3] = 0;
      }

      *(Value + 12) = -1;
      *(Value + 2) = v7;
    }

    Value[3] = strdup(v5);
    goto LABEL_15;
  }

  return 1;
}

uint64_t __kthmap_read_catalog_block_invoke_2(uint64_t a1, void *a2)
{
  name = ktrace_thread_last_name(a2);
  if (name)
  {
    v5 = name;
    v6 = strlen(name);
    v7 = *(a1 + 32);
    v8 = ktrace_thread_id(a2);
    rename_thread(v7, v8, v5, v6);
  }

  v9 = *(*(a1 + 32) + 32);
  v10 = ktrace_thread_id(a2);
  CFDictionarySetValue(v9, v10, *(a1 + 40));
  return 1;
}

const __CFData *create_dictionary(UInt8 *bytes, CFIndex length)
{
  v2 = CFDataCreateWithBytesNoCopy(0, bytes, length, *MEMORY[0x277CBED00]);
  if (v2)
  {
    v3 = v2;
    v4 = CFPropertyListCreateWithData(0, v2, 0, 0, 0);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        CFRelease(v3);
        return v5;
      }

      v10 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        create_dictionary_cold_1();
      }

      *__error() = v10;
      CFRelease(v3);
      v9 = v5;
    }

    else
    {
      v8 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        create_dictionary_cold_2();
      }

      *__error() = v8;
      v9 = v3;
    }

    CFRelease(v9);
    return 0;
  }

  v7 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    create_dictionary_cold_3();
  }

  v5 = 0;
  *__error() = v7;
  return v5;
}

void ariadne_thread_dict_apply(const __CFString *a1, const __CFDictionary *a2, CFDictionaryRef *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  theString = 0;
  value = 0;
  valuePtr = 0;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  v7 = CStringPtr;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    v9 = malloc_type_malloc(Length + 1, 0x2BC13DD8uLL);
    if (!v9)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v7 = v9;
    if (!CFStringGetCString(a1, v9, Length + 1, 0x8000100u))
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  __endptr[0] = 0;
  v10 = strtoull(v7, __endptr, 0);
  if (v7 == __endptr[0])
  {
    v12 = *__error() == 0;
    v11 = -1;
    if (CStringPtr)
    {
LABEL_6:
      if (v12)
      {
        goto LABEL_7;
      }

LABEL_16:
      v14 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ariadne_thread_dict_apply_cold_1();
      }

      goto LABEL_20;
    }
  }

  else
  {
    v11 = v10;
    v12 = 1;
    if (CStringPtr)
    {
      goto LABEL_6;
    }
  }

  free(v7);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (v11 == -1)
  {
    _os_assumes_log();
  }

  if (!CFDictionaryGetValueIfPresent(a2, @"PID", &value))
  {
    v14 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ariadne_thread_dict_apply_cold_2();
    }

LABEL_20:
    *__error() = v14;
    return;
  }

  if (CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
  {
    new_thread(a3, v11, valuePtr, 0xFFFFFFFFFFFFFFFFLL);
    if (CFDictionaryGetValueIfPresent(a2, @"Name", &theString))
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      *__endptr = 0u;
      v19 = 0u;
      if (CFStringGetCString(theString, __endptr, 65, 0x8000100u))
      {
        v13 = strlen(__endptr);
        rename_thread(a3, v11, __endptr, v13);
      }
    }
  }
}

void _ariadne_process_dict_apply(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  theString = 0;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  v7 = CStringPtr;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    v9 = malloc_type_malloc(Length + 1, 0x89829037uLL);
    if (!v9)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v7 = v9;
    if (!CFStringGetCString(a1, v9, Length + 1, 0x8000100u))
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  __endptr = 0;
  v10 = strtol(v7, &__endptr, 0);
  if (v7 == __endptr)
  {
    v12 = *__error();
    v11 = -1;
    if (CStringPtr)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v10 == v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = -1;
    }

    if (v10 == v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = 34;
    }

    if (CStringPtr)
    {
LABEL_12:
      if (v12)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  free(v7);
  if (v12)
  {
    return;
  }

LABEL_16:
  if (v11 == -1)
  {
    _os_assumes_log();
  }

  if (CFDictionaryGetValueIfPresent(a2, @"Name", &theString))
  {
    v13 = CFStringGetLength(theString);
    v14 = malloc_type_malloc(v13 + 1, 0xCC1C4F94uLL);
    if (!v14)
    {
      return;
    }

    v15 = v14;
    if (CFStringGetCString(theString, v14, v13 + 1, 0x8000100u))
    {
      if (!a3)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      Value = CFDictionaryGetValue(*(a3 + 16), v11);
      if (Value)
      {
        goto LABEL_25;
      }

      v17 = malloc_type_malloc(0x28uLL, 0x1010040139C5EC2uLL);
      if (v17)
      {
        Value = v17;
        *v17 = -1;
        *(v17 + 2) = v11;
        *(v17 + 12) = -1;
        v17[3] = 0;
        v17[4] = -1;
LABEL_25:
        if (v11)
        {
          v18 = -1;
        }

        else
        {
          v18 = 0;
        }

        *Value = v18;
        Value[3] = v15;
        Value[4] = 0;
        CFDictionarySetValue(*(a3 + 16), v11, Value);
        return;
      }
    }

    free(v15);
    return;
  }

  v19 = *__error();
  ktrace_log_init();
  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    _ariadne_process_dict_apply_cold_2();
  }

  *__error() = v19;
}

uint64_t insert_legacy_entry_internal(uint64_t a1, const void *a2, _BOOL4 a3, char *__s1)
{
  if (!a1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  if (a3)
  {
    a3 = strcmp(__s1, "kernel_task") != 0;
  }

  v7 = a3;
  Value = CFDictionaryGetValue(*(a1 + 16), a3);
  if (Value)
  {
    v9 = Value;
    if (!*(Value + 3))
    {
      *(Value + 3) = strndup(__s1, 0x14uLL);
    }

    goto LABEL_9;
  }

  v10 = task_alloc(-1, v7, __s1, 0x14uLL);
  if (v10)
  {
    v9 = v10;
    CFDictionarySetValue(*(a1 + 16), v7, v10);
LABEL_9:
    CFDictionarySetValue(*(a1 + 32), a2, v9);
    return 0;
  }

  return 12;
}

void OUTLINED_FUNCTION_3_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void *ktrace_uuid_map_create(uint64_t a1, uint64_t a2)
{
  ktrace_log_init();
  if (ktrace_register_types(void)::once != -1)
  {
    ktrace_address_space_create();
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    v6 = 0xFFFFFF8000000000;
    v7 = -4097;
    if (a2)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __ktrace_uuid_map_create_block_invoke;
      v13[3] = &__block_descriptor_40_e149_B16__0__ktrace_chunk___ktrace_file_Q___q____CFData__QISS__ktrace_chunk__ktrace_chunk_array____ktrace_chunk___ktrace_chunk_QQQqq______ktrace_chunk___8l;
      v13[4] = Instance;
      ktrace_file_iterate(a2, 0, v13);
      if (!*(a2 + 298))
      {
        v7 = 4294901759;
        v6 = 0x80000000;
      }
    }

    v5[34] = 0;
    if (a1)
    {
      if (*(a1 + 204))
      {
        v8 = 0x1000000;
      }

      else
      {
        v8 = 0;
      }

      v5[34] = v8 | *(a1 + 192) | (*(a1 + 196) << 32);
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      if (!a2)
      {
        _Block_object_dispose(&v15, 8);
        goto LABEL_28;
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___ZL15figure_out_archP15_CSArchitectureP14ktrace_machineP11ktrace_file_block_invoke;
      v14[3] = &unk_27886DDC0;
      v14[4] = &v15;
      v14[5] = v5 + 34;
      ktrace_file_iterate(a2, 0, v14);
      v9 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
      if ((v9 & 1) == 0)
      {
LABEL_28:
        v5[32] = v6;
        goto LABEL_29;
      }
    }

    if (CSArchitectureIsArm64())
    {
      v6 = 0xFFFFFFE000000000;
      v7 = 0xFFFFFFF27FFFFFFFLL;
      if (!a1)
      {
        goto LABEL_28;
      }

LABEL_23:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      if (v11 == -1)
      {
        v11 = v6;
      }

      v5[32] = v11;
      if (v10)
      {
LABEL_30:
        v5[33] = v10;
        v5[2] = 0;
        operator new();
      }

LABEL_29:
      v10 = v7;
      goto LABEL_30;
    }

    if (CSArchitectureIsArm())
    {
      v7 = 4294901759;
      v6 = 0x80000000;
      if (!a1)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (CSArchitectureIsX86_64())
    {
      v6 = 0xFFFFFF8000000000;
      v7 = -4097;
      if (a1)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_create_cold_2();
    }

    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t __ktrace_uuid_map_create_block_invoke(uint64_t a1, uint64_t a2)
{
  if (ktrace_chunk_tag(a2, a2) >= 0x9000 && ktrace_chunk_tag(a2, v4) >> 13 <= 4)
  {
    *(*(a1 + 32) + 288) = 1;
  }

  if (ktrace_chunk_tag(a2, v4) >= 0x5000 && ktrace_chunk_tag(a2, v5) >> 13 <= 2)
  {
    *(*(a1 + 32) + 289) = 1;
  }

  return 1;
}

BOOL ktrace_uuid_map_plausible_kernel_address(_BOOL8 result, unint64_t a2)
{
  if (result)
  {
    return *(result + 256) <= a2 && *(result + 264) >= a2;
  }

  return result;
}

void ktrace_uuid_map_update_with_stackshot(uint64_t a1, kcdata_iter a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2.item + 1;
  if (&a2.item[1] <= a2.end)
  {
    if (a1)
    {
      item = a2.item;
      if ((v3 + a2.item->size) <= a2.end)
      {
        v19 = 0;
        v21 = 0;
        do
        {
          size = item->size;
          if ((v3 + size) > a2.end)
          {
            break;
          }

          type = item->type;
          v7 = (item->type & 0xFFFFFFF0) == 0x20 ? 17 : item->type;
          if (v7 == 19)
          {
            v8 = __CFADD__(v21++, 1);
            v9 = v8;
          }

          else
          {
            v21 -= v7 == 20;
            if (v21)
            {
              v9 = 0;
            }

            else
            {
              if (v7 != 51)
              {
                goto LABEL_21;
              }

              v10 = item->flags & 0xF;
              v8 = size >= v10;
              v11 = size - v10;
              if (!v8)
              {
                v11 = 0;
              }

              if (v11 >= 8)
              {
                v21 = 0;
                *(a1 + 16) = *&item[1].type;
              }

              else
              {
LABEL_21:
                v21 = 0;
              }

              v9 = 1;
            }
          }

          if (size >= 4 && type == 19 && item[1].type == 2307)
          {
            if (item->flags != -1)
            {
              v35.item = item;
              v35.end = a2.end;
              ktrace_address_space_from_stackshot(v35);
            }
          }

          else if (v9)
          {
            LODWORD(size) = item->size;
            if (item->type == 2312)
            {
              flags = item->flags;
              if (size != 32 || (flags & 0x8F) != 0)
              {
                v13 = flags & 0xF;
                v8 = size >= v13;
                v14 = size - v13;
                if (!v8)
                {
                  v14 = 0;
                }

                v15 = v14 > 0x1F;
                v16 = v19;
                if (v15)
                {
                  v16 = item + 1;
                }

                v19 = v16;
              }

              else
              {
                LODWORD(size) = 32;
              }
            }
          }

          else
          {
            LODWORD(size) = item->size;
          }

          item = (v3 + size);
          v3 = item + 1;
        }

        while (&item[1] <= a2.end);
        if (v19 && !uuid_is_null(&v19->flags))
        {
          v26 = 0u;
          *cf = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          LODWORD(v23) = 3;
          *(&v23 + 1) = *&v19->type + 1;
          *&v25 = v19[1].flags;
          v22 = *&v19->flags;
          for (i = *(*(a1 + 24) + 16); i; i = *i)
          {
            v18 = i[3];
            if (*(v18 + 32) && (*(v18 + 36) & 2) == 0)
            {
              v30 = v24;
              v31 = v25;
              v32 = v26;
              *v33 = *cf;
              *buf = v22;
              v29 = v23;
              if (cf[0])
              {
                CFRetain(cf[0]);
              }

              ktrace_address_space_append(v18, buf);
              SymbolOwner::~SymbolOwner(buf);
            }
          }

          SymbolOwner::~SymbolOwner(&v22);
        }
      }
    }
  }
}

void sub_22EDB6410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  SymbolOwner::~SymbolOwner(va);
  _Unwind_Resume(a1);
}

void ktrace_address_space_from_dscsym(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = v2;
  v2[2] = 0x5812000000;
  v2[3] = __Block_byref_object_copy__2;
  v2[4] = __Block_byref_object_dispose__2;
  v2[5] = "";
  v3 = 0u;
  v4 = 0u;
  v5 = 1065353216;
  ktrace_address_space_create(-1);
}

void sub_22EDB6584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v15 + 48);
  _Unwind_Resume(a1);
}

uint64_t ___Z32ktrace_address_space_from_dscsymPvm_block_invoke(uint64_t a1, __int128 *a2, char *cStr, const char *a4, unint64_t a5, uint64_t a6)
{
  v24 = a5;
  if (cStr)
  {
    v11 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  }

  else
  {
    v11 = 0;
  }

  v12 = *a2;
  v19 = 0u;
  v20 = 0u;
  v22 = 0u;
  *cf = 0u;
  LODWORD(v19) = 2;
  *&v21 = a5;
  *(&v21 + 1) = a6 + 1;
  v18 = v12;
  strlcpy(&v19 + 8, a4, 0x11uLL);
  v17 = v11;
  if (cf[0])
  {
    CFRelease(cf[0]);
    v11 = v17;
  }

  v17 = 0;
  cf[0] = v11;
  CF::TypeRef::~TypeRef(&v17);
  if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((*(*(a1 + 32) + 8) + 48), &v24))
  {
    v13 = *(a1 + 40);
    v15[2] = v20;
    v15[3] = v21;
    v15[4] = v22;
    *v16 = *cf;
    v15[0] = v18;
    v15[1] = v19;
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    ktrace_address_space_append(v13, v15);
    SymbolOwner::~SymbolOwner(v15);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((*(*(a1 + 32) + 8) + 48), &v24, &v24);
  SymbolOwner::~SymbolOwner(&v18);
  return 0;
}

void sub_22EDB6700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  SymbolOwner::~SymbolOwner(&a9);
  SymbolOwner::~SymbolOwner(&a24);
  _Unwind_Resume(a1);
}

uint64_t ktrace_address_space_deep_iterate_symbol_owners(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = *(a2 + 16);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 != v5)
  {
    v7 = result;
    do
    {
      v8 = *(v4 + 16);
      if (v8 > 3)
      {
        if (v8 == 4)
        {
          v13 = *(v7 + 248);
          if (v13)
          {
            v14 = *(v13 + 16);
            v15 = *v14;
            v16 = v14[1];
            while (v15 != v16)
            {
              v19 = 0;
              result = (*(a3 + 16))(a3, v15, &v19);
              v15 += 96;
            }
          }

          goto LABEL_15;
        }

        if (v8 != 5)
        {
LABEL_23:
          ktrace_address_space_deep_iterate_symbol_owners();
        }
      }

      else if ((v8 - 1) >= 2)
      {
        if (v8 != 3)
        {
          goto LABEL_23;
        }

        v18 = 0;
        v19 = 0;
        get_sc_and_slide(v7, v4, &v18, &v19);
        v17 = 0;
        result = (*(a3 + 16))(a3, v4, &v17);
        if (v19)
        {
          v9 = v18;
          if (v18)
          {
            v10 = *(v19 + 2);
            v11 = *v10;
            v12 = v10[1];
            while (v11 != v12)
            {
              v17 = v9;
              result = (*(a3 + 16))(a3, v11, &v17);
              v11 += 96;
            }
          }
        }

        goto LABEL_15;
      }

      v19 = 0;
      result = (*(a3 + 16))(a3, v4, &v19);
LABEL_15:
      v4 += 96;
    }

    while (v4 != v5);
  }

  return result;
}

void ktrace_uuid_map_associate_path_with_uuid(ktrace_uuid_map *a1, CFUUIDBytes a2, const __CFString *a3)
{
  v14 = a2;
  if (a3)
  {
    v3 = a3;
    v4 = *(a1 + 27);
    v15 = &v14;
    v5 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(v4, &v14, &std::piecewise_construct, &v15);
    v6 = v5[4];
    if (!v6)
    {
      v15 = v3;
      CFRetain(v3);
      v10 = v5[4];
      if (v10)
      {
        CFRelease(v10);
        v3 = v15;
      }

      v5[4] = v3;
      goto LABEL_13;
    }

    v7 = CFGetTypeID(v6);
    TypeID = CFSetGetTypeID();
    v9 = v5[4];
    if (v7 == TypeID)
    {
      CFSetAddValue(v9, v3);
      return;
    }

    v11 = CFGetTypeID(v9);
    if (v11 != CFStringGetTypeID())
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!CFEqual(v3, v5[4]))
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      CFSetAddValue(Mutable, v5[4]);
      CFSetAddValue(Mutable, v3);
      v15 = Mutable;
      v13 = v5[4];
      if (v13)
      {
        CFRelease(v13);
        Mutable = v15;
      }

      v5[4] = Mutable;
LABEL_13:
      v15 = 0;
      CF::TypeRef::~TypeRef(&v15);
    }
  }
}

void sub_22EDB6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

ktrace_uuid_map *ktrace_uuid_map_learn_sharedcache_with_chunk(ktrace_uuid_map *result, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    if (ktrace_chunk_tag(a2, a2) == 32769 || (result = ktrace_chunk_tag(a2, v4), result == 36869))
    {
      result = ktrace_chunk_version_major(a2);
      if (!result)
      {
        v6 = ktrace_chunk_size(a2, v5);
        result = ktrace_chunk_map_data(a2, 0, v6);
        if (result)
        {
          v7 = result;
          v9 = 0;
          v10 = &v9;
          v11 = 0x2020000000;
          v12 = 0;
          *&v13.byte0 = 0;
          *&v13.byte8 = 0;
          dscsym_iterate_buffer();
          v8 = *(v10 + 24);
          _Block_object_dispose(&v9, 8);
          if (v8 == 1)
          {
            ktrace_uuid_map_learn_sharedcache_with_buffer(v3, v13, v7, v6);
          }

          return ktrace_chunk_unmap_data(a2, v7, v6);
        }
      }
    }
  }

  return result;
}

void sub_22EDB6C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *cfdict_get_dictionary(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 != CFDictionaryGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
      }

      return 0;
    }
  }

  return v3;
}

void __ktrace_uuid_map_learn_tailspin_process_info_with_chunk_block_invoke(uint64_t a1, const __CFString *a2, const __CFNumber *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  *uu = 0;
  *&uu[8] = 0;
  v5 = utf8(a2);
  if (!uuid_parse(v5, uu))
  {
    if (*(a1 + 40))
    {
      valuePtr = 0;
      if (a3)
      {
        if (!CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v6 = valuePtr;
      }

      else
      {
        v6 = 0;
      }

      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      *&v16 = v6;
      v13 = *uu;
      v14 = 0u;
      LODWORD(v14) = 2;
      DWORD2(v14) = 1163157343;
      *(&v14 + 11) = 5527621;
      BYTE8(v18) = 1;
      v8 = *(a1 + 32);
      v11[0] = *uu;
      v11[1] = v14;
      v11[4] = 0u;
      v11[5] = v18;
      v11[2] = 0u;
      v11[3] = v16;
      v13 = 0u;
      v14 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      ktrace_address_space_append(v8, v11);
      v9 = v11;
    }

    else
    {
      valuePtr = 0;
      if (a3)
      {
        if (!CFNumberGetValue(a3, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v7 = valuePtr;
      }

      else
      {
        v7 = 0;
      }

      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v13 = *uu;
      v14 = 0u;
      LODWORD(v14) = 5;
      *&v16 = v7;
      BYTE8(v18) = 1;
      v10 = *(a1 + 32);
      v12[2] = 0u;
      v12[3] = v16;
      v12[4] = 0u;
      v12[5] = v18;
      v12[0] = *uu;
      v12[1] = v14;
      v13 = 0u;
      v14 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      ktrace_address_space_append(v10, v12);
      v9 = v12;
    }

    SymbolOwner::~SymbolOwner(v9);
    SymbolOwner::~SymbolOwner(&v13);
  }
}

void sub_22EDB6EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  SymbolOwner::~SymbolOwner(va);
  SymbolOwner::~SymbolOwner((v20 - 176));
  _Unwind_Resume(a1);
}

const void *cfdict_get_string(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  v3 = Value;
  if (Value)
  {
    v4 = CFGetTypeID(Value);
    if (v4 != CFStringGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }

      return 0;
    }
  }

  return v3;
}

void __ktrace_uuid_map_learn_tailspin_symbols_with_chunk_block_invoke(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v12 = 0;
  v5 = utf8(a2);
  v6 = sscanf(v5, "%lld", &v12);
  Value = CFDictionaryGetValue(a3, @"Length");
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFNumberGetTypeID())
    {
      if (v6 == 1)
      {
        v10 = v12;
        valuePtr = 0;
        if (!CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v11 = *(*(a1 + 32) + 8);
        if ((valuePtr + v10) > *(v11 + 24))
        {
          *(v11 + 24) = valuePtr + v10;
        }
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
      }
    }
  }
}

CFNumberRef cfnumber(uint64_t a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  if (!v1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v2 = v1;
  CFAutorelease(v1);
  return v2;
}

void SymbolOwner::set_path(SymbolOwner *this, CFTypeRef cf)
{
  v4 = *(this + 10);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 10) = cf;
  if (cf)
  {

    CFRetain(cf);
  }
}

void ktrace_uuid_map_learn_ariadne_process_dict_with_chunk(uint64_t a1, uint64_t a2)
{
  if (a1 && ktrace_chunk_tag(a2, a2) == 20530 && !ktrace_chunk_version_major(a2))
  {
    v5 = ktrace_chunk_copy_plist(a2, v4);
    if (v5)
    {
      v6 = v5;
      context[0] = MEMORY[0x277D85DD0];
      context[1] = 3221225472;
      context[2] = __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke;
      context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
      context[4] = a1;
      CFDictionaryApplyFunction(v5, CFDictionaryApplierTrampoline, context);
      CFRelease(v6);
    }

    else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_cold_1();
    }
  }
}

void __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *v8 = 0;
  v4 = utf8(a2);
  v5 = sscanf(v4, "%ld", v8);
  Value = CFDictionaryGetValue(a3, @"Library");
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFArrayGetTypeID())
    {
      if (v5 == 1 && !(*v8 >> 31))
      {
        ktrace_address_space_create(v8[0]);
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
      }
    }
  }

  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
  {
    __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_11();
  }
}

void sub_22EDB778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  SymbolOwner::~SymbolOwner(va);
  SymbolOwner::~SymbolOwner((v22 - 208));
  _Unwind_Resume(a1);
}

void ktrace_uuid_map_learn_inodes_with_chunk(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 224))
    {
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
      {
        ktrace_uuid_map_learn_inodes_with_chunk_cold_1();
      }

      return;
    }

    v5 = ktrace_chunk_size_t(a2, a2);
    v6 = ktrace_chunk_copy_cfdata(a2, 0, v5);
    if (v6)
    {
      v7 = v6;
      error = 0;
      v8 = CFPropertyListCreateWithData(0, v6, 0, 0, &error);
      CFRelease(v7);
      if (v8)
      {
        if (ktrace_chunk_version_major(a2))
        {
          *(a1 + 224) = v8;
          if (!*(a1 + 232))
          {
            *(a1 + 232) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v8 = *(a1 + 224);
          }

          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke;
          v11[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
          v11[4] = a1;
          CFDictionaryApplyFunction(v8, CFDictionaryApplierTrampoline, v11);
          return;
        }

        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (!Mutable)
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        *(a1 + 224) = Mutable;
        *buf = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke;
        v16 = &__block_descriptor_48_e41_v24__0____CFString__8____CFDictionary__16l;
        v17 = Mutable;
        v18 = a1;
        CFDictionaryApplyFunction(v8, CFDictionaryApplierTrampoline, buf);
        v9 = v8;
      }

      else
      {
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_inodes_with_chunk_cold_3(&error);
        }

        v9 = error;
      }

      CFRelease(v9);
      return;
    }

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_inodes_with_chunk_cold_4();
    }
  }

  else
  {
    v3 = ktrace_log;
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22ED7A000, v3, OS_LOG_TYPE_INFO, "skipping ktrace_uuid_map_learn_inodes_with_chunk(), uuid map was NULL.", buf, 2u);
    }
  }
}

void __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  context[0] = MEMORY[0x277D85DD0];
  context[1] = 3221225472;
  context[2] = __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke_2;
  context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
  context[4] = *(a1 + 32);
  CFDictionaryApplyFunction(theDict, CFDictionaryApplierTrampoline, context);
}

void __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke_2(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"Path");
  if (Value)
  {
    v6 = Value;
    v7 = CFGetTypeID(Value);
    if (v7 == CFStringGetTypeID())
    {
      CFDictionarySetValue(*(*(a1 + 32) + 232), v6, theDict);
      v8 = CFDictionaryGetValue(theDict, @"Images");
      if (v8)
      {
        v9 = v8;
        v10 = CFGetTypeID(v8);
        if (v10 == CFDictionaryGetTypeID())
        {
          v11[0] = MEMORY[0x277D85DD0];
          v11[1] = 3221225472;
          v11[2] = __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke_3;
          v11[3] = &__block_descriptor_48_e41_v24__0____CFString__8____CFDictionary__16l;
          v11[4] = *(a1 + 32);
          v11[5] = v6;
          CFDictionaryApplyFunction(v9, CFDictionaryApplierTrampoline, v11);
        }

        else
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
          }
        }
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }
    }
  }
}

void __ktrace_uuid_map_learn_inodes_with_chunk_block_invoke_3(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"UUID_String");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      *&v8.byte0 = 0;
      *&v8.byte8 = 0;
      v7 = utf8(v5);
      if (!uuid_parse(v7, &v8.byte0))
      {
        ktrace_uuid_map_associate_path_with_uuid(*(a1 + 32), v8, *(a1 + 40));
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }
    }
  }
}

const void *ktrace_uuid_map_read_process_info_dict(ktrace_uuid_map *a1, CFDictionaryRef theDict, char a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(theDict, @"PID");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID())
    {
      *&valuePtr = 0;
      if (!CFNumberGetValue(v5, kCFNumberLongLongType, &valuePtr))
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v3 = valuePtr;
LABEL_7:
      ktrace_address_space_create(v3);
    }

    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
    }
  }

  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
  {
    ktrace_uuid_map_read_process_info_dict();
  }

  return 0;
}

void sub_22EDB83F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  SymbolOwner::~SymbolOwner(va);
  SymbolOwner::~SymbolOwner(va1);
  _Unwind_Resume(a1);
}

void ktrace_uuid_map_learn_kernelmap_with_chunk(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = ktrace_chunk_size(a2, a2);
    if (ktrace_chunk_tag(a2, v5) == 32773 && !ktrace_chunk_version_major(a2))
    {
      if (*(a1 + 248))
      {
        return;
      }

      v7 = ktrace_chunk_map_data(a2, 0, v4);
      if (v7)
      {
        v8 = CFDataCreateWithBytesNoCopy(0, v7, v4, *MEMORY[0x277CBED00]);
        v6 = CFPropertyListCreateWithData(0, v8, 0, 0, 0);
        CFRelease(v8);
        if (v6)
        {
          process_info_dict = ktrace_uuid_map_read_process_info_dict(v9, v6, 1);
          *(a1 + 248) = process_info_dict;
          if (process_info_dict)
          {
LABEL_8:
            CFRelease(v6);
LABEL_9:
            if (v7)
            {
              ktrace_chunk_unmap_data(a2, v7, v4);
            }

            return;
          }
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_uuid_map_learn_kernelmap_with_chunk_cold_1();
    }

    *(a1 + 248) = 0;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }
}

ktrace_uuid_map *ktrace_uuid_map_learn_live_kernelmap(ktrace_uuid_map *result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 31))
    {
      result = ktrace_get_live_kernel_map();
      if (result)
      {
        result = ktrace_uuid_map_read_process_info_dict(result, result, 1);
        *(v1 + 31) = result;
      }
    }
  }

  return result;
}

__CFDictionary *ktrace_get_live_kernel_map()
{
  CSSymbolicatorCreateWithMachKernel();
  if (CSIsNull())
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v0 = Mutable;
  v2 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  CFDictionarySetValue(v0, @"Binaries", v3);
  CFRelease(v3);
  CFAutorelease(v0);
  CSRelease();
  return v0;
}

void ktrace_uuid_map_learn_process_info_with_chunk(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = ktrace_chunk_size(a2, a2);
    if (ktrace_chunk_tag(a2, v5) == 32784 && !ktrace_chunk_version_major(a2))
    {
      v8 = ktrace_chunk_map_data(a2, 0, v4);
      if (v8)
      {
        v9 = CFDataCreateWithBytesNoCopy(0, v8, v4, *MEMORY[0x277CBED00]);
        v7 = CFPropertyListCreateWithData(0, v9, 0, 0, 0);
        CFRelease(v9);
        Value = CFDictionaryGetValue(v7, @"Processes");
        v11 = Value;
        if (Value)
        {
          v12 = CFGetTypeID(Value);
          if (v12 != CFArrayGetTypeID())
          {
            ktrace_log_init();
            if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
            {
              __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
            }

            v11 = 0;
          }
        }

        if (CFArrayGetCount(v11) < 1)
        {
LABEL_9:
          ktrace_chunk_unmap_data(a2, v8, v4);
LABEL_10:
          if (v7)
          {
            CFRelease(v7);
          }

          return;
        }

        v13 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
          v15 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v16 = CFGetTypeID(ValueAtIndex);
            ValueAtIndex = CFDictionaryGetTypeID();
            if (v16 != ValueAtIndex)
            {
              ktrace_log_init();
              ValueAtIndex = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR);
              if (ValueAtIndex)
              {
                __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_2(&v19, v20);
              }

              v15 = 0;
            }
          }

          process_info_dict = ktrace_uuid_map_read_process_info_dict(ValueAtIndex, v15, 0);
          v6 = process_info_dict;
          if (!process_info_dict)
          {
            break;
          }

          v18 = process_info_dict[8];
          if (!v18)
          {
            break;
          }

          set_address_space_for_pid(a1, v18, process_info_dict);
          CFRelease(v6);
          if (CFArrayGetCount(v11) <= ++v13)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_uuid_map_learn_process_info_with_chunk_cold_3();
      if (!v6)
      {
LABEL_8:
        if (!v8)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (!v6)
    {
      goto LABEL_8;
    }

    CFRelease(v6);
    goto LABEL_8;
  }
}

uint64_t ktrace_uuid_map_learn_sharedcache(ktrace_uuid_map *a1, CFUUIDBytes a2)
{
  if (!dscsym_mmap_dscsym_for_uuid())
  {
    ktrace_uuid_map_learn_sharedcache_with_buffer(a1, a2, 0, 0);
  }

  return 0;
}

void ktrace_address_space_get_offset_for_address(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v27 = 0u;
  v28 = 0u;
  *dst = 0u;
  v7 = ktrace_address_space_symbol_owner_for_address(a2, a3, 0);
  if (!v7)
  {
LABEL_17:
    a4[3] = 0u;
    a4[4] = 0u;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
    return;
  }

  v8 = v7;
  if (!*(v7 + 56))
  {
    BYTE4(v29[0]) = 1;
  }

  *src = *v7;
  uuid_copy(dst, src);
  v9 = *(v8 + 16);
  LODWORD(v29[0]) = v9;
  *(&v29[1] + 1) = *(v8 + 80);
  *(v29 + 8) = *(v8 + 64);
  if (v9 <= 2)
  {
    if (v9 == 1)
    {
      v16 = a3 - *(v8 + 48);
      *(&v28 + 1) = v16;
      if (BYTE4(v29[0]) == 1)
      {
        v18 = *(v8 + 24);
        v17 = (v8 + 24);
        if (v18)
        {
          BYTE4(v29[0]) = v16 >= optional_uint64::value(v17);
        }
      }

      goto LABEL_9;
    }

    if (v9 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v9 == 3)
  {
    v19 = 0;
    v20 = 0;
    get_sc_and_slide(a1, v8, &v20, &v19);
    if (v20)
    {
      *(&v28 + 1) = a3 - optional_uint64::value(&v20);
      v13 = v19;
      if (v19)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        *src = 0u;
        v14 = optional_uint64::value(&v20);
        ktrace_address_space_get_offset_for_address(a1, v13, a3 - v14, src);
        if (v24)
        {
          v28 = v23;
          v29[0] = v24;
          v29[1] = v25;
          *dst = *src;
          v27 = v22;
        }
      }

      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (v9 != 4)
  {
    if (v9 == 5)
    {
LABEL_8:
      *(&v28 + 1) = a3 - *(v8 + 48);
      v10 = *(v8 + 40);
      v27 = *(v8 + 24);
      LOBYTE(v28) = v10;
LABEL_9:
      v11 = v29[0];
      a4[2] = v28;
      a4[3] = v11;
      a4[4] = v29[1];
      v12 = v27;
      *a4 = *dst;
      a4[1] = v12;
      return;
    }

LABEL_12:
    ktrace_address_space_deep_iterate_symbol_owners();
  }

  v15 = *(a1 + 248);
  if (!v15)
  {
    *(&v28 + 1) = a3;
    goto LABEL_9;
  }

  ktrace_address_space_get_offset_for_address(a1, v15, a3, a4);
}

uint64_t ktrace_uuid_map_dump_address_space(ktrace_uuid_map *a1, unint64_t a2, FILE *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = address_space_for_taskid(a1, a2);

  return ktrace_address_space_dump(a1, v5, a3);
}

uint64_t ktrace_address_space_dump(uint64_t a1, uint64_t a2, FILE *a3)
{
  if (!a2)
  {
    return 22;
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *MEMORY[0x277D85E08];
  }

  fprintf(v5, "Address space:  pid=%d task_unique_id=%llx\n", *(a2 + 32), *(a2 + 24) - 1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZL25ktrace_address_space_dumpP15ktrace_uuid_mapP20ktrace_address_spaceP7__sFILE_block_invoke;
  v7[3] = &__block_descriptor_48_e244_v24__0__SymbolOwner____CCCCCCCCCCCCCCCC__SymbolOwnerTypeProperty_i_____17c__optional_uint64_Q_____optional_uint64_Q__optional_uint64_Q__optional_uint64_Q___3Q__Q_optional_uint64_Q__fsid__2i___fsobj_id_II_____CFString_b1b1_8_optional_uint64_Q_16l;
  v7[4] = v5;
  v7[5] = a1;
  ktrace_address_space_deep_iterate_symbol_owners(a1, a2, v7);
  return 0;
}

uint64_t ktrace_uuid_map_dump_address_space_pid(ktrace_uuid_map *a1, int a2, FILE *a3)
{
  if (!a1)
  {
    return 22;
  }

  v5 = address_space_for_pid(a1, a2);

  return ktrace_address_space_dump(a1, v5, a3);
}

double ktrace_uuid_map_get_offset_for_address@<D0>(ktrace_uuid_map *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  if (a1 && (!a2 && a4 && (v8 = *(a1 + 31)) != 0 || (v8 = address_space_for_taskid(a1, a2)) != 0))
  {

    ktrace_address_space_get_offset_for_address(a1, v8, a3, a5);
  }

  else
  {
    result = 0.0;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

double ktrace_uuid_map_get_offset_for_pid_address@<D0>(ktrace_uuid_map *a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  if (a1 && (!a2 && a4 && (v8 = *(a1 + 31)) != 0 || (v8 = address_space_for_pid(a1, a2)) != 0))
  {

    ktrace_address_space_get_offset_for_address(a1, v8, a3, a5);
  }

  else
  {
    result = 0.0;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void ktrace_address_space_merge_owner(uint64_t a1, SymbolOwner *this, uint64_t a3, char a4)
{
  if (*this != *a3 || *(this + 1) != *(a3 + 8))
  {
    if ((a4 & 1) != 0 && !*(a1 + 32))
    {
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_address_space_merge_owner();
      }
    }

    else if (*(this + 88))
    {

      SymbolOwner::operator=(this, a3);
    }

    return;
  }

  if (*(this + 88))
  {
    v8 = *(a3 + 88);
  }

  else
  {
    v8 = 0;
  }

  *(this + 88) = *(this + 88) & 0xFE | v8 & 1;
  if (!*(this + 10))
  {
    v9 = *(a3 + 80);
    if (v9)
    {
      SymbolOwner::set_path(this, v9);
    }
  }

  if (!*(this + 8))
  {
    v10 = *(a3 + 64);
    if (v10)
    {
      *(this + 8) = v10;
    }
  }

  if (!*(this + 9))
  {
    v11 = *(a3 + 72);
    if (v11)
    {
      *(this + 9) = v11;
    }
  }

  v12 = *(this + 7);
  if (!v12)
  {
    v12 = *(a3 + 56);
    if (v12)
    {
      if (*(this + 4) == *(a3 + 16))
      {
        *(this + 7) = v12;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  v13 = *(a3 + 16);
  if (v13 != 1)
  {
    if (v13 == 2 || v13 == 5)
    {
      v14 = *(this + 4);
      if (v14 == 1)
      {
        v15 = *(this + 6);
        v16 = *(a3 + 48);
        if (v16 == v15 && (v13 == 5 || !strcmp((a3 + 24), "__TEXT")) && !*(this + 3))
        {
          *(this + 3) = *(a3 + 56);
        }

        v17 = v16 >= v15;
        v18 = v16 - v15;
        if (v18 != 0 && v17 && !*(a1 + 32) && (v13 == 5 || !strcmp((a3 + 24), "__TEXT_EXEC")))
        {
          if (!*(this + 4))
          {
            *(this + 4) = v18 + 1;
          }

          if (!*(this + 5))
          {
            *(this + 5) = *(a3 + 56);
          }
        }

        return;
      }

      v19 = 0;
    }

    else
    {
      v19 = 0;
      v14 = *(this + 4);
    }

    goto LABEL_57;
  }

  v14 = *(this + 4);
  if (v14 != 1)
  {
    v19 = 1;
LABEL_57:
    if ((v14 == 5 || v14 == 2) && v19 && *(this + 6) == *(a3 + 48) && (v14 == 5 || !strcmp(this + 24, "__TEXT")))
    {
      *(this + 3) = 0;
      *(this + 4) = 0;
      *(this + 5) = 0;
      *(this + 4) = 1;
      if (!v12)
      {
        v12 = *(a3 + 24);
      }

      *(this + 3) = v12;
      *(this + 7) = *(a3 + 56);
    }

    return;
  }

  if (!*(this + 3))
  {
    *(this + 3) = *(a3 + 24);
  }

  if (!*(this + 5))
  {
    *(this + 5) = *(a3 + 40);
  }

  if (!*(this + 4))
  {
    *(this + 4) = *(a3 + 32);
  }
}

uint64_t ktrace_visit_uuid(unint64_t a1, uint64_t *a2)
{
  v3[3] = 0u;
  memset(v3, 0, 32);
  v3[2] = a1;
  return visit_uuid(v3, *a2, a2[1]);
}

uint64_t visit_uuid(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    ktrace_client_get_file_info();
  }

  memset(dst, 0, sizeof(dst));
  *src = a2;
  v5 = a3;
  uuid_copy(dst, src);
  return OSLogLookupPathWithUUID();
}

void ktrace_visit_inode(unint64_t a1, fsid_t a2, uint64_t a3)
{
  v3[3] = 0u;
  memset(v3, 0, 32);
  v3[2] = a1;
  visit_inode_while_locked(v3, a2, a3);
}

void visit_inode_while_locked(uint64_t a1, fsid_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  if (v6)
  {
    dispatch_assert_queue_V2(v6);
  }

  v7 = cfaasprintf("%llx", a2);
  v8 = cfaasprintf("%llx", a3);
  Value = CFDictionaryGetValue(*(a1 + 32), v7);
  if (!Value || !CFDictionaryContainsKey(Value, v8))
  {
    if (!*a1)
    {
LABEL_13:
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v21 = a2;
      if (fsgetpath(cStr, 0x400uLL, &v21, a3) < 0)
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        v13 = CFStringCreateWithCString(0, cStr, 0x8000100u);
        if (!v13)
        {
          v13 = CFStringCreateWithCString(0, cStr, 0x100u);
        }

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = @"!!!invalid-enc!!!";
        }

        CFAutorelease(v14);
        CFDictionarySetValue(Mutable, @"Path", v14);
        utf8(v14);
        v21 = 0;
        v22 = &v21;
        v23 = 0x2020000000;
        v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v15 = v22[3];
        if (!v15)
        {
          _os_assert_log();
          _os_crash();
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
        }

        CFAutorelease(v15);
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 1;
        *cStr = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = ___ZL22get_summary_from_machoPKc_block_invoke;
        v28 = &unk_27886F008;
        v29 = &v21;
        v30 = &v17;
        CSSymbolicatorForeachSymbolicatorWithPath();
        if (v18[3])
        {
          v16 = 0;
        }

        else
        {
          v16 = v22[3];
        }

        _Block_object_dispose(&v17, 8);
        _Block_object_dispose(&v21, 8);
        if (v16)
        {
          CFDictionarySetValue(Mutable, @"Images", v16);
        }

        if (Mutable)
        {
          merge_info_while_locked(a1, *&a2, a3, Mutable);
          CFRelease(Mutable);
        }
      }

      return;
    }

    v10 = *(a1 + 24);
    if (!v10)
    {
      v10 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 24) = v10;
    }

    v11 = CFDictionaryGetValue(v10, v7);
    if (!v11)
    {
      v11 = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      CFDictionarySetValue(*(a1 + 24), v7, v11);
      CFRelease(v11);
    }

    if (!CFSetContainsValue(v11, v8))
    {
      if (*a1)
      {
        ktrace_client_get_file_info();
      }

      goto LABEL_13;
    }
  }
}

void sub_22EDB9690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __ktrace_get_live_kernel_map_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  image_summary = make_image_summary(a2);
  if (image_summary)
  {
    v5 = image_summary;
    v6 = *(a1 + 32);

    CFArrayAppendValue(v6, v5);
  }
}

__CFDictionary *make_image_summary(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v28 = *MEMORY[0x277D85DE8];
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (!CFUUIDBytes)
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      make_image_summary(v6, v5);
    }

    return 0;
  }

  v8 = CFUUIDBytes;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v10 = Mutable;
  memset(out, 0, 37);
  uuid_unparse(v8, out);
  v11 = CFStringCreateWithCString(0, out, 0x8000100u);
  if (!v11)
  {
    v11 = CFStringCreateWithCString(0, out, 0x100u);
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"!!!invalid-enc!!!";
  }

  CFAutorelease(v12);
  CFDictionarySetValue(v10, @"UUID_String", v12);
  if (!v3)
  {
LABEL_11:
    v16 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v16)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v17 = v16;
    CSSymbolOwnerForeachSegment();
    CFDictionarySetValue(v10, @"Segments", v17);
    CFRelease(v17);
    *out = CSSymbolOwnerGetFlags();
    v18 = CFNumberCreate(0, kCFNumberLongLongType, out);
    if (!v18)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v19 = v18;
    CFAutorelease(v18);
    CFDictionarySetValue(v10, @"Flags", v19);
    CFAutorelease(v10);
    return v10;
  }

  Path = CSSymbolOwnerGetPath();
  v14 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], Path, 0x8000100u);
  if (v14)
  {
    v15 = v14;
    CFAutorelease(v14);
    CFDictionarySetValue(v10, @"Path", v15);
    goto LABEL_11;
  }

  image_summary = make_image_summary(v27, Path, v6, v5, out);
  return ktrace_uuid_map_postprocess_file(image_summary, v22, v23, v24, v25);
}

uint64_t ktrace_uuid_map_postprocess_file(_WORD *a1, uint64_t a2, uint64_t a3, int a4, _WORD **a5)
{
  v49 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v11 = Mutable;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x16012000000;
  v30[3] = __Block_byref_object_copy__81;
  v30[4] = __Block_byref_object_dispose__82;
  v30[5] = "%1";
  v30[6] = a3;
  memset(&v30[7], 0, 24);
  v30[10] = Mutable;
  v30[11] = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v30[12] = ktrace_postprocessing_get_processing_queue(a5);
  v30[13] = dispatch_group_create();
  memset(v31, 0, sizeof(v31));
  v32 = 1065353216;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v36 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v40 &= 0xFCu;
  v41 = -1;
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v44 = 1;
  memset(v45, 0, sizeof(v45));
  v46 = 1065353216;
  memset(v47, 0, sizeof(v47));
  v48 = 1065353216;
  v29[0] = 0;
  v29[1] = 0;
  is_64_bit = ktrace_file_is_64_bit(a2, v12);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __ktrace_uuid_map_postprocess_file_block_invoke;
  v24[3] = &unk_27886E988;
  v24[4] = &v25;
  ktrace_file_header_iterate(a2, 0, v24);
  if (!v26[3])
  {
    v26[3] = 64;
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_uuid_map_postprocess_file_cold_1();
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __ktrace_uuid_map_postprocess_file_block_invoke_84;
  v22[3] = &unk_27886ED58;
  v22[4] = v30;
  v23 = a4;
  ktrace_file_iterate(a2, 0, v22);
  v14 = malloc_type_calloc(v26[3], 0x18uLL, 0x1000040BD32EBF2uLL);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __ktrace_uuid_map_postprocess_file_block_invoke_3;
  v21[3] = &unk_27886ED80;
  v21[4] = v30;
  ktrace_events_single(a1, 117440520, v21);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __ktrace_uuid_map_postprocess_file_block_invoke_4;
  v20[3] = &unk_27886ED80;
  v20[4] = v30;
  ktrace_events_single(a1, 117571592, v20);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __ktrace_uuid_map_postprocess_file_block_invoke_5;
  v18[3] = &unk_27886EDD0;
  v19 = is_64_bit;
  v18[4] = v30;
  v18[5] = a2;
  v18[6] = v29;
  ktrace_events_range(a1, 520421376, 520486912, v18);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __ktrace_uuid_map_postprocess_file_block_invoke_7;
  v16[3] = &unk_27886EE20;
  v17 = a4;
  v16[4] = v30;
  v16[5] = a3;
  v16[6] = a2;
  v16[7] = v11;
  v16[8] = v14;
  ktrace_postprocessing_set_completed_handler(a5, v16);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v30, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v47);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v45);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v42);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v31);
  return 0;
}

void sub_22EDB9E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  postprocess_data::~postprocess_data((v56 + 48));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__81(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__hash_table(a1 + 112, (a2 + 112));
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 168);
  v8 = *(a2 + 184);
  v9 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  *(a1 + 168) = v7;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__hash_table(a1 + 224, (a2 + 224));
  *(a1 + 264) = *(a2 + 264);
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__hash_table(a1 + 272, (a2 + 272));

  return std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__hash_table(a1 + 312, (a2 + 312));
}

uint64_t __Block_byref_object_dispose__82(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(a1 + 312);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(a1 + 272);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(a1 + 224);

  return std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(a1 + 112);
}

BOOL __ktrace_uuid_map_postprocess_file_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = ktrace_machine_create(a2, a2);
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = ktrace_machine_max_cpus(v3);
    ktrace_machine_destroy(v4);
  }

  return v4 == 0;
}

uint64_t __ktrace_uuid_map_postprocess_file_block_invoke_84(uint64_t a1, void *a2)
{
  v4 = ktrace_chunk_tag(a2, a2);
  if (v4 == 20990)
  {
    goto LABEL_7;
  }

  if (v4 == 32770)
  {
    if (ktrace_chunk_version_major(a2) <= 1)
    {
LABEL_7:
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __ktrace_uuid_map_postprocess_file_block_invoke_2;
      v6[3] = &unk_27886ED30;
      v6[4] = *(a1 + 32);
      v7 = *(a1 + 40);
      ktrace_stackshot_chunk_unwrap(a2, v6);
    }
  }

  else if (v4 == 36864 && !ktrace_chunk_version_major(a2))
  {
    goto LABEL_7;
  }

  return 1;
}

void __ktrace_uuid_map_postprocess_file_block_invoke_2(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a2 + 16;
  if (a2 + 16 <= a3)
  {
    v5 = a2;
    v6 = 0;
    v52 = 0;
    v7 = 0;
    *&v51[8] = 0;
    v8 = *(*(a1 + 32) + 8);
    *v51 = *(a1 + 40);
    while (1)
    {
      if (v3 + *(v5 + 4) > a3)
      {
        return;
      }

      v9 = *v5;
      v10 = *v5 & 0xFFFFFFF0;
      v11 = v10 == 32 ? 17 : *v5;
      v12 = v11 == 19 ? v7 + 1 : v7;
      if (v11 == 20)
      {
        if (!--v7)
        {
          if ((v51[0] & 1) == 0 || (v52 == 0) | v6 & 1)
          {
            *&v51[4] = 0;
            v52 = 0;
            v6 = 0;
          }

          else if (!strcmp(*&v51[4], "watchdogd") || !strcmp(*&v51[4], "notifyd") || !strncmp(*&v51[4], "launchd", 7uLL) || !strncmp(*&v51[4], "wakeboardd", 0xAuLL))
          {
            *&v51[4] = 0;
            v7 = 0;
            v52 = 0;
            v6 = 0;
          }

          else
          {
            if (!v8[6])
            {
              v62[0] = 0;
              v62[1] = v62;
              v62[2] = 0x3052000000;
              v62[3] = __Block_byref_object_copy__192;
              v13 = v8[13];
              v62[4] = __Block_byref_object_dispose__193;
              v62[5] = v13;
              v61[0] = 0;
              v61[1] = v61;
              v61[2] = 0x3052000000;
              v61[3] = __Block_byref_object_copy__192;
              v15 = v8[11];
              v14 = v8[12];
              v61[4] = __Block_byref_object_dispose__193;
              v61[5] = v14;
              v60[0] = 0;
              v60[1] = v60;
              v60[2] = 0x2020000000;
              v60[3] = v15;
              global_queue = dispatch_get_global_queue(25, 0);
              *&block = MEMORY[0x277D85DD0];
              *(&block + 1) = 3221225472;
              v54 = ___ZL13visit_processP16operating_systemj_block_invoke;
              v55 = &unk_27886F050;
              v59 = v52;
              v56 = v62;
              v57 = v61;
              v58 = v60;
              dispatch_group_async(v13, global_queue, &block);
              _Block_object_dispose(v60, 8);
              _Block_object_dispose(v61, 8);
              _Block_object_dispose(v62, 8);
            }

            *&v51[4] = 0;
            v7 = 0;
            v52 = 0;
            v6 = 0;
            v9 = *v5;
            v10 = *v5 & 0xFFFFFFF0;
          }
        }
      }

      else
      {
        v7 = v12;
      }

      v17 = v10 == 32 ? 17 : v9;
      if (v17 == 2312)
      {
        v21 = *(v5 + 4);
        v22 = *(v5 + 8);
        if (v21 != 32 || (v22 & 0x8F) != 0)
        {
          v23 = v22 & 0xF;
          v47 = v21 >= v23;
          v24 = v21 - v23;
          if (!v47)
          {
            v24 = 0;
          }

          if (v24 >= 0x20 && !uuid_is_null((v5 + 24)))
          {
            block = *(v5 + 24);
            std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>(v8 + 34, &block, &block);
          }
        }
      }

      else if (v17 == 2309)
      {
        v18 = *(v5 + 4);
        v19 = *(v5 + 8) & 0xF;
        v47 = v18 >= v19;
        v20 = v18 - v19;
        if (!v47)
        {
          v20 = 0;
        }

        if (v20 >= 0x78)
        {
          v52 = *(v5 + 100);
          *&v51[4] = v5 + 104;
        }
      }

      v25 = *(v5 + 4);
      v26 = v3 + v25;
      if (v3 + v25 <= a3)
      {
        v27 = *v5;
        if (*v5 == 17 || (v27 & 0xFFFFFFF0) == 0x20)
        {
          break;
        }
      }

LABEL_109:
      if (v26 > a3)
      {
        goto LABEL_179;
      }

      v39 = *v5;
      if (*v5 != 17 && (v39 & 0xFFFFFFF0) != 0x20)
      {
        goto LABEL_179;
      }

      v40 = *(v5 + 8);
      if (!v40)
      {
        if (v25)
        {
          v42 = 0;
        }

        else
        {
          v42 = v40 == 0x3100000000;
        }

        v44 = v42 && v39 == 17;
        v6 |= v44;
        goto LABEL_179;
      }

      if (v39 != 17)
      {
        v45 = *v5 & 0xF;
        v47 = v25 >= v45;
        v46 = v25 - v45;
        if (!v47 || v46 < v40 || HIDWORD(v40) != 49)
        {
          goto LABEL_179;
        }

        v47 = !(v46 % v40) && v46 / v40 >= 0x18;
        if (!v47)
        {
          goto LABEL_179;
        }

LABEL_153:
        v48 = 0;
        v6 = 1;
        while (2)
        {
          if (*v5 != 17)
          {
            v49 = (*(v5 + 4) - (*v5 & 0xFu)) / v40;
            goto LABEL_174;
          }

          if (SHIDWORD(v40) <= 2313)
          {
            if (SHIDWORD(v40) <= 2073)
            {
              if (HIDWORD(v40) == 48)
              {
                v49 = 20;
              }

              else
              {
                if (HIDWORD(v40) != 49)
                {
                  goto LABEL_173;
                }

                v49 = 24;
              }

              goto LABEL_174;
            }

            if (HIDWORD(v40) != 2074)
            {
              if (HIDWORD(v40) != 2311)
              {
                goto LABEL_173;
              }

              v49 = 4;
LABEL_174:
              v50 = v49 * v48 + v5 + 16;
              if (uuid_is_null((v50 + 8)))
              {
                v6 = 0;
              }

              else
              {
                block = *(v50 + 8);
                std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>(v8 + 39, &block, &block);
              }

              ++v48;
              v40 = *(v5 + 8);
              if (v48 >= v40)
              {
                v26 = v3 + *(v5 + 4);
                goto LABEL_179;
              }

              continue;
            }
          }

          else if (SHIDWORD(v40) <= 2315)
          {
            if (HIDWORD(v40) != 2314)
            {
              goto LABEL_170;
            }
          }

          else if (HIDWORD(v40) != 2316)
          {
            if (HIDWORD(v40) != 2317)
            {
              if (HIDWORD(v40) == 2369)
              {
                v49 = 48;
                goto LABEL_174;
              }

LABEL_173:
              v49 = 0;
              goto LABEL_174;
            }

LABEL_170:
            v49 = 16;
            goto LABEL_174;
          }

          break;
        }

        v49 = 8;
        goto LABEL_174;
      }

      if (SHIDWORD(v40) <= 2313)
      {
        if (SHIDWORD(v40) > 2073)
        {
          if (HIDWORD(v40) == 2074)
          {
            goto LABEL_148;
          }

          if (HIDWORD(v40) != 2311)
          {
            goto LABEL_179;
          }

          v41 = 4;
        }

        else if (HIDWORD(v40) == 48)
        {
          v41 = 20;
        }

        else
        {
          if (HIDWORD(v40) != 49)
          {
            goto LABEL_179;
          }

          v41 = 24;
        }
      }

      else
      {
        if (SHIDWORD(v40) <= 2315)
        {
          if (HIDWORD(v40) == 2314)
          {
LABEL_148:
            v41 = 8;
            goto LABEL_150;
          }

LABEL_147:
          v41 = 16;
          goto LABEL_150;
        }

        if (HIDWORD(v40) == 2316)
        {
          goto LABEL_148;
        }

        if (HIDWORD(v40) == 2317)
        {
          goto LABEL_147;
        }

        if (HIDWORD(v40) != 2369)
        {
          goto LABEL_179;
        }

        v41 = 48;
      }

LABEL_150:
      if (v25 / v41 >= v40 && HIDWORD(v40) == 49 && v25 % v40 < 0x10)
      {
        goto LABEL_153;
      }

LABEL_179:
      v3 = v26 + 16;
      v5 = v26;
      if (v26 + 16 > a3)
      {
        return;
      }
    }

    v28 = *(v5 + 8);
    if (!v28)
    {
      v31 = v27 == 17 && v28 == 0x3000000000;
      v32 = v31 | v6;
      if (!v25)
      {
        LODWORD(v25) = 0;
        v6 = v32;
      }

      goto LABEL_109;
    }

    if (v27 != 17)
    {
      v33 = *v5 & 0xF;
      v47 = v25 >= v33;
      v34 = v25 - v33;
      if (!v47 || v34 < v28 || HIDWORD(v28) != 48)
      {
        goto LABEL_109;
      }

      if (v34 % v28 || v34 / v28 <= 0x13)
      {
        goto LABEL_109;
      }

LABEL_83:
      v36 = 0;
      v6 = 1;
      while (2)
      {
        if (*v5 != 17)
        {
          v37 = (*(v5 + 4) - (*v5 & 0xFu)) / v28;
          goto LABEL_104;
        }

        if (SHIDWORD(v28) <= 2313)
        {
          if (SHIDWORD(v28) <= 2073)
          {
            if (HIDWORD(v28) == 48)
            {
              v37 = 20;
            }

            else
            {
              if (HIDWORD(v28) != 49)
              {
                goto LABEL_103;
              }

              v37 = 24;
            }

            goto LABEL_104;
          }

          if (HIDWORD(v28) != 2074)
          {
            if (HIDWORD(v28) != 2311)
            {
              goto LABEL_103;
            }

            v37 = 4;
LABEL_104:
            v38 = v37 * v36 + v5 + 16;
            if (uuid_is_null((v38 + 4)))
            {
              v6 = 0;
            }

            else
            {
              block = *(v38 + 4);
              std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>(v8 + 39, &block, &block);
            }

            ++v36;
            v28 = *(v5 + 8);
            if (v36 >= v28)
            {
              v25 = *(v5 + 4);
              v26 = v3 + v25;
              goto LABEL_109;
            }

            continue;
          }
        }

        else if (SHIDWORD(v28) <= 2315)
        {
          if (HIDWORD(v28) != 2314)
          {
            goto LABEL_100;
          }
        }

        else if (HIDWORD(v28) != 2316)
        {
          if (HIDWORD(v28) != 2317)
          {
            if (HIDWORD(v28) == 2369)
            {
              v37 = 48;
              goto LABEL_104;
            }

LABEL_103:
            v37 = 0;
            goto LABEL_104;
          }

LABEL_100:
          v37 = 16;
          goto LABEL_104;
        }

        break;
      }

      v37 = 8;
      goto LABEL_104;
    }

    if (SHIDWORD(v28) <= 2313)
    {
      if (SHIDWORD(v28) <= 2073)
      {
        if (HIDWORD(v28) == 48)
        {
          v29 = 20;
        }

        else
        {
          if (HIDWORD(v28) != 49)
          {
            goto LABEL_109;
          }

          v29 = 24;
        }

        goto LABEL_80;
      }

      if (HIDWORD(v28) != 2074)
      {
        if (HIDWORD(v28) != 2311)
        {
          goto LABEL_109;
        }

        v29 = 4;
        goto LABEL_80;
      }
    }

    else if (SHIDWORD(v28) <= 2315)
    {
      if (HIDWORD(v28) != 2314)
      {
LABEL_77:
        v29 = 16;
LABEL_80:
        if (v25 / v29 >= v28 && HIDWORD(v28) == 48 && v25 % v28 < 0x10)
        {
          goto LABEL_83;
        }

        goto LABEL_109;
      }
    }

    else if (HIDWORD(v28) != 2316)
    {
      if (HIDWORD(v28) != 2317)
      {
        if (HIDWORD(v28) != 2369)
        {
          goto LABEL_109;
        }

        v29 = 48;
        goto LABEL_80;
      }

      goto LABEL_77;
    }

    v29 = 8;
    goto LABEL_80;
  }
}

void __ktrace_uuid_map_postprocess_file_block_invoke_3(uint64_t a1, fsid_t *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  if (*&v3 | v4)
  {
    visit_inode_while_locked(*(*(a1 + 32) + 8) + 48, v3, v4);
  }
}

uint64_t DyldDecodeWindow::reset(DyldDecodeWindow *this)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  *&v6 = 0;
  v5 = 0uLL;
  DWORD2(v6) = 0;
  *&v8 = 0;
  v7 = 0uLL;
  BYTE8(v8) = 0;
  v9 = -1;
  memset(v10, 0, sizeof(v10));
  v11 = 1065353216;
  v12 = 1;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__move_assign(this, v3);
  *(this + 56) = v6;
  *(this + 72) = v7;
  *(this + 88) = v8;
  *(this + 13) = v9;
  *(this + 40) = v5;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__move_assign(this + 112, v10);
  *(this + 38) = v12;
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v10);
  return std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v3);
}

void __ktrace_uuid_map_postprocess_file_block_invoke_5(uint64_t a1, uint64_t a2)
{
  HIDWORD(v3) = *(a2 + 48) - 520421376;
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 2;
  if (v2 <= 0xC)
  {
    v6 = 1 << v2;
    if ((v6 & 0xA5) == 0)
    {
      if ((v6 & 0x1400) == 0)
      {
        return;
      }

      v13 = dyldtp_decode_window_update(*(a1 + 56), *(a2 + 40), (*(*(a1 + 32) + 8) + 112), a2);
      if (!v13)
      {
        return;
      }

      v14 = v13;
      if (!uuid_compare(v13 + 12, *(a1 + 48)))
      {
        return;
      }

      uuid_copy(*(a1 + 48), v14 + 12);
      if (!uuid_is_null(v14 + 12))
      {
        v15 = *(*(a1 + 32) + 8);
        valuePtr = *(v14 + 12);
        std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>((v15 + 272), &valuePtr, &valuePtr);
      }
    }

    v7 = dyldtp_decode_window_update(*(a1 + 56), *(a2 + 40), (*(*(a1 + 32) + 8) + 112), a2);
    if (v7)
    {
      v8 = v7;
      if (!uuid_is_null(v7 + 12))
      {
        v9 = *(*(a1 + 32) + 8);
        valuePtr = *(v8 + 12);
        std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>((v9 + 312), &valuePtr, &valuePtr);
      }

      if (*(v8 + 12))
      {
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        if (*(v8 + 10))
        {
          v12 = *(v8 + 5);
          visit_inode_while_locked((v11 + 6), v12, *(v8 + 6));
          return;
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v26 = __ktrace_uuid_map_postprocess_file_block_invoke_6;
        v27 = &unk_27886EDA8;
        v28 = v10;
        v29 = v8;
        v16 = v11[8];
        if (v16)
        {
          goto LABEL_21;
        }

        if (v11[6])
        {
          ktrace_client_get_mounts();
        }

        v17 = getfsstat(0, 0, 2);
        if (v17 >= 1)
        {
          v18 = v17;
          v19 = v17;
          v20 = 2168 * v17;
          v21 = malloc_type_malloc(2168 * v17, 0x100004087E0324AuLL);
          v11[7] = v21;
          v11[8] = v19;
          if (!v21)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          if (getfsstat(v21, v20, 2) != v18)
          {
            ktrace_postprocess_file_internal_cold_4();
          }

          v16 = v11[8];
LABEL_21:
          if (v16 >= 1)
          {
            v22 = 0;
            for (i = 0; i < v16; ++i)
            {
              v24 = v11[7] + v22;
              if ((*(v24 + 65) & 0x10) != 0)
              {
                (v26)(v25, *(v24 + 48));
                v16 = v11[8];
              }

              v22 += 2168;
            }
          }
        }
      }
    }
  }
}

void __ktrace_uuid_map_postprocess_file_block_invoke_7(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 72) & 2) != 0)
  {
    v2 = *(a1 + 32);
    v3 = *(*(v2 + 8) + 288);
    if (v3)
    {
      do
      {
        memset(dst, 0, sizeof(dst));
        *v26 = *(v3 + 1);
        uuid_copy(dst, v26);
        if (*(a1 + 40))
        {
          ktrace_client_get_dscsym();
        }

        v26[0] = 0;
        v30 = 0;
        if (!dscsym_mmap_dscsym_for_uuid())
        {
          ktrace_file_append_chunk(*(a1 + 48), 32769, 0, 0, v26[0], v30);
          munmap(v26[0], v30);
        }

        v3 = *v3;
      }

      while (v3);
      v2 = *(a1 + 32);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __ktrace_uuid_map_postprocess_file_block_invoke_8;
    v29[3] = &unk_27886EDF8;
    v29[4] = v2;
    v26[0] = 0;
    if (pthread_create(v26, 0, _block_trampoline, v29))
    {
      v4 = *__error();
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_1();
      }

      *__error() = v4;
    }

    else if (!pthread_join(v26[0], 0))
    {
      goto LABEL_17;
    }

    v5 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_uuid_map_postprocess_file_block_invoke_7_cold_2();
    }

    *__error() = v5;
  }

LABEL_17:
  dispatch_group_wait(*(*(*(a1 + 32) + 8) + 104), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(*(*(a1 + 32) + 8) + 104));
  *(*(*(a1 + 32) + 8) + 104) = 0;
  if (CFArrayGetCount(*(*(*(a1 + 32) + 8) + 88)))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"Processes", *(*(*(a1 + 32) + 8) + 88));
    Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(Mutable);
    if (!Data)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v8 = *(a1 + 48);
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(Data);
    ktrace_file_append_chunk(v8, 32784, 0, 0, BytePtr, Length);
    CFRelease(Data);
  }

  if ((*(a1 + 72) & 2) != 0)
  {
    v11 = CFPropertyListCreateData(0, *(a1 + 56), kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!v11)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v12 = v11;
    v13 = *(a1 + 48);
    v14 = CFDataGetBytePtr(v11);
    v15 = CFDataGetLength(v12);
    ktrace_file_append_chunk(v13, 32772, 1, 0, v14, v15);
    CFRelease(v12);
    if (*(a1 + 40))
    {
      ktrace_client_get_live_kernel_map();
    }

    live_kernel_map = ktrace_get_live_kernel_map();
    if (live_kernel_map)
    {
      v17 = CFPropertyListCreateData(0, live_kernel_map, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (!v17)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v18 = v17;
      v19 = *(a1 + 48);
      v20 = CFDataGetBytePtr(v17);
      v21 = CFDataGetLength(v18);
      ktrace_file_append_chunk(v19, 32773, 0, 0, v20, v21);
      CFRelease(v18);
    }
  }

  v22 = *(*(a1 + 32) + 8);
  v23 = v22[7];
  if (v23)
  {
    free(v23);
  }

  v24 = v22[9];
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = v22[11];
  if (v25)
  {
    CFRelease(v25);
  }

  *v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__move_assign(*(*(a1 + 32) + 8) + 272, v26);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v26);
  *v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__move_assign(*(*(a1 + 32) + 8) + 312, v26);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v26);
  free(*(a1 + 64));
  CFRelease(*(a1 + 56));
}

uint64_t __ktrace_uuid_map_postprocess_file_block_invoke_8(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 328);
  if (v1)
  {
    v2 = result;
    do
    {
      result = visit_uuid((*(*(v2 + 32) + 8) + 48), v1[2], v1[3]);
      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

void symbolication_context::symbolication_context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 28) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  ktrace_log_init();
  operator new();
}

void symbolication_context::~symbolication_context(symbolication_context *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v2);
    MEMORY[0x2318F6E50](v3, 0x10A0C408EF24B1CLL);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::~__hash_table(v4);
    MEMORY[0x2318F6E50](v5, 0x10A0C408EF24B1CLL);
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(v6);
    MEMORY[0x2318F6E50](v7, 0x10A0C408EF24B1CLL);
  }
}

uint64_t __ktrace_symbolicate_file_block_invoke(uint64_t a1, void *a2)
{
  if (ktrace_chunk_tag(a2, a2) == 32771 && !ktrace_chunk_version_major(a2))
  {
    if (ktrace_chunk_size(a2, v4) > 0x18)
    {
      v5 = ktrace_chunk_map_data(a2, 0, 0x18uLL);
      if (v5)
      {
        v6 = v5;
        v7 = *(*(a1 + 32) + 16);
        v9 = *v6;
        std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>(v7, &v9, &v9);
        ktrace_chunk_unmap_data(a2, v6, 24);
      }

      else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_symbolicate_file_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_symbolicate_file_block_invoke_cold_2();
    }
  }

  return 1;
}

uint64_t ktrace_symbolicate_path(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = ktrace_file_open(a3, 1);
  if (v5)
  {
    ktrace_symbolicate_file(a1, a2, v5);
  }

  return 0xFFFFFFFFLL;
}

KtraceSymbolicator *ktrace_symbolicator_destroy(KtraceSymbolicator *result)
{
  if (result)
  {
    KtraceSymbolicator::~KtraceSymbolicator(result);

    JUMPOUT(0x2318F6E50);
  }

  return result;
}

uint64_t KtraceSymbolicator::enable_symbolication(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a1)
  {
    operator new();
  }

  return 0;
}

uint64_t ktrace_symbolicator_symbolicate(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v26[0] = *a2;
  if (!std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>((a1 + 8), v26))
  {
    v12 = *a1;
    if (*a1)
    {
      UUIDContext::UUIDContext(v26, a2);
      uuid = find_or_create_uuid(v12, v26);
      UUIDContext::~UUIDContext(v26);
      if (uuid)
      {
        if (ktrace_make_symbolicator(*a1, uuid))
        {
          CS::TypeRef::retain(uuid[11], uuid[12], v26);
          v24 = *a2;
          v25 = &v24;
          v14 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes&&>,std::tuple<>>((a1 + 8), &v24, &std::piecewise_construct, &v25);
          CS::TypeRef::operator=(v14 + 2, v26);
          CS::TypeRef::~TypeRef(v26);
        }
      }
    }
  }

  if (CSIsNull())
  {
    return 0;
  }

  SymbolOwner = CSSymbolicatorGetSymbolOwner();
  v18 = v17;
  if (CSIsNull())
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *&v24 = 0;
  v19 = a2[3];
  v26[2] = a2[2];
  v26[3] = v19;
  v26[4] = a2[4];
  v20 = a2[1];
  v26[0] = *a2;
  v26[1] = v20;
  v15 = translate_offset(SymbolOwner, v18, v26, &v24, a3);
  if (v15)
  {
    if (a4)
    {
      *a4 = SymbolOwner;
      a4[1] = v18;
    }

    if (a5)
    {
      *a5 = CSSymbolicatorGetSymbolWithAddressAtTime();
      a5[1] = v21;
      if (*(a2 + 12) != 1 || !CSIsNull())
      {
LABEL_22:
        if (a6)
        {
          *a6 = CSSymbolicatorGetSourceInfoWithAddressAtTime();
          a6[1] = v22;
        }

        return v15;
      }
    }

    else if (*(a2 + 12) != 1)
    {
      goto LABEL_22;
    }

    if (a3 && (*(a2 + 52) & 1) != 0)
    {
      *a3 = 1;
      CSSymbolOwnerForeachSegment();
    }

    goto LABEL_22;
  }

  return v15;
}

void sub_22EDBBC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  CS::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void *find_or_create_uuid(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v4 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(*(a1 + 24), &v8);
  if (!v4)
  {
    v5 = *(a1 + 24);
    if (v5[3] >= *(a1 + 40))
    {
      result = 0;
      *(a1 + 56) = 0;
      return result;
    }

    v4 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes&,UUIDContext>(v5, &v8, &v8, a2);
    if ((v6 & 1) == 0)
    {
      kteventnames_append_cold_1(v6);
    }
  }

  return v4 + 4;
}

uint64_t ktrace_make_symbolicator(FILE **a1, UUIDContext *a2)
{
  if (!CSIsNull())
  {
    return 1;
  }

  if (ktrace_find_executable(a1, a2) && ktrace_find_arch_with_default(a1, a2, 0))
  {
    *(a2 + 11) = CSSymbolicatorCreateWithURLAndArchitecture();
    *(a2 + 12) = v4;
    if (CSIsNull())
    {
      v5 = *a1;
      if (*a1)
      {
        v6 = describe2(a1, a2);
        fprintf(v5, "failed to create a symbolicator for %s\n", v6);
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_make_symbolicator(a1, a2);
        }
      }
    }

    else
    {
      result = CSSymbolicatorGetSymbolOwnerCountAtTime();
      if (result == 1)
      {
        return result;
      }

      v8 = *a1;
      if (*a1)
      {
        v9 = describe2(a1, a2);
        fprintf(v8, "failed to set up symbolicator for %s: expected 1 symbol owner\n", v9);
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_make_symbolicator(a1, a2);
        }
      }
    }
  }

  result = 0;
  *(a2 + 80) |= 1u;
  return result;
}

uint64_t CS::TypeRef::retain@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return CSRetain();
}

__n128 CS::TypeRef::operator=(__n128 *a1, __n128 *a2)
{
  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t translate_offset(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5)
{
  v8 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = *(a3 + 12);
  if (v9 > 2)
  {
    if ((v9 - 3) >= 2)
    {
      if (v9 != 5)
      {
        goto LABEL_15;
      }

      *(a3 + 12) = 2;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = ___ZL18owner_is_text_exec10_CSTypeRef_block_invoke;
      v22 = &unk_27886F1D0;
      v23 = &v24;
      CSSymbolOwnerForeachSegment();
      v10 = *(v25 + 24);
      _Block_object_dispose(&v24, 8);
      if (v10)
      {
        v11 = "__TEXT_EXEC";
      }

      else
      {
        v11 = "__TEXT";
      }

      strlcpy(a3 + 16, v11, 0x11uLL);
LABEL_12:
      v19 = 0;
      v20 = &v19;
      v21 = 0x2020000000;
      LOBYTE(v22) = 0;
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = ___ZL16translate_offset10_CSTypeRef18ktrace_uuid_offsetPyPb_block_invoke;
      v31 = &unk_27886F1A8;
      v12 = a3[3];
      v36 = a3[2];
      v37 = v12;
      v38 = a3[4];
      v13 = a3[1];
      v34 = *a3;
      v35 = v13;
      v32 = &v19;
      v33 = &v15;
      v39 = a4;
      v40 = a5;
      CSSymbolOwnerForeachSegment();
      _Block_object_dispose(&v19, 8);
      v8 = *(v16 + 24);
    }
  }

  else if (v9)
  {
    if (v9 == 1)
    {
      *a4 = *(a3 + 5) + CSSymbolOwnerGetBaseAddress();
      v8 = 1;
      *(v16 + 24) = 1;
      goto LABEL_14;
    }

    if (v9 != 2)
    {
LABEL_15:
      _os_crash();
      ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
    }

    goto LABEL_12;
  }

LABEL_14:
  _Block_object_dispose(&v15, 8);
  return v8 & 1;
}

uint64_t __ktrace_symbolicator_symbolicate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CSRegionGetRange();
  if (*(a1 + 32) - result < v5)
  {
    **(a1 + 40) = 0;
  }

  return result;
}

void free_symbol_callback(const __CFAllocator *a1, void *a2)
{
  v3 = a2[2];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a2);
}

void ktrace_symboilcator_learn_ariadne_chunk(KtraceSymbolicator *a1, ktrace_chunk *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (ktrace_chunk_tag(a2, a2) != 20580 || ktrace_chunk_version_major(a2))
  {
    return;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (ktrace_chunk_copy_data(a2, 0, v17, 0x20uLL))
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_symboilcator_learn_ariadne_chunk();
    }

    return;
  }

  memset(uu, 0, sizeof(uu));
  strcpy(in, "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
  v4 = v17[0];
  if (LOBYTE(v17[0]))
  {
    v5 = 0;
    v6 = in;
    do
    {
      do
      {
        v7 = *v6++;
      }

      while (v7 == 45);
      *(v6 - 1) = v4;
      if (v5 > 0x1E)
      {
        break;
      }

      ++v5;
      v4 = *(v17 + v5);
    }

    while (v4);
  }

  if (uuid_parse(in, uu))
  {
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_21;
  }

  v9 = ktrace_chunk_size_t(a2, v8);
  v10 = ktrace_chunk_copy_cfdata(a2, 0x20uLL, (v9 - 32));
  if (!v10)
  {
    if (!os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_21:
    ktrace_symboilcator_learn_ariadne_chunk();
    return;
  }

  v11 = CFPropertyListCreateWithData(0, v10, 0, 0, 0);
  CFRelease(v10);
  if (v11)
  {
    Mutable = CFArrayCreateMutable(0, 0, &symbol_array_callbacks);
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 3221225472;
    context[2] = ___Z39ktrace_symboilcator_learn_ariadne_chunkP18KtraceSymbolicatorP12ktrace_chunk_block_invoke;
    context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
    context[4] = Mutable;
    CFDictionaryApplyFunction(v11, CFDictionaryApplierTrampoline, context);
    CFRelease(v11);
    v21.length = CFArrayGetCount(Mutable);
    v21.location = 0;
    CFArraySortValues(Mutable, v21, cmp_symbol, 0);
    v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(v13, @"__TEXT*", Mutable);
    CFRelease(Mutable);
    *in = *uu;
    v14 = v13;
    std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes,CF::TypeRef>(a1 + 6, in, in, &v14);
    CF::TypeRef::~TypeRef(&v14);
    return;
  }

  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_21;
  }
}

void ___Z39ktrace_symboilcator_learn_ariadne_chunkP18KtraceSymbolicatorP12ktrace_chunk_block_invoke(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v11 = 0;
  v5 = utf8(a2);
  v6 = sscanf(v5, "%lld", &v11);
  Value = CFDictionaryGetValue(a3, @"Name");
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == CFStringGetTypeID())
    {
      if (v6 == 1)
      {
        v10 = malloc_type_malloc(0x18uLL, 0x1060040EE9316AEuLL);
        v10[2] = v8;
        CFRetain(v8);
        *v10 = v11;
        v10[1] = 1;
        CFArrayAppendValue(*(a1 + 32), v10);
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }
    }
  }
}

uint64_t cmp_symbol(void *a1, void *a2, void *a3)
{
  if (*a1 < *a2)
  {
    return -1;
  }

  else
  {
    return *a1 != *a2;
  }
}

void ktrace_symboilcator_learn_tailspin_chunk(KtraceSymbolicator *a1, ktrace_chunk *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (ktrace_chunk_tag(a2, a2) == 36870 && !ktrace_chunk_version_major(a2))
  {
    v5 = ktrace_chunk_copy_plist(a2, v4);
    if (v5)
    {
      v6 = v5;
      CFAutorelease(v5);
      Value = CFDictionaryGetValue(v6, @"UUID_String");
      v8 = Value;
      if (Value)
      {
        v9 = CFGetTypeID(Value);
        if (v9 != CFStringGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
          }

          v8 = 0;
        }
      }

      v10 = CFDictionaryGetValue(v6, @"TEXT_EXEC");
      v11 = v10;
      if (v10)
      {
        v12 = CFGetTypeID(v10);
        if (v12 != CFBooleanGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_4();
          }

          v11 = 0;
        }
      }

      v13 = CFDictionaryGetValue(v6, @"Symbols");
      v14 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        if (v15 != CFDictionaryGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
          }

          v14 = 0;
        }
      }

      *uu = 0;
      *&uu[8] = 0;
      v16 = utf8(v8);
      v17 = uuid_parse(v16, uu);
      if (v14 && v11 && v8 && !v17)
      {
        Mutable = CFArrayCreateMutable(0, 0, &symbol_array_callbacks);
        context[0] = MEMORY[0x277D85DD0];
        context[1] = 3221225472;
        context[2] = ___Z40ktrace_symboilcator_learn_tailspin_chunkP18KtraceSymbolicatorP12ktrace_chunk_block_invoke;
        context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
        context[4] = Mutable;
        CFDictionaryApplyFunction(v14, CFDictionaryApplierTrampoline, context);
        v26.length = CFArrayGetCount(Mutable);
        v26.location = 0;
        CFArraySortValues(Mutable, v26, cmp_symbol, 0);
        v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (CFBooleanGetValue(v11))
        {
          v20 = @"__TEXT_EXEC";
        }

        else
        {
          v20 = @"__TEXT";
        }

        CFDictionarySetValue(v19, v20, Mutable);
        CFRelease(Mutable);
        v22 = *uu;
        v21 = v19;
        std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes,CF::TypeRef>(a1 + 6, &v22, &v22, &v21);
        CF::TypeRef::~TypeRef(&v21);
      }

      else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_symboilcator_learn_tailspin_chunk();
      }
    }

    else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_8();
    }
  }
}

void sub_22EDBC99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void ___Z40ktrace_symboilcator_learn_tailspin_chunkP18KtraceSymbolicatorP12ktrace_chunk_block_invoke(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v14 = 0;
  v5 = utf8(a2);
  v6 = sscanf(v5, "%lld", &v14);
  Value = CFDictionaryGetValue(a3, @"Name");
  v8 = Value;
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 != CFStringGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }

      v8 = 0;
    }
  }

  v10 = CFDictionaryGetValue(a3, @"Length");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFNumberGetTypeID())
    {
      if (v6 == 1 && v8)
      {
        v13 = malloc_type_malloc(0x18uLL, 0x1060040EE9316AEuLL);
        v13[2] = v8;
        CFRetain(v8);
        *v13 = v14;
        valuePtr = 0;
        if (!CFNumberGetValue(v11, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v13[1] = valuePtr;
        CFArrayAppendValue(*(a1 + 32), v13);
      }
    }

    else
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
      }
    }
  }
}

CFDataRef ktrace_copy_cs_signature_data(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (ktrace_chunk_tag(a1, a2) != 32771)
  {
    return 0;
  }

  if (ktrace_chunk_version_major(a1))
  {
    return 0;
  }

  if (ktrace_chunk_copy_data(a1, 0, &v6, 0x18uLL))
  {
    return 0;
  }

  v4 = v8 + v7;
  if (v4 > ktrace_chunk_size(a1, v3))
  {
    return 0;
  }

  else
  {
    return ktrace_chunk_copy_cfdata(a1, v7, v8);
  }
}

uint64_t ktrace_copy_symbolicator_from_chunk(uint64_t *a1, _OWORD *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (ktrace_chunk_tag(a1, a2) != 32771 || ktrace_chunk_version_major(a1))
  {
    return 0;
  }

  if (ktrace_chunk_size(a1, v4) <= 0x18)
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_symbolicate_file_block_invoke_cold_2();
    }

    return 0;
  }

  if (ktrace_chunk_copy_data(a1, 0, &v13, 0x18uLL))
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_copy_symbolicator_from_chunk_cold_1();
    }

    return 0;
  }

  v6 = v15 + v14;
  if (v6 > ktrace_chunk_size(a1, v5))
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_symbolicate_file_block_invoke_cold_2();
    }

    return 0;
  }

  v8 = ktrace_chunk_size(a1, v7);
  v9 = ktrace_chunk_copy_cfdata(a1, 0, v8);
  if (!v9)
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      __ktrace_symbolicate_file_block_invoke_cold_1();
    }

    return 0;
  }

  v10 = v9;
  if (![(__CFData *)v9 subdataWithRange:v14, v15])
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v11 = CSSymbolicatorCreateWithSignature();

  if (CSIsNull() && os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
  {
    ktrace_copy_symbolicator_from_chunk_cold_2();
    if (!a2)
    {
      return v11;
    }

    goto LABEL_17;
  }

  if (a2)
  {
LABEL_17:
    *a2 = v13;
  }

  return v11;
}

uint64_t ktrace_symbolicator_read_file(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __ktrace_symbolicator_read_file_block_invoke;
  v3[3] = &__block_descriptor_40_e149_B16__0__ktrace_chunk___ktrace_file_Q___q____CFData__QISS__ktrace_chunk__ktrace_chunk_array____ktrace_chunk___ktrace_chunk_QQQqq______ktrace_chunk___8l;
  v3[4] = a1;
  return ktrace_file_iterate(a2, 0, v3);
}

uint64_t __ktrace_symbolicator_read_file_block_invoke(uint64_t a1, ktrace_chunk *a2)
{
  ktrace_symboilcator_learn_tailspin_chunk(*(a1 + 32), a2);
  ktrace_symboilcator_learn_ariadne_chunk(*(a1 + 32), a2);
  v4 = ktrace_copy_symbolicator_from_chunk(a2, &v10);
  v6 = v5;
  if ((CSIsNull() & 1) == 0)
  {
    v7 = *(a1 + 32);
    *&v9 = v4;
    *(&v9 + 1) = v6;
    std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes&,CS::TypeRef>((v7 + 8), &v10, &v10, &v9);
    CS::TypeRef::~TypeRef(&v9);
  }

  return 1;
}

UInt8 *ktrace_uuid_offset_get_description_internal(uint64_t a1, unsigned __int8 *uu, char *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(uu + 12))
  {
    uuid_unparse(uu, out);
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = *(uu + 9);
    if (v6)
    {
      v7 = utf8(v6);
      v8 = basename_r(v7, v23);
      v9 = v19;
      v19[3] = v8;
      if (!a1 || v8)
      {
LABEL_10:
        if (v9[3])
        {
          if (a3)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v9[3] = out;
          if (a3)
          {
            goto LABEL_12;
          }
        }

        a3 = __str;
        snprintf(__str, 0x14uLL, "0x%llx", *(uu + 5));
LABEL_12:
        v11 = *(uu + 12);
        if (v11 <= 2)
        {
          if (v11 != 1)
          {
            if (v11 != 2)
            {
              goto LABEL_30;
            }

            v12 = (uu + 16);
            if (strcmp(v12, "__TEXT"))
            {
              v13 = strcmp(v12, "__TEXT_EXEC");
              v14 = v19;
              if (v13)
              {
LABEL_28:
                v10 = v15;
                _Block_object_dispose(&v18, 8);
                return v10;
              }

LABEL_23:
              goto LABEL_28;
            }
          }
        }

        else
        {
          if (v11 == 3)
          {
            goto LABEL_28;
          }

          if (v11 == 4)
          {
            goto LABEL_28;
          }

          if (v11 != 5)
          {
LABEL_30:
            _os_crash();
            ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
          }
        }

        v14 = v19;
        goto LABEL_23;
      }
    }

    else if (!a1)
    {
      v9 = &v18;
      goto LABEL_10;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___Z43ktrace_uuid_offset_get_description_internalP15ktrace_uuid_map18ktrace_uuid_offsetPKc_block_invoke;
    v17[3] = &unk_27886EE68;
    v17[4] = &v18;
    v17[5] = v23;
    ktrace_uuid_map_iterate_associated_paths(a1, uu, v17);
    v9 = v19;
    goto LABEL_10;
  }

  return 0;
}

void sub_22EDBD154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ktrace_uuid_map_iterate_associated_paths(uint64_t a1, __int128 *a2, void (**a3)(void, void))
{
  if (a1)
  {
    v11 = *a2;
    v4 = *(a1 + 216);
    v12 = &v11;
    v5 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(v4, &v11, &std::piecewise_construct, &v12);
    v6 = v5[4];
    if (v6)
    {
      v7 = CFGetTypeID(v6);
      TypeID = CFSetGetTypeID();
      v9 = v5[4];
      if (v7 == TypeID)
      {
        CFSetApplyFunction(v9, CFSetApplierTrampoline, a3);
      }

      else
      {
        v10 = CFGetTypeID(v9);
        if (v10 != CFStringGetTypeID())
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        a3[2](a3, v5[4]);
      }
    }
  }
}

char *___Z43ktrace_uuid_offset_get_description_internalP15ktrace_uuid_map18ktrace_uuid_offsetPKc_block_invoke(char *result, const __CFString *a2)
{
  if (!*(*(*(result + 4) + 8) + 24))
  {
    v2 = result;
    v3 = utf8(a2);
    result = basename_r(v3, *(v2 + 5));
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

UInt8 *ktrace_uuid_offset_get_description(uint64_t a1, _OWORD *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v5[2] = a2[2];
  v5[3] = v2;
  v5[4] = a2[4];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return ktrace_uuid_offset_get_description_internal(a1, v5, 0);
}

UInt8 *ktrace_symbolicator_get_description(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v35 = 0;
  v34[0] = 0;
  v34[1] = 0;
  v33[0] = 0;
  v33[1] = 0;
  v32[0] = 0;
  v32[1] = 0;
  v6 = *(a3 + 48);
  v38 = *(a3 + 32);
  v39 = v6;
  v40 = *(a3 + 64);
  v7 = *(a3 + 16);
  value = *a3;
  v37 = v7;
  ktrace_symbolicator_symbolicate(a2, &value, &v35, v32, v33, v34);
  if (CSIsNull())
  {
    if (v35)
    {
      return 0;
    }

    value = *a3;
    v10 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>((a2 + 48), &value);
    if (!v10)
    {
      goto LABEL_38;
    }

    v11 = v10[4];
    v12 = *(a3 + 48);
    switch(v12)
    {
      case 1:
        v14 = @"__TEXT";
        break;
      case 5:
        v14 = @"__TEXT*";
        break;
      case 2:
        v13 = CFStringCreateWithCString(0, (a3 + 16), 0x8000100u);
        if (!v13)
        {
          v13 = CFStringCreateWithCString(0, (a3 + 16), 0x100u);
        }

        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = @"!!!invalid-enc!!!";
        }

        CFAutorelease(v14);
        break;
      default:
        goto LABEL_23;
    }

    v15 = CFDictionaryGetValue(v11, v14);
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFArrayGetTypeID())
      {
        goto LABEL_25;
      }

      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
      }
    }

LABEL_23:
    v18 = CFDictionaryGetValue(v11, @"__TEXT*");
    if (!v18)
    {
      goto LABEL_38;
    }

    v16 = v18;
    v19 = CFGetTypeID(v18);
    if (v19 != CFArrayGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
      }

      goto LABEL_38;
    }

LABEL_25:
    v20 = *(a3 + 40);
    *&v37 = 0;
    value = v20;
    Count = CFArrayGetCount(v16);
    v42.location = 0;
    v42.length = Count;
    v22 = CFArrayBSearchValues(v16, v42, &value, cmp_symbol, 0);
    if (v22 >= Count)
    {
      v23 = Count - 1;
    }

    else
    {
      v23 = v22;
    }

    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, v23);
        v26 = *(a3 + 40);
        if (v26 >= *ValueAtIndex && v26 < *(ValueAtIndex + 1) + *ValueAtIndex)
        {
          break;
        }

        v27 = 0;
        if (v23-- >= 1 && v24++ < 2)
        {
          continue;
        }

        goto LABEL_39;
      }

      v27 = utf8(*(ValueAtIndex + 2));
      goto LABEL_39;
    }

LABEL_38:
    v27 = 0;
LABEL_39:
    v30 = *(a3 + 48);
    v38 = *(a3 + 32);
    v39 = v30;
    v40 = *(a3 + 64);
    v31 = *(a3 + 16);
    value = *a3;
    v37 = v31;
    return ktrace_uuid_offset_get_description_internal(a1, &value, v27);
  }

  v9 = CSIsNull();
  CSSymbolOwnerGetName();
  CSSymbolGetName();
  if (v9)
  {
  }

  CSSourceInfoGetFilename();
  CSSourceInfoGetLineNumber();
}

__CFString *cfstring(const char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v2)
  {
    v2 = CFStringCreateWithCString(0, cStr, 0x100u);
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"!!!invalid-enc!!!";
  }

  CFAutorelease(v3);
  return v3;
}

uint64_t ktrace_uuid_map_create_cssymbolicator_for_task(ktrace_uuid_map *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

uint64_t ktrace_address_space_create_cssymbolicator(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((v2[1] - *v2) >> 5);
  v50 = v3;
  if (HIDWORD(v3))
  {
    _os_assert_log();
    _os_crash();
    ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
  }

  v6 = *(a1 + 80);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke;
  v46[3] = &unk_27886F1F8;
  v46[4] = &v47;
  ktrace_address_space_deep_iterate_symbol_owners(v6, a2, v46);
  if (!*(a1 + 40))
  {
    *(a1 + 40) = *(v48 + 6);
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3812000000;
  v41[3] = __Block_byref_object_copy__251;
  v41[4] = __Block_byref_object_dispose__252;
  v41[5] = "";
  v41[6] = 0;
  v7 = *(a1 + 80);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_254;
  v40[3] = &unk_27886F220;
  v40[5] = v41;
  v40[6] = a1;
  v40[4] = &v42;
  ktrace_address_space_deep_iterate_symbol_owners(v7, a2, v40);
  v8 = malloc_type_calloc(0x40uLL, *(v48 + 6), 0x107004011CD6FB7uLL);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = v8;
  v9 = malloc_type_calloc(0x28uLL, v43[3], 0x100004074F221ECuLL);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = v9;
  v10 = *(a1 + 80);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_2;
  v31[3] = &unk_27886F248;
  v31[4] = &v36;
  v31[5] = &v32;
  v31[6] = v41;
  v31[7] = a1;
  v31[8] = a2;
  ktrace_address_space_deep_iterate_symbol_owners(v10, a2, v31);
  v11 = (v37[3] - v8) >> 6;
  if (HIDWORD(v11))
  {
    _os_assert_log();
    _os_crash();
    ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v33[3] - v9) >> 3) > v43[3])
  {
    _os_assert_log();
    _os_crash();
    ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_7();
  }

  if (v11)
  {
    v12 = *(a1 + 80);
    if (v12 && ((*(v12 + 288) & 1) != 0 || (*(v12 + 289) & 1) != 0) || (v13 = *(a1 + 8)) != 0 && *(v13 + 45) == 1)
    {
      v14 = 0;
      v15 = 0;
      LODWORD(v16) = 0;
      v17 = 0;
      v18 = -1;
      while (1)
      {
        v19 = &v8[64 * v14];
        if ((v19[60] & 0x10) != 0)
        {
          break;
        }

        v20 = *(v19 + 14);
        if (v20)
        {
          v21 = *(v19 + 6);
          do
          {
            v23 = *v21;
            v21 += 5;
            v22 = v23;
            if (v23 < v18)
            {
              v17 = v14;
              v18 = v22;
            }

            if (v22 > v15)
            {
              LODWORD(v16) = v14;
              v15 = v22;
            }

            --v20;
          }

          while (v20);
        }

        if (++v14 == v11)
        {
          if (HIDWORD(v15))
          {
            v24 = *(a2 + 32) == 0;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v16 = v16;
          }

          else
          {
            v16 = v17;
          }

          v25 = &v8[64 * v16];
          v28 = *(v25 + 15);
          v26 = (v25 + 60);
          v27 = v28;
          if ((v28 & 0x40) == 0)
          {
            *v26 = v27 | 0x10;
          }

          break;
        }
      }
    }
  }

  else if (*a1)
  {
    fwrite("Couldn't find any binary image infos.  Symbolicator will be NULL\n", 0x41uLL, 1uLL, *a1);
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ktrace_address_space_create_cssymbolicator();
    }
  }

  v29 = CSSymbolicatorCreateWithBinaryImageListCountPidFlagsAndNotification();
  free(v9);
  free(v8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v47, 8);
  return v29;
}

void sub_22EDBDBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Block_object_dispose((v32 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t ktrace_uuid_map_create_cssymbolicator_for_pid(ktrace_uuid_map *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a1)
  {
    operator new();
  }

  return 0;
}

void *ktrace_create_dsym_search_configuration(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1060040B0DE3062uLL);
  if (!v2)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = v2;
  if (a1)
  {
    if (*a1)
    {
      *v2 = CFArrayCreateMutableCopy(0, 0, *a1);
    }

    *(v3 + 24) = *(a1 + 8);
  }

  return v3;
}

void ktrace_dsym_search_configuration_add_dstroot_path(__CFArray **a1, char *cStr)
{
  Mutable = *a1;
  if (!*a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *a1 = Mutable;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    v5 = CFStringCreateWithCString(0, cStr, 0x100u);
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"!!!invalid-enc!!!";
  }

  CFAutorelease(v6);

  CFArrayAppendValue(Mutable, v6);
}

void ktrace_dsym_search_configuration_add_recursive_search_path(uint64_t a1, char *cStr)
{
  Mutable = *(a1 + 8);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(a1 + 8) = Mutable;
  }

  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (!v5)
  {
    v5 = CFStringCreateWithCString(0, cStr, 0x100u);
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"!!!invalid-enc!!!";
  }

  CFAutorelease(v6);

  CFArrayAppendValue(Mutable, v6);
}

CFTypeRef ktrace_dsym_search_configuration_set_dsymForUUID(uint64_t a1, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(a1 + 16) = cf;
  return result;
}

void *ktrace_dsym_search_configuration_create_with_plist(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFDictionaryGetTypeID())
  {
    dsym_search_configuration = ktrace_create_dsym_search_configuration(0);
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 3221225472;
    context[2] = __ktrace_dsym_search_configuration_create_with_plist_block_invoke;
    context[3] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
    context[4] = dsym_search_configuration;
    CFDictionaryApplyFunction(a1, CFDictionaryApplierTrampoline, context);
  }

  else
  {
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
    {
      ktrace_dsym_search_configuration_create_with_plist_cold_1();
    }

    return 0;
  }

  return dsym_search_configuration;
}

void __ktrace_dsym_search_configuration_create_with_plist_block_invoke(uint64_t a1, const __CFString *a2, const __CFString *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID() && CFStringCompare(a2, @"dstroots", 0) == kCFCompareEqualTo)
  {
    v16 = **(a1 + 32);
    if (!v16)
    {
      **(a1 + 32) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v16 = **(a1 + 32);
    }
  }

  else
  {
    v7 = CFGetTypeID(cf);
    if (v7 != CFArrayGetTypeID() || CFStringCompare(a2, @"recursive_search_dirs", 0))
    {
      v8 = CFGetTypeID(cf);
      if (v8 == CFStringGetTypeID() && CFStringCompare(a2, @"dsymForUUID", 0) == kCFCompareEqualTo)
      {
        CFRetain(cf);
        *(*(a1 + 32) + 16) = cf;
      }

      else
      {
        v9 = CFGetTypeID(cf);
        if (v9 == CFBooleanGetTypeID() && CFStringCompare(a2, @"debugsymbols_defaults", 0) == kCFCompareEqualTo)
        {
          *(*(a1 + 32) + 24) = CFBooleanGetValue(cf) != 0;
        }

        else
        {
          v10 = CFGetTypeID(cf);
          if (v10 == CFBooleanGetTypeID() && CFStringCompare(a2, @"assumeSystemArch", 0) == kCFCompareEqualTo)
          {
            *(*(a1 + 32) + 25) = CFBooleanGetValue(cf) != 0;
          }

          else
          {
            v11 = CFGetTypeID(cf);
            if (v11 == CFBooleanGetTypeID() && CFStringCompare(a2, @"allowArchUnknown", 0) == kCFCompareEqualTo)
            {
              *(*(a1 + 32) + 26) = CFBooleanGetValue(cf) != 0;
            }

            else
            {
              v12 = CFGetTypeID(cf);
              if (v12 == CFBooleanGetTypeID() && CFStringCompare(a2, @"allowImageTypeUnknown", 0) == kCFCompareEqualTo)
              {
                *(*(a1 + 32) + 27) = CFBooleanGetValue(cf) != 0;
              }

              else
              {
                v13 = CFGetTypeID(cf);
                if (v13 == CFBooleanGetTypeID() && CFStringCompare(a2, @"inferAoutFlagFromAddresses", 0) == kCFCompareEqualTo)
                {
                  *(*(a1 + 32) + 45) = CFBooleanGetValue(cf) != 0;
                }

                else
                {
                  v14 = CFGetTypeID(cf);
                  if (v14 == CFBooleanGetTypeID() && CFStringCompare(a2, @"inferDyldFlagFromFilename", 0) == kCFCompareEqualTo)
                  {
                    *(*(a1 + 32) + 46) = CFBooleanGetValue(cf) != 0;
                  }

                  else
                  {
                    v15 = CFGetTypeID(cf);
                    if (v15 == CFStringGetTypeID() && CFStringCompare(a2, @"kernelTextSegmentName", 0) == kCFCompareEqualTo)
                    {
                      v18 = *(a1 + 32);
                      v19 = utf8(cf);

                      strlcpy((v18 + 28), v19, 0x11uLL);
                    }

                    else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
                    {
                      __ktrace_dsym_search_configuration_create_with_plist_block_invoke_cold_1(a2);
                    }
                  }
                }
              }
            }
          }
        }
      }

      return;
    }

    v16 = *(*(a1 + 32) + 8);
    if (!v16)
    {
      *(*(a1 + 32) + 8) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v16 = *(*(a1 + 32) + 8);
    }
  }

  v17.length = CFArrayGetCount(cf);
  v17.location = 0;

  CFArrayAppendArray(v16, cf, v17);
}

__CFDictionary *ktrace_dsym_search_configuration_copy_plist(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v3 = Mutable;
  if (*a1)
  {
    CFDictionarySetValue(Mutable, @"dstroots", *a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFDictionarySetValue(v3, @"recursive_search_dirs", v4);
  }

  else
  {
    v5 = CFArrayCreateMutable(0, 0, 0);
    CFDictionarySetValue(v3, @"recursive_search_dirs", v5);
    CFRelease(v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFDictionarySetValue(v3, @"dsymForUUID", v6);
  }

  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CBED10];
  if (*(a1 + 24))
  {
    v9 = *MEMORY[0x277CBED28];
  }

  else
  {
    v9 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v3, @"debugsymbols_defaults", v9);
  if (*(a1 + 25))
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  CFDictionarySetValue(v3, @"assumeSystemArch", v10);
  if (*(a1 + 26))
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CFDictionarySetValue(v3, @"allowArchUnknown", v11);
  if (*(a1 + 27))
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  CFDictionarySetValue(v3, @"allowImageTypeUnknown", v12);
  if (*(a1 + 45))
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  CFDictionarySetValue(v3, @"inferAoutFlagFromAddresses", v13);
  if (*(a1 + 46))
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  CFDictionarySetValue(v3, @"inferDyldFlagFromFilename", v14);
  v16 = *(a1 + 28);
  v15 = (a1 + 28);
  if (v16)
  {
    v17 = CFStringCreateWithCString(0, v15, 0x8000100u);
    if (!v17)
    {
      v17 = CFStringCreateWithCString(0, v15, 0x100u);
    }

    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = @"!!!invalid-enc!!!";
    }

    CFAutorelease(v18);
    CFDictionarySetValue(v3, @"kernelTextSegmentName", v18);
  }

  return v3;
}

void ktrace_free_dsym_search_configuration(const void **a1)
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

void __ktrace_uuid_map_event_prepass_block_invoke(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4[0] = a2;
  v4[1] = _Block_copy(aBlock);
  std::vector<PrepassOp>::push_back[abi:ne200100](v3, v4);
  PrepassOp::~PrepassOp(v4);
}

void *std::vector<PrepassOp>::push_back[abi:ne200100](void *a1, void *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PrepassOp>::__emplace_back_slow_path<PrepassOp>(a1, a2);
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = a2[1];
    *v3 = *a2;
    v3[1] = v4;
    a2[1] = 0;
    result = v3 + 2;
  }

  a1[1] = result;
  return result;
}

uint64_t __ktrace_uuid_map_chunk_prepass_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __ktrace_uuid_map_chunk_prepass_block_invoke_2;
  v3[3] = &__block_descriptor_40_e37_v24__0_kcdata_iter___kcdata_item__v_8l;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return ktrace_stackshot_chunk_unwrap(v1, v3);
}

void ktrace_prepass_uuid_map_init(uint64_t a1)
{
  if (!*(a1 + 632))
  {
    operator new();
  }

  ktrace_postprocess_file_internal_cold_4();
}

CFStringRef ktrace_symbols_buffer_to_text(const __CFData *a1, int a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v27 = xmmword_22EE3F3C0;
  v28 = 0;
  v29 = 1;
  if (Length >= 0x7FFFFFFF)
  {
    ktrace_symbols_buffer_to_text_cold_1();
  }

  v4 = 0;
  if (flatbuffers::Verifier::VerifyBufferFromStart<FlatbufferSymbols::SymbolsBuffer>(&BytePtr, "SYMB", 0))
  {
    if (a2)
    {
      std::string::basic_string[abi:ne200100]<0>(&v16, "\n");
      std::string::basic_string[abi:ne200100]<0>(__p, " ");
      flatbuffers::ToStringVisitor::ToStringVisitor(&v18, &v16, 1, __p, 1);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      v5 = &v16;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v12, " ");
      std::string::basic_string[abi:ne200100]<0>(v10, "");
      flatbuffers::ToStringVisitor::ToStringVisitor(&v18, &v12, 1, v10, 1);
      if (v11 < 0)
      {
        operator delete(v10[0]);
      }

      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      v5 = &v12;
    }

    operator delete(*v5);
LABEL_13:
    v6 = CFDataGetBytePtr(a1);
    flatbuffers::IterateObject(&v6[*v6], &FlatbufferSymbols::SymbolsBufferTypeTable(void)::tt, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v7 = v19;
    }

    else
    {
      v7 = v19[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v8 = v20;
    }

    else
    {
      v8 = v19[1];
    }

    v4 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
    v18 = &unk_2843A01F0;
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  return v4;
}

void sub_22EDBE9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t ktrace_dumpbuffer_address_space(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      memset(__p, 0, sizeof(__p));
      if ((a3 & 2) != 0)
      {
        for (i = *(*(v4 + 32) + 16); i; i = *i)
        {
          v7 = i[3];
          std::vector<ktrace_address_space *>::push_back[abi:ne200100](__p, &v7);
        }

LABEL_9:
        ktrace_dumpbuffer(a1, v4, __p);
      }

      v7 = address_space_for_taskid(v4, a2);
      if (v7)
      {
        std::vector<ktrace_address_space *>::push_back[abi:ne200100](__p, &v7);
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void sub_22EDBEBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ktrace_address_space *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<flatbuffers::Offset<KernelTraceCatalog::Thread>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ktrace_address_space *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_22EDBF140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(&a33);
  _Block_object_dispose(&a38, 8);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&a44);
  symbolication_context::~symbolication_context((v44 - 216));
  _Unwind_Resume(a1);
}

CFDataRef ktrace_dumpbuffer_address_space_pid(uint64_t a1, int a2, char a3)
{
  if (a1)
  {
    v4 = *(a1 + 304);
    if (v4)
    {
      memset(__p, 0, sizeof(__p));
      if ((a3 & 2) != 0)
      {
        for (i = *(*(v4 + 32) + 16); i; i = *i)
        {
          v7 = i[3];
          std::vector<ktrace_address_space *>::push_back[abi:ne200100](__p, &v7);
        }

LABEL_9:
        ktrace_dumpbuffer(a1, v4, __p);
      }

      v7 = address_space_for_pid(v4, a2);
      if (v7)
      {
        std::vector<ktrace_address_space *>::push_back[abi:ne200100](__p, &v7);
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void sub_22EDBF2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZL21ktrace_register_typesv_block_invoke()
{
  ktrace_uuid_map_typeid = _CFRuntimeRegisterClass();
  result = _CFRuntimeRegisterClass();
  ktrace_address_space_typeid = result;
  return result;
}

void ktrace_uuid_map_dealloc(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::~__hash_table(v2);
      MEMORY[0x2318F6E50](v3, 0x10A0C408EF24B1CLL);
    }

    v4 = a1[4];
    if (v4)
    {
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::~__hash_table(v4);
      MEMORY[0x2318F6E50](v5, 0x10A0C408EF24B1CLL);
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(v6);
      MEMORY[0x2318F6E50](v7, 0x10A0C408EF24B1CLL);
    }

    std::__optional_destruct_base<DyldDecodeWindow,false>::reset[abi:ne200100]((a1 + 6));
    v8 = a1[31];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a1[27];
    if (v9)
    {
      v10 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(v9);
      MEMORY[0x2318F6E50](v10, 0x10A0C408EF24B1CLL);
    }

    v11 = a1[28];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = a1[30];
    if (v12)
    {
      v13 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(v12);
      MEMORY[0x2318F6E50](v13, 0x10A0C408EF24B1CLL);
    }

    v14 = a1[29];
    if (v14)
    {

      CFRelease(v14);
    }
  }
}

uint64_t std::__optional_destruct_base<DyldDecodeWindow,false>::reset[abi:ne200100](uint64_t result)
{
  if (*(result + 160) == 1)
  {
    v1 = result;
    std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(result + 112);
    result = std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(v1);
    *(v1 + 160) = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::__deallocate_node(uint64_t a1, const void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CF::TypeRef::~TypeRef(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

BOOL ___ZL15figure_out_archP15_CSArchitectureP14ktrace_machineP11ktrace_file_block_invoke(uint64_t a1, void *a2)
{
  v4 = ktrace_chunk_tag(a2, a2);
  if (v4 == 20990)
  {
    goto LABEL_7;
  }

  if (v4 == 32770)
  {
    if (ktrace_chunk_version_major(a2) <= 1)
    {
LABEL_7:
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = ___ZL15figure_out_archP15_CSArchitectureP14ktrace_machineP11ktrace_file_block_invoke_2;
      v6[3] = &unk_27886EEF0;
      v7 = *(a1 + 32);
      ktrace_stackshot_chunk_unwrap(a2, v6);
    }
  }

  else if (v4 == 36864 && !ktrace_chunk_version_major(a2))
  {
    goto LABEL_7;
  }

  return (*(*(*(a1 + 32) + 8) + 24) & 1) == 0;
}

char *___ZL15figure_out_archP15_CSArchitectureP14ktrace_machineP11ktrace_file_block_invoke_2(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a2 + 16;
  if (a2 + 16 <= a3)
  {
    v4 = a2;
    v5 = result;
    while (1)
    {
      v6 = *(v4 + 4);
      v7 = v3 + v6;
      if (v3 + v6 > a3)
      {
        return result;
      }

      if (*v4 == 2319)
      {
        break;
      }

      v3 = v7 + 16;
      v4 = v7;
      if (v7 + 16 > a3)
      {
        return result;
      }
    }

    v8 = *(v4 + 8) & 0xF;
    v9 = v6 >= v8;
    v10 = v6 - v8;
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (strnstr((v4 + 16), "X86_64", v11))
    {
      goto LABEL_47;
    }

    v12 = *v4;
    if ((*v4 & 0xFFFFFFF0) == 0x20)
    {
      v12 = 17;
    }

    if (v12 > 2309)
    {
      if (v12 == 2310)
      {
        v14 = *(v4 + 4);
        v15 = *(v4 + 8);
        if (v14 == 112)
        {
          if ((v15 & 0x8F) == 0)
          {
            v13 = 104;
            goto LABEL_28;
          }

          v14 = 112;
        }

LABEL_26:
        v16 = v15 & 0xF;
        v9 = v14 >= v16;
        v13 = v14 - v16;
        if (!v9)
        {
          v13 = 0;
        }

LABEL_28:
        if (!strnstr((v4 + 16), "ARM64", v13))
        {
          v17 = *v4;
          if ((*v4 & 0xFFFFFFF0) == 0x20)
          {
            v17 = 17;
          }

          if (v17 > 2309)
          {
            if (v17 == 2310)
            {
              v19 = *(v4 + 4);
              v20 = *(v4 + 8);
              if (v19 == 112)
              {
                if ((v20 & 0x8F) == 0)
                {
                  v18 = 104;
                  goto LABEL_46;
                }

                v19 = 112;
              }

LABEL_44:
              v21 = v20 & 0xF;
              v9 = v19 >= v21;
              v18 = v19 - v21;
              if (!v9)
              {
                v18 = 0;
              }

LABEL_46:
              result = strnstr((v4 + 16), "ARM", v18);
              if (!result)
              {
                return result;
              }

              goto LABEL_47;
            }

            if (v17 == 2312)
            {
              v19 = *(v4 + 4);
              v20 = *(v4 + 8);
              if (v19 == 32)
              {
                if ((v20 & 0x8F) == 0)
                {
                  v18 = 24;
                  goto LABEL_46;
                }

                v19 = 32;
              }

              goto LABEL_44;
            }
          }

          else if (v17 == 17 || v17 == 19)
          {
            v18 = *(v4 + 4);
            goto LABEL_46;
          }

          v19 = *(v4 + 4);
          v20 = *(v4 + 8);
          goto LABEL_44;
        }

LABEL_47:
        result = CSArchitectureGetArchitectureForName();
        **(v5 + 5) = result;
        *(*(*(v5 + 4) + 8) + 24) = 1;
        return result;
      }

      if (v12 == 2312)
      {
        v14 = *(v4 + 4);
        v15 = *(v4 + 8);
        if (v14 == 32)
        {
          if ((v15 & 0x8F) == 0)
          {
            v13 = 24;
            goto LABEL_28;
          }

          v14 = 32;
        }

        goto LABEL_26;
      }
    }

    else if (v12 == 17 || v12 == 19)
    {
      v13 = *(v4 + 4);
      goto LABEL_28;
    }

    v14 = *(v4 + 4);
    v15 = *(v4 + 8);
    goto LABEL_26;
  }

  return result;
}

void ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke(uint64_t a1, const __CFString *a2, const __CFDictionary *a3)
{
  v11 = 0;
  v5 = utf8(a2);
  if (sscanf(v5, "%x:%x", &v11 + 4, &v11) == 2)
  {
    v6 = cfaasprintf("%llx", HIDWORD(v11) | (v11 << 32));
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v8 = Mutable;
    CFDictionarySetValue(*(a1 + 32), v6, Mutable);
    CFRelease(v8);
    context[0] = MEMORY[0x277D85DD0];
    context[1] = 3221225472;
    context[2] = ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke_157;
    context[3] = &__block_descriptor_48_e41_v24__0____CFString__8____CFDictionary__16l;
    v9 = *(a1 + 40);
    context[4] = v8;
    context[5] = v9;
    CFDictionaryApplyFunction(a3, CFDictionaryApplierTrampoline, context);
  }

  else if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
  {
    ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke_cold_1();
  }
}

void ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke_157(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v7 = Mutable;
  CFDictionarySetValue(*(a1 + 32), a2, Mutable);
  CFRelease(v7);
  Value = CFDictionaryGetValue(a3, @"path");
  v9 = Value;
  if (Value)
  {
    v10 = CFGetTypeID(Value);
    if (v10 != CFStringGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
      }

      v9 = 0;
    }
  }

  v11 = CFDictionaryGetValue(a3, @"uuids");
  v12 = v11;
  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 != CFDictionaryGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
      }

      v12 = 0;
    }
  }

  if (v9)
  {
    CFDictionarySetValue(v7, @"Path", v9);
    if (v12)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke_2;
      v14[3] = &__block_descriptor_48_e37_v24__0____CFString__8____CFString__16l;
      v14[4] = *(a1 + 40);
      v14[5] = v9;
      CFDictionaryApplyFunction(v12, CFDictionaryApplierTrampoline, v14);
    }
  }
}

void ___ZL42ktrace_uuid_map_learn_inodes_with_chunk_v0P15ktrace_uuid_mapPK14__CFDictionary_block_invoke_2(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  *&v5.byte0 = 0;
  *&v5.byte8 = 0;
  v4 = utf8(a3);
  if (!uuid_parse(v4, &v5.byte0))
  {
    ktrace_uuid_map_associate_path_with_uuid(*(a1 + 32), v5, *(a1 + 40));
  }
}

uint64_t ___ZL25ktrace_address_space_dumpP15ktrace_uuid_mapP20ktrace_address_spaceP7__sFILE_block_invoke(uint64_t a1, uint64_t a2, optional_uint64 *a3)
{
  v6 = uuid_string(*a2, *(a2 + 8));
  v7 = *(a2 + 48);
  if (*a3)
  {
    v7 += optional_uint64::value(a3);
  }

  if (*(a2 + 56))
  {
    v8 = optional_uint64::value((a2 + 56)) + v7;
  }

  else
  {
    v8 = -1;
  }

  v9 = *(a2 + 80);
  if (v9)
  {
    v10 = utf8(v9);
  }

  else
  {
    v10 = "<unknown>";
  }

  v11 = *(a2 + 16);
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v12 = *(a1 + 32);
      v19 = v8;
      v20 = v10;
      v17 = v6;
      v18 = v7;
      v13 = "\t <%s> %16llx-%16llx %s\n";
      goto LABEL_21;
    }

    if (v11 == 2)
    {
      v12 = *(a1 + 32);
      v20 = a2 + 24;
      v21 = v10;
      v18 = v7;
      v19 = v8;
      v17 = v6;
      v13 = "\t <%s> %16llx-%16llx %s %s\n";
      goto LABEL_21;
    }

LABEL_26:
    abort();
  }

  if (v11 == 3)
  {
    v22 = 0;
    get_sc_and_slide(*(a1 + 40), a2, &v22, &v23);
    v14 = *(a1 + 32);
    if (v22)
    {
      v19 = v8;
      v20 = optional_uint64::value(&v22);
      v17 = v6;
      v18 = v7;
      v13 = "\t <%s> %16llx-%16llx SHARED_CACHE slide=%llx\n";
    }

    else
    {
      v18 = v7;
      v19 = v8;
      v17 = v6;
      v13 = "\t <%s> %16llx-%16llx SHARED_CACHE slide=?\n";
    }

    v16 = v14;
    return fprintf(v16, v13, v17, v18, v19, v20, v21);
  }

  if (v11 == 4)
  {
    return fprintf(*(a1 + 32), "\t <%s> %16llx-%16llx KERNEL_CACHE\n");
  }

  if (v11 != 5)
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 32);
  v19 = v8;
  v20 = v10;
  v17 = v6;
  v18 = v7;
  v13 = "\t <%s> %16llx-%16llx __TEXT* %s\n";
LABEL_21:
  v16 = v12;
  return fprintf(v16, v13, v17, v18, v19, v20, v21);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long long,CF::TypeRef>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CF::TypeRef>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CF::TypeRef>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t SymbolOwner::operator=(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  *(a1 + 80) = a2[5];
  v8 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v8;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 32) = v5;
  v9 = *(a1 + 80);
  if (v9)
  {
    CFRetain(v9);
  }

  return a1;
}

void merge_info_while_locked(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a4)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      dispatch_assert_queue_V2(v8);
    }

    v9 = cfaasprintf("%llx", a2);
    v10 = cfaasprintf("%llx", a3);
    Value = CFDictionaryGetValue(*(a1 + 32), v9);
    if (Value)
    {
      v12 = Value;
      if (CFDictionaryContainsKey(Value, v10))
      {
        return;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!Mutable)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v12 = Mutable;
      CFDictionarySetValue(*(a1 + 32), v9, Mutable);
      CFRelease(v12);
    }

    CFDictionarySetValue(v12, v10, a4);
  }
}

uint64_t ___ZL10visit_uuidP16operating_system11CFUUIDBytes_block_invoke_2(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    if (*v2)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (!stat(a2, &v9))
    {
      v4 = v2[6];
      v3 = v2[7];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      v8 = v9;
      block[2] = ___ZL10visit_pathP16operating_systemPKc_block_invoke;
      block[3] = &__block_descriptor_184_e5_v8__0l;
      block[4] = v2;
      if (v3 && v4)
      {
        dispatch_group_async(v3, v4, block);
      }

      else
      {
        st_dev = v8.st_dev;
        visit_inode_while_locked(v2, st_dev, v8.st_ino);
      }
    }
  }

  return 1;
}

uint64_t ___ZL22get_summary_from_machoPKc_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSSymbolicatorGetArchitecture();
  FamilyName = CSArchitectureGetFamilyName();
  v4 = CFStringCreateWithCString(0, FamilyName, 0x8000100u);
  if (!v4)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  CFAutorelease(v4);
  if (CSSymbolicatorGetSymbolOwnerCountAtTime() != 1)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  return CSSymbolicatorForeachSymbolOwnerAtTime();
}

void ___ZL22get_summary_from_machoPKc_block_invoke_2(uint64_t a1, uint64_t a2)
{
  image_summary = make_image_summary(a2);
  if (image_summary)
  {
    CFDictionaryAddValue(*(*(*(a1 + 32) + 8) + 24), *(a1 + 48), image_summary);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void ___ZL18make_image_summary10_CSTypeRefb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  CSRegionGetSegmentName(a2, a3, cStr);
  if (*cStr != 0x455A454741505F5FLL || *&cStr[3] != 0x4F52455A454741)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v6 = Mutable;
    v7 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (!v7)
    {
      v7 = CFStringCreateWithCString(0, cStr, 0x100u);
    }

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"!!!invalid-enc!!!";
    }

    CFAutorelease(v8);
    CFDictionarySetValue(v6, @"Name", v8);
    valuePtr = CSRegionGetRange();
    v9 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v9)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v10 = v9;
    CFAutorelease(v9);
    CFDictionarySetValue(v6, @"Address", v10);
    CSRegionGetRange();
    valuePtr = v11;
    v12 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v12)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v13 = v12;
    CFAutorelease(v12);
    CFDictionarySetValue(v6, @"Size", v13);
    CFArrayAppendValue(*(a1 + 32), v6);
    CFRelease(v6);
  }
}

void CSRegionGetSegmentName(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  Name = CSRegionGetName();
  if (Name)
  {
    v5 = Name;
    if (*Name)
    {
      v6 = strlen(Name) - 8;
      if (v6 <= 0x10 && !strcmp(" SEGMENT", &v5[v6]))
      {
        memcpy(a3, v5, v6);
        a3 += v6;
      }

      else
      {
        CSRegionGetSymbolOwner();
        if ((CSIsNull() & 1) == 0 && !CSSymbolOwnerGetPath())
        {
          CSSymbolOwnerGetName();
        }

        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
        {
          CSRegionGetSegmentName();
        }
      }
    }
  }

  *a3 = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void postprocess_data::~postprocess_data(postprocess_data *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(this + 264);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(this + 224);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(this + 176);
  std::__hash_table<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,KernelTraceCatalog::Process const*>>>::~__hash_table(this + 64);
}

void ___ZL13visit_processP16operating_systemj_block_invoke(void *a1)
{
  v14 = 0;
  v2 = (a1 + 7);
  if (task_read_for_pid())
  {
    v3 = *__error();
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ___ZL13visit_processP16operating_systemj_block_invoke_cold_1();
    }

    *__error() = v3;
  }

  else
  {
    v13 = 0;
    dyld_process_create_for_task();
    dyld_process_snapshot_create_for_process();
    dyld_process_dispose();
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v5 = Mutable;
    v6 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v6)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v7 = v6;
    block[6] = MEMORY[0x277D85DD0];
    block[7] = 3221225472;
    block[8] = ___ZL13visit_processP16operating_systemj_block_invoke_194;
    block[9] = &__block_descriptor_40_e23_v16__0__dyld_image_s__8l;
    block[10] = v6;
    dyld_process_snapshot_for_each_image();
    CFDictionarySetValue(v5, @"Binaries", v7);
    valuePtr = *v2;
    v8 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v8)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v9 = v8;
    CFAutorelease(v8);
    CFDictionarySetValue(v5, @"PID", v9);
    CFRelease(v7);
    dyld_process_snapshot_dispose();
    v10 = *(*(a1[4] + 8) + 40);
    v11 = *(*(a1[5] + 8) + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZL13visit_processP16operating_systemj_block_invoke_2;
    block[3] = &unk_27886E8C0;
    block[4] = a1[6];
    block[5] = v5;
    dispatch_group_async(v10, v11, block);
  }
}

void ___ZL13visit_processP16operating_systemj_block_invoke_194(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  *uu = 0;
  v14 = 0;
  if (dyld_image_copy_uuid())
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v4 = Mutable;
    memset(out, 0, 37);
    uuid_unparse(uu, out);
    v5 = CFStringCreateWithCString(0, out, 0x8000100u);
    if (!v5)
    {
      v5 = CFStringCreateWithCString(0, out, 0x100u);
    }

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = @"!!!invalid-enc!!!";
    }

    CFAutorelease(v6);
    CFDictionarySetValue(v4, @"UUID_String", v6);
    file_path = dyld_image_get_file_path();
    if (file_path || (file_path = dyld_image_get_installname()) != 0)
    {
      v8 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], file_path, 0x8000100u);
      CFDictionarySetValue(v4, @"Path", v8);
      CFRelease(v8);
    }

    v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v10 = v9;
    dyld_image_for_each_segment_info();
    CFDictionarySetValue(v4, @"Segments", v10);
    CFRelease(v10);
    *out = 0;
    v11 = CFNumberCreate(0, kCFNumberLongLongType, out);
    if (!v11)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v12 = v11;
    CFAutorelease(v11);
    CFDictionarySetValue(v4, @"Flags", v12);
    CFAutorelease(v4);
    CFArrayAppendValue(*(a1 + 32), v4);
  }
}

void ___ZL13visit_processP16operating_systemj_block_invoke_2(uint64_t a1)
{
  CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), *(a1 + 40));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void ___ZL33make_image_summary_with_dyld_infoP12dyld_image_sb_block_invoke(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4)
{
  if (__s1 && strcmp(__s1, "__PAGEZERO"))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v9 = Mutable;
    v10 = CFStringCreateWithCString(0, __s1, 0x8000100u);
    if (!v10)
    {
      v10 = CFStringCreateWithCString(0, __s1, 0x100u);
    }

    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = @"!!!invalid-enc!!!";
    }

    CFAutorelease(v11);
    CFDictionarySetValue(v9, @"Name", v11);
    valuePtr = a3;
    v12 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v12)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v13 = v12;
    CFAutorelease(v12);
    CFDictionarySetValue(v9, @"Address", v13);
    valuePtr = a4;
    v14 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v14)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v15 = v14;
    CFAutorelease(v14);
    CFDictionarySetValue(v9, @"Size", v15);
    CFArrayAppendValue(*(a1 + 32), v9);
    CFRelease(v9);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,dyld_trace_point>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,dyld_trace_point>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,dyld_trace_point>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void ___ZL33ktrace_add_symbols_for_some_uuidsP21symbolication_contexti_block_invoke(uint64_t a1, void *a2)
{
  *(*(a1 + 32) + 80) = *(*(a1 + 40) + 304);
  ktrace_collect_address(*(a1 + 32), *(a1 + 40), a2, a2[1]);
  ktrace_collect_address(*(a1 + 32), *(a1 + 40), a2, a2[2]);
  ktrace_collect_address(*(a1 + 32), *(a1 + 40), a2, a2[3]);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2[4];

  ktrace_collect_address(v4, v5, a2, v6);
}

void ktrace_collect_address(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  ktrace_get_uuid_offset_for_thread_address(a2, *(a3 + 40), a4, &v13);
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  ktrace_collect_uuid_offset(a1, &v8);
  if (ktrace_plausible_kernel_address(a2, a4))
  {
    if (ktrace_get_pid_for_thread(a2, *(a3 + 40)))
    {
      ktrace_get_uuid_offset_for_pid_address(a2, 0, a4, &v8);
      v13 = v8;
      v14 = v9;
      v16 = v11;
      v17 = v12;
      v15 = v10;
      ktrace_collect_uuid_offset(a1, &v8);
    }
  }
}

void ___ZL33ktrace_add_symbols_for_some_uuidsP21symbolication_contexti_block_invoke_3(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (CSIsNull())
  {
    *(v2 + 16) = CSAddressSetCreate();
    *(v2 + 24) = v4;
    if (CSIsNull())
    {
      ktrace_postprocess_file_internal_cold_4();
    }
  }

  if (ktrace_make_symbolicator(v3, v2))
  {
    SymbolOwner = CSSymbolicatorGetSymbolOwner();
    v7 = v6;
    if (CSIsNull())
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v8 = *(v2 + 32);
    if (v8)
    {
      context = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke;
      v29 = &__block_descriptor_56_e8_v16__0Q8l;
      v30 = SymbolOwner;
      v31 = v7;
      v32 = v2;
      CFSetApplyFunction(v8, CFSetApplierTrampoline, &context);
      CFRelease(*(v2 + 32));
      *(v2 + 32) = 0;
    }

    v9 = *(v2 + 40);
    if (v9)
    {
      *&v20 = MEMORY[0x277D85DD0];
      *(&v20 + 1) = 3221225472;
      v21 = ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke_2;
      v22 = &__block_descriptor_56_e34_v24__0____CFString__8____CFSet__16l;
      v23 = SymbolOwner;
      v24 = v7;
      v25 = v2;
      CFDictionaryApplyFunction(v9, CFDictionaryApplierTrampoline, &v20);
      CFRelease(*(v2 + 40));
      *(v2 + 40) = 0;
    }
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (ktrace_make_symbolicator(v11, v10))
  {
    v12 = CSSymbolicatorGetSymbolOwner();
    v14 = v13;
    if (CSIsNull())
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    v15 = MEMORY[0x2318F6990](v12, v14, *(v10 + 16), *(v10 + 24));
    if (v15)
    {
      v16 = v15;
      v20 = 0uLL;
      LODWORD(v21) = 24;
      HIDWORD(v21) = CFDataGetLength(v15);
      uuid_copy(&v20, v10);
      v17 = HIDWORD(v21);
      if (CFDataGetLength(v16) != v17)
      {
        ktrace_postprocess_file_internal_cold_4();
      }

      v19 = *(v11 + 88);
      v18 = *(v11 + 96);
      context = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207;
      v29 = &__block_descriptor_80_e5_v8__0l;
      v33 = v20;
      v34 = v21;
      v30 = v11;
      v31 = v16;
      v32 = v10;
    }

    else
    {
      v19 = *(v11 + 88);
      v18 = *(v11 + 96);
      context = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke;
      v29 = &__block_descriptor_48_e5_v8__0l;
      v30 = v11;
      v31 = v10;
    }

    dispatch_group_async(v18, v19, &context);
  }
}

void ktrace_collect_uuid_offset(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  if (v2 > 5)
  {
    ktrace_collect_uuid_offset();
  }

  if (((1 << v2) & 0x19) != 0)
  {
    return;
  }

  v5 = *(a1 + 16);
  v14[0] = *a2;
  if (std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::find<CFUUIDBytes>(v5, v14) || !uuid_is_null((a1 + 57)) && uuid_compare(a2, (a1 + 57)))
  {
    return;
  }

  v6 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v6;
  v13[4] = *(a2 + 64);
  v7 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v7;
  UUIDContext::UUIDContext(v14, v13);
  uuid = find_or_create_uuid(a1, v14);
  UUIDContext::~UUIDContext(v14);
  if (!uuid || (uuid[20] & 1) != 0)
  {
    return;
  }

  v9 = *(a2 + 48);
  switch(v9)
  {
    case 5:
      v11 = @"__TEXT*";
      goto LABEL_17;
    case 2:
      v11 = cfstring((a2 + 16));
LABEL_17:
      Mutable = uuid[5];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        uuid[5] = Mutable;
      }

      Value = CFDictionaryGetValue(Mutable, v11);
      if (!Value)
      {
        Value = CFSetCreateMutable(0, 0, &long_set_callbacks);
        CFDictionarySetValue(uuid[5], v11, Value);
        CFRelease(Value);
      }

      goto LABEL_21;
    case 1:
      Value = uuid[4];
      if (!Value)
      {
        Value = CFSetCreateMutable(0, 0, &long_set_callbacks);
        uuid[4] = Value;
      }

LABEL_21:
      CFSetAddValue(Value, *(a2 + 40));
      break;
  }
}

void sub_22EDC1558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  UUIDContext::~UUIDContext(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::find<CFUUIDBytes>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1] ^ *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == *a2 && result[3] == a2[1])
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v3 = a1[4];
  v4 = a1[5];
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = a2;
  v10 = 1;
  v11 = 0;
  v13 = 0;
  v12 = 0;
  v14 = 0;
  result = translate_offset(v3, v4, v7, &v6, 0);
  if (result)
  {
    return CSAddressSetAdd();
  }

  return result;
}

void ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke_2(uint64_t a1, CFStringRef theString1, const __CFSet *a3)
{
  v6 = CFStringCompare(theString1, @"__TEXT*", 0);
  if (v6)
  {
    v6 = utf8(theString1);
    v7 = 2;
  }

  else
  {
    v7 = 5;
  }

  context[0] = MEMORY[0x277D85DD0];
  context[1] = 3221225472;
  context[2] = ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke_3;
  context[3] = &__block_descriptor_68_e8_v16__0Q8l;
  v11 = v7;
  context[4] = v6;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  CFSetApplyFunction(a3, CFSetApplierTrampoline, context);
}

uint64_t ___ZL24ktrace_translate_offsetsP21symbolication_contextP11UUIDContext_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  *&v11 = 0;
  v12 = 0u;
  v13 = 0u;
  v9 = 0u;
  *(&v11 + 1) = a2;
  LODWORD(v12) = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v3)
  {
    strlcpy(&v10, v3, 0x11uLL);
  }

  v7 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8[2] = v11;
  v8[3] = v12;
  v8[4] = v13;
  v8[0] = v9;
  v8[1] = v10;
  result = translate_offset(v4, v5, v8, &v7, 0);
  if (result)
  {
    return CSAddressSetAdd();
  }

  return result;
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  v4 = *v2;
  if (*v2)
  {
    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    v7 = describe2(v2, v6);
    fprintf(v4, "failed to create signature for %s\n", v7);
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
    {
      ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_cold_1(v3, v5);
    }
  }
}

UInt8 *describe2(uint64_t a1, unsigned __int8 *uu)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  v4 = *(uu + 17);
  if (!v4)
  {
    if (*(a1 + 80))
    {
      Mutable = CFStringCreateMutable(0, 0);
      CFStringAppendCString(Mutable, out, 0x8000100u);
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 1;
      v9 = *(a1 + 80);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = ___ZL9describe2P21symbolication_contextP11UUIDContext_block_invoke;
      v12[3] = &unk_27886EE68;
      v12[4] = v13;
      v12[5] = Mutable;
      ktrace_uuid_map_iterate_associated_paths(v9, uu, v12);
      CFAutorelease(Mutable);
      v7 = utf8(Mutable);
      _Block_object_dispose(v13, 8);
      return v7;
    }

    if (*(uu + 18))
    {
      v11 = *(uu + 19);
      if (v11)
      {
        return aasprintf("%s /.vol/%lld/%lld", out, *(uu + 18), v11);
      }
    }

    else if (*(uu + 38))
    {
      return aasprintf("%s /.vol/?/%lld", out, *(uu + 19));
    }

    return aasprintf("%s", out);
  }

  v5 = utf8(v4);
  return aasprintf("%s %s", out, v5);
}

void sub_22EDC1AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207(uint64_t a1)
{
  v2 = (a1 + 32);
  appended = ktrace_file_append_start(*(*(a1 + 32) + 48), 32771, 0, 0);
  if (!appended || (v4 = appended, ktrace_file_append_data(*(*(a1 + 32) + 48), appended, (a1 + 56), 24)) || (v5 = *(*(a1 + 32) + 48), BytePtr = CFDataGetBytePtr(*(a1 + 40)), Length = CFDataGetLength(*(a1 + 40)), ktrace_file_append_data(v5, v4, BytePtr, Length)))
  {
    v8 = **v2;
    if (v8)
    {
      fwrite("failed to write symbols chunk\n", 0x1EuLL, 1uLL, v8);
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207_cold_2();
      }
    }
  }

  else
  {
    ktrace_file_append_finish(*(*v2 + 48), v4);
    v10 = **v2;
    if (v10)
    {
      v11 = describe2(*v2, *(a1 + 48));
      fprintf(v10, "added symbols for %s\n", v11);
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        ___ZL27ktrace_add_symbols_for_uuidP21symbolication_contextP11UUIDContext_block_invoke_207_cold_1(v2, (a1 + 48));
      }
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

void ___ZL9describe2P21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) == 1)
  {
    *(v4 + 24) = 0;
    v5 = " ";
  }

  else
  {
    v5 = ", ";
  }

  CFStringAppendCString(*(a1 + 40), v5, 0x8000100u);
  v6 = *(a1 + 40);

  CFStringAppend(v6, a2);
}

void *std::__hash_table<CFUUIDBytes,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,std::allocator<CFUUIDBytes>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1] ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2[1] ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      UUIDContext::~UUIDContext((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void KtraceSymbolicator::~KtraceSymbolicator(KtraceSymbolicator *this)
{
  v2 = *this;
  if (v2)
  {
    symbolication_context::~symbolication_context(v2);
    MEMORY[0x2318F6E50]();
  }

  std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CS::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CS::TypeRef>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      CS::TypeRef::~TypeRef((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::__emplace_unique_key_args<CFUUIDBytes,CFUUIDBytes&,UUIDContext>(void *a1, void *a2, __int128 *a3, __int128 *a4)
{
  v4 = a2[1] ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2[1] ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v9;
}

void sub_22EDC233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,UUIDContext>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,UUIDContext>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<CFUUIDBytes,UUIDContext>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CFUUIDBytes,UUIDContext>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      UUIDContext::~UUIDContext((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t UUIDContext::UUIDContext(uint64_t a1, uint64_t a2)
{
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  uuid_copy(a1, a2);
  v4 = *(a2 + 72);
  *(a1 + 136) = v4;
  *(a1 + 144) = *(a2 + 56);
  *(a1 + 152) = *(a2 + 64);
  if (v4)
  {
    CFRetain(v4);
  }

  return a1;
}

void UUIDContext::~UUIDContext(UUIDContext *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    CFRelease(v3);
  }

  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }

  v4 = *(this + 14);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    CFRelease(v7);
  }
}

BOOL ktrace_find_executable(symbolication_context *a1, UUIDContext *uu)
{
  v57 = *MEMORY[0x277D85DE8];
  if ((*(uu + 80) & 2) != 0)
  {
    return 1;
  }

  if ((*(uu + 80) & 0x400) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  if (!v3)
  {
    return 0;
  }

  if (*v3)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke;
    v49[3] = &__block_descriptor_48_e21_v16__0____CFString__8l;
    v49[4] = v3;
    v49[5] = uu;
    v5 = *(uu + 17);
    if (v5)
    {
      ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke(v49, v5);
    }

    else
    {
      v6 = *(a1 + 10);
      if (v6)
      {
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke_4;
        v48[3] = &unk_27886F180;
        v48[4] = v49;
        v48[5] = uu;
        ktrace_uuid_map_iterate_associated_paths(v6, uu, v48);
      }
    }

    if ((*(uu + 80) & 2) != 0)
    {
      return 1;
    }
  }

  v7 = v3[1];
  if (v7 && CFArrayGetCount(v7))
  {
    v8 = *(a1 + 4);
    if (!v8)
    {
      pthread_mutex_lock(&ktrace_find_executable(symbolication_context *,UUIDContext *)::lock);
      if (!*(a1 + 4))
      {
        calculateRecursiveSearchCache(v3);
      }

      pthread_mutex_unlock(&ktrace_find_executable(symbolication_context *,UUIDContext *)::lock);
      v8 = *(a1 + 4);
    }

    *__ptr = *uu;
    v9 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(v8, __ptr);
    if (v9)
    {
      v10 = v9[4];
      *(uu + 13) = v10;
      CFRetain(v10);
      *(uu + 80) |= 2u;
      return 1;
    }
  }

  if (v3[2])
  {
    v11 = *(a1 + 1);
    if (v11)
    {
      *v56 = -1;
      v52 = 0;
      posix_spawn_file_actions_init(&v52);
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      v12 = utf8(*(v11 + 16));
      v13 = aasprintf("%s %s", v12, out);
      v51 = -1;
      v50 = pipe(v56);
      if (v50)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = __error();
          v16 = strerror(*v15);
          fprintf(v14, "pipe failed: %s\n", v16);
        }

        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_find_executable();
        }
      }

      else
      {
        __argv[0] = "sh";
        __argv[1] = "-c";
        __argv[2] = v13;
        __argv[3] = 0;
        posix_spawn_file_actions_addclose(&v52, 1);
        posix_spawn_file_actions_addclose(&v52, v56[0]);
        posix_spawn_file_actions_adddup2(&v52, v56[1], 1);
        v17 = _NSGetEnviron();
        v18 = posix_spawn(&v51, "/bin/sh", &v52, 0, __argv, *v17);
        v50 = v18;
        if (v18)
        {
          v19 = *a1;
          if (*a1)
          {
            v20 = strerror(v18);
            fprintf(v19, "posix_spawn failed: %s\n", v20);
          }

          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_find_executable(&v50);
          }
        }

        else
        {
          close(v56[1]);
          v56[1] = -1;
          v28 = fdopen(v56[0], "r");
          if (v28)
          {
            v23 = v28;
            Mutable = CFDataCreateMutable(0, 0);
            if (!Mutable)
            {
              ktrace_postprocess_file_internal_cold_4();
            }

            v22 = Mutable;
            v30 = fread(__ptr, 1uLL, 0x200uLL, v23);
            if (v30)
            {
              v31 = v30;
              do
              {
                CFDataAppendBytes(v22, __ptr, v31);
                v31 = fread(__ptr, 1uLL, 0x200uLL, v23);
              }

              while (v31);
            }

            if (feof(v23))
            {
              v32 = waitpid(v51, &v50, 0);
              if (v32 == v51)
              {
                if (v50)
                {
                  if (*a1)
                  {
                    fprintf(*a1, "command failed: %s (exit status %d)\n", v13, v50);
                  }

                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
                  {
                    ktrace_find_executable();
                  }
                }

                else
                {
                  v39 = CFPropertyListCreateWithData(0, v22, 0, 0, 0);
                  if (v39)
                  {
                    v21 = v39;
                    v40 = cfstring(out);
                    dictionary = cfdict_get_dictionary(v21, v40);
                    if (dictionary)
                    {
                      string = cfdict_get_string(dictionary, @"DBGSymbolRichExecutable");
                      if (string)
                      {
                        v43 = string;
                        v44 = *a1;
                        if (*a1)
                        {
                          filePath = string;
                          v45 = utf8(string);
                          fprintf(v44, "found executable: %s\n\tusing command: %s\n", v45, v13);
                          ktrace_log_init();
                          v46 = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG);
                          v43 = filePath;
                          if (v46)
                          {
                            ktrace_find_executable(filePath);
                            v43 = filePath;
                          }
                        }

                        *(uu + 13) = CFURLCreateWithFileSystemPath(0, v43, kCFURLPOSIXPathStyle, 0);
                        *(uu + 80) |= 2u;
                        v24 = 1;
LABEL_32:
                        posix_spawn_file_actions_destroy(&v52);
                        if (v56[0] != -1)
                        {
                          close(v56[0]);
                        }

                        if (v56[1] != -1)
                        {
                          close(v56[1]);
                        }

                        if (v23)
                        {
                          fclose(v23);
                        }

                        if (v22)
                        {
                          CFRelease(v22);
                        }

                        if (v21)
                        {
                          CFRelease(v21);
                        }

                        if (v24)
                        {
                          return 1;
                        }

                        goto LABEL_44;
                      }
                    }

LABEL_31:
                    v24 = 0;
                    goto LABEL_32;
                  }

                  if (*a1)
                  {
                    fprintf(*a1, "failed to parse output from command: %s\n", v13);
                  }

                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
                  {
                    ktrace_find_executable();
                  }
                }
              }

              else
              {
                v36 = *a1;
                if (*a1)
                {
                  v37 = __error();
                  v38 = strerror(*v37);
                  fprintf(v36, "waitpid failed! %s\n", v38);
                }

                if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
                {
                  ktrace_find_executable();
                }
              }
            }

            else
            {
              v33 = *a1;
              if (*a1)
              {
                v34 = ferror(v23);
                v35 = strerror(v34);
                fprintf(v33, "error reading from pipe! %s\n", v35);
              }

              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
              {
                ktrace_find_executable(v23);
              }
            }

            v21 = 0;
            goto LABEL_31;
          }

          if (*a1)
          {
            fwrite("fdopen failed!\n", 0xFuLL, 1uLL, *a1);
          }

          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_FAULT))
          {
            ktrace_find_executable();
          }
        }
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_31;
    }
  }

LABEL_44:
  *(uu + 80) |= 0x400u;
  v26 = *a1;
  if (*a1)
  {
    v27 = describe2(a1, uu);
    fprintf(v26, "could not find executable for %s\n", v27);
    ktrace_log_init();
    result = os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    ktrace_find_executable(a1, uu);
  }

  return 0;
}

CFIndex ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke(CFIndex result, CFStringRef theString)
{
  if (theString)
  {
    v3 = result;
    result = CFStringGetLength(theString);
    if (result)
    {
      result = CFArrayGetCount(**(v3 + 32));
      if (result >= 1)
      {
        for (i = 0; i < result; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(**(v3 + 32), i);
          if (ValueAtIndex)
          {
            v6 = ValueAtIndex;
            v7 = CFGetTypeID(ValueAtIndex);
            if (v7 != CFStringGetTypeID())
            {
              ktrace_log_init();
              if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
              {
                __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_5(&v12, v13);
              }
            }

            if ([v6 length])
            {
              if ([v6 characterAtIndex:0] == 47)
              {
                v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v6, theString, v11];
              }

              else
              {
                v10 = [objc_alloc_init(MEMORY[0x277CCAA00]) currentDirectoryPath];
                v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v10, v6, theString];
              }

              v9 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, 0);
              if (CFURLResourceIsReachable(v9, 0))
              {
                CSSymbolicatorForeachSymbolicatorWithURL();
              }

              CFRelease(v9);
            }
          }

          result = CFArrayGetCount(**(v3 + 32));
        }
      }
    }
  }

  return result;
}

CFTypeRef ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = owner_matches_uuid(a2, a3, *(a1 + 32));
  if (result)
  {
    if ((*(*(a1 + 32) + 160) & 2) == 0)
    {
      result = CFRetain(*(a1 + 40));
      *(*(a1 + 32) + 104) = *(a1 + 40);
      *(*(a1 + 32) + 160) |= 2u;
    }
  }

  return result;
}

const unsigned __int8 *owner_matches_uuid(uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  result = CSSymbolOwnerGetCFUUIDBytes();
  if (result)
  {
    return (uuid_compare(result, a3) == 0);
  }

  return result;
}

uint64_t ___ZL22ktrace_find_executableP21symbolication_contextP11UUIDContext_block_invoke_4(uint64_t result)
{
  if ((*(*(result + 40) + 160) & 2) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_22EDC30F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZL29calculateRecursiveSearchCacheP32ktrace_dsym_search_configuration_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  if (CFUUIDBytes)
  {
    v5 = CFUUIDBytes;
    v9 = *(a1 + 40);
    CFRetain(v9);
    v6 = *(a1 + 32);
    v10 = v5;
    v7 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,CF::TypeRef>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,CF::TypeRef>>>::__emplace_unique_key_args<CFUUIDBytes,std::piecewise_construct_t const&,std::tuple<CFUUIDBytes const&>,std::tuple<>>(v6, v5, &std::piecewise_construct, &v10);
    v8 = v7[4];
    if (v8)
    {
      CFRelease(v8);
    }

    v7[4] = v9;
    v9 = 0;
    CF::TypeRef::~TypeRef(&v9);
  }
}

void sub_22EDC3214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t ktrace_find_arch_with_default(symbolication_context *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 160) & 4) != 0)
  {
    return 1;
  }

  ktrace_find_summary(a1, a2);
  LOWORD(v6) = *(a2 + 160);
  if ((v6 & 4) != 0)
  {
    return 1;
  }

  v7 = *(a1 + 1);
  if (v7)
  {
    if (*(v7 + 25) == 1)
    {
      v8 = *(a1 + 10);
      if (v8)
      {
        v9 = *(v8 + 272);
        if (v9)
        {
          *(a2 + 120) = v9;
LABEL_11:
          *(a2 + 160) = v6 | 4;
          return 1;
        }
      }
    }
  }

  ktrace_analyze_executable(a1, a2);
  if (a3)
  {
    *(a2 + 120) = a3;
    LOWORD(v6) = *(a2 + 160);
    goto LABEL_11;
  }

  if ((*(a2 + 160) & 4) == 0)
  {
    v11 = *a1;
    if (*a1)
    {
      v12 = describe2(a1, a2);
      fprintf(v11, "could not figure out arch for %s\n", v12);
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_find_arch_with_default(a1, a2);
      }
    }
  }

  v13 = *(a1 + 1);
  if (v13)
  {
    v14 = *(v13 + 26);
    v6 = *(a2 + 160);
    if (v14 == 1)
    {
      *(a2 + 120) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(a2 + 160);
  }

  return (v6 >> 2) & 1;
}

void ktrace_find_summary(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  if (v2 && !*(a2 + 16))
  {
    v5 = *(v2 + 240);
    if (v5)
    {
      v17 = *a2;
      v6 = std::__hash_table<std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::__unordered_map_hasher<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::hash<CFUUIDBytes>,std::equal_to<CFUUIDBytes>,true>,std::__unordered_map_equal<CFUUIDBytes,std::__hash_value_type<CFUUIDBytes,UUIDContext>,std::equal_to<CFUUIDBytes>,std::hash<CFUUIDBytes>,true>,std::allocator<std::__hash_value_type<CFUUIDBytes,UUIDContext>>>::find<CFUUIDBytes>(v5, &v17);
      if (v6)
      {
        v7 = v6[4];
        *(a2 + 16) = v7;
        if (v7)
        {
          CFRetain(v7);
          return;
        }
      }
    }

    v8 = *(a2 + 18);
    v9 = *(a2 + 19);
    v10 = lookup_inode(*(*(a1 + 80) + 224), v8, v9);
    ktrace_find_summary_in_fat_summary(a2, v10);
    if (!*(a2 + 16))
    {
      v11 = *(a2 + 17);
      v12 = *(a1 + 80);
      if (!v11 || !*(v12 + 232))
      {
        goto LABEL_17;
      }

      Value = CFDictionaryGetValue(*(v12 + 232), v11);
      v14 = Value;
      if (Value)
      {
        v15 = CFGetTypeID(Value);
        if (v15 != CFDictionaryGetTypeID())
        {
          ktrace_log_init();
          if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
          {
            ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
          }

          v14 = 0;
        }
      }

      ktrace_find_summary_in_fat_summary(a2, v14);
      if (!*(a2 + 16))
      {
        v12 = *(a1 + 80);
LABEL_17:
        if (*(v12 + 232))
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = ___ZL19ktrace_find_summaryP21symbolication_contextP11UUIDContext_block_invoke;
          v16[3] = &__block_descriptor_48_e21_v16__0____CFString__8l;
          v16[4] = a2;
          v16[5] = a1;
          ktrace_uuid_map_iterate_associated_paths(v12, a2, v16);
        }
      }
    }
  }
}

void ktrace_analyze_executable(FILE **a1, CFURLRef *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (ktrace_find_executable(a1, a2))
  {
    CSSymbolicatorForeachSymbolicatorWithURL();
    if ((a2[20] & 4) == 0)
    {
      v4 = *a1;
      if (*a1)
      {
        v5 = CFURLGetString(a2[13]);
        v6 = utf8(v5);
        v7 = describe2(a1, a2);
        fprintf(v4, "failed to analyze executable at %s for %s\n", v6, v7);
        ktrace_log_init();
        v8 = ktrace_log;
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          v9 = CFURLGetString(a2[13]);
          *buf = 136315394;
          v11 = utf8(v9);
          v12 = 2080;
          v13 = describe2(a1, a2);
          _os_log_debug_impl(&dword_22ED7A000, v8, OS_LOG_TYPE_DEBUG, "failed to analyze executable at %s for %s\n", buf, 0x16u);
        }
      }
    }
  }
}

const void *lookup_inode(const __CFDictionary *a1, fsid a2, fsobj_id a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = cfaasprintf("%llx", a2);
  Value = CFDictionaryGetValue(a1, v5);
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFDictionaryGetTypeID())
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
    }

    return 0;
  }

  v9 = cfaasprintf("%llx", a3);
  v10 = CFDictionaryGetValue(v7, v9);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    if (v12 != CFDictionaryGetTypeID())
    {
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      return 0;
    }
  }

  return v11;
}

void ktrace_find_summary_in_fat_summary(UUIDContext *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Images");
    if (Value)
    {
      v4 = Value;
      v5 = CFGetTypeID(Value);
      if (v5 == CFDictionaryGetTypeID())
      {
        context[0] = MEMORY[0x277D85DD0];
        context[1] = 3221225472;
        context[2] = ___ZL34ktrace_find_summary_in_fat_summaryP11UUIDContextPK14__CFDictionary_block_invoke;
        context[3] = &__block_descriptor_40_e41_v24__0____CFString__8____CFDictionary__16l;
        context[4] = a1;
        CFDictionaryApplyFunction(v4, CFDictionaryApplierTrampoline, context);
      }

      else
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
        }
      }
    }
  }
}

void ___ZL19ktrace_find_summaryP21symbolication_contextP11UUIDContext_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(a1 + 32) + 128))
  {
    Value = CFDictionaryGetValue(*(*(*(a1 + 40) + 80) + 232), a2);
    v4 = Value;
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 != CFDictionaryGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_2();
        }

        v4 = 0;
      }
    }

    ktrace_find_summary_in_fat_summary(*(a1 + 32), v4);
  }
}

uint64_t ___ZL34ktrace_find_summary_in_fat_summaryP11UUIDContextPK14__CFDictionary_block_invoke(uint64_t result, const __CFString *a2, CFDictionaryRef theDict)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(*(result + 32) + 128))
  {
    v5 = result;
    memset(uu, 0, sizeof(uu));
    Value = CFDictionaryGetValue(theDict, @"UUID_String");
    v7 = Value;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 != CFStringGetTypeID())
      {
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          ktrace_uuid_map_learn_tailspin_symbols_with_chunk_cold_1();
        }

        v7 = 0;
      }
    }

    v9 = utf8(v7);
    uuid_parse(v9, uu);
    result = uuid_compare(uu, *(v5 + 32));
    if (!result)
    {
      if ((*(*(v5 + 32) + 160) & 4) == 0)
      {
        utf8(a2);
        *(*(v5 + 32) + 120) = CSArchitectureGetArchitectureForName();
        *(*(v5 + 32) + 160) = *(*(v5 + 32) + 160) & 0xFFFB | (4 * (*(*(v5 + 32) + 120) != 0));
      }

      result = CFRetain(theDict);
      *(*(v5 + 32) + 128) = theDict;
    }
  }

  return result;
}

const unsigned __int8 *___ZL25ktrace_analyze_executableP21symbolication_contextP11UUIDContext_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = owner_matches_uuid(a2, a3, *(a1 + 32));
  if (result)
  {
    *(*(a1 + 32) + 120) = CSSymbolOwnerGetArchitecture();
    *(*(a1 + 32) + 160) |= 4u;
    *(*(a1 + 32) + 80) = 0;
    CSSymbolOwnerForeachSegment();
    *(*(a1 + 32) + 160) |= 0x20u;
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    v6 = *(a1 + 32);
    *(v6 + 48) = BaseAddress;
    *(v6 + 160) = *(v6 + 160) & 0xFFBF | ((BaseAddress != -1) << 6);
    if (CSSymbolOwnerIsAOut())
    {
      v7 = 256;
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 32) + 160) = *(*(a1 + 32) + 160) & 0xFEFF | v7;
    result = CSSymbolOwnerIsDyld();
    if (result)
    {
      v8 = 512;
    }

    else
    {
      v8 = 0;
    }

    *(*(a1 + 32) + 160) = *(*(a1 + 32) + 160) & 0xFDFF | v8;
    *(*(a1 + 32) + 160) |= 0x80u;
  }

  return result;
}

uint64_t ___ZL25ktrace_analyze_executableP21symbolication_contextP11UUIDContext_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ++*(*(a1 + 32) + 80);
  result = CSRegionGetName();
  if (result)
  {
    result = strcmp("__TEXT SEGMENT", result);
    if (!result)
    {
      *(*(a1 + 32) + 160) |= 8u;
      result = CSRegionGetRange();
      *(*(a1 + 32) + 56) = v5;
    }
  }

  return result;
}

void CS::TypeRef::~TypeRef(CS::TypeRef *this)
{
  if ((CSIsNull() & 1) == 0)
  {
    CSRelease();
  }
}

uint64_t ___ZL16translate_offset10_CSTypeRef18ktrace_uuid_offsetPyPb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Name = CSRegionGetName();
  v5 = strnlen((a1 + 64), 0x10uLL);
  result = strncmp(Name, (a1 + 64), v5);
  if (!result && Name[v5] == 32)
  {
    v7 = *(*(a1 + 32) + 8);
    if (*(v7 + 24) == 1)
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    if (strcmp(&Name[v5], " SEGMENT"))
    {
      ktrace_postprocess_file_internal_cold_4();
    }

    *(v7 + 24) = 1;
    v8 = *(a1 + 88);
    result = CSRegionGetRange();
    if (v8 >= v9)
    {
      v10 = *(a1 + 136);
      if (v10)
      {
        if (*(a1 + 100) == 1)
        {
          *v10 = 1;
        }
      }
    }

    else
    {
      result = CSRegionGetRange();
      **(a1 + 128) = result + *(a1 + 88);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void ___ZL18owner_is_text_exec10_CSTypeRef_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  CSRegionGetSegmentName(a2, a3, &v5);
  if (v5 == 0x455F545845545F5FLL && v6 == 4408664)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

UUIDContext *___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_254(uint64_t a1, SymbolOwner *a2)
{
  result = find_or_create_uuid(*(a1 + 48), a2);
  if (!result)
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  v5 = *(a2 + 4);
  if (v5 != 1)
  {
    if (v5 == 5 || v5 == 2)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }

    return result;
  }

  v7 = result;
  ktrace_find_segment_count(*(a1 + 48), result);
  if ((*(v7 + 80) & 0x20) != 0)
  {
    v12 = *(v7 + 20);
  }

  else
  {
    ktrace_find_text_size(*(a1 + 48), v7, v8, v9, v10);
    v11 = *(v7 + 80);
    if ((v11 & 8) != 0)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
      v11 = *(v7 + 80);
    }

    if ((v11 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    v12 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) += v12;
LABEL_17:
  ktrace_find_image_type(*(a1 + 48), v7);
  result = ktrace_find_arch_with_default(*(a1 + 48), v7, 0);
  if ((*(v7 + 80) & 4) != 0)
  {
    v13 = *(*(a1 + 40) + 8);
    if ((*(v7 + 80) & 0x100) != 0 || !*(v13 + 48))
    {
      *(v13 + 48) = *(v7 + 15);
    }
  }

  return result;
}

void *find_or_create_uuid(symbolication_context *a1, SymbolOwner *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  UUIDContext::UUIDContext(v5, a2);
  uuid = find_or_create_uuid(a1, v5);
  UUIDContext::~UUIDContext(v5);
  return uuid;
}

void ktrace_find_segment_count(FILE **a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 0x20) == 0)
  {
    ktrace_find_summary(a1, a2);
    v4 = *(a2 + 16);
    if (v4)
    {
      Value = CFDictionaryGetValue(v4, @"Segments");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFArrayGetTypeID())
        {
          *(a2 + 20) = CFArrayGetCount(v6);
          *(a2 + 80) |= 0x20u;
          return;
        }

        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
        {
          __ktrace_uuid_map_learn_ariadne_process_dict_with_chunk_block_invoke_cold_1();
        }
      }
    }

    ktrace_analyze_executable(a1, a2);
    if (!*(a2 + 20))
    {
      v8 = *a1;
      if (*a1)
      {
        v9 = describe2(a1, a2);
        fprintf(v8, "could not figure segment count for %s\n", v9);
        ktrace_log_init();
        if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
        {
          ktrace_find_segment_count(a1, a2);
        }
      }
    }
  }
}

void ktrace_find_text_size(FILE **a1, UUIDContext *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a2 + 80) & 8) != 0)
  {
    return;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___ZL21ktrace_find_text_sizeP21symbolication_contextP11UUIDContext_block_invoke;
  v11[3] = &__block_descriptor_40_e24_v32__0r_8__CSRange_QQ_16l;
  v11[4] = a2;
  ktrace_iterate_segments(a1, a2, v11);
  if ((*(a2 + 80) & 8) != 0)
  {
    return;
  }

  ktrace_find_summary(a1, a2);
  v7 = *(a2 + 16);
  if (!v7 || (Value = CFDictionaryGetValue(v7, @"TextSize")) == 0)
  {
LABEL_10:
    ktrace_analyze_executable(a1, a2);
    return;
  }

  v9 = Value;
  v10 = CFGetTypeID(Value);
  if (v10 != CFNumberGetTypeID())
  {
    ktrace_log_init();
    if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
    {
      ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
    }

    goto LABEL_10;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(v9, kCFNumberLongLongType, &valuePtr))
  {
    ktrace_postprocess_file_internal_cold_4();
  }

  *(a2 + 7) = valuePtr;
  *(a2 + 80) |= 8u;
}

uint64_t ktrace_find_image_type(FILE **a1, UUIDContext *a2)
{
  if ((*(a2 + 80) & 0x80) != 0)
  {
    return 1;
  }

  ktrace_find_summary(a1, a2);
  v4 = *(a2 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"Flags");
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (!CFNumberGetValue(v6, kCFNumberLongLongType, &valuePtr))
        {
          ktrace_postprocess_file_internal_cold_4();
        }

        v8 = valuePtr;
        goto LABEL_17;
      }

      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_ERROR))
      {
        ktrace_uuid_map_learn_tailspin_process_info_with_chunk_cold_1();
      }
    }

    v8 = 0;
LABEL_17:
    *(a2 + 80) = (16 * v8) & 0x100 | (((v8 >> 6) & 1) << 9) | *(a2 + 80) & 0xFCFF | 0x80;
    return 1;
  }

  ktrace_analyze_executable(a1, a2);
  if ((*(a2 + 80) & 0x80) == 0)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = describe2(a1, a2);
      fprintf(v9, "could not figure out image type for %s\n", v10);
      ktrace_log_init();
      if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
      {
        ktrace_find_image_type(a1, a2);
      }
    }
  }

  v11 = a1[1];
  if (v11)
  {
    v12 = BYTE3(v11->_bf._base);
    v13 = *(a2 + 80);
    if (v12 == 1)
    {
      v13 |= 0x80u;
      *(a2 + 80) = v13;
    }
  }

  else
  {
    v13 = *(a2 + 80);
  }

  return (v13 >> 7) & 1;
}

void ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_2(void *a1, __int128 *a2, uint64_t *a3)
{
  v78[7] = *MEMORY[0x277D85DE8];
  v3 = *(a1[4] + 8);
  v4 = *(a1[5] + 8);
  v5 = a1[7];
  v55 = *a3;
  v7 = a2 + 1;
  v6 = *(a2 + 4);
  if (v6 > 5)
  {
    goto LABEL_10;
  }

  v8 = 1 << v6;
  if ((v8 & 0x26) == 0)
  {
    if ((v8 & 0x18) != 0)
    {
      return;
    }

LABEL_10:
    ktrace_address_space_deep_iterate_symbol_owners();
  }

  v9 = a2;
  v10 = *(*(a1[6] + 8) + 48);
  v11 = *(a1[8] + 32);
  uuid = find_or_create_uuid(v5, a2);
  if (uuid)
  {
    v13 = uuid;
    if ((uuid[20] & 1) == 0)
    {
      v54 = v11;
      v14 = v7 + 8;
      if (*v7 == 5)
      {
        v15 = *(v5 + 1);
        if (v15 && *(v15 + 28))
        {
          *v14 = 0;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *v7 = 2;
          strlcpy(v7 + 8, (*(v5 + 1) + 28), 0x11uLL);
        }

        else
        {
          *&v59 = 0;
          *(&v59 + 1) = &v59;
          *&v60 = 0x2020000000;
          BYTE8(v60) = 0;
          *v71 = MEMORY[0x277D85DD0];
          v72 = 3221225472;
          v73 = ___ZL23fix_tailspin_kext_ownerP11SymbolOwnerP21symbolication_contextP11UUIDContext_block_invoke;
          v74 = &unk_27886F328;
          v75 = &v59;
          if ((ktrace_iterate_segments(v5, uuid, v71) & 1) == 0)
          {
            v29 = &v59;
LABEL_73:
            _Block_object_dispose(v29, 8);
            return;
          }

          if (*v7 != 2)
          {
            *v14 = 0;
            *(v7 + 2) = 0;
            *(v7 + 3) = 0;
            *v7 = 2;
          }

          if (*(*(&v59 + 1) + 24))
          {
            v16 = "__TEXT_EXEC";
          }

          else
          {
            v16 = "__TEXT";
          }

          strlcpy(v7 + 8, v16, 0x11uLL);
          _Block_object_dispose(&v59, 8);
        }
      }

      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v70 = 0;
      v63 = 0;
      v64 = &v63;
      v65 = 0x2020000000;
      v66 = 0;
      arch_with_default = ktrace_find_arch_with_default(v5, v13, v10);
      if (!v55)
      {
        if (!arch_with_default)
        {
          goto LABEL_29;
        }

        LOBYTE(arch_with_default) = ktrace_find_image_type(v5, v13);
      }

      if (arch_with_default)
      {
        v18 = v7 + 5;
        v19 = v7 + 2;
        v61 = 0u;
        memset(v62, 0, sizeof(v62));
        v59 = 0u;
        v60 = 0u;
        v20 = *v7;
        if (*v7 != 1)
        {
          goto LABEL_41;
        }

        ktrace_find_segment_count(v5, v13);
        if ((*(v13 + 160) & 0x20) == 0)
        {
          ktrace_find_text_size(v5, v13, v21, v22, v23);
          v24 = *(v13 + 160);
          if ((v24 & 8) != 0)
          {
            SymbolOwner::operator=(&v59, v9);
            v19 = v62;
            v14 = &v60 + 8;
            v18 = &v62[1];
            if (v60 != 2)
            {
              *(&v60 + 1) = 0;
              v61 = 0uLL;
              LODWORD(v60) = 2;
            }

            v27 = (v13 + 56);
            v25 = 1;
            v28 = &v62[1];
            v26 = "__TEXT";
          }

          else
          {
            if ((v24 & 0x10) == 0)
            {
              goto LABEL_35;
            }

            SymbolOwner::operator=(&v59, v9);
            v19 = v62;
            v14 = &v60 + 8;
            v18 = &v62[1];
            if (v60 != 2)
            {
              *(&v60 + 1) = 0;
              v61 = 0uLL;
              LODWORD(v60) = 2;
            }

            v25 = *(v13 + 64);
            v62[1] = *(v13 + 72) + 1;
            v26 = "__TEXT_EXEC";
            v27 = v62;
            v28 = v62;
          }

          *v28 = *v27 + v25;
          strlcpy(&v60 + 8, v26, 0x11uLL);
          v7 = &v60;
          v9 = &v59;
        }

LABEL_35:
        v20 = *(v9 + 4);
        if (v20 == 1)
        {
          v30 = *(v13 + 160);
          if ((v30 & 0x20) == 0)
          {
            *(v13 + 160) = v30 | 1;
LABEL_71:
            SymbolOwner::~SymbolOwner(&v59);
            goto LABEL_72;
          }

          v31 = *(v4 + 24);
          v68[3] = v31;
          *(v4 + 24) = v31 + 40 * *(v13 + 80);
          *v71 = 0;
          v72 = v71;
          v73 = 0x2020000000;
          LODWORD(v74) = 0;
          if ((ktrace_find_base_address(v5, v13) & 1) == 0 || (v57[0] = MEMORY[0x277D85DD0], v57[1] = 3321888768, v57[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke, v57[3] = &unk_2843A01B0, v58 = v54, v57[4] = &v67, v57[5] = v71, v57[8] = v5, v57[9] = v9, v57[10] = v55, v57[6] = &v63, v57[7] = v13, !ktrace_iterate_segments(v5, v13, v57)))
          {
LABEL_48:
            *(v13 + 160) |= 1u;
            _Block_object_dispose(v71, 8);
            goto LABEL_71;
          }

          _Block_object_dispose(v71, 8);
          v20 = *v7;
        }

LABEL_41:
        if (v20 == 2)
        {
          *v71 = 0;
          v72 = v71;
          v73 = 0x3812000000;
          v74 = __Block_byref_object_copy__262;
          v75 = __Block_byref_object_dispose__263;
          v76 = "";
          if (!*v18)
          {
            if (strcmp(v14, "__TEXT") || ((ktrace_find_text_size(v5, v13, v32, v33, v34), (*(v13 + 160) & 8) != 0) ? (v38 = *(v13 + 56) + 1, *(v72 + 48) = v38) : (v38 = *(v72 + 48)), !v38))
            {
              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_265;
              v56[3] = &unk_27886F2E0;
              v56[4] = v71;
              v56[5] = v9;
              ktrace_iterate_segments(v5, v13, v56);
              if (!*(v72 + 48))
              {
                v35 = *v5;
                if (*v5)
                {
                  v36 = describe2(v5, v13);
                  fprintf(v35, "coulnd't figure out segment length for %s of %s\n", v14, v36);
                  ktrace_log_init();
                  if (os_log_type_enabled(ktrace_log, OS_LOG_TYPE_DEBUG))
                  {
                    v37 = describe2(v5, v13);
                    ___ZL42ktrace_address_space_create_cssymbolicatorP21symbolication_contextP20ktrace_address_space_block_invoke_2_cold_1(v14, v37, v78);
                  }
                }

                goto LABEL_48;
              }
            }
          }

          v39 = *(v4 + 24);
          v40 = v68;
          *v39 = *v19;
          *(v4 + 24) = v39 + 5;
          v40[3] = v39;
          if (v55)
          {
            v41 = optional_uint64::value(&v55);
            *v68[3] += v41;
          }

          v42 = *v68[3];
          v43 = optional_uint64::value((v72 + 48));
          *(v68[3] + 8) = v43 + v42;
          v44 = v68[3];
          v45 = v14[16];
          *(v44 + 16) = *v14;
          *(v44 + 32) = v45;
          ++*(v64 + 6);
          _Block_object_dispose(v71, 8);
        }

        v46 = *(v3 + 24);
        *(v3 + 24) = v46 + 64;
        *(v46 + 16) = *v9;
        *(v46 + 32) = *(v13 + 120);
        v47 = *(v13 + 136);
        if (v47)
        {
          v48 = utf8(v47);
        }

        else
        {
          v49 = *(v5 + 10);
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = ___ZL9fill_infoPP25_CSBinaryImageInformationPP30_CSBinaryRelocationInformationP21symbolication_contextP11SymbolOwner15optional_uint6415_CSArchitecturei_block_invoke_267;
          v78[3] = &__block_descriptor_56_e21_v16__0____CFString__8l;
          v78[4] = v46;
          v78[5] = v13;
          v78[6] = v5;
          ktrace_uuid_map_iterate_associated_paths(v49, v13, v78);
          v48 = *(v46 + 40);
          if (v48)
          {
            goto LABEL_60;
          }

          v48 = "<unknown>";
        }

        *(v46 + 40) = v48;
LABEL_60:
        *(v46 + 60) = 0;
        v50 = (*(v13 + 160) >> 4) & 0x10;
        *(v46 + 60) = v50;
        if ((*(v13 + 160) & 0x200) != 0)
        {
          *(v46 + 60) = v50 | 0x40;
        }

        v51 = *(v5 + 10);
        if (v51 && ((*(v51 + 288) & 1) != 0 || (*(v51 + 289) & 1) != 0) || (v52 = *(v5 + 1)) != 0 && *(v52 + 46) == 1)
        {
          if (v48)
          {
            v53 = basename_r(v48, v71);
            if (!strcmp("dyld", v53))
            {
              *(v46 + 60) |= 0x40u;
            }
          }
        }

        *(v46 + 48) = v68[3];
        *(v46 + 56) = *(v64 + 6);
        goto LABEL_71;
      }

LABEL_29:
      *(v13 + 160) |= 1u;
LABEL_72:
      _Block_object_dispose(&v63, 8);
      v29 = &v67;
      goto LABEL_73;
    }
  }
}