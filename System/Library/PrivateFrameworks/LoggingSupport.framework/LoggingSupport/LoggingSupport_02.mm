uint64_t ___chunk_support_stream_block_invoke(uint64_t a1, int *a2)
{
  _chunk_support_context_update(*(a1 + 40), a2);
  v4 = 1;
  v5 = *a2 - 24577;
  v6 = v5 > 0xF;
  v7 = (1 << v5) & 0x880F;
  if (!v6 && v7 != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = _chunk_support_stream(a2, *(a1 + 40));
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  return v4 & 1;
}

uint64_t _os_activity_stream_entry_decode(void *a1, int *a2)
{
  if (!a1 || MEMORY[0x2318E23F0]() != MEMORY[0x277D86468])
  {
    return 0xFFFFFFFFLL;
  }

  result = _os_activity_stream_entry_get_version(a1);
  if (result == 2)
  {
    value = xpc_dictionary_get_value(a1, "entryData");
    if (!value)
    {
      return 0xFFFFFFFFLL;
    }

    bytes_ptr = xpc_data_get_bytes_ptr(value);
    v14 = *(bytes_ptr + 1);
    v13 = *(bytes_ptr + 2);
    *a2 = *bytes_ptr;
    *(a2 + 1) = v14;
    *(a2 + 2) = v13;
    v15 = *(bytes_ptr + 6);
    v17 = *(bytes_ptr + 3);
    v16 = *(bytes_ptr + 4);
    *(a2 + 5) = *(bytes_ptr + 5);
    *(a2 + 6) = v15;
    *(a2 + 3) = v17;
    *(a2 + 4) = v16;
    v18 = *(bytes_ptr + 10);
    v20 = *(bytes_ptr + 7);
    v19 = *(bytes_ptr + 8);
    *(a2 + 9) = *(bytes_ptr + 9);
    *(a2 + 10) = v18;
    *(a2 + 7) = v20;
    *(a2 + 8) = v19;
    v22 = *(bytes_ptr + 12);
    v21 = *(bytes_ptr + 13);
    v23 = *(bytes_ptr + 11);
    *(a2 + 55) = *(bytes_ptr + 220);
    *(a2 + 12) = v22;
    *(a2 + 13) = v21;
    *(a2 + 11) = v23;
    if (xpc_dictionary_get_BOOL(a1, "32bits"))
    {
      a2[33] |= 1u;
    }

    v24 = *a2;
    result = 0xFFFFFFFFLL;
    if (*a2 > 767)
    {
      if (v24 != 1024 && v24 != 768)
      {
        return result;
      }
    }

    else if (v24 != 513 && v24 != 515)
    {
      return result;
    }

    v27 = bytes_ptr + 236;
    v28 = *(bytes_ptr + 140);
    v29 = &bytes_ptr[v28 + 236];
    if (!v28)
    {
      v29 = 0;
    }

    *(a2 + 35) = v29;
    v30 = *(bytes_ptr + 52);
    v31 = &v27[*(a2 + 7)];
    *(a2 + 5) += v27;
    *(a2 + 7) = v31;
    v32 = &v27[*(a2 + 19)];
    *(a2 + 19) = v32;
    *(a2 + 21) += v27;
    if (!v28)
    {
      if ((BYTE2(v30) & 6 | 8) == 0xC)
      {
        uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, v32, *(a2 + 31), *(a2 + 29), 0, (a2 + 35), 0, a2 + 19, (a2 + 21), 0, 0);
      }

      else
      {
        uuidpath_resolve(0, v32, *(a2 + 31), 0, (a2 + 35), 0, a2 + 21, 0);
      }
    }

    if (*a2 != 1024)
    {
      if (*a2 == 768)
      {
        *(a2 + 41) = xpc_dictionary_get_value(a1, "payload");
        if (!*(bytes_ptr + 148))
        {
          result = 0;
          *(a2 + 37) = 0;
          return result;
        }

        result = 0;
        data = &v27[*(a2 + 37)];
LABEL_49:
        *(a2 + 37) = data;
        return result;
      }

      return 0;
    }

    *(a2 + 37) += v27;
    *(a2 + 41) += v27;
    v37 = *(bytes_ptr + 188);
    if (v37)
    {
      v37 = &v27[*(a2 + 47)];
    }

    *(a2 + 47) = v37;
    v38 = *(bytes_ptr + 180);
    if (v38)
    {
      v38 = &v27[*(a2 + 45)];
    }

    *(a2 + 45) = v38;
    result = 0;
    if (*(bytes_ptr + 228))
    {
      *(a2 + 57) += v27;
    }

    else
    {
      *(a2 + 57) = 0;
    }
  }

  else
  {
    if (result != 1)
    {
      qword_27DA52778 = "BUG IN LIBTRACE: Nope. Invalid version for stream object.";
      qword_27DA527A8 = -1;
      __break(1u);
      return result;
    }

    *(a2 + 55) = 0u;
    *(a2 + 12) = 0u;
    *(a2 + 13) = 0u;
    *(a2 + 10) = 0u;
    *(a2 + 11) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 9) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    a2[1] = xpc_dictionary_get_uint64(a1, "pid");
    *(a2 + 1) = xpc_dictionary_get_uint64(a1, "procid");
    a2[4] = xpc_dictionary_get_uint64(a1, "uid");
    *(a2 + 5) = xpc_dictionary_get_uuid(a1, "procuuid");
    string = xpc_dictionary_get_string(a1, "procpath");
    *(a2 + 7) = string;
    if (!string)
    {
      v6 = *(a2 + 5);
      if (v6)
      {
        uuidpath_lookup_fd(4294967293, v6, a2 + 7);
      }
    }

    *(a2 + 9) = xpc_dictionary_get_uint64(a1, "aid");
    *(a2 + 11) = xpc_dictionary_get_uint64(a1, "paid");
    *a2 = xpc_dictionary_get_uint64(a1, "type");
    a2[28] = xpc_dictionary_get_int64(a1, "timezoneDSTflag");
    a2[27] = xpc_dictionary_get_int64(a1, "timezoneMinutesWest");
    *(a2 + 23) = xpc_dictionary_get_int64(a1, "timeGMTsec");
    a2[25] = xpc_dictionary_get_int64(a1, "timeGMTusec");
    if (xpc_dictionary_get_BOOL(a1, "32bits"))
    {
      a2[33] |= 1u;
    }

    uint64 = xpc_dictionary_get_uint64(a1, "traceid");
    v8 = BYTE2(uint64);
    *(a2 + 13) = uint64;
    *(a2 + 17) = xpc_dictionary_get_uint64(a1, "thread");
    *(a2 + 15) = xpc_dictionary_get_uint64(a1, "timestamp");
    *(a2 + 29) = xpc_dictionary_get_uint64(a1, "offset");
    *(a2 + 31) = xpc_dictionary_get_uint64(a1, "formatoffset");
    *(a2 + 19) = xpc_dictionary_get_uuid(a1, "imageuuid");
    v9 = (a2 + 19);
    *(a2 + 21) = xpc_dictionary_get_string(a1, "imagepath");
    v10 = *a2;
    result = 0xFFFFFFFFLL;
    if (*a2 <= 767)
    {
      if (v10 != 513 && v10 != 515)
      {
        return result;
      }

LABEL_25:
      v25 = xpc_dictionary_get_string(a1, "name");
      *(a2 + 35) = v25;
      if (!v25 || !*(a2 + 21))
      {
        v26 = *v9;
        if (*v9)
        {
          if ((v8 & 6 | 8) == 0xC)
          {
            uuidpath_sharedcache_resolve_fd(0xFFFFFFFFLL, v26, *(a2 + 31), *(a2 + 29), 0, (a2 + 35), 0, a2 + 19, (a2 + 21), 0, 0);
          }

          else
          {
            uuidpath_resolve(0, v26, *(a2 + 31), 0, (a2 + 35), 0, a2 + 21, 0);
          }
        }
      }

      v33 = *a2;
      if (*a2 == 515)
      {
        v36 = xpc_dictionary_get_BOOL(a1, "persisted");
        result = 0;
        *(a2 + 148) = v36;
        return result;
      }

      if (v33 == 1024)
      {
        *(a2 + 37) = xpc_dictionary_get_data(a1, "buffer", (a2 + 39));
        *(a2 + 41) = xpc_dictionary_get_data(a1, "privdata", (a2 + 43));
        *(a2 + 47) = xpc_dictionary_get_string(a1, "category");
        *(a2 + 45) = xpc_dictionary_get_string(a1, "subsystem");
        v35 = xpc_dictionary_get_BOOL(a1, "persisted");
        result = 0;
        *(a2 + 201) = v35;
        return result;
      }

      if (v33 == 768)
      {
        *(a2 + 41) = xpc_dictionary_get_value(a1, "payload");
        data = xpc_dictionary_get_data(a1, "buffer", (a2 + 39));
        result = 0;
        goto LABEL_49;
      }

      return 0;
    }

    if (v10 == 1024 || v10 == 768)
    {
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t os_activity_stream_for_simulator(const char *a1, int a2, const void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%s", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  *(v6 + 40) = xpc_array_create(0, 0);
  *(v6 + 48) = xpc_array_create(0, 0);
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  *(v6 + 84) = 1;
  *(v6 + 72) = strdup(a1);
  return v6;
}

uint64_t os_activity_stream_for_pid(unsigned int a1, int a2, const void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%d", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  v7 = xpc_array_create(0, 0);
  *(v6 + 40) = v7;
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  if (a1 == -1)
  {
    *(v6 + 84) = 1;
  }

  else if (a1 >= 1)
  {
    xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, a1);
  }

  return v6;
}

void os_activity_stream_add_pid(uint64_t a1, int a2)
{
  if ((*(a1 + 84) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      v5 = xpc_array_create(0, 0);
      *(a1 + 40) = v5;
    }

    xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, a2);
  }
}

uint64_t os_activity_stream_for_uid(unsigned int a1, int a2, const void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_calloc_typed();
  snprintf(__str, 0x40uLL, "com.apple.activity.stream.%d", a1);
  *(v6 + 24) = dispatch_queue_create(__str, 0);
  *v6 = _Block_copy(a3);
  v7 = xpc_array_create(0, 0);
  *(v6 + 48) = v7;
  *(v6 + 32) = a2;
  *(v6 + 64) = 0;
  xpc_array_set_int64(v7, 0xFFFFFFFFFFFFFFFFLL, a1);
  return v6;
}

void os_activity_stream_add_uid(uint64_t a1, int64_t value)
{
  v2 = value;
  v4 = *(a1 + 48);
  if (!v4)
  {
    v4 = xpc_array_create(0, 0);
    *(a1 + 48) = v4;
  }

  xpc_array_set_int64(v4, 0xFFFFFFFFFFFFFFFFLL, v2);
}

void *os_activity_stream_set_event_handler(uint64_t a1, void *aBlock)
{
  result = _Block_copy(aBlock);
  *(a1 + 8) = result;
  return result;
}

void _os_activity_stream_resume_with_filter(uint64_t a1, const void *a2, size_t a3)
{
  v62 = *MEMORY[0x277D85DE8];
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticd", *(a1 + 24), 2uLL);
  *(a1 + 16) = mach_service;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___os_activity_stream_resume_with_filter_block_invoke;
  handler[3] = &__block_descriptor_tmp_13;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_retain(*(a1 + 16));
  xpc_connection_set_context(*(a1 + 16), a1);
  xpc_connection_set_finalizer_f(*(a1 + 16), _os_activity_stream_dealloc);
  xpc_connection_activate(*(a1 + 16));
  if (!*(a1 + 64))
  {
    *(a1 + 64) = 7;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "action", 3uLL);
  xpc_dictionary_set_uint64(v7, "flags", *(a1 + 32));
  xpc_dictionary_set_uint64(v7, "types", *(a1 + 64));
  v8 = *(a1 + 72);
  if (v8)
  {
    xpc_dictionary_set_string(v7, "simulator_device", v8);
  }

  if (xpc_array_get_count(*(a1 + 40)) && xpc_array_get_count(*(a1 + 48)))
  {
    if (a2)
    {
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v28 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v29, &v52, &applier, 80, &dword_22E01A000, v28, 16, "assertion failure: !filter -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
    }

    else if (*(a1 + 84) != 1)
    {
      a3 = *(a1 + 48);
      v9 = *(a1 + 40);
      v10 = a3;
      if (xpc_array_get_count(v9))
      {
        if (xpc_array_get_count(v10))
        {
          v11 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
          *&applier = MEMORY[0x277D85DD0];
          *(&applier + 1) = 3221225472;
          *&v58 = ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke;
          *(&v58 + 1) = &unk_2787AE688;
          v12 = v11;
          *&v59 = v12;
          xpc_array_apply(v9, &applier);
          *&v53 = MEMORY[0x277D85DD0];
          *(&v53 + 1) = 3221225472;
          v54 = ___OSLogStreamFilterBytesForPIDAndUIDArray_block_invoke_2;
          v55 = &unk_2787AE688;
          v56 = v12;
          v13 = v12;
          xpc_array_apply(v10, &v53);
          v14 = [(_OSLogStreamFilter *)v13 data];
          [v14 length];
          v15 = _os_trace_malloc_typed();
          [v14 getBytes:v15 length:{objc_msgSend(v14, "length")}];
          a3 = [v14 length];

          v16 = 0;
          v17 = 0;
          a2 = v15;
          if (!v15)
          {
            goto LABEL_26;
          }

LABEL_24:
          xpc_dictionary_set_data(v7, "stream_filter", a2, a3);
          goto LABEL_27;
        }

        goto LABEL_43;
      }

LABEL_39:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v32 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v33, &v52, &applier, 80, &dword_22E01A000, v32, 16, "assertion failure: xpc_array_get_count(pids) -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
LABEL_43:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v34 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v35 = 3;
      }

      else
      {
        v35 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v35, &v52, &applier, 80, &dword_22E01A000, v34, 16, "assertion failure: xpc_array_get_count(uids) -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
      goto LABEL_47;
    }

    v52 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    applier = 0u;
    v30 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    LODWORD(v53) = 134217984;
    *(&v53 + 4) = 0;
    _os_log_send_and_compose_impl(v31, &v52, &applier, 80, &dword_22E01A000, v30, 16, "assertion failure: !stream->all_procs -> %llu", &v53);
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  if (xpc_array_get_count(*(a1 + 40)))
  {
    if (a2)
    {
LABEL_47:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v36 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v37 = 3;
      }

      else
      {
        v37 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v37, &v52, &applier, 80, &dword_22E01A000, v36, 16, "assertion failure: !filter -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
      goto LABEL_51;
    }

    if (*(a1 + 84) == 1)
    {
LABEL_51:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v38 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v39 = 3;
      }

      else
      {
        v39 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v39, &v52, &applier, 80, &dword_22E01A000, v38, 16, "assertion failure: !stream->all_procs -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
      goto LABEL_55;
    }

    v18 = *(a1 + 40);
    if (!xpc_array_get_count(v18))
    {
LABEL_55:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v40 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v41 = 3;
      }

      else
      {
        v41 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v41, &v52, &applier, 80, &dword_22E01A000, v40, 16, "assertion failure: xpc_array_get_count(pids) -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    v19 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
    *&applier = MEMORY[0x277D85DD0];
    *(&applier + 1) = 3221225472;
    *&v58 = ___OSLogStreamFilterBytesForPIDArray_block_invoke;
    *(&v58 + 1) = &unk_2787AE688;
    *&v59 = v19;
    v20 = v19;
    xpc_array_apply(v18, &applier);
    v21 = [(_OSLogStreamFilter *)v20 data];
    [v21 length];
    v17 = _os_trace_malloc_typed();
    [v21 getBytes:v17 length:{objc_msgSend(v21, "length")}];
    a3 = [v21 length];

    v15 = 0;
    v16 = 0;
    a2 = v17;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (!xpc_array_get_count(*(a1 + 48)))
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    if (a2)
    {
LABEL_63:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v44 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v45 = 3;
      }

      else
      {
        v45 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v45, &v52, &applier, 80, &dword_22E01A000, v44, 16, "assertion failure: !filter -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
      goto LABEL_67;
    }

    if (*(a1 + 84) == 1)
    {
LABEL_67:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v46 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v47, &v52, &applier, 80, &dword_22E01A000, v46, 16, "assertion failure: !stream->all_procs -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
LABEL_71:
      v52 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      applier = 0u;
      v48 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v49 = 3;
      }

      else
      {
        v49 = 2;
      }

      LODWORD(v53) = 134217984;
      *(&v53 + 4) = 0;
      _os_log_send_and_compose_impl(v49, &v52, &applier, 80, &dword_22E01A000, v48, 16, "assertion failure: xpc_array_get_count(uids) -> %llu", &v53);
      _os_crash_msg();
      __break(1u);
    }

    v22 = *(a1 + 48);
    if (!xpc_array_get_count(v22))
    {
      goto LABEL_71;
    }

    v23 = [[_OSLogStreamFilter alloc] initWithPredicate:0];
    *&applier = MEMORY[0x277D85DD0];
    *(&applier + 1) = 3221225472;
    *&v58 = ___OSLogStreamFilterBytesForUIDArray_block_invoke;
    *(&v58 + 1) = &unk_2787AE688;
    *&v59 = v23;
    v24 = v23;
    xpc_array_apply(v22, &applier);
    v25 = [(_OSLogStreamFilter *)v24 data];
    [v25 length];
    v16 = _os_trace_malloc_typed();
    [v25 getBytes:v16 length:{objc_msgSend(v25, "length")}];
    a3 = [v25 length];

    v15 = 0;
    v17 = 0;
    a2 = v16;
    if (v16)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  a3 = *(a1 + 84);
  if ((a3 & 1) == 0)
  {
LABEL_59:
    v52 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    applier = 0u;
    v42 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v43 = 3;
    }

    else
    {
      v43 = 2;
    }

    LODWORD(v53) = 134217984;
    *(&v53 + 4) = a3;
    _os_log_send_and_compose_impl(v43, &v52, &applier, 80, &dword_22E01A000, v42, 16, "assertion failure: stream->all_procs -> %llu", &v53);
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

LABEL_27:
  free(v17);
  free(v16);
  free(v15);
  v26 = *(a1 + 16);
  if (*(a1 + 8))
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 0x40000000;
    v50[2] = ___os_activity_stream_resume_with_filter_block_invoke_18;
    v50[3] = &__block_descriptor_tmp_20_3164;
    v50[4] = a1;
    xpc_connection_send_message_with_reply(v26, v7, global_queue, v50);
  }

  else
  {
    xpc_connection_send_message(*(a1 + 16), v7);
  }

  xpc_release(v7);
}

void ___os_activity_stream_resume_with_filter_block_invoke(uint64_t a1, void *a2)
{
  memset(v10, 0, 236);
  v4 = MEMORY[0x2318E23F0](a2);
  if (v4 == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_value(a2, "action") && !_os_activity_stream_entry_decode(a2, v10) && ((*(**(a1 + 32) + 16))() & 1) == 0)
    {
      v7 = *(a1 + 32);
      *(v7 + 80) = 89;
      xpc_connection_cancel(*(v7 + 16));
    }
  }

  else if (v4 == MEMORY[0x277D86480])
  {
    v5 = *(a1 + 32);
    if (a2 == MEMORY[0x277D863F8])
    {
      v8 = *(v5 + 8);
      if (v8)
      {
        (*(v8 + 16))();
      }

      else
      {
        (*(*v5 + 16))();
      }

      v9 = *(*(a1 + 32) + 16);

      xpc_release(v9);
    }

    else
    {
      *(v5 + 80) = 5;
      v6 = *(v5 + 16);

      xpc_connection_cancel(v6);
    }
  }
}

void ___os_activity_stream_resume_with_filter_block_invoke_18(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x2318E23F0](a2);
  if (v4 != MEMORY[0x277D86468])
  {
    if (v4 != MEMORY[0x277D86480])
    {
      return;
    }

    v8 = *(a1 + 32);
    *(v8 + 80) = 5;
    v7 = *(v8 + 16);
    goto LABEL_7;
  }

  value = xpc_dictionary_get_value(a2, "error");
  v6 = *(a1 + 32);
  if (value)
  {
    *(v6 + 80) = 1;
    v7 = *(v6 + 16);
LABEL_7:

    xpc_connection_cancel(v7);
    return;
  }

  v9 = *(*(v6 + 8) + 16);

  v9();
}

void _os_activity_stream_dealloc(const void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
    a1[3] = 0;
  }

  if (*a1)
  {
    _Block_release(*a1);
    *a1 = 0;
  }

  v3 = a1[1];
  if (v3)
  {
    _Block_release(v3);
    a1[1] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    xpc_release(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    xpc_release(v5);
  }

  free(a1);
}

void os_activity_stream_cancel(uint64_t a1)
{
  *(a1 + 80) = 89;
  xpc_connection_cancel(*(a1 + 16));
  v2 = *(a1 + 16);

  xpc_release(v2);
}

void _OSLogInstallPreferences(unsigned int a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCAC58];
  v6 = a2;
  v10 = [v5 dataWithPropertyList:a3 format:200 options:0 error:0];
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "operation", 2uLL);
  xpc_dictionary_set_uint64(v7, "prefs_type", a1);
  v8 = [v6 UTF8String];

  xpc_dictionary_set_string(v7, "prefs_name", v8);
  v9 = v10;
  xpc_dictionary_set_data(v7, "prefs_data", [v10 bytes], objc_msgSend(v10, "length"));
  _OSLogPreferencesSendMessage(v7);
}

void _OSLogRemovePreferences(unsigned int a1, void *a2)
{
  v3 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(xdict, "operation", 3uLL);
  xpc_dictionary_set_uint64(xdict, "prefs_type", a1);
  v4 = [v3 UTF8String];

  xpc_dictionary_set_string(xdict, "prefs_name", v4);
  _OSLogPreferencesSendMessage(xdict);
}

void _OSLogPreferencesSendMessage(void *a1)
{
  v1 = a1;
  connection = xpc_connection_create_mach_service("com.apple.logd.admin", 0, 2uLL);
  xpc_connection_set_event_handler(connection, &__block_literal_global_197);
  xpc_connection_activate(connection);
  v2 = xpc_connection_send_message_with_reply_sync(connection, v1);
}

uint64_t _LevelForKey(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  v3 = v2;
  if (v2)
  {
    if (![v2 caseInsensitiveCompare:@"default"])
    {
      v4 = 2;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"info"])
    {
      v4 = 3;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"debug"])
    {
      v4 = 4;
      goto LABEL_12;
    }

    if (![v3 caseInsensitiveCompare:@"off"] || !objc_msgSend(v3, "caseInsensitiveCompare:", @"none"))
    {
      v4 = 0;
      goto LABEL_12;
    }
  }

  v4 = 1;
LABEL_12:

  return v4;
}

id OSLogPreferencesList(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_app_cryptex_sysprefsdir_path()];
  v4 = [v3 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v4, v2);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_os_cryptex_sysprefsdir_path()];
  v6 = [v5 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v6, v2);
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_sysprefsdir_path()];
  v8 = [v7 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v8, v2);
  if (_os_trace_is_development_build())
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_intprefsdir_path()];
    v10 = [v9 stringByAppendingPathComponent:v1];

    OSLogPreferencesListDirectory(v10, v2);
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:_os_trace_prefsdir_path()];
  v12 = [v11 stringByAppendingPathComponent:v1];

  OSLogPreferencesListDirectory(v12, v2);

  return v2;
}

