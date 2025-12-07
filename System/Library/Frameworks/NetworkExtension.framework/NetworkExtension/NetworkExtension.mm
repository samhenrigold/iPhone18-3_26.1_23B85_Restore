void *NECopySigningIdentifierForPIDwithAuditToken()
{
  result = ne_copy_signing_identifier_for_pid_with_audit_token();
  if (result)
  {
    v1 = result;
    v2 = _CFXPCCreateCFObjectFromXPCObject();
    xpc_release(v1);
    return v2;
  }

  return result;
}

const char *inputNotification2String(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "network changed";
  }

  else
  {
    return off_1E7F0ADF0[a1 - 1];
  }
}

uint64_t __NEVirtualInterfaceCreateReadSource_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 64))
  {
    v3 = *(result + 208);
    if (*(result + 73))
    {
      v4 = 0;
    }

    else
    {
      dispatch_suspend(*(result + 64));
      result = *(a1 + 32);
      *(result + 74) = 1;
      v4 = *(result + 73) == 0;
    }

    do
    {
      if (!v4)
      {
        v3 = *(result + 96);
      }

      result = NEVirtualInterfaceReadMultiplePackets(result, v3);
      if (!result)
      {
        break;
      }

      v4 = 0;
      result = *(a1 + 32);
    }

    while (*(result + 73));
  }

  return result;
}

BOOL NEVirtualInterfaceReadMultiplePackets(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 96);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(a1 + 112);
  v6 = *(a1 + 256);
  bzero(*(a1 + 200), 56 * v4);
  if (v6 == 1)
  {
    bzero(*(a1 + 104), 4 * v4);
    v7 = 1;
    v8 = 4;
    if (v5)
    {
LABEL_6:
      v8 |= 0x10uLL;
      bzero(*(a1 + 112), 16 * v4);
      v9 = v7++;
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v9 = -1;
LABEL_9:
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v7 + 1;
    v14 = *(a1 + 192);
    v15 = (*(a1 + 200) + 24);
    v16 = *(a1 + 80);
    v17 = *(a1 + 88);
    do
    {
      v18 = v10;
      v19 = (v14 + 16 * v10);
      *(v15 - 1) = v19;
      *v15 = v13;
      if (v6 == 1)
      {
        *v19 = *(a1 + 104) + v12;
        *(v14 + 16 * v18 + 8) = 4;
      }

      if ((v9 & 0x80000000) == 0)
      {
        v20 = (v14 + 16 * (v9 + v18));
        *v20 = *(a1 + 112) + v11;
        v20[1] = 16;
      }

      v21 = *v16++;
      v22 = (v14 + 16 * (v7 + v18));
      v12 += 4;
      *v22 = v21;
      v22[1] = v17;
      v11 += 16;
      v15 += 14;
      v10 = v18 + v13;
    }

    while (4 * v4 != v12);
  }

  v23 = recvmsg_x();
  v24 = v23;
  if (*(a1 + 32))
  {
    v25 = 1;
  }

  else
  {
    v25 = *(a1 + 48) != 0;
  }

  if (*(a1 + 40))
  {
    v26 = 1;
    if (v23 < 0)
    {
      return v24 >= 0;
    }
  }

  else
  {
    v26 = *(a1 + 56) != 0;
    if (v23 < 0)
    {
      return v24 >= 0;
    }
  }

  if (v25 || v26)
  {
    v27 = v23;
    v52 = v23;
    bzero(*(a1 + 168), 28 * v23);
    bzero(*(a1 + 176), 28 * v24);
    bzero(*(a1 + 184), v24);
    if (v24)
    {
      v28 = 0;
      v29 = 0;
      v30 = 48;
      v55 = v8;
      v54 = v26;
      v53 = v24;
      while (1)
      {
        v31 = *(*(a1 + 200) + v30);
        if (v31 && v31 >= v8)
        {
          break;
        }

        *(*(a1 + 104) + 4 * v29) = 0;
        *(*(a1 + 128) + 8 * v29) = 0;
        *(*(a1 + 144) + 8 * v29) = 0;
LABEL_43:
        ++v28;
        v30 += 56;
        if (v27 == v28)
        {
          goto LABEL_49;
        }
      }

      v33 = v31 - v8;
      v34 = *(a1 + 136);
      *(*(a1 + 144) + 8 * v29) = v31 - v8;
      *(*(a1 + 104) + 4 * v29) = bswap32(*(*(a1 + 104) + 4 * v28));
      *(v34 + 8 * v29) = *(*(a1 + 80) + 8 * v28);
      if (!v26)
      {
LABEL_40:
        v47 = *(a1 + 32);
        if (v47)
        {
          (*(v47 + 16))(v47, a1, *(*(a1 + 104) + 4 * v28), *(*(a1 + 136) + 8 * v28), *(*(a1 + 144) + 8 * v28), *(a1 + 24));
        }

        v29 = (v29 + 1);
        goto LABEL_43;
      }

      v35 = *(*(a1 + 104) + 4 * v29);
      if (v35 == 2)
      {
        v36 = 16;
        v37 = 2;
        v38 = 4;
        v39 = 12;
        v40 = 4;
        v56 = 16;
        v57 = 9;
        v41 = 20;
      }

      else
      {
        if (v35 != 30)
        {
          v41 = 0;
LABEL_38:
          *(*(a1 + 120) + 8 * v29) = *(*(a1 + 136) + 8 * v29) + v41;
          v45 = *(a1 + 128);
          *(v45 + 8 * v29) = v33 - v41;
          v46 = *(a1 + 40);
          if (v46)
          {
            (*(v46 + 16))(v46, a1, *(*(a1 + 152) + 8 * v28), *(*(a1 + 160) + 8 * v28), *(*(a1 + 184) + v28), *(*(a1 + 120) + 8 * v28), *(v45 + 8 * v28), *(a1 + 24));
          }

          goto LABEL_40;
        }

        v36 = 28;
        v37 = 30;
        v38 = 8;
        v39 = 8;
        v40 = 16;
        v56 = 24;
        v57 = 6;
        v41 = 40;
      }

      v42 = *(*(a1 + 152) + 8 * v29);
      v43 = *(*(a1 + 160) + 8 * v29);
      v44 = *(*(a1 + 136) + 8 * v29);
      v43[1] = v37;
      v42[1] = v37;
      *v43 = v36;
      *v42 = v36;
      memcpy(&v42[v38], (v44 + v39), v40);
      memcpy(&v43[v38], (v44 + v56), v40);
      *(*(a1 + 184) + v29) = *(v44 + v57);
      v8 = v55;
      v26 = v54;
      v27 = v53;
      goto LABEL_38;
    }

    v29 = 0;
LABEL_49:
    v49 = *(a1 + 56);
    if (v49)
    {
      (*(v49 + 16))(v49, a1, *(a1 + 152), *(a1 + 160), *(a1 + 184), *(a1 + 120), *(a1 + 128), v29, *(a1 + 24));
    }

    v50 = *(a1 + 48);
    v24 = v52;
    if (v50)
    {
      (*(v50 + 16))(v50, a1, *(a1 + 104), *(a1 + 112), *(a1 + 136), *(a1 + 144), v29, *(a1 + 24));
    }
  }

  else if (*(a1 + 74))
  {
    v48 = *(a1 + 64);
    if (v48)
    {
      *(a1 + 208) = *(a1 + 96);
      dispatch_resume(v48);
      *(a1 + 74) = 0;
    }
  }

  return v24 >= 0;
}

void NEVirtualInterfaceReadyToReadMultiple(uint64_t a1, unsigned int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    v7 = "NEVirtualInterfaceReadyToReadMultiple";
    v8 = 1024;
    v9 = 2567;
    goto LABEL_14;
  }

  if (*(a1 + 256) == 2)
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    v7 = "NEVirtualInterfaceReadyToReadMultiple";
    v8 = 1024;
    v9 = 2571;
LABEL_14:
    _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
    return;
  }

  if (!a2)
  {
    v2 = ne_log_obj();
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    v7 = "NEVirtualInterfaceReadyToReadMultiple";
    v8 = 1024;
    v9 = 2575;
    goto LABEL_14;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 64))
    {
      if (*(a1 + 74))
      {
        v4[0] = MEMORY[0x1E69E9820];
        v4[1] = 0x40000000;
        v4[2] = __NEVirtualInterfaceReadyToReadMultiple_block_invoke;
        v4[3] = &__block_descriptor_tmp_26143;
        v4[4] = a1;
        v5 = a2;
        dispatch_async(v3, v4);
      }
    }
  }

  else
  {

    NEVirtualInterfaceReadMultiplePackets(a1, a2);
  }
}

uint64_t __NERepeatingEventCreate_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  context = dispatch_get_context(v1);
  v3 = context;
  v5 = context[2];
  v4 = context[3];
  context[3] = v4 + 1;
  if (v5)
  {
    v6 = v4 < v5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = *(context + 2);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    dispatch_source_cancel(v1);
    result = *(v3 + 3);
    if (!result)
    {
      return result;
    }
  }

  v8 = *(result + 16);

  return v8();
}

void __NEIPSecDBCreateStatsTimer_block_invoke_232(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  *(v1 + 72) = 0;
  *(v1 + 64) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    v5 = *(a1 + 48);
    v4 = *(a1 + 52);
    *buf = 0;
    v6 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
    if (!v8)
    {
      free(v7);
      return;
    }

    v9 = v8;
    *(v7 + 4) = 0;
    *v7 = 0u;
    v7[1] = 0u;
    *(v8 + 4) = 0;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    v10 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), v5);
    v11 = v10;
    if (v10)
    {
      if (!NEIPSecDBFilloutBasicSAInfo(v10, 0, 0, buf, 0, 0, 0))
      {
        v14 = 0;
        v15 = 0;
        v12 = 0;
        goto LABEL_17;
      }

      *v7 = *buf;
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = NEGetValueFromIntKeyedDictionary(*(v2 + 80), v4);
    if (v13 && NEIPSecDBFilloutBasicSAInfo(v13, 0, 0, buf, 0, 0, 0))
    {
      *v9 = *buf;
      v14 = 1;
      v15 = v9;
      if (!v11)
      {
LABEL_17:
        free(v7);
        v16 = 0;
        v17 = 0;
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v16 = 1;
    v17 = 1;
    if (v14)
    {
LABEL_18:
      v18 = 1;
      goto LABEL_19;
    }

LABEL_15:
    free(v9);
    v18 = 0;
LABEL_19:
    v19 = v16 ^ 1;
    if (!v12)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      *buf = *(a1 + 48);
      if (!NEPFKeySendGetStats(*(*(a1 + 40) + 64), 0, buf, 1, 1, v12, v17))
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315138;
          v24 = "NEIPSecDBCreateStatsTimer_block_invoke";
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s: failed to send stats request for inbound SA\n", &v23, 0xCu);
        }
      }

      free(v12);
      ++*(*(a1 + 32) + 64);
    }

    if (v14 && v15)
    {
      *buf = *(a1 + 52);
      if (!NEPFKeySendGetStats(*(*(a1 + 40) + 64), 0, buf, 1, 2, v15, v18))
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v23 = 136315138;
          v24 = "NEIPSecDBCreateStatsTimer_block_invoke";
          _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%s: failed to send stats request for outbound SA\n", &v23, 0xCu);
        }
      }

      free(v15);
      ++*(*(a1 + 32) + 64);
    }

    return;
  }

  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    *&buf[4] = "NEIPSecDBStatsCreateArrays";
    _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
  }
}

void __NEVirtualInterfaceReadyToReadMultiple_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && *(v2 + 64) && *(v2 + 74) && !NEVirtualInterfaceReadMultiplePackets(v2, *(a1 + 40)))
  {
    v3 = *(a1 + 32);
    *(v3 + 74) = 0;
    *(v3 + 208) = *(a1 + 40);
    v4 = *(v3 + 64);

    dispatch_resume(v4);
  }
}

const __CFDictionary *NEGetValueFromIntKeyedDictionary(const __CFDictionary *a1, int a2)
{
  Value = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(Value, v3);
      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return Value;
}

uint64_t NEVirtualInterfaceWriteMultipleIPPackets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2613;
      goto LABEL_57;
    }

    return 0;
  }

  v6 = *(a1 + 256);
  if (v6 == 2)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2617;
LABEL_57:
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      return 0;
    }

    return 0;
  }

  if (!a2 && v6 == 1)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2621;
      goto LABEL_57;
    }

    return 0;
  }

  if (!a3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2625;
      goto LABEL_57;
    }

    return 0;
  }

  if (!a4)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2629;
      goto LABEL_57;
    }

    return 0;
  }

  if ((*(a1 + 296) & 0x80000000) != 0)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2633;
      goto LABEL_57;
    }

    return 0;
  }

  if (!a5)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2637;
      goto LABEL_57;
    }

    return 0;
  }

  v12 = *(a1 + 212);
  if (!v12)
  {
    NEVirtualInterfaceAdjustSendCount(a1, 0x10u);
    v12 = *(a1 + 212);
  }

  if (a2)
  {
    v13 = *(a1 + 256) == 1;
    v41 = v13;
  }

  else
  {
    v41 = 0;
    v13 = 0;
  }

  v14 = *(a1 + 72) != 0;
  if (*(a1 + 72))
  {
    v15 = v13 + 1;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  if (v12 <= a5)
  {
    v19 = malloc_type_malloc(16 * v16 * a5, 0x1080040FC6463CFuLL);
    if (!v19)
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
        v45 = 1024;
        v46 = 2669;
        goto LABEL_57;
      }

      return 0;
    }

    v17 = v19;
    v40 = v12;
    v18 = a5;
    v20 = malloc_type_calloc(a5, 0x38uLL, 0x10A004053D910A2uLL);
    if (!v20)
    {
      v35 = ne_log_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
        v45 = 1024;
        v46 = 2674;
        _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      }

      free(v17);
      return 0;
    }

    v39 = v20;
  }

  else
  {
    v40 = v12;
    v17 = *(a1 + 216);
    v18 = a5;
    v39 = *(a1 + 224);
    bzero(v39, 56 * a5);
  }

  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v21 = 0;
  v22 = 0;
  v23 = v41;
  if (!a2)
  {
    v23 = 0;
  }

  v24 = v39 + 6;
  v25 = a2;
  do
  {
    if (!*(a3 + 8 * v22))
    {
      v30 = v39;
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
LABEL_51:
        v31 = 0;
        goto LABEL_52;
      }

      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2688;
LABEL_67:
      _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "NEVirtualInterface Failure in %s at line %d.", buf, 0x12u);
      goto LABEL_51;
    }

    if (!*(a4 + 8 * v22))
    {
      v30 = v39;
      v32 = ne_log_obj();
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      v44 = "NEVirtualInterfaceWriteMultipleIPPackets";
      v45 = 1024;
      v46 = 2693;
      goto LABEL_67;
    }

    v26 = &v17[16 * v21];
    *(v24 - 1) = v26;
    *v24 = v16;
    if (v23)
    {
      *(a2 + 4 * v22) = bswap32(*(a2 + 4 * v22));
      *v26 = v25;
      v26[1] = 4;
    }

    if (v14)
    {
      v27 = &v17[16 * v13];
      *v27 = uu;
      v27[1] = 16;
    }

    v28 = &v17[16 * v14 + 16 * v13];
    *v28 = *(a3 + 8 * v22);
    v29 = *(a4 + 8 * v22++);
    v25 += 4;
    *(v28 + 1) = v29;
    v24 += 14;
    v13 += v16;
    v21 += v16;
  }

  while (v18 != v22);
  v30 = v39;
  if (sendmsg_x() > 0)
  {
    v31 = 1;
LABEL_52:
    v33 = v40;
    goto LABEL_53;
  }

  v36 = ne_log_obj();
  v33 = v40;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = __error();
    v38 = strerror(*v37);
    *buf = 136315138;
    v44 = v38;
    _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "User Tunnel write error: %s", buf, 0xCu);
  }

  v31 = 0;
LABEL_53:
  if (v33 <= a5)
  {
    free(v17);
    free(v30);
  }

  return v31;
}

void NEVirtualInterfaceAdjustSendCount(uint64_t a1, unsigned int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 256);
  if (v2 == 2)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v12 = 136315394;
    v13 = "NEVirtualInterfaceAdjustSendCount";
    v14 = 1024;
    v15 = 1189;
    v4 = "NEVirtualInterface Failure in %s at line %d.";
    goto LABEL_19;
  }

  if (*(a1 + 212) == a2)
  {
    return;
  }

  *(a1 + 212) = a2;
  if (a2)
  {
    v7 = v2 == 1;
    v8 = 1;
    if (v7)
    {
      v8 = 2;
    }

    if (*(a1 + 72))
    {
      ++v8;
    }

    *(a1 + 216) = reallocf(*(a1 + 216), 16 * a2 * v8);
    *(a1 + 224) = reallocf(*(a1 + 224), 56 * a2);
    v9 = 60;
    if (!*(a1 + 72))
    {
      v9 = 44;
    }

    *(a1 + 232) = reallocf(*(a1 + 232), v9 * a2);
    *(a1 + 240) = reallocf(*(a1 + 240), 8 * a2);
    v10 = reallocf(*(a1 + 248), 8 * a2);
    *(a1 + 248) = v10;
    v11 = *(a1 + 216);
    if (!v11 || !*(a1 + 224) || !*(a1 + 232) || !v10 || !*(a1 + 240))
    {
      free(v11);
      *(a1 + 216) = 0;
      free(*(a1 + 224));
      *(a1 + 224) = 0;
      free(*(a1 + 232));
      *(a1 + 232) = 0;
      free(*(a1 + 240));
      *(a1 + 240) = 0;
      free(*(a1 + 248));
      *(a1 + 248) = 0;
      *(a1 + 212) = 0;
      v3 = ne_log_obj();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "NEVirtualInterfaceAdjustSendCount";
        v14 = 1024;
        v15 = a2;
        v4 = "%s: failed to allocate send buffers (cnt=%d)";
LABEL_19:
        _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, v4, &v12, 0x12u);
      }
    }
  }

  else
  {
    free(*(a1 + 216));
    *(a1 + 216) = 0;
    free(*(a1 + 224));
    *(a1 + 224) = 0;
    free(*(a1 + 232));
    *(a1 + 232) = 0;
    free(*(a1 + 240));
    *(a1 + 240) = 0;
    free(*(a1 + 248));
    *(a1 + 248) = 0;
  }
}

BOOL NEIPSecDBFilloutBasicSAInfo(CFDictionaryRef theDict, char *a2, char *a3, _DWORD *a4, void **a5, void **a6, char *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    if (a3)
    {
      Value = CFDictionaryGetValue(theDict, @"Mode");
      if (Value)
      {
        if (CFEqual(Value, @"Transport"))
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }
      }

      else
      {
        v15 = 2;
      }

      *a3 = v15;
    }

    if (a2)
    {
      v16 = CFDictionaryGetValue(theDict, @"IPSecProtocol");
      if (v16)
      {
        if (CFEqual(v16, @"AH"))
        {
          v17 = 2;
        }

        else
        {
          v17 = 3;
        }
      }

      else
      {
        v17 = 3;
      }

      *a2 = v17;
    }

    if (a4)
    {
      v27 = 0;
      v18 = CFDictionaryGetValue(theDict, @"SPIValue");
      if (v18)
      {
        CFNumberGetValue(v18, kCFNumberIntType, &v27);
        v19 = v27;
      }

      else
      {
        v19 = 0;
      }

      *a4 = bswap32(v19);
    }

    if (a5)
    {
      v20 = CFDictionaryGetValue(theDict, @"LocalAddress");
      v21 = CFDictionaryGetValue(theDict, @"LocalPort");
      *a5 = NECreateAddressStructFromString(v20, v21, 0);
    }

    if (a6)
    {
      v22 = CFDictionaryGetValue(theDict, @"RemoteAddress");
      v23 = CFDictionaryGetValue(theDict, @"RemotePort");
      *a6 = NECreateAddressStructFromString(v22, v23, 0);
    }

    if (a7 && CFDictionaryContainsKey(theDict, @"IPSecInterface"))
    {
      v24 = CFDictionaryGetValue(theDict, @"IPSecInterface");
      CFStringGetCString(v24, a7, 24, 0x600u);
    }
  }

  else
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      v27 = 136315138;
      v28 = "NEIPSecDBFilloutBasicSAInfo";
      _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, "%s called with null saData", &v27, 0xCu);
    }
  }

  return theDict != 0;
}

