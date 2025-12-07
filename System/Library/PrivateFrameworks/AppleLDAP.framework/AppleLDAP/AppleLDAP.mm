void *ldap_connection_create_with_hostname(const __CFString *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  _fill_cstring_from_cfstring(&v6, a1, 0);
  v3 = v6;
  snprintf(__str, 0x100uLL, "com.apple.AppleLDAP.%s.%hu", v6, a2);
  result = _ldap_connection_create(__str);
  result[33] = v3;
  *(result + 136) = a2;
  if (a2 == 636)
  {
    v5 = 1026;
  }

  else
  {
    v5 = 1024;
  }

  *(result + 72) |= v5;
  return result;
}

char *_fill_cstring_from_cfstring(char **a1, const __CFString *a2, char **a3)
{
  v7 = 0;
  result = _cstr_from_cfstring(a2, &v7);
  if (!result)
  {
    *a1 = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_7;
  }

  v6 = result;
  result = v7;
  if (!v7)
  {
    result = strdup(v6);
  }

  *a1 = result;
  if (a3)
  {
    result = strlen(v6);
LABEL_7:
    *a3 = result;
  }

  return result;
}

void *_ldap_connection_create(const char *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = ldap_connection_obj_alloc(312);
  if (!v2)
  {
    _ldap_connection_create_cold_1();
  }

  v3 = v2;
  snprintf(__str, 0x80uLL, "%s.state", a1);
  v3[1] = dispatch_queue_create(__str, 0);
  snprintf(__str, 0x80uLL, "%s.ops", a1);
  v3[8] = dispatch_queue_create(__str, 0);
  snprintf(__str, 0x80uLL, "%s.accessor", a1);
  v3[26] = dispatch_queue_create(__str, 0);
  snprintf(__str, 0x80uLL, "%s.delivery", a1);
  v3[3] = dispatch_queue_create(__str, 0);
  v3[4] = dispatch_group_create();
  *(v3 + 72) = 0;
  *(v3 + 305) = 1;
  v3[2] = dispatch_group_create();
  v3[7] = dispatch_group_create();
  v3[9] = 0;
  v3[10] = v3 + 9;
  v3[11] = 0;
  v3[28] = 0;
  v3[12] = v3 + 11;
  v3[29] = v3 + 28;
  v3[20] = 0;
  return v3;
}

void *ldap_connection_create_with_socket(int a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = 16;
  if (a1 == -1)
  {
    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0;
  v25 = 0u;
  if (getpeername(a1, &v24, &v10))
  {
    snprintf(__str, 0x100uLL, "com.apple.AppleLDAP.sock#%d", a1);
    v2 = _ldap_connection_create(__str);
    *(v2 + 69) = a1;
    *(v2 + 72) |= 0x1000u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *__s1 = 134218240;
      v20 = v2;
      v21 = 1024;
      v22 = a1;
      v3 = MEMORY[0x277D86220];
      v4 = "connection: %p, socket: %d";
      v5 = __s1;
      v6 = 18;
LABEL_12:
      _os_log_impl(&dword_240C91000, v3, OS_LOG_TYPE_INFO, v4, v5, v6);
      return v2;
    }

    return v2;
  }

  if (v24.sa_family != 2)
  {
    if (v24.sa_family == 30)
    {
      v7 = &v24.sa_data[6];
      goto LABEL_10;
    }

    return 0;
  }

  v7 = &v24.sa_data[2];
LABEL_10:
  inet_ntop(v24.sa_family, v7, __s1, 0x2Eu);
  v8 = *v24.sa_data;
  snprintf(__str, 0x100uLL, "com.apple.AppleLDAP.%s.%hu", __s1, *v24.sa_data);
  v2 = _ldap_connection_create(__str);
  v2[33] = strdup(__s1);
  *(v2 + 136) = v8;
  *(v2 + 69) = a1;
  *(v2 + 72) |= 0x1000u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134218754;
    v12 = v2;
    v13 = 1024;
    v14 = a1;
    v15 = 1040;
    v16 = v10;
    v17 = 2098;
    v18 = &v24;
    v3 = MEMORY[0x277D86220];
    v4 = "connection: %p, socket: %d, address: %{public,network:sockaddr}.*P";
    v5 = buf;
    v6 = 34;
    goto LABEL_12;
  }

  return v2;
}

void *ldap_connection_create_with_socket_and_hostname(int a1, const __CFString *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = 16;
  if (a1 == -1)
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0;
  v23 = 0u;
  v11 = 0;
  _fill_cstring_from_cfstring(&v11, a2, 0);
  if (getpeername(a1, &v22, &v12))
  {
    snprintf(__str, 0x100uLL, "com.apple.AppleLDAP.sock#%d", a1);
    v3 = _ldap_connection_create(__str);
    *(v3 + 69) = a1;
    v4 = v11;
    v3[33] = v11;
    *(v3 + 72) |= 0x1000u;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v14 = v3;
      v15 = 1024;
      v16 = a1;
      v17 = 2082;
      *v18 = v4;
      v5 = MEMORY[0x277D86220];
      v6 = "connection: %p, socket: %d, hostname: %{public}s";
      v7 = 28;
LABEL_9:
      _os_log_impl(&dword_240C91000, v5, OS_LOG_TYPE_INFO, v6, buf, v7);
      return v3;
    }

    return v3;
  }

  if (v22.sa_family != 30 && v22.sa_family != 2)
  {
    return 0;
  }

  v8 = *v22.sa_data;
  v9 = v11;
  snprintf(__str, 0x100uLL, "com.apple.AppleLDAP.%s.%hu", v11, *v22.sa_data);
  v3 = _ldap_connection_create(__str);
  v3[33] = v9;
  *(v3 + 136) = v8;
  *(v3 + 69) = a1;
  *(v3 + 72) |= 0x1000u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134219010;
    v14 = v3;
    v15 = 1024;
    v16 = a1;
    v17 = 1040;
    *v18 = v12;
    *&v18[4] = 2098;
    *&v18[6] = &v22;
    v19 = 2082;
    v20 = v9;
    v5 = MEMORY[0x277D86220];
    v6 = "connection: %p, socket: %d, address: %{public,network:sockaddr}.*P, hostname: %{public}s";
    v7 = 44;
    goto LABEL_9;
  }

  return v3;
}

void *ldap_connection_create_with_url(const __CFURL *a1)
{
  v2 = CFURLCopyScheme(a1);
  v3 = CFURLCopyHostName(a1);
  v4 = CFURLGetPortNumber(a1);
  if (CFEqual(v2, @"ldap"))
  {
    if (v4 == -1)
    {
      v5 = 389;
    }

    else
    {
      v5 = v4;
    }

    v6 = ldap_connection_create_with_hostname(v3, v5);
    if (!v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (CFEqual(v2, @"ldaps"))
  {
    if (v4 == -1)
    {
      v7 = 636;
    }

    else
    {
      v7 = v4;
    }

    v6 = ldap_connection_create_with_hostname(v3, v7);
    *(v6 + 72) |= 2u;
    if (!v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v6 = 0;
  if (v3)
  {
LABEL_12:
    CFRelease(v3);
  }

LABEL_13:
  if (v2)
  {
    CFRelease(v2);
  }

  return v6;
}

void ldap_connection_start(void *a1, int a2, uint64_t a3)
{
  v6 = a1[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___state_set_block_invoke;
  block[3] = &__block_descriptor_tmp_64;
  block[4] = a1;
  v14 = 2;
  dispatch_barrier_sync(v6, block);
  ldap_connection_retain(a1);
  if (a2)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __ldap_connection_start_block_invoke;
    v11[3] = &unk_278CB3320;
    v12 = a2;
    v11[4] = a3;
    v11[5] = a1;
    dispatch_async(global_queue, v11);
  }

  else
  {
    v8 = a1[2];
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __ldap_connection_start_block_invoke_2;
    v10[3] = &unk_278CB3348;
    v10[4] = a3;
    v10[5] = a1;
    dispatch_group_notify(v8, v9, v10);
  }
}

void __ldap_connection_start_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 16);
  v3 = dispatch_walltime(0, 1000000000 * *(a1 + 48));
  v4 = dispatch_group_wait(v2, v3);
  v5 = *(a1 + 40);
  if (v4)
  {
    v6 = 3;
  }

  else
  {
    v6 = *(v5 + 292);
  }

  _report_connect_status(v5, *(a1 + 32), v6);
  v7 = *(a1 + 40);

  ldap_connection_release(v7);
}

void _report_connect_status(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (!a3)
  {
    v7 = *(a1 + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___report_connect_status_block_invoke;
    v9[3] = &unk_278CB3940;
    v9[4] = &v10;
    v9[5] = a1;
    dispatch_sync(v7, v9);
    v6 = v11[3];
  }

  (*(a2 + 16))(a2, a1, v6, a3);
  v8 = v11[3];
  if (v8)
  {
    CFRelease(v8);
    v11[3] = 0;
  }

  _Block_object_dispose(&v10, 8);
}

void __ldap_connection_start_block_invoke_2(uint64_t a1)
{
  _report_connect_status(*(a1 + 40), *(a1 + 32), *(*(a1 + 40) + 292));
  v2 = *(a1 + 40);

  ldap_connection_release(v2);
}

void _o_ldap_connection_cancel_all_operations(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    _o_ldap_connection_cancel_all_operations_cold_1();
  }

  for (i = *(a1 + 72); i; i = *(a1 + 72))
  {
    v3 = *(i + 8);
    v4 = *(i + 16);
    v5 = (v3 + 16);
    if (!v3)
    {
      v5 = (a1 + 80);
    }

    *v5 = v4;
    *v4 = v3;
    atomic_fetch_or((i + 40), 2uLL);
    atomic_fetch_and((i + 40), 0xFFFFFFFFFFFFFFF7);
    atomic_fetch_add((a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
    if (*(i + 41) & 8) != 0 || (atomic_fetch_or((i + 40), 1uLL))
    {
      ldap_operation_release(i);
    }

    else
    {
      v6 = *(i + 32);
      ldap_operation_retain(i);
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = ___ldap_async_operation_block_invoke;
      v13[3] = &__block_descriptor_tmp_119;
      v13[4] = _o_abandon_operation;
      v13[5] = i;
      dispatch_group_async(v7, v8, v13);
    }

    dispatch_group_leave(*(a1 + 56));
  }

  for (j = *(a1 + 88); j; j = *(a1 + 88))
  {
    v10 = j[1];
    v11 = j[2];
    v12 = (v10 + 16);
    if (!v10)
    {
      v12 = (a1 + 96);
    }

    *v12 = v11;
    *v11 = v10;
    atomic_fetch_or(j + 5, 2uLL);
    atomic_fetch_and(j + 5, 0xFFFFFFFFFFFFFFF7);
    dispatch_group_leave(*(a1 + 56));
    ldap_operation_release(j);
  }
}

void ldap_connection_disconnect(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 0x40000000;
  v2[2] = ___state_set_block_invoke;
  v2[3] = &__block_descriptor_tmp_64;
  v2[4] = a1;
  v3 = 8;
  dispatch_barrier_sync(v1, v2);
}

uint64_t ldap_connection_set_no_cellular(uint64_t a1, int a2)
{
  result = _ldap_validate_offline(a1);
  v5 = (a1 + 288);
  if (a2)
  {
    atomic_fetch_or(v5, 0x200u);
  }

  else
  {
    atomic_fetch_and(v5, 0xFFFFFDFF);
  }

  return result;
}

uint64_t _ldap_validate_offline(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result + 305) != 1)
  {
    v2 = *(result + 305);
    v1 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v4 = v1;
      v5 = 1024;
      v6 = v2;
      v7 = 1024;
      v8 = 1;
      _os_log_error_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "connection: %p, invalid state: %{AppleLDAPTypes:state}hhd (expected %{AppleLDAPTypes:state}hhd)", buf, 0x18u);
    }

    __break(1u);
  }

  return result;
}

void ldap_connection_set_source_application_by_bundle(uint64_t a1, uint64_t a2)
{
  _ldap_validate_offline(a1);
  v4 = *(a1 + 208);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __ldap_connection_set_source_application_by_bundle_block_invoke;
  v5[3] = &__block_descriptor_tmp_41;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_barrier_sync(v4, v5);
}

char *__ldap_connection_set_source_application_by_bundle_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    free(v3);
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  result = strdup(*(a1 + 40));
  *(v2 + 40) = result;
  return result;
}

void ldap_connection_set_account_identifier(uint64_t a1, uint64_t a2)
{
  _ldap_validate_offline(a1);
  v4 = *(a1 + 208);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = __ldap_connection_set_account_identifier_block_invoke;
  v5[3] = &__block_descriptor_tmp_42;
  v5[4] = a1;
  v5[5] = a2;
  dispatch_barrier_sync(v4, v5);
}

char *__ldap_connection_set_account_identifier_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    free(v3);
    *(*(a1 + 32) + 48) = 0;
    v2 = *(a1 + 32);
  }

  result = strdup(*(a1 + 40));
  *(v2 + 48) = result;
  return result;
}

void ldap_connection_set_tls(uint64_t a1, int a2, const void *a3)
{
  _ldap_validate_offline(a1);
  if (a2)
  {
    v6 = atomic_fetch_or((a1 + 288), 1u) ^ 1;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_7:
    v7 = *(a1 + 256);
    if (v7)
    {
      if (CFEqual(v7, a3))
      {
        goto LABEL_9;
      }

      v8 = *(a1 + 256);
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 256) = 0;
      }
    }

    *(a1 + 256) = CFRetain(a3);
    goto LABEL_14;
  }

  if (a3)
  {
    _os_assumes_log();
  }

  LOBYTE(v6) = atomic_fetch_and((a1 + 288), 0xFFFFFFFE);
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6)
  {
LABEL_14:
    v9 = *(a1 + 208);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ldap_connection_set_tls_block_invoke;
    block[3] = &__block_descriptor_tmp_43;
    block[4] = a1;
    dispatch_barrier_sync(v9, block);
  }
}

_DWORD *_a_clear_failed_hosts(uint64_t a1, int a2)
{
  dispatch_assert_queue_V2(*(a1 + 208));
  result = *(a1 + 224);
  if (result)
  {
    v5 = (a1 + 232);
    do
    {
      v6 = *result;
      if (result[11] == a2)
      {
        v7 = *(result + 1);
        v8 = v6 + 2;
        if (!v6)
        {
          v8 = v5;
        }

        *v8 = v7;
        *v7 = v6;
        free(result);
      }

      result = v6;
    }

    while (v6);
  }

  return result;
}

void ldap_connection_add_credential(uint64_t a1, const void *a2, const __CFDictionary *a3)
{
  _ldap_validate_offline(a1);
  if ((CFEqual(a2, @"simple") == 1 || CFEqual(a2, @"CRAM-MD5") == 1 || CFEqual(a2, @"DIGEST-MD5") == 1) && ((Value = CFDictionaryGetValue(a3, LDAP_MECHANISM_OPTION_RECORD_DN), v7 = CFDictionaryGetValue(a3, LDAP_MECHANISM_OPTION_PASSWORD), Value) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    _os_assumes_log();
  }

  else
  {
    v9 = *(a1 + 208);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __ldap_connection_add_credential_block_invoke;
    block[3] = &__block_descriptor_tmp_44;
    block[4] = a1;
    block[5] = a2;
    block[6] = a3;
    dispatch_barrier_sync(v9, block);
    atomic_fetch_or((a1 + 288), 4u);
    v10 = *(a1 + 208);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = __ldap_connection_add_credential_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_45;
    v11[4] = a1;
    dispatch_barrier_sync(v10, v11);
  }
}

void __ldap_connection_add_credential_block_invoke(void *a1)
{
  v2 = *(a1[4] + 248);
  if (!v2)
  {
    *(a1[4] + 248) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v2 = *(a1[4] + 248);
  }

  v3 = a1[5];
  v4 = a1[6];

  CFDictionarySetValue(v2, v3, v4);
}

void *ldap_connection_set_disconnect_handler(uint64_t a1, const void *a2)
{
  _ldap_validate_offline(a1);
  v4 = *(a1 + 280);
  if (v4)
  {
    _Block_release(v4);
    *(a1 + 280) = 0;
  }

  result = _Block_copy(a2);
  *(a1 + 280) = result;
  return result;
}

atomic_ullong *ldap_connection_retrieve_record(_DWORD *a1, uint64_t a2, const __CFString *a3, const __CFArray *a4, uint64_t a5)
{
  v5 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2000000000;
  v25[3] = 0;
  v6 = a1[72];
  if ((v6 & 0x100) == 0 && (v6 & 0xC0) != 0)
  {
    v17 = 0u;
    v18 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v19 = 0u;
    v16 = 0u;
    DWORD2(v16) = 4;
    LODWORD(v18) = 0;
    DWORD2(v18) = 1;
    DWORD2(v19) = 8;
    v20 = 11;
    v21 = strdup("objectClass");
    _ldap_set_attributes(&v16, a4);
    _fill_cstring_from_cfstring(&v17 + 1, a3, &v17);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = __ldap_connection_retrieve_record_block_invoke;
    v15[3] = &unk_278CB3410;
    v15[4] = v25;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __ldap_connection_retrieve_record_block_invoke_2;
    v14[3] = &unk_278CB3438;
    v14[4] = a5;
    v14[5] = v25;
    v12 = _ldap_operation_query_create(a1, &v16, a2, v15, v14);
    free_LDAPMessage(&v16);
    v5 = _enqueue_operation(a1, v12);
  }

  _Block_object_dispose(v25, 8);
  return v5;
}

CFIndex _ldap_set_attributes(CFIndex result, CFArrayRef theArray)
{
  v2 = result;
  if (!theArray)
  {
    LODWORD(v4) = 0;
    goto LABEL_7;
  }

  result = CFArrayGetCount(theArray);
  v4 = result;
  if (result < 1)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = malloc_type_calloc(result, 0x10uLL, 0x108004057E67DB5uLL);
  v6 = 0;
  v7 = v5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    result = _fill_cstring_from_cfstring(v7 + 1, ValueAtIndex, v7);
    ++v6;
    v7 += 2;
  }

  while (v4 != v6);
LABEL_8:
  *(v2 + 112) = v5;
  *(v2 + 104) = v4;
  return result;
}

