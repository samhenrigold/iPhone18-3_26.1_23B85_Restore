uint64_t llparse__match_sequence_id(unsigned int *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, int a5)
{
  v5 = *a1;
  if (a2 == a3)
  {
LABEL_14:
    *a1 = v5;
    return 1;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *a2;
      v8 = *(a4 + v5);
      if (v5 + 1 == a5)
      {
        v6 = 0;
        v9 = 5;
      }

      else
      {
        v9 = 0;
      }

      if (v7 != v8)
      {
        v6 = 2;
        v9 = 5;
      }

      if (v9)
      {
        break;
      }

      if (v7 == v8)
      {
        ++v5;
      }

      if (++a2 == a3)
      {
        goto LABEL_14;
      }
    }

    *a1 = 0;
    return v6;
  }
}

uint64_t nw_endpoint_create_srv(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {

    return _nw_endpoint_create_srv(a1);
  }

  v2 = __nwlog_obj();
  *buf = 136446210;
  v12 = "nw_endpoint_create_srv";
  v3 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v2, 16, "%{public}s called with null name", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v9 = 0;
  if (__nwlog_fault(v3, &type, &v9))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name";
LABEL_18:
        _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
      }
    }

    else
    {
      if (v9 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v4 = __nwlog_obj();
        v5 = type;
        v8 = os_log_type_enabled(v4, type);
        if (backtrace_string)
        {
          if (v8)
          {
            *buf = 136446466;
            v12 = "nw_endpoint_create_srv";
            v13 = 2082;
            v14 = backtrace_string;
            _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v8)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name, no backtrace";
        goto LABEL_18;
      }

      v4 = __nwlog_obj();
      v5 = type;
      if (os_log_type_enabled(v4, type))
      {
        *buf = 136446210;
        v12 = "nw_endpoint_create_srv";
        v6 = "%{public}s called with null name, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v3)
  {
    free(v3);
  }

  return 0;
}

uint64_t nw_endpoint_get_srv_name(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    srv_name = _nw_endpoint_get_srv_name();
    goto LABEL_3;
  }

  v4 = __nwlog_obj();
  *buf = 136446210;
  v15 = "nw_endpoint_get_srv_name";
  v5 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v4, 16, "%{public}s called with null endpoint", buf, 12);

  type = OS_LOG_TYPE_ERROR;
  v12 = 0;
  if (__nwlog_fault(v5, &type, &v12))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v6, v7, "%{public}s called with null endpoint", buf, 0xCu);
      }
    }

    else if (v12 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v6 = __nwlog_obj();
      v9 = type;
      v10 = os_log_type_enabled(v6, type);
      if (backtrace_string)
      {
        if (v10)
        {
          *buf = 136446466;
          v15 = "nw_endpoint_get_srv_name";
          v16 = 2082;
          v17 = backtrace_string;
          _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v10)
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v6, v9, "%{public}s called with null endpoint, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v6 = __nwlog_obj();
      v11 = type;
      if (os_log_type_enabled(v6, type))
      {
        *buf = 136446210;
        v15 = "nw_endpoint_get_srv_name";
        _os_log_impl(&dword_181A37000, v6, v11, "%{public}s called with null endpoint, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v5)
  {
    free(v5);
  }

  srv_name = 0;
LABEL_3:

  return srv_name;
}

void sub_1827F7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1827F7750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827F7934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1827FDBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58)
{
  _Block_object_dispose(&a53, 8);
  objc_destroyWeak(&a58);
  _Block_object_dispose((v58 - 184), 8);
  _Block_object_dispose((v58 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__50485(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1827FE55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *network_retain(void *object)
{
  if (object)
  {
    return os_retain(object);
  }

  return object;
}

void network_release(void *object)
{
  if (object)
  {
    os_release(object);
  }
}

xpc_object_t nw_xpc_array_get_value_of_type(xpc_object_t result, size_t a2, Class a3)
{
  if (result)
  {
    v5 = result;
    if (object_getClass(result) == MEMORY[0x1E69E9E50] && xpc_array_get_count(v5) > a2)
    {
      result = xpc_array_get_value(v5, a2);
      if (a3 && result)
      {
        v6 = result;
        if (object_getClass(result) == a3)
        {
          return v6;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *nw_xpc_dictionary_contains_key(void *result, const char *a2)
{
  if (result)
  {
    v3 = result;
    Class = object_getClass(result);
    result = 0;
    if (a2)
    {
      if (Class == MEMORY[0x1E69E9E80])
      {
        return (xpc_dictionary_get_value(v3, a2) != 0);
      }
    }
  }

  return result;
}

uint64_t nw_dispatch_data_copyout_from_offset(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v20 = 0;
    *type = 0;
    v15 = type;
    v16 = 0x2000000000;
    v17 = a4;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 0x40000000;
    applier[2] = __nw_dispatch_data_copyout_from_offset_block_invoke;
    applier[3] = &unk_1E6A34370;
    applier[4] = type;
    applier[5] = buf;
    applier[6] = a3;
    applier[7] = a2;
    dispatch_data_apply(a1, applier);
    v4 = *(*&buf[8] + 24);
    _Block_object_dispose(type, 8);
    _Block_object_dispose(buf, 8);
    return v4;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_dispatch_data_copyout_from_offset";
  v7 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s called with null data", buf, 12);
  type[0] = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v7, type, &v18))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v10 = "%{public}s called with null data";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else if (v18 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = type[0];
      v12 = os_log_type_enabled(v8, type[0]);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "nw_dispatch_data_copyout_from_offset";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_18;
      }

      if (v12)
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v10 = "%{public}s called with null data, no backtrace";
        goto LABEL_17;
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = type[0];
      if (os_log_type_enabled(v8, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_dispatch_data_copyout_from_offset";
        v10 = "%{public}s called with null data, backtrace limit exceeded";
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

BOOL __nw_dispatch_data_copyout_from_offset_block_invoke(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1[4] + 8) + 24);
  if (a5 + a3 <= v5)
  {
    return 1;
  }

  v6 = a1[6];
  v7 = *(*(a1[5] + 8) + 24);
  v8 = v6 > v7;
  v9 = v6 - v7;
  if (!v8)
  {
    return 0;
  }

  v10 = v5 >= a3;
  v11 = v5 - a3;
  if (!v10)
  {
    v11 = 0;
  }

  if (v9 >= a5 - v11)
  {
    v12 = a5 - v11;
  }

  else
  {
    v12 = v9;
  }

  memcpy((a1[7] + v7), (a4 + v11), v12);
  *(*(a1[4] + 8) + 24) += v12;
  *(*(a1[5] + 8) + 24) += v12;
  return *(*(a1[5] + 8) + 24) < a1[6];
}

const char *nw_create_buffer_str_slow(unsigned __int8 *a1, uint64_t a2)
{
  if (a1 && (v2 = a2) != 0)
  {
    v3 = a1;
    v6 = 0;
    do
    {
      v4 = *v3++;
      nw_append_format(&v6, "%02x", v4);
      --v2;
    }

    while (v2);
    return v6;
  }

  else
  {

    return nw_calloc_type<unsigned char>(1uLL);
  }
}

unint64_t nw_convert_to_timebase(uint64_t a1)
{
  v2 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v2 = dword_1ED4117CC;
  }

  return time_base * a1 / v2;
}

uint64_t nw_delta_ms(uint64_t a1, uint64_t a2)
{
  v2 = nw_delta_nanos(a1, a2);
  if (v2 > 0xF423FFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v2 / 0xF4240);
  }
}

uint64_t nw_get_future_time_from(uint64_t a1, uint64_t a2)
{
  v4 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v4 = dword_1ED4117CC;
  }

  return v4 * a2 / time_base + a1;
}

uint64_t nw_get_time_before(unint64_t a1, uint64_t a2)
{
  v4 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v4 = dword_1ED4117CC;
  }

  v5 = v4 * a2 / time_base;
  v6 = a1 >= v5;
  v7 = a1 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t nw_get_future_continuous_time(uint64_t a1)
{
  v2 = dword_1ED4117CC;
  if (!dword_1ED4117CC)
  {
    mach_timebase_info(&time_base);
    v2 = dword_1ED4117CC;
  }

  v3 = v2 * a1 / time_base;
  return mach_continuous_time() + v3;
}

uint64_t nw_mach_continuous_approximate_time()
{
  result = mach_continuous_approximate_time();
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

uint64_t nw_unordered_xpc_array_is_equal(xpc_object_t object1, xpc_object_t object2)
{
  v3 = object1 == object2;
  result = object1 == object2;
  if (!v3 && object1 && object2)
  {
    if (xpc_equal(object1, object2))
    {
      return 1;
    }

    else
    {
      Class = object_getClass(object1);
      v7 = MEMORY[0x1E69E9E50];
      if (Class == MEMORY[0x1E69E9E50] && object_getClass(object2) == v7 && (count = xpc_array_get_count(object1), xpc_array_get_count(object2) == count))
      {

        return nw_unordered_xpc_array_is_equal_inner(object1, object2, count);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t nw_unordered_xpc_array_is_equal_inner(xpc_object_t xarray, void *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v6 = 0;
  while (2)
  {
    value = xpc_array_get_value(xarray, v6);
    v8 = 0;
    while (1)
    {
      v9 = xpc_array_get_value(a2, v8);
      if (v9)
      {
        if (xpc_equal(value, v9))
        {
          break;
        }
      }

      if (a3 == ++v8)
      {
        return 0;
      }
    }

    if (++v6 != a3)
    {
      continue;
    }

    break;
  }

  v10 = 0;
  do
  {
    v11 = xpc_array_get_value(a2, v10);
    v12 = 0;
    while (1)
    {
      v14 = xpc_array_get_value(xarray, v12);
      if (v14)
      {
        if (xpc_equal(v11, v14))
        {
          break;
        }
      }

      result = 0;
      if (a3 == ++v12)
      {
        return result;
      }
    }

    ++v10;
    result = 1;
  }

  while (v10 != a3);
  return result;
}

uint64_t NWPBHostEndpointReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v19 = 0;
        v13 = [a2 position] + 1;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 1, v14 <= objc_msgSend(a2, "length")))
        {
          v15 = [a2 data];
          [v15 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v12 |= (v19 & 0x7F) << v10;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v17 = 0;
          goto LABEL_19;
        }
      }

      v17 = [a2 hasError] ? 0 : v12;
LABEL_19:
      if (([a2 hasError] & 1) != 0 || (v17 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v17 >> 3) == 1)
      {
        break;
      }

      if ((v17 >> 3) == 2)
      {
        v5 = &OBJC_IVAR___NWPBHostEndpoint__port;
        goto LABEL_4;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_5:
      v9 = [a2 position];
      if (v9 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v5 = &OBJC_IVAR___NWPBHostEndpoint__hostname;
LABEL_4:
    v6 = PBReaderReadString();
    v7 = *v5;
    v8 = *(a1 + v7);
    *(a1 + v7) = v6;

    goto LABEL_5;
  }

  return [a2 hasError] ^ 1;
}

void nw_encoder_zstd_destroy(unint64_t *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (!*a1 || *(v1 + 904))
    {
LABEL_35:

      free(a1);
      return;
    }

    v2 = *(v1 + 680) > v1 || *(v1 + 688) <= v1;
    v3 = a1;
    if (*(v1 + 3656))
    {
      v4 = *(v1 + 880);
      if (v4)
      {
        v4(*(v1 + 888));
      }

      else
      {
        free(*(v1 + 3656));
      }

      a1 = v3;
    }

    v5 = *(v1 + 3688);
    if (!v5)
    {
      goto LABEL_25;
    }

    v6 = *(v5 + 6048);
    v7 = *(v5 + 6056);
    v8 = *(v5 + 32);
    v9 = v8 > v5 || *(v5 + 40) <= v5;
    *(v5 + 96) = 0;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    if (v8)
    {
      if (!v6)
      {
        free(v8);
        a1 = v3;
        if (v9)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      v6(v7);
      a1 = v3;
    }

    if (v9)
    {
      if (v6)
      {
        (v6)(v7, v5);
LABEL_24:
        a1 = v3;
        goto LABEL_25;
      }

LABEL_23:
      free(v5);
      goto LABEL_24;
    }

LABEL_25:
    *(v1 + 3720) = 0;
    *(v1 + 3688) = 0u;
    *(v1 + 3704) = 0u;
    *(v1 + 3656) = 0u;
    *(v1 + 3672) = 0u;
    v10 = *(v1 + 880);
    v11 = *(v1 + 888);
    v12 = *(v1 + 680);
    *(v1 + 744) = 0;
    *(v1 + 712) = 0u;
    *(v1 + 728) = 0u;
    *(v1 + 680) = 0u;
    *(v1 + 696) = 0u;
    if (v12)
    {
      if (v10)
      {
        v10(v11);
      }

      else
      {
        free(v12);
      }

      a1 = v3;
    }

    if (v2)
    {
      v13 = *(v1 + 880);
      if (v13)
      {
        v13(*(v1 + 888), v1);
      }

      else
      {
        free(v1);
      }

      a1 = v3;
    }

    goto LABEL_35;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  v24 = "nw_encoder_zstd_destroy";
  v15 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v14, 16, "%{public}s called with null encoder", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v21 = 0;
  if (__nwlog_fault(v15, &type, &v21))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_encoder_zstd_destroy";
      v18 = "%{public}s called with null encoder";
      goto LABEL_51;
    }

    if (v21 != 1)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (!os_log_type_enabled(v16, type))
      {
        goto LABEL_52;
      }

      *buf = 136446210;
      v24 = "nw_encoder_zstd_destroy";
      v18 = "%{public}s called with null encoder, backtrace limit exceeded";
      goto LABEL_51;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v17 = type;
    v20 = os_log_type_enabled(v16, type);
    if (backtrace_string)
    {
      if (v20)
      {
        *buf = 136446466;
        v24 = "nw_encoder_zstd_destroy";
        v25 = 2082;
        v26 = backtrace_string;
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null encoder, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_52;
    }

    if (v20)
    {
      *buf = 136446210;
      v24 = "nw_encoder_zstd_destroy";
      v18 = "%{public}s called with null encoder, no backtrace";
LABEL_51:
      _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
    }
  }

LABEL_52:
  if (v15)
  {
    free(v15);
  }
}

void nw_decoder_zstd_destroy(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = *a1;
    if (!*a1 || *(v1 + 30168))
    {
LABEL_29:

      free(a1);
      return;
    }

    v2 = *(v1 + 30136);
    v3 = *(v1 + 30144);
    v4 = *(v1 + 30184);
    v5 = a1;
    if (v4)
    {
      v6 = *(v4 + 27336);
      v7 = *(v4 + 27344);
      if (*v4)
      {
        if (v6)
        {
          (v6)(*(v4 + 27344));
LABEL_9:
          v6(v7, v4);
          goto LABEL_12;
        }

        free(*v4);
      }

      else if (v6)
      {
        goto LABEL_9;
      }

      free(v4);
    }

LABEL_12:
    *(v1 + 30208) = 0;
    *(v1 + 30184) = 0;
    *(v1 + 30192) = 0;
    if (*(v1 + 30240))
    {
      if (v2)
      {
        v2(v3);
      }

      else
      {
        free(*(v1 + 30240));
      }
    }

    *(v1 + 30240) = 0;
    v8 = *(v1 + 30216);
    if (!v8)
    {
      goto LABEL_25;
    }

    if (*v8)
    {
      if (v2)
      {
        v2(v3);
LABEL_21:
        (v2)(v3, v8);
LABEL_24:
        *(v1 + 30216) = 0;
LABEL_25:
        if (v2)
        {
          (v2)(v3, v1);
        }

        else
        {
          free(v1);
        }

        a1 = v5;
        goto LABEL_29;
      }

      free(*v8);
    }

    else if (v2)
    {
      goto LABEL_21;
    }

    free(v8);
    goto LABEL_24;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v19 = "nw_decoder_zstd_destroy";
  v10 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v9, 16, "%{public}s called with null decoder", buf, 12);
  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v10, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v19 = "nw_decoder_zstd_destroy";
      v13 = "%{public}s called with null decoder";
      goto LABEL_45;
    }

    if (v16 != 1)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (!os_log_type_enabled(v11, type))
      {
        goto LABEL_46;
      }

      *buf = 136446210;
      v19 = "nw_decoder_zstd_destroy";
      v13 = "%{public}s called with null decoder, backtrace limit exceeded";
      goto LABEL_45;
    }

    backtrace_string = __nw_create_backtrace_string();
    v11 = __nwlog_obj();
    v12 = type;
    v15 = os_log_type_enabled(v11, type);
    if (backtrace_string)
    {
      if (v15)
      {
        *buf = 136446466;
        v19 = "nw_decoder_zstd_destroy";
        v20 = 2082;
        v21 = backtrace_string;
        _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null decoder, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_46;
    }

    if (v15)
    {
      *buf = 136446210;
      v19 = "nw_decoder_zstd_destroy";
      v13 = "%{public}s called with null decoder, no backtrace";
LABEL_45:
      _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
    }
  }

LABEL_46:
  if (v10)
  {
    free(v10);
  }
}

uint64_t nw_http_get_binary_message_length_inner(nw_protocol_metadata *a1, int a2, unint64_t a3)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_get_binary_message_length_inner";
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v47, 16, "%{public}s called with null metadata", buf, 12);
    v73[0] = 16;
    v71[0] = 0;
    if (!__nwlog_fault(v48, v73, v71))
    {
      goto LABEL_101;
    }

    if (v73[0] == 17)
    {
      v49 = __nwlog_obj();
      v50 = v73[0];
      if (os_log_type_enabled(v49, v73[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null metadata";
LABEL_100:
        _os_log_impl(&dword_181A37000, v49, v50, v51, buf, 0xCu);
      }

LABEL_101:
      if (v48)
      {
        free(v48);
      }

      return 0;
    }

    if (v71[0] != 1)
    {
      v49 = __nwlog_obj();
      v50 = v73[0];
      if (os_log_type_enabled(v49, v73[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null metadata, backtrace limit exceeded";
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = v73[0];
    v54 = os_log_type_enabled(v49, v73[0]);
    if (!backtrace_string)
    {
      if (v54)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null metadata, no backtrace";
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    if (v54)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_get_binary_message_length_inner";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v55 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
LABEL_79:
      _os_log_impl(&dword_181A37000, v49, v50, v55, buf, 0x16u);
    }

LABEL_80:
    free(backtrace_string);
    goto LABEL_101;
  }

  if (a3 && a2)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_http_get_binary_message_length_inner";
    v48 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v52, 16, "%{public}s called with null (!(indeterminate && body_length > 0))", buf, 12);
    v73[0] = 16;
    v71[0] = 0;
    if (!__nwlog_fault(v48, v73, v71))
    {
      goto LABEL_101;
    }

    if (v73[0] == 17)
    {
      v49 = __nwlog_obj();
      v50 = v73[0];
      if (os_log_type_enabled(v49, v73[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null (!(indeterminate && body_length > 0))";
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    if (v71[0] != 1)
    {
      v49 = __nwlog_obj();
      v50 = v73[0];
      if (os_log_type_enabled(v49, v73[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null (!(indeterminate && body_length > 0)), backtrace limit exceeded";
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    backtrace_string = __nw_create_backtrace_string();
    v49 = __nwlog_obj();
    v50 = v73[0];
    v56 = os_log_type_enabled(v49, v73[0]);
    if (!backtrace_string)
    {
      if (v56)
      {
        *buf = 136446210;
        *&buf[4] = "nw_http_get_binary_message_length_inner";
        v51 = "%{public}s called with null (!(indeterminate && body_length > 0)), no backtrace";
        goto LABEL_100;
      }

      goto LABEL_101;
    }

    if (v56)
    {
      *buf = 136446466;
      *&buf[4] = "nw_http_get_binary_message_length_inner";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v55 = "%{public}s called with null (!(indeterminate && body_length > 0)), dumping backtrace:%{public}s";
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v76 = 0;
  type = nw_http_metadata_get_type(a1);
  ++*(*&buf[8] + 24);
  if (type == 1)
  {
    v7 = nw_http_metadata_copy_request(a1);
    if (v7)
    {
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 0x40000000;
      v70[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke;
      v70[3] = &unk_1E6A34510;
      v70[4] = buf;
      v8 = v7;
      v9 = v70;
      _nw_http_request_access_method(v8, v9);

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_2;
      v69[3] = &unk_1E6A34538;
      v69[4] = buf;
      v10 = v8;
      v11 = v69;
      _nw_http_request_access_scheme(v10, v11);

      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 0x40000000;
      v68[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_3;
      v68[3] = &unk_1E6A34560;
      v68[4] = buf;
      v12 = v10;
      v13 = v68;
      _nw_http_request_access_authority(v12, v13);

      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 0x40000000;
      v67[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_4;
      v67[3] = &unk_1E6A34588;
      v67[4] = buf;
      v14 = v12;
      v15 = v67;
      _nw_http_request_access_path(v14, v15);

LABEL_12:
      os_release(v14);
      goto LABEL_13;
    }

    v57 = __nwlog_obj();
    *v73 = 136446210;
    *&v73[4] = "nw_http_get_binary_message_length_inner";
    v58 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v57, 16, "%{public}s called with null request", v73, 12);
    v71[0] = 16;
    LOBYTE(v77) = 0;
    if (__nwlog_fault(v58, v71, &v77))
    {
      if (v71[0] == 17)
      {
        v59 = __nwlog_obj();
        v60 = v71[0];
        if (os_log_type_enabled(v59, v71[0]))
        {
          *v73 = 136446210;
          *&v73[4] = "nw_http_get_binary_message_length_inner";
          v61 = "%{public}s called with null request";
LABEL_106:
          _os_log_impl(&dword_181A37000, v59, v60, v61, v73, 0xCu);
        }
      }

      else if (v77 == 1)
      {
        v62 = __nw_create_backtrace_string();
        v59 = __nwlog_obj();
        v60 = v71[0];
        v63 = os_log_type_enabled(v59, v71[0]);
        if (v62)
        {
          if (v63)
          {
            *v73 = 136446466;
            *&v73[4] = "nw_http_get_binary_message_length_inner";
            *&v73[12] = 2082;
            *&v73[14] = v62;
            _os_log_impl(&dword_181A37000, v59, v60, "%{public}s called with null request, dumping backtrace:%{public}s", v73, 0x16u);
          }

          free(v62);
          goto LABEL_107;
        }

        if (v63)
        {
          *v73 = 136446210;
          *&v73[4] = "nw_http_get_binary_message_length_inner";
          v61 = "%{public}s called with null request, no backtrace";
          goto LABEL_106;
        }
      }

      else
      {
        v59 = __nwlog_obj();
        v60 = v71[0];
        if (os_log_type_enabled(v59, v71[0]))
        {
          *v73 = 136446210;
          *&v73[4] = "nw_http_get_binary_message_length_inner";
          v61 = "%{public}s called with null request, backtrace limit exceeded";
          goto LABEL_106;
        }
      }
    }

LABEL_107:
    if (v58)
    {
      free(v58);
    }

    v41 = 0;
    goto LABEL_48;
  }

  v14 = nw_http_metadata_copy_response(a1);
  status_code = nw_http_response_get_status_code(v14);
  v17 = 4;
  if (status_code < 0x4000)
  {
    v17 = 2;
  }

  if (status_code < 0x40)
  {
    v17 = 1;
  }

  *(*&buf[8] + 24) += v17;
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_13:
  *v73 = 0;
  *&v73[8] = v73;
  *&v73[16] = 0x2000000000;
  v74 = 0;
  v18 = nw_http_metadata_copy_header_fields(a1);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 0x40000000;
  v66[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_5;
  v66[3] = &unk_1E6A345B0;
  v66[4] = v73;
  nw_http_fields_enumerate(v18, v66);
  v19 = *&v73[8];
  v20 = *(*&v73[8] + 24);
  if (a2)
  {
    v21 = *&buf[8];
    v22 = v20 + *(*&buf[8] + 24);
    goto LABEL_45;
  }

  if (v20 >= 0x40)
  {
    if (v20 >= 0x4000)
    {
      if (v20 >> 30)
      {
        if (v20 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v24 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          *v71 = 136446466;
          *&v71[4] = "_http_vle_length";
          *&v71[12] = 2048;
          *&v71[14] = v20;
          v26 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_181A37000, v24, 16, "%{public}s unable to calculate length, value: %llu", v71, 22);
          result = __nwlog_should_abort(v26);
          if (result)
          {
            goto LABEL_110;
          }

          free(v26);
          v23 = 0;
          v19 = *&v73[8];
        }

        else
        {
          v23 = 8;
        }
      }

      else
      {
        v23 = 4;
      }
    }

    else
    {
      v23 = 2;
    }
  }

  else
  {
    v23 = 1;
  }

  v28 = *&buf[8];
  v29 = *(*&buf[8] + 24) + v23;
  *(*&buf[8] + 24) = v29;
  v30 = *(v19 + 24) + v29;
  *(v28 + 24) = v30;
  if (a3 >= 0x40)
  {
    if (a3 >= 0x4000)
    {
      if (a3 >> 30)
      {
        if (a3 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v33 = 3;
          }

          else
          {
            v33 = 2;
          }

          *v71 = 136446466;
          *&v71[4] = "_http_vle_length";
          *&v71[12] = 2048;
          *&v71[14] = a3;
          LODWORD(v64) = 22;
          v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s unable to calculate length, value: %llu", v71, v64);
          result = __nwlog_should_abort(v34);
          if (result)
          {
            goto LABEL_110;
          }

          free(v34);
          v31 = 0;
          v28 = *&buf[8];
          v30 = *(*&buf[8] + 24);
        }

        else
        {
          v31 = 8;
        }
      }

      else
      {
        v31 = 4;
      }
    }

    else
    {
      v31 = 2;
    }
  }

  else
  {
    v31 = 1;
  }

  *(v28 + 24) = v31 + a3 + v30;
  v35 = nw_http_metadata_copy_trailer_fields(a1);
  if (!v35)
  {
    v21 = *&buf[8];
    v22 = *(*&buf[8] + 24);
LABEL_45:
    v41 = v22 + 1;
    *(v21 + 24) = v22 + 1;
    if (!v18)
    {
LABEL_47:
      _Block_object_dispose(v73, 8);
LABEL_48:
      _Block_object_dispose(buf, 8);
      return v41;
    }

LABEL_46:
    os_release(v18);
    goto LABEL_47;
  }

  *v71 = 0;
  *&v71[8] = v71;
  *&v71[16] = 0x2000000000;
  v72 = 0;
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 0x40000000;
  v65[2] = ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_6;
  v65[3] = &unk_1E6A345D8;
  v65[4] = v71;
  v36 = v35;
  v37 = v65;
  _nw_http_fields_enumerate(v36, v37);

  v38 = *&v71[8];
  v39 = *(*&v71[8] + 24);
  if (v39 < 0x40)
  {
    v40 = 1;
    goto LABEL_61;
  }

  if (v39 < 0x4000)
  {
    v40 = 2;
    goto LABEL_61;
  }

  if (!(v39 >> 30))
  {
    v40 = 4;
    goto LABEL_61;
  }

  if (!(v39 >> 62))
  {
    v40 = 8;
    goto LABEL_61;
  }

  v42 = __nwlog_obj();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = 3;
  }

  else
  {
    v43 = 2;
  }

  v77 = 136446466;
  v78 = "_http_vle_length";
  v79 = 2048;
  v80 = v39;
  LODWORD(v64) = 22;
  v44 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s unable to calculate length, value: %llu", &v77, v64);
  result = __nwlog_should_abort(v44);
  if (!result)
  {
    free(v44);
    v40 = 0;
    v38 = *&v71[8];
LABEL_61:
    v45 = *&buf[8];
    v46 = *(*&buf[8] + 24) + v40;
    *(*&buf[8] + 24) = v46;
    *(v45 + 24) = *(v38 + 24) + v46;
    _Block_object_dispose(v71, 8);
    os_release(v36);
    v41 = *(*&buf[8] + 24);
    if (!v18)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_110:
  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_16;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_16;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_16;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v9 = 136446466;
  v10 = "_http_vle_length";
  v11 = 2048;
  v12 = v5;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s unable to calculate length, value: %llu", &v9, 22);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    v4 = 0;
    result = v5;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_2(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_16;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_16;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_16;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v9 = 136446466;
  v10 = "_http_vle_length";
  v11 = 2048;
  v12 = v5;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s unable to calculate length, value: %llu", &v9, 22);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    v4 = 0;
    result = v5;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_3(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_16;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_16;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_16;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v9 = 136446466;
  v10 = "_http_vle_length";
  v11 = 2048;
  v12 = v5;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s unable to calculate length, value: %llu", &v9, 22);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    v4 = 0;
    result = v5;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_4(uint64_t a1, char *__s)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    result = 0;
    v4 = 1;
    goto LABEL_16;
  }

  result = strlen(__s);
  if (result < 0x40)
  {
    v4 = 1;
LABEL_16:
    *(*(*(a1 + 32) + 8) + 24) += v4;
    *(*(*(a1 + 32) + 8) + 24) += result;
    return result;
  }

  if (result < 0x4000)
  {
    v4 = 2;
    goto LABEL_16;
  }

  if (!(result >> 30))
  {
    v4 = 4;
    goto LABEL_16;
  }

  if (!(result >> 62))
  {
    v4 = 8;
    goto LABEL_16;
  }

  v5 = result;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v9 = 136446466;
  v10 = "_http_vle_length";
  v11 = 2048;
  v12 = v5;
  v8 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_181A37000, v6, 16, "%{public}s unable to calculate length, value: %llu", &v9, 22);
  result = __nwlog_should_abort(v8);
  if (!result)
  {
    free(v8);
    v4 = 0;
    result = v5;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_5(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = 1;
LABEL_29:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 136446466;
    v23 = "_http_vle_length";
    v24 = 2048;
    v12 = v9;
    v25 = v9;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s unable to calculate length, value: %llu", &v22, 22);
    result = __nwlog_should_abort(v13);
    if (result)
    {
      goto LABEL_30;
    }

    free(v13);
    v5 = 0;
    a5 = v8;
    a3 = v12;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_29;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_29;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_29;
  }

  v15 = a1;
  v16 = a3;
  v17 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "_http_vle_length";
  v24 = 2048;
  v25 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s unable to calculate length, value: %llu", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v6 = 0;
    a5 = v17;
    a3 = v16;
    a1 = v15;
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t ___ZL39nw_http_get_binary_message_length_innerP20nw_protocol_metadatabm_block_invoke_6(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = 1;
LABEL_29:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 136446466;
    v23 = "_http_vle_length";
    v24 = 2048;
    v12 = v9;
    v25 = v9;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s unable to calculate length, value: %llu", &v22, 22);
    result = __nwlog_should_abort(v13);
    if (result)
    {
      goto LABEL_30;
    }

    free(v13);
    v5 = 0;
    a5 = v8;
    a3 = v12;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_29;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_29;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_29;
  }

  v15 = a1;
  v16 = a3;
  v17 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "_http_vle_length";
  v24 = 2048;
  v25 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s unable to calculate length, value: %llu", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v6 = 0;
    a5 = v17;
    a3 = v16;
    a1 = v15;
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t nw_http_get_indeterminate_binary_message_chunk_length(unint64_t result, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (result >= 0x40)
    {
      if (result >= 0x4000)
      {
        if (result >> 30)
        {
          if (result >> 62)
          {
            v4 = a2;
            v5 = a3;
            v6 = result;
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v7 = gLogObj;
            if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
            {
              v8 = 3;
            }

            else
            {
              v8 = 2;
            }

            *v15 = 136446466;
            *&v15[4] = "_http_vle_length";
            *&v15[12] = 2048;
            *&v15[14] = v6;
            v13 = 22;
            v9 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &dword_181A37000, v7, 16, "%{public}s unable to calculate length, value: %llu", v15, v13);
            result = __nwlog_should_abort(v9);
            if (result)
            {
              __break(1u);
              return result;
            }

            free(v9);
            v3 = 0;
            a3 = v5;
            a2 = v4;
            result = v6;
          }

          else
          {
            v3 = 8;
          }
        }

        else
        {
          v3 = 4;
        }
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 1;
    }

    result += v3;
  }

  if (a2)
  {
    v10 = result + 1;
    if (a3)
    {
      *v15 = 0;
      *&v15[8] = v15;
      *&v15[16] = 0x2000000000;
      v16 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __nw_http_get_indeterminate_binary_message_chunk_length_block_invoke;
      v14[3] = &unk_1E6A34498;
      v14[4] = v15;
      v11 = a3;
      v12 = v14;
      _nw_http_fields_enumerate(v11, v12);

      v10 += *(*&v15[8] + 24);
      _Block_object_dispose(v15, 8);
    }

    return v10 + 1;
  }

  return result;
}

uint64_t __nw_http_get_indeterminate_binary_message_chunk_length_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = 1;
LABEL_29:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 136446466;
    v23 = "_http_vle_length";
    v24 = 2048;
    v12 = v9;
    v25 = v9;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s unable to calculate length, value: %llu", &v22, 22);
    result = __nwlog_should_abort(v13);
    if (result)
    {
      goto LABEL_30;
    }

    free(v13);
    v5 = 0;
    a5 = v8;
    a3 = v12;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_29;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_29;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_29;
  }

  v15 = a1;
  v16 = a3;
  v17 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "_http_vle_length";
  v24 = 2048;
  v25 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s unable to calculate length, value: %llu", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v6 = 0;
    a5 = v17;
    a3 = v16;
    a1 = v15;
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t nw_http_fillout_binary_message_inner(nw_protocol_metadata *a1, int a2, const unsigned __int8 *a3, size_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v251 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v71 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v71, 16, "%{public}s called with null metadata", buf, 12);
    LOBYTE(v237) = 16;
    LOBYTE(v233) = 0;
    if (!__nwlog_fault(v72, &v237, &v233))
    {
      goto LABEL_370;
    }

    if (v237 != 17)
    {
      if (v233 != 1)
      {
        v73 = __nwlog_obj();
        v74 = v237;
        if (os_log_type_enabled(v73, v237))
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v75 = "%{public}s called with null metadata, backtrace limit exceeded";
          goto LABEL_369;
        }

        goto LABEL_370;
      }

      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = v237;
      v85 = os_log_type_enabled(v73, v237);
      if (!backtrace_string)
      {
        if (v85)
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v75 = "%{public}s called with null metadata, no backtrace";
          goto LABEL_369;
        }

        goto LABEL_370;
      }

      if (!v85)
      {
        goto LABEL_198;
      }

      *buf = 136446466;
      v244 = "nw_http_fillout_binary_message_inner";
      v245 = 2082;
      v246 = backtrace_string;
      v86 = "%{public}s called with null metadata, dumping backtrace:%{public}s";
      goto LABEL_197;
    }

    v73 = __nwlog_obj();
    v74 = v237;
    if (!os_log_type_enabled(v73, v237))
    {
      goto LABEL_370;
    }

    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v75 = "%{public}s called with null metadata";
LABEL_369:
    _os_log_impl(&dword_181A37000, v73, v74, v75, buf, 0xCu);
    goto LABEL_370;
  }

  if (!a5)
  {
    v76 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v76, 16, "%{public}s called with null buffer", buf, 12);
    LOBYTE(v237) = 16;
    LOBYTE(v233) = 0;
    if (!__nwlog_fault(v72, &v237, &v233))
    {
      goto LABEL_370;
    }

    if (v237 != 17)
    {
      if (v233 != 1)
      {
        v73 = __nwlog_obj();
        v74 = v237;
        if (os_log_type_enabled(v73, v237))
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v75 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_369;
        }

        goto LABEL_370;
      }

      backtrace_string = __nw_create_backtrace_string();
      v73 = __nwlog_obj();
      v74 = v237;
      v87 = os_log_type_enabled(v73, v237);
      if (!backtrace_string)
      {
        if (v87)
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v75 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_369;
        }

        goto LABEL_370;
      }

      if (!v87)
      {
        goto LABEL_198;
      }

      *buf = 136446466;
      v244 = "nw_http_fillout_binary_message_inner";
      v245 = 2082;
      v246 = backtrace_string;
      v86 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
      goto LABEL_197;
    }

    v73 = __nwlog_obj();
    v74 = v237;
    if (!os_log_type_enabled(v73, v237))
    {
      goto LABEL_370;
    }

    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v75 = "%{public}s called with null buffer";
    goto LABEL_369;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    v82 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v82, 16, "%{public}s called with null (!indeterminate)", buf, 12);
    LOBYTE(v237) = 16;
    LOBYTE(v233) = 0;
    if (!__nwlog_fault(v72, &v237, &v233))
    {
      goto LABEL_370;
    }

    if (v237 == 17)
    {
      v73 = __nwlog_obj();
      v74 = v237;
      if (!os_log_type_enabled(v73, v237))
      {
        goto LABEL_370;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v75 = "%{public}s called with null (!indeterminate)";
      goto LABEL_369;
    }

    if (v233 != 1)
    {
      v73 = __nwlog_obj();
      v74 = v237;
      if (os_log_type_enabled(v73, v237))
      {
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        v75 = "%{public}s called with null (!indeterminate), backtrace limit exceeded";
        goto LABEL_369;
      }

      goto LABEL_370;
    }

    backtrace_string = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = v237;
    v122 = os_log_type_enabled(v73, v237);
    if (!backtrace_string)
    {
      if (v122)
      {
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        v75 = "%{public}s called with null (!indeterminate), no backtrace";
        goto LABEL_369;
      }

      goto LABEL_370;
    }

    if (!v122)
    {
      goto LABEL_198;
    }

    *buf = 136446466;
    v244 = "nw_http_fillout_binary_message_inner";
    v245 = 2082;
    v246 = backtrace_string;
    v86 = "%{public}s called with null (!indeterminate), dumping backtrace:%{public}s";
LABEL_197:
    _os_log_impl(&dword_181A37000, v73, v74, v86, buf, 0x16u);
    goto LABEL_198;
  }

  if (!a3)
  {
    v83 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v72 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v83, 16, "%{public}s called with null body_content", buf, 12);
    LOBYTE(v237) = 16;
    LOBYTE(v233) = 0;
    if (!__nwlog_fault(v72, &v237, &v233))
    {
      goto LABEL_370;
    }

    if (v237 == 17)
    {
      v73 = __nwlog_obj();
      v74 = v237;
      if (os_log_type_enabled(v73, v237))
      {
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        v75 = "%{public}s called with null body_content";
        goto LABEL_369;
      }

LABEL_370:
      if (v72)
      {
        free(v72);
      }

      return 0;
    }

    if (v233 != 1)
    {
      v73 = __nwlog_obj();
      v74 = v237;
      if (os_log_type_enabled(v73, v237))
      {
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        v75 = "%{public}s called with null body_content, backtrace limit exceeded";
        goto LABEL_369;
      }

      goto LABEL_370;
    }

    backtrace_string = __nw_create_backtrace_string();
    v73 = __nwlog_obj();
    v74 = v237;
    v123 = os_log_type_enabled(v73, v237);
    if (!backtrace_string)
    {
      if (v123)
      {
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        v75 = "%{public}s called with null body_content, no backtrace";
        goto LABEL_369;
      }

      goto LABEL_370;
    }

    if (v123)
    {
      *buf = 136446466;
      v244 = "nw_http_fillout_binary_message_inner";
      v245 = 2082;
      v246 = backtrace_string;
      v86 = "%{public}s called with null body_content, dumping backtrace:%{public}s";
      goto LABEL_197;
    }

LABEL_198:
    free(backtrace_string);
    goto LABEL_370;
  }

LABEL_6:
  v12 = nw_http_metadata_get_type(a1);
  v237 = 0;
  v238 = &v237;
  v239 = 0x2000000000;
  v240 = a5;
  v233 = 0;
  v234 = &v233;
  v235 = 0x2000000000;
  v236 = a6;
  if (!a6)
  {
    v77 = __nwlog_obj();
    *buf = 136446210;
    v244 = "_http_safe_append";
    v78 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v77, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
    LOBYTE(__src) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v78, &__src, type))
    {
      goto LABEL_330;
    }

    if (__src == 17)
    {
      v79 = __nwlog_obj();
      v80 = __src;
      if (!os_log_type_enabled(v79, __src))
      {
        goto LABEL_330;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v81 = "%{public}s called with null (*remaining >= length)";
    }

    else if (type[0] == OS_LOG_TYPE_INFO)
    {
      v98 = __nw_create_backtrace_string();
      v79 = __nwlog_obj();
      v80 = __src;
      v99 = os_log_type_enabled(v79, __src);
      if (v98)
      {
        if (v99)
        {
          *buf = 136446466;
          v244 = "_http_safe_append";
          v245 = 2082;
          v246 = v98;
          _os_log_impl(&dword_181A37000, v79, v80, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v98);
LABEL_330:
        if (v78)
        {
          free(v78);
        }

        v238[3] = 0;
        v172 = __nwlog_obj();
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        LODWORD(v211) = 12;
        v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v172, 16, "%{public}s called with null cursor", buf, v211);
        LOBYTE(__src) = 16;
        type[0] = OS_LOG_TYPE_DEFAULT;
        if (!__nwlog_fault(v89, &__src, type))
        {
          goto LABEL_376;
        }

        if (__src == 17)
        {
          v90 = __nwlog_obj();
          v91 = __src;
          if (!os_log_type_enabled(v90, __src))
          {
            goto LABEL_376;
          }

          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v92 = "%{public}s called with null cursor";
          goto LABEL_375;
        }

        if (type[0] != OS_LOG_TYPE_INFO)
        {
          v90 = __nwlog_obj();
          v91 = __src;
          if (!os_log_type_enabled(v90, __src))
          {
            goto LABEL_376;
          }

          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v92 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_375;
        }

        v130 = __nw_create_backtrace_string();
        v90 = __nwlog_obj();
        v91 = __src;
        v173 = os_log_type_enabled(v90, __src);
        if (!v130)
        {
          if (!v173)
          {
            goto LABEL_376;
          }

          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v92 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_375;
        }

        if (v173)
        {
          *buf = 136446466;
          v244 = "nw_http_fillout_binary_message_inner";
          v245 = 2082;
          v246 = v130;
          v132 = "%{public}s called with null cursor, dumping backtrace:%{public}s";
          goto LABEL_340;
        }

LABEL_341:
        free(v130);
        goto LABEL_376;
      }

      if (!v99)
      {
        goto LABEL_330;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v81 = "%{public}s called with null (*remaining >= length), no backtrace";
    }

    else
    {
      v79 = __nwlog_obj();
      v80 = __src;
      if (!os_log_type_enabled(v79, __src))
      {
        goto LABEL_330;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v81 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v79, v80, v81, buf, 0xCu);
    goto LABEL_330;
  }

  v13 = v12 != 1;
  if (v12 == 1)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  if (a2)
  {
    v13 = v14;
  }

  *a5 = v13;
  v236 = a6 - 1;
  v240 = a5 + 1;
  if (v12 == 1)
  {
    v18 = nw_http_metadata_copy_request(a1);
    if (v18)
    {
      v232[0] = MEMORY[0x1E69E9820];
      v232[1] = 0x40000000;
      v232[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke;
      v232[3] = &unk_1E6A34600;
      v232[4] = &v237;
      v232[5] = &v233;
      v19 = v18;
      v20 = v232;
      _nw_http_request_access_method(v19, v20);

      v231[0] = MEMORY[0x1E69E9820];
      v231[1] = 0x40000000;
      v231[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_16;
      v231[3] = &unk_1E6A34628;
      v231[4] = &v237;
      v231[5] = &v233;
      v21 = v19;
      v22 = v231;
      _nw_http_request_access_scheme(v21, v22);

      v230[0] = MEMORY[0x1E69E9820];
      v230[1] = 0x40000000;
      v230[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_18;
      v230[3] = &unk_1E6A34650;
      v230[4] = &v237;
      v230[5] = &v233;
      v23 = v21;
      v24 = v230;
      _nw_http_request_access_authority(v23, v24);

      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 0x40000000;
      v229[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_20;
      v229[3] = &unk_1E6A34678;
      v229[4] = &v237;
      v229[5] = &v233;
      v15 = v23;
      v25 = v229;
      _nw_http_request_access_path(v15, v25);

LABEL_26:
      os_release(v15);
      goto LABEL_27;
    }

    v88 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    v89 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v88, 16, "%{public}s called with null request", buf, 12);
    LOBYTE(__src) = 16;
    type[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v89, &__src, type))
    {
      goto LABEL_376;
    }

    if (__src == 17)
    {
      v90 = __nwlog_obj();
      v91 = __src;
      if (!os_log_type_enabled(v90, __src))
      {
        goto LABEL_376;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v92 = "%{public}s called with null request";
      goto LABEL_375;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      v90 = __nwlog_obj();
      v91 = __src;
      if (!os_log_type_enabled(v90, __src))
      {
        goto LABEL_376;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v92 = "%{public}s called with null request, backtrace limit exceeded";
      goto LABEL_375;
    }

    v130 = __nw_create_backtrace_string();
    v90 = __nwlog_obj();
    v91 = __src;
    v131 = os_log_type_enabled(v90, __src);
    if (!v130)
    {
      if (!v131)
      {
        goto LABEL_376;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v92 = "%{public}s called with null request, no backtrace";
LABEL_375:
      _os_log_impl(&dword_181A37000, v90, v91, v92, buf, 0xCu);
LABEL_376:
      if (v89)
      {
        free(v89);
      }

      goto LABEL_403;
    }

    if (v131)
    {
      *buf = 136446466;
      v244 = "nw_http_fillout_binary_message_inner";
      v245 = 2082;
      v246 = v130;
      v132 = "%{public}s called with null request, dumping backtrace:%{public}s";
LABEL_340:
      _os_log_impl(&dword_181A37000, v90, v91, v132, buf, 0x16u);
      goto LABEL_341;
    }

    goto LABEL_341;
  }

  v15 = nw_http_metadata_copy_response(a1);
  status_code = nw_http_response_get_status_code(v15);
  if (status_code > 0x3F)
  {
    if ((status_code & 0xC000) != 0)
    {
      __src = bswap32(status_code | 0x80000000);
      v17 = 4;
    }

    else
    {
      __src = __rev16(status_code | 0x4000);
      v17 = 2;
    }
  }

  else
  {
    __src = status_code;
    v17 = 1;
  }

  v26 = v238[3];
  if (!v26)
  {
    v93 = __nwlog_obj();
    *buf = 136446210;
    v244 = "_http_safe_append";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v93, 16, "%{public}s called with null buffer", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v217[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v94, type, v217))
    {
      goto LABEL_383;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_383;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null buffer";
      goto LABEL_382;
    }

    if (v217[0] != OS_LOG_TYPE_INFO)
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_383;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_382;
    }

    v133 = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = type[0];
    v134 = os_log_type_enabled(v95, type[0]);
    if (!v133)
    {
      if (!v134)
      {
        goto LABEL_383;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_382;
    }

    if (v134)
    {
      *buf = 136446466;
      v244 = "_http_safe_append";
      v245 = 2082;
      v246 = v133;
      _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v133);
LABEL_383:
    if (!v94)
    {
      goto LABEL_385;
    }

    goto LABEL_384;
  }

  v27 = v234;
  if (v234[3] < v17)
  {
    v100 = __nwlog_obj();
    *buf = 136446210;
    v244 = "_http_safe_append";
    v94 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v100, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
    type[0] = OS_LOG_TYPE_ERROR;
    v217[0] = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v94, type, v217))
    {
      goto LABEL_383;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_383;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null (*remaining >= length)";
      goto LABEL_382;
    }

    if (v217[0] != OS_LOG_TYPE_INFO)
    {
      v95 = __nwlog_obj();
      v96 = type[0];
      if (!os_log_type_enabled(v95, type[0]))
      {
        goto LABEL_383;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
      goto LABEL_382;
    }

    v136 = __nw_create_backtrace_string();
    v95 = __nwlog_obj();
    v96 = type[0];
    v137 = os_log_type_enabled(v95, type[0]);
    if (v136)
    {
      if (v137)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v136;
        _os_log_impl(&dword_181A37000, v95, v96, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v136);
      if (!v94)
      {
LABEL_385:
        v238[3] = 0;
        v178 = __nwlog_obj();
        *buf = 136446210;
        v244 = "nw_http_fillout_binary_message_inner";
        LODWORD(v212) = 12;
        v179 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v178, 16, "%{public}s called with null cursor", buf, v212);
        type[0] = OS_LOG_TYPE_ERROR;
        v217[0] = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v179, type, v217))
        {
          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v180 = __nwlog_obj();
            v181 = type[0];
            if (os_log_type_enabled(v180, type[0]))
            {
              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v182 = "%{public}s called with null cursor";
LABEL_398:
              _os_log_impl(&dword_181A37000, v180, v181, v182, buf, 0xCu);
            }
          }

          else if (v217[0] == OS_LOG_TYPE_INFO)
          {
            v183 = __nw_create_backtrace_string();
            v180 = __nwlog_obj();
            v181 = type[0];
            v184 = os_log_type_enabled(v180, type[0]);
            if (v183)
            {
              if (v184)
              {
                *buf = 136446466;
                v244 = "nw_http_fillout_binary_message_inner";
                v245 = 2082;
                v246 = v183;
                _os_log_impl(&dword_181A37000, v180, v181, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v183);
              goto LABEL_399;
            }

            if (v184)
            {
              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v182 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_398;
            }
          }

          else
          {
            v180 = __nwlog_obj();
            v181 = type[0];
            if (os_log_type_enabled(v180, type[0]))
            {
              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v182 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_398;
            }
          }
        }

LABEL_399:
        if (v179)
        {
          free(v179);
        }

        if (v15)
        {
          os_release(v15);
        }

LABEL_403:
        v55 = 0;
        goto LABEL_80;
      }

LABEL_384:
      free(v94);
      goto LABEL_385;
    }

    if (v137)
    {
      *buf = 136446210;
      v244 = "_http_safe_append";
      v97 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_382:
      _os_log_impl(&dword_181A37000, v95, v96, v97, buf, 0xCu);
      goto LABEL_383;
    }

    goto LABEL_383;
  }

  memcpy(v26, &__src, v17);
  v28 = v27[3];
  v27[3] = v28 - v17;
  if (v28 < v17)
  {
    if (gLogDatapath == 1)
    {
      log = __nwlog_obj();
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
      {
        v135 = v27[3];
        *buf = 136446978;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = "*remaining";
        v247 = 2048;
        v248 = v17;
        v249 = 2048;
        v250 = v135;
        _os_log_impl(&dword_181A37000, log, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v27[3] = 0;
  }

  v238[3] = &v26[v17];
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_27:
  __src = 0;
  p_src = &__src;
  v227 = 0x2000000000;
  v228 = 0;
  v29 = nw_http_metadata_copy_header_fields(a1);
  v224[0] = MEMORY[0x1E69E9820];
  v224[1] = 0x40000000;
  v224[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_22;
  v224[3] = &unk_1E6A346A0;
  v224[4] = &__src;
  nw_http_fields_enumerate(v29, v224);
  if (a2)
  {
    goto LABEL_42;
  }

  v30 = p_src[3];
  if (v30 <= 0x3F)
  {
    *type = p_src[3];
    v31 = 1;
    goto LABEL_36;
  }

  if (!(v30 >> 14))
  {
    *type = bswap32(v30 | 0x4000) >> 16;
    v31 = 2;
    goto LABEL_36;
  }

  if (!(v30 >> 30))
  {
    *type = bswap32(v30 | 0x80000000);
    v31 = 4;
    goto LABEL_36;
  }

  if (!(v30 >> 62))
  {
    *type = bswap64(v30 | 0xC000000000000000);
    v31 = 8;
LABEL_36:
    v32 = v238[3];
    if (v32)
    {
      v33 = v234;
      if (v234[3] >= v31)
      {
        memcpy(v32, type, v31);
        v34 = v33[3];
        v33[3] = v34 - v31;
        if (v34 < v31)
        {
          if (gLogDatapath == 1)
          {
            v146 = __nwlog_obj();
            if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
            {
              v147 = v33[3];
              *buf = 136446978;
              v244 = "_http_safe_append";
              v245 = 2082;
              v246 = "*remaining";
              v247 = 2048;
              v248 = v31;
              v249 = 2048;
              v250 = v147;
              _os_log_impl(&dword_181A37000, v146, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v33[3] = 0;
        }

        v238[3] = &v32[v31];
        goto LABEL_42;
      }

      v112 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v112, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      v217[0] = OS_LOG_TYPE_ERROR;
      v242 = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v103, v217, &v242))
      {
        if (v217[0] == OS_LOG_TYPE_FAULT)
        {
          v104 = __nwlog_obj();
          v105 = v217[0];
          if (!os_log_type_enabled(v104, v217[0]))
          {
            goto LABEL_434;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_433;
        }

        if (v242 != OS_LOG_TYPE_INFO)
        {
          v104 = __nwlog_obj();
          v105 = v217[0];
          if (!os_log_type_enabled(v104, v217[0]))
          {
            goto LABEL_434;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_433;
        }

        v148 = __nw_create_backtrace_string();
        v104 = __nwlog_obj();
        v105 = v217[0];
        v149 = os_log_type_enabled(v104, v217[0]);
        if (v148)
        {
          if (v149)
          {
            *buf = 136446466;
            v244 = "_http_safe_append";
            v245 = 2082;
            v246 = v148;
            _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v148);
          if (!v103)
          {
            goto LABEL_436;
          }

          goto LABEL_435;
        }

        if (v149)
        {
          *buf = 136446210;
          v244 = "_http_safe_append";
          v106 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_433:
          _os_log_impl(&dword_181A37000, v104, v105, v106, buf, 0xCu);
        }
      }
    }

    else
    {
      v102 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      v103 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v102, 16, "%{public}s called with null buffer", buf, 12);
      v217[0] = OS_LOG_TYPE_ERROR;
      v242 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v103, v217, &v242))
      {
        goto LABEL_434;
      }

      if (v217[0] == OS_LOG_TYPE_FAULT)
      {
        v104 = __nwlog_obj();
        v105 = v217[0];
        if (!os_log_type_enabled(v104, v217[0]))
        {
          goto LABEL_434;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v106 = "%{public}s called with null buffer";
        goto LABEL_433;
      }

      if (v242 != OS_LOG_TYPE_INFO)
      {
        v104 = __nwlog_obj();
        v105 = v217[0];
        if (!os_log_type_enabled(v104, v217[0]))
        {
          goto LABEL_434;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v106 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_433;
      }

      v142 = __nw_create_backtrace_string();
      v104 = __nwlog_obj();
      v105 = v217[0];
      v143 = os_log_type_enabled(v104, v217[0]);
      if (!v142)
      {
        if (!v143)
        {
          goto LABEL_434;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v106 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_433;
      }

      if (v143)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v142;
        _os_log_impl(&dword_181A37000, v104, v105, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v142);
    }

LABEL_434:
    if (!v103)
    {
LABEL_436:
      v238[3] = 0;
      goto LABEL_437;
    }

LABEL_435:
    free(v103);
    goto LABEL_436;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v62 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v63 = 3;
  }

  else
  {
    v63 = 2;
  }

  *buf = 136446466;
  v244 = "_http_vle_encode";
  v245 = 2048;
  v246 = v30;
  v64 = _os_log_send_and_compose_impl(v63, 0, 0, 0, &dword_181A37000, v62, 16, "%{public}s unable to encode value: %llu", buf, 22);
  result = __nwlog_should_abort(v64);
  if (result)
  {
    goto LABEL_538;
  }

  free(v64);
  if (!v238[3])
  {
LABEL_437:
    v192 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    LODWORD(v208) = 12;
    v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v192, 16, "%{public}s called with null cursor", buf, v208);
    v217[0] = OS_LOG_TYPE_ERROR;
    v242 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v186, v217, &v242))
    {
      goto LABEL_534;
    }

    if (v217[0] == OS_LOG_TYPE_FAULT)
    {
      v187 = __nwlog_obj();
      v188 = v217[0];
      if (!os_log_type_enabled(v187, v217[0]))
      {
        goto LABEL_534;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v189 = "%{public}s called with null cursor";
    }

    else if (v242 == OS_LOG_TYPE_INFO)
    {
      v193 = __nw_create_backtrace_string();
      v187 = __nwlog_obj();
      v188 = v217[0];
      v194 = os_log_type_enabled(v187, v217[0]);
      if (v193)
      {
        if (v194)
        {
          *buf = 136446466;
          v244 = "nw_http_fillout_binary_message_inner";
          v245 = 2082;
          v246 = v193;
          _os_log_impl(&dword_181A37000, v187, v188, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v193);
LABEL_534:
        if (!v186)
        {
          goto LABEL_536;
        }

        goto LABEL_535;
      }

      if (!v194)
      {
        goto LABEL_534;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v189 = "%{public}s called with null cursor, no backtrace";
    }

    else
    {
      v187 = __nwlog_obj();
      v188 = v217[0];
      if (!os_log_type_enabled(v187, v217[0]))
      {
        goto LABEL_534;
      }

      *buf = 136446210;
      v244 = "nw_http_fillout_binary_message_inner";
      v189 = "%{public}s called with null cursor, backtrace limit exceeded";
    }

LABEL_533:
    _os_log_impl(&dword_181A37000, v187, v188, v189, buf, 0xCu);
    goto LABEL_534;
  }

LABEL_42:
  v223[0] = MEMORY[0x1E69E9820];
  v223[1] = 0x40000000;
  v223[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_24;
  v223[3] = &unk_1E6A346F0;
  v223[4] = &v237;
  v223[5] = &v233;
  nw_http_fields_enumerate_const_field(v29, v223);
  if (a2)
  {
    v35 = v238[3];
    if (!v35)
    {
      v101 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v101, 16, "%{public}s called with null buffer", buf, v208);
      type[0] = OS_LOG_TYPE_ERROR;
      v217[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v38, type, v217))
      {
        goto LABEL_409;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_409;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null buffer";
        goto LABEL_408;
      }

      if (v217[0] != OS_LOG_TYPE_INFO)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_409;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_408;
      }

      v138 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v139 = os_log_type_enabled(v39, type[0]);
      if (!v138)
      {
        if (!v139)
        {
          goto LABEL_409;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_408;
      }

      if (v139)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v138;
        _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v138);
      goto LABEL_409;
    }

    v36 = v234;
    if (!v234[3])
    {
      v37 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v38 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v37, 16, "%{public}s called with null (*remaining >= length)", buf, v208);
      type[0] = OS_LOG_TYPE_ERROR;
      v217[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v38, type, v217))
      {
        goto LABEL_409;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_409;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null (*remaining >= length)";
        goto LABEL_408;
      }

      if (v217[0] != OS_LOG_TYPE_INFO)
      {
        v39 = __nwlog_obj();
        v40 = type[0];
        if (!os_log_type_enabled(v39, type[0]))
        {
          goto LABEL_409;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_408;
      }

      v140 = __nw_create_backtrace_string();
      v39 = __nwlog_obj();
      v40 = type[0];
      v141 = os_log_type_enabled(v39, type[0]);
      if (v140)
      {
        if (v141)
        {
          *buf = 136446466;
          v244 = "_http_safe_append";
          v245 = 2082;
          v246 = v140;
          _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v140);
        if (!v38)
        {
LABEL_411:
          v238[3] = 0;
          v185 = __nwlog_obj();
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          LODWORD(v209) = 12;
          v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v185, 16, "%{public}s called with null cursor", buf, v209);
          type[0] = OS_LOG_TYPE_ERROR;
          v217[0] = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v186, type, v217))
          {
            goto LABEL_534;
          }

          if (type[0] == OS_LOG_TYPE_FAULT)
          {
            v187 = __nwlog_obj();
            v188 = type[0];
            if (!os_log_type_enabled(v187, type[0]))
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor";
            goto LABEL_533;
          }

          if (v217[0] != OS_LOG_TYPE_INFO)
          {
            v187 = __nwlog_obj();
            v188 = type[0];
            if (!os_log_type_enabled(v187, type[0]))
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_533;
          }

          v190 = __nw_create_backtrace_string();
          v187 = __nwlog_obj();
          v188 = type[0];
          v191 = os_log_type_enabled(v187, type[0]);
          if (!v190)
          {
            if (!v191)
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_533;
          }

          if (!v191)
          {
            goto LABEL_527;
          }

LABEL_526:
          *buf = 136446466;
          v244 = "nw_http_fillout_binary_message_inner";
          v245 = 2082;
          v246 = v190;
          _os_log_impl(&dword_181A37000, v187, v188, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
LABEL_527:
          free(v190);
          if (v186)
          {
LABEL_535:
            free(v186);
          }

LABEL_536:
          v55 = 0;
          if (!v29)
          {
            goto LABEL_79;
          }

          goto LABEL_78;
        }

LABEL_410:
        free(v38);
        goto LABEL_411;
      }

      if (v141)
      {
        *buf = 136446210;
        v244 = "_http_safe_append";
        v41 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_408:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }

LABEL_409:
      if (!v38)
      {
        goto LABEL_411;
      }

      goto LABEL_410;
    }

LABEL_74:
    *v35 = 0;
    v54 = v36[3];
    v36[3] = v54 - 1;
    if (!v54)
    {
      if (gLogDatapath == 1)
      {
        v114 = __nwlog_obj();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
        {
          v115 = v36[3];
          *buf = 136446978;
          v244 = "_http_safe_append";
          v245 = 2082;
          v246 = "*remaining";
          v247 = 2048;
          v248 = 1;
          v249 = 2048;
          v250 = v115;
          _os_log_impl(&dword_181A37000, v114, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      v36[3] = 0;
    }

    v238[3] = (v35 + 1);
    v55 = 1;
    if (!v29)
    {
      goto LABEL_79;
    }

LABEL_78:
    os_release(v29);
LABEL_79:
    _Block_object_dispose(&__src, 8);
LABEL_80:
    _Block_object_dispose(&v233, 8);
    _Block_object_dispose(&v237, 8);
    return v55;
  }

  if (a4 > 0x3F)
  {
    if (a4 >> 14)
    {
      if (a4 >> 30)
      {
        if (a4 >> 62)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v65 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            v66 = 3;
          }

          else
          {
            v66 = 2;
          }

          *buf = 136446466;
          v244 = "_http_vle_encode";
          v245 = 2048;
          v246 = a4;
          LODWORD(v208) = 22;
          v67 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s unable to encode value: %llu", buf, v208);
          result = __nwlog_should_abort(v67);
          if (result)
          {
            goto LABEL_538;
          }

          free(v67);
          v46 = v238[3];
          if (v46)
          {
LABEL_63:
            if (a3)
            {
              v47 = v234;
              if (v234[3] >= a4)
              {
                memcpy(v46, a3, a4);
                v48 = v47[3];
                v47[3] = v48 - a4;
                if (v48 < a4)
                {
                  if (gLogDatapath == 1)
                  {
                    v162 = __nwlog_obj();
                    if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
                    {
                      v163 = v47[3];
                      *buf = 136446978;
                      v244 = "_http_safe_append";
                      v245 = 2082;
                      v246 = "*remaining";
                      v247 = 2048;
                      v248 = a4;
                      v249 = 2048;
                      v250 = v163;
                      _os_log_impl(&dword_181A37000, v162, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
                    }
                  }

                  v47[3] = 0;
                }

                v238[3] = &v46[a4];
                goto LABEL_69;
              }

              v121 = __nwlog_obj();
              *buf = 136446210;
              v244 = "_http_safe_append";
              LODWORD(v208) = 12;
              v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v121, 16, "%{public}s called with null (*remaining >= length)", buf, v208);
              type[0] = OS_LOG_TYPE_ERROR;
              v217[0] = OS_LOG_TYPE_DEFAULT;
              if (__nwlog_fault(v117, type, v217))
              {
                if (type[0] == OS_LOG_TYPE_FAULT)
                {
                  v118 = __nwlog_obj();
                  v119 = type[0];
                  if (!os_log_type_enabled(v118, type[0]))
                  {
                    goto LABEL_473;
                  }

                  *buf = 136446210;
                  v244 = "_http_safe_append";
                  v120 = "%{public}s called with null (*remaining >= length)";
                  goto LABEL_472;
                }

                if (v217[0] != OS_LOG_TYPE_INFO)
                {
                  v118 = __nwlog_obj();
                  v119 = type[0];
                  if (!os_log_type_enabled(v118, type[0]))
                  {
                    goto LABEL_473;
                  }

                  *buf = 136446210;
                  v244 = "_http_safe_append";
                  v120 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
                  goto LABEL_472;
                }

                v164 = __nw_create_backtrace_string();
                v118 = __nwlog_obj();
                v119 = type[0];
                v165 = os_log_type_enabled(v118, type[0]);
                if (v164)
                {
                  if (v165)
                  {
                    *buf = 136446466;
                    v244 = "_http_safe_append";
                    v245 = 2082;
                    v246 = v164;
                    _os_log_impl(&dword_181A37000, v118, v119, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
                  }

                  free(v164);
                  if (!v117)
                  {
LABEL_475:
                    v238[3] = 0;
                    v197 = __nwlog_obj();
                    *buf = 136446210;
                    v244 = "nw_http_fillout_binary_message_inner";
                    LODWORD(v213) = 12;
                    v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v197, 16, "%{public}s called with null cursor", buf, v213);
                    type[0] = OS_LOG_TYPE_ERROR;
                    v217[0] = OS_LOG_TYPE_DEFAULT;
                    if ((__nwlog_fault(v186, type, v217) & 1) == 0)
                    {
                      goto LABEL_534;
                    }

                    if (type[0] == OS_LOG_TYPE_FAULT)
                    {
                      v187 = __nwlog_obj();
                      v188 = type[0];
                      if (!os_log_type_enabled(v187, type[0]))
                      {
                        goto LABEL_534;
                      }

                      *buf = 136446210;
                      v244 = "nw_http_fillout_binary_message_inner";
                      v189 = "%{public}s called with null cursor";
                      goto LABEL_533;
                    }

                    if (v217[0] != OS_LOG_TYPE_INFO)
                    {
                      v187 = __nwlog_obj();
                      v188 = type[0];
                      if (!os_log_type_enabled(v187, type[0]))
                      {
                        goto LABEL_534;
                      }

                      *buf = 136446210;
                      v244 = "nw_http_fillout_binary_message_inner";
                      v189 = "%{public}s called with null cursor, backtrace limit exceeded";
                      goto LABEL_533;
                    }

                    v190 = __nw_create_backtrace_string();
                    v187 = __nwlog_obj();
                    v188 = type[0];
                    v198 = os_log_type_enabled(v187, type[0]);
                    if (!v190)
                    {
                      if (!v198)
                      {
                        goto LABEL_534;
                      }

                      *buf = 136446210;
                      v244 = "nw_http_fillout_binary_message_inner";
                      v189 = "%{public}s called with null cursor, no backtrace";
                      goto LABEL_533;
                    }

                    if (!v198)
                    {
                      goto LABEL_527;
                    }

                    goto LABEL_526;
                  }

LABEL_474:
                  free(v117);
                  goto LABEL_475;
                }

                if (v165)
                {
                  *buf = 136446210;
                  v244 = "_http_safe_append";
                  v120 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_472:
                  _os_log_impl(&dword_181A37000, v118, v119, v120, buf, 0xCu);
                }
              }
            }

            else
            {
              v116 = __nwlog_obj();
              *buf = 136446210;
              v244 = "_http_safe_append";
              LODWORD(v208) = 12;
              v117 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v116, 16, "%{public}s called with null data", buf, v208);
              type[0] = OS_LOG_TYPE_ERROR;
              v217[0] = OS_LOG_TYPE_DEFAULT;
              if (!__nwlog_fault(v117, type, v217))
              {
                goto LABEL_473;
              }

              if (type[0] == OS_LOG_TYPE_FAULT)
              {
                v118 = __nwlog_obj();
                v119 = type[0];
                if (!os_log_type_enabled(v118, type[0]))
                {
                  goto LABEL_473;
                }

                *buf = 136446210;
                v244 = "_http_safe_append";
                v120 = "%{public}s called with null data";
                goto LABEL_472;
              }

              if (v217[0] != OS_LOG_TYPE_INFO)
              {
                v118 = __nwlog_obj();
                v119 = type[0];
                if (!os_log_type_enabled(v118, type[0]))
                {
                  goto LABEL_473;
                }

                *buf = 136446210;
                v244 = "_http_safe_append";
                v120 = "%{public}s called with null data, backtrace limit exceeded";
                goto LABEL_472;
              }

              v160 = __nw_create_backtrace_string();
              v118 = __nwlog_obj();
              v119 = type[0];
              v161 = os_log_type_enabled(v118, type[0]);
              if (!v160)
              {
                if (!v161)
                {
                  goto LABEL_473;
                }

                *buf = 136446210;
                v244 = "_http_safe_append";
                v120 = "%{public}s called with null data, no backtrace";
                goto LABEL_472;
              }

              if (v161)
              {
                *buf = 136446466;
                v244 = "_http_safe_append";
                v245 = 2082;
                v246 = v160;
                _os_log_impl(&dword_181A37000, v118, v119, "%{public}s called with null data, dumping backtrace:%{public}s", buf, 0x16u);
              }

              free(v160);
            }

LABEL_473:
            if (!v117)
            {
              goto LABEL_475;
            }

            goto LABEL_474;
          }

LABEL_456:
          v195 = __nwlog_obj();
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          LODWORD(v208) = 12;
          v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v195, 16, "%{public}s called with null cursor", buf, v208);
          v217[0] = OS_LOG_TYPE_ERROR;
          v242 = OS_LOG_TYPE_DEFAULT;
          if (!__nwlog_fault(v186, v217, &v242))
          {
            goto LABEL_534;
          }

          if (v217[0] == OS_LOG_TYPE_FAULT)
          {
            v187 = __nwlog_obj();
            v188 = v217[0];
            if (!os_log_type_enabled(v187, v217[0]))
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor";
            goto LABEL_533;
          }

          if (v242 != OS_LOG_TYPE_INFO)
          {
            v187 = __nwlog_obj();
            v188 = v217[0];
            if (!os_log_type_enabled(v187, v217[0]))
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_533;
          }

          v190 = __nw_create_backtrace_string();
          v187 = __nwlog_obj();
          v188 = v217[0];
          v196 = os_log_type_enabled(v187, v217[0]);
          if (!v190)
          {
            if (!v196)
            {
              goto LABEL_534;
            }

            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            v189 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_533;
          }

          if (!v196)
          {
            goto LABEL_527;
          }

          goto LABEL_526;
        }

        *type = bswap64(a4 | 0xC000000000000000);
        v42 = 8;
      }

      else
      {
        *type = bswap32(a4 | 0x80000000);
        v42 = 4;
      }
    }

    else
    {
      *type = bswap32(a4 | 0x4000) >> 16;
      v42 = 2;
    }
  }

  else
  {
    *type = a4;
    v42 = 1;
  }

  v43 = v238[3];
  if (!v43)
  {
    v107 = __nwlog_obj();
    *buf = 136446210;
    v244 = "_http_safe_append";
    LODWORD(v208) = 12;
    v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v107, 16, "%{public}s called with null buffer", buf, v208);
    v217[0] = OS_LOG_TYPE_ERROR;
    v242 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v108, v217, &v242))
    {
      goto LABEL_453;
    }

    if (v217[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = v217[0];
      if (!os_log_type_enabled(v109, v217[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null buffer";
      goto LABEL_452;
    }

    if (v242 != OS_LOG_TYPE_INFO)
    {
      v109 = __nwlog_obj();
      v110 = v217[0];
      if (!os_log_type_enabled(v109, v217[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null buffer, backtrace limit exceeded";
      goto LABEL_452;
    }

    v144 = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = v217[0];
    v145 = os_log_type_enabled(v109, v217[0]);
    if (!v144)
    {
      if (!v145)
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null buffer, no backtrace";
      goto LABEL_452;
    }

    if (v145)
    {
      *buf = 136446466;
      v244 = "_http_safe_append";
      v245 = 2082;
      v246 = v144;
      _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v144);
LABEL_453:
    if (!v108)
    {
LABEL_455:
      v238[3] = 0;
      goto LABEL_456;
    }

LABEL_454:
    free(v108);
    goto LABEL_455;
  }

  v44 = v234;
  if (v234[3] < v42)
  {
    v113 = __nwlog_obj();
    *buf = 136446210;
    v244 = "_http_safe_append";
    LODWORD(v208) = 12;
    v108 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v113, 16, "%{public}s called with null (*remaining >= length)", buf, v208);
    v217[0] = OS_LOG_TYPE_ERROR;
    v242 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v108, v217, &v242))
    {
      goto LABEL_453;
    }

    if (v217[0] == OS_LOG_TYPE_FAULT)
    {
      v109 = __nwlog_obj();
      v110 = v217[0];
      if (!os_log_type_enabled(v109, v217[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null (*remaining >= length)";
      goto LABEL_452;
    }

    if (v242 != OS_LOG_TYPE_INFO)
    {
      v109 = __nwlog_obj();
      v110 = v217[0];
      if (!os_log_type_enabled(v109, v217[0]))
      {
        goto LABEL_453;
      }

      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
      goto LABEL_452;
    }

    v152 = __nw_create_backtrace_string();
    v109 = __nwlog_obj();
    v110 = v217[0];
    v153 = os_log_type_enabled(v109, v217[0]);
    if (v152)
    {
      if (v153)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v152;
        _os_log_impl(&dword_181A37000, v109, v110, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v152);
      if (!v108)
      {
        goto LABEL_455;
      }

      goto LABEL_454;
    }

    if (v153)
    {
      *buf = 136446210;
      v244 = "_http_safe_append";
      v111 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_452:
      _os_log_impl(&dword_181A37000, v109, v110, v111, buf, 0xCu);
      goto LABEL_453;
    }

    goto LABEL_453;
  }

  memcpy(v43, type, v42);
  v45 = v44[3];
  v44[3] = v45 - v42;
  if (v45 < v42)
  {
    if (gLogDatapath == 1)
    {
      v150 = __nwlog_obj();
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
      {
        v151 = v44[3];
        *buf = 136446978;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = "*remaining";
        v247 = 2048;
        v248 = v42;
        v249 = 2048;
        v250 = v151;
        _os_log_impl(&dword_181A37000, v150, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
      }
    }

    v44[3] = 0;
  }

  v46 = &v43[v42];
  v238[3] = v46;
  if (a4)
  {
    goto LABEL_63;
  }

LABEL_69:
  v49 = nw_http_metadata_copy_trailer_fields(a1);
  if (!v49)
  {
    v35 = v238[3];
    if (v35)
    {
      v36 = v234;
      if (v234[3])
      {
        goto LABEL_74;
      }

      v159 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v155 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v159, 16, "%{public}s called with null (*remaining >= length)", buf, v208);
      type[0] = OS_LOG_TYPE_ERROR;
      v217[0] = OS_LOG_TYPE_DEFAULT;
      if (__nwlog_fault(v155, type, v217))
      {
        if (type[0] == OS_LOG_TYPE_FAULT)
        {
          v156 = __nwlog_obj();
          v157 = type[0];
          if (!os_log_type_enabled(v156, type[0]))
          {
            goto LABEL_517;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v158 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_516;
        }

        if (v217[0] != OS_LOG_TYPE_INFO)
        {
          v156 = __nwlog_obj();
          v157 = type[0];
          if (!os_log_type_enabled(v156, type[0]))
          {
            goto LABEL_517;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v158 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_516;
        }

        v176 = __nw_create_backtrace_string();
        v156 = __nwlog_obj();
        v157 = type[0];
        v177 = os_log_type_enabled(v156, type[0]);
        if (v176)
        {
          if (v177)
          {
            *buf = 136446466;
            v244 = "_http_safe_append";
            v245 = 2082;
            v246 = v176;
            _os_log_impl(&dword_181A37000, v156, v157, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v176);
          if (!v155)
          {
LABEL_519:
            v238[3] = 0;
            v206 = __nwlog_obj();
            *buf = 136446210;
            v244 = "nw_http_fillout_binary_message_inner";
            LODWORD(v214) = 12;
            v186 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v206, 16, "%{public}s called with null cursor", buf, v214);
            type[0] = OS_LOG_TYPE_ERROR;
            v217[0] = OS_LOG_TYPE_DEFAULT;
            if (!__nwlog_fault(v186, type, v217))
            {
              goto LABEL_534;
            }

            if (type[0] == OS_LOG_TYPE_FAULT)
            {
              v187 = __nwlog_obj();
              v188 = type[0];
              if (!os_log_type_enabled(v187, type[0]))
              {
                goto LABEL_534;
              }

              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v189 = "%{public}s called with null cursor";
              goto LABEL_533;
            }

            if (v217[0] != OS_LOG_TYPE_INFO)
            {
              v187 = __nwlog_obj();
              v188 = type[0];
              if (!os_log_type_enabled(v187, type[0]))
              {
                goto LABEL_534;
              }

              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v189 = "%{public}s called with null cursor, backtrace limit exceeded";
              goto LABEL_533;
            }

            v190 = __nw_create_backtrace_string();
            v187 = __nwlog_obj();
            v188 = type[0];
            v207 = os_log_type_enabled(v187, type[0]);
            if (!v190)
            {
              if (!v207)
              {
                goto LABEL_534;
              }

              *buf = 136446210;
              v244 = "nw_http_fillout_binary_message_inner";
              v189 = "%{public}s called with null cursor, no backtrace";
              goto LABEL_533;
            }

            if (!v207)
            {
              goto LABEL_527;
            }

            goto LABEL_526;
          }

LABEL_518:
          free(v155);
          goto LABEL_519;
        }

        if (v177)
        {
          *buf = 136446210;
          v244 = "_http_safe_append";
          v158 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_516:
          _os_log_impl(&dword_181A37000, v156, v157, v158, buf, 0xCu);
        }
      }
    }

    else
    {
      v154 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v155 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v154, 16, "%{public}s called with null buffer", buf, v208);
      type[0] = OS_LOG_TYPE_ERROR;
      v217[0] = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v155, type, v217))
      {
        goto LABEL_517;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        v156 = __nwlog_obj();
        v157 = type[0];
        if (!os_log_type_enabled(v156, type[0]))
        {
          goto LABEL_517;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v158 = "%{public}s called with null buffer";
        goto LABEL_516;
      }

      if (v217[0] != OS_LOG_TYPE_INFO)
      {
        v156 = __nwlog_obj();
        v157 = type[0];
        if (!os_log_type_enabled(v156, type[0]))
        {
          goto LABEL_517;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v158 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_516;
      }

      v174 = __nw_create_backtrace_string();
      v156 = __nwlog_obj();
      v157 = type[0];
      v175 = os_log_type_enabled(v156, type[0]);
      if (!v174)
      {
        if (!v175)
        {
          goto LABEL_517;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v158 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_516;
      }

      if (v175)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v174;
        _os_log_impl(&dword_181A37000, v156, v157, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v174);
    }

LABEL_517:
    if (!v155)
    {
      goto LABEL_519;
    }

    goto LABEL_518;
  }

  *type = 0;
  v220 = type;
  v221 = 0x2000000000;
  v222 = 0;
  v218[0] = MEMORY[0x1E69E9820];
  v218[1] = 0x40000000;
  v218[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_27;
  v218[3] = &unk_1E6A34718;
  v218[4] = type;
  v50 = v49;
  v51 = v218;
  _nw_http_fields_enumerate(v50, v51);

  v52 = *(v220 + 3);
  if (v52 <= 0x3F)
  {
    *v217 = *(v220 + 3);
    v53 = 1;
    goto LABEL_88;
  }

  if (!(v52 >> 14))
  {
    *v217 = bswap32(v52 | 0x4000) >> 16;
    v53 = 2;
    goto LABEL_88;
  }

  if (!(v52 >> 30))
  {
    *v217 = bswap32(v52 | 0x80000000);
    v53 = 4;
    goto LABEL_88;
  }

  if (!(v52 >> 62))
  {
    *v217 = bswap64(v52 | 0xC000000000000000);
    v53 = 8;
LABEL_88:
    v57 = v238[3];
    if (v57)
    {
      v58 = v234;
      if (v234[3] >= v53)
      {
        memcpy(v57, v217, v53);
        v59 = v58[3];
        v58[3] = v59 - v53;
        if (v59 < v53)
        {
          if (gLogDatapath == 1)
          {
            v168 = __nwlog_obj();
            if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
            {
              v169 = v58[3];
              *buf = 136446978;
              v244 = "_http_safe_append";
              v245 = 2082;
              v246 = "*remaining";
              v247 = 2048;
              v248 = v53;
              v249 = 2048;
              v250 = v169;
              _os_log_impl(&dword_181A37000, v168, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          v58[3] = 0;
        }

        v238[3] = &v57[v53];
LABEL_94:
        v216[0] = MEMORY[0x1E69E9820];
        v216[1] = 0x40000000;
        v216[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_29;
        v216[3] = &unk_1E6A34768;
        v216[4] = &v237;
        v216[5] = &v233;
        v60 = v50;
        v61 = v216;
        _nw_http_fields_enumerate_const_field(v60, v61);

        _Block_object_dispose(type, 8);
        os_release(v60);
        v55 = 1;
        if (!v29)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }

      v129 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v129, 16, "%{public}s called with null (*remaining >= length)", buf, v208);
      v242 = OS_LOG_TYPE_ERROR;
      v241 = 0;
      if (__nwlog_fault(v125, &v242, &v241))
      {
        if (v242 == OS_LOG_TYPE_FAULT)
        {
          v126 = __nwlog_obj();
          v127 = v242;
          if (!os_log_type_enabled(v126, v242))
          {
            goto LABEL_492;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v128 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_491;
        }

        if (v241 != 1)
        {
          v126 = __nwlog_obj();
          v127 = v242;
          if (!os_log_type_enabled(v126, v242))
          {
            goto LABEL_492;
          }

          *buf = 136446210;
          v244 = "_http_safe_append";
          v128 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_491;
        }

        v170 = __nw_create_backtrace_string();
        v126 = __nwlog_obj();
        v127 = v242;
        v171 = os_log_type_enabled(v126, v242);
        if (v170)
        {
          if (v171)
          {
            *buf = 136446466;
            v244 = "_http_safe_append";
            v245 = 2082;
            v246 = v170;
            _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v170);
          if (!v125)
          {
            goto LABEL_494;
          }

          goto LABEL_493;
        }

        if (v171)
        {
          *buf = 136446210;
          v244 = "_http_safe_append";
          v128 = "%{public}s called with null (*remaining >= length), no backtrace";
LABEL_491:
          _os_log_impl(&dword_181A37000, v126, v127, v128, buf, 0xCu);
        }
      }
    }

    else
    {
      v124 = __nwlog_obj();
      *buf = 136446210;
      v244 = "_http_safe_append";
      LODWORD(v208) = 12;
      v125 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v124, 16, "%{public}s called with null buffer", buf, v208);
      v242 = OS_LOG_TYPE_ERROR;
      v241 = 0;
      if (!__nwlog_fault(v125, &v242, &v241))
      {
        goto LABEL_492;
      }

      if (v242 == OS_LOG_TYPE_FAULT)
      {
        v126 = __nwlog_obj();
        v127 = v242;
        if (!os_log_type_enabled(v126, v242))
        {
          goto LABEL_492;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v128 = "%{public}s called with null buffer";
        goto LABEL_491;
      }

      if (v241 != 1)
      {
        v126 = __nwlog_obj();
        v127 = v242;
        if (!os_log_type_enabled(v126, v242))
        {
          goto LABEL_492;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v128 = "%{public}s called with null buffer, backtrace limit exceeded";
        goto LABEL_491;
      }

      v166 = __nw_create_backtrace_string();
      v126 = __nwlog_obj();
      v127 = v242;
      v167 = os_log_type_enabled(v126, v242);
      if (!v166)
      {
        if (!v167)
        {
          goto LABEL_492;
        }

        *buf = 136446210;
        v244 = "_http_safe_append";
        v128 = "%{public}s called with null buffer, no backtrace";
        goto LABEL_491;
      }

      if (v167)
      {
        *buf = 136446466;
        v244 = "_http_safe_append";
        v245 = 2082;
        v246 = v166;
        _os_log_impl(&dword_181A37000, v126, v127, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v166);
    }

LABEL_492:
    if (!v125)
    {
LABEL_494:
      v238[3] = 0;
      goto LABEL_495;
    }

LABEL_493:
    free(v125);
    goto LABEL_494;
  }

  v68 = __nwlog_obj();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    v69 = 3;
  }

  else
  {
    v69 = 2;
  }

  *buf = 136446466;
  v244 = "_http_vle_encode";
  v245 = 2048;
  v246 = v52;
  LODWORD(v208) = 22;
  v70 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &dword_181A37000, v68, 16, "%{public}s unable to encode value: %llu", buf, v208);
  result = __nwlog_should_abort(v70);
  if (!result)
  {
    free(v70);
    if (v238[3])
    {
      goto LABEL_94;
    }

LABEL_495:
    v199 = __nwlog_obj();
    *buf = 136446210;
    v244 = "nw_http_fillout_binary_message_inner";
    LODWORD(v210) = 12;
    v200 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v199, 16, "%{public}s called with null cursor", buf, v210);
    v242 = OS_LOG_TYPE_ERROR;
    v241 = 0;
    if (__nwlog_fault(v200, &v242, &v241))
    {
      if (v242 == OS_LOG_TYPE_FAULT)
      {
        v201 = __nwlog_obj();
        v202 = v242;
        if (os_log_type_enabled(v201, v242))
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v203 = "%{public}s called with null cursor";
LABEL_508:
          _os_log_impl(&dword_181A37000, v201, v202, v203, buf, 0xCu);
        }
      }

      else if (v241 == 1)
      {
        v204 = __nw_create_backtrace_string();
        v201 = __nwlog_obj();
        v202 = v242;
        v205 = os_log_type_enabled(v201, v242);
        if (v204)
        {
          if (v205)
          {
            *buf = 136446466;
            v244 = "nw_http_fillout_binary_message_inner";
            v245 = 2082;
            v246 = v204;
            _os_log_impl(&dword_181A37000, v201, v202, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v204);
          goto LABEL_509;
        }

        if (v205)
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v203 = "%{public}s called with null cursor, no backtrace";
          goto LABEL_508;
        }
      }

      else
      {
        v201 = __nwlog_obj();
        v202 = v242;
        if (os_log_type_enabled(v201, v242))
        {
          *buf = 136446210;
          v244 = "nw_http_fillout_binary_message_inner";
          v203 = "%{public}s called with null cursor, backtrace limit exceeded";
          goto LABEL_508;
        }
      }
    }

LABEL_509:
    if (v200)
    {
      free(v200);
    }

    _Block_object_dispose(type, 8);
    os_release(v50);
    goto LABEL_536;
  }

LABEL_538:
  __break(1u);
  return result;
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke(uint64_t a1, char *__s)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v46 = __nwlog_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = *(v11 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v6;
              v65 = 2048;
              v66 = v47;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v48 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v48)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v48)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_77;
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer";
LABEL_114:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }

LABEL_115:
        if (v28)
        {
          free(v28);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v44 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v44)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v44)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v29, v30, v45, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_115;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *buf = 136446466;
  v60 = "_http_vle_encode";
  v61 = 2048;
  v62 = v5;
  v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v19))
  {
    __break(1u);
    return;
  }

  free(v19);
  v20 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v20 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v55) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null cursor", buf, v55);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v22, &type, &v57))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
    }

    else
    {
      if (v57 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        v60 = "nw_http_fillout_binary_message_inner_block_invoke";
        v25 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_107;
      }

      v39 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v40 = os_log_type_enabled(v23, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v60 = "nw_http_fillout_binary_message_inner_block_invoke";
          v61 = 2082;
          v62 = v39;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v22)
        {
          goto LABEL_109;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_107:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_108;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v52 = __nwlog_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = *(v15 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v5;
              v65 = 2048;
              v66 = v53;
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (*remaining >= length)", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v54 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v54)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v54)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_89;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null data", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data";
LABEL_122:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
        }

LABEL_123:
        if (v34)
        {
          free(v34);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v50 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v50)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v50)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_89:
        _os_log_impl(&dword_181A37000, v35, v36, v51, buf, 0x16u);
      }
    }

    free(v49);
    goto LABEL_123;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v60 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v55) = 12;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null cursor", buf, v55);
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, &__src, &type))
  {
    if (__src == 17)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_107;
    }

    v41 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = __src;
    v42 = os_log_type_enabled(v23, __src);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_107;
    }

    if (v42)
    {
      *buf = 136446466;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v61 = 2082;
      v62 = v41;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_108:
  if (v22)
  {
LABEL_109:
    free(v22);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_16(uint64_t a1, char *__s)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v46 = __nwlog_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = *(v11 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v6;
              v65 = 2048;
              v66 = v47;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v48 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v48)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v48)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_77;
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer";
LABEL_114:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }

LABEL_115:
        if (v28)
        {
          free(v28);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v44 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v44)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v44)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v29, v30, v45, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_115;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *buf = 136446466;
  v60 = "_http_vle_encode";
  v61 = 2048;
  v62 = v5;
  v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v19))
  {
    __break(1u);
    return;
  }

  free(v19);
  v20 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v20 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v55) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null cursor", buf, v55);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v22, &type, &v57))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
    }

    else
    {
      if (v57 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        v60 = "nw_http_fillout_binary_message_inner_block_invoke";
        v25 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_107;
      }

      v39 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v40 = os_log_type_enabled(v23, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v60 = "nw_http_fillout_binary_message_inner_block_invoke";
          v61 = 2082;
          v62 = v39;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v22)
        {
          goto LABEL_109;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_107:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_108;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v52 = __nwlog_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = *(v15 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v5;
              v65 = 2048;
              v66 = v53;
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (*remaining >= length)", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v54 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v54)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v54)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_89;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null data", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data";
LABEL_122:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
        }

LABEL_123:
        if (v34)
        {
          free(v34);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v50 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v50)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v50)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_89:
        _os_log_impl(&dword_181A37000, v35, v36, v51, buf, 0x16u);
      }
    }

    free(v49);
    goto LABEL_123;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v60 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v55) = 12;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null cursor", buf, v55);
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, &__src, &type))
  {
    if (__src == 17)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_107;
    }

    v41 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = __src;
    v42 = os_log_type_enabled(v23, __src);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_107;
    }

    if (v42)
    {
      *buf = 136446466;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v61 = 2082;
      v62 = v41;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_108:
  if (v22)
  {
LABEL_109:
    free(v22);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_18(uint64_t a1, char *__s)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v46 = __nwlog_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = *(v11 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v6;
              v65 = 2048;
              v66 = v47;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v48 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v48)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v48)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_77;
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer";
LABEL_114:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }

LABEL_115:
        if (v28)
        {
          free(v28);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v44 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v44)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v44)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v29, v30, v45, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_115;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *buf = 136446466;
  v60 = "_http_vle_encode";
  v61 = 2048;
  v62 = v5;
  v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v19))
  {
    __break(1u);
    return;
  }

  free(v19);
  v20 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v20 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v55) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null cursor", buf, v55);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v22, &type, &v57))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
    }

    else
    {
      if (v57 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        v60 = "nw_http_fillout_binary_message_inner_block_invoke";
        v25 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_107;
      }

      v39 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v40 = os_log_type_enabled(v23, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v60 = "nw_http_fillout_binary_message_inner_block_invoke";
          v61 = 2082;
          v62 = v39;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v22)
        {
          goto LABEL_109;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_107:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_108;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v52 = __nwlog_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = *(v15 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v5;
              v65 = 2048;
              v66 = v53;
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (*remaining >= length)", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v54 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v54)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v54)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_89;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null data", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data";
LABEL_122:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
        }

LABEL_123:
        if (v34)
        {
          free(v34);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v50 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v50)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v50)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_89:
        _os_log_impl(&dword_181A37000, v35, v36, v51, buf, 0x16u);
      }
    }

    free(v49);
    goto LABEL_123;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v60 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v55) = 12;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null cursor", buf, v55);
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, &__src, &type))
  {
    if (__src == 17)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_107;
    }

    v41 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = __src;
    v42 = os_log_type_enabled(v23, __src);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_107;
    }

    if (v42)
    {
      *buf = 136446466;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v61 = 2082;
      v62 = v41;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_108:
  if (v22)
  {
LABEL_109:
    free(v22);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_20(uint64_t a1, char *__s)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v4 = strlen(__s);
  v5 = v4;
  if (v4 <= 0x3F)
  {
LABEL_6:
    __src = v5;
    v6 = 1;
    goto LABEL_7;
  }

  if (!(v4 >> 14))
  {
    __src = bswap32(v4 | 0x4000) >> 16;
    v6 = 2;
    goto LABEL_7;
  }

  if (!(v4 >> 30))
  {
    __src = bswap32(v4 | 0x80000000);
    v6 = 4;
    goto LABEL_7;
  }

  if (!(v4 >> 62))
  {
    __src = bswap64(v4 | 0xC000000000000000);
    v6 = 8;
LABEL_7:
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = *(*(v8 + 8) + 24);
    v10 = v7 + 1;
    if (v9)
    {
      v11 = *(v7[1] + 8);
      if (*(v11 + 24) >= v6)
      {
        memcpy(v9, &__src, v6);
        v12 = *(v11 + 24);
        *(v11 + 24) = v12 - v6;
        if (v12 < v6)
        {
          if (gLogDatapath == 1)
          {
            v46 = __nwlog_obj();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = *(v11 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v6;
              v65 = 2048;
              v66 = v47;
              _os_log_impl(&dword_181A37000, v46, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v11 + 24) = 0;
        }

        v13 = &v9[v6];
        goto LABEL_13;
      }

      v32 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v48 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v48)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v48)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_77;
      }
    }

    else
    {
      v27 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      v28 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v27, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v57 = 0;
      if (!__nwlog_fault(v28, &type, &v57))
      {
        goto LABEL_115;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer";
LABEL_114:
          _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
        }

LABEL_115:
        if (v28)
        {
          free(v28);
        }

        v13 = 0;
        goto LABEL_13;
      }

      if (v57 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type;
      v44 = os_log_type_enabled(v29, type);
      if (!backtrace_string)
      {
        if (v44)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v31 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_114;
        }

        goto LABEL_115;
      }

      if (v44)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = backtrace_string;
        v45 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_77:
        _os_log_impl(&dword_181A37000, v29, v30, v45, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_115;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v17 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v18 = 3;
  }

  else
  {
    v18 = 2;
  }

  *buf = 136446466;
  v60 = "_http_vle_encode";
  v61 = 2048;
  v62 = v5;
  v19 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_181A37000, v17, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v19))
  {
    __break(1u);
    return;
  }

  free(v19);
  v20 = *(a1 + 32);
  v7 = (a1 + 32);
  v13 = *(*(v20 + 8) + 24);
  v10 = v7 + 1;
