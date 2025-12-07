uint64_t mmcs_http_request_options_create_promoted_to_foreground_copy(uint64_t a1)
{
  result = mmcs_http_request_options_create_copy(a1);
  if (result)
  {
    if (!*(result + 88))
    {
      *(result + 80) = 0;
      *(result + 96) = 0;
    }
  }

  return result;
}

uint64_t mmcs_http_request_options_create_override_network_service_type_to_background_system_initiated_copy(uint64_t a1)
{
  copy = mmcs_http_request_options_create_copy(a1);
  v2 = copy;
  if (copy)
  {
    v3 = *(copy + 56);
    if (v3)
    {
      CFRelease(v3);
    }

    *(v2 + 56) = 0;
    valuePtr = 5;
    *(v2 + 56) = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
  }

  return v2;
}

uint64_t mmcs_http_request_options_create_proxy_copy(uint64_t a1)
{
  result = mmcs_http_request_options_create_copy(a1);
  if (result)
  {
    *(result + 77) = 257;
    *(result + 144) = 0;
  }

  return result;
}

void mmcs_http_request_options_set_inserted_header(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 64);
  v7 = *MEMORY[0x277CBECE8];
  if (v6)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, v6);
    v9 = MutableCopy;
    if (!a3)
    {
      CFDictionaryRemoveValue(MutableCopy, a2);
      goto LABEL_6;
    }
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v7, 0, &_myCFStringCaseInsensitiveKeyCallbacks, MEMORY[0x277CBF150]);
    v9 = MutableCopy;
  }

  CFDictionarySetValue(MutableCopy, a2, a3);
LABEL_6:
  if (!CFDictionaryGetCount(v9))
  {
    if (v9)
    {
      CFRelease(v9);
    }

    v9 = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  *(a1 + 64) = v9;
}

void mmcs_http_request_options_add_inserted_header_if_absent(uint64_t a1, void *key, const void *a3)
{
  v6 = *(a1 + 64);
  if (!v6 || !CFDictionaryContainsKey(v6, key))
  {

    mmcs_http_request_options_set_inserted_header(a1, key, a3);
  }
}

BOOL mmcs_http_request_options_is_background(_BOOL8 result)
{
  if (result)
  {
    return *(result + 80) || *(result + 88) || *(result + 96) != 0;
  }

  return result;
}

uint64_t mmcs_http_request_options_network_behavior_type(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 80);
    if (v2 != 2)
    {
      if (v2 == 1)
      {
        return 3;
      }

      if (v2)
      {
        mmcs_http_request_options_network_behavior_type_cold_1();
      }

      return *(result + 88) || *(result + 96);
    }

    v3 = *(result + 88);
    if (v3 >= 3)
    {
      return 0;
    }

    return qword_25785F7F8[v3];
  }

  return result;
}

BOOL mmcs_http_request_options_should_use_bk_sys(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    v4 = a3 == 1;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && *(a1 + 74) == 0 && a4 >> 20 > 4;
}

void _mmcs_http_request_optionsCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[2] = 0;
  v3 = a1[15];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[15] = 0;
  v4 = a1[16];
  if (v4)
  {
    CFRelease(v4);
  }

  a1[16] = 0;
  v5 = a1[3];
  if (v5)
  {
    CFRelease(v5);
  }

  a1[3] = 0;
  v6 = a1[4];
  if (v6)
  {
    CFRelease(v6);
  }

  a1[4] = 0;
  v7 = a1[5];
  if (v7)
  {
    CFRelease(v7);
  }

  a1[5] = 0;
  v8 = a1[6];
  if (v8)
  {
    CFRelease(v8);
  }

  a1[6] = 0;
  v9 = a1[7];
  if (v9)
  {
    CFRelease(v9);
  }

  a1[7] = 0;
  v10 = a1[8];
  if (v10)
  {
    CFRelease(v10);
  }

  a1[8] = 0;
  v11 = a1[13];
  if (v11)
  {
    CFRelease(v11);
  }

  a1[13] = 0;
  v12 = a1[14];
  if (v12)
  {
    CFRelease(v12);
  }

  a1[14] = 0;
}

void sub_2577E8244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MMCSItemMemoryReaderWriterCreateWithData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = C3TypeRegister(&MMCSItemMemoryReaderWriterGetTypeID_typeID, &kMMCSItemMemoryReaderWriterContextClass);
  Instance = C3TypeCreateInstance_(0, v2, 0x10uLL);
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a1;
    CFRetain(a1);
    *(v4 + 24) = 0;
  }

  return v4;
}

uint64_t MMCSItemMemoryReaderWriterCreateWithMutableData(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = C3TypeRegister(&MMCSItemMemoryReaderWriterGetTypeID_typeID, &kMMCSItemMemoryReaderWriterContextClass);
  Instance = C3TypeCreateInstance_(0, v2, 0x10uLL);
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = a1;
    CFRetain(a1);
  }

  return v4;
}

void *MMCSItemReaderWriterCreateWithData(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MMCSItemMemoryReaderWriterCreateWithData(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v9[0] = 3;
  v9[1] = v5;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = C3BaseRetain;
  v9[5] = C3BaseRelease;
  v9[6] = MMCSItemMemoryReaderWriterStat1;
  v9[7] = MMCSItemMemoryReaderWriterOpen;
  v9[8] = MMCSItemMemoryReaderWriterRead;
  v9[9] = MMCSItemMemoryReaderWriterClose;
  memset(&v9[10], 0, 24);
  v9[13] = MMCSItemMemoryReaderWriterWrite;
  v9[14] = 0;
  v7 = MMCSItemReaderWriterCreate(v9);
  C3BaseRelease(v6);
  return v7;
}

void *MMCSItemReaderWriterCreateWithMutableData(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MMCSItemMemoryReaderWriterCreateWithMutableData(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v9[0] = 3;
  v9[1] = v5;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = C3BaseRetain;
  v9[5] = C3BaseRelease;
  v9[6] = MMCSItemMemoryReaderWriterStat1;
  v9[7] = MMCSItemMemoryReaderWriterOpen;
  v9[8] = MMCSItemMemoryReaderWriterRead;
  v9[9] = MMCSItemMemoryReaderWriterClose;
  memset(&v9[10], 0, 24);
  v9[13] = MMCSItemMemoryReaderWriterWrite;
  v9[14] = 0;
  v7 = MMCSItemReaderWriterCreate(v9);
  C3BaseRelease(v6);
  return v7;
}

void _MMCSItemMemoryReaderWriterCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 16) = 0;
}

uint64_t MMCSItemMemoryReaderWriterStat1(uint64_t a1, uint64_t a2, __CFDictionary **a3, CFErrorRef *a4)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    v6 = *(a2 + 16);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    valuePtr = CFDataGetLength(v6);
    v14 = CFNumberCreate(v7, kCFNumberSInt64Type, &valuePtr);
    if (v14)
    {
      v15 = v14;
      CFDictionaryAddValue(Mutable, @"kMMCSItemReaderWriterFileSize", v14);
      CFRelease(v15);
      if (a3)
      {
        CFRetain(Mutable);
        v16 = 0;
        *a3 = Mutable;
      }

      else
      {
        v16 = 0;
      }

      v18 = 1;
      goto LABEL_19;
    }
  }

  v17 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"No memory to create statsDict", v8, v9, v10, v11, v12);
  v16 = v17;
  if (a4)
  {
    CFRetain(v17);
    *a4 = v16;
  }

  v18 = 0;
  v19 = 0;
  if (Mutable)
  {
LABEL_19:
    CFRelease(Mutable);
    v19 = v18;
    if (!v16)
    {
      return v19;
    }

    goto LABEL_15;
  }

  if (v16)
  {
LABEL_15:
    CFRelease(v16);
  }

  return v19;
}

uint64_t MMCSItemMemoryReaderWriterRead(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, size_t a5, size_t *a6, CFErrorRef *a7)
{
  v12 = *(a2 + 24);
  if (!v12)
  {
    v12 = *(a2 + 16);
  }

  Length = CFDataGetLength(v12);
  v19 = Length - a3;
  if (Length >= a3)
  {
    if (Length == a3)
    {
      *a6 = 0;
    }

    else
    {
      BytePtr = CFDataGetBytePtr(v12);
      if (v19 >= a5)
      {
        v24 = a5;
      }

      else
      {
        v24 = v19;
      }

      memcpy(a4, &BytePtr[a3], v24);
      *a6 = v24;
    }

    return 1;
  }

  else
  {
    v20 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Read offset beyond the range of the readerWriter memory buffer", v14, v15, v16, v17, v18);
    v21 = v20;
    if (a7)
    {
      CFRetain(v20);
      *a7 = v21;
    }

    if (v21)
    {
      CFRelease(v21);
    }

    return 0;
  }
}

uint64_t MMCSItemMemoryReaderWriterWrite(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, size_t *a6)
{
  v6 = *(a2 + 24);
  if (!v6)
  {
    MMCSItemMemoryReaderWriterWrite_cold_1();
  }

  Length = CFDataGetLength(v6);
  if (a5 + a3 > Length)
  {
    CFDataIncreaseLength(*(a2 + 24), a5 + a3 - Length);
    Length = CFDataGetLength(*(a2 + 24));
  }

  v13 = Length - a3;
  if (Length == a3)
  {
    a5 = 0;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(*(a2 + 24));
    if (v13 < a5)
    {
      a5 = v13;
    }

    memcpy(&BytePtr[a3], a4, a5);
  }

  *a6 = a5;
  return 1;
}

BOOL mmcs_chunking_profile_create(uint64_t *a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_chunking_profileGetTypeID_typeID, &kmmcs_chunking_profileContextClass);
  Instance = C3TypeCreateInstance_(0, v6, 0x10uLL);
  v8 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a2;
    *(Instance + 24) = a3;
    C3BaseRetain(a3);
    *a1 = v8;
  }

  return v8 != 0;
}

void _mmcs_chunking_profileCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    C3BaseRelease(v2);
  }

  *(a1 + 24) = 0;
}

uint64_t mmcs_fixed_chunk_size_for_item_type_hint(uint64_t cf2)
{
  v3 = 0;
  if (cf2)
  {
    cf2 = CFEqual(@"com.apple.mmcs.kMMCSFixedLengthChunkerFileHint", cf2);
    if (cf2)
    {
      chunker_max_fixed_length = mmcs_report_get_chunker_max_fixed_length(&v3);
      v2 = v3;
      if (v3 <= 0x2000000)
      {
        v2 = 0x2000000;
      }

      if (chunker_max_fixed_length)
      {
        return v2;
      }

      else
      {
        return 0x2000000;
      }
    }
  }

  return cf2;
}

uint64_t mmcs_RegisterChunksForItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void **a7, void *a8, unsigned __int8 a9, char a10, uint64_t a11, CFTypeRef *a12, CFTypeRef *a13, CFTypeRef *a14)
{
  v50 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v47 = 0;
  v45 = 0;
  if (a12)
  {
    *a12 = 0;
  }

  if (a13)
  {
    *a13 = 0;
  }

  if (a14)
  {
    *a14 = 0;
  }

  v43 = a6;
  v17 = _mmcs_RegisterChunksForItem(a1, a2, a3, a4, a6, a7, a8, a9, a10, a11, &v46, &v45, &v47);
  if (!a7)
  {
    goto LABEL_47;
  }

  if (!v17)
  {
    goto LABEL_47;
  }

  v18 = *a7;
  if (!*a7)
  {
    goto LABEL_47;
  }

  if (!*a8)
  {
    goto LABEL_36;
  }

  v40 = a3;
  v19 = 1;
  do
  {
    v20 = CKRegisteredChunkKey();
    if (a9)
    {
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    else if (v20)
    {
LABEL_16:
      v21 = 0;
      goto LABEL_17;
    }

    v21 = 1;
LABEL_17:
    v22 = CKRegisteredChunkSize();
    if (!v21)
    {
      break;
    }

    v18 += v22;
  }

  while (v19++ < *a8);
  if (v21)
  {
LABEL_36:
    if (a12 && v46)
    {
      C3BaseRetain(v46);
      *a12 = v46;
    }

    v33 = 1;
    if (a13 && v45)
    {
      C3BaseRetain(v45);
      *a13 = v45;
    }

    goto LABEL_50;
  }

  if (*a7)
  {
    free(*a7);
  }

  *a7 = 0;
  if (v46)
  {
    C3BaseRelease(v46);
  }

  v46 = 0;
  v26 = a1;
  v25 = v45;
  if (v45)
  {
    C3BaseRelease(v45);
  }

  v45 = 0;
  v27 = mmcs_logging_logger_default(v25, v23);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = "un";
    if (a9)
    {
      v28 = "";
    }

    cf = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unregistering chunks for item %lld because they need to be %sencrypted.", v40, v28);
    v30 = mmcs_logging_logger_default(cf, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v49 = cf;
      _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

    v26 = a1;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  v31 = CKUnregisterChunksForItem();
  if (v31)
  {
    if (_mmcs_RegisterChunksForItem(v26, a2, v40, a4, v43, a7, a8, a9, a10, a11, &v46, &v45, &v47))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v34 = mmcs_logging_logger_default(v31, v32);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to unregister chunks for item %lld before rechunking.", v40);
      v37 = mmcs_logging_logger_default(v35, v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v49 = v35;
        _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }
  }

LABEL_47:
  v33 = 0;
  if (a14 && v47)
  {
    CFRetain(v47);
    v33 = 0;
    *a14 = v47;
  }

LABEL_50:
  if (v46)
  {
    C3BaseRelease(v46);
  }

  v46 = 0;
  if (v45)
  {
    C3BaseRelease(v45);
  }

  v45 = 0;
  if (v47)
  {
    CFRelease(v47);
  }

  return v33;
}

uint64_t _mmcs_RegisterChunksForItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, CFTypeRef *a13)
{
  if ((a9 & 0x7F) == 4)
  {
    if (!(a4 | a10))
    {
      _mmcs_RegisterChunksForItem_cold_1();
    }

    if (a10)
    {
      CKFileDigestArgumentsV2WithBoundaryKeyCreate();
      CKChunkDigestArgumentsV2WithBoundaryKeyCreate();
    }
  }

  else
  {
    CKFileDigestArgumentsV1WithFileCreate();
    CKChunkDigestArgumentsV1Create();
  }

  v14 = MMCSItemReaderWriterCKItemReadContextCreate(a2);
  v15 = CKRegisterChunksForItem();
  if (v14)
  {
    free(v14);
  }

  return v15;
}

uint64_t mmcs_compute_signature_and_register_item_with_item_reader_writer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, CFTypeRef *a7, _DWORD *a8, void **a9, void *a10, CFErrorRef *a11)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    *a9 = 0;
  }

  v16 = MMCSItemReaderWriterCKItemReadContextCreate(a3);
  v17 = v16;
  if (a5)
  {
    v18 = mmcs_fixed_chunk_size_for_item_type_hint(v16[2]);
    if (a6)
    {
      CKFileDigestArgumentsV2WithBoundaryKeyCreate();
      CKChunkDigestArgumentsV2WithBoundaryKeyCreate();
    }

    else
    {
      CKFileDigestArgumentsV1WithFileCreate();
      CKChunkDigestArgumentsV1Create();
    }

    *buf_4 = 0;
    *&buf_4[4] = a2;
    buf = 1;
    v48 = 0;
    v47 = v18;
    v49 = 0;
    v50 = 0;
    v19 = CKRegisterItemAndChunks();
    if (v19)
    {
      CKFileDigestResultsFileLength();
    }

    free(v17);
    if (v19)
    {
      if (a7)
      {
        *a7 = 0;
      }

      if (a10)
      {
        *a10 = 0;
      }

      if (a8)
      {
        *a8 = 0;
      }

      if (a9)
      {
        *a9 = 0;
      }
    }

    return v19;
  }

  if (a6)
  {
    CKFileDigestArgumentsV2WithBoundaryKeyCreate();
  }

  else
  {
    CKFileDigestArgumentsV1WithFileCreate();
  }

  v20 = CK2CalculateItemSignatureWithFlags();
  if (v20)
  {
    if (!CKFileDigestResultsFileLength())
    {
      v35 = mmcs_logging_logger_default(0, v22);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"file is empty");
        v38 = mmcs_logging_logger_default(v36, v37);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          buf = 138543362;
          *buf_4 = v36;
          _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
        }

        if (v36)
        {
          CFRelease(v36);
        }
      }

      if (a11)
      {
        v25 = 0;
        v19 = 0;
        *a11 = mmcs_cferror_create_error(@"com.apple.mmcs", 18, @"Unable to calculate signature for zero-length file.");
        if (!v17)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }

      goto LABEL_51;
    }

    v23 = CKRegisterFile();
    if (v23)
    {
      v25 = 1;
      v19 = 1;
      if (!v17)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    v39 = mmcs_logging_logger_default(v23, v24);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to register file");
      v42 = mmcs_logging_logger_default(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        buf = 138543362;
        *buf_4 = v40;
        _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    if (!a11)
    {
      goto LABEL_51;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unable to register item %lld", a2);
    error = mmcs_cferror_create_error(@"com.apple.mmcs", 19, v19);
  }

  else
  {
    v26 = mmcs_logging_logger_default(v20, v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to calculate signature");
      v33 = mmcs_logging_logger_default(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        buf = 138543362;
        *buf_4 = v31;
        _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v31)
      {
        CFRelease(v31);
      }
    }

    if (!a11)
    {
      goto LABEL_51;
    }

    v19 = *a11;
    error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 18, *a11, @"Unable to calculate signature.", v27, v28, v29, v30);
  }

  *a11 = error;
  if (!v19)
  {
    v25 = 0;
    if (!v17)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  CFRelease(v19);
LABEL_51:
  v25 = 0;
  v19 = 0;
  if (v17)
  {
LABEL_52:
    free(v17);
  }

LABEL_53:
  v43 = v25 ^ 1;
  if (!a7)
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    *a7 = 0;
  }

  return v19;
}

uint64_t mmcs_GetSortedRegisteredChunksForItemID(uint64_t a1, const __CFString *a2, char **a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    *a6 = 0;
  }

  if (!CKGetRegisteredChunksForItemID())
  {
LABEL_31:
    if (a3)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  v11 = CKGetRegisteredFileMetadata();
  if ((v11 & 1) == 0)
  {
    v31 = mmcs_logging_logger_default(v11, v12);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v35 = a2;
      _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "Expected registered file information for itemID %llu", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v13 = 1;
  if (!a3 || !a4 || (v14 = *a3) == 0 || !*a4)
  {
LABEL_25:
    if (a6)
    {
      mmcs_chunking_profile_create(a6, *a4, 0);
    }

    if (a5)
    {
      v29 = CKFileDigestResultsFileVerificationKey();
      v30 = CKFileDigestResultsFileLength();
      *a5 = mmcs_create_RangedItem(v29, v30);
    }

    return v13;
  }

  v15 = 0;
  alloc = *MEMORY[0x277CBECE8];
  do
  {
    v16 = v14;
    if (!v15)
    {
      v25 = CKRegisteredChunkOffset();
      if (!v25)
      {
        goto LABEL_23;
      }

      v27 = mmcs_logging_logger_default(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v22 = CFStringCreateWithFormat(alloc, 0, @"Item %lld chunk list error: first chunk doesn't begin at 0", a2);
        v24 = mmcs_logging_logger_default(v22, v28);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }

LABEL_22:
      v13 = 0;
      goto LABEL_23;
    }

    v17 = CKRegisteredChunkSuccessorOffset();
    v18 = CKRegisteredChunkOffset();
    if (v17 < v18 || (v20 = CKRegisteredChunkSuccessorOffset(), v18 = CKRegisteredChunkOffset(), v20 != v18))
    {
      v21 = mmcs_logging_logger_default(v18, v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = CFStringCreateWithFormat(alloc, 0, @"Item %lld chunk list error: gap or overlap between chunk %llu and chunk %llu", a2, v15 - 1, v15);
        v24 = mmcs_logging_logger_default(v22, v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
LABEL_19:
          *buf = 138543362;
          v35 = v22;
          _os_log_impl(&dword_2577D8000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

LABEL_20:
        if (v22)
        {
          CFRelease(v22);
        }
      }

      goto LABEL_22;
    }

LABEL_23:
    v14 = &v16[CKRegisteredChunkSize()];
    ++v15;
  }

  while (v15 < *a4);
  if (v13)
  {
    goto LABEL_25;
  }

LABEL_32:
  if (*a3)
  {
    free(*a3);
  }

  *a3 = 0;
LABEL_35:
  LOBYTE(v13) = 0;
  if (a4)
  {
    *a4 = 0;
  }

  return v13;
}

__CFData *mmcs_chunk_key_copy_wraptured_scheme_and_key(CFDataRef theData, const __CFData *a2, int a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  Length = CFDataGetLength(theData);
  if (a3)
  {
    if (Length != 17)
    {
      mmcs_chunk_key_copy_wraptured_scheme_and_key_cold_1();
    }

    v9 = *MEMORY[0x277CBECE8];
    BytePtr = CFDataGetBytePtr(theData);
    v11 = CFDataGetLength(theData);
    v12 = CFDataCreate(v9, BytePtr + 1, v11 - 1);
    v13 = PCSCopyWrappedKey();
    if (v13)
    {
      v14 = v13;
      if (CFDataGetLength(v13) != 24)
      {
        mmcs_chunk_key_copy_wraptured_scheme_and_key_cold_2();
      }

      Mutable = CFDataCreateMutable(v9, 0);
      CFDataSetLength(Mutable, 25);
      v16 = CFDataGetBytePtr(v14);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v18 = 0;
      *MutableBytePtr = 2;
      v19 = *(v16 + 2);
      *(MutableBytePtr + 1) = *v16;
      *(MutableBytePtr + 17) = v19;
LABEL_17:
      CFRelease(v14);
      v38 = Mutable;
      goto LABEL_18;
    }

    v26 = mmcs_key_description_create_with_cfdata(theData, 1);
    v14 = mmcs_key_description_create_with_cfdata(a2, 0);
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"PCS wrapping of key %@ using wrapping key %@ failed", v27, v28, v29, v30, v31, v26, v14);
  }

  else
  {
    if (Length != 25)
    {
      mmcs_chunk_key_copy_wraptured_scheme_and_key_cold_3();
    }

    v20 = *MEMORY[0x277CBECE8];
    v21 = CFDataGetBytePtr(theData);
    v22 = CFDataGetLength(theData);
    v12 = CFDataCreate(v20, v21 + 1, v22 - 1);
    v23 = PCSCopyUnwrappedKey();
    if (v23)
    {
      v14 = v23;
      if (CFDataGetLength(v23) != 16)
      {
        mmcs_chunk_key_copy_wraptured_scheme_and_key_cold_4();
      }

      Mutable = CFDataCreateMutable(v20, 0);
      CFDataSetLength(Mutable, 17);
      v24 = CFDataGetBytePtr(v14);
      v25 = CFDataGetMutableBytePtr(Mutable);
      v18 = 0;
      *v25 = 1;
      *(v25 + 1) = *v24;
      goto LABEL_17;
    }

    v26 = mmcs_key_description_create_with_cfdata(theData, 1);
    v14 = mmcs_key_description_create_with_cfdata(a2, 0);
    v32 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 12, @"PCS unwrapping of key %@ using wrapping key %@ failed", v33, v34, v35, v36, v37, v26, v14);
  }

  v18 = v32;
  if (v26)
  {
    CFRelease(v26);
  }

  Mutable = 0;
  v38 = 0;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v12)
  {
    CFRelease(v12);
  }

  if (a4 && !v38)
  {
    CFRetain(v18);
    *a4 = v18;
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v38;
}

uint64_t mmcs_chunk_progressive_v1_padded_chunk_length(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    mmcs_chunk_progressive_v1_padded_chunk_length_cold_1();
  }

  v1 = a1;
  v2 = SecPaddingCompute();
  v4 = v2;
  if (v2 < 0)
  {
    v5 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"SecPaddingCompute error %ld", v4);
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  return (v4 + v1);
}

uint64_t mmcs_padded_chunk_length_with_policy_and_chunk_length(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_6();
  }

  v2 = a2;
  if (a1)
  {
    if (a1 == 2)
    {
      result = mmcs_chunk_progressive_v1_padded_chunk_length(a2);
    }

    else
    {
      if (a1 != 1)
      {
        mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_5(a1, a2);
      }

      if (a2 >= 0xFFFFFC01)
      {
        mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_3();
      }

      result = (a2 + 1023) & 0xFFFFFC00;
    }

    if (!result)
    {
      mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_2();
    }

    if (result < v2)
    {
      mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_1();
    }
  }

  else
  {
    result = a2;
  }

  if (result >= 0x2800001)
  {
    mmcs_padded_chunk_length_with_policy_and_chunk_length_cold_4();
  }

  return result;
}

CFStringRef mmcs_chunk_instance_copy_description(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = mmcs_item_copy_description(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = mmcs_chunk_reference_copy_description(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<chunk_instance %p> item:%@ ordering:%d chunk:%@", a1, v3, *(a1 + 24), v5);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t mmcs_chunk_instance_equal(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1 != 1)
  {
    mmcs_chunk_instance_equal_cold_1();
  }

  if (a2 && *a2 != 1)
  {
    mmcs_chunk_instance_equal_cold_2();
  }

  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 56);
  v4 = *(a2 + 56);

  return mmcs_chunk_reference_equal(v3, v4);
}

uint64_t mmcs_chunk_instance_init(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 24) = a4;
  *a1 = 1;
  *(a1 + 56) = a2;
  *(a1 + 32) = a3;
  *(a1 + 8) = a5;
  *(a1 + 16) = -1;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 4);
  return 1;
}