uint64_t _ldap_operation_query_create(void *a1, _DWORD *a2, uint64_t a3, const void *a4, const void *a5)
{
  v6 = a3;
  v8 = _ldap_base_operation_create(a1, 144, 1024, _dispose_query, a5);
  v9 = v8;
  if (v8)
  {
    if (_ldap_operation_simple_init(v8, a2))
    {
      if (a4)
      {
        *(v9 + 104) = _Block_copy(a4);
      }

      if (v6)
      {
        _start_query_timer(v9, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

CFTypeRef __ldap_connection_retrieve_record_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  result = CFRetain(cf);
  *(*(*(a1 + 32) + 8) + 24) = cf;
  return result;
}

void __ldap_connection_retrieve_record_block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

atomic_ullong *_enqueue_operation(uint64_t a1, atomic_ullong *a2)
{
  v2 = a2;
  if (a2)
  {
    if ((atomic_fetch_or(a2 + 5, 8uLL) & 8) != 0)
    {
      ldap_operation_release(a2);
      return 0;
    }

    else
    {
      atomic_fetch_and(a2 + 5, 0xFFFFFFFFFFFFFFFDLL);
      ldap_operation_retain(a2);
      dispatch_group_enter(*(a1 + 56));
      v2[6] = voucher_copy();
      v4 = v2[4];
      ldap_operation_retain(v2);
      v5 = *(v4 + 56);
      v6 = *(v4 + 64);
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 0x40000000;
      v8[2] = ___ldap_async_operation_block_invoke;
      v8[3] = &__block_descriptor_tmp_119;
      v8[4] = _o_ldap_queue_operation;
      v8[5] = v2;
      dispatch_group_async(v5, v6, v8);
    }
  }

  return v2;
}

atomic_ullong *ldap_connection_query_create(void *a1, uint64_t a2, unsigned int a3, const __CFString *a4, __CFString *a5, const __CFArray *a6, unsigned int a7, int a8, const void *a9, const void *a10)
{
  v14 = a2;
  v15 = a1;
  v17 = a9;
  v16 = a10;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  *v36 = 0u;
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = @"(objectClass=*)";
  }

  memset(&v36[16], 0, 48);
  v37 = 0uLL;
  DWORD2(v33) = 4;
  if (a8)
  {
    v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
    v21 = malloc_type_calloc(1uLL, 0x20uLL, 0x10B0040CF0EF425uLL);
    v38[1] = 0;
    v38[2] = 0;
    v38[0] = a7;
    v21[2] = 0;
    v22 = strdup("1.2.840.113556.1.4.319");
    *v21 = 22;
    v21[1] = v22;
    v21[3] = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    v23 = length_PagedSearchControlValue(v38);
    v24 = malloc_type_malloc(v23, 0x986ABB86uLL);
    v25 = v21[3];
    *(v25 + 8) = v24;
    if (v24 && encode_PagedSearchControlValue(v24 + v23 - 1, v23, v38, v25))
    {
      free(*(v21[3] + 8));
      *(v21[3] + 8) = 0;
    }

    a7 = 0;
    *v20 = 1;
    v20[1] = v21;
    *(&v37 + 1) = v20;
    v14 = a2;
    v16 = a10;
    v17 = a9;
    v15 = a1;
  }

  v38[0] = 0;
  *&v35 = a3;
  *v36 = 0;
  *(&v35 + 1) = a7;
  _fill_cstring_from_cfstring(&v34 + 1, a4, &v34);
  _ldap_set_attributes(&v33, a6);
  v26 = _cstr_from_cfstring(v18, v38);
  memset(&v36[8], 0, 48);
  v27 = v26;
  while (1)
  {
    v28 = *v27;
    if (v28 > 0x27)
    {
      if (v28 == 40)
      {
        started = _start_filter(&v36[8], v27 + 1);
LABEL_18:
        v27 = started;
        goto LABEL_19;
      }

      if (v28 == 41)
      {
        goto LABEL_20;
      }

LABEL_17:
      started = _parse_simple_filter(&v36[8], v27, 0);
      goto LABEL_18;
    }

    if (v28 != 32)
    {
      break;
    }

LABEL_19:
    if (!++v27)
    {
LABEL_20:
      free_Filter(&v36[8]);
      goto LABEL_21;
    }
  }

  if (*v27)
  {
    goto LABEL_17;
  }

  if (*&v36[8])
  {
    v30 = _ldap_operation_query_create(v15, &v33, v14, v17, v16);
    goto LABEL_24;
  }

LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ldap_connection_query_create_cold_1();
  }

  v30 = 0;
LABEL_24:
  free_LDAPMessage(&v33);
  if (v38[0])
  {
    free(v38[0]);
  }

  return _enqueue_operation(v15, v30);
}

char *_cstr_from_cfstring(const __CFString *a1, char **a2)
{
  *a2 = 0;
  if (!a1)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v7 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x4735FDA3uLL);
    if (!v7)
    {
      _ldap_connection_create_cold_1();
    }

    CStringPtr = v7;
    if (!CFStringGetCString(a1, v7, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      free(CStringPtr);
      CStringPtr = 0;
    }

    *a2 = CStringPtr;
  }

  return CStringPtr;
}

uint64_t ldap_operation_query_remaining(uint64_t a1)
{
  if ((*(a1 + 41) & 4) != 0)
  {
    return *(a1 + 140);
  }

  else
  {
    return 0;
  }
}

uint64_t ldap_operation_query_page(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  v4 = 10013;
  if ((v3 & 0x400) != 0 && (*(a1 + 40) & 5) != 1)
  {
    if (*(a1 + 120))
    {
      if ((v3 & 8) != 0)
      {
        return 10011;
      }

      else
      {
        v7 = a2;
        v8 = *(a1 + 32);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        memset(v23, 0, sizeof(v23));
        v24 = 0u;
        v22 = 0;
        if (decode_LDAPMessage(*(a1 + 88), *(a1 + 96), v23, &v22))
        {
          return 10013;
        }

        else
        {
          v9 = **(&v24 + 1);
          if (v9 && (v10 = *(*(&v24 + 1) + 8), !strncmp(*(v10 + 8), "1.2.840.113556.1.4.319", v9)))
          {
            v11 = *(a1 + 120);
            v26 = *(a1 + 128);
            v27 = v11;
            v25 = a3;
            v12 = *(*(v10 + 24) + 8);
            if (v12)
            {
              free(v12);
              *(*(*(*(&v24 + 1) + 8) + 24) + 8) = 0;
            }

            v13 = length_PagedSearchControlValue(&v25);
            v14 = malloc_type_malloc(v13, 0x33287A76uLL);
            v15 = *(*(*(&v24 + 1) + 8) + 24);
            *(v15 + 8) = v14;
            if (v14 && encode_PagedSearchControlValue(v14 + v13 - 1, v13, &v25, v15))
            {
              free(*(*(*(*(&v24 + 1) + 8) + 24) + 8));
              *(*(*(*(&v24 + 1) + 8) + 24) + 8) = 0;
            }

            v16 = *(a1 + 120);
            if (v16)
            {
              free(v16);
              *(a1 + 120) = 0;
            }

            messageID = _ldap_connection_next_messageID(v8);
            *(a1 + 80) = messageID;
            LODWORD(v23[0]) = messageID;
            v18 = *(a1 + 88);
            if (v18)
            {
              free(v18);
              *(a1 + 88) = 0;
            }

            v19 = length_LDAPMessage(v23);
            v20 = malloc_type_malloc(v19, 0xBA8CA424uLL);
            *(a1 + 88) = v20;
            if (v20 && encode_LDAPMessage(v20 + v19 - 1, v19, v23, a1 + 96))
            {
              free(*(a1 + 88));
              *(a1 + 88) = 0;
            }

            atomic_fetch_and((a1 + 40), 0xFFFFFFFFFFFFFFFALL);
            if (v7)
            {
              _start_query_timer(a1, v7);
            }

            if (_enqueue_operation(v8, a1))
            {
              v4 = 0;
            }

            else
            {
              v4 = 10013;
            }
          }

          else
          {
            v4 = 10013;
          }

          free_LDAPMessage(v23);
        }
      }
    }

    else
    {
      return 10012;
    }
  }

  return v4;
}

uint64_t _ldap_connection_next_messageID(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 208);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ldap_connection_next_messageID_block_invoke;
  v4[3] = &unk_278CB39A8;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void _start_query_timer(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 112);
  if (!v5)
  {
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(v4 + 64));
    *(a1 + 112) = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    _os_assumes_log();
    return;
  }

  dispatch_suspend(v5);
  v6 = *(a1 + 112);
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = dispatch_walltime(0, 1000000000 * a2);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_set_context(*(a1 + 112), a1);
  v8 = *(a1 + 112);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___start_query_timer_block_invoke;
  v9[3] = &__block_descriptor_tmp_122;
  v9[4] = v4;
  v9[5] = a1;
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(*(a1 + 112));
}

void ldap_operation_cancel(atomic_ullong *context)
{
  v1 = context[4];
  if ((atomic_fetch_or(context + 5, 2uLL) & 2) == 0)
  {
    dispatch_barrier_sync_f(*(v1 + 64), context, _o_ldap_operation_cancel_internal);
  }
}

void _o_ldap_operation_cancel_internal(atomic_ullong *a1)
{
  v2 = a1[4];
  dispatch_assert_queue_V2(*(v2 + 64));
  v3 = *(v2 + 72);
  if (v3)
  {
    while (v3 != a1)
    {
      v3 = *(v3 + 8);
      if (!v3)
      {
        goto LABEL_4;
      }
    }

    v5 = a1[1];
    v6 = a1[2];
    v7 = (v2 + 80);
    if (v5)
    {
      v7 = (v5 + 16);
    }

    *v7 = v6;
    *v6 = v5;
    atomic_fetch_and(a1 + 5, 0xFFFFFFFFFFFFFFF7);
    if ((*(v3 + 41) & 8) == 0 && (atomic_fetch_or((v3 + 40), 1uLL) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        _o_ldap_operation_cancel_internal_cold_1();
      }

      dispatch_barrier_sync_f(*(v2 + 64), a1, _o_abandon_operation);
    }

    atomic_fetch_add((v2 + 112), 0xFFFFFFFFFFFFFFFFLL);
    dispatch_group_leave(*(v2 + 56));
    ldap_operation_release(a1);
  }

  else
  {
LABEL_4:
    v4 = *(v2 + 88);
    if (v4)
    {
      while (v4 != a1)
      {
        v4 = v4[1];
        if (!v4)
        {
          return;
        }
      }

      v8 = a1[1];
      v9 = a1[2];
      v10 = (v2 + 96);
      if (v8)
      {
        v10 = (v8 + 16);
      }

      *v10 = v9;
      *v9 = v8;
      atomic_fetch_and(a1 + 5, 0xFFFFFFFFFFFFFFF7);
      dispatch_group_leave(*(a1[4] + 56));

      ldap_operation_release(a1);
    }
  }
}

void ldap_connection_dispose(gss_ctx_id_t *context_handle)
{
  v2 = context_handle[16];
  if (v2)
  {
    SSLClose(v2);
    v3 = context_handle[16];
    if (v3)
    {
      CFRelease(v3);
      context_handle[16] = 0;
    }
  }

  if (context_handle[15])
  {
    tcp_connection_cancel();
    if (context_handle[15])
    {
      tcp_connection_release();
      context_handle[15] = 0;
    }
  }

  v4 = context_handle[1];
  if (v4)
  {
    dispatch_release(v4);
    context_handle[1] = 0;
  }

  v5 = context_handle[2];
  if (v5)
  {
    dispatch_release(v5);
    context_handle[2] = 0;
  }

  v6 = context_handle[3];
  if (v6)
  {
    dispatch_release(v6);
    context_handle[3] = 0;
  }

  v7 = context_handle[4];
  if (v7)
  {
    dispatch_release(v7);
    context_handle[4] = 0;
  }

  v8 = context_handle[7];
  if (v8)
  {
    dispatch_release(v8);
    context_handle[7] = 0;
  }

  v9 = context_handle[8];
  if (v9)
  {
    dispatch_release(v9);
    context_handle[8] = 0;
  }

  v10 = context_handle[13];
  if (v10)
  {
    dispatch_release(v10);
    context_handle[13] = 0;
  }

  v11 = context_handle[6];
  if (v11)
  {
    free(v11);
    context_handle[6] = 0;
  }

  v12 = context_handle[5];
  if (v12)
  {
    free(v12);
    context_handle[5] = 0;
  }

  v13 = context_handle[17];
  if (v13)
  {
    free(v13);
    context_handle[17] = 0;
  }

  v14 = context_handle[19];
  if (v14)
  {
    CFRelease(v14);
    context_handle[19] = 0;
  }

  v15 = context_handle[35];
  if (v15)
  {
    _Block_release(v15);
    context_handle[35] = 0;
  }

  v16 = context_handle[22];
  if (v16)
  {
    dispatch_release(v16);
    context_handle[22] = 0;
  }

  minor_status = 0;
  if (context_handle[23])
  {
    gss_delete_sec_context(&minor_status, context_handle + 23, 0);
    context_handle[23] = 0;
  }

  v17 = context_handle[26];
  if (v17)
  {
    dispatch_release(v17);
    context_handle[26] = 0;
  }

  v18 = context_handle[27];
  if (v18)
  {
    dispatch_release(v18);
    context_handle[27] = 0;
  }

  for (i = context_handle[28]; i; i = context_handle[28])
  {
    v20 = *i;
    v21 = *(i + 1);
    v22 = (*i + 8);
    if (!*i)
    {
      v22 = context_handle + 29;
    }

    *v22 = v21;
    *v21 = v20;
    free(i);
  }

  while (1)
  {
    v23 = context_handle[20];
    if (!v23)
    {
      break;
    }

    context_handle[20] = *v23;
    free(v23);
  }

  v24 = context_handle[31];
  if (v24)
  {
    CFRelease(v24);
    context_handle[31] = 0;
  }

  v25 = context_handle[32];
  if (v25)
  {
    CFRelease(v25);
    context_handle[32] = 0;
  }

  v26 = context_handle[37];
  if (v26)
  {
    CFRelease(v26);
    context_handle[37] = 0;
  }

  v27 = *(context_handle + 72);
  if ((v27 & 0x400) != 0 || (v27 & 0x4000) != 0 || (v27 & 0x800) != 0)
  {
    v29 = context_handle[33];
    if (!v29)
    {
      return;
    }

    free(v29);
    goto LABEL_61;
  }

  if ((v27 & 0x1000) != 0)
  {
    v30 = context_handle[33];
    if (v30)
    {
      free(v30);
      context_handle[33] = 0;
    }

    v31 = *(context_handle + 69);
    if (v31 != -1)
    {
      close(v31);
    }
  }

  else if ((v27 & 0x2000) != 0)
  {
    v28 = context_handle[33];
    if (v28)
    {
      CFRelease(v28);
LABEL_61:
      context_handle[33] = 0;
    }
  }
}

void ldap_operation_dispose(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    ldap_connection_release(v2);
    *(a1 + 32) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v4(a1);
  }

  os_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v5 = *(a1 + 64);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 64) = 0;
  }
}

const void *ldap_connection_copy_error_string(uint64_t a1)
{
  result = *(a1 + 296);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 296);
  }

  return result;
}

const void *ldap_operation_copy_error_string(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    CFRetain(result);
    return *(a1 + 64);
  }

  return result;
}

void ___state_set_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[305];
  v4 = *(a1 + 40);
  if (_valid_state(v3, v4) && (!v2[306] || _valid_state(v2[306], v4)))
  {
    v2[306] = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      *buf = 134218496;
      v11 = v2;
      v12 = 1024;
      v13 = v3;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, oldState: %{AppleLDAPTypes:state}hhd, newState: %{AppleLDAPTypes:state}hhd", buf, 0x18u);
      v2 = *(a1 + 32);
      LOBYTE(v3) = v2[305];
    }

    if (v3 == 9)
    {
LABEL_9:
      _s_next_state(v2);
      return;
    }

    if (v3 != 7)
    {
      if (v3 != 1)
      {
        return;
      }

      goto LABEL_9;
    }

    ldap_connection_retain(v2);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    v8 = *(v6 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___state_set_block_invoke_62;
    block[3] = &__block_descriptor_tmp_63;
    block[4] = v6;
    dispatch_group_notify(v7, v8, block);
  }
}

uint64_t _valid_state(unsigned int a1, int a2)
{
  LOBYTE(v2) = 0;
  if (a2 && a1 != a2)
  {
    if (a2 <= 5)
    {
      if (a2 <= 2)
      {
        if (a2 == 1)
        {
          if (a1 != 11)
          {
            goto LABEL_33;
          }
        }

        else if (a2 != 2 || a1 != 1)
        {
          goto LABEL_33;
        }
      }

      else if (a2 == 3)
      {
        if (a1 != 2)
        {
          goto LABEL_33;
        }
      }

      else if (a2 == 4)
      {
        if (a1 != 3)
        {
          goto LABEL_33;
        }
      }

      else if ((a1 - 3) >= 2u)
      {
        goto LABEL_33;
      }
    }

    else if (a2 > 8)
    {
      if (a2 == 9)
      {
        if (a1 != 8)
        {
          goto LABEL_33;
        }
      }

      else if (a2 == 10)
      {
        if ((a1 - 2) >= 8u)
        {
          goto LABEL_33;
        }
      }

      else if (a2 != 11 || a1 - 8 >= 3)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          if (a1 == 1 || a1 - 2 >= 6)
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }

        if (a1 < 7)
        {
          v2 = 0x58u >> a1;
          return v2 & 1;
        }

LABEL_33:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }

      if (a1 != 5)
      {
        goto LABEL_33;
      }
    }

LABEL_31:
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

void _s_next_state(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v2 = *(a1 + 306);
        v3 = *(a1 + 305);
        if (!*(a1 + 306) || (valid = _valid_state(v3, v2), *(a1 + 306) = 0, (valid & 1) == 0))
        {
          if (v3 < 5)
          {
            if (v3 == 3)
            {
              if (*(a1 + 292))
              {
                goto LABEL_41;
              }

              dispatch_assert_queue_V2(*(a1 + 8));
              *(a1 + 305) = 4;
              goto LABEL_26;
            }

            if (v3 != 4)
            {
              if (v3 != 2)
              {
                return;
              }

              dispatch_assert_queue_V2(*(a1 + 8));
              *(a1 + 305) = 3;
              goto LABEL_50;
            }

            v5 = *(a1 + 292);
            if (v5 == 10003)
            {
              v11 = *(a1 + 288);
              if ((v11 & 3) == 0)
              {
                goto LABEL_65;
              }
            }

            else if (!v5)
            {
              v11 = *(a1 + 288);
LABEL_65:
              *(a1 + 292) = 0;
              if ((v11 & 4) == 0)
              {
LABEL_66:
                dispatch_assert_queue_V2(*(a1 + 8));
                *(a1 + 305) = 7;
                goto LABEL_67;
              }

              dispatch_assert_queue_V2(*(a1 + 8));
              *(a1 + 305) = 5;
              goto LABEL_72;
            }
          }

          else if (v3 <= 5)
          {
            if (!*(a1 + 292))
            {
              dispatch_assert_queue_V2(*(a1 + 8));
              *(a1 + 305) = 6;
LABEL_58:
              *(a1 + 168) = 0;
              v9 = *(a1 + 136);
              if (v9)
              {
                free(v9);
                *(a1 + 136) = 0;
              }

              ldap_connection_retain(a1);
              v6 = *(a1 + 56);
              v7 = *(a1 + 64);
              v13 = MEMORY[0x277D85DD0];
              v14 = 0x40000000;
              v15 = ___ldap_async_function_block_invoke;
              v16 = &__block_descriptor_tmp_65;
              v8 = _o_initiate_authentication;
              goto LABEL_73;
            }
          }

          else
          {
            if (v3 > 7)
            {
              if ((v3 - 9) < 2)
              {
LABEL_41:
                dispatch_assert_queue_V2(*(a1 + 8));
                *(a1 + 305) = 11;
LABEL_42:
                if ((atomic_fetch_and((a1 + 288), 0xFFFFFFBF) & 0x40) != 0)
                {
                  dispatch_group_leave(*(a1 + 16));
                }

                ldap_connection_retain(a1);
                v6 = *(a1 + 56);
                v7 = *(a1 + 64);
                v13 = MEMORY[0x277D85DD0];
                v14 = 0x40000000;
                v15 = ___ldap_async_function_block_invoke;
                v16 = &__block_descriptor_tmp_65;
                v8 = _o_ldap_cleanup;
                goto LABEL_73;
              }

              if (v3 != 8)
              {
                if (v3 != 11)
                {
                  return;
                }

                dispatch_assert_queue_V2(*(a1 + 8));
                *(a1 + 305) = 1;
                goto LABEL_62;
              }

              dispatch_assert_queue_V2(*(a1 + 8));
              *(a1 + 305) = 9;
              goto LABEL_57;
            }

            if (v3 != 6)
            {
              return;
            }

            if (!*(a1 + 292))
            {
              goto LABEL_66;
            }
          }

          dispatch_assert_queue_V2(*(a1 + 8));
          *(a1 + 305) = 10;
          goto LABEL_30;
        }

        dispatch_assert_queue_V2(*(a1 + 8));
        *(a1 + 305) = v2;
        *(a1 + 306) = 0;
        if (v2 <= 5)
        {
          break;
        }

        if (v2 > 8)
        {
          if (v2 != 10)
          {
            if (v2 != 9)
            {
              if (v2 != 11)
              {
                return;
              }

              goto LABEL_42;
            }

LABEL_57:
            ldap_connection_retain(a1);
            v6 = *(a1 + 56);
            v7 = *(a1 + 64);
            v13 = MEMORY[0x277D85DD0];
            v14 = 0x40000000;
            v15 = ___ldap_async_function_block_invoke;
            v16 = &__block_descriptor_tmp_65;
            v8 = _o_ldap_unbinding;
            goto LABEL_73;
          }

LABEL_30:
          atomic_fetch_or((a1 + 288), 0x100u);
          atomic_fetch_and((a1 + 288), 0xFFFFFF7F);
          if (!*(a1 + 292))
          {
            *(a1 + 292) = 10001;
          }
        }

        else
        {
          if (v2 != 8)
          {
            if (v2 != 6)
            {
LABEL_67:
              if ((atomic_fetch_and((a1 + 288), 0xFFFFFFBF) & 0x40) != 0)
              {
                atomic_fetch_or((a1 + 288), 0x80u);
                v12 = *(a1 + 16);

                dispatch_group_leave(v12);
              }

              return;
            }

            goto LABEL_58;
          }

          if (!*(a1 + 292))
          {
            *(a1 + 292) = 10002;
          }
        }
      }

      if (v2 <= 2)
      {
        break;
      }

      if (v2 != 4)
      {
        if (v2 == 3)
        {
LABEL_50:
          if (!*(a1 + 292))
          {
            *(a1 + 292) = 10001;
          }

          ldap_connection_retain(a1);
          v6 = *(a1 + 56);
          v7 = *(a1 + 64);
          v13 = MEMORY[0x277D85DD0];
          v14 = 0x40000000;
          v15 = ___ldap_async_function_block_invoke;
          v16 = &__block_descriptor_tmp_65;
          v8 = _o_start_connection;
          goto LABEL_73;
        }

LABEL_72:
        ldap_connection_retain(a1);
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v13 = MEMORY[0x277D85DD0];
        v14 = 0x40000000;
        v15 = ___ldap_async_function_block_invoke;
        v16 = &__block_descriptor_tmp_65;
        v8 = _o_read_rootdse;
        goto LABEL_73;
      }

