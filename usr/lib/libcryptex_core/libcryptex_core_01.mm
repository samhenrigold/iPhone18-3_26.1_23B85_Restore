double OUTLINED_FUNCTION_2_3(void *a1, _OWORD *a2)
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

uint64_t _CFCreateAssertImpl(uint64_t result, uint64_t a2)
{
  v4 = *MEMORY[0x29EDCA608];
  if (!result)
  {
    _CFCreateAssertImpl_cold_1(&v2, v3);
  }

  return result;
}

unint64_t _CFNumberGetUInt32(const __CFNumber *a1)
{
  v5 = *MEMORY[0x29EDCA608];
  valuePtr = -1;
  if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
  {
    _CFNumberGetUInt32_cold_2();
  }

  if (HIDWORD(valuePtr))
  {
    _CFNumberGetUInt32_cold_1(&v2, v4);
  }

  return valuePtr;
}

BOOL _CFStringLocalizeCaseInsensitiveContains(const __CFString *a1, const __CFString *a2)
{
  v5.length = CFStringGetLength(a1);
  v5.location = 0;
  return CFStringFindWithOptions(a1, a2, v5, 0x21uLL, 0) != 0;
}

uint64_t _CFURLCreateFromFileDescriptor(uint64_t a1, CFURLRef *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  bzero(cStr, 0x400uLL);
  v3 = realpath_np();
  if (!v3)
  {
    v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    _CFCreateAssertImpl(v4, "CFString");
    v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
    _CFCreateAssertImpl(v5, "CFURL");
    *a2 = v5;
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v3;
}

CFMutableDictionaryRef _CFDictionaryCreateMutableForCFTypes()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable, "CFMutableDictionary");
  return Mutable;
}

void _CFDictionarySetBool(__CFDictionary *a1, const void *a2, int a3)
{
  v3 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v3 = MEMORY[0x29EDB8EF8];
  }

  CFDictionarySetValue(a1, a2, *v3);
}

void _CFDictionarySetUInt32(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  _CFCreateAssertImpl(v5, "CFNumber");
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void _CFDictionarySetUInt64(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  _CFCreateAssertImpl(v5, "CFNumber");
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void _CFDictionarySetString(__CFDictionary *a1, const void *a2, char *cStr)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  _CFCreateAssertImpl(v5, "CFString");
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

CFErrorRef createError(const char *a1, const char *a2, int a3, const char *a4, CFIndex a5, const void *a6, char *cStr)
{
  valuePtr = a3;
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v13 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v14 = CFStringCreateWithCString(0, a4, 0x8000100u);
  v15 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  _CFCreateAssertImpl(Mutable, "CFMutableDictionary");
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F58], v12);
  if (os_variant_allows_internal_security_policies())
  {
    CFDictionarySetValue(Mutable, @"FunctionName", v13);
    CFDictionarySetValue(Mutable, @"FileName", v15);
    CFDictionarySetValue(Mutable, @"LineNumber", v16);
  }

  if (a6)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDB8F68], a6);
  }

  v18 = CFErrorCreate(0, v14, a5, Mutable);
  CFRelease(Mutable);
  CFRelease(v12);
  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);
  CFRelease(v16);
  return v18;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, v9, v8, 80, a5, v10, 16, a8);
}