uint64_t mmcs_chunk_instance_init_with_source_instance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 24) = a5;
  *a1 = 1;
  *(a1 + 56) = a3;
  *(a1 + 32) = a4;
  *(a1 + 8) = a6;
  *(a1 + 16) = -1;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  return 1;
}

double mmcs_chunk_instance_init_with_file_opaque_reference_data(uint64_t a1, uint64_t a2, int a3, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = -1;
  *(a1 + 24) = a3;
  *a1 = 2;
  *(a1 + 80) = cf;
  *(a1 + 32) = a2;
  return result;
}

double mmcs_chunk_instance_init_with_file_opaque_reference_length(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 24) = a3;
  *a1 = 3;
  *(a1 + 96) = a4;
  *(a1 + 32) = a2;
  *(a1 + 8) = a5;
  *(a1 + 16) = -1;
  return result;
}

uint64_t mmcs_chunk_instance_create(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = 0;
  v10 = malloc_type_malloc(0x68uLL, 0x1060040917B5EB5uLL);
  if (!v10)
  {
    return 0;
  }

  *(v10 + 20) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 52) = 0u;
  *(v10 + 36) = 0u;
  *(v10 + 25) = 0;
  *(v10 + 84) = 0u;
  *(v10 + 68) = 0u;
  *(v10 + 6) = a4;
  v11 = 1;
  *v10 = 1;
  *(v10 + 7) = a2;
  *(v10 + 4) = a3;
  *(v10 + 1) = a5;
  *(v10 + 2) = -1;
  *(v10 + 16) = *(a2 + 4);
  *a1 = v10;
  return v11;
}

void mmcs_chunk_instance_finalize(void *a1)
{
  a1[1] = 0;
  a1[7] = 0;
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
  }

  a1[10] = 0;
  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  a1[11] = 0;
}

CFIndex mmcs_chunk_instance_get_length(CFDataRef *a1)
{
  v1 = *a1;
  if (*a1 == 3)
  {
    return *(a1 + 24);
  }

  if (v1 == 2)
  {
    return CFDataGetLength(a1[10]);
  }

  if (v1 != 1)
  {
    mmcs_chunk_instance_get_length_cold_1();
  }

  return *(a1 + 16);
}

void mmcs_chunk_instance_dealloc(void *a1)
{
  mmcs_chunk_instance_finalize(a1);
  if (a1)
  {

    free(a1);
  }
}

void mmcs_chunk_instance_was_put(uint64_t a1, uint64_t a2)
{
  mmcs_item_remove_outstanding_chunk_reference(*(a1 + 8), *(a1 + 56));
  has_outstanding_chunk_references = mmcs_item_has_outstanding_chunk_references(*(a1 + 8));
  if (a2)
  {
    if (!has_outstanding_chunk_references)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        v6 = *(a1 + 8);

        CFSetSetValue(v5, v6);
      }
    }
  }
}

uint64_t mmcs_chunk_instance_create_RegisteredChunk(void *a1)
{
  RegisteredChunk = mmcs_chunk_reference_create_RegisteredChunk(a1[7]);
  if (RegisteredChunk)
  {
    CKRegisteredChunkSetItemID();
    CKRegisteredChunkSetOffset();
    CKRegisteredChunkSetLocation();
  }

  return RegisteredChunk;
}

void *MMCSItemReaderWriterCreate(void *a1)
{
  if (*a1 > 7uLL)
  {
    return 0;
  }

  v2 = qword_25785F828[*a1];
  v3 = C3TypeRegister(&MMCSItemReaderWriterGetTypeID_typeID, &kMMCSItemReaderWriterContextClass);
  Instance = C3TypeCreateInstance_(0, v3, 0x10uLL);
  v5 = Instance;
  if (!Instance)
  {
    return v5;
  }

  *(Instance + 16) = 0;
  v6 = malloc_type_calloc(1uLL, v2, 0x10E0040D85D7CEBuLL);
  v5[3] = v6;
  if (!v6)
  {
    C3BaseRelease(v5);
    return 0;
  }

  memcpy(v6, a1, v2);
  v7 = v5[3];
  v8 = v7[2];
  if (v8)
  {
    CFRetain(v8);
    v7 = v5[3];
  }

  v9 = v7[3];
  if (v9)
  {
    CFRetain(v9);
    v7 = v5[3];
  }

  v10 = v7[4];
  if (v10)
  {
    v10(v7[1]);
  }

  return v5;
}

uint64_t MMCSItemReaderWriterOpen(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 22))
  {
    v9 = @"Opening the readerWriter failed because it is already open";
LABEL_7:
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, v9, v4, v5, v6, v7, v8);
    os_unfair_lock_unlock((a1 + 16));
    v16 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 23))
  {
    v9 = @"Opening the readerWriter failed because it is already opening";
    goto LABEL_7;
  }

  if (*(a1 + 21))
  {
    v9 = @"Opening the readerWriter failed because it is has been opened before";
    goto LABEL_7;
  }

  *(a1 + 23) = 1;
  os_unfair_lock_unlock((a1 + 16));
  v16 = (*(*(a1 + 24) + 56))(a1, *(*(a1 + 24) + 8), &cf);
  os_unfair_lock_lock((a1 + 16));
  *(a1 + 22) = v16;
  if (v16)
  {
    *(a1 + 21) = 1;
  }

  os_unfair_lock_unlock((a1 + 16));
LABEL_8:
  v17 = cf;
  if (a2 && !v16)
  {
    cf = mmcs_cferror_create_file_error_wrapping_error_to_release(cf, @"Opening the readerWriter failed. ", v10, v11, v12, v13, v14, v15);
    CFRetain(cf);
    v17 = cf;
    *a2 = cf;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v16;
}