LABEL_13:
  *(*(*v7 + 8) + 24) = v13;
  v14 = *(*(*v7 + 8) + 24);
  if (!v14)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v60 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v55) = 12;
    v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v21, 16, "%{public}s called with null cursor", buf, v55);
    type = OS_LOG_TYPE_ERROR;
    v57 = 0;
    if (!__nwlog_fault(v22, &type, &v57))
    {
      goto LABEL_108;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (!os_log_type_enabled(v23, type))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
    }

    else
    {
      if (v57 != 1)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (!os_log_type_enabled(v23, type))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        v60 = "nw_http_fillout_binary_message_inner_block_invoke";
        v25 = "%{public}s called with null cursor, backtrace limit exceeded";
        goto LABEL_107;
      }

      v39 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = type;
      v40 = os_log_type_enabled(v23, type);
      if (v39)
      {
        if (v40)
        {
          *buf = 136446466;
          v60 = "nw_http_fillout_binary_message_inner_block_invoke";
          v61 = 2082;
          v62 = v39;
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (v22)
        {
          goto LABEL_109;
        }

        return;
      }

      if (!v40)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
    }

LABEL_107:
    _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
    goto LABEL_108;
  }

  if (v5)
  {
    if (__s)
    {
      v15 = *(*v10 + 8);
      if (*(v15 + 24) >= v5)
      {
        memcpy(v14, __s, v5);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 - v5;
        if (v16 < v5)
        {
          if (gLogDatapath == 1)
          {
            v52 = __nwlog_obj();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = *(v15 + 24);
              *buf = 136446978;
              v60 = "_http_safe_append";
              v61 = 2082;
              v62 = "*remaining";
              v63 = 2048;
              v64 = v5;
              v65 = 2048;
              v66 = v53;
              _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v15 + 24) = 0;
        }

        v14 += v5;
        goto LABEL_21;
      }

      v38 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v38, 16, "%{public}s called with null (*remaining >= length)", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v54 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v54)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v54)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_89;
      }
    }

    else
    {
      v33 = __nwlog_obj();
      *buf = 136446210;
      v60 = "_http_safe_append";
      LODWORD(v55) = 12;
      v34 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v33, 16, "%{public}s called with null data", buf, v55);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v34, &__src, &type))
      {
        goto LABEL_123;
      }

      if (__src == 17)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data";