LABEL_26:
      if ((*(a1 + 288) & 3) != 0)
      {
        *(a1 + 292) = 10003;
        ldap_connection_retain(a1);
        v6 = *(a1 + 56);
        v7 = *(a1 + 64);
        v13 = MEMORY[0x277D85DD0];
        v14 = 0x40000000;
        v15 = ___ldap_async_function_block_invoke;
        v16 = &__block_descriptor_tmp_65;
        v8 = _o_initiate_tls_handshake;
LABEL_73:
        v17 = v8;
        v18 = a1;
        dispatch_group_async(v6, v7, &v13);
        return;
      }
    }

    if (v2 != 2)
    {
      break;
    }

    if ((atomic_fetch_or((a1 + 288), 0x40u) & 0x40) == 0)
    {
      ldap_connection_retain(a1);
      atomic_fetch_and((a1 + 288), 0xFFFFFEFF);
      dispatch_group_enter(*(a1 + 16));
    }
  }

  if (v2 != 1)
  {
    return;
  }

LABEL_62:
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async_f(global_queue, a1, ldap_connection_release);
}

void ___state_set_block_invoke_62(uint64_t a1)
{
  _s_next_state(*(a1 + 32));
  v2 = *(a1 + 32);

  ldap_connection_release(v2);
}

void _o_start_connection(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 120))
  {
    tcp_connection_cancel();
    if (*(a1 + 120))
    {
      tcp_connection_release();
      *(a1 + 120) = 0;
    }
  }

  v2 = *(a1 + 288);
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_10;
  }

  if ((v2 & 0x800) != 0)
  {
LABEL_29:
    dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
    return;
  }

  if ((v2 & 0x1000) != 0)
  {
    if (*(a1 + 276) != -1)
    {
      v5 = tcp_connection_create_with_connected_fd();
      *(a1 + 120) = v5;
      *(a1 + 276) = -1;
      goto LABEL_11;
    }

    if (!*(a1 + 264))
    {
      goto LABEL_29;
    }

LABEL_10:
    v5 = tcp_connection_create();
    *(a1 + 120) = v5;
LABEL_11:
    v4 = v5;
    goto LABEL_12;
  }

  if ((*(a1 + 288) & 0x6000) != 0x4000)
  {
    goto LABEL_29;
  }

  v3 = socket(1, 1, 0);
  v9 = 0;
  memset(v8.sa_data, 0, 96);
  v7 = 1;
  v8.sa_family = 1;
  v8.sa_len = strlen(*(a1 + 264)) + 98;
  __strlcpy_chk();
  setsockopt(v3, 0xFFFF, 4130, &v7, 4u);
  if (connect(v3, &v8, v8.sa_len) || ioctl(v3, 0x8004667EuLL, &v7) == -1 || (v5 = tcp_connection_create_with_connected_fd(), *(a1 + 120) = v5, (v4 = v5) == 0))
  {
    close(v3);
    v4 = 0;
    v5 = *(a1 + 120);
  }

LABEL_12:
  if (v5)
  {
    if ((*(a1 + 289) & 0x40) == 0)
    {
      tcp_connection_copy_parameters();
      nw_parameters_set_is_non_app_initiated();
    }

    tcp_connection_allow_client_socket_access();
  }

  if (!v4)
  {
    goto LABEL_29;
  }

  v6 = *(a1 + 288);
  if ((v6 & 0x1000) == 0)
  {
    tcp_connection_set_indefinite();
    v6 = *(a1 + 288);
  }

  if ((v6 & 0x200) != 0)
  {
    tcp_connection_set_no_cellular();
  }

  if (*(a1 + 48))
  {
    tcp_connection_set_account_identifier();
  }

  if (*(a1 + 40))
  {
    tcp_connection_set_source_application_by_bundle();
  }

  tcp_connection_set_event_handler();
  tcp_connection_start();
}

void _o_initiate_tls_handshake(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 272) == 636)
  {

    _o_negotiate_ssl(a1);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v5 = 0u;
    DWORD2(v5) = 19;
    v6 = 22;
    v7 = strdup("1.3.6.1.4.1.1466.20037");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v15 = a1;
      _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, TLS: send EXOP", buf, 0xCu);
    }

    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = ___o_initiate_tls_handshake_block_invoke;
    v4[3] = &__block_descriptor_tmp_69;
    v4[4] = a1;
    v2 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v4);
    v3 = _ldap_operation_simple_init(v2, &v5);
    if (!_enqueue_operation_with_release(a1, v3))
    {
      *(a1 + 292) = 10003;
      dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
    }

    free_LDAPMessage(&v5);
  }
}

void _o_read_rootdse(uint64_t a1)
{
  v2 = CFArrayCreate(*MEMORY[0x277CBECE8], &LDAP_SUPPORTED_SASL_MECHANISMS, 1, MEMORY[0x277CBF128]);
  dispatch_assert_queue_V2(*(a1 + 64));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___o_read_rootdse_block_invoke;
  v4[3] = &__block_descriptor_tmp_87;
  v4[4] = a1;
  record = ldap_connection_retrieve_record(a1, 10, &stru_2852A4358, v2, v4);
  if (record)
  {
    ldap_operation_release(record);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void _o_initiate_authentication(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if ((*(a1 + 288) & 4) != 0)
  {
    if (*(a1 + 152))
    {
      v2 = &off_2852A40E0;
      v3 = 5;
      do
      {
        v4 = *v2;
        if (CFSetContainsValue(*(a1 + 152), *v2))
        {
          Value = CFDictionaryGetValue(*(a1 + 248), v4);
          if (Value)
          {
            v6 = Value;
            v7 = malloc_type_malloc(0x20uLL, 0xE0040C8AD4411uLL);
            if (v7)
            {
              v7[1] = *(v2 + 1);
              *v7 = *(v2 - 1);
              *(v7 + 2) = v6;
              *v7 = *(a1 + 160);
              *(a1 + 160) = v7;
            }

            else
            {
              _os_assumes_log();
            }
          }
        }

        v2 += 4;
        --v3;
      }

      while (v3);
    }

    v8 = *(a1 + 160);
    if (v8)
    {
      *(a1 + 168) = v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      v10(a1, v9);
    }

    else
    {
      *(a1 + 292) = 7;
      v11 = *(a1 + 8);

      dispatch_barrier_sync_f(v11, a1, _s_next_state);
    }
  }

  else
  {

    _o_ldap_basic_auth(a1, 0);
  }
}

void _o_ldap_unbinding(dispatch_queue_t *a1)
{
  memset(v4, 0, sizeof(v4));
  DWORD2(v4[0]) = 3;
  dispatch_assert_queue_V2(a1[8]);
  v2 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, 0);
  v3 = _ldap_operation_simple_init(v2, v4);
  if (!_enqueue_operation_with_release(a1, v3))
  {
    dispatch_barrier_sync_f(a1[1], a1, _s_next_state);
  }
}

void _o_ldap_cleanup(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 120))
  {
    tcp_connection_cancel();
    if (*(a1 + 120))
    {
      tcp_connection_release();
      *(a1 + 120) = 0;
    }
  }

  atomic_fetch_and((a1 + 288), 0xFFFFFF7F);
  dispatch_barrier_sync(*(a1 + 208), &__block_literal_global);
  v2 = *(a1 + 292);
  dispatch_assert_queue_V2(*(a1 + 64));
  _o_disconnected(a1, (a1 + 72), v2);
  _o_disconnected(a1, (a1 + 88), v2);
  ldap_connection_retain(a1);
  v3 = *(a1 + 32);
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___o_disconnect_cleanup_block_invoke;
  v5[3] = &__block_descriptor_tmp_116;
  v5[4] = a1;
  v6 = v2;
  dispatch_group_notify(v3, global_queue, v5);
  dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
}

void ___ldap_async_function_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40));
  v2 = *(a1 + 40);

  ldap_connection_release(v2);
}

void ___o_start_connection_block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v3 + 208));
  if (a2 == 1)
  {
    *(v3 + 292) = 0;
    v5 = *(v3 + 8);

    dispatch_barrier_sync_f(v5, v3, _s_next_state);
  }

  else if (a2 == 3)
  {
    v4 = *(v3 + 8);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___state_set_block_invoke;
    v6[3] = &__block_descriptor_tmp_64;
    v6[4] = v3;
    v7 = 10;
    dispatch_barrier_sync(v4, v6);
  }
}

void ___o_initiate_tls_handshake_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___o_initiate_tls_handshake_block_invoke_cold_1();
    }

    v4 = *(a1 + 32);
    *(v4 + 292) = 10003;
    dispatch_barrier_sync_f(*(v4 + 8), v4, _s_next_state);
  }

  else
  {
    v5 = *(a1 + 32);
    ldap_connection_retain(v5);
    v6 = v5[7];
    v7 = v5[8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = ___ldap_async_function_block_invoke;
    v8[3] = &__block_descriptor_tmp_65;
    v8[4] = _o_negotiate_ssl;
    v8[5] = v5;
    dispatch_group_async(v6, v7, v8);
  }
}

void _o_negotiate_ssl(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = SSLCreateContext(*MEMORY[0x277CBECE8], kSSLClientSide, kSSLStreamType);
  *(a1 + 128) = v2;
  if (!v2)
  {
    return;
  }

  SSLSetConnection(v2, a1);
  if (!SSLSetIOFuncs(*(a1 + 128), _secure_read, _secure_write))
  {
    v4 = *(a1 + 256);
    if (v4)
    {
      SSLSetCertificate(*(a1 + 128), v4);
    }

    v5 = *(a1 + 288);
    if ((v5 & 0x400) != 0)
    {
      v7 = *(a1 + 128);
      v6 = *(a1 + 264);
    }

    else
    {
      if ((v5 & 0x1000) == 0)
      {
LABEL_15:
        SSLSetProtocolVersionMin(*(a1 + 128), kSSLProtocol3);
        ldap_connection_retain(a1);
        v10 = *(a1 + 16);
        global_queue = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___o_negotiate_ssl_block_invoke;
        block[3] = &__block_descriptor_tmp_70;
        block[4] = a1;
        dispatch_group_async(v10, global_queue, block);
        return;
      }

      v6 = *(a1 + 264);
      v7 = *(a1 + 128);
      if (!v6)
      {
        SSLClose(*(a1 + 128));
        v8 = *(a1 + 128);
        if (v8)
        {
          CFRelease(v8);
          *(a1 + 128) = 0;
        }

        goto LABEL_3;
      }
    }

    v9 = strlen(v6);
    SSLSetPeerDomainName(v7, v6, v9);
    goto LABEL_15;
  }

LABEL_3:
  *(a1 + 292) = 10003;
  v3 = *(a1 + 8);

  dispatch_barrier_sync_f(v3, a1, _s_next_state);
}

BOOL _enqueue_operation_with_release(uint64_t a1, atomic_ullong *a2)
{
  v2 = _enqueue_operation(a1, a2);
  v3 = v2;
  if (v2)
  {
    ldap_operation_release(v2);
  }

  return v3 != 0;
}

void *_ldap_base_operation_create(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v9 = ldap_operation_obj_alloc(a2);
  if (!v9)
  {
    _ldap_connection_create_cold_1();
  }

  v10 = v9;
  v9[4] = ldap_connection_retain(a1);
  *(v10 + 20) = _ldap_connection_next_messageID(a1);
  v10[9] = a4;
  v10[5] = a3;
  if (a5)
  {
    v10[3] = _Block_copy(a5);
  }

  return v10;
}

void _dispose_simple(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }
}

void **_ldap_operation_simple_init(uint64_t a1, _DWORD *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  *a2 = *(a1 + 80);
  v5 = length_LDAPMessage(a2);
  v6 = malloc_type_malloc(v5, 0xC65D15BDuLL);
  v3[11] = v6;
  v7 = v3 + 11;
  if (!v6)
  {
    goto LABEL_4;
  }

  if (encode_LDAPMessage(v6 + v5 - 1, v5, a2, (v3 + 12)))
  {
    free(*v7);
    *v7 = 0;
LABEL_4:
    ldap_operation_release(v3);
    return 0;
  }

  if ((*(v4 + 288) & 3) == 0 && *(v4 + 184))
  {
    v12 = v3[4];
    v13 = (*(v12 + 72) >> 5) & 1;
    minor_status = 0;
    output_message_buffer.length = 0;
    output_message_buffer.value = 0;
    v14 = v3[11];
    input_message_buffer.length = v3[12];
    input_message_buffer.value = v14;
    if (gss_wrap(&minor_status, *(v12 + 23), v13, *(v12 + 48), &input_message_buffer, 0, &output_message_buffer))
    {
      *v7 = 0;
      v3[12] = 0;
    }

    else
    {
      v15 = bswap32(output_message_buffer.length);
      v16 = output_message_buffer.length + 4;
      v3[12] = (output_message_buffer.length + 4);
      v17 = malloc_type_malloc(v16, 0xF8BF3850uLL);
      *v7 = v17;
      *v17 = v15;
      memcpy(*v7 + 4, output_message_buffer.value, output_message_buffer.length);
      gss_release_buffer(&minor_status, &output_message_buffer);
    }

    gss_release_buffer(&minor_status, &input_message_buffer);
  }

  v18 = *(v4 + 200);
  length_low = v3[12];
  if (v18)
  {
    output_message_buffer.length = 0;
    LODWORD(input_message_buffer.length) = 0;
    srp_encode(v18, *v7, length_low, &output_message_buffer, &input_message_buffer, v8, v9, v10);
    free(*v7);
    v20 = malloc_type_malloc(LODWORD(input_message_buffer.length), 0xE5F6AA9FuLL);
    *v7 = v20;
    memcpy(v20, output_message_buffer.length, LODWORD(input_message_buffer.length));
    length_low = LODWORD(input_message_buffer.length);
    v3[12] = LODWORD(input_message_buffer.length);
  }

  if (!length_low)
  {
    goto LABEL_4;
  }

  return v3;
}

uint64_t _secure_read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -9803;
  if (*(a1 + 289))
  {
    v4 = 4294957490;
  }

  else
  {
    v3 = *(a1 + 208);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___secure_read_block_invoke;
    v6[3] = &unk_278CB3520;
    v6[4] = &v7;
    v6[5] = a3;
    v6[6] = a1;
    v6[7] = a2;
    dispatch_barrier_sync(v3, v6);
    v4 = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t _secure_write(uint64_t a1, void *buffer, size_t *a3)
{
  if (!*(a1 + 120))
  {
    return 4294957490;
  }

  if (*(a1 + 289))
  {
    return 4294957490;
  }

  dispatch_data_create(buffer, *a3, 0, 0);
  tcp_connection_write();
  return 0;
}

void ___o_negotiate_ssl_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  do
  {
    v3 = SSLHandshake(*(v2 + 128));
    usleep(0x3E8u);
  }

  while (v3 == -9803);
  if (v3)
  {
    _os_assumes_log();
    v4 = *(v2 + 208);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___tls_handshake_loop_block_invoke;
    block[3] = &__block_descriptor_tmp_83;
    block[4] = v2;
    dispatch_barrier_sync(v4, block);
    tcp_connection_get_remote();
    v5 = *(v2 + 288);
    if ((v5 & 3) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134219010;
        *&buf[4] = v2;
        *&buf[12] = 1040;
        *&buf[14] = LOBYTE(v8[0]);
        *&buf[18] = 2098;
        *&buf[20] = v8;
        *&buf[28] = 1024;
        *&buf[30] = v3;
        *&buf[34] = 1024;
        *&buf[36] = v5;
        _os_log_error_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "connection: %p, address: %{public,network:sockaddr}.*P, error: %{AppleLDAPTypes:errSSL}d, flags: %{AppleLDAPTypes:flags}d", buf, 0x28u);
      }

      v6 = *(v2 + 208);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___fail_host_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_84;
      *&buf[32] = v2;
      v11 = 10003;
      dispatch_barrier_sync(v6, buf);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      *&buf[4] = v2;
      *&buf[12] = 1040;
      *&buf[14] = LOBYTE(v8[0]);
      *&buf[18] = 2098;
      *&buf[20] = v8;
      *&buf[28] = 1024;
      *&buf[30] = v3;
      *&buf[34] = 1024;
      *&buf[36] = v5;
      _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "connection: %p, TLS: auto, address: %{public,network:sockaddr}.*P, error: %{AppleLDAPTypes:errSSL}d, flags: %{AppleLDAPTypes:flags}d", buf, 0x28u);
    }
  }

  else
  {
    *(v2 + 292) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      tcp_connection_get_remote();
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        ___o_negotiate_ssl_block_invoke_cold_1();
      }
    }
  }

  dispatch_barrier_sync_f(*(v2 + 8), v2, _s_next_state);
  ldap_connection_release(*(a1 + 32));
}

void ___secure_read_block_invoke(uint64_t a1)
{
  buffer_ptr = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *v2;
  v8 = 0;
  if ((*(v3 + 292) - 10001) > 1)
  {
    v5 = *(v3 + 216);
    if (v5)
    {
      v6 = dispatch_data_create_map(v5, &buffer_ptr, &v8);
      if (v4 <= v8)
      {
        *(*(*(a1 + 32) + 8) + 24) = 0;
        memmove(*(a1 + 56), buffer_ptr, v4);
        v7 = *(*(a1 + 48) + 216);
        if (v7)
        {
          dispatch_release(v7);
          *(*(a1 + 48) + 216) = 0;
        }

        if (v8 > v4)
        {
          *(*(a1 + 48) + 216) = dispatch_data_create_subrange(v6, v4, v8 - v4);
        }
      }

      else
      {
        **(a1 + 40) = 0;
      }

      if (v6)
      {
        dispatch_release(v6);
      }
    }

    else
    {
      *v2 = 0;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -9806;
  }
}

void ___secure_write_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 57)
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 8);
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = ___state_set_block_invoke;
      v5[3] = &__block_descriptor_tmp_64;
      v5[4] = v3;
      v6 = 11;
      dispatch_barrier_sync(v4, v5);
    }
  }

  else
  {
    _schedule_read(*(a1 + 32));
  }

  dispatch_release(*(a1 + 40));
}

uint64_t _schedule_read(uint64_t result)
{
  if (result && (*(result + 288) & 0xC0) != 0 && (atomic_fetch_or((result + 288), 8u) & 8) == 0)
  {
    return tcp_connection_read();
  }

  return result;
}

