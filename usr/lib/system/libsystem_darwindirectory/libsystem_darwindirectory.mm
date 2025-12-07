void _ddrsReaderApplyToStore(uint64_t *a1, int a2, const unsigned __int8 *a3, uint64_t a4)
{
  v39 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1[3]);
  _ddrsReaderUpdateRecordStoreIfNeeded(a1);
  os_unfair_lock_assert_owner(a1[3]);
  if (a2)
  {
    if (a2 != 1)
    {
      _ddrsReaderApplyToStore_cold_3(v8, v9);
    }

    v10 = "ddrsKeyGroupRecordList";
  }

  else
  {
    v10 = "ddrsKeyUserRecordList";
  }

  if (!a3)
  {
    v17 = 0;
LABEL_18:
    *&v28 = MEMORY[0x29EDCA5F8];
    *(&v28 + 1) = 0x40000000;
    v29 = ___ddrsReaderApplyToStoreRecords_block_invoke;
    v30 = &unk_29F28EA98;
    v33 = a3;
    v34 = v17;
    v36 = a2;
    v35 = a1;
    v31 = a4;
    v32 = v10;
    xpc_traverse_serialized_data();
    goto LABEL_19;
  }

  os_unfair_lock_assert_owner(a1[3]);
  memset(out, 0, 37);
  v13 = *a3;
  if (*a3 == 2)
  {
    v14 = out;
    uuid_unparse(a3 + 8, out);
    v15 = "ddrsKeyGroupUUIDMap";
    v16 = "ddrsKeyUserUUIDMap";
  }

  else if (v13 == 1)
  {
    v14 = *(a3 + 1);
    v15 = "ddrsKeyGroupNameMap";
    v16 = "ddrsKeyUserNameMap";
  }

  else
  {
    if (v13)
    {
      _ddrsReaderApplyToStore_cold_2(v11, v12);
    }

    v14 = __str;
    snprintf(__str, 0xBuLL, "%u", *(a3 + 2));
    v15 = "ddrsKeyGroupIDMap";
    v16 = "ddrsKeyUserIDMap";
  }

  if (a2)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  v19[1] = MEMORY[0x29EDCA5F8];
  v19[2] = 0x40000000;
  v19[3] = ___ddrsReaderFindStoreRecordIndex_block_invoke;
  v19[4] = &unk_29F28EAC0;
  v19[7] = v14;
  v19[8] = v18;
  v19[9] = strlen(v18);
  v19[5] = &v24;
  v19[6] = &v20;
  xpc_traverse_serialized_data();
  if ((v25[3] & 1) == 0)
  {
    _ddrsReaderApplyToStore_cold_1(v19, &v28);
  }

  v17 = v21[3];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  if (v17 != -1)
  {
    goto LABEL_18;
  }

LABEL_19:
  os_unfair_lock_unlock(a1[3]);
}