dispatch_queue_t _NEIPSecDBGetQueue()
{
  result = _NEIPSecDBGetQueue_db_queue;
  if (!_NEIPSecDBGetQueue_db_queue)
  {
    v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    result = dispatch_queue_create("NEIPSecDB PFKey IO Queue", v1);
    _NEIPSecDBGetQueue_db_queue = result;
  }

  return result;
}

BOOL NEPFKeySendGetStats(NSObject *a1, unsigned int a2, unint64_t *a3, int a4, int a5, const UInt8 *a6, unsigned int a7)
{
  v7 = 0;
  v27 = *MEMORY[0x1E69E9840];
  if (a6 && a3 && a7)
  {
    v15 = 5 * a7;
    if (a4)
    {
      v16 = 56;
    }

    else
    {
      v16 = 32;
    }

    v17 = (v16 + 40 * a7) & 0xFFF8;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
    if (Mutable)
    {
      v19 = Mutable;
      v20 = 8 * v15;
      LODWORD(v25) = 5890;
      HIDWORD(v25) = (v17 >> 3);
      *&v26 = __PAIR64__(getpid(), a2);
      CFDataAppendBytes(v19, &v25, 16);
      if (a4)
      {
        v21 = *a3;
        v25 = 1310723;
        v26 = v21;
        if (a4 != 1)
        {
          *(&v26 + 1) = a3[1];
        }

        CFDataAppendBytes(v19, &v25, 24);
      }

      LODWORD(v26) = 0;
      LOWORD(v25) = (v20 + 16) >> 3;
      WORD1(v25) = 21;
      HIDWORD(v25) = a5;
      DWORD1(v26) = a7;
      CFDataAppendBytes(v19, &v25, 16);
      CFDataAppendBytes(v19, a6, 40 * a7);
      v7 = NEPFKeySend(a1, v19);
      if (CFDataGetLength(v19) != v17)
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          Length = CFDataGetLength(v19);
          LODWORD(v25) = 67109376;
          HIDWORD(v25) = v17;
          LOWORD(v26) = 2048;
          *(&v26 + 2) = Length;
          _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "NEPFKeySendGetStats: calculated message length (%u) != final message len (%zd)", &v25, 0x12u);
        }
      }

      CFRelease(v19);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

BOOL NEPFKeySend(NSObject *a1, const __CFData *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    v7 = ne_log_obj();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(v16.msg_name) = 0;
    v8 = "pfkey send invalid args";
    v9 = &v16;
    v10 = v7;
    v11 = 2;
    goto LABEL_13;
  }

  handle = dispatch_source_get_handle(a1);
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  *&v16.msg_control = 0u;
  *&v16.msg_name = 0u;
  v16.msg_iov = &BytePtr;
  *&v16.msg_iovlen = 1;
  v4 = sendmsg(handle, &v16, 0);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v12 = ne_log_obj();
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315138;
    v20 = v14;
    v8 = "PFKey write error: %s";
    v9 = buf;
    v10 = v12;
    v11 = 12;
LABEL_13:
    _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, v8, v9, v11);
    return 0;
  }

  v5 = v4;
  if (v4 >= Length)
  {
    return 1;
  }

  v15 = ne_log_obj();
  result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134218240;
    v20 = v5;
    v21 = 2048;
    v22 = Length;
    v8 = "PFKey failed to write an entire message (%zd < %zu)";
    v9 = buf;
    v10 = v15;
    v11 = 22;
    goto LABEL_13;
  }

  return result;
}

uint64_t __NEPFKeyOpen_block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  *(&v78[2] + 4) = *MEMORY[0x1E69E9840];
  bzero(__s, 0x2000uLL);
  v73[0] = __s;
  v73[1] = 0x2000;
  memset(&v57.msg_iovlen + 1, 0, 20);
  v57.msg_iov = v73;
  v57.msg_iovlen = 1;
  *&v57.msg_name = 0u;
  while (1)
  {
    v2 = recvmsg(*(v1 + 48), &v57, 0);
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    if (v2 <= 0xF)
    {
      v50 = ne_log_obj();
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        return memset_s(__s, 0x2000uLL, 0, 0x2000uLL);
      }

      *v58 = 134217984;
      *&v58[4] = v3;
      v51 = "Invalid PFKey message size: %zd";
      v52 = v58;
      v53 = v50;
      v54 = 12;
      goto LABEL_81;
    }

    *v58 = __s;
    *&v58[8] = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v4 = &__s[8 * v75];
    v5 = v76;
    v72 = 0;
    if (v75 >= 3uLL)
    {
      v6 = v76;
      while (1)
      {
        v5 = &v6[4 * *v6];
        if (*v6)
        {
          v7 = v4 >= v5;
        }

        else
        {
          v7 = 0;
        }

        if (!v7)
        {
          v5 = v6;
          goto LABEL_20;
        }

        v8 = v6[1];
        if (*&v58[8 * v8])
        {
          v19 = ne_log_obj();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_35;
          }

          v20 = v6[1];
          *buf = 67109120;
          LODWORD(v78[0]) = v20;
          v12 = v19;
          v13 = "duplicate extension type %u";
          goto LABEL_30;
        }

        if (v8 > 0x1D || ((1 << v8) & 0x3FFDFFFE) == 0)
        {
          break;
        }

        *&v58[8 * v8] = v6;
        v10 = v5 < v4 && v4 >= v5 + 2;
        v6 = v5;
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v37 = v6[1];
      *buf = 67109120;
      LODWORD(v78[0]) = v37;
      v12 = v36;
      v13 = "bad extension type %u";
      goto LABEL_30;
    }

LABEL_20:
    if (v5 != v4)
    {
      v11 = ne_log_obj();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *buf = 134218240;
      v78[0] = v5;
      LOWORD(v78[1]) = 2048;
      *(&v78[1] + 2) = v4;
      v12 = v11;
      v13 = "invalid pfkey message length p %p and ep %p";
      v14 = 22;
      goto LABEL_31;
    }

    v15 = *v58;
    if (!*v58)
    {
      v21 = ne_log_obj();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = v21;
        v13 = "msg/mhp is NULL";
        v14 = 2;
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    if (**v58 != 2)
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v46 = *v15;
        *buf = 67109120;
        LODWORD(v78[0]) = v46;
        v12 = v22;
        v13 = "invalid sadb version %u";
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    v16 = *(*v58 + 1);
    if (v16 >= 0x1B)
    {
      v17 = ne_log_obj();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v18 = v15[1];
      *buf = 67109120;
      LODWORD(v78[0]) = v18;
      v12 = v17;
      v13 = "invalid message type %u";
LABEL_30:
      v14 = 8;
      goto LABEL_31;
    }

    v23 = *(*v58 + 3);
    if (v23 > 9)
    {
LABEL_56:
      if (*(*v58 + 3))
      {
LABEL_64:
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
LABEL_46:
          v31 = v15[3];
          *buf = 67109120;
          LODWORD(v78[0]) = v31;
          v12 = v30;
          v13 = "invalid sa type %u";
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      if (v16 - 1 < 6 || v16 == 8)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_44:
          v28 = v15[3];
          v29 = v15[1];
          *buf = 67109376;
          LODWORD(v78[0]) = v28;
          WORD2(v78[0]) = 1024;
          *(v78 + 6) = v29;
          v12 = v27;
          v13 = "invalid sa type %u for message type %u";
          goto LABEL_72;
        }

        goto LABEL_35;
      }

      goto LABEL_49;
    }

    if (((1 << v23) & 0x1E0) != 0)
    {
      v30 = ne_log_obj();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    if (((1 << v23) & 0x20C) != 0)
    {
      v24 = v16 > 0x13;
      v25 = (1 << v16) & 0xDC000;
      if (!v24 && v25 != 0)
      {
        v27 = ne_log_obj();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_44;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v23 != 1)
      {
        goto LABEL_56;
      }

      if (v16 != 11)
      {
        goto LABEL_64;
      }
    }

LABEL_49:
    v32 = v60;
    if (!v60 || (v33 = *(&v60 + 1)) == 0)
    {
LABEL_55:
      (*(v1 + 32))(v58, *(v1 + 40));
      goto LABEL_35;
    }

    if (*(v60 + 4) == *(*(&v60 + 1) + 4))
    {
      v34 = *(v60 + 9);
      if (v34 == *(*(&v60 + 1) + 9))
      {
        if (v34 == 2 || v34 == 30)
        {
          goto LABEL_55;
        }

        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = *(v32 + 9);
          *buf = 67109120;
          LODWORD(v78[0]) = v45;
          v12 = v44;
          v13 = "invalid address family %u";
          goto LABEL_30;
        }
      }

      else
      {
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = *(v32 + 9);
          v43 = *(v33 + 9);
          *buf = 67109376;
          LODWORD(v78[0]) = v42;
          WORD2(v78[0]) = 1024;
          *(v78 + 6) = v43;
          v12 = v41;
          v13 = "src address family %u != dst address family %u";
LABEL_72:
          v14 = 14;
LABEL_31:
          _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, buf, v14);
        }
      }
    }

    else
    {
      v38 = ne_log_obj();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *(v32 + 4);
        v40 = *(v33 + 4);
        *buf = 67109376;
        LODWORD(v78[0]) = v39;
        WORD2(v78[0]) = 1024;
        *(v78 + 6) = v40;
        v12 = v38;
        v13 = "src address protocol %u != dst address proto %u";
        goto LABEL_72;
      }
    }

LABEL_35:
    memset_s(__s, 0x2000uLL, 0, v3);
  }

  if (v2)
  {
    v47 = __error();
    v48 = *v47;
    if (*v47 != 35)
    {
      if (strerror_r(*v47, v58, 0x80uLL))
      {
        v58[0] = 0;
      }

      v56 = ne_log_obj();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        LODWORD(v78[0]) = v48;
        WORD2(v78[0]) = 2080;
        *(v78 + 6) = v58;
        v51 = "PFKey socket received error: [%d] %s";
        v52 = buf;
        v53 = v56;
        v54 = 18;
        goto LABEL_81;
      }
    }
  }

  else
  {
    v55 = ne_log_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *v58 = 0;
      v51 = "PFKey socket received EOF";
      v52 = v58;
      v53 = v55;
      v54 = 2;
LABEL_81:
      _os_log_error_impl(&dword_1BA83C000, v53, OS_LOG_TYPE_ERROR, v51, v52, v54);
    }
  }

  return memset_s(__s, 0x2000uLL, 0, 0x2000uLL);
}

void NEIPSecDBReceivePFKeyMessage(uint64_t *a1, uint64_t a2)
{
  v170 = *MEMORY[0x1E69E9840];
  *v152 = 0;
  v151 = 0;
  if (!a2)
  {
    return;
  }

  v2 = g_IPSecDBSessions;
  if (!g_IPSecDBSessions)
  {
    return;
  }

  v171.length = CFArrayGetCount(g_IPSecDBSessions);
  v171.location = 0;
  if (!CFArrayContainsValue(v2, v171, a2))
  {
    return;
  }

  CFRetain(a2);
  if (!*(a2 + 80) || !*(a2 + 88))
  {
    goto LABEL_167;
  }

  v5 = *a1;
  v6 = *(*a1 + 1);
  if (v6 <= 6)
  {
    if (v6 - 1 >= 3)
    {
      if (v6 == 4)
      {
        goto LABEL_23;
      }

      if (v6 != 5)
      {
        goto LABEL_167;
      }
    }

    goto LABEL_22;
  }

  if (v6 > 0x1A)
  {
LABEL_20:
    if (v6 == 8)
    {
      goto LABEL_23;
    }

    if (v6 != 7)
    {
      goto LABEL_167;
    }

    goto LABEL_22;
  }

  if (((1 << v6) & 0x5DE000) == 0)
  {
    if (((1 << v6) & 0x4000600) == 0)
    {
      if (v6 == 23)
      {
        v10 = *(v5 + 12);
        if (v10 == getpid())
        {
          v11 = 0;
          goto LABEL_24;
        }

        goto LABEL_167;
      }

      goto LABEL_20;
    }

LABEL_22:
    v12 = *(v5 + 12);
    if (v12 != getpid())
    {
      goto LABEL_167;
    }

LABEL_23:
    v11 = NEIPSecDBGetSAWithMessage(a2, a1, v152);
    goto LABEL_24;
  }

  v7 = *(v5 + 12);
  if (v7 != getpid())
  {
    goto LABEL_167;
  }

  *v152 = -1;
  v8 = a1[5];
  if (v8)
  {
    v9 = v8 + 8;
  }

  else
  {
    v25 = a1[23];
    if (v25)
    {
      v9 = v25 + 8;
    }

    else
    {
      v9 = 0;
    }
  }

  v150 = v9;
  v26 = a1[6];
  if (v26)
  {
    v27 = v26 + 8;
  }

  else
  {
    v28 = a1[25];
    if (v28)
    {
      v27 = v28 + 8;
    }

    else
    {
      v27 = 0;
    }
  }

  v11 = 0;
  if (!*a1)
  {
    goto LABEL_24;
  }

  v29 = a1[18];
  if (!v29)
  {
    goto LABEL_24;
  }

  Count = CFDictionaryGetCount(*(a2 + 88));
  v11 = Count;
  if (!Count)
  {
    goto LABEL_24;
  }

  v149 = v27;
  v31 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v32 = malloc_type_calloc(v11, 8uLL, 0x80040B8603338uLL);
  v148 = v31;
  CFDictionaryGetKeysAndValues(*(a2 + 88), v31, v32);
  if (v11 < 1)
  {
LABEL_80:
    v34 = 0;
    v11 = 0;
    v53 = v148;
    if (v148)
    {
      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v33 = 0;
  while (1)
  {
    v34 = v32[v33];
    v35 = NEGetIntFromDictionary(v34, @"PolicyID", 0);
    if (!v35)
    {
      break;
    }

    if (v35 == *(v29 + 8))
    {
      *buf = 0;
      v53 = v148;
      CFNumberGetValue(v148[v33], kCFNumberCFIndexType, buf);
      *v152 = *buf;
      goto LABEL_96;
    }

LABEL_79:
    if (v11 == ++v33)
    {
      goto LABEL_80;
    }
  }

  Value = CFDictionaryGetValue(v34, @"Direction");
  v37 = Value;
  if (!Value)
  {
    goto LABEL_72;
  }

  if (!CFEqual(Value, @"In"))
  {
    if (CFEqual(v37, @"Out"))
    {
      v43 = CFDictionaryGetValue(v34, @"LocalAddress");
      v44 = CFDictionaryGetValue(v34, @"LocalPort");
      v37 = NECreateAddressStructFromString(v43, v44, 0);
      v45 = CFDictionaryGetValue(v34, @"RemoteAddress");
      v46 = CFDictionaryGetValue(v34, @"RemotePort");
      v40 = NECreateAddressStructFromString(v45, v46, 0);
      goto LABEL_73;
    }

    v37 = 0;
LABEL_72:
    v40 = 0;
    goto LABEL_73;
  }

  v38 = CFDictionaryGetValue(v34, @"LocalAddress");
  v39 = CFDictionaryGetValue(v34, @"LocalPort");
  v40 = NECreateAddressStructFromString(v38, v39, 0);
  v41 = CFDictionaryGetValue(v34, @"RemoteAddress");
  v42 = CFDictionaryGetValue(v34, @"RemotePort");
  v37 = NECreateAddressStructFromString(v41, v42, 0);
LABEL_73:
  if (!NEIPSecDBAddressesMatch(v37, v150) || !NEIPSecDBAddressesMatch(v40, v149))
  {
    if (v37)
    {
      free(v37);
    }

    if (v40)
    {
      free(v40);
    }

    goto LABEL_79;
  }

  *buf = 0;
  v53 = v148;
  CFNumberGetValue(v148[v33], kCFNumberCFIndexType, buf);
  *v152 = *buf;
  if (v37)
  {
    free(v37);
  }

  if (v40)
  {
    free(v40);
  }

LABEL_96:
  free(v53);
  v11 = v34;
LABEL_97:
  if (v32)
  {
    free(v32);
  }

LABEL_24:
  v13 = *(v5 + 1);
  if (!v11 && v13 != 23)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(v5 + 1);
      v16 = NEIPSecDBExtractSPIFromPFKeyMessage(a1);
      *buf = 138412802;
      *&buf[4] = a2;
      v162 = 1024;
      v163 = v15;
      v164 = 1024;
      v165 = bswap32(v16);
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_INFO, "%@ Received PFKey SA Message that could not be matched (type %d, SPI %08X)", buf, 0x18u);
    }

    goto LABEL_167;
  }

  v17 = *(v5 + 2);
  if (!*(v5 + 2))
  {
    if (v13 != 23 || NEIPSecDBStatsHandleReply(a2, a1, v152, &v151 + 1, &v151))
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(v5 + 1);
        v22 = v152[0];
        v23 = *(v5 + 12);
        v24 = NEIPSecDBExtractSPIFromPFKeyMessage(a1);
        *buf = 138413314;
        *&buf[4] = a2;
        v162 = 1024;
        v163 = v21;
        v164 = 1024;
        v165 = v22;
        v166 = 1024;
        v167 = v23;
        v168 = 1024;
        v169 = bswap32(v24);
        _os_log_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_INFO, "%@ Received PFKey Message associated with DB (type %d, SAID %u, pid %u, SPI %08X)", buf, 0x24u);
      }
    }

    switch(*(v5 + 1))
    {
      case 1:
        v79 = a1[1];
        if (v79)
        {
          v80 = bswap32(*(v79 + 4));
          v81 = @"SPIValue";
          goto LABEL_134;
        }

        v19 = 1;
        goto LABEL_160;
      case 2:
        v50 = v152[0];
        v51 = *(a2 + 96);
        v19 = 2;
        goto LABEL_161;
      case 3:
        v50 = v152[0];
        v51 = *(a2 + 96);
        v19 = 3;
        goto LABEL_161;
      case 4:
        NERemoveValueFromIntKeyedDictionary(*(a2 + 80), v152[0]);
        v78 = *(v5 + 12);
        if (v78 == getpid())
        {
          goto LABEL_159;
        }

        v70 = v152[0];
        v71 = a2;
        v72 = 9216;
        goto LABEL_137;
      case 5:
        v73 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!Mutable)
        {
          goto LABEL_159;
        }

        v75 = Mutable;
        v76 = *(v5 + 3);
        if (v76 == 3)
        {
          v77 = @"ESP";
        }

        else
        {
          if (v76 != 2)
          {
            goto LABEL_173;
          }

          v77 = @"AH";
        }

        CFDictionaryAddValue(Mutable, @"IPSecProtocol", v77);