LABEL_122:
          _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
        }

LABEL_123:
        if (v34)
        {
          free(v34);
        }

        v14 = 0;
        goto LABEL_21;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v35 = __nwlog_obj();
        v36 = __src;
        if (os_log_type_enabled(v35, __src))
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      v49 = __nw_create_backtrace_string();
      v35 = __nwlog_obj();
      v36 = __src;
      v50 = os_log_type_enabled(v35, __src);
      if (!v49)
      {
        if (v50)
        {
          *buf = 136446210;
          v60 = "_http_safe_append";
          v37 = "%{public}s called with null data, no backtrace";
          goto LABEL_122;
        }

        goto LABEL_123;
      }

      if (v50)
      {
        *buf = 136446466;
        v60 = "_http_safe_append";
        v61 = 2082;
        v62 = v49;
        v51 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_89:
        _os_log_impl(&dword_181A37000, v35, v36, v51, buf, 0x16u);
      }
    }

    free(v49);
    goto LABEL_123;
  }

LABEL_21:
  *(*(*v7 + 8) + 24) = v14;
  if (*(*(*v7 + 8) + 24))
  {
    return;
  }

  v26 = __nwlog_obj();
  *buf = 136446210;
  v60 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v55) = 12;
  v22 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v26, 16, "%{public}s called with null cursor", buf, v55);
  LOBYTE(__src) = 16;
  type = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v22, &__src, &type))
  {
    if (__src == 17)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor";
      goto LABEL_107;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v23 = __nwlog_obj();
      v24 = __src;
      if (!os_log_type_enabled(v23, __src))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_107;
    }

    v41 = __nw_create_backtrace_string();
    v23 = __nwlog_obj();
    v24 = __src;
    v42 = os_log_type_enabled(v23, __src);
    if (!v41)
    {
      if (!v42)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v25 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_107;
    }

    if (v42)
    {
      *buf = 136446466;
      v60 = "nw_http_fillout_binary_message_inner_block_invoke";
      v61 = 2082;
      v62 = v41;
      _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(v41);
  }