void _ddrsReaderUpdateRecordStoreIfNeeded(uint64_t *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(a1[3]);
  if (*(a1 + 4) == -1)
  {
    os_unfair_lock_assert_owner(a1[3]);
    if (*(a1 + 4) != -1)
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_1(&v13, v15);
    }

    v2 = (*(*(a1[4] + 40) + 16))();
    if (v2)
    {
      v3 = v2;
      v15[0] = 0uLL;
      v13 = 0;
      v14 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v15[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        shared_cache_range = _dyld_get_shared_cache_range();
      }

      else
      {
        shared_cache_range = 0;
        v13 = 0;
        v14 = 0;
      }

      _os_log_simple(&dword_299DE2000, v15, &v13, shared_cache_range, 16, "com.apple.DarwinDirectory", "Failed to register for record store update notifications: %d", v3);
    }
  }

  os_unfair_lock_assert_owner(a1[3]);
  if (*(a1 + 4) != -1)
  {
    (*(*(a1[4] + 48) + 16))();
  }

  if (!*a1)
  {
    v15[0] = 0uLL;
    v13 = 0;
    v14 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v15[0] = 0uLL;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v5 = _dyld_get_shared_cache_range();
    }

    else
    {
      v5 = 0;
      v13 = 0;
      v14 = 0;
    }

    _os_log_simple(&dword_299DE2000, v15, &v13, v5, 0, "com.apple.DarwinDirectory", "Record store has not yet been loaded");
    os_unfair_lock_assert_owner(a1[3]);
    v6 = *a1;
    if (*a1)
    {
      _ddrsReaderUnloadRecordStore(a1);
    }

    os_unfair_lock_assert_owner(a1[3]);
    if (*a1)
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_2(&v13, v15);
    }

    if (a1[1])
    {
      _ddrsReaderUpdateRecordStoreIfNeeded_cold_3(&v13, v15);
    }

    v7 = _ddrsReaderLoadAndValidateRecordStoreAtPath("/private/var/db/DarwinDirectory/local/recordStore.data", a1);
    if (v7)
    {
      v15[0] = 0uLL;
      v13 = 0;
      v14 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v15[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v9 = _dyld_get_shared_cache_range();
      }

      else
      {
        v9 = 0;
        v13 = 0;
        v14 = 0;
      }

      _os_log_simple(&dword_299DE2000, v15, &v13, v9, 0, "com.apple.DarwinDirectory", "Loaded local record store");
      ++*(a1 + 10);
    }

    else
    {
      if (v6)
      {
        _ddrsReaderUpdateRecordStoreIfNeeded_cold_4(v7, v8);
      }

      v10 = _ddrsReaderLoadAndValidateRecordStoreAtPath("/System/Library/DarwinDirectory/system/recordStore.data", a1);
      if ((v10 & 1) == 0)
      {
        _ddrsReaderUpdateRecordStoreIfNeeded_cold_5(v10, v11);
      }

      v15[0] = 0uLL;
      v13 = 0;
      v14 = 0;
      if ((_dyld_get_image_uuid() & 1) == 0)
      {
        v15[0] = 0uLL;
      }

      if (_dyld_get_shared_cache_uuid())
      {
        v12 = _dyld_get_shared_cache_range();
      }

      else
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
      }

      _os_log_simple(&dword_299DE2000, v15, &v13, v12, 0, "com.apple.DarwinDirectory", "Loaded system record store");
    }
  }
}

uint64_t _ddrsGetGeneration(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 24));
  _ddrsReaderUpdateRecordStoreIfNeeded(a1);
  v2 = *(a1 + 20);
  os_unfair_lock_unlock(*(a1 + 24));
  return v2;
}

uint64_t _ddrsReaderUnloadRecordStore(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a1 + 24));
  if (!*a1)
  {
    _ddrsReaderUnloadRecordStore_cold_3(&v3, v4);
  }

  if (!*(a1 + 8))
  {
    _ddrsReaderUnloadRecordStore_cold_2(&v3, v4);
  }

  result = (*(*(*(a1 + 32) + 32) + 16))();
  if (result)
  {
    _ddrsReaderUnloadRecordStore_cold_1(&v3, v4);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath(const char *a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*(a2 + 24));
  v4 = *(a2 + 32);
  if ((*(*v4 + 16))() == -1)
  {
    v7 = *__error();
    v30 = 0;
    v31 = 0;
    v36 = 0;
    v37 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      *uu = 0;
      shared_cache_range = _dyld_get_shared_cache_range();
    }

    else
    {
      shared_cache_range = 0;
      v36 = 0;
      v37 = 0;
    }

    v14 = strerror(v7);
    _os_log_simple(&dword_299DE2000, &v30, &v36, shared_cache_range, 16, "com.apple.DarwinDirectory", "Failed to open record store %s: %s [%d]", a1, v14, v7);
    result = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *uu2 = 0u;
  if ((*(v4[2] + 16))())
  {
    v5 = *__error();
    v30 = 0;
    v31 = 0;
    v36 = 0;
    v37 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      *uu = 0;
      v6 = _dyld_get_shared_cache_range();
    }

    else
    {
      v6 = 0;
      v36 = 0;
      v37 = 0;
    }

    v16 = strerror(v5);
    _os_log_simple(&dword_299DE2000, &v30, &v36, v6, 16, "com.apple.DarwinDirectory", "Failed to stat record store %s: %s [%d]", a1, v16);
LABEL_18:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = (*(v4[3] + 16))();
  if (v9 == -1)
  {
    v10 = *__error();
    v30 = 0;
    v31 = 0;
    v36 = 0;
    v37 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      v30 = 0;
      v31 = 0;
    }

    if (_dyld_get_shared_cache_uuid())
    {
      *uu = 0;
      v11 = _dyld_get_shared_cache_range();
    }

    else
    {
      v11 = 0;
      v36 = 0;
      v37 = 0;
    }

    v17 = strerror(v10);
    _os_log_simple(&dword_299DE2000, &v30, &v36, v11, 16, "com.apple.DarwinDirectory", "Failed to mmap file %s: %s [%d]", a1, v17);
    goto LABEL_18;
  }

