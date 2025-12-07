uint64_t _NEIPSecDBDeleteSA(uint64_t a1, CFDictionaryRef theDict)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  memset(v23, 0, 24);
  Value = CFDictionaryGetValue(theDict, @"Direction");
  if (Value)
  {
    v5 = CFEqual(Value, @"In") == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!NEIPSecDBFilloutBasicSAInfo(theDict, &v15, 0, &v16, &v18, &v17, v23))
  {
    v11 = ne_log_obj();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v12 = 0;
      goto LABEL_21;
    }

    *buf = 138412546;
    v20 = a1;
    v21 = 1024;
    v22 = bswap32(v16);
    v13 = "%@ NEIPSecDBFilloutBasicSAInfo error for SPI %08X";
LABEL_27:
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    goto LABEL_20;
  }

  if (v5)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17;
  }

  if (v5)
  {
    v7 = v17;
  }

  else
  {
    v7 = v18;
  }

  if (LOBYTE(v23[0]))
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = NEPFKeySendDelete(*(a1 + 64), v15, v6, v7, v16, v8);
  v10 = ne_log_obj();
  v11 = v10;
  if (!v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412546;
    v20 = a1;
    v21 = 1024;
    v22 = bswap32(v16);
    v13 = "%@ pfkey send delete failed for SPI %08X";
    goto LABEL_27;
  }

  v12 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = a1;
    v21 = 1024;
    v22 = bswap32(v16);
    _os_log_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_INFO, "%@ deleted SA SPI %08X", buf, 0x12u);
  }

LABEL_21:
  if (v18)
  {
    free(v18);
  }

  if (v17)
  {
    free(v17);
  }

  return v12;
}

uint64_t NEIPSecDBCopySA(uint64_t a1, int a2)
{
  v43[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v30 = 0;
    memset(v43, 0, 24);
    *&v40 = 0;
    *(&v40 + 1) = &v40;
    v41 = 0x2000000000;
    v42 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2000000000;
    v29 = 0;
    v25 = 0;
    v4 = _NEIPSecDBGetQueue();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = __NEIPSecDBCopySA_block_invoke;
    v23[3] = &unk_1E7F08FA8;
    v23[5] = &v26;
    v23[6] = a1;
    v24 = a2;
    v23[4] = &v40;
    dispatch_sync(v4, v23);
    v5 = *(*(&v40 + 1) + 24);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"Direction");
      if (Value)
      {
        v7 = CFEqual(Value, @"In") == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!NEIPSecDBFilloutBasicSAInfo(*(*(&v40 + 1) + 24), &v30, 0, &v31, &v33, &v32, v43))
      {
        goto LABEL_27;
      }

      if (v7)
      {
        v10 = v33;
      }

      else
      {
        v10 = v32;
      }

      if (v7)
      {
        v11 = v32;
      }

      else
      {
        v11 = v33;
      }

      if (LOBYTE(v43[0]))
      {
        v12 = v43;
      }

      else
      {
        v12 = 0;
      }

      if (NEPFKeySendGet(*(a1 + 64), v30, v10, v11, v31, v12))
      {
        v13 = NEIPSecDBCopyResponseForQueuedRequest(v27[3], &v25);
        v14 = ne_log_obj();
        v15 = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v35 = a1;
            v36 = 1024;
            v37 = a2;
            v38 = 1024;
            v39 = bswap32(v31);
            _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_INFO, "%@ copied SAID %u cSPI %08X", buf, 0x18u);
          }

          goto LABEL_27;
        }

        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
LABEL_27:
          v17 = *(&v40 + 1);
          v18 = *(*(&v40 + 1) + 24);
          if (v18)
          {
            CFRelease(v18);
            *(v17 + 24) = 0;
          }

          if (v33)
          {
            free(v33);
          }

          if (v32)
          {
            free(v32);
          }

          v19 = v27[3];
          if (v19)
          {
            NEIPSecDBRemoveQueuedRequest(v19);
            free(v27[3]);
          }

          v20 = v25;
          _Block_object_dispose(&v26, 8);
          _Block_object_dispose(&v40, 8);
          return v20;
        }

        *buf = 138412290;
        v35 = a1;
        v9 = "%@ failed to receive response for pfkey get SA";
        v16 = v15;
LABEL_25:
        _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
        goto LABEL_27;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v35 = a1;
      v9 = "%@ pfkey send get SA failed";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      *buf = 138412290;
      v35 = a1;
      v9 = "%@ copy SA, saData is NULL";
    }

    v16 = v8;
    goto LABEL_25;
  }

  v22 = ne_log_obj();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v40) = 136315138;
    *(&v40 + 4) = "NEIPSecDBCopySA";
    _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "%s called with null session", &v40, 0xCu);
  }

  return 0;
}

CFArrayRef NEIPSecDBCopySAIDs(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x2000000000;
    v15 = 0;
    v2 = _NEIPSecDBGetQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __NEIPSecDBCopySAIDs_block_invoke;
    v12[3] = &unk_1E7F08FD0;
    v12[4] = &buf;
    v12[5] = a1;
    dispatch_sync(v2, v12);
    v3 = *(*(&buf + 1) + 24);
    if (v3 && (Count = CFDictionaryGetCount(v3), Count >= 1))
    {
      v5 = Count;
      v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      CFDictionaryGetKeysAndValues(*(*(&buf + 1) + 24), v6, 0);
      v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, v5, MEMORY[0x1E695E9C0]);
      free(v6);
    }

    else
    {
      v7 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
    }

    v8 = *(&buf + 1);
    v9 = *(*(&buf + 1) + 24);
    if (v9)
    {
      CFRelease(v9);
      *(v8 + 24) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBCopySAIDs";
      _os_log_fault_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    return 0;
  }

  return v7;
}

CFDictionaryRef __NEIPSecDBCopySAIDs_block_invoke(CFDictionaryRef result)
{
  v1 = *(*(result + 5) + 80);
  if (v1)
  {
    v2 = result;
    result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBFlushSAs(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = a1;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@ flush all SAs", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2000000000;
    v19 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBFlushSAs_block_invoke;
    block[3] = &unk_1E7F08FF8;
    block[5] = &v13;
    block[6] = a1;
    block[4] = &buf;
    dispatch_sync(v4, block);
    if (CFDictionaryGetCount(*(*(&buf + 1) + 24)) < 1 || (CFDictionaryApplyFunction(*(*(&buf + 1) + 24), NEIPSecDBFlushSAHelper, a1), (NEIPSecDBCopyResponseForQueuedRequest(v14[3], 0) & 1) != 0))
    {
      v5 = 1;
    }

    else
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "failed to receive response for pfkey flush SA", v11, 2u);
      }

      v5 = 0;
    }

    v7 = *(&buf + 1);
    v8 = *(*(&buf + 1) + 24);
    if (v8)
    {
      CFRelease(v8);
      *(v7 + 24) = 0;
    }

    v9 = v14[3];
    if (v9)
    {
      NEIPSecDBRemoveQueuedRequest(v9);
      free(v14[3]);
    }

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBFlushSAs";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    return 0;
  }

  return v5;
}

_OWORD *__NEIPSecDBFlushSAs_block_invoke(_OWORD *result)
{
  v1 = *(*(result + 6) + 80);
  if (v1)
  {
    v2 = result;
    *(*(*(result + 4) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    result = NEIPSecDBCreateQueuedRequest(*(v2 + 6), 9, 0);
    *(*(*(v2 + 5) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBAddPolicy(uint64_t a1, CFTypeRef cf)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 136315138;
    v88 = "NEIPSecDBAddPolicy";
    v15 = "%s called with null session";
LABEL_191:
    _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, v15, buf, 0xCu);
    return 0;
  }

  if (!*(a1 + 88))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 136315138;
    v88 = "NEIPSecDBAddPolicy";
    v15 = "%s called with null session->policies";
    goto LABEL_191;
  }

  v77 = 0;
  valuePtr = -1;
  *buffer = 0;
  v85 = 0;
  v86 = 0;
  *v81 = 0;
  v82 = 0;
  v83 = 0;
  *v78 = 0;
  v79 = 0;
  v80 = 0;
  v75 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2000000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  if (NEInitCFTypes_onceToken == -1)
  {
    if (!cf)
    {
      goto LABEL_97;
    }
  }

  else
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
    if (!cf)
    {
      goto LABEL_97;
    }
  }

  v4 = CFDICTIONARY_TYPE;
  if (CFGetTypeID(cf) != v4)
  {
    goto LABEL_97;
  }

  if (!NEGetValueWithType(cf, @"Mode", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3756;
    v91 = 2112;
    v92 = @"Mode";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"IPSecProtocol", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3757;
    v91 = 2112;
    v92 = @"IPSecProtocol";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"LocalAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3758;
    v91 = 2112;
    v92 = @"LocalAddress";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (!NEGetValueWithType(cf, @"RemoteAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3759;
    v91 = 2112;
    v92 = @"RemoteAddress";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPrefix") && !NEGetValueWithType(cf, @"LocalPrefix", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3760;
    v91 = 2112;
    v92 = @"LocalPrefix";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePrefix") && !NEGetValueWithType(cf, @"RemotePrefix", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3761;
    v91 = 2112;
    v92 = @"RemotePrefix";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"LocalPort") && !NEGetValueWithType(cf, @"LocalPort", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3762;
    v91 = 2112;
    v92 = @"LocalPort";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"RemotePort") && !NEGetValueWithType(cf, @"RemotePort", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3763;
    v91 = 2112;
    v92 = @"RemotePort";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"UpperLayerProtocol") && !NEGetValueWithType(cf, @"UpperLayerProtocol", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3765;
    v91 = 2112;
    v92 = @"UpperLayerProtocol";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"UniqueID") && !NEGetValueWithType(cf, @"UniqueID", CFNUMBER_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3766;
    v91 = 2112;
    v92 = @"UniqueID";
    v93 = 2048;
    v94 = CFNUMBER_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"Direction") && !NEGetValueWithType(cf, @"Direction", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3767;
    v91 = 2112;
    v92 = @"Direction";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"Level") && !NEGetValueWithType(cf, @"Level", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3769;
    v91 = 2112;
    v92 = @"Level";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OuterLocalAddress") && !NEGetValueWithType(cf, @"OuterLocalAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3771;
    v91 = 2112;
    v92 = @"OuterLocalAddress";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OuterRemoteAddress") && !NEGetValueWithType(cf, @"OuterRemoteAddress", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3772;
    v91 = 2112;
    v92 = @"OuterRemoteAddress";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"IPSecInterface") && !NEGetValueWithType(cf, @"IPSecInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3774;
    v91 = 2112;
    v92 = @"IPSecInterface";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"InternalInterface") && !NEGetValueWithType(cf, @"InternalInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3775;
    v91 = 2112;
    v92 = @"InternalInterface";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (CFDictionaryContainsKey(cf, @"OutgoingInterface") && !NEGetValueWithType(cf, @"OutgoingInterface", CFSTRING_TYPE))
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_97;
    }

    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3776;
    v91 = 2112;
    v92 = @"OutgoingInterface";
    v93 = 2048;
    v94 = CFSTRING_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_96;
  }

  if (!CFDictionaryContainsKey(cf, @"IntializeDisabled") || NEGetValueWithType(cf, @"IntializeDisabled", CFBOOLEAN_TYPE))
  {
    if (CFDictionaryContainsKey(cf, @"Mode") && (Value = CFDictionaryGetValue(cf, @"Mode")) != 0)
    {
      v6 = CFEqual(Value, @"Transport");
      v7 = v6 == 0;
      if (v6)
      {
        v8 = 1;
        goto LABEL_74;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = 2;
LABEL_74:
    if (CFDictionaryContainsKey(cf, @"Direction"))
    {
      v11 = CFDictionaryGetValue(cf, @"Direction");
      if (v11)
      {
        v12 = v11;
        if (CFEqual(v11, @"In"))
        {
          v13 = 0;
LABEL_89:
          v17 = 1;
          goto LABEL_90;
        }

        if (CFEqual(v12, @"Out"))
        {
          v17 = 0;
          v13 = 1;
LABEL_90:
          if (!CFDictionaryContainsKey(cf, @"IPSecProtocol"))
          {
            v64 = 0;
            goto LABEL_112;
          }

          v18 = CFDictionaryGetValue(cf, @"IPSecProtocol");
          if (v18)
          {
            v19 = v18;
            if (CFEqual(v18, @"ESP"))
            {
              v20 = 50;
LABEL_111:
              v64 = v20;
LABEL_112:
              if (CFDictionaryContainsKey(cf, @"UpperLayerProtocol"))
              {
                v25 = CFDictionaryGetValue(cf, @"UpperLayerProtocol");
                CFNumberGetValue(v25, kCFNumberCharType, &valuePtr);
              }

              v65 = v8;
              v62 = v17;
              if (v7)
              {
                if (CFDictionaryContainsKey(cf, @"OuterLocalAddress"))
                {
                  v26 = CFDictionaryGetValue(cf, @"OuterLocalAddress");
                  v27 = NECreateAddressStructFromString(v26, 0, 0);
                }

                else
                {
                  v27 = 0;
                }

                if (CFDictionaryContainsKey(cf, @"OuterRemoteAddress"))
                {
                  v28 = CFDictionaryGetValue(cf, @"OuterRemoteAddress");
                  v29 = NECreateAddressStructFromString(v28, 0, 0);
LABEL_124:
                  v30 = CFDictionaryGetValue(cf, @"Level");
                  if (!v30 || (v31 = v30, CFEqual(v30, @"None")))
                  {
                    LOBYTE(v63) = 0;
                    v32 = 1;
LABEL_127:
                    WORD2(v63) = v32;
                    goto LABEL_128;
                  }

                  if (CFEqual(v31, @"Unique"))
                  {
                    if (CFDictionaryContainsKey(cf, @"UniqueID"))
                    {
                      v60 = CFDictionaryGetValue(cf, @"UniqueID");
                      CFNumberGetValue(v60, kCFNumberShortType, &v75);
                    }

                    v63 = 0x200000003;
                  }

                  else
                  {
                    if (CFEqual(v31, @"Require"))
                    {
                      v32 = 2;
                      LOBYTE(v63) = 2;
                      goto LABEL_127;
                    }

                    if (!CFEqual(v31, @"Discard"))
                    {
                      v61 = ne_log_obj();
                      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_error_impl(&dword_1BA83C000, v61, OS_LOG_TYPE_ERROR, "add policy, invalid policy level", buf, 2u);
                      }

                      v46 = 0;
                      v43 = 0;
                      v38 = 0;
                      v35 = 0;
                      if (!v27)
                      {
                        goto LABEL_178;
                      }

                      goto LABEL_177;
                    }

                    v63 = 0;
                  }

LABEL_128:
                  v33 = CFDictionaryGetValue(cf, @"LocalAddress");
                  v34 = CFDictionaryGetValue(cf, @"LocalPort");
                  v35 = NECreateAddressStructFromString(v33, v34, 0);
                  if (CFDictionaryContainsKey(cf, @"LocalRangeEndAddress"))
                  {
                    v36 = CFDictionaryGetValue(cf, @"LocalRangeEndAddress");
                    v37 = CFDictionaryGetValue(cf, @"LocalRangeEndPort");
                    v38 = NECreateAddressStructFromString(v36, v37, 0);
                  }

                  else
                  {
                    v38 = 0;
                  }

                  if (CFDictionaryContainsKey(cf, @"LocalPrefix"))
                  {
                    v39 = CFDictionaryGetValue(cf, @"LocalPrefix");
                    CFNumberGetValue(v39, kCFNumberCharType, &v77 + 1);
                  }

                  else
                  {
                    if (v7)
                    {
                      v40 = 24;
                    }

                    else
                    {
                      v40 = 32;
                    }

                    HIBYTE(v77) = v40;
                  }

                  v41 = CFDictionaryGetValue(cf, @"RemoteAddress");
                  v42 = CFDictionaryGetValue(cf, @"RemotePort");
                  v43 = NECreateAddressStructFromString(v41, v42, 0);
                  if (CFDictionaryContainsKey(cf, @"RemoteRangeEndAddress"))
                  {
                    v44 = CFDictionaryGetValue(cf, @"RemoteRangeEndAddress");
                    v45 = CFDictionaryGetValue(cf, @"RemoteRangeEndPort");
                    v46 = NECreateAddressStructFromString(v44, v45, 0);
                  }

                  else
                  {
                    v46 = 0;
                  }

                  if (CFDictionaryContainsKey(cf, @"RemotePrefix"))
                  {
                    v47 = CFDictionaryGetValue(cf, @"RemotePrefix");
                    CFNumberGetValue(v47, kCFNumberCharType, &v77);
                  }

                  else
                  {
                    if (v7)
                    {
                      v48 = 24;
                    }

                    else
                    {
                      v48 = 32;
                    }

                    LOBYTE(v77) = v48;
                  }

                  if (CFDictionaryContainsKey(cf, @"IPSecInterface"))
                  {
                    v49 = CFDictionaryGetValue(cf, @"IPSecInterface");
                    CFStringGetCString(v49, buffer, 24, 0x600u);
                  }

                  if (CFDictionaryContainsKey(cf, @"InternalInterface"))
                  {
                    v50 = CFDictionaryGetValue(cf, @"InternalInterface");
                    CFStringGetCString(v50, v81, 24, 0x600u);
                  }

                  if (CFDictionaryContainsKey(cf, @"OutgoingInterface"))
                  {
                    v51 = CFDictionaryGetValue(cf, @"OutgoingInterface");
                    CFStringGetCString(v51, v78, 24, 0x600u);
                  }

                  v52 = CFDictionaryGetValue(cf, @"IntializeDisabled");
                  if (v52)
                  {
                    v53 = CFBooleanGetValue(v52) != 0;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = _NEIPSecDBGetQueue();
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 0x40000000;
                  block[2] = __NEIPSecDBAddPolicy_block_invoke;
                  block[3] = &unk_1E7F09020;
                  block[6] = a1;
                  block[7] = cf;
                  block[4] = &v71;
                  block[5] = &v67;
                  dispatch_sync(v54, block);
                  if (!v13)
                  {
                    goto LABEL_164;
                  }

                  v55 = buffer;
                  if (!buffer[0])
                  {
                    v55 = 0;
                  }

                  v56 = v81;
                  if (!v81[0])
                  {
                    v56 = 0;
                  }

                  v57 = v78;
                  if (!v78[0])
                  {
                    v57 = 0;
                  }

                  if (!NEPFKeySendSPDAdd(*(a1 + 64), v35, v38, HIBYTE(v77), v43, v46, v77, valuePtr, WORD2(v63), 2, v64, v65, v63, v75, v27, v29, 0, v55, v56, v57, v53))
                  {
                    v58 = ne_log_obj();
                    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      v59 = "pfkey send add policy failed";
                      goto LABEL_199;
                    }
                  }

                  else
                  {
LABEL_164:
                    if (v62 && !NEPFKeySendSPDAdd(*(a1 + 64), v43, v46, v77, v35, v38, HIBYTE(v77), valuePtr, WORD2(v63), 1, v64, v65, v63, v75, v29, v27, 0, 0, 0, 0, v53))
                    {
                      v58 = ne_log_obj();
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v59 = "pfkey send add policy failed";
                        goto LABEL_199;
                      }
                    }

                    else
                    {
                      if (NEIPSecDBCopyResponseForQueuedRequest(v68[3], 0))
                      {
                        goto LABEL_176;
                      }

                      v58 = ne_log_obj();
                      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v59 = "failed to receive response for pfkey add policy";
LABEL_199:
                        _os_log_error_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_ERROR, v59, buf, 2u);
                      }
                    }
                  }

                  NEIPSecDBRemovePolicyIDFromSAs(a1, *(v72 + 6));
                  *(v72 + 6) = 0;
LABEL_176:
                  if (!v27)
                  {
LABEL_178:
                    if (v29)
                    {
                      free(v29);
                    }

                    if (v43)
                    {
                      free(v43);
                    }

                    if (v35)
                    {
                      free(v35);
                    }

                    if (v46)
                    {
                      free(v46);
                    }

                    if (v38)
                    {
                      free(v38);
                    }

                    goto LABEL_98;
                  }

LABEL_177:
                  free(v27);
                  goto LABEL_178;
                }
              }

              else
              {
                v27 = 0;
              }

              v29 = 0;
              goto LABEL_124;
            }

            if (CFEqual(v19, @"AH"))
            {
              v20 = 51;
              goto LABEL_111;
            }
          }

          v21 = ne_log_obj();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v24 = "add policy, invalid ipsec protocol";
            goto LABEL_103;
          }

          goto LABEL_98;
        }
      }

      v21 = ne_log_obj();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_98;
      }

      *buf = 0;
      v24 = "add policy, invalid direction";
      goto LABEL_103;
    }

    v13 = 1;
    goto LABEL_89;
  }

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v88 = "NEIPSecDBValidatePolicyDictionary";
    v89 = 1024;
    v90 = 3778;
    v91 = 2112;
    v92 = @"IntializeDisabled";
    v93 = 2048;
    v94 = CFBOOLEAN_TYPE;
    v10 = "%s:%d: type of value for key %@ != %lu";
LABEL_96:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, buf, 0x26u);
  }

LABEL_97:
  v21 = ne_log_obj();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v24 = "add policy dictionary validation failed";