double hash_init(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

size_t hash_node_init_cstr(uint64_t a1, char *__s)
{
  result = strlen(__s);
  *a1 |= 2u;
  *(a1 + 16) = __s;
  *(a1 + 24) = result;
  return result;
}

uint64_t hash_insert(uint64_t a1, uint64_t a2)
{
  v4 = os_simple_hash();
  if ((*a2 & 2) == 0)
  {
    hash_insert_cold_3();
  }

  v5 = v4;
  result = hash_lookup(a1, *(a2 + 16), *(a2 + 24));
  if (result)
  {
    hash_insert_cold_1();
  }

  *(a2 + 8) = *(a1 + 8 * (v5 % 0x25));
  *(a1 + 8 * (v5 % 0x25)) = a2;
  if (*a2)
  {
    hash_insert_cold_2();
  }

  *a2 |= 1u;
  ++*(a1 + 296);
  return result;
}

uint64_t hash_lookup(uint64_t a1, const void *a2, size_t a3)
{
  for (i = *(a1 + 8 * (os_simple_hash() % 0x25uLL)); i; i = *(i + 8))
  {
    if (*(i + 24) == a3 && !memcmp(*(i + 16), a2, a3))
    {
      break;
    }
  }

  return i;
}

uint64_t hash_lookup_cstr(uint64_t a1, char *__s)
{
  v4 = strlen(__s);

  return hash_lookup(a1, __s, v4);
}

os_log_t object_proto_init(uint64_t a1, int a2, char *category)
{
  result = os_log_create("com.apple.libcryptex", category);
  *(a1 + 16) = result;
  return result;
}

void object_proto_destroy(uint64_t a1)
{
  free(*(a1 + 8));
  v2 = *(a1 + 16);

  os_release(v2);
}

uint64_t _sprintdgst(uint64_t __str, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v10 = *MEMORY[0x29EDCA608];
  if (a3 >= 0x31)
  {
    _sprintdgst_cold_1(&v8, v9);
  }

  v4 = __str;
  *(__str + 96) = 0;
  *(__str + 64) = 0u;
  *(__str + 80) = 0u;
  *(__str + 32) = 0u;
  *(__str + 48) = 0u;
  *__str = 0u;
  *(__str + 16) = 0u;
  if (a3)
  {
    v6 = 97;
    do
    {
      v7 = *a2++;
      __str = snprintf(v4, v6, "%02x", v7);
      v4 += 2;
      v6 -= 2;
      --v3;
    }

    while (v3);
  }

  return __str;
}

unint64_t _strtou32(const char *a1, char **a2, int a3)
{
  __endptr = 0;
  *__error() = 0;
  result = strtoul(a1, &__endptr, a3);
  if (__endptr && *__endptr)
  {
    result = 0;
    if (a2)
    {
      *a2 = __endptr;
    }
  }

  else if (HIDWORD(result))
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _read_file(int a1, void *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  memset(&v20, 0, sizeof(v20));
  if (fstat(a1, &v20))
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "stat: %{darwin.errno}d", buf, 8u);
    }

    st_size = 0;
LABEL_7:
    v8 = 0;
    *__error() = v5;
LABEL_8:
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  st_size = v20.st_size;
  if (v20.st_size < 0)
  {
    _read_file_cold_6();
  }

  v10 = malloc_type_malloc(v20.st_size, 0xB48626A3uLL);
  if (!v10)
  {
    v4 = *__error();
    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v15 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v4;
      _os_log_impl(&dword_2986F2000, v15, OS_LOG_TYPE_ERROR, "malloc: %{darwin.errno}d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8 = v10;
  while (1)
  {
    v11 = pread(a1, v8, st_size, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v12 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v13 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v22) = v14;
      _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_ERROR, "pread: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v12;
    v4 = *__error();
    if (v4 != 4)
    {
      goto LABEL_8;
    }
  }

  v16 = v11;
  v17 = *__error();
  if (v16 == st_size)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v18 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v22 = st_size;
      _os_log_impl(&dword_2986F2000, v18, OS_LOG_TYPE_DEBUG, "read %ld bytes", buf, 0xCu);
    }

    *__error() = v17;
LABEL_9:
    buff_init(a2, 0, _buff_destructor_free, v8, st_size);
    v4 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  if (log_util_onceToken != -1)
  {
    _read_file_cold_1();
  }

  v19 = log_util_log;
  if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v22 = v16;
    v23 = 2048;
    v24 = st_size;
    _os_log_impl(&dword_2986F2000, v19, OS_LOG_TYPE_ERROR, "truncated read: actual = %ld, expected = %lu", buf, 0x16u);
  }

  *__error() = v17;
  v4 = 5;
LABEL_10:
  free(v8);
  return v4;
}