LABEL_19:
  (*(v4[1] + 16))();
  v12 = v25;
  if (!v9)
  {
    v12 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v12;
  if (v9)
  {
    os_unfair_lock_assert_owner(*(a2 + 24));
    *uu = 0;
    v29 = 0;
    os_unfair_lock_assert_owner(*(a2 + 24));
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v30 = MEMORY[0x29EDCA5F8];
    v31 = 0x40000000;
    v32 = ___ddrsReaderExtractRecordStoreBootUUID_block_invoke;
    v33 = &unk_29F28EA70;
    v34 = &v36;
    v35 = uu;
    xpc_traverse_serialized_data();
    if ((v37[3] & 1) == 0)
    {
      _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_1(&v18, uu2);
    }

    _Block_object_dispose(&v36, 8);
    if (uuid_is_null(uu))
    {
      _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_4();
      return 1;
    }

    memset(uu2, 0, sizeof(uu2));
    if ((*(*(*(a2 + 32) + 56) + 16))())
    {
      _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_2();
    }

    else
    {
      if (!uuid_compare(uu, uu2))
      {
        return 1;
      }

      _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_3();
    }

    memset(uu2, 0, sizeof(uu2));
    v30 = 0;
    v31 = 0;
    if ((_dyld_get_image_uuid() & 1) == 0)
    {
      memset(uu2, 0, sizeof(uu2));
    }

    if (_dyld_get_shared_cache_uuid())
    {
      v36 = 0;
      v15 = _dyld_get_shared_cache_range();
    }

    else
    {
      v15 = 0;
      v30 = 0;
      v31 = 0;
    }

    _os_log_simple(&dword_299DE2000, uu2, &v30, v15, 0, "com.apple.DarwinDirectory", "Record store at path %s doesn't have the correct boot uuid, unloading", a1);
    _ddrsReaderUnloadRecordStore(a2);
  }

  return 0;
}