LABEL_103:
    _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, v24, buf, 2u);
  }

LABEL_98:
  v22 = v68[3];
  if (v22)
  {
    NEIPSecDBRemoveQueuedRequest(v22);
    free(v68[3]);
  }

  v16 = *(v72 + 6);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  return v16;
}

_OWORD *__NEIPSecDBAddPolicy_block_invoke(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v4 = *(v3 + 76);
  if ((v4 + 1) > 1)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + 76) = v5;
  *(*(a1[4] + 8) + 24) = v4;
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    NEAddValueToIntKeyedDictionary(*(a1[6] + 88), *(*(a1[4] + 8) + 24), MutableCopy);
    CFRelease(v7);
  }

  result = NEIPSecDBCreateQueuedRequest(a1[6], 14, *(*(a1[4] + 8) + 24));
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void NEIPSecDBRemovePolicyIDFromSAs(uint64_t a1, int a2)
{
  v4 = _NEIPSecDBGetQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __NEIPSecDBRemovePolicyIDFromSAs_block_invoke;
  v5[3] = &__block_descriptor_tmp_229;
  v5[4] = a1;
  v6 = a2;
  dispatch_sync(v4, v5);
}

uint64_t NEIPSecDBDeletePolicy(uint64_t a1, int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x2000000000;
    v25 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBDeletePolicy_block_invoke;
    block[3] = &unk_1E7F09048;
    block[5] = &v19;
    block[6] = a1;
    v18 = a2;
    block[4] = &buf;
    dispatch_sync(v4, block);
    v5 = *(*(&buf + 1) + 24);
    if (v5)
    {
      v6 = *(a1 + 64);
      v7 = NEGetIntFromDictionary(v5, @"PolicyID", 0);
      if (pfkey_send_x5(v6, 22, v7))
      {
        if (NEIPSecDBCopyResponseForQueuedRequest(v20[3], 0))
        {
          v8 = 1;
LABEL_14:
          v11 = *(&buf + 1);
          v12 = *(*(&buf + 1) + 24);
          if (v12)
          {
            CFRelease(v12);
            *(v11 + 24) = 0;
          }

          v13 = v20[3];
          if (v13)
          {
            NEIPSecDBRemoveQueuedRequest(v13);
            free(v20[3]);
          }

          _Block_object_dispose(&v19, 8);
          _Block_object_dispose(&buf, 8);
          return v8;
        }

        v9 = ne_log_obj();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *v16 = 0;
          v10 = "failed to receive response for pfkey delete policy";
          goto LABEL_12;
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }

      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v16 = 0;
      v10 = "pfkey send delete policy failed";
    }

    else
    {
      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *v16 = 0;
      v10 = "delete policy, policy data is NULL";
    }

LABEL_12:
    _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, v10, v16, 2u);
    goto LABEL_13;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBDeletePolicy";
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
  }

  return 0;
}

uint64_t NEIPSecDBCopyPolicy(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v25 = 0x2000000000;
    v26 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v19 = 0;
    v4 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBCopyPolicy_block_invoke;
    block[3] = &unk_1E7F09070;
    block[5] = &v20;
    block[6] = a1;
    v18 = a2;
    block[4] = &buf;
    dispatch_sync(v4, block);
    v5 = *(*(&buf + 1) + 24);
    if (v5)
    {
      v6 = *(a1 + 64);
      v7 = NEGetIntFromDictionary(v5, @"PolicyID", 0);
      if (pfkey_send_x5(v6, 16, v7))
      {
        if (NEIPSecDBCopyResponseForQueuedRequest(v21[3], &v19))
        {
          goto LABEL_10;
        }

        v8 = ne_log_obj();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

        *v16 = 0;
        v9 = "failed to receive response for pfkey spd get";
        goto LABEL_17;
      }

      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_10:
        v10 = *(&buf + 1);
        v11 = *(*(&buf + 1) + 24);
        if (v11)
        {
          CFRelease(v11);
          *(v10 + 24) = 0;
        }

        v12 = v21[3];
        if (v12)
        {
          NEIPSecDBRemoveQueuedRequest(v12);
          free(v21[3]);
        }

        v13 = v19;
        _Block_object_dispose(&v20, 8);
        _Block_object_dispose(&buf, 8);
        return v13;
      }

      *v16 = 0;
      v9 = "pfkey send spd get failed";
    }

    else
    {
      v8 = ne_log_obj();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      *v16 = 0;
      v9 = "copy policy, policy data is NULL";
    }

LABEL_17:
    _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, v9, v16, 2u);
    goto LABEL_10;
  }

  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicy";
    _os_log_fault_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
  }

  return 0;
}

CFArrayRef NEIPSecDBCopyPolicyIDs(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicyIDs";
    v11 = "%s called with null session";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, v11, &buf, 0xCu);
    return 0;
  }

  if (!*(a1 + 88))
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = "NEIPSecDBCopyPolicyIDs";
    v11 = "%s called with null session->policies";
    goto LABEL_15;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = _NEIPSecDBGetQueue();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __NEIPSecDBCopyPolicyIDs_block_invoke;
  v12[3] = &unk_1E7F09098;
  v12[4] = &buf;
  v12[5] = a1;
  dispatch_sync(v2, v12);
  Count = CFDictionaryGetCount(*(*(&buf + 1) + 24));
  if (Count < 1)
  {
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, 0);
  }

  else
  {
    v4 = Count;
    v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(*(*(&buf + 1) + 24), v5, 0);
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], v5, v4, MEMORY[0x1E695E9C0]);
    free(v5);
  }

  v7 = *(&buf + 1);
  v8 = *(*(&buf + 1) + 24);
  if (v8)
  {
    CFRelease(v8);
    *(v7 + 24) = 0;
  }

  _Block_object_dispose(&buf, 8);
  return v6;
}

CFDictionaryRef __NEIPSecDBCopyPolicyIDs_block_invoke(CFDictionaryRef result)
{
  v1 = *(*(result + 5) + 88);
  if (v1)
  {
    v2 = result;
    result = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

uint64_t NEIPSecDBFlushPolicies(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2000000000;
    v18 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v2 = _NEIPSecDBGetQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __NEIPSecDBFlushPolicies_block_invoke;
    block[3] = &unk_1E7F090C0;
    block[5] = &v12;
    block[6] = a1;
    block[4] = &buf;
    dispatch_sync(v2, block);
    if (CFDictionaryGetCount(*(*(&buf + 1) + 24)) < 1 || (CFDictionaryApplyFunction(*(*(&buf + 1) + 24), NEIPSecDBFlushPoliciesHelper, *(a1 + 64)), (NEIPSecDBCopyResponseForQueuedRequest(v13[3], 0) & 1) != 0))
    {
      v3 = 1;
    }

    else
    {
      v4 = ne_log_obj();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "failed to receive response for pfkey flush policies", v10, 2u);
      }

      v3 = 0;
    }

    v5 = *(&buf + 1);
    v6 = *(*(&buf + 1) + 24);
    if (v6)
    {
      CFRelease(v6);
      *(v5 + 24) = 0;
    }

    v7 = v13[3];
    if (v7)
    {
      NEIPSecDBRemoveQueuedRequest(v7);
      free(v13[3]);
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBFlushPolicies";
      _os_log_fault_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    return 0;
  }

  return v3;
}

_OWORD *__NEIPSecDBFlushPolicies_block_invoke(_OWORD *result)
{
  v1 = *(*(result + 6) + 88);
  if (v1)
  {
    v2 = result;
    *(*(*(result + 4) + 8) + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v1);
    result = NEIPSecDBCreateQueuedRequest(*(v2 + 6), 19, 0);
    *(*(*(v2 + 5) + 8) + 24) = result;
  }

  return result;
}

BOOL NEIPSecDBFlushPoliciesHelper(uint64_t a1, const __CFDictionary *a2, NSObject *a3)
{
  v4 = NEGetIntFromDictionary(a2, @"PolicyID", 0);

  return pfkey_send_x5(a3, 22, v4);
}

uint64_t NEIPSecDBFlushAll(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = NEIPSecDBFlushSAs(a1);
    if (result)
    {
      return NEIPSecDBFlushPolicies(a1) != 0;
    }
  }

  else
  {
    v3 = ne_log_obj();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v4 = 136315138;
      v5 = "NEIPSecDBFlushAll";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", &v4, 0xCu);
      return 0;
    }
  }

  return result;
}

BOOL NEIPSecDBInvalidateSession(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  v3 = v2;
  if (a1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = a1;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@ invalidating", buf, 0xCu);
    }

    result = 1;
    *(a1 + 56) = 1;
    if (*(a1 + 64))
    {
      v5 = _NEIPSecDBGetQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __NEIPSecDBInvalidateSession_block_invoke;
      block[3] = &__block_descriptor_tmp_215;
      block[4] = a1;
      dispatch_sync(v5, block);
      *(a1 + 64) = 0;
      return 1;
    }
  }

  else
  {
    result = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
    if (result)
    {
      *buf = 136315138;
      v8 = "NEIPSecDBInvalidateSession";
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

void __NEIPSecDBInvalidateSession_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 3);
      v6 = *v3;
      if (v5)
      {
        v7 = dispatch_source_testcancel(*(v3 + 3));
        v6 = v4;
        if (!v7)
        {
          dispatch_source_cancel(v5);
          v6 = *v3;
        }
      }

      v8 = *(v3 + 1);
      if (v6)
      {
        v6[1] = v8;
      }

      *v8 = v6;
      free(v3);
      v3 = v4;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    dispatch_source_cancel(*(v2 + 64));
    dispatch_release(v9);
  }

  v10 = g_IPSecDBSessions;
  v15.length = CFArrayGetCount(g_IPSecDBSessions);
  v15.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v15, *(a1 + 32));
  if (FirstIndexOfValue != -1)
  {
    v12 = FirstIndexOfValue;
    v13 = g_IPSecDBSessions;

    CFArrayRemoveValueAtIndex(v13, v12);
  }
}

uint64_t NEIPSecDBCreateStatsTimer(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = 0;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x2000000000;
    v21 = 0;
    if (a3 && a4 && a5)
    {
      v11 = _NEIPSecDBGetQueue();
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 0x40000000;
      v14[2] = __NEIPSecDBCreateStatsTimer_block_invoke;
      v14[3] = &unk_1E7F091A8;
      v15 = a4;
      v16 = a5;
      v17 = a3;
      v18 = a2;
      v14[4] = &buf;
      v14[5] = a1;
      dispatch_sync(v11, v14);
      v6 = *(*(&buf + 1) + 24);
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "NEIPSecDBCreateStatsTimer";
      _os_log_fault_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_FAULT, "%s called with null session", &buf, 0xCu);
    }

    v6 = 0;
  }

  return v6 & 1;
}

void __NEIPSecDBCreateStatsTimer_block_invoke(intptr_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 40) + 104);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 52);
    while (1)
    {
      v5 = *v2;
      if (v3)
      {
        if (*(v2 + 4) == v3)
        {
          break;
        }
      }

      if (v4 && *(v2 + 5) == v4)
      {
        break;
      }

      v2 = *v2;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v8 = 0;
    v7 = v2;
  }

  else
  {
LABEL_8:
    v6 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040BC06665BuLL);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v2 = 0;
    v6[4] = *(a1 + 48);
    v6[5] = *(a1 + 52);
    v8 = 1;
  }

  v9 = *(a1 + 56) / 0x14u;
  if (v9 <= 2)
  {
    v9 = 2;
  }

  v10 = v7[10];
  v11 = v10 - 1;
  if (v10 - 1 >= v9)
  {
    v7[10] = v9;
    v10 = v9;
  }

  v12 = *(a1 + 60);
  if (v12 == 1)
  {
    if (*(a1 + 56) > v10)
    {
      v10 = *(a1 + 56);
    }

    v7[9] = v10;
  }

  else if (!v12)
  {
    if (*(a1 + 56) > v10)
    {
      v10 = *(a1 + 56);
    }

    v7[8] = v10;
  }

  if (v11 < v9)
  {
    goto LABEL_35;
  }

  v13 = *(v7 + 3);
  if (v13)
  {
    if (!dispatch_source_testcancel(*(v7 + 3)))
    {
      dispatch_source_cancel(v13);
    }

    *(v7 + 3) = 0;
  }

  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 48);
    v16 = *(a1 + 52);
    v17 = v7[10];
    *buf = 136315906;
    v27 = "NEIPSecDBCreateStatsTimer_block_invoke";
    v28 = 1024;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    v32 = 1024;
    v33 = v17;
    _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "%s: Starting stat timeout (SAs in:%d out:%d) Polling: every %d", buf, 0x1Eu);
  }

  v18 = _NEIPSecDBGetQueue();
  v19 = 1000 * v7[10];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = __NEIPSecDBCreateStatsTimer_block_invoke_232;
  v25[3] = &__block_descriptor_tmp_233;
  v20 = *(a1 + 40);
  v25[4] = v7;
  v25[5] = v20;
  v25[6] = *(a1 + 48);
  v21 = NERepeatingEventCreate(v18, 0, 0, v19, 0, 0, v25, 0);
  *(v7 + 3) = v21;
  if (v21)
  {
    if (v8)
    {
      v22 = *(*(a1 + 40) + 104);
      *v7 = v22;
      if (v22)
      {
        *(*(*(a1 + 40) + 104) + 8) = v7;
      }

      *(*(a1 + 40) + 104) = v7;
      *(v7 + 1) = *(a1 + 40) + 104;
    }

LABEL_35:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  if ((v8 & 1) == 0)
  {
    v23 = *v2;
    v24 = v2[1];
    if (*v2)
    {
      *(v23 + 8) = v24;
    }

    *v24 = v23;
  }

  free(v7);
}

uint64_t NEIPSecDBScheduleWithRunLoop(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = 136315138;
      v4 = "NEIPSecDBScheduleWithRunLoop";
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "%s called with null session", &v3, 0xCu);
    }
  }

  return 0;
}

uint64_t NEIPSecDBUnScheduleWithRunLoop(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      v3 = 136315138;
      v4 = "NEIPSecDBUnScheduleWithRunLoop";
      _os_log_fault_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_FAULT, "%s called with null session", &v3, 0xCu);
    }
  }

  return 0;
}

__CFString *NEIPSecNotifyCodeCopyString(unsigned int a1)
{
  if (a1 <= 39)
  {
    if (a1 > 23)
    {
      switch(a1)
      {
        case 0x18u:
          return @"ServerRejectedAuth";
        case 0x24u:
          return @"ServerInternalAddressFailure";
        case 0x26u:
          return @"ServerRejectedTS";
      }
    }

    else
    {
      switch(a1)
      {
        case 4u:
          return @"ServerRejectedSPI";
        case 7u:
          return @"ServerRejectedSyntax";
        case 0xEu:
          return @"ServerRejectedProposal";
      }
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    switch(a1)
    {
      case 0x11170u:
        return @"Unknown";
      case 0x11171u:
        return @"InternalError";
      case 0x11172u:
        return @"CouldNotSend";
      case 0x11173u:
        return @"InvalidArgs";
      case 0x11174u:
        return @"UserRequested";
      case 0x11175u:
        return @"PeerRequested";
      case 0x11176u:
        return @"ServerDidNotRespond";
      case 0x11177u:
        return @"ServerStoppedResponding";
      case 0x11178u:
        return @"ReceivedInvalidSyntax";
      case 0x11179u:
        return @"ReceivedInvalidProposal";
      case 0x1117Au:
        return @"ReceivedInvalidSPI";
      case 0x1117Bu:
        return @"ReceivedInvalidTS";
      case 0x1117Cu:
        return @"IKESocketFailure";
      case 0x1117Du:
        return @"IKELocalAddressMissing";
      case 0x1117Eu:
        return @"IKERemoteAddressMissing";
      case 0x1117Fu:
        return @"IKERemotePortMissing";
      case 0x11180u:
        return @"PacketCreateFailed";
      case 0x11181u:
        return @"PacketProcessingFailed";
      case 0x11182u:
        return @"SAMigrationFailed";
      case 0x11183u:
        return @"InvalidConfiguration";
      case 0x11184u:
        return @"FailedToGenerateSPI";
      case 0x11185u:
        return @"CryptoFailed";
      case 0x11186u:
        return @"ConfigurationEstablishmentFailed";
      case 0x11187u:
        return @"ChildInstallSAFailed";
      case 0x11188u:
        return @"NoIKESA";
      case 0x11189u:
        return @"NoChildSA";
      case 0x1118Au:
        return @"ChildUninstallSAFailed";
      case 0x1118Bu:
        return @"AuthFailed";
      case 0x1118Cu:
        return @"ReceivedInvalidVendorID";
      case 0x1118Du:
        return @"EAPIdentityDecryptionFailure";
      case 0x1118Eu:
        return @"ClientCertNotYetValid";
      case 0x1118Fu:
        return @"ClientCertExpired";
      case 0x11190u:
        return @"ClientCertMissing";
      case 0x11191u:
        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      case 0x11192u:
        return @"ClientCertInvalid";
      case 0x11193u:
        return @"ServerCertNotYetValid";
      case 0x11194u:
        return @"ServerCertExpired";
      case 0x11195u:
        return @"ServerCertMissing";
      case 0x11196u:
        return @"ServerCertInvalid";
      case 0x11197u:
        return @"ReceivedPrivateError";
      case 0x11198u:
        return @"IKESADelete";
      default:
        if (a1 == 40)
        {
          result = @"ServerRejectedAddress";
        }

        else
        {
          if (a1 != 16407)
          {
            return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
          }

          result = @"IKEStatusServerRedirect";
        }

        break;
    }
  }

  return result;
}

__CFString *NEIPSecNotifyReasonCopyString(int a1)
{
  if (a1 <= 2099)
  {
    if (a1 <= 2000)
    {
      if (a1 <= 2)
      {
        switch(a1)
        {
          case 0:
            return @"Unknown";
          case 1:
            return @"InternalError";
          case 2:
            return @"CouldNotSend";
        }
      }

      else if (a1 > 1000)
      {
        if (a1 == 1001)
        {
          return @"PeerRequested";
        }

        if (a1 == 2000)
        {
          return @"ServerDidNotRespond";
        }
      }

      else
      {
        if (a1 == 3)
        {
          return @"InvalidArgs";
        }

        if (a1 == 1000)
        {
          return @"UserRequested";
        }
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 > 2012)
    {
      if (a1 > 2014)
      {
        if (a1 == 2015)
        {
          return @"ServerRejectedAddress";
        }

        if (a1 == 2016)
        {
          return @"ServerRedirect";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 2013)
      {
        return @"ServerRejectedTS";
      }

      else
      {
        return @"ServerRejectedAuth";
      }
    }

    else
    {
      if (a1 <= 2010)
      {
        if (a1 == 2001)
        {
          return @"ServerStoppedResponding";
        }

        if (a1 == 2010)
        {
          return @"ServerRejectedSyntax";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 2011)
      {
        return @"ServerRejectedProposal";
      }

      else
      {
        return @"ServerRejectedSPI";
      }
    }
  }

  else if (a1 > 2999)
  {
    if (a1 > 3003)
    {
      if (a1 > 3005)
      {
        if (a1 == 3006)
        {
          return @"InternalPacketProcessingFailed";
        }

        if (a1 == 3007)
        {
          return @"InternalSAMigrationFailed";
        }

        return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
      }

      if (a1 == 3004)
      {
        return @"InternalIKERemotePortMissing";
      }

      else
      {
        return @"InternalPacketCreateFailed";
      }
    }

    else if (a1 > 3001)
    {
      if (a1 == 3002)
      {
        return @"InternalIKELocalAddressMissing";
      }

      else
      {
        return @"InternalIKERemoteAddressMissing";
      }
    }

    else if (a1 == 3000)
    {
      return @"InternalIKESessionMissing";
    }

    else
    {
      return @"InternalIKESocketFailure";
    }
  }

  else
  {
    if (a1 <= 2109)
    {
      if (a1 <= 2101)
      {
        if (a1 == 2100)
        {
          return @"ReceivedInvalidSyntax";
        }

        else
        {
          return @"ReceivedInvalidProposal";
        }
      }

      if (a1 == 2102)
      {
        return @"ReceivedInvalidSPI";
      }

      if (a1 == 2103)
      {
        return @"ReceivedInvalidTS";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 > 2111)
    {
      if (a1 == 2112)
      {
        return @"AuthFailedEAP";
      }

      if (a1 == 2113)
      {
        return @"ReceivedInvalidVendorID";
      }

      return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
    }

    if (a1 == 2110)
    {
      return @"AuthFailedPSK";
    }

    else
    {
      return @"AuthFailedCert";
    }
  }
}

uint64_t NEIPSecIKENotificationTypeCopyString(unsigned int a1)
{
  v2 = a1 & 0xF000;
  if (v2 == 4096)
  {
    v3 = @"IKE";
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%d)", v2];
  }

  if (a1 & 0xF00) < 0x900 && ((0x1BFu >> (BYTE1(a1) & 0xF)))
  {
    v4 = off_1E7F094B0[(a1 >> 8) & 0xF];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1 & 0xF00];
  }

  if (a1 >= 6u)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%lld)", a1];
  }

  else
  {
    v5 = off_1E7F094F8[a1 & 7];
  }

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"mode=%@, type=%@, status=%@", v3, v4, v5];

  return v6;
}

