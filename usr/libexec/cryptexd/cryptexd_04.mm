uint64_t _xpc_object_set_string_if_absent(void *a1, const char *a2, const char *a3)
{
  if (xpc_dictionary_get_value(a1, a2))
  {
    return 17;
  }

  xpc_dictionary_set_string(a1, a2, a3);
  return 0;
}

BOOL _xpc_object_has_string(void *a1, const char *a2)
{
  if (xpc_get_type(a1) == &_xpc_type_string)
  {
    string_ptr = xpc_string_get_string_ptr(a1);
    return strcmp(a2, string_ptr) == 0;
  }

  else if (xpc_get_type(a1) == &_xpc_type_array && xpc_array_get_count(a1))
  {
    v7 = 0;
    do
    {
      value = xpc_array_get_value(a1, v7);
      has_string = _xpc_object_has_string(value, a2);
      if (has_string)
      {
        break;
      }

      ++v7;
    }

    while (v7 < xpc_array_get_count(a1));
  }

  else
  {
    return 0;
  }

  return has_string;
}

xpc_object_t _xpc_object_has_string_for_key(void *a1, const char *a2, const char *a3)
{
  result = xpc_dictionary_get_value(a1, a2);
  if (result)
  {

    return _xpc_object_has_string(result, a3);
  }

  return result;
}

void _sscandgst_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_11_0();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: byte too big: %#lx");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _rmrfdirat_cold_16(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "assertion failure: error -> %llu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _rmrfdirat_cold_24(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: directory will not empty: %s");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _digest_file_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: munmap(map, len) -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _digest_file_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: buffer not large enough for hash: actual = %lu, expected >= %lu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

uint64_t _buff_destructor_munmap(void *a1, size_t a2)
{
  result = munmap(a1, a2);
  if (result == -1)
  {
    _buff_destructor_munmap_cold_1(&v3, v4);
  }

  return result;
}

void *buff_init(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
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

__n128 buff_xfer_subrange(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a2->n128_u64[1];
  if (a4 + a3 > v4)
  {
    v11 = 0;
    memset(v18, 0, sizeof(v18));
    v8 = v4;
    v12 = 134218496;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = v8;
    _os_log_send_and_compose_impl(v9, &v11, v18, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: sub-buffer overflows source buffer: off = %lu, len = %lu, source len = %lu", &v12, 32, v10);
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

FILE *buff_fopen(uint64_t a1, char *__mode, size_t a3)
{
  if ((a3 & 0x8000000000000000) != 0 || (v5 = *(a1 + 8), v5 < a3))
  {
    buff_fopen_cold_3();
  }

  v6 = fmemopen(*a1, v5, __mode);
  if (!v6)
  {
    buff_fopen_cold_2(&v9, v10);
  }

  v7 = v6;
  if (fseek(v6, a3, 0) == -1)
  {
    buff_fopen_cold_1(&v9, v10);
  }

  return v7;
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
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: munmap(bytes, len) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void buff_init_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: buffer length too large: %lu");
  _os_crash_msg();
  __break(1u);
}

void buff_fopen_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: fseek(f, off_long, 0) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void buff_fopen_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: fmemopen: %{darwin.errno}d");
  _os_crash_msg();
  __break(1u);
}

void *ctx_new(void *a1, size_t a2)
{
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
      ctx_new_cold_1(&v7, v8, a2);
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

void ctx_new_cold_1(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = __error();
  v8 = strerror(*v7);
  v10 = 136315650;
  v11 = "known-constant allocation";
  v12 = 2048;
  v13 = a3;
  v14 = 2080;
  v15 = v8;
  v9 = 32;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v10, v9);
  _os_crash_msg();
  __break(1u);
}

void ctx_new_cold_2(void *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = 134217984;
  v8 = a3;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "unexpected failure: invalid context size: %lu", &v7);
  _os_crash_msg();
  __break(1u);
}

xpc_object_t _xpc_plist_value_copy(uint64_t a1, xpc_object_t object)
{
  if (*a1 != &_xpc_type_array && *a1 != &_xpc_type_dictionary)
  {
    _xpc_plist_value_copy_cold_1();
  }

  type = xpc_get_type(object);
  if (type != *a1)
  {
    return 0;
  }

  if (type == &_xpc_type_array)
  {
    v8 = *(a1 + 24);
    if (v8 >= xpc_array_get_count(object))
    {
      return 0;
    }

    value = xpc_array_get_value(object, *(a1 + 24));
  }

  else
  {
    value = xpc_dictionary_get_value(object, *(a1 + 16));
  }

  v9 = value;
  if (!value || xpc_get_type(value) != *(a1 + 8))
  {
    return 0;
  }

  return xpc_retain(v9);
}

uint64_t _xpc_plist_merge(uint64_t a1, xpc_object_t xdict)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (xdict)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___xpc_plist_merge_block_invoke;
    v4[3] = &unk_100074A88;
    v4[4] = &v5;
    v4[5] = a1;
    xpc_dictionary_apply(xdict, v4);
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___xpc_plist_merge_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  value = xpc_dictionary_get_value(*(a1 + 40), a2);
  if (!value)
  {
LABEL_9:
    xpc_dictionary_set_value(*(a1 + 40), a2, a3);
    return 1;
  }

  v7 = value;
  type = xpc_get_type(value);
  if (type == xpc_get_type(a3))
  {
    if (type == &_xpc_type_dictionary)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 0x40000000;
      applier[2] = ___xpc_plist_merge_block_invoke_2;
      applier[3] = &__block_descriptor_tmp_5;
      applier[4] = v7;
      xpc_dictionary_apply(a3, applier);
      return 1;
    }

    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 79;
  v9 = *__error();
  if (_xpc_log_onceToken != -1)
  {
    ___xpc_plist_merge_block_invoke_cold_1();
  }

  v10 = _xpc_log_osl;
  if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 136315394;
    v15 = a2;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Error merging override for key %s: %{darwin.errno}d", buf, 0x12u);
  }

  *__error() = v9;
  return 1;
}