void ___schedule_read_block_invoke(uint64_t a1, NSObject *concat, uint64_t a3)
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v5 + 208));
  atomic_fetch_and((v5 + 288), 0xFFFFFFF7);
  if (v3)
  {
    if (v3 == 57 || v3 == 54)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 134218240;
        *&v12[4] = v5;
        *&v12[12] = 1024;
        *&v12[14] = v3;
        _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "connection: %p, error: %{errno}d", v12, 0x12u);
      }

      v6 = *(v5 + 8);
      *v12 = MEMORY[0x277D85DD0];
      *&v12[8] = 0x40000000;
      *&v12[16] = ___state_set_block_invoke;
      v13 = &__block_descriptor_tmp_64;
      v14 = v5;
      v7 = 11;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ___schedule_read_block_invoke_cold_1();
      }

      v6 = *(v5 + 8);
      *v12 = MEMORY[0x277D85DD0];
      *&v12[8] = 0x40000000;
      *&v12[16] = ___state_set_block_invoke;
      v13 = &__block_descriptor_tmp_64;
      v14 = v5;
      v7 = 8;
    }

    LOBYTE(v15) = v7;
    dispatch_barrier_sync(v6, v12);
  }

  else
  {
    v8 = *(v5 + 216);
    if (v8)
    {
      concat = dispatch_data_create_concat(v8, concat);
      v9 = *(v5 + 216);
      if (v9)
      {
        dispatch_release(v9);
      }
    }

    else
    {
      dispatch_retain(concat);
    }

    *(v5 + 216) = concat;
    _schedule_read(v5);
    ldap_connection_retain(v5);
    v10 = *(v5 + 56);
    v11 = *(v5 + 64);
    *v12 = MEMORY[0x277D85DD0];
    *&v12[8] = 0x40000000;
    *&v12[16] = ___ldap_async_function_block_invoke;
    v13 = &__block_descriptor_tmp_65;
    v14 = _o_process_buffer;
    v15 = v5;
    dispatch_group_async(v10, v11, v12);
  }
}

void _o_process_buffer(uint64_t a1)
{
  processed = 0;
  buffer_ptr = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  dispatch_assert_queue_V2(*(a1 + 64));
  v2 = *(a1 + 128);
  if (v2)
  {
    output_message_buffer.length = 0;
    output_message_buffer.value = &output_message_buffer;
    v31 = 0x2000000000;
    v32 = 0;
    LODWORD(state.length) = 0;
    if (SSLGetSessionState(v2, &state) || LODWORD(state.length) != 2)
    {
      _Block_object_dispose(&output_message_buffer, 8);
      goto LABEL_63;
    }

    v3 = *(a1 + 208);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___o_process_buffer_block_invoke;
    block[3] = &unk_278CB3588;
    block[4] = &output_message_buffer;
    block[5] = a1;
    dispatch_sync(v3, block);
    v5 = (output_message_buffer.value + 24);
    v4 = *(output_message_buffer.value + 3);
    if (v4)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v6 = reallocf(v6, v4 + v7);
        processed = 0;
        v8 = SSLRead(*(a1 + 128), &v6[v7], *v5, &processed);
        if (processed)
        {
          v7 += processed;
          v9 = *(output_message_buffer.value + 3);
          if (v9 > processed)
          {
            *(output_message_buffer.value + 3) = v9 - processed;
          }

          else
          {
            *(output_message_buffer.value + 3) = 0;
          }
        }

        else
        {
          SSLGetBufferedReadSize(*(a1 + 128), output_message_buffer.value + 3);
        }

        if (v8)
        {
          v10 = v8 == -9803;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          break;
        }

        v5 = (output_message_buffer.value + 24);
        v4 = *(output_message_buffer.value + 3);
      }

      while (v4);
      if (v7)
      {
        v11 = dispatch_data_create(v6, v7, 0, *MEMORY[0x277D85CB0]);
        v34[3] = v11;
      }

      else if (v6)
      {
        free(v6);
      }
    }

    _Block_object_dispose(&output_message_buffer, 8);
  }

  else
  {
    v12 = *(a1 + 208);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 0x40000000;
    v28[2] = ___o_process_buffer_block_invoke_2;
    v28[3] = &unk_278CB35B0;
    v28[4] = &v33;
    v28[5] = a1;
    dispatch_barrier_sync(v12, v28);
  }

  concat = v34[3];
  if (concat)
  {
    v14 = *(a1 + 104);
    if (!v14)
    {
      goto LABEL_31;
    }

    concat = dispatch_data_create_concat(v14, v34[3]);
    v15 = *(a1 + 104);
    if (v15)
    {
      dispatch_release(v15);
      *(a1 + 104) = 0;
    }

    v16 = v34[3];
    if (v16)
    {
      dispatch_release(v16);
      v34[3] = 0;
    }

    if (concat)
    {
LABEL_31:
      v17 = dispatch_data_create_map(concat, &buffer_ptr, &processed);
      v18 = 0;
      do
      {
        if ((*(a1 + 288) & 3) != 0 || (v21 = *(a1 + 184)) == 0)
        {
          v19 = *(a1 + 200);
          if (v19)
          {
            LODWORD(state.length) = 0;
            output_message_buffer.length = 0;
            if (srp_decode(v19, buffer_ptr + v18, processed - v18, &output_message_buffer, &state))
            {
              v20 = processed;
            }

            else
            {
              v20 = processed;
              if (LODWORD(state.length))
              {
                _o_ldap_receive_messages(a1, output_message_buffer.length, LODWORD(state.length));
              }
            }

            v24 = v20 - v18;
          }

          else
          {
            v24 = _o_ldap_receive_messages(a1, buffer_ptr + v18, processed - v18);
          }
        }

        else
        {
          v22 = (buffer_ptr + v18);
          if (processed - v18 < 4)
          {
            v23 = 0;
          }

          else
          {
            v23 = bswap32(*v22);
          }

          v24 = v23 + 4;
          if (v23 + 4 <= processed - v18)
          {
            output_message_buffer.length = 0;
            output_message_buffer.value = 0;
            minor_status = 0;
            state.length = v23;
            state.value = v22 + 1;
            if (gss_unwrap(&minor_status, v21, &state, &output_message_buffer, 0, (a1 + 192)))
            {
              _os_assumes_log();
            }

            else if (output_message_buffer.length)
            {
              value = output_message_buffer.value;
              _o_ldap_receive_messages(a1, output_message_buffer.value, output_message_buffer.length);
              if (value)
              {
                free(value);
              }
            }
          }

          else
          {
            v24 = 0;
          }
        }

        v18 += v24;
        if (v24)
        {
          v25 = processed > v18;
        }

        else
        {
          v25 = 0;
        }
      }

      while (v25);
      if (processed <= v18)
      {
        if (v17)
        {
          dispatch_release(v17);
        }

        v27 = concat;
        goto LABEL_62;
      }

      *(a1 + 104) = dispatch_data_create_subrange(v17, v18, processed - v18);
      dispatch_release(concat);
      if (v17)
      {
        v27 = v17;
LABEL_62:
        dispatch_release(v27);
      }
    }
  }

LABEL_63:
  _Block_object_dispose(&v33, 8);
}

NSObject *___o_process_buffer_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 216);
  if (result)
  {
    result = dispatch_data_get_size(result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t ___o_process_buffer_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = *(*(result + 40) + 216);
  *(*(result + 40) + 216) = 0;
  return result;
}

unint64_t _o_ldap_receive_messages(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v93 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 64));
  v6 = 0;
  if (!a3)
  {
    return v6;
  }

  v7 = *MEMORY[0x277CBECE8];
  v73 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0;
    v8 = decode_LDAPMessage(a2 + v6, a3 - v6, &v75, &v74);
    if (v8)
    {
      break;
    }

    v9 = v74;
    dispatch_assert_queue_V2(*(v5 + 64));
    v10 = v75;
    if (!v75)
    {
      goto LABEL_77;
    }

    dispatch_assert_queue_V2(*(v5 + 64));
    v11 = *(v5 + 72);
    if (!v11)
    {
      goto LABEL_77;
    }

    while (*(v11 + 80) != v10)
    {
      v11 = *(v11 + 8);
      if (!v11)
      {
        goto LABEL_77;
      }
    }

    ldap_operation_retain(v11);
    v12 = *(v11 + 64);
    if (v12)
    {
      CFRelease(v12);
      *(v11 + 64) = 0;
    }

    v13 = *(v5 + 296);
    if (v13)
    {
      CFRelease(v13);
      *(v5 + 296) = 0;
    }

    if (*(v11 + 24))
    {
      v14 = *(v11 + 48);
      if (v14)
      {
        os_retain(v14);
        v72 = voucher_adopt();
      }

      else
      {
        v72 = 0;
      }

      if (SDWORD2(v75) > 10)
      {
        if (SDWORD2(v75) > 16)
        {
          if (DWORD2(v75) != 17 && DWORD2(v75) != 20)
          {
            if (DWORD2(v75) != 21)
            {
              goto LABEL_54;
            }

            goto LABEL_72;
          }
        }

        else if (DWORD2(v75) != 11 && DWORD2(v75) != 13 && DWORD2(v75) != 15)
        {
          goto LABEL_54;
        }

LABEL_70:
        *(v11 + 64) = CFStringCreateWithBytes(v7, v78, *(&v77 + 1), 0x8000100u, 0);
        v42 = v76;
        v43 = v5;
        v44 = v11;
      }

      else
      {
        if (SDWORD2(v75) <= 5)
        {
          if (!DWORD2(v75))
          {
            goto LABEL_72;
          }

          if (DWORD2(v75) != 2)
          {
            if (DWORD2(v75) == 5)
            {
              v66 = v5;
              v15 = v77;
              v69 = *(&v77 + 1);
              dispatch_assert_queue_V2(*(*(v11 + 32) + 64));
              v71 = v15;
              theDict = CFDictionaryCreateMutable(v7, v15, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (!theDict)
              {
                _ldap_connection_create_cold_1();
              }

              v16 = CFStringCreateWithBytes(v7, *(&v76 + 1), v76, 0x8000100u, 0);
              if (!v16)
              {
                _ldap_connection_create_cold_1();
              }

              v17 = v16;
              v67 = v9;
              v64 = a2;
              v65 = a3;
              Mutable = CFArrayCreateMutable(v7, 1, MEMORY[0x277CBF128]);
              if (!Mutable)
              {
                _ldap_connection_create_cold_1();
              }

              v19 = Mutable;
              CFArrayAppendValue(Mutable, v17);
              CFDictionarySetValue(theDict, @"dn", v19);
              CFRelease(v17);
              CFRelease(v19);
              if (v15)
              {
                v20 = 0;
                do
                {
                  v21 = v69 + 32 * v20;
                  v22 = CFStringCreateWithBytes(v7, *(v21 + 8), *v21, 0x8000100u, 0);
                  if (v22)
                  {
                    v23 = v22;
                    v24 = CFArrayCreateMutable(v7, *(v21 + 16), MEMORY[0x277CBF128]);
                    if (!v24)
                    {
                      _ldap_connection_create_cold_1();
                    }

                    v25 = v24;
                    if (*(v21 + 16))
                    {
                      v26 = 0;
                      v27 = 0;
                      do
                      {
                        v28 = *(v21 + 24) + v26;
                        v29 = CFStringCreateWithBytes(v7, *(v28 + 8), *v28, 0x8000100u, 0);
                        if (v29 || (v29 = CFDataCreate(v7, *(v28 + 8), *v28)) != 0)
                        {
                          v30 = v29;
                          CFArrayAppendValue(v25, v29);
                          CFRelease(v30);
                        }

                        else
                        {
                          _os_assumes_log();
                        }

                        ++v27;
                        v26 += 16;
                        v7 = v73;
                      }

                      while (v27 < *(v21 + 16));
                    }

                    CFDictionarySetValue(theDict, v23, v25);
                    CFRelease(v25);
                    CFRelease(v23);
                  }

                  else
                  {
                    _os_assumes_log();
                  }

                  ++v20;
                }

                while (v20 != v71);
              }

              v47 = atomic_fetch_add((v11 + 136), 1u) + 1;
              v48 = v47 == 50 || v47 % 100 == 0;
              if (v48 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v57 = *(v11 + 32);
                v58 = *(v11 + 80);
                v59 = *(v11 + 136);
                *buf = 134218496;
                *&buf[4] = v57;
                v89 = 1024;
                v90 = v58;
                v91 = 1024;
                v92 = v59;
                _os_log_debug_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "connection: %p, ldap msgid: %u, received results: %d - status", buf, 0x18u);
              }

              ldap_operation_retain(v11);
              v49 = *(v11 + 32);
              v51 = *(v49 + 24);
              v50 = *(v49 + 32);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 0x40000000;
              block[2] = ___o_query_result_block_invoke;
              v84 = &__block_descriptor_tmp_82;
              v85 = v11;
              v86 = v11;
              v87 = theDict;
              dispatch_group_async(v50, v51, block);
              a3 = v65;
              v5 = v66;
              a2 = v64;
              v9 = v67;
              goto LABEL_72;
            }

LABEL_54:
            _os_assumes_log();
LABEL_72:
            v45 = *(v11 + 64);
            if (v45)
            {
              *(v5 + 296) = v45;
              CFRetain(v45);
            }

            if (v72)
            {
              v46 = voucher_adopt();
              os_release(v46);
            }

            goto LABEL_76;
          }

          v39 = *(v5 + 136);
          if (v39)
          {
            free(v39);
            *(v5 + 136) = 0;
          }

          if (v79)
          {
            v40 = *v79;
            *(v5 + 144) = *v79;
            v41 = malloc_type_malloc(v40 + 1, 0x7D2E3290uLL);
            *(v5 + 136) = v41;
            memcpy(v41, *(v79 + 8), *(v5 + 144));
            *(*(v5 + 136) + *(v5 + 144)) = 0;
          }

          goto LABEL_70;
        }

        if (DWORD2(v75) != 6)
        {
          if (DWORD2(v75) == 7)
          {
            goto LABEL_72;
          }

          if (DWORD2(v75) != 9)
          {
            goto LABEL_54;
          }

          goto LABEL_70;
        }

        v31 = a2;
        v32 = a3;
        v33 = *(&v82 + 1);
        if (!*(&v82 + 1) || v76)
        {
          goto LABEL_94;
        }

        v34 = *(v11 + 120);
        v68 = v9;
        if (v34)
        {
          free(v34);
          *(v11 + 120) = 0;
          v33 = *(&v82 + 1);
        }

        v35 = *v33;
        if (v35)
        {
          v36 = 0;
          for (i = 0; i < v35; ++i)
          {
            if (!strncmp(*(*(v33 + 1) + v36 + 8), "1.2.840.113556.1.4.319", *(*(v33 + 1) + v36)))
            {
              memset(block, 0, sizeof(block));
              *buf = 0;
              v38 = *(*(v33 + 1) + v36 + 24);
              if (!decode_PagedSearchControlValue(v38[1], *v38, block, buf))
              {
                v52 = v5;
                v53 = block[1];
                if (block[1])
                {
                  *(v11 + 140) = block[0];
                  v54 = malloc_type_malloc(v53, 0x28332B54uLL);
                  *(v11 + 120) = v54;
                  *(v11 + 128) = v53;
                  memcpy(v54, block[2], v53);
                }

                free_PagedSearchControlValue(block);
                v5 = v52;
                break;
              }

              v33 = *(&v82 + 1);
              v35 = **(&v82 + 1);
            }

            v36 += 32;
          }
        }

        v9 = v68;
        if (*(v11 + 120))
        {
          a3 = v32;
          a2 = v31;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v60 = *(v11 + 80);
            v61 = *(v11 + 136);
            v62 = *(v11 + 140);
            LODWORD(block[0]) = 134218752;
            *(block + 4) = v5;
            WORD2(block[1]) = 1024;
            *(&block[1] + 6) = v60;
            WORD1(block[2]) = 1024;
            HIDWORD(block[2]) = v61;
            LOWORD(v84) = 1024;
            *(&v84 + 2) = v62;
            _os_log_debug_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "connection: %p, ldap msgid: %u, delivered: %d, approx. remaining: %u", block, 0x1Eu);
          }

          v43 = v5;
          v44 = v11;
          v42 = 10010;
        }

        else
        {
LABEL_94:
          a3 = v32;
          a2 = v31;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v55 = *(v11 + 80);
            v56 = *(v11 + 136);
            LODWORD(block[0]) = 134218496;
            *(block + 4) = v5;
            WORD2(block[1]) = 1024;
            *(&block[1] + 6) = v55;
            WORD1(block[2]) = 1024;
            HIDWORD(block[2]) = v56;
            _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, ldap msgid: %u, delivered: %d", block, 0x18u);
          }

          v43 = v5;
          v44 = v11;
          v42 = 0;
        }
      }

      _o_operation_complete(v43, v44, v42);
      goto LABEL_72;
    }

    _o_operation_complete(v5, v11, 0);
LABEL_76:
    ldap_operation_release(v11);
LABEL_77:
    v6 += v9;
    free_LDAPMessage(&v75);
    if (v6 >= a3)
    {
      return v6;
    }
  }

  if (v8 != 1859794437 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _o_ldap_receive_messages_cold_5();
  }

  return v6;
}

void _o_operation_complete(uint64_t a1, uint64_t a2, int a3)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  v6 = (a2 + 40);
  v7 = 5;
  if (!a3)
  {
    v7 = 1;
  }

  if ((atomic_fetch_or(v6, v7) & 1) == 0)
  {
    v8 = atomic_fetch_and(v6, 0xFFFFFFFFFFFFFFF7);
    if ((*(a2 + 41) & 4) != 0)
    {
      v9 = *(a2 + 112);
      if (v9)
      {
        dispatch_source_cancel(v9);
        v10 = *(a2 + 112);
        if (v10)
        {
          dispatch_release(v10);
          *(a2 + 112) = 0;
        }
      }
    }

    if ((v8 & 8) != 0)
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 16);
      v13 = (a1 + 80);
      if (v11)
      {
        v13 = (v11 + 16);
      }

      *v13 = v12;
      *v12 = v11;
      if ((*(a2 + 41) & 1) == 0)
      {
        atomic_fetch_add((a1 + 112), 0xFFFFFFFFFFFFFFFFLL);
      }

      if ((atomic_fetch_or((a2 + 40), 2uLL) & 2) == 0)
      {
        if (*(a2 + 24))
        {
          v14 = *(a2 + 48);
          if (v14)
          {
            os_retain(v14);
            v15 = voucher_adopt();
          }

          else
          {
            v15 = 0;
          }

          v17 = *(a1 + 24);
          v16 = *(a1 + 32);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = ___o_operation_complete_block_invoke;
          block[3] = &__block_descriptor_tmp_78;
          v20 = a3;
          block[4] = a1;
          block[5] = a2;
          dispatch_group_async(v16, v17, block);
          if (v15)
          {
            v18 = voucher_adopt();
            os_release(v18);
          }
        }

        else
        {
          dispatch_group_leave(*(a1 + 56));
          ldap_operation_release(a2);
        }
      }

      _o_ldap_wakeup(a1);
    }
  }
}

void ___o_operation_complete_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = v2 == 10010;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 80);
    v6 = 134218496;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    v10 = 1024;
    v11 = v2;
    _os_log_error_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "connection: %p, ldap msgid: %u, error: %{AppleLDAPTypes:ldap_error_t}d", &v6, 0x18u);
  }

  (*(*(*(a1 + 40) + 24) + 16))();
  dispatch_group_leave(*(*(a1 + 32) + 56));
  ldap_operation_release(*(a1 + 40));
}