CFStringRef NEIPSecIKECreateSessionWithInterfaceAndSASession(const __CFAllocator *a1, const __CFDictionary *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t), void *a9)
{
  v177 = *MEMORY[0x1E69E9840];
  v13 = a9;
  valuePtr = 0;
  Value = CFDictionaryGetValue(a2, @"IKEVersion");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    if (valuePtr == 1)
    {
      v15 = CFStringCreateWithCString(a1, "DummyIPSecObject", 0x8000100u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__14949;
      *&buf[32] = __Block_byref_object_dispose__14950;
      v168 = 0;
      if (xpc_client_queue_once != -1)
      {
        dispatch_once(&xpc_client_queue_once, &__block_literal_global_14951);
      }

      v16 = xpc_client_queue_q;
      mach_service = xpc_connection_create_mach_service("com.apple.SecureNetworking.IPSec", v16, 2uLL);
      v18 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = mach_service;

      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __create_xpc_connection_block_invoke;
        handler[3] = &unk_1E7F09490;
        handler[4] = buf;
        xpc_connection_set_event_handler(v19, handler);
        xpc_connection_resume(*(*&buf[8] + 40));
        v20 = *(*&buf[8] + 40);
      }

      else
      {
        v85 = ne_log_obj();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          LOWORD(handler[0]) = 0;
          _os_log_error_impl(&dword_1BA83C000, v85, OS_LOG_TYPE_ERROR, "NEIPSec:create_xpc_connection, xpc_connection_create_mach_service fails\n", handler, 2u);
        }

        v20 = 0;
      }

      _Block_object_dispose(buf, 8);
      if (!v20)
      {
        goto LABEL_189;
      }

      v86 = xpc_dictionary_create(0, 0, 0);
      v87 = _CFXPCCreateXPCObjectFromCFObject();
      if (a3)
      {
        a3 = _CFXPCCreateXPCObjectFromCFObject();
      }

      v88 = 0;
      if (!v86 || !v87)
      {
LABEL_186:
        v110 = ne_log_obj();
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v88;
          _os_log_debug_impl(&dword_1BA83C000, v110, OS_LOG_TYPE_DEBUG, "send_xpc_ike_create result %d\n", buf, 8u);
        }

        if (v88)
        {
          goto LABEL_145;
        }

LABEL_189:
        if (v15)
        {
          CFRelease(v15);
          v15 = 0;
        }

        goto LABEL_145;
      }

      xpc_dictionary_set_int64(v86, "ipsecobjectref", v15);
      xpc_dictionary_set_int64(v86, "ipsecopcode", 1);
      xpc_dictionary_set_value(v86, "ipsecikedict", v87);
      if (a3)
      {
        xpc_dictionary_set_value(v86, "ipsecchilddict", a3);
      }

      v89 = xpc_connection_send_message_with_reply_sync(v20, v86);
      if (!v89)
      {
        v88 = 0;
        goto LABEL_186;
      }

      v90 = v20;
      v91 = v89;
      v92 = MEMORY[0x1BFAFC5E0]();
      if (v92 != MEMORY[0x1E69E9E80])
      {
        if (v92 == MEMORY[0x1E69E9E98])
        {
          handle_connection_error(v90, v91);
        }

        else
        {
          v93 = ne_log_obj();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, "NEIPSec: connection returns unknown type\n", buf, 2u);
          }
        }

        v88 = 0;
        goto LABEL_185;
      }

      xdicta = v91;
      int64 = xpc_dictionary_get_int64(xdicta, "ipsecopcode");
      v134 = xpc_dictionary_get_int64(xdicta, "ipsecobjectref");
      v136 = int64 - 4096;
      v100 = int64 <= 4096;
      v101 = ne_log_obj();
      v102 = os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG);
      if (v100)
      {
        if (v102)
        {
          *buf = 134217984;
          *&buf[4] = v136;
          _os_log_debug_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_DEBUG, "process_response invalid reply, opcode = 0x%llx\n", buf, 0xCu);
        }
      }

      else
      {
        if (v102)
        {
          *buf = 134217984;
          *&buf[4] = v136;
          _os_log_debug_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_DEBUG, "process_response: op 0x%llx\n", buf, 0xCu);
        }

        if (v136 == 1)
        {
          v105 = xpc_dictionary_get_BOOL(xdicta, "reply");
          v88 = v15 == v134 && v105;
          v106 = ne_log_obj();
          v101 = v106;
          if (v88)
          {
            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *&buf[4] = v134;
              _os_log_debug_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_DEBUG, "get_response_BOOLean response: ref %p", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = v15;
            *&buf[12] = 2048;
            *&buf[14] = v134;
            _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "get_response_BOOLean response ERROR: requestref %p, returned ref %p", buf, 0x16u);
          }

          goto LABEL_184;
        }

        v101 = ne_log_obj();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v136;
          _os_log_error_impl(&dword_1BA83C000, v101, OS_LOG_TYPE_ERROR, "process_response unknown reply, opcode = 0x%llx\n", buf, 0xCu);
        }
      }

      v88 = 0;
LABEL_184:

LABEL_185:
      goto LABEL_186;
    }
  }

  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v132 = objc_alloc_init(NEIKEv2IKESAConfiguration);
  if (!a2 || (v21 = CFDICTIONARY_TYPE, CFGetTypeID(a2) != v21))
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1306;
      _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%s:%d: IKE configuration is not a dictionary", buf, 0x12u);
    }

    goto LABEL_116;
  }

  if (!NEGetValueWithType(a2, @"IKEVersion", CFNUMBER_TYPE))
  {
    v80 = ne_log_obj();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1310;
      *&buf[18] = 2112;
      *&buf[20] = @"IKEVersion";
      *&buf[28] = 2048;
      *&buf[30] = CFNUMBER_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v80, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
    }

LABEL_116:

    v79 = 0;
    goto LABEL_117;
  }

  v164 = 0;
  v22 = NEGetValueWithType(a2, @"IKEVersion", CFNUMBER_TYPE);
  CFNumberGetValue(v22, kCFNumberIntType, &v164);
  if (v164 != 2)
  {
    v98 = ne_log_obj();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1315;
      _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "%s:%d: IKE version is not 2", buf, 0x12u);
    }

    v79 = 0;
    goto LABEL_210;
  }

  theDict = a2;
  if (CFDictionaryContainsKey(theDict, @"OutgoingInterface") && !NEGetValueWithType(theDict, @"OutgoingInterface", CFSTRING_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1321;
    *&buf[18] = 2112;
    *&buf[20] = @"OutgoingInterface";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
LABEL_206:
    v113 = v103;
    v114 = 38;
LABEL_207:
    _os_log_error_impl(&dword_1BA83C000, v113, OS_LOG_TYPE_ERROR, v104, buf, v114);
    goto LABEL_208;
  }

  if (CFDictionaryContainsKey(theDict, @"OutgoingInterface"))
  {
    v23 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"OutgoingInterface"];
    [(NEIKEv2IKESAConfiguration *)v132 setOutgoingInterfaceName:v23];
  }

  if (CFDictionaryContainsKey(theDict, @"LocalAddress") && !NEGetValueWithType(theDict, @"LocalAddress", CFSTRING_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1326;
    *&buf[18] = 2112;
    *&buf[20] = @"LocalAddress";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"LocalPort") && !NEGetValueWithType(theDict, @"LocalPort", CFNUMBER_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1327;
    *&buf[18] = 2112;
    *&buf[20] = @"LocalPort";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"LocalAddress"))
  {
    v24 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalAddress"];
    v25 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalPort"];
    v26 = NECreateAddressStructFromString(v24, v25, 0);

    if (!v26)
    {
      v107 = ne_log_obj();
      v103 = v107;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalAddress"];
        v109 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"LocalPort"];
        *buf = 136315906;
        *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
        *&buf[12] = 1024;
        *&buf[14] = 1334;
        *&buf[18] = 2112;
        *&buf[20] = v108;
        *&buf[28] = 2112;
        *&buf[30] = v109;
        _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse local address %@:%@", buf, 0x26u);

        goto LABEL_193;
      }

      goto LABEL_208;
    }

    v27 = [MEMORY[0x1E6977E08] endpointWithAddress:v26];
    [(NEIKEv2IKESAConfiguration *)v132 setLocalEndpoint:v27];

    free(v26);
  }

  if (!NEGetValueWithType(theDict, @"RemoteAddress", CFSTRING_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1341;
    *&buf[18] = 2112;
    *&buf[20] = @"RemoteAddress";
    *&buf[28] = 2048;
    *&buf[30] = CFSTRING_TYPE;
    v104 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"RemotePort") && !NEGetValueWithType(theDict, @"RemotePort", CFNUMBER_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1342;
    *&buf[18] = 2112;
    *&buf[20] = @"RemotePort";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  v28 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemoteAddress"];
  v29 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemotePort"];
  v30 = NECreateAddressStructFromString(v28, v29, 0);

  if (!v30)
  {
    v107 = ne_log_obj();
    v103 = v107;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v111 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemoteAddress"];
      v112 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RemotePort"];
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1348;
      *&buf[18] = 2112;
      *&buf[20] = v111;
      *&buf[28] = 2112;
      *&buf[30] = v112;
      _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse remote address %@:%@", buf, 0x26u);

      goto LABEL_193;
    }

    goto LABEL_208;
  }

  v31 = [MEMORY[0x1E6977E08] endpointWithAddress:v30];
  [(NEIKEv2IKESAConfiguration *)v132 setRemoteEndpoint:v31];

  free(v30);
  if (CFDictionaryContainsKey(theDict, @"ServerMode") && !NEGetValueWithType(theDict, @"ServerMode", CFBOOLEAN_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1354;
    *&buf[18] = 2112;
    *&buf[20] = @"ServerMode";
    *&buf[28] = 2048;
    *&buf[30] = CFBOOLEAN_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"ServerMode"))
  {
    v32 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"ServerMode"];
    -[NEIKEv2IKESAConfiguration setServerMode:](v132, "setServerMode:", [v32 BOOLValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"NonceSize") && !NEGetValueWithType(theDict, @"NonceSize", CFNUMBER_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1359;
    *&buf[18] = 2112;
    *&buf[20] = @"NonceSize";
    *&buf[28] = 2048;
    *&buf[30] = CFNUMBER_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"NonceSize"))
  {
    v33 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"NonceSize"];
    -[NEIKEv2IKESAConfiguration setNonceSize:](v132, "setNonceSize:", [v33 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectSupported") && !NEGetValueWithType(theDict, @"RedirectSupported", CFBOOLEAN_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1364;
    *&buf[18] = 2112;
    *&buf[20] = @"RedirectSupported";
    *&buf[28] = 2048;
    *&buf[30] = CFBOOLEAN_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectSupported"))
  {
    v34 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectSupported"];
    -[NEIKEv2IKESAConfiguration setAllowRedirect:](v132, "setAllowRedirect:", [v34 BOOLValue]);
  }

  if (CFDictionaryContainsKey(theDict, @"RedirectedFromServer") && !NEGetValueWithType(theDict, @"RedirectedFromServer", CFSTRING_TYPE))
  {
    v103 = ne_log_obj();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
      *&buf[12] = 1024;
      *&buf[14] = 1369;
      *&buf[18] = 2112;
      *&buf[20] = @"RedirectedFromServer";
      *&buf[28] = 2048;
      *&buf[30] = CFSTRING_TYPE;
      v104 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_206;
    }

LABEL_208:
    v79 = 0;
    goto LABEL_209;
  }

  if (!CFDictionaryContainsKey(theDict, @"RedirectedFromServer"))
  {
    goto LABEL_45;
  }

  v35 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectedFromServer"];
  v36 = NECreateAddressStructFromString(v35, 0, 0);

  if (!v36)
  {
    v107 = ne_log_obj();
    v103 = v107;
    if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    v115 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"RedirectedFromServer"];
    *buf = 136315650;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1375;
    *&buf[18] = 2112;
    *&buf[20] = v115;
    _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "%s:%d: Failed to parse redirect address %@", buf, 0x1Cu);

LABEL_193:
    v79 = 0;
    v103 = v107;
    goto LABEL_209;
  }

  v37 = [MEMORY[0x1E6977E08] endpointWithAddress:v36];
  [(NEIKEv2IKESAConfiguration *)v132 setRedirectedFromServer:v37];

  free(v36);
LABEL_45:
  v38 = NEGetValueWithType(theDict, @"Proposals", CFARRAY_TYPE);
  if (!v38)
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315394;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1384;
    v104 = "%s:%d: IKE configuration does not contain proposals array";
    goto LABEL_217;
  }

  theArray = v38;
  Count = CFArrayGetCount(v38);
  if (!Count)
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315394;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1389;
    v104 = "%s:%d: IKE configuration proposals array is empty";
LABEL_217:
    v113 = v103;
    v114 = 18;
    goto LABEL_207;
  }

  if (CFDictionaryContainsKey(theDict, @"EAPProperties") && !NEGetValueWithType(theDict, @"EAPProperties", CFDICTIONARY_TYPE))
  {
    v103 = ne_log_obj();
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_208;
    }

    *buf = 136315906;
    *&buf[4] = "NEIPSecIKEValidateIKEDictionary";
    *&buf[12] = 1024;
    *&buf[14] = 1393;
    *&buf[18] = 2112;
    *&buf[20] = @"EAPProperties";
    *&buf[28] = 2048;
    *&buf[30] = CFDICTIONARY_TYPE;
    v104 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_206;
  }

  v122 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:Count];
  if (Count < 1)
  {
LABEL_113:
    v78 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v122];
    [(NEIKEv2IKESAConfiguration *)v132 setProposals:v78];

    v79 = v132;
    goto LABEL_252;
  }

  v39 = 0;
  while (1)
  {
    v125 = v39;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v39);
    v41 = ValueAtIndex;
    if (!ValueAtIndex || (v42 = CFDICTIONARY_TYPE, CFGetTypeID(ValueAtIndex) != v42))
    {
      v117 = ne_log_obj();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
      {
        *v169 = 136315394;
        v170 = "NEIPSecIKEValidateIKEDictionary";
        v171 = 1024;
        v172 = 1399;
        _os_log_error_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_ERROR, "%s:%d: IKE configuration proposals array is invalid", v169, 0x12u);
      }

      goto LABEL_251;
    }

    v127 = v41;
    v43 = objc_alloc_init(NEIKEv2IKESAProposal);
    v128 = v43;
    if (v43)
    {
      v43->_proposalNumber = v125 + 1;
    }

    if (!CFDictionaryContainsKey(theDict, @"AuthenticationMethod"))
    {
      if (!NEGetValueWithType(v127, @"AuthenticationMethod", CFSTRING_TYPE))
      {
        v44 = ne_log_obj();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *v169 = 136315906;
          v170 = "NEIPSecIKEValidateIKEDictionary";
          v171 = 1024;
          v172 = 1410;
          v173 = 2112;
          v174 = @"AuthenticationMethod";
          v175 = 2048;
          v176 = CFSTRING_TYPE;
          goto LABEL_254;
        }

LABEL_245:

        goto LABEL_251;
      }

      v44 = [(__CFDictionary *)v127 objectForKeyedSubscript:@"AuthenticationMethod"];
      v45 = NEIPsecIKEGetAuthProcotol(v44);
      if (!v45)
      {
        v121 = ne_log_obj();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          *v169 = 136315650;
          v170 = "NEIPSecIKEValidateIKEDictionary";
          v171 = 1024;
          v172 = 1414;
          v173 = 2112;
          v174 = v44;
          _os_log_error_impl(&dword_1BA83C000, v121, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized authentication method", v169, 0x1Cu);
        }

        goto LABEL_245;
      }

      [(NEIKEv2IKESAProposal *)v128 setAuthenticationProtocol:v45];
    }

    if (!NEGetValueWithType(v127, @"Lifetime", CFNUMBER_TYPE))
    {
      v44 = ne_log_obj();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *v169 = 136315906;
        v170 = "NEIPSecIKEValidateIKEDictionary";
        v171 = 1024;
        v172 = 1420;
        v173 = 2112;
        v174 = @"Lifetime";
        v175 = 2048;
        v176 = CFNUMBER_TYPE;
LABEL_254:
        _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", v169, 0x26u);
        goto LABEL_245;
      }

      goto LABEL_245;
    }

    v46 = [(__CFDictionary *)v127 objectForKeyedSubscript:@"Lifetime"];
    -[NEIKEv2IKESAProposal setLifetimeSeconds:](v128, "setLifetimeSeconds:", [v46 unsignedLongValue]);

    v163 = 0;
    v47 = NEIPsecIKECopyEncryptionProtocolsFromDictionary(v127, 0, &v163);
    [(NEIKEv2IKESAProposal *)v128 setEncryptionProtocols:v47];

    if (v163)
    {
      goto LABEL_250;
    }

    v48 = [(NEIKEv2IKESAProposal *)v128 encryptionProtocols];
    v49 = v48 == 0;

    if (v49)
    {
      oslog = ne_log_obj();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *v169 = 136315394;
        v170 = "NEIPSecIKEValidateIKEDictionary";
        v171 = 1024;
        v172 = 1428;
        v118 = "%s:%d: failed to get encryption protocol(s)";
        goto LABEL_248;
      }

      goto LABEL_249;
    }

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v50 = [(NEIKEv2IKESAProposal *)v128 encryptionProtocols];
    v51 = [v50 countByEnumeratingWithState:&v159 objects:buf count:16];
    if (v51)
    {
      v52 = 0;
      v53 = 0;
      v54 = *v160;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v160 != v54)
          {
            objc_enumerationMutation(v50);
          }

          v56 = *(*(&v159 + 1) + 8 * i);
          if (v56)
          {
            v56 = *(v56 + 16);
            if (v56 > 0x1F)
            {
              LODWORD(v56) = 0;
            }

            else
            {
              LODWORD(v56) = 0xD0100000 >> v56;
            }
          }

          v52 |= v56 ^ 1;
          v53 |= v56;
        }

        v51 = [v50 countByEnumeratingWithState:&v159 objects:buf count:16];
      }

      while (v51);

      if (v53 & v52)
      {
        oslog = ne_log_obj();
        if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_249;
        }

        *v169 = 136315394;
        v170 = "NEIPSecIKEValidateIKEDictionary";
        v171 = 1024;
        v172 = 1443;
        v118 = "%s:%d: can't mix authenticated and unauthenticated encryption protocols in the same proposal";
        goto LABEL_248;
      }

      if (v52)
      {
        v57 = NEIPsecIKECopyIntegrityProtocolsFromDictionary(v127, &v163);
        [(NEIKEv2IKESAProposal *)v128 setIntegrityProtocols:v57];

        if (v163)
        {
          goto LABEL_250;
        }

        v58 = [(NEIKEv2IKESAProposal *)v128 integrityProtocols];
        v59 = v58 == 0;

        if (v59)
        {
          oslog = ne_log_obj();
          if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_249;
          }

          *v169 = 136315394;
          v170 = "NEIPSecIKEValidateIKEDictionary";
          v171 = 1024;
          v172 = 1452;
          v118 = "%s:%d: failed to get integrity protocol(s)";
          goto LABEL_248;
        }
      }
    }

    else
    {
    }

    v60 = NEIPsecIKECopyPRFProtocolsFromDictionary(v127, &v163);
    [(NEIKEv2IKESAProposal *)v128 setPrfProtocols:v60];

    if (v163)
    {
      goto LABEL_250;
    }

    v61 = [(NEIKEv2IKESAProposal *)v128 prfProtocols];
    v62 = v61 == 0;

    if (v62)
    {
      break;
    }

    v63 = NEIPsecIKECopyKEMProtocolsFromDictionary(v127);
    [(NEIKEv2IKESAProposal *)v128 setKemProtocols:v63];

    v64 = [(NEIKEv2IKESAProposal *)v128 kemProtocols];
    v65 = v64 == 0;

    if (v65)
    {
      oslog = ne_log_obj();
      if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_249;
      }

      *v169 = 136315394;
      v170 = "NEIPSecIKEValidateIKEDictionary";
      v171 = 1024;
      v172 = 1467;
      v118 = "%s:%d: failed to get DH protocol(s)";