LABEL_173:
        v96 = a1[9];
        if (v96)
        {
          NEAddSensitiveDataToDictionary(v75, @"EncryptionKey", (v96 + 8), *(v96 + 4) >> 3);
        }

        v97 = a1[8];
        if (v97)
        {
          NEAddSensitiveDataToDictionary(v75, @"AuthKey", (v97 + 8), *(v97 + 4) >> 3);
        }

        v98 = a1[22];
        if (v98)
        {
          if (*(v98 + 52))
          {
            v99 = CFStringCreateWithCString(v73, (v98 + 52), 0x600u);
            if (v99)
            {
              v100 = v99;
              CFDictionaryAddValue(v75, @"IPSecInterface", v99);
              CFRelease(v100);
            }
          }

          if (*(v98 + 28))
          {
            v101 = CFStringCreateWithCString(v73, (v98 + 28), 0x600u);
            if (v101)
            {
              v102 = v101;
              CFDictionaryAddValue(v75, @"OutgoingInterface", v101);
              CFRelease(v102);
            }
          }

          if (*(v98 + 4))
          {
            v103 = CFStringCreateWithCString(v73, (v98 + 4), 0x600u);
            if (v103)
            {
              v104 = v103;
              CFDictionaryAddValue(v75, @"InternalInterface", v103);
              CFRelease(v104);
            }
          }

          if (*(v98 + 76))
          {
            CFDictionaryAddValue(v75, @"IntializeDisabled", *MEMORY[0x1E695E4D0]);
          }
        }

        v105 = a1[2];
        if (v105)
        {
          v107 = a1[3];
          v106 = a1[4];
          v108 = time(0);
          NEAddDateToDictionary(v75, @"CreateTime", *(v105 + 16));
          NEAddDateToDictionary(v75, @"CurrentTime", v108);
          NEAddIntToDictionary(v75, @"DiffTime", v108 - *(v105 + 16));
          v109 = *(v105 + 24);
          if (v109)
          {
            NEAddDateToDictionary(v75, @"LastUseTime", v109);
          }

          NEAddIntToDictionary(v75, @"CurrentBytes", *(v105 + 8));
          NEAddIntToDictionary(v75, @"CurrentAllocations", *(v105 + 4));
          if (v107)
          {
            NEAddIntToDictionary(v75, @"HardLifetime", v107[4]);
            NEAddIntToDictionary(v75, @"HardUseTime", v107[6]);
            NEAddIntToDictionary(v75, @"HardBytes", v107[2]);
            NEAddIntToDictionary(v75, @"SoftAllocations", v107[1]);
          }

          if (v106)
          {
            NEAddIntToDictionary(v75, @"SoftLifetime", v106[4]);
            NEAddIntToDictionary(v75, @"SoftUseTime", v106[6]);
            NEAddIntToDictionary(v75, @"SoftBytes", v106[2]);
            NEAddIntToDictionary(v75, @"SoftAllocations", v106[1]);
          }
        }

        v110 = a1[1];
        if (!v110)
        {
          goto LABEL_224;
        }

        v111 = *(v110 + 9);
        if (v111 <= 3)
        {
          CFDictionaryAddValue(v75, @"State", off_1E7F091E8[v111]);
        }

        NEAddIntToDictionary(v75, @"SPIValue", bswap32(*(v110 + 4)));
        NEAddIntToDictionary(v75, @"ReplayWindowSize", *(v110 + 8));
        v112 = *(v110 + 11);
        switch(v112)
        {
          case 1:
            v113 = @"DES";
            break;
          case 12:
            v113 = @"AES-128";
            break;
          case 2:
            v113 = @"3DES";
            break;
          default:
            goto LABEL_215;
        }

        CFDictionaryAddValue(v75, @"EncryptionAlgorithm", v113);
LABEL_215:
        if (*(v110 + 10) - 1) <= 7u && ((0xE3u >> (*(v110 + 10) - 1)))
        {
          CFDictionaryAddValue(v75, @"AuthAlgorithm", off_1E7F09208[(*(v110 + 10) - 1)]);
        }

        if ((*(v110 + 12) & 2) == 0)
        {
          goto LABEL_224;
        }

        v117 = *MEMORY[0x1E695E4D0];
        CFDictionaryAddValue(v75, @"NATTraversal", *MEMORY[0x1E695E4D0]);
        v118 = *(v110 + 12);
        if ((v118 & 4) != 0)
        {
          CFDictionaryAddValue(v75, @"NATTKeepAlive", v117);
          v118 = *(v110 + 12);
          if ((v118 & 0x8000) == 0)
          {
LABEL_221:
            if ((v118 & 0x1000) == 0)
            {
              goto LABEL_223;
            }

            goto LABEL_222;
          }
        }

        else if ((v118 & 0x8000) == 0)
        {
          goto LABEL_221;
        }

        CFDictionaryAddValue(v75, @"NATTKeepAliveOffload", v117);
        if ((*(v110 + 12) & 0x1000) != 0)
        {
LABEL_222:
          CFDictionaryAddValue(v75, @"NATTDetectedPeer", v117);
        }

LABEL_223:
        NEAddIntToDictionary(v75, @"ReplayWindowSize", *(v110 + 16));
LABEL_224:
        v119 = a1[19];
        if (!v119)
        {
          goto LABEL_232;
        }

        v120 = *(v119 + 4);
        if (v120 == 1)
        {
          v121 = @"Transport";
        }

        else
        {
          if (v120 != 2)
          {
            goto LABEL_230;
          }

          v121 = @"Tunnel";
        }

        CFDictionaryAddValue(v75, @"Mode", v121);
LABEL_230:
        v122 = *(v119 + 12);
        if (v122)
        {
          NEAddIntToDictionary(v75, @"UniqueID", v122);
        }

LABEL_232:
        v123 = CFDictionaryGetValue(v11, @"Direction");
        if (v123)
        {
          v124 = CFEqual(v123, @"In");
          v125 = v124 == 0;
          if (v124)
          {
            v126 = 6;
LABEL_237:
            v127 = a1[v126];
            if (v127)
            {
              goto LABEL_241;
            }

            v128 = 25;
            if (v125)
            {
              v128 = 23;
            }

            v127 = a1[v128];
            if (v127)
            {
LABEL_241:
              NEAddAddressToDictionary(v75, @"LocalAddress", v127 + 8);
              NEAddPortToDictionary(v75, @"LocalPort", v127 + 8);
              NEAddIntToDictionary(v75, @"LocalPrefix", *(v127 + 5));
              v129 = *(v127 + 4);
            }

            else
            {
              v129 = 255;
            }

            v130 = 5;
            if (v125)
            {
              v130 = 6;
            }

            v131 = a1[v130];
            if (v131)
            {
              goto LABEL_248;
            }

            v132 = 23;
            if (v125)
            {
              v132 = 25;
            }

            v131 = a1[v132];
            if (v131)
            {
LABEL_248:
              NEAddAddressToDictionary(v75, @"RemoteAddress", v131 + 8);
              NEAddPortToDictionary(v75, @"RemotePort", v131 + 8);
              NEAddIntToDictionary(v75, @"RemotePrefix", *(v131 + 5));
            }

            if (v129 != 255)
            {
              NEAddIntToDictionary(v75, @"UpperLayerProtocol", v129);
            }

            NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v152[0], 1, v75);
            v133 = v75;
LABEL_292:
            CFRelease(v133);
            goto LABEL_163;
          }
        }

        else
        {
          v125 = 1;
        }

        v126 = 5;
        goto LABEL_237;
      case 6:
        v70 = v152[0];
        v71 = a2;
        v72 = 8448;
        goto LABEL_137;
      case 8:
        v70 = v152[0];
        v71 = a2;
        v72 = 8704;
        goto LABEL_137;
      case 0xE:
        v82 = a1[18];
        if (v82)
        {
          v80 = *(v82 + 8);
          v81 = @"PolicyID";
LABEL_134:
          v83 = v11;
LABEL_158:
          NEAddIntToDictionary(v83, v81, v80);
LABEL_159:
          v19 = *(v5 + 1);
        }

        else
        {
          v19 = 14;
        }

LABEL_160:
        v50 = v152[0];
        v51 = *(a2 + 96);
LABEL_161:
        v52 = 1;
        goto LABEL_162;
      case 0xF:
      case 0x16:
        NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v152[0], 1, 0);
        goto LABEL_90;
      case 0x10:
        v55 = *MEMORY[0x1E695E480];
        v56 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!v56)
        {
          goto LABEL_159;
        }

        v57 = v56;
        v58 = a1[22];
        if (v58)
        {
          if (*(v58 + 52))
          {
            v59 = CFStringCreateWithCString(v55, (v58 + 52), 0x600u);
            if (v59)
            {
              v60 = v59;
              CFDictionaryAddValue(0, @"IPSecInterface", v59);
              CFRelease(v60);
            }
          }

          if (*(v58 + 28))
          {
            v61 = CFStringCreateWithCString(v55, (v58 + 28), 0x600u);
            if (v61)
            {
              v62 = v61;
              CFDictionaryAddValue(0, @"OutgoingInterface", v61);
              CFRelease(v62);
            }
          }

          if (*(v58 + 4))
          {
            v63 = CFStringCreateWithCString(v55, (v58 + 4), 0x600u);
            if (v63)
            {
              v64 = v63;
              CFDictionaryAddValue(0, @"InternalInterface", v63);
              CFRelease(v64);
            }
          }

          if (*(v58 + 76))
          {
            CFDictionaryAddValue(0, @"IntializeDisabled", *MEMORY[0x1E695E4D0]);
          }
        }

        v65 = a1[18];
        if (!v65)
        {
          goto LABEL_276;
        }

        v66 = *(v65 + 6);
        if (v66 == 1)
        {
          v67 = @"In";
        }

        else
        {
          if (v66 != 2)
          {
            goto LABEL_205;
          }

          v67 = @"Out";
        }

        CFDictionaryAddValue(v57, @"Direction", v67);
LABEL_205:
        NEAddIntToDictionary(v57, @"PolicyID", *(v65 + 2));
        v114 = v65[2];
        if (v114 <= 5)
        {
          CFDictionaryAddValue(v57, @"PolicyType", off_1E7F09248[v114]);
        }

        if (*v65 < 3u)
        {
          goto LABEL_274;
        }

        v115 = *(v65 + 21);
        if (*(v65 + 21))
        {
          if (v115 == 3)
          {
            v116 = @"Unique";
          }

          else
          {
            if (v115 != 2)
            {
              goto LABEL_259;
            }

            v116 = @"Require";
          }
        }

        else
        {
          v116 = @"None";
        }

        CFDictionaryAddValue(v57, @"Level", v116);
LABEL_259:
        v134 = *(v65 + 20);
        if (v134 == 1)
        {
          v135 = @"Transport";
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_264;
          }

          v135 = @"Tunnel";
        }

        CFDictionaryAddValue(v57, @"Mode", v135);
LABEL_264:
        v136 = v65[9];
        if (v136 == 50)
        {
          v137 = @"ESP";
        }

        else
        {
          if (v136 != 51)
          {
            goto LABEL_269;
          }

          v137 = @"AH";
        }

        CFDictionaryAddValue(v57, @"IPSecProtocol", v137);
LABEL_269:
        if (v65[11])
        {
          NEAddIntToDictionary(v57, @"UniqueID", v65[11]);
        }

        v138 = v65[8];
        if (v138 >= 9)
        {
          v139 = *(v65 + 24);
          if (v139 + *(v65 + v139 + 24) + 8 == v138)
          {
            NEAddAddressToDictionary(v57, @"OuterLocalAddress", (v65 + 12));
            NEAddAddressToDictionary(v57, @"OuterRemoteAddress", v65 + v139 + 24);
          }
        }

LABEL_274:
        if (*(v65 + 6) == 1)
        {
          v140 = 0;
          v141 = 6;
        }

        else
        {
LABEL_276:
          v140 = 1;
          v141 = 5;
        }

        v142 = a1[v141];
        if (v142)
        {
          goto LABEL_281;
        }

        v143 = 25;
        if (v140)
        {
          v143 = 23;
        }

        v142 = a1[v143];
        if (v142)
        {
LABEL_281:
          NEAddAddressToDictionary(v57, @"LocalAddress", v142 + 8);
          NEAddPortToDictionary(v57, @"LocalPort", v142 + 8);
          NEAddIntToDictionary(v57, @"LocalPrefix", *(v142 + 5));
          v144 = *(v142 + 4);
        }

        else
        {
          v144 = 255;
        }

        v145 = 5;
        if (v140)
        {
          v145 = 6;
        }

        v146 = a1[v145];
        if (v146)
        {
          goto LABEL_288;
        }

        v147 = 23;
        if (v140)
        {
          v147 = 25;
        }

        v146 = a1[v147];
        if (v146)
        {
LABEL_288:
          NEAddAddressToDictionary(v57, @"RemoteAddress", v146 + 8);
          NEAddPortToDictionary(v57, @"RemotePort", v146 + 8);
          NEAddIntToDictionary(v57, @"RemotePrefix", *(v146 + 5));
        }

        if (v144 != 255)
        {
          NEAddIntToDictionary(v57, @"UpperLayerProtocol", v144);
        }

        NEIPSecDBNotifyRequest(*(a2 + 96), *(v5 + 1), v152[0], 1, v57);
        v133 = v57;
        goto LABEL_292;
      case 0x17:
        if (HIBYTE(v151) == 1)
        {
          v70 = v152[0];
          v71 = a2;
          v72 = 10240;
        }

        else
        {
          if (v151 != 1)
          {
            goto LABEL_163;
          }

          v70 = v152[0];
          v71 = a2;
          v72 = 8208;
        }

LABEL_137:
        NEIPSecDBNotifyClient(v71, v70, v72);
        goto LABEL_163;
      case 0x1A:
        v68 = CFDictionaryGetValue(v11, @"Direction");
        if (v68)
        {
          v69 = CFEqual(v68, @"In") == 0;
        }

        else
        {
          v69 = 1;
        }

        v84 = a1[22];
        if (v84)
        {
          v85 = MEMORY[0x1E695E480];
          if (*(v84 + 52))
          {
            v86 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (v84 + 52), 0x600u);
            if (v86)
            {
              v87 = v86;
              CFDictionarySetValue(v11, @"IPSecInterface", v86);
              CFRelease(v87);
            }
          }

          v89 = *(v84 + 28);
          v88 = (v84 + 28);
          if (v89)
          {
            v90 = CFStringCreateWithCString(*v85, v88, 0x600u);
            if (v90)
            {
              v91 = v90;
              CFDictionarySetValue(v11, @"OutgoingInterface", v90);
              CFRelease(v91);
            }
          }
        }

        v92 = 28;
        if (v69)
        {
          v92 = 27;
        }

        v93 = a1[v92];
        if (v93)
        {
          CFDictionaryRemoveValue(v11, @"LocalAddress");
          CFDictionaryRemoveValue(v11, @"LocalPort");
          CFDictionaryRemoveValue(v11, @"LocalPrefix");
          NEAddAddressToDictionary(v11, @"LocalAddress", v93 + 8);
          NEAddPortToDictionary(v11, @"LocalPort", v93 + 8);
          NEAddIntToDictionary(v11, @"LocalPrefix", *(v93 + 5));
        }

        v94 = 27;
        if (v69)
        {
          v94 = 28;
        }

        v95 = a1[v94];
        if (!v95)
        {
          goto LABEL_159;
        }

        CFDictionaryRemoveValue(v11, @"RemoteAddress");
        CFDictionaryRemoveValue(v11, @"RemotePort");
        CFDictionaryRemoveValue(v11, @"RemotePrefix");
        NEAddAddressToDictionary(v11, @"RemoteAddress", v95 + 8);
        NEAddPortToDictionary(v11, @"RemotePort", v95 + 8);
        v80 = *(v95 + 5);
        v83 = v11;
        v81 = @"RemotePrefix";
        goto LABEL_158;
      default:
        goto LABEL_163;
    }
  }

  if (strerror_r(*(v5 + 2), buf, 0x80uLL))
  {
    buf[0] = 0;
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v54 = *(v5 + 1);
    *v153 = 138413058;
    v154 = a2;
    v155 = 1024;
    v156 = v54;
    v157 = 1024;
    v158 = v17;
    v159 = 2080;
    v160 = buf;
    _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%@ Received PFKey Message (type %d) reporting error: [%d] %s", v153, 0x22u);
  }

  v19 = *(v5 + 1);
  if (v19 > 0xD)
  {
    if (*(v5 + 1) <= 0xFu)
    {
      if (v19 == 14)
      {
        v49 = *(a2 + 88);
        goto LABEL_94;
      }

      if (v19 != 15)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v19 == 16)
      {
        goto LABEL_95;
      }

      if (v19 != 22)
      {
        if (v19 != 26)
        {
          goto LABEL_163;
        }

        goto LABEL_84;
      }
    }

    NEIPSecDBNotifyRequest(*(a2 + 96), v19, v152[0], 0, 0);
    v48 = *(v5 + 2);
    if (v48 == 22 || v48 == 2)
    {
LABEL_90:
      v47 = *(a2 + 88);
      goto LABEL_91;
    }
  }

  else
  {
    if (*(v5 + 1) <= 2u)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_163;
        }

        goto LABEL_84;
      }
    }

    else if (v19 != 3)
    {
      if (v19 != 4 && v19 != 5)
      {
        goto LABEL_163;
      }

LABEL_84:
      NEIPSecDBNotifyRequest(*(a2 + 96), v19, v152[0], 0, 0);
      if (*(v5 + 2) != 2)
      {
        goto LABEL_163;
      }

      v47 = *(a2 + 80);
LABEL_91:
      NERemoveValueFromIntKeyedDictionary(v47, v152[0]);
      goto LABEL_163;
    }

    v49 = *(a2 + 80);
LABEL_94:
    NERemoveValueFromIntKeyedDictionary(v49, v152[0]);
    v19 = *(v5 + 1);
LABEL_95:
    v50 = v152[0];
    v51 = *(a2 + 96);
    v52 = 0;
LABEL_162:
    NEIPSecDBNotifyRequest(v51, v19, v50, v52, 0);
  }

LABEL_163:
  if (!CFDictionaryGetCount(*(a2 + 80)))
  {
    NEIPSecDBNotifyRequest(*(a2 + 96), 9, 0, 1, 0);
  }

  if (!CFDictionaryGetCount(*(a2 + 88)))
  {
    NEIPSecDBNotifyRequest(*(a2 + 96), 19, 0, 1, 0);
  }

LABEL_167:
  CFRelease(a2);
}

