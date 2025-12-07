uint64_t sub_1A7C97AE0(_DWORD **a1, _WORD *a2, unint64_t *a3, _BYTE *a4)
{
  v4 = 0;
  if (!a1)
  {
    return v4;
  }

  if (!a3)
  {
    return v4;
  }

  if (!a2)
  {
    return v4;
  }

  v5 = *a1;
  if (!*a1)
  {
    return v4;
  }

  v4 = *a2;
  if (!*a2)
  {
    return v4;
  }

  v6 = *v5;
  if (v6 > 0x3F)
  {
    v8 = v6 >> 6;
    if (v8 == 2)
    {
      if (v4 >= 4)
      {
        v6 = bswap32(*v5 & 0xFFFFFF7F);
        v7 = 4;
        goto LABEL_8;
      }
    }

    else if (v8 == 1)
    {
      if (v4 != 1)
      {
        v6 = bswap32(*v5 & 0xFFBF) >> 16;
        v7 = 2;
        goto LABEL_8;
      }
    }

    else if (v4 >= 8)
    {
      v6 = bswap64(*v5 & 0xFFFFFFFFFFFFFF3FLL);
      v7 = 8;
      goto LABEL_8;
    }

    return 0;
  }

  v7 = 1;
LABEL_8:
  *a3 = v6;
  *a1 = (v5 + v7);
  *a2 = v4 - v7;
  if (a4)
  {
    *a4 = v7;
  }

  return 1;
}

BOOL sub_1A7C97ED0(uint64_t a1, int a2, int a3, void *__src, size_t a5)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  if (16 - v7 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = 16 - v7;
  }

  memcpy((v6 + v7 + 56), __src, v8);
  *(*(a1 + 32) + 72) += v8;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _parseHeader];
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

void sub_1A7C97F54(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (v11)
  {
    objc_storeStrong((*(a1 + 32) + 88), a5);
    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(a1 + 32) connection];
      v27 = 134218498;
      id = nw_connection_get_id();
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "[C%llu] _readHeaderWithCompletionHandler done, data %@ error %@", &v27, 0x20u);
    }
  }

  else if (a4)
  {
    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v15 = *(a1 + 32);
    v16 = *(v15 + 88);
    *(v15 + 88) = error_with_inferred_domain;
  }

  v17 = *(a1 + 32);
  if (v9)
  {
    v18 = *(v17 + 80);
    if (v18)
    {
      concat = dispatch_data_create_concat(v18, v9);
      v20 = *(a1 + 32);
      v21 = *(v20 + 80);
      *(v20 + 80) = concat;
    }

    else
    {
      v26 = v9;
      v21 = *(v17 + 80);
      *(v17 + 80) = v26;
    }

    [*(a1 + 32) _readHeader:v9 completionHandler:*(a1 + 40)];
  }

  else
  {
    v22 = *(v17 + 88);
    if (!v22)
    {
      v23 = nw_error_create_error_with_inferred_domain();
      v24 = *(a1 + 32);
      v25 = *(v24 + 88);
      *(v24 + 88) = v23;

      v17 = *(a1 + 32);
      v22 = *(v17 + 88);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, 0, *(v17 + 72) == 0, v22);
  }
}

void sub_1A7C98294(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = +[IDSFoundationLog IDSNWLink];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v30 = [*(a1 + 32) connection];
    v31 = 134218498;
    id = nw_connection_get_id();
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_debug_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEBUG, "[C%llu] _readWithCompletionHandler done, data %@ error %@", &v31, 0x20u);
  }

  if (v9)
  {
    v11 = *(a1 + 32);
    v12 = v9;
    v13 = *(v11 + 88);
    *(v11 + 88) = v12;
  }

  else
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    v15 = *(a1 + 32);
    v13 = *(v15 + 88);
    *(v15 + 88) = error_with_inferred_domain;
  }

LABEL_8:
  if (!v8)
  {
    if (!*(*(a1 + 32) + 88))
    {
      v20 = nw_error_create_error_with_inferred_domain();
      v21 = *(a1 + 32);
      v22 = *(v21 + 88);
      *(v21 + 88) = v20;
    }

    v19 = *(*(a1 + 40) + 16);
    goto LABEL_14;
  }

  size = dispatch_data_get_size(v8);
  v17 = *(a1 + 32);
  v18 = *(v17 + 48);
  if (v18 > size)
  {
    *(v17 + 48) = v18 - size;
    v19 = *(*(a1 + 40) + 16);
LABEL_14:
    v19();
    goto LABEL_21;
  }

  if (v18 == size)
  {
    subrange = v8;
  }

  else
  {
    v23 = size;
    subrange = dispatch_data_create_subrange(v8, 0, v18);
    v25 = dispatch_data_create_subrange(v8, *(*(a1 + 32) + 48), v23 - *(*(a1 + 32) + 48));
    v26 = *(a1 + 32);
    v27 = *(v26 + 80);
    *(v26 + 80) = v25;
  }

  v28 = 0;
  *(*(a1 + 32) + 48) = 0;
  *(*(a1 + 32) + 16) = 0;
  v29 = *(a1 + 32);
  if (!v29[10])
  {
    v28 = v29[11];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v29[3], subrange, 1, v28);

LABEL_21:
}

void sub_1A7C985A8(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  error_with_inferred_domain = v9;
  if (v8)
  {
    concat = dispatch_data_create_concat(*(a1 + 32), v8);
    if (a4)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _readCapsuleWithExistingData:concat completionHandler:*(a1 + 48)];
    }
  }

  else
  {
    if (!v9)
    {
      error_with_inferred_domain = nw_error_create_error_with_inferred_domain();
    }

    v12 = +[IDSFoundationLog IDSNWLink];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1A7E20368(v12);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1A7C98794(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A7C9882C;
  v2[3] = &unk_1E77E2988;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _readCapsuleWithExistingData:MEMORY[0x1E69E9668] completionHandler:v2];
}

_DWORD *IDSHC_CreateContext(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  v33 = *MEMORY[0x1E69E9840];
  result = malloc_type_malloc(0x14uLL, 0x1000040A86A77D5uLL);
  v15 = result;
  if (result)
  {
    *result = a2;
    result[1] = a3;
    result[2] = bswap32(a5 | (a4 << 16));
    result[3] = a6;
    result[4] = a7;
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v22 = a2;
      v23 = 1024;
      v24 = a3;
      v25 = 1024;
      v26 = a4;
      v27 = 1024;
      v28 = a5;
      v29 = 1024;
      v30 = a6;
      v31 = 1024;
      v32 = a7;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "CreateContext - p:%u c:%u s_port:%u d_port:%u seq:%u ack:%u", buf, 0x26u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(0);
      if (result)
      {
        result = _IDSLogV(0, @"IDSFoundation", @"IDSHC", @"CreateContext - p:%u c:%u s_port:%u d_port:%u seq:%u ack:%u", v17, v18, v19, v20, a2);
      }
    }
  }

  *a1 = v15;
  return result;
}

void IDSHC_RemoveContext(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t IDSHC_Compress(_DWORD *a1, uint64_t *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 6)
  {
    if (*a1 != 17)
    {
      return 2;
    }

    result = 0;
    *a2 += 8;
    v4 = *a3 - 8;
    goto LABEL_16;
  }

  v5 = *a2;
  v6 = *(*a2 + 12);
  if (v6 > 0x4F)
  {
    result = 0;
    v13 = 6;
    if ((*(v5 + 13) & 0x20) != 0)
    {
      v14 = -6;
    }

    else
    {
      v13 = 8;
      v14 = -8;
    }

    v15 = v5 + v13;
    v16 = *(v5 + 4);
    *(v15 + 8) = *(v5 + 12);
    *v15 = v16;
    v4 = v14 + *a3;
    *a2 = v15;
LABEL_16:
    *a3 = v4;
    return result;
  }

  v7 = (v6 >> 2) & 0x3C;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = v7;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSCompressTCPPacket2 - invalid TCP header length %d.", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"IDSHC", @"IDSCompressTCPPacket2 - invalid TCP header length %d.", v9, v10, v11, v12, v7);
    }
  }

  return 3;
}

uint64_t IDSHC_DecompressSimple(uint64_t **a1, _DWORD *a2, _DWORD *a3)
{
  if (*a3 == 17)
  {
    v7 = *a1;
    *(v7 - 2) = a3[2];
    v7 -= 8;
    *(v7 + 2) = bswap32(*a2 + 8) >> 16;
    *(v7 + 3) = 0;
    *a1 = v7;
    v8 = *a2 + 8;
  }

  else
  {
    if (*a3 != 6)
    {
      return 2;
    }

    v3 = *a1;
    v4 = a3[2];
    if ((*(*a1 + 9) & 0x20) != 0)
    {
      *(v3 - 6) = v4;
      v5 = (v3 - 6);
      v10 = *v3;
      *(v3 + 6) = *(v3 + 2);
      *(v3 - 2) = v10;
      *(v3 + 5) = 0;
      v6 = 6;
    }

    else
    {
      *(v3 - 2) = v4;
      v5 = (v3 - 8);
      *(v3 - 4) = *v3;
      *(v3 + 4) = *(v3 + 2);
      v6 = 8;
    }

    v8 = *a2 + v6;
    *a1 = v5;
  }

  result = 0;
  *a2 = v8;
  return result;
}

uint64_t sub_1A7C99798(uint64_t a1, int a2)
{
  *&v82[5] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4 != pthread_self())
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a1;
      *buf = 134218240;
      v80 = v6;
      v81 = 2048;
      *v82 = pthread_self();
      _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "should assert real time mode on thread %p, not %p", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v7 = *a1;
        pthread_self();
        _IDSLogTransport(@"TPThread", @"IDS", @"should assert real time mode on thread %p, not %p", v8, v9, v10, v11, v12, v7);
        if (_IDSShouldLog(0))
        {
          v13 = *a1;
          pthread_self();
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should assert real time mode on thread %p, not %p", v14, v15, v16, v17, v13);
        }
      }
    }

    if (isRunningTests())
    {
      throwsIDSAbortException();
    }

    goto LABEL_47;
  }

  v18 = *(a1 + 80);
  if (a2)
  {
    *(a1 + 80) = v18 + 1;
    if (v18 < 1)
    {
      v78 = -1431655766;
      sub_1A7C99E5C(0x38u, &v78);
      *(a1 + 84) = v78;
      sub_1A7C99FF0();
      v67 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = *a1;
        *buf = 134218496;
        v80 = v68;
        v81 = 1024;
        *v82 = v78;
        v82[2] = 1024;
        *&v82[3] = 56;
        _os_log_impl(&dword_1A7AD9000, v67, OS_LOG_TYPE_DEFAULT, "asserting real time mode on thread %p (%d => %d)", buf, 0x18u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"asserting real time mode on thread %p (%d => %d)", v69, v70, v71, v72, v73, *a1);
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"asserting real time mode on thread %p (%d => %d)", v74, v75, v76, v77, *a1);
          }
        }
      }
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *a1;
        v21 = *(a1 + 80);
        *buf = 134218240;
        v80 = v20;
        v81 = 1024;
        *v82 = v21;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "asserting real time mode on thread %p but already in real time mode (%d assertions)", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"asserting real time mode on thread %p but already in real time mode (%d assertions)", v23, v24, v25, v26, v27, *a1);
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"asserting real time mode on thread %p but already in real time mode (%d assertions)", v28, v29, v30, v31, *a1);
          }
        }
      }
    }
  }

  else
  {
    if (!v18)
    {
      v32 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *a1;
        *buf = 134217984;
        v80 = v33;
        _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p but not in real time mode", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p but not in real time mode", v34, v35, v36, v37, v38, *a1);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p but not in real time mode", v39, v40, v41, v42, *a1);
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

LABEL_47:
      abort();
    }

    *(a1 + 80) = v18 - 1;
    if (v18 < 2)
    {
      v55 = *(a1 + 84);
      v78 = -1431655766;
      sub_1A7C99E5C(v55, &v78);
      sub_1A7C99FF0();
      v56 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = *a1;
        *buf = 134218496;
        v80 = v57;
        v81 = 1024;
        *v82 = v78;
        v82[2] = 1024;
        *&v82[3] = v55;
        _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p (%d => %d)", buf, 0x18u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p (%d => %d)", v58, v59, v60, v61, v62, *a1);
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p (%d => %d)", v63, v64, v65, v66, *a1);
          }
        }
      }
    }

    else
    {
      v43 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *a1;
        v45 = *(a1 + 80);
        *buf = 134218240;
        v80 = v44;
        v81 = 1024;
        *v82 = v45;
        _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "unasserting real time mode on thread %p but still in real time mode (%d assertions)", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLogTransport();
        if (result)
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"unasserting real time mode on thread %p but still in real time mode (%d assertions)", v46, v47, v48, v49, v50, *a1);
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"unasserting real time mode on thread %p but still in real time mode (%d assertions)", v51, v52, v53, v54, *a1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A7C99E5C(unsigned int a1, int *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v18 = -1431655766;
  v4 = IMGetDomainIntForKey();
  if (v4 - 1 >= 0x63)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  v6 = pthread_self();
  pthread_getschedparam(v6, &v18, &v19);
  if (a2)
  {
    *a2 = v19.sched_priority;
  }

  v19.sched_priority = v5;
  pthread_setschedparam(v6, v18, &v19);
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = v5;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Set IDSTransportThread priority at %d.", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLogTransport();
    if (result)
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Set IDSTransportThread priority at %d.", v9, v10, v11, v12, v13, v5);
      result = _IDSShouldLog(0);
      if (result)
      {
        return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Set IDSTransportThread priority at %d.", v14, v15, v16, v17, v5);
      }
    }
  }

  return result;
}

uint64_t sub_1A7C99FF0()
{
  v39 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1AC562F80](@"com.apple.ids", @"IDSTransportCPUConfig");
  if (v0)
  {
    v1 = [v0 componentsSeparatedByString:@":"];
    v2 = 90;
    v3 = 50;
    if ([v1 count] == 2)
    {
      v4 = [objc_msgSend(v1 objectAtIndex:{0), "intValue"}];
      v5 = [objc_msgSend(v1 objectAtIndex:{1), "intValue"}];
      v6 = v4 - 1 < 0x63;
      v7 = v5 > 0;
      if (v6 && v7)
      {
        v3 = v5;
      }

      else
      {
        v3 = 50;
      }

      if (v6 && v7)
      {
        v2 = v4;
      }

      else
      {
        v2 = 90;
      }
    }
  }

  else
  {
    v2 = 90;
    v3 = 50;
  }

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v34 = v2;
    v35 = 1024;
    v36 = v3;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "Fix IDSTransportThread CPU limit (%d, %d).", buf, 0xEu);
  }

  v9 = os_log_shim_legacy_logging_enabled();
  if (v9)
  {
    v9 = _IDSShouldLogTransport();
    if (v9)
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Fix IDSTransportThread CPU limit (%d, %d).", v10, v11, v12, v13, v14, v2);
      v9 = _IDSShouldLog(0);
      if (v9)
      {
        v9 = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Fix IDSTransportThread CPU limit (%d, %d).", v15, v16, v17, v18, v2);
      }
    }
  }

  v19 = MEMORY[0x1AC563CD0](v9);
  policy_info = 0;
  thread_policy_set(v19, 1u, &policy_info, 1u);
  result = proc_setthread_cpupercent();
  v21 = result;
  if (result)
  {
    policy_info = 1;
    thread_policy_set(v19, 1u, &policy_info, 1u);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v34 = v2;
      v35 = 1024;
      v36 = v3;
      v37 = 1024;
      v38 = v21;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.", buf, 0x14u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.", v23, v24, v25, v26, v27, v2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Failed to set CPU limit (%d, %d) (error=%d), move back to timeshare.", v28, v29, v30, v31, v2);
        }
      }
    }
  }

  return result;
}

BOOL IDSTransportThreadInit()
{
  if (qword_1EB2B87C8 != -1)
  {
    sub_1A7E20404();
  }

  v0 = dword_1EB2B8670;
  if (!dword_1EB2B8670)
  {
    v1 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1A7AD9000, v1, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit: transport thread not initialized", &v12, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit: transport thread not initialized", v2, v3, v4, v5, v6, v12);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit: transport thread not initialized", v7, v8, v9, v10, v12);
        }
      }
    }
  }

  return v0 != 0;
}

BOOL IDSTransportThreadInitWithPriority(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 100:
      if (qword_1EB2BC168 != -1)
      {
        sub_1A7E20418();
      }

      v2 = &unk_1EB2B86C0;
      break;
    case 200:
      if (qword_1EB2BC160 != -1)
      {
        sub_1A7E2042C();
      }

      v2 = &unk_1EB2B8718;
      break;
    case 300:
      if (qword_1EB2BC158 != -1)
      {
        sub_1A7E20440();
      }

      v2 = &unk_1EB2B8610;
      break;
    default:
      if (qword_1EB2B87C8 != -1)
      {
        sub_1A7E20404();
      }

      v2 = &qword_1EB2B8668;
      break;
  }

  v3 = *(v2 + 2);
  if (!v3)
  {
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = a1;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit: transport thread with priority %lu not initialized", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit: transport thread with priority %lu not initialized", v5, v6, v7, v8, v9, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit: transport thread with priority %lu not initialized", v10, v11, v12, v13, a1);
        }
      }
    }
  }

  return v3 != 0;
}

void IDSTransportThreadAddBlockWithPriority(uint64_t a1, const void *a2)
{
  v2 = &unk_1EB2B8610;
  v3 = &qword_1EB2B8668;
  if (a1 == 200)
  {
    v3 = &unk_1EB2B8718;
  }

  if (a1 != 300)
  {
    v2 = v3;
  }

  if (a1 == 100)
  {
    v4 = &unk_1EB2B86C0;
  }

  else
  {
    v4 = v2;
  }

  sub_1A7AFFF20(v4, a2);
}

void IDSTransportThreadAddSyncBlockWithPriority(uint64_t a1, const void *a2)
{
  v2 = &unk_1EB2B8610;
  v3 = &qword_1EB2B8668;
  if (a1 == 200)
  {
    v3 = &unk_1EB2B8718;
  }

  if (a1 != 300)
  {
    v2 = v3;
  }

  if (a1 == 100)
  {
    v4 = &unk_1EB2B86C0;
  }

  else
  {
    v4 = v2;
  }

  sub_1A7B029E0(v4, a2);
}