void _o_ldap_wakeup(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(*(a1 + 64));
  if (*(a1 + 112) <= 99)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = (v2 + 8);
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      v6 = (a1 + 96);
      if (v4)
      {
        v6 = (v4 + 16);
      }

      *v6 = v5;
      *v5 = v4;
      *v3 = 0;
      v7 = *(a1 + 80);
      *(v2 + 16) = v7;
      *v7 = v2;
      *(a1 + 80) = v3;
      atomic_fetch_add((a1 + 112), 1uLL);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = *(v2 + 80);
        v9 = *(v2 + 96);
        *buf = 134218496;
        v18 = a1;
        v19 = 1024;
        v20 = v8;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, ldap msgid: %d, send data size: %d", buf, 0x18u);
      }

      v10 = *(a1 + 128);
      if (v10)
      {
        processed = 0;
        v11 = SSLWrite(v10, *(v2 + 88), *(v2 + 96), &processed);
        if (v11)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v15 = *(v2 + 80);
            *buf = 134218752;
            v18 = a1;
            v19 = 1024;
            v20 = v15;
            v21 = 1024;
            v22 = processed;
            v23 = 1024;
            v24 = v11;
            _os_log_error_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "connection: %p, ldap msgid: %d, SSL processed: %d, SSL error: %{AppleLDAPTypes:errSSL}d", buf, 0x1Eu);
          }

          goto LABEL_11;
        }

        if (!*(v2 + 24))
        {
LABEL_11:
          v12 = *(v2 + 32);
          v13 = v2;
          v14 = v11;
LABEL_17:
          _o_operation_complete(v12, v13, v14);
        }
      }

      else
      {
        if (!*(a1 + 120))
        {
          v12 = a1;
          v13 = v2;
          v14 = 10001;
          goto LABEL_17;
        }

        ldap_operation_retain(v2);
        tcp_connection_write_buffer();
      }

      _schedule_read(a1);
    }
  }
}

void ___o_ldap_wakeup_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___o_ldap_wakeup_block_invoke_cold_1();
    }

    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  if (!v6[3])
  {
LABEL_4:
    v4 = *(a1 + 32);
    v5 = *(*(v4 + 32) + 64);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 0x40000000;
    v7[2] = ___o_ldap_wakeup_block_invoke_79;
    v7[3] = &__block_descriptor_tmp_80;
    v7[4] = v4;
    v8 = v2;
    dispatch_barrier_async(v5, v7);
    return;
  }

  ldap_operation_release(v6);
}

void ___o_ldap_wakeup_block_invoke_79(uint64_t a1)
{
  _o_operation_complete(*(*(a1 + 32) + 32), *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  ldap_operation_release(v2);
}

void ___o_query_result_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 104) + 16))();
  CFRelease(*(a1 + 48));
  v2 = *(a1 + 40);

  ldap_operation_release(v2);
}

void ___tls_handshake_loop_block_invoke(uint64_t a1)
{
  SSLClose(*(*(a1 + 32) + 128));
  v2 = *(*(a1 + 32) + 128);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 128) = 0;
  }
}

void ___fail_host_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 120))
  {
    memset(v12, 0, 28);
    if (tcp_connection_get_remote())
    {
      v2 = *(a1 + 32) + 224;
      while (1)
      {
        v2 = *v2;
        if (!v2)
        {
          break;
        }

        if (*(v2 + 16) == *&v12[0] && *(v2 + 24) == *(&v12[0] + 1) && *(v2 + 32) == *&v12[1] && *(v2 + 40) == DWORD2(v12[1]))
        {
          *(v2 + 44) = *(a1 + 40);
          *(v2 + 48) = time(0) + 60;
          return;
        }
      }

      v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040C46062B5uLL);
      *(v6 + 11) = *(a1 + 40);
      *(v6 + 6) = time(0) + 60;
      *(v6 + 1) = v12[0];
      *(v6 + 28) = *(v12 + 12);
      v7 = *(*(a1 + 32) + 224);
      *v6 = v7;
      v8 = *(a1 + 32);
      if (v7)
      {
        v9 = (*(v8 + 224) + 8);
      }

      else
      {
        v9 = (v8 + 232);
      }

      *v9 = v6;
      *(*(a1 + 32) + 224) = v6;
      *(v6 + 1) = *(a1 + 32) + 224;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = *(a1 + 40);
        *buf = 134218754;
        v14 = v10;
        v15 = 1024;
        v16 = v11;
        v17 = 1040;
        v18 = LOBYTE(v12[0]);
        v19 = 2098;
        v20 = v12;
        _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "failed connection: %p, error: %{AppleLDAPTypes:ldap_error_t}d, addres: %{public,network:sockaddr}.*P", buf, 0x22u);
      }
    }
  }
}

void ___o_read_rootdse_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 208);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 0x40000000;
  v9[2] = ___o_read_rootdse_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_85;
  v9[4] = v6;
  v9[5] = a3;
  dispatch_barrier_sync(v7, v9);
  v8 = *(a1 + 32);
  *(v8 + 292) = a4;
  dispatch_barrier_sync_f(*(v8 + 8), v8, _s_next_state);
}

void ___o_read_rootdse_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 152);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 152) = 0;
  }

  *(*(a1 + 32) + 152) = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF158]);
  v3 = *(a1 + 40);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, LDAP_SUPPORTED_SASL_MECHANISMS);
    if (Value)
    {
      v5 = Value;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v7 = Count;
        for (i = 0; i != v7; ++i)
        {
          v9 = *(*(a1 + 32) + 152);
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          CFSetAddValue(v9, ValueAtIndex);
        }
      }
    }
  }

  v11 = *(*(a1 + 32) + 152);

  CFSetAddValue(v11, @"simple");
}

void _o_ldap_basic_auth(uint64_t a1, const __CFDictionary *a2)
{
  if (_ldap_mechopts_has_valid_dn(a2))
  {
    if ((*(a1 + 288) & 0x4023) != 0)
    {
      dispatch_assert_queue_V2(*(a1 + 64));
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      memset(v13, 0, sizeof(v13));
      DWORD2(v10) = 1;
      LODWORD(v11) = 3;
      DWORD2(v12) = 1;
      if (a2)
      {
        Value = CFDictionaryGetValue(a2, LDAP_MECHANISM_OPTION_RECORD_DN);
        if (Value)
        {
          _fill_cstring_from_cfstring(&v12, Value, &v11 + 1);
        }

        v5 = CFDictionaryGetValue(a2, LDAP_MECHANISM_OPTION_PASSWORD);
        if (v5)
        {
          _fill_cstring_from_cfstring(v13 + 1, v5, v13);
        }
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 0x40000000;
      v9[2] = ___o_ldap_basic_auth_block_invoke;
      v9[3] = &__block_descriptor_tmp_91;
      v9[4] = a1;
      v6 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v9);
      v7 = _ldap_operation_simple_init(v6, &v10);
      if (!_enqueue_operation_with_release(a1, v7))
      {
        dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
      }

      free_LDAPMessage(&v10);
      return;
    }

    v8 = 8;
  }

  else
  {
    v8 = 34;
  }

  *(a1 + 292) = v8;

  _ldap_next_authmechanism(a1);
}

void _o_ldap_crammd5_auth(uint64_t a1, const __CFDictionary *a2)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (_ldap_mechopts_has_valid_dn(a2))
  {
    memset(v7, 0, sizeof(v7));
    _ldap_sasl_fill(v7, @"CRAM-MD5", a2, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___o_ldap_crammd5_auth_block_invoke;
    v6[3] = &__block_descriptor_tmp_96;
    v6[4] = a1;
    v6[5] = a2;
    v4 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v6);
    v5 = _ldap_operation_simple_init(v4, v7);
    free_LDAPMessage(v7);
    if (!_enqueue_operation_with_release(a1, v5))
    {
      dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
    }
  }

  else
  {
    *(a1 + 292) = 34;

    _ldap_next_authmechanism(a1);
  }
}

void _o_ldap_digestmd5_auth(uint64_t a1, const __CFDictionary *a2)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (_ldap_mechopts_has_valid_dn(a2))
  {
    memset(v7, 0, sizeof(v7));
    _ldap_sasl_fill(v7, @"DIGEST-MD5", a2, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___o_ldap_digestmd5_auth_block_invoke;
    v6[3] = &__block_descriptor_tmp_98;
    v6[4] = a1;
    v6[5] = a2;
    v4 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v6);
    v5 = _ldap_operation_simple_init(v4, v7);
    free_LDAPMessage(v7);
    if (!_enqueue_operation_with_release(a1, v5))
    {
      _ldap_next_authmechanism(a1);
    }
  }

  else
  {
    *(a1 + 292) = 34;

    _ldap_next_authmechanism(a1);
  }
}

uint64_t _o_ldap_gssapi_auth(uint64_t a1, const void *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0x600409743DB05uLL);
  dispatch_assert_queue_V2(*(a1 + 64));
  *v4 = CFRetain(a2);
  Value = CFDictionaryGetValue(a2, LDAP_MECHANISM_OPTION_GSSAPI_INITIATOR_CREDENTIAL);
  *(v4 + 2) = 0;
  *(v4 + 3) = Value;
  *(v4 + 1) = 0;
  v6 = CFDictionaryGetValue(a2, LDAP_MECHANISM_OPTION_GSSAPI_TARGET_NAME);
  *(v4 + 4) = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  else if ((*(a1 + 289) & 4) != 0)
  {
    minor_status = 0;
    input_name_buffer.length = 0;
    input_name_buffer.value = 0;
    input_name_buffer.length = asprintf(&input_name_buffer.value, "ldap@%s", *(a1 + 264));
    gss_import_name(&minor_status, &input_name_buffer, MEMORY[0x277CCAEF8], v4 + 4);
    gss_release_buffer(&minor_status, &input_name_buffer);
  }

  return _o_ldap_gssapi_negotiate(a1, v4, 0);
}

void _o_ldap_srp_auth(uint64_t a1, const __CFDictionary *a2)
{
  dispatch_assert_queue_V2(*(a1 + 64));
  if (_ldap_mechopts_has_valid_dn(a2))
  {
    memset(v7, 0, sizeof(v7));
    _ldap_sasl_fill(v7, @"SRP", a2, 0);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___o_ldap_srp_auth_block_invoke;
    v6[3] = &__block_descriptor_tmp_114;
    v6[4] = a1;
    v6[5] = a2;
    v6[6] = 0;
    v4 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v6);
    v5 = _ldap_operation_simple_init(v4, v7);
    free_LDAPMessage(v7);
    if (!_enqueue_operation_with_release(a1, v5))
    {
      dispatch_barrier_sync_f(*(a1 + 8), a1, _s_next_state);
    }
  }

  else
  {
    *(a1 + 292) = 34;

    _ldap_next_authmechanism(a1);
  }
}

BOOL _ldap_mechopts_has_valid_dn(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, LDAP_MECHANISM_OPTION_RECORD_DN);
  if (!Value)
  {
    return 0;
  }

  v6 = 0;
  v2 = _cstr_from_cfstring(Value, &v6);
  v3 = _short_username_from_dn(v2);
  v4 = v3 != 0;
  if (v3)
  {
    free(v3);
  }

  if (v6)
  {
    free(v6);
  }

  return v4;
}

void _ldap_next_authmechanism(void *context)
{
  v2 = context[21];
  if (v2 && (v3 = *v2) != 0)
  {
    context[21] = v3;
    ldap_connection_retain(context);
    v4 = context[8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 0x40000000;
    v6[2] = ___ldap_next_authmechanism_block_invoke;
    v6[3] = &__block_descriptor_tmp_93;
    v6[4] = v3;
    v6[5] = context;
    dispatch_barrier_async(v4, v6);
  }

  else
  {
    v5 = context[1];

    dispatch_barrier_sync_f(v5, context, _s_next_state);
  }
}

void ___o_ldap_basic_auth_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  *(v3 + 292) = a3;
  dispatch_barrier_sync_f(*(v3 + 8), v3, _s_next_state);
}

char *_short_username_from_dn(const char *a1)
{
  v2 = strlen(a1);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = malloc_type_malloc(v2 + 1, 0x65F1A074uLL);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 0x40000000;
  v23 = ___dn_normalize_block_invoke;
  v24 = &unk_278CB36F8;
  v25 = &v27;
  v26 = &v31;
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    v5 = 1;
    while (1)
    {
      v6 = a1[v3];
      if (v6 > 0x3C)
      {
        break;
      }

      if (v6 != 32)
      {
        if (v6 == 44)
        {
          v23(v22);
          v5 = 1;
          LOBYTE(v6) = 44;
          goto LABEL_7;
        }

LABEL_15:
        v5 = 0;
        goto LABEL_19;
      }

      if (((v4 | v5) & 1) == 0)
      {
        v5 = 0;
        v4 = 0;
        LOBYTE(v6) = 32;
        goto LABEL_19;
      }

LABEL_20:
      if (++v3 >= v2)
      {
        v12 = v28[3];
        goto LABEL_24;
      }
    }

    if (v6 == 61)
    {
      v4 = 0;
      v5 = 1;
      goto LABEL_19;
    }

    if (v6 != 92)
    {
      goto LABEL_15;
    }

    v7 = 92;
    if (v4)
    {
      v7 = __tolower(92);
    }

    v8 = v32[3];
    v9 = v28[3];
    v28[3] = v9 + 1;
    *(v8 + v9) = v7;
    if (++v3 >= v2)
    {
      goto LABEL_20;
    }

    v6 = a1[v3];
    if ((v4 & 1) == 0)
    {
      v4 = 0;
      goto LABEL_19;
    }

    LOBYTE(v6) = __tolower(v6);
LABEL_7:
    v4 = 1;
LABEL_19:
    v10 = v32[3];
    v11 = v28[3];
    v28[3] = v11 + 1;
    *(v10 + v11) = v6;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_24:
  *(v32[3] + v12) = 0;
  v13 = v32[3];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  v14 = 0;
  for (i = v13; ; ++i)
  {
    v16 = *i;
    if (v16 > 0x5B)
    {
      if (v16 == 92 && !*++i)
      {
        goto LABEL_37;
      }

      continue;
    }

    if (v16 == 61)
    {
      v14 = i + 1;
      continue;
    }

    if (!*i)
    {
      goto LABEL_37;
    }

    if (v16 == 44)
    {
      break;
    }
  }

  if (v14)
  {
    v18 = &i[~v14];
    v19 = (v18 + 2);
    if (v18 != -2)
    {
      v20 = malloc_type_malloc((v18 + 2), 0xCA192FA5uLL);
      strlcpy(v20, v14, v19);
      goto LABEL_38;
    }
  }

LABEL_37:
  v20 = 0;
LABEL_38:
  free(v13);
  return v20;
}

uint64_t ___dn_normalize_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 24) - 1;
  while (v2)
  {
    v3 = *(*(*(*(result + 40) + 8) + 24) + v2--);
    if (v3 != 32)
    {
      *(v1 + 24) = v2 + 2;
      return result;
    }
  }

  return result;
}

void ___ldap_next_authmechanism_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 24))(*(a1 + 40), *(*(a1 + 32) + 16));
  v2 = *(a1 + 40);

  ldap_connection_release(v2);
}

char *_ldap_sasl_fill(uint64_t a1, const __CFString *a2, CFDictionaryRef theDict, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 8) = 1;
  *(a1 + 16) = 3;
  *(a1 + 40) = 2;
  *(a1 + 64) = a4;
  if (a2)
  {
    _fill_cstring_from_cfstring((a1 + 56), a2, (a1 + 48));
  }

  result = CFDictionaryGetValue(theDict, LDAP_MECHANISM_OPTION_RECORD_DN);
  if (result)
  {

    return _fill_cstring_from_cfstring((a1 + 32), result, (a1 + 24));
  }

  return result;
}

void ___o_ldap_crammd5_auth_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), LDAP_MECHANISM_OPTION_RECORD_DN);
    v5 = CFDictionaryGetValue(*(a1 + 40), LDAP_MECHANISM_OPTION_PASSWORD);
    v21 = 0;
    _cstr_from_cfstring(v5, &v21);
    v6 = heim_cram_md5_create();
    if (v6)
    {
      v7 = v6;
      v20 = 0;
      v8 = _cstr_from_cfstring(Value, &v20);
      v9 = _short_username_from_dn(v8);
      v19 = 0;
      v10 = asprintf(&v19, "%s %s", v9, v7);
      if (v10 == -1)
      {
        v16 = 0;
      }

      else
      {
        v11 = v10;
        v12 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
        memset(v18, 0, sizeof(v18));
        v13 = v19;
        *v12 = v11;
        v12[1] = v13;
        _ldap_sasl_fill(v18, @"CRAM-MD5", *(a1 + 40), v12);
        v14 = *(a1 + 32);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 0x40000000;
        v17[2] = ___o_ldap_crammd5_auth_block_invoke_2;
        v17[3] = &__block_descriptor_tmp_95;
        v17[4] = v14;
        v15 = _ldap_base_operation_create(v14, 104, 512, _dispose_simple, v17);
        v16 = _ldap_operation_simple_init(v15, v18);
        free_LDAPMessage(v18);
      }

      if (v20)
      {
        free(v20);
      }

      if (v9)
      {
        free(v9);
      }

      free(v7);
    }

    else
    {
      v16 = 0;
    }

    if (v21)
    {
      free(v21);
      v21 = 0;
    }

    if (!_enqueue_operation_with_release(*(a1 + 32), v16))
    {
      _ldap_next_authmechanism(*(a1 + 32));
    }
  }
}

uint64_t _ldap_continue_sasl(void *context, uint64_t a2)
{
  v2 = a2;
  v4 = a2 == 0;
  if (!a2)
  {
LABEL_8:
    *(context + 73) = v2;
    dispatch_barrier_sync_f(context[1], context, _s_next_state);
    return v4;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    _ldap_continue_sasl_cold_1();
  }

  result = 0;
  if (v2 <= 47)
  {
    if (v2 != 7)
    {
      if (v2 != 14)
      {
        return result;
      }

      if (context[17])
      {
        return 1;
      }

      _os_assumes_log();
    }
  }

  else if (v2 != 48)
  {
    if (v2 != 80)
    {
      if (v2 != 49)
      {
        return result;
      }

      goto LABEL_8;
    }

    *(context + 73) = 49;
    dispatch_barrier_sync_f(context[1], context, _s_next_state);
    return 0;
  }

  *(context + 73) = v2;
  _ldap_next_authmechanism(context);
  return 0;
}

void ___o_ldap_digestmd5_auth_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    v25 = 0;
    v26 = 0;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v17[0] = 0;
    v27 = 0;
    v6 = heim_digest_create();
    if (v6)
    {
      Value = CFDictionaryGetValue(v4, LDAP_MECHANISM_OPTION_RECORD_DN);
      v8 = CFDictionaryGetValue(v4, LDAP_MECHANISM_OPTION_PASSWORD);
      if (heim_digest_parse_challenge())
      {
        v9 = 0;
      }

      else
      {
        v10 = _cstr_from_cfstring(Value, &v27);
        v9 = _short_username_from_dn(v10);
        if ((*(v5 + 289) & 0x14) != 0 && *(v5 + 264))
        {
          asprintf(v17, "ldap/%s", *(v5 + 264));
        }

        heim_digest_set_key();
        heim_digest_set_key();
        _cstr_from_cfstring(v8, &v26);
        heim_digest_set_key();
        if (v26)
        {
          free(v26);
        }
      }

      if (v27)
      {
        free(v27);
      }

      if (v9)
      {
        free(v9);
      }
    }

    if (v17[0])
    {
      free(v17[0]);
    }

    if (v6)
    {
      response = heim_digest_create_response();
      if (response)
      {
        v12 = response;
        v13 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        *v17 = 0u;
        v13[1] = v12;
        *v13 = strlen(v12);
        _ldap_sasl_fill(v17, @"DIGEST-MD5", *(a1 + 40), v13);
        v14 = *(a1 + 32);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 0x40000000;
        v16[2] = ___o_ldap_digestmd5_auth_block_invoke_2;
        v16[3] = &__block_descriptor_tmp_97;
        v16[4] = v14;
        v16[5] = v25;
        v16[6] = v6;
        v15 = _ldap_base_operation_create(v14, 104, 512, _dispose_simple, v16);
        v6 = _ldap_operation_simple_init(v15, v17);
        *v13 = 0;
        v13[1] = 0;
        free_LDAPMessage(v17);
      }

      else
      {
        heim_digest_release();
        v6 = 0;
      }
    }

    if (!_enqueue_operation_with_release(*(a1 + 32), v6))
    {
      _ldap_next_authmechanism(*(a1 + 32));
    }
  }
}