LABEL_248:
      _os_log_error_impl(&dword_1BA83C000, oslog, OS_LOG_TYPE_ERROR, v118, v169, 0x12u);
      goto LABEL_249;
    }

    v66 = NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(v127, &v163);
    [(NEIKEv2IKESAProposal *)v128 setAdditionalKEMProtocols:v66];

    if (v163)
    {
      goto LABEL_250;
    }

    if (CFDictionaryContainsKey(v127, @"EAPMethod"))
    {
      oslog = objc_alloc_init(MEMORY[0x1E695DF70]);
      v124 = [(__CFDictionary *)v127 objectForKeyedSubscript:@"EAPMethod"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v67 = NEIPsecIKEGetEAPProtocol(v124);
        if (!v67)
        {
          v67 = ne_log_obj();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *v169 = 136315650;
            v170 = "NEIPSecIKEValidateIKEDictionary";
            v171 = 1024;
            v172 = 1483;
            v173 = 2112;
            v174 = v124;
            _os_log_error_impl(&dword_1BA83C000, v67, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized EAP method", v169, 0x1Cu);
          }

LABEL_243:

          goto LABEL_249;
        }

        [oslog addObject:v67];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_100;
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v67 = v124;
        v68 = [v67 countByEnumeratingWithState:&v155 objects:handler count:16];
        if (v68)
        {
          v69 = *v156;
          while (2)
          {
            for (j = 0; j != v68; ++j)
            {
              if (*v156 != v69)
              {
                objc_enumerationMutation(v67);
              }

              v71 = *(*(&v155 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v72 = NEIPsecIKEGetEAPProtocol(v71);
                if (!v72)
                {
                  v119 = ne_log_obj();
                  if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                  {
                    *v169 = 136315650;
                    v170 = "NEIPSecIKEValidateIKEDictionary";
                    v171 = 1024;
                    v172 = 1492;
                    v173 = 2112;
                    v174 = v71;
                    _os_log_error_impl(&dword_1BA83C000, v119, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized EAP method", v169, 0x1Cu);
                  }

                  v124 = v67;
                  goto LABEL_243;
                }

                [oslog addObject:v72];
              }
            }

            v68 = [v67 countByEnumeratingWithState:&v155 objects:handler count:16];
            if (v68)
            {
              continue;
            }

            break;
          }
        }
      }

LABEL_100:
      if (CFDictionaryContainsKey(theDict, @"EAPProperties"))
      {
        v73 = [(__CFDictionary *)theDict objectForKeyedSubscript:@"EAPProperties"];
        if (v73)
        {
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v74 = oslog;
          v75 = [v74 countByEnumeratingWithState:&v151 objects:v165 count:16];
          if (v75)
          {
            v76 = *v152;
            do
            {
              for (k = 0; k != v75; ++k)
              {
                if (*v152 != v76)
                {
                  objc_enumerationMutation(v74);
                }

                [*(*(&v151 + 1) + 8 * k) setProperties:v73];
              }

              v75 = [v74 countByEnumeratingWithState:&v151 objects:v165 count:16];
            }

            while (v75);
          }
        }
      }

      [(NEIKEv2IKESAProposal *)v128 setEapProtocols:oslog];
    }

    [v122 addObject:v128];

    v39 = v125 + 1;
    if (v125 + 1 == Count)
    {
      goto LABEL_113;
    }
  }

  oslog = ne_log_obj();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *v169 = 136315394;
    v170 = "NEIPSecIKEValidateIKEDictionary";
    v171 = 1024;
    v172 = 1461;
    v118 = "%s:%d: failed to get PRF protocol(s)";
    goto LABEL_248;
  }

LABEL_249:

LABEL_250:
LABEL_251:
  v79 = 0;
LABEL_252:
  v103 = v122;
LABEL_209:

  v98 = theDict;
LABEL_210:

LABEL_117:
  v81 = NEIPSecIKEValidateIKEChildDictionary(a3);
  v82 = NEIPSecIKEValidateSessionDictionary(a2);
  v83 = v82;
  if (!v79)
  {
    v116 = ne_log_obj();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_FAULT, "%s called with null ikeConfig", buf, 0xCu);
    }

    goto LABEL_226;
  }

  if (!v81)
  {
    v116 = ne_log_obj();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_FAULT, "%s called with null childConfig", buf, 0xCu);
    }

    goto LABEL_226;
  }

  if (!v82)
  {
    v116 = ne_log_obj();
    if (os_log_type_enabled(v116, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "NEIPSecIKECreateSessionWithInterfaceAndSASession";
      _os_log_fault_impl(&dword_1BA83C000, v116, OS_LOG_TYPE_FAULT, "%s called with null sessionConfig", buf, 0xCu);
    }

LABEL_226:

LABEL_149:
    v15 = 0;
    goto LABEL_144;
  }

  if (!v13)
  {
    v84 = a8 ? a8(a6) : 0xFFFFFFFFLL;
    v13 = [[NEIPSecSAKernelSession alloc] initWithName:@"IKEv2 Session Database" delegate:0 pfkeySocket:v84];
    if (!v13)
    {
      v97 = ne_log_obj();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v84;
        _os_log_fault_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_FAULT, "[NEIPSecSAKernelSession init pfkeySocket=%d] failed", buf, 8u);
      }

      v13 = 0;
      goto LABEL_149;
    }
  }

  if (a7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke;
    aBlock[3] = &__block_descriptor_40_e57_i40__0_v8r__sockaddr_CC_14c__16r__sockaddr_CC_14c__24r_32l;
    aBlock[4] = a7;
    a7 = _Block_copy(aBlock);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__14949;
  *&buf[32] = __Block_byref_object_dispose__14950;
  v168 = 0;
  v94 = NEIPSecIKECopyDefaultSessionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke_339;
  block[3] = &unk_1E7F09468;
  v145 = buf;
  v140 = v79;
  v141 = v81;
  v146 = a4;
  v142 = v83;
  v144 = a7;
  v13 = v13;
  v143 = v13;
  v147 = a5;
  v148 = a6;
  v95 = a7;
  dispatch_sync(v94, block);

  v15 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

LABEL_144:
LABEL_145:

  return v15;
}

uint64_t __Block_byref_object_copy__14949(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __create_xpc_connection_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E98])
  {
    handle_connection_error(*(*(*(a1 + 32) + 8) + 40), v3);
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "NEIPSec: connection returns unknown type\n", v5, 2u);
    }
  }
}

void handle_connection_error(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MEMORY[0x1E69E9E18];
  v5 = ne_log_obj();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (a2 == v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEIPSec: connection interrupted\n", buf, 2u);
    }

    xpc_connection_cancel(v3);
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "NEIPSec: connection error\n", v7, 2u);
    }
  }
}

NEIKEv2AuthenticationProtocol *NEIPsecIKEGetAuthProcotol(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 9;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 10;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 11;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v1))
    {
      if (objc_msgSend_isEqualToString_(v1))
      {
        v7 = [NEIKEv2AuthenticationProtocol alloc];
        v8 = 3;
      }

      else
      {
        if (!objc_msgSend_isEqualToString_(v1))
        {
          if (!objc_msgSend_isEqualToString_(v1))
          {
            v5 = 0;
            goto LABEL_15;
          }

          v2 = [NEIKEv2AuthenticationProtocol alloc];
          v3 = 245;
          goto LABEL_13;
        }

        v7 = [NEIKEv2AuthenticationProtocol alloc];
        v8 = 4;
      }

      v4 = [(NEIKEv2AuthenticationProtocol *)v7 initWithDigitalSignature:v8];
      goto LABEL_14;
    }

    v2 = [NEIKEv2AuthenticationProtocol alloc];
    v3 = 0;
  }

LABEL_13:
  v4 = [(NEIKEv2AuthenticationProtocol *)v2 initWithMethod:v3];
LABEL_14:
  v5 = v4;
LABEL_15:

  return v5;
}

uint64_t NEIPsecIKECopyEncryptionProtocolsFromDictionary(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  *a3 = 0;
  if (CFDictionaryContainsKey(v5, @"EncryptionAlgorithm"))
  {
    v6 = [v5 objectForKeyedSubscript:@"EncryptionAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = NEIPsecIKEGetEncryptionProtocol(v6, v4);
      if (v7)
      {
        v8 = v7;
        v28 = v7;
        v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      }

      else
      {
        v21 = ne_log_obj();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v30 = "NEIPsecIKECopyEncryptionProtocolsFromDictionary";
          v31 = 1024;
          v32 = 1052;
          v33 = 2112;
          v34 = v6;
          _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized encryption method", buf, 0x1Cu);
        }

        v8 = 0;
        v9 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = 0;
        goto LABEL_22;
      }

      v22 = v6;
      v10 = v6;
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v10;
      v12 = [(NEIKEv2EncryptionProtocol *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v8);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = NEIPsecIKEGetEncryptionProtocol(v16, v4);
              if (!v17)
              {
                v20 = ne_log_obj();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v30 = "NEIPsecIKECopyEncryptionProtocolsFromDictionary";
                  v31 = 1024;
                  v32 = 1066;
                  v33 = 2112;
                  v34 = v16;
                  _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized encryption method", buf, 0x1Cu);
                }

                v9 = 0;
                goto LABEL_19;
              }

              v18 = v17;
              [v11 addObject:v17];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(NEIKEv2EncryptionProtocol *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      if ([v11 count])
      {
        v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v11];
LABEL_19:
        v6 = v22;
      }

      else
      {

        v9 = 0;
        v6 = v22;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v9 = 0;
LABEL_23:

  return v9;
}

uint64_t NEIPsecIKECopyIntegrityProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"IntegrityAlgorithm"))
  {
    v4 = [v3 objectForKeyedSubscript:@"IntegrityAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = NEIPsecIKEGetIntegrityProtocol(v4);
      if (v5)
      {
        v6 = v5;
        v26 = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      }

      else
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v28 = "NEIPsecIKECopyIntegrityProtocolsFromDictionary";
          v29 = 1024;
          v30 = 1113;
          v31 = 2112;
          v32 = v4;
          _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized integrity method", buf, 0x1Cu);
        }

        v6 = 0;
        v7 = 0;
        *a2 = 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_22;
      }

      v20 = a2;
      v8 = v4;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = v8;
      v10 = [(NEIKEv2IntegrityProtocol *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = NEIPsecIKEGetIntegrityProtocol(v14);
              if (!v15)
              {
                v18 = ne_log_obj();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v28 = "NEIPsecIKECopyIntegrityProtocolsFromDictionary";
                  v29 = 1024;
                  v30 = 1128;
                  v31 = 2112;
                  v32 = v14;
                  _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized integrity method", buf, 0x1Cu);
                }

                *v20 = 1;
                v7 = 0;
                goto LABEL_19;
              }

              v16 = v15;
              [v9 addObject:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NEIKEv2IntegrityProtocol *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if ([v9 count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9];
LABEL_19:
      }

      else
      {

        v7 = 0;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v7 = 0;
LABEL_23:

  return v7;
}

uint64_t NEIPsecIKECopyPRFProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"PRFAlgorithm"))
  {
    v4 = [v3 objectForKeyedSubscript:@"PRFAlgorithm"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = NEIPsecIKEGetPRFProtocol(v4);
      if (v5)
      {
        v6 = v5;
        v26 = v5;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      }

      else
      {
        v19 = ne_log_obj();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v28 = "NEIPsecIKECopyPRFProtocolsFromDictionary";
          v29 = 1024;
          v30 = 1172;
          v31 = 2112;
          v32 = v4;
          _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized PRF protocol", buf, 0x1Cu);
        }

        v6 = 0;
        v7 = 0;
        *a2 = 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = 0;
        goto LABEL_22;
      }

      v20 = a2;
      v8 = v4;
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = v8;
      v10 = [(NEIKEv2PRFProtocol *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        while (2)
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = NEIPsecIKEGetPRFProtocol(v14);
              if (!v15)
              {
                v18 = ne_log_obj();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v28 = "NEIPsecIKECopyPRFProtocolsFromDictionary";
                  v29 = 1024;
                  v30 = 1187;
                  v31 = 2112;
                  v32 = v14;
                  _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized PRF protocol", buf, 0x1Cu);
                }

                *v20 = 1;
                v7 = 0;
                goto LABEL_19;
              }

              v16 = v15;
              [v9 addObject:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [(NEIKEv2PRFProtocol *)v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      if ([v9 count])
      {
        v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9];
LABEL_19:
      }

      else
      {

        v7 = 0;
      }
    }

LABEL_22:
    goto LABEL_23;
  }

  v7 = 0;
LABEL_23:

  return v7;
}

uint64_t NEIPsecIKECopyKEMProtocolsFromDictionary(void *a1)
{
  v1 = a1;
  if (CFDictionaryContainsKey(v1, @"DHGroup"))
  {
    v2 = [v1 objectForKeyedSubscript:@"DHGroup"];
    v3 = NEIPsecIKECopyKEMProtocolsFromObject(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(void *a1, _BYTE *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  *a2 = 0;
  if (CFDictionaryContainsKey(v3, @"AdditionalKEMethods") && !NEGetValueWithType(v3, @"AdditionalKEMethods", CFARRAY_TYPE))
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v26 = "NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary";
      v27 = 1024;
      v28 = 1240;
      v29 = 2112;
      v30 = @"AdditionalKEMethods";
      v31 = 2048;
      v32 = CFARRAY_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%s:%d: type of value for key %@ != %lu", buf, 0x26u);
    }

    v6 = 0;
    goto LABEL_24;
  }

  if (CFDictionaryContainsKey(v3, @"AdditionalKEMethods"))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"AdditionalKEMethods"];
    v5 = [v4 count];
    v6 = v5;
    if (v5 >= 8)
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v26 = "NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary";
        v27 = 1024;
        v28 = 1249;
        v29 = 2112;
        v30 = @"AdditionalKEMethods";
        v31 = 2048;
        v32 = v6;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "%s:%d: array for key %@ is too long (%zu > 7)", buf, 0x26u);
      }

      v6 = 0;
      *a2 = 1;
    }

    else if (v5)
    {
      v19 = v3;
      v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v5];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v4 = v4;
      v8 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        v11 = 6;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v4);
            }

            v13 = NEIPsecIKECopyKEMProtocolsFromObject(*(*(&v20 + 1) + 8 * i));
            if ([v13 count] > 1 || (objc_msgSend(v13, "firstObject"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "method"), v14, v15))
            {
              v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
              [v7 setObject:v13 forKeyedSubscript:v16];
            }

            ++v11;
          }

          v9 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      if ([v7 count])
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v7];
      }

      else
      {
        v6 = 0;
      }

      v3 = v19;
    }

LABEL_24:

    goto LABEL_25;
  }

  v6 = 0;
LABEL_25:

  return v6;
}

NEIKEv2EAPProtocol *NEIPsecIKEGetEAPProtocol(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 2;
LABEL_16:
    v3 = [[NEIKEv2EAPProtocol alloc] initWithMethod:v2];
    goto LABEL_17;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 3;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 4;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 5;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 6;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 7;
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 1;
    goto LABEL_16;
  }

  v2 = 0;
  v3 = 0;
  if (objc_msgSend_isEqualToString_(v1))
  {
    goto LABEL_16;
  }

LABEL_17:

  return v3;
}

NEIKEv2ChildSAConfiguration *NEIPSecIKEValidateIKEChildDictionary(void *a1)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(&v2->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      _os_log_fault_impl(&dword_1BA83C000, &v2->super, OS_LOG_TYPE_FAULT, "%s called with null ikeChildDict", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v2 = objc_alloc_init(NEIKEv2ChildSAConfiguration);
  v3 = CFDICTIONARY_TYPE;
  if (CFGetTypeID(a1) != v3)
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      v117 = 1024;
      v118 = 2295;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child configuration is not a dictionary", buf, 0x12u);
    }

LABEL_11:
    v8 = 0;
    goto LABEL_167;
  }

  v4 = a1;
  if (!NEGetValueWithType(v4, @"Mode", CFSTRING_TYPE))
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      v117 = 1024;
      v118 = 2301;
      v119 = 2112;
      v120 = @"Mode";
      v121 = 2048;
      v122 = CFSTRING_TYPE;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
    }

    v8 = 0;
    goto LABEL_166;
  }

  v5 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"Mode"];
  if (objc_msgSend_isEqualToString_(v5))
  {
    v6 = 1;
LABEL_17:
    [(NEIKEv2ChildSAConfiguration *)v2 setMode:v6];
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    v6 = 2;
    goto LABEL_17;
  }

LABEL_18:
  if (CFDictionaryContainsKey(v4, @"ReplayWindowSize") && !NEGetValueWithType(v4, @"ReplayWindowSize", CFNUMBER_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2309;
    v119 = 2112;
    v120 = @"ReplayWindowSize";
    v121 = 2048;
    v122 = CFNUMBER_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
LABEL_103:
    v82 = v14;
    v83 = 38;
LABEL_113:
    _os_log_error_impl(&dword_1BA83C000, v82, OS_LOG_TYPE_ERROR, v81, buf, v83);
    goto LABEL_164;
  }

  if (CFDictionaryContainsKey(v4, @"ReplayWindowSize"))
  {
    v9 = [(__CFDictionary *)v4 objectForKeyedSubscript:@"ReplayWindowSize"];
    -[NEIKEv2ChildSAConfiguration setReplayWindowSize:](v2, "setReplayWindowSize:", [v9 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(v4, @"TrafficSelectorsLocal") && !NEGetValueWithType(v4, @"TrafficSelectorsLocal", CFARRAY_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2314;
    v119 = 2112;
    v120 = @"TrafficSelectorsLocal";
    v121 = 2048;
    v122 = CFARRAY_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_103;
  }

  if (CFDictionaryContainsKey(v4, @"TrafficSelectorsRemote") && !NEGetValueWithType(v4, @"TrafficSelectorsRemote", CFARRAY_TYPE))
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315906;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2315;
    v119 = 2112;
    v120 = @"TrafficSelectorsRemote";
    v121 = 2048;
    v122 = CFARRAY_TYPE;
    v81 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_103;
  }

  v10 = NEGetValueWithType(v4, @"TrafficSelectorsLocal", CFARRAY_TYPE);
  if (v10)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (!Count)
    {
      v14 = ne_log_obj();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_164;
      }

      *buf = 136315394;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      v117 = 1024;
      v118 = 2322;
      v81 = "%s:%d: IKE Child local traffic selector array is empty";
LABEL_112:
      v82 = v14;
      v83 = 18;
      goto LABEL_113;
    }

    v13 = Count;
    theArray = v11;
    v102 = v5;
    v105 = v2;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = @"TSStartAddress";
      v96 = v13;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
        if (!ValueAtIndex)
        {
          break;
        }

        v18 = ValueAtIndex;
        v19 = CFDICTIONARY_TYPE;
        if (CFGetTypeID(ValueAtIndex) != v19)
        {
          break;
        }

        v20 = v18;
        v21 = objc_alloc_init(NEIKEv2TrafficSelector);
        if (!NEGetValueWithType(v20, @"TSType", CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          v5 = v102;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2337;
            v119 = 2112;
            v120 = @"TSType";
            v121 = 2048;
            v122 = CFSTRING_TYPE;
            _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
          }

          v2 = v105;
          goto LABEL_140;
        }

        if (!NEGetValueWithType(v20, v16, CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2338;
            v119 = 2112;
            v120 = v16;
            v121 = 2048;
            v122 = CFSTRING_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v22 = v14;
        v23 = v16;
        v24 = [(__CFDictionary *)v20 objectForKeyedSubscript:v16];
        v25 = NECreateAddressStructFromString(v24, 0, 0);

        v26 = [MEMORY[0x1E6977E08] endpointWithAddress:v25];
        [(NEIKEv2TrafficSelector *)v21 setStartAddress:v26];

        free(v25);
        if (!NEGetValueWithType(v20, @"TSEndAddress", CFSTRING_TYPE))
        {
          v84 = ne_log_obj();
          v14 = v22;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2344;
            v119 = 2112;
            v120 = @"TSEndAddress";
            v121 = 2048;
            v122 = CFSTRING_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v27 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndAddress"];
        v28 = NECreateAddressStructFromString(v27, 0, 0);

        v29 = [MEMORY[0x1E6977E08] endpointWithAddress:v28];
        [(NEIKEv2TrafficSelector *)v21 setEndAddress:v29];

        free(v28);
        if (!NEGetValueWithType(v20, @"TSStartPort", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          v14 = v22;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2350;
            v119 = 2112;
            v120 = @"TSStartPort";
            v121 = 2048;
            v122 = CFNUMBER_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

          goto LABEL_139;
        }

        v30 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartPort"];
        -[NEIKEv2TrafficSelector setStartPort:](v21, "setStartPort:", [v30 unsignedShortValue]);

        v14 = v22;
        if (!NEGetValueWithType(v20, @"TSEndPort", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2353;
            v119 = 2112;
            v120 = @"TSEndPort";
            v121 = 2048;
            v122 = CFNUMBER_TYPE;
            v85 = "%s:%d: value for key %@ is missing or type != %lu";
            goto LABEL_138;
          }

LABEL_139:
          v5 = v102;
          v2 = v105;
LABEL_140:

          goto LABEL_163;
        }

        v31 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndPort"];
        -[NEIKEv2TrafficSelector setEndPort:](v21, "setEndPort:", [v31 unsignedShortValue]);

        if (CFDictionaryContainsKey(v20, @"TSProtocol") && !NEGetValueWithType(v20, @"TSProtocol", CFNUMBER_TYPE))
        {
          v84 = ne_log_obj();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2356;
            v119 = 2112;
            v120 = @"TSProtocol";
            v121 = 2048;
            v122 = CFNUMBER_TYPE;
            v85 = "%s:%d: type of value for key %@ != %lu";
LABEL_138:
            _os_log_error_impl(&dword_1BA83C000, v84, OS_LOG_TYPE_ERROR, v85, buf, 0x26u);
          }

          goto LABEL_139;
        }

        if (CFDictionaryContainsKey(v4, @"TSProtocol"))
        {
          v32 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSProtocol"];
          -[NEIKEv2TrafficSelector setIpProtocol:](v21, "setIpProtocol:", [v32 unsignedCharValue]);
        }

        [v22 addObject:v21];

        ++v15;
        v16 = v23;
        if (v96 == v15)
        {
          goto LABEL_42;
        }
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v116 = "NEIPSecIKEValidateIKEChildDictionary";
        v117 = 1024;
        v118 = 2330;
        _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child local traffic selector array is invalid", buf, 0x12u);
      }

      v5 = v102;
      v2 = v105;
      goto LABEL_163;
    }

LABEL_42:
    v2 = v105;
    [(NEIKEv2ChildSAConfiguration *)v105 setLocalTrafficSelectors:v14];

    v5 = v102;
  }

  v33 = NEGetValueWithType(v4, @"TrafficSelectorsRemote", CFARRAY_TYPE);
  if (!v33)
  {
    goto LABEL_60;
  }

  v34 = v33;
  v35 = CFArrayGetCount(v33);
  if (!v35)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315394;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2371;
    v81 = "%s:%d: IKE Child remote traffic selector array is empty";
    goto LABEL_112;
  }

  v36 = v35;
  theArraya = v34;
  v103 = v5;
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v36 >= 1)
  {
    v37 = 0;
    v97 = v36;
    while (1)
    {
      v38 = CFArrayGetValueAtIndex(theArraya, v37);
      if (!v38 || (v39 = v38, v40 = CFDICTIONARY_TYPE, CFGetTypeID(v38) != v40))
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2379;
          _os_log_error_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child remote traffic selector array is invalid", buf, 0x12u);
        }

        v5 = v103;
        goto LABEL_163;
      }

      v20 = v39;
      theDict = objc_alloc_init(NEIKEv2TrafficSelector);
      if (!NEGetValueWithType(v20, @"TSType", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        v5 = v103;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2386;
          v119 = 2112;
          v120 = @"TSType";
          v121 = 2048;
          v122 = CFSTRING_TYPE;
          _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
        }

        goto LABEL_162;
      }

      if (!NEGetValueWithType(v20, @"TSStartAddress", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2387;
          v119 = 2112;
          v120 = @"TSStartAddress";
          v121 = 2048;
          v122 = CFSTRING_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v41 = v14;
      v42 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartAddress"];
      v43 = NECreateAddressStructFromString(v42, 0, 0);

      v44 = [MEMORY[0x1E6977E08] endpointWithAddress:v43];
      [(NEIKEv2TrafficSelector *)theDict setStartAddress:v44];

      free(v43);
      if (!NEGetValueWithType(v20, @"TSEndAddress", CFSTRING_TYPE))
      {
        v86 = ne_log_obj();
        v14 = v41;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2393;
          v119 = 2112;
          v120 = @"TSEndAddress";
          v121 = 2048;
          v122 = CFSTRING_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v45 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndAddress"];
      v46 = NECreateAddressStructFromString(v45, 0, 0);

      v47 = [MEMORY[0x1E6977E08] endpointWithAddress:v46];
      [(NEIKEv2TrafficSelector *)theDict setEndAddress:v47];

      free(v46);
      if (!NEGetValueWithType(v20, @"TSStartPort", CFNUMBER_TYPE))
      {
        v86 = ne_log_obj();
        v14 = v41;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2399;
          v119 = 2112;
          v120 = @"TSStartPort";
          v121 = 2048;
          v122 = CFNUMBER_TYPE;
          v87 = "%s:%d: value for key %@ is missing or type != %lu";
          goto LABEL_160;
        }

        goto LABEL_161;
      }

      v48 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSStartPort"];
      -[NEIKEv2TrafficSelector setStartPort:](theDict, "setStartPort:", [v48 unsignedShortValue]);

      v14 = v41;
      if (!NEGetValueWithType(v20, @"TSEndPort", CFNUMBER_TYPE))
      {
        break;
      }

      v49 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSEndPort"];
      -[NEIKEv2TrafficSelector setEndPort:](theDict, "setEndPort:", [v49 unsignedShortValue]);

      if (CFDictionaryContainsKey(v20, @"TSProtocol") && !NEGetValueWithType(v20, @"TSProtocol", CFNUMBER_TYPE))
      {
        v86 = ne_log_obj();
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2405;
          v119 = 2112;
          v120 = @"TSProtocol";
          v121 = 2048;
          v122 = CFNUMBER_TYPE;
          v87 = "%s:%d: type of value for key %@ != %lu";
LABEL_160:
          _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, v87, buf, 0x26u);
        }

        goto LABEL_161;
      }

      if (CFDictionaryContainsKey(v4, @"TSProtocol"))
      {
        v50 = [(__CFDictionary *)v20 objectForKeyedSubscript:@"TSProtocol"];
        -[NEIKEv2TrafficSelector setIpProtocol:](theDict, "setIpProtocol:", [v50 unsignedCharValue]);
      }

      [v41 addObject:theDict];

      if (v97 == ++v37)
      {
        goto LABEL_59;
      }
    }

    v86 = ne_log_obj();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      v117 = 1024;
      v118 = 2402;
      v119 = 2112;
      v120 = @"TSEndPort";
      v121 = 2048;
      v122 = CFNUMBER_TYPE;
      v87 = "%s:%d: value for key %@ is missing or type != %lu";
      goto LABEL_160;
    }