uint64_t sub_1A7C9A670(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 44);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v9;
  *&changelist.data = v9;
  if ((a2 & 0x80000000) != 0)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v76 = a2;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadAddSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadAddSocket called with bad socket %d", v30, v31, v32, v33, v34, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadAddSocket called with bad socket %d", v35, v36, v37, v38, a2);
        }
      }
    }
  }

  else
  {
    v13 = *a1;
    if (v13 != pthread_self())
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *a1;
        *buf = 134218240;
        *v76 = v15;
        *&v76[8] = 2048;
        v77 = pthread_self();
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "should add socket on thread %p, not %p", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v16 = *a1;
          pthread_self();
          _IDSLogTransport(@"TPThread", @"IDS", @"should add socket on thread %p, not %p", v17, v18, v19, v20, v21, v16);
          if (_IDSShouldLog(0))
          {
            v22 = *a1;
            pthread_self();
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should add socket on thread %p, not %p", v23, v24, v25, v26, v22);
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    sub_1A7C9B87C(a1, a2);
    if (v5 < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = 0;
      while (*(v7 + 4 * v27) != -1)
      {
        if (v5 == ++v27)
        {
          v27 = v5;
          break;
        }
      }
    }

    ++*(a1 + 24);
    if (v27 >= *(a1 + 40))
    {
      result = sub_1A7C9C5A4(a1);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 48);
      v6 = *(a1 + 56);
      v8 = *(a1 + 64);
    }

    *(v7 + 4 * v27) = a2;
    if (a3)
    {
      *(v6 + 8 * v27) = _Block_copy(a3);
      changelist.ident = a2;
      *&changelist.filter = 393215;
      changelist.data = 0;
      changelist.udata = v27;
      if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
      {
        v39 = *__error();
        v40 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v76 = v27;
          *&v76[4] = 1024;
          *&v76[6] = a2;
          LOWORD(v77) = 1024;
          *(&v77 + 2) = v39;
          _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)", v41, v42, v43, v44, v45, v27);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, ADD|ENABLE) failed with error(%d)", v46, v47, v48, v49, v27);
            }
          }
        }
      }
    }

    else
    {
      *(v6 + 8 * v27) = 0;
    }

    if (a4)
    {
      *(v8 + 8 * v27) = _Block_copy(a4);
      changelist.ident = a2;
      *&changelist.filter = 393214;
      changelist.data = 0;
      changelist.udata = v27;
      if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
      {
        v50 = *__error();
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v76 = v27;
          *&v76[4] = 1024;
          *&v76[6] = a2;
          LOWORD(v77) = 1024;
          *(&v77 + 2) = v50;
          _os_log_impl(&dword_1A7AD9000, v51, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)", buf, 0x14u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)", v52, v53, v54, v55, v56, v27);
            if (_IDSShouldLog(0))
            {
              _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, ADD|ENABLE) failed with error(%d)", v57, v58, v59, v60, v27);
            }
          }
        }
      }
    }

    else
    {
      *(v8 + 8 * v27) = 0;
    }

    if (*(a1 + 36) < a2)
    {
      *(a1 + 36) = a2;
    }

    if (v27 == v5)
    {
      ++*(a1 + 44);
    }

    v61 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(a1 + 44);
      v63 = *(v6 + 8 * v27);
      v64 = *(v8 + 8 * v27);
      *buf = 67110144;
      *v76 = a2;
      *&v76[4] = 1024;
      *&v76[6] = v27;
      LOWORD(v77) = 1024;
      *(&v77 + 2) = v62;
      HIWORD(v77) = 2048;
      v78 = v63;
      v79 = 2048;
      v80 = v64;
      _os_log_impl(&dword_1A7AD9000, v61, OS_LOG_TYPE_DEFAULT, "added socket %d at %d (count:%d) with readBlock %p writeBlock %p", buf, 0x28u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"added socket %d at %d (count:%d) with readBlock %p writeBlock %p", v65, v66, v67, v68, v69, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"added socket %d at %d (count:%d) with readBlock %p writeBlock %p", v70, v71, v72, v73, a2);
        }
      }
    }
  }

  return result;
}

uint64_t IDSTransportThreadAddSocketWithPriority(uint64_t a1, const void *a2, const void *a3, uint64_t a4)
{
  v7 = &unk_1EB2B8610;
  v8 = &qword_1EB2B8668;
  if (a4 == 200)
  {
    v8 = &unk_1EB2B8718;
  }

  if (a4 != 300)
  {
    v7 = v8;
  }

  if (a4 == 100)
  {
    v9 = &unk_1EB2B86C0;
  }

  else
  {
    v9 = v7;
  }

  return sub_1A7C9A670(v9, a1, a2, a3);
}

uint64_t sub_1A7C9ADAC(uint64_t result, uint64_t a2, char a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = *(result + 44);
  v5 = *(result + 48);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v6;
  *&changelist.data = v6;
  if ((a2 & 0x80000000) != 0)
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v55 = a2;
      _os_log_impl(&dword_1A7AD9000, v21, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadSuspendSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadSuspendSocket called with bad socket %d", v22, v23, v24, v25, v26, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadSuspendSocket called with bad socket %d", v27, v28, v29, v30, a2);
        }
      }
    }
  }

  else if (v4 < 1)
  {
LABEL_6:
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      *buf = 67109634;
      v55 = a2;
      if ((a3 & 1) == 0)
      {
        v11 = @"NO";
      }

      v56 = 2112;
      *v57 = v11;
      *&v57[8] = 1024;
      v58 = v4;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "suspendSocket(%d, forRead:%@) cannot find socket (count:%d)", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"suspendSocket(%d, forRead:%@) cannot find socket (count:%d)", v12, v13, v14, v15, v16, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"suspendSocket(%d, forRead:%@) cannot find socket (count:%d)", v17, v18, v19, v20, a2);
        }
      }
    }
  }

  else
  {
    v8 = result;
    v9 = 0;
    while (*(v5 + 4 * v9) != a2)
    {
      if (v4 == ++v9)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      changelist.ident = a2;
      *&changelist.filter = 589823;
      changelist.data = 0;
      changelist.udata = v9;
      result = kevent(*(result + 32), &changelist, 1, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        v31 = *__error();
        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v55 = v9;
          v56 = 1024;
          *v57 = a2;
          *&v57[4] = 1024;
          *&v57[6] = v31;
          _os_log_impl(&dword_1A7AD9000, v32, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)", buf, 0x14u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)", v33, v34, v35, v36, v37, v9);
            result = _IDSShouldLog(0);
            if (result)
            {
              result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, DISABLE) failed with error(%d)", v38, v39, v40, v41, v9);
            }
          }
        }
      }
    }

    if ((a3 & 2) != 0)
    {
      changelist.ident = a2;
      *&changelist.filter = 589822;
      changelist.data = 0;
      changelist.udata = v9;
      result = kevent(*(v8 + 32), &changelist, 1, 0, 0, 0);
      if ((result & 0x80000000) != 0)
      {
        v42 = *__error();
        v43 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          v55 = v9;
          v56 = 1024;
          *v57 = a2;
          *&v57[4] = 1024;
          *&v57[6] = v42;
          _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)", buf, 0x14u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)", v44, v45, v46, v47, v48, v9);
            result = _IDSShouldLog(0);
            if (result)
            {
              result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, DISABLE) failed with error(%d)", v49, v50, v51, v52, v9);
            }
          }
        }
      }
    }

    ++*(v8 + 24);
  }

  return result;
}

uint64_t IDSTransportThreadSuspendSocketWithPriority(uint64_t a1, char a2, uint64_t a3)
{
  v5 = &unk_1EB2B8610;
  v6 = &qword_1EB2B8668;
  if (a3 == 200)
  {
    v6 = &unk_1EB2B8718;
  }

  if (a3 != 300)
  {
    v5 = v6;
  }

  if (a3 == 100)
  {
    v7 = &unk_1EB2B86C0;
  }

  else
  {
    v7 = v5;
  }

  return sub_1A7C9ADAC(v7, a1, a2);
}

uint64_t sub_1A7C9B308(uint64_t result, uint64_t a2, char a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = *(result + 44);
  v6 = *(result + 48);
  v5 = *(result + 56);
  v7 = *(result + 64);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v8;
  *&changelist.data = v8;
  if ((a2 & 0x80000000) != 0)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v57 = a2;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadResumeSocket called with bad socket %d", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadResumeSocket called with bad socket %d", v24, v25, v26, v27, v28, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadResumeSocket called with bad socket %d", v29, v30, v31, v32, a2);
        }
      }
    }
  }

  else if (v4 < 1)
  {
LABEL_6:
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = @"YES";
      *buf = 67109634;
      v57 = a2;
      if ((a3 & 1) == 0)
      {
        v13 = @"NO";
      }

      v58 = 2112;
      *v59 = v13;
      *&v59[8] = 1024;
      v60 = v4;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "resumeSocket(%d, forRead:%@) cannot find socket (count:%d)", buf, 0x18u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"resumeSocket(%d, forRead:%@) cannot find socket (count:%d)", v14, v15, v16, v17, v18, a2);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"TPThread", @"resumeSocket(%d, forRead:%@) cannot find socket (count:%d)", v19, v20, v21, v22, a2);
        }
      }
    }
  }

  else
  {
    v10 = result;
    v11 = 0;
    while (*(v6 + 4 * v11) != a2)
    {
      if (v4 == ++v11)
      {
        goto LABEL_6;
      }
    }

    if (a3)
    {
      if (*(v5 + 8 * v11))
      {
        changelist.ident = a2;
        *&changelist.filter = 327679;
        changelist.data = 0;
        changelist.udata = v11;
        result = kevent(*(result + 32), &changelist, 1, 0, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          v33 = *__error();
          v34 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v57 = v11;
            v58 = 1024;
            *v59 = a2;
            *&v59[4] = 1024;
            *&v59[6] = v33;
            _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)", buf, 0x14u);
          }

          result = os_log_shim_legacy_logging_enabled();
          if (result)
          {
            result = _IDSShouldLogTransport();
            if (result)
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)", v35, v36, v37, v38, v39, v11);
              result = _IDSShouldLog(0);
              if (result)
              {
                result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, ENABLE) failed with error(%d)", v40, v41, v42, v43, v11);
              }
            }
          }
        }
      }
    }

    if ((a3 & 2) != 0)
    {
      if (*(v7 + 8 * v11))
      {
        changelist.ident = a2;
        *&changelist.filter = 327678;
        changelist.data = 0;
        changelist.udata = v11;
        result = kevent(*(v10 + 32), &changelist, 1, 0, 0, 0);
        if ((result & 0x80000000) != 0)
        {
          v44 = *__error();
          v45 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            v57 = v11;
            v58 = 1024;
            *v59 = a2;
            *&v59[4] = 1024;
            *&v59[6] = v44;
            _os_log_impl(&dword_1A7AD9000, v45, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)", buf, 0x14u);
          }

          result = os_log_shim_legacy_logging_enabled();
          if (result)
          {
            result = _IDSShouldLogTransport();
            if (result)
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)", v46, v47, v48, v49, v50, v11);
              result = _IDSShouldLog(0);
              if (result)
              {
                result = _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, ENABLE) failed with error(%d)", v51, v52, v53, v54, v11);
              }
            }
          }
        }
      }
    }

    ++*(v10 + 24);
  }

  return result;
}

uint64_t IDSTransportThreadResumeSocketWithPriority(uint64_t a1, char a2, uint64_t a3)
{
  v5 = &unk_1EB2B8610;
  v6 = &qword_1EB2B8668;
  if (a3 == 200)
  {
    v6 = &unk_1EB2B8718;
  }

  if (a3 != 300)
  {
    v5 = v6;
  }

  if (a3 == 100)
  {
    v7 = &unk_1EB2B86C0;
  }

  else
  {
    v7 = v5;
  }

  return sub_1A7C9B308(v7, a1, a2);
}

void sub_1A7C9B87C(uint64_t a1, uint64_t a2)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 44);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&changelist.ident = v7;
  *&changelist.data = v7;
  if ((a2 & 0x80000000) != 0)
  {
    v34 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v84 = a2;
      _os_log_impl(&dword_1A7AD9000, v34, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadRemoveSocket called with bad socket %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadRemoveSocket called with bad socket %d", v35, v36, v37, v38, v39, a2);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadRemoveSocket called with bad socket %d", v40, v41, v42, v43, a2);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v9 != pthread_self())
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a1;
        *buf = 134218240;
        *v84 = v11;
        *&v84[8] = 2048;
        v85 = pthread_self();
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "should remove socket on thread %p, not %p", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v12 = *a1;
          pthread_self();
          _IDSLogTransport(@"TPThread", @"IDS", @"should remove socket on thread %p, not %p", v13, v14, v15, v16, v17, v12);
          if (_IDSShouldLog(0))
          {
            v18 = *a1;
            pthread_self();
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"should remove socket on thread %p, not %p", v19, v20, v21, v22, v18);
          }
        }
      }

      if (isRunningTests())
      {
        throwsIDSAbortException();
      }

      abort();
    }

    if (v3 < 1)
    {
LABEL_15:
      v24 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v84 = a2;
        *&v84[4] = 1024;
        *&v84[6] = v3;
        _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "removeSocket(%d) cannot find socket (count:%d)", buf, 0xEu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"removeSocket(%d) cannot find socket (count:%d)", v25, v26, v27, v28, v29, a2);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"removeSocket(%d) cannot find socket (count:%d)", v30, v31, v32, v33, a2);
          }
        }
      }
    }

    else
    {
      v23 = 0;
      while (v4[v23] != a2)
      {
        if (v3 == ++v23)
        {
          goto LABEL_15;
        }
      }

      v44 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = *(v5 + 8 * v23);
        v46 = *(v6 + 8 * v23);
        *buf = 67110144;
        *v84 = a2;
        *&v84[4] = 1024;
        *&v84[6] = v23;
        LOWORD(v85) = 1024;
        *(&v85 + 2) = v3 - 1;
        HIWORD(v85) = 2048;
        v86 = v45;
        v87 = 2048;
        v88 = v46;
        _os_log_impl(&dword_1A7AD9000, v44, OS_LOG_TYPE_DEFAULT, "removing socket %d at %d (count:%d) with readBlock %p writeBlock %p", buf, 0x28u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"TPThread", @"IDS", @"removing socket %d at %d (count:%d) with readBlock %p writeBlock %p", v47, v48, v49, v50, v51, a2);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"TPThread", @"removing socket %d at %d (count:%d) with readBlock %p writeBlock %p", v52, v53, v54, v55, a2);
          }
        }
      }

      v4[v23] = -1;
      if (*(v5 + 8 * v23))
      {
        changelist.ident = a2;
        *&changelist.filter = 196607;
        changelist.data = 0;
        changelist.udata = v23;
        if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
        {
          v56 = *__error();
          v57 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v84 = v23;
            *&v84[4] = 1024;
            *&v84[6] = a2;
            LOWORD(v85) = 1024;
            *(&v85 + 2) = v56;
            _os_log_impl(&dword_1A7AD9000, v57, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)", buf, 0x14u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)", v58, v59, v60, v61, v62, v23);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, READ, DELETE) failed with error(%d)", v63, v64, v65, v66, v23);
              }
            }
          }
        }

        _Block_release(*(v5 + 8 * v23));
        *(v5 + 8 * v23) = 0;
      }

      if (*(v6 + 8 * v23))
      {
        changelist.ident = a2;
        *&changelist.filter = 196606;
        changelist.data = 0;
        changelist.udata = v23;
        if (kevent(*(a1 + 32), &changelist, 1, 0, 0, 0) < 0)
        {
          v67 = *__error();
          v68 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109632;
            *v84 = v23;
            *&v84[4] = 1024;
            *&v84[6] = a2;
            LOWORD(v85) = 1024;
            *(&v85 + 2) = v67;
            _os_log_impl(&dword_1A7AD9000, v68, OS_LOG_TYPE_DEFAULT, "kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)", buf, 0x14u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"TPThread", @"IDS", @"kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)", v69, v70, v71, v72, v73, v23);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"TPThread", @"kevent(fd[%d]=%d, WRITE, DELETE) failed with error(%d)", v74, v75, v76, v77, v23);
              }
            }
          }
        }

        _Block_release(*(v6 + 8 * v23));
        *(v6 + 8 * v23) = 0;
      }

      ++*(a1 + 24);
      if (*(a1 + 36) == a2)
      {
        v78 = *(a1 + 44);
        v79 = -1;
        if (v78 >= 1)
        {
          do
          {
            v81 = *v4++;
            v80 = v81;
            if (v81 > v79)
            {
              v79 = v80;
            }

            --v78;
          }

          while (v78);
        }

        *(a1 + 36) = v79;
      }
    }
  }
}

void IDSTransportThreadRemoveSocketWithPriority(uint64_t a1, uint64_t a2)
{
  v3 = &unk_1EB2B8610;
  v4 = &qword_1EB2B8668;
  if (a2 == 200)
  {
    v4 = &unk_1EB2B8718;
  }

  if (a2 != 300)
  {
    v3 = v4;
  }

  if (a2 == 100)
  {
    v5 = &unk_1EB2B86C0;
  }

  else
  {
    v5 = v3;
  }

  sub_1A7C9B87C(v5, a1);
}

BOOL IDSTransportThreadIsOnPrimaryTransportThread()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = qword_1EB2B8668;
  v1 = pthread_self();
  v2 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"NO";
    if (v0 == v1)
    {
      v3 = @"YES";
    }

    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadIsOnPrimaryTransportThread: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    if (v0 == v1)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadIsOnPrimaryTransportThread: %@", v4, v5, v6, v7, v8, v9);
    if (_IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadIsOnPrimaryTransportThread: %@", v10, v11, v12, v13, v9);
    }
  }

  return v0 == v1;
}