BOOL NEIPSecDBStatsHandleReply(uint64_t result, uint64_t *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*a2 || (v6 = a2[20]) == 0 || (v7 = a2[21]) == 0)
  {
    v16 = ne_log_obj();
    v12 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    v36 = 136315138;
    v37 = "NEIPSecDBStatsHandleReply";
    v13 = "%s: Bad sadb getsastat response";
    v14 = v16;
    v15 = 12;
    goto LABEL_31;
  }

  v8 = *(v6 + 8);
  if (!v8)
  {
    v17 = ne_log_obj();
    v12 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    v18 = *(v5 + 1);
    v36 = 136315394;
    v37 = "NEIPSecDBStatsHandleReply";
    v38 = 1024;
    v39 = v18;
    v13 = "%s: msg type %d: session-id[0] is invalid.";
LABEL_20:
    v14 = v17;
    v15 = 18;
LABEL_31:
    _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, v13, &v36, v15);
    return 0;
  }

  *a3 = v8;
  if (!*(v7 + 12))
  {
    v17 = ne_log_obj();
    v12 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    v19 = *(v5 + 1);
    v36 = 136315394;
    v37 = "NEIPSecDBStatsHandleReply";
    v38 = 1024;
    v39 = v19;
    v13 = "%s: msg type %d: sastats is invalid.";
    goto LABEL_20;
  }

  if (!result)
  {
    v35 = ne_log_obj();
    v12 = os_log_type_enabled(v35, OS_LOG_TYPE_FAULT);
    if (!v12)
    {
      return v12;
    }

    v36 = 136315138;
    v37 = "NEIPSecDBStatsUpdate";
    _os_log_fault_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_FAULT, "%s called with null session", &v36, 0xCu);
    return 0;
  }

  v9 = *(v7 + 4);
  if (v8)
  {
    v10 = (v9 - 1) >= 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = ne_log_obj();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!v12)
    {
      return v12;
    }

    LOWORD(v36) = 0;
    v13 = "invalid arguments";
    v14 = v11;
    v15 = 2;
    goto LABEL_31;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v22 = *(result + 104);
  if (!v22)
  {
    return 0;
  }

  while (*(v22 + 4) != v8 && *(v22 + 5) != v8)
  {
    v12 = 0;
    v22 = *v22;
    if (!v22)
    {
      return v12;
    }
  }

  v23 = *(v7 + 32);
  if (v9 != 1)
  {
    if (v22[7] != v23)
    {
      v22[7] = v23;
      *(v22 + 80) = 1;
      goto LABEL_39;
    }

LABEL_37:
    v24 = vadd_s32(*(v22 + 68), 0x100000001);
    *(v22 + 68) = v24;
    v25 = v24.i32[0];
    goto LABEL_40;
  }

  if (v22[6] == v23)
  {
    goto LABEL_37;
  }

  v22[6] = v23;
  *(v22 + 81) = 1;
LABEL_39:
  v25 = *(v22 + 17) + 1;
  *(v22 + 17) = v25;
LABEL_40:
  if (v25 != *(v22 + 16))
  {
    return 1;
  }

  v26 = *(v22 + 8);
  if (!v26)
  {
LABEL_49:
    v31 = *(v22 + 9);
    if (v31)
    {
      if (*(v22 + 80) == 1 && (*(v22 + 81) & 1) == 0)
      {
        v32 = *(v22 + 19) + 1;
        *(v22 + 19) = v32;
        if (*(v22 + 10) * v32 >= v31)
        {
          v33 = ne_log_obj();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(v22 + 10) * *(v22 + 19);
            v36 = 136315394;
            v37 = "NEIPSecDBStatsUpdate";
            v38 = 1024;
            v39 = v34;
            _os_log_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_DEFAULT, "%s: no incoming traffic on SA for past %d secs", &v36, 0x12u);
          }

          if (a5)
          {
            *a5 = 1;
          }

          *(v22 + 40) = 0;
          *(v22 + 19) = 0;
        }
      }

      else
      {
        *(v22 + 19) = 0;
        *(v22 + 40) = 0;
      }
    }

    return 1;
  }

  if (*(v22 + 18) != v25)
  {
    *(v22 + 11) = 0;
    goto LABEL_49;
  }

  v27 = *(v22 + 10);
  v28 = *(v22 + 11) + 1;
  *(v22 + 11) = v28;
  if (v27 * v28 < v26)
  {
    goto LABEL_49;
  }

  v29 = ne_log_obj();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = *(v22 + 10) * *(v22 + 11);
    v36 = 136315394;
    v37 = "NEIPSecDBStatsUpdate";
    v38 = 1024;
    v39 = v30;
    _os_log_impl(&dword_1BA83C000, v29, OS_LOG_TYPE_INFO, "%s: SA is idle for past %d secs", &v36, 0x12u);
  }

  v12 = 1;
  if (a4)
  {
    *a4 = 1;
  }

  return v12;
}

uint64_t NEIPSecDBExtractSPIFromPFKeyMessage(void *a1)
{
  result = 0;
  v3 = *(*a1 + 1);
  if (v3 <= 0x1A)
  {
    v4 = 1 << v3;
    if ((v4 & 0x40006AE) != 0)
    {
      v5 = *(*a1 + 12);
      if (v5 != getpid() || !*a1)
      {
        return 0;
      }
    }

    else if ((v4 & 0x110) == 0)
    {
      return result;
    }

    v6 = a1[1];
    if (v6)
    {
      return *(v6 + 4);
    }

    return 0;
  }

  return result;
}

__CFString *__NEIPSecDBCopyDescription(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<NEIPSecDB %p [%p]> {", a1, v2);
  if (a1)
  {
    CFStringAppendFormat(Mutable, 0, @"UniqueIndex = %llu", a1[2]);
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

NSObject *NEIPSecDBNotifyRequest(NSObject *result, int a2, int a3, char a4, CFTypeRef cf)
{
  if (result)
  {
    v5 = result;
    while (1)
    {
      isa = v5->isa;
      if (LODWORD(v5[3].isa) == a2 && HIDWORD(v5[3].isa) == a3)
      {
        break;
      }

      v5 = v5->isa;
      if (!isa)
      {
        return result;
      }
    }

    LOBYTE(v5[4].isa) = a4;
    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    v5[5].isa = v7;
    result = v5[2].isa;
    if (result)
    {

      return dispatch_semaphore_signal(result);
    }
  }

  return result;
}

CFMutableDictionaryRef NEVirtualInterfaceCopyStatistics(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      *v16 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      *v13 = xmmword_1BAA4E5F0;
      v14 = *(a1 + 292);
      v15 = 1;
      v8 = 180;
      if (sysctl(v13, 6u, v16, &v8, 0, 0) == -1)
      {
        v3 = ne_log_obj();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v5 = __error();
          v6 = strerror(*v5);
          *buf = 136315394;
          v10 = a1 + 265;
          v11 = 2080;
          v12 = v6;
          _os_log_error_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_ERROR, "Failed to get statistics from interface %s: %s", buf, 0x16u);
        }
      }

      NEAddInt64ToDictionary(Mutable, @"BytesIn", v24);
      NEAddInt64ToDictionary(Mutable, @"BytesOut", *(&v24 + 1));
      NEAddInt64ToDictionary(Mutable, @"PacketsIn", *(&v21 + 1));
      NEAddInt64ToDictionary(Mutable, @"PacketsOut", *(&v22 + 1));
      NEAddInt64ToDictionary(Mutable, @"ErrorsIn", v22);
      NEAddInt64ToDictionary(Mutable, @"ErrorsOut", v23);
    }
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v16 = 136315138;
      *&v16[4] = "NEVirtualInterfaceCopyStatistics";
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null interface", v16, 0xCu);
    }

    return 0;
  }

  return Mutable;
}

void NEAddInt64ToDictionary(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionaryAddValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

void *sub_1BA842654@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BA842664()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA8426AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA842754()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8427AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA8427E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA84283C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA84288C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA8428D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA842920()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842958()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8429CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA842A1C(const void *a1)
{
  v2 = _Block_copy(a1);
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, 1);
    _Block_release(v3);
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1BA842A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842ADC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA842B70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842BCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECD8, &unk_1BAA4D240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA842C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BA842D0C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NEURLFilterPrefilter.PrefilterData(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BA842DB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842DE8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BA842E38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA842E80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA842ED0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA842F30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA842F68()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA842FBC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA843018()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BA843060()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8430B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_1BA84985C(v3 + 64, a2, &qword_1EBC0ED60, &qword_1BAA4D460);
}

double sub_1BA84314C@<D0>(double *a1@<X8>)
{
  sub_1BAA39FDC();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1BA8431B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16NetworkExtension18NEURLFilterManager_localizedDescription;
  swift_beginAccess();
  return sub_1BA84985C(v3 + v4, a2, &qword_1EBC0ED68, &qword_1BAA4D468);
}

uint64_t sub_1BA843228()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA843274()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA8432B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EDF8, &unk_1BAA4D850);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA843384()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE18, &qword_1BAA4D880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA843484()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE30, &qword_1BAA4D8A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84352C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE68, &qword_1BAA4D8C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84364C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA843694()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1BA8436CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA843714()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA84375C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1BA8437AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1BA8437F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA843844()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BA843888()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8438C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1BA84396C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BA8439C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1BA843A10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1BA843A60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BAA39FDC();
  *a1 = v3;
  return result;
}

uint64_t sub_1BA843B90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EE78, &qword_1BAA4D8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

char *sub_1BA843CEC@<X0>(char **a1@<X8>)
{
  result = NEVPNIKEv2SecurityAssociationParameters.postQuantumKeyExchangeMethods.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BA8447E4()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA844858(uint64_t a1)
{
  v2 = *v1;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v2);
  return sub_1BAA3A1FC();
}

void sub_1BA8448AC(const UInt8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = [(NSData *)v6 sensitiveDataWithBytes:a1 length:a2 - a1];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1BAA3969C();
      v11 = v10;

      *a3 = v9;
      a3[1] = v11;
    }

    else
    {
      sub_1BA8497B4();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA844C18(uint64_t a1@<X8>)
{
  v38 = a1;
  v3 = sub_1BAA399FC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BAA39DCC();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BAA39A9C();
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BAA39A7C();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAA39A8C();
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A6C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA3998C();
  v54 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v51 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v36 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v36 - v23;
  v37 = v1;
  v25 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  v26 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8);
  if ((v26 & 0x2000000000000000) != 0)
  {
    v52 = *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
    v53 = v26 & 0xDFFFFFFFFFFFFFFFLL;
    sub_1BA8498C4(v25, v26 & 0xDFFFFFFFFFFFFFFFLL);
    sub_1BAA3997C();
    if (v2)
    {
      return;
    }

    v29 = v54;
    (*(v54 + 32))(v24, v22, v14);
  }

  else
  {
    sub_1BA84BC48(*(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key), *(v1 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8));
    v27 = sub_1BA849B04(v25);
    if (v2)
    {
      sub_1BA84BCB8(v25, v26);
      return;
    }

    v52 = v27;
    v53 = v28;
    sub_1BAA3997C();
    sub_1BA84BCB8(v25, v26);
    v30 = *(v54 + 32);
    v29 = v54;
    v30(v22, v19, v14);
    v30(v24, v22, v14);
  }

  (*(v29 + 16))(v51, v24, v14);
  (*(v39 + 104))(v11, *MEMORY[0x1E6966520], v40);
  (*(v41 + 104))(v42, *MEMORY[0x1E6966510], v43);
  (*(v45 + 104))(v44, *MEMORY[0x1E6966530], v47);
  sub_1BAA39A5C();
  v31 = v48;
  sub_1BAA39DBC();
  sub_1BAA39DAC();
  v33 = v32;
  (*(v49 + 8))(v31, v50);
  if (v33 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v34 = v37;
    v35 = *(v37 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
    v52 = *(v37 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
    v53 = v35;
    sub_1BA8498C4(v52, v35);
    sub_1BAA399EC();
    sub_1BA8498C4(*(v34 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v34 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
    sub_1BAA39AAC();
    (*(v54 + 8))(v24, v14);
  }
}

void sub_1BA845284(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v86 = a2;
  v67 = a3;
  v4 = sub_1BAA399FC();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v63[1] = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63[0] = v63 - v7;
  v8 = sub_1BAA39DCC();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v77 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BAA39A9C();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v74 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A7C();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v73 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39A8C();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v70 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAA39A6C();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v84 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9F8, &qword_1BAA4CA48);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v63 - v21;
  v23 = sub_1BAA39A1C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v63 - v27;
  v29 = sub_1BAA399CC();
  v82 = *(v29 - 8);
  v83 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v80 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v63 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = v63 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v81 = v63 - v38;
  v66 = v3;
  v40 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
  v39 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8);
  if ((v39 & 0x2000000000000000) != 0)
  {
    v87 = *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key);
    v88 = v39 & 0xDFFFFFFFFFFFFFFFLL;
    sub_1BA8498C4(v40, v39 & 0xDFFFFFFFFFFFFFFFLL);
    v43 = v89;
    sub_1BAA399AC();
    if (!v43)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1BA84BC48(*(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key), *(v3 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_key + 8));
    v41 = v40;
    v42 = v89;
    sub_1BAA39A0C();
    if (v42)
    {

      (*(v24 + 56))(v22, 1, 1, v23);
      sub_1BA84BC58(v22, &qword_1EBC0E9F8, &qword_1BAA4CA48);
      sub_1BA84BC48(v40, v39);
      v60 = sub_1BA849B04(v41);
      v62 = v61;
      sub_1BA84BCB8(v40, v39);
      v87 = v60;
      v88 = v62;
      sub_1BAA399AC();
      sub_1BA84BCB8(v40, v39);
      v37 = v34;
LABEL_5:
      v45 = v81;
      v44 = v82;
      v46 = v83;
      (*(v82 + 32))(v81, v37, v83);
      (*(v44 + 16))(v80, v45, v46);
      (*(v68 + 104))(v70, *MEMORY[0x1E6966520], v69);
      (*(v71 + 104))(v73, *MEMORY[0x1E6966510], v72);
      (*(v75 + 104))(v74, *MEMORY[0x1E6966530], v76);
      sub_1BAA39A5C();
      v47 = v77;
      sub_1BAA39DBC();
      sub_1BAA39DAC();
      v49 = v48;
      (*(v78 + 8))(v47, v79);
      if (v49 >> 60 != 15)
      {
        v50 = v66;
        v52 = *(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
        v87 = *(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
        v51 = v87;
        v88 = v52;
        sub_1BA8498C4(v85, v86);
        sub_1BA8498C4(v51, v52);
        sub_1BAA399EC();
        sub_1BA8498C4(*(v50 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v50 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
        v53 = v83;
        sub_1BAA39AEC();
        (*(v82 + 8))(v81, v53);
        return;
      }

      __break(1u);
      goto LABEL_11;
    }

    v89 = 0;
    (*(v24 + 56))(v22, 0, 1, v23);
    (*(v24 + 32))(v28, v22, v23);
    (*(v24 + 16))(v64, v28, v23);
    (*(v68 + 104))(v70, *MEMORY[0x1E6966520], v69);
    (*(v71 + 104))(v73, *MEMORY[0x1E6966510], v72);
    (*(v75 + 104))(v74, *MEMORY[0x1E6966530], v76);
    sub_1BAA39A5C();
    v54 = v77;
    sub_1BAA39DBC();
    v84 = sub_1BAA39DAC();
    v56 = v55;
    (*(v78 + 8))(v54, v79);
    v83 = v56;
    if (v56 >> 60 == 15)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v57 = v66;
    v59 = *(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk + 8);
    v87 = *(v66 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_psk);
    v58 = v87;
    v88 = v59;
    sub_1BA8498C4(v85, v86);
    sub_1BA8498C4(v58, v59);
    sub_1BAA399EC();
    sub_1BA8498C4(*(v57 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID), *(v57 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_pskID + 8));
    sub_1BAA39AEC();
    (*(v24 + 8))(v28, v23);
    sub_1BA84BCB8(v40, v39);
  }
}

void sub_1BA845CFC()
{
  v2 = sub_1BAA39ADC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA844C18(v5);
  if (!v1)
  {
    v6 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
    v7 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload + 8);
    v32 = v6;
    v33 = v7;
    v8 = v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad;
    v9 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    v10 = *(v8 + 8);
    if (v10 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    v12 = 0xC000000000000000;
    if (v10 >> 60 != 15)
    {
      v12 = v10;
    }

    v30 = v11;
    v31 = v12;
    sub_1BA8498C4(v6, v7);
    sub_1BA84BC34(v9, v10);
    sub_1BA849808();
    v13 = sub_1BAA39ACC();
    v15 = v14;
    sub_1BA84724C(v30, v31);
    sub_1BA84724C(v32, v33);
    v16 = sub_1BAA39ABC();
    v18 = v16;
    v19 = v17;
    v20 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v20 != 2)
      {
        v21 = 0;
        goto LABEL_19;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (!v24)
      {
LABEL_19:
        v25 = v15 >> 62;
        if ((v15 >> 62) > 1)
        {
          if (v25 != 2)
          {
            v26 = 0;
            goto LABEL_29;
          }

          v28 = *(v13 + 16);
          v27 = *(v13 + 24);
          v24 = __OFSUB__(v27, v28);
          v26 = v27 - v28;
          if (!v24)
          {
            goto LABEL_29;
          }

          __break(1u);
        }

        else if (!v25)
        {
          v26 = BYTE6(v15);
LABEL_29:
          if (!__OFADD__(v21, v26))
          {
            v32 = sub_1BA849C28(v21 + v26);
            v33 = v29;
            sub_1BAA396AC();
            sub_1BAA396AC();
            sub_1BA84724C(v13, v15);
            sub_1BA84724C(v18, v19);
            (*(v3 + 8))(v5, v2);
            return;
          }

          __break(1u);
          goto LABEL_32;
        }

        LODWORD(v26) = HIDWORD(v13) - v13;
        if (__OFSUB__(HIDWORD(v13), v13))
        {
LABEL_33:
          __break(1u);
          return;
        }

        v26 = v26;
        goto LABEL_29;
      }

      __break(1u);
    }

    else if (!v20)
    {
      v21 = BYTE6(v17);
      goto LABEL_19;
    }

    LODWORD(v21) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v21 = v21;
    goto LABEL_19;
  }
}

uint64_t sub_1BA845FC0()
{
  v2 = sub_1BAA39B0C();
  v25 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  v6 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload);
  v7 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_payload + 8);
  sub_1BA8498C4(v6, v7);
  sub_1BA846208(32, v6, v7, &v23);
  v9 = v23;
  v8 = v24;
  v10 = *v5;
  v11 = v5[1];
  sub_1BA8498C4(*v5, v11);
  sub_1BA846350(0x20uLL, v10, v11, &v23);
  v13 = v23;
  v12 = v24;
  sub_1BA845284(v9, v8, v4);
  if (v1)
  {
    sub_1BA84724C(v13, v12);
    sub_1BA84724C(v9, v8);
  }

  else
  {
    v23 = v13;
    v24 = v12;
    v14 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    v15 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad + 8);
    if (v15 >> 60 == 15)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad);
    }

    v17 = 0xC000000000000000;
    if (v15 >> 60 != 15)
    {
      v17 = *(v0 + OBJC_IVAR___NEIKEv2CryptoKitHPKE_aad + 8);
    }

    v20 = v2;
    v21 = v16;
    v22 = v17;
    sub_1BA84BC34(v14, v15);
    sub_1BA849808();
    v0 = sub_1BAA39AFC();
    sub_1BA84724C(v9, v8);
    sub_1BA84724C(v21, v22);
    (*(v25 + 8))(v4, v20);
    sub_1BA84724C(v13, v12);
  }

  return v0;
}