uint64_t _write_file(int __fd, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v4 = pwrite(__fd, *a2, *(a2 + 8), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    v5 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v6 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v17) = v7;
      _os_log_impl(&dword_2986F2000, v6, OS_LOG_TYPE_ERROR, "write: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v5;
    v8 = *__error();
    if (v8 != 4)
    {
      return v8;
    }
  }

  v9 = v4;
  v10 = *(a2 + 8);
  v11 = *__error();
  if (v9 == v10)
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v12 = log_util_log;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_2986F2000, v12, OS_LOG_TYPE_DEBUG, "wrote %ld bytes", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v13 = log_util_log;
    v8 = 5;
    if (os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a2 + 8);
      *buf = 134218496;
      v17 = v9;
      v18 = 2048;
      v19 = v14;
      v20 = 1024;
      v21 = 5;
      _os_log_impl(&dword_2986F2000, v13, OS_LOG_TYPE_ERROR, "truncated write: actual = %ld, expected = %ld: %{darwin.errno}d", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  return v8;
}

uint64_t _digest_file(int a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v19, 0, sizeof(v19));
  MEMORY[0x2A1C7C4A8]();
  v7 = &v17 - v6;
  bzero(&v17 - v6, v8);
  if (*a2 >= 0x31uLL)
  {
    _digest_file_cold_5(&v18, buf);
  }

  if (fstat(a1, &v19))
  {
    v9 = *__error();
    v10 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v11 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v12 = "failed to stat file: %{darwin.errno}d";
LABEL_7:
    _os_log_impl(&dword_2986F2000, v11, OS_LOG_TYPE_ERROR, v12, buf, 8u);
LABEL_8:
    *__error() = v10;
    return v9;
  }

  st_size = v19.st_size;
  if (v19.st_size < 0)
  {
    _read_file_cold_6();
  }

  v14 = mmap(0, v19.st_size, 1, 1, a1, 0);
  if (v14 == -1)
  {
    v9 = *__error();
    v10 = *__error();
    if (log_util_onceToken != -1)
    {
      _read_file_cold_1();
    }

    v11 = log_util_log;
    if (!os_log_type_enabled(log_util_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 67109120;
    *&buf[4] = v9;
    v12 = "failed to map file into memory: %{darwin.errno}d";
    goto LABEL_7;
  }

  v15 = v14;
  ccdigest_init();
  ccdigest_update();
  (*(a2 + 56))(a2, v7, a3 + 16);
  *(a3 + 8) = *a2;
  if (munmap(v15, st_size) == -1)
  {
    _digest_file_cold_2(&v18, buf);
  }

  return 0;
}

os_log_t __log_util_block_invoke()
{
  result = os_log_create("com.apple.libcryptex", "utility");
  log_util_log = result;
  return result;
}

double OUTLINED_FUNCTION_2_5(void *a1, _OWORD *a2)
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

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return _os_crash_msg();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1)
{

  return _os_crash_msg();
}

void _sprintdgst_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  v8 = OUTLINED_FUNCTION_2_4(v2, v3, v4, v5, &dword_2986F2000, v6, v7, "unexpected failure: bogus digest length: %lu");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _digest_file_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  OUTLINED_FUNCTION_5_0();
  __error();
  OUTLINED_FUNCTION_5_2();
  v9 = OUTLINED_FUNCTION_2(v8, v2, v3, v4, v5, &dword_2986F2000, v6, v7, "assertion failure: munmap(map, len) -> %{errno}d", v10, v11);
  OUTLINED_FUNCTION_7_0(v9);
  __break(1u);
}

void _digest_file_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_4(v7, v2, v3, v4, &dword_2986F2000, v5, v6, "unexpected failure: buffer not large enough for hash: actual = %lu, expected >= %lu");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

uint64_t _buff_destructor_munmap(void *a1, size_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  result = munmap(a1, a2);
  if (result == -1)
  {
    _buff_destructor_munmap_cold_1(&v3, v4);
  }

  return result;
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x29EDCA608];
  *result = a4;
  result[1] = a5;
  result[2] = a4;
  result[3] = a5;
  result[4] = a2;
  result[5] = a3;
  if (a5 < 0)
  {
    buff_init_cold_1(&v5, v6);
  }

  return result;
}