uint64_t MMCSItemReaderWriterSync(uint64_t a1, CFErrorRef *a2)
{
  v2 = *(a1 + 24);
  if (*v2 < 6)
  {
    return 1;
  }

  v10 = (*(v2 + 144))();
  v11 = 0;
  if (a2 && !v10)
  {
    cf = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Syncing  the readerWriter failed. ", v4, v5, v6, v7, v8, v9);
    CFRetain(cf);
    v11 = cf;
    *a2 = cf;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v10;
}

void MMCSItemReaderWriterEnsureClosed(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a1 && *(a1 + 22))
  {
    cf = 0;
    if (!MMCSItemReaderWriterClose(a1, &cf))
    {
      v2 = cf;
      if (cf)
      {
        v2 = mmcs_cferror_copy_description(cf);
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      v4 = mmcs_logging_logger_default(v2, v1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = @"unknown";
        if (v3)
        {
          v5 = v3;
        }

        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Error closing item reader writer: %@", v5);
        v8 = mmcs_logging_logger_default(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v11 = v6;
          _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t MMCSItemReaderWriterClose(uint64_t a1, CFErrorRef *a2)
{
  file_error_wrapping_error_to_release = 0;
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 23))
  {
    v9 = @"Cannot close the readerWriter because it is still opening";
  }

  else
  {
    if (*(a1 + 22))
    {
      if (*(a1 + 20))
      {
        os_unfair_lock_unlock((a1 + 16));
        return 1;
      }

      *(a1 + 22) = 0;
      os_unfair_lock_unlock((a1 + 16));
      v17 = (*(*(a1 + 24) + 72))(a1, *(*(a1 + 24) + 8), &file_error_wrapping_error_to_release);
      v10 = file_error_wrapping_error_to_release;
      if (a2)
      {
        goto LABEL_4;
      }

      goto LABEL_6;
    }

    v9 = @"Cannot close the readerWriter because it is not open";
  }

  v10 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, v9, v4, v5, v6, v7, v8);
  file_error_wrapping_error_to_release = v10;
  os_unfair_lock_unlock((a1 + 16));
  v17 = 0;
  if (a2)
  {
LABEL_4:
    if (!v17)
    {
      file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(v10, @"Closing the readerWriter failed. ", v11, v12, v13, v14, v15, v16);
      CFRetain(file_error_wrapping_error_to_release);
      v10 = file_error_wrapping_error_to_release;
      *a2 = file_error_wrapping_error_to_release;
    }
  }

LABEL_6:
  if (v10)
  {
    CFRelease(v10);
  }

  return v17;
}

uint64_t MMCSItemReaderWriterStat(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  keys[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  error = 0;
  v10 = *(a1 + 24);
  if (*v10)
  {
    if (*v10 >= 1)
    {
      v11 = (*(v10 + 48))();
      if (!a3)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = 0;
    if ((*(v10 + 48))(a1))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &v17);
      if (v13)
      {
        v14 = v13;
        values = v13;
        keys[0] = @"kMMCSItemReaderWriterFileSize";
        v11 = 1;
        cf = CFDictionaryCreate(v12, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFRelease(v14);
        if (!a3)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v11 = 0;
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 36, @"MMCSItemReaderWriterStat create number failed");
        if (!a3)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_10;
    }
  }

  v11 = 0;
  if (!a3)
  {
LABEL_14:
    if (a2 && v11)
    {
      CFRetain(cf);
      *a2 = cf;
    }

    v15 = error;
    if (error)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_10:
  if (v11)
  {
    goto LABEL_14;
  }

  error = mmcs_cferror_create_file_error_wrapping_error_to_release(error, @"Stat'ing the readerWriter failed. ", a3, a4, a5, a6, a7, a8);
  CFRetain(error);
  v15 = error;
  *a3 = error;
  if (v15)
  {
LABEL_18:
    CFRelease(v15);
  }

LABEL_19:
  error = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

uint64_t MMCSItemReaderWriterRead(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFErrorRef *a6)
{
  v13 = (*(*(a1 + 24) + 64))();
  v14 = 0;
  if (a6 && !v13)
  {
    cf = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Reading from the readerWriter failed. ", v7, v8, v9, v10, v11, v12);
    CFRetain(cf);
    v14 = cf;
    *a6 = cf;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v13;
}

uint64_t MMCSItemReaderWriterGetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  if (*v9 < 1)
  {
    if (!*v9)
    {
      MMCSItemReaderWriterGetCacheBlobWithName_cold_1();
    }

LABEL_6:
    v11 = 0;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v10 = v9[10];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10();
  if (!a4)
  {
    return v11;
  }

LABEL_7:
  if (!v11)
  {
    file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Getting the cache blob from the readerWriter failed. ", a3, a4, a5, a6, a7, a8);
    CFRetain(file_error_wrapping_error_to_release);
    *a4 = file_error_wrapping_error_to_release;
    if (file_error_wrapping_error_to_release)
    {
      CFRelease(file_error_wrapping_error_to_release);
    }
  }

  return v11;
}

uint64_t MMCSItemReaderWriterSetCacheBlobWithName(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  if (*v9 < 1)
  {
    if (!*v9)
    {
      MMCSItemReaderWriterSetCacheBlobWithName_cold_1();
    }

LABEL_6:
    v11 = 0;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_7;
  }

  v10 = v9[11];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10();
  if (!a4)
  {
    return v11;
  }

LABEL_7:
  if (!v11)
  {
    file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Setting the cache blob from the readerWriter failed. ", a3, a4, a5, a6, a7, a8);
    CFRetain(file_error_wrapping_error_to_release);
    *a4 = file_error_wrapping_error_to_release;
    if (file_error_wrapping_error_to_release)
    {
      CFRelease(file_error_wrapping_error_to_release);
    }
  }

  return v11;
}

uint64_t MMCSItemReaderWriterGetFileTypeHint(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MMCSItemReaderWriterWrite(uint64_t a1, uint64_t **a2, unint64_t a3, int8x16_t *a4, unint64_t a5, unint64_t *a6, CFTypeRef *a7)
{
  v7 = a7;
  v9 = a5;
  if (a7)
  {
    *a7 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v13 = *(a1 + 24);
  if (*v13 <= 2)
  {
    MMCSItemReaderWriterWrite_cold_6();
  }

  if (*v13 == 3 || (v14 = v13[16]) == 0)
  {
    cf = 0;
    v15 = v13[13];
    if (!v15)
    {
      MMCSItemReaderWriterWrite_cold_5();
    }

    v22 = v15(a1, v13[1], a3, a4, a5, a6, &cf);
    v23 = cf;
    if (v7 && !v22)
    {
      cf = mmcs_cferror_create_file_error_wrapping_error_to_release(cf, @"Writing to the readerWriter failed. ", v16, v17, v18, v19, v20, v21);
      CFRetain(cf);
      v23 = cf;
      *v7 = cf;
    }

    if (v23)
    {
      CFRelease(v23);
    }

    return v22;
  }

  if (!v13[13])
  {
    MMCSItemReaderWriterWrite_cold_4();
  }

  if (!a2)
  {
    MMCSItemReaderWriterWrite_cold_3();
  }

  if (*a2)
  {
    if (v14 != (*a2)[2])
    {
      MMCSItemReaderWriterWrite_cold_1();
    }
  }

  else
  {
    if (!mmcs_get_file_sparse_context_create(a2, v14))
    {
      *a2 = 0;
      v22 = 0;
      *v7 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 36, @"Failed to create sparse context.", v25, v26, v27, v28, v29);
      return v22;
    }

    v14 = v13[16];
    (*a2)[2] = v14;
  }

  v70 = a3;
  if (a3 % v14)
  {
    if (v14 - a3 % v14 >= v9)
    {
      v30 = v9;
    }

    else
    {
      v30 = v14 - a3 % v14;
    }

    v31 = !mmcs_zcmp(a4, v30);
    v14 = v13[16];
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v68 = a2;
  v32 = v9 - v30;
  if (v14 > v9 - v30)
  {
    v33 = 0;
    v34 = 0;
    v35 = v9 - v30;
    goto LABEL_50;
  }

  v66 = v9;
  v67 = v7;
  v34 = 0;
  v33 = 0;
  v36 = 0;
  v65 = v9 - v30;
  v37 = v32 / v14;
  v69 = v32 / v14;
  do
  {
    v38 = mmcs_zcmp((a4 + v30), v14);
    if (!v38)
    {
      if ((v31 & 1) == 0)
      {
        v33 = v30;
      }

      if (!((a6 == 0) | v31 & 1))
      {
        *a6 += v34 + v30;
        v33 = v30;
      }

      goto LABEL_48;
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_48;
    }

    v39 = (v30 - v33);
    file_error_wrapping_error_to_release = 0;
    cf = 0;
    v22 = (v13[13])(a1, *(*(a1 + 24) + 8), v33 + v70, a4->i64 + v33, v30 - v33, &cf, &file_error_wrapping_error_to_release);
    if (v22)
    {
      trackWriteBlocks(a1, *v68, v33 + v70, cf);
LABEL_35:
      v46 = file_error_wrapping_error_to_release;
      goto LABEL_42;
    }

    if (!v67)
    {
      goto LABEL_35;
    }

    file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(file_error_wrapping_error_to_release, @"Writing to the readerWriter failed. ", v40, v41, v42, v43, v44, v45);
    CFRetain(file_error_wrapping_error_to_release);
    v46 = file_error_wrapping_error_to_release;
    *v67 = file_error_wrapping_error_to_release;
LABEL_42:
    v37 = v69;
    if (v46)
    {
      CFRelease(v46);
    }

    v47 = cf;
    if (a6)
    {
      *a6 += cf;
    }

    if (!v22)
    {
      return v22;
    }

    v33 = v30;
    if (v39 != v47)
    {
      return v22;
    }

LABEL_48:
    v31 = !v38;
    v14 = v13[16];
    v30 += v14;
    ++v36;
    v34 = -v33;
  }

  while (v36 < v37);
  v9 = v66;
  v7 = v67;
  v35 = v66 - v30;
  v32 = v65;
LABEL_50:
  if (v35 != v32 % v14)
  {
    MMCSItemReaderWriterWrite_cold_2();
  }

  if (v30 == v9 || mmcs_zcmp((a4 + v30), v35))
  {
    if (v31)
    {
      file_error_wrapping_error_to_release = 0;
      cf = 0;
      v22 = (v13[13])(a1, *(*(a1 + 24) + 8), v33 + v70, a4->i64 + v33, v30 - v33, &cf, &file_error_wrapping_error_to_release);
      if (v22)
      {
        trackWriteBlocks(a1, *v68, v33 + v70, cf);
        goto LABEL_56;
      }

      if (v7)
      {
        file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(file_error_wrapping_error_to_release, @"Writing to the readerWriter failed. ", v48, v49, v50, v51, v52, v53);
        CFRetain(file_error_wrapping_error_to_release);
        v54 = file_error_wrapping_error_to_release;
        *v7 = file_error_wrapping_error_to_release;
        if (!v54)
        {
LABEL_58:
          v55 = cf;
          if (a6)
          {
            *a6 += cf;
          }

          if (!v22 || (v30 - v33) != v55)
          {
            return v22;
          }

LABEL_64:
          if (v30 == v9)
          {
            if (a6)
            {
              v56 = v31;
            }

            else
            {
              v56 = 1;
            }

            if (v56)
            {
              return v22;
            }
          }

          else if (!a6)
          {
            return v22;
          }

          *a6 = v9;
          return v22;
        }
      }

      else
      {
LABEL_56:
        v54 = file_error_wrapping_error_to_release;
        if (!file_error_wrapping_error_to_release)
        {
          goto LABEL_58;
        }
      }

      CFRelease(v54);
      goto LABEL_58;
    }

    v22 = 0;
    goto LABEL_64;
  }

  v57 = v31 ^ 1;
  if (!a6)
  {
    v57 = 0;
  }

  if (v57)
  {
    *a6 += v34 + v30;
  }

  else
  {
    if (v31)
    {
      v30 = v33;
    }

    v35 = v9 - v30;
  }

  file_error_wrapping_error_to_release = 0;
  cf = 0;
  v22 = (v13[13])(a1, *(*(a1 + 24) + 8), v30 + v70, a4->i64 + v30, v35, &cf, &file_error_wrapping_error_to_release);
  if (v22)
  {
    trackWriteBlocks(a1, *v68, v30 + v70, cf);
    goto LABEL_85;
  }

  if (v7)
  {
    file_error_wrapping_error_to_release = mmcs_cferror_create_file_error_wrapping_error_to_release(file_error_wrapping_error_to_release, @"Writing to the readerWriter failed. ", v58, v59, v60, v61, v62, v63);
    CFRetain(file_error_wrapping_error_to_release);
    v64 = file_error_wrapping_error_to_release;
    *v7 = file_error_wrapping_error_to_release;
    if (!v64)
    {
      goto LABEL_87;
    }

LABEL_86:
    CFRelease(v64);
  }

  else
  {
LABEL_85:
    v64 = file_error_wrapping_error_to_release;
    if (file_error_wrapping_error_to_release)
    {
      goto LABEL_86;
    }
  }

LABEL_87:
  if (a6)
  {
    *a6 += cf;
  }

  return v22;
}

void *trackWriteBlocks(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 24);
  if (*v4 <= 3)
  {
    trackWriteBlocks_cold_5();
  }

  v5 = v4[16];
  if (!v5)
  {
    trackWriteBlocks_cold_4();
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7 <= a4 + a3)
  {
    v7 = a4 + a3;
  }

  *(a2 + 32) = v7;
  if (!v6)
  {
    trackWriteBlocks_cold_3();
  }

  v8 = a3 / v5;
  if (a3 / v5 >= 0x7FFFFFFF)
  {
    trackWriteBlocks_cold_2();
  }

  v9 = (a4 + a3 - 1) / v5;
  if (v9 >= 0x7FFFFFFF)
  {
    trackWriteBlocks_cold_1();
  }

  return mmcs_index_set_add_range(v6, v8, v9);
}

uint64_t MMCSItemReaderWriterSeek(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v5 = *(a1 + 24);
  if (*v5 < 4)
  {
    return 1;
  }

  v6 = v5[16];
  if (!v6)
  {
    return 1;
  }

  if (!a2)
  {
    MMCSItemReaderWriterSeek_cold_3();
  }

  if (*(a2 + 16) != v6)
  {
    MMCSItemReaderWriterSeek_cold_1();
  }

  v7 = v5[15];
  if (!v7)
  {
    MMCSItemReaderWriterSeek_cold_2();
  }

  v14 = v7();
  v15 = 0;
  if (a4 && !v14)
  {
    cf = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Seeking with readerWriter failed. ", v8, v9, v10, v11, v12, v13);
    CFRetain(cf);
    v15 = cf;
    *a4 = cf;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

uint64_t MMCSItemReaderWriterValidated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v6 = *(a1 + 24);
  if (*v6 < 7)
  {
    return 1;
  }

  v7 = v6[19];
  if (!v7)
  {
    return 1;
  }

  v14 = v7();
  v15 = 0;
  if (a5 && !v14)
  {
    cf = mmcs_cferror_create_file_error_wrapping_error_to_release(0, @"Seeking with readerWriter failed. ", v8, v9, v10, v11, v12, v13);
    CFRetain(cf);
    v15 = cf;
    *a5 = cf;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v14;
}

void *MMCSItemReaderWriterCKItemReadContextCreate(uint64_t a1)
{
  v2 = *(*(a1 + 24) + 16);
  if (v2 && CFEqual(v2, @"com.apple.mmcs.kMMCSFixedLengthChunkerFileHint"))
  {
    v2 = MMCSGetCKCustomFixedChunkFileTypeHintString();
  }

  result = malloc_type_calloc(1uLL, 0x68uLL, 0x10E0040C92A543BuLL);
  if (result)
  {
    v4 = *(a1 + 24);
    v5 = *v4;
    *result = 3;
    result[1] = a1;
    result[2] = v2;
    result[3] = v4[3];
    result[4] = C3BaseRetain;
    result[5] = C3BaseRelease;
    result[6] = _MMCSItemReaderWriter_CKItemReadContextOpen;
    result[7] = _MMCSItemReaderWriter_CKItemReadContextClose;
    result[8] = _MMCSItemReaderWriter_CKItemReadContextStat;
    result[9] = _MMCSItemReaderWriter_CKItemReadContextRead;
    v6 = v5 <= 0;
    if (v5 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = _MMCSItemReaderWriter_CKItemReadContextGetCacheBlob;
    }

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = _MMCSItemReaderWriter_CKItemReadContextSetCacheBlob;
    }

    result[10] = v7;
    result[11] = v8;
    result[12] = _MMCSItemReaderWriter_CKItemReadContextCopyPropertyV3;
  }

  return result;
}

uint64_t _MMCSItemReaderWriter_CKItemReadContextOpen(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  *a2 = a1;
  return 1;
}

BOOL _MMCSItemReaderWriter_CKItemReadContextStat(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theDict = 0;
  v9 = MMCSItemReaderWriterStat(a1, &theDict, a3, a4, a5, a6, a7, a8);
  if (v9)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    Value = CFDictionaryGetValue(theDict, @"kMMCSItemReaderWriterFileSize");
    if (Value)
    {
      v15 = 0;
      if (CFNumberGetValue(Value, kCFNumberSInt64Type, &v15))
      {
        *a2 = v15;
      }
    }

    v11 = CFDictionaryGetValue(theDict, @"kMMCSItemReaderWriterFileSystemFileNumber");
    if (v11)
    {
      v15 = 0;
      if (CFNumberGetValue(v11, kCFNumberSInt64Type, &v15))
      {
        *(a2 + 8) = v15;
      }
    }

    v12 = CFDictionaryGetValue(theDict, @"kMMCSItemReaderWriterFileModificationTime");
    if (v12)
    {
      v15 = 0;
      if (CFNumberGetValue(v12, kCFNumberSInt64Type, &v15))
      {
        *(a2 + 16) = v15;
      }
    }

    v13 = CFDictionaryGetValue(theDict, @"kMMCSItemReaderWriterFileGenerationNumber");
    if (v13)
    {
      LODWORD(v15) = 0;
      if (CFNumberGetValue(v13, kCFNumberSInt32Type, &v15))
      {
        *(a2 + 28) = v15;
        *(a2 + 24) = 1;
      }
    }
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  return v9 != 0;
}

uint64_t _MMCSItemReaderWriter_CKItemReadContextCopyPropertyV3(uint64_t a1, CFTypeRef cf1)
{
  if (!a1 || !cf1)
  {
    return 0;
  }

  if (!CFEqual(cf1, *MEMORY[0x277CFA568]))
  {
    if (CFEqual(cf1, *MEMORY[0x277CFA588]))
    {
      v12 = *(a1 + 24);
      if (*v12 < 5)
      {
        return 0;
      }

      v9 = v12[17];
      if (!v9)
      {
        return 0;
      }

      v10 = v12[1];
      v11 = @"kMMCSItemSubchunkLength";
    }

    else if (CFEqual(cf1, *MEMORY[0x277CFA580]))
    {
      v13 = *(a1 + 24);
      if (*v13 < 5)
      {
        return 0;
      }

      v9 = v13[17];
      if (!v9)
      {
        return 0;
      }

      v10 = v13[1];
      v11 = @"kMMCSItemChunkProfileConfigurationVersion";
    }

    else if (CFEqual(cf1, *MEMORY[0x277CFA578]))
    {
      v14 = *(a1 + 24);
      if (*v14 < 5)
      {
        return 0;
      }

      v9 = v14[17];
      if (!v9)
      {
        return 0;
      }

      v10 = v14[1];
      v11 = @"kMMCSItemChunkProfileConfigurationFileExtensionToProfileMap";
    }

    else
    {
      if (!CFEqual(cf1, *MEMORY[0x277CFA570]))
      {
        return 0;
      }

      v15 = *(a1 + 24);
      if (*v15 < 5)
      {
        return 0;
      }

      v9 = v15[17];
      if (!v9)
      {
        return 0;
      }

      v10 = v15[1];
      v11 = @"kMMCSItemChunkProfileConfigurationDefaultProfilePolicy";
    }

    goto LABEL_32;
  }

  v4 = *(a1 + 24);
  if (*v4 < 5 || (v5 = v4[17]) == 0)
  {
    cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(@"kMMCSChunkerAllowItemChunkLengthServerConfigurationOverride", 0, 0);
    if (cfBOOLean_from_cftype_using_description)
    {
      goto LABEL_9;
    }

LABEL_12:
    if (!mmcs_report_chunker_allow_item_chunk_length_28455742())
    {
      return 0;
    }

    goto LABEL_13;
  }

  v6 = v5(a1, v4[1], @"kMMCSChunkerAllowItemChunkLengthServerConfigurationOverride");
  cfBOOLean_from_cftype_using_description = mmcs_get_cfBOOLean_from_cftype_using_description(@"kMMCSChunkerAllowItemChunkLengthServerConfigurationOverride", v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!cfBOOLean_from_cftype_using_description)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!CFBooleanGetValue(cfBOOLean_from_cftype_using_description))
  {
    return 0;
  }

LABEL_13:
  v8 = *(a1 + 24);
  if (*v8 < 5)
  {
    return 0;
  }

  v9 = v8[17];
  if (!v9)
  {
    return 0;
  }

  v10 = v8[1];
  v11 = @"kMMCSItemChunkLength";
LABEL_32:

  return v9(a1, v10, v11);
}

_BYTE *MMCSItemReaderWriterCreateWithFileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  memset(&v50, 0, sizeof(v50));
  if (fstat(a1, &v50) < 0)
  {
    v20 = *__error();
    v21 = v20;
    v47 = strerror(v20);
    file_error_with_format = mmcs_cferror_create_file_error_with_format(v21, @"fstat(%d) failed: %s", v22, v23, v24, v25, v26, v27, a1, v47);
    goto LABEL_14;
  }

  if ((v50.st_mode & 0xF000) == 0xA000)
  {
    bzero(v52, 0x400uLL);
    if ((get_path_for_fd(a1, v52) & 0x80000000) != 0)
    {
      v30 = *__error();
      v31 = v30;
      v48 = strerror(v30);
      file_error_with_format = mmcs_cferror_create_file_error_with_format(v31, @"getpath(%d) failed: %s", v32, v33, v34, v35, v36, v37, a1, v48);
    }

    else
    {
      bzero(bytes, 0x400uLL);
      v10 = readlink(v52, bytes, 0x400uLL);
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, v10);
        if (v11)
        {
          v17 = v11;
          v18 = MMCSItemReaderWriterCreateWithData(v11, a2, a3);
          CFRelease(v17);
          v19 = 0;
          if (!a5)
          {
LABEL_19:
            if (v19)
            {
              CFRelease(v19);
            }

            goto LABEL_21;
          }

LABEL_16:
          if (v18)
          {
            goto LABEL_19;
          }

          if (v19)
          {
            CFRetain(v19);
            *a5 = v19;
            goto LABEL_27;
          }

LABEL_26:
          v19 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Creating the readerWriter failed for an unspecified reason", v12, v13, v14, v15, v16);
          CFRetain(v19);
          *a5 = v19;
          if (!v19)
          {
            return 0;
          }

LABEL_27:
          CFRelease(v19);
          return 0;
        }

        v19 = 0;
LABEL_15:
        v18 = 0;
        if (!a5)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v38 = *__error();
      v39 = v38;
      v49 = strerror(v38);
      file_error_with_format = mmcs_cferror_create_file_error_with_format(v39, @"readlink(%d) failed: %s", v40, v41, v42, v43, v44, v45, a1, v49);
    }

LABEL_14:
    v19 = file_error_with_format;
    goto LABEL_15;
  }

  v29 = MMCSItemReaderWriterCreateWithPlainFileDescriptor(a1, a2, a3, a4);
  v18 = v29;
  if (a5 && !v29)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v18)
  {
    if (v18[21])
    {
      MMCSItemReaderWriterCreateWithFileDescriptor_cold_1();
    }

    if (v18[23])
    {
      MMCSItemReaderWriterCreateWithFileDescriptor_cold_2();
    }

    if (v18[22])
    {
      MMCSItemReaderWriterCreateWithFileDescriptor_cold_3();
    }
  }

  return v18;
}

void _MMCSItemReaderWriterCFFinalize(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (*(a1 + 22))
  {
    if (!MMCSItemReaderWriterClose(a1, &cf))
    {
      v2 = mmcs_cferror_copy_description(cf);
      v4 = mmcs_logging_logger_default(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Error closing item reader: %@", v2);
        v7 = mmcs_logging_logger_default(v5, v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v13 = v5;
          _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v5)
        {
          CFRelease(v5);
        }
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  cf = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    if (*v8 >= 2)
    {
      v9 = *(v8 + 12);
      if (v9)
      {
        v9(*(v8 + 1));
        v8 = *(a1 + 24);
      }
    }

    v10 = *(v8 + 5);
    if (v10)
    {
      v10(*(v8 + 1));
      v8 = *(a1 + 24);
    }

    if (*(v8 + 2))
    {
      CFRelease(*(v8 + 2));
      v8 = *(a1 + 24);
    }

    *(v8 + 2) = 0;
    if (*(v8 + 3))
    {
      CFRelease(*(v8 + 3));
      v8 = *(a1 + 24);
    }

    free(v8);
    *(a1 + 24) = 0;
  }
}

uint64_t mmcs_cache_delete_get_available_bytes_from_mount_path(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  cf = 0;
  v2 = CacheDeleteCopyAvailableSpaceForVolume();
  CFNumberGetValue(v2, kCFNumberLongLongType, &v4);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

CFStringRef mmcs_cache_delete_copy_mount_path_from_directory(const __CFURL *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(&v7, 0x878uLL);
  v2 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CStringPtr = CFStringGetCStringPtr(v2, 0x8000100u);
  if (CStringPtr && !statfs(CStringPtr, &v7))
  {
    v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v7.f_mntonname, 0x8000100u);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

uint64_t mmcs_nshttp_context_alloc(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  *a1 = 0;
  v5 = 0;
  v3 = mmcs_http_context_allocate(&v5, 2, 8);
  if (v3)
  {
    *a1 = v5;
  }

  objc_autoreleasePoolPop(v2);
  return v3;
}

BOOL mmcs_nshttp_context_init(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 16) != 2)
  {
    mmcs_nshttp_context_init_cold_1();
  }

  v5 = v4;
  if (_mmcs_http_context_init(a1, a2))
  {
    *(a1 + 400) = *(a2 + 56) != 0;
    **(a1 + 624) = [[MMCSHTTPContext alloc] initWithContext:a1 options:a2 activityMarker:mmcs_http_context_get_activity_marker(a1)];
    v6 = **(a1 + 624) != 0;
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v6;
}

void mmcs_nshttp_context_append_description(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *a1;
  if (*a1)
  {
    v4 = [objc_msgSend(**(v3 + 624) "dataTask")];
    v5 = [objc_msgSend(objc_msgSend(**(v3 + 624) "urlSession")];
    if (v5 && v4 != 0)
    {
      v7 = v5;
      mmcs_op_requestor_context_indent(a1);
      CFStringAppendFormat(a1[2], 0, @" <%@>.<%lu>\n", v7, v4);
    }
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t mmcs_nshttp_copy_perform_target(uint64_t a1)
{
  v1 = *(a1 + 608);
  if (v1)
  {
    C3BaseRetain(*(a1 + 608));
  }

  return v1;
}

void mmcs_nshttp_context_cleanup_response(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v4 = v2;
  if (gMMCS_DebugLevel >= 4)
  {
    v5 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cleanup response %p and %@", a1, **(a1 + 624));
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v11 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  [**(a1 + 624) cleanupResponse];
  v9 = **(a1 + 624);
  if (v9)
  {

    **(a1 + 624) = 0;
  }

  objc_autoreleasePoolPop(v4);
}

void mmcs_nshttp_context_finalize(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  mmcs_nshttp_context_invalidate(a1);
  v3 = **(a1 + 624);
  if (v3)
  {

    **(a1 + 624) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void mmcs_nshttp_context_invalidate(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v4 = v2;
  if (gMMCS_DebugLevel >= 4)
  {
    v5 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalidate %p and %@", a1, **(a1 + 624));
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  [**(a1 + 624) invalidate];
  objc_autoreleasePoolPop(v4);
}

void mmcs_nshttp_context_did_complete(uint64_t a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  mmcs_nshttp_context_invalidate(a1);
  if (!*(a1 + 520))
  {
    if (!*(a1 + 488))
    {
      goto LABEL_57;
    }

    v8 = mmcs_http_context_copy_response_body(a1);
    if (!v8)
    {
      metricsinfo__set_response_size(a1 + 24, 0);
      mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
      goto LABEL_57;
    }

    v9 = v8;
    Length = CFDataGetLength(v8);
    metricsinfo__set_response_size(a1 + 24, Length);
    mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
    v11 = v9;
LABEL_56:
    CFRelease(v11);
    goto LABEL_57;
  }

  if (!*(a1 + 289) || mmcs_http_context_has_timedout(a1) && (is_timedout = mmcs_http_context_is_timedout(a1, v5), is_timedout))
  {
    if (!*(a1 + 328))
    {
      v6 = mmcs_http_context_copy_cferror_for_http_status_not_ok(a1);
      mmcs_http_context_set_error(a1, v6);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    v7 = mmcs_logging_logger_default(is_timedout, v4);
    XCFPrint(v7, @"HttpContextError", *(a1 + 328));
    mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
    (*(a1 + 520))(a1, 0, *(a1 + 576));
    goto LABEL_57;
  }

  v12 = mmcs_http_context_copy_response_body(a1);
  v13 = v12;
  cf = v12;
  if (v12)
  {
    v14 = CFDataGetLength(v12);
  }

  else
  {
    v14 = 0;
  }

  metricsinfo__set_response_size(a1 + 24, v14);
  if (!*(a1 + 328) && !mmcs_http_context_status_succeeded(a1, v15))
  {
    v16 = mmcs_http_context_copy_cferror_for_http_status_not_ok(a1);
    mmcs_http_context_set_error(a1, v16);
    if (v16)
    {
      CFRelease(v16);
    }
  }

  has_http_status = mmcs_http_context_has_http_status(a1);
  if (has_http_status)
  {
    if (!v13 || mmcs_http_context_status_succeeded(a1, v18))
    {
      goto LABEL_38;
    }

    v19 = *MEMORY[0x277CBECE8];
    BytePtr = CFDataGetBytePtr(v13);
    v21 = CFDataGetLength(v13);
    *&v22 = COERCE_DOUBLE(XCFStringCreateWithBytesNoCopy(v19, BytePtr, v21, 0x8000100u, 0, *MEMORY[0x277CBED00]));
    v24 = mmcs_logging_logger_default(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *&v25 = COERCE_DOUBLE(CFStringCreateWithFormat(v19, 0, @"Server returned error. HTTP Response Body\n%@", v22));
      v27 = mmcs_logging_logger_default(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v49 = *&v25;
        _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if (*&v25 != 0.0)
      {
        CFRelease(v25);
      }
    }
  }

  else
  {
    v28 = mmcs_logging_logger_default(has_http_status, v18);
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (!v29)
      {
        goto LABEL_38;
      }

      *&v22 = COERCE_DOUBLE(CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p did not get a http status, with a %lld byte body.", a1, *(a1 + 200)));
      v31 = mmcs_logging_logger_default(v22, v30);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138543362;
      v49 = *&v22;
    }

    else
    {
      if (!v29)
      {
        goto LABEL_38;
      }

      *&v22 = COERCE_DOUBLE(CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p did not get a http status, with no body.", a1));
      v31 = mmcs_logging_logger_default(v22, v32);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138543362;
      v49 = *&v22;
    }

    _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

LABEL_36:
  if (*&v22 != 0.0)
  {
    CFRelease(v22);
  }

LABEL_38:
  v35 = mmcs_http_context_elapsed_seconds(a1);
  v36 = v35;
  if (v35 == 0.0 || (v37 = *(a1 + 216), v37 < 0))
  {
    v40 = 0;
  }

  else
  {
    v38 = *(a1 + 160);
    v39 = v38 + v37;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  if (v40 * 8.0 / v35 / 1000.0 / 1000.0 >= 0.5 || v35 <= 10.0 || v35 == 0.0)
  {
    v43 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v43 = OS_LOG_TYPE_ERROR;
  }

  v44 = mmcs_logging_logger_network_performance(v33, v34);
  if (os_log_type_enabled(v44, v43))
  {
    v46 = mmcs_http_context_enqueued_seconds(a1, v45);
    *buf = 134218752;
    v49 = v40 * 8.0 / v36 / 1000.0 / 1000.0;
    v50 = 2048;
    v51 = v36;
    v52 = 2048;
    v53 = v40;
    v54 = 2048;
    v55 = v46;
    _os_log_impl(&dword_2577D8000, v44, v43, "Observed %0.4lf Mbps over %0.4lf seconds for %lld bytes. %0.4lf seconds in queue.", buf, 0x2Au);
  }

  mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
  (*(a1 + 520))(a1, &cf, *(a1 + 576));
  v11 = cf;
  if (cf)
  {
    goto LABEL_56;
  }

LABEL_57:
  objc_autoreleasePoolPop(v2);
}

uint64_t mmcs_nshttp_context_actual_bytes_written(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152))
  {
    return metricsinfo__get_bytes_written(a1 + 24, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mmcs_nshttp_write_request_body(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v8 = v6;
  if (gMMCS_DebugLevel >= 5)
  {
    v9 = mmcs_logging_logger_default(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p buffer %p len %lld", a1, a2, a3);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v16 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  v13 = [**(a1 + 624) writeRequestBody:a2 maxLength:a3];
  objc_autoreleasePoolPop(v8);
  return v13;
}

void mmcs_nshttp_set_request_body_done(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v4 = v2;
  if (gMMCS_DebugLevel >= 5)
  {
    v5 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"http context %p", a1);
      v8 = mmcs_logging_logger_default(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  [**(a1 + 624) requestBodyDone];
  *(a1 + 160) = [**(a1 + 624) countOfRequestBodyBytesSent];
  objc_autoreleasePoolPop(v4);
}

uint64_t mmcs_nshttp_request_body_can_accept_data(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [**(a1 + 624) requestBodyCanAcceptData];
  objc_autoreleasePoolPop(v2);
  return v3;
}

BOOL mmcs_nshttp_context_send(uint64_t a1, uint64_t a2, const void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  *(a1 + 484) = 0;
  mmcs_http_context_set_perform_target(a1, a3);
  v6 = *(a1 + 336);
  if (v6)
  {
    v7 = CFHTTPMessageCopyRequestMethod(v6);
    if (v7)
    {
      v9 = v7;
      v10 = mmcs_logging_logger_default(v7, v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v44 = v9;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_INFO, "HttpMethod (%{public}@)", buf, 0xCu);
      }

      CFRelease(v9);
    }

    v11 = CFHTTPMessageCopyRequestURL(*(a1 + 336));
    if (v11)
    {
      v12 = v11;
      v13 = CFURLCopyStrictPath(v11, 0);
      if (v13)
      {
        v15 = v13;
        v16 = mmcs_logging_logger_default(v13, v14);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v12;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEFAULT, "HttpURL (%{public}@)", buf, 0xCu);
        }

        CFRelease(v15);
      }

      CFRelease(v12);
    }

    v17 = CFHTTPMessageCopyVersion(*(a1 + 336));
    if (v17)
    {
      v19 = v17;
      v20 = mmcs_logging_logger_default(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v44 = v19;
        _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_INFO, "HttpRequestVersion (%{public}@)", buf, 0xCu);
      }

      CFRelease(v19);
    }

    v21 = CFHTTPMessageCopyAllHeaderFields(*(a1 + 336));
    if (v21)
    {
      v22 = v21;
      v41 = v5;
      Count = CFDictionaryGetCount(v21);
      v40 = &v40;
      MEMORY[0x28223BE20](Count);
      v24 = (&v40 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v24, 8 * Count);
      MEMORY[0x28223BE20](v25);
      v26 = v24;
      bzero(v24, 8 * Count);
      CFDictionaryGetKeysAndValues(v22, v24, v24);
      if (Count >= 1)
      {
        *&v29 = 138543618;
        v42 = v29;
        do
        {
          if (*v24)
          {
            if (*v26)
            {
              v30 = mmcs_logging_logger_default(v27, v28);
              v31 = mmcs_logging_log_header_level(*v24);
              v27 = os_log_type_enabled(v30, v31);
              if (v27)
              {
                v32 = *v24;
                v33 = *v26;
                *buf = v42;
                v44 = v32;
                v45 = 2114;
                v46 = v33;
                _os_log_impl(&dword_2577D8000, v30, v31, "RequestHeader (%{public}@:%{public}@)", buf, 0x16u);
              }
            }
          }

          ++v26;
          ++v24;
          --Count;
        }

        while (Count);
      }

      CFRelease(v22);
      v5 = v41;
    }
  }

  if (debug_begin_writing_http_message_to_file(a1, *(a1 + 336), (a1 + 424), *(a1 + 264), 0) && !*(a1 + 400) && *(a1 + 424))
  {
    v34 = CFHTTPMessageCopyBody(*(a1 + 336));
    if (v34)
    {
      v35 = v34;
      BytePtr = CFDataGetBytePtr(v34);
      Length = CFDataGetLength(v35);
      fwrite(BytePtr, Length, 1uLL, *(a1 + 424));
      CFRelease(v35);
    }

    fclose(*(a1 + 424));
    *(a1 + 424) = 0;
  }

  [**(a1 + 624) setRequestIsStreamed:*(a1 + 400) != 0];
  v38 = [**(a1 + 624) send];
  if (v38)
  {
    mmcs_http_context_set_error(a1, v38);
  }

  objc_autoreleasePoolPop(v5);
  return v38 == 0;
}

uint64_t mmcs_nshttp_received_data(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  metricsinfo__set_bytes_read(a1 + 24, [a2 length] + *(a1 + 216));
  Current = CFAbsoluteTimeGetCurrent();
  v6 = *(a1 + 320);
  *(a1 + 320) = Current;
  if (*(a1 + 296) <= 2)
  {
    *(a1 + 296) = 3;
  }

  if (*(a1 + 552))
  {
    memset(v9, 0, sizeof(v9));
    mmcs_network_activity_make([a2 length], 1, v9, v6, Current);
    (*(a1 + 552))(a1, v9, *(a1 + 576));
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __mmcs_nshttp_received_data_block_invoke;
  v8[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v8[4] = a1;
  [a2 enumerateByteRangesUsingBlock:v8];
  objc_autoreleasePoolPop(v4);
  return 1;
}

void __mmcs_nshttp_received_data_block_invoke(uint64_t a1, void *__ptr, uint64_t a3, size_t __size, _BYTE *a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = *(v10 + 432);
  if (v11)
  {
    fwrite(__ptr, __size, 1uLL, v11);
    v10 = *(a1 + 32);
  }

  v12 = *(v10 + 528);
  if (v12)
  {
    if (!v12())
    {
      if (a5)
      {
        *a5 = 1;
      }

      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Error processing data", v13, v14, v15, v16, v17);
      v18 = mmcs_cferror_copy_description(cf);
      v20 = mmcs_logging_logger_default(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stopping http request %p due to data processing error %@ byte range (%lu, %lu)", *(a1 + 32), v18, a3, __size);
        v23 = mmcs_logging_logger_default(v21, v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v27 = v21;
          _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      if (v18)
      {
        CFRelease(v18);
      }

      mmcs_http_context_set_error(*(a1 + 32), cf);
      if (cf)
      {
        CFRelease(cf);
      }

      mmcs_http_context_transaction_complete(*(a1 + 32), v24);
    }
  }

  else
  {

    mmcs_http_write_response_body(v10, __ptr, __size);
  }
}

void mmcs_nshttp_did_complete(uint64_t a1, id a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  if (!*(a1 + 290) && !*(a1 + 56))
  {
    *(a1 + 288) = 1;
    if (!a2)
    {
      if (*(a1 + 536) && mmcs_http_context_status_succeeded(a1, v4))
      {
        v27 = 0;
        a2 = 0;
        if (!(*(a1 + 536))(a1, &v27))
        {
          v11 = v27;
          if (!v27)
          {
            v11 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Error processing data", v6, v7, v8, v9, v10);
            v27 = v11;
          }

          v12 = mmcs_cferror_copy_description(v11);
          v14 = mmcs_logging_logger_default(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stopping http request %p due to data processing error %@ at end of response stream", a1, v12);
            v17 = mmcs_logging_logger_default(v15, v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v29 = v15;
              _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }

          if (v12)
          {
            CFRelease(v12);
          }

          a2 = v27;
        }
      }

      else
      {
        a2 = 0;
      }
    }

    *(a1 + 289) = 1;
    v18 = *(a1 + 544);
    if (v18)
    {
      v18(*(a1 + 568));
    }

    if (a2)
    {
      v19 = [a2 domain];
      v20 = *MEMORY[0x277CCA738];
      if ([v19 isEqualToString:*MEMORY[0x277CCA738]])
      {
        if ([a2 code] == -999 && !*(a1 + 290))
        {
          v22 = mmcs_logging_logger_default(-999, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"context %p received timeout error from NSURLSessionTask but is not marked as cancelled", a1);
            v25 = mmcs_logging_logger_default(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v29 = v23;
              _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v23)
            {
              CFRelease(v23);
            }
          }
        }
      }

      if ([objc_msgSend(a2 "domain")] && objc_msgSend(a2, "code") == -1001)
      {
        metricsinfo__set_timed_out(a1 + 24, 1);
      }

      mmcs_nshttp_transform_and_set_error(a1, a2);
    }

    else if (mmcs_http_context_response_received_time(a1) == 0.0)
    {
      *(a1 + 120) = CFAbsoluteTimeGetCurrent();
    }

    _mmcs_nshttp_capture_transaction_state(a1, [**(a1 + 624) timingData]);
    mmcs_http_context_transaction_complete(a1, v26);
  }

  objc_autoreleasePoolPop(v5);
}

void mmcs_nshttp_transform_and_set_error(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [a2 localizedFailureReason];
  v6 = [a2 localizedDescription];
  v7 = [a2 domain];
  if ([v7 isEqualToString:*MEMORY[0x277CCA738]] && objc_msgSend(a2, "code") == -1001)
  {
    stream_status_string = mmcs_http_get_stream_status_string(*(a1 + 296));
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"The operation timed out while %@. NSURLSession error: %@ (%@)", stream_status_string, v6, v5);
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 3, a2, @"%@", v14, v15, v16, v17, v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  else
  {
    error_with_underlying_error = mmcs_cferror_create_error_with_underlying_error(@"com.apple.mmcs", 38, a2, @"NSURLSession error: %@ (%@)", v8, v9, v10, v11, v6, v5);
  }

  mmcs_http_context_set_error(a1, error_with_underlying_error);
  if (error_with_underlying_error)
  {
    CFRelease(error_with_underlying_error);
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t _mmcs_nshttp_capture_transaction_state(uint64_t a1, void *a2)
{
  v4 = objc_opt_class();
  ClassValueForKey = TimingDataGetClassValueForKey(a2, v4, @"_kCFNTimingDataConnectionReused", 1);
  if (ClassValueForKey)
  {
    *(a1 + 484) = [ClassValueForKey intValue] != 0;
  }

  v6 = objc_opt_class();
  v7 = TimingDataGetClassValueForKey(a2, v6, @"_kCFNTimingDataConnectionInterfaceIdentifier", 1);
  if (v7)
  {
    metricsinfo__set_request_url_with_cfstring(a1 + 440, v7);
  }

  v8 = *(a1 + 328);
  v10 = !v8 || (Domain = CFErrorGetDomain(v8), !CFEqual(@"com.apple.mmcs", Domain)) || CFErrorGetCode(*(a1 + 328)) != 3;
  v11 = objc_opt_class();
  v12 = TimingDataGetClassValueForKey(a2, v11, @"_kCFNTimingDataConnectionPeerAddress", v10);
  if (v12)
  {
    v13 = [v12 bytes];
    v14.s_addr = *(v13 + 4);
    v15 = inet_ntoa(v14);
    if (v15)
    {
      *(a1 + 480) = bswap32(*(v13 + 2)) >> 16;
      socketinfo__set_peer_address_with_c_string(a1 + 440, v15);
    }
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{@"_kCFNTimingDataDomainLookupStart", "doubleValue"}];
  metricsinfo__set_start_name_resolution(a1 + 24, v16);
  [objc_msgSend(a2 objectForKeyedSubscript:{@"_kCFNTimingDataDomainLookupEnd", "doubleValue"}];
  metricsinfo__set_stop_name_resolution(a1 + 24, v17);
  [objc_msgSend(a2 objectForKeyedSubscript:{@"_kCFNTimingDataFetchStart", "doubleValue"}];
  *(a1 + 280) = v18;
  [objc_msgSend(a2 objectForKeyedSubscript:{@"_kCFNTimingDataTimingDataInit", "doubleValue"}];

  return metricsinfo__set_connection_init_time(a1 + 24, v19);
}

void mmcs_nshttp_did_open(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 392))
  {
    mmcs_nshttp_did_open_cold_1();
  }

  v3 = v2;
  v4 = [objc_msgSend(**(a1 + 624) "dataTask")];
  if (v4)
  {
    v5 = v4;
    *(a1 + 320) = CFAbsoluteTimeGetCurrent();
    v6 = [v5 statusCode];
    metricsinfo__set_http_status(a1 + 24, v6);
    v7 = *MEMORY[0x277CBECE8];
    v8 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:v6];
    Response = CFHTTPMessageCreateResponse(v7, v6, v8, *MEMORY[0x277CBAD00]);
    v10 = [v5 allHeaderFields];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __mmcs_nshttp_did_open_block_invoke;
    v30[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v30[4] = Response;
    [v10 enumerateKeysAndObjectsUsingBlock:v30];
    *(a1 + 392) = Response;
    if (Response)
    {
      v11 = CFHTTPMessageCopyResponseStatusLine(Response);
      if (v11)
      {
        v13 = v11;
        v14 = mmcs_logging_logger_default(v11, v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v32 = v13;
          _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_DEFAULT, "HttpStatus (%{public}@)", buf, 0xCu);
        }

        CFRelease(v13);
      }

      v15 = CFHTTPMessageCopyAllHeaderFields(*(a1 + 392));
      if (v15)
      {
        v16 = v15;
        Count = CFDictionaryGetCount(v15);
        v28[1] = v28;
        MEMORY[0x28223BE20](Count);
        v18 = (v28 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v18, 8 * Count);
        MEMORY[0x28223BE20](v19);
        v20 = v18;
        bzero(v18, 8 * Count);
        CFDictionaryGetKeysAndValues(v16, v18, v18);
        if (Count >= 1)
        {
          *&v23 = 138543618;
          v29 = v23;
          do
          {
            if (*v18)
            {
              if (*v20)
              {
                v24 = mmcs_logging_logger_default(v21, v22);
                v25 = mmcs_logging_log_header_level(*v18);
                v21 = os_log_type_enabled(v24, v25);
                if (v21)
                {
                  v26 = *v18;
                  v27 = *v20;
                  *buf = v29;
                  v32 = v26;
                  v33 = 2114;
                  v34 = v27;
                  _os_log_impl(&dword_2577D8000, v24, v25, "ResponseHeader (%{public}@:%{public}@)", buf, 0x16u);
                }
              }
            }

            ++v20;
            ++v18;
            --Count;
          }

          while (Count);
        }

        CFRelease(v16);
      }
    }

    debug_begin_writing_http_message_to_file(a1, *(a1 + 392), (a1 + 432), *(a1 + 264), 1);
  }

  objc_autoreleasePoolPop(v3);
}

void mmcs_nshttp_will_retry_in_background(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  mmcs_nshttp_transform_and_set_error(a1, a2);
  _mmcs_nshttp_capture_transaction_state(a1, [**(a1 + 624) timingData]);
  v5 = mmcs_http_context_copy_response_body(a1);
  if (v5)
  {
    v6 = v5;
    Length = CFDataGetLength(v5);
    metricsinfo__set_response_size(a1 + 24, Length);
    mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
    CFRelease(v6);
  }

  else
  {
    metricsinfo__set_response_size(a1 + 24, 0);
    mmcs_metrics_harvest_http_info(*(a1 + 488), a1);
  }

  v9 = *(a1 + 512);
  if (v9)
  {
    v9(a1, *(a1 + 576), *(a1 + 328));
  }

  mmcs_http_reset_response_state_for_background_retry(a1, v8);

  objc_autoreleasePoolPop(v4);
}

void mmcs_nshttp_schedule_stream(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  mmcs_perform_target_stream_schedule(*(a1 + 608));

  objc_autoreleasePoolPop(v3);
}

uint64_t TimingDataGetClassValueForKey(void *a1, objc_class *a2, uint64_t a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [a1 objectForKeyedSubscript:?];
  if (!v7)
  {
    if (a4)
    {
      v20 = mmcs_logging_logger_default(0, v8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *MEMORY[0x277CBECE8];
        v22 = NSStringFromClass(a2);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v15 = CFStringCreateWithFormat(v21, 0, @"Expected %@ for key %@, got %@", v22, a3, v24);
        v26 = mmcs_logging_logger_default(v15, v25);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_11;
        }

        *buf = 138543362;
        v29 = v15;
        v18 = v26;
        v19 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&dword_2577D8000, v18, v19, "%{public}@", buf, 0xCu);
LABEL_11:
        if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    return 0;
  }

  v9 = v7;
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = mmcs_logging_logger_default(isKindOfClass, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *MEMORY[0x277CBECE8];
      v14 = NSStringFromClass(a2);
      v15 = CFStringCreateWithFormat(v13, 0, @"Expected %@ got %@", v14, v9);
      v17 = mmcs_logging_logger_default(v15, v16);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      *buf = 138543362;
      v29 = v15;
      v18 = v17;
      v19 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

    return 0;
  }

  return v9;
}

uint64_t mmcs_chunk_reference_create(void *a1, int a2, _BYTE *a3, uint64_t a4, char a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = malloc_type_malloc(0x48uLL, 0x1030040BCC12766uLL);
  *a1 = 0;
  if (v10)
  {
    v10[1] = a2;
    *(v10 + 64) = (*a3 & 0x7F) != 4;
    *v10 = a5;
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    *(v10 + 24) = 0;
    *(v10 + 4) = 0;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    *a1 = v10;
  }

  else
  {
    v12 = mmcs_logging_logger_default(0, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"malloc\n");
      v15 = mmcs_logging_logger_default(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "%{public}@", &v17, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

  return 1;
}

void mmcs_chunk_reference_add_instance(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    if (mmcs_chunk_instance_equal(v4, a2))
    {
      return;
    }

    Mutable = *(a1 + 56);
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &chunkInstanceEqualitySetCallbacks);
      *(a1 + 56) = Mutable;
    }
  }

  else
  {
    Mutable = *(a1 + 56);
    if (!Mutable)
    {
      *(a1 + 48) = a2;
      return;
    }
  }

  CFSetSetValue(Mutable, a2);
}

void mmcs_chunk_reference_apply_function_to_instances(uint64_t a1, void (*a2)(uint64_t, void *), void *a3)
{
  if (a2)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      a2(v6, a3);
    }

    v7 = *(a1 + 56);
    if (v7 && CFSetGetCount(v7) >= 1)
    {
      v8 = *(a1 + 56);

      CFSetApplyFunction(v8, a2, a3);
    }
  }
}

const __CFSet *mmcs_chunk_reference_get_first_chunk_instance(uint64_t a1)
{
  result = *(a1 + 48);
  context = result;
  if (!result)
  {
    result = *(a1 + 56);
    if (result)
    {
      if (CFSetGetCount(result) < 1)
      {
        return 0;
      }

      else
      {
        CFSetApplyFunction(*(a1 + 56), _first_instance, &context);
        return context;
      }
    }
  }

  return result;
}

uint64_t _first_instance(uint64_t result, void *a2)
{
  if (a2)
  {
    if (!*a2)
    {
      *a2 = result;
    }
  }

  return result;
}

void mmcs_chunk_reference_was_put(uint64_t a1, void *a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    mmcs_chunk_instance_was_put(v4, a2);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    if (CFSetGetCount(v5) >= 1)
    {
      Copy = CFSetCreateCopy(*MEMORY[0x277CBECE8], *(a1 + 56));
      CFSetApplyFunction(Copy, mmcs_chunk_instance_was_put, a2);
      if (Copy)
      {

        CFRelease(Copy);
      }
    }
  }
}

void mmcs_chunk_reference_was_read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = mmcs_item_chunk_instance_was_read;
  v3[2] = a3;
  _mmcs_chunk_reference_was_VERB(a1, v3);
}

void _mmcs_chunk_reference_was_VERB(uint64_t a1, void *a2)
{
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = v5 != 0;
  if (v4)
  {
    v6 += CFSetGetCount(v4);
  }

  if (v6 == 1)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (a2[1])(*(v7 + 8), *a2, a2[2]);
    }

    v8 = *(a1 + 56);
    if (v8 && CFSetGetCount(v8) >= 1)
    {
      v9 = *(a1 + 56);

      CFSetApplyFunction(v9, _chunk_instance_was_VERB_applier, a2);
    }
  }

  else if (v6 >= 2)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, &itemItemIDEqualitySetCallbacks);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = *(a1 + 48);
      if (v12)
      {
        CFSetAddValue(Mutable, *(v12 + 8));
      }

      v13 = *(a1 + 56);
      if (v13 && CFSetGetCount(v13) >= 1)
      {
        CFSetApplyFunction(*(a1 + 56), _add_item, v11);
      }

      CFSetApplyFunction(v11, _item_was_VERB_applier, a2);

      CFRelease(v11);
    }
  }
}

void mmcs_chunk_reference_was_unread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = mmcs_item_chunk_instance_was_unread;
  v3[2] = a3;
  _mmcs_chunk_reference_was_VERB(a1, v3);
}

uint64_t mmcs_chunk_reference_create_RegisteredChunk(uint64_t a1)
{
  v1 = CKCreateRegisteredChunkWithSubchunkBlob();
  if (v1)
  {
    CKRegisteredChunkSetLength();
  }

  return v1;
}

CFStringRef mmcs_chunk_reference_copy_description(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = CKChunkSchemeAndSignatureSize();
    v2 = hextostrdup(v2, v3);
  }

  v4 = *(a1 + 16);
  if (!v4 || (v5 = CKChunkSchemeAndEncryptionKeySize(), (v6 = mmcs_key_description_create_with_bytes(v4, v5, 1)) == 0))
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<chunk_ref %p> (%s %d)", a1, v2, *(a1 + 4));
    v7 = 0;
    v9 = 1;
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v7 = v6;
  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"<chunk_ref %p> (%s %@ %d)", a1, v2, v6, *(a1 + 4));
  v9 = 0;
  if (v2)
  {
LABEL_8:
    free(v2);
  }

LABEL_9:
  if ((v9 & 1) == 0)
  {
    CFRelease(v7);
  }

  return v8;
}

void mmcs_chunk_reference_append_signature_length_description(uint64_t a1, CFMutableStringRef theString)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = CKChunkSchemeAndSignatureSize();
    v6 = hextostrdup(v4, v5);
    CFStringAppendFormat(theString, 0, @"(%s %d)", v6, *(a1 + 4));
    if (v6)
    {

      free(v6);
    }
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"(%s %d)", 0, *(a1 + 4));
  }
}

uint64_t mmcs_chunk_reference_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return CKChunkSignaturesEqual();
    }
  }

  return result;
}

uint64_t mmcs_chunk_reference_hash(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void mmcs_chunk_reference_finalize(unsigned __int8 *a1)
{
  *(a1 + 6) = 0;
  v2 = *(a1 + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 7) = 0;
  if (*a1)
  {
    v3 = *(a1 + 1);
    if (!v3 || (free(v3), v4 = *a1, *(a1 + 1) = 0, v4))
    {
      v5 = *(a1 + 2);
      if (v5)
      {
        free(v5);
      }
    }
  }

  else
  {
    *(a1 + 1) = 0;
  }

  *(a1 + 2) = 0;
  if (a1[24])
  {
    v6 = *(a1 + 4);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 4) = 0;
  }
}

void mmcs_chunk_reference_dealloc(unsigned __int8 *a1)
{
  mmcs_chunk_reference_finalize(a1);
  if (a1)
  {

    free(a1);
  }
}

os_log_t __mmcs_logging_logger_default_block_invoke()
{
  result = os_log_create("com.apple.mmcs", "default");
  mmcs_logging_logger_default_logger = result;
  return result;
}

uint64_t mmcs_logging_logger_chunk(uint64_t a1, uint64_t a2)
{
  if (mmcs_logging_logger_chunk_once != -1)
  {
    mmcs_logging_logger_chunk_cold_1();
  }

  return mmcs_logging_logger_chunk_logger;
}

os_log_t __mmcs_logging_logger_chunk_block_invoke()
{
  result = os_log_create("com.apple.mmcs", "chunk");
  mmcs_logging_logger_chunk_logger = result;
  return result;
}

uint64_t mmcs_logging_logger_network_performance(uint64_t a1, uint64_t a2)
{
  if (mmcs_logging_logger_network_performance_once != -1)
  {
    mmcs_logging_logger_network_performance_cold_1();
  }

  return mmcs_logging_logger_network_performance_logger;
}

os_log_t __mmcs_logging_logger_network_performance_block_invoke()
{
  result = os_log_create("com.apple.mmcs", "network.performance");
  mmcs_logging_logger_network_performance_logger = result;
  return result;
}

uint64_t mmcs_logging_logger_summary(uint64_t a1, uint64_t a2)
{
  if (mmcs_logging_logger_summary_once != -1)
  {
    mmcs_logging_logger_summary_cold_1();
  }

  return mmcs_logging_logger_summary_logger;
}

os_log_t __mmcs_logging_logger_summary_block_invoke()
{
  result = os_log_create("com.apple.mmcs", "summary");
  mmcs_logging_logger_summary_logger = result;
  return result;
}

uint64_t mmcs_logging_log_header_level(CFStringRef theString)
{
  if (mmcs_logging_log_header_level_MMCS_MMCS_HEADER_WHITELIST_SET_BLOCK == -1)
  {
    if (theString)
    {
      return 2 * (mmcs_case_insensitive_set_contains(mmcs_logging_log_header_level_MMCS_HEADER_WHITELIST_SET, theString) == 0);
    }
  }

  else
  {
    mmcs_logging_log_header_level_cold_1();
    if (theString)
    {
      return 2 * (mmcs_case_insensitive_set_contains(mmcs_logging_log_header_level_MMCS_HEADER_WHITELIST_SET, theString) == 0);
    }
  }

  return 2;
}

uint64_t __mmcs_logging_log_header_level_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[2] = xmmword_279844EB8;
  v1[3] = *&off_279844EC8;
  v1[4] = xmmword_279844ED8;
  v1[0] = xmmword_279844E98;
  v1[1] = *&off_279844EA8;
  return mmcs_case_insensitive_set_create(&mmcs_logging_log_header_level_MMCS_HEADER_WHITELIST_SET, v1, 10);
}

void XCFPrintArray(NSObject *a1, uint64_t a2, const __CFArray *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = *MEMORY[0x277CBECE8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v8);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        v12 = CFGetTypeID(ValueAtIndex);
        if (v12 == CFDictionaryGetTypeID())
        {
          v13 = CFStringCreateWithFormat(v9, 0, @"%@:%ld", a2, v8);
          XCFPrintDictionary(a1, v13, v11);
          if (!v13)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        v14 = CFGetTypeID(v11);
        if (v14 == CFArrayGetTypeID())
        {
          v13 = CFStringCreateWithFormat(v9, 0, @"%@:%ld", a2, v8);
          XCFPrintArray(a1, v13, v11);
          if (!v13)
          {
            goto LABEL_13;
          }

LABEL_12:
          CFRelease(v13);
          goto LABEL_13;
        }

        v15 = CFGetTypeID(v11);
        if (v15 != CFErrorGetTypeID())
        {
          if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            v17 = a2;
            v18 = 2048;
            v19 = v8;
            v20 = 2114;
            v21 = v11;
            _os_log_impl(&dword_2577D8000, a1, OS_LOG_TYPE_INFO, "%{public}@:%ld %{public}@", buf, 0x20u);
          }

          goto LABEL_13;
        }

        v13 = CFStringCreateWithFormat(v9, 0, @"%@:%ld", a2, v8);
        XCFPrintError(a1, v13, v11);
        if (v13)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      ++v8;
    }

    while (v7 != v8);
  }
}

void XCFPrintDictionary(NSObject *a1, uint64_t a2, const __CFDictionary *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  Count = CFDictionaryGetCount(a3);
  v7 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  v8 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v9 = a3;
  v10 = v7;
  CFDictionaryGetKeysAndValues(v9, v7, v8);
  if (Count >= 1)
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = v8;
    do
    {
      if (*v7 && *v12)
      {
        v13 = CFGetTypeID(*v12);
        if (v13 == CFDictionaryGetTypeID())
        {
          v14 = CFStringCreateWithFormat(v11, 0, @"%@/%@", a2, *v7);
          XCFPrintDictionary(a1, v14, *v12);
        }

        else
        {
          v15 = CFGetTypeID(*v12);
          if (v15 == CFArrayGetTypeID())
          {
            v14 = CFStringCreateWithFormat(v11, 0, @"%@/%@", a2, *v7);
            XCFPrintArray(a1, v14, *v12);
          }

          else
          {
            v16 = CFGetTypeID(*v12);
            if (v16 == CFErrorGetTypeID())
            {
              v14 = CFStringCreateWithFormat(v11, 0, @"%@/%@", a2, *v7);
              XCFPrintError(a1, v14, *v12);
            }

            else
            {
              v17 = CFGetTypeID(*v12);
              if (v17 != CFDataGetTypeID() || !CFEqual(@"kMMCSBoundaryKey", *v7) && !CFEqual(@"kMMCSReferenceObject", *v7))
              {
                if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
                {
                  v19 = *v7;
                  v20 = *v12;
                  *buf = 138543874;
                  v22 = a2;
                  v23 = 2114;
                  v24 = v19;
                  v25 = 2114;
                  v26 = v20;
                  _os_log_impl(&dword_2577D8000, a1, OS_LOG_TYPE_INFO, "%{public}@ %{public}@:%{public}@", buf, 0x20u);
                }

                goto LABEL_13;
              }

              v14 = mmcs_key_description_create_with_cfdata(*v12, 0);
              if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
              {
                v18 = *v7;
                *buf = 138543874;
                v22 = a2;
                v23 = 2114;
                v24 = v18;
                v25 = 2114;
                v26 = v14;
                _os_log_impl(&dword_2577D8000, a1, OS_LOG_TYPE_INFO, "%{public}@ %{public}@:%{public}@", buf, 0x20u);
              }
            }
          }
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

LABEL_13:
      ++v12;
      ++v7;
      --Count;
    }

    while (Count);
  }

  free(v10);
  free(v8);
}

void XCFPrintError(NSObject *a1, const __CFString *a2, CFErrorRef err)
{
  v41 = *MEMORY[0x277D85DE8];
  Domain = CFErrorGetDomain(err);
  Code = CFErrorGetCode(err);
  if (Domain)
  {
    if (CFEqual(@"com.apple.mmcs", Domain))
    {
      v8 = 16 * (Code != 4);
    }

    else
    {
      v9 = CFEqual(*MEMORY[0x277CBACE8], Domain);
      if (Code == -999 || v9 == 0)
      {
        v8 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_ERROR;
      }
    }
  }

  else
  {
    v8 = OS_LOG_TYPE_DEFAULT;
  }

  if (os_log_type_enabled(a1, v8))
  {
    *buf = 138543874;
    v36 = a2;
    v37 = 2114;
    v38 = Domain;
    v39 = 2048;
    v40 = Code;
    _os_log_impl(&dword_2577D8000, a1, v8, "%{public}@ %{public}@/%ld", buf, 0x20u);
  }

  v11 = CFErrorCopyUserInfo(err);
  if (v11)
  {
    v12 = v11;
    v13 = *MEMORY[0x277CBECE8];
    v14 = CFErrorGetDomain(err);
    v15 = CFErrorGetCode(err);
    v16 = CFStringCreateWithFormat(v13, 0, @"%@, %@/%ld", a2, v14, v15);
    if (CFDictionaryContainsKey(v12, *MEMORY[0x277CBEE30]))
    {
      v17 = CFDictionaryContainsKey(v12, *MEMORY[0x277CBEE58]) != 0;
    }

    else
    {
      v17 = 0;
    }

    if (CFDictionaryContainsKey(v12, @"NSErrorFailingURLStringKey"))
    {
      v18 = CFDictionaryContainsKey(v12, @"NSErrorFailingURLKey") != 0;
    }

    else
    {
      v18 = 0;
    }

    if (CFDictionaryContainsKey(v12, @"_kCFStreamErrorDomainKey"))
    {
      v19 = CFDictionaryContainsKey(v12, @"_kCFStreamErrorCodeKey") != 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v17 && !v18 && !v19 || (MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, v12)) == 0)
    {
      v21 = v12;
LABEL_53:
      XCFPrintDictionary(a1, v16, v21);
      if (v16)
      {
        CFRelease(v16);
      }

      CFRelease(v21);
      return;
    }

    v21 = MutableCopy;
    if (v17)
    {
      CFDictionaryRemoveValue(MutableCopy, *MEMORY[0x277CBEE58]);
      if (!v18)
      {
LABEL_28:
        if (!v19)
        {
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    else if (!v18)
    {
      goto LABEL_28;
    }

    CFDictionaryRemoveValue(v21, @"NSErrorFailingURLStringKey");
    if (!v19)
    {
LABEL_52:
      CFRelease(v12);
      goto LABEL_53;
    }

LABEL_33:
    Value = CFDictionaryGetValue(v21, @"_kCFStreamErrorDomainKey");
    v23 = CFDictionaryGetValue(v21, @"_kCFStreamErrorCodeKey");
    if (!Value)
    {
      goto LABEL_52;
    }

    v24 = v23;
    if (!v23)
    {
      goto LABEL_52;
    }

    v25 = CFGetTypeID(Value);
    if (v25 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(Value, kCFNumberSInt32Type, buf);
      v26 = mmcs_cfnetwork_cfstream_error_domain_copy_description(*buf);
      v27 = strlen(v26);
      Value = CFStringCreateWithBytes(v13, v26, v27, 0x8000100u, 0);
      if (v26)
      {
        free(v26);
      }

      v28 = CFGetTypeID(v24);
      if (v28 != CFNumberGetTypeID())
      {
        goto LABEL_42;
      }

      valuePtr = 0;
      CFNumberGetValue(v24, kCFNumberSInt32Type, &valuePtr);
      if (*MEMORY[0x277CBAD30] == *buf)
      {
        v29 = mmcs_cfnetwork_cfstream_http_error_copy_description(valuePtr);
      }

      else
      {
        if (*buf != 1)
        {
          goto LABEL_42;
        }

        v31 = strerror(valuePtr);
        v29 = strdup(v31);
      }

      v32 = v29;
      if (v29)
      {
        v33 = strlen(v29);
        v24 = CFStringCreateWithBytes(v13, v32, v33, 0x8000100u, 0);
        free(v32);
        goto LABEL_43;
      }
    }

    else
    {
      CFRetain(Value);
    }

LABEL_42:
    CFRetain(v24);
LABEL_43:
    if (mmcs_logging_logger_default_once != -1)
    {
      XCFPrintError_cold_1();
    }

    v30 = mmcs_logging_logger_default_logger;
    if (os_log_type_enabled(mmcs_logging_logger_default_logger, v8))
    {
      *buf = 138543874;
      v36 = v16;
      v37 = 2114;
      v38 = Value;
      v39 = 2114;
      v40 = v24;
      _os_log_impl(&dword_2577D8000, v30, v8, "%{public}@ CFStreamUnderlyingError %{public}@/%{public}@", buf, 0x20u);
    }

    if (Value)
    {
      CFRelease(Value);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    CFDictionaryRemoveValue(v21, @"_kCFStreamErrorDomainKey");
    CFDictionaryRemoveValue(v21, @"_kCFStreamErrorCodeKey");
    goto LABEL_52;
  }
}

void XCFPrint(os_log_t oslog, const __CFString *a2, void *cf)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!cf)
  {
    goto LABEL_18;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {

    XCFPrintDictionary(oslog, a2, cf);
    return;
  }

  v7 = CFGetTypeID(cf);
  if (v7 == CFArrayGetTypeID())
  {

    XCFPrintArray(oslog, a2, cf);
    return;
  }

  v8 = CFGetTypeID(cf);
  if (v8 == CFErrorGetTypeID())
  {

    XCFPrintError(oslog, a2, cf);
  }

  else
  {
LABEL_18:
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v9 = 138543618;
      v10 = a2;
      v11 = 2114;
      v12 = cf;
      _os_log_impl(&dword_2577D8000, oslog, OS_LOG_TYPE_INFO, "%{public}@ %{public}@", &v9, 0x16u);
    }
  }
}

uint64_t mmcs_container_create(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = C3TypeRegister(&mmcs_containerGetTypeID_typeID, &kmmcs_containerContextClass);
  result = C3TypeCreateInstance_(0, v6, a3 + 96);
  if (result)
  {
    v8 = result;
    *(result + 64) = a2;
    *(result + 88) = result + 96;
    if (mmcs_transaction_create((result + 16), result))
    {
      *(v8 + 56) = 0;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      result = 1;
      *(v8 + 68) = 1;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *a1 = v8;
    }

    else
    {
      C3BaseRelease(v8);
      return 0;
    }
  }

  return result;
}

CFTypeRef mmcs_container_set_http_clock_skew_metrics(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      C3BaseRelease(result);
    }

    *(a1 + 72) = cf;

    return C3BaseRetain(cf);
  }

  return result;
}

void mmcs_container_invalidate_transactions(uint64_t a1)
{
  mmcs_transaction_invalidate(*(a1 + 16));
  v2 = *(a1 + 24);

  mmcs_transaction_invalidate(v2);
}

void *mmcs_container_set_error(void *result, CFTypeRef cf)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = result[5];
  if (v2 != cf)
  {
    v4 = result;
    if (v2)
    {
      v5 = mmcs_logging_logger_default(result, cf);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping error for container");
        v8 = mmcs_logging_logger_default(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543362;
          v11 = v6;
          _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      v9 = v4[5];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v4[5] = cf;
    return CFRetain(cf);
  }

  return result;
}

void *mmcs_container_set_complete_error(void *result, CFTypeRef cf)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = result[7];
  if (v2 != cf)
  {
    v4 = result;
    if (v2)
    {
      v5 = mmcs_logging_logger_default(result, cf);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stomping complete error for container");
        v8 = mmcs_logging_logger_default(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = 138543362;
          v11 = v6;
          _os_log_impl(&dword_2577D8000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v10, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }

      v9 = v4[7];
      if (v9)
      {
        CFRelease(v9);
      }
    }

    v4[7] = cf;
    return CFRetain(cf);
  }

  return result;
}

void *mmcs_container_set_complete_error_if_absent(void *result, CFTypeRef cf)
{
  if (!result[7])
  {
    return mmcs_container_set_complete_error(result, cf);
  }

  return result;
}

void mmcs_container_clear_complete_error(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 56) = 0;
}

uint64_t mmcs_container_get_primary_error(uint64_t a1)
{
  result = *(a1 + 40);
  if (!result)
  {
    return *(a1 + 56);
  }

  return result;
}

void mmcs_container_reset_error_for_retry(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  Mutable = *(a1 + 48);
  if (Mutable)
  {
    goto LABEL_5;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(a1 + 48) = Mutable;
  if (Mutable)
  {
    v1 = *(a1 + 40);
LABEL_5:
    CFArrayAppendValue(Mutable, v1);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = 0;
}

uint64_t mmcs_container_remember_error(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = _containerCallbacks[11 * v4 + 4](a1);
  }

  else
  {
    v5 = 0;
  }

  server_version = mmcs_request_get_server_version(v5);
  result = mmcs_server_version_compare(server_version, v7, 3, 9);
  if (result != -1)
  {
    v9 = _containerCallbacks[11 * *(a1 + 64) + 3];

    return v9(a1, a2);
  }

  return result;
}

uint64_t mmcs_container_mmcs_request(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return (_containerCallbacks[11 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

BOOL mmcs_container_schedule_request_callback(uint64_t is_container_resumable_limp_mode, _BYTE *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *(is_container_resumable_limp_mode + 48);
  if (v2 >= 5)
  {
    mmcs_container_schedule_request_callback_cold_1();
  }

  v3 = is_container_resumable_limp_mode;
  if (v2 == 2)
  {
    v5 = *(is_container_resumable_limp_mode + 64);
    if (*(v5 + 64) == 1)
    {
      is_container_resumable_limp_mode = mmcs_request_is_container_resumable_limp_mode(***(v5 + 88));
      if (is_container_resumable_limp_mode)
      {
        done = mmcs_put_state_containers_done_count(**(v5 + 88));
        is_container_resumable_limp_mode = mmcs_put_state_containers_failed_count(**(v5 + 88));
        if (done && is_container_resumable_limp_mode < done)
        {
          v24 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Simulate a container failure after making some resumable progress.", v7, v8, v9, v10, v11);
          mmcs_container_set_error(v5, v24);
          *(v5 + 68) = 4;
          if (v24)
          {
            CFRelease(v24);
          }

          *(v3 + 48) = 4;
          *a2 = 0;
          return 1;
        }
      }
    }

    if ((*(v5 + 64) - 1) >= 3)
    {
      v13 = mmcs_logging_logger_default(is_container_resumable_limp_mode, a2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"impending doom: bad container->containerClass is %d", *(v5 + 64));
        v16 = mmcs_logging_logger_default(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v14;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    v17 = (_containerCallbacks[11 * *(v5 + 64) + 1])(v5, v3);
    v18 = v17;
    if (v17)
    {
      *(v3 + 48) = 3;
      if (!a2)
      {
        return 1;
      }
    }

    else
    {
      *(v3 + 48) = 4;
      (_containerCallbacks[11 * *(v5 + 64) + 2])(v5, v3);
      if (!a2)
      {
        return 1;
      }
    }

    *a2 = v18;
    return 1;
  }

  v19 = mmcs_logging_logger_default(is_container_resumable_limp_mode, a2);
  result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v21 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"expected request state kMMCSRequestStateEnqueued (%d); got %d", 2, *(v3 + 48));
    v23 = mmcs_logging_logger_default(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v21;
      _os_log_impl(&dword_2577D8000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    return 0;
  }

  return result;
}

void mmcs_container_cancel(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 68) = 4;
    v4 = *(a1 + 24);
    if (v4)
    {
      (_containerCallbacks[11 * *(a1 + 64) + 5])(a1, v4, a2);
    }

    v5 = _containerCallbacks[11 * *(a1 + 64) + 5];
    v6 = *(a1 + 16);

    v5(a1, v6, a2);
  }

  else
  {
    v7 = mmcs_logging_logger_default(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"attempting to cancel null container");
      v10 = mmcs_logging_logger_default(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543362;
        v12 = v8;
        _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v11, 0xCu);
      }

      if (v8)
      {
        CFRelease(v8);
      }
    }
  }
}

void _mmcs_container_create_proxy_transaction_impl(uint64_t a1, const __CFURL *a2, const __CFBoolean *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (!v4)
  {
    return;
  }

  Count = CFDictionaryGetCount(v4);
  if (!Count)
  {
    return;
  }

  v9 = *(a1 + 64);
  if (!v9 || (Count = _containerCallbacks[11 * v9 + 4](a1)) == 0)
  {
    v20 = mmcs_logging_logger_default(Count, v8);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v19 = 0;
      goto LABEL_17;
    }

    *v47 = 0;
    v21 = "Error invoking get_request for proxy transaction.";
LABEL_15:
    _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_ERROR, v21, v47, 2u);
    goto LABEL_16;
  }

  v10 = Count;
  v11 = mmcs_transaction_create((a1 + 24), a1);
  if (!v11)
  {
    v20 = mmcs_logging_logger_default(v11, v12);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v47 = 0;
    v21 = "Error invoking mmcs_transaction_create for proxy transaction.";
    goto LABEL_15;
  }

  proxy_down = mmcs_request_get_proxy_down(v10);
  if (proxy_down)
  {
    v15 = mmcs_logging_logger_default(proxy_down, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_test or cupidity said to use proxy url https://localhost:5555 for gets");
      v18 = mmcs_logging_logger_default(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v47 = 138543362;
        *&v47[4] = v16;
        _os_log_impl(&dword_2577D8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@", v47, 0xCu);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }

    v19 = XCFURLCreateWithCString("https://localhost:5555");
    a2 = v19;
  }

  else
  {
    v19 = 0;
  }

  v26 = mmcs_http_request_copy((*(a1 + 24) + 24), *(*(a1 + 16) + 24));
  if (!v26)
  {
    v40 = mmcs_logging_logger_default(v26, v27);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      v41 = "Error invoking mmcs_http_request_copy for proxy transaction.";
LABEL_46:
      _os_log_impl(&dword_2577D8000, v40, OS_LOG_TYPE_ERROR, v41, v47, 2u);
    }

LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v28 = *MEMORY[0x277CBECE8];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a1 + 32));
  if (!MutableCopy)
  {
    v40 = mmcs_logging_logger_default(0, v30);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *v47 = 0;
      v41 = "Error generating extraHeader dictionary for proxy transaction.";
      goto LABEL_46;
    }

    goto LABEL_17;
  }

  v22 = MutableCopy;
  v31 = mmcs_request_copy_persistent_identifier(v10);
  if (!v31)
  {
    v42 = mmcs_logging_logger_default(0, v32);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *v47 = 0;
    v43 = "Error invoking mmcs_request_copy_persistent_identifier for proxy transaction.";
    goto LABEL_60;
  }

  v33 = v31;
  CFDictionaryAddValue(v22, @"x-apple-persistent-identifier", v31);
  CFRelease(v33);
  proxy_copy = mmcs_http_request_options_create_proxy_copy(*(*(*(a1 + 24) + 24) + 24));
  if (!proxy_copy)
  {
    v42 = mmcs_logging_logger_default(0, v35);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *v47 = 0;
    v43 = "Error invoking mmcs_http_request_options_create_proxy_copy for proxy transaction.";
    goto LABEL_60;
  }

  v36 = proxy_copy;
  mmcs_http_request_set_options(*(*(a1 + 24) + 24), proxy_copy);
  CFRelease(v36);
  if (a3 && CFBooleanGetValue(a3))
  {
    if (*(*(*(a1 + 24) + 24) + 24))
    {
      v37 = @"low";
      if (qos_class_self() - 1 >= 9)
      {
        *v47 = 5;
        v38 = CFNumberCreate(v28, kCFNumberSInt64Type, v47);
        v39 = *(*(*(*(a1 + 24) + 24) + 24) + 56);
        if (v39)
        {
          if (!CFEqual(v39, v38))
          {
            v37 = @"default";
          }
        }

        else
        {
          v37 = @"default";
        }

        if (v38)
        {
          CFRelease(v38);
        }
      }
    }

    else
    {
      v37 = @"default";
    }

    CFDictionaryAddValue(v22, @"x-apple-cache-urgency", v37);
  }

  v44 = mmcs_epilogue_buffer_length(*(*(a1 + 24) + 24));
  v45 = XCFHTTPMessageCopyWithNewURLAndHeaders(v44, a2, v22);
  if (!v45)
  {
    v42 = mmcs_logging_logger_default(0, v46);
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *v47 = 0;
    v43 = "Error creating modifiedRequest for proxy transaction.";
LABEL_60:
    _os_log_impl(&dword_2577D8000, v42, OS_LOG_TYPE_ERROR, v43, v47, 2u);
LABEL_18:
    v23 = *(a1 + 24);
    if (v23)
    {
      C3BaseRelease(v23);
    }

    v24 = 0;
    v25 = 0;
    *(a1 + 24) = 0;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v24 = v45;
  mmcs_http_request_set_msg(*(*(a1 + 24) + 24), v45);
LABEL_21:
  CFRelease(v22);
  v25 = v24;
LABEL_22:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

BOOL mmcs_container_check_expired(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(v4 + 40);
    if (v5 == 0.0)
    {
      return 0;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v13 = Current;
    if (gMMCS_DebugLevel >= 4)
    {
      String = XCFAbsoluteTimeDateFormatterCreateString(Current);
      v15 = XCFAbsoluteTimeDateFormatterCreateString(v5);
      v17 = mmcs_logging_logger_default(v15, v16);
      v10 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v10)
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"current time: %@, url expiry time: %@", String, v15);
        v20 = mmcs_logging_logger_default(v18, v19);
        v10 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
        if (v10)
        {
          *buf = 138543362;
          v48 = v18;
          _os_log_impl(&dword_2577D8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v18)
        {
          CFRelease(v18);
        }
      }

      if (String)
      {
        CFRelease(String);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    if (v5 > v13)
    {
      return 0;
    }

    if (gMMCS_DebugLevel >= 4)
    {
      v27 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"skipping %s transaction %p of container <%p %s> because url expired", a3, a2, a1, a4);
        v30 = mmcs_logging_logger_default(v28, v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v48 = v28;
          _os_log_impl(&dword_2577D8000, v30, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    if (!mmcs_transaction_is_proxy(a2))
    {
      v31 = a1[9];
      if (v31)
      {
        v32 = *(v31 + 16);
        v33 = v32 - *(v31 + 24);
        v34 = v5 - v32;
        v35 = *MEMORY[0x277CBECE8];
        v36 = mmcs_time_convert_cfabsolutetime_to_server_time(v32);
        v37 = mmcs_time_convert_cfabsolutetime_to_server_time(*(v31 + 24));
        v38 = CFStringCreateWithFormat(v35, 0, @" authorizedWindowSeconds=%.3lf estimatedClockSkewSecondsAtAuthorize=%.3lf localTimeAtAuthorizeResponse=%llu serverTimeSentInAuthorizeResponse=%llu", *&v34, *&v33, v36, v37);
      }

      else
      {
        v38 = 0;
      }

      v39 = mmcs_time_convert_cfabsolutetime_to_server_time(v13);
      v40 = mmcs_time_convert_cfabsolutetime_to_server_time(v5);
      v46 = &stru_2868BF3F0;
      if (v38)
      {
        v46 = v38;
      }

      retry_requested = mmcs_cferror_create_retry_requested(0, 0, @"%s container's url expired(secondsExpiredAtLocalExpiryTest=%.3lf localTimeAtExpiryTest=%llu urlExpiryTime=%llu%@)", v41, v42, v43, v44, v45, a3, v13 - v5, v39, v40, v46);
      if (v38)
      {
        CFRelease(v38);
      }

      if (retry_requested)
      {
        mmcs_container_set_error(a1, retry_requested);
        v26 = 1;
LABEL_19:
        CFRelease(retry_requested);
        return v26;
      }
    }

    return 1;
  }

  else
  {
    v22 = mmcs_logging_logger_default(a1, a2);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      retry_requested = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null request");
      v25 = mmcs_logging_logger_default(retry_requested, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v48 = retry_requested;
        _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v26 = 0;
      result = 0;
      if (retry_requested)
      {
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t mmcs_container_copy_simple_description(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return (_containerCallbacks[11 * v1 + 8])();
  }

  else
  {
    return 0;
  }
}

int64x2_t mmcs_container_append_description(int64x2_t *a1)
{
  v2 = a1->i64[0];
  v3 = a1[2].i64[1];
  if (v3 >= 11 && *(*(v2 + 16) + 48) == 2 && ((v4 = *(v2 + 24)) == 0 || *(v4 + 48) == 2))
  {
    a1[2].i64[1] = v3 + 1;
  }

  else if ((*(v2 + 68) & 0xFFFFFFFE) == 2)
  {
    v5 = a1[1];
    v11 = *a1;
    v12 = v5;
    v13 = a1[2];
    v12.i64[1] = v5.i64[1] + 1;
    mmcs_op_requestor_context_indent(a1);
    v6 = *(v2 + 64);
    if (v6)
    {
      v7 = _containerCallbacks[11 * v6 + 8](v2);
      CFStringAppendFormat(a1[1].i64[0], 0, @"<container %p> %@\n", v2, v7, v11, *&v12, *&v13);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      CFStringAppendFormat(a1[1].i64[0], 0, @"<container %p> %@\n", v2, 0, v11, *&v12, *&v13);
    }

    *&v11 = *(v2 + 16);
    mmcs_transaction_append_description(&v11, v8);
    if (*(v2 + 24))
    {
      *&v11 = *(v2 + 24);
      mmcs_transaction_append_description(&v11, v9);
    }

    result = vaddq_s64(a1[2], v13);
    a1[2] = result;
  }

  return result;
}

uint64_t mmcs_container_request_queue(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = (_containerCallbacks[11 * v1 + 4])();
  }

  else
  {
    v2 = 0;
  }

  return *(mmcs_chunk_instance_offset(v2) + 48);
}

uint64_t mmcs_container_xmitcallback(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    mmcs_container_xmitcallback_cold_3();
  }

  if (!a3)
  {
    mmcs_container_xmitcallback_cold_2();
  }

  if (a3[2] != a1)
  {
    mmcs_container_xmitcallback_cold_1();
  }

  v5 = *(a3[8] + 64);
  if (v5)
  {
    v6 = (_containerCallbacks[11 * v5 + 4])();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(mmcs_chunk_instance_offset(v6) + 48);
  Current = CFAbsoluteTimeGetCurrent();

  return mmcs_request_queue_request_did_transmit(v7, a3, a2, Current);
}

uint64_t mmcs_container_process_data(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 2)
  {
    return (_containerCallbacks[11 * v1 + 9])();
  }

  else
  {
    return 0;
  }
}

uint64_t mmcs_container_invalidate(uint64_t result)
{
  v1 = *(result + 64);
  if (v1 >= 2)
  {
    return (_containerCallbacks[11 * v1 + 10])();
  }

  return result;
}

void _mmcs_containerCFFinalize(uint64_t a1)
{
  v2 = _containerCallbacks[11 * *(a1 + 64)];
  if (v2)
  {
    v2(a1);
  }

  mmcs_transaction_invalidate(*(a1 + 16));
  mmcs_transaction_invalidate(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    C3BaseRelease(v3);
  }

  *(a1 + 16) = 0;
  v4 = *(a1 + 72);
  if (v4)
  {
    C3BaseRelease(v4);
  }

  *(a1 + 72) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    C3BaseRelease(v5);
  }

  *(a1 + 24) = 0;
  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 32) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  *(a1 + 40) = 0;
  v8 = *(a1 + 48);
  if (v8)
  {
    CFRelease(v8);
  }

  *(a1 + 48) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a1 + 56) = 0;
  v10 = *(a1 + 80);
  if (v10)
  {
    os_release(v10);
  }

  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
}

uint64_t mmcs_engine_get_item_reader_writer_for_item_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, CFTypeRef *a6)
{
  ItemReaderWriterForItem = MMCSEngineClientContextGetItemReaderWriterForItem(*(a1 + 152), *(*(a1 + 152) + 8), a3, a4, 0, a5, a6);
  v13 = ItemReaderWriterForItem;
  if (a6 && !ItemReaderWriterForItem && !*a6)
  {
    *a6 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 39, @"Creating the item readerWriter failed for an unspecified reason", v8, v9, v10, v11, v12);
  }

  return v13;
}

uint64_t MMCSEngineCreate(const void *a1, const void *a2, const __CFURL *a3, const void *a4, const __CFString *a5, const __CFDictionary *a6, unint64_t *a7)
{
  v18 = 0;
  v12 = mmcs_perform_run_loop_target_create(&v18, a1, a2);
  if (v12)
  {
    Internal = _MMCSEngineCreateInternal(v18, a3, a4, a5, a6, a7);
    if (v18)
    {
      C3BaseRelease(v18);
    }
  }

  else
  {
    v15 = mmcs_logging_logger_default(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_ERROR, "Couldn't allocate mmcs_perform_target", v17, 2u);
    }

    return 0;
  }

  return Internal;
}

uint64_t mmcs_engine_force_commit(void *a1)
{
  result = a1[2];
  if (result)
  {
    result = CKCommitDatabaseTransactions();
    a1[12] = 0;
    a1[13] = 0;
    ++a1[14];
  }

  return result;
}

void *mmcs_engine_commit_if_over_threshold(void *result)
{
  v1 = result + 12;
  if ((result[13] * 1.5) + result[12] >= 0xF4240)
  {
    v2 = result;
    result = result[2];
    if (result)
    {
      result = CKCommitDatabaseTransactions();
      *v1 = 0;
      v1[1] = 0;
      ++v2[14];
    }
  }

  return result;
}

void *mmcs_engine_commit_if_anything_outstanding(void *result)
{
  v1 = result;
  v2 = result + 12;
  if (result[12] || result[13])
  {
    result = result[2];
    if (result)
    {
      result = CKCommitDatabaseTransactions();
      *v2 = 0;
      v2[1] = 0;
      ++v1[14];
    }
  }

  return result;
}

void mmcs_engine_poll_for_preferences_update(uint64_t a1)
{
  if (!*(a1 + 169))
  {
    number[3] = v1;
    number[4] = v2;
    v5 = 0;
    number[0] = 0;
    mmcs_report_copy_vendor_request_queue_config(number, &v5);
    if (number[0])
    {
      valuePtr = 0;
      if (CFNumberGetValue(number[0], kCFNumberCFIndexType, &valuePtr))
      {
        mmcs_request_queue_set_server_upper_bound_requests_inflight(*(a1 + 48), valuePtr, 1);
      }

      if (number[0])
      {
        CFRelease(number[0]);
      }

      number[0] = 0;
    }

    if (v5)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberCFIndexType, &valuePtr))
      {
        mmcs_request_queue_set_server_upper_bound_requests_inflight(*(a1 + 48), valuePtr, 0);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

uint64_t mmcs_engine_has_request_using_itemid(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = 0;
  CFSetApplyFunction(*(a1 + 160), mmcs_request_is_using_itemid, &v3);
  return v4;
}

void mmcs_engine_append_requests_description(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && !*(v1 + 120) && CFSetGetCount(*(v1 + 160)) >= 1)
  {
    v3 = XCFSetMutableCopyValues(*(v1 + 160), &kC3BaseArrayCallBacks);
    v5.length = CFArrayGetCount(v3);
    v5.location = 0;
    CFArraySortValues(v3, v5, _request_index_comparator, 0);
    v6.length = CFArrayGetCount(v3);
    v6.location = 0;
    CFArrayApplyFunction(v3, v6, _request_description_applier, a1);

    CFRelease(v3);
  }
}

uint64_t _request_index_comparator(uint64_t a1, uint64_t a2)
{
  v3 = mmcs_request_index(a1);
  v4 = mmcs_request_index(a2);
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v3 > v4;
  }
}

uint64_t _request_description_applier(unint64_t a1, uint64_t a2)
{
  v3[1] = *(a2 + 16);
  v3[0] = a1;
  v4 = 0;
  v5 = 0;
  return mmcs_request_append_description(v3);
}

void mmcs_engine_add_request(uint64_t a1, const void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  is_chunking_library_corruption_mode = mmcs_request_is_chunking_library_corruption_mode(a2);
  if (is_chunking_library_corruption_mode)
  {
    if (CKChunkStoreTestFlags())
    {
      is_chunking_library_corruption_mode = mmcs_request_reset_chunking_library_corruption_mode(a2);
    }

    else
    {
      CKChunkStoreTestFlags();
      is_chunking_library_corruption_mode = CKChunkStoreSetTestFlags();
    }
  }

  v6 = mmcs_logging_logger_default(is_chunking_library_corruption_mode, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = mmcs_request_copy_description(a2);
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = 134218242;
      v16 = a1;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_2577D8000, v9, OS_LOG_TYPE_INFO, "Engine %p is adding request %{public}@", &v15, 0x16u);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (!CFSetGetCount(*(a1 + 160)))
  {
    v11 = mmcs_logging_logger_default(0, v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v12)
    {
      v14 = mmcs_logging_logger_default(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_2577D8000, v14, OS_LOG_TYPE_INFO, "Engine Status: was idle, going active", &v15, 2u);
      }
    }
  }

  CFSetSetValue(*(a1 + 160), a2);
}

BOOL mmcs_engine_remove_request(uint64_t a1, const void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  Value = CFSetGetValue(*(a1 + 160), a2);
  if (Value != a2)
  {
    v6 = mmcs_logging_logger_default(Value, v5);
    result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v8 = mmcs_request_copy_description(a2);
    v10 = mmcs_logging_logger_default(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218242;
      v21 = a1;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&dword_2577D8000, v10, OS_LOG_TYPE_DEFAULT, "Engine %p didn't recognize request %{public}@", &v20, 0x16u);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return 0;
  }

  v11 = Value;
  Count = CFSetGetCount(*(a1 + 160));
  if (Count == 1)
  {
    v14 = mmcs_logging_logger_default(1, v13);
    Count = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
    if (Count)
    {
      v15 = mmcs_logging_logger_default(Count, v13);
      Count = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (Count)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_2577D8000, v15, OS_LOG_TYPE_INFO, "Engine Status: was active, going idle", &v20, 2u);
      }
    }
  }

  v16 = mmcs_logging_logger_default(Count, v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = mmcs_request_copy_description(a2);
    v19 = mmcs_logging_logger_default(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 134218242;
      v21 = a1;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_2577D8000, v19, OS_LOG_TYPE_INFO, "Engine %p is removing request %{public}@", &v20, 0x16u);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  if (mmcs_request_is_chunking_library_corruption_mode(v11))
  {
    CKChunkStoreTestFlags();
    CKChunkStoreSetTestFlags();
  }

  XCFSetSafelyRemoveValue(*(a1 + 160), a2);
  return 1;
}