uint64_t sub_1BA846208@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_1BA849A50(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_1BA8499EC(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1BAA3967C();
    v15 = v14;
    result = sub_1BA84724C(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1BA846350@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1BA849A50(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1BA8499EC(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_1BAA3967C();
    v16 = v15;
    result = sub_1BA84724C(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

id sub_1BA8464B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();
  v8 = v7;

  v9 = sub_1BAA3968C();
  sub_1BA84724C(v6, v8);

  return v9;
}

id sub_1BA846928(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = sub_1BAA3969C();
  sub_1BA84724C(v6, v7);

  sub_1BA8497B4();
  v8 = swift_allocError();
  *v9 = 2;
  swift_willThrow();
  if (a4)
  {
    v10 = sub_1BAA395FC();

    v11 = v10;
    *a4 = v10;
  }

  else
  {
  }

  return 0;
}

id _sSo20NEIKEv2CryptoKitHPKEC16NetworkExtensionEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1BA846B24(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v8 = a3;
  v9 = a1;
  v10 = sub_1BAA3969C();
  v12 = v11;

  swift_beginAccess();
  v13 = a6(v10, v12);
  v15 = v14;
  swift_endAccess();

  sub_1BA84724C(v10, v12);
  v16 = sub_1BAA3968C();
  sub_1BA84724C(v13, v15);

  return v16;
}

uint64_t sub_1BA846C70(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = sub_1BAA396FC();
  v18 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  swift_beginAccess();
  a4(a1, a2);
  result = swift_endAccess();
  if (!v4)
  {
    v15 = v18;
    (*(v18 + 16))(v11, v13, v8);
    sub_1BA849918(&qword_1EBC0E9F0, MEMORY[0x1E6999670], MEMORY[0x1E6999668]);
    sub_1BAA395EC();
    v16 = *(v15 + 8);
    v16(v11, v8);
    v16(v13, v8);
    return v17[1];
  }

  return result;
}

id sub_1BA846EC0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = a3;
  v10 = a1;
  v11 = sub_1BAA3969C();
  v13 = v12;

  v14 = sub_1BA846C70(v11, v13, a5, a6);
  v16 = v15;

  sub_1BA84724C(v11, v13);
  v17 = sub_1BAA3968C();
  sub_1BA84724C(v14, v16);

  return v17;
}

void sub_1BA846FF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  sub_1BAA3969C();

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id NEIKEv2KeyExchangeHandlerCryptoKit.init(method:keyExchangeData:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1BAA3968C();
  v8 = [v6 initWithMethod:a1 keyExchangeData:v7];

  sub_1BA84724C(a2, a3);
  return v8;
}

uint64_t sub_1BA84724C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *NEIKEv2KeyExchangeHandlerCryptoKit.init(method:keyExchangeData:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1BAA3968C();
  v8 = [(NEIKEv2KeyExchangeHandler *)v3 initWithMethod:a1 keyExchangeData:v7];
  sub_1BA84724C(a2, a3);

  return v8;
}

uint64_t sub_1BA8473B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BA8474EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA847634(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t *, void, void), uint64_t a7, void (*a8)(char *))
{
  v13 = a3;
  v14 = a1;
  v15 = sub_1BAA3969C();
  v17 = v16;

  sub_1BA84790C(v15, v17, a5, a6, a7, a8);
  sub_1BA84724C(v15, v17);
  return 1;
}

uint64_t sub_1BA84790C(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t *, void, void), uint64_t a5, void (*a6)(char *))
{
  v26 = a5;
  v27 = a6;
  v12 = sub_1BAA399DC();
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v28 = a1;
  v29 = a2;
  sub_1BA8498C4(a1, a2);
  result = a4(&v28, MEMORY[0x1E6969080], MEMORY[0x1E6969078]);
  if (!v7)
  {
    v19 = v25;
    v20 = v6;
    v27(v17);
    sub_1BA849918(&qword_1EBC0E9E8, MEMORY[0x1E6966448], MEMORY[0x1E6966440]);
    sub_1BAA395EC();
    (*(v19 + 8))(v30, v12);
    v21 = v28;
    v22 = v29;
    v23 = sub_1BAA3968C();
    sub_1BA84724C(v21, v22);
    [(NEIKEv2KeyExchangeHandler *)v20 setSharedSecret:v23];

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1BA847C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v5 = *a3;
  v6 = (a4)(0, a2);
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

id sub_1BA847CD8()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1BAA39CCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9E0, &qword_1BAA4CA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1BAA39C7C();
  if (v1)
  {
    swift_deallocPartialClassInstance();
    return v2;
  }

  v22 = v5;
  v23 = v4;
  v25 = ObjectType;
  v14 = sub_1BAA39C8C();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey;
  sub_1BA84BBCC(v13, v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  sub_1BA84985C(v2 + v16, v11, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  result = (*(v15 + 48))(v11, 1, v14);
  if (result != 1)
  {
    sub_1BAA39C5C();
    (*(v15 + 8))(v11, v14);
    v18 = sub_1BAA39CAC();
    v20 = v19;
    (*(v22 + 8))(v7, v23);
    v21 = sub_1BAA3968C();
    sub_1BA84724C(v18, v20);
    v24.receiver = v2;
    v24.super_class = v25;
    v2 = objc_msgSendSuper2(&v24, sel_initWithMethod_keyExchangeData_, 36, v21);

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_1BA847FF0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1BAA399FC();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAA39CCC();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A4C();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey;
  v15 = sub_1BAA39C8C();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v38 = a1;
  v39 = a2;
  sub_1BA8498C4(a1, a2);
  sub_1BA849808();
  v16 = v36;
  sub_1BAA39CBC();
  if (v16)
  {
    sub_1BA84724C(a1, a2);
    sub_1BA84BC58(&v3[v14], &qword_1EBC0E9E0, &qword_1BAA4CA40);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v8;
    v31 = v12;
    v36 = a1;
    v29 = v6;
    sub_1BAA39C9C();
    (*(v34 + 8))(v11, v9);
    v18 = sub_1BAA39A2C();
    v20 = v19;
    v21 = sub_1BAA3968C();
    sub_1BA84724C(v18, v20);
    v37.receiver = v3;
    v37.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v37, sel_initWithMethod_keyExchangeData_, 36, v21);

    v8 = v22;
    v23 = v30;
    sub_1BAA39A3C();
    sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
    v24 = v29;
    sub_1BAA395EC();
    v25 = v36;
    (*(v33 + 8))(v23, v24);
    v26 = v38;
    v27 = v39;
    v28 = sub_1BAA3968C();
    sub_1BA84724C(v26, v27);
    [(NEIKEv2KeyExchangeHandler *)v8 setSharedSecret:v28];

    sub_1BA84724C(v25, a2);
    (*(v32 + 8))(v35, v31);
  }

  return v8;
}

uint64_t sub_1BA8484AC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1BAA399FC();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9E0, &qword_1BAA4CA40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1BAA39C8C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA84985C(v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F42NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768_privateKey, v9, &qword_1EBC0E9E0, &qword_1BAA4CA40);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA84BC58(v9, &qword_1EBC0E9E0, &qword_1BAA4CA40);
    sub_1BA8497B4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v24 = v22;
    v25 = v23;
    sub_1BA849808();
    v16 = v26;
    sub_1BAA39C6C();
    if (!v16)
    {
      sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
      sub_1BAA395EC();
      (*(v21 + 8))(v6, v4);
      v17 = v24;
      v18 = v25;
      v19 = sub_1BAA3968C();
      sub_1BA84724C(v17, v18);
      [(NEIKEv2KeyExchangeHandler *)v3 setSharedSecret:v19];
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1BA848838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_1BAA3969C();
  v11 = v10;

  a5(v9, v11);
  sub_1BA84724C(v9, v11);
  return 1;
}

void sub_1BA848994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1BA8496DC(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1BA848A2C()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_1BAA39D4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9C0, &qword_1BAA4CA38);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1BAA39CFC();
  if (v1)
  {
    swift_deallocPartialClassInstance();
    return v2;
  }

  v22 = v5;
  v23 = v4;
  v25 = ObjectType;
  v14 = sub_1BAA39D0C();
  v15 = *(v14 - 8);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey;
  sub_1BA84BBCC(v13, v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  sub_1BA84985C(v2 + v16, v11, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  result = (*(v15 + 48))(v11, 1, v14);
  if (result != 1)
  {
    sub_1BAA39CDC();
    (*(v15 + 8))(v11, v14);
    v18 = sub_1BAA39D2C();
    v20 = v19;
    (*(v22 + 8))(v7, v23);
    v21 = sub_1BAA3968C();
    sub_1BA84724C(v18, v20);
    v24.receiver = v2;
    v24.super_class = v25;
    v2 = objc_msgSendSuper2(&v24, sel_initWithMethod_keyExchangeData_, 37, v21);

    return v2;
  }

  __break(1u);
  return result;
}

char *sub_1BA848D44(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1BAA399FC();
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BAA39D4C();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAA39A4C();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey;
  v15 = sub_1BAA39D0C();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v38 = a1;
  v39 = a2;
  sub_1BA8498C4(a1, a2);
  sub_1BA849808();
  v16 = v36;
  sub_1BAA39D3C();
  if (v16)
  {
    sub_1BA84724C(a1, a2);
    sub_1BA84BC58(&v3[v14], &qword_1EBC0E9C0, &qword_1BAA4CA38);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v8;
    v31 = v12;
    v36 = a1;
    v29 = v6;
    sub_1BAA39D1C();
    (*(v34 + 8))(v11, v9);
    v18 = sub_1BAA39A2C();
    v20 = v19;
    v21 = sub_1BAA3968C();
    sub_1BA84724C(v18, v20);
    v37.receiver = v3;
    v37.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v37, sel_initWithMethod_keyExchangeData_, 37, v21);

    v8 = v22;
    v23 = v30;
    sub_1BAA39A3C();
    sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
    v24 = v29;
    sub_1BAA395EC();
    v25 = v36;
    (*(v33 + 8))(v23, v24);
    v26 = v38;
    v27 = v39;
    v28 = sub_1BAA3968C();
    sub_1BA84724C(v26, v27);
    [(NEIKEv2KeyExchangeHandler *)v8 setSharedSecret:v28];

    sub_1BA84724C(v25, a2);
    (*(v32 + 8))(v35, v31);
  }

  return v8;
}

uint64_t sub_1BA849200(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v22 = a1;
  v23 = a2;
  v4 = sub_1BAA399FC();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0E9C0, &qword_1BAA4CA38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_1BAA39D0C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA84985C(v2 + OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F43NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024_privateKey, v9, &qword_1EBC0E9C0, &qword_1BAA4CA38);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BA84BC58(v9, &qword_1EBC0E9C0, &qword_1BAA4CA38);
    sub_1BA8497B4();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v24 = v22;
    v25 = v23;
    sub_1BA849808();
    v16 = v26;
    sub_1BAA39CEC();
    if (!v16)
    {
      sub_1BA849918(&qword_1EBC0E9D8, MEMORY[0x1E6966458], MEMORY[0x1E6966450]);
      sub_1BAA395EC();
      (*(v21 + 8))(v6, v4);
      v17 = v24;
      v18 = v25;
      v19 = sub_1BAA3968C();
      sub_1BA84724C(v17, v18);
      [(NEIKEv2KeyExchangeHandler *)v3 setSharedSecret:v19];
    }

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1BA84959C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  sub_1BAA3969C();

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id sub_1BA8495F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA849684(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA8496DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BAA3A03C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BA8497B4()
{
  result = qword_1EBC0E9C8;
  if (!qword_1EBC0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0E9C8);
  }

  return result;
}

unint64_t sub_1BA849808()
{
  result = qword_1EBC0E9D0;
  if (!qword_1EBC0E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0E9D0);
  }

  return result;
}

uint64_t sub_1BA84985C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA8498C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_1BA849918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA849960()
{
  v1 = *v0;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v1);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA8499A8(uint64_t a1)
{
  v2 = *v1;
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](v2);
  return sub_1BAA3A1FC();
}

uint64_t sub_1BA8499EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1BA849A50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

CFErrorRef sub_1BA849B04(__SecKey *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = SecKeyCopyExternalRepresentation(a1, v7);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1BAA3969C();
  }

  else
  {
    v3 = v7[0];
    if (v7[0])
    {
      type metadata accessor for CFError(0);
      sub_1BA849918(&qword_1EBC0EA00, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v4 = v3;
    }

    else
    {
      sub_1BA8497B4();
      swift_allocError();
      *v5 = 0;
    }

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_1BA849C28(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      sub_1BAA3959C();
      swift_allocObject();
      sub_1BAA3958C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BAA3966C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1BA849CCC(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  v78 = a8;
  v72 = a4;
  v73 = a7;
  v75 = a6;
  v76 = a2;
  v77 = a3;
  LODWORD(v80) = a1;
  v84 = a11;
  v81 = a10;
  v74 = a9;
  v12 = sub_1BAA3976C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v62 - v16;
  v17 = sub_1BAA3970C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v62 - v21;
  v22 = sub_1BAA39DCC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BAA3973C();
  v65 = *(v26 - 8);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v67 = &v62 - v30;
  v31 = (v23 + 8);
  v71 = a5;
  if (v80)
  {
    v63 = v29;
    v64 = v28;
    v80 = type metadata accessor for NEIKEv2CryptoKitSPAKE2PlusProver(0);
    v70 = objc_allocWithZone(v80);
    sub_1BAA39DBC();
    v69 = sub_1BAA39DAC();
    v33 = v32;
    result = (*v31)(v25, v22);
    v66 = v33;
    if (v33 >> 60 != 15)
    {
      v35 = v68;
      (*(v18 + 104))(v68, *MEMORY[0x1E6999678], v17);
      sub_1BA8498C4(v81, v84);
      sub_1BA8498C4(v75, v73);
      sub_1BA8498C4(v72, v71);
      sub_1BA8498C4(v76, v77);
      sub_1BA8498C4(v78, v74);
      v36 = v67;
      v37 = v79;
      sub_1BAA3971C();
      if (v37)
      {
LABEL_10:
        swift_deallocPartialClassInstance();
        return v35;
      }

      v42 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F32NEIKEv2CryptoKitSPAKE2PlusProver_prover;
      v43 = v65;
      v44 = v70;
      v45 = v64;
      (*(v65 + 32))(&v70[OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F32NEIKEv2CryptoKitSPAKE2PlusProver_prover], v36, v64);
      swift_beginAccess();
      v46 = v63;
      (*(v43 + 16))(v63, &v44[v42], v45);
      v47 = v44;
      v54 = sub_1BAA3972C();
      v56 = v55;

      (*(v43 + 8))(v46, v45);
      v57 = sub_1BAA3968C();
      sub_1BA84724C(v54, v56);
      v82.receiver = v47;
      v82.super_class = v80;
      v58 = objc_msgSendSuper2(&v82, sel_initWithKeyShare_, v57);
LABEL_12:
      v35 = v58;

      return v35;
    }

    __break(1u);
  }

  else
  {
    v63 = v13;
    v64 = v12;
    v80 = type metadata accessor for NEIKEv2CryptoKitSPAKE2PlusVerifier(0);
    v68 = objc_allocWithZone(v80);
    sub_1BAA39DBC();
    v67 = sub_1BAA39DAC();
    v39 = v38;
    result = (*v31)(v25, v22);
    v65 = v39;
    if (v39 >> 60 != 15)
    {
      v35 = v69;
      (*(v18 + 104))(v69, *MEMORY[0x1E6999678], v17);
      sub_1BA8498C4(v81, v84);
      sub_1BA8498C4(v75, v73);
      sub_1BA8498C4(v72, v71);
      sub_1BA8498C4(v76, v77);
      sub_1BA8498C4(v78, v74);
      v40 = v70;
      v41 = v79;
      sub_1BAA3974C();
      if (v41)
      {
        goto LABEL_10;
      }

      v48 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F34NEIKEv2CryptoKitSPAKE2PlusVerifier_verifier;
      v49 = v63;
      v50 = v68;
      v51 = v64;
      (*(v63 + 32))(&v68[OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F34NEIKEv2CryptoKitSPAKE2PlusVerifier_verifier], v40, v64);
      swift_beginAccess();
      v52 = v66;
      (*(v49 + 16))(v66, &v50[v48], v51);
      v53 = v50;
      v59 = sub_1BAA3975C();
      v61 = v60;

      (*(v49 + 8))(v52, v51);
      v57 = sub_1BAA3968C();
      sub_1BA84724C(v59, v61);
      v83.receiver = v53;
      v83.super_class = v80;
      v58 = objc_msgSendSuper2(&v83, sel_initWithKeyShare_, v57);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BA84A53C()
{
  v0 = sub_1BAA39C1C();
  v94 = *(v0 - 8);
  v95 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v93 = &v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BAA39C4C();
  v91 = *(v2 - 8);
  v92 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1BAA3998C();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1BAA399CC();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1BAA39BCC();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1BAA39BFC();
  v80 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAA39B7C();
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAA39BAC();
  v78 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39B2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BAA39B5C();
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v19 <= 30)
  {
    v94 = v15;
    v95 = v14;
    v36 = v96;
    v35 = v97;
    v93 = v8;
    switch(v19)
    {
      case 19:
        v48 = v20;
        v49 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP256(0);
        v50 = objc_allocWithZone(v49);
        v51 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        sub_1BAA39B4C();
        (*(v48 + 16))(v22, &v50[v51], v18);
        sub_1BAA39B3C();
        v52 = (*(v48 + 8))(v22, v18);
        v53 = MEMORY[0x1BFAF8810](v52);
        v55 = v54;
        (*(v94 + 8))(v17, v95);
        v33 = sub_1BAA3968C();
        sub_1BA84724C(v53, v55);
        v98.receiver = v50;
        v98.super_class = v49;
        v34 = objc_msgSendSuper2(&v98, sel_initWithMethod_keyExchangeData_, 19, v33);
        goto LABEL_20;
      case 20:
        v68 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP384(0);
        v69 = objc_allocWithZone(v68);
        v70 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey;
        sub_1BAA39B9C();
        v71 = v78;
        (*(v78 + 16))(v13, &v69[v70], v11);
        sub_1BAA39B8C();
        v72 = (*(v71 + 8))(v13, v11);
        v73 = MEMORY[0x1BFAF8860](v72);
        v75 = v74;
        (*(v79 + 8))(v10, v93);
        v33 = sub_1BAA3968C();
        sub_1BA84724C(v73, v75);
        v99.receiver = v69;
        v99.super_class = v68;
        v34 = objc_msgSendSuper2(&v99, sel_initWithMethod_keyExchangeData_, 20, v33);
        goto LABEL_20;
      case 21:
        v37 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP521(0);
        v38 = objc_allocWithZone(v37);
        v39 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey;
        sub_1BAA39BEC();
        v40 = v80;
        (*(v80 + 16))(v36, &v38[v39], v35);
        v41 = v81;
        sub_1BAA39BDC();
        v42 = (*(v40 + 8))(v36, v35);
        v43 = MEMORY[0x1BFAF88B0](v42);
        v45 = v44;
        (*(v83 + 8))(v41, v84);
        v33 = sub_1BAA3968C();
        sub_1BA84724C(v43, v45);
        v100.receiver = v38;
        v100.super_class = v37;
        v34 = objc_msgSendSuper2(&v100, sel_initWithMethod_keyExchangeData_, 21, v33);
        goto LABEL_20;
    }
  }

  else
  {
    if (v19 > 35)
    {
      if (v19 == 36)
      {
        v22 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768(0));
        v67 = v103;
        v47 = sub_1BA847CD8();
        if (v67)
        {
          return v22;
        }
      }

      else
      {
        if (v19 != 37)
        {
          goto LABEL_15;
        }

        v22 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024(0));
        v46 = v103;
        v47 = sub_1BA848A2C();
        if (v46)
        {
          return v22;
        }
      }

      return v47;
    }

    if (v19 == 31)
    {
      v57 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX25519(0);
      v58 = objc_allocWithZone(v57);
      v59 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
      sub_1BAA399BC();
      v60 = v85;
      v61 = v82;
      v62 = v86;
      (*(v85 + 16))(v82, &v58[v59], v86);
      v63 = v87;
      sub_1BAA3999C();
      (*(v60 + 8))(v61, v62);
      v64 = sub_1BAA3996C();
      v66 = v65;
      (*(v88 + 8))(v63, v90);
      v33 = sub_1BAA3968C();
      sub_1BA84724C(v64, v66);
      v101.receiver = v58;
      v101.super_class = v57;
      v34 = objc_msgSendSuper2(&v101, sel_initWithMethod_keyExchangeData_, 31, v33);
      goto LABEL_20;
    }

    if (v19 == 32)
    {
      v23 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX448(0);
      v24 = objc_allocWithZone(v23);
      v25 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
      sub_1BAA39C3C();
      v27 = v91;
      v26 = v92;
      v28 = v89;
      (*(v91 + 16))(v89, &v24[v25], v92);
      v29 = v93;
      sub_1BAA39C2C();
      (*(v27 + 8))(v28, v26);
      v30 = sub_1BAA39C0C();
      v32 = v31;
      (*(v94 + 8))(v29, v95);
      v33 = sub_1BAA3968C();
      sub_1BA84724C(v30, v32);
      v102.receiver = v24;
      v102.super_class = v23;
      v34 = objc_msgSendSuper2(&v102, sel_initWithMethod_keyExchangeData_, 32, v33);
LABEL_20:
      v22 = v34;

      return v22;
    }
  }

LABEL_15:
  sub_1BA8497B4();
  swift_allocError();
  *v56 = 2;
  swift_willThrow();
  return v22;
}

char *sub_1BA84AF88(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v117 = a2;
  v118 = a3;
  v3 = sub_1BAA39C1C();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v111 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1BAA39C4C();
  v109 = *(v5 - 8);
  v110 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BAA3998C();
  v106 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BAA399CC();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BAA39BCC();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v116 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1BAA39BFC();
  v99 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BAA39B7C();
  v98 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BAA39BAC();
  v97 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAA39B2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BAA39B5C();
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v22 <= 30)
  {
    v111 = v18;
    v112 = v17;
    v43 = v114;
    v42 = v115;
    v113 = v11;
    v44 = v116;
    switch(v22)
    {
      case 19:
        v59 = v23;
        v60 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP256(0);
        v61 = objc_allocWithZone(v60);
        v28 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        v62 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP256_privateKey;
        sub_1BAA39B4C();
        (*(v59 + 16))(v25, &v61[v62], v21);
        sub_1BAA39B3C();
        v63 = (*(v59 + 8))(v25, v21);
        v64 = MEMORY[0x1BFAF8810](v63);
        v66 = v65;
        v111[1](v20, v112);
        v67 = sub_1BAA3968C();
        sub_1BA84724C(v64, v66);
        v119.receiver = v61;
        v119.super_class = v60;
        v25 = objc_msgSendSuper2(&v119, sel_initWithMethod_keyExchangeData_, 19, v67);

        v39 = MEMORY[0x1E6966548];
        v40 = MEMORY[0x1E6966538];
        v41 = MEMORY[0x1E6966550];
        goto LABEL_18;
      case 20:
        v85 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP384(0);
        v86 = objc_allocWithZone(v85);
        v87 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey;
        sub_1BAA39B9C();
        v88 = v97;
        (*(v97 + 16))(v16, &v86[v87], v14);
        sub_1BAA39B8C();
        v89 = (*(v88 + 8))(v16, v14);
        v90 = MEMORY[0x1BFAF8860](v89);
        v92 = v91;
        (*(v98 + 8))(v13, v113);
        v93 = sub_1BAA3968C();
        sub_1BA84724C(v90, v92);
        v120.receiver = v86;
        v120.super_class = v85;
        v25 = objc_msgSendSuper2(&v120, sel_initWithMethod_keyExchangeData_, 20, v93);

        v94 = v124;
        sub_1BA84790C(v117, v118, MEMORY[0x1E69665A0], MEMORY[0x1E6966588], &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP384_privateKey, MEMORY[0x1E69665A8]);
        if (v94)
        {
LABEL_23:

          return v25;
        }

        return v25;
      case 21:
        v45 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitP521(0);
        v46 = objc_allocWithZone(v45);
        v47 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey;
        sub_1BAA39BEC();
        v48 = v99;
        (*(v99 + 16))(v43, &v46[v47], v42);
        sub_1BAA39BDC();
        v49 = (*(v48 + 8))(v43, v42);
        v50 = MEMORY[0x1BFAF88B0](v49);
        v52 = v51;
        (*(v101 + 8))(v44, v102);
        v53 = sub_1BAA3968C();
        sub_1BA84724C(v50, v52);
        v121.receiver = v46;
        v121.super_class = v45;
        v25 = objc_msgSendSuper2(&v121, sel_initWithMethod_keyExchangeData_, 21, v53);

        v54 = v124;
        sub_1BA84790C(v117, v118, MEMORY[0x1E69665F8], MEMORY[0x1E69665F0], &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitP521_privateKey, MEMORY[0x1E6966600]);
        if (!v54)
        {
          return v25;
        }

        goto LABEL_23;
    }

LABEL_16:
    sub_1BA8497B4();
    swift_allocError();
    *v68 = 2;
    swift_willThrow();
    return v25;
  }

  if (v22 <= 35)
  {
    if (v22 != 31)
    {
      if (v22 == 32)
      {
        v26 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX448(0);
        v27 = objc_allocWithZone(v26);
        v28 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
        v29 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F38NEIKEv2KeyExchangeHandlerCryptoKitX448_privateKey;
        sub_1BAA39C3C();
        v31 = v109;
        v30 = v110;
        v32 = &v27[v29];
        v33 = v107;
        (*(v109 + 16))(v107, v32, v110);
        v34 = v111;
        sub_1BAA39C2C();
        (*(v31 + 8))(v33, v30);
        v35 = sub_1BAA39C0C();
        v37 = v36;
        (*(v112 + 8))(v34, v113);
        v38 = sub_1BAA3968C();
        sub_1BA84724C(v35, v37);
        v123.receiver = v27;
        v123.super_class = v26;
        v25 = objc_msgSendSuper2(&v123, sel_initWithMethod_keyExchangeData_, 32, v38);

        v39 = MEMORY[0x1E6966650];
        v40 = MEMORY[0x1E6966648];
        v41 = MEMORY[0x1E6966658];
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v69 = type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitX25519(0);
    v70 = objc_allocWithZone(v69);
    v28 = &OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
    v71 = OBJC_IVAR____TtC16NetworkExtensionP33_8A6EAEC7B0CD28E3C1D36D746A66647F40NEIKEv2KeyExchangeHandlerCryptoKitX25519_privateKey;
    sub_1BAA399BC();
    v72 = v103;
    v73 = &v70[v71];
    v74 = v100;
    v75 = v104;
    (*(v103 + 16))(v100, v73, v104);
    v76 = v105;
    sub_1BAA3999C();
    (*(v72 + 8))(v74, v75);
    v77 = sub_1BAA3996C();
    v79 = v78;
    (*(v106 + 8))(v76, v108);
    v80 = sub_1BAA3968C();
    sub_1BA84724C(v77, v79);
    v122.receiver = v70;
    v122.super_class = v69;
    v25 = objc_msgSendSuper2(&v122, sel_initWithMethod_keyExchangeData_, 31, v80);

    v39 = MEMORY[0x1E6966398];
    v40 = MEMORY[0x1E6966388];
    v41 = MEMORY[0x1E69663A0];
LABEL_18:
    v81 = v124;
    sub_1BA84790C(v117, v118, v39, v40, v28, v41);
    if (!v81)
    {
      return v25;
    }

    goto LABEL_23;
  }

  if (v22 == 36)
  {
    v25 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM768(0));
    v83 = v117;
    v82 = v118;
    sub_1BA8498C4(v117, v118);
    v84 = v124;
    v58 = sub_1BA847FF0(v83, v82);
    if (v84)
    {
      return v25;
    }

    return v58;
  }

  if (v22 != 37)
  {
    goto LABEL_16;
  }

  v25 = objc_allocWithZone(type metadata accessor for NEIKEv2KeyExchangeHandlerCryptoKitMLKEM1024(0));
  v56 = v117;
  v55 = v118;
  sub_1BA8498C4(v117, v118);
  v57 = v124;
  v58 = sub_1BA848D44(v56, v55);
  if (!v57)
  {
    return v58;
  }

  return v25;
}

uint64_t sub_1BA84BBCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1BA84BC34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_1BA8498C4(a1, a2);
  }
}

void sub_1BA84BC48(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BA8498C4(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v2 = a1;
  }
}

uint64_t sub_1BA84BC58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA84BCB8(id a1, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BA84724C(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t sub_1BA84BCDC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BA84724C(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NEIKEv2CryptoKitErrors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NEIKEv2CryptoKitErrors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BA84BEA4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1BA84BEF4()
{
  result = qword_1EBC0EA30;
  if (!qword_1EBC0EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EA30);
  }

  return result;
}

void sub_1BA84C058(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v4 = sub_1BAA398CC();
  __swift_project_value_buffer(v4, qword_1EBC11B98);
  v5 = sub_1BAA398AC();
  v6 = sub_1BAA39F9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1BA83C000, v5, v6, "NEHotspotEvaluationProviderHost - init", v7, 2u);
    MEMORY[0x1BFAFC150](v7, -1, -1);
  }

  v8 = sub_1BAA39D8C();
  [v3 setExtensionPointName_];

  v9 = sub_1BAA39D8C();
  [v3 setExtensionBundleIdentifier_];

  [v3 setExtensionXPCProtocol_];
  [v3 setExtensionHostXPCProtocol_];
  v10 = [objc_allocWithZone(type metadata accessor for NEHotspotEvaluationProviderHostExportedObject()) init];
  [v3 setExportedObject_];

  v11 = [v3 exportedObject];
  if (v11)
  {
    v12 = v11;
    [v3 setExtensionExportedObject_];
    v13 = [v3 extensionExportedObject];

    if (v13)
    {
      v15 = *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate];
      *&v13[OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate] = v3;
      v14 = v3;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA84C33C()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotEvaluationProviderHost - start", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1BA84C488;

  return sub_1BA854E8C();
}

uint64_t sub_1BA84C488(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA84C588, 0, 0);
}

uint64_t sub_1BA84C588()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1BA84C674;
  v4 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 7, 0, 0, 0x29287472617473, 0xE700000000000000, sub_1BA84E7F0, v2, v4);
}

uint64_t sub_1BA84C674()
{

  if (v0)
  {

    v1 = sub_1BA84C820;
  }

  else
  {

    v1 = sub_1BA84C7BC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BA84C7BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA84C820()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1BA84C884(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  if (a2 && (v23 = *(v5 + 16), v23(v7, a1, v4), v24 = a1, v8 = (*(v5 + 80) + 16) & ~*(v5 + 80), v9 = swift_allocObject(), v10 = *(v5 + 32), v10(v9 + v8, v7, v4), v29 = sub_1BA84E7F8, v30 = v9, aBlock = MEMORY[0x1E69E9820], v26 = 1107296256, v27 = sub_1BA871994, v28 = &block_descriptor_49, v11 = _Block_copy(&aBlock), , v12 = [a2 remoteObjectProxyWithErrorHandler_], _Block_release(v11), sub_1BAA3A04C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAD8, &qword_1BAA4CD90), (swift_dynamicCast() & 1) != 0))
  {
    v13 = aBlock;
    v23(v7, v24, v4);
    v14 = swift_allocObject();
    v10(v14 + v8, v7, v4);
    v29 = sub_1BA84E918;
    v30 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1BA8719FC;
    v28 = &block_descriptor_55;
    v15 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v13 startWithReply_];
    _Block_release(v15);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v17 = sub_1BAA398CC();
    __swift_project_value_buffer(v17, qword_1EBC11B98);
    v18 = sub_1BAA398AC();
    v19 = sub_1BAA39F9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BA83C000, v18, v19, "NEHotspotEvaluationProviderHost - start - proxy not good", v20, 2u);
      MEMORY[0x1BFAFC150](v20, -1, -1);
    }

    sub_1BA84E364();
    v21 = swift_allocError();
    *v22 = 1;
    aBlock = v21;
    return sub_1BAA39E9C();
  }
}

uint64_t sub_1BA84CC80(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotEvaluationProviderHost - proxy.start - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39EAC();
}

uint64_t sub_1BA84CF20(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1BA84E9B0;

  return sub_1BA84C31C();
}

uint64_t sub_1BA84CFC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA84CFE8, 0, 0);
}