LABEL_108:
  if (v22)
  {
LABEL_109:
    free(v22);
  }
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_22(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = 1;
LABEL_29:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 136446466;
    v23 = "_http_vle_length";
    v24 = 2048;
    v12 = v9;
    v25 = v9;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s unable to calculate length, value: %llu", &v22, 22);
    result = __nwlog_should_abort(v13);
    if (result)
    {
      goto LABEL_30;
    }

    free(v13);
    v5 = 0;
    a5 = v8;
    a3 = v12;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_29;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_29;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_29;
  }

  v15 = a1;
  v16 = a3;
  v17 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "_http_vle_length";
  v24 = 2048;
  v25 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s unable to calculate length, value: %llu", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v6 = 0;
    a5 = v17;
    a3 = v16;
    a1 = v15;
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2;
  v4[3] = &unk_1E6A346C8;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_27(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 < 0x40)
  {
    v5 = 1;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

LABEL_12:
    v6 = 1;
LABEL_29:
    *(*(*(a1 + 32) + 8) + 24) += a5 + a3 + v5 + v6;
    return 1;
  }

  if (a3 < 0x4000)
  {
    v5 = 2;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (!(a3 >> 30))
  {
    v5 = 4;
    if (a5 >= 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a3 >> 62)
  {
    v7 = a1;
    v8 = a5;
    v9 = a3;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v22 = 136446466;
    v23 = "_http_vle_length";
    v24 = 2048;
    v12 = v9;
    v25 = v9;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_181A37000, v10, 16, "%{public}s unable to calculate length, value: %llu", &v22, 22);
    result = __nwlog_should_abort(v13);
    if (result)
    {
      goto LABEL_30;
    }

    free(v13);
    v5 = 0;
    a5 = v8;
    a3 = v12;
    a1 = v7;
    if (v8 < 0x40)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 8;
    if (a5 < 0x40)
    {
      goto LABEL_12;
    }
  }

LABEL_18:
  if (a5 < 0x4000)
  {
    v6 = 2;
    goto LABEL_29;
  }

  if (!(a5 >> 30))
  {
    v6 = 4;
    goto LABEL_29;
  }

  if (!(a5 >> 62))
  {
    v6 = 8;
    goto LABEL_29;
  }

  v15 = a1;
  v16 = a3;
  v17 = a5;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v18 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  v22 = 136446466;
  v23 = "_http_vle_length";
  v24 = 2048;
  v25 = v17;
  LODWORD(v21) = 22;
  v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_181A37000, v18, 16, "%{public}s unable to calculate length, value: %llu", &v22, v21);
  result = __nwlog_should_abort(v20);
  if (!result)
  {
    free(v20);
    v6 = 0;
    a5 = v17;
    a3 = v16;
    a1 = v15;
    goto LABEL_29;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_29(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2_30;
  v4[3] = &unk_1E6A34740;
  v5 = *(a1 + 32);
  nw_http_field_access_canonical(a3, v4);
  return 1;
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2_30(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3F)
  {
    __src = a3;
    v10 = 1;
    goto LABEL_9;
  }

  if (!(a3 >> 14))
  {
    __src = bswap32(a3 | 0x4000) >> 16;
    v10 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    __src = bswap32(a3 | 0x80000000);
    v10 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    __src = bswap64(a3 | 0xC000000000000000);
    v10 = 8;
LABEL_9:
    v11 = a1 + 32;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = a1 + 40;
    if (v12)
    {
      v14 = *(*(a1 + 40) + 8);
      if (*(v14 + 24) >= v10)
      {
        memcpy(v12, &__src, v10);
        v15 = *(v14 + 24);
        *(v14 + 24) = v15 - v10;
        if (v15 < v10)
        {
          if (gLogDatapath == 1)
          {
            v75 = __nwlog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(v14 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = v10;
              v104 = 2048;
              v105 = v76;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v14 + 24) = 0;
        }

        v16 = &v12[v10];
        goto LABEL_15;
      }

      v48 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v77 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v77)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v77)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_130;
      }
    }

    else
    {
      v43 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer";
LABEL_200:
          _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
        }

LABEL_201:
        if (v44)
        {
          free(v44);
        }

        v16 = 0;
        goto LABEL_15;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v73 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v73)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v73)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_130:
        _os_log_impl(&dword_181A37000, v45, v46, v74, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_201;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *buf = 136446466;
  v99 = "_http_vle_encode";
  v100 = 2048;
  v101 = a3;
  v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v30))
  {
    goto LABEL_226;
  }

  free(v30);
  v31 = *(a1 + 32);
  v11 = a1 + 32;
  v16 = *(*(v31 + 8) + 24);
  v13 = v11 + 8;