uint64_t _xpc_dictionary_try_get_uint64(void *a1, const char *a2, uint64_t *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_uint64)
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
  if (xpc_get_type(value) != &_xpc_type_string)
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
  if (xpc_get_type(value) != &_xpc_type_BOOL)
  {
    return 79;
  }

  v7 = xpc_BOOL_get_value(v5);
  result = 0;
  *a3 = v7;
  return result;
}

uint64_t _xpc_dictionary_key_with_type_exists(void *a1, const char *a2, const _xpc_type_s *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    v6 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v11 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315138;
    v15 = a2;
    v8 = "key %s doesn't exist";
    v9 = v11;
    v10 = 12;
    goto LABEL_11;
  }

  if (xpc_get_type(value) != a3)
  {
    v6 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v7 = _xpc_log_osl;
    if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v14 = 136315394;
    v15 = a2;
    v16 = 2080;
    name = xpc_type_get_name(a3);
    v8 = "key %s isn't of type %s";
    v9 = v7;
    v10 = 22;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
LABEL_12:
    v12 = __error();
    result = 0;
    *v12 = v6;
    return result;
  }

  return 1;
}

void *_xpc_create_reply(void *a1, void *a2, int a3)
{
  reply = xpc_dictionary_create_reply(a1);
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_uint64(reply, "error", a3);
    xpc_dictionary_set_value(v6, "argv", a2);
  }

  else
  {
    v7 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v8 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "failed to extract reply from request, the connection may have gone", v10, 2u);
    }

    *__error() = v7;
  }

  return v6;
}

uint64_t _xpc_dictionary_try_get_cferr(void *a1, const char *a2, CFErrorRef *a3)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    return 2;
  }

  v5 = value;
  if (xpc_get_type(value) != &_xpc_type_dictionary)
  {
    return 79;
  }

  return _xpc_dictionary_to_cferr(v5, a3);
}