uint64_t sub_1BA84CFE8()
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v1 = sub_1BAA398CC();
  __swift_project_value_buffer(v1, qword_1EBC11B98);
  v2 = sub_1BAA398AC();
  v3 = sub_1BAA39F9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BA83C000, v2, v3, "NEHotspotEvaluationProviderHost - stop", v4, 2u);
    MEMORY[0x1BFAFC150](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1BA84D134;

  return sub_1BA854E8C();
}

uint64_t sub_1BA84D134(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BA84D234, 0, 0);
}

uint64_t sub_1BA84D234()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1BA84D338;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x74697728706F7473, 0xEB00000000293A68, sub_1BA84E358, v4, v6);
}

uint64_t sub_1BA84D338()
{

  if (v0)
  {

    v1 = sub_1BA84D4E4;
  }

  else
  {

    v1 = sub_1BA84D480;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BA84D480()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BA84D4E4()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1BA84D548(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  if (a2 && (v33 = a4, v34 = a3, v13 = *(v9 + 16), v13(&v32 - v11, a1, v8), v14 = (*(v9 + 80) + 16) & ~*(v9 + 80), v15 = v14 + v10, v16 = swift_allocObject(), v35 = a1, v17 = v16, v32 = *(v9 + 32), v32(v16 + v14, v12, v8), v40 = sub_1BA84E3B8, v41 = v17, aBlock = MEMORY[0x1E69E9820], v37 = 1107296256, v38 = sub_1BA871994, v39 = &block_descriptor, v18 = _Block_copy(&aBlock), , v19 = [a2 remoteObjectProxyWithErrorHandler_], _Block_release(v18), sub_1BAA3A04C(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAD8, &qword_1BAA4CD90), (swift_dynamicCast() & 1) != 0))
  {
    v20 = aBlock;
    v13(v12, v35, v8);
    v21 = swift_allocObject();
    v32(v21 + v14, v12, v8);
    v22 = v33;
    *(v21 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v40 = sub_1BA84E3DC;
    v41 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1BA8719FC;
    v39 = &block_descriptor_26;
    v23 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    v24 = v22;

    [v20 stopWithStopReason:v34 reply:v23];
    _Block_release(v23);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_1EBC0E910 != -1)
    {
      swift_once();
    }

    v26 = sub_1BAA398CC();
    __swift_project_value_buffer(v26, qword_1EBC11B98);
    v27 = sub_1BAA398AC();
    v28 = sub_1BAA39F9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BA83C000, v27, v28, "NEHotspotEvaluationProviderHost - stop - proxy not good", v29, 2u);
      MEMORY[0x1BFAFC150](v29, -1, -1);
    }

    sub_1BA84E364();
    v30 = swift_allocError();
    *v31 = 1;
    aBlock = v30;
    return sub_1BAA39E9C();
  }
}

uint64_t sub_1BA84D96C(void *a1, uint64_t a2, const char *a3)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v5 = sub_1BAA398CC();
  __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BA83C000, v6, v7, a3, v8, 2u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  return sub_1BAA39E9C();
}

id sub_1BA84DA8C(char a1)
{
  if (qword_1EBC0E910 != -1)
  {
    swift_once();
  }

  v2 = sub_1BAA398CC();
  __swift_project_value_buffer(v2, qword_1EBC11B98);
  v3 = sub_1BAA398AC();
  v4 = sub_1BAA39F9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_1BA83C000, v3, v4, "NEHotspotEvaluationProviderHost - proxy.stop - done %{BOOL}d", v5, 8u);
    MEMORY[0x1BFAFC150](v5, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  sub_1BAA39EAC();
  v6 = sub_1BAA398AC();
  v7 = sub_1BAA39F9C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BA83C000, v6, v7, "NEHotspotEvaluationProviderHost - calling invalidateExtension", v8, 2u);
    MEMORY[0x1BFAFC150](v8, -1, -1);
  }

  return sub_1BA85790C();
}

uint64_t sub_1BA84DDC4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1BA84DE80;

  return sub_1BA84CFC8(a1);
}

uint64_t sub_1BA84DE80(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void __swiftcall NEHotspotEvaluationProviderHost.init()(NEHotspotEvaluationProviderHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id NEHotspotEvaluationProviderHost.init()()
{
  *(v0 + OBJC_IVAR___NEHotspotEvaluationProviderHost_exportedObject) = 0;
  v2.super_class = NEHotspotEvaluationProviderHost;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for NEHotspotEvaluationProviderHost()
{
  result = qword_1EBC0EAB8;
  if (!qword_1EBC0EAB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EAB8);
  }

  return result;
}

id sub_1BA84E148(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NEHotspotEvaluationProviderHostExportedObject();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BA84E1A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA84DDC4(v2, v3, v4);
}

uint64_t sub_1BA84E254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E9A0;

  return sub_1BA8736F0(a1, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1BA84E364()
{
  result = qword_1EBC0EAD0;
  if (!qword_1EBC0EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC0EAD0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1BA84E3DC(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);

  return sub_1BA84DA8C(a1);
}

uint64_t sub_1BA84E484()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BA84E9A0;

  return sub_1BA84CF20(v2, v3);
}

uint64_t sub_1BA84E530()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BA84E9A0;

  return sub_1BA873608(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1BA84E630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA84E6FC;

  return sub_1BA8736F0(a1, v4, v5, v6);
}

uint64_t sub_1BA84E6FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_19Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BA84E918(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC8, &unk_1BAA4CD80);

  return sub_1BA84CC80(a1);
}

void *NEHotspotEvaluationProvider.configuration.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NEHotspotEvaluationProviderConfiguration();
  (*(v5 + 16))(v7, v2, a1);
  return sub_1BA84EB3C(v7, v8, a1, a2);
}

id *NEHotspotEvaluationProviderConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NEHotspotEvaluationProviderConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_1BA84EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v6 + 32))(&v15 - v10);
  type metadata accessor for NEHotspotEvaluationProviderConfiguration();
  v12 = swift_allocObject();
  (*(v6 + 16))(v9, v11, a3);
  v13 = sub_1BA84F160(v9, v12, a3, a4);
  (*(v6 + 8))(v11, a3);
  return v13;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.start()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA84EDFC;

  return v7(a1, a2);
}

uint64_t sub_1BA84EDFC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.stop(reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84E6FC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NEHotspotEvaluationProvider.handleCommand(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BA84EDFC;

  return v9(a1, a2, a3);
}

void *sub_1BA84F160(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  (*(v7 + 32))(&v19 - v11);
  (*(v7 + 16))(v10, v12, a3);
  v13 = sub_1BA854D58(v10, a2, a3, *(a4 + 8));
  v14 = v13[8];
  v13[8] = &unk_1F38BC840;

  v15 = &unk_1F38BC840;

  v16 = v13[9];
  v13[9] = &unk_1F38BBC60;
  v17 = &unk_1F38BBC60;

  (*(v7 + 8))(v12, a3);
  return v13;
}

uint64_t sub_1BA84F2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v6[15] = sub_1BAA39EDC();
  v6[16] = sub_1BAA39ECC();
  v6[17] = sub_1BAA39ECC();
  v8 = sub_1BAA39E8C();
  v6[18] = v8;
  v6[19] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BA84F380, v8, v7);
}

uint64_t sub_1BA84F380()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1BA84F4F8;

  return v5(v1, v2);
}

uint64_t sub_1BA84F4F8(char a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA84F620, v4, v3);
}

uint64_t sub_1BA84F620()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA84F6AC, v2, v1);
}

uint64_t sub_1BA84F6AC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);

  byte_1EBC0EAE1 = v1;
  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BA84F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[35] = sub_1BAA39EDC();
  v7[36] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[37] = v9;
  v7[38] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA84F7D0, v9, v8);
}