uint64_t ___o_ldap_digestmd5_auth_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 == 49)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ___o_ldap_digestmd5_auth_block_invoke_2_cold_1();
      }

      v5 = *(a1 + 32);
      if (**(v5 + 168))
      {
        v6 = 7;
LABEL_13:
        _ldap_continue_sasl(v5, v6);
        return heim_digest_release();
      }
    }

    else
    {
      v5 = *(a1 + 32);
    }

    v6 = a3;
    goto LABEL_13;
  }

  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  if (!strcmp(*(v8 + 136), *(a1 + 40)))
  {
    *(v8 + 292) = 0;
    v10 = *(v8 + 8);
    v9 = v8;
  }

  else
  {
    tcp_connection_get_remote();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___o_ldap_digestmd5_auth_block_invoke_2_cold_2();
    }

    v9 = *v7;
    *(v9 + 292) = 10004;
    v10 = *(v9 + 8);
  }

  dispatch_barrier_sync_f(v10, v9, _s_next_state);
  return heim_digest_release();
}

uint64_t _o_ldap_gssapi_negotiate(uint64_t a1, CFDictionaryRef *a2, gss_buffer_desc_struct *a3)
{
  buffer.length = 0;
  buffer.value = 0;
  *minor_status = 0;
  time_rec = 0;
  dispatch_assert_queue_V2(*(a1 + 64));
  inited = gss_init_sec_context(&minor_status[1], a2[3], a2 + 1, a2[4], 0, 6u, 0, a2[2], a3, 0, &buffer, minor_status, &time_rec);
  if (inited)
  {
    if (inited == 1)
    {
      if (buffer.length)
      {
        v7 = v22;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 0x40000000;
        v22[2] = ___o_ldap_gssapi_negotiate_block_invoke;
        v22[3] = &__block_descriptor_tmp_106;
        v22[4] = a1;
        v22[5] = a2;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        goto LABEL_6;
      }
    }

    else
    {
      *(a1 + 292) = 7;
      _free_ldap_gss_context(a2);
      _ldap_next_authmechanism(a1);
    }

    return gss_release_buffer(&minor_status[1], &buffer);
  }

  v7 = v21;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = ___o_ldap_gssapi_negotiate_block_invoke_3;
  v21[3] = &__block_descriptor_tmp_108;
  v21[4] = a1;
  v21[5] = a2;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  if (!buffer.length)
  {
    v8 = 0;
    goto LABEL_10;
  }

LABEL_6:
  v8 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
  value = buffer.value;
  *v8 = buffer.length;
  v8[1] = value;
LABEL_10:
  _ldap_sasl_fill(&v13, @"GSSAPI", *a2, v8);
  v11 = _ldap_base_operation_create(a1, 104, 512, _dispose_simple, v7);
  v12 = _ldap_operation_simple_init(v11, &v13);
  if (!_enqueue_operation_with_release(a1, v12))
  {
    *(a1 + 292) = 7;
    _free_ldap_gss_context(a2);
    _ldap_next_authmechanism(a1);
  }

  return free_LDAPMessage(&v13);
}

void ___o_ldap_gssapi_negotiate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___o_ldap_gssapi_negotiate_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_105;
    dispatch_sync(*(*(a1 + 32) + 64), v5);
  }

  else
  {
    v4 = *(a1 + 40);

    _free_ldap_gss_context(v4);
  }
}

void _free_ldap_gss_context(void *a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    free(v3);
    *(a1 + 2) = 0;
  }

  minor_status = 0;
  if (*(a1 + 1))
  {
    gss_delete_sec_context(&minor_status, a1 + 1, 0);
  }

  *(a1 + 3) = 0;
  v4 = *(a1 + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

uint64_t ___o_ldap_gssapi_negotiate_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  v5.length = *(v2 + 144);
  v5.value = v3;
  return _o_ldap_gssapi_negotiate(v2, v1, &v5);
}

void ___o_ldap_gssapi_negotiate_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = ___o_ldap_gssapi_negotiate_block_invoke_4;
    v5[3] = &__block_descriptor_tmp_107;
    dispatch_sync(*(*(a1 + 32) + 64), v5);
  }

  else
  {
    v4 = *(a1 + 40);

    _free_ldap_gss_context(v4);
  }
}

uint64_t ___o_ldap_gssapi_negotiate_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 136);
  v17.length = *(v1 + 144);
  v17.value = v3;
  output_message_buffer.length = 0;
  output_message_buffer.value = 0;
  minor_status = 0;
  dispatch_assert_queue_V2(*(v1 + 64));
  if (gss_unwrap(&minor_status, v2[1], &v17, &output_message_buffer, 0, (v1 + 192)))
  {
    v4 = 0;
  }

  else
  {
    v4 = output_message_buffer.length >= 4;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(*v2, LDAP_MECHANISM_OPTION_GSSAPI_INTEGRITY);
  v7 = CFDictionaryGetValue(*v2, LDAP_MECHANISM_OPTION_GSSAPI_CONFIDENTIALITY);
  v8 = output_message_buffer.value;
  v20.length = 0;
  v20.value = 0;
  if (!v7)
  {
    if ((*output_message_buffer.value & 4) != 0)
    {
      atomic_fetch_or((v1 + 288), 0x20u);
      goto LABEL_18;
    }

    v9 = 0;
LABEL_13:
    atomic_fetch_and((v1 + 288), 0xFFFFFFDF);
    v10 = 1;
    v11 = 2;
    if (!Value)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (CFBooleanGetValue(v7) != 1)
  {
    v9 = 0;
    *v8 &= ~4u;
    goto LABEL_13;
  }

  atomic_fetch_or((v1 + 288), 0x20u);
  if ((*v8 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_18:
  v11 = 4;
  v9 = 1;
  v10 = 4;
  if (Value)
  {
LABEL_14:
    if (CFBooleanGetValue(Value) != 1)
    {
      goto LABEL_20;
    }

    atomic_fetch_or((v1 + 288), 0x10u);
    if ((*v8 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_5:
    v5 = 10004;
LABEL_25:
    *(v1 + 292) = v5;
    _free_ldap_gss_context(v2);
    _ldap_next_authmechanism(v1);
    return gss_release_buffer(&minor_status, &output_message_buffer);
  }

LABEL_19:
  if ((*v8 & 2) != 0)
  {
    atomic_fetch_or((v1 + 288), 0x10u);
    goto LABEL_22;
  }

LABEL_20:
  atomic_fetch_and((v1 + 288), 0xFFFFFFEF);
  v11 = v10;
LABEL_22:
  *v8 = v11;
  if (gss_wrap(&minor_status, v2[1], v9, *(v1 + 192), &output_message_buffer, 0, &v20) || (v12 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL), memset(v19, 0, sizeof(v19)), v13 = v20.value, *v12 = v20.length, v12[1] = v13, _ldap_sasl_fill(v19, @"GSSAPI", *v2, v12), v18[0] = MEMORY[0x277D85DD0], v18[1] = 0x40000000, v18[2] = ___o_ldap_gssapi_security_block_invoke, v18[3] = &__block_descriptor_tmp_110, v18[4] = v1, v18[5] = v2, v14 = _ldap_base_operation_create(v1, 104, 512, _dispose_simple, v18), v15 = _ldap_operation_simple_init(v14, v19), free_LDAPMessage(v19), !_enqueue_operation_with_release(v1, v15)))
  {
    v5 = 7;
    goto LABEL_25;
  }

  return gss_release_buffer(&minor_status, &output_message_buffer);
}

void ___o_ldap_gssapi_security_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = *(a1 + 40);
    *(v4 + 292) = 7;
    _free_ldap_gss_context(v5);

    _ldap_next_authmechanism(v4);
  }

  else
  {
    if ((*(v4 + 288) & 0x30) != 0)
    {
      v6 = *(v4 + 208);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = ___o_ldap_gssapi_security_block_invoke_2;
      v10[3] = &__block_descriptor_tmp_109;
      v7 = *(a1 + 40);
      v10[4] = v4;
      v10[5] = v7;
      dispatch_barrier_sync(v6, v10);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v12 = v8;
      _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, GSSAPI: negotiated", buf, 0xCu);
    }

    _free_ldap_gss_context(*(a1 + 40));
    v9 = *(a1 + 32);
    *(v9 + 292) = 0;
    dispatch_barrier_sync_f(*(v9 + 8), v9, _s_next_state);
  }
}

uint64_t ___o_ldap_gssapi_security_block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 184) = *(*(result + 40) + 8);
  *(*(result + 40) + 8) = 0;
  return result;
}

void ___o_ldap_srp_auth_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    Value = CFDictionaryGetValue(*(a1 + 40), LDAP_MECHANISM_OPTION_RECORD_DN);
    v5 = CFDictionaryGetValue(*(a1 + 40), LDAP_MECHANISM_OPTION_PASSWORD);
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v28 = 0;
    v6 = _cstr_from_cfstring(Value, &v30);
    v7 = _short_username_from_dn(v6);
    v8 = _cstr_from_cfstring(v5, &v31);
    v9 = srp_client_mech_new((a1 + 48), v7, v7, v8);
    if (v9 || (v9 = srp_client_mech_step(*(a1 + 48), "", 0, &v29, &v28, v10, v11, v12), v9 > 1))
    {
      v18 = *(a1 + 32);
      *(v18 + 292) = v9;
      _ldap_next_authmechanism(v18);
      v17 = 0;
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      *v23 = 0u;
      v24 = 0u;
      *v22 = 0u;
      memset(v21, 0, sizeof(v21));
      v13 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
      v14 = v29;
      *v13 = v28;
      v13[1] = v14;
      _ldap_sasl_fill(v21, @"SRP", *(a1 + 40), v13);
      v15 = *(a1 + 32);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = ___o_ldap_srp_auth_block_invoke_2;
      v19[3] = &__block_descriptor_tmp_113;
      v19[4] = v15;
      v20 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v16 = _ldap_base_operation_create(v15, 104, 512, _dispose_simple, v19);
      v17 = _ldap_operation_simple_init(v16, v21);
      if (v23[1])
      {
        free(v23[1]);
        v23[1] = 0;
      }

      if (v22[0])
      {
        free(v22[0]);
      }

      free(v13);
    }

    if (v30)
    {
      free(v30);
    }

    if (v7)
    {
      free(v7);
    }

    if (v31)
    {
      free(v31);
    }

    if (!_enqueue_operation_with_release(*(a1 + 32), v17))
    {
      _ldap_next_authmechanism(*(a1 + 32));
    }
  }
}

void ___o_ldap_srp_auth_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    *v19 = 0u;
    memset(v17, 0, sizeof(v17));
    v4 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
    v16 = 0;
    v15 = 0;
    v8 = srp_client_mech_step(*(a1 + 40), *(*(a1 + 32) + 136), *(*(a1 + 32) + 144), &v16, &v15, v5, v6, v7);
    if (v8 > 1)
    {
      v12 = *(a1 + 32);
      *(v12 + 292) = v8;
      _ldap_next_authmechanism(v12);
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v9 = v16;
      *v4 = v15;
      v4[1] = v9;
      _ldap_sasl_fill(v17, @"SRP", *(a1 + 48), v4);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = ___o_ldap_srp_auth_block_invoke_3;
      v13[3] = &__block_descriptor_tmp_112;
      v14 = *(a1 + 32);
      v10 = _ldap_base_operation_create(v14, 104, 512, _dispose_simple, v13);
      v11 = _ldap_operation_simple_init(v10, v17);
      if (!_enqueue_operation_with_release(*(a1 + 32), v11))
      {
        _ldap_next_authmechanism(*(a1 + 32));
      }

      if (v16)
      {
        free(v16);
        v16 = 0;
      }

      if (v19[1])
      {
        free(v19[1]);
        v19[1] = 0;
      }

      if (v18[0])
      {
        free(v18[0]);
      }
    }

    free(v4);
  }
}

void ___o_ldap_srp_auth_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  *(*(a1 + 32) + 200) = *(a1 + 40);
  if (_ldap_continue_sasl(*(a1 + 32), a3))
  {
    v7 = srp_client_mech_step(*(a1 + 40), *(*(a1 + 32) + 136), *(*(a1 + 32) + 144), &v10, &v9, v4, v5, v6);
    if (v7 > 1)
    {
      v8 = *(a1 + 32);
      *(v8 + 292) = v7;
      _ldap_next_authmechanism(v8);
    }

    else
    {
      if (srp_has_confidentiality(*(a1 + 40)))
      {
        atomic_fetch_or((*(a1 + 32) + 288), 0x20u);
      }

      if (srp_has_confidentiality(*(a1 + 40)))
      {
        atomic_fetch_or((*(a1 + 32) + 288), 0x10u);
      }
    }
  }
}

void _o_disconnected(NSObject **a1, atomic_ullong **a2, int a3)
{
  dispatch_assert_queue_V2(a1[8]);
  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    do
    {
      v9 = v6[1];
      v8 = v6[2];
      v10 = (v9 + 2);
      if (!v9)
      {
        v10 = v7;
      }

      *v10 = v8;
      *v8 = v9;
      atomic_fetch_and(v6 + 5, 0xFFFFFFFFFFFFFFF7);
      if ((v6[5] & 2) != 0 || !v6[3])
      {
        dispatch_group_leave(a1[7]);
        ldap_operation_release(v6);
      }

      else
      {
        v12 = a1[3];
        v11 = a1[4];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___o_disconnected_block_invoke;
        block[3] = &__block_descriptor_tmp_117;
        v14 = a3;
        block[4] = v6;
        block[5] = a1;
        dispatch_group_async(v11, v12, block);
      }

      v6 = v9;
    }

    while (v9);
  }
}

void ___o_disconnect_cleanup_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[35];
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
  }

  ldap_connection_release(v2);
}

void ___o_disconnected_block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 24) + 16))();
  dispatch_group_leave(*(*(a1 + 40) + 56));
  v2 = *(a1 + 32);

  ldap_operation_release(v2);
}

void ___report_connect_status_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *cStr = 0u;
  if (tcp_connection_get_hostname())
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    memset(v4, 0, sizeof(v4));
    v5 = 0;
    tcp_connection_get_remote();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 40);
      v3 = *(v2 + 288);
      *buf = 134219010;
      v7 = v2;
      v8 = 2082;
      v9 = cStr;
      v10 = 1040;
      v11 = LOBYTE(v4[0]);
      v12 = 2098;
      v13 = v4;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "connection: %p, host: %{public}s, address: %{public,network:sockaddr}.*P, flags: %{AppleLDAPTypes:flags}d", buf, 0x2Cu);
    }
  }
}

void _o_abandon_operation(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 64));
  v5 = 0u;
  v6 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 80);
  DWORD2(v5) = 18;
  LODWORD(v6) = v2;
  v3 = _ldap_base_operation_create(*(a1 + 32), 104, 512, _dispose_simple, 0);
  v4 = _ldap_operation_simple_init(v3, &v5);
  atomic_fetch_or(v4 + 5, 0x800uLL);
  _enqueue_operation_with_release(*(a1 + 32), v4);
  ldap_operation_release(a1);
}

void ___ldap_async_operation_block_invoke(uint64_t a1)
{
  (*(a1 + 32))(*(a1 + 40));
  v2 = *(a1 + 40);

  ldap_operation_release(v2);
}

void _dispose_query(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    free(v2);
    a1[11] = 0;
  }

  v3 = a1[13];
  if (v3)
  {
    _Block_release(v3);
    a1[13] = 0;
  }

  v4 = a1[15];
  if (v4)
  {
    free(v4);
    a1[15] = 0;
  }

  v5 = a1[14];
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = a1[14];
    if (v6)
    {
      dispatch_release(v6);
      a1[14] = 0;
    }
  }
}

void _o_ldap_queue_operation(void *a1)
{
  v2 = a1[4];
  dispatch_assert_queue_V2(*(v2 + 64));
  a1[1] = 0;
  v3 = a1 + 1;
  if ((a1[5] & 0x100) != 0)
  {
    v5 = *(v2 + 80);
    a1[2] = v5;
    *v5 = a1;
    *(v2 + 80) = v3;
    v6 = a1[4];
    ldap_operation_retain(a1);
    v7 = *(v6 + 56);
    v8 = *(v6 + 64);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ldap_async_operation_block_invoke;
    v9[3] = &__block_descriptor_tmp_119;
    v9[4] = _o_ldap_chained_operation_next;
    v9[5] = a1;
    dispatch_group_async(v7, v8, v9);
  }

  else
  {
    v4 = *(v2 + 96);
    a1[2] = v4;
    *v4 = a1;
    *(v2 + 96) = v3;

    _o_ldap_wakeup(v2);
  }
}

void _o_ldap_chained_operation_next(uint64_t a1)
{
  v3 = *(a1 + 96);
  v2 = *(a1 + 104);
  *(a1 + 96) = v3 + 1;
  v4 = *(v2 + 8 * v3);
  dispatch_assert_queue_V2(*(*(a1 + 32) + 64));
  v5 = *(a1 + 56);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v8 = *(a1 + 88);
    if (v8)
    {
      ldap_operation_release(v8);
      *(a1 + 88) = 0;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___o_ldap_chained_operation_next_block_invoke;
    v9[3] = &__block_descriptor_tmp_120;
    v9[4] = a1;
    v9[5] = a1;
    *(a1 + 88) = v4(a1, v9);
  }

  else
  {
    v7 = *(a1 + 32);

    _o_operation_complete(v7, a1, v5);
  }
}

void ___o_ldap_chained_operation_next_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  *(v4 + 56) = a3;
  v5 = *(a2 + 64);
  if (v5)
  {
    CFRetain(v5);
    v7 = *(a2 + 64);
    v4 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 64) = v7;
  v8 = *(a1 + 40);
  v9 = v8[4];
  ldap_operation_retain(v8);
  v10 = *(v9 + 56);
  v11 = *(v9 + 64);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ldap_async_operation_block_invoke;
  v12[3] = &__block_descriptor_tmp_119;
  v12[4] = _o_ldap_chained_operation_next;
  v12[5] = v8;
  dispatch_group_async(v10, v11, v12);
}

unsigned __int8 *_start_filter(int *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = -1;
  if (v2 > 0x27)
  {
    if (v2 != 40)
    {
      if (v2 != 41)
      {
        if (v2 == 124)
        {
          v4 = 2;
          goto LABEL_12;
        }

        return _parse_simple_filter(a1, a2, 1);
      }

      return a2 + 1;
    }
  }

  else if (*a2)
  {
    if (v2 == 33)
    {
      v4 = 3;
      goto LABEL_12;
    }

    if (v2 == 38)
    {
      v4 = 1;
LABEL_12:
      *a1 = v4;
      return _parse_compound_filter(a1, a2 + 1);
    }

    return _parse_simple_filter(a1, a2, 1);
  }

  return v3;
}