uint64_t _xpc_dictionary_to_cferr(void *a1, CFErrorRef *a2)
{
  value = 0;
  dictionary = xpc_dictionary_get_dictionary(a1, "cferr_userinfo");
  if (dictionary)
  {
    v5 = dictionary;
    string = xpc_dictionary_get_string(a1, "cferr_domain");
    v7 = _CFStringCreateFromUTF8String(string);
    if (v7)
    {
      v8 = v7;
      int64 = xpc_dictionary_get_int64(a1, "cferr_code");
      v10 = xpc_dictionary_get_dictionary(v5, "underlying_cferr");
      if (v10 && _xpc_dictionary_to_cferr(v10, &value))
      {
        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to unpack underlying error.: %{darwin.errno}d";
      }

      else
      {
        xpc_dictionary_set_value(v5, "underlying_cferr", 0);
        v17 = _CFXPCCreateCFObjectFromXPCObject();
        if (v17)
        {
          v18 = v17;
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v17);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            if (value)
            {
              CFDictionarySetValue(MutableCopy, kCFErrorUnderlyingErrorKey, value);
            }

            v21 = CFErrorCreate(0, v8, int64, v20);
            if (v21)
            {
              if (a2)
              {
                v16 = 0;
                *a2 = v21;
              }

              else
              {
                CFRelease(v21);
                v16 = 0;
              }
            }

            else
            {
              v26 = *__error();
              if (_xpc_log_onceToken != -1)
              {
                _xpc_dictionary_to_cferr_cold_1();
              }

              v27 = _xpc_log_osl;
              if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v31 = 12;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to create CFError.: %{darwin.errno}d", buf, 8u);
              }

              *__error() = v26;
              v16 = 12;
            }

            CFRelease(v20);
          }

          else
          {
            v24 = *__error();
            if (_xpc_log_onceToken != -1)
            {
              _xpc_dictionary_to_cferr_cold_1();
            }

            v25 = _xpc_log_osl;
            if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v31 = 12;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to create mutable dictionary.: %{darwin.errno}d", buf, 8u);
            }

            *__error() = v24;
            v16 = 12;
          }

          CFRelease(v18);
          goto LABEL_45;
        }

        v11 = *__error();
        if (_xpc_log_onceToken != -1)
        {
          _xpc_dictionary_to_cferr_cold_1();
        }

        v12 = _xpc_log_osl;
        if (!os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
        {
LABEL_31:
          *__error() = v11;
          v16 = 22;
LABEL_45:
          CFRelease(v8);
          goto LABEL_46;
        }

        *buf = 67109120;
        v31 = 22;
        v13 = "Failed to convert CF to XPC.: %{darwin.errno}d";
      }

      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 8u);
      goto LABEL_31;
    }

    v22 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v23 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create string.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v22;
    v16 = 12;
  }

  else
  {
    v14 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v15 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v31 = 22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CFError XPC dictionary is missing user info.: %{darwin.errno}d", buf, 8u);
    }

    *__error() = v14;
    v16 = 22;
  }

LABEL_46:
  if (value)
  {
    CFRelease(value);
  }

  return v16;
}

xpc_object_t _xpc_cferr_to_dictionary(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = CFErrorCopyUserInfo(a1);
  if (v3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
    if (!MutableCopy)
    {
      _xpc_cferr_to_dictionary_cold_3();
    }

    v5 = MutableCopy;
    CFDictionaryRemoveValue(MutableCopy, kCFErrorUnderlyingErrorKey);
    v6 = _CFXPCCreateXPCObjectFromCFObject();
    if (!v6)
    {
      _xpc_cferr_to_dictionary_cold_2();
    }

    v7 = v6;
    Value = CFDictionaryGetValue(v3, kCFErrorUnderlyingErrorKey);
    if (Value)
    {
      v9 = _xpc_cferr_to_dictionary(Value);
      if (!v9)
      {
        _xpc_cferr_to_dictionary_cold_1();
      }

      v10 = v9;
      xpc_dictionary_set_value(v7, "underlying_cferr", v9);
    }

    else
    {
      v10 = 0;
    }

    xpc_dictionary_set_value(v2, "cferr_userinfo", v7);
  }

  else
  {
    v10 = 0;
    v7 = 0;
    v5 = 0;
  }

  if (!CFErrorGetDomain(a1))
  {
    _xpc_cferr_to_dictionary_cold_4();
  }

  Domain = CFErrorGetDomain(a1);
  v12 = _CFStringCopyUTF8String(Domain);
  xpc_dictionary_set_string(v2, "cferr_domain", v12);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "cferr_code", Code);
  free(v12);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v7)
  {
    os_release(v7);
  }

  if (v10)
  {
    os_release(v10);
  }

  return v2;
}