uint64_t sub_1BA84F7D0()
{
  sub_1BA8517C0(v0[31] + 16, (v0 + 13));
  v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  v0[40] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = sub_1BA85133C(MEMORY[0x1E69E7CC0]);
  v2 = v0[11];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = sub_1BAA39D9C();
    v10 = v9;
    v11 = v0[11];
    v12 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v11);
    (*(v12 + 16))(v11, v12);
    v13 = sub_1BAA39D8C();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1BA850CFC(v13, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  v0[41] = v1;
  v0[42] = sub_1BAA39ECC();
  v16 = sub_1BAA39E8C();

  return MEMORY[0x1EEE6DFA0](sub_1BA84F9C4, v16, v15);
}

uint64_t sub_1BA84F9C4()
{
  v1 = v0[31];

  v2 = objc_opt_self();
  sub_1BA8474EC(0, &qword_1EBC0EAF8, 0x1E69E58C0);
  v3 = sub_1BAA39D5C();
  sub_1BA8474EC(0, &qword_1EBC0EB00, 0x1E69E9610);
  v4 = sub_1BAA39FCC();
  v0[6] = sub_1BA851A04;
  v0[7] = v1;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA86FA64;
  v0[5] = &block_descriptor_0;
  v5 = _Block_copy(v0 + 2);

  LOBYTE(v1) = [v2 registerWithOptions:v3 queue:v4 handler:v5];
  *(v0 + 376) = v1;
  _Block_release(v5);

  byte_1EBC0EAE0 = v1;

  v6 = v0[37];
  v7 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1BA84FB6C, v6, v7);
}

uint64_t sub_1BA84FB6C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 256);
  swift_beginAccess();
  *(v2 + 16) = v1;
  if (v1)
  {
    *(v0 + 344) = sub_1BAA39ECC();
    v4 = sub_1BAA39E8C();
    *(v0 + 352) = v4;
    *(v0 + 360) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1BA84FC6C, v4, v3);
  }

  else
  {

    (*(v0 + 264))(0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1BA84FC6C()
{
  sub_1BA8517C0(v0[31] + 16, (v0 + 23));
  swift_dynamicCast();
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v5 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_1BA84FDBC;

  return v5(v1, v2);
}

uint64_t sub_1BA84FDBC(char a1)
{
  v2 = *v1;
  *(*v1 + 377) = a1;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);

  return MEMORY[0x1EEE6DFA0](sub_1BA84FEE4, v4, v3);
}

uint64_t sub_1BA84FEE4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v1 = v0[37];
  v2 = v0[38];

  return MEMORY[0x1EEE6DFA0](sub_1BA84FF50, v1, v2);
}

uint64_t sub_1BA84FF50()
{
  v1 = *(v0 + 377);

  byte_1EBC0EAE1 = v1;
  (*(v0 + 264))(*(v0 + 377));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BA850038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  sub_1BAA39EDC();
  v7[16] = sub_1BAA39ECC();
  v9 = sub_1BAA39E8C();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BA8500D4, v9, v8);
}

uint64_t sub_1BA8500D4()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 32) + **(v2 + 32));
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1BA850254;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BA850254()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1BA850374, v3, v2);
}

uint64_t sub_1BA850374()
{
  v1 = v0[14];

  byte_1EBC0EAE1 = 0;
  v1(1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1BA85046C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  if (byte_1EBC0EAE1 == 1)
  {
    v8 = sub_1BAA39EFC();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1BAA39EDC();

    v9 = a1;
    v10 = sub_1BAA39ECC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = a2;
    v11[5] = v9;
    sub_1BA86F78C(0, 0, v7, &unk_1BAA4CE98, v11);
  }

  return result;
}

uint64_t sub_1BA8505B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_1BAA39EDC();
  v5[14] = sub_1BAA39ECC();
  v7 = sub_1BAA39E8C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA850650, v7, v6);
}

uint64_t sub_1BA850650()
{
  sub_1BA8517C0(v0[12] + 16, (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAE8, &qword_1BAA4CE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAF0, &qword_1BAA4CE68);
  swift_dynamicCast();
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 40) + **(v2 + 40));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1BA8507D0;
  v4 = v0[13];

  return v6(v4, v1, v2);
}

uint64_t sub_1BA8507D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 144) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1BA8508F8, v4, v3);
}