LABEL_15:
  *(*(*v11 + 8) + 24) = v16;
  v17 = *(*(*v11 + 8) + 24);
  if (!v17)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke_2";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null cursor", buf, v94);
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v36, &type, &v96))
    {
      goto LABEL_194;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor";
LABEL_193:
      _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      goto LABEL_194;
    }

    if (v96 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v67 = os_log_type_enabled(v37, type);
    if (!v66)
    {
      if (!v67)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v67)
    {
      goto LABEL_113;
    }

LABEL_112:
    *buf = 136446466;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v100 = 2082;
    v101 = v66;
    _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    goto LABEL_113;
  }

  if (a3)
  {
    if (a2)
    {
      v18 = *(*v13 + 8);
      if (*(v18 + 24) >= a3)
      {
        memcpy(v17, a2, a3);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 - a3;
        if (v19 < a3)
        {
          if (gLogDatapath == 1)
          {
            v85 = __nwlog_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v86 = *(v18 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a3;
              v104 = 2048;
              v105 = v86;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v18 + 24) = 0;
        }

        v17 += a3;
        goto LABEL_23;
      }

      v59 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v87 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v87)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v87)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_149;
      }
    }

    else
    {
      v54 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data";
LABEL_214:
          _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
        }

LABEL_215:
        if (v55)
        {
          free(v55);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v83 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v83)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v83)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_149:
        _os_log_impl(&dword_181A37000, v56, v57, v84, buf, 0x16u);
      }
    }

    free(v82);
    goto LABEL_215;
  }