void mmcs_engine_cache_ranged_items(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 208);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    *(a1 + 208) = Mutable;
  }

  CFDictionaryAddValue(Mutable, key, value);
}

void mmcs_engine_copy_cached_ranged_items(uint64_t a1, const void *a2, const void *a3)
{
  v4 = *(a1 + 208);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      v7 = Value;
      v8 = *(a1 + 208);

      CFDictionaryAddValue(v8, a3, v7);
    }
  }
}

const __CFDictionary *mmcs_engine_get_cached_ranged_items(uint64_t a1, const void *a2)
{
  result = *(a1 + 208);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

void mmcs_engine_clear_cached_ranged_items(uint64_t a1, const void *a2)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    CFDictionaryRemoveValue(v3, a2);
    if (!CFDictionaryGetCount(*(a1 + 208)))
    {
      CFRelease(*(a1 + 208));
      *(a1 + 208) = 0;
    }
  }
}

void MMCSEngineRelease(CFTypeRef cf)
{
  if (cf)
  {
    C3BaseRelease(cf);
  }
}

void _log_in_use(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (mmcs_request_has_items_not_done(a1))
  {
    v2 = mmcs_request_copy_description(a1);
    v4 = mmcs_logging_logger_default(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Closing mmcs with outstanding request %@", v2);
      v7 = mmcs_logging_logger_default(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_2577D8000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }
}

void MMCSEngineCancelRequests(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (!*(a1 + 120))
    {
      _mmcs_engine_cancel_requests(a1, a2);
    }
  }
}

const __CFSet *MMCSEngineIsActive(const __CFSet *result)
{
  if (result)
  {
    result = *(result + 20);
    if (result)
    {
      return (CFSetGetCount(result) > 0);
    }
  }

  return result;
}

void _mmcs_init_once_for_library()
{
  v41 = *MEMORY[0x277D85DE8];
  _isMMCSEngineInitialized = 1;
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CBEE30], @"Memory could not be allocated for the intended error");
  mmcs_no_memory_error_init(Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  CFPreferencesAppSynchronize(@"com.apple.mmcs");
  v2 = CFPreferencesCopyAppValue(@"DebugLevel", @"com.apple.mmcs");
  if (v2)
  {
    v3 = v2;
    if (IsValidCFNumber(v2))
    {
      CFNumberGetValue(v3, kCFNumberCFIndexType, &gMMCS_DebugLevel);
    }

    else if (IsValidCFString(v3))
    {
      gMMCS_DebugLevel = CFStringGetIntValue(v3);
    }

    CFRelease(v3);
  }

  v4 = CFURLCreateWithFileSystemPath(v0, @"/Library/Managed Preferences/mobile/com.apple.mmcs.plist", kCFURLPOSIXPathStyle, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFReadStreamCreateWithFile(v0, v4);
    if (!v6)
    {
      v9 = v5;
LABEL_21:
      CFRelease(v9);
      goto LABEL_22;
    }

    v7 = v6;
    if (CFReadStreamOpen(v6))
    {
      error[0] = 0;
      format[0] = 0;
      v8 = CFPropertyListCreateWithStream(v0, v7, 0, 0, format, error);
      CFReadStreamClose(v7);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v7);
    CFRelease(v5);
    if (v8)
    {
      if (IsValidCFDictionary(v8))
      {
        Value = CFDictionaryGetValue(v8, @"DebugLevel");
        if (Value)
        {
          LODWORD(error[0]) = 0;
          if (IntFromCFObject(Value, error))
          {
            gMMCS_DebugLevel = SLODWORD(error[0]);
          }
        }
      }

      v9 = v8;
      goto LABEL_21;
    }
  }

LABEL_22:
  if (gMMCS_DebugLevel >= 5)
  {
    setenv("CS_LOG_VERBOSE", "1", 1);
    error[0] = 0;
    log_dir_path = getenv("MMCS_LOG_DIR");
    if (!log_dir_path)
    {
      log_dir_path = get_log_dir_path("");
    }

    asprintf(error, "%s/ubiquity-chunkstore.log", log_dir_path);
    if (error[0])
    {
      setenv("CS_LOG_PATH", error[0], 1);
      if (error[0])
      {
        free(error[0]);
      }
    }
  }

  v12 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  v13 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  v14 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  v16 = v14;
  format[0] = 0;
  *bytes = 0;
  if (v12 && v13 && v14)
  {
    v17 = 0;
    v18 = xmmword_25785F890;
    v19.i64[0] = 0x1010101010101010;
    v19.i64[1] = 0x1010101010101010;
    do
    {
      *&v12[v17] = v18;
      v17 += 16;
      v18 = vaddq_s8(v18, v19);
    }

    while (v17 != 0x8000);
    if (!CKChunkDigestArgumentsV1Create())
    {
      goto LABEL_74;
    }

    memcpy(v13, v12, 0x8000uLL);
    CKEncryptData();
    CKChunkDigestResultsChunkSignature();
    v20 = CKValidateSignature();
    if (v20)
    {
      memcpy(v16, v13, 0x8000uLL);
      CKDecryptData();
      v22 = memcmp(v12, v16, 0x8000uLL);
      if (!v22)
      {
        v32 = 0;
LABEL_49:
        if (format[0])
        {
          CFRelease(format[0]);
        }

        if (*bytes)
        {
          CFRelease(*bytes);
        }

        if (v12)
        {
          free(v12);
        }

        if (v13)
        {
          free(v13);
        }

        if (v16)
        {
          free(v16);
        }

        if (v32)
        {
LABEL_74:
          abort();
        }

        error[0] = 0;
        error[1] = 0;
        format[0] = 0;
        format[1] = 0;
        memset(bytes, 0, sizeof(bytes));
        *v39 = 0;
        v33 = CFDataCreate(v0, error, 16);
        v34 = CFDataCreate(v0, format, 16);
        v35 = CFDataCreate(v0, bytes, 16);
        v36 = v35;
        if (v33 && v34 && v35)
        {
          CKStreamKeyDerivation();
        }

        else if (!v33)
        {
LABEL_66:
          if (v34)
          {
            CFRelease(v34);
          }

          if (v36)
          {
            CFRelease(v36);
          }

          if (*v39)
          {
            CFRelease(*v39);
          }

          goto LABEL_74;
        }

        CFRelease(v33);
        goto LABEL_66;
      }

      v24 = mmcs_logging_logger_default(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = CFStringCreateWithFormat(v0, 0, @"encryption/decryption failed!");
        v27 = mmcs_logging_logger_default(v25, v26);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        LODWORD(error[0]) = 138543362;
        *(error + 4) = v25;
        goto LABEL_45;
      }
    }

    else
    {
      v30 = mmcs_logging_logger_default(v20, v21);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v25 = CFStringCreateWithFormat(v0, 0, @"CKValidateSignature failed!");
        v27 = mmcs_logging_logger_default(v25, v31);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_46;
        }

        LODWORD(error[0]) = 138543362;
        *(error + 4) = v25;
LABEL_45:
        _os_log_impl(&dword_2577D8000, v27, OS_LOG_TYPE_ERROR, "%{public}@", error, 0xCu);
LABEL_46:
        if (v25)
        {
          CFRelease(v25);
        }
      }
    }
  }

  else
  {
    v28 = mmcs_logging_logger_default(v14, v15);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v25 = CFStringCreateWithFormat(v0, 0, @"malloc");
      v27 = mmcs_logging_logger_default(v25, v29);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      LODWORD(error[0]) = 138543362;
      *(error + 4) = v25;
      goto LABEL_45;
    }
  }

  v32 = 1;
  goto LABEL_49;
}