uint64_t sub_1BA8508F8()
{
  v1 = v0[18];

  [v1 deliverInternal];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

unint64_t sub_1BA850978(uint64_t a1, uint64_t a2)
{
  sub_1BAA3A1DC();
  sub_1BAA39DEC();
  v4 = sub_1BAA3A1FC();

  return sub_1BA850E74(a1, a2, v4);
}

unint64_t sub_1BA8509F0(uint64_t a1)
{
  sub_1BAA3A1DC();
  MEMORY[0x1BFAF8EE0](a1);
  v2 = sub_1BAA3A1FC();
  return sub_1BA850F2C(a1, v2);
}

uint64_t sub_1BA850A58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
  v35 = v4;
  result = sub_1BAA3A12C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BAA3A1DC();
      sub_1BAA39DEC();
      result = sub_1BAA3A1FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1BA850CFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BA850978(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1BA850A58(v16, a4 & 1);
      v11 = sub_1BA850978(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1BAA3A17C();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1BA850F98();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_1BA850E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1BAA3A15C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BA850F2C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

id sub_1BA850F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
  v2 = *v0;
  v3 = sub_1BAA3A11C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BA851104(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = byte_1EBC0EAE1;
  _Block_copy(a2);
  if (v8 == 1)
  {
    a2[2](a2, 1);
  }

  v9 = swift_allocObject();
  v10 = byte_1EBC0EAE0;
  *(v9 + 16) = byte_1EBC0EAE0;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1BAA39EDC();

  if (v10 == 1)
  {
    v12 = sub_1BAA39ECC();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = a1;
    v13[5] = sub_1BA851AE8;
    v13[6] = v7;
    v15 = &unk_1BAA4CE88;
  }

  else
  {

    v16 = sub_1BAA39ECC();
    v13 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v13[2] = v16;
    v13[3] = v17;
    v13[4] = a1;
    v13[5] = v9;
    v13[6] = sub_1BA851AE8;
    v13[7] = v7;
    v15 = &unk_1BAA4CE78;
  }

  sub_1BA86F78C(0, 0, v6, v15, v13);
}

unint64_t sub_1BA85133C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB08, &qword_1BAA4CEA0);
    v3 = sub_1BAA3A13C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1BA850978(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1BA851468(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1BAA3A13C();
    for (i = (a1 + 40); ; i += 16)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = sub_1BA8509F0(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BA851540(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = byte_1EBC0EAE1;
  _Block_copy(a3);
  if ((v10 & 1) == 0)
  {
    a3[2](a3, 1);
  }

  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1BAA39EDC();

  v12 = sub_1BAA39ECC();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = sub_1BA8516E4;
  v13[7] = v9;
  sub_1BA86F78C(0, 0, v8, &unk_1BAA4CE58, v13);
}

uint64_t sub_1BA8516EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA850038(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA8517C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BA851868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BA84E9A0;

  return sub_1BA84F730(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BA85193C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BA84E9A0;

  return sub_1BA84F2D4(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA851A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA84E6FC;

  return sub_1BA8505B8(a1, v4, v5, v7, v6);
}

id NENetworkRule.init(destinationNetworkEndpoint:prefix:protocol:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BAA398DC();
  if (result)
  {
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDestinationNetworkEndpoint:result prefix:a2 protocol:a3];
    swift_unknownObjectRelease();
    v8 = sub_1BAA398EC();
    (*(*(v8 - 8) + 8))(a1, v8);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NENetworkRule.init(destinationHostEndpoint:protocol:)(uint64_t a1, uint64_t a2)
{
  result = sub_1BAA398DC();
  if (result)
  {
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDestinationHostEndpoint:result protocol:a2];
    swift_unknownObjectRelease();
    v6 = sub_1BAA398EC();
    (*(*(v6 - 8) + 8))(a1, v6);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NENetworkRule.init(remoteNetworkEndpoint:remotePrefix:localNetworkEndpoint:localPrefix:protocol:direction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a2;
  v23 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  sub_1BA851E60(a1, &v22 - v12);
  v14 = sub_1BAA398EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_1BA851ED0(v13);
    v17 = 0;
  }

  else
  {
    v17 = sub_1BAA398DC();
    (*(v15 + 8))(v13, v14);
  }

  sub_1BA851E60(a3, v11);
  if (v16(v11, 1, v14) == 1)
  {
    sub_1BA851ED0(v11);
    v18 = 0;
  }

  else
  {
    v18 = sub_1BAA398DC();
    (*(v15 + 8))(v11, v14);
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = [v19 initWithRemoteNetworkEndpoint:v17 remotePrefix:v22 localNetworkEndpoint:v18 localPrefix:v23 protocol:v24 direction:v25];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1BA851ED0(a3);
  sub_1BA851ED0(a1);
  return v20;
}

uint64_t sub_1BA851E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA851ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NENetworkRule.matchRemoteHostOrNetworkEndpoint.getter()
{
  v1 = [v0 matchRemoteHostOrNetworkEndpoint];

  return sub_1BAA398FC();
}

uint64_t NENetworkRule.matchLocalNetworkEndpoint.getter()
{
  v1 = [v0 matchLocalNetworkEndpoint];

  return sub_1BAA398FC();
}

uint64_t NEHotspotHelperCommand.interface.getter()
{
  v1 = [v0 interface];

  return sub_1BAA3992C();
}

uint64_t (*NEFilterPacketProvider.handler.getter())()
{
  result = [v0 packetHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1BA852280;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1BA852344;
    *(v5 + 24) = v4;
    return sub_1BA85234C;
  }

  return result;
}

uint64_t (*sub_1BA8520E8@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 packetHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    *(result + 2) = sub_1BA852A94;
    *(result + 3) = v5;
    v6 = sub_1BA852A98;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

uint64_t sub_1BA852190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1BA852A90;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1BA8529C8(v1, v2);
  sub_1BA852884(v4, v3);

  return sub_1BA852994(v4, v3);
}

uint64_t NEFilterPacketProvider.handler.setter(void *a1, uint64_t a2)
{
  sub_1BA852884(a1, a2);

  return sub_1BA852994(a1, a2);
}

uint64_t sub_1BA8522A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = a3[1];
  result = sub_1BAA3990C();
  if (result)
  {
    if (v9)
    {
      v12 = v10 - v9;
    }

    else
    {
      v12 = 0;
    }

    v13 = a4(v7, result, v8, v9, v12);
    result = swift_unknownObjectRelease();
    *a5 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA852350@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(uint64_t, char *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v23 = a7;
  v12 = sub_1BAA3991C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *a3;
  v18 = *a4;
  v19 = *a5;
  swift_unknownObjectRetain();
  sub_1BAA3992C();
  v20 = a6(v16, v15, v17, v18, v18 + v19);
  result = (*(v13 + 8))(v15, v12);
  *v23 = v20;
  return result;
}

uint64_t sub_1BA85248C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v12 = a2;
  swift_unknownObjectRetain();
  v13 = v11(v12, a3, a4, a5, a6);

  swift_unknownObjectRelease();
  return v13;
}

void (*NEFilterPacketProvider.handler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 packetHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BA852A94;
    *(v9 + 24) = v8;
    v6 = swift_allocObject();
    v6[2] = sub_1BA852A98;
    v6[3] = v9;
    v10 = sub_1BA852A90;
  }

  else
  {
    v10 = 0;
  }

  *(v5 + 48) = v10;
  *(v5 + 56) = v6;
  return sub_1BA85264C;
}

void sub_1BA85264C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    if (v3)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v3;
      *(v5 + 24) = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_1BA8529A4;
      *(v6 + 24) = v5;
      v2[4] = sub_1BA8529AC;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_1BA85248C;
      v2[3] = &block_descriptor_1;
      v7 = _Block_copy(v2);
      swift_retain_n();
    }

    else
    {
      v7 = 0;
    }

    [v2[8] setPacketHandler_];
    _Block_release(v7);
    sub_1BA852994(v3, v4);
    v11 = v2[6];
    v12 = v2[7];
  }

  else
  {
    if (v3)
    {
      v8 = swift_allocObject();
      *(v8 + 16) = v3;
      *(v8 + 24) = v4;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1BA852A88;
      *(v9 + 24) = v8;
      v2[4] = sub_1BA852A8C;
      v2[5] = v9;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_1BA85248C;
      v2[3] = &block_descriptor_23;
      v10 = _Block_copy(v2);
    }

    else
    {
      v10 = 0;
    }

    [v2[8] setPacketHandler_];
    _Block_release(v10);
    v11 = v3;
    v12 = v4;
  }

  sub_1BA852994(v11, v12);

  free(v2);
}

void sub_1BA852884(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a2;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1BA852A88;
    *(v6 + 24) = v5;
    v7[4] = sub_1BA852A8C;
    v7[5] = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1BA85248C;
    v7[3] = &block_descriptor_58;
    v3 = _Block_copy(v7);
  }

  [v2 setPacketHandler_];
  _Block_release(v3);
}

uint64_t sub_1BA852994(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA8529C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BA8529D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v11 = a1;
  v9[1] = a5;
  v10 = a3;
  v9[0] = a4;
  v6(&v8, &v11, a2, &v10, v9);
  return v8;
}

uint64_t sub_1BA852A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v13 = a1;
  v11 = a3;
  v12 = a2;
  v9 = a5;
  v10 = a4;
  v6(&v8, &v13, &v12, &v11, &v10, &v9);
  return v8;
}

uint64_t NEAppProxyTCPFlow.remoteFlowEndpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = [v2 remoteFlowEndpoint];
  sub_1BAA398FC();
  v8 = sub_1BAA398EC();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t NEFilterSocketFlow.remoteFlowEndpoint.getter()
{
  v1 = [v0 remoteFlowEndpoint];

  return sub_1BAA398FC();
}

uint64_t NEFilterSocketFlow.localFlowEndpoint.getter()
{
  v1 = [v0 localFlowEndpoint];

  return sub_1BAA398FC();
}

void NEAppProxyUDPFlow.readDatagrams(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1BA853070;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1BA853078;
  v7[3] = &block_descriptor_2;
  v6 = _Block_copy(v7);

  [v2 readDatagramsAndFlowEndpointsWithCompletionHandler_];
  _Block_release(v6);
}

void *sub_1BA852D34(unint64_t a1, unint64_t a2, char *a3, unint64_t a4, unint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1BAA398EC();
  v41 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v34 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v29)
    {
      v18 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
LABEL_19:

        sub_1BA854050(v26, v18);
        v25 = v27;

        goto LABEL_20;
      }

      v39 = result;
      v30[1] = a1;
      v31 = a3;
      v32 = a5;
      v33 = a4;
      v42 = MEMORY[0x1E69E7CC0];
      result = sub_1BA853C48(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      a4 = 0;
      v40 = a2 & 0xC000000000000001;
      v18 = v42;
      v37 = i;
      v38 = (v41 + 48);
      v35 = v12;
      v36 = v41 + 32;
      v19 = (v41 + 32);
      while (1)
      {
        a3 = (a4 + 1);
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v40)
        {
          MEMORY[0x1BFAF8D80](a4, a2);
        }

        else
        {
          if (a4 >= *(v34 + 16))
          {
            goto LABEL_22;
          }

          swift_unknownObjectRetain();
        }

        a1 = a2;
        swift_unknownObjectRetain();
        sub_1BAA398FC();
        v20 = v39;
        result = (*v38)(v12, 1, v39);
        if (result == 1)
        {
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
        v21 = *v19;
        (*v19)(v16, v12, v20);
        v42 = v18;
        v22 = v16;
        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        a5 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          sub_1BA853C48((v23 > 1), v24 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = a5;
        result = v21(v18 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, v22, v20);
        ++a4;
        a2 = a1;
        v16 = v22;
        v12 = v35;
        if (a3 == v37)
        {
          a4 = v33;
          a3 = v31;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v28 = result;
      v29 = sub_1BAA3A10C();
      result = v28;
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    v25 = 0;
LABEL_20:
    (a4)(v25, a3);
  }

  return result;
}

uint64_t sub_1BA853078(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1BAA39E4C();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB88, &qword_1BAA4CEE8);
    v5 = sub_1BAA39E4C();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BA853184()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[18];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1BA853314;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BA853484;
  *(v9 + 24) = v8;
  v1[14] = sub_1BA854620;
  v1[15] = v9;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1BA853078;
  v1[13] = &block_descriptor_10;
  v10 = _Block_copy(v4);

  [v6 readDatagramsAndFlowEndpointsWithCompletionHandler_];
  _Block_release(v10);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BA853314()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1BA853418(uint64_t a1, void *a2, uint64_t a3)
{

  v6 = a2;
  v7 = *(*(a3 + 64) + 40);
  *v7 = a1;
  v7[1] = a2;

  return swift_continuation_resume();
}

void NEAppProxyUDPFlow.writeDatagrams(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v42 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v42 - v18;
  v19 = *(a1 + 16);
  if (v19)
  {
    v45 = v17;
    v46 = v16;
    v47 = a2;
    v43 = a3;
    v44 = v3;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA853C68(0, v19, 0);
    v20 = aBlock[0];
    v21 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v53 = *(v8 + 72);
    v22 = v21;
    v23 = v19;
    v49 = v7;
    do
    {
      v24 = v50;
      sub_1BA853C88(v22, v50);
      v25 = v51;
      sub_1BA853C88(v24, v51);
      v26 = *(v7 + 48);
      *v13 = *v25;
      v27 = sub_1BAA398EC();
      v48 = *(v27 - 8);
      v28 = *(v48 + 32);
      v52 = v27;
      v28(v13 + v26, &v25[v26]);
      v29 = *v13;
      v30 = v13[1];
      sub_1BA8498C4(*v13, v30);
      sub_1BA853CF8(v13);
      sub_1BA853CF8(v24);
      aBlock[0] = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1BA853C68((v31 > 1), v32 + 1, 1);
        v20 = aBlock[0];
      }

      *(v20 + 16) = v32 + 1;
      v33 = v20 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v22 += v53;
      --v23;
      v7 = v49;
    }

    while (v23);
    v51 = v20;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BAA3A0CC();
    a2 = v47;
    v34 = (v48 + 8);
    v36 = v45;
    v35 = v46;
    while (1)
    {
      sub_1BA853C88(v21, v36);
      sub_1BA853C88(v36, v35);
      sub_1BA84724C(*v35, *(v35 + 8));
      v37 = *(v7 + 48);
      v38 = sub_1BAA398DC();
      (*v34)(v35 + v37, v52);
      if (!v38)
      {
        break;
      }

      sub_1BA853CF8(v36);
      sub_1BAA3A0AC();
      sub_1BAA3A0DC();
      sub_1BAA3A0EC();
      sub_1BAA3A0BC();
      v21 += v53;
      if (!--v19)
      {
        a3 = v43;
        v3 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v39 = sub_1BAA39E3C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB88, &qword_1BAA4CEE8);
    v40 = sub_1BAA39E3C();

    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA8538E4;
    aBlock[3] = &block_descriptor_13;
    v41 = _Block_copy(aBlock);

    [v3 writeDatagrams:v39 sentByFlowEndpoints:v40 completionHandler:v41];
    _Block_release(v41);
  }
}

void sub_1BA8538E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NEAppProxyUDPFlow.writeDatagrams(_:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BA853970, 0, 0);
}

uint64_t sub_1BA853970()
{
  v1 = v0 + 2;
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1BA853A50;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  NEAppProxyUDPFlow.writeDatagrams(_:completionHandler:)(v2, sub_1BA853D60, v4);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BA853A50()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1BA853B58(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB90, &qword_1BAA4DBF0);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t NEAppProxyUDPFlow.localFlowEndpoint.getter()
{
  v1 = [v0 localFlowEndpoint];

  return sub_1BAA398FC();
}

void *sub_1BA853C48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA853D68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BA853C68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BA853F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1BA853C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA853CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BA853D68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC0EBB0, qword_1BAA4CF10);
  v10 = *(sub_1BAA398EC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1BAA398EC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1BA853F40(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB98, &qword_1BAA4CF00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BA854050(uint64_t a1, uint64_t a2)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  v4 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v68 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v68 - v11;
  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  v76 = a2;
  v77 = v14;
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v74 = v10;
  v75 = v13;
  v72 = &v68 - v11;
  v73 = v4;
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA8, &qword_1BAA4CF08);
    v16 = *(v4 + 72);
    v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v71 = *(v4 + 80);
    v79 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v79);
    v80 = v16;
    if (!v16)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v18 - v17 == 0x8000000000000000 && v80 == -1)
    {
      goto LABEL_56;
    }

    v20 = v79;
    v21 = (v18 - v17) / v80;
    *(v79 + 2) = v15;
    *(v20 + 3) = 2 * v21;
    v70 = v17;
    v22 = &v20[v17];
    v23 = v78;
    v24 = v21 & 0x7FFFFFFFFFFFFFFFLL;
    v68 = a1;
    v25 = (a1 + 32);
    v26 = sub_1BAA398EC();
    v27 = *(v26 - 8);
    v28 = *(v27 + 16);
    v29 = v76 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v30 = *(v27 + 72);
    v81 = v24 - v15;
    v69 = v15;
    v31 = v15;
    do
    {
      v32 = *(v23 + 48);
      v33 = *v25++;
      v82 = v33;
      *v7 = v33;
      v28(&v7[v32], v29, v26);
      sub_1BA8545A0(v7, v22);
      v22 += v80;
      sub_1BA8498C4(v82, *(&v82 + 1));
      v29 += v30;
      --v31;
    }

    while (v31);
    v4 = v73;
    v10 = v74;
    v12 = v72;
    v13 = v75;
    a1 = v68;
    v15 = v69;
  }

  else
  {
    v34 = *(v4 + 80);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = *(MEMORY[0x1E69E7CC0] + 24);

    v70 = (v34 + 32) & ~v34;
    v71 = v34;
    v79 = v35;
    v22 = &v35[v70];
    v81 = v36 >> 1;
  }

  v37 = v77;
  if (v13 > v77)
  {
    v38 = (a1 + 16 * v15 + 40);
    while (v15 < v13)
    {
      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_48;
      }

      if (v37 == v15)
      {
        goto LABEL_42;
      }

      if (v15 >= v37)
      {
        goto LABEL_49;
      }

      v41 = *(v38 - 1);
      v40 = *v38;
      v42 = sub_1BAA398EC();
      v43 = *(v42 - 8);
      v44 = *(v43 + 16);
      v45 = v76 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v15;
      v46 = *(v78 + 48);
      *v10 = v41;
      v10[1] = v40;
      v44(v10 + v46, v45, v42);
      sub_1BA8545A0(v10, v12);
      if (v81)
      {
        sub_1BA8498C4(v41, v40);
        v47 = v79;
      }

      else
      {
        v48 = *(v79 + 3);
        if (((v48 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_51;
        }

        v49 = v48 & 0xFFFFFFFFFFFFFFFELL;
        v50 = v4;
        if (v49 <= 1)
        {
          v51 = 1;
        }

        else
        {
          v51 = v49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA8, &qword_1BAA4CF08);
        v52 = *(v50 + 72);
        v53 = v70;
        v47 = swift_allocObject();
        v54 = _swift_stdlib_malloc_size(v47);
        if (!v52)
        {
          goto LABEL_52;
        }

        v55 = v54 - v53;
        if (v54 - v53 == 0x8000000000000000 && v52 == -1)
        {
          goto LABEL_53;
        }

        v57 = v55 / v52;
        *(v47 + 2) = v51;
        *(v47 + 3) = 2 * (v55 / v52);
        v58 = &v47[v53];
        v59 = *(v79 + 2);
        v60 = *(v79 + 3) >> 1;
        v61 = v60 * v52;
        v62 = v53;
        v22 = &v47[v53 + v60 * v52];
        v81 = (v57 & 0x7FFFFFFFFFFFFFFFLL) - v60;
        if (v59)
        {
          v63 = v79;
          if (v47 < v79 || v58 >= &v79[v62 + v61])
          {
            sub_1BA8498C4(v41, v40);
            swift_arrayInitWithTakeFrontToBack();
            v10 = v74;
          }

          else
          {
            v80 = &v79[v62];
            *&v82 = v58;
            sub_1BA8498C4(v41, v40);
            v10 = v74;
            if (v47 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          *(v63 + 2) = 0;

          v12 = v72;
          v4 = v73;
        }

        else
        {
          sub_1BA8498C4(v41, v40);

          v4 = v73;
          v10 = v74;
          v12 = v72;
        }
      }

      v13 = v75;
      v64 = __OFSUB__(v81--, 1);
      if (v64)
      {
        goto LABEL_50;
      }

      sub_1BA8545A0(v12, v22);
      v22 += *(v4 + 72);
      ++v15;
      v38 += 2;
      v79 = v47;
      v37 = v77;
      if (v39 == v13)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_42:
  v47 = v79;
LABEL_43:
  v65 = *(v47 + 3);
  if (v65 >= 2)
  {
    v66 = v65 >> 1;
    v64 = __OFSUB__(v66, v81);
    v67 = v66 - v81;
    if (v64)
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return;
    }

    *(v47 + 2) = v67;
  }
}

uint64_t sub_1BA8545A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EB80, &unk_1BAA4CED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA854638(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBA0, &qword_1BAA4CF60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_1BAA398EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  sub_1BA8548F8();
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBD0, &qword_1BAA4CF68);
  if (!swift_dynamicCast())
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1BA854944(v18);
    return -1;
  }

  sub_1BA8549AC(v18, v21);
  v17[1] = &unk_1F38D4E50;
  swift_dynamicCastObjCProtocolUnconditional();
  swift_unknownObjectRetain();
  sub_1BAA398FC();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = v22;
    v14 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = (*(v14 + 8))(a1, v10, v13, v14);
    (*(v8 + 8))(v10, v7);
    v16 = v15 & 1;
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BA8548F8()
{
  result = qword_1EBC0EBC8;
  if (!qword_1EBC0EBC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBC0EBC8);
  }

  return result;
}

uint64_t sub_1BA854944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EBD8, &unk_1BAA4CF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA8549AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t NEAppExtensionConfiguration.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

void sub_1BA8549FC(void *a1)
{
  [a1 setExportedObject_];
  v3 = v1[8];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol_];
    [a1 setExportedInterface_];

    if (v1[9])
    {
      v6 = [v4 interfaceWithProtocol_];
      [a1 setRemoteObjectInterface_];

      v15 = sub_1BA854E3C;
      v16 = v1;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1BA854C18;
      v14 = &block_descriptor_3;
      v7 = _Block_copy(&v11);

      [a1 setInvalidationHandler_];
      _Block_release(v7);
      v15 = sub_1BA854C74;
      v16 = v1;
      v11 = MEMORY[0x1E69E9820];
      v12 = 1107296256;
      v13 = sub_1BA854C18;
      v14 = &block_descriptor_3;
      v8 = _Block_copy(&v11);

      [a1 setInterruptionHandler_];
      _Block_release(v8);
      v9 = v1[7];
      v1[7] = a1;
      v10 = a1;

      [v10 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BA854C18(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BA854C74()
{
  v1 = *(v0 + 56);
  *(v0 + 56) = 0;
}

uint64_t NEAppExtensionConfiguration.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

void *sub_1BA854D58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[8] = 0;
  a2[9] = 0;
  a2[7] = 0;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BA854EAC()
{
  v153 = v0;
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  *(v0 + 192) = OBJC_IVAR___NEExtensionBaseProviderHost_xpcConnection;
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = v3;
LABEL_50:
    v99 = *(v0 + 8);

    return v99(v3);
  }

  if (qword_1EBC0E910 != -1)
  {
LABEL_66:
    swift_once();
    v1 = *(v0 + 184);
  }

  v5 = sub_1BAA398CC();
  *(v0 + 200) = __swift_project_value_buffer(v5, qword_1EBC11B98);
  v6 = v1;
  v7 = sub_1BAA398AC();
  v8 = sub_1BAA39F9C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = 0x3E612F6E3CLL;
    v10 = *(v0 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v152[0] = v12;
    *v11 = 136315394;
    v13 = [v10 extensionPointName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1BAA39D9C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE500000000000000;
      v15 = 0x3E612F6E3CLL;
    }

    v18 = *(v0 + 184);
    v19 = sub_1BA85AE0C(v15, v17, v152);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2080;
    v20 = [v18 extensionBundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v9 = sub_1BAA39D9C();
      v23 = v22;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_1BA85AE0C(v9, v23, v152);

    *(v11 + 14) = v24;
    _os_log_impl(&dword_1BA83C000, v7, v8, "NEExtensionBaseProviderHost - querying extension %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFC150](v12, -1, -1);
    MEMORY[0x1BFAFC150](v11, -1, -1);
  }

  v25 = [*(v0 + 184) extensionPointName];
  if (!v25 || (v26 = *(v0 + 184), v25, (v27 = [v26 extensionBundleIdentifier]) == 0))
  {
LABEL_49:
    v3 = 0;
    goto LABEL_50;
  }

  v28 = *(v0 + 184);

  v29 = sub_1BAA397FC();
  *(v0 + 208) = v29;
  v30 = *(v29 - 8);
  *(v0 + 216) = v30;
  v31 = swift_task_alloc();
  *(v0 + 224) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECA0, &qword_1BAA4D098);
  v32 = swift_task_alloc();
  v33 = [v28 &_OBJC_LABEL_PROTOCOL___NEPrettyDescription + 7];
  if (v33)
  {
    v34 = v33;
    sub_1BAA39D9C();
  }

  dyld_get_active_platform();
  sub_1BAA3977C();
  v35 = *(v0 + 184);
  (*(v30 + 56))(v32, 0, 1, v29);
  v149 = *(v30 + 32);
  v149(v31, v32, v29);

  *(v0 + 232) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0ECA8, &qword_1BAA4D0A0) - 8) + 64);
  v36 = swift_task_alloc();
  *(v0 + 240) = v36;
  v37 = sub_1BAA3989C();
  *(v0 + 248) = v37;
  v38 = *(v37 - 8);
  *(v0 + 256) = v38;
  v39 = *(v38 + 56);
  *(v0 + 264) = v39;
  *(v0 + 272) = (v38 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v39(v36, 1, 1, v37);
  v40 = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  *(v0 + 280) = OBJC_IVAR___NEExtensionBaseProviderHost_appExtensionMonitor;
  if (*(v35 + v40))
  {
    v41 = sub_1BAA398AC();
    v42 = sub_1BAA39F9C();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_20;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "NEExtensionBaseProviderHost - appExtensionMonitor already exists";
    goto LABEL_19;
  }

  v57 = swift_task_alloc();
  (*(v30 + 16))(v57, v31, v29);
  _s21NEAppExtensionMonitorCMa(0);
  v58 = swift_allocObject();
  sub_1BAA397EC();
  swift_allocObject();
  *(v58 + 16) = sub_1BAA397DC();

  sub_1BAA397CC();

  v149(v58 + OBJC_IVAR____TtCE16NetworkExtensionCSo27NEExtensionBaseProviderHost21NEAppExtensionMonitor_appExtensionPoint, v57, v29);

  *(v35 + v40) = v58;

  v59 = *(v35 + v40);
  *(v0 + 288) = v59;
  if (v59)
  {

    v60 = swift_task_alloc();
    *(v0 + 296) = v60;
    *v60 = v0;
    v60[1] = sub_1BA856014;

    return sub_1BA85824C();
  }

  v41 = sub_1BAA398AC();
  v42 = sub_1BAA39F9C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "NEExtensionBaseProviderHost - created new appExtensionMonitor";
LABEL_19:
    _os_log_impl(&dword_1BA83C000, v41, v42, v44, v43, 2u);
    MEMORY[0x1BFAFC150](v43, -1, -1);
  }

LABEL_20:
  v45 = *(v0 + 184);

  v46 = v45;
  v47 = sub_1BAA398AC();
  v48 = sub_1BAA39F9C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v0 + 184);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v152[0] = v51;
    *v50 = 136315138;
    v52 = [v49 extensionPointName];
    if (v52)
    {
      v53 = v52;
      v54 = sub_1BAA39D9C();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0xE000000000000000;
    }

    v62 = sub_1BA85AE0C(v54, v56, v152);

    *(v50 + 4) = v62;
    _os_log_impl(&dword_1BA83C000, v47, v48, "NEExtensionBaseProviderHost - added extension point %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1BFAFC150](v51, -1, -1);
    MEMORY[0x1BFAFC150](v50, -1, -1);
  }

  if (*(*(v0 + 184) + *(v0 + 280)))
  {
    v63 = sub_1BAA397BC();
    v64 = *(v63 - 8);
    v65 = swift_task_alloc();

    sub_1BAA397CC();
    v66 = sub_1BAA397AC();

    (*(v64 + 8))(v65, v63);
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  v67 = sub_1BAA398AC();
  v68 = sub_1BAA39F9C();

  v145 = v66;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = *(v0 + 248);
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v152[0] = v71;
    *v70 = 136315138;
    v72 = MEMORY[0x1BFAF8B50](v66, v69);
    v74 = sub_1BA85AE0C(v72, v73, v152);

    *(v70 + 4) = v74;
    v66 = v145;
    _os_log_impl(&dword_1BA83C000, v67, v68, "NEExtensionBaseProviderHost - identities %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1BFAFC150](v71, -1, -1);
    MEMORY[0x1BFAFC150](v70, -1, -1);
  }

  v150 = *(v66 + 16);
  if (!v150)
  {
LABEL_46:

    v92 = sub_1BAA398AC();
    v93 = sub_1BAA39F9C();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1BA83C000, v92, v93, "NEExtensionBaseProviderHost - no matching extension found", v94, 2u);
      MEMORY[0x1BFAFC150](v94, -1, -1);
    }

    v95 = *(v0 + 240);
    v97 = *(v0 + 216);
    v96 = *(v0 + 224);
    v98 = *(v0 + 208);

    (*(v97 + 8))(v96, v98);
    sub_1BA84BC58(v95, &qword_1EBC0ECA8, &qword_1BAA4D0A0);

    goto LABEL_49;
  }

  v75 = 0;
  v76 = *(v0 + 256);
  v147 = v66 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
  v77 = (v76 + 8);
  v144 = (v76 + 8);
  while (1)
  {
    if (v75 >= *(v66 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v78 = *(v0 + 248);
    v79 = *(v0 + 184);
    v80 = v147 + *(v76 + 72) * v75;
    v81 = swift_task_alloc();
    (*(v76 + 16))(v81, v80, v78);
    v82 = sub_1BAA3987C();
    v84 = v83;
    v85 = [v79 extensionBundleIdentifier];
    if (!v85)
    {

      goto LABEL_37;
    }

    v86 = v85;
    v87 = sub_1BAA39D9C();
    v89 = v88;

    if (v82 == v87 && v84 == v89)
    {
      break;
    }

    v91 = sub_1BAA3A15C();

    v77 = (v76 + 8);
    v66 = v145;
    if (v91)
    {
      goto LABEL_56;
    }

LABEL_37:
    ++v75;
    (*v77)(v81, *(v0 + 248));

    if (v150 == v75)
    {
      goto LABEL_46;
    }
  }

LABEL_56:

  v100 = *(v0 + 264);
  v101 = *(v0 + 248);
  v102 = *(v0 + 256);
  v103 = *(v0 + 240);
  sub_1BA84BC58(v103, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  (*(v102 + 32))(v103, v81, v101);
  v100(v103, 0, 1, v101);

  v104 = sub_1BAA398AC();
  v105 = sub_1BAA39F9C();
  if (!os_log_type_enabled(v104, v105))
  {
LABEL_61:

    v132 = *(v0 + 248);
    v133 = *(v0 + 256);
    v134 = *(v0 + 240);
    v135 = sub_1BAA3982C();
    *(v0 + 312) = v135;
    v136 = *(v135 - 8);
    *(v0 + 320) = v136;
    *(v0 + 328) = swift_task_alloc();
    swift_beginAccess();
    v137 = swift_task_alloc();
    sub_1BA84985C(v134, v137, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
    v111 = (*(v133 + 48))(v137, 1, v132);
    if (v111 != 1)
    {
      sub_1BAA3981C();

      v138 = sub_1BAA3985C();
      *(v0 + 336) = v138;
      v139 = *(v138 - 8);
      *(v0 + 344) = v139;
      *(v0 + 352) = *(v139 + 64);
      v140 = swift_task_alloc();
      *(v0 + 360) = v140;
      v141 = swift_task_alloc();
      *(v0 + 368) = v141;
      (*(v136 + 16))();
      v142 = swift_task_alloc();
      *(v0 + 376) = v142;
      *v142 = v0;
      v142[1] = sub_1BA856C98;
      v111 = v140;
      v112 = v141;

      return MEMORY[0x1EEDC0880](v111, v112);
    }

    __break(1u);
    goto LABEL_68;
  }

  log = v104;
  v107 = *(v0 + 248);
  v106 = *(v0 + 256);
  v108 = *(v0 + 240);
  v109 = swift_slowAlloc();
  v143 = swift_slowAlloc();
  v152[0] = v143;
  *v109 = 136315650;
  swift_beginAccess();
  v110 = swift_task_alloc();
  sub_1BA84985C(v108, v110, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v151 = *(v106 + 48);
  v111 = v151(v110, 1, v107);
  if (v111 == 1)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v114 = *(v0 + 240);
  v113 = *(v0 + 248);
  v115 = sub_1BAA3988C();
  v117 = v116;
  v148 = *v144;
  (*v144)(v110, v113);

  v118 = sub_1BA85AE0C(v115, v117, v152);

  *(v109 + 4) = v118;
  *(v109 + 12) = 2080;
  v119 = swift_task_alloc();
  sub_1BA84985C(v114, v119, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v111 = v151(v119, 1, v113);
  if (v111 == 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v121 = *(v0 + 240);
  v120 = *(v0 + 248);
  v122 = sub_1BAA3987C();
  v124 = v123;
  v148(v119, v120);

  v125 = sub_1BA85AE0C(v122, v124, v152);

  *(v109 + 14) = v125;
  *(v109 + 22) = 2080;
  v126 = swift_task_alloc();
  sub_1BA84985C(v121, v126, &qword_1EBC0ECA8, &qword_1BAA4D0A0);
  v111 = v151(v126, 1, v120);
  if (v111 != 1)
  {
    v127 = *(v0 + 248);
    v128 = sub_1BAA3986C();
    v130 = v129;
    v148(v126, v127);

    v131 = sub_1BA85AE0C(v128, v130, v152);

    *(v109 + 24) = v131;
    v104 = log;
    _os_log_impl(&dword_1BA83C000, log, v105, "NEExtensionBaseProviderHost - found extension - <%s> <%s> <%s>", v109, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAFC150](v143, -1, -1);
    MEMORY[0x1BFAFC150](v109, -1, -1);
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return MEMORY[0x1EEDC0880](v111, v112);
}