void *_xpc_create_reply_with_cferr(void *a1, void *a2, __CFError *a3)
{
  reply = xpc_dictionary_create_reply(a1);
  v6 = reply;
  if (reply)
  {
    xpc_dictionary_set_value(reply, "argv", a2);
    if (a3)
    {
      v7 = _xpc_cferr_to_dictionary(a3);
      xpc_dictionary_set_value(v6, "cferr", v7);
      if (v7)
      {
        os_release(v7);
      }
    }
  }

  else
  {
    v8 = *__error();
    if (_xpc_log_onceToken != -1)
    {
      ___xpc_plist_merge_block_invoke_cold_1();
    }

    v9 = _xpc_log_osl;
    if (os_log_type_enabled(_xpc_log_osl, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "failed to extract reply from request, the connection may have gone", v11, 2u);
    }

    *__error() = v8;
  }

  return v6;
}

uint64_t _xpc_request_get_argv(void *a1, void *a2)
{
  if (!_xpc_dictionary_key_with_type_exists(a1, "argv", &_xpc_type_dictionary))
  {
    return 22;
  }

  dictionary = xpc_dictionary_get_dictionary(a1, "argv");
  result = 0;
  *a2 = dictionary;
  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, (a3 + 88)) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, (a3 + 88)))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, &v4);
  if (!result)
  {
    if (HIDWORD(v4))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  memset(v12, 170, sizeof(v12));
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t amfi_check_dyld_policy_self(uint64_t a1, unint64_t *a2)
{
  if (!a2)
  {
    return 22;
  }

  *a2 = 0;
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = a1;
  v4[2] = v4;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a2 = v4[0];
  return result;
}

uint64_t amfi_check_dyld_policy_for_pid(int a1, uint64_t a2, unint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  *a3 = 0;
  v7 = -1431655766;
  v5[0] = 0xAAAAAAAAAAAAAAAALL;
  v5[1] = a2;
  v5[2] = v5;
  v6 = a1;
  result = __sandbox_ms();
  if (result)
  {
    result = *__error();
  }

  *a3 = v5[0];
  return result;
}

void cryptex_path_map_append_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0(v7, a1, a2, v4, &_mh_execute_header, v5, v6, "assertion failure: CFGetTypeID(name) == CFStringGetTypeID() -> %llu");
  _os_crash_msg();
  __break(1u);
}

void cryptex_path_map_append_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_0(v7, a1, a2, v4, &_mh_execute_header, v5, v6, "assertion failure: CFGetTypeID(graft_path) == CFStringGetTypeID() -> %llu");
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_fclose_cold_1(void *a1, _OWORD *a2, int a3)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = 134217984;
  v8 = a3;
  _os_log_send_and_compose_impl(v6, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: (*__error()) -> %llu", &v7);
  _os_crash_msg();
  __break(1u);
}