void OSLogPreferencesListDirectory(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCAA00];
  v5 = a1;
  v6 = [v4 defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __OSLogPreferencesListDirectory_block_invoke;
  v9[3] = &unk_2787AEBA8;
  v10 = v3;
  v8 = v3;
  [v7 enumerateObjectsUsingBlock:v9];
}

uint64_t __OSLogPreferencesListDirectory_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 hasSuffix:@".plist"];
  v4 = v7;
  if (v3)
  {
    v5 = [v7 stringByDeletingPathExtension];
    if (([*(a1 + 32) containsObject:v5] & 1) == 0)
    {
      [*(a1 + 32) addObject:v5];
    }

    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

BOOL OSLogValidateProfilePayload(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:@"Processes"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v3 = [v1 objectForKey:@"Subsystems"];
    if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = 0;
    }

    else
    {
      v4 = [v1 objectForKey:@"System"];
      v5 = 1;
      if (v4)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

uint64_t OSLogInstallProfilePayload(void *a1)
{
  v1 = a1;
  v2 = _prefsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22E01A000, v2, OS_LOG_TYPE_DEFAULT, "Profile installation requested", buf, 2u);
  }

  *buf = 0;
  v13 = buf;
  v14 = 0x2020000000;
  v15 = 1;
  v3 = [v1 objectForKey:@"Processes"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __OSLogInstallProfilePayload_block_invoke;
  v11[3] = &unk_2787AEAD8;
  v11[4] = buf;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  if (v13[24] == 1 && ([v1 objectForKey:@"Subsystems"], v4 = objc_claimAutoreleasedReturnValue(), v10[0] = MEMORY[0x277D85DD0], v10[1] = 3221225472, v10[2] = __OSLogInstallProfilePayload_block_invoke_9, v10[3] = &unk_2787AEAD8, v10[4] = buf, objc_msgSend(v4, "enumerateKeysAndObjectsUsingBlock:", v10), v4, (v13[24] & 1) != 0))
  {
    v5 = [v1 objectForKey:@"System"];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v7 = [v6 objectForKey:@"Enable-Logging"];

    if (!v7)
    {
      [v6 setObject:MEMORY[0x277CBEC38] forKey:@"Enable-Logging"];
    }

    [v6 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(1u, @"com.apple.system.logging", v6);

    v8 = v13[24];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v8 & 1;
}

void sub_22E05EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _prefsLogHandle()
{
  if (_prefsLogHandle_onceToken != -1)
  {
    dispatch_once(&_prefsLogHandle_onceToken, &__block_literal_global_186);
  }

  v1 = _prefsLogHandle_handle;

  return v1;
}

void __OSLogInstallProfilePayload_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(2u, v6, v5);
  }
}

void __OSLogInstallProfilePayload_block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    [v5 setObject:MEMORY[0x277CBEC38] forKey:@"Locked"];
    _OSLogInstallPreferences(3u, v6, v5);
  }
}

uint64_t ___prefsLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.loggingsupport", "os_log_preferences");
  v1 = _prefsLogHandle_handle;
  _prefsLogHandle_handle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t OSLogRemoveProfilePayload(void *a1)
{
  v1 = a1;
  v2 = _prefsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22E01A000, v2, OS_LOG_TYPE_DEFAULT, "Profile removal requested", v7, 2u);
  }

  v3 = [v1 objectForKey:@"Processes"];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3336];
  v4 = [v1 objectForKey:@"Subsystems"];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_17];
  v5 = [v1 objectForKey:@"System"];

  if (v5)
  {
    _OSLogRemovePreferences(1u, @"com.apple.system.logging");
  }

  return 1;
}

void observation_callback(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  strcpy(buffer, "0000000000000000000000000000000000000000");
  buffer[41] = 0;
  if (!a1 || (v3 = *a1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid inputs", &v20, 2u);
    }

    v10 = 0;
    v3 = 0;
    v6 = 0;
LABEL_16:
    (*(mobdevtab + 64))(v3);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v5 = (*(mobdevtab + 128))(*a1);
  v6 = v5;
  if (v5)
  {
    CFStringGetCString(v5, buffer, 42, 0x8000100u);
  }

  v7 = (*(mobdevtab + 96))(v3, 0, @"DeviceName");
  v8 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = *(a1 + 8);
  if (v9 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = buffer;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "device disconnected (%s)\n", &v20, 0xCu);
    }

    (*a2)(1, buffer, v3, *(a2 + 8));
  }

  else if (v9 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315138;
      v21 = buffer;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "device connected (%s)\n", &v20, 0xCu);
    }

    if (v8)
    {
      goto LABEL_12;
    }

    v11 = (*(mobdevtab + 32))(v3);
    if (v11)
    {
      v12 = v11;
      v10 = (*(mobdevtab + 136))();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315650;
        v21 = buffer;
        v22 = 1024;
        v23 = v12;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%s) AMDeviceConnect failed with %08x (%@)\n", &v20, 0x1Cu);
      }

      goto LABEL_16;
    }

    v13 = (*(mobdevtab + 40))(v3);
    if (v13 != -402653155 && v13)
    {
      v14 = (*(mobdevtab + 120))(v3);
      if (v14)
      {
        v15 = v14;
        v10 = (*(mobdevtab + 136))();
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
LABEL_37:
          (*a2)(2, buffer, v3, *(a2 + 8));
          goto LABEL_16;
        }

        v20 = 136315650;
        v21 = buffer;
        v22 = 1024;
        v23 = v15;
        v24 = 2112;
        v25 = v10;
        v16 = MEMORY[0x277D86220];
        v17 = "(%s) AMDevicePair failed with %08x (%@)\n";
LABEL_36:
        _os_log_impl(&dword_22E01A000, v16, OS_LOG_TYPE_DEFAULT, v17, &v20, 0x1Cu);
        goto LABEL_37;
      }

      v18 = (*(mobdevtab + 40))(v3);
      if (v18 != -402653155)
      {
        v19 = v18;
        if (v18)
        {
          v10 = (*(mobdevtab + 136))(v18);
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_37;
          }

          v20 = 136315650;
          v21 = buffer;
          v22 = 1024;
          v23 = v19;
          v24 = 2112;
          v25 = v10;
          v16 = MEMORY[0x277D86220];
          v17 = "(%s) AMDeviceStartSession failed with %08x (%@)\n";
          goto LABEL_36;
        }
      }
    }

LABEL_12:
    (*a2)(0, buffer, v3, *(a2 + 8));
    v10 = 0;
    goto LABEL_16;
  }

  v10 = 0;
  if (v6)
  {
LABEL_19:
    CFRelease(v6);
  }

LABEL_20:
  if (v10)
  {
    CFRelease(v10);
  }
}

void *___logdev_mobdev_vtable_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/MobileDevice.framework/MobileDevice", 1);
  _logdev_mobdev_vtable_vtab = result;
  if (result)
  {
    result = dlsym(result, "AMDServiceConnectionReceive");
    qword_27DA52A30 = result;
    if (result)
    {
      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionReceiveMessage");
      qword_27DA52A38 = result;
      if (result)
      {
        result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCreateCopy");
        qword_27DA52A40 = result;
        if (result)
        {
          result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceConnect");
          qword_27DA52A48 = result;
          if (result)
          {
            result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceStartSession");
            qword_27DA52A50 = result;
            if (result)
            {
              result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceSecureStartService");
              qword_27DA52A58 = result;
              if (result)
              {
                result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceStopSession");
                qword_27DA52A60 = result;
                if (result)
                {
                  result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceDisconnect");
                  qword_27DA52A68 = result;
                  if (result)
                  {
                    result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionSendMessage");
                    qword_27DA52A70 = result;
                    if (result)
                    {
                      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionGetSocket");
                      qword_27DA52A78 = result;
                      if (result)
                      {
                        result = dlsym(_logdev_mobdev_vtable_vtab, "AMDServiceConnectionInvalidate");
                        qword_27DA52A80 = result;
                        if (result)
                        {
                          result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCopyValue");
                          off_27DA52A88 = result;
                          if (result)
                          {
                            result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceNotificationSubscribeWithOptions");
                            qword_27DA52A90 = result;
                            if (result)
                            {
                              result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceNotificationUnsubscribe");
                              off_27DA52A98 = result;
                              if (result)
                              {
                                result = dlsym(_logdev_mobdev_vtable_vtab, "AMDevicePair");
                                qword_27DA52AA0 = result;
                                if (result)
                                {
                                  result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceCopyDeviceIdentifier");
                                  qword_27DA52AA8 = result;
                                  if (result)
                                  {
                                    result = dlsym(_logdev_mobdev_vtable_vtab, "AMDCopyErrorText");
                                    qword_27DA52AB0 = result;
                                    if (result)
                                    {
                                      result = dlsym(_logdev_mobdev_vtable_vtab, "AMDeviceGetInterfaceType");
                                      qword_27DA52AB8 = result;
                                      if (result)
                                      {
                                        _logdev_mobdev_vtable_valid = 1;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void __logdev_stream_events_block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    memset(v25, 0, 108);
    v24 = 0u;
    memset(v23, 0, sizeof(v23));
    v4 = *(a2 + 1);
    if (v4 > 15)
    {
      switch(v4)
      {
        case 16:
          v5 = 515;
          goto LABEL_20;
        case 32:
          v5 = 514;
          goto LABEL_20;
        case 64:
          v5 = 1152;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v4)
      {
        case 2:
          v5 = 513;
          goto LABEL_20;
        case 4:
          v5 = 768;
          goto LABEL_20;
        case 8:
          v5 = 1024;
          goto LABEL_20;
      }
    }

    v5 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = v4;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown os_activity_stream_type %u\n", buf, 8u);
      v5 = 0;
    }

LABEL_20:
    v6 = *(a2 + 9);
    v21[0] = v5;
    v21[1] = v6;
    v22 = *(a2 + 13);
    *(&v23[1] + 4) = *(a2 + 39);
    *(v23 + 4) = a2 + 21;
    v7 = *(a2 + 37);
    if (*(a2 + 37))
    {
      v8 = (a2 + *(a2 + 5) + 8 * *(a2 + 125));
    }

    else
    {
      v8 = "<missing path>";
    }

    *(v23 + 12) = v8;
    *(&v23[2] + 4) = *(a2 + 67);
    *(&v23[3] + 4) = *(a2 + 83);
    *(&v23[3] + 12) = a2 + 91;
    v9 = *(a2 + 107);
    if (*(a2 + 107))
    {
      v10 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7);
    }

    else
    {
      v10 = "<missing path>";
    }

    *(&v23[4] + 4) = v10;
    v11 = *(a2 + 1);
    if (v11 > 7)
    {
      switch(v11)
      {
        case 8:
          goto LABEL_30;
        case 16:
          if (*(a2 + 109))
          {
            v15 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
          }

          else
          {
            v15 = "<missing name>";
          }

          *(v25 + 12) = v15;
          *(&v24 + 4) = *(a2 + 111);
          *(&v23[4] + 12) = *(a2 + 55);
          DWORD1(v23[5]) = *(a2 + 63);
          BYTE4(v25[1]) = 0;
          goto LABEL_60;
        case 64:
LABEL_30:
          v12 = *(a2 + 109);
          if (v12)
          {
            v13 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
          }

          else
          {
            v13 = "<missing format data>";
          }

          *(v25 + 12) = v13;
          memset(&v25[1] + 4, 0, 32);
          *(&v24 + 4) = *(a2 + 113);
          if (v11 == 8)
          {
            if (*(a2 + 121))
            {
              v17 = *(a2 + 117);
              v18 = a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9 + v12 + v17;
            }

            else
            {
              v18 = 0;
              LODWORD(v17) = *(a2 + 117);
            }

            *(&v25[3] + 12) = v18;
            if (v17)
            {
              v19 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9 + v12);
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = "<missing buffer data>";
            *(&v25[3] + 12) = "<missing buffer data>";
          }

          *(&v25[3] + 4) = v19;
          WORD4(v25[4]) = 0;
          goto LABEL_59;
      }

LABEL_40:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v27 = v11;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message type %x\n", buf, 8u);
      }

      goto LABEL_60;
    }

    if (v11 == 2)
    {
      if (*(a2 + 109))
      {
        v16 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
      }

      else
      {
        v16 = "<missing name>";
      }

      *(v25 + 12) = v16;
      *(&v25[1] + 4) = *(a2 + 111);
      v20 = *(a2 + 119);
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_40;
      }

      if (*(a2 + 109))
      {
        v14 = (a2 + *(a2 + 5) + 8 * *(a2 + 125) + v7 + v9);
      }

      else
      {
        v14 = "<missing buffer data>";
      }

      *(v25 + 12) = v14;
      memset(&v25[1] + 4, 0, 24);
      v20 = *(a2 + 117);
    }

    *(&v24 + 4) = v20;
LABEL_59:
    *(&v23[4] + 12) = *(a2 + 55);
    DWORD1(v23[5]) = *(a2 + 63);
LABEL_60:
    if (v5 > 767 || v5 == 513 || v5 == 515)
    {
      (*(a1 + 32))(v21, *(a1 + 40));
    }

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Got NULL OTRCancelAndFreeActivityStream\n", v21, 2u);
  }

  (*(a1 + 32))(0, *(a1 + 40));
}

uint64_t _CopyOTRServiceConnectionForDevice(uint64_t a1, CFTypeRef *a2, const __CFString *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  cf = 0;
  *a2 = 0;
  v5 = (*(mobdevtab + 24))(a1);
  if (v5)
  {
    v6 = v5;
    v7 = (*(mobdevtab + 32))();
    if (v7)
    {
      v8 = v7;
      v9 = (*(mobdevtab + 136))();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v18 = v8;
        *&v18[4] = 2112;
        *&v18[6] = v9;
        _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceConnect failed: 0x%08x (%@)", buf, 0x12u);
      }
    }

    else
    {
      v10 = (*(mobdevtab + 40))(v6);
      if (v10 == -402653155 || v10 == 0)
      {
        v12 = (*(mobdevtab + 48))(v6, a3, 0, &cf);
        v8 = v12;
        if (v12)
        {
          v9 = (*(mobdevtab + 136))(v12);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            CStringPtr = CFStringGetCStringPtr(a3, 0x8000100u);
            *buf = 136315650;
            *v18 = CStringPtr;
            *&v18[8] = 1024;
            *&v18[10] = v8;
            v19 = 2112;
            v20 = v9;
            _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to start service %s: 0x%08x (%@)", buf, 0x1Cu);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
        }

        else
        {
          v9 = 0;
          *a2 = cf;
        }
      }

      else
      {
        v8 = v10;
        v9 = (*(mobdevtab + 136))();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v18 = v8;
          *&v18[4] = 2112;
          *&v18[6] = v9;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceStartSession failed: 0x%08x (%@)", buf, 0x12u);
        }
      }

      (*(mobdevtab + 64))(v6);
    }

    CFRelease(v6);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else
  {
    v8 = 3892314119;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "AMDeviceCreateCopy failed", buf, 2u);
    }
  }

  return v8;
}

void __OTRCreateActivityStreamForPID_block_invoke(uint64_t a1)
{
  *&v47[5] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  cf = 0;
  size_7 = 0;
  v3 = (*(mobdevtab + 8))(*v2, &size_7, 1);
  if (!v3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Failed to receive message type: remote side closed connection";
    goto LABEL_10;
  }

  if (v3 < 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    *v47 = v11;
    v7 = MEMORY[0x277D86220];
    v8 = "receive got -1 when getting message type: %s";
    goto LABEL_13;
  }

  v4 = size_7;
  if (size_7 != 2)
  {
    if (size_7 != 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v47[0] = v4;
        v7 = MEMORY[0x277D86220];
        v8 = "Unknown message type: %d";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    v5 = (*(mobdevtab + 16))(*v2, &cf, 0, 0);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v47[0] = v6;
        v7 = MEMORY[0x277D86220];
        v8 = "Failed to receive response: %x";
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    TypeID = CFDictionaryGetTypeID();
    v20 = CFGetTypeID(cf);
    v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (TypeID == v20)
    {
      if (!v21)
      {
        goto LABEL_25;
      }

      *buf = 134217984;
      *v47 = cf;
      v7 = MEMORY[0x277D86220];
      v8 = "Got error: %p";
LABEL_13:
      v9 = 12;
      goto LABEL_24;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    *buf = 0;
    v7 = MEMORY[0x277D86220];
    v8 = "Incorrect response type";
LABEL_10:
    v9 = 2;
    goto LABEL_24;
  }

  v12 = 0;
  v13 = 0;
  size = 0;
  v14 = *v2;
  p_size = &size;
  do
  {
    v16 = (*(mobdevtab + 8))(v14, p_size, 4 - v12);
    if (!v16)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v7 = MEMORY[0x277D86220];
      v8 = "Failed to receive message size: remote side closed connection";
      goto LABEL_10;
    }

    if ((v16 & 0x80000000) != 0)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v22 = __error();
      v23 = strerror(*v22);
      *buf = 136315138;
      *v47 = v23;
      v7 = MEMORY[0x277D86220];
      v8 = "receive got -1 when getting message size: %s";
      goto LABEL_13;
    }

    v12 = v16 + v13;
    p_size = (p_size + v16);
    v13 = v12;
  }

  while (v12 < 4);
  v17 = size;
  if (size > 0x80)
  {
    v24 = malloc_type_malloc(size, 0x42532366uLL);
    if (!v24)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v31 = size;
      v32 = __error();
      v33 = strerror(*v32);
      *buf = 67109378;
      v47[0] = v31;
      LOWORD(v47[1]) = 2080;
      *(&v47[1] + 2) = v33;
      v7 = MEMORY[0x277D86220];
      v8 = "Failed to allocate message of size %d: %s";
      v9 = 18;
      goto LABEL_24;
    }

    v18 = v24;
    v25 = size;
    if (size)
    {
      v26 = 0;
      v27 = 0;
      v28 = *v2;
      v29 = v24;
      while (1)
      {
        v30 = (*(mobdevtab + 8))(v28, v29, v25 - v26);
        if (!v30)
        {
          LODWORD(v26) = v27;
LABEL_48:
          if (v26 >= size)
          {
            goto LABEL_51;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v34 = MEMORY[0x277D86220];
            v35 = "Failed to receive stream message: remote side closed connection";
            v36 = 2;
            goto LABEL_60;
          }

          goto LABEL_26;
        }

        if ((v30 & 0x80000000) != 0)
        {
          break;
        }

        v26 = v30 + v27;
        v29 += v30;
        v27 = v26;
        if (v26 >= v25)
        {
          goto LABEL_48;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v41 = __error();
      v42 = strerror(*v41);
      *buf = 136315138;
      *v47 = v42;
      v34 = MEMORY[0x277D86220];
      v35 = "receive got -1 when getting stream message: %s";
      v36 = 12;
    }

    else
    {
LABEL_51:
      v37 = size_for_stream_message(v18);
      v38 = size;
      if (v37 == size)
      {
        v39 = *v18;
        if (v39 == 2)
        {
          (*(v1 + 16))(v1, v18);
          free(v18);
          return;
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 67109120;
        v47[0] = v39;
        v34 = MEMORY[0x277D86220];
        v35 = "Received unknown message version: %hhu";
        v36 = 8;
      }

      else
      {
        v40 = v37;
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *buf = 67109376;
        v47[0] = v38;
        LOWORD(v47[1]) = 2048;
        *(&v47[1] + 2) = v40;
        v34 = MEMORY[0x277D86220];
        v35 = "Got message of size %u but expected size %zu";
        v36 = 18;
      }
    }

LABEL_60:
    _os_log_impl(&dword_22E01A000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
    goto LABEL_26;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *buf = 67109120;
  v47[0] = v17;
  v7 = MEMORY[0x277D86220];
  v8 = "Got a message size that's too small to be an OTRActivityStreamMessage: %u";
LABEL_23:
  v9 = 8;
LABEL_24:
  _os_log_impl(&dword_22E01A000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, v9);
LABEL_25:
  v18 = 0;
LABEL_26:
  dispatch_source_cancel(v2[1]);
  free(v18);
  if (cf)
  {
    CFRelease(cf);
  }
}

intptr_t __OTRCreateActivityStreamForPID_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 24);

  return dispatch_semaphore_signal(v2);
}

void __logdev_stream_events_block_invoke_2(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Canceling stream\n", v2, 2u);
  }

  OTRCancelAndFreeActivityStream(*(a1 + 32));
}

void OTRCancelAndFreeActivityStream(uint64_t a1)
{
  if (a1)
  {
    dispatch_source_cancel(*(a1 + 8));
    dispatch_source_cancel(*(a1 + 16));
    global_queue = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __OTRCancelAndFreeActivityStream_block_invoke;
    block[3] = &__block_descriptor_tmp_68;
    block[4] = a1;
    dispatch_async(global_queue, block);
  }
}

void __OTRCancelAndFreeActivityStream_block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  (*(mobdevtab + 88))(**(a1 + 32));
  v2 = *(a1 + 32);
  if (*v2)
  {
    CFRelease(*v2);
    v2 = *(a1 + 32);
  }

  *v2 = 0;
  dispatch_release(*(*(a1 + 32) + 8));
  dispatch_release(*(*(a1 + 32) + 16));
  dispatch_release(*(*(a1 + 32) + 24));
  v3 = *(a1 + 32);

  free(v3);
}

unint64_t size_for_stream_message(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 37) + *(a1 + 107) + 129;
  v2 = *(a1 + 1);
  HIDWORD(v4) = v2 - 2;
  LODWORD(v4) = v2 - 2;
  v3 = v4 >> 1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v1 += *(a1 + 109);
      v5 = *(a1 + 117) + *(a1 + 121);
      return v1 + v5 + 8 * *(a1 + 125);
    }

    if (v3 != 7)
    {
      goto LABEL_8;
    }

LABEL_7:
    v5 = *(a1 + 109);
    return v1 + v5 + 8 * *(a1 + 125);
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v1 += *(a1 + 109);
    v5 = *(a1 + 113);
    return v1 + v5 + 8 * *(a1 + 125);
  }

LABEL_8:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v2;
    _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown message type: %u", v7, 8u);
  }

  return 0;
}

void __OTRStartLegacyStreaming_block_invoke(void *a1)
{
  v2 = a1[6];
  data = dispatch_source_get_data(v2);
  if (data <= 0)
  {

    dispatch_source_cancel(v2);
  }

  else
  {
    v4 = data;
    v5 = _os_trace_malloc_typed();
    (*(mobdevtab + 8))(a1[7], v5, v4);
    v6 = &v5[v4];
    v7 = *(a1[5] + 8);
    v8 = v5;
    if (*(v7 + 24) == 1)
    {
      v8 = &v5[strlen(v5) + 1];
      *(v7 + 24) = 0;
    }

    if (v8 < v6)
    {
      v9 = (v6 - 1);
      while (1)
      {
        v10 = strlen(v8);
        if (*v8)
        {
          break;
        }

LABEL_28:
        v8 += v10 + 1;
        if (v8 >= v6)
        {
          goto LABEL_33;
        }
      }

      v11 = v8 - 1;
      do
      {
        v12 = *++v11;
      }

      while (v12 == 10);
      if (v11 < v6)
      {
        memset(&v38, 0, sizeof(v38));
        v13 = strptime(v11, "%b %d %H:%M:%S ", &v38);
        v14 = mktime(&v38);
        v15 = 0;
        if (!v13)
        {
          goto LABEL_27;
        }

        if (v13 >= v9)
        {
          goto LABEL_27;
        }

        v16 = v14;
        v17 = strchr(v13, 32);
        v15 = 0;
        if (!v17)
        {
          goto LABEL_27;
        }

        if (v17 >= v9)
        {
          goto LABEL_27;
        }

        *v17 = 0;
        v18 = v17 + 1;
        v19 = strchr(v17 + 1, 91);
        v15 = 0;
        if (!v19)
        {
          goto LABEL_27;
        }

        v20 = v19;
        if (v19 >= v9)
        {
          goto LABEL_27;
        }

        __endptr = 0;
        *v19 = 0;
        v36 = strlen(v18);
        v35 = strtol(v20 + 1, &__endptr, 10);
        v21 = strchr(__endptr, 60);
        v15 = 0;
        if (!v21)
        {
          goto LABEL_27;
        }

        v22 = v21;
        if (v21 >= v9)
        {
          goto LABEL_27;
        }

        v23 = strchr(v21 + 1, 62);
        v15 = 0;
        if (!v23)
        {
          goto LABEL_27;
        }

        if (v23 >= v9)
        {
          goto LABEL_27;
        }

        *v23 = 0;
        v24 = strchr(v23 + 1, 58);
        v15 = 0;
        if (!v24 || v24 >= v9)
        {
          goto LABEL_27;
        }

        v25 = v24 + 1;
        v26 = &v24[strlen(v24 + 1) + 1];
        if (v26 < v6)
        {
          *v26 = 0;
          v34 = v25;
          v33 = strlen(v25) + 1;
          v15 = _os_trace_calloc_typed();
          *(v15 + 55) = v16;
          *(v15 + 63) = 0;
          *(v15 + 1) = 0x8100000040;
          *(v15 + 9) = v35;
          if (!strcmp(v22 + 1, "Info"))
          {
            v31 = OTRParseLegacyLogLine_trace_id_counter++;
            v30 = (v31 << 32) | 0x104;
          }

          else
          {
            v27 = strcmp(v22 + 1, "Debug");
            v28 = OTRParseLegacyLogLine_trace_id_counter++;
            v29 = v28 << 32;
            if (v27)
            {
              v30 = v29 | 4;
            }

            else
            {
              v30 = v29 | 0x204;
            }
          }

          *(v15 + 67) = v30;
          *(v15 + 37) = v36 + 1;
          v32 = strncpy((v15 + 129), v18, v36 + 1);
          *(v15 + 109) = v33;
          strncpy(&v32[v36 + 1], v34, v33);
          goto LABEL_27;
        }
      }

      v15 = 0;
LABEL_27:
      (*(a1[4] + 16))();
      free(v15);
      goto LABEL_28;
    }

LABEL_33:
    free(v5);
  }
}

intptr_t __OTRStartLegacyStreaming_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 24);

  return dispatch_semaphore_signal(v2);
}

uint64_t enumerateAndDecompressSubchunk_3500(void *a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = v8;
  v10 = 1;
  v11 = *a2 - 24577;
  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x880F) != 0)
    {
      v10 = (*(v8 + 2))(v8, a2, a3);
    }

    else if (*a2 == 24589)
    {
      v13 = [v7 decompressedBufferForChunk:a2];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 1;
      v14 = [v13 data];
      v15 = [v13 size];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v21 = __enumerateAndDecompressSubchunk_block_invoke_3501;
      v22 = &unk_2787AED88;
      v26 = &v27;
      v23 = v7;
      v16 = v13;
      v24 = v16;
      v25 = v9;
      v17 = v20;
      v18 = 0;
      do
      {
        if (v15 - v18 < 0x10)
        {
          break;
        }

        v19 = *(v14 + v18 + 8);
        if (v15 - v18 - 16 < v19)
        {
          break;
        }

        if (!v21(v17))
        {
          break;
        }

        v18 = (v18 + v19 + 23) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v18 - 1 < v15);

      v10 = *(v28 + 24);
      _Block_object_dispose(&v27, 8);
    }
  }

  return v10 & 1;
}

void sub_22E0610C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E061C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _dataForUUID(void *a1)
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  [a1 getUUIDBytes:v3];
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:16];

  return v1;
}