void sub_1A7C9C1C4(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = kqueue();
  *(a1 + 32) = v4;
  if (v4 == -1)
  {
    v17 = *__error();
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v35) = v17;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "IDSTransportThreadInit kqueue failed (%d)", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"IDSTransportThreadInit kqueue failed (%d)", v19, v20, v21, v22, v23, v17);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"IDSTransportThreadInit kqueue failed (%d)", v24, v25, v26, v27, v17);
        }
      }
    }

    goto LABEL_10;
  }

  *(a1 + 40) = 32;
  if (sub_1A7C9C5A4(a1))
  {
    *(a1 + 44) = 0;
    *(a1 + 24) = 0;
    *(a1 + 36) = **(a1 + 48);
    *(a1 + 28) = 0;
    *(a1 + 72) = a2;
    v5 = pthread_create(a1, 0, sub_1A7AFF1FC, a1);
    if (v5)
    {
      v6 = v5;
      v7 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v35) = v6;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "failed to create transport thread (%d)", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        _IDSLogTransport(@"TPThread", @"IDS", @"failed to create transport thread (%d)", v8, v9, v10, v11, v12, v6);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"TPThread", @"failed to create transport thread (%d)", v13, v14, v15, v16, v6);
        }
      }

LABEL_10:
      sub_1A7C9C554();
      return;
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *a1;
      *buf = 134217984;
      v35 = v29;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "Created transport thread with tid(%p).", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
    {
      _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Created transport thread with tid(%p).", v30, v31, v32, v33, *a1);
    }

    *(a1 + 8) = 1;
  }

  else
  {

    sub_1A7C9C554();
  }
}

double sub_1A7C9C554()
{
  sub_1A7C9C87C(&qword_1EB2B8668);
  sub_1A7C9C87C(&unk_1EB2B8610);
  sub_1A7C9C87C(&unk_1EB2B8718);

  return sub_1A7C9C87C(&unk_1EB2B86C0);
}

uint64_t sub_1A7C9C5A4(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (2 * *(a1 + 40));
  v3 = malloc_type_realloc(*(a1 + 48), 4 * v2, 0x100004052888210uLL);
  if (!v3)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = v2;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "realloc(%d) for fds failed", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (!result)
    {
      return result;
    }

    result = _IDSShouldLog(0);
    if (!result)
    {
      return result;
    }

    _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for fds failed", v8, v9, v10, v11, v2);
    return 0;
  }

  *(a1 + 48) = v3;
  v4 = malloc_type_realloc(*(a1 + 56), 8 * v2, 0x80040B8603338uLL);
  if (!v4)
  {
    v12 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = v2;
      _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "realloc(%d) for readBlocks failed", buf, 8u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (!result)
    {
      return result;
    }

    result = _IDSShouldLog(0);
    if (!result)
    {
      return result;
    }

    _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for readBlocks failed", v13, v14, v15, v16, v2);
    return 0;
  }

  *(a1 + 56) = v4;
  v5 = malloc_type_realloc(*(a1 + 64), 8 * v2, 0x80040B8603338uLL);
  if (v5)
  {
    *(a1 + 64) = v5;
    *(a1 + 40) = v2;
    return 1;
  }

  v17 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v23 = v2;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "realloc(%d) for writeBlocks failed", buf, 8u);
  }

  result = os_log_shim_legacy_logging_enabled();
  if (result)
  {
    result = _IDSShouldLog(0);
    if (result)
    {
      _IDSLogV(0, @"IDSFoundation", @"TPThread", @"realloc(%d) for writeBlocks failed", v18, v19, v20, v21, v2);
      return 0;
    }
  }

  return result;
}

double sub_1A7C9C87C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  sub_1A7AFF09C(a1, 3);
  v2 = *a1;
  if (*a1)
  {
    *buf = 0xAAAAAAAAAAAAAAAALL;
    pthread_join(v2, buf);
  }

  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "Transport thread with tid(%p) stopped.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"TPThread", @"IDS", @"Transport thread with tid(%p) stopped.", v5, v6, v7, v8, v9, *a1);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"TPThread", @"Transport thread with tid(%p) stopped.", v10, v11, v12, v13, *a1);
      }
    }
  }

  free(*(a1 + 48));
  free(*(a1 + 56));
  free(*(a1 + 64));
  v14 = *(a1 + 32);
  if (v14 != -1)
  {
    close(v14);
  }

  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t IDSQRProtoAllocBindJoinInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v31[0] & 0x7F) << v22;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_46;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_46:
        *(a1 + 24) = v28;
      }

      else if (v13 == 2)
      {
        v21 = objc_alloc_init(IDSQRProtoMaterial);
        objc_storeStrong((a1 + 16), v21);
        v31[0] = 0xAAAAAAAAAAAAAAAALL;
        v31[1] = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !IDSQRProtoMaterialReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v31[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v31[0] & 0x7F) << v14;
          if ((v31[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoQuicConnectionInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoCallModeUpdateInfoReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__modeGenCounter;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__modeGenCounter;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__facetimeMode;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___IDSQRProtoCallModeUpdateInfo__facetimeMode;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t IDSQRProtoAllocBindAllocBindReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_1A7C9EEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A7C9EEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [IDSSessionInfoMetadataSerializer _writeStringToByteBuffer:a2 buffer:*(*(a1 + 32) + 8) + 32];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [IDSSessionInfoMetadataSerializer _writeNumberToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [IDSSessionInfoMetadataSerializer _writeStringToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [IDSSessionInfoMetadataSerializer _writeDictionaryToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [IDSSessionInfoMetadataSerializer _writeArrayToByteBuffer:v5 buffer:*(*(a1 + 32) + 8) + 32];
        }
      }
    }
  }
}

void sub_1A7C9F238(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (isKindOfClass)
  {
    [v7 _writeStringToByteBuffer:v5 buffer:v8];
  }

  else
  {
    [v7 _writeNumberToByteBuffer:v5 buffer:v8];
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  if (v9)
  {
    [v10 _writeStringToByteBuffer:v12 buffer:v11];
  }

  else
  {
    [v10 _writeArrayToByteBuffer:v12 buffer:v11];
  }
}

uint64_t IDSQRProtoReallocateReallocateReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void *sub_1A7CA0268()
{
  result = MEMORY[0x1AC5631C0]("AnalyticsSendEvent", @"CoreAnalytics");
  off_1EB2BC170 = result;
  return result;
}

uint64_t *IDSSimpleUInt16List_Init(uint64_t *result, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(2 * a2, 0x1000040BDFB0063uLL);
    v3[2] = v4;
    if (v4)
    {
      *v3 = a2;
      v3[1] = 0;
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = *v3;
        *buf = 134217984;
        v18 = v6;
        _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: initialized to size %lu.", buf, 0xCu);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(1);
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: initialized to size %lu.", v7, v8, v9, v10, *v3);
        }
      }
    }

    else
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: failed to initialize.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: failed to initialize.", v12, v13, v14, v15, v16);
        }
      }
    }
  }

  return result;
}

void *IDSSimpleUInt16List_Destroy(void *result)
{
  if (result)
  {
    *result = 0;
    result[1] = 0;
    v1 = result[2];
    if (v1)
    {
      free(v1);
    }

    v2 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1A7AD9000, v2, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: list destroyed.", &v7, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(0);
      if (result)
      {
        return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: list destroyed.", v3, v4, v5, v6, v7);
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_AddItem(uint64_t result, unsigned int a2)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
    if (*result)
    {
LABEL_23:
      v14 = *(result + 16);
      v21 = *(result + 8);
    }

    else
    {
      v7 = 0;
      v4 = 0;
      v6 = 0;
LABEL_16:
      v13 = malloc_type_realloc(*(result + 16), v7, 0x1000040BDFB0063uLL);
      if (!v13)
      {
        v33 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: failed to realloc list.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: failed to realloc list.", v34, v35, v36, v37, v44);
          }
        }

        return result;
      }

      v14 = v13;
      v15 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v3;
        *buf = 134218240;
        *v46 = v16;
        *&v46[8] = 2048;
        *&v46[10] = v6;
        _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: list size changed from %lu to %lu.", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: list size changed from %lu to %lu.", v17, v18, v19, v20, *v3);
      }

      v3[2] = v14;
      *v3 = v6;
      v21 = v3[1];
    }

    v14[v4] = a2;
    v3[1] = v21 + 1;
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = v3[1];
      *buf = 67109376;
      *v46 = __rev16(a2);
      *&v46[4] = 2048;
      *&v46[6] = v23;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: added item %04x, count %lu.", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(1);
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: added item %04x, count %lu.", v24, v25, v26, v27, __rev16(a2));
      }
    }

    return result;
  }

  for (i = 0; i != v4; ++i)
  {
    if (*(*(result + 16) + 2 * i) == a2)
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v46 = __rev16(a2);
        _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: item %04x is already in the list, ignore.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(1);
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: item %04x is already in the list, ignore.", v29, v30, v31, v32, __rev16(a2));
        }
      }

      return result;
    }
  }

  if (v4 != *result)
  {
    goto LABEL_23;
  }

  if (v4 < 0)
  {
    v38 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      v39 = *v3;
      *buf = 134217984;
      *v46 = v39;
      _os_log_impl(&dword_1A7AD9000, v38, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: 2 * list->listSize overflow, list->listSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(1);
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: 2 * list->listSize overflow, list->listSize = %lu", v40, v41, v42, v43, *v3);
      }
    }
  }

  else
  {
    v6 = 2 * v4;
    v7 = 4 * v4;
    if (((2 * v4) & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v46 = 4 * v4;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEBUG, "Error: IDSSimpleUInt16List: sizeof(uint16_t) * newListSize overflow, sizeOfNewListSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(1);
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSSimpleUInt16List: sizeof(uint16_t) * newListSize overflow, sizeOfNewListSize = %lu", v9, v10, v11, v12, 4 * v4);
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_RemoveItem(uint64_t result, unsigned int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    if (v4)
    {
      v5 = 0;
      while (*(*(result + 16) + 2 * v5) != a2)
      {
        if (v4 == ++v5)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
LABEL_9:
      v6 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v18 = __rev16(a2);
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "IDSSimpleUInt16List: cannot find item %04x.", buf, 8u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: cannot find item %04x.", v7, v8, v9, v10, __rev16(a2));
        }
      }
    }

    else
    {
      memmove((*(result + 16) + 2 * v5), (*(result + 16) + 2 * v5 + 2), 2 * (v4 + ~v5));
      --*(v3 + 8);
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(v3 + 8);
        *buf = 67109376;
        v18 = __rev16(a2);
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEBUG, "IDSSimpleUInt16List: removed item %04x, count %lu.", buf, 0x12u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(1);
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"IDSSimpleUInt16List: removed item %04x, count %lu.", v13, v14, v15, v16, __rev16(a2));
        }
      }
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_HasItem(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(result + 16);
      v4 = v2 - 1;
      do
      {
        v5 = *v3++;
        result = v5 == a2;
      }

      while (v5 != a2 && v4-- != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IDSSimpleUInt16List_Count(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t IDSSimpleUInt16List_ElementAtIndex(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(result + 16) + 2 * a2);
    }
  }

  return result;
}

uint64_t *IDSQRSendInfoList_Init(uint64_t *result, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    if (v4)
    {
      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 360 * a2, 0x1000040A2B0AFECuLL);
      v5[1] = v6;
      if (v6)
      {
        *v5 = a2;
        *v3 = v5;
        v7 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v3;
          v9 = **v3;
          *buf = 134218240;
          v31 = v8;
          v32 = 2048;
          v33 = v9;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: initialized list %p to size %lu.", buf, 0x16u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLogTransport();
          if (result)
          {
            _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_Init: initialized list %p to size %lu.", v10, v11, v12, v13, v14, *v3);
            result = _IDSShouldLog(0);
            if (result)
            {
              return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: initialized list %p to size %lu.", v15, v16, v17, v18, *v3);
            }
          }
        }
      }

      else
      {
        v24 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: failed to initialize items.", buf, 2u);
        }

        result = os_log_shim_legacy_logging_enabled();
        if (result)
        {
          result = _IDSShouldLog(0);
          if (result)
          {
            return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: failed to initialize items.", v25, v26, v27, v28, v29);
          }
        }
      }
    }

    else
    {
      v19 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Init: failed to initialize list.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Init: failed to initialize list.", v20, v21, v22, v23, v29);
        }
      }
    }
  }

  return result;
}

void IDSQRSendInfoList_Destroy(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      free(v2);
    }

    *a1 = 0;
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = a1;
      _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_Destroy: list %p destroyed.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_Destroy: list %p destroyed.", v4, v5, v6, v7, v8, a1);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_Destroy: list %p destroyed.", v9, v10, v11, v12, a1);
      }
    }

    free(a1);
  }
}

uint64_t IDSQRSendInfoList_AddItemAtIndex(uint64_t result, void *__src, int a3)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *result;
  if (*result > a3)
  {
    v7 = *(result + 8);
LABEL_4:
    memcpy(&v7[360 * a3], __src, 0x168uLL);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v50 = __src;
      v51 = 1024;
      LODWORD(v52) = a3;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.", v9, v10, v11, v12, v13, __src);
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: added item %p at index %d.", v14, v15, v16, v17, __src);
        }
      }
    }

    return result;
  }

  if (v6 < 0)
  {
    v23 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = *v5;
      *buf = 134217984;
      v50 = v24;
      _os_log_impl(&dword_1A7AD9000, v23, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: list->listSize * 2 overflow, list->listSize = %lu", buf, 0xCu);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(1);
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: list->listSize * 2 overflow, list->listSize = %lu", v25, v26, v27, v28, *v5);
      }
    }
  }

  else if (a3 == 0x7FFFFFFF)
  {
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: itemIndex = INT_MAX", buf, 2u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLog(1);
      if (result)
      {
        return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: itemIndex = INT_MAX", v19, v20, v21, v22, v48);
      }
    }
  }

  else
  {
    v29 = 2 * v6;
    if (v29 <= a3 + 1)
    {
      v30 = a3 + 1;
    }

    else
    {
      v30 = v29;
    }

    if (is_mul_ok(v30, 0x168uLL))
    {
      v36 = malloc_type_realloc(*(result + 8), 360 * v30, 0x1000040A2B0AFECuLL);
      if (v36)
      {
        v7 = v36;
        v37 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *v5;
          *buf = 134218240;
          v50 = v38;
          v51 = 2048;
          v52 = v30;
          _os_log_impl(&dword_1A7AD9000, v37, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: list size changed from %lu to %lu.", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: list size changed from %lu to %lu.", v39, v40, v41, v42, *v5);
        }

        *v5 = v30;
        v5[1] = v7;
        goto LABEL_4;
      }

      v43 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v43, OS_LOG_TYPE_DEFAULT, "IDSQRSendInfoList_AddItemAtIndex: failed to realloc list.", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(0);
        if (result)
        {
          return _IDSLogV(0, @"IDSFoundation", @"GL", @"IDSQRSendInfoList_AddItemAtIndex: failed to realloc list.", v44, v45, v46, v47, v48);
        }
      }
    }

    else
    {
      v31 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v50 = 360;
        v51 = 2048;
        v52 = v30;
        _os_log_impl(&dword_1A7AD9000, v31, OS_LOG_TYPE_DEBUG, "Error: IDSQRSendInfoList_AddItemAtIndex: sizeof(IDSQRSendInfo) * newListSize overflow, sizeof(IDSQRSendInfo) = %lu, newListSize = %lu", buf, 0x16u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        result = _IDSShouldLog(1);
        if (result)
        {
          return _IDSLogV(1, @"IDSFoundation", @"GL", @"Error: IDSQRSendInfoList_AddItemAtIndex: sizeof(IDSQRSendInfo) * newListSize overflow, sizeof(IDSQRSendInfo) = %lu, newListSize = %lu", v32, v33, v34, v35, 360);
        }
      }
    }
  }

  return result;
}

void *IDSQRSendInfoList_ItemAtIndex(void *result, int a2)
{
  if (result)
  {
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      return (result[1] + 360 * a2);
    }
  }

  return result;
}

uint64_t IDSQRSendInfoList_AddItemAtIndexFromCandidatePair(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  LODWORD(v11) = [v5 linkID];
  v6 = [v5 local];
  HIDWORD(v11) = [v6 index];

  v7 = [v5 local];
  v14 = [v7 transport];

  v12 = [v5 channelNumber];
  v13 = [v5 isVirtualRelayStunCandidatePair];
  v16 = 0;
  v17 = 0;
  v15 = [v5 glLinkProtocol];
  v8 = [v5 local];
  [v8 address];

  v9 = [v5 remote];

  [v9 external];
  __memcpy_chk();
  __memcpy_chk();
  return IDSQRSendInfoList_AddItemAtIndex(a1, &v11, a3);
}