void *buff_init_signed(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x29EDCA608];
  if (a5 < 0)
  {
    buff_init_signed_cold_1(&v6, v7);
  }

  return buff_init(a1, a2, a3, a4, a5);
}

__n128 buff_xfer_subrange(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a2->n128_u64[1];
  if (a4 + a3 > v4)
  {
    v12 = 0;
    memset(v19, 0, sizeof(v19));
    v6 = MEMORY[0x29EDCA988];
    v9 = v4;
    v13 = 134218496;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v14 = a3;
    v15 = 2048;
    v16 = a4;
    v17 = 2048;
    v18 = v9;
    _os_log_send_and_compose_impl(v10, &v12, v19, 80, &dword_2986F2000, v6, 16, "unexpected failure: sub-buffer overflows source buffer: off = %lu, len = %lu, source len = %lu", &v13, 32, v11);
    _os_crash_msg();
    __break(1u);
  }

  a1->n128_u64[0] = a2->n128_u64[0] + a3;
  a1->n128_u64[1] = a4;
  a1[1] = *a2;
  result = a2[2];
  a1[2] = result;
  a2[2].n128_u64[1] = 0;
  return result;
}

void *buff_destroy(void *result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v3 = result[5];
      if (v3)
      {
        if (result[6])
        {
          buff_destroy_cold_1();
        }

        v4 = result[3];
        v5 = result[4];
        v6 = result[2];

        return v3(v6, v4, v5);
      }
    }
  }

  return result;
}

void _buff_destructor_munmap_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_5(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2(v8, v2, v3, v4, v5, &dword_2986F2000, v6, v7, "assertion failure: munmap(bytes, len) -> %{errno}d", v9, v10);
  _os_crash_msg();
  __break(1u);
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_4(v7, v2, v3, v4, &dword_2986F2000, v5, v6, "unexpected failure: buffer length too large: %lu");
  _os_crash_msg();
  __break(1u);
}

void buff_init_signed_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_4(v7, v2, v3, v4, &dword_2986F2000, v5, v6, "unexpected failure: negative buffer length: %ld");
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (a2 <= 0x1F)
  {
    ctx_new_cold_2(&v7, v8, a2);
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v4 = malloc_type_calloc(1uLL, a2, 0x8A375538uLL);
      if (v4)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, a2, 0x8709206FuLL);
    if (!v4)
    {
      _cryptex_magister_record_property_continue2_cold_1(&v7, v8, a2);
    }
  }

  v5 = v4;
  if (a1)
  {
    *v4 = os_retain(a1);
  }

  return v5;
}

void ctx_destroy(void **a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v2(a1);
    }

    if (*a1)
    {
      os_release(*a1);
    }

    free(a1);
  }
}

void ctx_new_cold_2(void *a1, _OWORD *a2, uint64_t a3)
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
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986F2000, v6, 16, "unexpected failure: invalid context size: %lu", &v8);
  _os_crash_msg();
  __break(1u);
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCAA58])
  {
    return 79;
  }

  v7 = xpc_uint64_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_try_get_string(void *a1, const char *a2, const char **a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCAA50])
  {
    return 79;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  result = 0;
  *a3 = string_ptr;
  return result;
}

uint64_t _xpc_dictionary_try_get_BOOL(void *a1, const char *a2, BOOL *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (MEMORY[0x29C2903B0]() != MEMORY[0x29EDCA9E8])
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

void cryptex_core_set_asset_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6(a1, a2);
  v6 = MEMORY[0x29EDCA988];
  v7 = OUTLINED_FUNCTION_4();
  v8 = *(a3 + 48);
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v10 = 136315138;
  v11 = v8;
  _os_log_send_and_compose_impl(v9, a1, a2, 80, &dword_2986F2000, v6, 16, "unexpected failure: asset already present: %s", &v10);
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_set_assets_from_directory_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  v3 = *v2;
  v4.n128_u64[0] = 67109120;
  v10[0] = 67109120;
  v10[1] = v3;
  OUTLINED_FUNCTION_2(v4, v2, v5, v6, v7, &dword_2986F2000, v8, v9, "assertion failure: close(fd) -> %{errno}d", v10, 8);
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_generate_identifier_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  v3 = strerror(*v2);
  v4.n128_u64[0] = 136315138;
  v10 = 136315138;
  v11 = v3;
  OUTLINED_FUNCTION_2(v4, v3, v5, v6, v7, &dword_2986F2000, v8, v9, "error printing buffer: %s", &v10, 12);
  _os_crash_msg();
  __break(1u);
}