id _dictForTimeval(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"sec";
  v2 = [MEMORY[0x277CCABB0] numberWithLong:*a1];
  v6[1] = @"usec";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 8)];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id _dictForTimezone(unsigned int *a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"mw";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*a1];
  v6[1] = @"dt";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1[1]];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

id _dictArrayForBacktrace(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = v1;
  obj = [v1 frames];
  v3 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v19[0] = @"iu";
        v8 = [v7 imageUUID];
        v9 = _dataForUUID(v8);
        v19[1] = @"io";
        v20[0] = v9;
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v7, "imageOffset")}];
        v20[1] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  return v2;
}

id _dictForLossCount(unint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"c";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  v6[1] = @"s";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(a1) & 1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

void sub_22E064770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22E06AE4C(void *a1)
{
  objc_begin_catch(a1);
  [v1 invalidate];
  [v1 _runInvalidationHandler:8];
  objc_end_catch();
  JUMPOUT(0x22E06AE14);
}

uint64_t _repack_compact_add_iov(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 104);
  if (v4 == *(result + 108))
  {
    v5 = 2 * v4;
    if (v5 <= 0x10)
    {
      v5 = 16;
    }

    *(result + 108) = v5;
    result = _os_trace_realloc_typed();
    *(v3 + 96) = result;
  }

  if (a2)
  {
    v6 = *(a2 + 8);
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
    v8 = v6 + 16;
    if ((*(a2 + 8) & 7) != 0)
    {
      v8 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 96);
  v10 = *(v3 + 104);
  *(v3 + 104) = v10 + 1;
  v11 = (v9 + 16 * v10);
  *v11 = a2;
  v11[1] = v8;
  *(v3 + 112) += v8;
  return result;
}

void _repack_context_cleanup(uint64_t a1)
{
  if (*(a1 + 104) >= 2u)
  {
    v2 = 1;
    v3 = 16;
    do
    {
      free(*(*(a1 + 96) + v3));
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 104));
  }

  free(*(a1 + 96));
  v4 = *(a1 + 120);

  free(v4);
}

uint64_t _repack_ttl_compact_close_catalog(uint64_t a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  if (*(a1 + 128))
  {
    _repack_ttl_compact_flush_chunkset(a1);
  }

  v4 = *(a1 + 116);
  if (v4 + 1 == *(a1 + 104))
  {
    goto LABEL_86;
  }

  v5 = *(a1 + 80);
  if (*(v5 + 80))
  {
    v6 = **(*(v5 + 72) + 8);
  }

  else
  {
    v6 = _catalog_subchunk_entry_alloc(v5);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 < *(a1 + 8))
  {
    *(a1 + 8) = v8;
  }

  if (v7 > *(a1 + 16))
  {
    *(a1 + 16) = v7;
  }

  v9 = *(a1 + 80);
  if (*(*(a1 + 192) + 24) == 1)
  {
    v10 = v9[2];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v81 = ___repack_ttl_compact_close_catalog_block_invoke;
    v82 = &__block_descriptor_40_e16_v24__0_16C_8_v16l;
    v83 = a1;
    v11 = v10[2];
    if (v11)
    {
      do
      {
        (v81)(v80, v11 + 2, v11[4]);
        v11 = *v11;
      }

      while (v11);
      v9 = *(a1 + 80);
    }

    v12 = v9[5];
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v77 = ___repack_ttl_compact_close_catalog_block_invoke_2;
    v78 = &__block_descriptor_40_e9_v16__0_v8l;
    v79 = a1;
    if (v12)
    {
      v13 = v12[2];
      if (v13)
      {
        do
        {
          v77(v76, v13[4]);
          v13 = *v13;
        }

        while (v13);
        v9 = *(a1 + 80);
      }
    }
  }

  v14 = v9[2];
  if (v14)
  {
    v14 = *(v14 + 24);
  }

  v15 = 16 * v14 + 40;
  if (v14 >> 60 || 16 * v14 >= 0xFFFFFFFFFFFFFFD8)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_91;
  }

  v16 = v9[4];
  v17 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = __CFADD__(v15, v17);
  v19 = v15 + v17;
  if (v18)
  {
LABEL_91:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_92;
  }

  v20 = v9[6];
  if (v20 >> 60)
  {
LABEL_92:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_93;
  }

  v21 = v9[7];
  if (!is_mul_ok(v21, 6uLL))
  {
LABEL_93:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_94:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_95;
  }

  v22 = v9[5];
  if (v22)
  {
    v23 = *(v22 + 24);
  }

  else
  {
    v23 = 0;
  }

  if (!is_mul_ok(v23, 0x38uLL))
  {
    goto LABEL_94;
  }

  v24 = 16 * v20;
  v25 = 56 * v23;
  v18 = __CFADD__(v25, v24);
  v26 = v25 + v24;
  if (v18)
  {
LABEL_95:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_96;
  }

  v27 = 6 * v21;
  v18 = __CFADD__(v26, v27);
  v28 = v26 + v27;
  if (v18)
  {
LABEL_96:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_97:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_98:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_99;
  }

  if ((v28 & 6) != 0)
  {
    v28 = (v28 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = __CFADD__(v28, v19);
  v29 = v28 + v19;
  if (v18)
  {
    goto LABEL_97;
  }

  if (v22)
  {
    v22 = *(v22 + 24);
  }

  v30 = 2 * v22 + 32;
  if ((v22 & 0x8000000000000000) != 0 || 2 * v22 >= 0xFFFFFFFFFFFFFFE0)
  {
    goto LABEL_98;
  }

  v31 = 2 * v22 + 40;
  if (v30 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_99:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_100:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_101:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_102:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_103:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  v18 = __CFADD__(v31, 2 * v16);
  v32 = v31 + 2 * v16;
  v33 = v18;
  if ((v16 & 0x8000000000000000) != 0 || v33)
  {
    goto LABEL_100;
  }

  v34 = (v32 & 0xFFFFFFFFFFFFFFF8) + 8;
  if ((v32 & 6) == 0)
  {
    v34 = v32;
  }

  v35 = v9[10];
  v36 = !is_mul_ok(v35, v34);
  v37 = v35 * v34;
  v38 = v29 + v37;
  v39 = __CFADD__(v29, v37);
  if (v36 || v39)
  {
    goto LABEL_101;
  }

  v40 = _os_trace_calloc_typed();
  v41 = v40;
  *v40 = 0x110000600BLL;
  v40[1] = 0;
  v40[4] = v9[1];
  v42 = (v40 + 5);
  v84 = v40 + 5;
  v43 = v9[2];
  if (v43)
  {
    v44 = 16 * v43[3];
  }

  else
  {
    v44 = 0;
  }

  if ((v38 - v44) <= 39)
  {
    goto LABEL_60;
  }

  v75 = (v40 + 2);
  v45 = v40 + v38;
  v85 = MEMORY[0x277D85DD0];
  v86 = 0x40000000;
  v87 = __catalog_chunk_unparse_uuid_block_invoke;
  v88 = &__block_descriptor_tmp_76;
  v89 = &v84;
  v46 = v43[2];
  v47 = (v40 + 5);
  if (v46)
  {
    do
    {
      (v87)(&v85, v46 + 2, v46[4]);
      v46 = *v46;
    }

    while (v46);
    v47 = v84;
  }

  v48 = &v47[v44];
  v84 = v48;
  *v75 = v48 - v42;
  if (v45 - v9[4] < v48)
  {
LABEL_60:
    free(v41);
    v41 = 0;
    v49 = MEMORY[8];
    v50 = MEMORY[8] + 16;
    goto LABEL_78;
  }

  v51 = v9[3];
  v85 = MEMORY[0x277D85DD0];
  v86 = 0x40000000;
  v87 = __catalog_chunk_unparse_subsystem_block_invoke;
  v88 = &__block_descriptor_tmp_78;
  v89 = v9;
  v90 = &v84;
  _os_trace_str_map_for_each(v51, &v85);
  v84 = v9[4] + v84;
  v52 = ((v84 + 7) & 0xFFFFFFFFFFFFFFF8) - v84;
  bzero(v84, v52);
  v53 = v84 + v52;
  v84 = v53;
  v54 = v53 - v42;
  *(v41 + 9) = v53 - v42;
  v55 = v9[5];
  if (v55)
  {
    v56 = v55[12];
  }

  else
  {
    v56 = 0;
  }

  *(v41 + 10) = v56;
  v85 = MEMORY[0x277D85DD0];
  v86 = 0x40000000;
  v87 = __catalog_chunk_unparse_procinfo_block_invoke;
  v88 = &__block_descriptor_tmp_79;
  v89 = v9;
  v90 = &v84;
  v91 = v41 + v38;
  if (v55)
  {
    v57 = *(v55 + 2);
    if (v57)
    {
      do
      {
        (v87)(&v85, v57[4]);
        v57 = *v57;
      }

      while (v57);
      v53 = v84;
      v54 = v84 - v42;
    }
  }

  *(v41 + 11) = v54;
  *(v41 + 12) = 0;
  v58 = v9[8];
  if (v58)
  {
    do
    {
      v59 = *(v58 + 8);
      if (v59)
      {
        *v53 = *(v58 + 1);
        *(v53 + 4) = v59;
        *(v53 + 5) = *(v58 + 9);
        v60 = v53 + 24;
        v84 = v53 + 24;
        if ((v45 - (v53 + 24)) > 3)
        {
          *(v53 + 6) = *(*(v58 + 6) + 4);
          v61 = *(v58 + 6);
          v84 = v53 + 28;
          v85 = MEMORY[0x277D85DD0];
          v86 = 0x40000000;
          v87 = __catalog_chunk_unparse_subchunk_procinfos_block_invoke;
          v88 = &__block_descriptor_tmp_82;
          v89 = &v84;
          hashtable_iterate(v61, &v85);
          v60 = v84;
          if ((v45 - v84) >= 4)
          {
            *v84 = *(*(v58 + 5) + 4);
            v84 = v60 + 4;
            v62 = *(v58 + 5);
            v85 = MEMORY[0x277D85DD0];
            v86 = 0x40000000;
            v87 = __catalog_chunk_unparse_subchunk_subcats_block_invoke;
            v88 = &__block_descriptor_tmp_83;
            v89 = &v84;
            hashtable_iterate(v62, &v85);
            v60 = v84;
          }
        }

        ++*(v41 + 12);
        v63 = ((v60 + 7) & 0xFFFFFFFFFFFFFFF8) - v60;
        bzero(v60, v63);
        v53 = v84 + v63;
        v84 = v84 + v63;
      }

      v58 = *v58;
    }

    while (v58);
    v54 = v53 - v42;
  }

  if (v54 >= 0x10000)
  {
    goto LABEL_102;
  }

  v49 = v53 - v75;
  v41[1] = v49;
  v50 = v49 + 16;
  if (v49 + 16 > v38)
  {
    goto LABEL_103;
  }

LABEL_78:
  if ((v49 & 7) != 0)
  {
    v64 = (v49 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v64 = v50;
  }

  v65 = (*(a1 + 96) + 16 * *(a1 + 116));
  *v65 = v41;
  v65[1] = v64;
  *(a1 + 112) += v64;
  v66 = _os_trace_writev();
  if (v66 != -1)
  {
    *(a1 + 184) += v66;
    if (*(a1 + 104) >= 2u)
    {
      v67 = *(a1 + 96);
      v68 = 1;
      v69 = 16;
      do
      {
        free(*(v67 + v69));
        v67 = *(a1 + 96);
        v70 = (v67 + v69);
        ++v68;
        *v70 = 0;
        v70[1] = 0;
        v69 += 16;
      }

      while (v68 < *(a1 + 104));
    }

    *(a1 + 112) = 0;
    v4 = 1;
LABEL_86:
    *(a1 + 104) = v4;
    _catalog_destroy(*(a1 + 24));
    _catalog_destroy(*(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 24) = 0;
    result = 1;
    *(a1 + 40) = 0;
    return result;
  }

  v72 = __error();
  if (!a2)
  {
    return 0;
  }

  v73 = create_repack_error(*v72, @"Failed to write file data to temp file");
  v74 = v73;
  result = 0;
  *a2 = v73;
  return result;
}

void _repack_ttl_compact_flush_chunkset(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v12 = *MEMORY[0x277D85DE8];
  v2 = dst_buffer;
  bzero(dst_buffer, 0x10000uLL);
  v3 = 256;
  v4 = compression_encode_buffer(dst_buffer, 0x10000uLL, *(v1 + 120), *(v1 + 128), 0, COMPRESSION_LZ4);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v2 = *(v1 + 120);
    v5 = *(v1 + 128);
  }

  v6 = _os_trace_malloc_typed();
  v7 = v6;
  if ((v5 & 7) != 0)
  {
    *(v6 + ((v5 + 16) & 0xFFFFFFFFFFFFFFF8)) = 0;
  }

  *v6 = 0x110000600DLL;
  v6[1] = v5;
  memcpy(v6 + 2, v2, v5);
  _repack_compact_add_iov(v1, v7);
  v8 = *(v1 + 80);
  v9 = *(v1 + 128);
  if (*(v8 + 80))
  {
    v10 = **(*(v8 + 72) + 8);
  }

  else
  {
    v10 = _catalog_subchunk_entry_alloc(v8);
    v8 = *(v1 + 80);
  }

  *(v10 + 8) = v9;
  *(v10 + 9) = v3;
  _catalog_subchunk_entry_alloc(v8);
  bzero(*(v1 + 120), *(v1 + 132));
  *(v1 + 128) = 0;
}

void ___repack_ttl_compact_close_catalog_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v3];
}

void ___repack_ttl_compact_close_catalog_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2 + 40];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a2 + 24];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v4];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v5];
  v6 = *(a2 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___repack_ttl_compact_close_catalog_block_invoke_3;
  v7[3] = &__block_descriptor_40_e13_v24__0_v8_v16l;
  v7[4] = *(a1 + 32);
  hashtable_iterate(v6, v7);
}

id create_repack_error(int a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"LogRepackErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void ___repack_ttl_compact_close_catalog_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a3 + 16];
  [*(*(*(a1 + 32) + 192) + 32) addObject:v4];
}

uint64_t _repack_ttl_compact_open_catalog(uint64_t a1, _DWORD *a2)
{
  result = _catalog_create_with_chunk(a2, 0);
  *(a1 + 24) = result;
  if (result)
  {
    *(a1 + 40) = *(result + 64);
    *(a1 + 116) = *(a1 + 104);
    _repack_compact_add_iov(a1, 0);
    _catalog_create();
  }

  return result;
}