id GLUtilConnectionDictionaryForNWConnectionInfo(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = [v3 childConnectionID];
    if (!v4)
    {
      memset(uu, 170, sizeof(uu));
      uuid_clear(uu);
      v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
    }

    v15[0] = @"id";
    v5 = IDSGetUUIDDataFromNSUUID(v4);
    v16[0] = v5;
    v15[1] = @"protocol-stack";
    v6 = [v3 protocolStackDescription];
    v16[1] = v6;
    v15[2] = @"nw-connection-id";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "connectionID")}];
    v16[2] = v7;
    v15[3] = @"nw-connection-token";
    v8 = [v3 token];
    v16[3] = v8;
    v15[4] = @"allow-outgoing";
    v9 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v16[4] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v11 = [v10 mutableCopy];

    v12 = [v3 qpodParameters];

    v13 = [v12 dictionaryRepresentation];

    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"qpod"];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id GLUtilConnectionDictionaryForTCPCandidatePair(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"protocol-stack";
  v5[1] = @"allow-outgoing";
  v6[0] = @"tcp";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id GLUtilConnectionDictionaryForUDPCandidatePair(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"protocol-stack";
  v5[1] = @"allow-outgoing";
  v6[0] = @"udp";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

unint64_t ntpTime32(double a1)
{
  if (qword_1EB2B85F8 != -1)
  {
    sub_1A7E20534();
  }

  return (qword_1EB2B85F0 + a1 * 4294967300.0) >> 16;
}

void sub_1A7CA1CE0()
{
  if (!qword_1EB2B85F0)
  {
    memset(v2, 170, sizeof(v2));
    v0 = ids_monotonic_time();
    gettimeofday(&v2[1], 0);
    v1 = ids_monotonic_time();
    gettimeofday(v2, 0);
    if (ids_monotonic_time() - v1 < v1 - v0)
    {
      v2[1] = v2[0];
      v0 = v1;
    }

    qword_1EB2B85F0 = vcvtd_n_u64_f64(v2[1].tv_sec + v2[1].tv_usec * 0.000001 + 2208988800.0 - v0, 0x20uLL);
  }
}

uint64_t GLUtilStunErrorToGlobalLinkError(int a1)
{
  v1 = 255;
  v2 = 34;
  v3 = 35;
  v4 = 42;
  if (a1 != 613)
  {
    v4 = 255;
  }

  if (a1 != 602)
  {
    v3 = v4;
  }

  if (a1 != 601)
  {
    v2 = v3;
  }

  v5 = 19;
  v6 = 43;
  if (a1 != 486)
  {
    v6 = 255;
  }

  if (a1 != 442)
  {
    v5 = v6;
  }

  if (a1 <= 600)
  {
    v2 = v5;
  }

  v7 = 16;
  v8 = 18;
  v9 = 17;
  if (a1 != 441)
  {
    v9 = 255;
  }

  if (a1 != 437)
  {
    v8 = v9;
  }

  if (a1 != 420)
  {
    v7 = v8;
  }

  if (a1 == 401)
  {
    v1 = 17;
  }

  if (a1 == 400)
  {
    v1 = 15;
  }

  if (a1 > 419)
  {
    v1 = v7;
  }

  if (a1 <= 441)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double GLUtilNATCheckTimeout()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = +[IDSServerBag sharedInstance];
  v1 = [v0 objectForKey:@"gk-p2p-nat-type-timeout"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 floatValue];
    v3 = v2;
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = *&v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "got commnat timeout: %f(s)", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"got commnat timeout: %f(s)", v5, v6, v7, v8, v9, *&v3);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"got commnat timeout: %f(s)", v10, v11, v12, v13, *&v3);
        }
      }
    }
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = @"gk-p2p-nat-type-timeout";
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "failed to get bag entry with %@ key", buf, 0xCu);
    }

    v3 = 0.0;
    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get bag entry with %@ key", v15, v16, v17, v18, v19, @"gk-p2p-nat-type-timeout");
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get bag entry with %@ key", v20, v21, v22, v23, @"gk-p2p-nat-type-timeout");
        }
      }
    }
  }

  return v3;
}

uint64_t GLUtilGetDefaultInterface(unsigned int *a1, char *a2, unsigned __int8 *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = +[IDSNWPathUtils sharedInstance];
  v7 = [v6 getDefaultPath];

  v8 = [v7 status];
  if (v8 != 1)
  {
    v16 = v8;
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = v7;
      v43 = 1024;
      v44 = v16;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "no default path is available (path:%@, status:%d).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"no default path is available (path:%@, status:%d).", v18, v19, v20, v21, v22, v7);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"no default path is available (path:%@, status:%d).", v23, v24, v25, v26, v7);
        }
      }
    }

    v12 = 0;
    goto LABEL_18;
  }

  v9 = [v7 interface];
  v10 = [v9 interfaceIndex];

  v11 = [v7 interface];
  v12 = [v11 interfaceName];

  v13 = [v7 usesInterfaceType:2];
  if ((v10 & 0x80000000) != 0 || !v12)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v7 privateDescription];
      *buf = 138412802;
      v42 = v12;
      v43 = 1024;
      v44 = v10;
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&dword_1A7AD9000, v28, OS_LOG_TYPE_DEFAULT, "invalid default interface [%@:%d], %@.", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v39 = [v7 privateDescription];
        _IDSLogTransport(@"GL", @"IDS", @"invalid default interface [%@:%d], %@.", v30, v31, v32, v33, v34, v12);

        if (_IDSShouldLog(0))
        {
          v40 = [v7 privateDescription];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"invalid default interface [%@:%d], %@.", v35, v36, v37, v38, v12);
        }
      }
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

  v14 = v13;
  if (a1)
  {
    *a1 = v10;
  }

  if (a2)
  {
    strlcpy(a2, [v12 UTF8String], objc_msgSend(v12, "length") + 1);
  }

  if (a3)
  {
    *a3 = v14;
  }

  v15 = 1;
LABEL_19:

  return v15;
}

uint64_t GLUtilGetLinkOverhead(unsigned int a1)
{
  v1 = ((a1 << 31) >> 31) & 0x14;
  if ((a1 & 2) != 0)
  {
    v1 |= 0x28u;
  }

  v2 = (v1 + ((2 * a1) & 8)) | (a1 >> 3) & 2;
  if ((a1 & 0x20) != 0)
  {
    v2 += 6;
  }

  v3 = ((a1 >> 5) & 2 | (16 * ((a1 & 8) != 0))) + v2;
  if ((a1 & 0x80) != 0)
  {
    v3 += 30;
  }

  v4 = v3 + ((a1 >> 4) & 0x10);
  if ((a1 & 0x200) != 0)
  {
    LOWORD(v4) = v4 + 5;
  }

  return v4;
}

uint64_t GLUtilGetLocalMTU(unsigned int a1, int a2)
{
  if ((a1 & 2) != 0)
  {
    v3 = 1280;
  }

  else
  {
    v3 = 1450;
  }

  if (a2)
  {
    v4 = +[IDSCellularLinkMonitor sharedInstance];
    v5 = [v4 cellularMTU];

    if (v3 >= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    if (v5)
    {
      v3 = v6;
    }
  }

  return v3 - GLUtilGetLinkOverhead(a1);
}

uint64_t GLUtilGetRATForIPv4Address(int a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) local];
        if (*([v8 address] + 1) != 30 && *(objc_msgSend(v8, "external") + 4) == a1)
        {
          v9 = [v8 radioAccessTechnology];

          goto LABEL_12;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 10;
LABEL_12:

  return v9;
}

uint64_t GLUtilGetRATForIPv6Address(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v13 + 1) + 8 * i) local];
        if (*([v8 address] + 1) != 2)
        {
          v9 = [v8 external];
          if (*(a1 + 8) == *(v9 + 8) && *(a1 + 16) == *(v9 + 16))
          {
            v11 = [v8 radioAccessTechnology];

            goto LABEL_15;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 10;
LABEL_15:

  return v11;
}

uint64_t GLUtilHasV4AddressForInterface(int a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 address];
        v10 = [v9 sa];

        if (v10 && *(v10 + 1) == 2 && [v8 index] == a1)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

uint64_t GLUtilHasV6Address(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) IPVersion] == 1)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t GLUtilHasV4Address(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (![*(*(&v6 + 1) + 8 * i) IPVersion])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

uint64_t GLUtilGetFirstUnusedInterface(void *a1, void *a2, void *a3, unsigned int *a4, char *a5, char a6)
{
  v49 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v36 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a3;
  v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v34)
  {
    v30 = a4;
    v31 = a5;
    v35 = *v44;
    while (1)
    {
      v11 = 0;
LABEL_4:
      if (*v44 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v37 = v11;
      v33 = *(*(&v43 + 1) + 8 * v11);
      v12 = [v33 index];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v36;
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = *v40;
LABEL_8:
      v17 = 0;
      while (1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        v19 = [v18 state];
        v20 = [v18 local];
        v21 = [v20 index];

        if (((a6 & 1) != 0 || objc_msgSend_isRelayStunCandidatePair(v18) && ([v18 isSelfQRSession] & 1) == 0) && v21 == v12 && (v19 - 1) <= 3)
        {
          if (!v38)
          {
            break;
          }

          v23 = [v18 sessionID];
          v24 = [v23 isEqualToString:v38];

          if (v24)
          {
            break;
          }
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v15)
          {
            goto LABEL_8;
          }

          goto LABEL_27;
        }
      }

      v11 = v37 + 1;
      if (v37 + 1 != v34)
      {
        goto LABEL_4;
      }

      v25 = 0;
      v34 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (!v34)
      {
        goto LABEL_33;
      }
    }

LABEL_27:

    if (v30)
    {
      *v30 = v12;
    }

    if (v31)
    {
      v26 = [v33 name];
      v27 = [v26 UTF8String];
      v28 = [v33 name];
      strlcpy(v31, v27, [v28 length] + 1);
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

LABEL_33:

  return v25;
}

uint64_t GLUtilHasDefaultInterface(void *a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v2 = 0;
  if (GLUtilGetDefaultInterface(&v12, v14, 0))
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = v1;
    v2 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = [*(*(&v8 + 1) + 8 * i) index];
          if (v6 == v12)
          {
            v2 = 1;
            goto LABEL_12;
          }
        }

        v2 = [v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v2;
}

id GLUtilCreateRelayCandidateForLinkEngine(uint64_t a1, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [IDSStunCandidate candidateWithType:3 transport:0 radioAccessTechnology:0 mtu:1280 index:0xFFFFFFFFLL address:0 external:a1];
  if (a2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:a3];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v5 setInterfaceAllowList:v7];
  }

  return v5;
}

id GLUtilCreateLocalCandidateForLinkEngine(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 address];
  v3 = [v2 sa];

  if ([v1 isCellular])
  {
    v4 = +[IDSCellularLinkMonitor sharedInstance];
    v5 = [v4 radioAccessTechnology];

    if (v5 >= 0xA)
    {
      v6 = 10;
    }

    else
    {
      v6 = v5;
    }
  }

  else if ([v1 isWired])
  {
    v6 = 9;
  }

  else
  {
    v6 = 0;
  }

  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = IDSRadioAccessTechnologyToString(v6);
    v9 = [v1 name];
    *buf = 136315394;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "setting RAT %s for interface [%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = IDSRadioAccessTechnologyToString(v6);
      v25 = [v1 name];
      _IDSLogTransport(@"GL", @"IDS", @"setting RAT %s for interface [%@].", v11, v12, v13, v14, v15, v10);

      if (_IDSShouldLog(0))
      {
        v16 = IDSRadioAccessTechnologyToString(v6);
        v26 = [v1 name];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setting RAT %s for interface [%@].", v17, v18, v19, v20, v16);
      }
    }
  }

  v21 = +[IDSStunCandidate candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:](IDSStunCandidate, "candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:", 3, 0, v6, 1280, [v1 index], v3, v3);
  [v21 setDelegatedIndex:{objc_msgSend(v1, "delegatedIndex")}];
  v22 = [v1 name];
  [v21 setInterfaceName:v22];

  v23 = [v1 delegatedName];
  [v21 setDelegatedInterfaceName:v23];

  return v21;
}

id GLUtilCreateRelayCandidatePair(void *a1, void *a2, void *a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, void *a9)
{
  v62 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v55 = a2;
  v14 = a3;
  v56 = a9;
  if (a8 == 3)
  {
    v15 = 896;
  }

  else
  {
    v15 = 0;
  }

  if (a8 == 2)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  v57 = [IDSStunCandidate candidateWithType:3 transport:a8 radioAccessTechnology:0 mtu:1280 - GLUtilGetLinkOverhead(v16 | 0x1Au) index:0xFFFFFFFFLL address:0 external:a4];
  v17 = [v14 address];
  v18 = [v17 sa];

  v19 = [v14 isCellular];
  if (v19)
  {
    v20 = +[IDSCellularLinkMonitor sharedInstance];
    LODWORD(v21) = [v20 radioAccessTechnology];

    if (v21 >= 0xA)
    {
      v21 = 10;
    }

    else
    {
      v21 = v21;
    }
  }

  else if ([v14 isWired])
  {
    v21 = 9;
  }

  else
  {
    v21 = 0;
  }

  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = IDSRadioAccessTechnologyToString(v21);
    v24 = [v14 name];
    *buf = 136315394;
    v59 = v23;
    v60 = 2112;
    v61 = v24;
    _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "setting RAT %s for interface [%@].", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v25 = IDSRadioAccessTechnologyToString(v21);
      v51 = [v14 name];
      _IDSLogTransport(@"GL", @"IDS", @"setting RAT %s for interface [%@].", v26, v27, v28, v29, v30, v25);

      if (_IDSShouldLog(0))
      {
        v31 = IDSRadioAccessTechnologyToString(v21);
        v52 = [v14 name];
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setting RAT %s for interface [%@].", v32, v33, v34, v35, v31);
      }
    }
  }

  if (*(v18 + 1) == 30)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  v37 = +[IDSStunCandidate candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:](IDSStunCandidate, "candidateWithType:transport:radioAccessTechnology:mtu:index:address:external:", 3, a8, v21, GLUtilGetLocalMTU(v16 | v36 | 0x20u, v19), [v14 index], v18, v18);
  v38 = [v13 relaySessionID];
  v39 = [IDSStunCandidatePair candidatePairWithLocalCandidate:v37 remoteCandidate:v57 sessionID:v38 delegate:v56];

  v40 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v59 = v13;
    _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@", v41, v42, v43, v44, v45, v13);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilCreateRelayCandidatePair: setPropertiesWithRelaySessionInfo, qrSessionInfo = %@", v46, v47, v48, v49, v13);
      }
    }
  }

  [v39 setPropertiesWithRelaySessionInfo:v13 sessionInfoDict:v55 enableSKE:a7];
  [v39 setIsAcceptedRelaySession:a5];

  return v39;
}

void *GLUtilGetCandidatePairByLinkID(int a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v9 = a5;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = *v11;
        if (v12 < 1)
        {
          v14 = channelForStunCandidatePair((v11 + 2), (v11 + 34), *(v11 + 132));
          Value = 0;
          if (v9 && v14)
          {
            Value = CFDictionaryGetValue(v9, v14);
          }

          a2 = Value;

          goto LABEL_13;
        }

        if (v12 < a4)
        {
          v10 = *(a3 + 8 * v12);
          goto LABEL_5;
        }
      }
    }

    a2 = 0;
    goto LABEL_13;
  }

  a2 = 0;
  if (a1 >= 1 && a1 < a4)
  {
    v10 = *(a3 + 8 * a1);
LABEL_5:
    a2 = v10;
  }

LABEL_13:

  return a2;
}

void GLUtilGetLinkInformation(void *a1, void *a2, _DWORD *a3, _BYTE *a4, void *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a5;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    v22 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v10 = v9;
  v22 = 0;
  v11 = 0;
  v12 = *v24;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v23 + 1) + 8 * i);
      if (!v7)
      {
        if (objc_msgSend_isRelayStunCandidatePair(v14) & 1) == 0 || ([v14 isSelfQRSession])
        {
          continue;
        }

LABEL_14:
        v17 = [v14 local];
        v18 = [v17 transport];

        if (v18 == a2)
        {
          v19 = [v14 state];
          if (v19)
          {
            ++v11;
            v22 |= v19 > 2;
          }
        }

        continue;
      }

      v15 = [v14 sessionID];
      if (([v7 isEqualToString:v15] & 1) == 0 || (objc_msgSend_isRelayStunCandidatePair(v14) & 1) == 0)
      {

        continue;
      }

      v16 = [v14 isSelfQRSession];

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v10);
LABEL_21:
  if (a3)
  {
    *a3 = v11;
  }

  if (a4)
  {
    *a4 = v22 & 1;
  }
}