void handle_response_downloadChunks(CFHTTPMessageRef *a1, CFHTTPMessageRef **a2, uint64_t a3)
{
  v4 = a1;
  v98 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    a1 = *a2;
    if (*a2)
    {
      CFRelease(a1);
    }

    *a2 = 0;
  }

  if (!v4)
  {
    handle_response_downloadChunks_cold_4();
  }

  if (!a3)
  {
    handle_response_downloadChunks_cold_3();
  }

  if (*(a3 + 16) != v4)
  {
    handle_response_downloadChunks_cold_1();
  }

  v6 = *(a3 + 64);
  if (!v6)
  {
    v18 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null container in get, transaction %p context %p", a3, v4);
    v21 = mmcs_logging_logger_default(v19, v20);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    LODWORD(state.opaque[0]) = 138543362;
    *(state.opaque + 4) = v19;
    goto LABEL_31;
  }

  v7 = *(v6 + 88);
  if (!v7)
  {
    v22 = mmcs_logging_logger_default(a1, a2);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null containerImpl in get, container %p context %p", v6, v4);
    v21 = mmcs_logging_logger_default(v19, v23);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    LODWORD(state.opaque[0]) = 138543362;
    *(state.opaque + 4) = v19;
    goto LABEL_31;
  }

  v8 = *v7;
  *(a3 + 48) = 4;
  if (v8)
  {
    mmcs_http_context_uuid_hash_code(v4);
    kdebug_trace();
    if (!mmcs_http_context_is_connection_reused(v4))
    {
      kdebug_trace();
    }

    v10 = *v8;
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    request_activity_marker = mmcs_request_get_request_activity_marker(v10, v9);
    os_activity_scope_enter(request_activity_marker, &state);
    cf = 0;
    C3BaseRetain(v10);
    v94 = 1;
    ++*(*(v10 + 38) + 24);
    if (*(v10 + 272))
    {
      if (!*(v10 + 72))
      {
        v12 = mmcs_http_context_copy_blocked_application_header_value(v4);
        if (v12)
        {
          error = mmcs_cferror_create_error(@"com.apple.mmcs", 51, v12);
          mmcs_http_context_set_error(v4, error);
        }
      }
    }

    v14 = *(*(v10 + 4) + 48);
    if (mmcs_transaction_is_proxy(a3) || mmcs_http_context_is_background(v4))
    {
      v15 = 0;
    }

    else
    {
      v15 = mmcs_http_context_get_error(v4);
    }

    is_connection_reused = mmcs_http_context_is_connection_reused(v4);
    Current = CFAbsoluteTimeGetCurrent();
    mmcs_request_queue_request_did_complete(v14, a3, v15, is_connection_reused, &v94, Current);
    if (*(*(v10 + 38) + 40))
    {
      goto LABEL_21;
    }

    if (*(v10 + 144))
    {
      has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(v10);
      v27 = has_outstanding_asynchronous_work;
      v29 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v28);
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
      if (v27)
      {
        if (v30)
        {
          v31 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Request is cancelled but has_outstanding_asynchronous_work  (Get request %p)", v10);
          v33 = mmcs_logging_logger_default(v31, v32);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v31;
            _os_log_impl(&dword_2577D8000, v33, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v31)
          {
            CFRelease(v31);
          }
        }

        goto LABEL_21;
      }

      if (v30)
      {
        v45 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Cancelled and downloads complete. All done! (Get request %p)", v10);
        v47 = mmcs_logging_logger_default(v45, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v45;
          _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v45)
        {
          CFRelease(v45);
        }
      }

      v48 = *(v10 + 19);
      goto LABEL_60;
    }

    v34 = mmcs_http_context_get_error(v4);
    if (!v34)
    {
      if (mmcs_get_container_is_body_complete(v6, &cf))
      {
        v50 = 0;
        v51 = 1;
        goto LABEL_88;
      }

      mmcs_container_set_error(v6, cf);
      if (cf)
      {
        CFRelease(cf);
      }

      v51 = 0;
      cf = 0;
LABEL_87:
      v50 = 1;
LABEL_88:
      if (mmcs_transaction_is_proxy(a3))
      {
        CFHTTPMessageCopyRequestURL(v4[42]);
        v56 = ACSUpdateCachingServerHealth();
        if (!v56)
        {
          v58 = mmcs_logging_logger_default(v56, v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            v60 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to update proxy cache server health with unknown error");
            v62 = mmcs_logging_logger_default(v60, v61);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v60;
              _os_log_impl(&dword_2577D8000, v62, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v60)
            {
              CFRelease(v60);
            }
          }
        }
      }

      if (v51)
      {
        goto LABEL_97;
      }

      v64 = *(v10 + 4);
      if (!*(v64 + 172))
      {
        goto LABEL_114;
      }

      if (!*(v64 + 170))
      {
        goto LABEL_114;
      }

      container_contains_only_chunk_reference_elements = mmcs_get_container_contains_only_chunk_reference_elements(v6);
      if (!container_contains_only_chunk_reference_elements)
      {
        goto LABEL_114;
      }

      if (*(v7 + 88))
      {
        v67 = 0;
        v68 = 0;
        v69 = 0;
        do
        {
          container_contains_only_chunk_reference_elements = mmcs_chunk_instance_get_length((*(v7 + 120) + v67));
          v69 += container_contains_only_chunk_reference_elements;
          ++v68;
          v67 += 104;
        }

        while (v68 < *(v7 + 88));
      }

      else
      {
        v69 = 0;
      }

      v70 = mmcs_logging_logger_default(container_contains_only_chunk_reference_elements, v66);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        v71 = " ";
        if (v69 > 0x7D000)
        {
          v71 = "not ";
        }

        v72 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%llu bytes of complete chunks downloaded already. Will %sretry this request", v69, v71);
        v74 = mmcs_logging_logger_default(v72, v73);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v72;
          _os_log_impl(&dword_2577D8000, v74, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v72)
        {
          CFRelease(v72);
        }
      }

      if (v69 > 0x7D000)
      {
LABEL_97:
        v63 = 0;
      }

      else
      {
LABEL_114:
        v75 = *(a3 + 32);
        if (v75 >= 1)
        {
          *(a3 + 32) = --v75;
        }

        v63 = v75 != 0;
      }

      if (v94 && (mmcs_transaction_is_proxy(a3) ? (v76 = 1) : (v76 = v63), (v50 & v76) == 1))
      {
        metrics = mmcs_http_context_get_metrics(v4);
        mmcs_metrics_http_info_set_final_try_in_request(metrics, 0);
        mmcs_get_container_retry(v6, a3);
      }

      else
      {
        v78 = mmcs_http_context_get_metrics(v4);
        mmcs_metrics_http_info_set_final_try_in_request(v78, 1);
        *(v6 + 68) = 4;
        reporting_level = mmcs_request_get_reporting_level(***(v6 + 88));
        method_completion_info = mmcs_get_complete_create_method_completion_info(v6, a3, reporting_level, 0);
        mmcs_transaction_add_method_completion_info(a3, method_completion_info);
        v81 = *(a3 + 16);
        if (v81)
        {
          mmcs_http_context_invalidate(v81);
          v82 = *(a3 + 16);
          if (v82)
          {
            C3BaseRelease(v82);
          }
        }

        *(a3 + 16) = 0;
        if (v50)
        {
          mmcs_get_state_fail_container(v8, v6);
        }
      }

      --*(*(v10 + 38) + 24);
      if (mmcs_get_req_has_outstanding_asynchronous_work(v10) || *(*(v10 + 38) + 24))
      {
        goto LABEL_21;
      }

      v83 = mmcs_get_container_contains_only_chunk_reference_elements(v6);
      if (v83)
      {
        v85 = mmcs_logging_logger_default(v83, v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v10;
          _os_log_impl(&dword_2577D8000, v85, OS_LOG_TYPE_INFO, "Chunk downloads complete. All done! (Get request %p)", buf, 0xCu);
        }

        v49 = v10;
        v48 = 0;
        goto LABEL_61;
      }

      container_contains_only_ford_elements = mmcs_get_container_contains_only_ford_elements(v6);
      if (!container_contains_only_ford_elements)
      {
        handle_response_downloadChunks_cold_2();
      }

      v88 = mmcs_logging_logger_default(container_contains_only_ford_elements, v87);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v10;
        _os_log_impl(&dword_2577D8000, v88, OS_LOG_TYPE_INFO, "FORD downloads complete. Download chunks! (Get request %p)", buf, 0xCu);
      }

      *buf = 0;
      if (send_request_downloadChunks(v10, buf) != -1)
      {
        goto LABEL_21;
      }

      v48 = *buf;
      if (!*buf)
      {
        v48 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to check for local state after downloading FORD.", v89, v90, v91, v92, v93);
        *buf = v48;
      }