uint64_t _compact_chunkset(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v141 = v4;
  v6 = v5;
  v7 = v1;
  v190 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = *v7;
  if (*v7 <= 24587)
  {
    if ((v10 - 24578) < 3)
    {
LABEL_3:
      v11 = *(v7 + 24);
      v12 = *(v7 + 16);
      *(v6 + 32) = 0;
      v13 = _os_procinfo_map_lookup(*(*(v6 + 24) + 40), v12, v11);
      *(v6 + 32) = v13;
      goto LABEL_4;
    }

    if (v10 == 24577)
    {
      v84 = *(v7 + 8);
      v85 = v84 - 16;
      if (v84 < 0x10)
      {
LABEL_119:
        *(v6 + 48) = 0;
        [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: chunk with chunkset_start_addr and id: %p, %@ was unreadable!", v141, v9];
        v115 = LABEL_145:;
        fprintf(*MEMORY[0x277D85DF8], "%s\n", [v115 UTF8String]);
        goto LABEL_176;
      }

      v123 = v7 + 32;
      if (v84 - 4113 >= 0xFFFFFFFFFFFFF00FLL)
      {
        v124 = *(v7 + 32);
        if (v85 < v124)
        {
          goto LABEL_119;
        }

        v125 = *(v7 + 34);
        if (v125 <= 0xFFF)
        {
          if (*(v7 + 29))
          {
            if (v85 <= v124 + (4096 - v125))
            {
              *(v6 + 56) = v123 + v124;
              *(v6 + 64) = (4096 - v125);
              goto LABEL_163;
            }
          }

          else if (v85 == 4096)
          {
            *(v6 + 56) = v123 + v125;
            *(v6 + 64) = (4096 - v125);
            goto LABEL_163;
          }
        }
      }

      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
LABEL_163:
      *(v6 + 48) = v123;
      goto LABEL_3;
    }

LABEL_144:
    [MEMORY[0x277CCACA8] stringWithFormat:@"Warning: chunk with chunkset_start_addr and id: %p, %@ had a bad preamble!", v141, v9];
    goto LABEL_145;
  }

  if (v10 == 24588)
  {
    v83 = *(v7 + 29);
  }

  else
  {
    if (v10 != 24592)
    {
      goto LABEL_144;
    }

    v83 = 0;
  }

  v116 = *(v7 + 16);
  *(v6 + 32) = 0;
  v117 = *(*(v6 + 24) + 40);
  if (!v117)
  {
    goto LABEL_158;
  }

  v118 = (v117 + 16);
  do
  {
    v118 = *v118;
    if (!v118)
    {
      goto LABEL_158;
    }
  }

  while (v118[2] != v116);
  v13 = v118[4];
  *(v6 + 32) = v13;
  if (v13)
  {
    v119 = v83 == 0;
  }

  else
  {
    v119 = 1;
  }

  if (v119)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_158:
    *(v6 + 48) = 0;
    v115 = [MEMORY[0x277CCACA8] stringWithFormat:@"ERROR: unpacking chunk with chunkset_start_addr and id: %p, %@ was unsuccessful", v141, v9];
    if (v3)
    {
      create_repack_error(65, v115);
      *v3 = v122 = 0;
    }

    else
    {
      v122 = 0;
    }

    goto LABEL_177;
  }

  v120 = *(v13 + 1);
  if (v120 < 0)
  {
    v121 = v120 & 0x7FFF;
    *(v13 + 1) = v121;
    if (v83 == 4)
    {
      *(v13 + 1) = v121 | 1;
    }
  }

LABEL_5:
  v14 = *(v7 + 8);
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFF8) + 24;
  }

  else
  {
    v15 = v14 + 16;
  }

  if (*(v6 + 128) + v15 > *(v6 + 132))
  {
    _repack_ttl_compact_flush_chunkset(v6);
  }

  if (*v7 != 24577)
  {
    v86 = v9;
    v87 = v86;
    *&v160 = 0;
    v158 = 0u;
    memset(v159, 0, sizeof(v159));
    *__n = 0u;
    v157 = 0u;
    if ((*v7 - 24579) <= 1)
    {
      v88 = [v86 stringByAppendingFormat:@"-%llu", v7 - v141];
      v89 = 48;
      if (*v7 == 24580)
      {
        v89 = 56;
      }

      v90 = _os_trace_uuid_map_lookup(*(*(v6 + 192) + 16), (v7 + v89));
      v91 = *(v7 + 32);
      v143 = 0u;
      v144 = 0u;
      v145 = 0;
      _OSLogEventUnpackChunk_3949(v7, *(v6 + 24), &v143);
      v92 = *(v6 + 40);
      v94 = *(v92 + 16);
      v93 = *(v92 + 24);
      __n[0] = 3;
      *(v159 + 8) = v143;
      if (v94 <= v91)
      {
        v94 = v91;
      }

      if (v94 < v93)
      {
        v93 = v94;
      }

      *(&v157 + 2) = 0;
      WORD3(v157) = 0;
      v96 = *(v6 + 160);
      v95 = *(v6 + 168);
      v97 = *(v6 + 24);
      __n[1] = v93;
      LOWORD(v157) = 0;
      *(&v157 + 1) = v95;
      *&v158 = v7 - v141;
      *(&v158 + 1) = v96;
      *&v159[0] = v97;
      *(&v159[1] + 8) = v144;
      *(&v159[2] + 1) = v145;
      *&v160 = 0;
      if ([**(v6 + 192) _setLogEvent:__n rangeUUIDIndex:v90 machTimebase:*(v6 + 192) + 8 traceFilename:&stru_2841AD290])
      {
        if ((*(*(v6 + 136) + 16))())
        {

          goto LABEL_130;
        }

        ++*(v6 + 152);
      }

      goto LABEL_174;
    }

LABEL_130:
    memcpy((*(v6 + 120) + *(v6 + 128)), v7, v15);
    *(v6 + 128) += v15;
    _catalog_subchunk_update_times(*(v6 + 80), *(v7 + 32));
    v98 = _catalog_procinfo_create(*(v6 + 80), *(v6 + 32));
    *(v6 + 72) = v98;
    _catalog_subchunk_procinfo_add(*(v6 + 80), v98);
    *(v6 + 72) = 0;
    *(v6 + 32) = 0;
LABEL_174:

    goto LABEL_175;
  }

  v139 = v7;
  v132 = v9;
  v140 = v9;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  memset(v159, 0, sizeof(v159));
  v157 = 0u;
  v16 = *(v6 + 48);
  __n[1] = v16[1];
  v17 = *v16;
  LODWORD(v17) = 268435472;
  __n[0] = v17;
  *(v6 + 88) = __n;
  v18 = v16 + 2;
  v19 = *v16;
  v20 = v16 + v19;
  if (v19 > 0x1000)
  {
    v21 = v18;
  }

  else
  {
    v21 = v20;
  }

  while (1)
  {
    v22 = v18 + 3;
    if ((v18 + 3) >= v21)
    {
      break;
    }

    v23 = v18;
    v24 = v18[2];
    v25 = HIWORD(v24);
    if (!HIWORD(v24) || v25 > (v21 - v22))
    {
      break;
    }

    if ((v24 & 0x7000000000000) != 0)
    {
      v27 = (HIWORD(v24) & 0xFFF8) + 32;
    }

    else
    {
      v27 = v25 + 24;
    }

    v18 = (v18 + v27);
    if (*v23)
    {
      context = objc_autoreleasePoolPush();
      v28 = [v140 stringByAppendingFormat:@"-%llu", v23 - v141];
      v29 = *v23;
      v30 = (v23[2] & 0xFFFFFFFFFFFFLL) + *(*(v6 + 48) + 8);
      v152 = 0u;
      v153 = 0u;
      v154 = 0;
      _OSLogEventUnpackChunk_3949(v139, *(v6 + 24), &v152);
      v31 = *(v6 + 40);
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v148 = v152;
      if (v33 <= v30)
      {
        v33 = v30;
      }

      if (v33 < v32)
      {
        v32 = v33;
      }

      *(&v144 + 2) = 0;
      WORD3(v144) = 0;
      v35 = *(v6 + 160);
      v34 = *(v6 + 168);
      v36 = *(v6 + 24);
      *&v143 = 3;
      *(&v143 + 1) = v32;
      LOWORD(v144) = 0;
      *(&v144 + 1) = v34;
      v145 = v23 - v141;
      v146 = v35;
      v147 = v36;
      v149 = v153;
      v150 = v154;
      v151 = v23;
      if (![**(v6 + 192) _setLogEvent:&v143 rangeUUIDIndex:0 machTimebase:*(v6 + 192) + 8 traceFilename:&stru_2841AD290])
      {
        goto LABEL_112;
      }

      if (((*(*(v6 + 136) + 16))() & 1) == 0)
      {
        ++*(v6 + 152);
        goto LABEL_112;
      }

      v37 = *(v23 + 1);
      if (v37)
      {
        if (!(v23[2] >> 51))
        {
          goto LABEL_112;
        }

        v138 = 8;
        if ((v37 & 0x10) != 0)
        {
LABEL_36:
          v138 += 8;
          if (*(v23 + 11) < v138)
          {
            goto LABEL_112;
          }
        }
      }

      else
      {
        v138 = 0;
        if ((v37 & 0x10) != 0)
        {
          goto LABEL_36;
        }
      }

      if (v29 != 2)
      {
        if ((*(v23 + 1) & 0x100) == 0)
        {
          LODWORD(v136) = 0;
          v137 = 0;
          v38 = v138;
          goto LABEL_46;
        }

        v38 = v138 + 4;
        if (v138 + 4 > *(v23 + 11))
        {
          goto LABEL_112;
        }

        v136 = WORD1(v22[v138 / 8]);
        v137 = LOWORD(v22[v138 / 8]);
        if (v136 + v137 > 0x1000 || 4096 - *(v6 + 64) > v137)
        {
          goto LABEL_112;
        }

LABEL_47:
        v39 = *(v6 + 32);
        if (*(v39 + 2))
        {
          v40 = 4;
        }

        else
        {
          v40 = 6;
        }

        v41 = v37 & 0xE;
        if (v41 > 7)
        {
          if (v41 != 8)
          {
            if (v41 == 10)
            {
              v40 = 20;
            }

            else
            {
              if (v41 != 12)
              {
                goto LABEL_63;
              }

              v40 = 6;
            }
          }
        }

        else
        {
          if (v41 == 2 || v41 == 4 || v41 == 6)
          {
            v40 = 4;
            goto LABEL_65;
          }

LABEL_63:
          v40 = 0;
        }

LABEL_65:
        v42 = v38 + v40;
        v43 = v23[2];
        if (v42 > HIWORD(v43) || !v40)
        {
          goto LABEL_112;
        }

        v44 = (v22 + v38);
        if (v40 == 6)
        {
          v45 = 0;
          v46 = *(v44 + 2) << 32;
        }

        else
        {
          v46 = 0;
          v45 = v40 == 4 ? 0 : (v44 + 1);
        }

        v47 = HIWORD(v43);
        v48 = *v44;
        if ((v37 & 0x20) != 0)
        {
          v42 += 2;
          if (v42 > v47)
          {
            goto LABEL_112;
          }
        }

        if (v29 == 2)
        {
          v49 = 0;
          v50 = 0;
LABEL_83:
          if (!*(v6 + 72))
          {
            v134 = v18;
            __sb = v50;
            v53 = v45;
            v54 = v48;
            v55 = _catalog_procinfo_create(*(v6 + 80), *(v6 + 32));
            *(v6 + 72) = v55;
            _catalog_subchunk_procinfo_add(*(v6 + 80), v55);
            v48 = v54;
            v45 = v53;
            v50 = __sb;
            v18 = v134;
            v37 = *(v23 + 1);
          }

          v56 = v37 & 0xE;
          if (v56 == 10)
          {
            v59 = *(*(v6 + 80) + 16);
            if (v59)
            {
              v60 = *(v59 + 24);
            }

            else
            {
              v60 = 0;
            }

            _os_trace_uuid_map_insert(v59, v45, v60);
          }

          else if (v56 == 8)
          {
            v57 = _catalog_procinfo_lookup_pc(*(v6 + 32), v46 | v48);
            if (v57)
            {
              *&v189[10] = 0;
              v186 = *(v57 + 8);
              v58 = *v57;
              v187 = *v57;
              v188 = WORD2(v58);
              *v189 = *(v57 + 16);
              _catalog_procinfo_uuidinfo_add(*(v6 + 80), *(v6 + 72), &v186);
            }
          }

          if (v49)
          {
            v135 = v49;
            v61 = *(v6 + 72);
            v62 = *(v6 + 80);
            v155 = v50;
            v63 = v61;
            if (!hashtable_lookup(*(v61 + 64), &v155))
            {
              v64 = v155;
              v128 = v63;
              __sa = *(v135 + 8);
              v127 = *(v135 + 16);
              LOWORD(v186) = v155;
              v65 = v62;
              v66 = _os_trace_calloc_typed();
              *v66 = v64;
              v67 = _os_trace_str_map_entry(v65[3], __sa);
              *(v66 + 8) = v67;
              if (!v67)
              {
                _os_trace_str_map_insert(v65 + 3, __sa, v65[4]);
                v68 = strlen(__sa);
                v69 = v65[3];
                v65[4] += v68 + 1;
                *(v66 + 8) = _os_trace_str_map_entry(v69, __sa);
              }

              v70 = _os_trace_str_map_entry(v65[3], v127);
              *(v66 + 16) = v70;
              if (!v70)
              {
                _os_trace_str_map_insert(v65 + 3, v127, v65[4]);
                v71 = strlen(v127);
                v72 = v65[3];
                v65[4] += v71 + 1;
                *(v66 + 16) = _os_trace_str_map_entry(v72, v127);
              }

              hashtable_insert(*(v128 + 64), &v186, v66);
              ++v65[7];
            }

            v73 = *(v6 + 80);
            LOWORD(v186) = _os_trace_str_map_lookup(*(v73 + 24), *(v135 + 8));
            if (*(v73 + 80))
            {
              v74 = **(*(v73 + 72) + 8);
            }

            else
            {
              v74 = _catalog_subchunk_entry_alloc(v73);
            }

            hashtable_insert(v74[5], &v186, 0);
            LOWORD(v186) = _os_trace_str_map_lookup(*(v73 + 24), *(v135 + 16));
            if (*(v73 + 80))
            {
              v75 = **(*(v73 + 72) + 8);
            }

            else
            {
              v75 = _catalog_subchunk_entry_alloc(v73);
            }

            hashtable_insert(v75[5], &v186, 0);
          }

          _catalog_subchunk_update_times(*(v6 + 80), v30);
          v76 = *(v6 + 88);
          v77 = v76 + *v76;
          v78 = v23[2];
          if ((v78 & 0x7000000000000) != 0)
          {
            v79 = (HIWORD(v78) & 0xFFF8) + 32;
          }

          else
          {
            v79 = HIWORD(v78) + 24;
          }

          memcpy(v76 + *v76, v23, v79);
          *v76 += v79;
          if (*(v23 + 3))
          {
            v80 = *(v6 + 64);
            v81 = v76[1] - v136;
            v76[1] = v81;
            memcpy(v76 + v81, (*(v6 + 56) + v137 + v80 - 4096), v136);
            v82 = &v77[v138];
            *(v82 + 12) = v81;
            *(v82 + 13) = v136;
          }

          goto LABEL_112;
        }

        if ((*(v23 + 1) & 0x200) != 0)
        {
          __s = *v44;
          v133 = v45;
          v51 = v42 + 2;
          if (v42 + 2 > v47)
          {
            v49 = 0;
            v50 = 0;
            v42 = HIWORD(v43);
          }

          else
          {
            v50 = *(v22 + v42);
            LOWORD(v186) = v50;
            v52 = hashtable_lookup(*(v39 + 64), &v186);
            v37 = *(v23 + 1);
            v42 = v51;
            v49 = v52;
          }

          v45 = v133;
          v48 = __s;
          if ((v37 & 0x400) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v49 = 0;
          v50 = 0;
          if ((*(v23 + 1) & 0x400) == 0)
          {
            goto LABEL_83;
          }
        }

        if (v42 >= *(v23 + 11))
        {
          goto LABEL_112;
        }

        goto LABEL_83;
      }

      if ((*(v23 + 1) & 0x200) != 0)
      {
        v38 = v138 + 8;
        if (v138 + 8 > *(v23 + 11))
        {
          goto LABEL_112;
        }
      }

      else
      {
        v38 = v138;
      }

      if (*(v23 + 1) != 1 || (v38 += 8, v38 <= *(v23 + 11)))
      {
        LODWORD(v136) = 0;
        v137 = 0;
LABEL_46:
        v138 = 0;
        goto LABEL_47;
      }

LABEL_112:

      objc_autoreleasePoolPop(context);
    }
  }

  v9 = v132;
  if (*(v6 + 72))
  {
    v99 = LOWORD(__n[0]);
    v100 = WORD1(__n[0]);
    v101 = LOWORD(__n[0]) - WORD1(__n[0]) + 4096;
    v102 = v101 < 0xFF9;
    if (v101 >= 0xFF9)
    {
      v101 = 4096;
    }

    if (WORD1(__n[0]) == 4096)
    {
      v103 = LOWORD(__n[0]);
    }

    else
    {
      v103 = v101;
    }

    v104 = WORD1(__n[0]) != 4096 && v102;
    v105 = (*(v6 + 120) + *(v6 + 128));
    *v105 = 24577;
    v105[1] = v103 + 16;
    v106 = (*(v6 + 128) + 16);
    *(v6 + 128) = v106;
    LOWORD(v105) = *(v139 + 30);
    v107 = *(v6 + 120) + v106;
    v108 = *(v139 + 16);
    v109 = *(v139 + 24);
    *(v107 + 12) = *(v139 + 28);
    *(v107 + 8) = v109;
    *v107 = v108;
    *(v107 + 13) = v104;
    *(v107 + 14) = v105;
    v110 = (*(v6 + 128) + 16);
    *(v6 + 128) = v110;
    v111 = *(v6 + 120);
    if (v104)
    {
      memcpy((v111 + v110), __n, v99);
      v112 = (v99 & 0xFFF8) + 8;
      if ((v99 & 7) == 0)
      {
        v112 = v99;
      }

      v113 = (*(v6 + 128) + v112);
      *(v6 + 128) = v113;
      memcpy((*(v6 + 120) + v113), __n + v100, 4096 - v100);
      v114 = *(v6 + 128) + ((4103 - v100) & 0xFFFFFFF8);
    }

    else
    {
      memcpy((v111 + v110), __n, v103);
      v114 = *(v6 + 128) + v103;
    }

    *(v6 + 128) = v114;
  }

  *(v6 + 72) = 0;
  *(v6 + 32) = 0;
  *(v6 + 88) = 0;
  *(v6 + 48) = 0;

LABEL_175:
  v115 = 0;
LABEL_176:
  v122 = 1;
LABEL_177:

  return v122;
}

void *_OSLogEventUnpackChunk_3949(void *result, uint64_t a2, uint64_t a3)
{
  *a3 = result;
  v4 = (a3 + 16);
  v5 = *result;
  if (*result > 24579)
  {
    switch(v5)
    {
      case 24580:
        v12 = result[1];
        v7 = v12 - 72;
        if (v12 < 0x48)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = result + 11;
        goto LABEL_21;
      case 24588:
        v14 = result[1];
        v7 = v14 - 16;
        if (v14 < 0x10)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = (result + 30);
        goto LABEL_21;
      case 24592:
        v10 = result[1];
        v7 = v10 - 16;
        if (v10 < 0x10)
        {
          goto LABEL_27;
        }

        v8 = 0;
        v9 = result + 4;
        goto LABEL_21;
    }

LABEL_16:
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    return result;
  }

  if (v5 == 24577)
  {
    v11 = result[1];
    v7 = v11 - 16;
    if (v11 < 0x10)
    {
      goto LABEL_27;
    }

    v9 = result + 4;
    v8 = *(result + 29) != 0;
    goto LABEL_21;
  }

  if (v5 == 24578)
  {
    v13 = result[1];
    v7 = v13 - 32;
    if (v13 < 0x20)
    {
      goto LABEL_27;
    }

    v8 = 0;
    v9 = result + 6;
    goto LABEL_21;
  }

  if (v5 != 24579)
  {
    goto LABEL_16;
  }

  v6 = result[1];
  v7 = v6 - 48;
  if (v6 < 0x30)
  {
    goto LABEL_27;
  }

  v8 = 0;
  v9 = result + 8;
LABEL_21:
  if (v7 - 4097 < 0xFFFFFFFFFFFFF00FLL)
  {
LABEL_22:
    *v4 = 0;
    *(a3 + 24) = 0;
    goto LABEL_23;
  }

  v15 = *v9;
  if (v7 < v15)
  {
LABEL_27:
    *(a3 + 8) = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v17 = *(v9 + 1);
  if (v17 > 0xFFF)
  {
    goto LABEL_22;
  }

  if (v8)
  {
    if (v7 > v15 + (4096 - v17))
    {
      goto LABEL_22;
    }

    v18 = (4096 - v17);
    *v4 = v9 + v15;
  }

  else
  {
    if (v7 != 4096)
    {
      goto LABEL_22;
    }

    *v4 = v9 + v17;
    v18 = (4096 - v17);
  }

  *(a3 + 24) = v18;
LABEL_23:
  *(a3 + 8) = v9;
  *(a3 + 32) = 0;
  if ((v5 - 24577) >= 4)
  {
    if (v5 == 24592)
    {
      v16 = 0;
    }

    else
    {
      if (v5 != 24588)
      {
        return result;
      }

      v16 = *(result + 29);
    }

    if (a2)
    {
      v19 = *(a2 + 40);
      if (v19)
      {
        v20 = (v19 + 16);
        while (1)
        {
          v20 = *v20;
          if (!v20)
          {
            break;
          }

          if (v20[2] == result[2])
          {
            v21 = v20[4];
            *(a3 + 32) = v21;
            if (v21)
            {
              v22 = v16 == 0;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = *(v21 + 2);
              if (v23 < 0)
              {
                v24 = v23 & 0x7FFF;
                *(v21 + 2) = v24;
                if (v16 == 4)
                {
                  *(v21 + 2) = v24 | 1;
                }
              }
            }

            return result;
          }
        }
      }
    }
  }

  else if (a2)
  {
    result = _os_procinfo_map_lookup(*(a2 + 40), result[2], *(result + 6));
    *(a3 + 32) = result;
  }

  return result;
}

void _tracev3_chunk_decompress_and_enumerate_chunks_helper(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v17 = 0;
  v16 = 0;
  v6 = _tracev3_chunk_decompress(a1, a2, &v16, &v17);
  if (v6)
  {
    v7 = v17;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v12 = ___tracev3_chunk_decompress_and_enumerate_chunks_helper_block_invoke;
    v13 = &unk_2787AEEB0;
    v14 = v5;
    v15 = v6;
    v8 = v11;
    v9 = 0;
    do
    {
      if (v7 - v9 < 0x10)
      {
        break;
      }

      v10 = *&v6[v9 + 8];
      if (v7 - v9 - 16 < v10)
      {
        break;
      }

      if (!v12(v8))
      {
        break;
      }

      v9 = (v9 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v9 - 1 < v7);
  }

  if (v16)
  {
    free(v6);
  }
}

uint64_t ___tracev3_chunk_decompress_and_enumerate_chunks_helper_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  return v3;
}

BOOL purge_unused_uuids(void *a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = v6;
  if (![v6 count])
  {
    v27 = 0;
    v12 = 1;
    goto LABEL_46;
  }

  v9 = opendir([v5 UTF8String]);
  if (!v9)
  {
    v36 = *__error();
    v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to logarchive %@: %s (%d)", v5, strerror(v36), v36];
    v27 = create_repack_error(-1, v37);

    v12 = 0;
    if (!a3)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v10 = v9;
  v43 = v7;
  v42 = a3;
  while (1)
  {
    v11 = readdir(v10);
    v12 = v11 == 0;
    if (!v11)
    {
      break;
    }

    if (v11->d_type == 4)
    {
      d_name = v11->d_name;
      if ((v11->d_name[0] != 46 || v11->d_name[1] != 46 || v11->d_name[2]) && (!strcmp(v11->d_name, "dsc") || strlen(d_name) == 2))
      {
        snprintf(__str, 0x400uLL, "%s/%s", [v5 UTF8String], d_name);
        v14 = opendir(__str);
        if (!v14)
        {
          v38 = *__error();
          v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unable to open %s: %s (%d)", __str, strerror(v38), v38];
          v27 = create_repack_error(-1, v33);
          a3 = v42;
          v7 = v43;
          goto LABEL_43;
        }

        v15 = v14;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v18 = readdir(v15);
          if (!v18)
          {
            break;
          }

          if (v18->d_name[0] != 46)
          {
            v19 = v18->d_name;
            v20 = strcmp(d_name, "dsc");
            v21 = objc_alloc(MEMORY[0x277CCAB68]);
            if (v20)
            {
              v22 = [v21 initWithFormat:@"%s%s", d_name, v19];
            }

            else
            {
              v22 = [v21 initWithFormat:@"%s", v19, v41];
            }

            v23 = v22;
            [v22 insertString:@"-" atIndex:8];
            [v23 insertString:@"-" atIndex:13];
            [v23 insertString:@"-" atIndex:18];
            [v23 insertString:@"-" atIndex:23];
            v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
            if (([v44 containsObject:v24] & 1) == 0)
            {
              v41 = v19;
              v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s/%s", __str];
              [v43 addObject:v25];
              ++v17;
            }

            ++v16;
          }
        }

        if (v17 == v16)
        {
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
          [v8 addObject:v26];
        }

        closedir(v15);
      }
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = v43;
  v28 = v43;
  v29 = [v28 countByEnumeratingWithState:&v49 objects:v54 count:16];
  a3 = v42;
  if (v29)
  {
    v30 = v29;
    v31 = *v50;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v28);
        }

        unlink([*(*(&v49 + 1) + 8 * i) fileSystemRepresentation]);
      }

      v30 = [v28 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v30);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v33 = v8;
  v27 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v27)
  {
    v34 = *v46;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v33);
        }

        rmdir([*(*(&v45 + 1) + 8 * j) fileSystemRepresentation]);
      }

      v27 = [v33 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v27);
  }

LABEL_43:

  closedir(v10);
  if (a3)
  {
LABEL_44:
    if (!v12)
    {
      v39 = v27;
      v12 = 0;
      *a3 = v27;
    }
  }

LABEL_46:

  return v12;
}

int *execute_repack(uint64_t a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56))
  {
    v20 = create_repack_error(64, @"Please provide a non NULL function for print_stats, print_warning, and print_verbose");
    goto LABEL_12;
  }

  print_verbose = *(a1 + 56);
  if ((*(a1 + 24) & 1) == 0)
  {
    v30 = *a1;
    v31 = MEMORY[0x277CBEBC0];
    v32 = MEMORY[0x277CCACA8];
    *v82 = v30;
    v83 = @"Info.plist";
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
    v34 = [v32 pathWithComponents:v33];
    v35 = [v31 fileURLWithPath:v34 isDirectory:0];

    v36 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:v35];
    v37 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    if (v36)
    {
      v38 = [v36 objectForKey:@"Repacked"];
      v39 = v38 == 0;

      if (v39)
      {
        v41 = [v37 description];
        *&v84.st_dev = v41;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
      }

      else
      {
        v40 = [v36 objectForKey:@"Repacked"];
        v41 = [v37 description];
        [v40 addObject:v41];
      }

      [v36 setObject:v40 forKey:@"Repacked"];
      v81[0] = 0;
      [v36 writeToURL:v35 error:v81];
      v43 = v81[0];
      if (!v43)
      {
        v50 = 1;
        goto LABEL_47;
      }

      v44 = v43;
      v45 = MEMORY[0x277CCACA8];
      v46 = [v43 localizedDescription];
      v47 = v46;
      v48 = [v45 stringWithFormat:@"Unable to finalize logarchive: %s", objc_msgSend(v46, "UTF8String")];

      v42 = create_repack_error(74, v48);
    }

    else
    {
      v42 = create_repack_error(74, @"Unable to open Info.plist");
    }

    if (v42)
    {
      v49 = v42;

      v50 = 0;
      goto LABEL_48;
    }

    v50 = 0;
LABEL_47:
    v42 = 0;
LABEL_48:

    v20 = v42;
    if (v50)
    {
      v21 = 0;
LABEL_15:

      return v21;
    }