LABEL_161:
    v5 = v103;
LABEL_162:

LABEL_163:
    goto LABEL_164;
  }

LABEL_59:
  [(NEIKEv2ChildSAConfiguration *)v2 setRemoteTrafficSelectors:v14];

  v5 = v103;
LABEL_60:
  v51 = NEGetValueWithType(v4, @"ChildProposals", CFARRAY_TYPE);
  if (!v51)
  {
    v14 = ne_log_obj();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_164;
    }

    *buf = 136315394;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2417;
    v81 = "%s:%d: IKE Child configuration proposals array is missing";
    goto LABEL_112;
  }

  v52 = v51;
  v53 = CFArrayGetCount(v51);
  if (!v53)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v116 = "NEIPSecIKEValidateIKEChildDictionary";
      v117 = 1024;
      v118 = 2422;
      v81 = "%s:%d: IKE Child configuration proposals array is empty";
      goto LABEL_112;
    }

LABEL_164:
    v8 = 0;
    goto LABEL_165;
  }

  v54 = v53;
  v104 = v5;
  v106 = v2;
  theDicta = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v53];
  p_info = NETunnelProvider.info;
  if (v54 < 1)
  {
LABEL_96:
    v14 = theDicta;
    v80 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:theDicta];
    v2 = v106;
    [(NEIKEv2ChildSAConfiguration *)v106 setProposals:v80];

    v8 = v106;
    v5 = v104;
    goto LABEL_165;
  }

  v56 = 0;
  v94 = v54;
  v95 = v52;
  while (1)
  {
    v57 = CFArrayGetValueAtIndex(v52, v56);
    if (!v57 || (v58 = v57, v59 = p_info[273], CFGetTypeID(v57) != v59))
    {
      v60 = ne_log_obj();
      v5 = v104;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v116 = "NEIPSecIKEValidateIKEChildDictionary";
        v117 = 1024;
        v118 = 2430;
        _os_log_error_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_ERROR, "%s:%d: IKE Child configuration proposals array is invalid", buf, 0x12u);
      }

      goto LABEL_155;
    }

    v60 = v58;
    v61 = objc_alloc_init(NEIKEv2ChildSAProposal);
    v62 = v61;
    if (v61)
    {
      v61->_proposalNumber = v56 + 1;
    }

    if (!NEGetValueWithType(v60, @"ChildProtocol", CFSTRING_TYPE))
    {
      v88 = ne_log_obj();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v116 = "NEIPSecIKEValidateIKEChildDictionary";
        v117 = 1024;
        v118 = 2439;
        v119 = 2112;
        v120 = @"ChildProtocol";
        v121 = 2048;
        v122 = CFSTRING_TYPE;
        _os_log_error_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
      }

      goto LABEL_175;
    }

    v63 = [v60 objectForKeyedSubscript:@"ChildProtocol"];
    if (objc_msgSend_isEqualToString_(v63))
    {
      v64 = 3;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v63))
      {
        goto LABEL_74;
      }

      v64 = 2;
    }

    [(NEIKEv2ChildSAProposal *)v62 setProtocol:v64];
LABEL_74:
    if (!NEGetValueWithType(v60, @"Lifetime", CFNUMBER_TYPE))
    {
      v89 = ne_log_obj();
      v5 = v104;
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v116 = "NEIPSecIKEValidateIKEChildDictionary";
        v117 = 1024;
        v118 = 2447;
        v119 = 2112;
        v120 = @"Lifetime";
        v121 = 2048;
        v122 = CFNUMBER_TYPE;
        _os_log_error_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_ERROR, "%s:%d: value for key %@ is missing or type != %lu", buf, 0x26u);
      }

LABEL_155:
      v8 = 0;
      v2 = v106;
      v14 = theDicta;
      goto LABEL_165;
    }

    v65 = [v60 objectForKeyedSubscript:@"Lifetime"];
    -[NEIKEv2ChildSAProposal setLifetimeSeconds:](v62, "setLifetimeSeconds:", [v65 unsignedLongValue]);

    v113 = 0;
    v66 = NEIPsecIKECopyEncryptionProtocolsFromDictionary(v60, 1, &v113);
    [(NEIKEv2ChildSAProposal *)v62 setEncryptionProtocols:v66];

    if (v113)
    {
      goto LABEL_174;
    }

    v67 = [(NEIKEv2ChildSAProposal *)v62 encryptionProtocols];

    if (!v67)
    {
      break;
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v68 = [(NEIKEv2ChildSAProposal *)v62 encryptionProtocols];
    v69 = [v68 countByEnumeratingWithState:&v109 objects:v114 count:16];
    if (v69)
    {
      v70 = v69;
      v98 = v63;
      theArrayb = v60;
      v71 = 0;
      v72 = 0;
      v73 = *v110;
      do
      {
        for (i = 0; i != v70; ++i)
        {
          if (*v110 != v73)
          {
            objc_enumerationMutation(v68);
          }

          v75 = *(*(&v109 + 1) + 8 * i);
          if (v75)
          {
            v75 = *(v75 + 16);
            if (v75 > 0x1F)
            {
              LODWORD(v75) = 0;
            }

            else
            {
              LODWORD(v75) = 0xD0100000 >> v75;
            }
          }

          v71 |= v75;
          v72 |= v75 ^ 1;
        }

        v70 = [v68 countByEnumeratingWithState:&v109 objects:v114 count:16];
      }

      while (v70);

      v60 = theArrayb;
      if (v71 & v72)
      {
        v92 = ne_log_obj();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v116 = "NEIPSecIKEValidateIKEChildDictionary";
          v117 = 1024;
          v118 = 2470;
          _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, "%s:%d: can't mix authenticated and unauthenticated encryption protocols in the same proposal", buf, 0x12u);
        }

        v63 = v98;
        v60 = theArrayb;
        goto LABEL_173;
      }

      p_info = (NETunnelProvider + 32);
      v52 = v95;
      v63 = v98;
      if (v72)
      {
        v76 = NEIPsecIKECopyIntegrityProtocolsFromDictionary(theArrayb, &v113);
        [(NEIKEv2ChildSAProposal *)v62 setIntegrityProtocols:v76];

        if (v113)
        {
          goto LABEL_174;
        }

        v77 = [(NEIKEv2ChildSAProposal *)v62 integrityProtocols];

        if (!v77)
        {
          v92 = ne_log_obj();
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v116 = "NEIPSecIKEValidateIKEChildDictionary";
            v117 = 1024;
            v118 = 2479;
            v90 = "%s:%d: failed to get integrity protocol(s)";
LABEL_172:
            _os_log_error_impl(&dword_1BA83C000, v92, OS_LOG_TYPE_ERROR, v90, buf, 0x12u);
          }

          goto LABEL_173;
        }
      }
    }

    else
    {

      v52 = v95;
    }

    v78 = NEIPsecIKECopyKEMProtocolsFromDictionary(v60);
    [(NEIKEv2ChildSAProposal *)v62 setKemProtocols:v78];

    v79 = NEIPsecIKECopyAdditionalsKEMProtocolsFromDictionary(v60, &v113);
    [(NEIKEv2ChildSAProposal *)v62 setAdditionalKEMProtocols:v79];

    if (v113)
    {
      goto LABEL_174;
    }

    [(__CFDictionary *)theDicta addObject:v62];

    if (++v56 == v94)
    {
      goto LABEL_96;
    }
  }

  v92 = ne_log_obj();
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v116 = "NEIPSecIKEValidateIKEChildDictionary";
    v117 = 1024;
    v118 = 2455;
    v90 = "%s:%d: failed to get encryption protocol(s)";
    goto LABEL_172;
  }

LABEL_173:

LABEL_174:
LABEL_175:

  v8 = 0;
  v5 = v104;
  v2 = v106;
  v14 = theDicta;
LABEL_165:

LABEL_166:
LABEL_167:

  return v8;
}

NEIKEv2SessionConfiguration *NEIPSecIKEValidateSessionDictionary(void *a1)
{
  v259 = *MEMORY[0x1E69E9840];
  if (NEInitCFTypes_onceToken != -1)
  {
    dispatch_once(&NEInitCFTypes_onceToken, &__block_literal_global_25529);
  }

  v2 = objc_alloc_init(NEIKEv2SessionConfiguration);
  if (!a1 || (v3 = CFDICTIONARY_TYPE, CFGetTypeID(a1) != v3))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1526;
      v14 = "%s:%d: Session configuration is not a dictionary";
      v15 = v11;
      v16 = 18;
      goto LABEL_22;
    }

LABEL_14:

    v12 = 0;
    goto LABEL_15;
  }

  if (!NEGetValueWithType(a1, @"IKEVersion", CFNUMBER_TYPE))
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1530;
      v255 = 2112;
      v256 = @"IKEVersion";
      v257 = 2048;
      v258 = CFNUMBER_TYPE;
      v14 = "%s:%d: value for key %@ is missing or type != %lu";
      v15 = v11;
      v16 = 38;
LABEL_22:
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  valuePtr = 0;
  v4 = NEGetValueWithType(a1, @"IKEVersion", CFNUMBER_TYPE);
  CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
  if (valuePtr != 2)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1535;
      _os_log_error_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_ERROR, "%s:%d: Session IKE version is not 2", buf, 0x12u);
    }

    v12 = 0;
    goto LABEL_575;
  }

  v5 = a1;
  if (CFDictionaryContainsKey(v5, @"LocalIdentifier") && !NEGetValueWithType(v5, @"LocalIdentifier", CFSTRING_TYPE))
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1542;
    v255 = 2112;
    v256 = @"LocalIdentifier";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v18 = "%s:%d: type of value for key %@ != %lu";
LABEL_52:
    _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x26u);
    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v5, @"LocalIdentifier"))
  {
    goto LABEL_44;
  }

  if (!NEGetValueWithType(v5, @"LocalIdentifierType", CFSTRING_TYPE))
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1544;
    v255 = 2112;
    v256 = @"LocalIdentifierType";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v18 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_52;
  }

  v6 = [v5 objectForKeyedSubscript:@"LocalIdentifier"];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
  isEqualToString = objc_msgSend_isEqualToString_(v8);

  if ((isEqualToString & 1) == 0)
  {
    v19 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v20 = objc_msgSend_isEqualToString_(v19);

    if (v20)
    {
      v10 = 3;
      goto LABEL_43;
    }

    v21 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v22 = objc_msgSend_isEqualToString_(v21);

    if (v22)
    {
      v10 = 9;
      goto LABEL_43;
    }

    v23 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v24 = objc_msgSend_isEqualToString_(v23);

    if (v24)
    {
      v10 = 11;
      goto LABEL_43;
    }

    v25 = [v5 objectForKeyedSubscript:@"LocalIdentifierType"];
    v26 = objc_msgSend_isEqualToString_(v25);

    if (!v26 || ([v5 objectForKeyedSubscript:@"LocalIdentifier"], v27 = objc_claimAutoreleasedReturnValue(), v28 = NECreateAddressStructFromString(v27, 0, 0), v27, !v28))
    {
      v10 = 0;
      goto LABEL_43;
    }

    v29 = v28[1];
    if (v29 == 2)
    {
      v10 = 1;
      v31 = 4;
      v30 = 4;
    }

    else
    {
      if (v29 != 30)
      {
        v10 = 0;
        goto LABEL_42;
      }

      v10 = 5;
      v30 = 16;
      v31 = 8;
    }

    v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v28[v31] length:v30];

    v7 = v32;
LABEL_42:
    free(v28);
    goto LABEL_43;
  }

  v10 = 2;
LABEL_43:
  v33 = [NEIKEv2Identifier createIdentifierWithType:v10 data:v7];
  [(NEIKEv2SessionConfiguration *)v2 setLocalIdentifier:v33];

LABEL_44:
  if (!NEGetValueWithType(v5, @"RemoteIdentifier", CFSTRING_TYPE))
  {
    v17 = ne_log_obj();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_573;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1576;
    v255 = 2112;
    v256 = @"RemoteIdentifier";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v18 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_52;
  }

  if (!NEGetValueWithType(v5, @"RemoteIdentifierType", CFSTRING_TYPE))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1577;
      v255 = 2112;
      v256 = @"RemoteIdentifierType";
      v257 = 2048;
      v258 = CFSTRING_TYPE;
      v18 = "%s:%d: value for key %@ is missing or type != %lu";
      goto LABEL_52;
    }

LABEL_573:
    v12 = 0;
    goto LABEL_574;
  }

  v34 = [v5 objectForKeyedSubscript:@"RemoteIdentifier"];
  v17 = [v34 dataUsingEncoding:4];

  v35 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
  v36 = objc_msgSend_isEqualToString_(v35);

  if ((v36 & 1) == 0)
  {
    v38 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v39 = objc_msgSend_isEqualToString_(v38);

    if (v39)
    {
      v37 = 3;
      goto LABEL_69;
    }

    v40 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v41 = objc_msgSend_isEqualToString_(v40);

    if (v41)
    {
      v37 = 9;
      goto LABEL_69;
    }

    v42 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v43 = objc_msgSend_isEqualToString_(v42);

    if (v43)
    {
      v37 = 11;
      goto LABEL_69;
    }

    v44 = [v5 objectForKeyedSubscript:@"RemoteIdentifierType"];
    v45 = objc_msgSend_isEqualToString_(v44);

    if (!v45 || ([v5 objectForKeyedSubscript:@"RemoteIdentifier"], v46 = objc_claimAutoreleasedReturnValue(), v47 = NECreateAddressStructFromString(v46, 0, 0), v46, !v47))
    {
      v37 = 0;
      goto LABEL_69;
    }

    v48 = v47[1];
    if (v48 == 2)
    {
      v37 = 1;
      v50 = 4;
      v49 = 4;
    }

    else
    {
      if (v48 != 30)
      {
        v37 = 0;
        goto LABEL_68;
      }

      v37 = 5;
      v49 = 16;
      v50 = 8;
    }

    v51 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v47[v50] length:v49];

    v17 = v51;
LABEL_68:
    free(v47);
    goto LABEL_69;
  }

  v37 = 2;