void cryptex_core_generate_version_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  v4 = MEMORY[0x29EDCA988];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  v7 = strerror(*v6);
  v10 = 136315650;
  v11 = "known-constant allocation";
  v12 = 2048;
  v13 = 5;
  v14 = 2080;
  v15 = v7;
  v9 = 32;
  v8 = _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986F2000, v4, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v10, v9);
  OUTLINED_FUNCTION_5(v8);
  __break(1u);
}

void cryptex_core_copy_nonce_domain_desc_cold_1(const char *a1)
{
  OUTLINED_FUNCTION_7(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1();
  v9 = OUTLINED_FUNCTION_0(v8, v2, v3, v4, v5, &dword_2986F2000, v6, v7, "allocation failed: obj = %s, size = %lu, error = %s", v10, v11);
  OUTLINED_FUNCTION_5(v9);
  __break(1u);
}

void session_core_generate_username_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  v3 = strerror(*v2);
  v4.n128_u64[0] = 136315138;
  v10 = 136315138;
  v11 = v3;
  OUTLINED_FUNCTION_2(v4, v3, v5, v6, v7, &dword_2986F2000, v8, v9, "error printing buffer: %s", &v10, 12);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_asset_generic_stamp_cold_1(void *a1, _OWORD *a2, unsigned int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = _AMAuthInstallErrorString(a3, 0);
  v7.n128_u64[0] = 136315650;
  v12 = 136315650;
  v13 = "AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped";
  v14 = 1024;
  v15 = a3;
  v16 = 2080;
  v17 = v6;
  OUTLINED_FUNCTION_4_0(v5, a1, v7, v8, v9, &dword_2986F2000, v10, v11, "unexpected failure: %s failed: [%d] %s", &v12, 28);
  _os_crash_msg();
  __break(1u);
}

void cryptex_asset_new_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  v10 = OUTLINED_FUNCTION_0_0(v9, v3, v4, v5, v6, &dword_2986F2000, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s", v11, v12);
  OUTLINED_FUNCTION_5(v10);
  __break(1u);
}

void _cryptex_asset_init_path_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2);
  OUTLINED_FUNCTION_5_0();
  v2 = __error();
  v3 = strerror(*v2);
  v4.n128_u64[0] = 136315650;
  v11 = 136315650;
  v12 = "known-constant allocation";
  v13 = 2048;
  v14 = 1024;
  v15 = 2080;
  v16 = v3;
  v10 = OUTLINED_FUNCTION_0_0(v4, v3, v5, v6, v7, &dword_2986F2000, v8, v9, "allocation failed: obj = %s, size = %lu, error = %s", &v11, 32);
  OUTLINED_FUNCTION_5(v10);
  __break(1u);
}

void cryptex_asset_copy_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  v5 = strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = __error();
  v8 = strerror(*v7);
  v9.n128_u64[0] = 136315650;
  v15 = 136315650;
  v16 = "known-constant allocation";
  v17 = 2048;
  v18 = v5;
  v19 = 2080;
  v20 = v8;
  v14 = OUTLINED_FUNCTION_4_0(v6, a2, v9, v10, v11, &dword_2986F2000, v12, v13, "allocation failed: obj = %s, size = %lu, error = %s", &v15, 32);
  OUTLINED_FUNCTION_5(v14);
  __break(1u);
}

void cryptex_core_unparse_hdiid_cold_1(void *a1, _OWORD *a2)
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

  v6 = __error();
  v7 = strerror(*v6);
  v8 = 136315138;
  v9 = v7;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986F2000, v4, 16, "error printing buffer: %s", &v8);
  _os_crash_msg();
  __break(1u);
}