LABEL_12:
    v21 = 0xFFFFFFFFLL;
    if (a2)
    {
      if (v20)
      {
        v22 = v20;
        *a2 = v20;
      }
    }

    goto LABEL_15;
  }

  v55 = objc_opt_new();
  v56 = objc_opt_new();
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__3981;
  v78 = __Block_byref_object_dispose__3982;
  v79 = *(a1 + 64);
  v3 = +[OSLogEventProxy _make];
  [v3 _setIncludeSensitive:1];
  v57 = v3;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__3981;
  v72 = __Block_byref_object_dispose__3982;
  v73 = 0;
  v4 = [_OSLogPredicateMapper alloc];
  v62 = [(_OSLogPredicateMapper *)v4 initWithPredicate:v75[5]];
  v64 = *a1;
  v5 = v64;
  __snprintf_chk(v82, 0x400uLL, 0, 0x400uLL, "%s/timesync", [v64 fileSystemRepresentation]);
  v6 = open(v82, 0);
  v7 = v6;
  if (v6 == -1)
  {
    v24 = @"Unable to open timesync database inside archive";
    goto LABEL_19;
  }

  v8 = _timesync_db_openat(v6, ".");
  if (!v8)
  {
    v24 = @"Unable to create timesync database structure";
LABEL_19:
    v25 = create_repack_error(74, v24);
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v54 = v8;
  [v57 _setTimesyncDatabase:v8];
  v9 = v64;
  v10 = open([v64 fileSystemRepresentation], 0x100000);
  if (v10 == -1)
  {
    v25 = create_repack_error(74, @"Unable to open archive for UUIDs");
    if (close(v7) == -1)
    {
      if (*__error() == 9)
      {
        v51 = *__error();
        qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DA527A8 = v51;
        __break(1u);
        goto LABEL_51;
      }

      __error();
      _os_assumes_log();
    }

LABEL_31:
    v60 = 0;
    v61 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_33;
  }

  [v57 _setUUIDDBFileDescriptor:v10];
  v11 = v64;
  v63 = open([v64 fileSystemRepresentation], 0x100000);
  if ((v63 & 0x80000000) == 0)
  {
    v58 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v63];
    v59 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v7];
    v60 = [[_OSLogDirectoryReference alloc] initWithDescriptor:v10];
    v61 = [[_OSLogCollectionReference alloc] initWithDiagnosticsDirectory:v58 timesyncDirectory:v59 UUIDTextDirectory:v60];
    v12 = [_OSLogCatalogFilter alloc];
    v13 = [(_OSLogCatalogFilter *)v12 initWithPredicate:v75[5] collection:v61];
    v14 = v69[5];
    v69[5] = v13;

    v15 = [(_OSLogPredicateMapper *)v62 mappedPredicate];
    v16 = v15 == 0;

    if (!v16)
    {
      v17 = [(_OSLogPredicateMapper *)v62 mappedPredicate];
      v18 = v75[5];
      v75[5] = v17;

      [v75[5] allowEvaluation];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __compact_logarchive_block_invoke;
      v67[3] = &unk_2787AEED8;
      v67[7] = a1;
      v67[4] = v55;
      v67[8] = v57;
      v67[5] = v56;
      v67[6] = &v74;
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __compact_logarchive_block_invoke_2;
      v66[3] = &unk_2787AEF00;
      v66[4] = &v68;
      v64;
      v19 = v57;
      v67;
      v66;
      v80 = 0;
      operator new();
    }

    v26 = MEMORY[0x277CCACA8];
    v27 = [(_OSLogPredicateMapper *)v62 validationErrors];
    v28 = [v26 stringWithFormat:@"Unable to validate predicate: %@", v27];

    v25 = create_repack_error(64, v28);

    [(_OSLogCollectionReference *)v61 close];
LABEL_33:
    [v57 _unmake];
    _timesync_db_close(v54);
    if (!v25)
    {
LABEL_35:

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v74, 8);

      v20 = v25;
      goto LABEL_12;
    }

LABEL_34:
    v29 = v25;
    goto LABEL_35;
  }

  if (close(v10) != -1)
  {
    goto LABEL_27;
  }

  if (*__error() == 9)
  {
LABEL_51:
    v52 = *__error();
    qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
    qword_27DA527A8 = v52;
    __break(1u);
    goto LABEL_52;
  }

  __error();
  _os_assumes_log();
LABEL_27:
  if (close(v7) != -1)
  {
LABEL_30:
    v25 = create_repack_error(74, @"Unable to open logarchive");
    goto LABEL_31;
  }

  if (*__error() != 9)
  {
    __error();
    _os_assumes_log();
    goto LABEL_30;
  }

LABEL_52:
  result = __error();
  v53 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v53;
  __break(1u);
  return result;
}

void sub_22E06E5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a53, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3981(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __compact_logarchive_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"nil";
  }

  if (([(__CFString *)v4 containsString:@"nonsparse"]& 1) != 0 || ([(__CFString *)v4 containsString:@"timesync"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    if (*(*(a1 + 56) + 26) == 1)
    {
      incr_val_for_key(*(a1 + 32), v4);
      incr_val_for_key(*(a1 + 32), @"total");
      [*(a1 + 40) addObject:v4];
    }

    v6 = [*(a1 + 64) composedMessage];
    v5 = [*(*(*(a1 + 48) + 8) + 40) evaluateWithObject:*(a1 + 64)];
  }

  return v5;
}

int *_compact_tracev3(int a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v75 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v43 = [v14 stringByAppendingPathComponent:v15];
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__3981;
  v69 = __Block_byref_object_dispose__3982;
  v70 = 0;
  v40 = *a4;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v64[3] = 0;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(v56, 0, sizeof(v56));
  v55 = 0;
  v16 = _os_trace_mmap_at();
  if (!v16)
  {
    v28 = _delete_trace_file(a1, a3, v55);
LABEL_41:

    _Block_object_dispose(v64, 8);
    _Block_object_dispose(&v65, 8);

    return v28;
  }

  v41 = openat(a1, "tmp", 1538, 420);
  if (v41 != -1)
  {
    *(v56 + 8) = xmmword_22E081670;
    *(&v62 + 1) = 0;
    LODWORD(v62) = v41;
    DWORD1(v59) = 0x10000;
    *(&v58 + 1) = _os_trace_malloc_typed();
    v17 = _Block_copy(v12);
    v18 = *(&v59 + 1);
    *(&v59 + 1) = v17;

    v19 = _Block_copy(v13);
    v20 = v60;
    *&v60 = v19;

    v39 = v15;
    v21 = v12;
    *(&v60 + 1) = *a4;
    v63 = a5;
    v22 = v55;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v48 = ___compact_tracev3_block_invoke;
    v49 = &unk_2787AEF48;
    v53 = v16;
    v50 = v43;
    v51 = v64;
    v54 = v56;
    v52 = &v65;
    v23 = v47;
    v24 = 0;
    do
    {
      if (v22 - v24 < 0x10)
      {
        break;
      }

      v25 = *&v16[v24 + 8];
      if (v22 - v24 - 16 < v25)
      {
        break;
      }

      if (!(v48)(v23))
      {
        break;
      }

      v24 = (v24 + v25 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v24 - 1 < v22);

    v15 = v39;
    v12 = v21;

    v26 = (v66 + 5);
    if (v66[5] || (v32 = *(&v60 + 1), v33 = *(&v56[1] + 1), *a4 = *(&v60 + 1), v33) && (obj = *v26, v34 = _repack_ttl_compact_close_catalog(v56, &obj), objc_storeStrong(v26, obj), !v34))
    {
      v27 = 0;
      goto LABEL_14;
    }

    if ((*(&v62 + 1) + DWORD2(v57)) > 1)
    {
      if (v32 != v40)
      {
        print_verbose("Removed %lu tracepoints\n", v32 - v40);
        if (faccessat(a1, a3, 0, 0) == -1)
        {
          v37 = @"Tmp file no longer accessible";
        }

        else
        {
          if (lseek(v41, 0, 2) >= 1)
          {
            v35 = _os_trace_mmap();
            value = 0u;
            v72 = 0;
            LODWORD(value) = 1;
            v73 = -1;
            v74 = 0;
            _OSLogGenerateXattrs(v35, 0, &value);
            if (munmap(v35, 0) == -1)
            {
              __error();
              _os_assumes_log();
            }

            if (fsetxattr(v41, "com.apple.logd.metadata", &value, 0x28uLL, 0, 0) == -1)
            {
              __error();
              _os_assumes_log();
            }
          }

          fsync(v41);
          if (renameat(a1, "tmp", a1, a3) != -1)
          {
            goto LABEL_31;
          }

          v37 = @"Failed to rename tmp to trace file";
        }

        v30 = create_repack_error(-1, v37);
        v27 = 1;
        goto LABEL_13;
      }

      print_verbose("No tracepoints removed. Keeping file as is\n");
    }

    else if (!_delete_trace_file(a1, a3, v55))
    {
      v29 = @"Nothing kept, but error deleting trace file";
      goto LABEL_12;
    }

LABEL_31:
    v27 = 0;
    v28 = 1;
    goto LABEL_32;
  }

  __error();
  _os_assumes_log();
  v29 = @"Failed to create tmp file";
LABEL_12:
  v30 = create_repack_error(-1, v29);
  v27 = 0;
LABEL_13:
  v31 = v66[5];
  v66[5] = v30;

LABEL_14:
  v28 = 0;
  if (a8)
  {
    *a8 = v66[5];
  }

LABEL_32:
  if (v41 < 1 || close(v41) != -1)
  {
    goto LABEL_36;
  }

  if (*__error() != 9)
  {
    __error();
    _os_assumes_log();
LABEL_36:
    if (v27 && unlinkat(a1, "tmp", 0) == -1)
    {
      __error();
      _os_assumes_log();
    }

    _repack_context_cleanup(v56);
    if (munmap(v16, v55) == -1)
    {
      __error();
      _os_assumes_log();
    }

    goto LABEL_41;
  }

  result = __error();
  v38 = *result;
  qword_27DA52778 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DA527A8 = v38;
  __break(1u);
  return result;
}

void sub_22E06ED7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47)
{
  _Block_object_dispose((v47 - 224), 8);
  _Block_object_dispose((v47 - 192), 8);
  _Unwind_Resume(a1);
}

BOOL _delete_trace_file(int a1, const char *a2, uint64_t a3)
{
  v5 = unlinkat(a1, a2, 0);
  if (v5 == -1)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = __error();
    fprintf(v6, "Failed to unlink trace file %s: error: %d\n", a2, *v7);
  }

  else
  {
    print_verbose("Deleted trace file %s of size %lu\n", a2, a3);
  }

  return v5 != -1;
}

uint64_t ___compact_tracev3_block_invoke(uint64_t a1, int *a2)
{
  v4 = a2 - *(a1 + 56);
  v5 = [*(a1 + 32) stringByAppendingFormat:@"-%llu", v4];
  ++*(*(*(a1 + 40) + 8) + 24);
  v6 = *(a1 + 64);
  v6[21] = v4;
  v7 = *(a1 + 56);
  v8 = *(*(a1 + 48) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  v12 = v5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__3981;
  v30 = __Block_byref_object_dispose__3982;
  v31 = 0;
  v13 = *a2;
  if (v7 == a2)
  {
    if (v13 == 4096 && *(a2 + 1) > 0x27uLL)
    {
      *v6 = a2 + 36;
      _repack_compact_add_iov(v6, a2);
      v6[20] = v7;
      goto LABEL_17;
    }

    v15 = create_repack_error(-1, @"Not a valid header");
    v16 = v27[5];
    v27[5] = v15;
  }

  else if (v13 == 24589)
  {
    if (!v6[3] || !v6[5])
    {
      goto LABEL_17;
    }

    if (!(*(v6[18] + 16))() || (v19 = v6[5], obj[0] = MEMORY[0x277D85DD0], obj[1] = 3221225472, obj[2] = ___compact_chunk_block_invoke, obj[3] = &unk_2787AEF70, v25 = v6, v23 = v12, v24 = &v26, _tracev3_chunk_decompress_and_enumerate_chunks_helper(a2, v19, obj), v20 = v27[5], v23, !v20))
    {
      v6[5] = *v6[5];
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 != 24587)
    {
LABEL_17:
      v18 = 1;
      goto LABEL_18;
    }

    if (!v6[3] || (obj[0] = 0, v14 = _repack_ttl_compact_close_catalog(v6, obj), objc_storeStrong(&v31, obj[0]), v14))
    {
      _repack_ttl_compact_open_catalog(v6, a2);
      _OSLogUUIDMapAddFromCatalog(v6[3], *(v6[24] + 16));
      goto LABEL_17;
    }
  }

  v10 = v27[5];
  v17 = v10;
  v18 = 0;
LABEL_18:
  _Block_object_dispose(&v26, 8);

  objc_storeStrong(v9, v10);
  return v18;
}

void sub_22E06F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___compact_chunk_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 8);
  obj = *(v2 + 40);
  v3 = _compact_chunkset(a2);
  objc_storeStrong((v2 + 40), obj);
  return v3;
}

void incr_val_for_key(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 objectForKey:v3];
  v8 = v5;
  if (v5)
  {
    v6 = [v5 intValue] + 1;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [v4 setObject:v7 forKeyedSubscript:v3];
}

void _progress(void *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = a1;
  [v7 setCompletedUnitCount:{objc_msgSend(v7, "completedUnitCount") + a3}];
  v6 = v5[3];

  if (v6)
  {
    [v7 fractionCompleted];
    (*(v6 + 16))(v6, 0);
  }
}

void sub_22E071704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);
  _Block_object_dispose((v9 - 176), 8);
  _Block_object_dispose((v9 - 144), 8);
  _Block_object_dispose((v9 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22E071A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TPChunkHelper_block_invoke_2(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *a2;
  if ((v3 - 24579) >= 2)
  {
    if (v3 == 24578)
    {
      return 1;
    }

    if (v3 != 24577)
    {
      qword_27DA52778 = "BUG IN LIBTRACE: unsupported chunk found in TPChunkHelper";
      qword_27DA527A8 = v3;
      __break(1u);
      return result;
    }

    v4 = a2[1];
    v5 = v4 - 16;
    if (v4 < 0x10)
    {
      return 1;
    }

    v6 = (a2 + 4);
    if (v4 - 4113 <= 0xFFFFFFFFFFFFF00ELL)
    {
      v7 = *v6;
LABEL_17:
      v13 = a2 + 6;
      v14 = v6 + v7;
      if (v7 > 0x1000)
      {
        v14 = (a2 + 6);
      }

      while (1)
      {
        v15 = (v13 + 3);
        if (v13 + 3 >= v14)
        {
          return 1;
        }

        v16 = v13;
        v17 = v13[2];
        v18 = HIWORD(v17);
        v19 = (v14 - v15);
        if (!HIWORD(v17) || v18 > v19)
        {
          return 1;
        }

        v21 = v18 + 24;
        v22 = (HIWORD(v17) & 0xFFF8) + 32;
        if ((v17 & 0x7000000000000) == 0)
        {
          v22 = v21;
        }

        v13 = (v16 + v22);
        if (*v16)
        {
          v23 = (v17 & 0xFFFFFFFFFFFFLL) + a2[5];
          v24 = *(result + 64);
          if (v23 == *(v24 + 18) && (v16 - *(result + 56)) == *(v24 + 2))
          {
            v25 = (result + 40);
            *(*(*(result + 40) + 8) + 24) = 1;
            v28 = 0;
            v26 = 0u;
            v27 = 0u;
            if (_OSLogEventUnpackChunk(a2, *(result + 72), &v26))
            {
              v11 = (*(v2[4] + 16))();
              v25 = v2 + 6;
            }

            else
            {
              v11 = 0;
            }

            result = 0;
            v12 = *v25;
            goto LABEL_13;
          }
        }
      }
    }

    v7 = *v6;
    if (v5 >= v7)
    {
      goto LABEL_17;
    }

    return 1;
  }

  v8 = *(result + 64);
  if (*(v8 + 18) != a2[4])
  {
    return 1;
  }

  v9 = a2 - *(result + 56);
  result = 1;
  if (*(v8 + 2) == v9)
  {
    v10 = v2 + 5;
    *(*(v2[5] + 8) + 24) = 1;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    if (_OSLogEventUnpackChunk(a2, v2[9], &v26))
    {
      v11 = (*(v2[4] + 16))();
      v10 = v2 + 6;
    }

    else
    {
      v11 = 0;
    }

    result = 0;
    v12 = *v10;
LABEL_13:
    *(*(v12 + 8) + 24) = v11;
  }

  return result;
}

void sub_22E0721A0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4372(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __findOversizeAndFill_block_invoke(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  if (*a2 == 24589)
  {
    if (*(*(*(a1 + 80) + 8) + 24) && *(*(*(a1 + 96) + 8) + 40))
    {
      if (a3 == [*(a1 + 32) chunk_offset])
      {
        v15 = *(a1 + 64);
        v16 = *(a1 + 96);
        v17 = *(*(*(a1 + 88) + 8) + 24);
        v18 = *(a1 + 32);
        v19 = *(*(a1 + 112) + 8);
        v21 = *(v19 + 40);
        v20 = (v19 + 40);
        obj = v21;
        v22 = *(*(v16 + 8) + 40);
        v38 = v15;
        v23 = v18;
        v24 = v22;
        v54 = 0;
        v50 = 0;
        v51 = &v50;
        v52 = 0x2020000000;
        v53 = 0;
        v25 = [v23 fileIndex];
        v26 = [v23 chunk_offset];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __OversizeHelper_block_invoke;
        v49[3] = &__block_descriptor_48_e13__24__0_Q8_I16l;
        v49[4] = a2;
        v49[5] = v17;
        v27 = [v38 dataForCDHash:v25 identifier:v26 size:&v54 generator:v49];
        if (v27)
        {
          v28 = [[_OSLogEnumeratorCatalogSubchunk alloc] initWithCatalog:v24 subchunk:v17 range:a3, a4];
          v37 = v24;
          v29 = v54;
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v42 = __OversizeHelper_block_invoke_2;
          v43 = &unk_2787AF1D8;
          v47 = v27;
          v44 = v23;
          v46 = &v50;
          p_obj = &obj;
          v30 = v28;
          v45 = v30;
          v31 = v41;
          v32 = 0;
          do
          {
            if (v29 - v32 < 0x10)
            {
              break;
            }

            v33 = *(v27 + v32 + 8);
            if (v29 - v32 - 16 < v33)
            {
              break;
            }

            if (!v42(v31))
            {
              break;
            }

            v32 = (v32 + v33 + 23) & 0xFFFFFFFFFFFFFFF8;
          }

          while (v32 - 1 < v29);

          v34 = *(v51 + 24);
          v24 = v37;
        }

        else
        {
          v34 = *(v51 + 24);
        }

        _Block_object_dispose(&v50, 8);

        objc_storeStrong(v20, obj);
        *(*(*(a1 + 104) + 8) + 24) = v34 & 1;
        if (*(*(*(a1 + 104) + 8) + 24))
        {
          return 0;
        }
      }

      *(*(*(a1 + 88) + 8) + 24) = **(*(*(a1 + 88) + 8) + 24);
    }

    return 1;
  }

  if (v8 != 24587)
  {
    if (v8 == 4096)
    {
      *(*(*(a1 + 72) + 8) + 24) = a2;
    }

    return 1;
  }

  v9 = 1;
  if (a3 == [*(a1 + 32) catalog_offset])
  {
    v10 = *(a1 + 40);
    v11 = *(a1 + 120);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __findOversizeAndFill_block_invoke_2;
    v40[3] = &__block_descriptor_40_e164___catalog_s__catalog_hdr_s_SQ___os_trace_uuid_map_s___os_trace_str_map_s_Q__os_procinfo_map_s_QQ_subchunk_queue_t___catalog_subchunk_s____catalog_subchunk_s__Q_8__0l;
    v40[4] = a2;
    *(*(*(a1 + 80) + 8) + 24) = [v10 catalogForCDHash:v11 identifier:a3 generator:v40];
    *(*(*(a1 + 88) + 8) + 24) = *(*(*(*(a1 + 80) + 8) + 24) + 64);
    LOBYTE(v36) = 1;
    v12 = [[_OSLogEnumeratorCatalog alloc] initWithStore:*(a1 + 48) index:*(a1 + 56) fileHeader:*(*(*(a1 + 72) + 8) + 24) range:a3 chunk:a4 storeCatalogsAndSubchunks:a2, v36];
    v13 = *(*(a1 + 96) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  return v9;
}

uint64_t __OversizeHelper_block_invoke_2(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 24578)
  {
    return 1;
  }

  v4 = a2 - *(a1 + 56);
  v5 = [*(a1 + 32) tp_offset];
  result = 1;
  if (v4 == v5)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = [[_OSLogEnumeratorOversizeChunk alloc] initWithSubchunk:*(a1 + 40) chunk:a2];
    v8 = v7;
    result = 0;
    **(a1 + 64) = v7;
  }

  return result;
}

char *ctf_create(int *a1)
{
  v2 = malloc_type_malloc(0x400uLL, 0x610CB5CCuLL);
  if (v2)
  {
    v3 = v2;
    v7 = ".SUNW_ctf";
    v8 = xmmword_22E081700;
    v9 = &ctf_create_hdr;
    v10 = xmmword_22E081710;
    v11 = 0;
    v4 = ctf_bufopen(&v7, 0, 0, a1);
    v5 = v4;
    if (v4)
    {
      *(v4 + 139) |= 4u;
      *(v4 + 72) = 128;
      bzero(v3, 0x400uLL);
      *(v5 + 71) = v3;
      *(v5 + 75) = 8;
      *(v5 + 38) = xmmword_22E081700;
    }

    else
    {
      free(v3);
    }
  }

  else
  {
    v5 = 0;
    if (a1)
    {
      *a1 = 35;
    }
  }

  return v5;
}

uint64_t ctf_update(void *a1)
{
  v2 = *(a1 + 139);
  if ((v2 & 4) == 0)
  {
    v3 = 1039;
LABEL_3:
    *(a1 + 140) = v3;
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 8) != 0)
  {
    memset(__dst, 0, 512);
    v5 = a1[74];
    if (v5)
    {
      v6 = 0;
      while (1)
      {
        v7 = *(v5 + 44);
        v8 = *(v5 + 48);
        v9 = v7 >> 11;
        v10 = v7 & 0x3FF;
        v11 = v8 == (*(*a1 + 64))() ? 20 : 12;
        v6 += v11;
        if ((v7 >> 11) <= 5u)
        {
          break;
        }

        if ((v9 - 6) < 2)
        {
          if (*(v5 + 48) >> 13)
          {
            v6 += 16 * v10;
          }

          else
          {
            v6 += 12 * v10;
          }

          goto LABEL_25;
        }

        if (v9 == 8)
        {
          v6 += 8 * v10;
          goto LABEL_25;
        }

        if (v9 == 14)
        {
          goto LABEL_20;
        }

LABEL_25:
        v5 = *(v5 + 8);
        if (!v5)
        {
          goto LABEL_28;
        }
      }

      if ((v9 - 1) >= 2)
      {
        v12 = v6 + 4 * (v10 + (v7 & 1));
        if (v9 != 5)
        {
          v12 = v6;
        }

        if (v9 == 4)
        {
          v6 += 12;
        }

        else
        {
          v6 = v12;
        }

        goto LABEL_25;
      }

LABEL_20:
      v6 += 4;
      goto LABEL_25;
    }

    v6 = 0;
LABEL_28:
    v13 = *(a1 + 150);
    v14 = mmap(0, v13 + v6 + 36, 3, 4098, -1, 0);
    if (v14 == -1)
    {
      v3 = 35;
      goto LABEL_3;
    }

    v15 = v14;
    v53 = v13 + v6 + 36;
    v16 = v6;
    v54 = 0;
    *v14 = -12303;
    v14[2] = 4;
    v14[7] = 0;
    *(v14 + 3) = 0;
    *(v14 + 2) = (v2 >> 1) & 1;
    *(v14 + 20) = 0;
    *(v14 + 12) = 0;
    *(v14 + 7) = v6;
    *(v14 + 8) = v13;
    v17 = (v14 + 36);
    v18 = &v14[v16 + 36];
    *v18 = 0x544E4552415000;
    v19 = a1[74];
    if (v19)
    {
      v20 = v18 + 8;
      while (1)
      {
        v21 = v19[2].i32[3];
        v22 = v19[1].i64[1];
        if (v22)
        {
          v19[2].i32[2] = v20 - v18;
          v23 = strlen(v22) + 1;
          v14 = memmove(v20, v22, v23);
          v20 += v23;
        }

        else
        {
          v19[2].i32[2] = 0;
        }

        v24 = v21 >> 11;
        v25 = v19[3].i32[0];
        v26 = v25 == (*(*a1 + 64))(v14) ? 20 : 12;
        v14 = memmove(v17, &v19[2].u64[1], v26);
        v17 = (v17 + v26);
        if ((v21 >> 11) <= 5u)
        {
          break;
        }

        if ((v24 - 6) < 2)
        {
          v30 = v19[4].i64[1];
          if (v19[3].i32[0] >> 13)
          {
            if (v30)
            {
              v37 = (v20 - v18);
              do
              {
                v38 = v30[2];
                if (v38)
                {
                  v39 = v37 + strlen(v38) + 1;
                }

                else
                {
                  v39 = v37;
                  LODWORD(v37) = 0;
                }

                v41 = v30[3];
                v40 = v30[4];
                if (*(a1 + 141) == 4)
                {
                  v17[1] = v41;
                }

                else
                {
                  v17[1] = v41;
                }

                *v17 = v37;
                v17[2] = HIDWORD(v40);
                v17[3] = v40;
                v17 += 4;
                v30 = v30[1];
                v37 = v39;
              }

              while (v30);
            }
          }

          else if (v30)
          {
            v31 = (v20 - v18);
            do
            {
              v32 = v30[2];
              if (v32)
              {
                v33 = v31 + strlen(v32) + 1;
              }

              else
              {
                v33 = v31;
                LODWORD(v31) = 0;
              }

              v34 = v30[3];
              if (*(a1 + 141) == 4)
              {
                v35 = *(v30 + 16);
                *v17 = v31;
                v17[1] = v34;
                v17[2] = v35;
                v36 = 12;
              }

              else
              {
                *v17 = (v30[3] << 32) | (v30[4] << 48) | v31;
                v36 = 8;
              }

              v17 = (v17 + v36);
              v30 = v30[1];
              v31 = v33;
            }

            while (v30);
          }

LABEL_77:
          v47 = v19[4].i64[1];
          goto LABEL_78;
        }

        if (v24 == 8)
        {
          v43 = v19[4].i64[1];
          if (v43)
          {
            v44 = v20 - v18;
            do
            {
              v45 = strlen(*(v43 + 16));
              v46 = v44;
              v44 += v45 + 1;
              *v17 = v46 | (*(v43 + 40) << 32);
              v17 += 2;
              v43 = *(v43 + 8);
            }

            while (v43);
            goto LABEL_77;
          }

          v47 = 0;
LABEL_78:
          v14 = ctf_copy_membnames(v47, v20);
          v20 = v14;
          goto LABEL_79;
        }

        if (v24 == 14)
        {
          v28 = (v19[4].u8[4] << 24) | (v19[4].u8[0] << 16);
          v29 = v19[4].u16[1];
LABEL_51:
          *v17++ = v28 | v29;
        }

LABEL_79:
        v19 = v19->i64[1];
        if (!v19)
        {
          goto LABEL_82;
        }
      }

      if ((v24 - 1) >= 2)
      {
        if (v24 == 4)
        {
          v42 = v19[5].i32[0];
          *v17 = vmovn_s64(v19[4]);
          v17[2] = v42;
          v17 += 3;
        }

        else if (v24 == 5)
        {
          if ((v21 & 0x3FF) != 0)
          {
            v27 = 0;
            do
            {
              *v17++ = *(v19[4].i64[0] + v27);
              v27 += 8;
            }

            while (8 * (v21 & 0x3FF) != v27);
          }

          if (v21)
          {
            *v17++ = 0;
          }
        }

        goto LABEL_79;
      }

      v28 = (v19[4].i32[1] << 16) | (v19[4].i32[0] << 24);
      v29 = v19[4].i32[2];
      goto LABEL_51;
    }

LABEL_82:
    mprotect(v15, v53, 1);
    v55 = ".SUNW_ctf";
    v56 = xmmword_22E081700;
    v57 = v15;
    v58 = v53;
    v59 = xmmword_22E081700;
    v48 = ctf_bufopen(&v55, 0, 0, &v54);
    if (!v48)
    {
      munmap(v15, v53);
      v3 = v54;
      goto LABEL_3;
    }

    v49 = v48;
    v50 = &_libctf_models;
    while (*(v50 + 2) != *(a1[65] + 8))
    {
      v51 = v50[7];
      v50 += 7;
      if (!v51)
      {
        *(v48 + 140) = 22;
        goto LABEL_90;
      }
    }

    *(v48 + 65) = v50;
LABEL_90:
    ctf_import(v48, a1[66]);
    *(v49 + 552) = *(a1 + 138);
    *(v49 + 556) |= *(a1 + 139) & 0xFFFFFFF7;
    *(v49 + 32) = 0;
    *(v49 + 568) = a1[71];
    *(v49 + 576) = a1[72];
    *(v49 + 584) = *(a1 + 73);
    *(v49 + 600) = a1[75];
    v52 = a1[76];
    *(v49 + 608) = v52;
    *(v49 + 616) = v52 - 1;
    *(v49 + 624) = a1[78];
    *(a1 + 71) = 0u;
    *(a1 + 73) = 0u;
    memcpy(__dst, a1, 0x278uLL);
    memmove(a1, v49, 0x278uLL);
    memcpy(v49, __dst, 0x278uLL);
    a1[40] = a1 + 22;
    a1[43] = a1 + 26;
    a1[46] = a1 + 30;
    a1[49] = a1 + 34;
    *(v49 + 552) = 1;
    ctf_close(v49);
  }

  return 0;
}

char *ctf_copy_membnames(uint64_t a1, char *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = strlen(*(v3 + 16)) + 1;
        memmove(a2, v4, v5);
        a2 += v5;
      }

      v3 = *(v3 + 8);
    }

    while (v3);
  }

  return a2;
}