id GLUtilGetSharedSessionIDs(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 sessionID];
        if ([v8 isSharedQRSession])
        {
          v10 = [v2 containsObject:v9] || v2 == 0;
          if (!v10 && v9 != 0)
          {
            CFArrayAppendValue(v2, v9);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t GLUtilHasRelayCandidatePairConnected(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isRelayStunCandidatePair(v8, v12))
        {
          if ([v8 state] == 4)
          {
            if (!v3 || ([v8 sessionID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v3), v9, (v10 & 1) != 0))
            {
              v5 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

uint64_t GLUtilHasRelayCandidatePairSucceededOrConnected(void *a1, void *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = a2;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_isRelayStunCandidatePair(v11, v18) && ([v11 state] == 3 || objc_msgSend(v11, "state") == 4))
        {
          v12 = [v11 local];
          v13 = [v12 radioAccessTechnology];

          if (v13 == a3)
          {
            if (!v5 || ([v11 sessionID], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", v5), v14, (v15 & 1) != 0))
            {
              v16 = 1;
              goto LABEL_16;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

uint64_t GLUtilHasSharedRelayCandidatePairSucceededOrConnected(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 allocateType] != 2)
        {
          if (objc_msgSend_isRelayStunCandidatePair(v8))
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (v10)
            {
              if (([v8 state] - 5) > 0xFFFFFFFFFFFFFFFDLL)
              {
                v5 = 1;
                goto LABEL_14;
              }
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

uint64_t GLUtilHasNonSharedRelayCandidatePair(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 isSharedQRSession] & 1) == 0)
        {
          if (objc_msgSend_isRelayStunCandidatePair(v8))
          {
            if ([v8 state])
            {
              if (!v3 || ([v8 sessionID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", v3), v9, (v10 & 1) != 0))
              {
                v5 = 1;
                goto LABEL_15;
              }
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v5;
}

uint64_t GLUtilHasCandidatePairForSameSharedSession(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isSharedQRSession])
        {
          if ([v8 state])
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (v10)
            {
              v5 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

uint64_t GLUtilHasDifferentSharedRelayCandidatePair(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isSharedQRSession])
        {
          if ([v8 state] == 4)
          {
            v9 = [v8 sessionID];
            v10 = [v9 isEqualToString:v3];

            if (!v10)
            {
              v5 = 1;
              goto LABEL_13;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

id GLUtilGetDifferentRelayCandidatePairSucceeded(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    v18 = v4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 state];
        if (objc_msgSend_isRelayStunCandidatePair(v8))
        {
          v10 = (v9 - 3) > 1;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = [v3 sessionID];
          v12 = [v8 sessionID];
          if ([v11 isEqualToString:v12] && !objc_msgSend(v3, "isEqual:", v8))
          {
            [v3 local];
            v14 = v13 = v3;
            v19 = [v14 radioAccessTechnology];
            v15 = [v8 local];
            v16 = [v15 radioAccessTechnology];

            v3 = v13;
            v4 = v18;

            if (v19 == v16)
            {
              v5 = v8;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v5;
}

id GLUtilGetRelayCandidatePairNotSucceededForOppositeIPVersion(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = *v26;
    v24 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 state];
        if (objc_msgSend_isRelayStunCandidatePair(v8))
        {
          v10 = (v9 - 1) > 1;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v11 = [v3 sessionID];
          v12 = [v8 sessionID];
          if (![v11 isEqualToString:v12] || (objc_msgSend(v3, "isEqual:", v8) & 1) != 0)
          {
            goto LABEL_18;
          }

          v13 = [v8 local];
          v14 = *([v13 address] + 1);
          v15 = [v3 local];
          if (v14 == *([v15 address] + 1))
          {
            goto LABEL_17;
          }

          v23 = [v8 local];
          v16 = [v23 radioAccessTechnology];
          v22 = [v3 local];
          if (v16 != [v22 radioAccessTechnology])
          {

LABEL_17:
            v4 = v24;
LABEL_18:

            continue;
          }

          v19 = [v8 local];
          v21 = [v19 transport];
          v17 = [v3 local];
          v20 = [v17 transport];

          v4 = v24;
          if (v21 == v20)
          {
            v5 = v8;
            goto LABEL_21;
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

LABEL_21:

  return v5;
}

uint64_t GLUtilSelectStunTransport(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, void *a7, unint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a7;
  if ((a2 - 3) > 1)
  {
    v53 = 0;
    v52 = -86;
    v28 = +[IDSServerBag sharedInstance];
    v29 = [v28 objectForKey:@"ids-fallback-to-tcp-first"];

    v30 = [v29 BOOLValue];
    v31 = 3;
    if (!v30)
    {
      v31 = 4;
    }

    v51 = v31;
    if (a3)
    {
      HasRelayCandidatePairConnected = GLUtilHasRelayCandidatePairConnected(v15, v16);
      a2 = 2;
      if (a8 <= 3 && (HasRelayCandidatePairConnected & 1) == 0)
      {
        GLUtilGetLinkInformation(v15, 2, &v53, 0, v16);
        a2 = 2;
        if (v53)
        {
          if ((a6 & 1) == 0)
          {
            GLUtilGetLinkInformation(v15, v51, &v53, 0, v16);
            v33 = 3;
            if (v30)
            {
              v33 = 4;
            }

            if (v53)
            {
              a2 = v33;
            }

            else
            {
              a2 = v51;
            }
          }
        }
      }
    }

    else
    {
      v34 = GLUtilHasRelayCandidatePairConnected(0, v16);
      if (a4 && !a5)
      {
        goto LABEL_45;
      }

      GLUtilGetLinkInformation(0, 2, &v53, &v52, v16);
      v35 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = @"NO";
        if (v52)
        {
          v37 = @"YES";
        }

        else
        {
          v37 = @"NO";
        }

        *buf = 67109890;
        if (v34)
        {
          v38 = @"YES";
        }

        else
        {
          v38 = @"NO";
        }

        *v55 = v53;
        *&v55[4] = 2112;
        if (a6)
        {
          v36 = @"YES";
        }

        *&v55[6] = v37;
        v56 = 2112;
        v57 = v38;
        v58 = 2112;
        v59 = v36;
        _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@", v39, v40, v41, v42, v43, v53);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"linkAttempted: %d, linkConnected: %@, isQRConnected: %@, retryAllocbind: %@", v44, v45, v46, v47, v53);
          }
        }
      }

      if (v53)
      {
        v48 = v34 | v52;
        a2 = 2;
        if ((v48 & 1) == 0 && (a6 & 1) == 0)
        {
          GLUtilGetLinkInformation(0, v51, &v53, &v52, v16);
          a2 = v51;
          if (v53)
          {
            v49 = 3;
            if (v30)
            {
              v49 = 4;
            }

            if (v52)
            {
              a2 = v51;
            }

            else
            {
              a2 = v49;
            }
          }
        }
      }

      else
      {
LABEL_45:
        a2 = 2;
      }
    }
  }

  else
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (&_IDSStunTransportStrings)[a2];
      *buf = 136315138;
      *v55 = v18;
      _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "found override tranpsort [%s].", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"found override tranpsort [%s].", v19, v20, v21, v22, v23, (&_IDSStunTransportStrings)[a2]);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"found override tranpsort [%s].", v24, v25, v26, v27, (&_IDSStunTransportStrings)[a2]);
        }
      }
    }
  }

  return a2;
}

__CFArray *GLUtilGetExcludedInterfaceAddressList(int a1, uint64_t a2, void *a3)
{
  v125 = *MEMORY[0x1E69E9840];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = a3;
  v106 = [obj countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (!v106)
  {
    v4 = 0;
    goto LABEL_75;
  }

  v4 = 0;
  v105 = *v112;
  do
  {
    for (i = 0; i != v106; ++i)
    {
      if (*v112 != v105)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v111 + 1) + 8 * i);
      v7 = [v6 index];
      v8 = [v6 delegatedIndex];
      v9 = [v6 address];
      v10 = [v9 sa];

      if (!v10 || IsLinkLocalSA(v10))
      {
        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v6 name];
          v13 = v12;
          v14 = [v12 UTF8String];
          *buf = 136315394;
          v117 = v14;
          v118 = 1024;
          v119 = v7;
          _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d].", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v15 = [v6 name];
            v16 = v15;
            v17 = [v15 UTF8String];
            _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d].", v18, v19, v20, v21, v22, v17);

            if (_IDSShouldLog(0))
            {
              v23 = [v6 name];
              v24 = v23;
              v25 = [v23 UTF8String];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d].", v26, v27, v28, v29, v25);
            }
          }
        }

        if (v4)
        {
          if (!v6)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
            goto LABEL_20;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }
      }

LABEL_20:
      if (![v6 isCompanionLink])
      {
        goto LABEL_33;
      }

      v30 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v6 name];
        v32 = v31;
        v33 = [v31 UTF8String];
        *buf = 136315394;
        v117 = v33;
        v118 = 1024;
        v119 = v7;
        _os_log_impl(&dword_1A7AD9000, v30, OS_LOG_TYPE_DEFAULT, "skip companion link if:[%s:%d].", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v34 = [v6 name];
          v35 = v34;
          v36 = [v34 UTF8String];
          _IDSLogTransport(@"GL", @"IDS", @"skip companion link if:[%s:%d].", v37, v38, v39, v40, v41, v36);

          if (_IDSShouldLog(0))
          {
            v42 = [v6 name];
            v43 = v42;
            v44 = [v42 UTF8String];
            _IDSLogV(0, @"IDSFoundation", @"GL", @"skip companion link if:[%s:%d].", v45, v46, v47, v48, v44);
          }
        }
      }

      if (v4)
      {
        if (!v6)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (!v6)
        {
          goto LABEL_33;
        }
      }

      if (v4)
      {
        CFArrayAppendValue(v4, v6);
      }

LABEL_33:
      if (v8 >= 1)
      {
        if (a1 != -1 && v7 == a1)
        {
          continue;
        }

        if (v4)
        {
          if (!v6)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
LABEL_62:
            v73 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [v6 name];
              v75 = v74;
              v76 = [v74 UTF8String];
              *buf = 136316162;
              v117 = v76;
              v118 = 1024;
              v119 = v7;
              v120 = 1024;
              *v121 = v8;
              *&v121[4] = 2080;
              *&v121[6] = a2;
              v122 = 1024;
              v123 = a1;
              _os_log_impl(&dword_1A7AD9000, v73, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].", buf, 0x28u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v77 = [v6 name];
                v78 = v77;
                v79 = [v77 UTF8String];
                _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].", v80, v81, v82, v83, v84, v79);

                if (_IDSShouldLog(0))
                {
                  v85 = [v6 name];
                  v86 = v85;
                  v87 = [v85 UTF8String];
                  _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d] with delegate-if-idx:%d, default-if:[%s:%d].", v88, v89, v90, v91, v87);
                }
              }
            }

            continue;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }

        goto LABEL_62;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v49 = obj;
      v50 = [v49 countByEnumeratingWithState:&v107 objects:v115 count:16];
      if (v50)
      {
        v51 = *v108;
LABEL_41:
        v52 = 0;
        while (1)
        {
          if (*v108 != v51)
          {
            objc_enumerationMutation(v49);
          }

          if ((a1 & 0x80000000) == 0)
          {
            v53 = *(*(&v107 + 1) + 8 * v52);
            if ([v53 index] == a1 && objc_msgSend(v53, "delegatedIndex") == v7)
            {
              break;
            }
          }

          if (v50 == ++v52)
          {
            v50 = [v49 countByEnumeratingWithState:&v107 objects:v115 count:16];
            if (v50)
            {
              goto LABEL_41;
            }

            goto LABEL_49;
          }
        }

        v54 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [v6 name];
          v56 = v55;
          v57 = [v55 UTF8String];
          *buf = 136315906;
          v117 = v57;
          v118 = 1024;
          v119 = v7;
          v120 = 2080;
          *v121 = a2;
          *&v121[8] = 1024;
          *&v121[10] = a1;
          _os_log_impl(&dword_1A7AD9000, v54, OS_LOG_TYPE_DEFAULT, "skip if:[%s:%d], default-if:[%s:%d].", buf, 0x22u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v58 = [v6 name];
            v59 = v58;
            v60 = [v58 UTF8String];
            _IDSLogTransport(@"GL", @"IDS", @"skip if:[%s:%d], default-if:[%s:%d].", v61, v62, v63, v64, v65, v60);

            if (_IDSShouldLog(0))
            {
              v66 = [v6 name];
              v67 = v66;
              v68 = [v66 UTF8String];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"skip if:[%s:%d], default-if:[%s:%d].", v69, v70, v71, v72, v68);
            }
          }
        }

        if (v4)
        {
          if (!v6)
          {
            continue;
          }
        }

        else
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v6)
          {
            continue;
          }
        }

        if (v4)
        {
          CFArrayAppendValue(v4, v6);
        }
      }

      else
      {
LABEL_49:
      }
    }

    v106 = [obj countByEnumeratingWithState:&v111 objects:v124 count:16];
  }

  while (v106);
LABEL_75:

  v92 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v117 = v4;
    _os_log_impl(&dword_1A7AD9000, v92, OS_LOG_TYPE_DEFAULT, "excluded interfaces:%@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"excluded interfaces:%@.", v93, v94, v95, v96, v97, v4);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"excluded interfaces:%@.", v98, v99, v100, v101, v4);
      }
    }
  }

  return v4;
}

id GLUtilSelectInterface(uint64_t a1, int a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, int a8)
{
  v175[2] = *MEMORY[0x1E69E9840];
  v143 = a3;
  v137 = a4;
  v138 = a5;
  HasRelayCandidatePairConnected = GLUtilHasRelayCandidatePairConnected(v138, v137);
  v14 = HasRelayCandidatePairConnected;
  v151 = -1;
  v152 = -1;
  if ((a1 - 3) < 2)
  {
    v15 = HasRelayCandidatePairConnected;
  }

  else
  {
    v15 = 0;
  }

  v140 = v15;
  v150 = 0;
  v175[0] = 0;
  v175[1] = 0;
  v174[0] = 0;
  v174[1] = 0;
  if (GLUtilGetDefaultInterface(&v152, v175, &v150))
  {
    v142 = (v14 | a2) ^ 1;
  }

  else
  {
    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v16, OS_LOG_TYPE_DEFAULT, "failed to get default interface, use non-default interface.", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"failed to get default interface, use non-default interface.", v17, v18, v19, v20, v21, v130);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to get default interface, use non-default interface.", v22, v23, v24, v25, v131);
        }
      }
    }

    v142 = 0;
  }

  v139 = GLUtilGetExcludedInterfaceAddressList(v152, v175, v143);
  v26 = [v143 mutableCopy];
  [(__CFString *)v26 removeObjectsInArray:v139];
  v27 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v155 = v26;
    _os_log_impl(&dword_1A7AD9000, v27, OS_LOG_TYPE_DEFAULT, "remaining interfaces:%@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"remaining interfaces:%@.", v28, v29, v30, v31, v32, v26);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"remaining interfaces:%@.", v33, v34, v35, v36, v26);
      }
    }
  }

  v37 = [IDSServerBag sharedInstanceForBagType:0];
  v38 = [v37 objectForKey:@"reduce-cellular-usage"];
  v39 = [v38 BOOLValue];

  GLUtilGetFirstUnusedInterface(v138, v137, v26, &v151, v174, v39);
  v136 = a2 & ~v14;
  v40 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = @"NO";
    if (v14)
    {
      v42 = @"YES";
    }

    else
    {
      v42 = @"NO";
    }

    if (v140)
    {
      v43 = @"YES";
    }

    else
    {
      v43 = @"NO";
    }

    if (v136)
    {
      v44 = @"YES";
    }

    else
    {
      v44 = @"NO";
    }

    v155 = (&_IDSStunTransportStrings)[a1];
    if (v142)
    {
      v45 = @"YES";
    }

    else
    {
      v45 = @"NO";
    }

    *buf = 136317442;
    v156 = 2112;
    if (v150)
    {
      v41 = @"YES";
    }

    v157 = v42;
    v158 = 2112;
    v159 = v43;
    v160 = 2112;
    v161 = v44;
    v162 = 2112;
    v163 = v45;
    v164 = 2080;
    v165 = v175;
    v166 = 1024;
    v167 = v152;
    v168 = 2112;
    v169 = v41;
    v170 = 2080;
    v171 = v174;
    v172 = 1024;
    v173 = v151;
    _os_log_impl(&dword_1A7AD9000, v40, OS_LOG_TYPE_DEFAULT, "interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).", buf, 0x5Eu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).", v46, v47, v48, v49, v50, (&_IDSStunTransportStrings)[a1]);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"interface preference for %s: (connected:%@, non-cell:%@, cell:%@, use-default:%@, default-if:[%s:%d, Cell:%@], first-unused-if:[%s:%d]).", v51, v52, v53, v54, (&_IDSStunTransportStrings)[a1]);
      }
    }
  }

  v55 = IMGetDomainBoolForKey();
  v56 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v155) = v55;
    _os_log_impl(&dword_1A7AD9000, v56, OS_LOG_TYPE_DEFAULT, "forceToUseIPv6 = %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"forceToUseIPv6 = %d", v57, v58, v59, v60, v61, v55);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"forceToUseIPv6 = %d", v62, v63, v64, v65, v55);
      }
    }
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v26;
  v66 = [(__CFString *)obj countByEnumeratingWithState:&v146 objects:v153 count:16];
  if (!v66)
  {
    v141 = 0;
    goto LABEL_115;
  }

  v141 = 0;
  v67 = *v147;
  while (2)
  {
    for (i = 0; i != v66; ++i)
    {
      if (*v147 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v69 = *(*(&v146 + 1) + 8 * i);
      v70 = [v69 isCellular];
      v71 = [v69 index];
      v72 = [v69 address];
      v73 = [v72 sa];

      v74 = *(v73 + 1);
      if (v55)
      {
        if (v74 == 2)
        {
          continue;
        }
      }

      else if (v74 == 30 && (GLUtilHasV4AddressForInterface(v71, v143) & 1) != 0)
      {
        continue;
      }

      if (a8 == 1)
      {
        if (!v70)
        {
          continue;
        }

        v78 = v69;

        v91 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
        {
          v93 = [v78 name];
          *buf = 138412546;
          v155 = @"IDSGLInterfaceTypeMask_Cellular";
          v156 = 2112;
          v157 = v93;
          _os_log_impl(&dword_1A7AD9000, v91, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v133 = [v78 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", v94, v95, v96, v97, v98, @"IDSGLInterfaceTypeMask_Cellular");

            if (_IDSShouldLog(0))
            {
              v141 = [v78 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", v99, v100, v101, v102, @"IDSGLInterfaceTypeMask_Cellular");
              goto LABEL_101;
            }
          }
        }

LABEL_114:
        v141 = v78;
        goto LABEL_115;
      }

      if (a8 == 2)
      {
        if (v70)
        {
          continue;
        }

        v78 = v69;

        v79 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v81 = [v78 name];
          *buf = 138412546;
          v155 = @"IDSGLInterfaceTypeMask_NonCellular";
          v156 = 2112;
          v157 = v81;
          _os_log_impl(&dword_1A7AD9000, v79, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v132 = [v78 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", v82, v83, v84, v85, v86, @"IDSGLInterfaceTypeMask_NonCellular");

            if (_IDSShouldLog(0))
            {
              v141 = [v78 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredLocalInterface %@, selected interface: %@", v87, v88, v89, v90, @"IDSGLInterfaceTypeMask_NonCellular");
LABEL_101:

              v141 = v69;
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }

      if (a6 == 1)
      {
        if (!v70)
        {
          continue;
        }

        v78 = v69;

        v104 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          v106 = [v78 name];
          *buf = 138412546;
          v155 = @"IDSGLInterfaceTypeMask_Cellular";
          v156 = 2112;
          v157 = v106;
          _os_log_impl(&dword_1A7AD9000, v104, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v134 = [v78 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", v107, v108, v109, v110, v111, @"IDSGLInterfaceTypeMask_Cellular");

            if (_IDSShouldLog(0))
            {
              v141 = [v78 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", v112, v113, v114, v115, @"IDSGLInterfaceTypeMask_Cellular");
              goto LABEL_101;
            }
          }
        }

        goto LABEL_114;
      }

      if (a6 == 2)
      {
        if (v70)
        {
          continue;
        }

        v78 = v69;

        v116 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          v118 = [v78 name];
          *buf = 138412546;
          v155 = @"IDSGLInterfaceTypeMask_NonCellular";
          v156 = 2112;
          v157 = v118;
          _os_log_impl(&dword_1A7AD9000, v116, OS_LOG_TYPE_DEFAULT, "GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v135 = [v78 name];
            _IDSLogTransport(@"GL", @"IDS", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", v119, v120, v121, v122, v123, @"IDSGLInterfaceTypeMask_NonCellular");

            if (_IDSShouldLog(0))
            {
              v141 = [v78 name];
              _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilSelectInterface: havePreferredInterfaceFromInitiator %@, selected interface: %@", v124, v125, v126, v127, @"IDSGLInterfaceTypeMask_NonCellular");
              goto LABEL_101;
            }
          }
        }

        goto LABEL_114;
      }

      v75 = v142;
      if (v152 < 0)
      {
        v75 = 0;
      }

      if (v75 == 1 && v71 == v152)
      {
LABEL_100:
        v103 = v69;
        goto LABEL_101;
      }

      if (v140)
      {
        if ((v70 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      else if (v136)
      {
        if (v70)
        {
          goto LABEL_100;
        }
      }

      else if (v151 == -1)
      {
        v77 = v69;

        v141 = v77;
      }

      else
      {
        if (v71 == v151)
        {
          v76 = v142;
        }

        else
        {
          v76 = 1;
        }

        if ((v76 & 1) == 0)
        {
          goto LABEL_100;
        }
      }
    }

    v66 = [(__CFString *)obj countByEnumeratingWithState:&v146 objects:v153 count:16];
    if (v66)
    {
      continue;
    }

    break;
  }

LABEL_115:

  v128 = v141;

  return v128;
}

void sub_1A7CA6370(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A7CA6240);
  }

  _Unwind_Resume(a1);
}

__CFString *GLUtilPreferredInterfaceToString(int a1)
{
  v1 = @"IDSGLInterfaceTypeMask_Invalid";
  if (a1 == 1)
  {
    v1 = @"IDSGLInterfaceTypeMask_Cellular";
  }

  if (a1 == 2)
  {
    return @"IDSGLInterfaceTypeMask_NonCellular";
  }

  else
  {
    return v1;
  }
}

void *GLUtilHasValidUInt16Attr(void *a1, uint64_t a2, _WORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  result = [a1 getAttribute:a2 attribute:v7];
  if (a3)
  {
    if (result)
    {
      *a3 = v8;
    }
  }

  return result;
}

void *GLUtilHasValidUInt32Attr(void *a1, uint64_t a2, _DWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  result = [a1 getAttribute:a2 attribute:v7];
  if (a3)
  {
    if (result)
    {
      *a3 = v8;
    }
  }

  return result;
}

double GLUtilHasValidUUIDAttr(void *a1, uint64_t a2, _OWORD *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x410uLL);
  if ([a1 getAttribute:a2 attribute:v7])
  {
    result = v8[0];
    *a3 = *v8;
  }

  return result;
}

uint64_t GLUtilHasValidBinaryDataAttr(void *a1, uint64_t a2, void *a3, int *a4)
{
  *&v14[1028] = *MEMORY[0x1E69E9840];
  bzero(v12, 0x410uLL);
  v8 = [a1 getAttribute:a2 attribute:v12];
  v9 = v13;
  if (v13 < 1025)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    memcpy(a3, v14, v13);
    *a4 = v9;
  }

  return v10;
}

__CFString *GLUtilLinkTypeMaskToString(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return off_1E77E2A38[(a1 - 1)];
  }
}

id GLUtilInterfaceTypeListToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 appendString:@"[W"];
  }

  if (a1)
  {
    if ([v3 length])
    {
      v4 = @", C";
    }

    else
    {
      v4 = @"[C";
    }

    [v3 appendString:v4];
  }

  if ([v3 length])
  {
    v5 = @"]";
  }

  else
  {
    v5 = @"[]";
  }

  [v3 appendString:v5];

  return v3;
}

id GLUtilLinkTypeListToString(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"[W-W"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if ([v3 length])
  {
    v7 = @", W-C";
  }

  else
  {
    v7 = @"[W-C";
  }

  [v3 appendString:v7];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_20:
  if ([v3 length])
  {
    v8 = @", C-W";
  }

  else
  {
    v8 = @"[C-W";
  }

  [v3 appendString:v8];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    if ([v3 length])
    {
      v4 = @", C-C";
    }

    else
    {
      v4 = @"[C-C";
    }

    [v3 appendString:v4];
  }

LABEL_9:
  if ([v3 length])
  {
    v5 = @"]";
  }

  else
  {
    v5 = @"[]";
  }

  [v3 appendString:v5];

  return v3;
}

uint64_t GLUtilNewQRLinkType(int a1, int a2, int a3, void *a4)
{
  v7 = a4;
  if (!a2)
  {
    goto LABEL_41;
  }

  if (!a3)
  {
    if (a2 != 3)
    {
      goto LABEL_41;
    }

    v8 = 0;
    if (a1 <= 3)
    {
      if (a1 != 1)
      {
        if (a1 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (a1 == 4)
    {
      v8 = !GLUtilRelayLinkHasReachedMaxRetryLimit(1, v7);
      goto LABEL_42;
    }

    if (a1 != 8)
    {
      goto LABEL_42;
    }

LABEL_31:
    LODWORD(v8) = 2;
    v9 = 2;
    goto LABEL_38;
  }

  if (a1)
  {
    if ((a1 & 8) == 0)
    {
      if ((a2 & 1) == 0)
      {
        v8 = 0;
        if ((a1 & 2) != 0 || (a3 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_31;
      }

      if ((a3 & 1) == 0)
      {
LABEL_36:
        if ((a1 & 4) != 0)
        {
          goto LABEL_41;
        }

LABEL_37:
        LODWORD(v8) = 4;
        v9 = 4;
LABEL_38:
        if (GLUtilRelayLinkHasReachedMaxRetryLimit(v9, v7))
        {
          v8 = 0;
        }

        else
        {
          v8 = v8;
        }

        goto LABEL_42;
      }

      v8 = 8;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(8, v7))
      {
        goto LABEL_42;
      }
    }

    if ((a1 & 2) == 0)
    {
      v8 = 2;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7))
      {
        goto LABEL_42;
      }
    }

    goto LABEL_36;
  }

  if ((a2 & 2) == 0)
  {
    if (a2)
    {
      if ((a3 & 2) != 0 && (a1 & 4) == 0)
      {
        v8 = 4;
        if (!GLUtilRelayLinkHasReachedMaxRetryLimit(4, v7))
        {
          goto LABEL_42;
        }
      }

      v8 = 0;
      if ((a1 & 8) != 0 || (a3 & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    }

LABEL_41:
    v8 = 0;
    goto LABEL_42;
  }

  if ((a3 & 2) == 0)
  {
    if ((a1 & 2) == 0)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_41;
      }

      v8 = 2;
      if (!GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7))
      {
        goto LABEL_42;
      }
    }

    v8 = 0;
    if ((a1 & 8) != 0 || (a2 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    LODWORD(v8) = 8;
    v9 = 8;
    goto LABEL_38;
  }

  v8 = 1;
  if (GLUtilRelayLinkHasReachedMaxRetryLimit(1, v7))
  {
    v11 = a3 & 1;
    if ((a1 & 8) != 0 || (v11 & a2) == 0 || (v8 = 8, GLUtilRelayLinkHasReachedMaxRetryLimit(8, v7)))
    {
      if ((a1 & 2) != 0 || !v11 || (v8 = 2, GLUtilRelayLinkHasReachedMaxRetryLimit(2, v7)))
      {
        v8 = 0;
        if (a1 & 4) == 0 && (a2)
        {
          goto LABEL_37;
        }
      }
    }
  }

LABEL_42:

  return v8;
}

BOOL GLUtilRelayLinkHasReachedMaxRetryLimit(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v5 = [v3 objectForKey:v4];
  v6 = [v5 intValue];

  if (v6 >= 8)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((a1 - 1) > 7u)
      {
        v8 = 0;
      }

      else
      {
        v8 = off_1E77E2A38[(a1 - 1)];
      }

      *buf = 136315650;
      v20 = "GLUtilRelayLinkHasReachedMaxRetryLimit";
      v21 = 2112;
      v22 = v8;
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "%s: retry count for linkType: %@ has exceeded, with %d retries!", buf, 0x1Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s: retry count for linkType: %@ has exceeded, with %d retries!", v9, v10, v11, v12, v13, "GLUtilRelayLinkHasReachedMaxRetryLimit");
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s: retry count for linkType: %@ has exceeded, with %d retries!", v14, v15, v16, v17, "GLUtilRelayLinkHasReachedMaxRetryLimit");
        }
      }
    }
  }

  return v6 > 7;
}