LABEL_69:
  v52 = [NEIKEv2Identifier createIdentifierWithType:v37 data:v17];
  [(NEIKEv2SessionConfiguration *)v2 setRemoteIdentifier:v52];

  if (CFDictionaryContainsKey(v5, @"LocalPrivateEAPIdentity") && !NEGetValueWithType(v5, @"LocalPrivateEAPIdentity", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1608;
    v255 = 2112;
    v256 = @"LocalPrivateEAPIdentity";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
LABEL_571:
    _os_log_error_impl(&dword_1BA83C000, v94, OS_LOG_TYPE_ERROR, v99, buf, 0x26u);
    goto LABEL_572;
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateEAPIdentity"))
  {
    v53 = [v5 objectForKeyedSubscript:@"LocalPrivateEAPIdentity"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalPrivateEAPIdentity:v53];
  }

  if (CFDictionaryContainsKey(v5, @"LocalEncryptedEAPIdentity") && !NEGetValueWithType(v5, @"LocalEncryptedEAPIdentity", CFDATA_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1613;
    v255 = 2112;
    v256 = @"LocalEncryptedEAPIdentity";
    v257 = 2048;
    v258 = CFDATA_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalEncryptedEAPIdentity"))
  {
    v54 = [v5 objectForKeyedSubscript:@"LocalEncryptedEAPIdentity"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalEncryptedEAPIdentity:v54];
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretKey") && !NEGetValueWithType(v5, @"SharedSecretKey", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1618;
    v255 = 2112;
    v256 = @"SharedSecretKey";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretKey"))
  {
    v55 = [v5 objectForKeyedSubscript:@"SharedSecretKey"];
    [(NEIKEv2SessionConfiguration *)v2 setSharedSecret:v55];
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretReference") && !NEGetValueWithType(v5, @"SharedSecretReference", CFDATA_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1623;
    v255 = 2112;
    v256 = @"SharedSecretReference";
    v257 = 2048;
    v258 = CFDATA_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"SharedSecretReference"))
  {
    v56 = [v5 objectForKeyedSubscript:@"SharedSecretReference"];
    [(NEIKEv2SessionConfiguration *)v2 setSharedSecretReference:v56];
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificate") && !NEGetValueWithType(v5, @"LocalCertificate", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1628;
    v255 = 2112;
    v256 = @"LocalCertificate";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificate"))
  {
    v57 = [v5 objectForKeyedSubscript:@"LocalCertificate"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalCertificateName:v57];
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificateReference") && !NEGetValueWithType(v5, @"LocalCertificateReference", CFDATA_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1633;
    v255 = 2112;
    v256 = @"LocalCertificateReference";
    v257 = 2048;
    v258 = CFDATA_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"LocalCertificateReference"))
  {
    v58 = [v5 objectForKeyedSubscript:@"LocalCertificateReference"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalCertificateReference:v58];
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveEnabled") && !NEGetValueWithType(v5, @"NATTKeepAliveEnabled", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1638;
    v255 = 2112;
    v256 = @"NATTKeepAliveEnabled";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveEnabled"))
  {
    v59 = [v5 objectForKeyedSubscript:@"NATTKeepAliveEnabled"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveDisabled:](v2, "setNatTraversalKeepaliveDisabled:", [v59 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveInterval") && !NEGetValueWithType(v5, @"NATTKeepAliveInterval", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1643;
    v255 = 2112;
    v256 = @"NATTKeepAliveInterval";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveInterval"))
  {
    v60 = [v5 objectForKeyedSubscript:@"NATTKeepAliveInterval"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveInterval:](v2, "setNatTraversalKeepaliveInterval:", [v60 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffload") && !NEGetValueWithType(v5, @"NATTKeepAliveOffload", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1648;
    v255 = 2112;
    v256 = @"NATTKeepAliveOffload";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffload"))
  {
    v61 = [v5 objectForKeyedSubscript:@"NATTKeepAliveOffload"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveOffloadEnabled:](v2, "setNatTraversalKeepaliveOffloadEnabled:", [v61 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffloadInterval") && !NEGetValueWithType(v5, @"NATTKeepAliveOffloadInterval", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1653;
    v255 = 2112;
    v256 = @"NATTKeepAliveOffloadInterval";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"NATTKeepAliveOffloadInterval"))
  {
    v62 = [v5 objectForKeyedSubscript:@"NATTKeepAliveOffloadInterval"];
    -[NEIKEv2SessionConfiguration setNatTraversalKeepaliveOffloadInterval:](v2, "setNatTraversalKeepaliveOffloadInterval:", [v62 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityHash") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityHash", CFDATA_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1658;
    v255 = 2112;
    v256 = @"RemoteCertificateAuthorityHash";
    v257 = 2048;
    v258 = CFDATA_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityHash"))
  {
    v63 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityHash"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityHash:v63];
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateKeyRef"))
  {
    TypeID = SecKeyGetTypeID();
    if (!NEGetValueWithType(v5, @"LocalPrivateKeyRef", TypeID))
    {
      v94 = ne_log_obj();
      if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_572;
      }

      v100 = SecKeyGetTypeID();
      *buf = 136315906;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1663;
      v255 = 2112;
      v256 = @"LocalPrivateKeyRef";
      v257 = 2048;
      v258 = v100;
      v99 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }
  }

  if (CFDictionaryContainsKey(v5, @"LocalPrivateKeyRef"))
  {
    v65 = [v5 objectForKeyedSubscript:@"LocalPrivateKeyRef"];
    [(NEIKEv2SessionConfiguration *)v2 setLocalPrivateKeyRef:v65];
  }

  if (CFDictionaryContainsKey(v5, @"RemotePublicKeyRef"))
  {
    v66 = SecKeyGetTypeID();
    if (!NEGetValueWithType(v5, @"RemotePublicKeyRef", v66))
    {
      v94 = ne_log_obj();
      if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_572;
      }

      v101 = SecKeyGetTypeID();
      *buf = 136315906;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1668;
      v255 = 2112;
      v256 = @"RemotePublicKeyRef";
      v257 = 2048;
      v258 = v101;
      v99 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }
  }

  if (CFDictionaryContainsKey(v5, @"RemotePublicKeyRef"))
  {
    v67 = [v5 objectForKeyedSubscript:@"RemotePublicKeyRef"];
    [(NEIKEv2SessionConfiguration *)v2 setRemotePublicKeyRef:v67];
  }

  if (CFDictionaryContainsKey(v5, @"TLSMinimumVersion") && !NEGetValueWithType(v5, @"TLSMinimumVersion", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1673;
    v255 = 2112;
    v256 = @"TLSMinimumVersion";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"TLSMinimumVersion"))
  {
    v68 = [v5 objectForKeyedSubscript:@"TLSMinimumVersion"];
    [(NEIKEv2SessionConfiguration *)v2 setTlsMinimumVersion:v68];
  }

  if (CFDictionaryContainsKey(v5, @"TLSMaximumVersion") && !NEGetValueWithType(v5, @"TLSMaximumVersion", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1678;
    v255 = 2112;
    v256 = @"TLSMaximumVersion";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"TLSMaximumVersion"))
  {
    v69 = [v5 objectForKeyedSubscript:@"TLSMaximumVersion"];
    [(NEIKEv2SessionConfiguration *)v2 setTlsMaximumVersion:v69];
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionEnabled") && !NEGetValueWithType(v5, @"DeadPeerDetectionEnabled", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1683;
    v255 = 2112;
    v256 = @"DeadPeerDetectionEnabled";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (!CFDictionaryContainsKey(v5, @"DeadPeerDetectionEnabled"))
  {
    goto LABEL_146;
  }

  v70 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionEnabled"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionEnabled:](v2, "setDeadPeerDetectionEnabled:", [v70 BOOLValue]);

  if (!NEGetValueWithType(v5, @"DeadPeerDetectionInterval", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1687;
    v255 = 2112;
    v256 = @"DeadPeerDetectionInterval";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  v71 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionInterval"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionInterval:](v2, "setDeadPeerDetectionInterval:", [v71 unsignedLongValue]);

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryInterval") && !NEGetValueWithType(v5, @"DeadPeerDetectionRetryInterval", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1690;
    v255 = 2112;
    v256 = @"DeadPeerDetectionRetryInterval";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryInterval"))
  {
    v72 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionRetryInterval"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionRetryIntervalMilliseconds:](v2, "setDeadPeerDetectionRetryIntervalMilliseconds:", 1000 * [v72 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryIntervalMilliseconds") && !NEGetValueWithType(v5, @"DeadPeerDetectionRetryIntervalMilliseconds", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1695;
    v255 = 2112;
    v256 = @"DeadPeerDetectionRetryIntervalMilliseconds";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionRetryIntervalMilliseconds"))
  {
    v73 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionRetryIntervalMilliseconds"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionRetryIntervalMilliseconds:](v2, "setDeadPeerDetectionRetryIntervalMilliseconds:", [v73 unsignedLongValue]);
  }

  if (!NEGetValueWithType(v5, @"DeadPeerDetectionMaxRetries", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1700;
    v255 = 2112;
    v256 = @"DeadPeerDetectionMaxRetries";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  v74 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionMaxRetries"];
  -[NEIKEv2SessionConfiguration setDeadPeerDetectionMaxRetryCount:](v2, "setDeadPeerDetectionMaxRetryCount:", [v74 unsignedIntValue]);

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1703;
    v255 = 2112;
    v256 = @"DeadPeerDetectionMaxRetriesBeforeReporting";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionMaxRetriesBeforeReporting"))
  {
    v75 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionMaxRetriesBeforeReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionMaxRetryCountBeforeReporting:](v2, "setDeadPeerDetectionMaxRetryCountBeforeReporting:", [v75 unsignedIntValue]);
  }

LABEL_146:
  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1709;
    v255 = 2112;
    v256 = @"DeadPeerDetectionReceiveIntervalTriggerReporting";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveIntervalTriggerReporting"))
  {
    v76 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionReceiveIntervalTriggerReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionReceiveIntervalTriggerReporting:](v2, "setDeadPeerDetectionReceiveIntervalTriggerReporting:", [v76 unsignedLongValue]);
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting") && !NEGetValueWithType(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1714;
    v255 = 2112;
    v256 = @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting"))
  {
    v77 = [v5 objectForKeyedSubscript:@"DeadPeerDetectionReceiveMaxShortDPDBeforeReporting"];
    -[NEIKEv2SessionConfiguration setDeadPeerDetectionReceiveMaxShortDPDBeforeReporting:](v2, "setDeadPeerDetectionReceiveMaxShortDPDBeforeReporting:", [v77 unsignedIntValue]);
  }

  if (CFDictionaryContainsKey(v5, @"IdleTimeoutEnabled") && !NEGetValueWithType(v5, @"IdleTimeoutEnabled", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1719;
    v255 = 2112;
    v256 = @"IdleTimeoutEnabled";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (!CFDictionaryContainsKey(v5, @"IdleTimeoutEnabled"))
  {
    goto LABEL_160;
  }

  v78 = [v5 objectForKeyedSubscript:@"IdleTimeoutEnabled"];
  -[NEIKEv2SessionConfiguration setIdleTimeoutEnabled:](v2, "setIdleTimeoutEnabled:", [v78 BOOLValue]);

  if (!NEGetValueWithType(v5, @"IdleTimeoutSeconds", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1722;
    v255 = 2112;
    v256 = @"IdleTimeoutSeconds";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: value for key %@ is missing or type != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IdleTimeoutSeconds"))
  {
    v79 = [v5 objectForKeyedSubscript:@"IdleTimeoutSeconds"];
    -[NEIKEv2SessionConfiguration setIdleTimeoutSeconds:](v2, "setIdleTimeoutSeconds:", [v79 unsignedLongValue]);
  }

LABEL_160:
  if (CFDictionaryContainsKey(v5, @"InitialContact") && !NEGetValueWithType(v5, @"InitialContact", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1728;
    v255 = 2112;
    v256 = @"InitialContact";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"InitialContact"))
  {
    v80 = [v5 objectForKeyedSubscript:@"InitialContact"];
    -[NEIKEv2SessionConfiguration setInitialContactDisabled:](v2, "setInitialContactDisabled:", [v80 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"MOBIKESupported") && !NEGetValueWithType(v5, @"MOBIKESupported", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1733;
    v255 = 2112;
    v256 = @"MOBIKESupported";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"MOBIKESupported"))
  {
    v81 = [v5 objectForKeyedSubscript:@"MOBIKESupported"];
    -[NEIKEv2SessionConfiguration setNegotiateMOBIKE:](v2, "setNegotiateMOBIKE:", [v81 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"CertificateRevocationCheckEnable") && !NEGetValueWithType(v5, @"CertificateRevocationCheckEnable", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1738;
    v255 = 2112;
    v256 = @"CertificateRevocationCheckEnable";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"CertificateRevocationCheckEnable"))
  {
    v82 = [v5 objectForKeyedSubscript:@"CertificateRevocationCheckEnable"];
    -[NEIKEv2SessionConfiguration setEnableCertificateRevocationCheck:](v2, "setEnableCertificateRevocationCheck:", [v82 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"CertificateStrictRevocationCheck") && !NEGetValueWithType(v5, @"CertificateStrictRevocationCheck", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1743;
    v255 = 2112;
    v256 = @"CertificateStrictRevocationCheck";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"CertificateStrictRevocationCheck"))
  {
    v83 = [v5 objectForKeyedSubscript:@"CertificateStrictRevocationCheck"];
    -[NEIKEv2SessionConfiguration setStrictCertificateRevocationCheck:](v2, "setStrictCertificateRevocationCheck:", [v83 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"ValidateRemoteCertificate") && !NEGetValueWithType(v5, @"ValidateRemoteCertificate", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1748;
    v255 = 2112;
    v256 = @"ValidateRemoteCertificate";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"ValidateRemoteCertificate"))
  {
    v84 = [v5 objectForKeyedSubscript:@"ValidateRemoteCertificate"];
    -[NEIKEv2SessionConfiguration setDisableRemoteCertificateValidation:](v2, "setDisableRemoteCertificateValidation:", [v84 BOOLValue] ^ 1);
  }

  if (CFDictionaryContainsKey(v5, @"BlackHoleDetectionEnabled") && !NEGetValueWithType(v5, @"BlackHoleDetectionEnabled", CFBOOLEAN_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1753;
    v255 = 2112;
    v256 = @"BlackHoleDetectionEnabled";
    v257 = 2048;
    v258 = CFBOOLEAN_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"BlackHoleDetectionEnabled"))
  {
    v85 = [v5 objectForKeyedSubscript:@"BlackHoleDetectionEnabled"];
    -[NEIKEv2SessionConfiguration setBlackholeDetectionEnabled:](v2, "setBlackholeDetectionEnabled:", [v85 BOOLValue]);
  }

  if (CFDictionaryContainsKey(v5, @"Username") && !NEGetValueWithType(v5, @"Username", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1758;
    v255 = 2112;
    v256 = @"Username";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"Username"))
  {
    v86 = [v5 objectForKeyedSubscript:@"Username"];
    [(NEIKEv2SessionConfiguration *)v2 setUsername:v86];
  }

  if (CFDictionaryContainsKey(v5, @"Password") && !NEGetValueWithType(v5, @"Password", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1763;
    v255 = 2112;
    v256 = @"Password";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"Password"))
  {
    v87 = [v5 objectForKeyedSubscript:@"Password"];
    [(NEIKEv2SessionConfiguration *)v2 setPassword:v87];
  }

  if (CFDictionaryContainsKey(v5, @"PasswordReference") && !NEGetValueWithType(v5, @"PasswordReference", CFDATA_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1768;
    v255 = 2112;
    v256 = @"PasswordReference";
    v257 = 2048;
    v258 = CFDATA_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"PasswordReference"))
  {
    v88 = [v5 objectForKeyedSubscript:@"PasswordReference"];
    [(NEIKEv2SessionConfiguration *)v2 setPasswordReference:v88];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateHostname") && !NEGetValueWithType(v5, @"RemoteCertificateHostname", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1773;
    v255 = 2112;
    v256 = @"RemoteCertificateHostname";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateHostname"))
  {
    v89 = [v5 objectForKeyedSubscript:@"RemoteCertificateHostname"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateHostname:v89];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityName") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityName", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1778;
    v255 = 2112;
    v256 = @"RemoteCertificateAuthorityName";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityName"))
  {
    v90 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityName"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityName:v90];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityReferences") && !NEGetValueWithType(v5, @"RemoteCertificateAuthorityReferences", CFARRAY_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1783;
    v255 = 2112;
    v256 = @"RemoteCertificateAuthorityReferences";
    v257 = 2048;
    v258 = CFARRAY_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteCertificateAuthorityReferences"))
  {
    v91 = [v5 objectForKeyedSubscript:@"RemoteCertificateAuthorityReferences"];
    [(NEIKEv2SessionConfiguration *)v2 setRemoteCertificateAuthorityReferences:v91];
  }

  if (CFDictionaryContainsKey(v5, @"IMEI") && !NEGetValueWithType(v5, @"IMEI", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1788;
    v255 = 2112;
    v256 = @"IMEI";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IMEI"))
  {
    v92 = [v5 objectForKeyedSubscript:@"IMEI"];
    [(NEIKEv2SessionConfiguration *)v2 setIMEI:v92];
  }

  if (CFDictionaryContainsKey(v5, @"IMEISV") && !NEGetValueWithType(v5, @"IMEISV", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1793;
    v255 = 2112;
    v256 = @"IMEISV";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"IMEISV"))
  {
    v93 = [v5 objectForKeyedSubscript:@"IMEISV"];
    [(NEIKEv2SessionConfiguration *)v2 setIMEISV:v93];
  }

  if (CFDictionaryContainsKey(v5, @"AuthenticationMethod") && !NEGetValueWithType(v5, @"AuthenticationMethod", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1798;
    v255 = 2112;
    v256 = @"AuthenticationMethod";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"AuthenticationMethod"))
  {
    v94 = [v5 objectForKeyedSubscript:@"AuthenticationMethod"];
    v95 = NEIPsecIKEGetAuthProcotol(v94);
    if (!v95)
    {
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v252 = "NEIPSecIKEValidateSessionDictionary";
        v253 = 1024;
        v254 = 1803;
        v255 = 2112;
        v256 = v94;
        goto LABEL_662;
      }

LABEL_660:

      goto LABEL_572;
    }

    v96 = v95;
    [(NEIKEv2SessionConfiguration *)v2 setAuthenticationProtocol:v95];
  }

  if (CFDictionaryContainsKey(v5, @"RemoteAuthenticationMethod") && !NEGetValueWithType(v5, @"RemoteAuthenticationMethod", CFSTRING_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1809;
    v255 = 2112;
    v256 = @"RemoteAuthenticationMethod";
    v257 = 2048;
    v258 = CFSTRING_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"RemoteAuthenticationMethod"))
  {
    v94 = [v5 objectForKeyedSubscript:@"RemoteAuthenticationMethod"];
    v97 = NEIPsecIKEGetAuthProcotol(v94);
    if (!v97)
    {
      v98 = ne_log_obj();
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v252 = "NEIPSecIKEValidateSessionDictionary";
        v253 = 1024;
        v254 = 1814;
        v255 = 2112;
        v256 = v94;
LABEL_662:
        _os_log_error_impl(&dword_1BA83C000, v98, OS_LOG_TYPE_ERROR, "%s:%d: %@ is not a recognized authentication method", buf, 0x1Cu);
        goto LABEL_660;
      }

      goto LABEL_660;
    }

    goto LABEL_309;
  }

  v102 = [(NEIKEv2SessionConfiguration *)v2 authenticationProtocol];

  if (v102)
  {
    v94 = [(NEIKEv2SessionConfiguration *)v2 authenticationProtocol];
    v97 = [v94 copy];
LABEL_309:
    v103 = v97;
    [(NEIKEv2SessionConfiguration *)v2 setRemoteAuthentication:v97];
  }

  if (CFDictionaryContainsKey(v5, @"PDUSessionID") && !NEGetValueWithType(v5, @"PDUSessionID", CFNUMBER_TYPE))
  {
    v94 = ne_log_obj();
    if (!os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_572;
    }

    *buf = 136315906;
    v252 = "NEIPSecIKEValidateSessionDictionary";
    v253 = 1024;
    v254 = 1822;
    v255 = 2112;
    v256 = @"PDUSessionID";
    v257 = 2048;
    v258 = CFNUMBER_TYPE;
    v99 = "%s:%d: type of value for key %@ != %lu";
    goto LABEL_571;
  }

  if (CFDictionaryContainsKey(v5, @"PDUSessionID"))
  {
    v104 = [v5 objectForKeyedSubscript:@"PDUSessionID"];
    [(NEIKEv2SessionConfiguration *)v2 setPduSessionID:v104];
  }

  if (!CFDictionaryContainsKey(v5, @"ConfigurationRequest"))
  {
    goto LABEL_431;
  }

  v105 = [v5 objectForKeyedSubscript:@"ConfigurationRequest"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_431;
  }

  newValue = objc_alloc_init(MEMORY[0x1E695DF70]);
  v107 = [v5 objectForKeyedSubscript:@"ConfigurationRequest"];
  objc_opt_class();
  obj = v107;
  if (objc_opt_isKindOfClass())
  {
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v108 = v107;
    v109 = [v108 countByEnumeratingWithState:&v241 objects:v250 count:16];
    if (!v109)
    {
      goto LABEL_427;
    }

    v110 = v109;
    v111 = *v242;
    while (1)
    {
      v112 = 0;
      do
      {
        if (*v242 != v111)
        {
          objc_enumerationMutation(v108);
        }

        v113 = *(*(&v241 + 1) + 8 * v112);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v114 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A40;
          if (v114)
          {
            goto LABEL_336;
          }

          v116 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A50;
          if (v116)
          {
            goto LABEL_336;
          }

          v117 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A48;
          if (v117)
          {
            goto LABEL_336;
          }

          v118 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A58;
          if (v118)
          {
            goto LABEL_336;
          }

          v119 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A68;
          if (v119)
          {
            goto LABEL_336;
          }

          v120 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A70;
          if (v120)
          {
            goto LABEL_336;
          }

          v121 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A80;
          if (v121)
          {
            goto LABEL_336;
          }

          v122 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A78;
          if (v122)
          {
            goto LABEL_336;
          }

          v123 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A90;
          if (v123)
          {
            goto LABEL_336;
          }

          v124 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F048F0;
          if (v124)
          {
            goto LABEL_336;
          }

          if (objc_msgSend_isEqualToString_(v113) & 1) != 0 || (objc_msgSend_isEqualToString_(v113))
          {
            v115 = off_1E7F04A88;
LABEL_336:
            v125 = [objc_alloc(*v115) initEmptyRequest];
            [newValue addObject:v125];

            goto LABEL_337;
          }

          v126 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04A60;
          if (v126)
          {
            goto LABEL_336;
          }

          v127 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04978;
          if (v127)
          {
            goto LABEL_336;
          }

          v128 = objc_msgSend_isEqualToString_(v113);
          v115 = off_1E7F04BF8;
          if (v128)
          {
            goto LABEL_336;
          }
        }

LABEL_337:
        ++v112;
      }

      while (v110 != v112);
      v129 = [v108 countByEnumeratingWithState:&v241 objects:v250 count:16];
      v110 = v129;
      if (!v129)
      {
        goto LABEL_427;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_428;
  }

  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  v130 = v107;
  v131 = [v130 countByEnumeratingWithState:&v237 objects:v249 count:16];
  if (!v131)
  {
    goto LABEL_427;
  }

  v132 = v131;
  v219 = *v238;
  do
  {
    v133 = 0;
    do
    {
      if (*v238 != v219)
      {
        objc_enumerationMutation(v130);
      }

      v134 = *(*(&v237 + 1) + 8 * v133);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v135 = [v130 objectForKeyedSubscript:v134];
        if (objc_msgSend_isEqualToString_(v134))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v135 length])
          {
            v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
            v137 = NEIKEv2IPv4AddressAttribute;
            goto LABEL_374;
          }

          v138 = NEIKEv2IPv4AddressAttribute;
LABEL_393:
          v140 = [[v138 alloc] initEmptyRequest];
LABEL_394:
          v136 = v140;
          [newValue addObject:v140];
LABEL_395:

LABEL_396:
          goto LABEL_397;
        }

        if (objc_msgSend_isEqualToString_(v134))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
          {
            v138 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_393;
          }

          v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
          v137 = NEIKEv2IPv4DNSAttribute;
        }

        else if (objc_msgSend_isEqualToString_(v134))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
          {
            v138 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_393;
          }

          v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
          v137 = NEIKEv2IPv4DHCPAttribute;
        }

        else if (objc_msgSend_isEqualToString_(v134))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
          {
            v138 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_393;
          }

          v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
          v137 = NEIKEv2IPv4NetmaskAttribute;
        }

        else
        {
          if (objc_msgSend_isEqualToString_(v134))
          {
            v138 = NEIKEv2IPv4SubnetAttribute;
            goto LABEL_393;
          }

          if (objc_msgSend_isEqualToString_(v134))
          {
            v138 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_393;
          }

          if (objc_msgSend_isEqualToString_(v134))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
            {
              v138 = NEIKEv2IPv6DNSAttribute;
              goto LABEL_393;
            }

            v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
            v137 = NEIKEv2IPv6DNSAttribute;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(v134))
            {
              if (objc_msgSend_isEqualToString_(v134))
              {
                v138 = NEIKEv2IPv6SubnetAttribute;
                goto LABEL_393;
              }

              if (objc_msgSend_isEqualToString_(v134))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
                {
                  v138 = NEIKEv2AppVersionAttribute;
                  goto LABEL_393;
                }

                v141 = NEIKEv2AppVersionAttribute;
              }

              else
              {
                if ((objc_msgSend_isEqualToString_(v134) & 1) != 0 || objc_msgSend_isEqualToString_(v134))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
                  {
                    v138 = NEIKEv2IPv6PCSCFAttribute;
                    goto LABEL_393;
                  }

                  v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
                  v137 = NEIKEv2IPv6PCSCFAttribute;
                  goto LABEL_374;
                }

                if (objc_msgSend_isEqualToString_(v134))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
                  {
                    v138 = NEIKEv2IPv4PCSCFAttribute;
                    goto LABEL_393;
                  }

                  v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
                  v137 = NEIKEv2IPv4PCSCFAttribute;
                  goto LABEL_374;
                }

                if (objc_msgSend_isEqualToString_(v134))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
                  {
                    v138 = NEIKEv2DNSDomainAttribute;
                    goto LABEL_393;
                  }

                  v141 = NEIKEv2DNSDomainAttribute;
                }

                else
                {
                  if (!objc_msgSend_isEqualToString_(v134))
                  {
                    goto LABEL_396;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
                  {
                    v138 = NEIKEv2SupportedAttribute;
                    goto LABEL_393;
                  }

                  v141 = NEIKEv2SupportedAttribute;
                }
              }

              v140 = [[v141 alloc] initWithStringValue:v135];
              goto LABEL_394;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v135 length])
            {
              v138 = NEIKEv2IPv6DHCPAttribute;
              goto LABEL_393;
            }

            v136 = [MEMORY[0x1E6977E08] endpointWithHostname:v135 port:@"0"];
            v137 = NEIKEv2IPv6DHCPAttribute;
          }
        }

LABEL_374:
        v139 = [[v137 alloc] initWithAddress:v136];
        [newValue addObject:v139];

        goto LABEL_395;
      }

LABEL_397:
      ++v133;
    }

    while (v132 != v133);
    v142 = [v130 countByEnumeratingWithState:&v237 objects:v249 count:16];
    v132 = v142;
  }

  while (v142);
LABEL_427:

LABEL_428:
  v143 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v145 = v143;
  if (v143)
  {
    v143->_configurationType = 1;
    objc_setProperty_atomic(v143, v144, newValue, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationRequest:v145];

LABEL_431:
  if (CFDictionaryContainsKey(v5, @"ConfigurationAttributeRequest") && !NEGetValueWithType(v5, @"ConfigurationAttributeRequest", CFARRAY_TYPE))
  {
    v94 = ne_log_obj();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v252 = "NEIPSecIKEValidateSessionDictionary";
      v253 = 1024;
      v254 = 1963;
      v255 = 2112;
      v256 = @"ConfigurationAttributeRequest";
      v257 = 2048;
      v258 = CFARRAY_TYPE;
      v99 = "%s:%d: type of value for key %@ != %lu";
      goto LABEL_571;
    }

LABEL_572:

    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v5, @"ConfigurationAttributeRequest"))
  {
    goto LABEL_538;
  }

  v216 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v5 objectForKeyedSubscript:@"ConfigurationAttributeRequest"];
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  obja = v236 = 0u;
  newValuea = [obja countByEnumeratingWithState:&v233 objects:v248 count:16];
  if (!newValuea)
  {
    goto LABEL_535;
  }

  v220 = *v234;
  while (2)
  {
    v146 = 0;
    while (2)
    {
      if (*v234 != v220)
      {
        objc_enumerationMutation(obja);
      }

      v147 = *(*(&v233 + 1) + 8 * v146);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_483;
      }

      v148 = [v147 objectForKeyedSubscript:@"Name"];
      v149 = [v147 objectForKeyedSubscript:@"Identifier"];
      v150 = [v147 objectForKeyedSubscript:@"Type"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv4AddressAttribute;
LABEL_461:
            v156 = [[v154 alloc] initWithAddress:v153];
            goto LABEL_462;
          }

          v155 = NEIKEv2IPv4AddressAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv4DNSAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv4DHCPAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv4NetmaskAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          v153 = [v147 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v157 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
              v213 = [NEIKEv2IPv4SubnetAttribute alloc];
              v158 = NEGetPrefixForIPv4NetmaskString(v153);
LABEL_490:
              v215 = [(NEIKEv2SubnetAttribute *)v213 initWithAddress:v157 prefix:v158];
              [v216 addObject:v215];

              goto LABEL_463;
            }
          }

          v161 = NEIKEv2IPv4SubnetAttribute;
LABEL_501:
          v156 = [[v161 alloc] initEmptyRequest];
          goto LABEL_462;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          v153 = [v147 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v161 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_501;
          }

          v157 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
          v160 = NEIKEv2IPv6AddressAttribute;
LABEL_489:
          v213 = [v160 alloc];
          v158 = NEGetPrefixForIPv6NetmaskString(v153);
          goto LABEL_490;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv6DNSAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv6DNSAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv6DHCPAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv6DHCPAttribute;
          goto LABEL_478;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          v153 = [v147 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v161 = NEIKEv2IPv6SubnetAttribute;
            goto LABEL_501;
          }

          v157 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
          v160 = NEIKEv2IPv6SubnetAttribute;
          goto LABEL_489;
        }

        if (objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"String"];
          objc_opt_class();
          v165 = objc_opt_isKindOfClass();
          v166 = NEIKEv2AppVersionAttribute;
          goto LABEL_518;
        }

        if ((objc_msgSend_isEqualToString_(v148) & 1) != 0 || objc_msgSend_isEqualToString_(v148))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv6PCSCFAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv6PCSCFAttribute;
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(v148))
          {
            if (objc_msgSend_isEqualToString_(v148))
            {
              v151 = [v147 objectForKeyedSubscript:@"String"];
              objc_opt_class();
              v165 = objc_opt_isKindOfClass();
              v166 = NEIKEv2DNSDomainAttribute;
            }

            else
            {
              if (!objc_msgSend_isEqualToString_(v148))
              {
                goto LABEL_482;
              }

              v151 = [v147 objectForKeyedSubscript:@"String"];
              objc_opt_class();
              v165 = objc_opt_isKindOfClass();
              v166 = NEIKEv2SupportedAttribute;
            }

LABEL_518:
            v159 = [v166 alloc];
            if (v165)
            {
              v152 = [v159 initWithStringValue:v151];
              goto LABEL_480;
            }

LABEL_479:
            v152 = [v159 initEmptyRequest];
LABEL_480:
            v153 = v152;
            [v216 addObject:v152];
            goto LABEL_481;
          }

          v151 = [v147 objectForKeyedSubscript:@"Address"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
            v154 = NEIKEv2IPv4PCSCFAttribute;
            goto LABEL_461;
          }

          v155 = NEIKEv2IPv4PCSCFAttribute;
        }

LABEL_478:
        v159 = [v155 alloc];
        goto LABEL_479;
      }

      if (objc_msgSend_isEqualToString_(v150))
      {
        v151 = [v147 objectForKeyedSubscript:@"String"];
        v152 = -[NEIKEv2StringAttribute initCustomWithAttributeType:attributeName:stringValue:]([NEIKEv2StringAttribute alloc], "initCustomWithAttributeType:attributeName:stringValue:", [v149 integerValue], v148, v151);
        goto LABEL_480;
      }

      if (objc_msgSend_isEqualToString_(v150))
      {
        v151 = [v147 objectForKeyedSubscript:@"Address"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
        }

        else
        {
          v153 = 0;
        }

        v156 = -[NEIKEv2AddressAttribute initCustomWithAttributeType:attributeName:addressValue:]([NEIKEv2IPv4AddressAttribute alloc], "initCustomWithAttributeType:attributeName:addressValue:", [v149 integerValue], v148, v153);
        goto LABEL_462;
      }

      if (!objc_msgSend_isEqualToString_(v150))
      {
        if (objc_msgSend_isEqualToString_(v150))
        {
          v151 = [v147 objectForKeyedSubscript:@"Address"];
          v153 = [v147 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v214 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
          }

          else
          {
            v214 = 0;
          }

          v212 = [NEIKEv2IPv4SubnetAttribute alloc];
          v162 = [v149 integerValue];
          v163 = NEGetPrefixForIPv4NetmaskString(v153);
        }

        else
        {
          if (!objc_msgSend_isEqualToString_(v150))
          {
            goto LABEL_482;
          }

          v151 = [v147 objectForKeyedSubscript:@"Address"];
          v153 = [v147 objectForKeyedSubscript:@"Netmask"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v214 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
          }

          else
          {
            v214 = 0;
          }

          v212 = [NEIKEv2IPv6SubnetAttribute alloc];
          v162 = [v149 integerValue];
          v163 = NEGetPrefixForIPv6NetmaskString(v153);
        }

        v164 = [(NEIKEv2SubnetAttribute *)v212 initCustomWithAttributeType:v162 attributeName:v148 addressValue:v214 prefix:v163];
        [v216 addObject:v164];

        goto LABEL_481;
      }

      v151 = [v147 objectForKeyedSubscript:@"Address"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v153 = [MEMORY[0x1E6977E08] endpointWithHostname:v151 port:@"0"];
      }

      else
      {
        v153 = 0;
      }

      v156 = -[NEIKEv2SubnetAttribute initCustomWithAttributeType:attributeName:addressValue:prefix:]([NEIKEv2IPv6AddressAttribute alloc], "initCustomWithAttributeType:attributeName:addressValue:prefix:", [v149 integerValue], v148, v153, 0);
LABEL_462:
      v157 = v156;
      [v216 addObject:v156];
LABEL_463:

LABEL_481:
LABEL_482:

LABEL_483:
      if (newValuea != ++v146)
      {
        continue;
      }

      break;
    }

    v167 = [obja countByEnumeratingWithState:&v233 objects:v248 count:16];
    newValuea = v167;
    if (v167)
    {
      continue;
    }

    break;
  }

LABEL_535:

  v168 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v170 = v168;
  if (v168)
  {
    v168->_configurationType = 1;
    objc_setProperty_atomic(v168, v169, v216, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationRequest:v170];

LABEL_538:
  if (!CFDictionaryContainsKey(v5, @"ConfigurationReply"))
  {
    goto LABEL_658;
  }

  v171 = [v5 objectForKeyedSubscript:@"ConfigurationReply"];
  objc_opt_class();
  v172 = objc_opt_isKindOfClass();

  if ((v172 & 1) == 0)
  {
    goto LABEL_658;
  }

  newValueb = objc_alloc_init(MEMORY[0x1E695DF70]);
  v173 = [v5 objectForKeyedSubscript:@"ConfigurationReply"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v174 = v173;
    v175 = [v174 countByEnumeratingWithState:&v229 objects:v247 count:16];
    if (!v175)
    {
      goto LABEL_654;
    }

    v176 = v175;
    v177 = *v230;
    while (1)
    {
      v178 = 0;
      do
      {
        if (*v230 != v177)
        {
          objc_enumerationMutation(v174);
        }

        v179 = *(*(&v229 + 1) + 8 * v178);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v180 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A40;
          if (v180)
          {
            goto LABEL_560;
          }

          v182 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A50;
          if (v182)
          {
            goto LABEL_560;
          }

          v183 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A48;
          if (v183)
          {
            goto LABEL_560;
          }

          v184 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A58;
          if (v184)
          {
            goto LABEL_560;
          }

          v185 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A68;
          if (v185)
          {
            goto LABEL_560;
          }

          v186 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A70;
          if (v186)
          {
            goto LABEL_560;
          }

          v187 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A80;
          if (v187)
          {
            goto LABEL_560;
          }

          v188 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A78;
          if (v188)
          {
            goto LABEL_560;
          }

          v189 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A90;
          if (v189)
          {
            goto LABEL_560;
          }

          v190 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F048F0;
          if (v190)
          {
            goto LABEL_560;
          }

          if (objc_msgSend_isEqualToString_(v179) & 1) != 0 || (objc_msgSend_isEqualToString_(v179))
          {
            v181 = off_1E7F04A88;
LABEL_560:
            v191 = [objc_alloc(*v181) initEmptyRequest];
            [newValueb addObject:v191];

            goto LABEL_561;
          }

          v192 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04A60;
          if (v192)
          {
            goto LABEL_560;
          }

          v193 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04978;
          if (v193)
          {
            goto LABEL_560;
          }

          v194 = objc_msgSend_isEqualToString_(v179);
          v181 = off_1E7F04BF8;
          if (v194)
          {
            goto LABEL_560;
          }
        }

LABEL_561:
        ++v178;
      }

      while (v176 != v178);
      v195 = [v174 countByEnumeratingWithState:&v229 objects:v247 count:16];
      v176 = v195;
      if (!v195)
      {
        goto LABEL_654;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_655;
  }

  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v196 = v173;
  v197 = [v196 countByEnumeratingWithState:&v225 objects:v246 count:16];
  if (!v197)
  {
    goto LABEL_654;
  }

  v198 = v197;
  v221 = *v226;
  while (2)
  {
    v199 = 0;
    while (2)
    {
      if (*v226 != v221)
      {
        objc_enumerationMutation(v196);
      }

      v200 = *(*(&v225 + 1) + 8 * v199);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_636;
      }

      v201 = [v196 objectForKeyedSubscript:v200];
      if (!objc_msgSend_isEqualToString_(v200))
      {
        if (objc_msgSend_isEqualToString_(v200))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
          {
            v204 = NEIKEv2IPv4DNSAttribute;
            goto LABEL_632;
          }

          v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
          v203 = NEIKEv2IPv4DNSAttribute;
        }

        else if (objc_msgSend_isEqualToString_(v200))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
          {
            v204 = NEIKEv2IPv4DHCPAttribute;
            goto LABEL_632;
          }

          v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
          v203 = NEIKEv2IPv4DHCPAttribute;
        }

        else if (objc_msgSend_isEqualToString_(v200))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
          {
            v204 = NEIKEv2IPv4NetmaskAttribute;
            goto LABEL_632;
          }

          v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
          v203 = NEIKEv2IPv4NetmaskAttribute;
        }

        else
        {
          if (objc_msgSend_isEqualToString_(v200))
          {
            v204 = NEIKEv2IPv4SubnetAttribute;
            goto LABEL_632;
          }

          if (objc_msgSend_isEqualToString_(v200))
          {
            v204 = NEIKEv2IPv6AddressAttribute;
            goto LABEL_632;
          }

          if (objc_msgSend_isEqualToString_(v200))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
            {
              v204 = NEIKEv2IPv6DNSAttribute;
              goto LABEL_632;
            }

            v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
            v203 = NEIKEv2IPv6DNSAttribute;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(v200))
            {
              if (objc_msgSend_isEqualToString_(v200))
              {
                v204 = NEIKEv2IPv6SubnetAttribute;
                goto LABEL_632;
              }

              if (objc_msgSend_isEqualToString_(v200))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
                {
                  v204 = NEIKEv2AppVersionAttribute;
                  goto LABEL_632;
                }

                v206 = NEIKEv2AppVersionAttribute;
              }

              else
              {
                if ((objc_msgSend_isEqualToString_(v200) & 1) != 0 || objc_msgSend_isEqualToString_(v200))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
                  {
                    v204 = NEIKEv2IPv6PCSCFAttribute;
                    goto LABEL_632;
                  }

                  v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
                  v203 = NEIKEv2IPv6PCSCFAttribute;
                  goto LABEL_601;
                }

                if (objc_msgSend_isEqualToString_(v200))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
                  {
                    v204 = NEIKEv2IPv4PCSCFAttribute;
                    goto LABEL_632;
                  }

                  v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
                  v203 = NEIKEv2IPv4PCSCFAttribute;
                  goto LABEL_601;
                }

                if (objc_msgSend_isEqualToString_(v200))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
                  {
                    v204 = NEIKEv2DNSDomainAttribute;
                    goto LABEL_632;
                  }

                  v206 = NEIKEv2DNSDomainAttribute;
                }

                else
                {
                  if (!objc_msgSend_isEqualToString_(v200))
                  {
                    goto LABEL_635;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
                  {
                    v204 = NEIKEv2SupportedAttribute;
                    goto LABEL_632;
                  }

                  v206 = NEIKEv2SupportedAttribute;
                }
              }

              v207 = [[v206 alloc] initWithStringValue:v201];
              goto LABEL_633;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![v201 length])
            {
              v204 = NEIKEv2IPv6DHCPAttribute;
              goto LABEL_632;
            }

            v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
            v203 = NEIKEv2IPv6DHCPAttribute;
          }
        }

LABEL_601:
        v205 = [[v203 alloc] initWithAddress:v202];
        [newValueb addObject:v205];

        goto LABEL_634;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v201 length])
      {
        v202 = [MEMORY[0x1E6977E08] endpointWithHostname:v201 port:@"0"];
        v203 = NEIKEv2IPv4AddressAttribute;
        goto LABEL_601;
      }

      v204 = NEIKEv2IPv4AddressAttribute;
LABEL_632:
      v207 = [[v204 alloc] initEmptyRequest];
LABEL_633:
      v202 = v207;
      [newValueb addObject:v207];
LABEL_634:

LABEL_635:
LABEL_636:
      if (v198 != ++v199)
      {
        continue;
      }

      break;
    }

    v208 = [v196 countByEnumeratingWithState:&v225 objects:v246 count:16];
    v198 = v208;
    if (v208)
    {
      continue;
    }

    break;
  }

LABEL_654:

LABEL_655:
  v209 = objc_alloc_init(NEIKEv2ConfigurationMessage);
  v211 = v209;
  if (v209)
  {
    v209->_configurationType = 2;
    objc_setProperty_atomic(v209, v210, newValueb, 16);
  }

  [(NEIKEv2SessionConfiguration *)v2 setConfigurationReply:v211];

LABEL_658:
  v12 = v2;
LABEL_574:

LABEL_575:
LABEL_15:

  return v12;
}