void daemon_init_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_1(v3, a1, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: _NSGetExecutablePath: required size = %u");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void daemon_init_cold_2(const char *a1)
{
  OUTLINED_FUNCTION_13(a1);
  OUTLINED_FUNCTION_9();
  if (OUTLINED_FUNCTION_7())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = __error();
  strerror(*v3);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_1(v2, v1, v4, v5, &_mh_execute_header, v6, v7, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v8);
  __break(1u);
}

void daemon_init_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: bogus optind: %d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void daemon_init_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: open: %s: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void daemon_init_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: open: %s: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void daemon_init_cold_9(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: failed to init identity: %{darwin.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void daemon_init_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: failed to copy forerunners: %{darwin.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void daemon_init_cold_12(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (OUTLINED_FUNCTION_8())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = __error();
  v6 = strerror(*v5);
  v9 = 136315650;
  v10 = "known-constant allocation";
  v11 = 2048;
  v12 = 3480;
  v13 = 2080;
  v14 = v6;
  v8 = 32;
  v7 = _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v9, v8);
  OUTLINED_FUNCTION_12(v7);
  __break(1u);
}

void daemon_init_cold_13(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: close(fd) -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void daemon_post_multithreaded_hack_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: bootstrap_check_in: %{mach.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void daemon_post_multithreaded_hack_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: signal: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _daemon_init_state_directory_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: openat: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _daemon_init_state_directory_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: realpath: %{darwin.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _daemon_init_state_directory_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: mkdirat: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void ___daemon_setup_connection_mux_block_invoke_cold_2(void *a1, NSObject *a2)
{
  v3 = 136315138;
  string = xpc_dictionary_get_string(a1, _xpc_error_key_description);
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Received error from client: %s", &v3, 0xCu);
}

void view_iterate_resource_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: closedir(dp) -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void view_iterate_resource_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: fdopendir: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _CFCreateAssertImpl_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "cf create failed: obj = %s");
  _os_crash_msg();
  __break(1u);
}

void _CFNumberGetUInt32_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1_0(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: not representable as 32-bit unsigned integer: %lld");
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = *__error();
  v7[0] = 67109120;
  v7[1] = v5;
  v6 = 8;
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v7, v6);
  _os_crash_msg();
  __break(1u);
}

void session_list_foreach_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 name];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "session_list_foreach: passing session %@", a1, 0xCu);
}

void apfs_volume_copy_formatter_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "IOObjectRetain: %{mach.errno}d");
  _os_crash_msg();
  __break(1u);
}

void _protex_init_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  v5 = strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = __error();
  v8 = strerror(*v7);
  v10 = 136315650;
  v11 = "known-constant allocation";
  v12 = 2048;
  v13 = v5;
  v14 = 2080;
  v15 = v8;
  v9 = 32;
  _os_log_send_and_compose_impl(v6, a2, a3, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v10, v9);
  _os_crash_msg();
  __break(1u);
}

void _protex_stage_continue_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: lseek_ret -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _cryptex_base_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _codex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _daemon_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _proc_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _protex_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _quire_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _resource_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _view_alloc_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_1(v0, v1);
  OUTLINED_FUNCTION_7();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_0_1();
  v9 = OUTLINED_FUNCTION_1_1(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void proc_resolve_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
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
  OUTLINED_FUNCTION_1_2();
  _os_log_send_and_compose_impl(v5, a2, a3, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", v7, v8, v9);
  _os_crash_msg();
  __break(1u);
}

void proc_resolve_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void _csblob_copy_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void sm_service_create_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void sm_pending_service_create_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void __sm_monitor_service_block_invoke_27_cold_2(void *a1, void *a2)
{
  v3 = 136315394;
  v4 = [a1 UTF8String];
  v5 = 2048;
  v6 = [a2 state];
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Cryptex Session process (uuid %s) monitor event %ld", &v3, 0x16u);
}

void _codex_dealloc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: codex deallocated while active: %u");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _codex_init_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: failed to check lockdown state file: %{darwin.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _codex_unset_initial_keepalive_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: failed to create anti-KeepAlive file: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _codex_insert_installed_cold_1(const char *a1, void *a2, _OWORD *a3)
{
  v5 = strlen(a1);
  *a2 = 0;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  if (OUTLINED_FUNCTION_7())
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = __error();
  v8 = strerror(*v7);
  v10 = 136315650;
  v11 = "known-constant allocation";
  v12 = 2048;
  v13 = v5;
  v14 = 2080;
  v15 = v8;
  v9 = 32;
  _os_log_send_and_compose_impl(v6, a2, a3, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v10, v9);
  _os_crash_msg();
  __break(1u);
}

void _codex_insert_installed_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (OUTLINED_FUNCTION_8())
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = __error();
  v6 = strerror(*v5);
  v8 = 136315650;
  v9 = "known-constant allocation";
  v10 = 2048;
  v11 = 48;
  v12 = 2080;
  v13 = v6;
  v7 = 32;
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "allocation failed: obj = %s, size = %lu, error = %s", &v8, v7);
  _os_crash_msg();
  __break(1u);
}