LABEL_60:
      v49 = v10;
LABEL_61:
      mmcs_get_req_context_cleanup(v49, v48);
LABEL_21:
      C3BaseRelease(v10);
      os_activity_scope_leave(&state);
      return;
    }

    v35 = v34;
    host_error = mmcs_cferror_copy_transformed_cannot_find_host_error(v4);
    v37 = host_error;
    if (host_error)
    {
      v38 = host_error;
    }

    else
    {
      v38 = v35;
    }

    mmcs_container_set_error(v6, v38);
    Domain = CFErrorGetDomain(v38);
    Code = CFErrorGetCode(v38);
    if (!CFEqual(@"com.apple.mmcs", Domain))
    {
      if (CFEqual(*MEMORY[0x277CBEE40], Domain))
      {
        v52 = Code == -9810;
      }

      else
      {
        if (!CFEqual(*MEMORY[0x277CBACE8], Domain))
        {
          v41 = CFEqual(*MEMORY[0x277CBEE48], Domain) != 0;
          goto LABEL_84;
        }

        v52 = Code == -1005;
      }

      v41 = v52;
      goto LABEL_84;
    }

    v41 = 1;
    if (Code > 15)
    {
      if (Code == 16)
      {
        v53 = CFErrorCopyUserInfo(v38);
        if (v53)
        {
          v43 = v53;
          Value = CFDictionaryGetValue(v53, @"kMMCSErrorSupplementalDictionaryKey");
          if (Value)
          {
            v55 = CFDictionaryGetValue(Value, @"Retry-After");
            if (v55)
            {
              v41 = CFStringGetIntValue(v55) < 6;
            }
          }

          goto LABEL_83;
        }
      }

      else if (Code != 38)
      {
LABEL_68:
        v41 = 0;
      }
    }

    else if (Code != 3)
    {
      if (Code == 6)
      {
        v42 = CFErrorCopyUserInfo(v38);
        if (v42)
        {
          v43 = v42;
          v44 = CFDictionaryGetValue(v42, @"kMMCSErrorHTTPStatusKey");
          if (v44)
          {
            *buf = -1;
            CFNumberGetValue(v44, kCFNumberCFIndexType, buf);
            v41 = *buf == 500;
          }

          else
          {
            v41 = 0;
          }

LABEL_83:
          CFRelease(v43);
          goto LABEL_84;
        }
      }

      goto LABEL_68;
    }

LABEL_84:
    if (v37)
    {
      CFRelease(v37);
    }

    v51 = !v41;
    goto LABEL_87;
  }

  v24 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null get state backref in get container %p context %p", v6, v4);
    v21 = mmcs_logging_logger_default(v19, v25);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    LODWORD(state.opaque[0]) = 138543362;
    *(state.opaque + 4) = v19;
LABEL_31:
    _os_log_impl(&dword_2577D8000, v21, OS_LOG_TYPE_ERROR, "%{public}@", &state, 0xCu);
LABEL_32:
    if (v19)
    {
      CFRelease(v19);
    }
  }
}

uint64_t send_request_downloadChunks(uint64_t a1, CFErrorRef *a2)
{
  v169 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, a2);
  os_activity_scope_enter(request_activity_marker, &state);
  if (a2)
  {
    *a2 = 0;
    v5 = (a1 + 144);
    if (*(a1 + 144))
    {
LABEL_7:
      v7 = *(a1 + 152);
      *a2 = v7;
      CFRetain(v7);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = (a1 + 144);
    if (*(a1 + 144))
    {
      goto LABEL_8;
    }
  }

  v6 = *(*(a1 + 304) + 112);
  mmcs_get_item_progress_make_state_progress(3, buf, 0.0);
  mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, buf);
  if (*(a1 + 144))
  {
LABEL_6:
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v10 = *(*(a1 + 304) + 120);
  if (v10)
  {
    CFAbsoluteTimeGetCurrent();
    mmcs_perform_timer_set_next_fire_date(v10);
  }

  if (v6)
  {
    CFSetApplyFunction(*(*(a1 + 304) + 72), _mmcs_item_setup_chunk_references, *(*(a1 + 304) + 112));
    if (gMMCS_DebugLevel >= 5)
    {
      v13 = mmcs_logging_logger_default(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"populated counts dictionary: %@", *(*(*(a1 + 304) + 112) + 88));
        v16 = mmcs_logging_logger_default(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v14;
          _os_log_impl(&dword_2577D8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }
    }

    if (CFArrayGetCount(*(v6 + 56)) >= 1)
    {
      v17 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(*(a1 + 304) + 112) + 56), v17);
        if (!mmcs_get_container_contains_only_ford_elements(ValueAtIndex))
        {
          send_request_downloadChunks_cold_8();
        }

        if (mmcs_container_get_primary_error(ValueAtIndex))
        {
          v19 = ValueAtIndex[11];
          if (*(v19 + 48))
          {
            v20 = 0;
            do
            {
              v21 = *(v19 + 120) + 104 * v20;
              if (!mmcs_chunk_instance_is_ford(v21))
              {
                send_request_downloadChunks_cold_2();
              }

              Value = CFDictionaryGetValue(*(v6 + 104), *(v21 + 8));
              if (!Value)
              {
                send_request_downloadChunks_cold_1();
              }

              items_array_for_item = mmcs_get_req_context_get_items_array_for_item(a1, Value[1]);
              if (CFArrayGetCount(items_array_for_item) >= 1)
              {
                v24 = 0;
                do
                {
                  v25 = CFArrayGetValueAtIndex(items_array_for_item, v24);
                  v26 = CFDictionaryGetValue(*(v6 + 104), v25);
                  mmcs_get_state_fail_file_state(v26, ValueAtIndex);
                  ++v24;
                }

                while (v24 < CFArrayGetCount(items_array_for_item));
              }

              ++v20;
              v19 = ValueAtIndex[11];
            }

            while (v20 < *(v19 + 48));
          }
        }

        ++v17;
      }

      while (v17 < CFArrayGetCount(*(v6 + 56)));
    }

    if (CFArrayGetCount(*(v6 + 48)) >= 1)
    {
      v27 = 0;
      do
      {
        v28 = CFArrayGetValueAtIndex(*(v6 + 48), v27);
        if (!mmcs_get_container_contains_only_chunk_reference_elements(v28))
        {
          send_request_downloadChunks_cold_7();
        }

        v29 = v28[11];
        if (*(v29 + 48))
        {
          v30 = 0;
          v31 = 56;
          do
          {
            v32 = *(v29 + 120);
            if (!mmcs_chunk_instance_is_chunk_reference((v32 + v31 - 56)))
            {
              send_request_downloadChunks_cold_4();
            }

            if (!mmcs_chunk_reference_get_first_chunk_instance(*(v32 + v31)))
            {
              if (CFSetContainsValue(*(v6 + 96), *(v32 + v31)))
              {
                v33 = *(v32 + v31);
                if (!*(v33 + 16) && **(v33 + 8) < 0)
                {
                  send_request_downloadChunks_cold_3();
                }
              }
            }

            ++v30;
            v29 = v28[11];
            v31 += 104;
          }

          while (v30 < *(v29 + 48));
        }

        ++v27;
      }

      while (v27 < CFArrayGetCount(*(v6 + 48)));
    }

    v34 = *(*(a1 + 304) + 48);
    if (v34)
    {
      cfindex_from_cftype_using_description = mmcs_get_cfindex_from_cftype_using_description(@"CacheDeleteAvailableSpaceClass", v34, 2);
      v36 = *(*(a1 + 304) + 72);
      *buf = 0;
      CFSetApplyFunction(v36, _mmcs_item_add_item_size, buf);
      v37 = *buf;
      v38 = mmcs_chunk_instance_offset(a1);
      v39 = mmcs_cache_delete_copy_mount_path_from_directory(*(v38 + 128));
      is_insufficient_disk_space_mode = mmcs_cache_delete_get_available_bytes_from_mount_path(v39, cfindex_from_cftype_using_description);
      v42 = is_insufficient_disk_space_mode;
      if (v39)
      {
        CFRelease(v39);
      }

      if (v37 > v42 || (is_insufficient_disk_space_mode = mmcs_get_request_is_insufficient_disk_space_mode(a1, v41), is_insufficient_disk_space_mode))
      {
        v43 = mmcs_logging_logger_default(is_insufficient_disk_space_mode, v41);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v37;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          _os_log_impl(&dword_2577D8000, v43, OS_LOG_TYPE_ERROR, "Insufficent disk space, needed %lld but found %lld", buf, 0x16u);
        }

        if (a2)
        {
          *a2 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 48, @"Insufficent disk space, needed %lld but found %lld", v44, v45, v46, v47, v48, v37, v42);
        }

        goto LABEL_8;
      }
    }

    if (*(v6 + 16))
    {
      v49 = 0;
      v50 = 8;
      do
      {
        v51 = *(v6 + 32);
        if (!v51)
        {
          send_request_downloadChunks_cold_6();
        }

        v52 = *(v51 + v50);
        if (!v52)
        {
          send_request_downloadChunks_cold_5();
        }

        if (mmcs_get_file_compute_remaining_work((v51 + v50 - 8)))
        {
          if (*v5)
          {
            goto LABEL_6;
          }

          if (mmcs_item_is_derivative(*(v51 + v50)))
          {
            CFSetApplyFunction(*(v52 + 280), _decrement_outstanding_chunk_reference, v6);
            CFSetRemoveAllValues(*(v52 + 280));
          }

          else if (!mmcs_get_file_has_outstanding_chunks(v51 + v50 - 8))
          {
            mmcs_get_file_candidate_completed_with_success(v51 + v50 - 8, v53);
          }
        }

        ++v49;
        v50 += 128;
      }

      while (v49 < *(v6 + 16));
    }
  }

  mmcs_engine_poll_for_preferences_update(*(a1 + 32));
  v147 = *(*(a1 + 32) + 172);
  if (!v6 || (mmcs_get_file_omit_containers_not_needed(v6, &v147), !*(*(a1 + 32) + 172)) || !v147)
  {
    v67 = mmcs_request_setup_proxy_locator_for_containers(a1, *(v6 + 48));
    if (v67)
    {
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 0x40000000;
      v146[2] = __send_request_downloadChunks_block_invoke;
      v146[3] = &__block_descriptor_tmp_0;
      v146[4] = a1;
      mmcs_proxy_locator_locate(*(a1 + 192), v146);
LABEL_97:
      v8 = 0;
      goto LABEL_9;
    }

    v69 = *(a1 + 72);
    v70 = mmcs_logging_logger_default(v67, v68);
    if (v69)
    {
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't create proxy locator");
        v73 = mmcs_logging_logger_default(v71, v72);
        if (!os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_94;
        }

        *buf = 138543362;
        *&buf[4] = v71;
        v74 = v73;
        v75 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_93;
      }
    }

    else if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v71 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"not using proxy locator");
      v99 = mmcs_logging_logger_default(v71, v98);
      if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_94;
      }

      *buf = 138543362;
      *&buf[4] = v71;
      v74 = v99;
      v75 = OS_LOG_TYPE_DEBUG;