id NEIPSecIKECopyDefaultSessionQueue()
{
  if (NEIPSecIKECopyDefaultSessionQueue_onceToken != -1)
  {
    dispatch_once(&NEIPSecIKECopyDefaultSessionQueue_onceToken, &__block_literal_global_746);
  }

  v1 = NEIPSecIKECopyDefaultSessionQueue_queue;

  return v1;
}

uint64_t __NEIPSecIKECreateSessionWithInterfaceAndSASession_block_invoke_339(void *a1)
{
  v2 = [NEIKEv2Session alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = NEIPSecIKECopyDefaultSessionQueue();
  v7 = [(NEIKEv2Session *)v2 initWithIKEConfig:v3 firstChildConfig:v4 sessionConfig:v5 queue:v6 ipsecInterface:a1[10] ikeSocketHandler:a1[8] saSession:a1[7] packetDelegate:0];
  v8 = *(a1[9] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(a1[9] + 8) + 40) setClientCallback:a1[11]];
  v10 = a1[12];
  v11 = *(*(a1[9] + 8) + 40);

  return [v11 setClientCallbackInfo:v10];
}

void __NEIPSecIKECopyDefaultSessionQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("IKEv2 Session Queue", v2);
  v1 = NEIPSecIKECopyDefaultSessionQueue_queue;
  NEIPSecIKECopyDefaultSessionQueue_queue = v0;
}