void ___codex_unbootstrap_continue2_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: husk with an invalid dev fd: %d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _codex_lockdown_continue2_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: failed to open/create lockdown file: %{darwin.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void hdi_attach_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: kIOHDIXControllerCreateDriveMethod returned bogus drive number length: actual = %lu, expected = %lu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void hdi_attach_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: IOServiceClose: %{mach.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void hdi_find_attached_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "IOObjectRetain: %{mach.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _hdi_copy_device_nodes_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_4(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: IOObjectRetain: %{mach.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void hdi_mount_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "assertion failure: (*__error()) -> %llu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void hdi_mount_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: getpwuid: %{darwin.errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void hdi_mount_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: ret -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void hdi_mount_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  __error();
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_0_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: close(scope_fd) -> %{errno}d");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void hdi_copy_mounted_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void hdi_copy_mounted_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  _os_crash_msg();
  __break(1u);
}

void mount_sub_handle_request_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &_mh_execute_header, &_os_log_default, v6, "assertion failure: close(fd) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void mount_sub_handle_request_cold_6(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  __error();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_4(v2, v3, v4, v5, &_mh_execute_header, &_os_log_default, v6, "assertion failure: close(fd) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void __os_cleanup_close_cold_1_0(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  __error();
  OUTLINED_FUNCTION_5();
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d");
  _os_crash_msg();
  __break(1u);
}

void sub_log_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "error printing buffer: %s");
  _os_crash_msg();
  __break(1u);
}

void sub_get_subsystem_from_msg_cold_1(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Subsystem unknown %s", &v1, 0xCu);
}

void _amfi_load_trust_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: fcheck_np(cursor, fr, 1) -> %llu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _amfi_load_trust_cache_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_2_0(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: IOServiceClose: %{mach.errno}d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _amfi_load_trust_cache_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2_3();
  v8 = OUTLINED_FUNCTION_2_0(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: (*__error()) -> %llu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _quire_dealloc_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_1(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: quire deallocated while active: %u");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void quire_attr_populate_dependencies_cold_1(void *a1, _OWORD *a2, const _xpc_type_s *a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  xpc_type_get_name(a3);
  v10 = OUTLINED_FUNCTION_1(v5, v3, v6, v7, &_mh_execute_header, v8, v9, "unexpected failure: dependency array type is %s instead of XPC_TYPE_ARRAY");
  OUTLINED_FUNCTION_11(v10);
  __break(1u);
}

void quire_attr_populate_dependencies_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_13(v0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_7();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2();
  v8 = OUTLINED_FUNCTION_2_4(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v8);
  __break(1u);
}

void quire_attr_populate_dependencies_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_0_3(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: %s called with NULL dependency array");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void quire_attr_populate_dependencies_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20();
  v8 = OUTLINED_FUNCTION_0_3(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: qa->qa_info != ((void*)0) -> %llu");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void quire_attr_enforce_install_limits_cold_1(void *a1, _OWORD *a2, const _xpc_type_s *a3)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  xpc_type_get_name(a3);
  v10 = OUTLINED_FUNCTION_1(v5, v3, v6, v7, &_mh_execute_header, v8, v9, "unexpected failure: install limits array type is %s instead of XPC_TYPE_ARRAY");
  OUTLINED_FUNCTION_11(v10);
  __break(1u);
}

void quire_attr_enforce_install_limits_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_0_3(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: %s called with empty install limits array");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void quire_create_cold_1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_9_0(v0, v1);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void quire_bootstrap_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: realpath_np(q_bootstrap->rootfd, q_bootstrap->rootpath) -> %llu");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void quire_bootstrap_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _quire_unmount_continue_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_1(v3, v2, v4, v5, &_mh_execute_header, v6, v7, "unexpected failure: attempted to unlink dependencies on quire object with outstanding dependents (bundle ID: %s)");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _quire_pending_services_submit_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void _quire_bootstrap_trust_cache_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3_0(a1, a2);
  if (OUTLINED_FUNCTION_7())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = OUTLINED_FUNCTION_1(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "unexpected failure: unhandled lock state: %d");
  OUTLINED_FUNCTION_11(v8);
  __break(1u);
}

void _quire_bootstrap_continue2_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_3(a1, a2);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20();
  v8 = OUTLINED_FUNCTION_0_3(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: q->q_attachpath != ((void*)0) -> %llu");
  OUTLINED_FUNCTION_10(v8);
  __break(1u);
}

void _quire_read_agent_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_9_0(a1, a2);
  OUTLINED_FUNCTION_8();
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_2();
  v9 = OUTLINED_FUNCTION_0_2(v3, v4, v5, v6, &_mh_execute_header, v7, v8, "allocation failed: obj = %s, size = %lu, error = %s");
  OUTLINED_FUNCTION_12(v9);
  __break(1u);
}

void getLaunchdDomainForUser_cold_1()
{
  v0 = 136315138;
  v1 = "UNK";
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected domain type %s", &v0, 0xCu);
}

void launchd_session_uncork_cold_1(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to find targetDomain %d", v1, 8u);
}

void launchd_session_uncork_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unpending failed: %@", &v2, 0xCu);
}