uint64_t ___ddrsReaderExtractRecordStoreBootUUID_block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 == 6)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v5, v6);
    }

    if (*a3 != MEMORY[0x29EDCAA60])
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_2(&v5, v6);
    }

    if (*(a3 + 8) != 16)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_3(&v5, v6);
    }

    uuid_copy(*(a1 + 40), *(a3 + 16));
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 3;
  }

  else if (a2 == 5)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v5, v6);
    }

    return strncmp(*a3, "ddrsKeyBootUUID", 0xFuLL) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ddrsReaderApplyToStoreRecords_block_invoke(uint64_t a1, int a2, const char **a3)
{
  v37 = *MEMORY[0x29EDCA608];
  string_ptr = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v30, 0, sizeof(v30));
  if (a2 != 4)
  {
    if (a2 != 7)
    {
      result = 0;
      if (a2 == 5)
      {
        if (!a3)
        {
          ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v29, v36);
        }

        v6 = *a3;
        v7 = *(a1 + 40);
        v8 = strlen(v7);
        return strncmp(v6, v7, v8) != 0;
      }

      return result;
    }

    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v29, v36);
    }

    v9 = *(a1 + 72);
    if (v9 == 1)
    {
      *(&v33 + 1) = v30;
    }

    LOBYTE(v31) = v9;
    if (MEMORY[0x29C2B1D50](a3) != MEMORY[0x29EDCAA00])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_3(&v29, v36);
    }

    value = xpc_dictionary_get_value(a3, "ID");
    v11 = MEMORY[0x29C2B1D50]();
    v12 = MEMORY[0x29EDCAA58];
    if (v11 != MEMORY[0x29EDCAA58])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(&v29, v36);
    }

    DWORD1(v31) = xpc_uint64_get_value(value);
    v13 = xpc_dictionary_get_value(a3, "name");
    v14 = MEMORY[0x29C2B1D50]();
    v15 = MEMORY[0x29EDCAA50];
    if (v14 != MEMORY[0x29EDCAA50])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v29, v36);
    }

    *(&v31 + 1) = xpc_string_get_string_ptr(v13);
    v16 = xpc_dictionary_get_value(a3, "UUID");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCAA60])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_6(&v29, v36);
    }

    bytes = xpc_uuid_get_bytes(v16);
    uuid_copy(&v32, bytes);
    v18 = xpc_dictionary_get_value(a3, "isMutable");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCA9E8])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_7(&v29, v36);
    }

    LOBYTE(v33) = xpc_BOOL_get_value(v18);
    if (v9 != 1)
    {
      if (!v9)
      {
        v19 = xpc_dictionary_get_value(a3, "primaryGroupID");
        if (MEMORY[0x29C2B1D50]() != v12)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(&v29, v36);
        }

        DWORD2(v33) = xpc_uint64_get_value(v19);
        v20 = xpc_dictionary_get_value(a3, "fullName");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v29, v36);
        }

        *&v34 = xpc_string_get_string_ptr(v20);
        v21 = xpc_dictionary_get_value(a3, "homeDirectory");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v29, v36);
        }

        *(&v34 + 1) = xpc_string_get_string_ptr(v21);
        v22 = xpc_dictionary_get_value(a3, "shell");
        if (MEMORY[0x29C2B1D50]() != v15)
        {
          ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(&v29, v36);
        }

        string_ptr = xpc_string_get_string_ptr(v22);
      }

      goto LABEL_33;
    }

    v23 = xpc_dictionary_get_value(a3, "memberNames");
    if (MEMORY[0x29C2B1D50]() != MEMORY[0x29EDCA9E0])
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_8(&v29, v36);
    }

    count = xpc_array_get_count(v23);
    v25 = count;
    if (count >= 0x20)
    {
      ___ddrsReaderApplyToStoreRecords_block_invoke_cold_9(count, &v31);
    }

    else
    {
      *(*(&v33 + 1) + 8 * count) = 0;
      if (!count)
      {
LABEL_33:
        WORD1(v33) = *(*(a1 + 64) + 20);
        (*(*(a1 + 32) + 16))();
        if (*(a1 + 72) == 1 && *(&v33 + 1) != v30)
        {
          free(*(&v33 + 1));
        }

        return 0;
      }
    }

    v26 = 0;
    do
    {
      v27 = xpc_array_get_value(v23, v26);
      if (MEMORY[0x29C2B1D50]() != v15)
      {
        ___ddrsReaderApplyToStoreRecords_block_invoke_cold_10(&v29, v36);
      }

      v28 = xpc_string_get_string_ptr(v27);
      *(*(&v33 + 1) + 8 * v26++) = v28;
    }

    while (v25 != v26);
    goto LABEL_33;
  }

  if (!*(a1 + 48))
  {
    return 2;
  }

  if (!a3)
  {
    ___ddrsReaderApplyToStoreRecords_block_invoke_cold_2(&v29, v36);
  }

  if (*a3 == *(a1 + 56))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ___ddrsReaderFindStoreRecordIndex_block_invoke(uint64_t a1, int a2, const char **a3)
{
  v6 = *MEMORY[0x29EDCA608];
  if (a2 == 6)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v4, v5);
    }

    if (*a3 == MEMORY[0x29EDCAA30])
    {
      *(*(*(a1 + 40) + 8) + 24) = a3[2];
    }

    return 3;
  }

  else if (a2 == 5)
  {
    if (!a3)
    {
      ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(&v4, v5);
    }

    ___ddrsReaderFindStoreRecordIndex_block_invoke_cold_3(a1, a3, v5);
    return LODWORD(v5[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](a1, v6, v5, 80, a5, v7, 16);
}

double OUTLINED_FUNCTION_1(void *a1, _OWORD *a2)
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

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{

  return _os_crash_msg();
}

BOOL OUTLINED_FUNCTION_4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2A1C75D78](2, 6, a3, 0);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](a1, v6, v5, 80, a5, v7, 16);
}