uint64_t GLUtilLinkTypeMaskForCandidatePair(void *a1)
{
  v1 = a1;
  v2 = [v1 local];
  v3 = [v2 isCellularStunCandidate];

  v4 = [v1 remote];

  v5 = [v4 isCellularStunCandidate];
  v6 = v5 ^ 1;
  if (((v3 ^ 1) & 1) == 0 && !v6)
  {
    return 8;
  }

  v8 = v3 | v6;
  if ((v3 ^ 1 | v5))
  {
    v9 = 1;
  }

  else
  {
    v9 = 4;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 2;
  }
}

void GLUtilReportAWDStunMessageEvent(void *a1, uint64_t a2, void *a3, float a4)
{
  v7 = a3;
  GLUtilReportAWDStunMessageEventWithType([a1 type], a2, v7, a4);
}

void GLUtilReportAWDStunMessageEventWithType(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v60 = sub_1A7CA744C(a1, [v6 isSharedQRSession]);
  if (v60)
  {
    v7 = [v6 local];
    v62 = [v7 radioAccessTechnology];

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v64 = a1;
      v65 = 1024;
      v66 = v60;
      v67 = 1024;
      v68 = a2;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).", buf, 0x14u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).", v9, v10, v11, v12, v13, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD stun message event (messageType:%04x, eventSubType:%u, resultCode:%d).", v14, v15, v16, v17, a1);
        }
      }
    }

    v50 = [IDSQuickRelayMetric alloc];
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v60];
    if (a4 <= 0.0)
    {
      v49 = 0;
    }

    else
    {
      *&v18 = a4;
      v49 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    }

    v54 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v52 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayProviderType")}];
    v29 = MEMORY[0x1E696AD98];
    v30 = [v6 local];
    v31 = [v29 numberWithInteger:{objc_msgSend(v30, "transport")}];
    v32 = v62;
    if (v62 > 0xA)
    {
      v33 = 0;
    }

    else
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v32 = v62;
    }

    v34 = v32 < 0xB;
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "enableSKE")}];
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isInitiator")}];
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v6, "protocolVersion")}];
    v38 = [v6 appName];
    v51 = [(IDSQuickRelayMetric *)v50 initWithType:&unk_1F1B203D8 eventSubType:v56 duration:v49 resultCode:v54 providerType:v52 transportType:v31 interfaceType:v33 skeEnabled:v35 isInitiator:v36 protocolVersion:v37 retryCount:0 serviceName:v38 subServiceName:0 participantCount:0];

    if (v34)
    {
    }

    if (a4 > 0.0)
    {
    }

    v39 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v39 logMetric:v51];

    v57 = +[IDSAWDLogging sharedInstance];
    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v60];
    if (a4 <= 0.0)
    {
      v53 = 0;
    }

    else
    {
      *&v40 = a4;
      v53 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
    }

    v59 = [MEMORY[0x1E696AD98] numberWithInt:a2];
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "relayProviderType")}];
    v41 = MEMORY[0x1E696AD98];
    v42 = [v6 local];
    v43 = [v41 numberWithInteger:{objc_msgSend(v42, "transport")}];
    if (v62 >= 0xB)
    {
      v44 = 0;
    }

    else
    {
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v62];
    }

    v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "enableSKE")}];
    v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isInitiator")}];
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v6, "protocolVersion")}];
    v48 = [v6 appName];
    [v57 IDSQuickRelayEventType:&unk_1F1B203D8 eventSubType:v61 duration:v53 resultCode:v59 providerType:v55 transportType:v43 interfaceType:v44 skeEnabled:v45 isInitiator:v46 protocolVersion:v47 retryCount:0 serviceName:v48 subServiceName:0 participantCount:0];

    if (v62 < 0xB)
    {
    }

    if (a4 > 0.0)
    {
    }
  }

  else
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v64 = a1;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "receive unknown stun message type (%04x) for AWD, ignore", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive unknown stun message type (%04x) for AWD, ignore", v20, v21, v22, v23, v24, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown stun message type (%04x) for AWD, ignore", v25, v26, v27, v28, a1);
        }
      }
    }
  }
}

uint64_t sub_1A7CA744C(uint64_t a1, int a2)
{
  if (a1 <= 3827)
  {
    if (a1 > 3811)
    {
      if (a2)
      {
        v13 = 217;
      }

      else
      {
        v13 = 204;
      }

      if (a1 != 3825)
      {
        v13 = 0;
      }

      if (a1 == 3816)
      {
        v14 = 248;
      }

      else
      {
        v14 = v13;
      }

      if (a1 == 3815)
      {
        v7 = 246;
      }

      else
      {
        v7 = v14;
      }

      if (a1 == 3813)
      {
        v15 = 233;
      }

      else
      {
        v15 = 0;
      }

      if (a1 == 3812)
      {
        v11 = 229;
      }

      else
      {
        v11 = v15;
      }

      v12 = a1 <= 3814;
    }

    else
    {
      if (a2)
      {
        v7 = 218;
      }

      else
      {
        v7 = 205;
      }

      if (a2)
      {
        v8 = 221;
      }

      else
      {
        v8 = 208;
      }

      if (a1 == 3811)
      {
        v9 = 226;
      }

      else
      {
        v9 = 0;
      }

      if (a1 != 3810)
      {
        v8 = v9;
      }

      if (a1 != 3809)
      {
        v7 = v8;
      }

      if (a2)
      {
        v10 = 213;
      }

      else
      {
        v10 = 201;
      }

      if (a1 != 3808)
      {
        v10 = 0;
      }

      if (a1 == 2321)
      {
        v11 = 704;
      }

      else
      {
        v11 = v10;
      }

      v12 = a1 <= 3808;
    }

    if (v12)
    {
      return v11;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = a1 - 4064;
    result = 0;
    switch(v2)
    {
      case 0:
        v4 = a2 == 0;
        v5 = 202;
        v6 = 214;
        goto LABEL_61;
      case 1:
        v4 = a2 == 0;
        v5 = 206;
        v6 = 219;
        goto LABEL_61;
      case 2:
        v4 = a2 == 0;
        v5 = 209;
        goto LABEL_57;
      case 3:
        return 227;
      case 4:
        return 230;
      case 5:
        return 234;
      case 6:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        return result;
      case 7:
        return 247;
      case 8:
        return 249;
      case 16:
        v4 = a2 == 0;
        v5 = 203;
        v6 = 216;
        goto LABEL_61;
      case 17:
        v4 = a2 == 0;
        v5 = 207;
        v6 = 220;
        goto LABEL_61;
      case 18:
        v4 = a2 == 0;
        v5 = 210;
LABEL_57:
        v6 = 222;
LABEL_61:
        if (v4)
        {
          result = v5;
        }

        else
        {
          result = v6;
        }

        break;
      case 19:
        result = 228;
        break;
      case 20:
        result = 231;
        break;
      default:
        result = 0;
        break;
    }
  }

  return result;
}

void GLUtilReportAWDActiveLinkRTT(void *a1, unsigned int a2, unsigned int a3, float a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 local];
  v46 = [v6 radioAccessTechnology];

  v7 = [v5 local];
  v45 = [v7 transport];

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (&_IDSStunTransportStrings)[v45];
    *buf = 67109634;
    v48 = a4;
    v49 = 2080;
    v50 = v9;
    v51 = 2080;
    v52 = IDSRadioAccessTechnologyToString(v46);
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD active link rtt: %d ms for %s on RAT [%s].", buf, 0x1Cu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      IDSRadioAccessTechnologyToString(v46);
      _IDSLogTransport(@"GL", @"IDS", @"report AWD active link rtt: %d ms for %s on RAT [%s].", v10, v11, v12, v13, v14, a4);
      if (_IDSShouldLog(0))
      {
        IDSRadioAccessTechnologyToString(v46);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD active link rtt: %d ms for %s on RAT [%s].", v15, v16, v17, v18, a4);
      }
    }
  }

  v41 = [IDSQuickRelayMetric alloc];
  if (a4 <= 0.0)
  {
    v39 = 0;
  }

  else
  {
    *&v19 = a4;
    v39 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayProviderType")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
  v22 = v46;
  if (v46 > 0xA)
  {
    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v22 = v46;
  }

  v24 = v22 < 0xB;
  v25 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  v28 = [v5 appName];
  v42 = [(IDSQuickRelayMetric *)v41 initWithType:&unk_1F1B203D8 eventSubType:&unk_1F1B203F0 duration:v39 resultCode:0 providerType:v20 transportType:v21 interfaceType:v23 skeEnabled:v25 isInitiator:v26 protocolVersion:v27 retryCount:0 serviceName:v28 subServiceName:0 participantCount:0];

  if (v24)
  {
  }

  if (a4 > 0.0)
  {
  }

  v29 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v29 logMetric:v42];

  v30 = +[IDSAWDLogging sharedInstance];
  if (a4 <= 0.0)
  {
    v40 = 0;
  }

  else
  {
    *&v31 = a4;
    v40 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  }

  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "relayProviderType")}];
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:v45];
  if (v46 >= 0xB)
  {
    v34 = 0;
  }

  else
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v46];
  }

  v35 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v36 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  v38 = [v5 appName];
  [v30 IDSQuickRelayEventType:&unk_1F1B203D8 eventSubType:&unk_1F1B203F0 duration:v40 resultCode:0 providerType:v32 transportType:v33 interfaceType:v34 skeEnabled:v35 isInitiator:v36 protocolVersion:v37 retryCount:0 serviceName:v38 subServiceName:0 participantCount:0];

  if (v46 < 0xB)
  {
  }

  if (a4 > 0.0)
  {
  }
}

void GLUtilReportAWDClientTimerEvent(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, unsigned int a5, float a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v55 = a3;
  v7 = [v55 local];
  v54 = [v7 radioAccessTechnology];

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v57 = a1;
    v58 = 1024;
    v59 = a6;
    v60 = 1024;
    v61 = a2;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).", buf, 0x14u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).", v9, v10, v11, v12, v13, a1);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"report AWD client timer event (eventSubType: %u, duration: %d ms, resultCode: %d).", v14, v15, v16, v17, a1);
      }
    }
  }

  v42 = [IDSQuickRelayMetric alloc];
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (a6 <= 0.0)
  {
    v41 = 0;
  }

  else
  {
    *&v18 = a6;
    v41 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  }

  v46 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v55, "relayProviderType")}];
  v20 = MEMORY[0x1E696AD98];
  v21 = [v55 local];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "transport")}];
  v23 = v54;
  if (v54 > 0xA)
  {
    v24 = 0;
  }

  else
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v23 = v54;
  }

  v25 = v23 < 0xB;
  v26 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v55, "protocolVersion")}];
  v29 = [v55 appName];
  v43 = [(IDSQuickRelayMetric *)v42 initWithType:&unk_1F1B20408 eventSubType:v48 duration:v41 resultCode:v46 providerType:v19 transportType:v22 interfaceType:v24 skeEnabled:v26 isInitiator:v27 protocolVersion:v28 retryCount:0 serviceName:v29 subServiceName:0 participantCount:0];

  if (v25)
  {
  }

  if (a6 > 0.0)
  {
  }

  v30 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v30 logMetric:v43];

  v49 = +[IDSAWDLogging sharedInstance];
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (a6 <= 0.0)
  {
    v47 = 0;
  }

  else
  {
    *&v31 = a6;
    v47 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
  }

  v51 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v55, "relayProviderType")}];
  v33 = MEMORY[0x1E696AD98];
  v34 = [v55 local];
  v35 = [v33 numberWithInteger:{objc_msgSend(v34, "transport")}];
  if (v54 >= 0xB)
  {
    v36 = 0;
  }

  else
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v54];
  }

  v37 = [MEMORY[0x1E696AD98] numberWithBool:a4];
  v38 = [MEMORY[0x1E696AD98] numberWithBool:a5];
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v55, "protocolVersion")}];
  v40 = [v55 appName];
  [v49 IDSQuickRelayEventType:&unk_1F1B20408 eventSubType:v53 duration:v47 resultCode:v51 providerType:v32 transportType:v35 interfaceType:v36 skeEnabled:v37 isInitiator:v38 protocolVersion:v39 retryCount:0 serviceName:v40 subServiceName:0 participantCount:0];

  if (v54 < 0xB)
  {
  }

  if (a6 > 0.0)
  {
  }
}