LABEL_23:
  *(*(*v11 + 8) + 24) = v17;
  v20 = *(*(*v11 + 8) + 24);
  if (!v20)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null cursor", buf, v94);
    LOBYTE(__src) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v36, &__src, &type))
    {
      goto LABEL_194;
    }

    if (__src == 17)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor";
      goto LABEL_193;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = __src;
    v68 = os_log_type_enabled(v37, __src);
    if (!v66)
    {
      if (!v68)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v68)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (a5 <= 0x3F)
  {
    __src = a5;
    v21 = 1;
    goto LABEL_32;
  }

  if (!(a5 >> 14))
  {
    __src = bswap32(a5 | 0x4000) >> 16;
    v21 = 2;
    goto LABEL_32;
  }

  if (!(a5 >> 30))
  {
    __src = bswap32(a5 | 0x80000000);
    v21 = 4;
    goto LABEL_32;
  }

  if (a5 >> 62)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *buf = 136446466;
    v99 = "_http_vle_encode";
    v100 = 2048;
    v101 = a5;
    LODWORD(v94) = 22;
    v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s unable to encode value: %llu", buf, v94);
    if (!__nwlog_should_abort(v34))
    {
      free(v34);
      v24 = *(*(*v11 + 8) + 24);
      goto LABEL_37;
    }