double OUTLINED_FUNCTION_7(void *a1, _OWORD *a2)
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

uint64_t DarwinDirectoryRecordStoreApplyWithFilter(int a1, const unsigned __int8 *a2, uint64_t a3)
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  _ddrsReaderApplyToStore(getStore_store, a1, a2, a3);
  return 1;
}

uint64_t DarwinDirectoryRecordStoreApply(int a1, uint64_t a2)
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  _ddrsReaderApplyToStore(getStore_store, a1, 0, a2);
  return 1;
}

uint64_t DarwinDirectoryGetGeneration(uint64_t a1)
{
  if (getStore_once != -1)
  {
    DarwinDirectoryRecordStoreApplyWithFilter_cold_1();
  }

  return _ddrsGetGeneration(getStore_store);
}

void __getStore_block_invoke()
{
  v3 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 4uLL, 0x8709206FuLL);
  if (!v0)
  {
    __getStore_block_invoke_cold_2(&v1, v2);
  }

  qword_2A197E158 = v0;
  *v0 = 0;
  if (getSideEffects_once != -1)
  {
    __getStore_block_invoke_cold_1();
  }

  qword_2A197E160 = getSideEffects_sideEffects;
}

void *__getSideEffects_block_invoke()
{
  v18 = *MEMORY[0x29EDCA608];
  v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x8709206FuLL);
  if (!v0)
  {
    __getSideEffects_block_invoke_cold_1(&v16, v17);
  }

  getSideEffects_sideEffects = v0;
  *v0 = &__block_literal_global_8;
  v1 = _Block_copy(&__block_literal_global_8);
  v2 = getSideEffects_sideEffects;
  *getSideEffects_sideEffects = v1;
  *(v2 + 8) = &__block_literal_global_12;
  v3 = _Block_copy(&__block_literal_global_12);
  v4 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 8) = v3;
  *(v4 + 16) = &__block_literal_global_16;
  v5 = _Block_copy(&__block_literal_global_16);
  v6 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 16) = v5;
  *(v6 + 24) = &__block_literal_global_20;
  v7 = _Block_copy(&__block_literal_global_20);
  v8 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 24) = v7;
  *(v8 + 32) = &__block_literal_global_24;
  v9 = _Block_copy(&__block_literal_global_24);
  v10 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 32) = v9;
  *(v10 + 40) = &__block_literal_global_28;
  v11 = _Block_copy(&__block_literal_global_28);
  v12 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 40) = v11;
  *(v12 + 48) = &__block_literal_global_32;
  v13 = _Block_copy(&__block_literal_global_32);
  v14 = getSideEffects_sideEffects;
  *(getSideEffects_sideEffects + 48) = v13;
  *(v14 + 56) = &__block_literal_global_36;
  result = _Block_copy(&__block_literal_global_36);
  *(getSideEffects_sideEffects + 56) = result;
  return result;
}