id GLUCreateQRStunMessageEvent(void *a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v9 = a4;
  v10 = a3;
  v11 = GLUCreateQRStunMessageEventWithType([a1 type], a2, v10, v9, a5);

  return v11;
}

id GLUCreateQRStunMessageEventWithType(uint64_t a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v6 = a2;
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 isSharedQRSession];
  v12 = sub_1A7CA744C(a1, v11);
  if ((v6 & 0xFFFFFFFE) == 0x22)
  {
    v13 = 801;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v15 = GLUCreateQRStunMessageEventWithEventSubType(v13, v6, v9, v10, a5);
    v16 = [v15 mutableCopy];

    if (a1 == 4064)
    {
      v17 = v11;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0 && ([v9 pendingNoSessionStateAllocbind] & 1) == 0)
    {
      [v16 setObject:0 forKeyedSubscript:@"RINF"];
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v30 = a1;
      _os_log_impl(&dword_1A7AD9000, v18, OS_LOG_TYPE_DEFAULT, "receive unknown stun message type (%04x) for QREvent, ignore", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"receive unknown stun message type (%04x) for QREvent, ignore", v19, v20, v21, v22, v23, a1);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"receive unknown stun message type (%04x) for QREvent, ignore", v24, v25, v26, v27, a1);
        }
      }
    }

    v16 = 0;
  }

  return v16;
}

CFMutableDictionaryRef GLUCreateQRStunMessageEventWithEventSubType(uint64_t a1, unsigned int a2, void *a3, void *a4, float a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = [v8 local];
  v12 = [v11 allocbindDataBlob];

  v13 = [v8 local];
  v14 = [v13 serverSoftwareVersion];

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = v12;
    v48 = 2112;
    v49 = v14;
    _os_log_impl(&dword_1A7AD9000, v15, OS_LOG_TYPE_DEFAULT, "GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@", v16, v17, v18, v19, v20, v12);
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUCreateQRStunMessageEvent: reportingDataBlob: %@, serverSoftwareVersion: %@", v21, v22, v23, v24, v12);
      }
    }
  }

  if (v9)
  {
    v25 = [MEMORY[0x1E695DF00] date];
    [v25 timeIntervalSinceDate:v9];
    if ((a1 & 0xFFFFFFF7) == 0xD6)
    {
      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v26 * 1000.0];
      [(__CFDictionary *)Mutable setObject:v27 forKeyedSubscript:@"DELTAT"];
    }
  }

  v28 = [v8 local];
  v29 = [v28 radioAccessTechnology];

  v30 = [v8 remote];
  v31 = [v30 radioAccessTechnology];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v8, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v32 forKeyedSubscript:@"QVER"];

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  [(__CFDictionary *)Mutable setObject:v33 forKeyedSubscript:@"TYPE"];

  *&v34 = a5;
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  [(__CFDictionary *)Mutable setObject:v35 forKeyedSubscript:@"DUR"];

  v36 = MEMORY[0x1E696AD98];
  v37 = [v8 local];
  v38 = [v36 numberWithInteger:{objc_msgSend(v37, "transport")}];
  [(__CFDictionary *)Mutable setObject:v38 forKeyedSubscript:@"TRAN"];

  if (v29 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v29];
    [(__CFDictionary *)Mutable setObject:v39 forKeyedSubscript:@"LINF"];
  }

  if (v31 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
    [(__CFDictionary *)Mutable setObject:v40 forKeyedSubscript:@"RINF"];
  }

  v41 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v41 forKeyedSubscript:@"SCODE"];

  [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"QBLOB"];
  [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"QSV"];
  v42 = [v8 local];
  if (*([v42 address] + 1) == 2)
  {
    v43 = @"IPv4";
  }

  else
  {
    v43 = @"IPv6";
  }

  [(__CFDictionary *)Mutable setObject:v43 forKeyedSubscript:@"LIPV"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRActiveLinkRTTEvent(void *a1, float a2)
{
  v3 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = [v3 local];
  v6 = [v5 radioAccessTechnology];

  v7 = [v3 remote];
  v8 = [v7 radioAccessTechnology];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v3, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v9 forKeyedSubscript:@"QVER"];

  [(__CFDictionary *)Mutable setObject:&unk_1F1B203F0 forKeyedSubscript:@"TYPE"];
  *&v10 = a2;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"DUR"];

  v12 = MEMORY[0x1E696AD98];
  v13 = [v3 local];

  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "transport")}];
  [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"TRAN"];

  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"LINF"];
  }

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"RINF"];
  }

  [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"SCODE"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateLinkConnectedEvent(void *a1, int a2)
{
  v3 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = [v3 local];
  v6 = [v5 radioAccessTechnology];

  v7 = [v3 remote];
  v8 = [v7 radioAccessTechnology];

  v9 = [v3 local];
  v10 = [v9 transport];

  switch(v10)
  {
    case 2:
      v13 = 313;
LABEL_10:
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
      [(__CFDictionary *)Mutable setObject:v14 forKeyedSubscript:@"TYPE"];

      goto LABEL_12;
    case 3:
      v11 = a2 == 0;
      v12 = 331;
LABEL_6:
      if (v11)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12;
      }

      goto LABEL_10;
    case 4:
      v11 = a2 == 0;
      v12 = 332;
      goto LABEL_6;
  }

  [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"TYPE"];
LABEL_12:
  if (a2)
  {
    v15 = &unk_1F1B20420;
  }

  else
  {
    v15 = &unk_1F1B20438;
  }

  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"QFS"];
  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"LINF"];
  }

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"RINF"];
  }

  v18 = [v3 local];
  v19 = [v18 allocbindDataBlob];
  [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:@"QBLOB"];

  v20 = MEMORY[0x1E696AD98];
  v21 = [v3 local];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "transport")}];
  [(__CFDictionary *)Mutable setObject:v22 forKeyedSubscript:@"TRAN"];

  return Mutable;
}

uint64_t GLUtilStunTransportToLinkType(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 331;
  }

  else
  {
    v2 = 332;
  }

  if (a2)
  {
    v3 = 332;
  }

  else
  {
    v3 = 333;
  }

  if (a1 != 4)
  {
    v3 = 0;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    return 313;
  }

  else
  {
    return v2;
  }
}

CFMutableDictionaryRef GLUCreateSetUPlusOneEvent(int a1, void *a2)
{
  v3 = a2;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v3)
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSinceDate:v3];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * 1000.0];
    [(__CFDictionary *)Mutable setObject:v7 forKeyedSubscript:@"DELTAT"];
  }

  if (a1)
  {
    v8 = &unk_1F1B20450;
  }

  else
  {
    v8 = &unk_1F1B20468;
  }

  [(__CFDictionary *)Mutable setObject:v8 forKeyedSubscript:@"UPO"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateIPVersionFailureEvent(void *a1)
{
  v1 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = [v1 local];
  v4 = [v3 radioAccessTechnology];

  v5 = [v1 remote];
  v6 = [v5 radioAccessTechnology];

  v7 = [v1 local];
  if (*([v7 address] + 1) == 2)
  {
    v8 = &unk_1F1B20480;
  }

  else
  {
    v8 = &unk_1F1B20498;
  }

  [(__CFDictionary *)Mutable setObject:v8 forKeyedSubscript:@"TYPE"];

  v9 = MEMORY[0x1E696AD98];
  v10 = [v1 local];
  v11 = [v9 numberWithInteger:{objc_msgSend(v10, "transport")}];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"TRAN"];

  if (v4 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
    [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"LINF"];
  }

  if (v6 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [(__CFDictionary *)Mutable setObject:v13 forKeyedSubscript:@"RINF"];
  }

  v14 = [v1 local];
  v15 = [v14 allocbindDataBlob];
  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"QBLOB"];

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRClientTimeEvent(uint64_t a1, uint64_t a2, void *a3, void *a4, float a5)
{
  v9 = a3;
  v10 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = [v9 local];
  v13 = [v12 radioAccessTechnology];

  v14 = [v9 remote];
  v15 = [v14 radioAccessTechnology];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v9, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"QVER"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"TYPE"];

  if (a5 <= 0.0)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"DUR"];
  }

  else
  {
    *&v18 = a5;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [(__CFDictionary *)Mutable setObject:v19 forKeyedSubscript:@"DUR"];
  }

  v20 = MEMORY[0x1E696AD98];
  v21 = [v9 local];
  v22 = [v20 numberWithInteger:{objc_msgSend(v21, "transport")}];
  [(__CFDictionary *)Mutable setObject:v22 forKeyedSubscript:@"TRAN"];

  if (v13 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
    [(__CFDictionary *)Mutable setObject:v23 forKeyedSubscript:@"LINF"];
  }

  if (v15 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
    [(__CFDictionary *)Mutable setObject:v24 forKeyedSubscript:@"RINF"];
  }

  v25 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v25 forKeyedSubscript:@"SCODE"];

  if (a1 == 305 && v10)
  {
    v26 = [MEMORY[0x1E695DF00] date];
    [v26 timeIntervalSinceDate:v10];
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v27 * 1000.0];
    [(__CFDictionary *)Mutable setObject:v28 forKeyedSubscript:@"DELTAT"];
  }

  return Mutable;
}

CFMutableDictionaryRef GLUCreateQRNoSessionStateEvent(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = [v5 local];
  v8 = [v7 radioAccessTechnology];

  v9 = [v5 remote];
  v10 = [v9 radioAccessTechnology];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v5, "protocolVersion")}];
  [(__CFDictionary *)Mutable setObject:v11 forKeyedSubscript:@"QVER"];

  v12 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [(__CFDictionary *)Mutable setObject:v12 forKeyedSubscript:@"TYPE"];

  v13 = MEMORY[0x1E696AD98];
  v14 = [v5 local];

  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "transport")}];
  [(__CFDictionary *)Mutable setObject:v15 forKeyedSubscript:@"TRAN"];

  if (v8 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"LINF"];
  }

  else
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
    [(__CFDictionary *)Mutable setObject:v16 forKeyedSubscript:@"LINF"];
  }

  if (v10 >= 0xB)
  {
    [(__CFDictionary *)Mutable setObject:0 forKeyedSubscript:@"RINF"];
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [(__CFDictionary *)Mutable setObject:v17 forKeyedSubscript:@"RINF"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:a3];
  [(__CFDictionary *)Mutable setObject:v18 forKeyedSubscript:@"SCODE"];

  return Mutable;
}