LABEL_226:
    __break(1u);
    return;
  }

  __src = bswap64(a5 | 0xC000000000000000);
  v21 = 8;
LABEL_32:
  v22 = *(*v13 + 8);
  if (*(v22 + 24) >= v21)
  {
    memcpy(v20, &__src, v21);
    v23 = *(v22 + 24);
    *(v22 + 24) = v23 - v21;
    if (v23 < v21)
    {
      if (gLogDatapath == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = *(v22 + 24);
          *buf = 136446978;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = "*remaining";
          v102 = 2048;
          v103 = v21;
          v104 = 2048;
          v105 = v79;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      *(v22 + 24) = 0;
    }

    v24 = &v20[v21];
    goto LABEL_37;
  }

  v49 = __nwlog_obj();
  *buf = 136446210;
  v99 = "_http_safe_append";
  LODWORD(v94) = 12;
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (__nwlog_fault(v50, &type, &v96))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length)";
LABEL_206:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v80 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v81 = os_log_type_enabled(v51, type);
      if (v80)
      {
        if (v81)
        {
          *buf = 136446466;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = v80;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        goto LABEL_207;
      }

      if (v81)
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), no backtrace";
        goto LABEL_206;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_206;
      }
    }
  }

LABEL_207:
  if (v50)
  {
    free(v50);
  }

  v24 = 0;
LABEL_37:
  *(*(*v11 + 8) + 24) = v24;
  v25 = *(*(*v11 + 8) + 24);
  if (v25)
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    if (a4)
    {
      v26 = *(*v13 + 8);
      if (*(v26 + 24) >= a5)
      {
        memcpy(v25, a4, a5);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 - a5;
        if (v27 < a5)
        {
          if (gLogDatapath == 1)
          {
            v91 = __nwlog_obj();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = *(v26 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a5;
              v104 = 2048;
              v105 = v92;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v26 + 24) = 0;
        }

        v25 += a5;
        goto LABEL_45;
      }

      v65 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v93 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v93)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v93)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_161;
      }
    }

    else
    {
      v60 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data";
LABEL_222:
          _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
        }

LABEL_223:
        if (v61)
        {
          free(v61);
        }

        v25 = 0;
LABEL_45:
        *(*(*v11 + 8) + 24) = v25;
        if (*(*(*v11 + 8) + 24))
        {
          return;
        }

        v42 = __nwlog_obj();
        *buf = 136446210;
        v99 = "nw_http_fillout_binary_message_inner_block_invoke";
        LODWORD(v94) = 12;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null cursor", buf, v94);
        LOBYTE(__src) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v36, &__src, &type))
        {
          if (__src == 17)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor";
            goto LABEL_193;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_193;
          }

          v70 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = __src;
          v71 = os_log_type_enabled(v37, __src);
          if (!v70)
          {
            if (!v71)
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_193;
          }

          if (v71)
          {
            *buf = 136446466;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v100 = 2082;
            v101 = v70;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v70);
        }