uint64_t __getSideEffects_block_invoke_9(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *in = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = 37;
  v3 = sysctlbyname("kern.bootsessionuuid", in, &v5, 0, 0);
  if (!v3)
  {
    uuid_parse(in, a2);
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return MEMORY[0x2A1C76ED8](v8, v5, v6, 80, a5, v7, 16);
}

void _ddrsReaderApplyToStore_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_6(v5, v2, v3, v4, &dword_299DE2000);
  _os_crash_msg();
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderUpdateRecordStoreIfNeeded_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderUnloadRecordStore_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_7(a1, a2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  OUTLINED_FUNCTION_6(v5, v2, v3, v4, &dword_299DE2000);
  _os_crash_msg();
  __break(1u);
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_2()
{
  v8 = *MEMORY[0x29EDCA608];
  v0 = *__error();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v4 = 0;
    v5 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    shared_cache_range = _dyld_get_shared_cache_range();
  }

  else
  {
    shared_cache_range = 0;
    v6 = 0;
    v7 = 0;
  }

  v2 = strerror(v0);
  return _os_log_simple(&dword_299DE2000, &v4, &v6, shared_cache_range, 16, "com.apple.DarwinDirectory", "Failed to get the current boot UUID: %s (%d)", v2, v0);
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_3()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v2 = 0;
    v3 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    shared_cache_range = _dyld_get_shared_cache_range();
    return _os_log_simple(&dword_299DE2000, &v2, &v4, shared_cache_range, 0, "com.apple.DarwinDirectory", "Record store boot UUID does not match the current boot session", 0);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    return _os_log_simple(&dword_299DE2000, &v2, &v4, 0, 0, "com.apple.DarwinDirectory", "Record store boot UUID does not match the current boot session");
  }
}

uint64_t _ddrsReaderLoadAndValidateRecordStoreAtPath_cold_4()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  if ((_dyld_get_image_uuid() & 1) == 0)
  {
    v2 = 0;
    v3 = 0;
  }

  if (_dyld_get_shared_cache_uuid())
  {
    shared_cache_range = _dyld_get_shared_cache_range();
    return _os_log_simple(&dword_299DE2000, &v2, &v4, shared_cache_range, 0, "com.apple.DarwinDirectory", "Record store has a NULL boot UUID", 0);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    return _os_log_simple(&dword_299DE2000, &v2, &v4, 0, 0, "com.apple.DarwinDirectory", "Record store has a NULL boot UUID");
  }
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderExtractRecordStoreBootUUID_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_3(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_4(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_5(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_6(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_7(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_8(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

void *___ddrsReaderApplyToStoreRecords_block_invoke_cold_9(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(8 * a1 + 8, 0x10040436913F5uLL);
  *(a2 + 40) = result;
  result[a1] = 0;
  return result;
}

void ___ddrsReaderApplyToStoreRecords_block_invoke_cold_10(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_1(a1, a2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_0(v2, v3, v4, v5, &dword_299DE2000);
  OUTLINED_FUNCTION_3(v6);
  __break(1u);
}

uint64_t ___ddrsReaderFindStoreRecordIndex_block_invoke_cold_3(uint64_t a1, const char **a2, int *a3)
{
  v5 = *(*(a1 + 32) + 8);
  v6 = *a2;
  if (*(v5 + 24) != 1)
  {
    result = strncmp(v6, *(a1 + 56), *(a1 + 64));
    if (!result)
    {
      v8 = 0;
      *(v5 + 24) = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  result = strcmp(v6, *(a1 + 48));
  if (result)
  {
LABEL_5:
    v8 = 1;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  *a3 = v8;
  return result;
}

void __getStore_block_invoke_cold_2(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v3, v4, v5, v6, &dword_299DE2000);
  _os_crash_msg();
  __break(1u);
}

void __getSideEffects_block_invoke_cold_1(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  v2 = __error();
  strerror(*v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(v3, v4, v5, v6, &dword_299DE2000);
  v7 = _os_crash_msg();
  __break(1u);
  _Block_copy(v7);
}