void cryptex_tss_set_info_from_file_cold_1(void *a1, _OWORD *a2, int a3)
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

  v9[0] = 67109120;
  v9[1] = a3;
  v8 = 8;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986F2000, v6, 16, "unexpected failure: failed to read file: %{darwin.errno}d", v9, v8);
  _os_crash_msg();
  __break(1u);
}

void cryptex_version_new_cold_1(const char *a1, void *a2, _OWORD *a3)
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
  _os_log_send_and_compose_impl(v7, a2, a3, 80, &dword_2986F2000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void cryptex_version_new_cold_2(void *a1, _OWORD *a2)
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

  v6 = __error();
  v7 = strerror(*v6);
  v9 = 136315650;
  v10 = "known-constant allocation";
  v11 = 2048;
  v12 = 32;
  v13 = 2080;
  v14 = v7;
  v8 = 32;
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986F2000, v4, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v9, v8);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_authenticate_toutoc_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  v3 = *v2;
  v4.n128_u64[0] = 67109120;
  v10[0] = 67109120;
  v10[1] = v3;
  OUTLINED_FUNCTION_2(v4, v2, v5, v6, v7, &dword_2986F2000, v8, v9, "assertion failure: cxmg_authntc8->old_off -> %{errno}d", v10, 8);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_firmware_execute_toutoc_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  v3 = *v2;
  v4.n128_u64[0] = 67109120;
  v10[0] = 67109120;
  v10[1] = v3;
  OUTLINED_FUNCTION_2(v4, v2, v5, v6, v7, &dword_2986F2000, v8, v9, "assertion failure: old_off -> %{errno}d", v10, 8);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_magister_record_property_continue2_cold_1(void *a1, _OWORD *a2, uint64_t a3)
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
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986F2000, v6, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v11, v10);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_signature_compute_hash_cold_1(void *a1, _OWORD *a2, uint64_t a3)
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

  v9 = 134218240;
  v10 = 48;
  v11 = 2048;
  v12 = a3;
  v8 = 22;
  _os_log_send_and_compose_impl(v7, a1, a2, 80, &dword_2986F2000, v6, 16, "unexpected failure: crypto nightmare: buffer len = %lu, output len = %lu", &v9, v8);
  _os_crash_msg();
  __break(1u);
}

void cryptex_scrivener_create_cold_1(void *a1, _OWORD *a2)
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

  v6 = __error();
  strerror(*v6);
  LODWORD(v9) = 136315650;
  *(&v9 + 4) = "known-constant allocation";
  OUTLINED_FUNCTION_3_0();
  _os_log_send_and_compose_impl(v5, a1, a2, 80, &dword_2986F2000, v4, 16, "allocation failed: obj = %s, size = %lu, error = %s", v7, v8, v9);
  _os_crash_msg();
  __break(1u);
}

void cryptex_scrivener_set_url_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (OUTLINED_FUNCTION_4())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = __error();
  strerror(*v6);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0(v5, a2, v11, v7, v8, &dword_2986F2000, v9, v10, "allocation failed: obj = %s, size = %lu, error = %s", v12, v13);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_sign_continue_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(v4, v3, v9, v5, v6, &dword_2986F2000, v7, v8, "unexpected failure: %s failed: [%d] %s", v10, v11);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_sign_continue_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(v4, v3, v9, v5, v6, &dword_2986F2000, v7, v8, "unexpected failure: %s failed: [%d] %s", v10, v11);
  _os_crash_msg();
  __break(1u);
}

void _cryptex_scrivener_init_tss_common_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2_3(a1, a2);
  if (OUTLINED_FUNCTION_4())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  _AMAuthInstallErrorString(v2, 0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_0(v4, v3, v9, v5, v6, &dword_2986F2000, v7, v8, "unexpected failure: %s failed: [%d] %s", v10, v11);
  _os_crash_msg();
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_4(v7, v2, v3, v4, &dword_2986F2000, v5, v6, "cf create failed: obj = %s");
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_6(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_4(v7, v2, v3, v4, &dword_2986F2000, v5, v6, "unexpected failure: not representable as 32-bit unsigned integer: %lld");
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_2()
{
  _os_crash();
  __break(1u);
  AMAuthInstallApCreateImagePropertiesWithDeviceMapZipped();
}