LABEL_194:
        if (v36)
        {
          goto LABEL_195;
        }

        return;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v89 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v89)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v89)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_161:
        _os_log_impl(&dword_181A37000, v62, v63, v90, buf, 0x16u);
      }
    }

    free(v88);
    goto LABEL_223;
  }

  v41 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v94) = 12;
  v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null cursor", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (!__nwlog_fault(v36, &type, &v96))
  {
    goto LABEL_194;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor";
    goto LABEL_193;
  }

  if (v96 != 1)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor, backtrace limit exceeded";
    goto LABEL_193;
  }

  v66 = __nw_create_backtrace_string();
  v37 = __nwlog_obj();
  v38 = type;
  v69 = os_log_type_enabled(v37, type);
  if (!v66)
  {
    if (!v69)
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor, no backtrace";
    goto LABEL_193;
  }

  if (v69)
  {
    goto LABEL_112;
  }

LABEL_113:
  free(v66);
  if (v36)
  {
LABEL_195:
    free(v36);
  }
}

void ___ZL36nw_http_fillout_binary_message_innerP20nw_protocol_metadatabPKhmPhm_block_invoke_2(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x3F)
  {
    __src = a3;
    v10 = 1;
    goto LABEL_9;
  }

  if (!(a3 >> 14))
  {
    __src = bswap32(a3 | 0x4000) >> 16;
    v10 = 2;
    goto LABEL_9;
  }

  if (!(a3 >> 30))
  {
    __src = bswap32(a3 | 0x80000000);
    v10 = 4;
    goto LABEL_9;
  }

  if (!(a3 >> 62))
  {
    __src = bswap64(a3 | 0xC000000000000000);
    v10 = 8;
LABEL_9:
    v11 = a1 + 32;
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = a1 + 40;
    if (v12)
    {
      v14 = *(*(a1 + 40) + 8);
      if (*(v14 + 24) >= v10)
      {
        memcpy(v12, &__src, v10);
        v15 = *(v14 + 24);
        *(v14 + 24) = v15 - v10;
        if (v15 < v10)
        {
          if (gLogDatapath == 1)
          {
            v75 = __nwlog_obj();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
            {
              v76 = *(v14 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = v10;
              v104 = 2048;
              v105 = v76;
              _os_log_impl(&dword_181A37000, v75, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v14 + 24) = 0;
        }

        v16 = &v12[v10];
        goto LABEL_15;
      }

      v48 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v48, 16, "%{public}s called with null (*remaining >= length)", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v77 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v77)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v77)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_130;
      }
    }

    else
    {
      v43 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      v44 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v43, 16, "%{public}s called with null buffer", buf, 12);
      type = OS_LOG_TYPE_ERROR;
      v96 = 0;
      if (!__nwlog_fault(v44, &type, &v96))
      {
        goto LABEL_201;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer";
LABEL_200:
          _os_log_impl(&dword_181A37000, v45, v46, v47, buf, 0xCu);
        }

LABEL_201:
        if (v44)
        {
          free(v44);
        }

        v16 = 0;
        goto LABEL_15;
      }

      if (v96 != 1)
      {
        v45 = __nwlog_obj();
        v46 = type;
        if (os_log_type_enabled(v45, type))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, backtrace limit exceeded";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      backtrace_string = __nw_create_backtrace_string();
      v45 = __nwlog_obj();
      v46 = type;
      v73 = os_log_type_enabled(v45, type);
      if (!backtrace_string)
      {
        if (v73)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v47 = "%{public}s called with null buffer, no backtrace";
          goto LABEL_200;
        }

        goto LABEL_201;
      }

      if (v73)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = backtrace_string;
        v74 = "%{public}s called with null buffer, dumping backtrace:%{public}s";
LABEL_130:
        _os_log_impl(&dword_181A37000, v45, v46, v74, buf, 0x16u);
      }
    }

    free(backtrace_string);
    goto LABEL_201;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  *buf = 136446466;
  v99 = "_http_vle_encode";
  v100 = 2048;
  v101 = a3;
  v30 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &dword_181A37000, v28, 16, "%{public}s unable to encode value: %llu", buf, 22);
  if (__nwlog_should_abort(v30))
  {
    goto LABEL_226;
  }

  free(v30);
  v31 = *(a1 + 32);
  v11 = a1 + 32;
  v16 = *(*(v31 + 8) + 24);
  v13 = v11 + 8;
LABEL_15:
  *(*(*v11 + 8) + 24) = v16;
  v17 = *(*(*v11 + 8) + 24);
  if (!v17)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke_2";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v35, 16, "%{public}s called with null cursor", buf, v94);
    type = OS_LOG_TYPE_ERROR;
    v96 = 0;
    if (!__nwlog_fault(v36, &type, &v96))
    {
      goto LABEL_194;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor";
LABEL_193:
      _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      goto LABEL_194;
    }

    if (v96 != 1)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (!os_log_type_enabled(v37, type))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = type;
    v67 = os_log_type_enabled(v37, type);
    if (!v66)
    {
      if (!v67)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v67)
    {
      goto LABEL_113;
    }

LABEL_112:
    *buf = 136446466;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v100 = 2082;
    v101 = v66;
    _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
    goto LABEL_113;
  }

  if (a3)
  {
    if (a2)
    {
      v18 = *(*v13 + 8);
      if (*(v18 + 24) >= a3)
      {
        memcpy(v17, a2, a3);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 - a3;
        if (v19 < a3)
        {
          if (gLogDatapath == 1)
          {
            v85 = __nwlog_obj();
            if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
            {
              v86 = *(v18 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a3;
              v104 = 2048;
              v105 = v86;
              _os_log_impl(&dword_181A37000, v85, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v18 + 24) = 0;
        }

        v17 += a3;
        goto LABEL_23;
      }

      v59 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v59, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v87 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v87)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v87)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_149;
      }
    }

    else
    {
      v54 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v55 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v54, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v55, &__src, &type))
      {
        goto LABEL_215;
      }

      if (__src == 17)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data";
LABEL_214:
          _os_log_impl(&dword_181A37000, v56, v57, v58, buf, 0xCu);
        }

LABEL_215:
        if (v55)
        {
          free(v55);
        }

        v17 = 0;
        goto LABEL_23;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v56 = __nwlog_obj();
        v57 = __src;
        if (os_log_type_enabled(v56, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      v82 = __nw_create_backtrace_string();
      v56 = __nwlog_obj();
      v57 = __src;
      v83 = os_log_type_enabled(v56, __src);
      if (!v82)
      {
        if (v83)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v58 = "%{public}s called with null data, no backtrace";
          goto LABEL_214;
        }

        goto LABEL_215;
      }

      if (v83)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v82;
        v84 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_149:
        _os_log_impl(&dword_181A37000, v56, v57, v84, buf, 0x16u);
      }
    }

    free(v82);
    goto LABEL_215;
  }

LABEL_23:
  *(*(*v11 + 8) + 24) = v17;
  v20 = *(*(*v11 + 8) + 24);
  if (!v20)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    LODWORD(v94) = 12;
    v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v40, 16, "%{public}s called with null cursor", buf, v94);
    LOBYTE(__src) = 16;
    type = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v36, &__src, &type))
    {
      goto LABEL_194;
    }

    if (__src == 17)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor";
      goto LABEL_193;
    }

    if (type != OS_LOG_TYPE_INFO)
    {
      v37 = __nwlog_obj();
      v38 = __src;
      if (!os_log_type_enabled(v37, __src))
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, backtrace limit exceeded";
      goto LABEL_193;
    }

    v66 = __nw_create_backtrace_string();
    v37 = __nwlog_obj();
    v38 = __src;
    v68 = os_log_type_enabled(v37, __src);
    if (!v66)
    {
      if (!v68)
      {
        goto LABEL_194;
      }

      *buf = 136446210;
      v99 = "nw_http_fillout_binary_message_inner_block_invoke";
      v39 = "%{public}s called with null cursor, no backtrace";
      goto LABEL_193;
    }

    if (!v68)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (a5 <= 0x3F)
  {
    __src = a5;
    v21 = 1;
    goto LABEL_32;
  }

  if (!(a5 >> 14))
  {
    __src = bswap32(a5 | 0x4000) >> 16;
    v21 = 2;
    goto LABEL_32;
  }

  if (!(a5 >> 30))
  {
    __src = bswap32(a5 | 0x80000000);
    v21 = 4;
    goto LABEL_32;
  }

  if (a5 >> 62)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v32 = gLogObj;
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *buf = 136446466;
    v99 = "_http_vle_encode";
    v100 = 2048;
    v101 = a5;
    LODWORD(v94) = 22;
    v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &dword_181A37000, v32, 16, "%{public}s unable to encode value: %llu", buf, v94);
    if (!__nwlog_should_abort(v34))
    {
      free(v34);
      v24 = *(*(*v11 + 8) + 24);
      goto LABEL_37;
    }

LABEL_226:
    __break(1u);
    return;
  }

  __src = bswap64(a5 | 0xC000000000000000);
  v21 = 8;
LABEL_32:
  v22 = *(*v13 + 8);
  if (*(v22 + 24) >= v21)
  {
    memcpy(v20, &__src, v21);
    v23 = *(v22 + 24);
    *(v22 + 24) = v23 - v21;
    if (v23 < v21)
    {
      if (gLogDatapath == 1)
      {
        v78 = __nwlog_obj();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = *(v22 + 24);
          *buf = 136446978;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = "*remaining";
          v102 = 2048;
          v103 = v21;
          v104 = 2048;
          v105 = v79;
          _os_log_impl(&dword_181A37000, v78, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
        }
      }

      *(v22 + 24) = 0;
    }

    v24 = &v20[v21];
    goto LABEL_37;
  }

  v49 = __nwlog_obj();
  *buf = 136446210;
  v99 = "_http_safe_append";
  LODWORD(v94) = 12;
  v50 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v49, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (__nwlog_fault(v50, &type, &v96))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length)";
LABEL_206:
        _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
      }
    }

    else if (v96 == 1)
    {
      v80 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v81 = os_log_type_enabled(v51, type);
      if (v80)
      {
        if (v81)
        {
          *buf = 136446466;
          v99 = "_http_safe_append";
          v100 = 2082;
          v101 = v80;
          _os_log_impl(&dword_181A37000, v51, v52, "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v80);
        goto LABEL_207;
      }

      if (v81)
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), no backtrace";
        goto LABEL_206;
      }
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v99 = "_http_safe_append";
        v53 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
        goto LABEL_206;
      }
    }
  }

LABEL_207:
  if (v50)
  {
    free(v50);
  }

  v24 = 0;
LABEL_37:
  *(*(*v11 + 8) + 24) = v24;
  v25 = *(*(*v11 + 8) + 24);
  if (v25)
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    if (a4)
    {
      v26 = *(*v13 + 8);
      if (*(v26 + 24) >= a5)
      {
        memcpy(v25, a4, a5);
        v27 = *(v26 + 24);
        *(v26 + 24) = v27 - a5;
        if (v27 < a5)
        {
          if (gLogDatapath == 1)
          {
            v91 = __nwlog_obj();
            if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
            {
              v92 = *(v26 + 24);
              *buf = 136446978;
              v99 = "_http_safe_append";
              v100 = 2082;
              v101 = "*remaining";
              v102 = 2048;
              v103 = a5;
              v104 = 2048;
              v105 = v92;
              _os_log_impl(&dword_181A37000, v91, OS_LOG_TYPE_DEBUG, "%{public}s Underflow: %{public}s, decrement %llu, result %llu", buf, 0x2Au);
            }
          }

          *(v26 + 24) = 0;
        }

        v25 += a5;
        goto LABEL_45;
      }

      v65 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v65, 16, "%{public}s called with null (*remaining >= length)", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length)";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v93 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v93)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null (*remaining >= length), no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v93)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null (*remaining >= length), dumping backtrace:%{public}s";
        goto LABEL_161;
      }
    }

    else
    {
      v60 = __nwlog_obj();
      *buf = 136446210;
      v99 = "_http_safe_append";
      LODWORD(v94) = 12;
      v61 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v60, 16, "%{public}s called with null data", buf, v94);
      LOBYTE(__src) = 16;
      type = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v61, &__src, &type))
      {
        goto LABEL_223;
      }

      if (__src == 17)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data";
LABEL_222:
          _os_log_impl(&dword_181A37000, v62, v63, v64, buf, 0xCu);
        }

LABEL_223:
        if (v61)
        {
          free(v61);
        }

        v25 = 0;
LABEL_45:
        *(*(*v11 + 8) + 24) = v25;
        if (*(*(*v11 + 8) + 24))
        {
          return;
        }

        v42 = __nwlog_obj();
        *buf = 136446210;
        v99 = "nw_http_fillout_binary_message_inner_block_invoke";
        LODWORD(v94) = 12;
        v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v42, 16, "%{public}s called with null cursor", buf, v94);
        LOBYTE(__src) = 16;
        type = OS_LOG_TYPE_DEFAULT;
        if (__nwlog_fault(v36, &__src, &type))
        {
          if (__src == 17)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor";
            goto LABEL_193;
          }

          if (type != OS_LOG_TYPE_INFO)
          {
            v37 = __nwlog_obj();
            v38 = __src;
            if (!os_log_type_enabled(v37, __src))
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor, backtrace limit exceeded";
            goto LABEL_193;
          }

          v70 = __nw_create_backtrace_string();
          v37 = __nwlog_obj();
          v38 = __src;
          v71 = os_log_type_enabled(v37, __src);
          if (!v70)
          {
            if (!v71)
            {
              goto LABEL_194;
            }

            *buf = 136446210;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v39 = "%{public}s called with null cursor, no backtrace";
            goto LABEL_193;
          }

          if (v71)
          {
            *buf = 136446466;
            v99 = "nw_http_fillout_binary_message_inner_block_invoke";
            v100 = 2082;
            v101 = v70;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null cursor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v70);
        }

LABEL_194:
        if (v36)
        {
          goto LABEL_195;
        }

        return;
      }

      if (type != OS_LOG_TYPE_INFO)
      {
        v62 = __nwlog_obj();
        v63 = __src;
        if (os_log_type_enabled(v62, __src))
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, backtrace limit exceeded";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v88 = __nw_create_backtrace_string();
      v62 = __nwlog_obj();
      v63 = __src;
      v89 = os_log_type_enabled(v62, __src);
      if (!v88)
      {
        if (v89)
        {
          *buf = 136446210;
          v99 = "_http_safe_append";
          v64 = "%{public}s called with null data, no backtrace";
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      if (v89)
      {
        *buf = 136446466;
        v99 = "_http_safe_append";
        v100 = 2082;
        v101 = v88;
        v90 = "%{public}s called with null data, dumping backtrace:%{public}s";
LABEL_161:
        _os_log_impl(&dword_181A37000, v62, v63, v90, buf, 0x16u);
      }
    }

    free(v88);
    goto LABEL_223;
  }

  v41 = __nwlog_obj();
  *buf = 136446210;
  v99 = "nw_http_fillout_binary_message_inner_block_invoke";
  LODWORD(v94) = 12;
  v36 = _os_log_send_and_compose_impl(2, 0, 0, 0, &dword_181A37000, v41, 16, "%{public}s called with null cursor", buf, v94);
  type = OS_LOG_TYPE_ERROR;
  v96 = 0;
  if (!__nwlog_fault(v36, &type, &v96))
  {
    goto LABEL_194;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor";
    goto LABEL_193;
  }

  if (v96 != 1)
  {
    v37 = __nwlog_obj();
    v38 = type;
    if (!os_log_type_enabled(v37, type))
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor, backtrace limit exceeded";
    goto LABEL_193;
  }

  v66 = __nw_create_backtrace_string();
  v37 = __nwlog_obj();
  v38 = type;
  v69 = os_log_type_enabled(v37, type);
  if (!v66)
  {
    if (!v69)
    {
      goto LABEL_194;
    }

    *buf = 136446210;
    v99 = "nw_http_fillout_binary_message_inner_block_invoke";
    v39 = "%{public}s called with null cursor, no backtrace";
    goto LABEL_193;
  }

  if (v69)
  {
    goto LABEL_112;
  }

LABEL_113:
  free(v66);
  if (v36)
  {
LABEL_195:
    free(v36);
  }
}