LABEL_93:
      _os_log_impl(&dword_2577D8000, v74, v75, "%{public}@", buf, 0xCu);
LABEL_94:
      if (v71)
      {
        CFRelease(v71);
      }
    }

    scheduleGetChunkAndDerivativeContainers(a1);
    goto LABEL_97;
  }

  v55 = mmcs_request_get_request_activity_marker(a1, v54);
  v56 = _os_activity_create(&dword_2577D8000, "mmcs-auth-get-for-chunks", v55, OS_ACTIVITY_FLAG_DEFAULT);
  v150.opaque[0] = 0;
  v150.opaque[1] = 0;
  os_activity_scope_enter(v56, &v150);
  v62 = *(a1 + 32);
  if (a2)
  {
    *a2 = 0;
  }

  if (*v5)
  {
    error = *(a1 + 152);
    if (error)
    {
      CFRetain(error);
      v64 = 0;
      v65 = 0;
      v66 = 0;
      goto LABEL_113;
    }

    v64 = 0;
    v65 = 0;
    v66 = 0;
    goto LABEL_112;
  }

  v76 = *(*(a1 + 304) + 88);
  if (!v76)
  {
    goto LABEL_161;
  }

  if (CFSetGetCount(v76) <= 0)
  {
    v100 = *(*(a1 + 304) + 88);
    if (v100)
    {
      if (CFSetGetCount(v100) <= 0)
      {
        send_request_downloadChunks_cold_11();
      }

      error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"No items for get chunks", v101, v102, v103, v104, v105);
      v66 = 0;
      v65 = 0;
LABEL_111:
      v64 = 0;
      if (error)
      {
        goto LABEL_113;
      }

      goto LABEL_112;
    }

LABEL_161:
    send_request_downloadChunks_cold_12();
  }

  v77 = *MEMORY[0x277CBECE8];
  v65 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a1 + 160), @"authorizeGet", 0);
  if (!v65)
  {
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to create URL %s", v78, v79, v80, v81, v82, "send_request_authorizeGetForChunks");
    v66 = 0;
    goto LABEL_111;
  }

  v83 = AuthorizeGetBodyCreate(a1, 0);
  v66 = v83;
  if (!v83)
  {
    v106 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to create body %s", v84, v85, v86, v87, v88, "send_request_authorizeGetForChunks");
LABEL_110:
    error = v106;
    goto LABEL_111;
  }

  Length = CFDataGetLength(v83);
  v90 = v62[8];
  v91 = v62[10];
  dataclass = mmcs_request_get_dataclass(a1);
  http_protobuf_message = create_http_protobuf_message(v90, v91, dataclass, *(a1 + 168), *(a1 + 176), v65, v66);
  if (!http_protobuf_message)
  {
    v107 = mmcs_logging_logger_default(0, v94);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v113 = CFStringCreateWithFormat(v77, 0, @"unable to create auth get chunks msg");
      v115 = mmcs_logging_logger_default(v113, v114);
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v113;
        _os_log_impl(&dword_2577D8000, v115, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v113)
      {
        CFRelease(v113);
      }
    }

    v106 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to create message %s", v108, v109, v110, v111, v112, "send_request_authorizeGetForChunks");
    goto LABEL_110;
  }

  v64 = http_protobuf_message;
  CFRelease(v66);
  mmcs_request_insert_headers(a1, v64);
  v96 = *(a1 + 304);
  v97 = Length;
  if (*(v96 + 10))
  {
    CFHTTPMessageSetHeaderFieldValue(v64, @"x-apple-mmcs-authorize-individual-files", @"T");
    v96 = *(a1 + 304);
  }

  if (!*(v96 + 168))
  {
LABEL_132:
    send_request_downloadChunks_cold_9(v77, v95);
    goto LABEL_133;
  }

  v116 = 0;
  v117 = 176;
  while (!mmcs_item_needs_auth_get_chunks(v96 + v117))
  {
    ++v116;
    v96 = *(a1 + 304);
    v117 += 416;
    if (v116 >= *(v96 + 168))
    {
      goto LABEL_132;
    }
  }

  if (!mmcs_http_msg_add_item_token_header(v64, (*(a1 + 304) + v117), 0, 0))
  {
LABEL_133:
    send_request_downloadChunks_cold_10(v77, v118);
  }

  v167 = 0u;
  v166 = 0u;
  *buf = @"authorizeGetForChunks";
  *&buf[8] = v64;
  *&buf[16] = *(a1 + 56);
  v154 = *(a1 + 96);
  v155 = 0;
  v156 = -1;
  v168 = 0;
  v158 = 0;
  v159 = 0;
  v157 = v97;
  v160 = mmcs_get_req_context_will_retry_auth_get_chunks_after_error;
  v161 = handle_response_authorizeGetForChunks;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = a1;
  *&v166 = mmcs_engine_get_sparse_block_size();
  *(&v166 + 1) = mmcs_engine_owner(v62);
  LOBYTE(v167) = 0;
  *(&v167 + 1) = 0;
  v168 = v56;
  memset(v149, 0, sizeof(v149));
  mmcs_read_stream_pool_parameters_make_pool_timeout_max(v62[4], 100, v149, 90.0);
  v119 = mmcs_http_context_create((*(a1 + 304) + 136), *(a1 + 140), buf);
  if (!v119)
  {
    v125 = mmcs_logging_logger_default(v119, v120);
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v131 = CFStringCreateWithFormat(v77, 0, @"unable to create http context");
      v133 = mmcs_logging_logger_default(v131, v132);
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        *v151 = 138543362;
        v152 = v131;
        _os_log_impl(&dword_2577D8000, v133, OS_LOG_TYPE_ERROR, "%{public}@", v151, 0xCu);
      }

      if (v131)
      {
        CFRelease(v131);
      }
    }

    v134 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to create http %s", v126, v127, v128, v129, v130, "send_request_authorizeGetForChunks");
    goto LABEL_157;
  }

  if (*(a1 + 184))
  {
    mmcs_http_context_make_metrics(*(*(a1 + 304) + 136), @"authGetChunks", 0, *(a1 + 56), 0);
    v121 = *(a1 + 184);
    metrics = mmcs_http_context_get_metrics(*(*(a1 + 304) + 136));
    mmcs_metrics_request_add_http_info_for_auth(v121, metrics);
  }

  mmcs_http_context_update_voucher(*(*(a1 + 304) + 136));
  mmcs_http_context_uuid_hash_code(*(*(a1 + 304) + 136));
  kdebug_trace();
  v123 = mmcs_http_context_send(*(*(a1 + 304) + 136), v149, v62[7]);
  if (!v123)
  {
    v135 = mmcs_logging_logger_default(v123, v124);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v141 = CFStringCreateWithFormat(v77, 0, @"unable to send http msg");
      v143 = mmcs_logging_logger_default(v141, v142);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        *v151 = 138543362;
        v152 = v141;
        _os_log_impl(&dword_2577D8000, v143, OS_LOG_TYPE_ERROR, "%{public}@", v151, 0xCu);
      }

      if (v141)
      {
        CFRelease(v141);
      }
    }

    v144 = *(*(a1 + 304) + 128);
    if (v144 && mmcs_http_context_get_error(v144))
    {
      error = mmcs_http_context_get_error(*(*(a1 + 304) + 128));
      CFRetain(error);
      goto LABEL_158;
    }

    v134 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unable to send http context for auth get request message", v136, v137, v138, v139, v140, v145);
LABEL_157:
    error = v134;
LABEL_158:
    v66 = 0;
    if (error)
    {
LABEL_113:
      if (a2)
      {
        CFRetain(error);
        *a2 = error;
      }

      if (error)
      {
        CFRelease(error);
      }

      v8 = 0xFFFFFFFFLL;
      if (!v64)
      {
        goto LABEL_119;
      }

      goto LABEL_118;
    }

LABEL_112:
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Unknown error in %s", v57, v58, v59, v60, v61, "send_request_authorizeGetForChunks");
    goto LABEL_113;
  }

  v66 = 0;
  v8 = 0;
LABEL_118:
  CFRelease(v64);
LABEL_119:
  if (v66)
  {
    CFRelease(v66);
  }

  if (v65)
  {
    CFRelease(v65);
  }

  if (v56)
  {
    os_release(v56);
  }

  os_activity_scope_leave(&v150);
LABEL_9:
  os_activity_scope_leave(&state);
  return v8;
}

uint64_t handle_callback_downloadContainer(uint64_t a1, const UInt8 *a2, CFIndex a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = 0;
    if (!mmcs_http_context_has_http_status(a1))
    {
      v9 = *(mmcs_http_context_get_user_data(a1) + 64);
      if (v9)
      {
        container_copy_simple_description = mmcs_get_container_copy_simple_description(v9);
        if (a1)
        {
          request_message = mmcs_http_context_get_request_message(a1);
          response_message = mmcs_http_context_get_response_message(a1);
          goto LABEL_20;
        }
      }

      else
      {
        container_copy_simple_description = 0;
      }

      request_message = 0;
      response_message = 0;
LABEL_20:
      *a4 = mmcs_cferror_create_with_request_response_and_format(@"com.apple.mmcs", 1, request_message, response_message, 0, @"Context %p while downloading container %@ does not have a status", v10, v11, a1, container_copy_simple_description);
      if (container_copy_simple_description)
      {
        CFRelease(container_copy_simple_description);
      }

      return 0;
    }
  }

  else
  {
    result = mmcs_http_context_has_http_status(a1);
    if (!result)
    {
      return result;
    }
  }

  if ((mmcs_http_context_http_status(a1, v8) - 300) > 0xFFFFFFFFFFFFFF9BLL)
  {
    user_data = mmcs_http_context_get_user_data(a1);
    v17 = *(*(user_data + 64) + 88);
    v18 = *v17;
    if (!*v17)
    {
      handle_callback_downloadContainer_cold_2();
    }

    v19 = user_data;
    if (!*v18 || mmcs_request_is_cancelled(*v18))
    {
      handle_callback_downloadContainer_cold_1();
    }

    result = mmcs_get_state_process_container_data(*v17, v19);
    if (a4 && !result)
    {
      if (!*a4)
      {
        v25 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 11, @"There was an unspecified error processing data from container %s", v20, v21, v22, v23, v24, v17[2]);
        result = 0;
        *a4 = v25;
        return result;
      }

      return 0;
    }
  }

  else
  {
    if (a3 >= 1)
    {
      mmcs_http_write_response_body(a1, a2, a3);
    }

    return 1;
  }

  return result;
}

uint64_t handle_container_request_will_retry_after_error(uint64_t a1, uint64_t a2, const void *a3)
{
  result = mmcs_http_context_get_user_data(a1);
  if (a3)
  {
    v5 = result;
    if (result)
    {
      v6 = *(result + 64);
      if (v6)
      {
        mmcs_container_set_error(*(result + 64), a3);

        return mmcs_get_container_will_retry(v6, v5);
      }
    }
  }

  return result;
}

uint64_t mmcs_get_req_is_using_itemid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 304);
  if (*(v2 + 168))
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = 348;
    do
    {
      if (v4)
      {
        break;
      }

      if (*(v2 + v5 - 132) == *a2 && *(v2 + v5) != 5)
      {
        v4 = 1;
        *(a2 + 8) = 1;
        v2 = *(result + 304);
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 += 416;
    }

    while (v3 < *(v2 + 168));
  }

  return result;
}

uint64_t mmcs_get_items(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const void *a4, const char *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, CFErrorRef *a10)
{
  v113 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_2577D8000, "mmcs-get-items", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);
  v109 = 0;
  if (a10)
  {
    *a10 = 0;
  }

  v20 = mmcs_logging_logger_default(v18, v19);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);
  if (v21)
  {
    v23 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mmcs_get_items called for %llu items", a6);
    v25 = mmcs_logging_logger_default(v23, v24);
    v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      *buf = 138543362;
      v112 = v23;
      _os_log_impl(&dword_2577D8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v23)
    {
      CFRelease(v23);
    }
  }

  if (a3)
  {
    v21 = CFDictionaryContainsKey(a3, @"kMMCSRequestOptionPreauthorization");
    v26 = v21 != 0;
  }

  else
  {
    v26 = 0;
  }

  if (a1 && a4 && a5 && a7 && a8 && (a9 != 0 || v26))
  {
    if (a6 < 1)
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = 0;
      while (*(a9 + 8 * v27))
      {
        if ((a6 & 0x7FFFFFFF) == ++v27)
        {
          goto LABEL_23;
        }
      }

      v45 = mmcs_logging_logger_default(v21, v22);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v51 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing auth token for item at index %d.", v27);
        v53 = mmcs_logging_logger_default(v51, v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v51;
          _os_log_impl(&dword_2577D8000, v53, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v51)
        {
          CFRelease(v51);
        }
      }

      v32 = a10;
      if (a10)
      {
        error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 35, @"Missing auth token for item at index %d.", v46, v47, v48, v49, v50, v27);
        goto LABEL_39;
      }

      goto LABEL_108;
    }

LABEL_23:
    if (*(a1 + 120))
    {
      v28 = mmcs_logging_logger_default(v21, v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Engine is already closed.");
        v31 = mmcs_logging_logger_default(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v29;
          _os_log_impl(&dword_2577D8000, v31, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v29)
        {
          CFRelease(v29);
        }
      }

      v32 = a10;
      if (a10)
      {
        v33 = @"Engine is already closed.";
LABEL_38:
        error = mmcs_cferror_create_error(@"com.apple.mmcs", 35, v33);
LABEL_39:
        v39 = 0;
        *v32 = error;
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    req_create = mmcs_get_req_create(&v109, a1, a2, a3, a4, a5, 0, 0, a6, a7, a8, a9, 0, 0, v17, a10);
    if (!req_create)
    {
      v54 = mmcs_logging_logger_default(req_create, v41);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        v55 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to create authGet request");
        v57 = mmcs_logging_logger_default(v55, v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v55;
          _os_log_impl(&dword_2577D8000, v57, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v55)
        {
          CFRelease(v55);
        }
      }

      v32 = a10;
      if (a10 && !*a10)
      {
        v33 = @"Failed to create authGet request.";
        goto LABEL_38;
      }

      goto LABEL_108;
    }

    if (!v109)
    {
      mmcs_get_items_cold_1();
    }

    v42 = a10;
    if (a6)
    {
      while (1)
      {
        has_request_using_itemid = mmcs_engine_has_request_using_itemid(a1, *a7);
        if (has_request_using_itemid)
        {
          break;
        }

        ++a7;
        if (!--a6)
        {
          goto LABEL_74;
        }
      }

      v58 = mmcs_logging_logger_default(has_request_using_itemid, v44);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v64 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld is being used by another request.", *a7);
        v66 = mmcs_logging_logger_default(v64, v65);
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v64;
          _os_log_impl(&dword_2577D8000, v66, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v42 = a10;
        if (v64)
        {
          CFRelease(v64);
        }
      }

      v67 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 35, @"Item %lld is being used by another request.", v59, v60, v61, v62, v63, *a7);
      if (v67)
      {
        v69 = v67;
        v70 = mmcs_logging_logger_default(v67, v68);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          v71 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Item %lld is already being used by another request.", *a7);
          v73 = mmcs_logging_logger_default(v71, v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v112 = v71;
            _os_log_impl(&dword_2577D8000, v73, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          v42 = a10;
          if (v71)
          {
            CFRelease(v71);
          }
        }

        if (v42)
        {
          *v42 = v69;
          goto LABEL_108;
        }

        v100 = v69;
LABEL_107:
        CFRelease(v100);
        goto LABEL_108;
      }
    }

LABEL_74:
    mmcs_engine_add_request(a1, v109);
    mmcs_metrics_request_started(*(v109 + 23), *(*(v109 + 38) + 168));
    v74 = voucher_copy();
    v76 = v109;
    *(v109 + 28) = v74;
    cf = 0;
    if (v76[144])
    {
      v77 = mmcs_logging_logger_default(v74, v75);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v78 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Request cancelled.");
        v80 = mmcs_logging_logger_default(v78, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v78;
          _os_log_impl(&dword_2577D8000, v80, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v42 = a10;
        if (v78)
        {
          CFRelease(v78);
        }
      }

      if (v42)
      {
        CFRetain(*(v109 + 19));
        *v42 = *(v109 + 19);
      }

      goto LABEL_108;
    }

    Count = CFSetGetCount(*(*(v76 + 38) + 80));
    if (Count <= 0)
    {
      v91 = mmcs_logging_logger_default(Count, v82);
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v97 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"No items in the get request.");
        v99 = mmcs_logging_logger_default(v97, v98);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v112 = v97;
          _os_log_impl(&dword_2577D8000, v99, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        v42 = a10;
        if (v97)
        {
          CFRelease(v97);
        }
      }

      if (!v42)
      {
        goto LABEL_108;
      }

      v100 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 35, @"There were no items in the get request", v92, v93, v94, v95, v96);
      goto LABEL_105;
    }

    if (*(v109 + 33))
    {
      v83 = CFGetTypeID(*(v109 + 33));
      if (v83 == CFDataGetTypeID())
      {
        TypeID = process_authorization_data(v109, *(v109 + 33), &cf);
        v42 = a10;
      }

      else
      {
        v101 = CFGetTypeID(*(v109 + 33));
        TypeID = CFArrayGetTypeID();
        v102 = v101 == TypeID;
        v42 = a10;
        if (!v102)
        {
          goto LABEL_100;
        }

        TypeID = process_authorization_array(v109, *(v109 + 33), &cf);
      }
    }

    else
    {
      TypeID = send_request_authorizeGetForFiles(v109, &cf);
    }

    if (TypeID)
    {
      v39 = 1;
      goto LABEL_109;
    }

LABEL_100:
    if (!cf)
    {
      TypeID = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to start get request", v86, v87, v88, v89, v90);
      cf = TypeID;
    }

    v103 = mmcs_logging_logger_default(TypeID, v85);
    XCFPrint(v103, @"AuthorizeGetForFiles Send Error", cf);
    v104 = v109;
    v105 = *(v109 + 38);
    if (*(v105 + 41))
    {
      *(v105 + 41) = 0;
    }

    mmcs_metrics_request_set_error(v104[23], cf);
    mmcs_get_req_context_cleanup(v109, cf);
    v100 = cf;
    if (!v42)
    {
      if (!cf)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

LABEL_105:
    *v42 = v100;
    goto LABEL_108;
  }

  v34 = mmcs_logging_logger_default(v21, v22);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Missing required parameters");
    v37 = mmcs_logging_logger_default(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v112 = v35;
      _os_log_impl(&dword_2577D8000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v35)
    {
      CFRelease(v35);
    }
  }

  v32 = a10;
  if (a10)
  {
    v33 = @"Missing required parameters.";
    goto LABEL_38;
  }

LABEL_108:
  v39 = 0;
LABEL_109:
  if (v109)
  {
    CFRelease(v109);
  }

  v109 = 0;
  if (v17)
  {
    os_release(v17);
  }

  os_activity_scope_leave(&state);
  return v39;
}

uint64_t process_authorization_data(uint64_t a1, void *a2, CFTypeRef *a3)
{
  values[1] = *MEMORY[0x277D85DE8];
  cf = 0;
  values[0] = a2;
  v5 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 1, MEMORY[0x277CBF128]);
  if (v5)
  {
    v6 = v5;
    v7 = process_authorization_array(a1, v5, &cf);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  if (!a3 || v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

  return v7;
}

uint64_t process_authorization_array(uint64_t a1, CFArrayRef theArray, void *a3)
{
  v145 = *MEMORY[0x277D85DE8];
  cf = 0;
  if (a3)
  {
    *a3 = 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v7 = Count;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  for (i = 0; i != v7; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
    TypeID = CFDataGetTypeID();
    v14 = CFGetTypeID(ValueAtIndex);
    if (TypeID != v14)
    {
      v85 = mmcs_logging_logger_default(v14, v15);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v91 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Expected CFDataRef type");
        v93 = mmcs_logging_logger_default(v91, v92);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v91;
          _os_log_impl(&dword_2577D8000, v93, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v91)
        {
          CFRelease(v91);
        }
      }

      v94 = @"Expected CFDataRef type";
      goto LABEL_75;
    }

    Length = CFDataGetLength(ValueAtIndex);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    v18 = chunkserver__file_groups__unpack(0, Length, BytePtr);
    if (!v18)
    {
      v95 = mmcs_logging_logger_default(0, v19);
      if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
      {
        v96 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed response body");
        v98 = mmcs_logging_logger_default(v96, v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v96;
          _os_log_impl(&dword_2577D8000, v98, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
        }

        if (v96)
        {
          CFRelease(v96);
        }
      }

      v94 = @"Malformed response body";
LABEL_75:
      v84 = 0;
      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v94, v86, v87, v88, v89, v90);
      goto LABEL_124;
    }

    v20 = v18;
    v21 = file_groups_message_file_count(v18, v19);
    if (*(v20 + 18) && v10 <= *(v20 + 19))
    {
      v10 = *(v20 + 19);
    }

    v8 += v21;
    v9 |= *(v20 + 18);
    chunkserver__file_groups__free_unpacked(v20, 0);
  }

  if (v9)
  {
    mmcs_request_set_reporting_level(a1, v10);
  }

LABEL_14:
  *(*(a1 + 304) + 41) = mmcs_get_req_context_wants_getComplete(a1);
  v22 = *MEMORY[0x277CBECE8];
  MutableCopy = CFSetCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(*(a1 + 304) + 80));
  v24 = CFSetGetCount(MutableCopy);
  if (v8 < v24)
  {
    v26 = mmcs_logging_logger_default(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = CFStringCreateWithFormat(v22, 0, @"not able to get containers for all files");
      v29 = mmcs_logging_logger_default(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_2577D8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@", &buf, 0xCu);
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }
  }

  v30 = mmcs_get_state_create((*(a1 + 304) + 112), a1, *(*(a1 + 304) + 168));
  if (!v30)
  {
    v75 = mmcs_logging_logger_default(v30, v31);
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v81 = CFStringCreateWithFormat(v22, 0, @"mmcs_get_state_create");
      v83 = mmcs_logging_logger_default(v81, v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v81;
        _os_log_impl(&dword_2577D8000, v83, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v81)
      {
        CFRelease(v81);
      }
    }

    v84 = 0;
    v44 = 0;
    cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"mmcs_get_state_create", v76, v77, v78, v79, v80);
    v45 = 1;
    goto LABEL_118;
  }

  v32 = CFSetCreateMutableCopy(v22, 0, MutableCopy);
  v33 = CFArrayGetCount(theArray);
  if (v33 >= 1)
  {
    v34 = v33;
    v35 = 0;
    while (1)
    {
      v36 = CFArrayGetValueAtIndex(theArray, v35);
      v37 = CFDataGetTypeID();
      v38 = CFGetTypeID(v36);
      if (v37 != v38)
      {
        break;
      }

      v40 = CFDataGetLength(v36);
      v41 = CFDataGetBytePtr(v36);
      v42 = chunkserver__file_groups__unpack(0, v40, v41);
      if (!v42)
      {
        v113 = mmcs_logging_logger_default(0, v43);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = CFStringCreateWithFormat(v22, 0, @"Malformed response body");
          v116 = mmcs_logging_logger_default(v114, v115);
          if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v114;
            _os_log_impl(&dword_2577D8000, v116, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
          }

          if (v114)
          {
            CFRelease(v114);
          }
        }

        v112 = @"Malformed response body";
LABEL_92:
        v44 = 0;
        v84 = 0;
        cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, v112, v104, v105, v106, v107, v108);
        goto LABEL_93;
      }

      v44 = v42;
      v45 = 1;
      if (!mmcs_get_req_process_another_file_groups_message(a1, v32, v42, 1, &cf))
      {
        v84 = 0;
        goto LABEL_116;
      }

      chunkserver__file_groups__free_unpacked(v44, 0);
      if (v34 == ++v35)
      {
        goto LABEL_27;
      }
    }

    v103 = mmcs_logging_logger_default(v38, v39);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v109 = CFStringCreateWithFormat(v22, 0, @"Expected CFDataRef type");
      v111 = mmcs_logging_logger_default(v109, v110);
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v109;
        _os_log_impl(&dword_2577D8000, v111, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v109)
      {
        CFRelease(v109);
      }
    }

    v112 = @"Expected CFDataRef type";
    goto LABEL_92;
  }