void *ctf_dtd_insert(void *result, void *a2)
{
  v2 = (result[72] - 1) & a2[4];
  v3 = result[71];
  a2[2] = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = a2;
  v4 = result + 73;
  v5 = result[73];
  result[73] = a2;
  *a2 = v5;
  a2[1] = 0;
  if (v5)
  {
    v4 = v5;
  }

  v4[1] = a2;
  return result;
}

void ctf_dtd_delete(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 576) - 1;
  v5 = (*(a1 + 568) + 8 * (v4 & *(a2 + 4)));
  do
  {
    v6 = v5;
    v7 = *v5;
    v5 = (*v5 + 16);
    if (v7)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }
  }

  while (!v8);
  if (v7)
  {
    *v6 = *v5;
  }

  v9 = a2[11];
  v10 = v9 >> 11;
  if (v10 > 9)
  {
    if (v10 - 11 >= 4)
    {
      if (v10 != 10)
      {
        goto LABEL_72;
      }

      v24 = *(a1 + 568);
      if (!v24)
      {
        goto LABEL_72;
      }

      v25 = a2[12];
      v16 = *(v24 + 8 * (v4 & v25));
      if (!v16)
      {
        goto LABEL_72;
      }

      while (*(v16 + 32) != v25)
      {
        v16 = *(v16 + 16);
        if (!v16)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_56;
    }

    goto LABEL_20;
  }

  if ((v9 >> 11) > 5u)
  {
    if (v10 - 6 < 3)
    {
      v17 = *(a2 + 9);
      if (v17)
      {
        do
        {
          v18 = *(v17 + 16);
          if (v18)
          {
            v19 = ~strlen(*(v17 + 16));
            free(v18);
            *(a1 + 600) += v19;
          }

          if (v10 != 8)
          {
            v20 = *(a1 + 568);
            if (v20)
            {
              v21 = *(v17 + 24);
              v22 = *(v20 + 8 * ((*(a1 + 576) - 1) & v21));
              if (v22)
              {
                while (*(v22 + 32) != v21)
                {
                  v22 = *(v22 + 16);
                  if (!v22)
                  {
                    goto LABEL_37;
                  }
                }

                if ((*(a1 + 556) & 4) != 0)
                {
                  --*(v22 + 60);
                }
              }
            }
          }

LABEL_37:
          v23 = *(v17 + 8);
          free(v17);
          v17 = v23;
        }

        while (v23);
      }
    }

    goto LABEL_72;
  }

  if (v10 == 3)
  {
LABEL_20:
    v14 = *(a1 + 568);
    if (!v14)
    {
      goto LABEL_72;
    }

    v15 = a2[12];
    v16 = *(v14 + 8 * (v4 & v15));
    if (!v16)
    {
      goto LABEL_72;
    }

    while (*(v16 + 32) != v15)
    {
      v16 = *(v16 + 16);
      if (!v16)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_56;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v11 = *(a1 + 568);
      if (v11)
      {
        v12 = a2[12];
        v13 = *(v11 + 8 * (v4 & v12));
        if (v13)
        {
          while (*(v13 + 32) != v12)
          {
            v13 = *(v13 + 16);
            if (!v13)
            {
              goto LABEL_60;
            }
          }

          if ((*(a1 + 556) & 4) != 0)
          {
            --*(v13 + 60);
          }
        }
      }

LABEL_60:
      v30 = v9 & 0x3FF;
      if (v30)
      {
        for (i = 0; i != v30; ++i)
        {
          if (v11)
          {
            v32 = *(*(a2 + 8) + 8 * i);
            if (v32)
            {
              v33 = *(v11 + 8 * (v32 & v4));
              if (v33)
              {
                while (*(v33 + 32) != v32)
                {
                  v33 = *(v33 + 16);
                  if (!v33)
                  {
                    goto LABEL_70;
                  }
                }

                if ((*(a1 + 556) & 4) != 0)
                {
                  --*(v33 + 60);
                }
              }
            }
          }

LABEL_70:
          ;
        }
      }

      free(*(a2 + 8));
    }

    goto LABEL_72;
  }

  v26 = *(a1 + 568);
  if (v26)
  {
    v27 = *(a2 + 8);
    v28 = *(v26 + 8 * (v27 & v4));
    if (v28)
    {
      while (*(v28 + 32) != v27)
      {
        v28 = *(v28 + 16);
        if (!v28)
        {
          goto LABEL_52;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v28 + 60);
      }
    }

LABEL_52:
    v29 = *(a2 + 9);
    v16 = *(v26 + 8 * (v29 & v4));
    if (v16)
    {
      while (*(v16 + 32) != v29)
      {
        v16 = *(v16 + 16);
        if (!v16)
        {
          goto LABEL_72;
        }
      }

LABEL_56:
      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v16 + 60);
      }
    }
  }

LABEL_72:
  v34 = *(a2 + 3);
  if (v34)
  {
    v35 = ~strlen(*(a2 + 3));
    free(v34);
    *(a1 + 600) += v35;
  }

  v36 = (a1 + 584);
  v37 = *a2;
  v38 = *(a2 + 1);
  if (*a2)
  {
    v39 = *a2;
  }

  else
  {
    v39 = a1 + 584;
  }

  *(v39 + 8) = v38;
  if (v38)
  {
    v36 = v38;
  }

  *v36 = v37;

  free(a2);
}

uint64_t ctf_dtd_lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 568);
  if (!v2)
  {
    return 0;
  }

  for (result = *(v2 + 8 * ((*(a1 + 576) - 1) & a2)); result; result = *(result + 16))
  {
    if (*(result + 32) == a2)
    {
      break;
    }
  }

  return result;
}