id GLUCreateNetworkInterfaceArrayWithOptions(uint64_t a1, int a2, char a3, int a4, int a5, int a6, char a7, unsigned int a8, void *a9)
{
  v232 = *MEMORY[0x1E69E9840];
  v215 = a9;
  v226 = 0xAAAAAAAAAAAAAAAALL;
  if (getifaddrs(&v226) < 0)
  {
    v34 = *__error();
    v35 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "GLUCreateNetworkInterfaceArrayWithOptions";
      *&buf[12] = 1024;
      *&buf[14] = v34;
      _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "%s getifaddrs failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s getifaddrs failed errno=%d", v36, v37, v38, v39, v40, "GLUCreateNetworkInterfaceArrayWithOptions");
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s getifaddrs failed errno=%d", v41, v42, v43, v44, "GLUCreateNetworkInterfaceArrayWithOptions");
        }
      }
    }

    v45 = 0;
    goto LABEL_170;
  }

  if (a4)
  {
    v13 = +[IDSCellularLinkMonitor sharedInstance];
    v212 = [v13 cellularDataInterfaceName];

    v207 = (v215 | v212) != 0;
    if (!(v215 | v212))
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "found no interface for cellular data, skip.", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"found no interface for cellular data, skip.", v15, v16, v17, v18, v19, v200);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"found no interface for cellular data, skip.", v20, v21, v22, v23, v201);
          }
        }
      }
    }

    v24 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v212;
      *&buf[12] = 2112;
      *&buf[14] = v215;
      _os_log_impl(&dword_1A7AD9000, v24, OS_LOG_TYPE_DEFAULT, "Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.", v25, v26, v27, v28, v29, v212);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"Sliced Cellular Interface - found %@ and/or %@ interface for cellular data.", v30, v31, v32, v33, v212);
        }
      }
    }
  }

  else
  {
    v212 = 0;
    v207 = 0;
  }

  if (a6)
  {
    v46 = +[IDSNWPathUtils sharedInstance];
    v47 = [v46 getDefaultPath];

    v48 = [v47 status];
    if (v48 == 1)
    {
      v49 = [v47 interface];
      v213 = [v49 interfaceName];
    }

    else
    {
      v50 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v47;
        *&buf[12] = 1024;
        *&buf[14] = v48;
        _os_log_impl(&dword_1A7AD9000, v50, OS_LOG_TYPE_DEFAULT, "no default path is available (path:%@, status:%d).", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"no default path is available (path:%@, status:%d).", v51, v52, v53, v54, v55, v47);
          if (_IDSShouldLog(0))
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"no default path is available (path:%@, status:%d).", v56, v57, v58, v59, v47);
          }
        }
      }

      v213 = 0;
    }
  }

  else
  {
    v213 = 0;
  }

  v60 = v226;
  if (!v226)
  {
    MEMORY[0x1AC563BA0](0);
    goto LABEL_162;
  }

  v214 = 0;
  if (v213)
  {
    v61 = a6;
  }

  else
  {
    v61 = 0;
  }

  v208 = v61;
  v204 = __rev16(a8);
  do
  {
    if (a1 == 1)
    {
      if (v60->ifa_addr->sa_family != 30)
      {
        goto LABEL_53;
      }
    }

    else if (!a1 && v60->ifa_addr->sa_family != 2)
    {
      goto LABEL_53;
    }

    if ((v60->ifa_flags & 9) == 1)
    {
      ifa_addr = v60->ifa_addr;
      if (ifa_addr)
      {
        if (!v60->ifa_netmask || (valid = IsValidSA(v60->ifa_netmask), ifa_addr = v60->ifa_addr, !valid) || ifa_addr->sa_family == v60->ifa_netmask->sa_family)
        {
          if (!IsLinkLocalSA(ifa_addr) || a5)
          {
            v64 = +[IDSNWPathUtils sharedInstance];
            v65 = [v64 isVoWiFiInterface:v60->ifa_name];

            if (v65)
            {
              v66 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                ifa_name = v60->ifa_name;
                *buf = 136315138;
                *&buf[4] = ifa_name;
                _os_log_impl(&dword_1A7AD9000, v66, OS_LOG_TYPE_DEFAULT, "filter out VoWiFi interface [if:%s]", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  _IDSLogTransport(@"GL", @"IDS", @"filter out VoWiFi interface [if:%s]", v68, v69, v70, v71, v72, v60->ifa_name);
                  if (_IDSShouldLog(0))
                  {
                    _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out VoWiFi interface [if:%s]", v73, v74, v75, v76, v60->ifa_name);
                  }
                }
              }

              goto LABEL_53;
            }

            *__s2 = 0;
            v230 = 0;
            v225 = -1;
            if (!GLUtilGetDefaultInterface(&v225, __s2, 0) || (sub_1A7CAA8FC(v60->ifa_name, v60->ifa_addr->sa_family, __s2) & 1) == 0)
            {
              v77 = +[IDSNWPathUtils sharedInstance];
              v78 = [v77 filterVirtualInterfaces:v60->ifa_name];

              if (v78)
              {
                v79 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                {
                  v80 = v60->ifa_name;
                  *buf = 136315138;
                  *&buf[4] = v80;
                  _os_log_impl(&dword_1A7AD9000, v79, OS_LOG_TYPE_DEFAULT, "filter out virtual interface [if:%s]", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    _IDSLogTransport(@"GL", @"IDS", @"filter out virtual interface [if:%s]", v81, v82, v83, v84, v85, v60->ifa_name);
                    if (_IDSShouldLog(0))
                    {
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out virtual interface [if:%s]", v86, v87, v88, v89, v60->ifa_name);
                    }
                  }
                }

                goto LABEL_53;
              }
            }

            if (v208)
            {
              v90 = v60->ifa_name;
              sa_family = v60->ifa_addr->sa_family;
              v92 = v213;
              if ((sub_1A7CAA8FC(v90, sa_family, [v213 UTF8String]) & 1) == 0)
              {
                v117 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                {
                  v118 = v60->ifa_name;
                  v119 = v213;
                  v120 = [v213 UTF8String];
                  *buf = 136315650;
                  *&buf[4] = v118;
                  *&buf[12] = 2112;
                  *&buf[14] = @"12345678-7654-DADA-DADA-DADADADADADA";
                  *&buf[22] = 2080;
                  *&buf[24] = v120;
                  _os_log_impl(&dword_1A7AD9000, v117, OS_LOG_TYPE_DEFAULT, "filter out non-default interface [if:%s] for %@, defaultIfName: %s", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v121 = v60->ifa_name;
                    v122 = v213;
                    [v213 UTF8String];
                    _IDSLogTransport(@"GL", @"IDS", @"filter out non-default interface [if:%s] for %@, defaultIfName: %s", v123, v124, v125, v126, v127, v121);
                    if (_IDSShouldLog(0))
                    {
                      v128 = v60->ifa_name;
                      v129 = v213;
                      [v213 UTF8String];
                      _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out non-default interface [if:%s] for %@, defaultIfName: %s", v130, v131, v132, v133, v128);
                    }
                  }
                }

                goto LABEL_53;
              }
            }

            v205 = sub_1A7CAA9BC(v60->ifa_name, v60->ifa_addr->sa_family);
            v93 = v60->ifa_addr->sa_family;
            memset(buf, 0, 32);
            __strlcpy_chk();
            v94 = socket(v93, 2, 0);
            v95 = v94;
            if (v94 < 0)
            {
              v105 = __error();
              IDSAssertNonFatalErrnoWithSource(*v105, "GL getInterfaceType", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1883);
            }

            else
            {
              v96 = ioctl(v94, 0xC02069ADuLL, buf);
              v97 = *&buf[16];
              close(v95);
              if (v96 >= 0)
              {
                IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1886, 0);
                v98 = v97;
                if (v97 == 5)
                {
                  if (!v207)
                  {
                    goto LABEL_53;
                  }

                  v99 = v60->ifa_name;
                  v100 = v60->ifa_addr->sa_family;
                  v101 = v212;
                  if ((sub_1A7CAA8FC(v99, v100, [v212 UTF8String]) & 1) == 0)
                  {
                    v102 = v60->ifa_name;
                    v103 = v60->ifa_addr->sa_family;
                    v104 = v215;
                    if ((sub_1A7CAA8FC(v102, v103, [v215 UTF8String]) & 1) == 0)
                    {
                      goto LABEL_53;
                    }
                  }

                  v98 = 5;
                }

                else if (a7)
                {
                  if (v97 != 3)
                  {
LABEL_82:
                    v106 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                    {
                      v107 = v60->ifa_name;
                      *buf = 136315650;
                      *&buf[4] = v107;
                      *&buf[12] = 1024;
                      *&buf[14] = v98;
                      *&buf[18] = 2112;
                      *&buf[20] = @"12345678-7654-DADA-DADA-DADADADADADA";
                      _os_log_impl(&dword_1A7AD9000, v106, OS_LOG_TYPE_DEFAULT, "filter out interface [if:%s type:%d] for %@.", buf, 0x1Cu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"filter out interface [if:%s type:%d] for %@.", v108, v109, v110, v111, v112, v60->ifa_name);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out interface [if:%s type:%d] for %@.", v113, v114, v115, v116, v60->ifa_name);
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  if ((a3 & 1) == 0)
                  {
                    v145 = OSLogHandleForTransportCategory();
                    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                    {
                      v146 = v60->ifa_name;
                      *buf = 136315650;
                      *&buf[4] = v146;
                      *&buf[12] = 1024;
                      *&buf[14] = 3;
                      *&buf[18] = 2112;
                      *&buf[20] = @"12345678-7654-DADA-DADA-DADADADADADA";
                      _os_log_impl(&dword_1A7AD9000, v145, OS_LOG_TYPE_DEFAULT, "filter out WiFi interface [if:%s type:%d] for %@.", buf, 0x1Cu);
                    }

                    if (os_log_shim_legacy_logging_enabled())
                    {
                      if (_IDSShouldLogTransport())
                      {
                        _IDSLogTransport(@"GL", @"IDS", @"filter out WiFi interface [if:%s type:%d] for %@.", v147, v148, v149, v150, v151, v60->ifa_name);
                        if (_IDSShouldLog(0))
                        {
                          _IDSLogV(0, @"IDSFoundation", @"GL", @"filter out WiFi interface [if:%s type:%d] for %@.", v152, v153, v154, v155, v60->ifa_name);
                        }
                      }
                    }

                    goto LABEL_53;
                  }

                  v98 = 3;
                }

                goto LABEL_98;
              }
            }

            IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1886, 0);
            v98 = 0;
            if (a7)
            {
              goto LABEL_82;
            }

LABEL_98:
            if (((a2 & 1) != 0 || (v205 & 0x100000) == 0) && (!a2 || (v205 & 0x20000) != 0))
            {
              v203 = v98;
              v206 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v134 = v60->ifa_addr;
              if (v134->sa_family == 30)
              {
                v202 = sub_1A7CAACB0(v60->ifa_name, v134);
                if ((v202 & 0x101E) == 0)
                {
                  if ((v202 & 0x80) != 0)
                  {
                    v223 = 0uLL;
                    v224 = 0uLL;
                    v221 = 0uLL;
                    v222 = 0uLL;
                    v156 = v214;
                    v157 = [v156 countByEnumeratingWithState:&v221 objects:v228 count:16];
                    if (v157)
                    {
                      v158 = *v222;
                      do
                      {
                        for (i = 0; i != v157; ++i)
                        {
                          if (*v222 != v158)
                          {
                            objc_enumerationMutation(v156);
                          }

                          v160 = *(*(&v221 + 1) + 8 * i);
                          v161 = v60->ifa_name;
                          v162 = [v160 name];
                          v163 = v162;
                          if (!strcmp(v161, [v162 UTF8String]))
                          {
                            v164 = [v160 isTemporaryIPv6];

                            if ((v164 & 1) == 0)
                            {
                              [v206 addObject:v160];
                              v165 = OSLogHandleForTransportCategory();
                              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v160;
                                _os_log_impl(&dword_1A7AD9000, v165, OS_LOG_TYPE_DEFAULT, "prune IPv6 interface %@.", buf, 0xCu);
                              }

                              if (os_log_shim_legacy_logging_enabled())
                              {
                                if (_IDSShouldLogTransport())
                                {
                                  _IDSLogTransport(@"GL", @"IDS", @"prune IPv6 interface %@.", v166, v167, v168, v169, v170, v160);
                                  if (_IDSShouldLog(0))
                                  {
                                    _IDSLogV(0, @"IDSFoundation", @"GL", @"prune IPv6 interface %@.", v171, v172, v173, v174, v160);
                                  }
                                }
                              }
                            }
                          }

                          else
                          {
                          }
                        }

                        v157 = [v156 countByEnumeratingWithState:&v221 objects:v228 count:16];
                      }

                      while (v157);
                    }
                  }

                  else
                  {
                    v219 = 0uLL;
                    v220 = 0uLL;
                    v217 = 0uLL;
                    v218 = 0uLL;
                    v135 = v214;
                    v136 = [v135 countByEnumeratingWithState:&v217 objects:v227 count:16];
                    if (v136)
                    {
                      v137 = *v218;
                      while (2)
                      {
                        for (j = 0; j != v136; ++j)
                        {
                          if (*v218 != v137)
                          {
                            objc_enumerationMutation(v135);
                          }

                          v139 = *(*(&v217 + 1) + 8 * j);
                          v140 = v60->ifa_name;
                          v141 = [v139 name];
                          v142 = v141;
                          if (!strcmp(v140, [v141 UTF8String]))
                          {
                            v143 = [v139 isTemporaryIPv6];

                            if (v143)
                            {
                              v179 = OSLogHandleForTransportCategory();
                              if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *&buf[4] = v139;
                                _os_log_impl(&dword_1A7AD9000, v179, OS_LOG_TYPE_DEFAULT, "skip IPv6 interface %@.", buf, 0xCu);
                              }

                              if (os_log_shim_legacy_logging_enabled())
                              {
                                if (_IDSShouldLogTransport())
                                {
                                  _IDSLogTransport(@"GL", @"IDS", @"skip IPv6 interface %@.", v180, v181, v182, v183, v184, v139);
                                  if (_IDSShouldLog(0))
                                  {
                                    _IDSLogV(0, @"IDSFoundation", @"GL", @"skip IPv6 interface %@.", v185, v186, v187, v188, v139);
                                  }
                                }
                              }

                              v214 = v135;
                              goto LABEL_157;
                            }
                          }

                          else
                          {
                          }
                        }

                        v136 = [v135 countByEnumeratingWithState:&v217 objects:v227 count:16];
                        if (v136)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

                  if ([v206 count])
                  {
                    [v214 removeObjectsInArray:v206];
                  }

                  v144 = v202;
LABEL_142:
                  v175 = v60->ifa_addr;
                  v176 = v203;
                  if (v175->sa_data[2] != 209)
                  {
                    if (!v214)
                    {
                      v177 = v144;
                      v214 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v175 = v60->ifa_addr;
                      v176 = v203;
                      v144 = v177;
                    }

                    v178 = v175->sa_family;
                    if (v178 == 30 || v178 == 2)
                    {
                      *v175->sa_data = v204;
                    }

                    v135 = [IDSInterfaceAddress interfaceAddress:v60 eflags:v205 v6flags:v144 iftype:v176];
                    if (v135)
                    {
                      [v214 addObject:v135];
                    }

LABEL_157:
                  }
                }

                goto LABEL_53;
              }

              v144 = 0;
              goto LABEL_142;
            }
          }
        }
      }
    }

LABEL_53:
    v60 = v60->ifa_next;
  }

  while (v60);
  MEMORY[0x1AC563BA0](v226);
  if (!v214)
  {
LABEL_162:
    v214 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v189 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v189, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "GLUCreateNetworkInterfaceArrayWithOptions";
    *&buf[12] = 2112;
    *&buf[14] = v214;
    _os_log_impl(&dword_1A7AD9000, v189, OS_LOG_TYPE_DEFAULT, "%s Available network interfaces: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"%s Available network interfaces: %@", v190, v191, v192, v193, v194, "GLUCreateNetworkInterfaceArrayWithOptions");
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"%s Available network interfaces: %@", v195, v196, v197, v198, "GLUCreateNetworkInterfaceArrayWithOptions");
      }
    }
  }

  v45 = v214;

LABEL_170:

  return v45;
}

uint64_t sub_1A7CAA8FC(const char *a1, int a2, char *__s2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!__s2)
  {
    return 0;
  }

  if (!strncmp(a1, __s2, 0x10uLL))
  {
    return 1;
  }

  memset(__s1, 170, sizeof(__s1));
  result = getEffectiveInterface(a1, a2, __s1, 0);
  if (result)
  {
    return strncmp(__s1, __s2, 0x10uLL) == 0;
  }

  return result;
}

uint64_t sub_1A7CAA9BC(uint64_t a1, int a2)
{
  v2 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v3 = socket(a2, 2, 0);
  if (v3 < 0)
  {
    v7 = *__error();
    IDSAssertNonFatalErrnoWithSource(v7, "GL getExtendedFlags", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1846);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "getExtendedFlags";
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "%s socket failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s socket failed errno=%d", v9, v10, v11, v12, v13, "getExtendedFlags");
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s socket failed errno=%d", v14, v15, v16, v17, "getExtendedFlags");
        }
      }
    }
  }

  else
  {
    v4 = v3;
    IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1851, 0);
    v33 = 0u;
    v34 = 0u;
    BYTE1(v34) = v2;
    __strlcpy_chk();
    v5 = ioctl(v4, 0xC020698EuLL, &v33);
    close(v4);
    if ((v5 & 0x80000000) == 0)
    {
      return v34;
    }

    v18 = *__error();
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "getExtendedFlags";
      v31 = 1024;
      v32 = v18;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "%s ioctl(SIOCGIFEFLAGS) failed errno=%d", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"%s ioctl(SIOCGIFEFLAGS) failed errno=%d", v20, v21, v22, v23, v24, "getExtendedFlags");
      if (_IDSShouldLog(0))
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"%s ioctl(SIOCGIFEFLAGS) failed errno=%d", v25, v26, v27, v28, "getExtendedFlags");
      }
    }
  }

  return 0;
}

uint64_t sub_1A7CAACB0(uint64_t a1, _OWORD *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = socket(30, 2, 0);
  if (v3 < 0)
  {
    v7 = *__error();
    IDSAssertNonFatalErrnoWithSource(v7, "GL getIPv6Flags", "/Library/Caches/com.apple.xbs/Sources/IdentityServices/IDSFoundation/IDSGlobalLinkUtil.m", 1799);
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "getIPv6Flags";
      v31 = 1024;
      v32 = v7;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "%s socket failed errno=%d", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s socket failed errno=%d", v9, v10, v11, v12, v13, "getIPv6Flags");
        result = _IDSShouldLog(0);
        if (result)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s socket failed errno=%d", v14, v15, v16, v17, "getIPv6Flags");
          return 0;
        }
      }
    }
  }

  else
  {
    v4 = v3;
    IDSCheckFileDescriptorUsageWithSource("IDSGlobalLinkUtil.m", 1804, 0);
    memset(v33, 0, sizeof(v33));
    __strlcpy_chk();
    v33[1] = *a2;
    *(&v33[1] + 12) = *(a2 + 12);
    v5 = ioctl(v4, 0xC1206949uLL, v33);
    close(v4);
    if ((v5 & 0x80000000) == 0)
    {
      return LODWORD(v33[1]);
    }

    v18 = *__error();
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "getIPv6Flags";
      v31 = 1024;
      v32 = v18;
      _os_log_impl(&dword_1A7AD9000, v19, OS_LOG_TYPE_DEFAULT, "%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d", buf, 0x12u);
    }

    result = os_log_shim_legacy_logging_enabled();
    if (result)
    {
      result = _IDSShouldLogTransport();
      if (result)
      {
        _IDSLogTransport(@"GL", @"IDS", @"%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d", v20, v21, v22, v23, v24, "getIPv6Flags");
        result = _IDSShouldLog(0);
        if (result)
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"%s ioctl(SIOCGIFAFLAG_IN6) failed errno=%d", v25, v26, v27, v28, "getIPv6Flags");
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t GLUGetExtendedFlagsForInterface(void *a1)
{
  v1 = a1;
  v2 = [v1 name];
  v3 = [v2 UTF8String];

  v4 = [v1 address];

  v5 = sub_1A7CAA9BC(v3, *([v4 sa] + 1));
  return v5;
}

id GLUtilGetRemainingInterfaces(void *a1)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v28 = -1;
  v31[0] = 0;
  v31[1] = 0;
  v27 = 0;
  if (GLUtilGetDefaultInterface(&v28, v31, &v27))
  {
    v2 = GLUtilGetExcludedInterfaceAddressList(v28, v31, v1);
    v3 = [v1 mutableCopy];
    [v3 removeObjectsInArray:v2];
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v3;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "GLUtilGetRemainingInterfaces: remaining interfaces:%@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"GLUtilGetRemainingInterfaces: remaining interfaces:%@.", v5, v6, v7, v8, v9, v3);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilGetRemainingInterfaces: remaining interfaces:%@.", v10, v11, v12, v13, v3);
        }
      }
    }
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!", v15, v16, v17, v18, v19, v25);
        if (_IDSShouldLog(0))
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"GLUtilGetRemainingInterfaces: Failed to get default interface, can not get remaining interfaces after exclusion!", v20, v21, v22, v23, v26);
        }
      }
    }

    v3 = 0;
  }

  return v3;
}

uint64_t GLUtilGetPreferredRemoteInterface(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_1A7E40FA8[(a1 - 1)];
  }
}

uint64_t GLUtilGetPreferredLocalInterface(int a1)
{
  v1 = 2 * ((a1 - 1) < 2);
  if (a1 == 8)
  {
    v1 = 1;
  }

  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t GLUtilShouldSetRemoteInterfacePreference(int a1, int a2)
{
  if (a1)
  {
    return a2 ^ 1u;
  }

  else
  {
    return 0;
  }
}

unint64_t GLUtilStunTransportChar(unint64_t a1)
{
  v1 = 0x535452503FuLL >> (8 * a1);
  if (a1 >= 5)
  {
    LOBYTE(v1) = 63;
  }

  return v1 & 0x7F;
}

__CFString *GLUtilStunTransportString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E77E2A78[a1 - 1];
  }
}

uint64_t GLUtilIDSStunTransportToBearer(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return -1;
  }

  else
  {
    return (0x6000600110011uLL >> (16 * (a1 - 1)));
  }
}

BOOL GLUtilUnderPerformanceTesting(void *a1, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 local];
  if ([v4 radioAccessTechnology])
  {

    v5 = 0;
  }

  else
  {
    v7 = [v3 remote];
    v8 = [v7 radioAccessTechnology];

    v5 = 0;
    if (!v8 && a2)
    {
      memset(v45, 0, sizeof(v45));
      v9 = [v3 local];
      v10 = *([v9 address] + 1) == 30;

      v11 = [v3 local];
      v12 = [v11 address];

      v13 = [v3 remote];
      v14 = [v13 external];

      if (v10)
      {
        *(v45 + 8) = *(v12 + 8);
        *(&v45[1] + 8) = *(v14 + 8);
        v15 = *(v12 + 2);
        v16 = *(v14 + 2);
        v17 = 96;
      }

      else
      {
        v15 = *(v12 + 2);
        v16 = *(v14 + 2);
        DWORD2(v45[0]) = *(v12 + 4);
        DWORD2(v45[1]) = *(v14 + 4);
        v17 = 4;
      }

      BYTE2(v45[0]) = v17;
      WORD2(v45[0]) = v15;
      WORD3(v45[0]) = v16;
      v18 = [v3 local];
      v19 = [v18 transport];

      v5 = v19 == 2;
      if (v19 == 2)
      {
        BYTE3(v45[0]) = 17;
        if (sysctlbyname("net.link.generic.system.flow_key_trace", 0, 0, v45, 0x30uLL))
        {
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *__error();
            *buf = 67109120;
            v47 = v21;
            _os_log_impl(&dword_1A7AD9000, v20, OS_LOG_TYPE_DEFAULT, "Failed to send flow_key, sysctl returned %d", buf, 8u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v22 = __error();
              _IDSLogTransport(@"GL", @"IDS", @"Failed to send flow_key, sysctl returned %d", v23, v24, v25, v26, v27, *v22);
              if (_IDSShouldLog(0))
              {
                v28 = __error();
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Failed to send flow_key, sysctl returned %d", v29, v30, v31, v32, *v28);
              }
            }
          }
        }

        else
        {
          v33 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "Succeeded in sending flow_key", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              _IDSLogTransport(@"GL", @"IDS", @"Succeeded in sending flow_key", v34, v35, v36, v37, v38, v43);
              if (_IDSShouldLog(0))
              {
                _IDSLogV(0, @"IDSFoundation", @"GL", @"Succeeded in sending flow_key", v39, v40, v41, v42, v44);
              }
            }
          }
        }
      }
    }
  }

  return v5;
}