uint64_t NEIPsecIKECopyKEMProtocolsFromObject(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v1 unsignedIntValue]);
    v18[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_17;
    }

    v4 = v1;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = v4;
    v6 = [(NEIKEv2KEMProtocol *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v2);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = -[NEIKEv2KEMProtocol initWithMethod:]([NEIKEv2KEMProtocol alloc], "initWithMethod:", [v10 unsignedIntValue]);
            [v5 addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NEIKEv2KEMProtocol *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5];
    }

    else
    {

      v3 = 0;
    }
  }

LABEL_17:
  return v3;
}

NEIKEv2PRFProtocol *NEIPsecIKEGetPRFProtocol(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 6;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v1))
    {
      v3 = 0;
      goto LABEL_12;
    }

    v2 = 7;
  }

  v3 = [[NEIKEv2PRFProtocol alloc] initWithType:v2];
LABEL_12:

  return v3;
}

NEIKEv2IntegrityProtocol *NEIPsecIKEGetIntegrityProtocol(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 6;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 7;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 12;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v2 = 13;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v1))
    {
      v3 = 0;
      goto LABEL_16;
    }

    v2 = 14;
  }

  v3 = [[NEIKEv2IntegrityProtocol alloc] initWithType:v2];
LABEL_16:

  return v3;
}

NEIKEv2EncryptionProtocol *NEIPsecIKEGetEncryptionProtocol(void *a1, int a2)
{
  v3 = a1;
  if (!objc_msgSend_isEqualToString_(v3))
  {
    if (objc_msgSend_isEqualToString_(v3))
    {
      v4 = [NEIKEv2EncryptionProtocol alloc];
      v5 = 3;
      goto LABEL_5;
    }

    if (objc_msgSend_isEqualToString_(v3))
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 2;
    }

    else if (objc_msgSend_isEqualToString_(v3))
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 3;
    }

    else if (objc_msgSend_isEqualToString_(v3))
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 4;
    }

    else if (objc_msgSend_isEqualToString_(v3))
    {
      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 5;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(v3))
      {
        if (a2)
        {
          if (objc_msgSend_isEqualToString_(v3))
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 7;
            goto LABEL_16;
          }

          if (objc_msgSend_isEqualToString_(v3))
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 8;
            goto LABEL_16;
          }

          if (objc_msgSend_isEqualToString_(v3))
          {
            v7 = [NEIKEv2EncryptionProtocol alloc];
            v8 = 9;
            goto LABEL_16;
          }
        }

        v9 = 0;
        goto LABEL_18;
      }

      v7 = [NEIKEv2EncryptionProtocol alloc];
      v8 = 6;
    }

LABEL_16:
    v6 = [(NEIKEv2EncryptionProtocol *)v7 initWithEncryptionType:v8];
    goto LABEL_17;
  }

  v4 = [NEIKEv2EncryptionProtocol alloc];
  v5 = 2;
LABEL_5:
  v6 = [(NEIKEv2EncryptionProtocol *)v4 initWithEncryptionWireType:v5 keyLength:0];
LABEL_17:
  v9 = v6;
LABEL_18:

  return v9;
}

void __xpc_client_queue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.SecureNetworking.IPSec.xpc", v2);
  v1 = xpc_client_queue_q;
  xpc_client_queue_q = v0;
}

uint64_t NEIPSecIKESetDispatchQueue(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  [v4 setClientQueue:v3];
  objc_initWeak(&location, v4);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __NEIPSecIKESetDispatchQueue_block_invoke;
  v18[3] = &unk_1E7F09330;
  objc_copyWeak(&v19, &location);
  [v4 setStateUpdateBlock:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __NEIPSecIKESetDispatchQueue_block_invoke_196;
  v16[3] = &unk_1E7F09358;
  objc_copyWeak(&v17, &location);
  [v4 setChildStateUpdateBlock:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __NEIPSecIKESetDispatchQueue_block_invoke_198;
  v14[3] = &unk_1E7F09380;
  objc_copyWeak(&v15, &location);
  [v4 setConfigurationUpdateBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __NEIPSecIKESetDispatchQueue_block_invoke_223;
  v12[3] = &unk_1E7F093A8;
  objc_copyWeak(&v13, &location);
  [v4 setTrafficSelectorUpdateBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __NEIPSecIKESetDispatchQueue_block_invoke_255;
  v10[3] = &unk_1E7F0AA58;
  objc_copyWeak(&v11, &location);
  [v4 setShortDPDEventBlock:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __NEIPSecIKESetDispatchQueue_block_invoke_257;
  v8[3] = &unk_1E7F093D0;
  objc_copyWeak(&v9, &location);
  [v4 setRedirectEventBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __NEIPSecIKESetDispatchQueue_block_invoke_276;
  v6[3] = &unk_1E7F0ABE0;
  objc_copyWeak(&v7, &location);
  [v4 setPrivateNotifyStatusEvent:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return 1;
}

void sub_1BA99A95C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void __NEIPSecIKESetDispatchQueue_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained clientCallback])
  {
    goto LABEL_18;
  }

  if ((a2 - 1) > 3)
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = dword_1BAA4E630[a2 - 1];
    if (v5)
    {
LABEL_4:
      v8 = 70001;
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = [v5 domain];
      v11 = [v10 isEqual:@"NEIKEv2ErrorDomain"];

      if (v11)
      {
        v12 = [v5 code];
        if ((v12 - 2) < 0xD)
        {
          v8 = dword_1BAA4F978[v12 - 2];
        }
      }

      else
      {
        v13 = [v5 domain];
        v14 = [v13 isEqual:@"NEIKEv2ProtocolErrorDomain"];

        if (v14)
        {
          if ([v5 code] < 0x2000 || objc_msgSend(v5, "code") >= 0x4000 || objc_msgSend(WeakRetained, "peerAuthenticated"))
          {
            v8 = [v5 code];
          }

          else
          {
            v8 = 70039;
          }
        }
      }

      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
      [v9 setObject:v15 forKeyedSubscript:@"NotifyCode"];

      goto LABEL_15;
    }
  }

  v9 = 0;
LABEL_15:
  v16 = ne_log_obj();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67109378;
    v17[1] = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "Updating IKE status %u, %@", v17, 0x12u);
  }

  ([WeakRetained clientCallback])(WeakRetained, 0, v7 | 0x1100u, v9, objc_msgSend(WeakRetained, "clientCallbackInfo"));
LABEL_18:
}

void __NEIPSecIKESetDispatchQueue_block_invoke_196(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained clientCallback])
  {
    goto LABEL_15;
  }

  if ((a3 - 1) > 3)
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = dword_1BAA4E630[a3 - 1];
    if (v7)
    {
LABEL_4:
      v10 = 70001;
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = [v7 domain];
      v13 = [v12 isEqual:@"NEIKEv2ErrorDomain"];

      if (v13)
      {
        v14 = [v7 code];
        if ((v14 - 2) < 0xD)
        {
          v10 = dword_1BAA4F978[v14 - 2];
        }
      }

      else
      {
        v15 = [v7 domain];
        v16 = [v15 isEqual:@"NEIKEv2ProtocolErrorDomain"];

        if (v16)
        {
          v10 = [v7 code];
        }
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
      [v11 setObject:v17 forKeyedSubscript:@"NotifyCode"];

      goto LABEL_12;
    }
  }

  v11 = 0;
LABEL_12:
  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19[0] = 67109634;
    v19[1] = a2;
    v20 = 1024;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "Updating Child %u status %u, %@", v19, 0x18u);
  }

  ([WeakRetained clientCallback])(WeakRetained, a2, v9 | 0x1100u, v11, objc_msgSend(WeakRetained, "clientCallbackInfo"));
LABEL_15:
}

void __NEIPSecIKESetDispatchQueue_block_invoke_198(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained clientCallback])
  {
    goto LABEL_30;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = WeakRetained;
  v26 = v3;
  if (v3)
  {
    Property = objc_getProperty(v3, v5, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v28;
  do
  {
    v12 = 0;
    do
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * v12);
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v15 = [v13 attributeName];
      [v14 setObject:v15 forKeyedSubscript:@"Name"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
LABEL_11:
        v16 = [v13 address];
        v17 = [v16 hostname];
        v18 = v14;
        v19 = v17;
        v20 = @"Address";
LABEL_12:
        [v18 setObject:v19 forKeyedSubscript:v20];

LABEL_13:
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
LABEL_17:
        v21 = [v13 address];
        v22 = [v21 hostname];
        [v14 setObject:v22 forKeyedSubscript:@"Address"];

        v16 = [v13 subnetMaskAddress];
        v17 = [v16 hostname];
        v18 = v14;
        v19 = v17;
        v20 = @"Netmask";
        goto LABEL_12;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_11;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v13 stringValue];
        [v14 setObject:v16 forKeyedSubscript:@"String"];
        goto LABEL_13;
      }

LABEL_14:
      [v6 addObject:{v14, v25}];

      ++v12;
    }

    while (v10 != v12);
    v23 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    v10 = v23;
  }

  while (v23);
LABEL_27:

  v24 = ne_log_obj();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_debug_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_DEBUG, "Updating configuration with %@", buf, 0xCu);
  }

  WeakRetained = v25;
  ([v25 clientCallback])(v25, 0, 4608, v6, objc_msgSend(v25, "clientCallbackInfo"));

  v3 = v26;
LABEL_30:
}

void __NEIPSecIKESetDispatchQueue_block_invoke_223(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained clientCallback])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = v8;
    v48 = v7;
    v46 = v10;
    if (v7)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      obj = v7;
      v12 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v56;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v56 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v55 + 1) + 8 * i);
            v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v18 = [(NEIKEv2TrafficSelector *)v16 type];
            v19 = @"IPv4";
            if (v18 == 7 || (v20 = [(NEIKEv2TrafficSelector *)v16 type], v19 = @"IPv6", v20 == 8))
            {
              [v17 setObject:v19 forKeyedSubscript:{@"TSType", v46}];
            }

            v21 = [v16 startAddress];
            v22 = [v21 hostname];
            [v17 setObject:v22 forKeyedSubscript:@"TSStartAddress"];

            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v16, "startPort")}];
            [v17 setObject:v23 forKeyedSubscript:@"TSStartPort"];

            v24 = [v16 endAddress];
            v25 = [v24 hostname];
            [v17 setObject:v25 forKeyedSubscript:@"TSEndAddress"];

            v26 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v16, "endPort")}];
            [v17 setObject:v26 forKeyedSubscript:@"TSEndPort"];

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v16, "ipProtocol")}];
            [v17 setObject:v27 forKeyedSubscript:@"TSProtocol"];

            [v11 addObject:v17];
          }

          v13 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
        }

        while (v13);
      }

      v10 = v46;
      [v46 setObject:v11 forKeyedSubscript:@"TrafficSelectorsLocal"];

      v8 = v47;
      v7 = v48;
      a2 = a2;
    }

    if (v8)
    {
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obja = v8;
      v29 = [obja countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v52;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v52 != v31)
            {
              objc_enumerationMutation(obja);
            }

            v33 = *(*(&v51 + 1) + 8 * j);
            v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v35 = [(NEIKEv2TrafficSelector *)v33 type];
            v36 = @"IPv4";
            if (v35 == 7 || (v37 = [(NEIKEv2TrafficSelector *)v33 type], v36 = @"IPv6", v37 == 8))
            {
              [v34 setObject:v36 forKeyedSubscript:{@"TSType", v46}];
            }

            v38 = [v33 startAddress];
            v39 = [v38 hostname];
            [v34 setObject:v39 forKeyedSubscript:@"TSStartAddress"];

            v40 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v33, "startPort")}];
            [v34 setObject:v40 forKeyedSubscript:@"TSStartPort"];

            v41 = [v33 endAddress];
            v42 = [v41 hostname];
            [v34 setObject:v42 forKeyedSubscript:@"TSEndAddress"];

            v43 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v33, "endPort")}];
            [v34 setObject:v43 forKeyedSubscript:@"TSEndPort"];

            v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v33, "ipProtocol")}];
            [v34 setObject:v44 forKeyedSubscript:@"TSProtocol"];

            [v28 addObject:v34];
          }

          v30 = [obja countByEnumeratingWithState:&v51 objects:v61 count:16];
        }

        while (v30);
      }

      v10 = v46;
      [v46 setObject:v28 forKeyedSubscript:@"TrafficSelectorsRemote"];

      v8 = v47;
      v7 = v48;
      a2 = a2;
    }

    v45 = ne_log_obj();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v60 = v10;
      _os_log_debug_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_DEBUG, "Updating traffic selectors with %@", buf, 0xCu);
    }

    ([WeakRetained clientCallback])(WeakRetained, a2, 4608, v10, objc_msgSend(WeakRetained, "clientCallbackInfo"));
  }
}

void __NEIPSecIKESetDispatchQueue_block_invoke_255(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained clientCallback])
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Firing short DPD event", v3, 2u);
    }

    ([WeakRetained clientCallback])(WeakRetained, 0, 5888, 0, objc_msgSend(WeakRetained, "clientCallbackInfo"));
  }
}

void __NEIPSecIKESetDispatchQueue_block_invoke_257(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained clientCallback])
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Firing redirect event", v9, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 addressFamily] == 2)
      {
        v7 = @"RedirectedToServerTypeIPAddress";
      }

      else
      {
        if ([v3 addressFamily] != 30)
        {
LABEL_12:
          v8 = [v3 hostname];
          [v6 setObject:v8 forKeyedSubscript:@"RedirectedToServer"];

          goto LABEL_13;
        }

        v7 = @"RedirectedToServerTypeIPv6Address";
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_13:
        ([WeakRetained clientCallback])(WeakRetained, 0, 5120, v6, objc_msgSend(WeakRetained, "clientCallbackInfo"));

        goto LABEL_14;
      }

      v7 = @"RedirectToServerTypeFQDN";
    }

    [v6 setObject:v7 forKeyedSubscript:@"RedirectedToServerType"];
    goto LABEL_12;
  }

LABEL_14:
}

void __NEIPSecIKESetDispatchQueue_block_invoke_276(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained clientCallback])
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "Firing private notify status event", buf, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = v3;
      v19 = WeakRetained;
      v10 = 0;
      v11 = 0;
      v12 = *v22;
      do
      {
        v13 = v7;
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          if ([v15 notifyStatus] == 51115)
          {
            v16 = [v15 notifyData];
            [v6 setObject:v16 forKeyedSubscript:@"N1ModeInformation"];
          }

          v17 = [v15 notifyStatus] == 10500;
          if ([v15 notifyStatus] == 41041)
          {
            v18 = [v15 notifyData];

            v10 = v18;
          }

          v11 |= v17;
        }

        v7 = v13;
        v9 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);

      WeakRetained = v19;
      if ((v11 & (v10 != 0)) == 1)
      {
        [v6 setObject:v10 forKeyedSubscript:@"NetworkFailureBackoffTimer"];
      }

      v3 = v20;
    }

    else
    {

      v10 = 0;
    }

    if ([v6 count])
    {
      ([WeakRetained clientCallback])(WeakRetained, 0, 6144, v6, objc_msgSend(WeakRetained, "clientCallbackInfo"));
    }
  }
}

void NEIPSecIKESendDeadPeerDetectionPacket(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __NEIPSecIKESendDeadPeerDetectionPacket_block_invoke;
  v11[3] = &unk_1E7F093F8;
  v12 = v9;
  v10 = v9;
  [a1 sendKeepaliveWithRetries:a2 retryIntervalInMilliseconds:a3 callbackQueue:a4 callback:v11];
}

uint64_t __NEIPSecIKESendDeadPeerDetectionPacket_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t NEIPSecIKEStartConnection(void *a1)
{
  v1 = a1;
  [v1 connect];
  v3 = [(NEIKEv2Session *)v1 firstChildSA];

  if (v3)
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t NEIPSecIKEConnectionIsMobile(void *a1, const char *a2)
{
  if (!a1)
  {
    v2 = 0;
    goto LABEL_6;
  }

  v2 = objc_getProperty(a1, a2, 352, 1);
  if (!v2)
  {
LABEL_6:
    v3 = 0;
    goto LABEL_4;
  }

  v3 = v2[11];
LABEL_4:

  return v3 & 1;
}

uint64_t NEIPSecIKEStartMOBIKEReuseSocket(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, void *a7, void *a8)
{
  v15 = a7;
  v16 = a8;
  if (a1)
  {
    v17 = a1;
    if (a3)
    {
      a3 = [MEMORY[0x1E6977E28] endpointWithHostname:a3 port:@"0"];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __NEIPSecIKEStartMOBIKEReuseSocket_block_invoke;
    v20[3] = &unk_1E7F09420;
    v21 = v16;
    [v17 sendMOBIKEWithRetries:a4 retryInterval:a5 interfaceName:a2 invalidateTransport:a6 == 0 resetEndpoint:a3 callbackQueue:v15 callback:v20];

    v18 = 1000;
  }

  else
  {
    v18 = 3;
  }

  return v18;
}

void __NEIPSecIKEStartMOBIKEReuseSocket_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    if (v7)
    {
      v9 = 70001;
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = [v7 domain];
      v12 = [v11 isEqual:@"NEIKEv2ErrorDomain"];

      if (v12)
      {
        v13 = [v7 code];
        if ((v13 - 2) < 0xD)
        {
          v9 = dword_1BAA4F978[v13 - 2];
        }
      }

      else
      {
        v14 = [v7 domain];
        v15 = [v14 isEqual:@"NEIKEv2ProtocolErrorDomain"];

        if (v15)
        {
          v9 = [v7 code];
        }
      }

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
      [v10 setObject:v16 forKeyedSubscript:@"NotifyCode"];

      v8 = *(a1 + 32);
    }

    else
    {
      v10 = 0;
    }

    (*(v8 + 16))(v8, v17, a3, v10);
  }
}

uint64_t NEIPSecIKEInvalidateSession(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFStringGetTypeID())
    {
      [v1 invalidate];
    }

    return 1;
  }

  return result;
}

uint64_t NEIPSecIKEStartChildSA(void *a1, void *a2)
{
  v3 = a1;
  v4 = NEIPSecIKEValidateIKEChildDictionary(a2);
  v5 = [v3 addChild:v4];

  return v5;
}

uint64_t NEIPSecIKEGetLocalAddress(void *a1, char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 352, 1);
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 64, 1);
    }
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6 = Property;

  v7 = [v6 address];
  if (v7)
  {
    memcpy(a2, v7, *v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t NEIPSecIKEGetRemoteAddress(void *a1, char *a2)
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 352, 1);
    v5 = Property;
    if (Property)
    {
      Property = objc_getProperty(Property, v4, 72, 1);
    }
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6 = Property;

  v7 = [v6 address];
  if (v7)
  {
    memcpy(a2, v7, *v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void NEIPSecIKESendPrivateNotifyStatus(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a1;
    v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:a2 notifyData:a3];
    v7 = v6;
    if (v6)
    {
      v9 = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
      [v5 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:0 callback:0];
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v11 = "NEIPSecIKESendPrivateNotifyStatus";
        _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null privateNotify", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v11 = "NEIPSecIKESendPrivateNotifyStatus";
      _os_log_fault_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_FAULT, "%s called with null session", buf, 0xCu);
    }
  }
}

void NEIPSecSAKernelSessionReceiveMessage(uint64_t a1, int a2, int a3, uint64_t a4, void *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v10 = v8;
  if (v8)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = objc_getProperty(v8, v9, 24, 1);
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          if (v16)
          {
            if (v16[12] == a2)
            {
LABEL_28:
              v24 = v16;

              v25 = ne_log_large_obj();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                *buf = 138413314;
                v38 = a1;
                v39 = 2112;
                v40 = v10;
                v41 = 1024;
                v42 = a3;
                v43 = 1024;
                v44 = a2;
                v45 = 2112;
                v46 = v24;
                _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_INFO, "%@ %@ received notification %#x for SAID %u which matches SA %@", buf, 0x2Cu);
              }

              v26 = [v10 delegate];
              v27 = v26;
              if (v26)
              {
                v28 = a3 & 0xF00;
                switch(v28)
                {
                  case 2048:
                    [v26 idleTimeoutSA:v24];
                    break;
                  case 1024:
                    [v26 deleteSA:v24];
                    break;
                  case 512:
                    [v26 expireSA:v24];
                    break;
                }

                if ((a3 & 0xF0) == 0x10)
                {
                  [v27 blackholeDetectedSA:v24];
                }
              }

              goto LABEL_40;
            }
          }

          else if (!a2)
          {
            goto LABEL_14;
          }

          ++v15;
        }

        while (v13 != v15);
        v17 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
        v13 = v17;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = objc_getProperty(v10, v18, 32, 1);
    v19 = [v11 countByEnumeratingWithState:&v29 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        v22 = 0;
        do
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v29 + 1) + 8 * v22);
          if (v16)
          {
            if (v16[12] == a2)
            {
              goto LABEL_28;
            }
          }

          else if (!a2)
          {
            goto LABEL_26;
          }

          ++v22;
        }

        while (v20 != v22);
        v23 = [v11 countByEnumeratingWithState:&v29 objects:v47 count:16];
        v20 = v23;
      }

      while (v23);
    }

LABEL_26:

    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v38 = a1;
      v39 = 2112;
      v40 = v10;
      v41 = 1024;
      v42 = a3;
      v43 = 1024;
      v44 = a2;
      _os_log_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_INFO, "%@ %@ received notification %#x for SAID %u which matches no SA", buf, 0x22u);
    }

LABEL_40:
  }
}