uint64_t ctf_discard(uint64_t a1)
{
  v2 = *(a1 + 556);
  if ((v2 & 4) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v4 = *(a1 + 584);
      if (v4)
      {
        do
        {
          v5 = *v4;
          if (*(a1 + 616) < (*(*a1 + 40))(*(v4 + 4)))
          {
            ctf_dtd_delete(a1, v4);
          }

          v4 = v5;
        }

        while (v5);
        v2 = *(a1 + 556);
      }

      result = 0;
      *(a1 + 608) = *(a1 + 616) + 1;
      *(a1 + 556) = v2 & 0xFFFFFFF7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 560) = 1039;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t ctf_add_encoded(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  if (a4)
  {
    v7 = a2;
    v14 = 0;
    result = ctf_add_generic(a1, a2, a3, &v14);
    if (result != -1)
    {
      v9 = (-(-*(a4 + 8) & 0xFFFFFFF8) >> 3) - 1;
      v10 = v9 | (v9 >> 1) | ((v9 | (v9 >> 1)) >> 2);
      v11 = v10 | (v10 >> 4) | ((v10 | (v10 >> 4)) >> 8);
      v12 = v14;
      *(v14 + 44) = ((v7 != 0) << 10) | (a5 << 11);
      *(v12 + 48) = ((v11 >> 16) | v11) + 1;
      v13 = *(a4 + 8);
      *(v12 + 64) = *a4;
      *(v12 + 72) = v13;
    }
  }

  else
  {
    *(a1 + 560) = 22;
    return -1;
  }

  return result;
}

uint64_t ctf_add_generic(uint64_t a1, unsigned int a2, const char *a3, void *a4)
{
  if (a2 >= 2)
  {
    v5 = 22;
LABEL_13:
    *(a1 + 560) = v5;
    return -1;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v5 = 1039;
    goto LABEL_13;
  }

  if ((*(*a1 + 48))(*(a1 + 608), 1) >= 0xFFFFFFFFLL)
  {
    v5 = 1041;
    goto LABEL_13;
  }

  v8 = malloc_type_malloc(0x58uLL, 0x610CB5CCuLL);
  if (!v8)
  {
LABEL_12:
    v5 = 35;
    goto LABEL_13;
  }

  v9 = v8;
  if (a3 && *a3)
  {
    v10 = ctf_strdup(a3);
    if (!v10)
    {
      free(v9);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  ++*(a1 + 608);
  v11 = (*(*a1 + 48))();
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v9[3] = 0u;
  v9[4] = 0u;
  *(v9 + 10) = 0;
  *(v9 + 3) = v10;
  *(v9 + 4) = v11;
  if (v10)
  {
    *(a1 + 600) += strlen(v10) + 1;
  }

  v13 = (*(a1 + 576) - 1) & v11;
  v14 = *(a1 + 568);
  *(v9 + 2) = *(v14 + 8 * v13);
  *(v14 + 8 * v13) = v9;
  v15 = a1 + 584;
  v16 = *(a1 + 584);
  *(a1 + 584) = v9;
  *v9 = v16;
  *(v9 + 1) = 0;
  if (v16)
  {
    v15 = v16;
  }

  *(v15 + 8) = v9;
  *(a1 + 556) |= 8u;
  *a4 = v9;
  return v11;
}

uint64_t ctf_add_reftype(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (a3 == -1 || a3 >= 0xFFFFFFFFLL)
  {
    *(a1 + 560) = 22;
    return -1;
  }

  else
  {
    v11 = 0;
    v8 = ctf_add_generic(a1, a2, 0, &v11);
    if (v8 != -1)
    {
      ctf_ref_inc(a1, a3);
      v9 = v11;
      *(v11 + 44) = ((a2 != 0) << 10) | (a4 << 11);
      *(v9 + 48) = a3;
    }
  }

  return v8;
}

uint64_t ctf_ref_inc(uint64_t result, uint64_t a2)
{
  v2 = *(result + 568);
  if (v2)
  {
    v3 = *(v2 + 8 * ((*(result + 576) - 1) & a2));
    if (v3)
    {
      while (*(v3 + 32) != a2)
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          return result;
        }
      }

      if ((*(result + 556) & 4) != 0)
      {
        ++*(v3 + 60);
      }
    }
  }

  return result;
}

uint64_t ctf_add_array(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  if (!a3)
  {
    v10 = 22;
LABEL_20:
    *(a1 + 560) = v10;
    return -1;
  }

  v17 = a1;
  if (!ctf_lookup_by_id(&v17, *a3))
  {
    v11 = *(a1 + 568);
    if (!v11 || (v12 = *(v11 + 8 * ((*(a1 + 576) - 1) & *a3))) == 0)
    {
LABEL_19:
      v10 = 1020;
      goto LABEL_20;
    }

    while (*(v12 + 32) != *a3)
    {
      v12 = *(v12 + 16);
      if (!v12)
      {
        goto LABEL_19;
      }
    }
  }

  v17 = a1;
  if (!ctf_lookup_by_id(&v17, a3[1]))
  {
    v13 = *(a1 + 568);
    if (v13)
    {
      v14 = a3[1];
      v15 = *(v13 + 8 * ((*(a1 + 576) - 1) & v14));
      if (v15)
      {
        while (*(v15 + 32) != v14)
        {
          v15 = *(v15 + 16);
          if (!v15)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_4;
      }
    }

    goto LABEL_19;
  }

LABEL_4:
  v18 = 0;
  v6 = ctf_add_generic(a1, a2, 0, &v18);
  if (v6 != -1)
  {
    if (a2)
    {
      v7 = 9216;
    }

    else
    {
      v7 = 0x2000;
    }

    v8 = v18;
    *(v18 + 44) = v7;
    *(v8 + 48) = 0;
    v9 = a3[2];
    *(v8 + 64) = *a3;
    *(v8 + 80) = v9;
    ctf_ref_inc(a1, *a3);
    ctf_ref_inc(a1, a3[1]);
  }

  return v6;
}

uint64_t ctf_set_array(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 568);
  if (v5)
  {
    for (i = *(v5 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v7 = 1039;
LABEL_28:
    *(a1 + 560) = v7;
    return 0xFFFFFFFFLL;
  }

  if (!i || (*(i + 44) & 0xF800) != 0x2000)
  {
    goto LABEL_27;
  }

  v21 = a1;
  if (!ctf_lookup_by_id(&v21, *a3))
  {
    v13 = *(a1 + 568);
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = *(v13 + 8 * ((*(a1 + 576) - 1) & *a3));
    if (!v14)
    {
      goto LABEL_27;
    }

    while (*(v14 + 32) != *a3)
    {
      v14 = *(v14 + 16);
      if (!v14)
      {
        goto LABEL_27;
      }
    }
  }

  v21 = a1;
  v8 = ctf_lookup_by_id(&v21, a3[1]);
  v9 = *(a1 + 568);
  if (!v8)
  {
    if (v9)
    {
      v15 = a3[1];
      v16 = *(v9 + 8 * ((*(a1 + 576) - 1) & v15));
      if (v16)
      {
        while (*(v16 + 32) != v15)
        {
          v16 = *(v16 + 16);
          if (!v16)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_13;
      }
    }

LABEL_27:
    v7 = 1020;
    goto LABEL_28;
  }

LABEL_13:
  v10 = *(i + 64);
  if (v9)
  {
    v11 = *(a1 + 576) - 1;
    v12 = *(v9 + 8 * (v11 & v10));
    if (v12)
    {
      while (*(v12 + 32) != v10)
      {
        v12 = *(v12 + 16);
        if (!v12)
        {
          goto LABEL_31;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v12 + 60);
      }
    }

LABEL_31:
    v18 = *(i + 72);
    v19 = *(v9 + 8 * (v11 & v18));
    if (v19)
    {
      while (*(v19 + 32) != v18)
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      if ((*(a1 + 556) & 4) != 0)
      {
        --*(v19 + 60);
      }
    }
  }

LABEL_37:
  *(a1 + 556) |= 8u;
  v20 = *a3;
  *(i + 80) = a3[2];
  *(i + 64) = v20;
  ctf_ref_inc(a1, *a3);
  ctf_ref_inc(a1, a3[1]);
  return 0;
}

uint64_t ctf_add_function(uint64_t a1, unsigned int a2, uint64_t *a3, void *a4)
{
  if (!a3 || (v6 = *(a3 + 3), v6 > 1) || (v9 = *(a3 + 2), !a4) && v9)
  {
    v10 = 22;
LABEL_6:
    *(a1 + 560) = v10;
    return -1;
  }

  v13 = v9 + v6;
  if (v9 + v6 >= 0x400)
  {
    v10 = 84;
    goto LABEL_6;
  }

  v27 = a1;
  if (!ctf_lookup_by_id(&v27, *a3))
  {
    v18 = *(a1 + 568);
    if (!v18 || (v19 = *(v18 + 8 * ((*(a1 + 576) - 1) & *a3))) == 0)
    {
LABEL_25:
      v10 = 1020;
      goto LABEL_6;
    }

    while (*(v19 + 32) != *a3)
    {
      v19 = *(v19 + 16);
      if (!v19)
      {
        goto LABEL_25;
      }
    }
  }

  if (*(a3 + 2))
  {
    for (i = 0; i < *(a3 + 2); ++i)
    {
      v27 = a1;
      if (!ctf_lookup_by_id(&v27, a4[i]))
      {
        v15 = *(a1 + 568);
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = a4[i];
        v17 = *(v15 + 8 * ((*(a1 + 576) - 1) & v16));
        if (!v17)
        {
          goto LABEL_25;
        }

        while (*(v17 + 32) != v16)
        {
          v17 = *(v17 + 16);
          if (!v17)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  if (v13)
  {
    v20 = malloc_type_malloc((8 * v13), 0x610CB5CCuLL);
    if (!v20)
    {
      v10 = 35;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
  }

  v28 = 0;
  v11 = ctf_add_generic(a1, a2, 0, &v28);
  if (v11 == -1)
  {
    free(v20);
  }

  else
  {
    if (a2)
    {
      v21 = 11264;
    }

    else
    {
      v21 = 10240;
    }

    v22 = v28;
    v23 = *a3;
    *(v28 + 44) = v13 | v21;
    *(v22 + 48) = v23;
    ctf_ref_inc(a1, *a3);
    if (*(a3 + 2))
    {
      v24 = 0;
      do
      {
        ctf_ref_inc(a1, a4[v24++]);
        v25 = *(a3 + 2);
      }

      while (v24 < v25);
      v26 = 8 * v25;
    }

    else
    {
      v26 = 0;
    }

    memmove(v20, a4, v26);
    if (*(a3 + 12))
    {
      *(v20 + (v13 - 1)) = 0;
    }

    *(v22 + 64) = v20;
  }

  return v11;
}

uint64_t ctf_add_struct(uint64_t a1, unsigned int a2, char *__s)
{
  if (__s && (v6 = strlen(__s), (v7 = ctf_hash_lookup(a1 + 176, a1, __s, v6)) != 0) && (v8 = v7, ctf_type_kind(a1, v7[1]) == 9))
  {
    result = v8[1];
    v10 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 32);
      v10 = *v10 + 16;
    }

    while (v12 != result);
  }

  else
  {
    v14 = 0;
    result = ctf_add_generic(a1, a2, __s, &v14);
    if (result == -1)
    {
      return result;
    }

    v11 = v14;
  }

  if (a2)
  {
    v13 = 13312;
  }

  else
  {
    v13 = 12288;
  }

  *(v11 + 44) = v13;
  *(v11 + 48) = 0;
  return result;
}

uint64_t ctf_add_union(uint64_t a1, unsigned int a2, char *__s)
{
  if (__s && (v6 = strlen(__s), (v7 = ctf_hash_lookup(a1 + 208, a1, __s, v6)) != 0) && (v8 = v7, ctf_type_kind(a1, v7[1]) == 9))
  {
    result = v8[1];
    v10 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v11 = *v10;
      v12 = *(*v10 + 32);
      v10 = *v10 + 16;
    }

    while (v12 != result);
  }

  else
  {
    v14 = 0;
    result = ctf_add_generic(a1, a2, __s, &v14);
    if (result == -1)
    {
      return result;
    }

    v11 = v14;
  }

  if (a2)
  {
    v13 = 15360;
  }

  else
  {
    v13 = 14336;
  }

  *(v11 + 44) = v13;
  *(v11 + 48) = 0;
  return result;
}

uint64_t ctf_add_enum_sized(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  if (__s && (v8 = strlen(__s), (v9 = ctf_hash_lookup(a1 + 240, a1, __s, v8)) != 0) && (v10 = v9, ctf_type_kind(a1, v9[1]) == 9))
  {
    result = v10[1];
    v12 = *(a1 + 568) + 8 * ((*(a1 + 576) - 1) & result);
    do
    {
      v13 = *v12;
      v14 = *(*v12 + 32);
      v12 = *v12 + 16;
    }

    while (v14 != result);
  }

  else
  {
    v16 = 0;
    result = ctf_add_generic(a1, a2, __s, &v16);
    if (result == -1)
    {
      return result;
    }

    v13 = v16;
  }

  if (a2)
  {
    v15 = 17408;
  }

  else
  {
    v15 = 0x4000;
  }

  *(v13 + 44) = v15;
  *(v13 + 48) = a4;
  return result;
}

uint64_t ctf_add_forward(uint64_t a1, unsigned int a2, char *__s, int a4)
{
  v4 = a1;
  if ((a4 - 6) >= 3)
  {
    *(a1 + 560) = 1023;
    return -1;
  }

  else
  {
    v7 = a2;
    if (__s)
    {
      v8 = a1 + (32 * (a4 - 6));
      v9 = strlen(__s);
      v10 = ctf_hash_lookup(v8 + 176, v4, __s, v9);
      if (v10)
      {
        return v10[1];
      }

      v15 = 0;
      a1 = v4;
      a2 = v7;
      v12 = __s;
    }

    else
    {
      v15 = 0;
      v12 = 0;
    }

    result = ctf_add_generic(a1, a2, v12, &v15);
    if (result != -1)
    {
      v13 = v15;
      if (v7)
      {
        v14 = 19456;
      }

      else
      {
        v14 = 18432;
      }

      *(v15 + 44) = v14;
      *(v13 + 48) = a4;
    }
  }

  return result;
}

uint64_t ctf_add_typedef(uint64_t a1, unsigned int a2, const char *a3, uint64_t a4)
{
  v14 = a1;
  if (a4 == -1)
  {
    goto LABEL_12;
  }

  if (!ctf_lookup_by_id(&v14, a4))
  {
    v11 = *(a1 + 568);
    if (v11)
    {
      v12 = *(v11 + 8 * ((*(a1 + 576) - 1) & a4));
      if (v12)
      {
        while (*(v12 + 32) != a4)
        {
          v12 = *(v12 + 16);
          if (!v12)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_3;
      }
    }

LABEL_12:
    *(a1 + 560) = 22;
    return -1;
  }

LABEL_3:
  v15 = 0;
  v8 = ctf_add_generic(a1, a2, a3, &v15);
  if (v8 != -1)
  {
    v9 = v15;
    if (a2)
    {
      v10 = 21504;
    }

    else
    {
      v10 = 20480;
    }

    *(v15 + 44) = v10;
    *(v9 + 48) = a4;
    ctf_ref_inc(a1, a4);
  }

  return v8;
}

uint64_t ctf_add_enumerator(uint64_t a1, uint64_t a2, char *__s2, int a4)
{
  v7 = *(a1 + 568);
  if (!v7)
  {
    i = 0;
    if (__s2)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = 22;
    goto LABEL_16;
  }

  for (i = *(v7 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
  {
    if (*(i + 32) == a2)
    {
      break;
    }
  }

  if (!__s2)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((*(a1 + 556) & 4) == 0)
  {
    v9 = 1039;
LABEL_16:
    *(a1 + 560) = v9;
    return 0xFFFFFFFFLL;
  }

  if (!i)
  {
    v9 = 1020;
    goto LABEL_16;
  }

  v10 = *(i + 44);
  if ((v10 & 0xF800) != 0x4000)
  {
    v9 = 1022;
    goto LABEL_16;
  }

  if ((~v10 & 0x3FF) == 0)
  {
    v9 = 1040;
    goto LABEL_16;
  }

  v12 = *(i + 72);
  if (v12)
  {
    while (strcmp(*(v12 + 16), __s2))
    {
      v12 = *(v12 + 8);
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v9 = 1042;
    goto LABEL_16;
  }

LABEL_20:
  v13 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v13)
  {
LABEL_27:
    v9 = 35;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = ctf_strdup(__s2);
  if (!v15)
  {
    free(v14);
    goto LABEL_27;
  }

  v16 = i + 64;
  v14[2] = v15;
  *(v14 + 3) = xmmword_22E081670;
  *(v14 + 10) = a4;
  *(i + 44) = v10 & 0x4400 | (v10 + 1) & 0x3FF;
  v17 = *(i + 64);
  *(i + 64) = v14;
  *v14 = v17;
  v14[1] = 0;
  if (v17)
  {
    v16 = v17;
  }

  *(v16 + 8) = v14;
  v18 = strlen(v15);
  result = 0;
  *(a1 + 600) += v18 + 1;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_add_member(uint64_t a1, uint64_t a2, char *__s2, uint64_t a4)
{
  v5 = __s2;
  v7 = *(a1 + 568);
  if (v7)
  {
    for (i = *(v7 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v9 = 1039;
LABEL_15:
    *(a1 + 560) = v9;
    return 0xFFFFFFFFLL;
  }

  if (!i)
  {
    v9 = 1020;
    goto LABEL_15;
  }

  v10 = *(i + 44);
  v11 = v10 >> 11;
  if ((v11 - 8) <= 0xFFFFFFFD)
  {
    v9 = 1021;
    goto LABEL_15;
  }

  if ((*(i + 44) & 0x3FF) == 0x3FF)
  {
    v9 = 1040;
    goto LABEL_15;
  }

  if (__s2)
  {
    v13 = *(i + 72);
    if (v13)
    {
      while (1)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          if (!strcmp(v14, v5))
          {
            break;
          }
        }

        v13 = *(v13 + 8);
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      v9 = 1042;
      goto LABEL_15;
    }
  }

LABEL_22:
  v15 = ctf_type_size(a1, a4);
  if (v15 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = v15;
  v17 = ctf_type_align(a1, a4);
  if (v17 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v19)
  {
LABEL_29:
    v9 = 35;
    goto LABEL_15;
  }

  v20 = v19;
  if (v5)
  {
    if (*v5)
    {
      v5 = ctf_strdup(v5);
      if (!v5)
      {
        free(v20);
        goto LABEL_29;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v20[2] = v5;
  v20[3] = a4;
  *(v20 + 10) = -1;
  if ((v10 & 0x3FF) != 0 && v11 == 6)
  {
    v37 = v5;
    v21 = *(i + 64);
    v22 = ctf_type_resolve(a1, *(v21 + 24));
    v23 = *(v21 + 32);
    v39 = 0;
    v38 = 0;
    if (ctf_type_encoding(a1, v22, &v38) == -1)
    {
      v26 = ctf_type_size(a1, v22);
      v24 = v23 + 8 * v26;
      if (v26 == -1)
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = v23 + v39;
    }

    v27 = v24 + 7;
    if (v18 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v18;
    }

    v29 = (v27 >> 3) % v28;
    v30 = v28 - v29;
    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 + (v27 >> 3);
    v20[4] = 8 * v32;
    v16 += v32;
    v5 = v37;
  }

  else
  {
    v20[4] = 0;
    ctt_size = ctf_get_ctt_size(a1, i + 40, 0, 0);
    if (ctt_size > v16)
    {
      v16 = ctt_size;
    }
  }

  if (v16 <= (*(*a1 + 56))())
  {
    v33 = v16;
  }

  else
  {
    v33 = (*(*a1 + 64))();
    *(i + 52) = __ROR8__(v16, 32);
  }

  v36 = *(i + 64);
  v35 = (i + 64);
  v34 = v36;
  *(v35 - 5) = v10 & 0x400 | (v11 << 11) | (v10 + 1) & 0x3FF;
  *(v35 - 4) = v33;
  *v35 = v20;
  *v20 = v36;
  v20[1] = 0;
  if (!v36)
  {
    v34 = v35;
  }

  v34[1] = v20;
  if (v5)
  {
    *(a1 + 600) += strlen(v5) + 1;
  }

  ctf_ref_inc(a1, a4);
  result = 0;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_delete_type(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 568);
  if (v4)
  {
    for (i = *(v4 + 8 * ((*(a1 + 576) - 1) & a2)); i; i = *(i + 16))
    {
      if (*(i + 32) == a2)
      {
        break;
      }
    }
  }

  else
  {
    i = 0;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v6 = 1039;
LABEL_20:
    *(a1 + 560) = v6;
    return 0xFFFFFFFFLL;
  }

  v10 = a1;
  if (!ctf_lookup_by_id(&v10, a2))
  {
    v7 = *(a1 + 568);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = *(v7 + 8 * ((*(a1 + 576) - 1) & a2));
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    while (*(v8 + 32) != a2)
    {
      v8 = *(v8 + 16);
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!i)
  {
    v6 = 1045;
    goto LABEL_20;
  }

  if (*(i + 60) || *(a1 + 552) >= 2u)
  {
    v6 = 1044;
    goto LABEL_20;
  }

  ctf_dtd_delete(a1, i);
  result = 0;
  *(a1 + 556) |= 8u;
  return result;
}

uint64_t ctf_add_type(uint64_t a1, uint64_t (***a2)(uint64_t), uint64_t a3)
{
  v3 = a3;
  v84 = a2;
  if (a2 == a1)
  {
    return v3;
  }

  if ((*(a1 + 556) & 4) == 0)
  {
    v5 = 1039;
LABEL_97:
    *(a1 + 560) = v5;
    return -1;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v6 = ctf_lookup_by_id(&v84, a3);
  v7 = v84;
  if (!v6)
  {
LABEL_96:
    v5 = *(v7 + 140);
    goto LABEL_97;
  }

  v8 = v6;
  v9 = *v6;
  v10 = v84 + ((v9 >> 27) & 0x10);
  v11 = *(v10 + 53);
  if (v11)
  {
    v12 = v9 & 0x7FFFFFFF;
    v13 = (v11 + v12);
    if (*(v10 + 54) <= v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = "(?)";
  }

  if (*(v84 + 141) > 3)
  {
    v16 = v6[1];
  }

  else
  {
    v16 = *(v6 + 2);
  }

  v17 = (**v84)(v16);
  if (*(v7 + 141) > 3)
  {
    v18 = v8[1];
  }

  else
  {
    v18 = *(v8 + 2);
  }

  v19 = (*v7)[1](v18);
  v20 = (*v7)[2];
  if (*(v7 + 141) > 3)
  {
    v21 = v8[1];
  }

  else
  {
    v21 = *(v8 + 2);
  }

  v63 = 0;
  v22 = v20(v21);
  if ((v17 - 6) >= 3)
  {
    v23 = 272;
  }

  else
  {
    v23 = 32 * (v17 - 6) + 176;
  }

  if ((v19 & 1) == 0)
  {
    v24 = 0;
    if (!*v15)
    {
      goto LABEL_52;
    }

LABEL_37:
    v30 = *(a1 + 584);
    if (v30)
    {
      v60 = v24;
      while (1)
      {
        if (*(a1 + 616) >= (*(*a1 + 40))(v30[4]))
        {
LABEL_50:
          v7 = v84;
          v24 = v60;
          goto LABEL_51;
        }

        if (*(v30 + 11) >> 11 == v17)
        {
          v31 = v30[3];
          if (v31)
          {
            if (!strcmp(v31, v15))
            {
              if ((v17 - 1) > 1u)
              {
                break;
              }

              if (!ctf_type_encoding(v84, v3, &v76) && v76 == v30[8] && v77 == *(v30 + 18))
              {
                break;
              }
            }
          }
        }

        v30 = *v30;
        if (!v30)
        {
          goto LABEL_50;
        }
      }

      return v30[4];
    }

LABEL_51:
    v63 = v30;
    goto LABEL_52;
  }

  if (*v15)
  {
    v25 = strlen(v15);
    v26 = ctf_hash_lookup(a1 + v23, a1, v15, v25);
    if (!v26)
    {
      v24 = 0;
      goto LABEL_37;
    }

    v27 = v26[1];
    v28 = ctf_type_kind(a1, v27);
    if (v28 == v17)
    {
      v29 = 0;
      v24 = v17;
      goto LABEL_53;
    }

    if (v28 != 9 || (v17 - 9) < 0xFFFDu)
    {
      goto LABEL_139;
    }

    v24 = 9;
    if (*v15)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_52:
  v27 = -1;
  v29 = 1;
LABEL_53:
  v81 = v7;
  v82 = v3;
  v83 = 0;
  v78 = a1;
  v79 = v27;
  v80 = 0;
  if (v17 > 7)
  {
    if (v17 <= 10)
    {
      if (v17 == 8)
      {
        if (v27 == -1 || v24 == 9)
        {
          if (*(v7 + 141) > 3)
          {
            v51 = v8[2];
          }

          else
          {
            LOWORD(v51) = *(v8 + 3);
          }

          v56 = ctf_add_enum_sized(a1, v19, v15, v51);
          v79 = v56;
          if (v56 == -1)
          {
            return -1;
          }

          v27 = v56;
          if (ctf_enum_iter(v7, v3, enumadd, &v78))
          {
            return -1;
          }

          return v27;
        }

        if (!ctf_enum_iter(v7, v3, enumcmp, &v78) && !ctf_enum_iter(a1, v27, enumcmp, &v81))
        {
          return v27;
        }

        goto LABEL_139;
      }

      if (v17 == 9)
      {
        if (!v29)
        {
          return v27;
        }

        return ctf_add_forward(a1, v19, v15, 6);
      }

      v38 = ctf_type_reference(v7, v3);
      v39 = ctf_add_type(a1, v7, v38);
      if (v39 == -1)
      {
        return -1;
      }

      if (!v29)
      {
        return v27;
      }

      return ctf_add_typedef(a1, v19, v15, v39);
    }

    else
    {
      if ((v17 - 11) < 3)
      {
LABEL_84:
        v41 = ctf_type_reference(v7, v3);
        v42 = ctf_add_type(a1, v7, v41);
        if (v42 == -1)
        {
          return -1;
        }

        return ctf_add_reftype(a1, v19, v42, v17);
      }

      if (v17 != 14)
      {
        goto LABEL_107;
      }

      if (ctf_type_ptrauth(v7, v3, &v72))
      {
        goto LABEL_96;
      }

      if ((v29 & 1) == 0)
      {
        if (ctf_type_ptrauth(a1, v27, &v70))
        {
          return -1;
        }

        if (v72 != v70 || v73 != v71)
        {
          goto LABEL_139;
        }
      }

      v34 = ctf_type_reference(v7, v3);
      v35 = ctf_add_type(a1, v7, v34);
      if (v35 == -1)
      {
        return -1;
      }

      return ctf_add_ptrauth(a1, v19, v35, &v72);
    }
  }

  if (v17 <= 3)
  {
    if ((v17 - 1) < 2)
    {
      if (ctf_type_encoding(v7, v3, &v76))
      {
        goto LABEL_96;
      }

      if (!v29)
      {
        if (ctf_type_encoding(a1, v27, &v74))
        {
          return -1;
        }

        if (v76 == v74 && v77 == v75)
        {
          return v27;
        }

        goto LABEL_139;
      }

      if (ctf_add_intrinsic(a1, v7, v3, v15) != -1)
      {
        if (v17 == 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        return ctf_add_encoded(a1, v19, v15, &v76, v37);
      }

      return -1;
    }

    if (v17 != 3)
    {
      goto LABEL_107;
    }

    goto LABEL_84;
  }

  if ((v17 - 6) < 2)
  {
    if (v27 == -1 || v24 == 9)
    {
      v43 = ctf_add_generic(a1, v19, v15, &v63);
      if (v43 == -1)
      {
        return -1;
      }

      v27 = v43;
      v44 = v63;
      v79 = v43;
      v80 = v63;
      v45 = ctf_member_iter(v7, v3, membadd, &v78) != 0;
      v46 = ctf_type_size(v7, v3);
      if (v46 <= (*(*a1 + 56))())
      {
        v47 = v46;
      }

      else
      {
        v47 = (*(*a1 + 64))();
        *(v44 + 52) = __ROR8__(v46, 32);
      }

      *(v44 + 11) = (v17 << 11) | ((v19 != 0) << 10) | v22 & 0x3FF;
      *(v44 + 12) = v47;
      for (i = v44[9]; i; i = *(i + 8))
      {
        v54 = ctf_add_type(a1, v7, *(i + 24));
        *(i + 24) = v54;
        if (v54 == -1)
        {
          ++v45;
        }
      }

      if (v45)
      {
        return -1;
      }

      for (j = v44[9]; j; j = *(j + 8))
      {
        ctf_ref_inc(a1, *(j + 24));
      }

      return v27;
    }

    v40 = ctf_type_size(v7, v3);
    if (v40 == ctf_type_size(a1, v27) && !ctf_member_iter(v7, v3, membcmp, &v78))
    {
      return v27;
    }

LABEL_139:
    v5 = 1043;
    goto LABEL_97;
  }

  if (v17 != 4)
  {
    if (v17 == 5)
    {
      if (*(v7 + 141) > 3)
      {
        v33 = v8[2];
      }

      else
      {
        v33 = *(v8 + 3);
      }

      v61 = ctf_add_type(a1, v7, v33);
      v62 = 0;
      if (v61 == -1)
      {
        return -1;
      }

      return ctf_add_function(a1, v19, &v61, 0);
    }

LABEL_107:
    v5 = 1007;
    goto LABEL_97;
  }

  if (ctf_array_info(v7, v3, &v67) == -1)
  {
    goto LABEL_96;
  }

  v48 = ctf_add_type(a1, v7, v67);
  v67 = v48;
  v49 = ctf_add_type(a1, v7, v68);
  v68 = v49;
  v3 = -1;
  if (v48 != -1 && v49 != -1)
  {
    if ((v29 & 1) == 0)
    {
      if (ctf_array_info(a1, v27, &v64))
      {
        return v3;
      }

      if (v67 != v64 || v68 != v65 || v69 != v66)
      {
        *(a1 + 560) = 1043;
        return v3;
      }

      return v27;
    }

    return ctf_add_array(a1, v19, &v67);
  }

  return v3;
}

uint64_t ctf_add_intrinsic(uint64_t a1, uint64_t (***a2)(uint64_t), uint64_t a3, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  if (!*__s)
  {
    return 0;
  }

  v8 = strlen(__s);
  result = ctf_hash_lookup((a2 + 34), a2, __s, v8);
  if (result)
  {
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v13 = 0;
    v10 = *(result + 4);
    if (v10 == a3)
    {
      return 0;
    }

    if (ctf_type_encoding(a2, v10, &v14) || ctf_type_encoding(a2, a3, &v12))
    {
      *(a1 + 560) = *(a2 + 140);
      return -1;
    }

    else
    {
      if (v12 == v14 && v13 == v15)
      {
        return 0;
      }

      result = ctf_add_type(a1, a2, v10);
      if (result != -1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ctf_add_ptrauth(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0xFFFFFFFFLL)
  {
    v13 = 0;
    v5 = ctf_add_generic(a1, a2, 0, &v13);
    if (v5 != -1)
    {
      ctf_ref_inc(a1, a3);
      if (a2)
      {
        v9 = 29696;
      }

      else
      {
        v9 = 28672;
      }

      v10 = v13;
      *(v13 + 44) = v9;
      *(v10 + 48) = a3;
      v11 = *(a4 + 4);
      *(v10 + 64) = *a4;
      *(v10 + 68) = v11;
    }
  }

  else
  {
    *(a1 + 560) = 22;
    return -1;
  }

  return v5;
}

uint64_t membadd(const char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = malloc_type_malloc(0x30uLL, 0x610CB5CCuLL);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  if (a1 && *a1)
  {
    v10 = ctf_strdup(a1);
    if (!v10)
    {
      free(v9);
LABEL_6:
      *(*a4 + 560) = 35;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0;
  }

  v9[2] = v10;
  v9[3] = a2;
  v9[4] = a3;
  *(v9 + 10) = -1;
  v12 = a4[2];
  v15 = *(v12 + 64);
  v13 = (v12 + 64);
  v14 = v15;
  *v13 = v9;
  *v9 = v15;
  v9[1] = 0;
  if (v15)
  {
    v13 = v14;
  }

  v13[1] = v9;
  v16 = *a4;
  if (v10)
  {
    *(v16 + 600) += strlen(v10) + 1;
  }

  result = 0;
  *(v16 + 556) |= 8u;
  return result;
}

BOOL membcmp(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v5[0] = a1;
  v5[1] = a3;
  return ctf_member_iter(*a4, a4[1], membmatch, v5) != 1;
}

double ctf_decl_init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = -1;
  *(a1 + 72) = -1;
  *(a1 + 88) = a2;
  *(a1 + 96) = a2;
  *(a1 + 104) = a2 + a3;
  return result;
}

void *ctf_decl_fini(uint64_t a1)
{
  for (i = 0; i != 4; ++i)
  {
    result = *(a1 + 16 * i + 8);
    if (result)
    {
      do
      {
        v4 = result[1];
        free(result);
        result = v4;
      }

      while (v4);
    }
  }

  return result;
}

unsigned int *ctf_decl_push(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a1;
    v34 = a2;
    result = ctf_lookup_by_id(&v34, a3);
    v6 = v34;
    if (!result)
    {
      v9 = *(v34 + 560);
LABEL_56:
      v4[30] = v9;
      return result;
    }

    v7 = result;
    if (*(v34 + 564) > 3)
    {
      v8 = result[1];
    }

    else
    {
      v8 = *(result + 2);
    }

    v10 = (**v34)(v8);
    v11 = v10;
    v12 = 0;
    v13 = 1;
    if (v10 <= 9)
    {
      if (v10 == 3)
      {
        if (v6[141] > 3)
        {
          v18 = v7[2];
        }

        else
        {
          v18 = *(v7 + 3);
        }

        ctf_decl_push(v4, v6, v18);
        v14 = 0;
        v12 = 1;
      }

      else if (v10 == 4)
      {
        v32[0] = 0;
        v32[1] = 0;
        v33 = 0;
        ctf_array_info(v6, v3, v32);
        ctf_decl_push(v4, v6, v32[0]);
        v14 = 0;
        v12 = 2;
        v13 = v33;
      }

      else
      {
        v14 = 0;
        if (v10 == 5)
        {
          if (v6[141] > 3)
          {
            v15 = v7[2];
          }

          else
          {
            v15 = *(v7 + 3);
          }

          ctf_decl_push(v4, v6, v15);
          v14 = 0;
          v12 = 3;
        }
      }

      goto LABEL_39;
    }

    if ((v10 - 11) < 3)
    {
      if (v6[141] > 3)
      {
        v16 = v7[2];
      }

      else
      {
        v16 = *(v7 + 3);
      }

      ctf_decl_push(v4, v6, v16);
      v12 = v4[20];
      v14 = 1;
      goto LABEL_39;
    }

    if (v10 != 10)
    {
      break;
    }

    v19 = *v7;
    v20 = v6 + ((v19 >> 27) & 0x10);
    v21 = *(v20 + 53);
    if (v21)
    {
      v22 = v19 & 0x7FFFFFFF;
      v23 = (v21 + v22);
      if (*(v20 + 54) <= v22)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23;
      }
    }

    else
    {
      v24 = 0;
    }

    if (!v24)
    {
      v24 = "(?)";
    }

    if (*v24)
    {
      v12 = 0;
      v14 = 0;
      goto LABEL_39;
    }

    if (v6[141] > 3)
    {
      v31 = v7[2];
    }

    else
    {
      v31 = *(v7 + 3);
    }

    a3 = v31;
    a1 = v4;
    a2 = v6;
  }

  v14 = 0;
  if (v10 == 14)
  {
    if (v6[141] > 3)
    {
      v17 = v7[2];
    }

    else
    {
      v17 = *(v7 + 3);
    }

    ctf_decl_push(v4, v6, v17);
    v14 = 0;
    v12 = v4[20];
  }

LABEL_39:
  result = malloc_type_malloc(0x20uLL, 0x610CB5CCuLL);
  if (!result)
  {
    v9 = 35;
    goto LABEL_56;
  }

  *(result + 2) = v3;
  result[6] = v11;
  result[7] = v13;
  v25 = &v4[4 * v12];
  v26 = v25[1];
  if (!v26)
  {
    v27 = v4[21];
    v4[21] = v27 + 1;
    v4[v12 + 16] = v27;
  }

  if (v12 <= 1 && v12 > v4[20])
  {
    v4[20] = v12;
  }

  if (v12)
  {
    v28 = 0;
  }

  else
  {
    v28 = v14;
  }

  if (v11 != 4 && v28 == 0)
  {
    v30 = *v25;
    *v25 = result;
    *result = v30;
    *(result + 1) = 0;
    if (v30)
    {
      v25 = v30;
    }

    v25[1] = result;
  }

  else
  {
    v25[1] = result;
    *result = 0;
    *(result + 1) = v26;
    if (v26)
    {
      v25 = v26;
    }

    *v25 = result;
  }

  return result;
}

uint64_t ctf_decl_sprintf(void *a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = a1[13];
  v4 = a1[12];
  v5 = v3 - v4;
  result = vsnprintf(v4, v3 - v4, __format, va);
  v7 = result;
  if (v5 < result)
  {
    v7 = v5;
  }

  a1[12] += v7;
  a1[14] += result;
  return result;
}

char *ctf_errmsg(int a1)
{
  if ((a1 - 1000) > 0x2E)
  {
    result = strerror(a1);
  }

  else
  {
    result = _ctf_errlist[a1 - 1000];
  }

  if (!result)
  {
    return "Unknown error";
  }

  return result;
}

uint64_t ctf_hash_create(uint64_t a1, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    return 84;
  }

  if (a2)
  {
    *(a1 + 16) = 211;
    *(a1 + 20) = a2 + 1;
    *(a1 + 24) = 1;
    *a1 = malloc_type_malloc(0x34CuLL, 0x610CB5CCuLL);
    v4 = malloc_type_malloc(12 * *(a1 + 20), 0x610CB5CCuLL);
    *(a1 + 8) = v4;
    if (*a1 && v4)
    {
      bzero(*a1, 4 * *(a1 + 16));
      bzero(*(a1 + 8), 12 * *(a1 + 20));
      return 0;
    }

    else
    {
      ctf_hash_destroy(a1);
      return 35;
    }
  }

  else
  {
    result = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *a1 = &_CTF_EMPTY;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

void ctf_hash_destroy(uint64_t a1)
{
  v2 = *a1;
  if (v2 && *(a1 + 16) != 1)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }
}

uint64_t ctf_hash_size(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t ctf_hash_insert(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (!a3)
  {
    return 22;
  }

  v5 = *(a1 + 6);
  if (v5 >= *(a1 + 5))
  {
    return 84;
  }

  v6 = a2 + 16 * (a4 >> 31);
  v7 = *(v6 + 424);
  if (!v7)
  {
    return 1018;
  }

  v8 = a4 & 0x7FFFFFFF;
  if (*(v6 + 432) <= v8)
  {
    return 1019;
  }

  v9 = (v7 + v8);
  if (!*(v7 + v8))
  {
    return 0;
  }

  v10 = (a1[1] + 12 * v5);
  *v10 = a4;
  v10[1] = a3;
  v11 = strlen(v9);
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v9[v11];
    do
    {
      v14 = *v9++;
      v12 = ((v14 + 16 * v12) >> 24) & 0xF0 ^ (v14 + 16 * v12) & 0xFFFFFFFF0FFFFFFFLL;
    }

    while (v9 < v13);
  }

  result = 0;
  v16 = v12 % *(a1 + 4);
  v17 = *a1;
  v10[2] = *(*a1 + 4 * v16);
  *(a1 + 6) = v5 + 1;
  *(v17 + 4 * v16) = v5;
  return result;
}

uint64_t ctf_hash_define(uint64_t *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = a2 + 16 * (a4 >> 31);
  v9 = *(v8 + 424);
  if (v9)
  {
    v10 = a4 & 0x7FFFFFFF;
    v11 = (v9 + v10);
    if (*(v8 + 432) <= v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = "(?)";
  }

  v14 = strlen(v13);
  v15 = ctf_hash_lookup(a1, a2, v13, v14);
  if (v15)
  {
    v15[1] = a3;
    return 0;
  }

  else
  {

    return ctf_hash_insert(a1, a2, a3, a4);
  }
}

unsigned int *ctf_hash_lookup(uint64_t a1, uint64_t a2, char *__s1, int64_t __n)
{
  if (__n < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = __s1;
    do
    {
      v8 = *v7++;
      v6 = ((v8 + 16 * v6) >> 24) & 0xF0 ^ (v8 + 16 * v6) & 0xFFFFFFFF0FFFFFFFLL;
    }

    while (v7 < &__s1[__n]);
  }

  v9 = *(*a1 + 4 * (v6 % *(a1 + 16)));
  if (!v9)
  {
    return 0;
  }

  v10 = *(a1 + 8);
  v11 = a2 + 424;
  while (1)
  {
    v12 = (v10 + 12 * v9);
    v13 = (*(v11 + ((*v12 >> 27) & 0x10)) + (*v12 & 0x7FFFFFFF));
    if (!strncmp(__s1, v13, __n) && !v13[__n])
    {
      break;
    }

    v9 = v12[2];
    if (!v9)
    {
      return 0;
    }
  }

  return v12;
}

uint64_t ctf_zopen(_DWORD *a1)
{
  ctf_dprintf("decompressing CTF data using %s\n", "/usr/lib/libz.dylib");
  result = qword_27DA52AE8;
  if (!qword_27DA52AE8)
  {
    v3 = dlopen("/usr/lib/libz.dylib", 5);
    qword_27DA52AE8 = v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    zlib = dlsym(v3, "uncompress");
    v4 = dlsym(qword_27DA52AE8, "zError");
    off_27DA52AE0 = v4;
    result = qword_27DA52AE8;
    if (!zlib || !v4)
    {
      dlclose(qword_27DA52AE8);
      off_27DA52AE0 = 0;
      qword_27DA52AE8 = 0;
      zlib = 0;
LABEL_6:
      result = 0;
      if (a1)
      {
        *a1 = 1015;
      }
    }
  }

  return result;
}

char *ctf_sect_mmap(void *a1, int a2)
{
  v4 = a1[6];
  v5 = getpagesize();
  v6 = v4 & (v5 - 1);
  result = mmap(0, v6 + a1[4], 1, 2, a2, v4 & -v5);
  if (result != -1)
  {
    a1[3] = &result[v6];
  }

  return result;
}

uint64_t ctf_sect_munmap(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (getpagesize() - 1) & v2;
  v4 = v3 + *(a1 + 32);

  return munmap((v2 - v3), v4);
}

char *ctf_fdopen(int a1, int *a2)
{
  v77 = *MEMORY[0x277D85DE8];
  memset(&v64, 0, sizeof(v64));
  memset(v73, 0, sizeof(v73));
  memset(v74, 0, 24);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  memset(__buf, 0, sizeof(__buf));
  v76 = 0u;
  if (fstat(a1, &v64) == -1)
  {
    goto LABEL_62;
  }

  v4 = pread(a1, __buf, 0x40uLL, 0);
  if (v4 <= 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = *__error();
      if (!a2)
      {
        return 0;
      }
    }

    else
    {
      v6 = 1000;
      if (!a2)
      {
        return 0;
      }
    }

    v5 = 0;
    goto LABEL_64;
  }

  if (v4 >= 4 && LOWORD(__buf[0]) == 53233)
  {
    if (BYTE2(__buf[0]) >= 5u)
    {
      if (a2)
      {
        v5 = 0;
        v6 = 1002;
LABEL_64:
        *a2 = v6;
        return v5;
      }

      return 0;
    }

    *(&v73[1] + 1) = mmap(0, v64.st_size, 1, 2, a1, 0);
    if (*(&v73[1] + 1) != -1)
    {
      *(v73 + 8) = xmmword_22E0816F0;
      *&v73[0] = ".SUNW_ctf";
      *&v74[0] = v64.st_size;
      *(v74 + 8) = xmmword_22E081700;
      v5 = ctf_bufopen(v73, 0, 0, a2);
      if (!v5)
      {
        v7 = *(&v73[1] + 1);
        v8 = (getpagesize() - 1) & v7;
        v9 = (v7 - v8);
        v10 = v8 + *&v74[0];
        goto LABEL_18;
      }

      return v5;
    }

LABEL_62:
    v57 = __error();
    if (a2)
    {
      v5 = 0;
      v6 = *v57;
      goto LABEL_64;
    }

    return 0;
  }

  if (v4 < 0x34 || LODWORD(__buf[0]) != 1179403647)
  {
LABEL_13:
    if (a2)
    {
      v5 = 0;
      v6 = 1000;
      goto LABEL_64;
    }

    return 0;
  }

  if (BYTE5(__buf[0]) != 1)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1003;
      goto LABEL_64;
    }

    return 0;
  }

  if (DWORD1(__buf[1]) != 1)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1001;
      goto LABEL_64;
    }

    return 0;
  }

  if (BYTE4(__buf[0]) == 2)
  {
    if (v4 < 0x40)
    {
      goto LABEL_13;
    }

    v11 = HIWORD(v76);
    v12 = WORD6(v76);
  }

  else
  {
    v13 = LODWORD(__buf[2]);
    v14 = DWORD1(__buf[2]);
    v15 = *(&__buf[2] + 1);
    v12 = v76;
    v11 = WORD1(v76);
    DWORD1(__buf[1]) = 1;
    *&v16 = DWORD2(__buf[1]);
    *(&v16 + 1) = HIDWORD(__buf[1]);
    *(&__buf[1] + 8) = v16;
    *(&__buf[2] + 1) = v13;
    LODWORD(v76) = v14;
    *(&v76 + 4) = v15;
    WORD6(v76) = v12;
    HIWORD(v76) = v11;
  }

  if (v11 >= v12)
  {
    if (a2)
    {
      v5 = 0;
      v6 = 1007;
      goto LABEL_64;
    }

    return 0;
  }

  v17 = malloc_type_malloc(v12 << 6, 0xE86E21CEuLL);
  if (!v17)
  {
    goto LABEL_62;
  }

  v18 = v17;
  v19 = v12;
  if (BYTE4(__buf[0]) == 1)
  {
    v20 = 40 * v12;
    v21 = malloc_type_malloc(40 * v19, 0x2F75771AuLL);
    if (v21)
    {
      v22 = v21;
      if (pread(a1, v21, 40 * v19, *(&__buf[2] + 1)) == v20)
      {
        v23 = v22 + 2;
        v24 = v18 + 24;
        v25 = v19;
        do
        {
          *(v24 - 3) = *(v23 - 2);
          v26 = *(v23 - 1);
          *&v27 = v26;
          *(&v27 + 1) = HIDWORD(v26);
          v28 = v27;
          *&v27 = *v23;
          *(&v27 + 1) = HIDWORD(*v23);
          *(v24 - 1) = v28;
          *v24 = v27;
          *(v24 + 2) = v23[1];
          *&v28 = v23[2];
          *&v27 = v28;
          *(&v27 + 1) = DWORD1(v28);
          *(v24 + 24) = v27;
          v23 += 5;
          v24 += 64;
          --v25;
        }

        while (v25);
        free(v22);
        goto LABEL_42;
      }
    }

LABEL_61:
    free(v18);
    goto LABEL_62;
  }

  if (pread(a1, v17, v12 << 6, *(&__buf[2] + 1)) != v12 << 6)
  {
    goto LABEL_61;
  }

LABEL_42:
  v29 = &v18[64 * HIWORD(v76)];
  v30 = *(v29 + 3);
  v31 = *(v29 + 4);
  v32 = getpagesize();
  v33 = v32 - 1;
  v34 = mmap(0, (v30 & v33) + v31, 1, 2, a1, v30 & -v32);
  if (v34 == -1)
  {
    free(v18);
    if (!a2)
    {
      return 0;
    }

    goto LABEL_70;
  }

  v61 = v30 & v33;
  v62 = v31;
  v35 = 0;
  v36 = &v18[64 * HIWORD(v76)];
  v37 = &v34[*(v36 + 3) & v33];
  v38 = WORD6(v76);
  v63 = 0;
  v60 = v34;
  v39 = v18;
  do
  {
    v40 = *(v39 + 10);
    if (v40 < v38)
    {
      v41 = *v39;
      v42 = *(v36 + 4);
      if (v42 > v41)
      {
        v43 = &v18[64 * v40];
        v44 = *v43;
        if (v42 > v44)
        {
          v45 = *(v39 + 1);
          if (v45 == 2)
          {
            *&v69 = &v37[v41];
            *(&v69 + 1) = 2;
            v52 = *(v39 + 3);
            v51 = *(v39 + 4);
            *&v70 = *(v39 + 1);
            *&v71 = v51;
            *(&v71 + 1) = *(v39 + 7);
            v72 = v52;
            v53 = &v37[v44];
            v35 = *(v43 + 1);
            v47 = &v67;
            v48 = &v66;
            v50 = &v68;
            v49 = &v67 + 8;
            v63 = 2;
            *&v65 = v53;
            *(&v65 + 1) = v35;
            goto LABEL_52;
          }

          if (v45 == 1)
          {
            v46 = &v37[v41];
            if (!strcmp(&v37[v41], ".SUNW_ctf"))
            {
              v43 = v39;
              *&v73[0] = v46;
              *(&v73[0] + 1) = 1;
              v47 = v74;
              v48 = &v73[1];
              v50 = &v74[1];
              v49 = v74 + 8;
LABEL_52:
              *v48 = *(v43 + 1);
              v54 = *(v43 + 3);
              *v47 = *(v43 + 4);
              *v49 = *(v43 + 7);
              *v50 = v54;
            }
          }
        }
      }
    }

    v39 += 64;
    --v19;
  }

  while (v19);
  free(v18);
  if (!*(&v73[0] + 1))
  {
    munmap(v60, v61 + v62);
    if (a2)
    {
      v5 = 0;
      v6 = 1008;
      goto LABEL_64;
    }

    return 0;
  }

  if (ctf_sect_mmap(v73, a1) == -1)
  {
    munmap(v60, v61 + v62);
    if (!a2)
    {
      return 0;
    }

LABEL_70:
    v5 = 0;
    v6 = 1013;
    goto LABEL_64;
  }

  if (v63 && v35)
  {
    if (ctf_sect_mmap(&v69, a1) != -1 && ctf_sect_mmap(&v65, a1) != -1)
    {
      v55 = &v69;
      v56 = &v65;
      goto LABEL_74;
    }

    if (a2)
    {
      *a2 = 1013;
    }

LABEL_78:
    ctf_sect_munmap(v73);
    ctf_sect_munmap(&v69);
    ctf_sect_munmap(&v65);
    v5 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
LABEL_74:
    v59 = ctf_bufopen(v73, v55, v56, a2);
    v5 = v59;
    if (!v59)
    {
      goto LABEL_78;
    }

    *(v59 + 139) |= 1u;
  }

  v10 = v61 + v62;
  v9 = v60;
LABEL_18:
  munmap(v9, v10);
  return v5;
}

char *ctf_open(const char *a1, int *a2)
{
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    if (a2)
    {
      *a2 = *__error();
    }

    return 0;
  }

  else
  {
    v4 = v3;
    v5 = ctf_fdopen(v3, a2);
    close(v4);
    return v5;
  }
}

uint64_t ctf_write(uint64_t a1, int __fd)
{
  v2 = *(a1 + 472);
  v3 = v2 + 36;
  if (v2 == -36)
  {
    return 0;
  }

  v6 = *(a1 + 456);
  while (1)
  {
    v7 = write(__fd, v6, v3);
    if (v7 <= 0)
    {
      break;
    }

    v6 += v7;
    v3 -= v7;
    if (!v3)
    {
      return 0;
    }
  }

  *(a1 + 560) = *__error();
  return 0xFFFFFFFFLL;
}

uint64_t ctf_version(uint64_t a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    v2 = __error();
    v3 = 22;
  }

  else
  {
    v1 = a1;
    if (!a1)
    {
      return _libctf_version;
    }

    if (a1 < 5)
    {
      ctf_dprintf("ctf_version: client using version %d\n", a1);
      _libctf_version = v1;
      return v1;
    }

    v2 = __error();
    v3 = 45;
  }

  *v2 = v3;
  return 0xFFFFFFFFLL;
}

uint64_t ctf_lookup_by_name(const char **a1, const char *a2)
{
  if (a2)
  {
    v4 = strlen(a2);
    if (*a2)
    {
      v5 = 0;
      v6 = &a2[v4];
      v7 = MEMORY[0x277D85DE0];
      v38 = a1 + 38;
      v8 = a2;
      while (1)
      {
        v9 = v8 - 1;
        do
        {
          v10 = v8;
          v11 = v9;
          v12 = *v8;
          if ((v12 & 0x80000000) != 0)
          {
            v13 = __maskrune(v12, 0x4000uLL);
          }

          else
          {
            v13 = *(v7 + 4 * v12 + 60) & 0x4000;
          }

          ++v8;
          v9 = v11 + 1;
        }

        while (v13);
        if (v10 == v6)
        {
          v34 = *v10 != 0;
LABEL_52:
          if ((v34 & 1) == 0 && v5)
          {
            return v5;
          }

          break;
        }

        v14 = strpbrk(v10 + 1, ctf_lookup_by_name_delimiters);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = v6;
        }

        if (*v10 == 42)
        {
          v16 = a1[63];
          v17 = *&v16[4 * (*(*a1 + 5))(v5)];
          if (!v17)
          {
            if (ctf_type_resolve(a1, v5) == -1)
            {
              goto LABEL_48;
            }

            v18 = a1[63];
            v17 = *&v18[4 * (*(*a1 + 5))()];
            if (!v17)
            {
              goto LABEL_48;
            }
          }

          v5 = (*(*a1 + 6))(v17, (*(a1 + 139) >> 1) & 1);
        }

        else
        {
          v19 = v15 - v10;
          v20 = v15 - v10 + *(v15 - 1) - 105;
          if (v20 > 0x14 || (v21 = &(&isqualifier_qhash)[2 * v20], v21[1] != v19) || (v8 = v15, strncmp(*v21, v10, v15 - v10)))
          {
            v22 = *v38;
            if (!*v38)
            {
              goto LABEL_48;
            }

            v23 = a1 + 38;
            while (*v22)
            {
              if (!strncmp(v10, v22, v19))
              {
                v24 = v23[1];
                if (v19 >= v24)
                {
                  goto LABEL_29;
                }
              }

              v25 = v23[3];
              v23 += 3;
              v22 = v25;
              if (!v25)
              {
                goto LABEL_48;
              }
            }

            v24 = v23[1];
LABEL_29:
            v26 = &v24[v11];
            do
            {
              v27 = v26[1];
              if ((v27 & 0x80000000) != 0)
              {
                v28 = __maskrune(v27, 0x4000uLL);
              }

              else
              {
                v28 = *(v7 + 4 * v27 + 60) & 0x4000;
              }

              ++v26;
            }

            while (v28);
            v29 = strchr(v26, 42);
            v30 = v29 ? v29 : v6;
            v8 = v30 + 1;
            do
            {
              v31 = *(v8 - 2);
              if ((v31 & 0x80000000) != 0)
              {
                v32 = __maskrune(v31, 0x4000uLL);
              }

              else
              {
                v32 = *(v7 + 4 * v31 + 60) & 0x4000;
              }

              --v8;
            }

            while (v32);
            v33 = ctf_hash_lookup(v23[2], a1, v26, v8 - v26);
            if (!v33 || !*v23)
            {
LABEL_48:
              *(a1 + 140) = 1028;
              v36 = a1[66];
              if (v36)
              {
                v5 = ctf_lookup_by_name(v36, a2);
                if (v5 != -1)
                {
                  return v5;
                }
              }

              return -1;
            }

            v5 = v33[1];
          }
        }

        v34 = *v8;
        if (!*v8)
        {
          goto LABEL_52;
        }
      }
    }

    v35 = 1029;
  }

  else
  {
    v35 = 22;
  }

  *(a1 + 140) = v35;
  return -1;
}

uint64_t ctf_lookup_by_symbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    v5 = 1010;
    goto LABEL_28;
  }

  if (*(a1 + 488) <= a2)
  {
    v5 = 22;
    goto LABEL_28;
  }

  v3 = *(a1 + 104);
  if (v3 == 20)
  {
    v9 = *(v2 + 20 * a2 + 12);
    goto LABEL_19;
  }

  if (v3 != 16)
  {
    if (v3 == 12)
    {
      v4 = v2 + 12 * a2;
      goto LABEL_10;
    }

    v9 = *(v2 + 40 * a2 + 8);
LABEL_19:
    v8 = v9 & 0xF;
    goto LABEL_20;
  }

  v4 = v2 + 16 * a2;
LABEL_10:
  v6 = *(v4 + 4) & 0xF;
  if (v6 == 1)
  {
    if (*(v4 + 5))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v6 == 15 || v6 == 3)
  {
LABEL_16:
    v8 = *(v4 + 6);
LABEL_20:
    if (v8 == 1)
    {
      goto LABEL_21;
    }

    v5 = 1032;
LABEL_28:
    *(a1 + 560) = v5;
    return -1;
  }

LABEL_21:
  v10 = *(*(a1 + 480) + 4 * a2);
  if (v10 == -1)
  {
    goto LABEL_27;
  }

  v11 = *(a1 + 464);
  if (*(a1 + 564) > 3)
  {
    v12 = *(v11 + v10);
    if (v12)
    {
      return v12;
    }

LABEL_27:
    v5 = 1033;
    goto LABEL_28;
  }

  v12 = *(v11 + v10);
  if (!v12)
  {
    goto LABEL_27;
  }

  return v12;
}