uint64_t _parse_simple_filter(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = 0;
  v17 = *MEMORY[0x277D85DE8];
  while (1)
  {
    while (1)
    {
      v7 = *a2;
      if (v7 != 32)
      {
        break;
      }

      if (a2 == -1)
      {
        return -1;
      }

      ++a2;
    }

    if (!*a2)
    {
      if (a3)
      {
        return -1;
      }

      else
      {
        return (a2 - 1);
      }
    }

    if (v7 == 41)
    {
      if (a3)
      {
        return (a2 + 1);
      }

      else
      {
        return -1;
      }
    }

    if (v7 != 40)
    {
      break;
    }

    v8 = reallocf(*(a1 + 16), 48 * v6 + 48);
    *(a1 + 16) = v8;
    v9 = &v8[48 * v6];
    *v9 = 0u;
    *(v9 + 1) = 0u;
    *(v9 + 2) = 0u;
    result = _start_filter(v9, a2 + 1);
    if (result == -1)
    {
      return result;
    }

    a2 = result;
    *(a1 + 8) = ++v6;
  }

  v11 = 0;
  v12 = 2;
  result = -1;
  while (v7 <= 0x3Cu)
  {
    if (v7 <= 0x3Bu)
    {
      if (v7 == 58)
      {
        if (a2[1] == 61)
        {
          v14 = 0;
          v15 = 10;
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (!v7 || v7 == 41)
      {
        return result;
      }

LABEL_34:
      v16[v11++] = v7;
      if (v11 > 0x7F)
      {
        return -1;
      }

      goto LABEL_35;
    }

    if (a2[1] == 61)
    {
      v14 = 0;
      v15 = 7;
      goto LABEL_38;
    }

LABEL_35:
    if (a2 == -1)
    {
      return -1;
    }

    v13 = *++a2;
    LOBYTE(v7) = v13;
  }

  if (v7 == 62)
  {
    if (a2[1] == 61)
    {
      v14 = 0;
      v15 = 6;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 == 126)
  {
    if (a2[1] == 61)
    {
      v14 = 0;
      v15 = 9;
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (v7 != 61)
  {
    goto LABEL_34;
  }

  v12 = 1;
  v15 = 4;
  v14 = 1;
LABEL_38:
  *a1 = v15;
  v16[v11] = 0;
  return _parse_rh_exp(a1, &a2[v12], v16, v14, a3);
}

uint64_t _parse_compound_filter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *a2;
    if (v5 != 32)
    {
      break;
    }

    if (a2 == -1)
    {
      return -1;
    }

LABEL_7:
    ++a2;
  }

  if (v5 == 40)
  {
    v6 = reallocf(*(a1 + 16), 48 * (v4 + 1));
    *(a1 + 16) = v6;
    v7 = &v6[48 * v4];
    *v7 = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    result = _start_filter(v7, a2 + 1);
    if (result == -1)
    {
      return result;
    }

    a2 = result;
    *(a1 + 8) = ++v4;
    goto LABEL_7;
  }

  if (v5 == 41)
  {
    return a2;
  }

  else
  {
    return -1;
  }
}

uint64_t _parse_rh_exp(uint64_t a1, char *__s, char *a3, int a4, int a5)
{
  v7 = __s;
  v9 = strlen(__s);
  v10 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x277D85DE0];
LABEL_2:
  for (i = v7 + 2; ; ++i)
  {
    v16 = *(i - 2);
    if (v16 != 92)
    {
      break;
    }

    v17 = *(i - 1);
    if (!*(i - 1))
    {
      goto LABEL_35;
    }

    if (v17 < 0)
    {
      if (!__maskrune(*(i - 1), 0x10000uLL))
      {
        goto LABEL_13;
      }
    }

    else if ((*(v14 + 4 * v17 + 60) & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    v18 = *i;
    if ((v18 & 0x80000000) != 0)
    {
      if (__maskrune(v18, 0x10000uLL))
      {
LABEL_25:
        v19 = 16 * v17;
        if (v17 > 64)
        {
          v19 = 16 * v17 - 112;
        }

        v10[v13] = v19;
        v20 = *i - 48;
        if (*i > 64)
        {
          v20 = (*i & 0x1F) + 9;
        }

        v10[v13++] = v20 | v19;
LABEL_30:
        if (i != -1)
        {
          v7 = i + 1;
          goto LABEL_2;
        }

        goto LABEL_35;
      }
    }

    else if ((*(v14 + 4 * v18 + 60) & 0x10000) != 0)
    {
      goto LABEL_25;
    }

LABEL_13:
    v10[v13] = v17;
  }

  if (*(i - 2) > 0x28u)
  {
    if (v16 != 41)
    {
      if (v16 == 42)
      {
        if (!a4)
        {
          goto LABEL_35;
        }

        i -= 2;
        v11 |= v13 == 0;
        v12 |= v13 != 0;
        goto LABEL_30;
      }

LABEL_23:
      v10[v13++] = v16;
LABEL_24:
      i -= 2;
      goto LABEL_30;
    }

    if (a5)
    {
      v21 = i - 2;
      _filter_finish(a1, a3, v10, v13, v11 & 1, v12 & 1);
      return v21;
    }
  }

  else
  {
    if (*(i - 2))
    {
      if (v16 == 32 && !v13)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if ((a5 & 1) == 0)
    {
      _filter_finish(a1, a3, v10, v13, v11 & 1, v12 & 1);
      return (i - 3);
    }
  }

LABEL_35:
  if (v10)
  {
    free(v10);
  }

  return -1;
}

_DWORD *_filter_finish(uint64_t a1, char *__s1, _BYTE *a3, uint64_t a4, int a5, int a6)
{
  if ((a5 & 1) == 0 && !a6)
  {
    *(a1 + 16) = strdup(__s1);
    result = strlen(__s1);
    *(a1 + 8) = result;
    *(a1 + 24) = a4;
    *(a1 + 32) = a3;
    return result;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  if (!*a3)
  {
    free(a3);
LABEL_10:
    *a1 = 8;
    *(a1 + 16) = strdup(__s1);
    result = strlen(__s1);
    *(a1 + 8) = result;
    return result;
  }

  *a1 = 5;
  *(a1 + 16) = strdup(__s1);
  *(a1 + 8) = strlen(__s1);
  *(a1 + 24) = 1;
  result = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
  *(a1 + 32) = result;
  if (a5 && a6)
  {
    v13 = 2;
  }

  else if (a6)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  *result = v13;
  *(*(a1 + 32) + 16) = a3;
  *(*(a1 + 32) + 8) = a4;
  return result;
}

uint64_t ___ldap_connection_next_messageID_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 240);
  if (v2 >= -1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(v1 + 240) = v3;
  *(*(*(result + 32) + 8) + 24) = v3;
  return result;
}

uint64_t decode_pkts_input(uint64_t a1, char *__src, unsigned int a3, void **a4, _DWORD *a5, unsigned int *a6, uint64_t (*a7)(uint64_t, void, void, _DWORD *, _DWORD *), uint64_t a8)
{
  *a6 = 0;
  if (a3)
  {
    v12 = a3;
    memset(__n, 0, sizeof(__n));
    v16 = a1 + 8;
    v15 = *a1;
    do
    {
      if (v15)
      {
        if (v12 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v12;
        }

        memcpy((v16 - v15), __src, v17);
        v18 = *a1 == v17;
        *a1 -= v17;
        if (!v18)
        {
          return 0;
        }

        v19 = *(a1 + 4);
        v20 = bswap32(v19);
        *(a1 + 8) = v20;
        if (!v19)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = *(a1 + 28);
        if (v20 > v21)
        {
          fprintf(*MEMORY[0x277D85DF8], "encoded packet size too big (%d > %d)", v20, v21);
          return 0xFFFFFFFFLL;
        }

        if (!*(a1 + 16))
        {
          v22 = malloc_type_malloc(v21, 0xFC1E0814uLL);
          *(a1 + 16) = v22;
          if (!v22)
          {
            return 4294967294;
          }
        }

        v23 = 0;
        v24 = v12 - v17;
        __src += v17;
        *(a1 + 24) = 0;
      }

      else
      {
        v23 = *(a1 + 24);
        v24 = v12;
      }

      v25 = *(a1 + 8) - v23;
      v26 = (*(a1 + 16) + v23);
      v12 = v24 - v25;
      if (v24 < v25)
      {
        memcpy(v26, __src, v24);
        result = 0;
        *(a1 + 24) += v24;
        return result;
      }

      memcpy(v26, __src, *(a1 + 8) - v23);
      result = a7(a8, *(a1 + 16), *(a1 + 8), &__n[1], __n);
      if (result)
      {
        return result;
      }

      result = conditional_realloc(a4, a5, *a6 + __n[0] + 1);
      if (result)
      {
        return result;
      }

      __src += v25;
      memcpy(*a4 + *a6, *&__n[1], __n[0]);
      v28 = *a6 + __n[0];
      *a6 = v28;
      *(*a4 + v28) = 0;
      v15 = 4;
      *a1 = 4;
    }

    while (v12);
  }

  return 0;
}

uint64_t conditional_realloc(void **a1, _DWORD *a2, size_t size)
{
  result = 4294967289;
  if (a1 && a2)
  {
    v6 = size;
    if (*a1)
    {
      LODWORD(v7) = *a2;
      if (*a2 < size)
      {
        do
        {
          v7 = (2 * v7);
        }

        while (v7 < size);
        v8 = reallocf(*a1, v7);
        *a1 = v8;
        v9 = v8 ? v7 : 0;
        *a2 = v9;
        if (!v8)
        {
          return 4294967294;
        }
      }
    }

    else
    {
      v10 = malloc_type_malloc(size, 0xA2B78B40uLL);
      *a1 = v10;
      if (!v10)
      {
        *a2 = 0;
        return 4294967294;
      }

      *a2 = v6;
    }

    return 0;
  }

  return result;
}

double srp_encode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a4 && a5)
  {
    v11 = (a1 + 888);
    if (conditional_realloc((a1 + 888), (a1 + 912), (a3 + 84)))
    {
      return result;
    }

    *a5 = 4;
    if ((*(a1 + 360) & 2) != 0)
    {
      *a5 += chacha20_poly1305_encrypt();
      if ((*(a1 + 360) & 2) != 0)
      {
        v14 = *a5 + chacha20_poly1305_final();
        *a5 = v14;
        result = *&v16;
        *(*v11 + v14) = v16;
        v15 = *a5;
        *a5 += 16;
        **v11 = bswap32(v15 + 12);
        *a4 = *v11;
        return result;
      }
    }

    v13 = "confidentiality integrity layer required";
  }

  else
  {
    v13 = "Bad parameter";
  }

  SETERROR(a1, v13, a3, a4, a5, a6, a7, a8);
  return result;
}

uint64_t srp_decode(uint64_t a1, char *a2, unsigned int a3, void *a4, unsigned int *a5)
{
  result = decode_pkts_input(a1 + 936, a2, a3, (a1 + 896), (a1 + 920), a5, srp_decode_packet, a1);
  *a4 = *(a1 + 896);
  return result;
}

uint64_t srp_decode_packet(uint64_t a1, uint64_t a2, size_t a3, void *a4, _DWORD *a5)
{
  v8 = (a1 + 904);
  result = conditional_realloc((a1 + 904), (a1 + 928), a3);
  if (!result)
  {
    if ((*(a1 + 360) & 2) != 0)
    {
      *a5 = chacha20_poly1305_decrypt();
      v16 = chacha20_poly1305_verify();
      result = 0;
      *a5 += v16;
      *a4 = *v8;
    }

    else
    {
      SETERROR(a1, "confidentiality integrity layer required", v10, v11, v12, v13, v14, v15);
      return 4294967289;
    }
  }

  return result;
}

uint64_t srp_common_context_init(void *a1)
{
  bzero(a1, 0x3D0uLL);
  *a1 = 1;
  a1[3] = CCCreateBigNum();
  a1[4] = CCCreateBigNum();
  a1[6] = CCCreateBigNum();
  a1[7] = CCCreateBigNum();
  a1[8] = CCCreateBigNum();
  result = ccrng();
  a1[2] = result;
  return result;
}

uint64_t cc_get_digestbyname(const char *a1)
{
  if (!strcmp(a1, "sha512"))
  {

    return MEMORY[0x2822018F8]();
  }

  else if (!strcmp(a1, "sha384"))
  {

    return MEMORY[0x2822018D0]();
  }

  else if (!strcmp(a1, "sha256"))
  {

    return MEMORY[0x2822018C8]();
  }

  else if (!strcmp(a1, "sha224"))
  {

    return MEMORY[0x2822018C0]();
  }

  else
  {
    return 0;
  }
}

void SETERROR(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = 0;
  vasprintf(&v10, a2, va);
  v9 = *(a1 + 968);
  if (v9)
  {
    free(v9);
  }

  *(a1 + 968) = v10;
}

uint64_t srp_client_mech_new(void *a1, const char *a2, const char *a3, const char *a4)
{
  v8 = malloc_type_malloc(0x3D0uLL, 0x1070040C3537DAAuLL);
  if (!v8)
  {
    return 4294967294;
  }

  v9 = v8;
  bzero(v8, 0x3D0uLL);
  srp_common_context_init(v9);
  v9[28] = strdup(a2);
  v9[27] = strdup(a3);
  v10 = strdup(a4);
  result = 0;
  v9[29] = v10;
  *a1 = v9;
  return result;
}

uint64_t srp_client_mech_step(int *a1, unsigned int *a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *a5 = 0;
  v9 = *a1;
  if (*a1 != 3)
  {
    if (v9 != 2)
    {
      if (v9 == 1)
      {
        if (a3)
        {
          v12 = "Invalid input to first step of SRP";
LABEL_6:
          SETERROR(a1, v12, a3, a4, a5, a6, a7, a8);
          return 4294967291;
        }

        *derivedKey = 0;
        Buffer = MakeBuffer(a1 + 43, a1 + 88, derivedKey, "%s%s%s%o", a5, a6, a7, a8, *(a1 + 27));
        *a5 = *derivedKey;
        if (Buffer)
        {
LABEL_30:
          v13 = Buffer;
          v44 = *MEMORY[0x277D85DF8];
          v45 = "Error making output buffer\n";
          v46 = 27;
LABEL_31:
          fwrite(v45, v46, 1uLL, v44);
          return v13;
        }

        *a4 = *(a1 + 43);
        v50 = 2;
LABEL_37:
        *a1 = v50;
        return 1;
      }

      fprintf(*MEMORY[0x277D85DF8], "Invalid SRP client step %d\n", v9);
      return 0xFFFFFFFFLL;
    }

    LOBYTE(v78) = 0;
    v14 = UnBuffer(a1, a2, a3, "%c%m%m%o%m%q%s", a5, a6, a7, a8, &v78, a1 + 6, a1 + 8, a1 + 80, a1 + 78, a1 + 14, a1 + 82, a1 + 64);
    if (v14)
    {
      v13 = v14;
      SETERROR(a1, "Error UnBuffering input in step 2", v15, v16, v17, v18, v19, v20);
      return v13;
    }

    v29 = ccz_write_uint_size();
    v30 = malloc_type_malloc(v29, 0x859AEC5CuLL);
    ccz_write_uint();
    if (ccz_write_uint_size() != 1)
    {
      goto LABEL_32;
    }

    BYTE4(v78) = 0;
    ccz_write_uint();
    v31 = SBYTE4(v78);
    set_ccsrp_groups();
    v32 = &qword_27E519080;
    v33 = 4;
    while (v29 != *(v32 - 4) >> 3 || memcmp(v30, *(v32 - 2), v29) || *(v32 - 1) != v31)
    {
      v32 += 5;
      if (!--v33)
      {
        v34 = 0;
        if (!v30)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    *(a1 + 5) = *v32;
    v34 = 1;
    if (v30)
    {
LABEL_19:
      free(v30);
    }

LABEL_20:
    if (v34)
    {
      if (ccz_cmpi() < 1 || (ccz_cmp() & 0x80000000) == 0)
      {
        v12 = "Illegal value for 'B'";
        goto LABEL_6;
      }

      memset(v76, 0, sizeof(v76));
      v52 = ParseOptions(a1, *(a1 + 32), v76, 0);
      if (v52)
      {
        v13 = v52;
        v44 = *MEMORY[0x277D85DF8];
        v45 = "Error parsing SRP server options\n";
        v46 = 33;
        goto LABEL_31;
      }

      ClientOpts = CreateClientOpts(a1, v76, (a1 + 66));
      if (ClientOpts)
      {
        v13 = ClientOpts;
        v44 = *MEMORY[0x277D85DF8];
        v45 = "Error creating client options\n";
        v46 = 30;
        goto LABEL_31;
      }

      v54 = OptionsToString(a1 + 66, a1 + 31);
      if (v54)
      {
        v13 = v54;
        v44 = *MEMORY[0x277D85DF8];
        v45 = "Error converting client options to an option string\n";
        v46 = 52;
        goto LABEL_31;
      }

      if (SetMDA(a1 + 66, a1))
      {
        v42 = "Error setting MDA";
        goto LABEL_28;
      }

      v55 = ccdh_ccn_size();
      *(a1 + 1) = malloc_type_malloc(48 * ((4 * (**(a1 + 42) + v55) + 95) / 0x30uLL), 0x400A2AC0F1uLL);
      ccsrp_ctx_init();
      v56 = 8 * MEMORY[0x245CCEDB0](*(*(a1 + 1) + 8));
      v57 = malloc_type_malloc(v56, 0x461D5B05uLL);
      bzero(v57, v56);
      started = ccsrp_client_start_authentication();
      if (started)
      {
        SETERROR(a1, "ccsrp_client_start_authentication failed: %d", v59, v60, v61, v62, v63, v64, started);
        return 0xFFFFFFFFLL;
      }

      ccz_read_uint();
      free(v57);
      v65 = 8 * MEMORY[0x245CCEDB0](*(*(a1 + 1) + 8));
      v66 = malloc_type_malloc(v65, 0xB80FC3AFuLL);
      bzero(v66, v65);
      ccz_write_uint();
      v67 = strlen(*(a1 + 29));
      if (!CCKeyDerivationPBKDF(2u, *(a1 + 29), v67, *(a1 + 39), *(a1 + 40), 5u, a1[82], derivedKey, 0x80uLL))
      {
        *(a1 + 26) = ccsrp_get_session_key_length();
        v13 = ccsrp_client_process_challenge();
        free(v66);
        if (v13)
        {
          v44 = *MEMORY[0x277D85DF8];
          v45 = "Error creating M1\n";
          v46 = 18;
          goto LABEL_31;
        }

        Bytes = CCRandomGenerateBytes(a1 + 74, 0x10uLL);
        if (Bytes)
        {
          SETERROR(a1, "Error reading random bytes for cIV: %d", v69, v70, v71, v72, v73, v74, Bytes);
          return 4294967286;
        }

        v79 = 0;
        Buffer = MakeBuffer(a1 + 43, a1 + 88, &v79, "%m%o%s%o", v71, v72, v73, v74, *(a1 + 8));
        *a5 = v79;
        if (Buffer)
        {
          goto LABEL_30;
        }

        *a4 = *(a1 + 43);
        v50 = 3;
        goto LABEL_37;
      }

      v47 = *MEMORY[0x277D85DF8];
      v48 = "Error hashing client password\n";
      v49 = 30;
    }

    else
    {
LABEL_32:
      v47 = *MEMORY[0x277D85DF8];
      v48 = "Values of 'N' and 'g' are not recommended\n";
      v49 = 42;
    }

    fwrite(v48, v49, 1uLL, v47);
    return 0xFFFFFFFFLL;
  }

  v79 = 0;
  *derivedKey = 0;
  *&v76[0] = 0;
  v78 = 0;
  v77 = 0;
  v21 = UnBuffer(a1, a2, a3, "%-o%-o%s%u", a5, a6, a7, a8, &v78 + 4, derivedKey, &v78, v76, &v79, &v77);
  if (v21)
  {
    v13 = v21;
    v28 = "Error UnBuffering input in step 3";
LABEL_39:
    SETERROR(a1, v28, v22, v23, v24, v25, v26, v27);
    goto LABEL_40;
  }

  v35 = HIDWORD(v78);
  if (ccsrp_get_session_key_length() != v35)
  {
    v13 = 4294967286;
    v28 = "SRP Server M2 length wrong";
    goto LABEL_39;
  }

  if (!ccsrp_client_verify_session())
  {
    v13 = 4294967286;
    v28 = "SRP Server spoof detected. M2 incorrect";
    goto LABEL_39;
  }

  if (LayerInit((a1 + 66), a1, *&v76[0], (a1 + 74)))
  {
    v42 = "Error initializing security layer";
LABEL_28:
    SETERROR(a1, v42, v36, v37, v38, v39, v40, v41, derivedKeyLen);
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
LABEL_40:
  if (v79)
  {
    free(v79);
  }

  return v13;
}

uint64_t UnBuffer(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (!a2 || a3 <= 3)
  {
    v35 = a3;
    v33 = "Buffer is not big enough to be SRP buffer: %d\n";
    goto LABEL_62;
  }

  v9 = bswap32(*a2);
  if (v9 != a3 - 4)
  {
    v33 = "SRP Buffer isn't of the right length\n";
LABEL_62:
    v34 = a1;
LABEL_63:
    SETERROR(v34, v33, a3, a4, a5, a6, a7, a8, v35);
    return 4294967291;
  }

  v10 = (a2 + 1);
  va_copy(v36, va);
  v11 = "Buffer is not big enough to be SRP MPI\n";
  v12 = "Buffer is not big enough to be SRP os\n";
  while (1)
  {
    result = *a4;
    if (result == 37)
    {
      break;
    }

    if (!*a4)
    {
      goto LABEL_60;
    }

    if (*v10 != result)
    {
      goto LABEL_59;
    }

    v10 = (v10 + 1);
    --v9;
LABEL_43:
    ++a4;
  }

  v14 = *(a4 + 1);
  if (v14 == 45)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (v14 == 45)
  {
    v16 = a4 + 2;
  }

  else
  {
    v16 = a4 + 1;
  }

  HIDWORD(v18) = a4[v15] - 99;
  LODWORD(v18) = HIDWORD(v18);
  v17 = v18 >> 1;
  if (v17 > 6)
  {
    switch(v17)
    {
      case 7:
        if (v9 < 8)
        {
          v11 = "Buffer is not big enough to be SRP uint64_t\n";
          goto LABEL_58;
        }

        v26 = va_arg(v36, void *);
        *v26 = bswap64(*v10);
        LODWORD(v19) = 8;
        goto LABEL_34;
      case 8:
        v21 = v9 - 2;
        if (v9 < 2)
        {
          v11 = "Buffer is not big enough to be SRP UTF8\n";
          goto LABEL_58;
        }

        v28 = *v10;
        v10 = (v10 + 2);
        v29 = bswap32(v28);
        if (v21 < HIWORD(v29))
        {
          v11 = "Not enough data for this SRP UTF8\n";
          goto LABEL_57;
        }

        v19 = HIWORD(v29);
        v30 = va_arg(v36, void *);
        v31 = malloc_type_malloc((v19 + 1), 0x100004077774924uLL);
        *v30 = v31;
        if (!v31)
        {
          goto LABEL_48;
        }

        memcpy(v31, v10, v19);
        *(*v30 + v19) = 0;
        goto LABEL_42;
      case 9:
        if (v9 < 4)
        {
          v11 = "Buffer is not big enough to be SRP uint\n";
          goto LABEL_58;
        }

        v24 = va_arg(v36, unsigned int *);
        *v24 = bswap32(*v10) >> 16;
        LODWORD(v19) = 4;
        goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (!v17)
  {
    if (!v9)
    {
      v12 = "Buffer is not big enough to be SRP char\n";
LABEL_52:
      v34 = a1;
      v33 = v12;
      goto LABEL_63;
    }

    v25 = va_arg(v36, _BYTE *);
    *v25 = *v10;
LABEL_33:
    LODWORD(v19) = 1;
LABEL_34:
    v21 = v9;
LABEL_42:
    v10 = (v10 + v19);
    v9 = v21 - v19;
    a4 = v16;
    goto LABEL_43;
  }

  if (v17 == 5)
  {
    v21 = v9 - 2;
    if (v9 < 2)
    {
      goto LABEL_58;
    }

    v27 = bswap32(*v10);
    if (v21 < HIWORD(v27))
    {
      v11 = "Not enough data for this SRP MPI\n";
      goto LABEL_57;
    }

    LODWORD(v19) = HIWORD(v27);
    v10 = (v10 + 2);
    v36 += 8;
    ccz_zero();
    ccz_read_uint();
    goto LABEL_42;
  }

  if (v17 != 6)
  {
LABEL_32:
    if (*v10 != a4[v15])
    {
      goto LABEL_59;
    }

    goto LABEL_33;
  }

  if (!v9)
  {
    goto LABEL_52;
  }

  v20 = *v10;
  v10 = (v10 + 1);
  v19 = v20;
  v21 = v9 - 1;
  if (v9 - 1 >= v20)
  {
    **v36 = v19;
    v22 = (v36 + 8);
    v36 += 16;
    v23 = *v22;
    if (v14 == 45)
    {
      *v23 = v10;
    }

    else
    {
      v32 = malloc_type_malloc(v19, 0x100004077774924uLL);
      *v23 = v32;
      if (!v32)
      {
LABEL_48:
        result = 4294967294;
        v9 = v21;
        goto LABEL_60;
      }

      memcpy(v32, v10, v19);
    }

    goto LABEL_42;
  }

  v11 = "Not enough data for this SRP os\n";
LABEL_57:
  v9 = v21;
LABEL_58:
  SETERROR(a1, v11, a3, a4, a5, a6, a7, a8);
LABEL_59:
  result = 4294967291;
LABEL_60:
  if (v9)
  {
    v33 = "Extra data in SRP buffer\n";
    goto LABEL_62;
  }

  return result;
}

uint64_t MakeBuffer(void **a1, _DWORD *a2, int64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v13 = 0;
  v43 = &a9;
  for (i = a4; *i == 37; ++i)
  {
    v15 = *++i;
    HIDWORD(v17) = v15 - 99;
    LODWORD(v17) = v15 - 99;
    v16 = v17 >> 1;
    if (v16 > 6)
    {
      if (v16 == 7)
      {
        ++v43;
        v13 += 8;
        continue;
      }

      if (v16 == 8)
      {
        v21 = v43++;
        v20 = strlen(*v21);
        if (v20 >= 0x10000)
        {
          v38 = *MEMORY[0x277D85DF8];
          v39 = "String too long to create utf8 string\n";
          v40 = 38;
          goto LABEL_47;
        }

LABEL_21:
        v13 += v20 + 2;
        continue;
      }

      if (v16 != 9)
      {
        goto LABEL_4;
      }

      ++v43;
      v13 += 4;
    }

    else
    {
      if (!v16)
      {
        ++v43;
        goto LABEL_4;
      }

      if (v16 == 5)
      {
        ++v43;
        v20 = ccz_write_uint_size();
        if (v20 >= 0x10000)
        {
          v38 = *MEMORY[0x277D85DF8];
          v39 = "String too long to create mpi string\n";
          v40 = 37;
LABEL_47:
          fwrite(v39, v40, 1uLL, v38);
          v23 = 0;
          result = 0xFFFFFFFFLL;
LABEL_48:
          v41 = *a1;
          v42 = v23 - *a1;
          *a3 = v42;
          *v41 = bswap32(v42 - 4);
          return result;
        }

        goto LABEL_21;
      }

      if (v16 != 6)
      {
        goto LABEL_4;
      }

      v18 = v43;
      v44 = v43 + 1;
      v19 = *v18;
      if (v19 >= 0x100)
      {
        v38 = *MEMORY[0x277D85DF8];
        v39 = "String too long to create os string\n";
        v40 = 36;
        goto LABEL_47;
      }

      v13 += v19 + 1;
      v43 = v44 + 1;
    }

LABEL_5:
    ;
  }

  if (*i)
  {
LABEL_4:
    ++v13;
    goto LABEL_5;
  }

  if (v13 >= 0x7FFFFFFC)
  {
    fwrite("String too long to create SRP buffer string\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  result = conditional_realloc(a1, a2, (v13 + 4));
  if (!result)
  {
    v23 = *a1 + 4;
    v45 = &a9;
    while (1)
    {
      v24 = *v9;
      if (v24 != 37)
      {
        if (!*v9)
        {
          result = 0;
          goto LABEL_48;
        }

        goto LABEL_28;
      }

      v26 = *++v9;
      LOBYTE(v24) = v26;
      HIDWORD(v28) = v26 - 99;
      LODWORD(v28) = v26 - 99;
      v27 = v28 >> 1;
      if (v27 > 6)
      {
        if (v27 == 7)
        {
          v34 = v45++;
          *v23 = bswap64(*v34);
          v25 = 8;
          goto LABEL_29;
        }

        if (v27 == 8)
        {
          v36 = v45++;
          v37 = *v36;
          v35 = strlen(*v36);
          *v23 = bswap32(v35) >> 16;
          memcpy(v23 + 2, v37, v35);
          goto LABEL_43;
        }

        if (v27 != 9)
        {
          goto LABEL_28;
        }

        v32 = v45++;
        *v23 = bswap32(*v32);
        v25 = 4;
      }

      else
      {
        if (!v27)
        {
          v33 = v45++;
          v24 = *v33;
LABEL_28:
          *v23 = v24;
          v25 = 1;
          goto LABEL_29;
        }

        if (v27 == 5)
        {
          ++v45;
          v35 = ccz_write_uint_size();
          ccz_write_uint();
          *v23 = bswap32(v35) >> 16;
LABEL_43:
          v25 = v35 + 2;
          goto LABEL_29;
        }

        if (v27 != 6)
        {
          goto LABEL_28;
        }

        v29 = v45;
        v30 = *v45;
        v45 += 2;
        v31 = v29[1];
        *v23 = v30;
        memcpy(v23 + 1, v31, v30);
        v25 = v30 + 1;
      }

LABEL_29:
      v23 += v25;
      ++v9;
    }
  }

  return result;
}

uint64_t set_ccsrp_groups()
{
  qword_27E519080 = ccsrp_gp_rfc5054_1024();
  qword_27E5190A8 = ccsrp_gp_rfc5054_2048();
  qword_27E5190D0 = ccsrp_gp_rfc5054_4096();
  result = ccsrp_gp_rfc5054_8192();
  qword_27E5190F8 = result;
  return result;
}

uint64_t OptionsToString(int *a1, char **a2)
{
  v4 = malloc_type_malloc(1uLL, 0x3D45A04CuLL);
  if (!v4)
  {
    return 4294967294;
  }

  v5 = v4;
  *v4 = 0;
  v6 = *a1;
  v7 = (*a1 & 1) == 0;
  if (*a1)
  {
    v9 = reallocf(v4, 0xDuLL);
    if (!v9)
    {
      return 4294967294;
    }

    v5 = v9;
    v8 = 13;
    strlcat(v9, "mda=", 0xDuLL);
    strlcat(v5, "SHA-512", 0xDuLL);
  }

  else
  {
    v8 = 1;
  }

  if (*(a1 + 4) == 1)
  {
    v8 += 17;
    v10 = reallocf(v5, v8);
    if (!v10)
    {
      return 4294967294;
    }

    v5 = v10;
    if (v6)
    {
      strlcat(v10, ",", v8);
    }

    strlcat(v5, "replay_detection", v8);
    v7 = 0;
  }

  if (a1[2])
  {
    v8 += 44;
    v11 = reallocf(v5, v8);
    if (!v11)
    {
      return 4294967294;
    }

    v5 = v11;
    if (!v7)
    {
      strlcat(v11, ",", v8);
    }

    strlcat(v5, "confidentiality+integrity=", v8);
    strlcat(v5, "ChaCha20-Poly1305", v8);
    v7 = 0;
  }

  if (a1[4])
  {
    v8 += 25;
    v12 = reallocf(v5, v8);
    if (!v12)
    {
      return 4294967294;
    }

    v5 = v12;
    if (!v7)
    {
      strlcat(v12, ",", v8);
    }

    strlcat(v5, "kdf=", v8);
    strlcat(v5, "SALTED-SHA512-PBKDF2", v8);
    v7 = 0;
  }

  if (a1[2] && *(a1 + 3) <= 0x7FFFFFFAuLL)
  {
    v8 += 25;
    v13 = reallocf(v5, v8);
    if (!v13)
    {
      return 4294967294;
    }

    v5 = v13;
    if (!v7)
    {
      strlcat(v13, ",", v8);
    }

    strlcat(v5, "maxbuffersize=", v8);
    v14 = strlen(v5);
    snprintf(&v5[v14], v8 - v14, "%lu", *(a1 + 3));
    v7 = 0;
  }

  v15 = a1[3];
  if (v15)
  {
    v8 += 27;
    v16 = reallocf(v5, v8);
    if (!v16)
    {
      return 4294967294;
    }

    v5 = v16;
    if (!v7)
    {
      strlcat(v16, ",", v8);
    }

    strlcat(v5, "mandatory=", v8);
    strlcat(v5, "replay_detection", v8);
    v7 = 0;
    v15 = a1[3];
  }

  if ((v15 & 2) == 0)
  {
LABEL_37:
    result = 0;
    *a2 = v5;
    return result;
  }

  v17 = reallocf(v5, v8 + 36);
  if (v17)
  {
    v5 = v17;
    if (!v7)
    {
      strlcat(v17, ",", v8 + 36);
    }

    strlcat(v5, "mandatory=", v8 + 36);
    strlcat(v5, "confidentiality+integrity", v8 + 36);
    goto LABEL_37;
  }

  return 4294967294;
}

uint64_t ParseOptions(uint64_t a1, char *__s, int *a3, char a4)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;
  *(a3 + 3) = 2147483643;
  if (__s)
  {
    v6 = __s;
    while (1)
    {
      v7 = strlen(v6);
      if (!v7)
      {
        return 0;
      }

      v8 = v7;
      v9 = strchr(v6, 44);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = &v6[v8];
      }

      v11 = v10 - v6;
      v12 = malloc_type_malloc(v10 - v6 + 1, 0xF47C1E9FuLL);
      if (!v12)
      {
        return 4294967294;
      }

      v13 = v12;
      if (v10 != v6)
      {
        if (v11 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v10 - v6;
        }

        v15 = v12;
        do
        {
          v16 = *v6++;
          *v15++ = __tolower(v16);
          --v14;
        }

        while (v14);
      }

      v13[v11] = 0;
      v6 = v10 + 1;
      v17 = *v10;
      if (!strncasecmp(v13, "mda=", 4uLL))
      {
        v32 = strcasecmp(v13 + 4, "SHA-512");
        if (a4)
        {
          if (v32)
          {
            *a3 = 0;
            SETERROR(a1, "SRP MDA %s not supported", v18, v19, v20, v21, v22, v23, v13 + 4);
            goto LABEL_57;
          }

          v33 = *a3;
          if (*a3)
          {
            *a3 = 0;
            v44 = "Multiple SRP MDAs given";
            goto LABEL_56;
          }
        }

        else
        {
          v33 = *a3;
        }

        *a3 = v33 | (v32 == 0);
      }

      else if (!strcasecmp(v13, "replay_detection"))
      {
        if (*(a3 + 4) == 1)
        {
          v44 = "SRP Replay Detection option appears twice";
          goto LABEL_56;
        }

        *(a3 + 4) = 1;
      }

      else if (!strncasecmp(v13, "confidentiality+integrity=", 0x1AuLL))
      {
        v34 = strcasecmp(v13 + 26, "ChaCha20-Poly1305");
        if (a4)
        {
          if (v34)
          {
            a3[2] = 0;
            SETERROR(a1, "SRP Confidentiality+Integrity option %s not supported", v25, v26, v27, v28, v29, v30, v13 + 26);
            goto LABEL_60;
          }

          v35 = a3[2];
          if (v35)
          {
            a3[2] = 0;
            v45 = "Multiple SRP Confidentiality+Integrity options given";
LABEL_59:
            SETERROR(a1, v45, v25, v26, v27, v28, v29, v30);
LABEL_60:
            v17 = 0xFFFFFFFFLL;
            goto LABEL_61;
          }
        }

        else
        {
          v35 = a3[2];
        }

        a3[2] = v35 | (v34 == 0);
      }

      else if ((a4 & 1) == 0 && !strncasecmp(v13, "mandatory=", 0xAuLL))
      {
        if (!strcasecmp(v13 + 10, "replay_detection"))
        {
          v43 = a3[3] | 1;
        }

        else
        {
          if (strncasecmp(v13 + 10, "confidentiality+integrity", 0x19uLL))
          {
            v47 = v13 + 10;
            v44 = "Mandatory SRP option %s not supported";
LABEL_56:
            SETERROR(a1, v44, v18, v19, v20, v21, v22, v23, v47);
LABEL_57:
            v17 = 4294967291;
LABEL_61:
            free(v13);
            return v17;
          }

          v43 = a3[3] | 2;
        }

        a3[3] = v43;
      }

      else if (!strncasecmp(v13, "maxbuffersize=", 0xEuLL))
      {
        v36 = strtoul(v13 + 14, 0, 10);
        *(a3 + 3) = v36;
        if (v36 > 0x7FFFFFFB)
        {
          SETERROR(a1, "SRP Maxbuffersize %lu too big (> %u)", v37, v38, v39, v40, v41, v42, v36, 2147483643);
          goto LABEL_57;
        }
      }

      else if (!strncasecmp(v13, "kdf=", 4uLL))
      {
        v24 = strcasecmp(v13 + 4, "SALTED-SHA512-PBKDF2");
        if (a4)
        {
          if (v24)
          {
            a3[4] = 0;
            SETERROR(a1, "SRP KDF option %s not supported", v25, v26, v27, v28, v29, v30, v13 + 4);
            goto LABEL_60;
          }

          v31 = a3[4];
          if (v31)
          {
            a3[4] = 0;
            v45 = "Multiple SRP KDF options given";
            goto LABEL_59;
          }
        }

        else
        {
          v31 = a3[4];
        }

        a3[4] = v31 | (v24 == 0);
      }

      free(v13);
      if (!v17)
      {
        return v17;
      }
    }
  }

  return 0;
}

uint64_t SetMDA(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    digestbyname = cc_get_digestbyname("sha512");
    result = 0;
    *(a2 + 336) = digestbyname;
  }

  else
  {
    fwrite("Unable to find SRP MDA option now\n", 0x22uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t LayerInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 24);
  if (*(a1 + 4))
  {
    *(a2 + 360) |= 1u;
    v7 = *(a1 + 8);
    if (!v7)
    {
      v7 = 1;
      *(a1 + 8) = 1;
    }
  }

  else
  {
    v7 = *(a1 + 8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  *(a2 + 360) |= 2u;
  if (v7 == 1)
  {
    if (strcasecmp("ChaCha20-Poly1305", "ChaCha20-Poly1305"))
    {
      v8 = *MEMORY[0x277D85DF8];
      v9 = "Unsupported SRP confidentiality+integrity layer option, not ChaCha20-Poly1305\n";
LABEL_13:
      v10 = 78;
      goto LABEL_14;
    }

    LODWORD(v6) = v6 - 16;
    chacha20_poly1305_init_64x64();
    chacha20_poly1305_init_64x64();
LABEL_10:
    if (*(a1 + 16) == 1)
    {
      result = 0;
      *(a2 + 936) = 0u;
      *(a2 + 952) = 0u;
      *(a2 + 936) = 4;
      *(a2 + 964) = v6 - 4;
      return result;
    }

    v8 = *MEMORY[0x277D85DF8];
    v9 = "Unable to find SRP KDF layer option, kdf=SALTED-SHA512-PBKDF2 option required\n";
    goto LABEL_13;
  }

  v8 = *MEMORY[0x277D85DF8];
  v9 = "Unable to find SRP confidentiality+integrity layer option\n";
  v10 = 58;
LABEL_14:
  fwrite(v9, v10, 1uLL, v8);
  return 0xFFFFFFFFLL;
}

uint64_t CreateClientOpts(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 4) = 1;
  *(a3 + 8) = 1;
  *a3 = 1;
  v3 = 2147483643;
  *(a3 + 24) = 2147483643;
  if (*(a2 + 24) < 0x7FFFFFFBuLL)
  {
    v3 = *(a2 + 24);
  }

  *(a3 + 24) = v3;
  *(a3 + 16) = 1;
  return 0;
}

id ldap_connection_obj_alloc(uint64_t a1)
{
  v1 = a1 - 8;
  v2 = objc_opt_class();

  return class_createInstance(v2, v1);
}

id ldap_operation_obj_alloc(uint64_t a1)
{
  v1 = a1 - 8;
  v2 = objc_opt_class();

  return class_createInstance(v2, v1);
}

void _ldap_connection_create_cold_1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void _o_ldap_connection_cancel_all_operations_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 2048;
  v3 = v0;
  _os_log_debug_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "connection: %p, cancel operation count: %ld", v1, 0x16u);
}

void ldap_connection_query_create_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void _o_ldap_operation_cancel_internal_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 1024;
  v3 = v0;
  _os_log_debug_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "abandon connection: %p, ldap msgid: %d", v1, 0x12u);
}

void ___o_initiate_tls_handshake_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___o_negotiate_ssl_block_invoke_cold_1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_240C91000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "connection: %p, TLS: negotiated", v0, 0xCu);
}

void ___schedule_read_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void _o_ldap_receive_messages_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ___o_ldap_wakeup_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void _ldap_continue_sasl_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void ___o_ldap_digestmd5_auth_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ___o_ldap_digestmd5_auth_block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}