uint64_t DERImg4Decode(void *a1, unint64_t a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      result = DERDecodeItem(a1, &v6);
      if (!result)
      {
        if (v6 == 0x2000000000000010)
        {
          v5 = a1[1];
          if (__CFADD__(*a1, v5))
          {
            return 7;
          }

          else
          {
            result = 7;
            if (!__CFADD__(v7, v8) && *a1 + v5 == v7 + v8)
            {
              result = DERParseSequenceContentToObject(&v7, 4u, &DERImg4ItemSpecs, a2, 0x40uLL, 0);
              if (!result)
              {
                return 2 * (DERImg4DecodeTagCompare(a2, 0x494D4734u) != 0);
              }
            }
          }
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadCompression(uint64_t a1, uint64_t a2)
{
  v11 = 2;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceContentToObject(v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        result = DERParseInteger(a2, &v11);
        if (!result)
        {
          if (v11 <= 1)
          {
            return 0;
          }

          else
          {
            return 6;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadWithProperties(uint64_t a1, void *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = DERParseSequenceToObject(a1, 7u, &DERImg4PayloadWithPropertiesItemSpecs, a2, 0xA0uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else if (!a2[10] || (OUTLINED_FUNCTION_1_4(), result = DERImg4DecodePayloadCompression(v7, v8), !result))
        {
          v6 = a2[12];
          v5 = a2 + 12;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_4();
          result = DERImg4DecodePayloadProperties(v5, v9);
          if (!result)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodePayloadProperties(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x50415950u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DERImg4DecodePayload(uint64_t a1, _OWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    bzero(v11, 0xA0uLL);
    result = DERImg4DecodePayloadWithProperties(a1, v11);
    if (result)
    {
      result = DERParseSequenceToObject(a1, 6u, &DERImg4PayloadItemSpecs, a2, 0x90uLL, 0);
      if (!result)
      {
        if (DERImg4DecodeTagCompare(a2, 0x494D3450u))
        {
          return 2;
        }

        else
        {
          v6 = *(a2 + 10);
          v5 = a2 + 5;
          if (!v6)
          {
            return 0;
          }

          OUTLINED_FUNCTION_1_4();
          result = DERImg4DecodePayloadCompression(v5, v10);
          if (!result)
          {
            return 0;
          }
        }
      }
    }

    else
    {
      v7 = v11[1];
      *a2 = v11[0];
      a2[1] = v7;
      v8 = v11[3];
      a2[2] = v11[2];
      a2[3] = v8;
      v9 = v11[5];
      a2[4] = v11[4];
      a2[5] = v9;
    }
  }

  return result;
}

uint64_t DERImg4DecodeRestoreInfo(uint64_t result, _OWORD *a2)
{
  if (result)
  {
    if (!a2)
    {
      return 6;
    }

    *a2 = 0u;
    a2[1] = 0u;
    if (*result && *(result + 8))
    {
      OUTLINED_FUNCTION_0_5();
      result = DERParseSequenceToObject(v3, v4, v5, v6, v7, v8);
      if (result)
      {
        return result;
      }

      if (DERImg4DecodeTagCompare(a2, 0x494D3452u))
      {
        return 2;
      }
    }

    return 0;
  }

  return result;
}