LABEL_27:
  v51 = *(*(a1 + 304) + 112);
  if (*(v51 + 16))
  {
    v52 = 0;
    v53 = 8;
    do
    {
      CFSetRemoveValue(v32, *(*(v51 + 32) + v53));
      ++v52;
      v51 = *(*(a1 + 304) + 112);
      v53 += 128;
    }

    while (v52 < *(v51 + 16));
  }

  if (CFSetGetCount(v32) >= 1)
  {
    v54 = CFCopyDescription(v32);
    v56 = mmcs_logging_logger_default(v54, v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = CFStringCreateWithFormat(v22, 0, @"The server did not reply about the following items but should have: %@", v54);
      v59 = mmcs_logging_logger_default(v57, v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v57;
        _os_log_impl(&dword_2577D8000, v59, OS_LOG_TYPE_ERROR, "%{public}@", &buf, 0xCu);
      }

      if (v57)
      {
        CFRelease(v57);
      }
    }

    if (v54)
    {
      CFRelease(v54);
    }

    error = mmcs_cferror_create_error(@"com.apple.mmcs", 8, @"Item not found on the server");
    mmcs_get_item_progress_make_done_error(error, v61, &buf);
    mmcs_get_request_set_progress_and_notify_items_like_items_in_set(a1, v32, &buf);
    if (error)
    {
      CFRelease(error);
    }
  }

  CFSetApplyFunction(*(*(a1 + 304) + 72), _mmcs_item_setup_metadata_only, *(*(a1 + 304) + 112));
  if (gMMCS_DebugLevel >= 5)
  {
    v64 = mmcs_logging_logger_default(v62, v63);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v65 = CFStringCreateWithFormat(v22, 0, @"populated counts dictionary: %@", *(*(*(a1 + 304) + 112) + 88));
      v67 = mmcs_logging_logger_default(v65, v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v65;
        _os_log_impl(&dword_2577D8000, v67, OS_LOG_TYPE_DEBUG, "%{public}@", &buf, 0xCu);
      }

      if (v65)
      {
        CFRelease(v65);
      }
    }
  }

  v68 = *(*(a1 + 304) + 112);
  if (v68 && *(v68 + 16))
  {
    v69 = 0;
    v70 = 0;
    do
    {
      v71 = *(v68 + 32);
      if (!v71)
      {
        process_authorization_array_cold_2();
      }

      v72 = v71 + v69;
      v73 = *(v71 + v69 + 8);
      if (!v73)
      {
        process_authorization_array_cold_1();
      }

      if (mmcs_item_is_metadata_only(*(v71 + v69 + 8)) && !*(v73 + 104))
      {
        mmcs_get_file_complete_metadata_only_file(v72);
      }

      ++v70;
      v69 += 128;
    }

    while (v70 < *(v68 + 16));
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, v63);
  os_activity_scope_enter(request_activity_marker, &state);
  cf = 0;
  if (*(a1 + 144))
  {
    cf = *(a1 + 152);
    CFRetain(cf);
    os_activity_scope_leave(&state);
LABEL_115:
    v44 = 0;
    v45 = 0;
    v84 = 1;
    goto LABEL_116;
  }

  v99 = *(*(a1 + 304) + 112);
  if (!v99)
  {
    process_authorization_array_cold_3();
  }

  if (!CFArrayGetCount(*(v99 + 56)))
  {
    v102 = send_request_downloadChunks(a1, &cf);
    goto LABEL_114;
  }

  v139.opaque[0] = 0;
  v139.opaque[1] = 0;
  v101 = mmcs_request_get_request_activity_marker(a1, v100);
  os_activity_scope_enter(v101, &v139);
  cf = 0;
  if (*(a1 + 144))
  {
    cf = *(a1 + 152);
    CFRetain(cf);
    v102 = -1;
    goto LABEL_113;
  }

  v117 = *(*(a1 + 304) + 112);
  v118 = mmcs_request_setup_proxy_locator_for_containers(a1, *(v117 + 56));
  if (!v118)
  {
    v120 = *(a1 + 72);
    v121 = mmcs_logging_logger_default(v118, v119);
    if (v120)
    {
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        v122 = CFStringCreateWithFormat(v22, 0, @"couldn't create proxy locator");
        v124 = mmcs_logging_logger_default(v122, v123);
        if (!os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_106;
        }

        LODWORD(buf) = 138543362;
        *(&buf + 4) = v122;
        v125 = v124;
        v126 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_105;
      }
    }

    else if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
    {
      v122 = CFStringCreateWithFormat(v22, 0, @"not using proxy locator");
      v128 = mmcs_logging_logger_default(v122, v127);
      if (!os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_106;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v122;
      v125 = v128;
      v126 = OS_LOG_TYPE_DEBUG;
LABEL_105:
      _os_log_impl(&dword_2577D8000, v125, v126, "%{public}@", &buf, 0xCu);
LABEL_106:
      if (v122)
      {
        CFRelease(v122);
      }
    }

    scheduleGetContainers(a1, *(v117 + 56));
    has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(a1);
    if (!has_outstanding_asynchronous_work)
    {
      v131 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v130);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2577D8000, v131, OS_LOG_TYPE_INFO, "Downloads complete. All done!", &buf, 2u);
      }

      mmcs_get_req_context_cleanup(a1, 0);
    }

    goto LABEL_112;
  }

  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 0x40000000;
  v141 = __send_request_downloadFord_block_invoke;
  v142 = &__block_descriptor_tmp_276;
  v143 = v117;
  v144 = a1;
  mmcs_proxy_locator_locate(*(a1 + 192), &buf);
LABEL_112:
  v102 = 0;
LABEL_113:
  os_activity_scope_leave(&v139);
LABEL_114:
  os_activity_scope_leave(&state);
  if (v102 != -1)
  {
    goto LABEL_115;
  }

  if (!cf)
  {
    v132 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed to check for local state", v46, v47, v48, v49, v50);
    cf = v132;
  }

  v136 = mmcs_logging_logger_default(v132, v133);
  XCFPrint(v136, @"CheckForLocalStateIssue", cf);
  v44 = 0;
  v84 = 0;
LABEL_93:
  v45 = 1;
LABEL_116:
  if (v32)
  {
    CFRelease(v32);
  }

LABEL_118:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v44)
  {
    chunkserver__file_groups__free_unpacked(v44, 0);
    if ((v45 & 1) == 0)
    {
      return v84;
    }
  }

  else if (!v45)
  {
    return v84;
  }

LABEL_124:
  v134 = cf;
  if (a3)
  {
    if (!cf)
    {
      v134 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Failed to process auth get response for files", v46, v47, v48, v49, v50);
    }

    *a3 = v134;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  return v84;
}

uint64_t send_request_authorizeGetForFiles(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  request_activity_marker = mmcs_request_get_request_activity_marker(a1, a2);
  v5 = _os_activity_create(&dword_2577D8000, "mmcs-auth-get-for-files", request_activity_marker, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277CBECE8];
  v13 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], *(a1 + 160), @"authorizeGet", 0);
  if (!v13)
  {
    v33 = @"Unable to create auth get request url";
LABEL_12:
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, v33, v8, v9, v10, v11, v12);
    goto LABEL_13;
  }

  v14 = AuthorizeGetBodyCreate(a1, 1);
  if (!v14)
  {
    v33 = @"Unable to create auth get request body";
    goto LABEL_12;
  }

  v15 = v14;
  mmcs_get_item_progress_make_state(2, buf);
  mmcs_get_request_set_progress_and_notify_all_items_not_done(a1, buf);
  Length = CFDataGetLength(v15);
  v17 = v6[8];
  v18 = v6[10];
  dataclass = mmcs_request_get_dataclass(a1);
  http_protobuf_message = create_http_protobuf_message(v17, v18, dataclass, *(a1 + 168), *(a1 + 176), v13, v15);
  CFRelease(v15);
  if (*(a1 + 144))
  {
    v26 = CFRetain(*(a1 + 152));
    error = *(a1 + 152);
    v29 = mmcs_logging_logger_default(v26, v28);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v30 = CFStringCreateWithFormat(v7, 0, @"request was cancelled");
    v32 = mmcs_logging_logger_default(v30, v31);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543362;
    *&buf[4] = v30;
LABEL_7:
    _os_log_impl(&dword_2577D8000, v32, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_8:
    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_14;
  }

  if (!http_protobuf_message)
  {
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to create auth get request message", v21, v22, v23, v24, v25);
    v45 = mmcs_logging_logger_default(error, v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      http_protobuf_message = CFStringCreateWithFormat(v7, 0, @"unable to create auth get msg");
      v47 = mmcs_logging_logger_default(http_protobuf_message, v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = http_protobuf_message;
        _os_log_impl(&dword_2577D8000, v47, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (!http_protobuf_message)
      {
        goto LABEL_14;
      }

      CFRelease(http_protobuf_message);
    }

LABEL_13:
    http_protobuf_message = 0;
    goto LABEL_14;
  }

  mmcs_request_insert_headers(a1, http_protobuf_message);
  v37 = *(a1 + 304);
  if (*(v37 + 10))
  {
    CFHTTPMessageSetHeaderFieldValue(http_protobuf_message, @"x-apple-mmcs-authorize-individual-files", @"T");
    v37 = *(a1 + 304);
  }

  if (!mmcs_http_msg_add_items_token_header(http_protobuf_message, *(v37 + 168), v37 + 176, 0, 0))
  {
    error = mmcs_cferror_create_with_format(@"com.apple.mmcs", 37, @"Unable to add token header to auth get request message", v38, v39, v40, v41, v42);
    v49 = mmcs_logging_logger_default(error, v48);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v30 = CFStringCreateWithFormat(v7, 0, @"unable to add token header");
    v32 = mmcs_logging_logger_default(v30, v50);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138543362;
    *&buf[4] = v30;
    goto LABEL_7;
  }

  v75 = 0;
  v74[0] = @"authorizeGetForFiles";
  v74[1] = http_protobuf_message;
  v74[2] = *(a1 + 56);
  v74[3] = *(a1 + 96);
  if (mmcs_request_is_background(a1))
  {
    v43 = *(a1 + 104);
  }

  else
  {
    v43 = 0;
  }

  v74[4] = v43;
  v74[5] = -1;
  v74[6] = Length;
  v74[7] = 0;
  v74[8] = 0;
  v74[9] = mmcs_get_req_context_will_retry_auth_get_file_after_error;
  v74[10] = handle_response_authorizeGetForFiles;
  memset(&v74[11], 0, 24);
  v74[14] = a1;
  v74[15] = mmcs_engine_get_sparse_block_size();
  v74[16] = mmcs_engine_owner(v6);
  LOBYTE(v75) = 0;
  v76 = 0;
  v77 = v5;
  memset(v73, 0, sizeof(v73));
  mmcs_read_stream_pool_parameters_make_pool_timeout_max(v6[4], 100, v73, 90.0);
  v51 = mmcs_http_context_create((*(a1 + 304) + 128), *(a1 + 140), v74);
  if (v51)
  {
    if (*(a1 + 184))
    {
      mmcs_http_context_make_metrics(*(*(a1 + 304) + 128), @"authGet", 0, *(a1 + 56), 0);
      v53 = *(a1 + 184);
      metrics = mmcs_http_context_get_metrics(*(*(a1 + 304) + 128));
      mmcs_metrics_request_add_http_info_for_auth(v53, metrics);
    }

    mmcs_http_context_update_voucher(*(*(a1 + 304) + 128));
    mmcs_http_context_uuid_hash_code(*(*(a1 + 304) + 128));
    kdebug_trace();
    v55 = mmcs_http_context_send(*(*(a1 + 304) + 128), v73, v6[7]);
    if (v55)
    {
      v34 = 1;
LABEL_19:
      CFRelease(http_protobuf_message);
      v35 = v34;
      goto LABEL_20;
    }

    v68 = mmcs_logging_logger_default(v55, v56);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = CFStringCreateWithFormat(v7, 0, @"unable to send http msg");
      v71 = mmcs_logging_logger_default(v69, v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v69;
        _os_log_impl(&dword_2577D8000, v71, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v69)
      {
        CFRelease(v69);
      }
    }

    v72 = *(*(a1 + 304) + 128);
    if (v72 && mmcs_http_context_get_error(v72))
    {
      error = mmcs_http_context_get_error(*(*(a1 + 304) + 128));
      CFRetain(error);
      goto LABEL_14;
    }

    v66 = @"Unable to send http context for auth get request message";
    v67 = 1;
  }

  else
  {
    v57 = mmcs_logging_logger_default(v51, v52);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v63 = CFStringCreateWithFormat(v7, 0, @"unable to create http context");
      v65 = mmcs_logging_logger_default(v63, v64);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v63;
        _os_log_impl(&dword_2577D8000, v65, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v63)
      {
        CFRelease(v63);
      }
    }

    v66 = @"Unable to create http context for auth get request message";
    v67 = 37;
  }

  error = mmcs_cferror_create_with_format(@"com.apple.mmcs", v67, v66, v58, v59, v60, v61, v62);
LABEL_14:
  if (error)
  {
    if (a2)
    {
      CFRetain(error);
      *a2 = error;
    }

    CFRelease(error);
  }

  v34 = 0;
  v35 = 0;
  if (http_protobuf_message)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v13)
  {
    CFRelease(v13);
  }

  if (v5)
  {
    os_release(v5);
  }

  os_activity_scope_leave(&state);
  return v35;
}

void scheduleGetChunkAndDerivativeContainers(void *a1)
{
  v2 = *(a1[38] + 112);
  if (v2)
  {
    scheduleGetContainers(a1, *(v2 + 64));
    scheduleGetContainers(a1, *(v2 + 48));
  }

  else
  {
    mmcs_proxy_locator_finish(a1[24]);
  }

  has_outstanding_asynchronous_work = mmcs_get_req_has_outstanding_asynchronous_work(a1);
  if (!has_outstanding_asynchronous_work)
  {
    v5 = mmcs_logging_logger_default(has_outstanding_asynchronous_work, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_2577D8000, v5, OS_LOG_TYPE_INFO, "Downloads complete. All done!", v6, 2u);
    }

    mmcs_get_req_context_cleanup(a1, 0);
  }
}

void _mmcs_item_setup_chunk_references(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  mmcs_item_setup_chunk_references(a1);
  Current = CFAbsoluteTimeGetCurrent();
  CFSetApplyFunction(*(a1 + 280), _mmcs_item_setup_chunk_references_still_outstanding, a2);
  if (gMMCS_DebugLevel >= 5)
  {
    v7 = mmcs_logging_logger_default(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = CFAbsoluteTimeGetCurrent();
      v10 = CFStringCreateWithFormat(v8, 0, @"constructing maintained structure took %.6fus", (v9 - Current) * 1000000.0);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  if (!mmcs_item_is_derivative(a1))
  {
    mmcs_item_setup_item_size(a1);
    mmcs_item_setup_item_padded_size(a1);
  }
}

void _mmcs_item_setup_chunk_references_still_outstanding(void *value, CFDictionaryRef *a2)
{
  if (!CFSetContainsValue(*(*(*a2 + 38) + 104), value))
  {
    _mmcs_item_setup_chunk_references_still_outstanding_cold_1();
  }

  valuea = 1;
  if (CFDictionaryGetValueIfPresent(a2[11], value, &valuea))
  {
    v4 = valuea + 1;
    valuea = valuea + 1;
  }

  else
  {
    CFSetAddValue(a2[12], value);
    v4 = valuea;
  }

  CFDictionarySetValue(a2[11], value, v4);
}

uint64_t _mmcs_item_add_item_size(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    result = mmcs_item_is_metadata_only(result);
    if (!result)
    {
      *a2 += *(v3 + 16);
    }
  }

  return result;
}

void mmcs_get_req_context_will_retry_auth_get_chunks_after_error(uint64_t a1, uint64_t a2, __CFError *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = mmcs_logging_logger_default(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = mmcs_request_copy_description(a2);
    v7 = mmcs_cferror_copy_description(a3);
    v9 = mmcs_logging_logger_default(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ retry auth get chunk after error %@", v6, v7);
      v12 = mmcs_logging_logger_default(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_2577D8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void handle_response_authorizeGetForChunks(uint64_t a1, CFDataRef *a2, uint64_t a3)
{
  v105 = *MEMORY[0x277D85DE8];
  mmcs_http_context_uuid_hash_code(a1);
  kdebug_trace();
  if (!mmcs_http_context_is_connection_reused(a1))
  {
    kdebug_trace();
  }

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  request_activity_marker = mmcs_request_get_request_activity_marker(a3, v6);
  os_activity_scope_enter(request_activity_marker, &state);
  v9 = mmcs_http_context_status_succeeded(a1, v8);
  if (!a2 || !v9 || !*a2)
  {
    error = mmcs_http_context_get_error(a1);
    mmcs_get_req_context_cleanup(a3, error);
    goto LABEL_93;
  }

  v11 = mmcs_logging_logger_default(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = *MEMORY[0x277CBECE8];
    Length = CFDataGetLength(*a2);
    v15 = CFStringCreateWithFormat(v13, 0, @"Got %ld bytes", Length);
    v17 = mmcs_logging_logger_default(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      *&buf[4] = v15;
      _os_log_impl(&dword_2577D8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  mmcs_http_context_validate_request_uuid_with_response(a1, v12);
  http_clock_skew_metrics_with_http_context = mmcs_create_http_clock_skew_metrics_with_http_context(a1);
  if (http_clock_skew_metrics_with_http_context)
  {
    v19 = http_clock_skew_metrics_with_http_context;
    mmcs_request_set_http_clock_skew_metrics(a3, http_clock_skew_metrics_with_http_context);
    CFRelease(v19);
  }

  v20 = CFDataGetLength(*a2);
  BytePtr = CFDataGetBytePtr(*a2);
  v22 = chunkserver__file_groups__unpack(0, v20, BytePtr);
  mmcs_http_context_cleanup_response(a1);
  v24 = *a2;
  if (*a2)
  {
    CFRelease(v24);
  }

  *a2 = 0;
  if (v22)
  {
    v101 = 0;
    cf = 0;
    v25 = file_groups_message_file_count(v22, v23);
    v27 = *(a3 + 304);
    v28 = *(v27 + 88);
    if (v28)
    {
      v29 = v25;
      Count = CFSetGetCount(*(v27 + 88));
      v32 = MEMORY[0x277CBECE8];
      if (v29 >= Count)
      {
        v35 = *MEMORY[0x277CBECE8];
      }

      else
      {
        v33 = mmcs_logging_logger_default(Count, v31);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        v35 = *v32;
        if (v34)
        {
          v36 = CFStringCreateWithFormat(*v32, 0, @"not able to get containers for all files");
          v38 = mmcs_logging_logger_default(v36, v37);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v36;
            _os_log_impl(&dword_2577D8000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          if (v36)
          {
            CFRelease(v36);
          }
        }
      }

      MutableCopy = CFSetCreateMutableCopy(v35, 0, v28);
      req_process_another_file_groups_message = mmcs_get_req_process_another_file_groups_message(a3, MutableCopy, v22, 0, &cf);
      v59 = req_process_another_file_groups_message == 0;
      if (!req_process_another_file_groups_message)
      {
        v60 = 0;
        if (!MutableCopy)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

      v64 = *(*(a3 + 304) + 112);
      if (*(v64 + 16))
      {
        v65 = 0;
        v66 = 8;
        do
        {
          CFSetRemoveValue(MutableCopy, *(*(v64 + 32) + v66));
          ++v65;
          v64 = *(*(a3 + 304) + 112);
          v66 += 128;
        }

        while (v65 < *(v64 + 16));
      }

      if (CFSetGetCount(MutableCopy) >= 1)
      {
        v67 = CFCopyDescription(MutableCopy);
        v69 = mmcs_logging_logger_default(v67, v68);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = CFStringCreateWithFormat(v35, 0, @"The server did not reply about the following items but should have: %@", v67);
          v72 = mmcs_logging_logger_default(v70, v71);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v70;
            _os_log_impl(&dword_2577D8000, v72, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v70)
          {
            CFRelease(v70);
          }
        }

        if (v67)
        {
          CFRelease(v67);
        }

        v73 = mmcs_cferror_create_error(@"com.apple.mmcs", 8, @"Item not found on the server");
        mmcs_get_item_progress_make_done_error(v73, v74, buf);
        mmcs_get_request_set_progress_and_notify_items_like_items_in_set(a3, MutableCopy, buf);
        if (v73)
        {
          CFRelease(v73);
        }
      }

      v60 = 1;
      if (MutableCopy)
      {
LABEL_53:
        CFRelease(MutableCopy);
      }
    }

    else
    {
      v50 = mmcs_logging_logger_default(v25, v26);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v56 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"mrc->itemsWithDistinctSignaturesForGetChunks is NULL");
        v58 = mmcs_logging_logger_default(v56, v57);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v56;
          _os_log_impl(&dword_2577D8000, v58, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v56)
        {
          CFRelease(v56);
        }
      }

      v59 = 1;
      v60 = 0;
      cf = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"mrc->itemsWithDistinctSignaturesForGetChunks is NULL", v51, v52, v53, v54, v55);
    }

LABEL_54:
    v75 = cf;
    if (v59 && cf)
    {
      CFRetain(cf);
      v75 = cf;
      v101 = cf;
    }

    if (v75)
    {
      CFRelease(v75);
    }

    if (v60)
    {
      if (mmcs_request_setup_proxy_locator_for_containers(a3, *(*(*(a3 + 304) + 112) + 40)))
      {
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 0x40000000;
        v100[2] = __handle_response_authorizeGetForChunks_block_invoke;
        v100[3] = &__block_descriptor_tmp_193;
        v100[4] = a3;
        req_schedule_new_containers = mmcs_proxy_locator_locate(*(a3 + 192), v100);
LABEL_71:
        v82 = 0;
        goto LABEL_76;
      }

      req_schedule_new_containers = mmcs_get_req_schedule_new_containers(a3, &v101);
      if (req_schedule_new_containers != -1)
      {
        goto LABEL_71;
      }

      v83 = mmcs_logging_logger_default(req_schedule_new_containers, v77);
      req_schedule_new_containers = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
      if (req_schedule_new_containers)
      {
        v79 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to schedule new containers");
        v81 = mmcs_logging_logger_default(v79, v84);
        req_schedule_new_containers = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
        if (!req_schedule_new_containers)
        {
LABEL_66:
          if (v79)
          {
            CFRelease(v79);
          }

          goto LABEL_75;
        }

        *buf = 138543362;
        *&buf[4] = v79;
LABEL_65:
        _os_log_impl(&dword_2577D8000, v81, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        goto LABEL_66;
      }
    }

    else
    {
      v78 = mmcs_logging_logger_default(v75, v61);
      req_schedule_new_containers = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
      if (req_schedule_new_containers)
      {
        v79 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to process auth get response for chunks");
        v81 = mmcs_logging_logger_default(v79, v80);
        req_schedule_new_containers = os_log_type_enabled(v81, OS_LOG_TYPE_ERROR);
        if (!req_schedule_new_containers)
        {
          goto LABEL_66;
        }

        *buf = 138543362;
        *&buf[4] = v79;
        goto LABEL_65;
      }
    }

LABEL_75:
    v82 = 1;
LABEL_76:
    v85 = *(a3 + 72);
    v86 = mmcs_logging_logger_default(req_schedule_new_containers, v77);
    if (v85)
    {
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v92 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"couldn't create proxy locator");
        v94 = mmcs_logging_logger_default(v92, v93);
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_84;
        }

        *buf = 138543362;
        *&buf[4] = v92;
        v95 = v94;
        v96 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_83;
      }
    }

    else if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
    {
      v92 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"not using proxy locator");
      v98 = mmcs_logging_logger_default(v92, v97);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_84;
      }

      *buf = 138543362;
      *&buf[4] = v92;
      v95 = v98;
      v96 = OS_LOG_TYPE_DEBUG;
LABEL_83:
      _os_log_impl(&dword_2577D8000, v95, v96, "%{public}@", buf, 0xCu);
LABEL_84:
      if (v92)
      {
        CFRelease(v92);
      }
    }

    if (v82)
    {
      v99 = v101;
      if (!v101)
      {
        v99 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 1, @"Failed handle_response_authorizeGetForChunks", v87, v88, v89, v90, v91);
        v101 = v99;
      }

      mmcs_get_req_context_cleanup(a3, v99);
      if (v101)
      {
        CFRelease(v101);
      }

      v101 = 0;
    }

    chunkserver__file_groups__free_unpacked(v22, 0);
    goto LABEL_93;
  }

  v40 = mmcs_logging_logger_default(v24, v23);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    v46 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Malformed response body");
    v48 = mmcs_logging_logger_default(v46, v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v46;
      _os_log_impl(&dword_2577D8000, v48, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v46)
    {
      CFRelease(v46);
    }
  }

  v49 = mmcs_cferror_create_with_format(@"com.apple.mmcs", 6, @"Malformed response body", v41, v42, v43, v44, v45);
  mmcs_get_req_context_cleanup(a3, v49);
  if (v49)
  {
    CFRelease(v49);
  }

LABEL_93:
  os_activity_scope_leave(&state);
}