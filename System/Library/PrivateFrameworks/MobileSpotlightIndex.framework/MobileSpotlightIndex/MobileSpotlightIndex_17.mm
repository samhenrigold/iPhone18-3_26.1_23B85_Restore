uint64_t addContactInfoToContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  _MDPlistContainerBeginDictionary();
  _MDPlistContainerAddCString();
  _MDPlistContainerAddObject();
  if (a4)
  {
    v30 = a3;
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (i = 0; i != 32; i += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
    a3 = v30;
  }

  if (a5)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (j = 0; j != 32; j += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a6)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (k = 0; k != 32; k += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a7)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (m = 0; m != 32; m += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a8)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (n = 0; n != 32; n += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a9)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (ii = 0; ii != 32; ii += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a10)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (jj = 0; jj != 32; jj += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a11)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (kk = 0; kk != 32; kk += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a12)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (mm = 0; mm != 32; mm += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a13)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerBeginArray();
    for (nn = 0; nn != 32; nn += 8)
    {
      _MDPlistContainerAddInt64Value();
    }

    _MDPlistContainerEndArray();
  }

  if (a3)
  {
    _MDPlistContainerAddCString();
    _MDPlistContainerAddObject();
  }

  return _MDPlistContainerEndDictionary();
}

uint64_t SIGetCSAttributes(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, int a6, const void *a7)
{
  v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040D1AEC469uLL);
  *v14 = a1;
  *(v14 + 1) = CFRetain(a2);
  *(v14 + 2) = CFRetain(a3);
  *(v14 + 3) = CFRetain(a4);
  v14[4] = CFAbsoluteTimeGetCurrent();
  if (a5)
  {
    CFRetain(a5);
  }

  *(v14 + 5) = a5;
  *(v14 + 12) = a6;
  *(v14 + 7) = _Block_copy(a7);
  v15 = *(a1 + 1088);
  v16 = qos_class_self();
  si_enqueue_work_with_qos(v15, v16, si_getCSAttr, v14);
  return 0;
}

void si_getCSAttr(__n128 a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v92[5] = *MEMORY[0x1E69E9840];
  if (v4 && *(v1 + 16))
  {
    (*(*(v1 + 56) + 16))(v2);
    goto LABEL_15;
  }

  if (dword_1EBF46B00 >= 5)
  {
    v68 = *__error();
    v69 = _SILogForLogForCategory(13);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = qos_class_self();
      _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "si_getCSAttr at qos 0x%x", buf, 8u);
    }

    *__error() = v68;
  }

  v5 = CFGetTypeID(*(v3 + 16));
  if (v5 != CFArrayGetTypeID())
  {
    if (v5 == CFDataGetTypeID())
    {
      v16 = *(v3 + 16);
      Length = CFDataGetLength(v16);
      if (Length >= 8)
      {
        v23 = Length;
        v9 = Length >> 3;
        BytePtr = CFDataGetBytePtr(v16);
        v15 = *BytePtr != 0;
        if (*BytePtr)
        {
          ++v9;
          v24 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
          *v24 = 0;
          memcpy(v24 + 1, BytePtr, v23 & 0xFFFFFFFFFFFFFFF8);
          BytePtr = v24;
        }

        v11 = malloc_type_calloc(v9, 1uLL, 0x20885BCDuLL);
        v6 = 0;
        goto LABEL_29;
      }
    }

LABEL_13:
    (*(*(v3 + 56) + 16))();
    v11 = 0;
    goto LABEL_14;
  }

  if (!*(v3 + 8))
  {
    goto LABEL_13;
  }

  v6 = *(v3 + 16);
  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    goto LABEL_13;
  }

  v8 = Count;
  v9 = Count + 1;
  BytePtr = malloc_type_malloc(8 * (Count + 1), 0x100004000313F17uLL);
  v11 = malloc_type_calloc(v9, 1uLL, 0x129CC630uLL);
  v12 = 0;
  *BytePtr = 0;
  do
  {
    v13 = *(v3 + 8);
    ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 16), v12);
    BytePtr[++v12] = si_compute_oid_for_identifier(v13, ValueAtIndex);
  }

  while (v8 != v12);
  v15 = 1;
LABEL_29:
  if (v9 < 2 || (*(v3 + 48) & 1) == 0)
  {
    goto LABEL_91;
  }

  v25 = *v3;
  v83 = *(*v3 + 6624);
  if (!v83)
  {
LABEL_92:
    v92[0] = 0;
    v91[0] = 0;
    idx = 0;
    SIFlattenArrayToCStringVector(*(v3 + 24), v92, v91, &idx);
    v62 = *__error();
    v63 = _SILogForLogForCategory(5);
    v64 = 2 * (dword_1EBF46AE0 < 4);
    if (os_log_type_enabled(v63, v64))
    {
      v65 = CFAbsoluteTimeGetCurrent() - *(v3 + 32);
      *buf = 134217984;
      *&buf[4] = v65;
      _os_log_impl(&dword_1C278D000, v63, v64, "Waited %f seconds on scheduler", buf, 0xCu);
    }

    *__error() = v62;
    Mutable = _MDPlistBytesCreateMutable();
    _MDPlistBytesBeginPlist();
    _MDPlistBytesBeginArray();
    v67 = v92[0];
    _fillPlistBytes(*v3, Mutable, v92[0], idx, BytePtr, v9, v11, 0, *(v3 + 40), 0, v6, *(v3 + 8));
    _MDPlistBytesEndArray();
    _MDPlistBytesEndPlist();
    (*(*(v3 + 56) + 16))();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    free(v67);
    if (v15)
    {
      goto LABEL_99;
    }

    goto LABEL_14;
  }

  v26 = *(v25 + 1192);
  memset(v92, 0, 32);
  memset(v91, 0, sizeof(v91));
  theArray = v6;
  v73 = v15;
  v76 = v26;
  v72 = v25;
  if (v6)
  {
    v75 = db_copy_field_ids_with_buffer(v26, "_kMDItemExternalID", v92, 8uLL);
    v77 = db_copy_field_ids_with_buffer(v26, "_kMDItemBundleID", v91, 8uLL);
    *buf = 0u;
    v90 = 0u;
    LOBYTE(v87) = 0;
    v27 = fasterUTF8String(*(v3 + 8), &idx, buf, 32, &v87);
    id_for_string = db_get_id_for_string(v26, v27);
    if (v87 == 1)
    {
      free(v27);
    }
  }

  else
  {
    id_for_string = 0;
    v77 = 0;
    v75 = 0;
  }

  v28 = *MEMORY[0x1E695E480];
  theSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v29 = CFSetCreateMutable(v28, 0, 0);
  v74 = BytePtr;
  v30 = db_obj_iter_create_with_filter(*(*v3 + 1192), v9 - 1, (BytePtr + 1), 0, 0, 0, 0, 0, 0);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  for (i = 1; i != v9; ++i)
  {
    idx = 0;
    v38 = db_obj_iter_next(v30, &idx, 1, v31, v32, v33);
    if (!v38)
    {
      continue;
    }

    v39 = v38;
    v40 = *v38;
    if (*v38 < 3 || v11[i])
    {
      continue;
    }

    if (theArray)
    {
      v86 = 0;
      v87 = 0;
      if (db_get_field_by_id(v76, v38, v77, &v87, &v86) || *(v87 + 13) != id_for_string || db_get_field_by_id(v76, v39, v75, &v87, &v86))
      {
        goto LABEL_48;
      }

      v41 = CFArrayGetValueAtIndex(theArray, idx);
      *buf = 0u;
      v90 = 0u;
      v85 = 0;
      v79 = fasterUTF8String(v41, &v84, buf, 32, &v85);
      v42 = strcmp((v87 + 13), v79);
      if (v85 == 1)
      {
        v70 = v42;
        free(v79);
        v42 = v70;
      }

      if (v42)
      {
LABEL_48:
        if (v36 >= v35)
        {
          if (v35)
          {
            v35 *= 2;
          }

          else
          {
            v35 = 4;
          }

          v34 = malloc_type_realloc(v34, 8 * v35, 0x100004000313F17uLL);
        }

        *(v34 + v36++) = idx;
        continue;
      }

      v80 = v34;
      v40 = *v39;
    }

    else
    {
      v80 = v34;
    }

    CFSetAddValue(theSet, v40);
    CFSetRemoveValue(v29, *v39);
    v43 = v39[3];
    if (v43 >= 3 && !CFSetGetValue(theSet, v43))
    {
      CFSetAddValue(v29, v39[3]);
    }

    v34 = v80;
  }

  v81 = v34;
  db_obj_iter_release(v30);
  v6 = theArray;
  if (v36)
  {
    v44 = v34;
    do
    {
      v45 = *v44++;
      v46 = CFArrayGetValueAtIndex(theArray, v45);
      *buf = 0;
      if (!si_get_object_for_identifier_createParentDBO(v72, *(v3 + 8), v46, 0, 0, 0, buf, 0))
      {
        CFSetAddValue(theSet, **buf);
        CFSetRemoveValue(v29, **buf);
        v47 = *(*buf + 24);
        if (v47 >= 3 && !CFSetGetValue(theSet, v47))
        {
          CFSetAddValue(v29, *(*buf + 24));
        }
      }

      --v36;
    }

    while (v36);
  }

  v48 = CFSetGetCount(v29);
  if (v48)
  {
    v49 = v48;
    v50 = malloc_type_malloc(8 * v48, 0x100004000313F17uLL);
    CFSetGetValues(v29, v50);
    CFSetRemoveAllValues(v29);
    for (j = 0; j != v49; ++j)
    {
      v52 = v50[j];
      if (!CFSetGetValue(v29, v52))
      {
        v53 = v9;
        v54 = v11;
        CFSetAddValue(v29, v52);
        bzero(buf, 0x1000uLL);
        Path = directoryStoreGetPath(v83, v52, buf);
        if (Path >= 2)
        {
          v56 = Path - 1;
          do
          {
            v57 = *&buf[8 * --v56];
            if (v57 < 3)
            {
              break;
            }

            if (CFSetGetValue(v29, *&buf[8 * v56]))
            {
              break;
            }

            CFSetAddValue(v29, v57);
          }

          while (v56 > 0);
        }

        v11 = v54;
        v9 = v53;
      }
    }

    free(v50);
    v6 = theArray;
  }

  CFRelease(theSet);
  if (v75 != v92)
  {
    free(v75);
  }

  BytePtr = v74;
  v15 = v73;
  if (v77 != v91)
  {
    free(v77);
  }

  free(v81);
  if (v29)
  {
    v58 = CFSetGetCount(v29);
    if (v58)
    {
      v59 = v58;
      v60 = v58 + v9;
      if (v73)
      {
        BytePtr = malloc_type_realloc(v74, 8 * (v58 + v9), 0x100004000313F17uLL);
      }

      else
      {
        v61 = malloc_type_malloc(8 * (v58 + v9), 0x100004000313F17uLL);
        memcpy(v61, v74, 8 * v9);
        BytePtr = v61;
        v6 = theArray;
      }

      CFSetGetValues(v29, &BytePtr[v9]);
      v11 = malloc_type_realloc(v11, v60, 0x9377B71FuLL);
      bzero(&v11[v60], v59);
      v15 = 1;
      v9 = v60;
    }

    CFRelease(v29);
  }

LABEL_91:
  if (v9)
  {
    goto LABEL_92;
  }

  (*(*(v3 + 56) + 16))();
  if (v15)
  {
LABEL_99:
    free(BytePtr);
  }

LABEL_14:
  free(v11);
LABEL_15:
  v18 = *(v3 + 8);
  if (v18)
  {
    CFRelease(v18);
  }

  *(v3 + 8) = 0;
  v19 = *(v3 + 16);
  if (v19)
  {
    CFRelease(v19);
  }

  *(v3 + 16) = 0;
  v20 = *(v3 + 56);
  if (v20)
  {
    CFRelease(v20);
  }

  *(v3 + 56) = 0;
  v21 = *(v3 + 24);
  if (v21)
  {
    CFRelease(v21);
  }

  *(v3 + 24) = 0;
  v22 = *(v3 + 40);
  if (v22)
  {
    CFRelease(v22);
  }

  free(v3);
}

void indexContactGraphData(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3)
  {
    if (a2)
    {
      goto LABEL_10;
    }

    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    v6 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v5, v6))
    {
      Count = CFDictionaryGetCount(*a1);
      *buf = 134217984;
      *&buf[4] = Count;
      _os_log_impl(&dword_1C278D000, v5, v6, "Index contact graph data; %ld items", buf, 0xCu);
    }

    *__error() = v4;
    memcpy(buf, (a1 + 8), sizeof(buf));
    v8 = *MEMORY[0x1E695E480];
    Mutable = _MDPlistContainerCreateMutable();
    v32 = Mutable;
    _MDPlistContainerBeginContainer();
    _MDPlistContainerBeginArray();
    CFDictionaryApplyFunction(*a1, flushGraphCacheApply2, buf);
    _MDPlistContainerAddNullValue();
    _MDPlistContainerEndArray();
    _MDPlistContainerEndContainer();
    Bytes = _MDPlistContainerGetBytes();
    Length = _MDPlistContainerGetLength();
    v12 = CFDataCreateWithBytesNoCopy(v8, Bytes, Length, *MEMORY[0x1E695E498]);
    if (!SISetCodedAttributes(*(a1 + 328), @"com.apple.MobileAddressBook", 0, 0, v12, 0, 0, 0, 0, 9, 0, 0))
    {
      v13 = *__error();
      v14 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v27 = 136315394;
        v28 = "indexContactGraphData";
        v29 = 1024;
        v30 = 30008;
        _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: SISetCodedAttributes failed in indexContactGraphData", v27, 0x12u);
      }

      *__error() = v13;
    }

    CFRelease(v12);
    CFRelease(Mutable);
    v3 = *a1;
    if (*a1)
    {
LABEL_10:
      CFRelease(v3);
    }

    *a1 = 0;
    v15 = *(a1 + 24);
    *buf = *(a1 + 8);
    *&buf[16] = v15;
    v16 = *(a1 + 56);
    *&buf[32] = *(a1 + 40);
    *&buf[48] = v16;
    releaseCommDates(buf);
    v17 = *(a1 + 88);
    *buf = *(a1 + 72);
    *&buf[16] = v17;
    v18 = *(a1 + 120);
    *&buf[32] = *(a1 + 104);
    *&buf[48] = v18;
    releaseCommDates(buf);
    v19 = *(a1 + 152);
    *buf = *(a1 + 136);
    *&buf[16] = v19;
    v20 = *(a1 + 184);
    *&buf[32] = *(a1 + 168);
    *&buf[48] = v20;
    releaseCommDates(buf);
    v21 = *(a1 + 216);
    *buf = *(a1 + 200);
    *&buf[16] = v21;
    v22 = *(a1 + 248);
    *&buf[32] = *(a1 + 232);
    *&buf[48] = v22;
    releaseCommDates(buf);
    v23 = *(a1 + 280);
    *buf = *(a1 + 264);
    *&buf[16] = v23;
    v24 = *(a1 + 312);
    *&buf[32] = *(a1 + 296);
    *&buf[48] = v24;
    releaseCommDates(buf);
    free(a1);
  }

  else
  {
    v25 = *__error();
    v26 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "indexContactGraphData";
      *&buf[12] = 1024;
      *&buf[14] = 29984;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: ~~~ No ctx->usedDates.", buf, 0x12u);
    }

    *__error() = v25;
  }
}

uint64_t si_compute_oid_for_identifier(const __CFString *a1, const __CFString *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v14, 0x400uLL);
  v12 = 0;
  v11 = 0;
  if (a2)
  {
    v4 = fasterUTF8String(a2, &v11, v14, 1024, &v12);
  }

  else
  {
    v4 = "";
  }

  memset(v13, 0, sizeof(v13));
  v10 = 0;
  v9 = 0;
  if (a1)
  {
    v5 = fasterUTF8String(a1, &v9, v13, 128, &v10);
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v5 = "";
  }

  v7 = si_compute_oid_for_identifier_bundle_id(v4, v11, v5, v6);
  if (v12 == 1)
  {
    free(v4);
  }

  if (v10 == 1)
  {
    free(v5);
  }

  return v7;
}

uint64_t _fillPlistBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8, uint64_t a9, unsigned __int8 a10, const __CFArray *a11, const __CFString *a12)
{
  v403 = a7;
  v404 = a8;
  v401 = a2;
  v402 = a5;
  v430 = *MEMORY[0x1E69E9840];
  v400 = a1;
  v15 = *(a1 + 1192);
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v17 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, v15, 0x40000000, add_explicit + 1);
  v421 = v17;
  v18 = threadData[9 * v17 + 1] + 320 * HIDWORD(v17);
  v420 = HIDWORD(v17);
  v419 = v19;
  v418 = v20;
  *(v18 + 216) = 0;
  v21 = *(v18 + 312);
  v22 = *(v18 + 224);
  if (v22)
  {
    v22(*(v18 + 288));
  }

  v417 = v421;
  v416 = v420;
  v415 = v419;
  v414 = v418;
  if (_setjmp(v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v425) = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", &v425, 2u);
    }

    *(v18 + 312) = v21;
    CIOnThreadCleanUpReset(v414);
    dropThreadId(v417, 1, add_explicit + 1);
    return CICleanUpReset(v417, v415);
  }

  v25 = a4 + 1;
  v405 = a4;
  v406 = a6;
  v408 = add_explicit;
  v407 = v21;
  v361 = a3;
  if (a9)
  {
    v26 = *(a9 + 168);
    v413 = 0;
    if (v26)
    {
      Value = CFDictionaryGetValue(v26, @"_showAllExtensions");
      if (Value)
      {
        v28 = Value;
        v29 = CFGetTypeID(Value);
        if (v29 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v28, kCFNumberIntType, &v413);
        }
      }
    }
  }

  else
  {
    v413 = 0;
  }

  v399 = &v354;
  MEMORY[0x1EEE9AC00](v23);
  v30 = (8 * v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v358 = 8 * v25;
  bzero(&v354 - v30, 8 * v25);
  MEMORY[0x1EEE9AC00](v31);
  bzero(&v354 - v30, 8 * v25);
  v379 = a4 + 1;
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v354 - ((4 * v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v33, 4 * v25);
  MEMORY[0x1EEE9AC00](v34);
  v378 = v33;
  bzero(v33, 4 * v25);
  v36 = 0;
  v37 = v400;
  v429[0] = *(v400 + 2020);
  v429[1] = 0;
  if (v15)
  {
    v36 = v429;
  }

  v397 = &v354 - v30;
  *(&v354 - v30) = v36;
  v393 = &v354 - v30;
  *(&v354 - v30) = "kMDItemLangugeStrId";
  if (a9)
  {
    v38 = *(a9 + 176);
  }

  else
  {
    v38 = 0;
  }

  v398 = a9;
  v381 = v397;
  v396 = v393;
  v383 = &v354 - ((4 * v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v395 = &v354 - v30;
  bzero(&v354 - v30, v358);
  v391 = &v354 - v30;
  *(&v354 - v30) = 0;
  v40 = v405;
  if (v405 < 1)
  {
    v61 = 1;
    v60 = 0;
  }

  else
  {
    v41 = v361 - 8;
    v42 = 1;
    v43 = 0;
    v44 = 1;
    do
    {
      v45 = v44;
      v46 = v42;
      v47 = *(v41 + 8 * v42);
      v48 = strcmp(v47, "kMDItemDisplayName");
      if (v413)
      {
        v49 = v48 == 0;
      }

      else
      {
        v49 = 0;
      }

      if (v49)
      {
        v50 = "_kMDItemDisplayNameWithExtensionsSynth";
      }

      else
      {
        v50 = v47;
      }

      v51 = v50;
      *&v396[8 * v46] = v50;
      if ((isEntitledForAttribute(v38, v50) & 1) == 0)
      {
        v51 = "__DENIED__";
        *&v396[8 * v46] = "__DENIED__";
      }

      if (v15)
      {
        v52 = db_copy_field_ids_with_buffer(v15, v51, 0, 0);
      }

      else
      {
        v52 = 0;
      }

      *&v381[8 * v46] = v52;
      v53 = strlen(v51);
      v54 = CannedFieldTable::in_word_set(v51, v53);
      *&v395[8 * v46] = v54;
      *&v383[4 * v46] = 0;
      if (v54 != 0 && v45)
      {
        v45 = strcmp(v51, "_kMDItemSDBInfo") != 0;
      }

      v44 = v45;
      if (v15)
      {
        v37 = v400;
        if (v54 && (v55 = v54[4]) != 0)
        {
          v56 = (v55)(v400);
          v40 = v405;
          if (v56 && *v56)
          {
            v57 = 0;
            do
            {
              v58 = v57 + 1;
            }

            while (v56[++v57]);
            v43 += v58;
            *&v383[4 * v46] = v58;
          }
        }

        else
        {
          v40 = v405;
        }
      }

      else
      {
        v40 = v405;
        v37 = v400;
      }

      v60 = v43;
      v42 = v46 + 1;
      v61 = v44;
    }

    while (v46 != v40);
  }

  v386 = v61;
  v389 = a11;
  v394 = v60;
  MEMORY[0x1EEE9AC00](v39);
  v63 = (&v354 - v62);
  bzero(&v354 - v62, v64);
  if ((v40 & 0x8000000000000000) == 0)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    while (1)
    {
      v68 = v66;
      v69 = *&v381[8 * v66];
      if (v69 && *v69)
      {
        v70 = v69 + 1;
        do
        {
          v71 = *v70++;
          v72 = (v65 + 1);
          LODWORD(v65) = v65 + 1;
        }

        while (v71);
        if (v15)
        {
LABEL_55:
          v73 = *&v395[8 * v68];
          if (v73)
          {
            v74 = *(v73 + 32);
            if (v74)
            {
              v75 = v74(v37);
              if (v75)
              {
                if (*v75)
                {
                  v76 = v75;
                  v77 = *v75;
                  v78 = v67;
                  v79 = 0;
                  v80 = v72;
                  do
                  {
                    v81 = v78;
                    v82 = db_copy_field_ids_with_buffer(v15, v77, 0, 0);
                    v63[v81] = v82;
                    if (v82 && *v82)
                    {
                      v83 = v82 + 1;
                      do
                      {
                        v84 = *v83++;
                        v85 = (v80 + 1);
                        LODWORD(v80) = v80 + 1;
                      }

                      while (v84);
                    }

                    else
                    {
                      v85 = v80;
                    }

                    v77 = v76[++v79];
                    v78 = v81 + 1;
                    v80 = v85;
                  }

                  while (v77);
                  v67 = v81 + 1;
                  v72 = v85;
                  v37 = v400;
                }
              }
            }
          }
        }
      }

      else
      {
        v72 = v65;
        if (v15)
        {
          goto LABEL_55;
        }
      }

      v86 = v72;
      v66 = v68 + 1;
      v65 = v72;
      if (v68 == v40)
      {
        goto LABEL_71;
      }
    }
  }

  v86 = 0;
LABEL_71:
  v87 = v86;
  if (v389)
  {
    v88 = db_copy_field_ids_with_buffer(v15, "kMDItemBundleID", 0, 0);
    v90 = v378;
    v89 = v379;
    if (v88 && *v88)
    {
      v91 = v88 + 1;
      v92 = v87;
      do
      {
        ++v92;
        v93 = *v91++;
        v87 = v92;
      }

      while (v93);
    }

    free(v88);
    v94 = db_copy_field_ids_with_buffer(v15, "_kMDItemExternalID", 0, 0);
    if (v94 && *v94)
    {
      v95 = v94 + 1;
      v96 = v87;
      do
      {
        ++v96;
        v97 = *v95++;
        v87 = v96;
      }

      while (v97);
    }

    free(v94);
  }

  else
  {
    v90 = v378;
    v89 = v379;
  }

  if (((v87 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && (8 * v87) > *MEMORY[0x1E69E9AC8])
  {
    ++sTotal_9353;
  }

  v98 = malloc_type_zone_calloc(queryZone, v87, 8uLL, 0x5BAF1CEAuLL);
  if (!v98)
  {
    _log_fault_for_malloc_failure();
  }

  v390 = v90;
  v392 = v87;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v354 - v100;
  v102 = &v354 - v100;
  bzero(&v354 - v100, v103);
  if (v40 < 0)
  {
    v125 = v98;
    v382 = v101;
    v161 = v89;
    v159 = 0;
    v158 = 0;
    v160 = 0;
    v107 = v392;
    goto LABEL_129;
  }

  v104 = 0;
  v105 = 0;
  v106 = 0;
  v107 = v392;
  v108 = v390;
  do
  {
    v109 = v104;
    v110 = *&v381[8 * v104];
    if (v110 && *v110)
    {
      v111 = *v110;
      v112 = v106;
      v113 = v105;
      if (v105 <= v107)
      {
        v114 = v107;
      }

      else
      {
        v114 = v105;
      }

      v115 = (v114 - v105);
      if (v106 <= v107)
      {
        v116 = v107;
      }

      else
      {
        v116 = v106;
      }

      v117 = (v116 - v106);
      v118 = &v98[8 * v106 + 4];
      v119 = v110 + 1;
      v120 = v115;
      while (v120)
      {
        *&v102[4 * v113] = v111;
        if (!v117)
        {
          v308 = __si_assert_copy_extra_332();
          v233 = v308;
          v316 = "";
          if (v308)
          {
            v316 = v308;
          }

          __message_assert_336(v308, v309, v310, v311, v312, v313, v314, v315, "SIFetching.c", 862, "sortedFieldIdPairIndex < totalFlattenedFieldCount", v316);
          goto LABEL_301;
        }

        v121 = v113 + 1;
        *(v118 - 1) = *(v119 - 1);
        *v118 = v109;
        v122 = v112 + 1;
        v123 = *v119++;
        v111 = v123;
        v118 += 8;
        --v117;
        --v120;
        ++v113;
        ++v112;
        if (!v123)
        {
          goto LABEL_103;
        }
      }

      v299 = __si_assert_copy_extra_332();
      v233 = v299;
      v307 = "";
      if (v299)
      {
        v307 = v299;
      }

      __message_assert_336(v299, v300, v301, v302, v303, v304, v305, v306, "SIFetching.c", 857, "flattenedIndex < totalFlattenedFieldCount", v307);
LABEL_301:
      free(v233);
      if (__valid_fs(-1))
      {
        v317 = 2989;
      }

      else
      {
        v317 = 3072;
      }

      *v317 = -559038737;
      abort();
    }

    v121 = v105;
    v122 = v106;
LABEL_103:
    v104 = v109 + 1;
    v106 = v122;
    v105 = v121;
  }

  while (v109 != v40);
  v382 = v101;
  v124 = v89;
  v125 = v98;
  v126 = v98 + 4;
  v127 = 0;
  v128 = 0;
  v129 = v122;
  v130 = v121;
  do
  {
    v131 = v129;
    v132 = v127;
    *&v108[4 * v127] = 0;
    v133 = *&v395[8 * v127];
    if (v133)
    {
      if (*(v133 + 32))
      {
        v134 = *&v383[4 * v132];
        *&v108[4 * v132] = v124;
        if (v134 >= 1)
        {
          v135 = v128;
          v136 = v129;
          v137 = v130;
          v138 = v124;
          v139 = 0;
          while (1)
          {
            v140 = v63[v135];
            if (!v140)
            {
              v156 = v138;
              goto LABEL_124;
            }

            v141 = *v140;
            if (!*v140)
            {
              goto LABEL_122;
            }

            v142 = v136;
            v143 = v137;
            if (v137 <= v107)
            {
              v144 = v107;
            }

            else
            {
              v144 = v137;
            }

            v145 = (v144 - v137);
            if (v136 <= v107)
            {
              v146 = v107;
            }

            else
            {
              v146 = v136;
            }

            v147 = (v146 - v136);
            v148 = &v126[8 * v136];
            v149 = v140 + 1;
            v150 = v145;
            v151 = v148;
            v152 = v141;
            do
            {
              if (!v150)
              {
                v225 = __si_assert_copy_extra_332();
                v233 = v225;
                v234 = "";
                if (v225)
                {
                  v234 = v225;
                }

                __message_assert_336(v225, v226, v227, v228, v229, v230, v231, v232, "SIFetching.c", 890, "flattenedIndex < totalFlattenedFieldCount", v234);
                goto LABEL_301;
              }

              *&v102[4 * v143] = v152;
              if (!v147)
              {
                v235 = __si_assert_copy_extra_332();
                v243 = v235;
                v244 = "";
                if (v235)
                {
                  v244 = v235;
                }

                __message_assert_336(v235, v236, v237, v238, v239, v240, v241, v242, "SIFetching.c", 895, "sortedFieldIdPairIndex < totalFlattenedFieldCount", v244);
                goto LABEL_209;
              }

              v153 = v143 + 1;
              *(v151 - 1) = *(v149 - 1);
              *v151 = v138;
              v154 = v142 + 1;
              v155 = *v149++;
              v152 = v155;
              v151 += 8;
              --v147;
              --v150;
              ++v143;
              ++v142;
            }

            while (v155);
            v137 = v153;
            v136 = v154;
LABEL_122:
            v156 = (v138 + 1);
LABEL_124:
            v130 = v137;
            v131 = v136;
            v157 = v135 + 1;
            ++v139;
            ++v135;
            v138 = v156;
            if (v139 == v134)
            {
              v124 = v156;
              v128 = v157;
              break;
            }
          }
        }
      }
    }

    v158 = v128;
    v159 = v131;
    v160 = v130;
    v161 = v124;
    v127 = v132 + 1;
    v129 = v131;
  }

  while (v132 != v405);
LABEL_129:
  if (v389)
  {
    v162 = db_copy_field_ids_with_buffer(v15, "kMDItemBundleID", 0, 0);
    if (v162 && *v162)
    {
      v163 = *v162;
      v164 = v159;
      v165 = v160;
      if (v392 <= v159)
      {
        v166 = v159;
      }

      else
      {
        v166 = v392;
      }

      v167 = (v166 - v159);
      v168 = &v125[8 * v159 + 4];
      v169 = v162 + 1;
      v170 = v167;
      while (1)
      {
        *&v102[4 * v165] = v163;
        if (!v170)
        {
          break;
        }

        v171 = v165 + 1;
        *(v168 - 1) = *(v169 - 1);
        *v168 = v161;
        v172 = v164 + 1;
        v173 = *v169++;
        v163 = v173;
        v168 += 8;
        --v170;
        ++v165;
        ++v164;
        if (!v173)
        {
          v160 = v171;
          v159 = v172;
          goto LABEL_139;
        }
      }

      v318 = __si_assert_copy_extra_332();
      v233 = v318;
      v326 = "";
      if (v318)
      {
        v326 = v318;
      }

      __message_assert_336(v318, v319, v320, v321, v322, v323, v324, v325, "SIFetching.c", 914, "sortedFieldIdPairIndex < totalFlattenedFieldCount", v326);
      goto LABEL_301;
    }

LABEL_139:
    free(v162);
    v174 = db_copy_field_ids_with_buffer(v15, "_kMDItemExternalID", 0, 0);
    if (v174 && *v174)
    {
      v175 = *v174;
      v176 = v160;
      if (v159 <= v392)
      {
        v177 = v392;
      }

      else
      {
        v177 = v159;
      }

      v178 = (v177 - v159);
      v179 = &v125[8 * v159];
      v180 = v125;
      v181 = v179 + 4;
      v182 = v174 + 1;
      v183 = v178;
      v184 = MEMORY[0x1E69E9AC8];
      while (1)
      {
        *&v102[4 * v176] = v175;
        if (!v183)
        {
          break;
        }

        v185 = v176 + 1;
        *(v181 - 1) = *(v182 - 1);
        *v181 = v161;
        v186 = *v182++;
        v175 = v186;
        v181 += 2;
        --v183;
        ++v176;
        if (!v186)
        {
          v160 = v185;
          goto LABEL_149;
        }
      }

      v327 = __si_assert_copy_extra_332();
      v243 = v327;
      v335 = "";
      if (v327)
      {
        v335 = v327;
      }

      __message_assert_336(v327, v328, v329, v330, v331, v332, v333, v334, "SIFetching.c", 928, "sortedFieldIdPairIndex < totalFlattenedFieldCount", v335);
LABEL_209:
      free(v243);
      if (__valid_fs(-1))
      {
        v245 = 2989;
      }

      else
      {
        v245 = 3072;
      }

      *v245 = -559038737;
      abort();
    }

    v180 = v125;
    v184 = MEMORY[0x1E69E9AC8];
LABEL_149:
    free(v174);
    v107 = v392;
  }

  else
  {
    v180 = v125;
    v184 = MEMORY[0x1E69E9AC8];
  }

  *&v102[4 * v160] = 0;
  if (v394 != v158)
  {
    v336 = __si_assert_copy_extra_332();
    v233 = v336;
    v344 = "";
    if (v336)
    {
      v344 = v336;
    }

    __message_assert_336(v336, v337, v338, v339, v340, v341, v342, v343, "SIFetching.c", 941, "cannedRequiredAttributeCount == cannedRequiredAttributeIndex", v344);
    goto LABEL_301;
  }

  v388 = v180;
  v187 = v107;
  qsort_b(v180, v107, 8uLL, &__block_literal_global_50_9361);
  qsort_b(v102, v187, 4uLL, &__block_literal_global_53_9362);
  v188 = v406;
  v189 = 8 * v406;
  v190 = malloc_type_zone_malloc(queryZone, 8 * v406, 0xA4971684uLL);
  if (!v190)
  {
    _log_fault_for_malloc_failure();
  }

  if (v188 < 2)
  {
    v196 = 0;
  }

  else
  {
    v191 = v188 - 1;
    v192 = (v402 + 8);
    v193 = (v403 + 1);
    v194 = 0;
    do
    {
      if (!*v193++)
      {
        v190[v194++] = *v192;
      }

      v196 = v194;
      ++v192;
      --v191;
    }

    while (v191);
  }

  v387 = v190;
  v359 = v196;
  if (!(v189 >> 17) && v189 > *v184)
  {
    ++sTotal_9353;
  }

  v197 = malloc_type_zone_calloc(queryZone, 8uLL, v188, 0x5BAF1CEAuLL);
  if (!v197)
  {
    _log_fault_for_malloc_failure();
  }

  v384 = a10;
  memset(v428, 0, sizeof(v428));
  memset(v427, 0, sizeof(v427));
  v198 = v400;
  v199 = v389;
  if (v389)
  {
    v357 = db_copy_field_ids_with_buffer(v15, "_kMDItemExternalID", v428, 8uLL);
    v200 = db_copy_field_ids_with_buffer(v15, "_kMDItemBundleID", v427, 8uLL);
    v425 = 0u;
    v426 = 0u;
    LOBYTE(v412) = 0;
    v201 = fasterUTF8String(a12, v422, &v425, 32, &v412);
    id_for_string = db_get_id_for_string(v15, v201);
    if (v412 == 1)
    {
      free(v201);
    }

    v199 = v357;
  }

  else
  {
    id_for_string = 0;
    v200 = 0;
  }

  v365 = id_for_string;
  v203 = v200;
  v204 = v199;
  v368 = v384;
  v385 = v197;
  v372 = a12;
  if (v15)
  {
    v205 = v359;
    v206 = v382;
    if ((v386 & 1) == 0)
    {
      v206 = 0;
    }

    v207 = db_obj_iter_create_with_filter(v15, v359, v387, 0, 0, 0, 0, 0, v206);
    if (!v207)
    {
      v345 = __si_assert_copy_extra_332();
      v233 = v345;
      v353 = "";
      if (v345)
      {
        v353 = v345;
      }

      __message_assert_336(v345, v346, v347, v348, v349, v350, v351, v352, "SIFetching.c", 1001, "dbIter", v353);
      goto LABEL_301;
    }

    v367 = v204;
    v364 = v207;
    if (v205 < 1)
    {
      v222 = 0;
      v221 = 0;
    }

    else
    {
      v211 = 0;
      v362 = 32;
      v360 = 4;
      v212 = 0;
      v213 = 0;
      v366 = v203;
      do
      {
        *v422 = 0;
        v214 = db_obj_iter_next(v364, v422, 1, v208, v209, v210);
        if (v214)
        {
          v215 = v214;
          if (!v389)
          {
            goto LABEL_196;
          }

          v411 = 0;
          v412 = 0;
          if (db_get_field_by_id(v15, v214, v203, &v412, &v411) || *(v412 + 13) != v365 || db_get_field_by_id(v15, v215, v367, &v412, &v411))
          {
            goto LABEL_185;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v389, *v422);
          v425 = 0u;
          v426 = 0u;
          v410 = 0;
          v217 = fasterUTF8String(ValueAtIndex, &v409, &v425, v362, &v410);
          v218 = strcmp((v412 + 13), v217);
          if (v410 == 1)
          {
            v355 = v218;
            free(v217);
            v218 = v355;
          }

          v203 = v366;
          if (v218)
          {
LABEL_185:
            if (v211 >= v212)
            {
              if (v212)
              {
                v212 *= 2;
              }

              else
              {
                v212 = v360;
              }

              v213 = malloc_type_realloc(v213, 8 * v212, 0x100004000313F17uLL);
            }

            *(v213 + v211++) = *v422;
          }

          else
          {
LABEL_196:
            if (((v368 & 4) == 0 || !isContact(v15, v215, *(v400 + 2008))) && ((v368 & 2) == 0 || (isReminder(v15, v215, *(v400 + 2008)) & 1) == 0) && ((v368 & 1) == 0 || !isCalendar(v15, v215, *(v400 + 2008))))
            {
              v219 = malloc_type_malloc(v215[3], 0x1000040EED21634uLL);
              v220 = v219;
              if (v219)
              {
                memcpy(v219, v215, v215[3]);
                v220[2] = v215[3];
              }

              v385[*v422] = v220;
              v203 = v366;
            }
          }
        }

        v221 = v211;
        v222 = v213;
        --v205;
      }

      while (v205);
    }

    v224 = v221;
    v246 = v222;
    db_obj_iter_release(v364);
    v223 = v246;
    v198 = v400;
    v204 = v367;
  }

  else
  {
    v223 = 0;
    v224 = 0;
  }

  v380 = v223;
  if (v427 != v203)
  {
    free(v203);
  }

  if (v428 != v204)
  {
    free(v204);
  }

  if (v224)
  {
    v247 = v380;
    do
    {
      v248 = v247 + 1;
      v249 = *v247;
      v250 = CFArrayGetValueAtIndex(v389, *v247);
      *&v425 = 0;
      if (!si_get_object_for_identifier_createParentDBO(v198, v372, v250, 0, 0, 0, &v425, 0))
      {
        if ((v368 & 4) != 0 && isContact(v15, v425, *(v198 + 2008)) || (v368 & 2) != 0 && (isReminder(v15, v425, *(v198 + 2008)) & 1) != 0 || (v368 & 1) != 0 && isCalendar(v15, v425, *(v198 + 2008)))
        {
          free(v425);
        }

        else
        {
          v385[v249] = v425;
        }
      }

      v247 = v248;
      --v224;
    }

    while (v224);
  }

  _MDPlistBytesAddNull();
  if (v15)
  {
    db_string_table_rdlock(v15);
  }

  v253 = v406;
  if (v406 >= 2)
  {
    v376 = 8 * (v405 + v394 + 3);
    v377 = v376;
    v254 = 1;
    v374 = v391 + 8;
    v375 = (v393 + 8);
    v373 = 1024;
    *&v251 = 136315394;
    *&v252 = 136315394;
    v370 = v251;
    v371 = v252;
    v255 = 0;
    do
    {
      if (*(v403 + v254))
      {
        _MDPlistBytesAddNull();
      }

      else
      {
        v256 = v385[v255];
        if (v256)
        {
          v369 = v255 + 1;
          _MDPlistBytesBeginArray();
          v363 = &v354;
          MEMORY[0x1EEE9AC00](v257);
          v259 = &v354 - ((v258 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v259, v376);
          db_get_offsets_for_fields(v15, v256, v388, v392, v259);
          if (v405 >= 1)
          {
            v261 = 1;
            v262 = v405;
            do
            {
              v263 = *&v259[8 * v261];
              if (v263)
              {
                MDPlistBytesAddSDBFieldLocalized(v401, v15, *&v259[8 * v261], (v263 + 13), v404, 0, 1, 0, v260);
              }

              else
              {
                v264 = *&v395[8 * v261];
                v265 = *&v396[8 * v261];
                if (!strcmp("kMDItemPath", v265))
                {
                  bzero(&v425, 0x400uLL);
                  v266 = *(v400 + 1416);
                  v267 = *(v266 + 192);
                  if (!v267)
                  {
                    v267 = *(v266 + 40);
                  }

                  v268 = v267();
                  if (v268)
                  {
                    v269 = v268;
                    if (dword_1EBF46AE0 >= 5)
                    {
                      v356 = *__error();
                      v270 = _SILogForLogForCategory(5);
                      if (os_log_type_enabled(v270, OS_LOG_TYPE_DEFAULT))
                      {
                        v271 = *(v402 + 8 * v254);
                        *v422 = v371;
                        *&v422[4] = v269;
                        v423 = 2048;
                        v424 = v271;
                        _os_log_impl(&dword_1C278D000, v270, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", v422, 0x16u);
                      }

                      *__error() = v356;
                    }

                    _MDPlistBytesAddCString();
                  }

                  else
                  {
                    _MDPlistBytesAddNull();
                    if (!(*(*(v400 + 1416) + 40))())
                    {
                      _SIDeleteAttributes(v400, *(v402 + 8 * v254));
                    }
                  }
                }

                else if (!strcmp("kMDItemAttributeChangeDate", v265))
                {
                  _MDPlistBytesAddDate();
                }

                else if (v264)
                {
                  runCannedHelper(*(v264 + 8), v400, v398, *(v402 + 8 * v254), v256, v265, *&v390[4 * v261], v259, v401);
                }

                else
                {
                  _MDPlistBytesAddNull();
                }
              }

              ++v261;
              --v262;
            }

            while (v262);
          }
        }

        else
        {
          if (*(v400 + 48) == -1 && (v384 & 8) != 0)
          {
            _MDPlistBytesAddNull();
            ++v255;
            goto LABEL_259;
          }

          v369 = v255 + 1;
          _MDPlistBytesBeginArray();
          v273 = v374;
          v274 = v375;
          v275 = v405;
          if (v405 >= 1)
          {
            do
            {
              v276 = *v273;
              v277 = *v274;
              if (!strcmp("kMDItemPath", *v274))
              {
                bzero(&v425, v373);
                v278 = v402;
                v279 = v400;
                v280 = (*(*(v400 + 1416) + 40))();
                if (v280)
                {
                  v281 = v280;
                  if (dword_1EBF46AE0 >= 5)
                  {
                    v282 = *__error();
                    v283 = _SILogForLogForCategory(5);
                    if (os_log_type_enabled(v283, OS_LOG_TYPE_DEFAULT))
                    {
                      v284 = *(v402 + 8 * v254);
                      *v422 = v370;
                      *&v422[4] = v281;
                      v423 = 2048;
                      v424 = v284;
                      _os_log_impl(&dword_1C278D000, v283, OS_LOG_TYPE_DEFAULT, "found %s for %llx\n", v422, 0x16u);
                    }

                    *__error() = v282;
                  }

                  _MDPlistBytesAddCString();
                }

                else
                {
                  _MDPlistBytesAddNull();
                  if (!(*(*(v279 + 1416) + 40))())
                  {
                    _SIDeleteAttributes(v400, *(v278 + 8 * v254));
                  }
                }
              }

              else if (v276)
              {
                runCannedHelper(*(v276 + 8), v400, v398, *(v402 + 8 * v254), 0, v277, 0, 0, v401);
              }

              else
              {
                _MDPlistBytesAddNull();
              }

              ++v274;
              v273 += 8;
              --v275;
            }

            while (v275);
          }
        }

        _MDPlistBytesEndArray();
        v255 = v369;
        v253 = v406;
      }

LABEL_259:
      ++v254;
    }

    while (v254 != v253);
  }

  if (v15)
  {
    db_string_table_unlock(v15);
  }

  free(v380);
  free(v388);
  free(v387);
  v285 = v405;
  v286 = v407;
  if (v405 >= 1)
  {
    v287 = (v397 + 8);
    do
    {
      v288 = v285;
      v289 = v287 + 1;
      free(*v287);
      v287 = v289;
      v285 = v288 - 1;
    }

    while (v288 != 1);
  }

  if (v394 >= 1)
  {
    v290 = v394;
    do
    {
      v291 = v290;
      v292 = *v63++;
      free(v292);
      v290 = v291 - 1;
    }

    while (v291 != 1);
  }

  if (v253 >= 1)
  {
    v293 = v385;
    v294 = v253;
    do
    {
      v295 = v294;
      v296 = v293 + 1;
      free(*v293);
      v293 = v296;
      v294 = v295 - 1;
    }

    while (v295 != 1);
  }

  free(v385);
  v297 = threadData[9 * v417 + 1] + 320 * v416;
  *(v297 + 312) = v286;
  v298 = *(v297 + 232);
  if (v298)
  {
    v298(*(v297 + 288));
  }

  return dropThreadId(v417, 0, v408 + 1);
}

unint64_t db_get_id_for_string(int *a1, char *__s)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a1 != 1685287992)
  {
    v7 = *__error();
    v8 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 136315650;
      v14 = "db_get_id_for_string";
      v15 = 1024;
      v16 = 386;
      v17 = 1024;
      v18 = v9;
      _os_log_error_impl(&dword_1C278D000, v8, OS_LOG_TYPE_ERROR, "%s:%d: unexpected db signature %x", buf, 0x18u);
    }

    *__error() = v7;
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = "";
    }

    __message_assert("%s:%u: Unexpected code path %s ", "core-db.c", 386, v12);
    free(v11);
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  v3 = *(a1 + 111);
  v4 = a1[201];

  return db2_get_id_for_string(v4, v3, __s);
}

uint64_t ZSTD_compressSuperBlock(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v129 = *MEMORY[0x1E69E9840];
  v128 = 0;
  v126 = 0u;
  *v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  *v118 = 0u;
  v119 = 0u;
  *__n = 0u;
  memset(v116, 0, sizeof(v116));
  v11 = ZSTD_buildBlockEntropyStats((a1 + 824), *(a1 + 3072), *(a1 + 3080), (a1 + 192), v116, *(a1 + 3368), 0x22D8uLL);
  if (v11 <= 0xFFFFFFFFFFFFFF88)
  {
    v88 = &a4[a5];
    v12 = &a2[a3];
    v13 = LODWORD(v116[0]) == 2;
    v111 = *(a1 + 832);
    __src = *(a1 + 3072);
    __dst = *(a1 + 3080);
    v14 = *(a1 + 3368);
    v15 = *(a1 + 824);
    v16 = *(a1 + 840);
    v17 = *(a1 + 848);
    v106 = *(a1 + 856);
    v105 = *(a1 + 864);
    v104 = *(a1 + 872);
    v109 = v15;
    v110 = *(a1 + 248);
    v107 = 1;
    v86 = v17;
    v87 = a2;
    v18 = a2;
    v19 = v15;
    v100 = v12;
    while (1)
    {
      v20 = 0;
      v21 = 0;
      v90 = a4;
      v91 = v18;
      v103 = v18 + 3;
      v94 = v12 - v18 - 3;
      v102 = v13;
      if (v13)
      {
        v22 = 200;
      }

      else
      {
        v22 = 0;
      }

      v96 = 0x4000 - v22;
      v97 = 1024 - v22;
      v108 = v16;
      *v101 = v17 - v16;
      v113 = v19;
      v92 = (v19 + 6);
      while (1)
      {
        if (v15 == v111)
        {
          goto LABEL_12;
        }

        v23 = v113 + 8 * v20;
        v24 = *(v23 + 4);
        if (*(a1 + 900) == ((v23 - *(a1 + 824)) >> 3) && *(a1 + 896) == 1)
        {
          v24 += 0xFFFFLL;
        }

        ++v20;
        if (v23 == v111 - 8)
        {
LABEL_12:
          v25 = 1;
          v21 = *v101;
        }

        else
        {
          v25 = 0;
          v21 += v24;
        }

        LODWORD(v114) = 255;
        if ((LODWORD(v116[0]) - 2) < 2)
        {
          v26 = v21;
          if (HIST_count_wksp(v14, &v114, v108, v21, v14, 0x22D8uLL) <= 0xFFFFFFFFFFFFFF88)
          {
            v27 = HUF_estimateCompressedSize(__dst, v14, v114);
            v28 = __n[1];
            if (!v102)
            {
              v28 = 0;
            }

            v26 = v27 + v28 + 3;
          }
        }

        else if (LODWORD(v116[0]))
        {
          v26 = LODWORD(v116[0]) == 1;
        }

        else
        {
          v26 = v21;
        }

        if (v20)
        {
          v29 = ZSTD_estimateSubBlockSize_symbolType(v118[1], v104, 0x1Fu, v20, __dst + 1032, 0, OF_defaultNorm, 5, 0x1Cu, v14);
          v30 = ZSTD_estimateSubBlockSize_symbolType(v118[0], v106, 0x23u, v20, __dst + 2144, &LL_bits, LL_defaultNorm, 6, 0x23u, v14);
          v31 = ZSTD_estimateSubBlockSize_symbolType(v118[2], v105, 0x34u, v20, __dst + 1418, &ML_bits, ML_defaultNorm, 6, 0x34u, v14);
          v32 = v127[1];
          if (!v107)
          {
            v32 = 0;
          }

          if (v26 + v29 + v30 + v31 + v32 + 6 > v110)
          {
            v33 = 1;
          }

          else
          {
            v33 = v25;
          }

          if ((v33 & 1) == 0)
          {
            goto LABEL_105;
          }

          v95 = v113 + 8 * v20;
          if (v20 < 1)
          {
            v34 = 0;
          }

          else
          {
            v34 = 0;
            v35 = v113 - *(a1 + 824);
            v36 = 8 * v20;
            v37 = v92;
            do
            {
              v39 = *v37;
              v37 += 4;
              v38 = v39;
              v40 = v39 + 3;
              if (*(a1 + 900) == (v35 >> 3))
              {
                v41 = v38 + 65538;
                if (*(a1 + 896) == 2)
                {
                  v40 = v41;
                }
              }

              v34 += v40;
              v35 += 8;
              v36 -= 8;
            }

            while (v36 > 0);
          }
        }

        else
        {
          if (v26 + 6 > v110)
          {
            v42 = 1;
          }

          else
          {
            v42 = v25;
          }

          if ((v42 & 1) == 0)
          {
            goto LABEL_105;
          }

          v34 = 0;
          v95 = v113;
        }

        if (a6)
        {
          v43 = v25;
        }

        else
        {
          v43 = 0;
        }

        if (v97 > v21)
        {
          v44 = 3;
        }

        else
        {
          v44 = 4;
        }

        if (v96 > v21)
        {
          v45 = v44;
        }

        else
        {
          v45 = v44 + 1;
        }

        if (v102)
        {
          v46 = v116[0];
        }

        else
        {
          v46 = 3;
        }

        v98 = v43;
        if (!v21)
        {
LABEL_57:
          v47 = ZSTD_noCompressLiterals(v103, v94, v108, v21);
LABEL_59:
          v48 = v47;
          v49 = 1;
          goto LABEL_60;
        }

        if (LODWORD(v116[0]) == 1)
        {
          v47 = ZSTD_compressRleLiteralsBlock(v103, v94, v108, v21);
          goto LABEL_59;
        }

        if (!LODWORD(v116[0]))
        {
          goto LABEL_57;
        }

        v55 = 0;
        v56 = v103 + v45;
        if (v102 && LODWORD(v116[0]) == 2)
        {
          v55 = __n[1];
          memcpy(v103 + v45, v116 + 4, __n[1]);
          v56 += v55;
        }

        v57 = &v100[-v56];
        if (v45 == 3)
        {
          v58 = HUF_compress1X_usingCTable(v56, v57, v108, v21, __dst);
        }

        else
        {
          v58 = HUF_compress4X_usingCTable(v56, v57, v108, v21, __dst);
        }

        if ((v58 - 1) > 0xFFFFFFFFFFFFFF87)
        {
          goto LABEL_105;
        }

        v67 = v58 + v55;
        if (!v102 && v67 >= v21)
        {
          goto LABEL_57;
        }

        v68 = 3;
        if (v67 > 0x3FF)
        {
          v68 = 4;
        }

        if ((v67 & 0xFFFFFFFFFFFFC000) != 0)
        {
          ++v68;
        }

        if (v45 < v68)
        {
          goto LABEL_57;
        }

        v69 = v46 + 16 * v21;
        if (v45 == 5)
        {
          *(v91 + 3) = v69 + (v67 << 22) + 12;
          v91[7] = v67 >> 10;
        }

        else if (v45 == 4)
        {
          *v103 = v69 + (v67 << 18) + 8;
        }

        else
        {
          v70 = v69 + (v67 << 14);
          *(v91 + 3) = v70;
          v91[5] = BYTE2(v70);
        }

        v49 = 0;
        v48 = v56 + v58 - v103;
LABEL_60:
        if (v48 > 0xFFFFFFFFFFFFFF88)
        {
          return v48;
        }

        if (!v48)
        {
          goto LABEL_105;
        }

        v50 = v103 + v48;
        v51 = v100 - (v103 + v48);
        v52 = *(a1 + 196) > 0x39u;
        if (v51 < 4)
        {
          return -70;
        }

        if (v20 >= 0x7F)
        {
          if (v20 >> 8 > 0x7E)
          {
            *v50 = -1;
            *(v50 + 1) = v20 - 32512;
            v53 = v50 + 3;
          }

          else
          {
            *v50 = BYTE1(v20) | 0x80;
            v50[1] = v20;
            v53 = v50 + 2;
          }
        }

        else
        {
          *v50 = v20;
          v53 = v50 + 1;
          if (!v20)
          {
            v54 = 1;
            v48 = 1;
            goto LABEL_86;
          }
        }

        v93 = v49;
        v59 = v53 + 1;
        if (!v107)
        {
          break;
        }

        *v53 = (LOBYTE(v118[0]) << 6) + 16 * LOBYTE(v118[1]) + 4 * LOBYTE(v118[2]);
        memcpy(v53 + 1, &v118[3], v127[1]);
        v60 = &v59[v127[1]];
        v61 = ZSTD_encodeSequences(v60, v100 - v60, __dst + 1418, v105, __dst + 1032, v104, __dst + 2144, v106, v113, v20, v52);
        v48 = v61;
        if (v61 >= 0xFFFFFFFFFFFFFF89)
        {
          return v48;
        }

        v62 = v60 + v61;
        if (!v128)
        {
          goto LABEL_81;
        }

        v49 = v93;
        if (v128 + v61 >= 4)
        {
          goto LABEL_82;
        }

LABEL_105:
        v15 = v109;
        if (v25)
        {
          v73 = v113;
          a4 = v90;
          v64 = v91;
          v13 = v102;
          goto LABEL_118;
        }
      }

      *v53 = -4;
      v63 = ZSTD_encodeSequences((v53 + 1), v100 - v59, __dst + 1418, v105, __dst + 1032, v104, __dst + 2144, v106, v113, v20, v52);
      v48 = v63;
      if (v63 >= 0xFFFFFFFFFFFFFF89)
      {
        return v48;
      }

      v62 = &v59[v63];
LABEL_81:
      v49 = v93;
LABEL_82:
      if (v62 - v53 < 4)
      {
        goto LABEL_105;
      }

      v48 = v62 - v50;
      if ((v62 - v50) > 0xFFFFFFFFFFFFFF88)
      {
        return v48;
      }

      if (!v48)
      {
        goto LABEL_105;
      }

      v54 = 0;
LABEL_86:
      v64 = &v50[v48];
      v48 = &v50[v48] - v91;
      if (v98)
      {
        v65 = -19;
      }

      else
      {
        v65 = -20;
      }

      v66 = v65 + 8 * v48;
      *v91 = v66;
      v91[2] = BYTE2(v66);
      if (v48 > 0xFFFFFFFFFFFFFF88)
      {
        return v48;
      }

      if (!v48 || v48 >= v34 + v21)
      {
        goto LABEL_105;
      }

      a4 = &v90[v34 + v21];
      v16 = (v108 + v21);
      v106 += v20;
      v105 += v20;
      v104 += v20;
      v13 = v102;
      if (!v49)
      {
        v13 = 0;
      }

      v71 = v54 == 0;
      v72 = v107;
      if (v71)
      {
        v72 = 0;
      }

      v107 = v72;
      v18 = v64;
      v73 = v95;
      v19 = v95;
      v15 = v109;
      v12 = v100;
      v17 = v86;
      if (v25)
      {
LABEL_118:
        if (v13)
        {
          memcpy(__dst, __src, 0x810uLL);
        }

        if (v107 && ((v118[0] - 1) < 2 || (v118[2] - 1) < 2 || (v118[1] - 3) > 0xFFFFFFFD))
        {
          return 0;
        }

        if (a4 < v88)
        {
          v74 = v88 - a4;
          v48 = v88 - a4 + 3;
          if (v48 > v100 - v64)
          {
            return -70;
          }

          v75 = a6 + 8 * v74;
          *v64 = v75;
          v64[2] = BYTE2(v75);
          memcpy(v64 + 3, a4, v74);
          if (v48 > 0xFFFFFFFFFFFFFF88)
          {
            return v48;
          }

          v64 += v48;
          if (v73 < v111)
          {
            v114 = *(__src + 702);
            v115 = __src[1406];
            if (v15 < v73)
            {
              v76 = *(a1 + 900);
              v77 = v115;
              v78 = v114;
              v79 = HIDWORD(v114);
              v80 = v15 - *(a1 + 824);
              do
              {
                v81 = *(v15 + 4);
                if (v76 == (v80 >> 3) && *(a1 + 896) == 1)
                {
                  v81 += 0xFFFF;
                }

                v82 = *v15;
                if ((*v15 - 1) < 3)
                {
                  if (v81)
                  {
                    v84 = *v15 - 1;
                  }

                  else
                  {
                    v84 = *v15;
                  }

                  switch(v84)
                  {
                    case 0u:
                      goto LABEL_148;
                    case 3u:
                      v83 = v78 - 1;
                      break;
                    case 1u:
                      v79 = v77;
                      break;
                    default:
                      v83 = *(&v114 + v84);
                      break;
                  }

                  v115 = v79;
                  HIDWORD(v114) = v78;
                }

                else
                {
                  v115 = v79;
                  HIDWORD(v114) = v78;
                  v83 = v82 - 3;
                }

                v77 = v79;
                LODWORD(v114) = v83;
                v79 = v78;
                v78 = v83;
LABEL_148:
                v15 += 8;
                v80 += 8;
              }

              while (v15 < v73);
            }

            *(__dst + 702) = v114;
            *(__dst + 1406) = v115;
          }
        }

        return v64 - v87;
      }
    }
  }

  return v11;
}

uint64_t ZSTD_estimateSubBlockSize_symbolType(int a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8, unsigned int a9, unsigned int *a10)
{
  v10 = a8;
  v15 = a2;
  v21 = a3;
  HIST_countFast_wksp(a10, &v21, a2, a4, a10, 0x22D8uLL);
  if (a1 == 1)
  {
    goto LABEL_9;
  }

  if (!a1)
  {
    if (v21 > a9)
    {
      return 10 * a4;
    }

    v17 = ZSTD_crossEntropyCost(a7, v10, a10, v21);
    goto LABEL_7;
  }

  if ((a1 & 0xFFFFFFFE) != 2)
  {
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

  v17 = ZSTD_fseBitCost(a5, a10, v21);
LABEL_7:
  if (v17 > 0xFFFFFFFFFFFFFF88)
  {
    return 10 * a4;
  }

LABEL_10:
  if (a4 >= 1)
  {
    v19 = &v15[a4];
    do
    {
      v20 = v15;
      if (a6)
      {
        v20 = (a6 + *v15);
      }

      v17 += *v20;
      ++v15;
    }

    while (v15 < v19);
  }

  return v17 >> 3;
}

_DWORD *ZSTD_ldm_adjustParameters(_DWORD *result, unsigned int *a2)
{
  v2 = *a2;
  result[5] = *a2;
  if (!result[3])
  {
    result[3] = 64;
  }

  v3 = result[1];
  if (!v3)
  {
    v3 = v2 - 7;
    if (v2 - 7 <= 6)
    {
      v3 = 6;
    }

    result[1] = v3;
  }

  v4 = result[2];
  if (!result[4])
  {
    v5 = v2 >= v3;
    v6 = v2 - v3;
    if (!v5)
    {
      v6 = 0;
    }

    result[4] = v6;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 3;
  }

  if (v7 >= v3)
  {
    v7 = v3;
  }

  result[2] = v7;
  return result;
}

uint64_t ZSTD_ldm_getTableSize(_DWORD *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 >= v2)
  {
    LOBYTE(v1) = a1[1];
  }

  v3 = (1 << (v2 - v1)) + (8 << v2);
  if (*a1 == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t ZSTD_ldm_getMaxNbSeq(_DWORD *a1, unint64_t a2)
{
  if (*a1 == 1)
  {
    return a2 / a1[3];
  }

  else
  {
    return 0;
  }
}

unint64_t ZSTD_ldm_fillHashTable(unint64_t result, unint64_t a2, unint64_t a3, _DWORD *a4)
{
  v4 = a4[1];
  v5 = a4[2];
  v27 = *(result + 8);
  v7 = a4[3];
  v6 = a4[4];
  if (v7 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = a4[3];
  }

  v9 = v6 - 1;
  v10 = ~(-1 << v6);
  v11 = v8 - v6;
  if (v9 >= v8)
  {
    v11 = 0;
  }

  v30[0] = 0xFFFFFFFFLL;
  v30[1] = v10 << v11;
  if (a2 < a3)
  {
    v12 = a2;
    v13 = result;
    v24 = a3;
    v25 = result + 64;
    v14 = a2 + v7;
    v15 = ~(-1 << (v4 - v5));
    do
    {
      v29 = 0;
      result = ZSTD_ldm_gear_feed(v30, v12, a3 - v12, v25, &v29);
      v26 = result;
      v16 = v29;
      if (v29)
      {
        v17 = v25;
        do
        {
          v18 = *v17++;
          v19 = v12 + v18;
          if (v12 + v18 >= v14)
          {
            v20 = v19 - v7;
            result = ZSTD_XXH64((v19 - v7), v7, 0);
            v21 = a4[2];
            v22 = *(v13 + 56);
            v23 = *(v22 + (result & v15));
            *(*(v13 + 40) + 8 * ((result & v15) << v21) + 8 * v23) = result & 0xFFFFFFFF00000000 | (v20 - v27);
            *(v22 + (result & v15)) = (v23 + 1) & ~(-1 << v21);
          }

          --v16;
        }

        while (v16);
      }

      v12 += v26;
      a3 = v24;
    }

    while (v12 < v24);
  }

  return result;
}

unint64_t ZSTD_ldm_gear_feed(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  v5 = *a1;
  v6 = a1[1];
  if (a3 < 4)
  {
    v8 = 0;
LABEL_18:
    if (v8 < a3)
    {
      while (1)
      {
        v5 = ZSTD_ldm_gearTab[*(a2 + v8)] + 2 * v5;
        v15 = v8 + 1;
        if ((v5 & v6) != 0)
        {
          if (v15 >= a3)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v16 = *a5;
          *(a4 + 8 * v16) = v15;
          LODWORD(v16) = v16 + 1;
          *a5 = v16;
          if (v16 == 64 || v15 >= a3)
          {
            goto LABEL_27;
          }
        }

        ++v8;
      }
    }
  }

  else
  {
    v7 = (a2 + 1);
    v8 = 2;
    while (1)
    {
      v5 = ZSTD_ldm_gearTab[*(v7 - 1)] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v11 = *a5;
        *(a4 + 8 * v11) = v8 - 1;
        LODWORD(v11) = v11 + 1;
        *a5 = v11;
        if (v11 == 64)
        {
          --v8;
          goto LABEL_28;
        }
      }

      v5 = ZSTD_ldm_gearTab[*v7] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v12 = *a5;
        *(a4 + 8 * v12) = v8;
        LODWORD(v12) = v12 + 1;
        *a5 = v12;
        if (v12 == 64)
        {
          goto LABEL_28;
        }
      }

      v5 = ZSTD_ldm_gearTab[v7[1]] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v13 = *a5;
        *(a4 + 8 * v13) = v8 + 1;
        *a5 = v13 + 1;
        if (v13 == 63)
        {
          break;
        }
      }

      v5 = ZSTD_ldm_gearTab[v7[2]] + 2 * v5;
      if ((v5 & v6) == 0)
      {
        v14 = *a5;
        *(a4 + 8 * v14) = v8 + 2;
        *a5 = v14 + 1;
        if (v14 == 63)
        {
          v8 += 2;
          goto LABEL_28;
        }
      }

      v9 = v8 + 4;
      v10 = v8 + 5;
      v7 += 4;
      v8 += 4;
      if (v10 >= a3)
      {
        v8 = v9 - 2;
        goto LABEL_18;
      }
    }

LABEL_27:
    ++v8;
  }

LABEL_28:
  *a1 = v5;
  return v8;
}

unint64_t ZSTD_ldm_generateSequences(uint32x2_t *a1, void *a2, _DWORD *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0xFFFFF) != 0)
  {
    v5 = (a5 >> 20) + 1;
  }

  else
  {
    v5 = a5 >> 20;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = 0;
  v11 = 1 << a3[5];
  v12 = (a4 + a5);
  v13 = a1 + 8;
  v158 = a1 + 72;
  v14 = a2[3];
  v145 = a1 + 74;
  while (1)
  {
    if (v14 >= v7[4])
    {
      return 0;
    }

    v15 = (a4 + (v9 << 20));
    v16 = a5 - (v9 << 20) >= 0x100000 ? (v15 + 0x100000) : v12;
    v17 = v8[1];
    v18 = v16 - v17.i32[0];
    if ((v16 - v17.i32[0]) > 0xE0000000)
    {
      v20 = 1 << a3[1];
      v21 = v15 - v17.i32[0] - v11;
      v22 = v21 - 2;
      v23 = (*&v8[2] + v22);
      v8[1] = (*&v17 + v22);
      v8[2] = v23;
      v8[3] = vbsl_s8(vcgt_u32(vdup_n_s32(v21), v8[3]), 0x200000002, vsub_s32(v8[3], vdup_n_s32(v22)));
      ++v8[4].i32[0];
      v24 = v8[5];
      do
      {
        v25 = *v24 - v22;
        if (*v24 < v22)
        {
          v25 = 0;
        }

        *v24 = v25;
        v24 += 2;
        --v20;
      }

      while (v20);
      v19 = 0;
      v8[6].i32[0] = 0;
      v17 = v8[1];
      v18 = v16 - v17.i32[0];
    }

    else
    {
      v19 = v8[6].i32[0];
    }

    v26 = v8[3].u32[1];
    if (v19 + v11 >= v18)
    {
      v28 = v8[3].u32[0];
    }

    else
    {
      v27 = v18 - v11;
      if (v26 < v27)
      {
        v8[3].i32[1] = v27;
        v26 = v27;
      }

      v28 = v8[3].u32[0];
      if (v28 < v26)
      {
        v8[3].i32[0] = v26;
        v28 = v26;
      }

      v8[6].i32[0] = 0;
    }

    v29 = a3[2];
    v30 = a3[3];
    v31 = a3[1];
    if (v26 >= v28)
    {
      v32 = 0;
      v33 = v28;
    }

    else
    {
      v32 = v8[2];
      v33 = v26;
    }

    v34 = v16 - v15;
    v35 = *&v32 + v33;
    if (v26 >= v28)
    {
      v35 = 0;
    }

    v159 = v35;
    v170 = v28;
    v36 = (*&v32 + v28);
    v163 = v36;
    if (v26 >= v28)
    {
      v36 = 0;
    }

    v154 = v36;
    if (v34 >= v30)
    {
      break;
    }

    v37 = v14;
    result = v16 - v15;
LABEL_164:
    if (v14 >= v37)
    {
      result = v34 + v10;
    }

    else
    {
      *(*v7 + 12 * v14 + 4) += v10;
    }

    ++v9;
    v14 = v37;
    v10 = result;
    if (v9 == v5)
    {
      return 0;
    }
  }

  v162 = v32;
  if (v30 >= 0x40)
  {
    v39 = 64;
  }

  else
  {
    v39 = a3[3];
  }

  v40 = a3[4];
  v140 = v16 - v15;
  v41 = v40 - 1;
  v42 = ~(-1 << v40);
  v43 = v39 - v40;
  _CF = v41 >= v39;
  v34 = v16 - v15;
  if (_CF)
  {
    v45 = 0;
  }

  else
  {
    v45 = v43;
  }

  v46 = v42 << v45;
  v47 = v16 - 8;
  v172[0] = 0xFFFFFFFFLL;
  v172[1] = v46;
  result = v16 - v15;
  if (&v15[v30] >= v16 - 8)
  {
LABEL_162:
    if (result > 0xFFFFFFFFFFFFFF88)
    {
      return result;
    }

    v37 = v7[3];
    goto LABEL_164;
  }

  v133 = v10;
  v134 = v12;
  v135 = v11;
  v136 = v9;
  v137 = v5;
  v138 = a4;
  v139 = a5;
  v153 = 1 << v29;
  v144 = -v30;
  v48 = v16 - 7;
  v160 = v16 - 1;
  v161 = v16;
  v151 = *&v17 - 1;
  v152 = *&v17 + 8;
  v150 = *&v17 + 8 + v170;
  v49 = &v15[v30];
  v168 = (*&v17 + v170);
  v169 = v30;
  v155 = v7;
  v165 = v8;
  v141 = v13;
  v157 = v16;
  v164 = v17;
  v166 = v33;
  v167 = v26;
  v146 = v16 - 8;
  v147 = a3;
  v143 = ~(-1 << (v31 - v29));
  v142 = v16 - 3;
  while (1)
  {
    v50 = v7;
    v171 = 0;
    v51 = v13;
    v52 = v13;
    v53 = v49;
    v54 = ZSTD_ldm_gear_feed(v172, v49, v47 - v49, v51, &v171);
    if (v171)
    {
      break;
    }

    v8 = v165;
    v132 = v53;
    v13 = v52;
    v7 = v50;
    a3 = v147;
LABEL_160:
    v49 = &v132[v54];
    v47 = v146;
    if (v49 >= v146)
    {
      result = v16 - v15;
      a4 = v138;
      a5 = v139;
      v9 = v136;
      v5 = v137;
      v11 = v135;
      v10 = v133;
      v12 = v134;
      v34 = v140;
      goto LABEL_162;
    }
  }

  v148 = v53;
  v149 = v54;
  v55 = v145;
  v56 = v53 + v144;
  a3 = v147;
  v156 = v171;
  v57 = v171;
  do
  {
    v58 = *v52++;
    v59 = ZSTD_XXH64((v56 + v58), v30, 0);
    v8 = v165;
    v60 = v59 & v143;
    *(v55 - 2) = v56 + v58;
    *(v55 - 2) = v60;
    *(v55 - 1) = HIDWORD(v59);
    _X8 = *&v165[5] + 8 * (v60 << v147[2]);
    *v55 = _X8;
    v55 += 3;
    __asm { PRFM            #0, [X8] }

    --v57;
  }

  while (v57);
  v66 = 0;
  v7 = v155;
  v67 = v156;
  v16 = v157;
  v69 = v166;
  v68 = v167;
  v70 = v170;
  while (2)
  {
    v71 = &v158[3 * v66];
    v72 = *v71;
    v73 = v71[1].u32[0];
    v74 = v71[1].u32[1];
    v75 = *v71 - *&v164;
    if (*v71 < v15)
    {
LABEL_156:
      v129 = v147[2];
      v130 = v8[7];
      v131 = *(*&v130 + v73);
      *(*&v8[5] + 8 * (v73 << v129) + 8 * v131) = v75 | (v74 << 32);
      *(*&v130 + v73) = (v131 + 1) & ~(-1 << v129);
      goto LABEL_157;
    }

    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = v71[2];
    v81 = &v80[2 * v153];
    while (2)
    {
      if (v80[1] != v74)
      {
        goto LABEL_151;
      }

      v82 = *v80;
      if (v82 <= v69)
      {
        goto LABEL_151;
      }

      if (v68 < v70)
      {
        if (v82 >= v70)
        {
          v83 = v164;
        }

        else
        {
          v83 = v162;
        }

        v84 = (*&v83 + v82);
        if (v82 >= v70)
        {
          v85 = v161;
        }

        else
        {
          v85 = v163;
        }

        v86 = (v72 + v85 - v84);
        if (v86 >= v16)
        {
          v86 = v161;
        }

        if ((v86 - 7) <= v72)
        {
          v88 = (*&v83 + v82);
          v89 = v72;
          goto LABEL_76;
        }

        if (*v84 == *v72)
        {
          v87 = 0;
          v88 = (*&v83 + v82 + 8);
          v89 = v72 + 4;
          while (v89 < (v86 - 7))
          {
            v91 = *v88;
            v88 += 4;
            v90 = v91;
            v93 = *v89;
            v89 += 4;
            v92 = v93;
            v87 += 8;
            if (v90 != v93)
            {
              v94 = v87 + (__clz(__rbit64(v92 ^ v90)) >> 3);
              v7 = v155;
              v16 = v157;
              goto LABEL_73;
            }
          }

          v7 = v155;
          v16 = v157;
LABEL_76:
          if (v89 < (v86 - 3) && *v88 == *v89)
          {
            v88 += 2;
            v89 += 2;
          }

          if (v89 < (v86 - 1) && *v88 == *v89)
          {
            ++v88;
            ++v89;
          }

          v102 = v168;
          if (v89 < v86 && *v88 == *v89)
          {
            v89 = (v89 + 1);
          }

          v70 = v170;
          v94 = v89 - v72;
        }

        else
        {
          v94 = __clz(__rbit64(*v72 ^ *v84)) >> 3;
LABEL_73:
          v70 = v170;
          v102 = v168;
        }

        if (&v84[v94] == v85)
        {
          v103 = v72 + v94;
          if (v48 <= v72 + v94)
          {
            v106 = v102;
            v105 = (v72 + v94);
            goto LABEL_115;
          }

          if (*v102 == *v103)
          {
            v104 = 0;
            v105 = (v72 + v94 + 8);
            v106 = v150;
            while (v105 < v48)
            {
              v108 = *v106;
              v106 += 4;
              v107 = v108;
              v110 = *v105;
              v105 += 4;
              v109 = v110;
              v104 += 8;
              if (v107 != v110)
              {
                v111 = v104 + (__clz(__rbit64(v109 ^ v107)) >> 3);
                v16 = v157;
                v70 = v170;
                v102 = v168;
                goto LABEL_125;
              }
            }

            v16 = v157;
LABEL_115:
            if (v105 < v142 && *v106 == *v105)
            {
              v106 += 2;
              v105 += 2;
            }

            if (v105 < v160 && *v106 == *v105)
            {
              ++v106;
              ++v105;
            }

            if (v105 < v16 && *v106 == *v105)
            {
              v105 = (v105 + 1);
            }

            v70 = v170;
            v102 = v168;
            v111 = v105 - v103;
          }

          else
          {
            v111 = __clz(__rbit64(*v103 ^ *v102)) >> 3;
            v70 = v170;
          }

LABEL_125:
          v94 += v111;
        }

        v30 = v169;
        if (v94 < v169)
        {
          v68 = v167;
          goto LABEL_150;
        }

        v112 = 0;
        if (v82 >= v70)
        {
          v116 = v102;
        }

        else
        {
          v116 = v159;
        }

        if (v72 > v15 && v84 > v116)
        {
          v112 = 0;
          v117 = (*&v83 + v82 - 1);
          v118 = v72 - 1;
          do
          {
            if (*v118 != *v117)
            {
              break;
            }

            ++v112;
            if (v118 <= v15)
            {
              break;
            }

            --v118;
            v115 = v117-- > v116;
          }

          while (v115);
        }

        if (v116 != v159 && &v84[-v112] == v116)
        {
          v119 = 0;
          if (v154 > v159 && v72 - v112 > v15)
          {
            v119 = 0;
            v120 = (v72 - v112 - 1);
            v121 = (v154 - 1);
            do
            {
              if (*v120 != *v121)
              {
                break;
              }

              ++v119;
              if (v120 <= v15)
              {
                break;
              }

              --v120;
              v115 = v121-- > v159;
            }

            while (v115);
          }

          v112 += v119;
        }

        v70 = v170;
LABEL_147:
        if (v112 + v94 > v79)
        {
          v79 = v112 + v94;
          v78 = v112;
          v77 = v94;
          v76 = v80;
        }

        v68 = v167;
        v30 = v169;
LABEL_150:
        v69 = v166;
        goto LABEL_151;
      }

      v95 = (*&v164 + v82);
      if (v48 <= v72)
      {
        v97 = v72;
        goto LABEL_95;
      }

      if (*v95 == *v72)
      {
        v96 = 0;
        v95 = (v152 + v82);
        v97 = v72 + 4;
        while (v97 < v48)
        {
          v99 = *v95;
          v95 += 4;
          v98 = v99;
          v101 = *v97;
          v97 += 4;
          v100 = v101;
          v96 += 8;
          if (v98 != v101)
          {
            v94 = v96 + (__clz(__rbit64(v100 ^ v98)) >> 3);
            v70 = v170;
            goto LABEL_105;
          }
        }

        v70 = v170;
LABEL_95:
        if (v97 < v142 && *v95 == *v97)
        {
          v95 += 2;
          v97 += 2;
        }

        if (v97 < v160 && *v95 == *v97)
        {
          ++v95;
          ++v97;
        }

        if (v97 < v16 && *v95 == *v97)
        {
          v97 = (v97 + 1);
        }

        v94 = v97 - v72;
      }

      else
      {
        v94 = __clz(__rbit64(*v72 ^ *v95)) >> 3;
      }

LABEL_105:
      if (v94 >= v30)
      {
        v112 = 0;
        if (v72 > v15 && v82 > v70)
        {
          v112 = 0;
          v113 = (v151 + v82);
          v114 = v72 - 1;
          do
          {
            if (*v114 != *v113)
            {
              break;
            }

            ++v112;
            if (v114 <= v15)
            {
              break;
            }

            --v114;
            v115 = v113-- > v168;
          }

          while (v115);
        }

        goto LABEL_147;
      }

LABEL_151:
      v80 += 2;
      if (v80 < v81)
      {
        continue;
      }

      break;
    }

    v8 = v165;
    v67 = v156;
    if (!v76)
    {
      goto LABEL_156;
    }

    v122 = v7[3];
    if (v122 != v7[4])
    {
      v123 = (*v7 + 12 * v122);
      v124 = v75 - *v76;
      v123[1] = v72 - v78 - v15;
      v123[2] = v77 + v78;
      *v123 = v124;
      v7[3] = v122 + 1;
      v125 = v75 | (v74 << 32);
      v126 = v147[2];
      v127 = v165[7];
      v128 = *(*&v127 + v73);
      *(*&v165[5] + 8 * (v73 << v126) + 8 * v128) = v125;
      *(*&v127 + v73) = (v128 + 1) & ~(-1 << v126);
      v15 = v72 + v77;
      if (v72 + v77 > v148 + v149)
      {
        v54 = v149;
        v132 = &v15[-v149];
        v13 = v141;
        goto LABEL_160;
      }

LABEL_157:
      if (++v66 == v67)
      {
        v13 = v141;
        v132 = v148;
        v54 = v149;
        goto LABEL_160;
      }

      continue;
    }

    return -70;
  }
}

uint64_t *ZSTD_ldm_skipSequences(uint64_t *result, unint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v3 = result[3];
    v4 = result[1];
    if (v4 <= v3)
    {
      v5 = result[3];
    }

    else
    {
      v5 = result[1];
    }

    v6 = v4 + 1;
    v7 = -v5;
    v8 = 12 * v4;
    while (v7 + v6 != 1)
    {
      v9 = *result;
      v10 = *result + v8;
      v11 = *(v10 + 4);
      v12 = a2 - v11;
      if (a2 <= v11)
      {
        *(v10 + 4) = v11 - a2;
        return result;
      }

      *(v10 + 4) = 0;
      v13 = *(v10 + 8);
      a2 = v12 - v13;
      if (v12 < v13)
      {
        *(v9 + v8 + 8) = v13 - v12;
        if (v13 - v12 < a3)
        {
          if (v6 < v3)
          {
            *(v9 + v8 + 16) += v13 - v12;
          }

          result[1] = v6;
        }

        return result;
      }

      *(v10 + 8) = 0;
      result[1] = v6++;
      v8 += 12;
      if (v12 == v13)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t ZSTD_ldm_skipRawSeqStoreBytes(uint64_t result, int a2)
{
  v2 = *(result + 16) + a2;
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(result + 24);
  v4 = *(result + 8);
  v5 = v3 >= v4;
  v6 = v3 - v4;
  v7 = v5 ? v6 : 0;
  v8 = v4 + 1;
  v9 = 12 * v4;
  while (v7)
  {
    v10 = *(*result + v9 + 8) + *(*result + v9 + 4);
    v5 = v2 >= v10;
    v11 = v2 - v10;
    if (!v5)
    {
      *(result + 16) = v2;
      break;
    }

    --v6;
    *(result + 8) = v8;
    --v7;
    ++v8;
    v9 += 12;
    v2 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (!v6)
  {
LABEL_12:
    *(result + 16) = 0;
  }

  return result;
}

uint64_t ZSTD_ldm_blockCompress(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (*(a2 + 28) >= *(a2 + 24))
  {
    v14 = *(a2 + 232);
    if (v14)
    {
      if (*(v14 + 124))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  v50 = *(a2 + 256);
  v15 = ZSTD_selectBlockCompressor(*(a2 + 264), a5, v13);
  if (*(a2 + 264) > 6u)
  {
    *(a2 + 272) = a1;
    v16 = (v15)(a2, a3, a4, a6, a7);
    ZSTD_ldm_skipRawSeqStoreBytes(a1, a7);
    return v16;
  }

  v51 = v15;
  v18 = a6 + a7;
  v19 = a1[1];
  if (v19 < a1[3] && a7 >= 1)
  {
    v24 = v18 - 32;
    while (1)
    {
      v25 = v18 - a6;
      v26 = *a1 + 12 * v19;
      v27 = *v26;
      v28 = HIDWORD(*v26);
      v29 = *(v26 + 8);
      if (v29 + v28 <= v18 - a6)
      {
        a1[1] = v19 + 1;
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v25 - v28 >= v50)
        {
          v30 = *v26;
        }

        else
        {
          v30 = 0;
        }

        if (v25 <= v28)
        {
          LODWORD(v27) = 0;
        }

        else
        {
          v29 = v25 - v28;
          LODWORD(v27) = v30;
        }

        ZSTD_ldm_skipSequences(a1, v25, v50);
        if (!v27)
        {
          goto LABEL_15;
        }
      }

      v31 = a6 - *(a2 + 8);
      v32 = *(a2 + 44);
      if (v32 + 1024 < v31)
      {
        v33 = v31 - v32 - 1024;
        if (v33 >= 0x200)
        {
          v33 = 512;
        }

        *(a2 + 44) = v31 - v33;
      }

      ZSTD_ldm_fillFastTables(a2, a6);
      v34 = (v51)(a2, a3, a4, a6, v28);
      *(a4 + 4) = *a4;
      v35 = a6 + v28;
      *a4 = v27;
      v36 = (a6 + v28 - v34);
      v37 = *(a3 + 24);
      if (a6 + v28 > v24)
      {
        break;
      }

      *v37 = *v36;
      v41 = *(a3 + 24);
      if (v34 > 0x10)
      {
        v42 = (v41 + 16);
        v43 = v41 + v34;
        v44 = (a6 + v28 - v34 + 16);
        do
        {
          v45 = *v44++;
          *v42++ = v45;
        }

        while (v42 < v43);
LABEL_47:
        *(a3 + 24) += v34;
        v46 = *(a3 + 8);
        if (v34 >= 0x10000)
        {
          v47 = (v46 - *a3) >> 3;
          *(a3 + 72) = 1;
          *(a3 + 76) = v47;
        }

        goto LABEL_50;
      }

      *(a3 + 24) = v41 + v34;
      v46 = *(a3 + 8);
LABEL_50:
      *(v46 + 4) = v34;
      *v46 = v27 + 3;
      v48 = v29 - 3;
      if (v48 >= 0x10000)
      {
        v49 = (v46 - *a3) >> 3;
        *(a3 + 72) = 2;
        *(a3 + 76) = v49;
      }

      *(v46 + 6) = v48;
      *(a3 + 8) = v46 + 8;
      a6 = v35 + v29;
      v19 = a1[1];
      if (v19 >= a1[3] || a6 >= v18)
      {
        goto LABEL_15;
      }
    }

    if (v36 <= v24)
    {
      v38 = (v37 + v24 - v36);
      do
      {
        v39 = *v36;
        v36 += 16;
        *v37++ = v39;
      }

      while (v37 < v38);
      v36 = (v18 - 32);
      v37 = v38;
    }

    while (v36 < v35)
    {
      v40 = *v36++;
      *v37 = v40;
      v37 = (v37 + 1);
    }

    goto LABEL_47;
  }

LABEL_15:
  v21 = a6 - *(a2 + 8);
  v22 = *(a2 + 44);
  if (v22 + 1024 < v21)
  {
    v23 = v21 - v22 - 1024;
    if (v23 >= 0x200)
    {
      v23 = 512;
    }

    *(a2 + 44) = v21 - v23;
  }

  ZSTD_ldm_fillFastTables(a2, a6);

  return (v51)(a2, a3, a4, a6, v18 - a6);
}

uint64_t ZSTD_ldm_fillFastTables(uint64_t result, uint64_t a2)
{
  v2 = *(result + 264);
  if (v2 == 2)
  {
    return ZSTD_fillDoubleHashTable(result, a2, 0);
  }

  if (v2 == 1)
  {
    return ZSTD_fillHashTable(result, a2, 0);
  }

  return result;
}

double ZSTD_copyDDictParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 30184) = *(a2 + 27316);
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 29896) = v2;
  *(a1 + 29904) = v2;
  v4 = v2 + v3;
  *(a1 + 29912) = v4;
  *(a1 + 29888) = v4;
  if (*(a2 + 27320))
  {
    *a1 = a2 + 24;
    *(a1 + 8) = a2 + 6184;
    *&result = 0x100000001;
    *(a1 + 29992) = 0x100000001;
    *(a1 + 16) = a2 + 4128;
    *(a1 + 24) = a2 + 10288;
    *(a1 + 26684) = *(a2 + 26676);
    *(a1 + 26688) = *(a2 + 26680);
    *(a1 + 26692) = *(a2 + 26684);
  }

  else
  {
    result = 0.0;
    *(a1 + 29992) = 0;
  }

  return result;
}

void **ZSTD_createDDict_advanced(const void *a1, size_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((*a5 == 0) != (a5[1] == 0))
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v14 = *a5;
  v15 = a5[2];
  v10 = ZSTD_customMalloc(0x6AD8uLL, &v14);
  v11 = v10;
  if (v10)
  {
    v12 = *a5;
    v10[3418] = a5[2];
    *(v10 + 1708) = v12;
    if (ZSTD_initDDict_internal(v10, a1, a2, v7, v6) >= 0xFFFFFFFFFFFFFF89)
    {
      ZSTD_freeDDict(v11);
      return 0;
    }
  }

  return v11;
}

uint64_t ZSTD_initDDict_internal(uint64_t a1, const void *a2, size_t size, int a4, int a5)
{
  v6 = size;
  if (a2 && size && a4 != 1)
  {
    v12 = *(a1 + 27328);
    v13 = *(a1 + 27344);
    v9 = ZSTD_customMalloc(size, &v12);
    *a1 = v9;
    *(a1 + 8) = v9;
    if (!v9)
    {
      return -64;
    }

    memcpy(v9, a2, v6);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = a2;
    if (!a2)
    {
      v6 = 0;
    }
  }

  *(a1 + 16) = v6;
  *(a1 + 10288) = 201326604;
  *(a1 + 27316) = 0;
  if (a5 == 1)
  {
    return 0;
  }

  if (v6 <= 7)
  {
    if (a5 != 2)
    {
      return 0;
    }

    return -30;
  }

  v11 = *(a1 + 8);
  if (*v11 == -332356553)
  {
    *(a1 + 27316) = v11[1];
    if (ZSTD_loadDEntropy(a1 + 24, v11, v6) <= 0xFFFFFFFFFFFFFF88)
    {
      *(a1 + 27320) = 1;
      return 0;
    }

    return -30;
  }

  if (a5 == 2)
  {
    result = -30;
  }

  else
  {
    result = 0;
  }

  if (a5 != 2)
  {
    return 0;
  }

  return result;
}

uint64_t ZSTD_freeDDict(void **a1)
{
  if (a1)
  {
    v6 = *(a1 + 1708);
    v7 = a1[3418];
    v2 = *a1;
    v4 = *(a1 + 1708);
    v5 = a1[3418];
    ZSTD_customFree(v2, &v4);
    v4 = v6;
    v5 = v7;
    ZSTD_customFree(a1, &v4);
  }

  return 0;
}

uint64_t ZSTD_getDictID_fromDDict(uint64_t result)
{
  if (result)
  {
    return ZSTD_getDictID_fromDict(*(result + 8), *(result + 16));
  }

  return result;
}

uint64_t ZSTD_fillDoubleHashTable(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(result + 44);
  v5 = v3 + v4;
  if (v3 + v4 + 2 <= (a2 - 8))
  {
    v6 = *(result + 96);
    v7 = *(result + 256);
    v8 = *(result + 244);
    v9 = 64 - v8;
    v10 = 32 - v8;
    v11 = 64 - *(result + 248);
    result = *(result + 112);
    do
    {
      v12 = 0;
      v13 = v3 + v4;
      do
      {
        if (v7 > 6)
        {
          if (v7 == 7)
          {
            v14 = *(v13 + v12);
            v15 = 0xCF1BBCDCBFA56300 * v14;
          }

          else
          {
            if (v7 != 8)
            {
LABEL_11:
              v16 = (-1640531535 * *(v13 + v12)) >> v10;
              v14 = *(v13 + v12);
              goto LABEL_15;
            }

            v14 = *(v13 + v12);
            v15 = 0xCF1BBCDCB7A56463 * v14;
          }
        }

        else if (v7 == 5)
        {
          v14 = *(v13 + v12);
          v15 = 0xCF1BBCDCBB000000 * v14;
        }

        else
        {
          if (v7 != 6)
          {
            goto LABEL_11;
          }

          v14 = *(v13 + v12);
          v15 = 0xCF1BBCDCBF9B0000 * v14;
        }

        v16 = v15 >> v9;
LABEL_15:
        v17 = (0xCF1BBCDCB7A56463 * v14) >> v11;
        if (v12)
        {
          if (*(v6 + 4 * v17))
          {
            if (!a3)
            {
              break;
            }

            continue;
          }
        }

        else
        {
          *(result + 4 * v16) = v5 - v3;
        }

        *(v6 + 4 * v17) = v4 + v12;
        if (!a3)
        {
          break;
        }
      }

      while (v12++ < 2);
      v19 = v5 + 5;
      v5 += 3;
      v4 += 3;
    }

    while (v19 <= a2 - 8);
  }

  return result;
}

int64_t ZSTD_compressBlock_doubleFast(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = a4;
  v6 = *(a1 + 256);
  v7 = *(a1 + 96);
  v8 = *(a1 + 112);
  v9 = *(a1 + 8);
  v10 = &a4[a5];
  v11 = a4 + a5 - v9;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v14 = v11 - v13 > v12;
  v15 = v11 - v12;
  v16 = *(a1 + 40) == 0;
  if (v16 && v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  v18 = (v10 - 8);
  v19 = *a3;
  v20 = a3[1];
  if ((v9 + v17) == v5)
  {
    v21 = v5 + 1;
  }

  else
  {
    v21 = v5;
  }

  v22 = v21 - v9 - v13 > v12;
  v23 = v21 - v9 - v12;
  if (!v16 || !v22)
  {
    v23 = *(a1 + 24);
  }

  v24 = v21 - v9 - v23;
  if (v20 <= v24)
  {
    v25 = v20;
  }

  else
  {
    v25 = 0;
  }

  if (v19 <= v24)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  _X5 = v21 + 1;
  v489 = a3[1];
  v490 = *a3;
  v488 = v21 - v9 - v23;
  if (v6 == 5)
  {
    if (_X5 <= v18)
    {
      v253 = *(a1 + 244);
      v254 = 64 - *(a1 + 248);
      v255 = 64 - v253;
      v256 = (v10 - 7);
      v474 = v9 - 1;
      v482 = v10 - 1;
      v486 = v10 - 3;
      v478 = v10 - 32;
      while (1)
      {
        v257 = (v21 + 256);
        v258 = *v21;
        v259 = (0xCF1BBCDCB7A56463 * *v21) >> v254;
        v260 = *(v7 + 4 * v259);
        v261 = (v9 + v260);
        v262 = 1;
        while (1)
        {
          v263 = (0xCF1BBCDCBB000000 * v258) >> v255;
          v264 = *(v8 + 4 * v263);
          v265 = v21 - v9;
          *(v8 + 4 * v263) = v21 - v9;
          *(v7 + 4 * v259) = v21 - v9;
          if (v26)
          {
            v266 = v21 + 1;
            if (*&v21[-v26 + 1] == *(v21 + 1))
            {
              v271 = (v21 + 5);
              v272 = &v21[-v26 + 5];
              if (v256 <= (v21 + 5))
              {
                v275 = (v21 + 5);
                v281 = v10 - 1;
                v273 = v10 - 3;
                v282 = v10 - 32;
                goto LABEL_439;
              }

              v273 = v10 - 3;
              if (*v272 == *v271)
              {
                v274 = 0;
                v275 = (v21 + 13);
                v272 = &v21[-v26 + 13];
                while (v275 < v256)
                {
                  v277 = *v272;
                  v272 += 8;
                  v276 = v277;
                  v279 = *v275;
                  v275 += 4;
                  v278 = v279;
                  v274 += 8;
                  if (v276 != v279)
                  {
                    v280 = v274 + (__clz(__rbit64(v278 ^ v276)) >> 3);
                    goto LABEL_425;
                  }
                }

                v282 = v10 - 32;
                v281 = v10 - 1;
LABEL_439:
                if (v275 < v273 && *v272 == *v275)
                {
                  v272 += 4;
                  v275 += 2;
                }

                if (v275 < v281 && *v272 == *v275)
                {
                  v272 += 2;
                  ++v275;
                }

                if (v275 < v10 && *v272 == *v275)
                {
                  v275 = (v275 + 1);
                }

                v280 = v275 - v271;
              }

              else
              {
                v280 = __clz(__rbit64(*v271 ^ *v272)) >> 3;
LABEL_425:
                v282 = v10 - 32;
                v281 = v10 - 1;
              }

              v313 = v266 - v5;
              v314 = *(a2 + 24);
              if (v266 <= v282)
              {
                *v314 = *v5;
                v317 = *(a2 + 24);
                if (v313 > 0x10)
                {
                  v318 = (v317 + 16);
                  v319 = v317 + v313;
                  v320 = (v5 + 16);
                  do
                  {
                    v321 = *v320++;
                    *v318++ = v321;
                  }

                  while (v318 < v319);
                  goto LABEL_464;
                }

                *(a2 + 24) = v317 + v313;
                v326 = *(a2 + 8);
              }

              else
              {
                if (v5 <= v282)
                {
                  v316 = v314 + v282 - v5;
                  v322 = v5;
                  do
                  {
                    v323 = *v322;
                    v322 += 16;
                    *v314++ = v323;
                  }

                  while (v314 < v316);
                  v315 = v282;
                }

                else
                {
                  v315 = v5;
                  v316 = *(a2 + 24);
                }

                if (v315 < v266)
                {
                  if (v5 <= v282)
                  {
                    v5 = v282;
                  }

                  v324 = v21 - v5 + 1;
                  do
                  {
                    v325 = *v315++;
                    *v316++ = v325;
                    --v324;
                  }

                  while (v324);
                }

LABEL_464:
                *(a2 + 24) += v313;
                v326 = *(a2 + 8);
                if (v313 >= 0x10000)
                {
                  v327 = (v326 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v327;
                }
              }

              v328 = v280 + 4;
              *(v326 + 4) = v313;
              *v326 = 1;
              v329 = v280 + 1;
              v330 = v26;
              if (!(v329 >> 16))
              {
                goto LABEL_469;
              }

LABEL_468:
              v331 = (v326 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v331;
              v26 = v330;
              goto LABEL_469;
            }
          }

          v259 = (0xCF1BBCDCB7A56463 * *_X5) >> v254;
          if (v260 > v17 && *v261 == v258)
          {
            break;
          }

          v260 = *(v7 + 4 * v259);
          v261 = (v9 + v260);
          if (v264 > v17)
          {
            v267 = v9 + v264;
            if (*(v9 + v264) == *v21)
            {
              if (v260 > v17 && *v261 == *_X5)
              {
                v292 = (_X5 + 8);
                v293 = (v261 + 1);
                v294 = v9 + v17;
                if (v256 <= (_X5 + 8))
                {
                  v296 = (_X5 + 8);
                  goto LABEL_533;
                }

                if (*v293 == *v292)
                {
                  v295 = 0;
                  v293 = (v9 + 16 + v260);
                  v296 = (_X5 + 16);
                  while (v296 < v256)
                  {
                    v298 = *v293;
                    v293 += 4;
                    v297 = v298;
                    v300 = *v296;
                    v296 += 4;
                    v299 = v300;
                    v295 += 8;
                    if (v297 != v300)
                    {
                      v301 = v295 + (__clz(__rbit64(v299 ^ v297)) >> 3);
                      v294 = v9 + v17;
                      goto LABEL_543;
                    }
                  }

                  v294 = v9 + v17;
LABEL_533:
                  if (v296 < v486 && *v293 == *v296)
                  {
                    v293 += 2;
                    v296 += 2;
                  }

                  if (v296 < v482 && *v293 == *v296)
                  {
                    ++v293;
                    ++v296;
                  }

                  if (v296 < v10 && *v293 == *v296)
                  {
                    v296 = (v296 + 1);
                  }

                  v301 = v296 - v292;
                }

                else
                {
                  v301 = __clz(__rbit64(*v292 ^ *v293)) >> 3;
                }

LABEL_543:
                v328 = v301 + 8;
                v330 = _X5 - v261;
                if (_X5 <= v5)
                {
                  v266 = _X5;
                }

                else
                {
                  v350 = _X5 - 1;
                  v351 = (v474 + v260);
                  while (*v350 == *v351)
                  {
                    ++v328;
                    v348 = v350 - 1;
                    if (v350 > v5)
                    {
                      --v350;
                      v129 = v351-- > v294;
                      if (v129)
                      {
                        continue;
                      }
                    }

                    goto LABEL_548;
                  }

LABEL_529:
                  v266 = v350 + 1;
                }

LABEL_550:
                v273 = v10 - 3;
                goto LABEL_551;
              }

              v302 = (v21 + 4);
              v303 = (v267 + 4);
              v304 = v9 + v17;
              if (v256 > (v21 + 4))
              {
                if (*v303 == *v302)
                {
                  v305 = 0;
                  v303 = (v9 + 12 + v264);
                  v306 = (v21 + 12);
                  while (v306 < v256)
                  {
                    v308 = *v303;
                    v303 += 4;
                    v307 = v308;
                    v310 = *v306;
                    v306 += 4;
                    v309 = v310;
                    v305 += 8;
                    if (v307 != v310)
                    {
                      v311 = v305 + (__clz(__rbit64(v309 ^ v307)) >> 3);
                      v304 = v9 + v17;
                      goto LABEL_524;
                    }
                  }

                  v304 = v9 + v17;
LABEL_514:
                  if (v306 < v486 && *v303 == *v306)
                  {
                    v303 += 2;
                    v306 += 2;
                  }

                  if (v306 < v482 && *v303 == *v306)
                  {
                    ++v303;
                    ++v306;
                  }

                  if (v306 < v10 && *v303 == *v306)
                  {
                    v306 = (v306 + 1);
                  }

                  v311 = v306 - v302;
                }

                else
                {
                  v311 = __clz(__rbit64(*v302 ^ *v303)) >> 3;
                }

LABEL_524:
                v328 = v311 + 4;
                v330 = &v21[-v267];
                if (v21 <= v5)
                {
LABEL_530:
                  v266 = v21;
                }

                else
                {
                  v348 = v21 - 1;
                  v349 = (v474 + v264);
                  while (*v348 == *v349)
                  {
                    ++v328;
                    v350 = v348 - 1;
                    if (v348 > v5)
                    {
                      --v348;
                      v129 = v349-- > v304;
                      if (v129)
                      {
                        continue;
                      }
                    }

                    goto LABEL_529;
                  }

LABEL_548:
                  v266 = v348 + 1;
                }

                goto LABEL_550;
              }

              v306 = (v21 + 4);
              goto LABEL_514;
            }
          }

          if (_X5 >= v257)
          {
            __asm
            {
              PRFM            #0, [X5,#0x40]
              PRFM            #0, [X5,#0x80]
            }

            ++v262;
            v257 += 256;
          }

          __asm { PRFM            #0, [X5,#0x100] }

          v21 = _X5;
          v258 = *_X5;
          _X5 += v262;
          if (_X5 > v18)
          {
            goto LABEL_570;
          }
        }

        v283 = (v21 + 8);
        v284 = v261 + 1;
        if (v256 <= (v21 + 8))
        {
          v286 = v21 + 8;
LABEL_427:
          v312 = v9 + v17;
          if (v286 < v486 && *v284 == *v286)
          {
            ++v284;
            v286 += 4;
          }

          if (v286 < v482 && *v284 == *v286)
          {
            v284 = (v284 + 2);
            v286 += 2;
          }

          if (v286 < v10 && *v284 == *v286)
          {
            ++v286;
          }

          v291 = v286 - v283;
        }

        else
        {
          if (*v284 == *v283)
          {
            v285 = 0;
            v284 = v261 + 2;
            v286 = v21 + 16;
            do
            {
              if (v286 >= v256)
              {
                goto LABEL_427;
              }

              v288 = *v284;
              v284 += 2;
              v287 = v288;
              v290 = *v286;
              v286 += 8;
              v289 = v290;
              v285 += 8;
            }

            while (v287 == v290);
            v291 = v285 + (__clz(__rbit64(v289 ^ v287)) >> 3);
          }

          else
          {
            v291 = __clz(__rbit64(*v283 ^ *v284)) >> 3;
          }

          v312 = v9 + v17;
        }

        v328 = v291 + 8;
        v330 = v21 - v261;
        if (v261 <= v312 || v21 <= v5)
        {
          goto LABEL_530;
        }

        v345 = v21 - 1;
        v346 = v261 - 1;
        v273 = v10 - 3;
        while (*v345 == *v346)
        {
          ++v328;
          v347 = v345 - 1;
          if (v345 > v5)
          {
            --v345;
            v129 = v346-- > v312;
            if (v129)
            {
              continue;
            }
          }

          v266 = v347 + 1;
          goto LABEL_551;
        }

        v266 = v345 + 1;
LABEL_551:
        if (v262 <= 3)
        {
          *(v7 + 4 * v259) = _X5 - v9;
        }

        v329 = v266 - v5;
        v352 = *(a2 + 24);
        v282 = v10 - 32;
        if (v266 <= v478)
        {
          *v352 = *v5;
          v356 = *(a2 + 24);
          v281 = v10 - 1;
          if (v329 > 0x10)
          {
            v357 = (v356 + 16);
            v358 = v356 + v329;
            v359 = (v5 + 16);
            do
            {
              v360 = *v359++;
              *v357++ = v360;
            }

            while (v357 < v358);
            goto LABEL_564;
          }

          *(a2 + 24) = v356 + v329;
          v326 = *(a2 + 8);
        }

        else
        {
          v281 = v10 - 1;
          if (v5 <= v478)
          {
            v353 = (v352 + v478 - v5);
            do
            {
              v354 = *v5;
              v5 += 16;
              *v352++ = v354;
            }

            while (v352 < v353);
            v5 = v10 - 32;
            v352 = v353;
          }

          while (v5 < v266)
          {
            v355 = *v5++;
            *v352 = v355;
            v352 = (v352 + 1);
          }

LABEL_564:
          *(a2 + 24) += v329;
          v326 = *(a2 + 8);
          if (v329 >= 0x10000)
          {
            v361 = (v326 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v361;
          }
        }

        *(v326 + 4) = v329;
        *v326 = v330 + 3;
        LOWORD(v329) = v328 - 3;
        v25 = v26;
        v26 = v330;
        if (v328 - 3 >= 0x10000)
        {
          goto LABEL_468;
        }

LABEL_469:
        *(v326 + 6) = v329;
        v332 = v326 + 8;
        *(a2 + 8) = v326 + 8;
        v5 = &v266[v328];
        if (&v266[v328] <= v18)
        {
          v333 = *(v9 + (v265 + 2));
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v333) >> v254)) = v265 + 2;
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v254)) = v5 - 2 - v9;
          *(v8 + 4 * ((0xCF1BBCDCBB000000 * v333) >> v255)) = v265 + 2;
          *(v8 + 4 * ((0xCF1BBCDCBB000000 * *(v5 - 1)) >> v255)) = v5 - 1 - v9;
          while (1)
          {
            v112 = v25;
            v25 = v26;
            if (!v112 || *v5 != *&v5[-v112])
            {
              break;
            }

            v334 = (v5 + 4);
            v335 = &v5[-v112 + 4];
            if (v256 <= (v5 + 4))
            {
              v337 = v5 + 4;
LABEL_481:
              if (v337 < v273 && *v335 == *v337)
              {
                v335 += 4;
                v337 += 4;
              }

              if (v337 < v281 && *v335 == *v337)
              {
                v335 += 2;
                v337 += 2;
              }

              if (v337 < v10 && *v335 == *v337)
              {
                ++v337;
              }

              v342 = v337 - v334;
            }

            else if (*v335 == *v334)
            {
              v336 = 0;
              v337 = v5 + 12;
              v335 = &v5[-v112 + 12];
              do
              {
                if (v337 >= v256)
                {
                  goto LABEL_481;
                }

                v339 = *v335;
                v335 += 8;
                v338 = v339;
                v341 = *v337;
                v337 += 8;
                v340 = v341;
                v336 += 8;
              }

              while (v338 == v341);
              v342 = v336 + (__clz(__rbit64(v340 ^ v338)) >> 3);
            }

            else
            {
              v342 = __clz(__rbit64(*v334 ^ *v335)) >> 3;
            }

            v343 = *v5;
            *(v8 + 4 * ((0xCF1BBCDCBB000000 * *v5) >> v255)) = v5 - v9;
            *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v343) >> v254)) = v5 - v9;
            if (v5 <= v282)
            {
              **(a2 + 24) = *v5;
              v332 = *(a2 + 8);
            }

            *(v332 + 4) = 0;
            *v332 = 1;
            if (v342 + 1 >= 0x10000)
            {
              v344 = (v332 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v344;
            }

            *(v332 + 6) = v342 + 1;
            v332 += 8;
            *(a2 + 8) = v332;
            v5 += v342 + 4;
            v26 = v112;
            v111 = v25;
            if (v5 > v18)
            {
              goto LABEL_499;
            }
          }

          v111 = v112;
          v112 = v26;
        }

        else
        {
          v111 = v25;
          v112 = v26;
        }

LABEL_499:
        _X5 = v5 + 1;
        v26 = v112;
        v25 = v111;
        v21 = v5;
        if ((v5 + 1) > v18)
        {
          goto LABEL_571;
        }
      }
    }

LABEL_570:
    LODWORD(v112) = v26;
    LODWORD(v111) = v25;
    goto LABEL_571;
  }

  if (v6 == 6)
  {
    if (_X5 <= v18)
    {
      v144 = *(a1 + 244);
      v145 = 64 - *(a1 + 248);
      v146 = 64 - v144;
      v147 = (v10 - 7);
      v473 = v9 - 1;
      v481 = v10 - 1;
      v485 = v10 - 3;
      v477 = v10 - 32;
      while (1)
      {
        v148 = (v21 + 256);
        v149 = *v21;
        v150 = (0xCF1BBCDCB7A56463 * *v21) >> v145;
        v151 = *(v7 + 4 * v150);
        v152 = (v9 + v151);
        v153 = 1;
        while (1)
        {
          v154 = (0xCF1BBCDCBF9B0000 * v149) >> v146;
          v155 = *(v8 + 4 * v154);
          v156 = v21 - v9;
          *(v8 + 4 * v154) = v21 - v9;
          *(v7 + 4 * v150) = v21 - v9;
          if (v26)
          {
            v157 = v21 + 1;
            if (*&v21[-v26 + 1] == *(v21 + 1))
            {
              v162 = (v21 + 5);
              v163 = &v21[-v26 + 5];
              if (v147 <= (v21 + 5))
              {
                v168 = v21 + 5;
                v164 = v10 - 1;
                v165 = v10 - 3;
                v166 = v10 - 32;
LABEL_221:
                if (v168 < v165 && *v163 == *v168)
                {
                  v163 += 4;
                  v168 += 4;
                }

                if (v168 < v164 && *v163 == *v168)
                {
                  v163 += 2;
                  v168 += 2;
                }

                if (v168 < v10 && *v163 == *v168)
                {
                  ++v168;
                }

                v173 = v168 - v162;
              }

              else
              {
                v164 = v10 - 1;
                v165 = v10 - 3;
                v166 = v10 - 32;
                if (*v163 == *v162)
                {
                  v167 = 0;
                  v168 = v21 + 13;
                  v163 = &v21[-v26 + 13];
                  do
                  {
                    if (v168 >= v147)
                    {
                      goto LABEL_221;
                    }

                    v170 = *v163;
                    v163 += 8;
                    v169 = v170;
                    v172 = *v168;
                    v168 += 8;
                    v171 = v172;
                    v167 += 8;
                  }

                  while (v169 == v172);
                  v173 = v167 + (__clz(__rbit64(v171 ^ v169)) >> 3);
                }

                else
                {
                  v173 = __clz(__rbit64(*v162 ^ *v163)) >> 3;
                }
              }

              v203 = v157 - v5;
              v204 = *(a2 + 24);
              if (v157 <= v166)
              {
                *v204 = *v5;
                v207 = *(a2 + 24);
                if (v203 > 0x10)
                {
                  v208 = (v207 + 16);
                  v209 = v207 + v203;
                  v210 = (v5 + 16);
                  do
                  {
                    v211 = *v210++;
                    *v208++ = v211;
                  }

                  while (v208 < v209);
                  goto LABEL_267;
                }

                *(a2 + 24) = v207 + v203;
                v216 = *(a2 + 8);
              }

              else
              {
                if (v5 <= v166)
                {
                  v206 = v204 + v166 - v5;
                  v212 = v5;
                  do
                  {
                    v213 = *v212;
                    v212 += 16;
                    *v204++ = v213;
                  }

                  while (v204 < v206);
                  v205 = v166;
                }

                else
                {
                  v205 = v5;
                  v206 = *(a2 + 24);
                }

                if (v205 < v157)
                {
                  if (v5 <= v166)
                  {
                    v5 = v166;
                  }

                  v214 = v21 - v5 + 1;
                  do
                  {
                    v215 = *v205++;
                    *v206++ = v215;
                    --v214;
                  }

                  while (v214);
                }

LABEL_267:
                *(a2 + 24) += v203;
                v216 = *(a2 + 8);
                if (v203 >= 0x10000)
                {
                  v217 = (v216 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v217;
                }
              }

              v218 = v173 + 4;
              *(v216 + 4) = v203;
              *v216 = 1;
              v219 = v173 + 1;
              v220 = v26;
              if (!(v219 >> 16))
              {
                goto LABEL_272;
              }

LABEL_271:
              v221 = (v216 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v221;
              v26 = v220;
              goto LABEL_272;
            }
          }

          v150 = (0xCF1BBCDCB7A56463 * *_X5) >> v145;
          if (v151 > v17 && *v152 == v149)
          {
            break;
          }

          v151 = *(v7 + 4 * v150);
          v152 = (v9 + v151);
          if (v155 > v17)
          {
            v158 = v9 + v155;
            if (*(v9 + v155) == *v21)
            {
              if (v151 > v17 && *v152 == *_X5)
              {
                v183 = (_X5 + 8);
                v184 = (v152 + 1);
                v185 = v9 + v17;
                if (v147 <= (_X5 + 8))
                {
                  v187 = (_X5 + 8);
                  goto LABEL_348;
                }

                if (*v184 == *v183)
                {
                  v186 = 0;
                  v184 = (v9 + 16 + v151);
                  v187 = (_X5 + 16);
                  while (v187 < v147)
                  {
                    v189 = *v184;
                    v184 += 4;
                    v188 = v189;
                    v191 = *v187;
                    v187 += 4;
                    v190 = v191;
                    v186 += 8;
                    if (v188 != v191)
                    {
                      v192 = v186 + (__clz(__rbit64(v190 ^ v188)) >> 3);
                      v185 = v9 + v17;
                      goto LABEL_358;
                    }
                  }

                  v185 = v9 + v17;
LABEL_348:
                  if (v187 < v485 && *v184 == *v187)
                  {
                    v184 += 2;
                    v187 += 2;
                  }

                  if (v187 < v481 && *v184 == *v187)
                  {
                    ++v184;
                    ++v187;
                  }

                  if (v187 < v10 && *v184 == *v187)
                  {
                    v187 = (v187 + 1);
                  }

                  v192 = v187 - v183;
                }

                else
                {
                  v192 = __clz(__rbit64(*v183 ^ *v184)) >> 3;
                }

LABEL_358:
                v218 = v192 + 8;
                v220 = _X5 - v152;
                if (_X5 <= v5)
                {
                  v157 = _X5;
                }

                else
                {
                  v241 = _X5 - 1;
                  v242 = (v473 + v151);
                  while (*v241 == *v242)
                  {
                    ++v218;
                    v239 = v241 - 1;
                    if (v241 > v5)
                    {
                      --v241;
                      v129 = v242-- > v185;
                      if (v129)
                      {
                        continue;
                      }
                    }

                    goto LABEL_363;
                  }

LABEL_344:
                  v157 = v241 + 1;
                }

LABEL_365:
                v165 = v10 - 3;
                goto LABEL_366;
              }

              v193 = (v21 + 4);
              v194 = (v158 + 4);
              v195 = v9 + v17;
              if (v147 > (v21 + 4))
              {
                if (*v194 == *v193)
                {
                  v196 = 0;
                  v194 = (v9 + 12 + v155);
                  v197 = (v21 + 12);
                  while (v197 < v147)
                  {
                    v199 = *v194;
                    v194 += 4;
                    v198 = v199;
                    v201 = *v197;
                    v197 += 4;
                    v200 = v201;
                    v196 += 8;
                    if (v198 != v201)
                    {
                      v202 = v196 + (__clz(__rbit64(v200 ^ v198)) >> 3);
                      v195 = v9 + v17;
                      goto LABEL_339;
                    }
                  }

                  v195 = v9 + v17;
LABEL_329:
                  if (v197 < v485 && *v194 == *v197)
                  {
                    v194 += 2;
                    v197 += 2;
                  }

                  if (v197 < v481 && *v194 == *v197)
                  {
                    ++v194;
                    ++v197;
                  }

                  if (v197 < v10 && *v194 == *v197)
                  {
                    v197 = (v197 + 1);
                  }

                  v202 = v197 - v193;
                }

                else
                {
                  v202 = __clz(__rbit64(*v193 ^ *v194)) >> 3;
                }

LABEL_339:
                v218 = v202 + 4;
                v220 = &v21[-v158];
                if (v21 <= v5)
                {
LABEL_345:
                  v157 = v21;
                }

                else
                {
                  v239 = v21 - 1;
                  v240 = (v473 + v155);
                  while (*v239 == *v240)
                  {
                    ++v218;
                    v241 = v239 - 1;
                    if (v239 > v5)
                    {
                      --v239;
                      v129 = v240-- > v195;
                      if (v129)
                      {
                        continue;
                      }
                    }

                    goto LABEL_344;
                  }

LABEL_363:
                  v157 = v239 + 1;
                }

                goto LABEL_365;
              }

              v197 = (v21 + 4);
              goto LABEL_329;
            }
          }

          if (_X5 >= v148)
          {
            __asm
            {
              PRFM            #0, [X5,#0x40]
              PRFM            #0, [X5,#0x80]
            }

            ++v153;
            v148 += 256;
          }

          __asm { PRFM            #0, [X5,#0x100] }

          v21 = _X5;
          v149 = *_X5;
          _X5 += v153;
          if (_X5 > v18)
          {
            goto LABEL_570;
          }
        }

        v174 = (v21 + 8);
        v175 = v152 + 1;
        if (v147 <= (v21 + 8))
        {
          v177 = v21 + 8;
LABEL_305:
          v235 = v9 + v17;
          if (v177 < v485 && *v175 == *v177)
          {
            ++v175;
            v177 += 4;
          }

          if (v177 < v481 && *v175 == *v177)
          {
            v175 = (v175 + 2);
            v177 += 2;
          }

          if (v177 < v10 && *v175 == *v177)
          {
            ++v177;
          }

          v182 = v177 - v174;
        }

        else
        {
          if (*v175 == *v174)
          {
            v176 = 0;
            v175 = v152 + 2;
            v177 = v21 + 16;
            do
            {
              if (v177 >= v147)
              {
                goto LABEL_305;
              }

              v179 = *v175;
              v175 += 2;
              v178 = v179;
              v181 = *v177;
              v177 += 8;
              v180 = v181;
              v176 += 8;
            }

            while (v178 == v181);
            v182 = v176 + (__clz(__rbit64(v180 ^ v178)) >> 3);
          }

          else
          {
            v182 = __clz(__rbit64(*v174 ^ *v175)) >> 3;
          }

          v235 = v9 + v17;
        }

        v218 = v182 + 8;
        v220 = v21 - v152;
        if (v152 <= v235 || v21 <= v5)
        {
          goto LABEL_345;
        }

        v236 = v21 - 1;
        v237 = v152 - 1;
        v165 = v10 - 3;
        while (*v236 == *v237)
        {
          ++v218;
          v238 = v236 - 1;
          if (v236 > v5)
          {
            --v236;
            v129 = v237-- > v235;
            if (v129)
            {
              continue;
            }
          }

          v157 = v238 + 1;
          goto LABEL_366;
        }

        v157 = v236 + 1;
LABEL_366:
        if (v153 <= 3)
        {
          *(v7 + 4 * v150) = _X5 - v9;
        }

        v219 = v157 - v5;
        v243 = *(a2 + 24);
        v166 = v10 - 32;
        if (v157 <= v477)
        {
          *v243 = *v5;
          v247 = *(a2 + 24);
          v164 = v10 - 1;
          if (v219 > 0x10)
          {
            v248 = (v247 + 16);
            v249 = v247 + v219;
            v250 = (v5 + 16);
            do
            {
              v251 = *v250++;
              *v248++ = v251;
            }

            while (v248 < v249);
            goto LABEL_379;
          }

          *(a2 + 24) = v247 + v219;
          v216 = *(a2 + 8);
        }

        else
        {
          v164 = v10 - 1;
          if (v5 <= v477)
          {
            v244 = (v243 + v477 - v5);
            do
            {
              v245 = *v5;
              v5 += 16;
              *v243++ = v245;
            }

            while (v243 < v244);
            v5 = v10 - 32;
            v243 = v244;
          }

          while (v5 < v157)
          {
            v246 = *v5++;
            *v243 = v246;
            v243 = (v243 + 1);
          }

LABEL_379:
          *(a2 + 24) += v219;
          v216 = *(a2 + 8);
          if (v219 >= 0x10000)
          {
            v252 = (v216 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v252;
          }
        }

        *(v216 + 4) = v219;
        *v216 = v220 + 3;
        LOWORD(v219) = v218 - 3;
        v25 = v26;
        v26 = v220;
        if (v218 - 3 >= 0x10000)
        {
          goto LABEL_271;
        }

LABEL_272:
        *(v216 + 6) = v219;
        v222 = v216 + 8;
        *(a2 + 8) = v216 + 8;
        v5 = &v157[v218];
        if (&v157[v218] <= v18)
        {
          v223 = *(v9 + (v156 + 2));
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v223) >> v145)) = v156 + 2;
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v145)) = v5 - 2 - v9;
          *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * v223) >> v146)) = v156 + 2;
          *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *(v5 - 1)) >> v146)) = v5 - 1 - v9;
          while (1)
          {
            v112 = v25;
            v25 = v26;
            if (!v112 || *v5 != *&v5[-v112])
            {
              break;
            }

            v224 = (v5 + 4);
            v225 = &v5[-v112 + 4];
            if (v147 <= (v5 + 4))
            {
              v227 = v5 + 4;
LABEL_284:
              if (v227 < v165 && *v225 == *v227)
              {
                v225 += 4;
                v227 += 4;
              }

              if (v227 < v164 && *v225 == *v227)
              {
                v225 += 2;
                v227 += 2;
              }

              if (v227 < v10 && *v225 == *v227)
              {
                ++v227;
              }

              v232 = v227 - v224;
            }

            else if (*v225 == *v224)
            {
              v226 = 0;
              v227 = v5 + 12;
              v225 = &v5[-v112 + 12];
              do
              {
                if (v227 >= v147)
                {
                  goto LABEL_284;
                }

                v229 = *v225;
                v225 += 8;
                v228 = v229;
                v231 = *v227;
                v227 += 8;
                v230 = v231;
                v226 += 8;
              }

              while (v228 == v231);
              v232 = v226 + (__clz(__rbit64(v230 ^ v228)) >> 3);
            }

            else
            {
              v232 = __clz(__rbit64(*v224 ^ *v225)) >> 3;
            }

            v233 = *v5;
            *(v8 + 4 * ((0xCF1BBCDCBF9B0000 * *v5) >> v146)) = v5 - v9;
            *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v233) >> v145)) = v5 - v9;
            if (v5 <= v166)
            {
              **(a2 + 24) = *v5;
              v222 = *(a2 + 8);
            }

            *(v222 + 4) = 0;
            *v222 = 1;
            if (v232 + 1 >= 0x10000)
            {
              v234 = (v222 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v234;
            }

            *(v222 + 6) = v232 + 1;
            v222 += 8;
            *(a2 + 8) = v222;
            v5 += v232 + 4;
            v26 = v112;
            v111 = v25;
            if (v5 > v18)
            {
              goto LABEL_302;
            }
          }

          v111 = v112;
          v112 = v26;
        }

        else
        {
          v111 = v25;
          v112 = v26;
        }

LABEL_302:
        _X5 = v5 + 1;
        v26 = v112;
        v25 = v111;
        v21 = v5;
        if ((v5 + 1) > v18)
        {
          goto LABEL_571;
        }
      }
    }

    goto LABEL_570;
  }

  if (v6 != 7)
  {
    if (_X5 <= v18)
    {
      v365 = *(a1 + 244);
      v366 = 64 - *(a1 + 248);
      v367 = 32 - v365;
      v368 = (v10 - 7);
      v475 = v9 - 1;
      v483 = v10 - 1;
      v487 = v10 - 3;
      v479 = v10 - 32;
      while (1)
      {
        v369 = (v21 + 256);
        v370 = *v21;
        v371 = (0xCF1BBCDCB7A56463 * *v21) >> v366;
        v372 = *(v7 + 4 * v371);
        v373 = (v9 + v372);
        v374 = 1;
        while (1)
        {
          v375 = (-1640531535 * v370) >> v367;
          v376 = *(v8 + 4 * v375);
          v377 = v21 - v9;
          *(v8 + 4 * v375) = v21 - v9;
          *(v7 + 4 * v371) = v21 - v9;
          if (v26)
          {
            v378 = v21 + 1;
            if (*&v21[-v26 + 1] == *(v21 + 1))
            {
              v383 = (v21 + 5);
              v384 = &v21[-v26 + 5];
              if (v368 <= (v21 + 5))
              {
                v389 = v21 + 5;
                v386 = v10 - 1;
                v385 = v10 - 3;
                v387 = v10 - 32;
LABEL_600:
                if (v389 < v385 && *v384 == *v389)
                {
                  v384 += 4;
                  v389 += 4;
                }

                if (v389 < v386 && *v384 == *v389)
                {
                  v384 += 2;
                  v389 += 2;
                }

                if (v389 < v10 && *v384 == *v389)
                {
                  ++v389;
                }

                v394 = v389 - v383;
              }

              else
              {
                v386 = v10 - 1;
                v385 = v10 - 3;
                v387 = v10 - 32;
                if (*v384 == *v383)
                {
                  v388 = 0;
                  v389 = v21 + 13;
                  v384 = &v21[-v26 + 13];
                  do
                  {
                    if (v389 >= v368)
                    {
                      goto LABEL_600;
                    }

                    v391 = *v384;
                    v384 += 8;
                    v390 = v391;
                    v393 = *v389;
                    v389 += 8;
                    v392 = v393;
                    v388 += 8;
                  }

                  while (v390 == v393);
                  v394 = v388 + (__clz(__rbit64(v392 ^ v390)) >> 3);
                }

                else
                {
                  v394 = __clz(__rbit64(*v383 ^ *v384)) >> 3;
                }
              }

              v424 = v378 - v5;
              v425 = *(a2 + 24);
              if (v378 <= v387)
              {
                *v425 = *v5;
                v428 = *(a2 + 24);
                if (v424 > 0x10)
                {
                  v429 = (v428 + 16);
                  v430 = v428 + v424;
                  v431 = (v5 + 16);
                  do
                  {
                    v432 = *v431++;
                    *v429++ = v432;
                  }

                  while (v429 < v430);
                  goto LABEL_646;
                }

                *(a2 + 24) = v428 + v424;
                v437 = *(a2 + 8);
              }

              else
              {
                if (v5 <= v387)
                {
                  v427 = v425 + v387 - v5;
                  v433 = v5;
                  do
                  {
                    v434 = *v433;
                    v433 += 16;
                    *v425++ = v434;
                  }

                  while (v425 < v427);
                  v426 = v387;
                }

                else
                {
                  v426 = v5;
                  v427 = *(a2 + 24);
                }

                if (v426 < v378)
                {
                  if (v5 <= v387)
                  {
                    v5 = v387;
                  }

                  v435 = v21 - v5 + 1;
                  do
                  {
                    v436 = *v426++;
                    *v427++ = v436;
                    --v435;
                  }

                  while (v435);
                }

LABEL_646:
                *(a2 + 24) += v424;
                v437 = *(a2 + 8);
                if (v424 >= 0x10000)
                {
                  v438 = (v437 - *a2) >> 3;
                  *(a2 + 72) = 1;
                  *(a2 + 76) = v438;
                }
              }

              v439 = v394 + 4;
              *(v437 + 4) = v424;
              *v437 = 1;
              v440 = v394 + 1;
              v441 = v26;
              if (!(v440 >> 16))
              {
                goto LABEL_651;
              }

LABEL_650:
              v442 = (v437 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v442;
              v26 = v441;
              goto LABEL_651;
            }
          }

          v370 = *_X5;
          v371 = (0xCF1BBCDCB7A56463 * *_X5) >> v366;
          if (v372 > v17 && *v373 == *v21)
          {
            break;
          }

          v372 = *(v7 + 4 * v371);
          v373 = (v9 + v372);
          if (v376 > v17)
          {
            v379 = v9 + v376;
            if (*(v9 + v376) == *v21)
            {
              if (v372 > v17 && *v373 == v370)
              {
                v404 = (_X5 + 8);
                v405 = (v373 + 1);
                v406 = v9 + v17;
                if (v368 <= (_X5 + 8))
                {
                  v408 = (_X5 + 8);
                  goto LABEL_727;
                }

                if (*v405 == *v404)
                {
                  v407 = 0;
                  v405 = (v9 + 16 + v372);
                  v408 = (_X5 + 16);
                  while (v408 < v368)
                  {
                    v410 = *v405;
                    v405 += 4;
                    v409 = v410;
                    v412 = *v408;
                    v408 += 4;
                    v411 = v412;
                    v407 += 8;
                    if (v409 != v412)
                    {
                      v413 = v407 + (__clz(__rbit64(v411 ^ v409)) >> 3);
                      v406 = v9 + v17;
                      goto LABEL_737;
                    }
                  }

                  v406 = v9 + v17;
LABEL_727:
                  if (v408 < v487 && *v405 == *v408)
                  {
                    v405 += 2;
                    v408 += 2;
                  }

                  if (v408 < v483 && *v405 == *v408)
                  {
                    ++v405;
                    ++v408;
                  }

                  if (v408 < v10 && *v405 == *v408)
                  {
                    v408 = (v408 + 1);
                  }

                  v413 = v408 - v404;
                }

                else
                {
                  v413 = __clz(__rbit64(*v404 ^ *v405)) >> 3;
                }

LABEL_737:
                v439 = v413 + 8;
                v441 = _X5 - v373;
                if (_X5 <= v5)
                {
                  v378 = _X5;
                }

                else
                {
                  v460 = _X5 - 1;
                  v461 = (v475 + v372);
                  while (*v460 == *v461)
                  {
                    ++v439;
                    v458 = v460 - 1;
                    if (v460 > v5)
                    {
                      --v460;
                      v129 = v461-- > v406;
                      if (v129)
                      {
                        continue;
                      }
                    }

                    goto LABEL_742;
                  }

LABEL_723:
                  v378 = v460 + 1;
                }

LABEL_744:
                v385 = v10 - 3;
                goto LABEL_745;
              }

              v414 = (v21 + 4);
              v415 = (v379 + 4);
              v416 = v9 + v17;
              if (v368 > (v21 + 4))
              {
                if (*v415 == *v414)
                {
                  v417 = 0;
                  v415 = (v9 + 12 + v376);
                  v418 = (v21 + 12);
                  while (v418 < v368)
                  {
                    v420 = *v415;
                    v415 += 4;
                    v419 = v420;
                    v422 = *v418;
                    v418 += 4;
                    v421 = v422;
                    v417 += 8;
                    if (v419 != v422)
                    {
                      v423 = v417 + (__clz(__rbit64(v421 ^ v419)) >> 3);
                      v416 = v9 + v17;
                      goto LABEL_718;
                    }
                  }

                  v416 = v9 + v17;
LABEL_708:
                  if (v418 < v487 && *v415 == *v418)
                  {
                    v415 += 2;
                    v418 += 2;
                  }

                  if (v418 < v483 && *v415 == *v418)
                  {
                    ++v415;
                    ++v418;
                  }

                  if (v418 < v10 && *v415 == *v418)
                  {
                    v418 = (v418 + 1);
                  }

                  v423 = v418 - v414;
                }

                else
                {
                  v423 = __clz(__rbit64(*v414 ^ *v415)) >> 3;
                }

LABEL_718:
                v439 = v423 + 4;
                v441 = &v21[-v379];
                if (v21 <= v5)
                {
LABEL_724:
                  v378 = v21;
                  v385 = v10 - 3;
                  goto LABEL_745;
                }

                v458 = v21 - 1;
                v459 = (v475 + v376);
                while (*v458 == *v459)
                {
                  ++v439;
                  v460 = v458 - 1;
                  if (v458 > v5)
                  {
                    --v458;
                    v129 = v459-- > v416;
                    if (v129)
                    {
                      continue;
                    }
                  }

                  goto LABEL_723;
                }

LABEL_742:
                v378 = v458 + 1;
                goto LABEL_744;
              }

              v418 = (v21 + 4);
              goto LABEL_708;
            }
          }

          if (_X5 >= v369)
          {
            __asm
            {
              PRFM            #0, [X5,#0x40]
              PRFM            #0, [X5,#0x80]
            }

            ++v374;
            v369 += 256;
          }

          __asm { PRFM            #0, [X5,#0x100] }

          v21 = _X5;
          _X5 += v374;
          if (_X5 > v18)
          {
            goto LABEL_570;
          }
        }

        v395 = (v21 + 8);
        v396 = v373 + 1;
        if (v368 <= (v21 + 8))
        {
          v398 = v21 + 8;
LABEL_684:
          v454 = v9 + v17;
          if (v398 < v487 && *v396 == *v398)
          {
            ++v396;
            v398 += 4;
          }

          if (v398 < v483 && *v396 == *v398)
          {
            v396 = (v396 + 2);
            v398 += 2;
          }

          if (v398 < v10 && *v396 == *v398)
          {
            ++v398;
          }

          v403 = v398 - v395;
        }

        else
        {
          if (*v396 == *v395)
          {
            v397 = 0;
            v396 = v373 + 2;
            v398 = v21 + 16;
            do
            {
              if (v398 >= v368)
              {
                goto LABEL_684;
              }

              v400 = *v396;
              v396 += 2;
              v399 = v400;
              v402 = *v398;
              v398 += 8;
              v401 = v402;
              v397 += 8;
            }

            while (v399 == v402);
            v403 = v397 + (__clz(__rbit64(v401 ^ v399)) >> 3);
          }

          else
          {
            v403 = __clz(__rbit64(*v395 ^ *v396)) >> 3;
          }

          v454 = v9 + v17;
        }

        v439 = v403 + 8;
        v441 = v21 - v373;
        if (v373 <= v454 || v21 <= v5)
        {
          goto LABEL_724;
        }

        v455 = v21 - 1;
        v456 = v373 - 1;
        v385 = v10 - 3;
        while (*v455 == *v456)
        {
          ++v439;
          v457 = v455 - 1;
          if (v455 > v5)
          {
            --v455;
            v129 = v456-- > v454;
            if (v129)
            {
              continue;
            }
          }

          v378 = v457 + 1;
          goto LABEL_745;
        }

        v378 = v455 + 1;
LABEL_745:
        if (v374 <= 3)
        {
          *(v7 + 4 * v371) = _X5 - v9;
        }

        v440 = v378 - v5;
        v462 = *(a2 + 24);
        v387 = v10 - 32;
        v386 = v10 - 1;
        if (v378 <= v479)
        {
          *v462 = *v5;
          v466 = *(a2 + 24);
          if (v440 > 0x10)
          {
            v467 = (v466 + 16);
            v468 = v466 + v440;
            v469 = (v5 + 16);
            do
            {
              v470 = *v469++;
              *v467++ = v470;
            }

            while (v467 < v468);
            goto LABEL_758;
          }

          *(a2 + 24) = v466 + v440;
          v437 = *(a2 + 8);
        }

        else
        {
          if (v5 <= v479)
          {
            v463 = (v462 + v479 - v5);
            do
            {
              v464 = *v5;
              v5 += 16;
              *v462++ = v464;
            }

            while (v462 < v463);
            v5 = v10 - 32;
            v462 = v463;
          }

          while (v5 < v378)
          {
            v465 = *v5++;
            *v462 = v465;
            v462 = (v462 + 1);
          }

LABEL_758:
          *(a2 + 24) += v440;
          v437 = *(a2 + 8);
          if (v440 >= 0x10000)
          {
            v471 = (v437 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v471;
          }
        }

        *(v437 + 4) = v440;
        *v437 = v441 + 3;
        LOWORD(v440) = v439 - 3;
        v25 = v26;
        v26 = v441;
        if (v439 - 3 >= 0x10000)
        {
          goto LABEL_650;
        }

LABEL_651:
        *(v437 + 6) = v440;
        v443 = v437 + 8;
        *(a2 + 8) = v437 + 8;
        v5 = &v378[v439];
        if (&v378[v439] <= v18)
        {
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *(v9 + (v377 + 2))) >> v366)) = v377 + 2;
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v366)) = v5 - 2 - v9;
          *(v8 + 4 * ((-1640531535 * *(v9 + (v377 + 2))) >> v367)) = v377 + 2;
          *(v8 + 4 * ((-1640531535 * *(v5 - 1)) >> v367)) = v5 - 1 - v9;
          while (1)
          {
            v112 = v25;
            v25 = v26;
            if (!v112 || *v5 != *&v5[-v112])
            {
              break;
            }

            v444 = (v5 + 4);
            v445 = &v5[-v112 + 4];
            if (v368 <= (v5 + 4))
            {
              v447 = v5 + 4;
LABEL_663:
              if (v447 < v385 && *v445 == *v447)
              {
                v445 += 4;
                v447 += 4;
              }

              if (v447 < v386 && *v445 == *v447)
              {
                v445 += 2;
                v447 += 2;
              }

              if (v447 < v10 && *v445 == *v447)
              {
                ++v447;
              }

              v452 = v447 - v444;
            }

            else if (*v445 == *v444)
            {
              v446 = 0;
              v447 = v5 + 12;
              v445 = &v5[-v112 + 12];
              do
              {
                if (v447 >= v368)
                {
                  goto LABEL_663;
                }

                v449 = *v445;
                v445 += 8;
                v448 = v449;
                v451 = *v447;
                v447 += 8;
                v450 = v451;
                v446 += 8;
              }

              while (v448 == v451);
              v452 = v446 + (__clz(__rbit64(v450 ^ v448)) >> 3);
            }

            else
            {
              v452 = __clz(__rbit64(*v444 ^ *v445)) >> 3;
            }

            *(v8 + 4 * ((-1640531535 * *v5) >> v367)) = v5 - v9;
            *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *v5) >> v366)) = v5 - v9;
            if (v5 <= v387)
            {
              **(a2 + 24) = *v5;
              v443 = *(a2 + 8);
            }

            *(v443 + 4) = 0;
            *v443 = 1;
            if (v452 + 1 >= 0x10000)
            {
              v453 = (v443 - *a2) >> 3;
              *(a2 + 72) = 2;
              *(a2 + 76) = v453;
            }

            *(v443 + 6) = v452 + 1;
            v443 += 8;
            *(a2 + 8) = v443;
            v5 += v452 + 4;
            v26 = v112;
            v111 = v25;
            if (v5 > v18)
            {
              goto LABEL_681;
            }
          }

          v111 = v112;
          v112 = v26;
        }

        else
        {
          v111 = v25;
          v112 = v26;
        }

LABEL_681:
        _X5 = v5 + 1;
        v26 = v112;
        v25 = v111;
        v21 = v5;
        if ((v5 + 1) > v18)
        {
          goto LABEL_571;
        }
      }
    }

    goto LABEL_570;
  }

  if (_X5 > v18)
  {
    goto LABEL_570;
  }

  v28 = *(a1 + 244);
  v29 = 64 - *(a1 + 248);
  v30 = 64 - v28;
  v31 = (v10 - 7);
  v472 = v9 - 1;
  v480 = v10 - 1;
  v484 = v10 - 3;
  v476 = v10 - 32;
  do
  {
    v32 = (v21 + 256);
    v33 = *v21;
    v34 = (0xCF1BBCDCB7A56463 * *v21) >> v29;
    v35 = *(v7 + 4 * v34);
    v36 = (v9 + v35);
    v37 = 1;
    while (1)
    {
      v38 = (0xCF1BBCDCBFA56300 * v33) >> v30;
      v39 = *(v8 + 4 * v38);
      v40 = v21 - v9;
      *(v8 + 4 * v38) = v21 - v9;
      *(v7 + 4 * v34) = v21 - v9;
      if (v26)
      {
        v41 = v21 + 1;
        if (*&v21[-v26 + 1] == *(v21 + 1))
        {
          v50 = (v21 + 5);
          v51 = &v21[-v26 + 5];
          if (v31 <= (v21 + 5))
          {
            v56 = (v21 + 5);
            v52 = v10 - 1;
            v53 = v10 - 3;
            v54 = v10 - 32;
          }

          else
          {
            v52 = v10 - 1;
            v53 = v10 - 3;
            v54 = v10 - 32;
            if (*v51 != *v50)
            {
              v61 = __clz(__rbit64(*v50 ^ *v51)) >> 3;
              goto LABEL_69;
            }

            v55 = 0;
            v56 = (v21 + 13);
            v51 = &v21[-v26 + 13];
            while (v56 < v31)
            {
              v58 = *v51;
              v51 += 8;
              v57 = v58;
              v60 = *v56;
              v56 += 4;
              v59 = v60;
              v55 += 8;
              if (v57 != v60)
              {
                v61 = v55 + (__clz(__rbit64(v59 ^ v57)) >> 3);
                goto LABEL_69;
              }
            }
          }

          if (v56 < v53 && *v51 == *v56)
          {
            v51 += 4;
            v56 += 2;
          }

          if (v56 < v52 && *v51 == *v56)
          {
            v51 += 2;
            ++v56;
          }

          if (v56 < v10 && *v51 == *v56)
          {
            v56 = (v56 + 1);
          }

          v61 = v56 - v50;
LABEL_69:
          v91 = v41 - v5;
          v92 = *(a2 + 24);
          if (v41 <= v54)
          {
            *v92 = *v5;
            v95 = *(a2 + 24);
            if (v91 <= 0x10)
            {
              *(a2 + 24) = v95 + v91;
              v104 = *(a2 + 8);
              goto LABEL_87;
            }

            v96 = (v95 + 16);
            v97 = v95 + v91;
            v98 = (v5 + 16);
            do
            {
              v99 = *v98++;
              *v96++ = v99;
            }

            while (v96 < v97);
          }

          else
          {
            if (v5 <= v54)
            {
              v94 = v92 + v54 - v5;
              v100 = v5;
              do
              {
                v101 = *v100;
                v100 += 16;
                *v92++ = v101;
              }

              while (v92 < v94);
              v93 = v54;
            }

            else
            {
              v93 = v5;
              v94 = *(a2 + 24);
            }

            if (v93 < v41)
            {
              if (v5 <= v54)
              {
                v5 = v54;
              }

              v102 = v21 - v5 + 1;
              do
              {
                v103 = *v93++;
                *v94++ = v103;
                --v102;
              }

              while (v102);
            }
          }

          *(a2 + 24) += v91;
          v104 = *(a2 + 8);
          if (v91 >= 0x10000)
          {
            v105 = (v104 - *a2) >> 3;
            *(a2 + 72) = 1;
            *(a2 + 76) = v105;
          }

LABEL_87:
          v106 = v61 + 4;
          *(v104 + 4) = v91;
          *v104 = 1;
          v107 = v61 + 1;
          v108 = v26;
          if (!(v107 >> 16))
          {
            goto LABEL_89;
          }

LABEL_88:
          v109 = (v104 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v109;
          v26 = v108;
          goto LABEL_89;
        }
      }

      v34 = (0xCF1BBCDCB7A56463 * *_X5) >> v29;
      if (v35 > v17 && *v36 == v33)
      {
        break;
      }

      v35 = *(v7 + 4 * v34);
      v36 = (v9 + v35);
      if (v39 > v17)
      {
        v42 = v9 + v39;
        if (*(v9 + v39) == *v21)
        {
          if (v35 > v17 && *v36 == *_X5)
          {
            v71 = (_X5 + 8);
            v72 = v36 + 1;
            v73 = v9 + v17;
            if (v31 <= (_X5 + 8))
            {
              v75 = (_X5 + 8);
            }

            else
            {
              if (*v72 != *v71)
              {
                v80 = __clz(__rbit64(*v71 ^ *v72)) >> 3;
                goto LABEL_175;
              }

              v74 = 0;
              v72 = (v9 + 16 + v35);
              v75 = (_X5 + 16);
              while (v75 < v31)
              {
                v77 = *v72++;
                v76 = v77;
                v79 = *v75;
                v75 += 4;
                v78 = v79;
                v74 += 8;
                if (v76 != v79)
                {
                  v80 = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
                  v73 = v9 + v17;
                  goto LABEL_175;
                }
              }

              v73 = v9 + v17;
            }

            if (v75 < v484 && *v72 == *v75)
            {
              v72 = (v72 + 4);
              v75 += 2;
            }

            if (v75 < v480 && *v72 == *v75)
            {
              v72 = (v72 + 2);
              ++v75;
            }

            if (v75 < v10 && *v72 == *v75)
            {
              v75 = (v75 + 1);
            }

            v80 = v75 - v71;
LABEL_175:
            v106 = v80 + 8;
            v108 = _X5 - v36;
            if (_X5 <= v5)
            {
              v41 = _X5;
            }

            else
            {
              v132 = _X5 - 1;
              v133 = (v472 + v35);
              while (*v132 == *v133)
              {
                ++v106;
                v130 = v132 - 1;
                if (v132 > v5)
                {
                  --v132;
                  v129 = v133-- > v73;
                  if (v129)
                  {
                    continue;
                  }
                }

                goto LABEL_180;
              }

LABEL_161:
              v41 = v132 + 1;
            }

            goto LABEL_182;
          }

          v81 = (v21 + 4);
          v82 = (v42 + 4);
          v83 = v9 + v17;
          if (v31 <= (v21 + 4))
          {
            v85 = (v21 + 4);
          }

          else
          {
            if (*v82 != *v81)
            {
              v90 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
              goto LABEL_156;
            }

            v84 = 0;
            v82 = (v9 + 12 + v39);
            v85 = (v21 + 12);
            while (v85 < v31)
            {
              v87 = *v82++;
              v86 = v87;
              v89 = *v85;
              v85 += 4;
              v88 = v89;
              v84 += 8;
              if (v86 != v89)
              {
                v90 = v84 + (__clz(__rbit64(v88 ^ v86)) >> 3);
                v83 = v9 + v17;
                goto LABEL_156;
              }
            }

            v83 = v9 + v17;
          }

          if (v85 < v484 && *v82 == *v85)
          {
            v82 = (v82 + 4);
            v85 += 2;
          }

          if (v85 < v480 && *v82 == *v85)
          {
            v82 = (v82 + 2);
            ++v85;
          }

          if (v85 < v10 && *v82 == *v85)
          {
            v85 = (v85 + 1);
          }

          v90 = v85 - v81;
LABEL_156:
          v106 = v90 + 4;
          v108 = &v21[-v42];
          if (v21 <= v5)
          {
LABEL_162:
            v41 = v21;
          }

          else
          {
            v130 = v21 - 1;
            v131 = (v472 + v39);
            while (*v130 == *v131)
            {
              ++v106;
              v132 = v130 - 1;
              if (v130 > v5)
              {
                --v130;
                v129 = v131-- > v83;
                if (v129)
                {
                  continue;
                }
              }

              goto LABEL_161;
            }

LABEL_180:
            v41 = v130 + 1;
          }

LABEL_182:
          v53 = v10 - 3;
          goto LABEL_183;
        }
      }

      if (_X5 >= v32)
      {
        __asm
        {
          PRFM            #0, [X5,#0x40]
          PRFM            #0, [X5,#0x80]
        }

        ++v37;
        v32 += 256;
      }

      __asm { PRFM            #0, [X5,#0x100] }

      v21 = _X5;
      v33 = *_X5;
      _X5 += v37;
      if (_X5 > v18)
      {
        goto LABEL_570;
      }
    }

    v62 = (v21 + 8);
    v63 = (v36 + 1);
    if (v31 <= (v21 + 8))
    {
      v65 = (v21 + 8);
      goto LABEL_122;
    }

    if (*v63 == *v62)
    {
      v64 = 0;
      v63 = (v36 + 2);
      v65 = (v21 + 16);
      while (v65 < v31)
      {
        v67 = *v63;
        v63 += 4;
        v66 = v67;
        v69 = *v65;
        v65 += 4;
        v68 = v69;
        v64 += 8;
        if (v66 != v69)
        {
          v70 = v64 + (__clz(__rbit64(v68 ^ v66)) >> 3);
          goto LABEL_134;
        }
      }

LABEL_122:
      v125 = v9 + v17;
      if (v65 < v484 && *v63 == *v65)
      {
        v63 += 2;
        v65 += 2;
      }

      if (v65 < v480 && *v63 == *v65)
      {
        ++v63;
        ++v65;
      }

      if (v65 < v10 && *v63 == *v65)
      {
        v65 = (v65 + 1);
      }

      v70 = v65 - v62;
    }

    else
    {
      v70 = __clz(__rbit64(*v62 ^ *v63)) >> 3;
LABEL_134:
      v125 = v9 + v17;
    }

    v106 = v70 + 8;
    v108 = v21 - v36;
    if (v36 <= v125 || v21 <= v5)
    {
      goto LABEL_162;
    }

    v126 = v21 - 1;
    v127 = v36 - 1;
    v53 = v10 - 3;
    while (*v126 == *v127)
    {
      ++v106;
      v128 = v126 - 1;
      if (v126 > v5)
      {
        --v126;
        v129 = v127-- > v125;
        if (v129)
        {
          continue;
        }
      }

      v41 = v128 + 1;
      goto LABEL_183;
    }

    v41 = v126 + 1;
LABEL_183:
    if (v37 <= 3)
    {
      *(v7 + 4 * v34) = _X5 - v9;
    }

    v107 = v41 - v5;
    v134 = *(a2 + 24);
    v54 = v10 - 32;
    if (v41 <= v476)
    {
      *v134 = *v5;
      v138 = *(a2 + 24);
      v52 = v10 - 1;
      if (v107 > 0x10)
      {
        v139 = (v138 + 16);
        v140 = v138 + v107;
        v141 = (v5 + 16);
        do
        {
          v142 = *v141++;
          *v139++ = v142;
        }

        while (v139 < v140);
        goto LABEL_196;
      }

      *(a2 + 24) = v138 + v107;
      v104 = *(a2 + 8);
    }

    else
    {
      v52 = v10 - 1;
      if (v5 <= v476)
      {
        v135 = (v134 + v476 - v5);
        do
        {
          v136 = *v5;
          v5 += 16;
          *v134++ = v136;
        }

        while (v134 < v135);
        v5 = v10 - 32;
        v134 = v135;
      }

      while (v5 < v41)
      {
        v137 = *v5++;
        *v134 = v137;
        v134 = (v134 + 1);
      }

LABEL_196:
      *(a2 + 24) += v107;
      v104 = *(a2 + 8);
      if (v107 >= 0x10000)
      {
        v143 = (v104 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v143;
      }
    }

    *(v104 + 4) = v107;
    *v104 = v108 + 3;
    LOWORD(v107) = v106 - 3;
    v25 = v26;
    v26 = v108;
    if (v106 - 3 >= 0x10000)
    {
      goto LABEL_88;
    }

LABEL_89:
    *(v104 + 6) = v107;
    v110 = v104 + 8;
    *(a2 + 8) = v104 + 8;
    v5 = &v41[v106];
    if (&v41[v106] > v18)
    {
      v111 = v25;
      v112 = v26;
      goto LABEL_119;
    }

    v113 = *(v9 + (v40 + 2));
    *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v113) >> v29)) = v40 + 2;
    *(v7 + 4 * ((0xCF1BBCDCB7A56463 * *(v5 - 2)) >> v29)) = v5 - 2 - v9;
    *(v8 + 4 * ((0xCF1BBCDCBFA56300 * v113) >> v30)) = v40 + 2;
    *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *(v5 - 1)) >> v30)) = v5 - 1 - v9;
    while (2)
    {
      v112 = v25;
      v25 = v26;
      if (v112 && *v5 == *&v5[-v112])
      {
        v114 = (v5 + 4);
        v115 = &v5[-v112 + 4];
        if (v31 > (v5 + 4))
        {
          if (*v115 == *v114)
          {
            v116 = 0;
            v117 = (v5 + 12);
            v115 = &v5[-v112 + 12];
            while (v117 < v31)
            {
              v119 = *v115;
              v115 += 8;
              v118 = v119;
              v121 = *v117;
              v117 += 4;
              v120 = v121;
              v116 += 8;
              if (v118 != v121)
              {
                v122 = v116 + (__clz(__rbit64(v120 ^ v118)) >> 3);
                goto LABEL_112;
              }
            }

LABEL_101:
            if (v117 < v53 && *v115 == *v117)
            {
              v115 += 4;
              v117 += 2;
            }

            if (v117 < v52 && *v115 == *v117)
            {
              v115 += 2;
              ++v117;
            }

            if (v117 < v10 && *v115 == *v117)
            {
              v117 = (v117 + 1);
            }

            v122 = v117 - v114;
          }

          else
          {
            v122 = __clz(__rbit64(*v114 ^ *v115)) >> 3;
          }

LABEL_112:
          v123 = *v5;
          *(v8 + 4 * ((0xCF1BBCDCBFA56300 * *v5) >> v30)) = v5 - v9;
          *(v7 + 4 * ((0xCF1BBCDCB7A56463 * v123) >> v29)) = v5 - v9;
          if (v5 <= v54)
          {
            **(a2 + 24) = *v5;
            v110 = *(a2 + 8);
          }

          *(v110 + 4) = 0;
          *v110 = 1;
          if (v122 + 1 >= 0x10000)
          {
            v124 = (v110 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v124;
          }

          *(v110 + 6) = v122 + 1;
          v110 += 8;
          *(a2 + 8) = v110;
          v5 += v122 + 4;
          v26 = v112;
          v111 = v25;
          if (v5 > v18)
          {
            goto LABEL_119;
          }

          continue;
        }

        v117 = (v5 + 4);
        goto LABEL_101;
      }

      break;
    }

    v111 = v112;
    v112 = v26;
LABEL_119:
    _X5 = v5 + 1;
    v26 = v112;
    v25 = v111;
    v21 = v5;
  }

  while ((v5 + 1) <= v18);
LABEL_571:
  v362 = v489;
  if (v489 <= v488)
  {
    v362 = 0;
  }

  if (v490 > v488)
  {
    v362 = v490;
  }

  if (v112)
  {
    v363 = v112;
  }

  else
  {
    v363 = v362;
  }

  if (v111)
  {
    v362 = v111;
  }

  *a3 = v363;
  a3[1] = v362;
  return v10 - v5;
}

unint64_t ZSTD_compressBlock_doubleFast_dictMatchState(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5)
{
  v5 = *(a1 + 256);
  v6 = *(a1 + 96);
  v7 = *(a1 + 112);
  v8 = *(a1 + 8);
  v9 = &a4[a5];
  v10 = a4 + a5 - v8;
  v11 = 1 << *(a1 + 240);
  v12 = *(a1 + 24);
  v13 = v10 - v12;
  LODWORD(v14) = v10 - v11;
  if (v13 > v11 && *(a1 + 40) == 0)
  {
    v14 = v14;
  }

  else
  {
    v14 = v12;
  }

  v911 = (v8 + v14);
  v912 = *(a1 + 96);
  v16 = (v9 - 8);
  v17 = *a3;
  v18 = a3[1];
  v19 = *(a1 + 232);
  v903 = *(v19 + 96);
  v902 = *(v19 + 112);
  v21 = *v19;
  v20 = *(v19 + 8);
  v904 = *(v19 + 24);
  v888 = v20 + v904;
  v910 = v20;
  v909 = v14 + v20 - *v19;
  if (a4 - (v20 + v904) - (v8 + v14) + *v19)
  {
    v22 = a4;
  }

  else
  {
    v22 = a4 + 1;
  }

  if (v5 == 5)
  {
    if (v22 >= v16)
    {
      goto LABEL_1550;
    }

    v880 = a3;
    v443 = *(a1 + 244);
    v444 = 64 - *(a1 + 248);
    v445 = 64 - v443;
    v886 = 64 - *(v19 + 244);
    v908 = v14 - 1;
    v446 = (v9 - 7);
    v900 = v9 - 3;
    v892 = 64 - *(v19 + 248);
    v896 = v9 - 1;
    v447 = (v9 - 32);
    v870 = v20 + 16;
    v878 = v20 - 1;
    v874 = v8 + 16;
    v883 = v8 - 1;
    while (1)
    {
      v448 = *v22;
      v449 = 0xCF1BBCDCB7A56463 * *v22;
      v450 = 0xCF1BBCDCBB000000 * *v22;
      v451 = v22 - v8;
      v452 = *(v6 + 4 * (v449 >> v444));
      v453 = *(v7 + 4 * (v450 >> v445));
      v454 = v22 - v8 + 1;
      v455 = (v454 - v17);
      v456 = (v910 + v455 - v909);
      if (v455 >= v14)
      {
        v456 = (v8 + v455);
      }

      *(v7 + 4 * (v450 >> v445)) = v451;
      *(v6 + 4 * (v449 >> v444)) = v451;
      if ((v908 - v455) >= 3)
      {
        v457 = (v22 + 1);
        if (*v456 == *(v22 + 1))
        {
          if (v455 >= v14)
          {
            v458 = v9;
          }

          else
          {
            v458 = v21;
          }

          v459 = (v22 + 5);
          v460 = v456 + 1;
          if (&v22[v458 - (v456 + 1) + 5] >= v9)
          {
            v461 = v9;
          }

          else
          {
            v461 = &v22[v458 - (v456 + 1) + 5];
          }

          if (v461 - 7 <= v459)
          {
            v463 = v456 + 1;
            v464 = v22 + 5;
LABEL_834:
            v471 = (v8 + v14);
            if (v464 < v461 - 3 && *v463 == *v464)
            {
              ++v463;
              ++v464;
            }

            if (v464 < v461 - 1 && *v463 == *v464)
            {
              v463 = (v463 + 2);
              v464 = (v464 + 2);
            }

            if (v464 < v461 && *v463 == *v464)
            {
              v464 = (v464 + 1);
            }

            v469 = v464 - v459;
          }

          else
          {
            if (*v460 == *v459)
            {
              v462 = 0;
              v463 = v456 + 3;
              v464 = v22 + 13;
              do
              {
                if (v464 >= v461 - 7)
                {
                  goto LABEL_834;
                }

                v466 = *v463;
                v463 += 2;
                v465 = v466;
                v468 = *v464;
                v464 += 2;
                v467 = v468;
                v462 += 8;
              }

              while (v465 == v468);
              v469 = v462 + (__clz(__rbit64(v467 ^ v465)) >> 3);
            }

            else
            {
              v469 = __clz(__rbit64(*v459 ^ *v460)) >> 3;
            }

            v471 = (v8 + v14);
          }

          if ((v460 + v469) == v458)
          {
            v536 = &v459[v469];
            if (v446 <= v536)
            {
              v539 = v471;
              v538 = v536;
LABEL_962:
              if (v538 < v900 && *v539 == *v538)
              {
                ++v539;
                v538 += 4;
              }

              if (v538 < v896 && *v539 == *v538)
              {
                v539 = (v539 + 2);
                v538 += 2;
              }

              if (v538 < v9 && *v539 == *v538)
              {
                ++v538;
              }

              v544 = v538 - v536;
            }

            else if (*v471 == *v536)
            {
              v537 = 0;
              v538 = &v22[v469 + 13];
              v539 = (v14 + v8 + 8);
              do
              {
                if (v538 >= v446)
                {
                  goto LABEL_962;
                }

                v541 = *v539;
                v539 += 2;
                v540 = v541;
                v543 = *v538;
                v538 += 8;
                v542 = v543;
                v537 += 8;
              }

              while (v540 == v543);
              v544 = v537 + (__clz(__rbit64(v542 ^ v540)) >> 3);
            }

            else
            {
              v544 = __clz(__rbit64(*v536 ^ *v471)) >> 3;
            }

            v469 += v544;
          }

          v567 = v457 - a4;
          v568 = *(a2 + 24);
          if (v457 <= v447)
          {
            *v568 = *a4;
            v571 = *(a2 + 24);
            if (v567 > 0x10)
            {
              v572 = (v571 + 16);
              v573 = v571 + v567;
              v574 = a4 + 16;
              do
              {
                v575 = *v574;
                v574 += 16;
                *v572++ = v575;
              }

              while (v572 < v573);
              goto LABEL_989;
            }

            *(a2 + 24) = v571 + v567;
            v581 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v447)
            {
              v570 = v568 + v447 - a4;
              v576 = a4;
              do
              {
                v577 = *v576;
                v576 += 16;
                *v568++ = v577;
              }

              while (v568 < v570);
              v569 = v9 - 32;
            }

            else
            {
              v569 = a4;
              v570 = *(a2 + 24);
            }

            if (v569 < v457)
            {
              if (a4 <= v447)
              {
                v578 = v9 - 32;
              }

              else
              {
                v578 = a4;
              }

              v579 = v22 - v578 + 1;
              do
              {
                v580 = *v569++;
                *v570++ = v580;
                --v579;
              }

              while (v579);
            }

LABEL_989:
            *(a2 + 24) += v567;
            v581 = *(a2 + 8);
            if (v567 >= 0x10000)
            {
              v582 = (v581 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v582;
            }
          }

          v552 = v469 + 4;
          *(v581 + 4) = v567;
          *v581 = 1;
          v583 = v469 + 1;
          v553 = v17;
          if (!((v469 + 1) >> 16))
          {
            goto LABEL_1067;
          }

LABEL_1066:
          v608 = (v581 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v608;
          v17 = v553;
          goto LABEL_1067;
        }
      }

      if (v452 <= v14)
      {
        v481 = *(v903 + 4 * (v449 >> v892));
        v471 = (v8 + v14);
        if (v481 > v904)
        {
          v482 = v910 + v481;
          if (*(v910 + v481) == v448)
          {
            v483 = (v22 + 8);
            v484 = (v482 + 8);
            v485 = &v21[v22 - v482];
            if (v485 >= v9)
            {
              v486 = v9;
            }

            else
            {
              v486 = v485;
            }

            if (v486 - 7 <= v483)
            {
              v488 = v484;
              v489 = v22 + 8;
LABEL_934:
              if (v489 < v486 - 3 && *v488 == *v489)
              {
                ++v488;
                v489 += 4;
              }

              if (v489 < v486 - 1 && *v488 == *v489)
              {
                v488 = (v488 + 2);
                v489 += 2;
              }

              if (v489 < v486 && *v488 == *v489)
              {
                ++v489;
              }

              v494 = v489 - v483;
            }

            else if (*v484 == *v483)
            {
              v487 = 0;
              v488 = (v870 + v481);
              v489 = v22 + 16;
              do
              {
                if (v489 >= v486 - 7)
                {
                  goto LABEL_934;
                }

                v491 = *v488;
                v488 += 2;
                v490 = v491;
                v493 = *v489;
                v489 += 8;
                v492 = v493;
                v487 += 8;
              }

              while (v490 == v493);
              v494 = v487 + (__clz(__rbit64(v492 ^ v490)) >> 3);
            }

            else
            {
              v494 = __clz(__rbit64(*v483 ^ *v484)) >> 3;
            }

            if ((v484 + v494) == v21)
            {
              v558 = &v483[v494];
              if (v446 <= v558)
              {
                v561 = (v8 + v14);
                v560 = v558;
LABEL_952:
                if (v560 < v900 && *v561 == *v560)
                {
                  ++v561;
                  v560 += 4;
                }

                if (v560 < v896 && *v561 == *v560)
                {
                  v561 = (v561 + 2);
                  v560 += 2;
                }

                if (v560 < v9 && *v561 == *v560)
                {
                  ++v560;
                }

                v566 = v560 - v558;
              }

              else if (*v911 == *v558)
              {
                v559 = 0;
                v560 = &v22[v494 + 16];
                v561 = (v14 + v8 + 8);
                do
                {
                  if (v560 >= v446)
                  {
                    goto LABEL_952;
                  }

                  v563 = *v561;
                  v561 += 2;
                  v562 = v563;
                  v565 = *v560;
                  v560 += 8;
                  v564 = v565;
                  v559 += 8;
                }

                while (v562 == v565);
                v566 = v559 + (__clz(__rbit64(v564 ^ v562)) >> 3);
              }

              else
              {
                v566 = __clz(__rbit64(*v558 ^ *v911)) >> 3;
              }

              v494 += v566;
            }

            v552 = v494 + 8;
            v553 = v451 - (v909 + v481);
            if (v22 <= a4)
            {
              goto LABEL_1048;
            }

            v554 = v22 - 1;
            v586 = (v878 + v481);
            do
            {
              if (*v554 != *v586)
              {
                goto LABEL_1050;
              }

              ++v552;
              v556 = v554 - 1;
              if (v554 <= a4)
              {
                break;
              }

              --v554;
              v140 = v586-- > v888;
            }

            while (v140);
LABEL_1047:
            v457 = (v556 + 1);
            goto LABEL_1051;
          }
        }
      }

      else
      {
        v470 = v8 + v452;
        v471 = (v8 + v14);
        if (*(v8 + v452) == v448)
        {
          v472 = (v22 + 8);
          v473 = (v470 + 8);
          if (v446 <= (v22 + 8))
          {
            v475 = v22 + 8;
LABEL_845:
            if (v475 < v900 && *v473 == *v475)
            {
              ++v473;
              v475 += 4;
            }

            if (v475 < v896 && *v473 == *v475)
            {
              v473 = (v473 + 2);
              v475 += 2;
            }

            if (v475 < v9 && *v473 == *v475)
            {
              ++v475;
            }

            v480 = v475 - v472;
          }

          else if (*v473 == *v472)
          {
            v474 = 0;
            v473 = (v874 + v452);
            v475 = v22 + 16;
            do
            {
              if (v475 >= v446)
              {
                goto LABEL_845;
              }

              v477 = *v473;
              v473 += 2;
              v476 = v477;
              v479 = *v475;
              v475 += 8;
              v478 = v479;
              v474 += 8;
            }

            while (v476 == v479);
            v480 = v474 + (__clz(__rbit64(v478 ^ v476)) >> 3);
          }

          else
          {
            v480 = __clz(__rbit64(*v472 ^ *v473)) >> 3;
          }

          v552 = v480 + 8;
          v553 = (v22 - v470);
          if (v22 > a4)
          {
            v554 = v22 - 1;
            v555 = (v883 + v452);
            while (*v554 == *v555)
            {
              ++v552;
              v556 = v554 - 1;
              if (v554 > a4)
              {
                --v554;
                v140 = v555-- > v911;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_1047;
            }

LABEL_1050:
            v457 = (v554 + 1);
            goto LABEL_1051;
          }

LABEL_1048:
          v457 = v22;
          goto LABEL_1051;
        }
      }

      if (v453 <= v14)
      {
        v496 = *(v902 + 4 * (v450 >> v886));
        if (v496 <= v904 || (v495 = v910 + v496, *(v910 + v496) != *v22))
        {
LABEL_832:
          _X13 = &v22[(v22 - a4) >> 8];
          v22 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_1126;
        }

        LODWORD(v453) = v496 + v909;
      }

      else
      {
        v495 = v8 + v453;
        if (*(v8 + v453) != *v22)
        {
          goto LABEL_832;
        }
      }

      v457 = (v22 + 1);
      v497 = *(v22 + 1);
      v498 = (0xCF1BBCDCB7A56463 * v497) >> v444;
      v499 = *(v6 + 4 * v498);
      *(v6 + 4 * v498) = v454;
      if (v499 <= v14)
      {
        v512 = *(v903 + 4 * ((0xCF1BBCDCB7A56463 * v497) >> v892));
        if (v512 <= v904 || (v513 = v910 + v512, *(v910 + v512) != v497))
        {
LABEL_866:
          v525 = (v22 + 4);
          v526 = (v495 + 4);
          if (v453 >= v14)
          {
            if (v446 <= v525)
            {
              v546 = v22 + 4;
LABEL_902:
              if (v546 < v900 && *v526 == *v546)
              {
                ++v526;
                v546 += 4;
              }

              if (v546 < v896 && *v526 == *v546)
              {
                v526 = (v526 + 2);
                v546 += 2;
              }

              if (v546 < v9 && *v526 == *v546)
              {
                ++v546;
              }

              v551 = v546 - v525;
            }

            else if (*v526 == *v525)
            {
              v545 = 0;
              v526 = (v495 + 12);
              v546 = v22 + 12;
              do
              {
                if (v546 >= v446)
                {
                  goto LABEL_902;
                }

                v548 = *v526;
                v526 += 2;
                v547 = v548;
                v550 = *v546;
                v546 += 8;
                v549 = v550;
                v545 += 8;
              }

              while (v547 == v550);
              v551 = v545 + (__clz(__rbit64(v549 ^ v547)) >> 3);
            }

            else
            {
              v551 = __clz(__rbit64(*v525 ^ *v526)) >> 3;
            }

            v552 = v551 + 4;
            v553 = (v22 - v495);
            if (v22 > a4 && v495 > v471)
            {
              v554 = v22 - 1;
              v557 = (v495 - 1);
              while (*v554 == *v557)
              {
                ++v552;
                v556 = v554 - 1;
                if (v554 > a4)
                {
                  --v554;
                  v140 = v557-- > v471;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_1047;
              }

              goto LABEL_1050;
            }
          }

          else
          {
            if (&v525[v21 - v526] >= v9)
            {
              v527 = v9;
            }

            else
            {
              v527 = &v525[v21 - v526];
            }

            if (v527 - 7 <= v525)
            {
              v529 = (v495 + 4);
              v530 = v22 + 4;
LABEL_1010:
              if (v530 < v527 - 3 && *v529 == *v530)
              {
                ++v529;
                v530 += 4;
              }

              if (v530 < v527 - 1 && *v529 == *v530)
              {
                v529 = (v529 + 2);
                v530 += 2;
              }

              if (v530 < v527 && *v529 == *v530)
              {
                ++v530;
              }

              v535 = v530 - v525;
            }

            else if (*v526 == *v525)
            {
              v528 = 0;
              v529 = (v495 + 12);
              v530 = v22 + 12;
              do
              {
                if (v530 >= v527 - 7)
                {
                  goto LABEL_1010;
                }

                v532 = *v529;
                v529 += 2;
                v531 = v532;
                v534 = *v530;
                v530 += 8;
                v533 = v534;
                v528 += 8;
              }

              while (v531 == v534);
              v535 = v528 + (__clz(__rbit64(v533 ^ v531)) >> 3);
            }

            else
            {
              v535 = __clz(__rbit64(*v525 ^ *v526)) >> 3;
            }

            if ((v526 + v535) == v21)
            {
              v587 = &v525[v535];
              if (v446 <= v587)
              {
                v590 = v471;
                v589 = v587;
LABEL_1028:
                if (v589 < v900 && *v590 == *v589)
                {
                  ++v590;
                  v589 += 4;
                }

                if (v589 < v896 && *v590 == *v589)
                {
                  v590 = (v590 + 2);
                  v589 += 2;
                }

                if (v589 < v9 && *v590 == *v589)
                {
                  ++v589;
                }

                v595 = v589 - v587;
              }

              else if (*v471 == *v587)
              {
                v588 = 0;
                v589 = &v22[v535 + 12];
                v590 = (v14 + v8 + 8);
                do
                {
                  if (v589 >= v446)
                  {
                    goto LABEL_1028;
                  }

                  v592 = *v590;
                  v590 += 2;
                  v591 = v592;
                  v594 = *v589;
                  v589 += 8;
                  v593 = v594;
                  v588 += 8;
                }

                while (v591 == v594);
                v595 = v588 + (__clz(__rbit64(v593 ^ v591)) >> 3);
              }

              else
              {
                v595 = __clz(__rbit64(*v587 ^ *v471)) >> 3;
              }

              v535 += v595;
            }

            v552 = v535 + 4;
            v553 = (v451 - v453);
            if (v22 > a4 && v495 > v888)
            {
              v554 = v22 - 1;
              v596 = (v495 - 1);
              while (*v554 == *v596)
              {
                ++v552;
                v556 = v554 - 1;
                if (v554 > a4)
                {
                  --v554;
                  v140 = v596-- > v888;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_1047;
              }

              goto LABEL_1050;
            }
          }

          goto LABEL_1048;
        }

        v514 = (v22 + 9);
        v515 = (v513 + 8);
        if (&v21[(v22 + 9) - 8 - v513] >= v9)
        {
          v516 = v9;
        }

        else
        {
          v516 = &v21[(v22 + 9) - 8 - v513];
        }

        if (v516 - 7 <= v514)
        {
          v518 = (v513 + 8);
          v519 = v22 + 9;
LABEL_1128:
          if (v519 < v516 - 3 && *v518 == *v519)
          {
            ++v518;
            ++v519;
          }

          if (v519 < v516 - 1 && *v518 == *v519)
          {
            v518 = (v518 + 2);
            v519 = (v519 + 2);
          }

          if (v519 < v516 && *v518 == *v519)
          {
            v519 = (v519 + 1);
          }

          v524 = v519 - v514;
        }

        else if (*v515 == *v514)
        {
          v517 = 0;
          v518 = (v870 + v512);
          v519 = v22 + 17;
          do
          {
            if (v519 >= v516 - 7)
            {
              goto LABEL_1128;
            }

            v521 = *v518;
            v518 += 2;
            v520 = v521;
            v523 = *v519;
            v519 += 2;
            v522 = v523;
            v517 += 8;
          }

          while (v520 == v523);
          v524 = v517 + (__clz(__rbit64(v522 ^ v520)) >> 3);
        }

        else
        {
          v524 = __clz(__rbit64(*v514 ^ *v515)) >> 3;
        }

        if ((v515 + v524) == v21)
        {
          v641 = &v514[v524];
          if (v446 <= v641)
          {
            v644 = v471;
            v643 = v641;
LABEL_1147:
            if (v643 < v900 && *v644 == *v643)
            {
              ++v644;
              v643 += 4;
            }

            if (v643 < v896 && *v644 == *v643)
            {
              v644 = (v644 + 2);
              v643 += 2;
            }

            if (v643 < v9 && *v644 == *v643)
            {
              ++v643;
            }

            v649 = v643 - v641;
          }

          else if (*v471 == *v641)
          {
            v642 = 0;
            v643 = &v22[v524 + 17];
            v644 = (v14 + v8 + 8);
            do
            {
              if (v643 >= v446)
              {
                goto LABEL_1147;
              }

              v646 = *v644;
              v644 += 2;
              v645 = v646;
              v648 = *v643;
              v643 += 8;
              v647 = v648;
              v642 += 8;
            }

            while (v645 == v648);
            v649 = v642 + (__clz(__rbit64(v647 ^ v645)) >> 3);
          }

          else
          {
            v649 = __clz(__rbit64(*v641 ^ *v471)) >> 3;
          }

          v524 += v649;
        }

        v552 = v524 + 8;
        v553 = v454 - (v909 + v512);
        if (v457 > a4)
        {
          v650 = (v878 + v512);
          do
          {
            if (*v22 != *v650)
            {
              goto LABEL_1164;
            }

            ++v552;
            v585 = v22 - 1;
            if (v22 <= a4)
            {
              break;
            }

            --v22;
            v140 = v650-- > v888;
          }

          while (v140);
LABEL_1163:
          v457 = (v585 + 1);
        }
      }

      else
      {
        v500 = v8 + v499;
        if (*(v8 + v499) != v497)
        {
          goto LABEL_866;
        }

        v501 = (v22 + 9);
        v502 = (v500 + 8);
        if (v446 <= (v22 + 9))
        {
          v504 = v22 + 9;
LABEL_915:
          if (v504 < v900 && *v502 == *v504)
          {
            ++v502;
            v504 += 4;
          }

          if (v504 < v896 && *v502 == *v504)
          {
            v502 = (v502 + 2);
            v504 += 2;
          }

          if (v504 < v9 && *v502 == *v504)
          {
            ++v504;
          }

          v509 = v504 - v501;
        }

        else if (*v502 == *v501)
        {
          v503 = 0;
          v502 = (v874 + v499);
          v504 = v22 + 17;
          do
          {
            if (v504 >= v446)
            {
              goto LABEL_915;
            }

            v506 = *v502;
            v502 += 2;
            v505 = v506;
            v508 = *v504;
            v504 += 8;
            v507 = v508;
            v503 += 8;
          }

          while (v505 == v508);
          v509 = v503 + (__clz(__rbit64(v507 ^ v505)) >> 3);
        }

        else
        {
          v509 = __clz(__rbit64(*v501 ^ *v502)) >> 3;
        }

        v552 = v509 + 8;
        v553 = (v457 - v500);
        if (v457 > a4)
        {
          v584 = (v883 + v499);
          while (*v22 == *v584)
          {
            ++v552;
            v585 = v22 - 1;
            if (v22 > a4)
            {
              --v22;
              v140 = v584-- > v471;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_1163;
          }

LABEL_1164:
          v457 = (v22 + 1);
        }
      }

LABEL_1051:
      v597 = v457 - a4;
      v598 = *(a2 + 24);
      if (v457 <= v447)
      {
        *v598 = *a4;
        v602 = *(a2 + 24);
        if (v597 <= 0x10)
        {
          *(a2 + 24) = v602 + v597;
          v581 = *(a2 + 8);
          goto LABEL_1065;
        }

        v603 = (v602 + 16);
        v604 = v602 + v597;
        v605 = a4 + 16;
        do
        {
          v606 = *v605;
          v605 += 16;
          *v603++ = v606;
        }

        while (v603 < v604);
      }

      else
      {
        if (a4 <= v447)
        {
          v599 = (v598 + v447 - a4);
          do
          {
            v600 = *a4;
            a4 += 16;
            *v598++ = v600;
          }

          while (v598 < v599);
          a4 = v9 - 32;
          v598 = v599;
        }

        while (a4 < v457)
        {
          v601 = *a4++;
          *v598 = v601;
          v598 = (v598 + 1);
        }
      }

      *(a2 + 24) += v597;
      v581 = *(a2 + 8);
      if (v597 >= 0x10000)
      {
        v607 = (v581 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v607;
      }

LABEL_1065:
      *(v581 + 4) = v597;
      *v581 = v553 + 3;
      v583 = v552 - 3;
      v18 = v17;
      v17 = v553;
      if (v552 - 3 >= 0x10000)
      {
        goto LABEL_1066;
      }

LABEL_1067:
      *(v581 + 6) = v583;
      v609 = v581 + 8;
      *(a2 + 8) = v581 + 8;
      a4 = (v457 + v552);
      if (v457 + v552 <= v16)
      {
        v610 = *(v8 + (v451 + 2));
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v610) >> v444)) = v451 + 2;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v444)) = a4 - 2 - v8;
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * v610) >> v445)) = v451 + 2;
        *(v7 + 4 * ((0xCF1BBCDCBB000000 * *(a4 - 1)) >> v445)) = a4 - 1 - v8;
        v611 = v17;
        v612 = v18;
        while (1)
        {
          v17 = v612;
          v612 = v611;
          v613 = a4 - v8;
          v614 = (a4 - v8 - v17);
          v615 = v614 >= v14 ? v8 : v910 - v909;
          if ((v908 - v614) < 3)
          {
            break;
          }

          v616 = v615 + v614;
          if (*(v615 + v614) != *a4)
          {
            break;
          }

          if (v614 >= v14)
          {
            v617 = v9;
          }

          else
          {
            v617 = v21;
          }

          v618 = a4 + 4;
          v619 = (v616 + 4);
          v620 = &v617[a4 - v616];
          if (v620 >= v9)
          {
            v621 = v9;
          }

          else
          {
            v621 = v620;
          }

          if (v621 - 7 <= v618)
          {
            v623 = v619;
            v624 = a4 + 4;
LABEL_1088:
            if (v624 < v621 - 3 && *v623 == *v624)
            {
              ++v623;
              v624 += 4;
            }

            if (v624 < v621 - 1 && *v623 == *v624)
            {
              v623 = (v623 + 2);
              v624 += 2;
            }

            if (v624 < v621 && *v623 == *v624)
            {
              ++v624;
            }

            v629 = v624 - v618;
          }

          else if (*v619 == *v618)
          {
            v622 = 0;
            v623 = (v615 + v614 + 12);
            v624 = a4 + 12;
            do
            {
              if (v624 >= v621 - 7)
              {
                goto LABEL_1088;
              }

              v626 = *v623;
              v623 += 2;
              v625 = v626;
              v628 = *v624;
              v624 += 8;
              v627 = v628;
              v622 += 8;
            }

            while (v625 == v628);
            v629 = v622 + (__clz(__rbit64(v627 ^ v625)) >> 3);
          }

          else
          {
            v629 = __clz(__rbit64(*v618 ^ *v619)) >> 3;
          }

          if ((v619 + v629) == v617)
          {
            v630 = &v618[v629];
            if (v446 <= v630)
            {
              v633 = v471;
              v632 = v630;
LABEL_1107:
              if (v632 < v900 && *v633 == *v632)
              {
                ++v633;
                v632 += 4;
              }

              if (v632 < v896 && *v633 == *v632)
              {
                v633 = (v633 + 2);
                v632 += 2;
              }

              if (v632 < v9 && *v633 == *v632)
              {
                ++v632;
              }

              v638 = v632 - v630;
            }

            else if (*v471 == *v630)
            {
              v631 = 0;
              v632 = &a4[v629 + 12];
              v633 = (v14 + v8 + 8);
              do
              {
                if (v632 >= v446)
                {
                  goto LABEL_1107;
                }

                v635 = *v633;
                v633 += 2;
                v634 = v635;
                v637 = *v632;
                v632 += 8;
                v636 = v637;
                v631 += 8;
              }

              while (v634 == v637);
              v638 = v631 + (__clz(__rbit64(v636 ^ v634)) >> 3);
            }

            else
            {
              v638 = __clz(__rbit64(*v630 ^ *v471)) >> 3;
            }

            v629 += v638;
          }

          if (a4 <= v447)
          {
            **(a2 + 24) = *a4;
            v609 = *(a2 + 8);
          }

          *(v609 + 4) = 0;
          *v609 = 1;
          if (v629 + 1 >= 0x10000)
          {
            v639 = (v609 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v639;
          }

          *(v609 + 6) = v629 + 1;
          v609 += 8;
          v640 = *a4;
          *(v7 + 4 * ((0xCF1BBCDCBB000000 * *a4) >> v445)) = v613;
          *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v640) >> v444)) = v613;
          a4 += v629 + 4;
          *(a2 + 8) = v609;
          v611 = v17;
          v18 = v612;
          v22 = a4;
          if (a4 > v16)
          {
            goto LABEL_1126;
          }
        }

        v18 = v17;
        v17 = v612;
      }

      v22 = a4;
LABEL_1126:
      if (v22 >= v16)
      {
        goto LABEL_1549;
      }
    }
  }

  if (v5 == 6)
  {
    if (v22 >= v16)
    {
      goto LABEL_1550;
    }

    v880 = a3;
    v235 = *(a1 + 244);
    v236 = 64 - *(a1 + 248);
    v237 = 64 - v235;
    v885 = 64 - *(v19 + 244);
    v907 = v14 - 1;
    v238 = (v9 - 7);
    v899 = v9 - 3;
    v891 = 64 - *(v19 + 248);
    v895 = v9 - 1;
    v239 = (v9 - 32);
    v869 = v20 + 16;
    v877 = v20 - 1;
    v873 = v8 + 16;
    v882 = v8 - 1;
    while (1)
    {
      v240 = *v22;
      v241 = 0xCF1BBCDCB7A56463 * *v22;
      v242 = 0xCF1BBCDCBF9B0000 * *v22;
      v243 = v22 - v8;
      v244 = *(v6 + 4 * (v241 >> v236));
      v245 = *(v7 + 4 * (v242 >> v237));
      v246 = v22 - v8 + 1;
      v247 = (v246 - v17);
      v248 = (v910 + v247 - v909);
      if (v247 >= v14)
      {
        v248 = (v8 + v247);
      }

      *(v7 + 4 * (v242 >> v237)) = v243;
      *(v6 + 4 * (v241 >> v236)) = v243;
      if ((v907 - v247) >= 3)
      {
        v249 = (v22 + 1);
        if (*v248 == *(v22 + 1))
        {
          if (v247 >= v14)
          {
            v250 = v9;
          }

          else
          {
            v250 = v21;
          }

          v251 = (v22 + 5);
          v252 = v248 + 1;
          if (&v22[v250 - (v248 + 1) + 5] >= v9)
          {
            v253 = v9;
          }

          else
          {
            v253 = &v22[v250 - (v248 + 1) + 5];
          }

          if (v253 - 7 <= v251)
          {
            v255 = v248 + 1;
            v256 = v22 + 5;
LABEL_450:
            v263 = (v8 + v14);
            if (v256 < v253 - 3 && *v255 == *v256)
            {
              ++v255;
              ++v256;
            }

            if (v256 < v253 - 1 && *v255 == *v256)
            {
              v255 = (v255 + 2);
              v256 = (v256 + 2);
            }

            if (v256 < v253 && *v255 == *v256)
            {
              v256 = (v256 + 1);
            }

            v261 = v256 - v251;
          }

          else
          {
            if (*v252 == *v251)
            {
              v254 = 0;
              v255 = v248 + 3;
              v256 = v22 + 13;
              do
              {
                if (v256 >= v253 - 7)
                {
                  goto LABEL_450;
                }

                v258 = *v255;
                v255 += 2;
                v257 = v258;
                v260 = *v256;
                v256 += 2;
                v259 = v260;
                v254 += 8;
              }

              while (v257 == v260);
              v261 = v254 + (__clz(__rbit64(v259 ^ v257)) >> 3);
            }

            else
            {
              v261 = __clz(__rbit64(*v251 ^ *v252)) >> 3;
            }

            v263 = (v8 + v14);
          }

          if ((v252 + v261) == v250)
          {
            v328 = &v251[v261];
            if (v238 <= v328)
            {
              v331 = v263;
              v330 = v328;
LABEL_578:
              if (v330 < v899 && *v331 == *v330)
              {
                ++v331;
                v330 += 4;
              }

              if (v330 < v895 && *v331 == *v330)
              {
                v331 = (v331 + 2);
                v330 += 2;
              }

              if (v330 < v9 && *v331 == *v330)
              {
                ++v330;
              }

              v336 = v330 - v328;
            }

            else if (*v263 == *v328)
            {
              v329 = 0;
              v330 = &v22[v261 + 13];
              v331 = (v14 + v8 + 8);
              do
              {
                if (v330 >= v238)
                {
                  goto LABEL_578;
                }

                v333 = *v331;
                v331 += 2;
                v332 = v333;
                v335 = *v330;
                v330 += 8;
                v334 = v335;
                v329 += 8;
              }

              while (v332 == v335);
              v336 = v329 + (__clz(__rbit64(v334 ^ v332)) >> 3);
            }

            else
            {
              v336 = __clz(__rbit64(*v328 ^ *v263)) >> 3;
            }

            v261 += v336;
          }

          v359 = v249 - a4;
          v360 = *(a2 + 24);
          if (v249 <= v239)
          {
            *v360 = *a4;
            v363 = *(a2 + 24);
            if (v359 > 0x10)
            {
              v364 = (v363 + 16);
              v365 = v363 + v359;
              v366 = a4 + 16;
              do
              {
                v367 = *v366;
                v366 += 16;
                *v364++ = v367;
              }

              while (v364 < v365);
              goto LABEL_605;
            }

            *(a2 + 24) = v363 + v359;
            v373 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v239)
            {
              v362 = v360 + v239 - a4;
              v368 = a4;
              do
              {
                v369 = *v368;
                v368 += 16;
                *v360++ = v369;
              }

              while (v360 < v362);
              v361 = v9 - 32;
            }

            else
            {
              v361 = a4;
              v362 = *(a2 + 24);
            }

            if (v361 < v249)
            {
              if (a4 <= v239)
              {
                v370 = v9 - 32;
              }

              else
              {
                v370 = a4;
              }

              v371 = v22 - v370 + 1;
              do
              {
                v372 = *v361++;
                *v362++ = v372;
                --v371;
              }

              while (v371);
            }

LABEL_605:
            *(a2 + 24) += v359;
            v373 = *(a2 + 8);
            if (v359 >= 0x10000)
            {
              v374 = (v373 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v374;
            }
          }

          v344 = v261 + 4;
          *(v373 + 4) = v359;
          *v373 = 1;
          v375 = v261 + 1;
          v345 = v17;
          if (!((v261 + 1) >> 16))
          {
            goto LABEL_683;
          }

LABEL_682:
          v400 = (v373 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v400;
          v17 = v345;
          goto LABEL_683;
        }
      }

      if (v244 <= v14)
      {
        v273 = *(v903 + 4 * (v241 >> v891));
        v263 = (v8 + v14);
        if (v273 > v904)
        {
          v274 = v910 + v273;
          if (*(v910 + v273) == v240)
          {
            v275 = (v22 + 8);
            v276 = (v274 + 8);
            v277 = &v21[v22 - v274];
            if (v277 >= v9)
            {
              v278 = v9;
            }

            else
            {
              v278 = v277;
            }

            if (v278 - 7 <= v275)
            {
              v280 = v276;
              v281 = v22 + 8;
LABEL_550:
              if (v281 < v278 - 3 && *v280 == *v281)
              {
                ++v280;
                v281 += 4;
              }

              if (v281 < v278 - 1 && *v280 == *v281)
              {
                v280 = (v280 + 2);
                v281 += 2;
              }

              if (v281 < v278 && *v280 == *v281)
              {
                ++v281;
              }

              v286 = v281 - v275;
            }

            else if (*v276 == *v275)
            {
              v279 = 0;
              v280 = (v869 + v273);
              v281 = v22 + 16;
              do
              {
                if (v281 >= v278 - 7)
                {
                  goto LABEL_550;
                }

                v283 = *v280;
                v280 += 2;
                v282 = v283;
                v285 = *v281;
                v281 += 8;
                v284 = v285;
                v279 += 8;
              }

              while (v282 == v285);
              v286 = v279 + (__clz(__rbit64(v284 ^ v282)) >> 3);
            }

            else
            {
              v286 = __clz(__rbit64(*v275 ^ *v276)) >> 3;
            }

            if ((v276 + v286) == v21)
            {
              v350 = &v275[v286];
              if (v238 <= v350)
              {
                v353 = (v8 + v14);
                v352 = v350;
LABEL_568:
                if (v352 < v899 && *v353 == *v352)
                {
                  ++v353;
                  v352 += 4;
                }

                if (v352 < v895 && *v353 == *v352)
                {
                  v353 = (v353 + 2);
                  v352 += 2;
                }

                if (v352 < v9 && *v353 == *v352)
                {
                  ++v352;
                }

                v358 = v352 - v350;
              }

              else if (*v911 == *v350)
              {
                v351 = 0;
                v352 = &v22[v286 + 16];
                v353 = (v14 + v8 + 8);
                do
                {
                  if (v352 >= v238)
                  {
                    goto LABEL_568;
                  }

                  v355 = *v353;
                  v353 += 2;
                  v354 = v355;
                  v357 = *v352;
                  v352 += 8;
                  v356 = v357;
                  v351 += 8;
                }

                while (v354 == v357);
                v358 = v351 + (__clz(__rbit64(v356 ^ v354)) >> 3);
              }

              else
              {
                v358 = __clz(__rbit64(*v350 ^ *v911)) >> 3;
              }

              v286 += v358;
            }

            v344 = v286 + 8;
            v345 = v243 - (v909 + v273);
            if (v22 <= a4)
            {
              goto LABEL_664;
            }

            v346 = v22 - 1;
            v378 = (v877 + v273);
            do
            {
              if (*v346 != *v378)
              {
                goto LABEL_666;
              }

              ++v344;
              v348 = v346 - 1;
              if (v346 <= a4)
              {
                break;
              }

              --v346;
              v140 = v378-- > v888;
            }

            while (v140);
LABEL_663:
            v249 = (v348 + 1);
            goto LABEL_667;
          }
        }
      }

      else
      {
        v262 = v8 + v244;
        v263 = (v8 + v14);
        if (*(v8 + v244) == v240)
        {
          v264 = (v22 + 8);
          v265 = (v262 + 8);
          if (v238 <= (v22 + 8))
          {
            v267 = v22 + 8;
LABEL_461:
            if (v267 < v899 && *v265 == *v267)
            {
              ++v265;
              v267 += 4;
            }

            if (v267 < v895 && *v265 == *v267)
            {
              v265 = (v265 + 2);
              v267 += 2;
            }

            if (v267 < v9 && *v265 == *v267)
            {
              ++v267;
            }

            v272 = v267 - v264;
          }

          else if (*v265 == *v264)
          {
            v266 = 0;
            v265 = (v873 + v244);
            v267 = v22 + 16;
            do
            {
              if (v267 >= v238)
              {
                goto LABEL_461;
              }

              v269 = *v265;
              v265 += 2;
              v268 = v269;
              v271 = *v267;
              v267 += 8;
              v270 = v271;
              v266 += 8;
            }

            while (v268 == v271);
            v272 = v266 + (__clz(__rbit64(v270 ^ v268)) >> 3);
          }

          else
          {
            v272 = __clz(__rbit64(*v264 ^ *v265)) >> 3;
          }

          v344 = v272 + 8;
          v345 = (v22 - v262);
          if (v22 > a4)
          {
            v346 = v22 - 1;
            v347 = (v882 + v244);
            while (*v346 == *v347)
            {
              ++v344;
              v348 = v346 - 1;
              if (v346 > a4)
              {
                --v346;
                v140 = v347-- > v911;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_663;
            }

LABEL_666:
            v249 = (v346 + 1);
            goto LABEL_667;
          }

LABEL_664:
          v249 = v22;
          goto LABEL_667;
        }
      }

      if (v245 <= v14)
      {
        v288 = *(v902 + 4 * (v242 >> v885));
        if (v288 <= v904 || (v287 = v910 + v288, *(v910 + v288) != *v22))
        {
LABEL_448:
          _X13 = &v22[(v22 - a4) >> 8];
          v22 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_742;
        }

        LODWORD(v245) = v288 + v909;
      }

      else
      {
        v287 = v8 + v245;
        if (*(v8 + v245) != *v22)
        {
          goto LABEL_448;
        }
      }

      v249 = (v22 + 1);
      v289 = *(v22 + 1);
      v290 = (0xCF1BBCDCB7A56463 * v289) >> v236;
      v291 = *(v6 + 4 * v290);
      *(v6 + 4 * v290) = v246;
      if (v291 <= v14)
      {
        v304 = *(v903 + 4 * ((0xCF1BBCDCB7A56463 * v289) >> v891));
        if (v304 <= v904 || (v305 = v910 + v304, *(v910 + v304) != v289))
        {
LABEL_482:
          v317 = (v22 + 4);
          v318 = (v287 + 4);
          if (v245 >= v14)
          {
            if (v238 <= v317)
            {
              v338 = v22 + 4;
LABEL_518:
              if (v338 < v899 && *v318 == *v338)
              {
                ++v318;
                v338 += 4;
              }

              if (v338 < v895 && *v318 == *v338)
              {
                v318 = (v318 + 2);
                v338 += 2;
              }

              if (v338 < v9 && *v318 == *v338)
              {
                ++v338;
              }

              v343 = v338 - v317;
            }

            else if (*v318 == *v317)
            {
              v337 = 0;
              v318 = (v287 + 12);
              v338 = v22 + 12;
              do
              {
                if (v338 >= v238)
                {
                  goto LABEL_518;
                }

                v340 = *v318;
                v318 += 2;
                v339 = v340;
                v342 = *v338;
                v338 += 8;
                v341 = v342;
                v337 += 8;
              }

              while (v339 == v342);
              v343 = v337 + (__clz(__rbit64(v341 ^ v339)) >> 3);
            }

            else
            {
              v343 = __clz(__rbit64(*v317 ^ *v318)) >> 3;
            }

            v344 = v343 + 4;
            v345 = (v22 - v287);
            if (v22 > a4 && v287 > v263)
            {
              v346 = v22 - 1;
              v349 = (v287 - 1);
              while (*v346 == *v349)
              {
                ++v344;
                v348 = v346 - 1;
                if (v346 > a4)
                {
                  --v346;
                  v140 = v349-- > v263;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_663;
              }

              goto LABEL_666;
            }
          }

          else
          {
            if (&v317[v21 - v318] >= v9)
            {
              v319 = v9;
            }

            else
            {
              v319 = &v317[v21 - v318];
            }

            if (v319 - 7 <= v317)
            {
              v321 = (v287 + 4);
              v322 = v22 + 4;
LABEL_626:
              if (v322 < v319 - 3 && *v321 == *v322)
              {
                ++v321;
                v322 += 4;
              }

              if (v322 < v319 - 1 && *v321 == *v322)
              {
                v321 = (v321 + 2);
                v322 += 2;
              }

              if (v322 < v319 && *v321 == *v322)
              {
                ++v322;
              }

              v327 = v322 - v317;
            }

            else if (*v318 == *v317)
            {
              v320 = 0;
              v321 = (v287 + 12);
              v322 = v22 + 12;
              do
              {
                if (v322 >= v319 - 7)
                {
                  goto LABEL_626;
                }

                v324 = *v321;
                v321 += 2;
                v323 = v324;
                v326 = *v322;
                v322 += 8;
                v325 = v326;
                v320 += 8;
              }

              while (v323 == v326);
              v327 = v320 + (__clz(__rbit64(v325 ^ v323)) >> 3);
            }

            else
            {
              v327 = __clz(__rbit64(*v317 ^ *v318)) >> 3;
            }

            if ((v318 + v327) == v21)
            {
              v379 = &v317[v327];
              if (v238 <= v379)
              {
                v382 = v263;
                v381 = v379;
LABEL_644:
                if (v381 < v899 && *v382 == *v381)
                {
                  ++v382;
                  v381 += 4;
                }

                if (v381 < v895 && *v382 == *v381)
                {
                  v382 = (v382 + 2);
                  v381 += 2;
                }

                if (v381 < v9 && *v382 == *v381)
                {
                  ++v381;
                }

                v387 = v381 - v379;
              }

              else if (*v263 == *v379)
              {
                v380 = 0;
                v381 = &v22[v327 + 12];
                v382 = (v14 + v8 + 8);
                do
                {
                  if (v381 >= v238)
                  {
                    goto LABEL_644;
                  }

                  v384 = *v382;
                  v382 += 2;
                  v383 = v384;
                  v386 = *v381;
                  v381 += 8;
                  v385 = v386;
                  v380 += 8;
                }

                while (v383 == v386);
                v387 = v380 + (__clz(__rbit64(v385 ^ v383)) >> 3);
              }

              else
              {
                v387 = __clz(__rbit64(*v379 ^ *v263)) >> 3;
              }

              v327 += v387;
            }

            v344 = v327 + 4;
            v345 = (v243 - v245);
            if (v22 > a4 && v287 > v888)
            {
              v346 = v22 - 1;
              v388 = (v287 - 1);
              while (*v346 == *v388)
              {
                ++v344;
                v348 = v346 - 1;
                if (v346 > a4)
                {
                  --v346;
                  v140 = v388-- > v888;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_663;
              }

              goto LABEL_666;
            }
          }

          goto LABEL_664;
        }

        v306 = (v22 + 9);
        v307 = (v305 + 8);
        if (&v21[(v22 + 9) - 8 - v305] >= v9)
        {
          v308 = v9;
        }

        else
        {
          v308 = &v21[(v22 + 9) - 8 - v305];
        }

        if (v308 - 7 <= v306)
        {
          v310 = (v305 + 8);
          v311 = v22 + 9;
LABEL_744:
          if (v311 < v308 - 3 && *v310 == *v311)
          {
            ++v310;
            ++v311;
          }

          if (v311 < v308 - 1 && *v310 == *v311)
          {
            v310 = (v310 + 2);
            v311 = (v311 + 2);
          }

          if (v311 < v308 && *v310 == *v311)
          {
            v311 = (v311 + 1);
          }

          v316 = v311 - v306;
        }

        else if (*v307 == *v306)
        {
          v309 = 0;
          v310 = (v869 + v304);
          v311 = v22 + 17;
          do
          {
            if (v311 >= v308 - 7)
            {
              goto LABEL_744;
            }

            v313 = *v310;
            v310 += 2;
            v312 = v313;
            v315 = *v311;
            v311 += 2;
            v314 = v315;
            v309 += 8;
          }

          while (v312 == v315);
          v316 = v309 + (__clz(__rbit64(v314 ^ v312)) >> 3);
        }

        else
        {
          v316 = __clz(__rbit64(*v306 ^ *v307)) >> 3;
        }

        if ((v307 + v316) == v21)
        {
          v433 = &v306[v316];
          if (v238 <= v433)
          {
            v436 = v263;
            v435 = v433;
LABEL_763:
            if (v435 < v899 && *v436 == *v435)
            {
              ++v436;
              v435 += 4;
            }

            if (v435 < v895 && *v436 == *v435)
            {
              v436 = (v436 + 2);
              v435 += 2;
            }

            if (v435 < v9 && *v436 == *v435)
            {
              ++v435;
            }

            v441 = v435 - v433;
          }

          else if (*v263 == *v433)
          {
            v434 = 0;
            v435 = &v22[v316 + 17];
            v436 = (v14 + v8 + 8);
            do
            {
              if (v435 >= v238)
              {
                goto LABEL_763;
              }

              v438 = *v436;
              v436 += 2;
              v437 = v438;
              v440 = *v435;
              v435 += 8;
              v439 = v440;
              v434 += 8;
            }

            while (v437 == v440);
            v441 = v434 + (__clz(__rbit64(v439 ^ v437)) >> 3);
          }

          else
          {
            v441 = __clz(__rbit64(*v433 ^ *v263)) >> 3;
          }

          v316 += v441;
        }

        v344 = v316 + 8;
        v345 = v246 - (v909 + v304);
        if (v249 > a4)
        {
          v442 = (v877 + v304);
          do
          {
            if (*v22 != *v442)
            {
              goto LABEL_780;
            }

            ++v344;
            v377 = v22 - 1;
            if (v22 <= a4)
            {
              break;
            }

            --v22;
            v140 = v442-- > v888;
          }

          while (v140);
LABEL_779:
          v249 = (v377 + 1);
        }
      }

      else
      {
        v292 = v8 + v291;
        if (*(v8 + v291) != v289)
        {
          goto LABEL_482;
        }

        v293 = (v22 + 9);
        v294 = (v292 + 8);
        if (v238 <= (v22 + 9))
        {
          v296 = v22 + 9;
LABEL_531:
          if (v296 < v899 && *v294 == *v296)
          {
            ++v294;
            v296 += 4;
          }

          if (v296 < v895 && *v294 == *v296)
          {
            v294 = (v294 + 2);
            v296 += 2;
          }

          if (v296 < v9 && *v294 == *v296)
          {
            ++v296;
          }

          v301 = v296 - v293;
        }

        else if (*v294 == *v293)
        {
          v295 = 0;
          v294 = (v873 + v291);
          v296 = v22 + 17;
          do
          {
            if (v296 >= v238)
            {
              goto LABEL_531;
            }

            v298 = *v294;
            v294 += 2;
            v297 = v298;
            v300 = *v296;
            v296 += 8;
            v299 = v300;
            v295 += 8;
          }

          while (v297 == v300);
          v301 = v295 + (__clz(__rbit64(v299 ^ v297)) >> 3);
        }

        else
        {
          v301 = __clz(__rbit64(*v293 ^ *v294)) >> 3;
        }

        v344 = v301 + 8;
        v345 = (v249 - v292);
        if (v249 > a4)
        {
          v376 = (v882 + v291);
          while (*v22 == *v376)
          {
            ++v344;
            v377 = v22 - 1;
            if (v22 > a4)
            {
              --v22;
              v140 = v376-- > v263;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_779;
          }

LABEL_780:
          v249 = (v22 + 1);
        }
      }

LABEL_667:
      v389 = v249 - a4;
      v390 = *(a2 + 24);
      if (v249 <= v239)
      {
        *v390 = *a4;
        v394 = *(a2 + 24);
        if (v389 <= 0x10)
        {
          *(a2 + 24) = v394 + v389;
          v373 = *(a2 + 8);
          goto LABEL_681;
        }

        v395 = (v394 + 16);
        v396 = v394 + v389;
        v397 = a4 + 16;
        do
        {
          v398 = *v397;
          v397 += 16;
          *v395++ = v398;
        }

        while (v395 < v396);
      }

      else
      {
        if (a4 <= v239)
        {
          v391 = (v390 + v239 - a4);
          do
          {
            v392 = *a4;
            a4 += 16;
            *v390++ = v392;
          }

          while (v390 < v391);
          a4 = v9 - 32;
          v390 = v391;
        }

        while (a4 < v249)
        {
          v393 = *a4++;
          *v390 = v393;
          v390 = (v390 + 1);
        }
      }

      *(a2 + 24) += v389;
      v373 = *(a2 + 8);
      if (v389 >= 0x10000)
      {
        v399 = (v373 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v399;
      }

LABEL_681:
      *(v373 + 4) = v389;
      *v373 = v345 + 3;
      v375 = v344 - 3;
      v18 = v17;
      v17 = v345;
      if (v344 - 3 >= 0x10000)
      {
        goto LABEL_682;
      }

LABEL_683:
      *(v373 + 6) = v375;
      v401 = v373 + 8;
      *(a2 + 8) = v373 + 8;
      a4 = (v249 + v344);
      if (v249 + v344 <= v16)
      {
        v402 = *(v8 + (v243 + 2));
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v402) >> v236)) = v243 + 2;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v236)) = a4 - 2 - v8;
        *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * v402) >> v237)) = v243 + 2;
        *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *(a4 - 1)) >> v237)) = a4 - 1 - v8;
        v403 = v17;
        v404 = v18;
        while (1)
        {
          v17 = v404;
          v404 = v403;
          v405 = a4 - v8;
          v406 = (a4 - v8 - v17);
          v407 = v406 >= v14 ? v8 : v910 - v909;
          if ((v907 - v406) < 3)
          {
            break;
          }

          v408 = v407 + v406;
          if (*(v407 + v406) != *a4)
          {
            break;
          }

          if (v406 >= v14)
          {
            v409 = v9;
          }

          else
          {
            v409 = v21;
          }

          v410 = a4 + 4;
          v411 = (v408 + 4);
          v412 = &v409[a4 - v408];
          if (v412 >= v9)
          {
            v413 = v9;
          }

          else
          {
            v413 = v412;
          }

          if (v413 - 7 <= v410)
          {
            v415 = v411;
            v416 = a4 + 4;
LABEL_704:
            if (v416 < v413 - 3 && *v415 == *v416)
            {
              ++v415;
              v416 += 4;
            }

            if (v416 < v413 - 1 && *v415 == *v416)
            {
              v415 = (v415 + 2);
              v416 += 2;
            }

            if (v416 < v413 && *v415 == *v416)
            {
              ++v416;
            }

            v421 = v416 - v410;
          }

          else if (*v411 == *v410)
          {
            v414 = 0;
            v415 = (v407 + v406 + 12);
            v416 = a4 + 12;
            do
            {
              if (v416 >= v413 - 7)
              {
                goto LABEL_704;
              }

              v418 = *v415;
              v415 += 2;
              v417 = v418;
              v420 = *v416;
              v416 += 8;
              v419 = v420;
              v414 += 8;
            }

            while (v417 == v420);
            v421 = v414 + (__clz(__rbit64(v419 ^ v417)) >> 3);
          }

          else
          {
            v421 = __clz(__rbit64(*v410 ^ *v411)) >> 3;
          }

          if ((v411 + v421) == v409)
          {
            v422 = &v410[v421];
            if (v238 <= v422)
            {
              v425 = v263;
              v424 = v422;
LABEL_723:
              if (v424 < v899 && *v425 == *v424)
              {
                ++v425;
                v424 += 4;
              }

              if (v424 < v895 && *v425 == *v424)
              {
                v425 = (v425 + 2);
                v424 += 2;
              }

              if (v424 < v9 && *v425 == *v424)
              {
                ++v424;
              }

              v430 = v424 - v422;
            }

            else if (*v263 == *v422)
            {
              v423 = 0;
              v424 = &a4[v421 + 12];
              v425 = (v14 + v8 + 8);
              do
              {
                if (v424 >= v238)
                {
                  goto LABEL_723;
                }

                v427 = *v425;
                v425 += 2;
                v426 = v427;
                v429 = *v424;
                v424 += 8;
                v428 = v429;
                v423 += 8;
              }

              while (v426 == v429);
              v430 = v423 + (__clz(__rbit64(v428 ^ v426)) >> 3);
            }

            else
            {
              v430 = __clz(__rbit64(*v422 ^ *v263)) >> 3;
            }

            v421 += v430;
          }

          if (a4 <= v239)
          {
            **(a2 + 24) = *a4;
            v401 = *(a2 + 8);
          }

          *(v401 + 4) = 0;
          *v401 = 1;
          if (v421 + 1 >= 0x10000)
          {
            v431 = (v401 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v431;
          }

          *(v401 + 6) = v421 + 1;
          v401 += 8;
          v432 = *a4;
          *(v7 + 4 * ((0xCF1BBCDCBF9B0000 * *a4) >> v237)) = v405;
          *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v432) >> v236)) = v405;
          a4 += v421 + 4;
          *(a2 + 8) = v401;
          v403 = v17;
          v18 = v404;
          v22 = a4;
          if (a4 > v16)
          {
            goto LABEL_742;
          }
        }

        v18 = v17;
        v17 = v404;
      }

      v22 = a4;
LABEL_742:
      if (v22 >= v16)
      {
        goto LABEL_1549;
      }
    }
  }

  if (v5 != 7)
  {
    if (v22 >= v16)
    {
      goto LABEL_1550;
    }

    v880 = a3;
    v651 = *(a1 + 244);
    v652 = (64 - *(a1 + 248));
    v653 = 32 - v651;
    v887 = 64 - *(v19 + 248);
    v893 = 32 - *(v19 + 244);
    v654 = (v14 - 1);
    v655 = (v9 - 7);
    v897 = v9 - 1;
    v901 = v9 - 3;
    v656 = v9 - 32;
    v867 = v20 + 16;
    v875 = v20 - 1;
    v871 = v8 + 16;
    v879 = v8 - 1;
    v889 = 32 - v651;
    while (1)
    {
      v657 = v652;
      v658 = v16;
      v659 = v656;
      v660 = v654;
      v661 = v21;
      v662 = *v22;
      v663 = 0xCF1BBCDCB7A56463 * *v22;
      v664 = v7;
      v665 = v657;
      v666 = v663 >> v657;
      LODWORD(v657) = -1640531535 * *v22;
      v667 = v657 >> v653;
      v668 = v657 >> v893;
      v669 = v22 - v8;
      v670 = *(v912 + 4 * v666);
      v671 = *(v664 + 4 * (v657 >> v653));
      v672 = v22 - v8 + 1;
      v673 = (v672 - v17);
      v674 = (v910 + v673 - v909);
      if (v673 >= v14)
      {
        v674 = (v8 + v673);
      }

      v675 = v664;
      *(v664 + 4 * v667) = v669;
      *(v912 + 4 * v666) = v669;
      v676 = v660;
      if ((v660 - v673) >= 3)
      {
        v677 = (v22 + 1);
        if (*v674 == *(v22 + 1))
        {
          if (v673 >= v14)
          {
            v678 = v9;
          }

          else
          {
            v678 = v661;
          }

          v679 = (v22 + 5);
          v680 = v674 + 1;
          if (&v22[v678 - (v674 + 1) + 5] >= v9)
          {
            v681 = v9;
          }

          else
          {
            v681 = &v22[v678 - (v674 + 1) + 5];
          }

          v905 = v22 - v8;
          if (v681 - 7 <= v679)
          {
            v683 = v674 + 1;
            v684 = v22 + 5;
            v656 = v659;
            v16 = v658;
            v652 = v665;
            v7 = v675;
LABEL_1218:
            if (v684 < v681 - 3 && *v683 == *v684)
            {
              ++v683;
              ++v684;
            }

            v21 = v661;
            v654 = v676;
            if (v684 < v681 - 1 && *v683 == *v684)
            {
              v683 = (v683 + 2);
              v684 = (v684 + 2);
            }

            v653 = v889;
            if (v684 < v681 && *v683 == *v684)
            {
              v684 = (v684 + 1);
            }

            v689 = v684 - v679;
          }

          else
          {
            v656 = v659;
            if (*v680 == *v679)
            {
              v682 = 0;
              v683 = v674 + 3;
              v684 = v22 + 13;
              v16 = v658;
              v652 = v665;
              v7 = v675;
              do
              {
                if (v684 >= v681 - 7)
                {
                  goto LABEL_1218;
                }

                v686 = *v683;
                v683 += 2;
                v685 = v686;
                v688 = *v684;
                v684 += 2;
                v687 = v688;
                v682 += 8;
              }

              while (v685 == v688);
              v689 = v682 + (__clz(__rbit64(v687 ^ v685)) >> 3);
              v21 = v661;
              v654 = v676;
              v653 = v889;
            }

            else
            {
              v689 = __clz(__rbit64(*v679 ^ *v680)) >> 3;
              v21 = v661;
              v654 = v676;
              v653 = v889;
              v16 = v658;
              v652 = v665;
              v7 = v675;
            }
          }

          if ((v680 + v689) == v678)
          {
            v755 = &v679[v689];
            if (v655 <= &v679[v689])
            {
              v758 = (v8 + v14);
              v757 = &v679[v689];
LABEL_1283:
              if (v757 < v901 && *v758 == *v757)
              {
                ++v758;
                v757 += 4;
              }

              if (v757 < v897 && *v758 == *v757)
              {
                v758 = (v758 + 2);
                v757 += 2;
              }

              if (v757 < v9 && *v758 == *v757)
              {
                ++v757;
              }

              v763 = v757 - v755;
            }

            else if (*v911 == *v755)
            {
              v756 = 0;
              v757 = &v22[v689 + 13];
              v758 = (v14 + v8 + 8);
              do
              {
                if (v757 >= v655)
                {
                  goto LABEL_1283;
                }

                v760 = *v758;
                v758 += 2;
                v759 = v760;
                v762 = *v757;
                v757 += 8;
                v761 = v762;
                v756 += 8;
              }

              while (v759 == v762);
              v763 = v756 + (__clz(__rbit64(v761 ^ v759)) >> 3);
            }

            else
            {
              v763 = __clz(__rbit64(*v755 ^ *v911)) >> 3;
            }

            v689 += v763;
          }

          v776 = v677 - a4;
          v777 = *(a2 + 24);
          if (v677 <= v656)
          {
            *v777 = *a4;
            v780 = *(a2 + 24);
            if (v776 > 0x10)
            {
              v781 = (v780 + 16);
              v782 = a4 + 16;
              do
              {
                v783 = *v782;
                v782 += 16;
                *v781++ = v783;
              }

              while (v781 < v780 + v776);
              goto LABEL_1324;
            }

            *(a2 + 24) = v780 + v776;
            v789 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v656)
            {
              v779 = v777 + v656 - a4;
              v784 = a4;
              do
              {
                v785 = *v784;
                v784 += 16;
                *v777++ = v785;
              }

              while (v777 < v779);
              v778 = v656;
            }

            else
            {
              v778 = a4;
              v779 = *(a2 + 24);
            }

            if (v778 < v677)
            {
              if (a4 <= v656)
              {
                v786 = v656;
              }

              else
              {
                v786 = a4;
              }

              v787 = v22 - v786 + 1;
              do
              {
                v788 = *v778++;
                *v779++ = v788;
                --v787;
              }

              while (v787);
            }

LABEL_1324:
            *(a2 + 24) += v776;
            v789 = *(a2 + 8);
            if (v776 >= 0x10000)
            {
              v790 = (v789 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v790;
            }
          }

          v771 = v689 + 4;
          *(v789 + 4) = v776;
          *v789 = 1;
          v791 = v689 + 1;
          v792 = (v689 + 1) >> 16;
          v772 = v17;
          if (!v792)
          {
            goto LABEL_1487;
          }

LABEL_1486:
          v835 = (v789 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v835;
          v17 = v772;
          goto LABEL_1487;
        }
      }

      if (v670 <= v14)
      {
        v700 = *(v903 + 4 * (v663 >> v887));
        v656 = v659;
        if (v700 > v904)
        {
          v701 = v910 + v700;
          if (*(v910 + v700) == v662)
          {
            v702 = (v22 + 8);
            v703 = (v701 + 8);
            v704 = &v661[v22 - v701];
            if (v704 >= v9)
            {
              v705 = v9;
            }

            else
            {
              v705 = v704;
            }

            v905 = v22 - v8;
            if (v705 - 7 <= v702)
            {
              v707 = v703;
              v708 = v22 + 8;
LABEL_1340:
              v21 = v661;
              if (v708 < v705 - 3 && *v707 == *v708)
              {
                ++v707;
                v708 += 4;
              }

              v654 = v676;
              v16 = v658;
              v653 = v889;
              v652 = v665;
              if (v708 < v705 - 1 && *v707 == *v708)
              {
                v707 = (v707 + 2);
                v708 += 2;
              }

              v7 = v675;
              if (v708 < v705 && *v707 == *v708)
              {
                ++v708;
              }

              v713 = v708 - v702;
            }

            else if (*v703 == *v702)
            {
              v706 = 0;
              v707 = (v867 + v700);
              v708 = v22 + 16;
              v16 = v658;
              do
              {
                if (v708 >= v705 - 7)
                {
                  goto LABEL_1340;
                }

                v710 = *v707;
                v707 += 2;
                v709 = v710;
                v712 = *v708;
                v708 += 8;
                v711 = v712;
                v706 += 8;
              }

              while (v709 == v712);
              v713 = v706 + (__clz(__rbit64(v711 ^ v709)) >> 3);
              v21 = v661;
              v654 = v676;
              v653 = v889;
              v652 = v665;
              v7 = v675;
            }

            else
            {
              v713 = __clz(__rbit64(*v702 ^ *v703)) >> 3;
              v21 = v661;
              v654 = v676;
              v653 = v889;
              v16 = v658;
              v652 = v665;
              v7 = v675;
            }

            if ((v703 + v713) == v21)
            {
              v794 = &v702[v713];
              if (v655 <= v794)
              {
                v797 = (v8 + v14);
                v796 = v794;
LABEL_1358:
                if (v796 < v901 && *v797 == *v796)
                {
                  ++v797;
                  v796 += 4;
                }

                if (v796 < v897 && *v797 == *v796)
                {
                  v797 = (v797 + 2);
                  v796 += 2;
                }

                if (v796 < v9 && *v797 == *v796)
                {
                  ++v796;
                }

                v802 = v796 - v794;
              }

              else if (*v911 == *v794)
              {
                v795 = 0;
                v796 = &v22[v713 + 16];
                v797 = (v14 + v8 + 8);
                do
                {
                  if (v796 >= v655)
                  {
                    goto LABEL_1358;
                  }

                  v799 = *v797;
                  v797 += 2;
                  v798 = v799;
                  v801 = *v796;
                  v796 += 8;
                  v800 = v801;
                  v795 += 8;
                }

                while (v798 == v801);
                v802 = v795 + (__clz(__rbit64(v800 ^ v798)) >> 3);
              }

              else
              {
                v802 = __clz(__rbit64(*v794 ^ *v911)) >> 3;
              }

              v713 += v802;
            }

            v771 = v713 + 8;
            v772 = v905 - (v909 + v700);
            if (v22 <= a4)
            {
LABEL_1451:
              v677 = v22;
              goto LABEL_1471;
            }

            v775 = v22 - 1;
            v803 = (v875 + v700);
            while (*v775 == *v803)
            {
              ++v771;
              v773 = v775 - 1;
              if (v775 > a4)
              {
                --v775;
                v140 = v803-- > v888;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_1470;
            }

LABEL_1450:
            v677 = (v775 + 1);
            goto LABEL_1471;
          }
        }
      }

      else
      {
        v690 = v8 + v670;
        v656 = v659;
        if (*(v8 + v670) == v662)
        {
          v905 = v22 - v8;
          v691 = (v22 + 8);
          v692 = (v690 + 8);
          v16 = v658;
          if (v655 <= (v22 + 8))
          {
            v694 = v22 + 8;
            v21 = v661;
            v654 = v676;
            v653 = v889;
            v652 = v665;
            v7 = v675;
LABEL_1229:
            if (v694 < v901 && *v692 == *v694)
            {
              ++v692;
              v694 += 4;
            }

            if (v694 < v897 && *v692 == *v694)
            {
              v692 = (v692 + 2);
              v694 += 2;
            }

            if (v694 < v9 && *v692 == *v694)
            {
              ++v694;
            }

            v699 = v694 - v691;
          }

          else
          {
            v21 = v661;
            v652 = v665;
            if (*v692 == *v691)
            {
              v693 = 0;
              v692 = (v871 + v670);
              v694 = v22 + 16;
              v654 = v676;
              v653 = v889;
              v7 = v675;
              do
              {
                if (v694 >= v655)
                {
                  goto LABEL_1229;
                }

                v696 = *v692;
                v692 += 2;
                v695 = v696;
                v698 = *v694;
                v694 += 8;
                v697 = v698;
                v693 += 8;
              }

              while (v695 == v698);
              v699 = v693 + (__clz(__rbit64(v697 ^ v695)) >> 3);
            }

            else
            {
              v699 = __clz(__rbit64(*v691 ^ *v692)) >> 3;
              v654 = v676;
              v653 = v889;
              v7 = v675;
            }
          }

          v771 = v699 + 8;
          v772 = (v22 - v690);
          if (v22 <= a4)
          {
            goto LABEL_1451;
          }

          v773 = v22 - 1;
          v774 = (v879 + v670);
          while (*v773 == *v774)
          {
            ++v771;
            v775 = v773 - 1;
            if (v773 > a4)
            {
              --v773;
              v140 = v774-- > v911;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_1450;
          }

LABEL_1470:
          v677 = (v773 + 1);
          goto LABEL_1471;
        }
      }

      v16 = v658;
      if (v671 <= v14)
      {
        v715 = *(v902 + 4 * v668);
        v652 = v665;
        if (v715 <= v904 || (v714 = v910 + v715, *(v910 + v715) != *v22))
        {
LABEL_1216:
          _X13 = &v22[(v22 - a4) >> 8];
          v22 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          v21 = v661;
          v654 = v676;
          v653 = v889;
          v7 = v675;
          goto LABEL_1546;
        }

        LODWORD(v671) = v715 + v909;
      }

      else
      {
        v714 = v8 + v671;
        v652 = v665;
        if (*(v8 + v671) != *v22)
        {
          goto LABEL_1216;
        }
      }

      v677 = (v22 + 1);
      v716 = *(v22 + 1);
      v717 = (0xCF1BBCDCB7A56463 * v716) >> v652;
      v718 = *(v912 + 4 * v717);
      *(v912 + 4 * v717) = v672;
      v7 = v675;
      v905 = v22 - v8;
      if (v718 <= v14)
      {
        v731 = *(v903 + 4 * ((0xCF1BBCDCB7A56463 * v716) >> v887));
        if (v731 <= v904 || (v732 = v910 + v731, *(v910 + v731) != v716))
        {
LABEL_1250:
          v744 = (v22 + 4);
          v745 = (v714 + 4);
          if (v671 >= v14)
          {
            if (v655 <= v744)
            {
              v765 = v22 + 4;
              v21 = v661;
              v654 = v676;
              v653 = v889;
LABEL_1295:
              if (v765 < v901 && *v745 == *v765)
              {
                ++v745;
                v765 += 4;
              }

              if (v765 < v897 && *v745 == *v765)
              {
                v745 = (v745 + 2);
                v765 += 2;
              }

              if (v765 < v9 && *v745 == *v765)
              {
                ++v765;
              }

              v770 = v765 - v744;
            }

            else
            {
              v21 = v661;
              if (*v745 == *v744)
              {
                v764 = 0;
                v745 = (v714 + 12);
                v765 = v22 + 12;
                v654 = v676;
                v653 = v889;
                do
                {
                  if (v765 >= v655)
                  {
                    goto LABEL_1295;
                  }

                  v767 = *v745;
                  v745 += 2;
                  v766 = v767;
                  v769 = *v765;
                  v765 += 8;
                  v768 = v769;
                  v764 += 8;
                }

                while (v766 == v769);
                v770 = v764 + (__clz(__rbit64(v768 ^ v766)) >> 3);
              }

              else
              {
                v770 = __clz(__rbit64(*v744 ^ *v745)) >> 3;
                v654 = v676;
                v653 = v889;
              }
            }

            v771 = v770 + 4;
            v772 = (v22 - v714);
            if (v22 <= a4 || v714 <= v911)
            {
              goto LABEL_1451;
            }

            v773 = v22 - 1;
            v793 = (v714 - 1);
            while (*v773 == *v793)
            {
              ++v771;
              v775 = v773 - 1;
              if (v773 > a4)
              {
                --v773;
                v140 = v793-- > v911;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_1450;
            }
          }

          else
          {
            if (&v744[v661 - v745] >= v9)
            {
              v746 = v9;
            }

            else
            {
              v746 = &v744[v661 - v745];
            }

            if (v746 - 7 <= v744)
            {
              v748 = (v714 + 4);
              v749 = v22 + 4;
LABEL_1378:
              v21 = v661;
              if (v749 < v746 - 3 && *v748 == *v749)
              {
                ++v748;
                v749 += 4;
              }

              v654 = v676;
              v653 = v889;
              if (v749 < v746 - 1 && *v748 == *v749)
              {
                v748 = (v748 + 2);
                v749 += 2;
              }

              if (v749 < v746 && *v748 == *v749)
              {
                ++v749;
              }

              v754 = v749 - v744;
            }

            else
            {
              if (*v745 == *v744)
              {
                v747 = 0;
                v748 = (v714 + 12);
                v749 = v22 + 12;
                do
                {
                  if (v749 >= v746 - 7)
                  {
                    goto LABEL_1378;
                  }

                  v751 = *v748;
                  v748 += 2;
                  v750 = v751;
                  v753 = *v749;
                  v749 += 8;
                  v752 = v753;
                  v747 += 8;
                }

                while (v750 == v753);
                v754 = v747 + (__clz(__rbit64(v752 ^ v750)) >> 3);
                v21 = v661;
              }

              else
              {
                v754 = __clz(__rbit64(*v744 ^ *v745)) >> 3;
                v21 = v661;
              }

              v654 = v676;
              v653 = v889;
            }

            if ((v745 + v754) == v21)
            {
              v804 = &v744[v754];
              if (v655 <= v804)
              {
                v807 = (v8 + v14);
                v806 = v804;
LABEL_1433:
                if (v806 < v901 && *v807 == *v806)
                {
                  ++v807;
                  v806 += 4;
                }

                if (v806 < v897 && *v807 == *v806)
                {
                  v807 = (v807 + 2);
                  v806 += 2;
                }

                if (v806 < v9 && *v807 == *v806)
                {
                  ++v806;
                }

                v812 = v806 - v804;
              }

              else if (*v911 == *v804)
              {
                v805 = 0;
                v806 = &v22[v754 + 12];
                v807 = (v14 + v8 + 8);
                do
                {
                  if (v806 >= v655)
                  {
                    goto LABEL_1433;
                  }

                  v809 = *v807;
                  v807 += 2;
                  v808 = v809;
                  v811 = *v806;
                  v806 += 8;
                  v810 = v811;
                  v805 += 8;
                }

                while (v808 == v811);
                v812 = v805 + (__clz(__rbit64(v810 ^ v808)) >> 3);
              }

              else
              {
                v812 = __clz(__rbit64(*v804 ^ *v911)) >> 3;
              }

              v754 += v812;
            }

            v771 = v754 + 4;
            v772 = (v905 - v671);
            if (v22 <= a4 || v714 <= v888)
            {
              goto LABEL_1451;
            }

            v773 = v22 - 1;
            v823 = (v714 - 1);
            while (*v773 == *v823)
            {
              ++v771;
              v775 = v773 - 1;
              if (v773 > a4)
              {
                --v773;
                v140 = v823-- > v888;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_1450;
            }
          }

          goto LABEL_1470;
        }

        v733 = (v22 + 9);
        v734 = (v732 + 8);
        if (&v661[(v22 + 9) - 8 - v732] >= v9)
        {
          v735 = v9;
        }

        else
        {
          v735 = &v661[(v22 + 9) - 8 - v732];
        }

        if (v735 - 7 <= v733)
        {
          v737 = (v732 + 8);
          v738 = v22 + 9;
LABEL_1414:
          if (v738 < v735 - 3 && *v737 == *v738)
          {
            ++v737;
            ++v738;
          }

          if (v738 < v735 - 1 && *v737 == *v738)
          {
            v737 = (v737 + 2);
            v738 = (v738 + 2);
          }

          if (v738 < v735 && *v737 == *v738)
          {
            v738 = (v738 + 1);
          }

          v743 = v738 - v733;
        }

        else if (*v734 == *v733)
        {
          v736 = 0;
          v737 = (v867 + v731);
          v738 = v22 + 17;
          do
          {
            if (v738 >= v735 - 7)
            {
              goto LABEL_1414;
            }

            v740 = *v737;
            v737 += 2;
            v739 = v740;
            v742 = *v738;
            v738 += 2;
            v741 = v742;
            v736 += 8;
          }

          while (v739 == v742);
          v743 = v736 + (__clz(__rbit64(v741 ^ v739)) >> 3);
        }

        else
        {
          v743 = __clz(__rbit64(*v733 ^ *v734)) >> 3;
        }

        if ((v734 + v743) == v661)
        {
          v814 = &v733[v743];
          if (v655 <= v814)
          {
            v817 = (v8 + v14);
            v816 = v814;
LABEL_1454:
            v21 = v661;
            if (v816 < v901 && *v817 == *v816)
            {
              ++v817;
              v816 += 4;
            }

            v654 = v676;
            v653 = v889;
            if (v816 < v897 && *v817 == *v816)
            {
              v817 = (v817 + 2);
              v816 += 2;
            }

            if (v816 < v9 && *v817 == *v816)
            {
              ++v816;
            }

            v822 = v816 - v814;
          }

          else
          {
            if (*v911 == *v814)
            {
              v815 = 0;
              v816 = &v22[v743 + 17];
              v817 = (v14 + v8 + 8);
              do
              {
                if (v816 >= v655)
                {
                  goto LABEL_1454;
                }

                v819 = *v817;
                v817 += 2;
                v818 = v819;
                v821 = *v816;
                v816 += 8;
                v820 = v821;
                v815 += 8;
              }

              while (v818 == v821);
              v822 = v815 + (__clz(__rbit64(v820 ^ v818)) >> 3);
              v21 = v661;
            }

            else
            {
              v822 = __clz(__rbit64(*v814 ^ *v911)) >> 3;
              v21 = v661;
            }

            v654 = v676;
            v653 = v889;
          }

          v743 += v822;
        }

        else
        {
          v21 = v661;
          v654 = v676;
          v653 = v889;
        }

        v771 = v743 + 8;
        v772 = v672 - (v909 + v731);
        if (v677 > a4)
        {
          v824 = (v875 + v731);
          while (*v22 == *v824)
          {
            ++v771;
            v773 = v22 - 1;
            if (v22 > a4)
            {
              --v22;
              v140 = v824-- > v888;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_1470;
          }

          goto LABEL_1548;
        }
      }

      else
      {
        v719 = v8 + v718;
        if (*(v8 + v718) != v716)
        {
          goto LABEL_1250;
        }

        v720 = (v22 + 9);
        v721 = (v719 + 8);
        if (v655 <= (v22 + 9))
        {
          v723 = v22 + 9;
          v21 = v661;
          v654 = v676;
          v653 = v889;
LABEL_1396:
          if (v723 < v901 && *v721 == *v723)
          {
            ++v721;
            v723 += 4;
          }

          if (v723 < v897 && *v721 == *v723)
          {
            v721 = (v721 + 2);
            v723 += 2;
          }

          if (v723 < v9 && *v721 == *v723)
          {
            ++v723;
          }

          v728 = v723 - v720;
        }

        else
        {
          v21 = v661;
          if (*v721 == *v720)
          {
            v722 = 0;
            v721 = (v871 + v718);
            v723 = v22 + 17;
            v654 = v676;
            v653 = v889;
            do
            {
              if (v723 >= v655)
              {
                goto LABEL_1396;
              }

              v725 = *v721;
              v721 += 2;
              v724 = v725;
              v727 = *v723;
              v723 += 8;
              v726 = v727;
              v722 += 8;
            }

            while (v724 == v727);
            v728 = v722 + (__clz(__rbit64(v726 ^ v724)) >> 3);
          }

          else
          {
            v728 = __clz(__rbit64(*v720 ^ *v721)) >> 3;
            v654 = v676;
            v653 = v889;
          }
        }

        v771 = v728 + 8;
        v772 = (v677 - v719);
        if (v677 > a4)
        {
          v813 = (v879 + v718);
          while (*v22 == *v813)
          {
            ++v771;
            v773 = v22 - 1;
            if (v22 > a4)
            {
              --v22;
              v140 = v813-- > v911;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_1470;
          }

LABEL_1548:
          v677 = (v22 + 1);
        }
      }

LABEL_1471:
      v825 = v677 - a4;
      v826 = *(a2 + 24);
      if (v677 <= v656)
      {
        *v826 = *a4;
        v830 = *(a2 + 24);
        if (v825 <= 0x10)
        {
          *(a2 + 24) = v830 + v825;
          v789 = *(a2 + 8);
          goto LABEL_1485;
        }

        v831 = (v830 + 16);
        v832 = a4 + 16;
        do
        {
          v833 = *v832;
          v832 += 16;
          *v831++ = v833;
        }

        while (v831 < v830 + v825);
      }

      else
      {
        if (a4 <= v656)
        {
          v827 = (v826 + v656 - a4);
          do
          {
            v828 = *a4;
            a4 += 16;
            *v826++ = v828;
          }

          while (v826 < v827);
          a4 = v656;
          v826 = v827;
        }

        while (a4 < v677)
        {
          v829 = *a4++;
          *v826 = v829;
          v826 = (v826 + 1);
        }
      }

      *(a2 + 24) += v825;
      v789 = *(a2 + 8);
      if (v825 >= 0x10000)
      {
        v834 = (v789 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v834;
      }

LABEL_1485:
      *(v789 + 4) = v825;
      *v789 = v772 + 3;
      v791 = v771 - 3;
      v18 = v17;
      v17 = v772;
      if (v771 - 3 >= 0x10000)
      {
        goto LABEL_1486;
      }

LABEL_1487:
      *(v789 + 6) = v791;
      v836 = v789 + 8;
      *(a2 + 8) = v789 + 8;
      a4 = (v677 + v771);
      if (v677 + v771 <= v16)
      {
        *(v912 + 4 * ((0xCF1BBCDCB7A56463 * *(v8 + (v905 + 2))) >> v652)) = v905 + 2;
        *(v912 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v652)) = a4 - 2 - v8;
        *(v7 + 4 * ((-1640531535 * *(v8 + (v905 + 2))) >> v653)) = v905 + 2;
        *(v7 + 4 * ((-1640531535 * *(a4 - 1)) >> v653)) = a4 - 1 - v8;
        v837 = v17;
        v838 = v18;
        while (1)
        {
          v17 = v838;
          v838 = v837;
          v839 = a4 - v8;
          v840 = (a4 - v8 - v17);
          v841 = v840 >= v14 ? v8 : v910 - v909;
          if ((v654 - v840) < 3)
          {
            break;
          }

          v842 = v841 + v840;
          if (*(v841 + v840) != *a4)
          {
            break;
          }

          if (v840 >= v14)
          {
            v843 = v9;
          }

          else
          {
            v843 = v21;
          }

          v844 = a4 + 4;
          v845 = (v842 + 4);
          v846 = &v843[a4 - v842];
          if (v846 >= v9)
          {
            v847 = v9;
          }

          else
          {
            v847 = v846;
          }

          if (v847 - 7 <= v844)
          {
            v849 = v845;
            v850 = a4 + 4;
LABEL_1508:
            if (v850 < v847 - 3 && *v849 == *v850)
            {
              ++v849;
              v850 += 4;
            }

            if (v850 < v847 - 1 && *v849 == *v850)
            {
              v849 = (v849 + 2);
              v850 += 2;
            }

            if (v850 < v847 && *v849 == *v850)
            {
              ++v850;
            }

            v855 = v850 - v844;
          }

          else if (*v845 == *v844)
          {
            v848 = 0;
            v849 = (v841 + v840 + 12);
            v850 = a4 + 12;
            do
            {
              if (v850 >= v847 - 7)
              {
                goto LABEL_1508;
              }

              v852 = *v849;
              v849 += 2;
              v851 = v852;
              v854 = *v850;
              v850 += 8;
              v853 = v854;
              v848 += 8;
            }

            while (v851 == v854);
            v855 = v848 + (__clz(__rbit64(v853 ^ v851)) >> 3);
          }

          else
          {
            v855 = __clz(__rbit64(*v844 ^ *v845)) >> 3;
          }

          if ((v845 + v855) == v843)
          {
            v856 = &v844[v855];
            if (v655 <= v856)
            {
              v859 = (v8 + v14);
              v858 = v856;
LABEL_1526:
              if (v858 < v901 && *v859 == *v858)
              {
                ++v859;
                v858 += 4;
              }

              if (v858 < v897 && *v859 == *v858)
              {
                v859 = (v859 + 2);
                v858 += 2;
              }

              if (v858 < v9 && *v859 == *v858)
              {
                ++v858;
              }

              v864 = v858 - v856;
            }

            else if (*v911 == *v856)
            {
              v857 = 0;
              v858 = &a4[v855 + 12];
              v859 = (v14 + v8 + 8);
              do
              {
                if (v858 >= v655)
                {
                  goto LABEL_1526;
                }

                v861 = *v859;
                v859 += 2;
                v860 = v861;
                v863 = *v858;
                v858 += 8;
                v862 = v863;
                v857 += 8;
              }

              while (v860 == v863);
              v864 = v857 + (__clz(__rbit64(v862 ^ v860)) >> 3);
            }

            else
            {
              v864 = __clz(__rbit64(*v856 ^ *v911)) >> 3;
            }

            v855 += v864;
          }

          if (a4 <= v656)
          {
            **(a2 + 24) = *a4;
            v836 = *(a2 + 8);
          }

          *(v836 + 4) = 0;
          *v836 = 1;
          if (v855 + 1 >= 0x10000)
          {
            v865 = (v836 - *a2) >> 3;
            *(a2 + 72) = 2;
            *(a2 + 76) = v865;
          }

          *(v836 + 6) = v855 + 1;
          *(v7 + 4 * ((-1640531535 * *a4) >> v653)) = v839;
          v836 += 8;
          *(v912 + 4 * ((0xCF1BBCDCB7A56463 * *a4) >> v652)) = v839;
          a4 += v855 + 4;
          *(a2 + 8) = v836;
          v837 = v17;
          v18 = v838;
          v22 = a4;
          if (a4 > v16)
          {
            goto LABEL_1546;
          }
        }

        v18 = v17;
        v17 = v838;
      }

      v22 = a4;
LABEL_1546:
      if (v22 >= v16)
      {
        goto LABEL_1549;
      }
    }
  }

  if (v22 < v16)
  {
    v880 = a3;
    v23 = *(a1 + 244);
    v24 = 64 - *(a1 + 248);
    v25 = 64 - v23;
    v884 = 64 - *(v19 + 244);
    v906 = v14 - 1;
    v26 = (v9 - 7);
    v898 = v9 - 3;
    v890 = 64 - *(v19 + 248);
    v894 = v9 - 1;
    v27 = (v9 - 32);
    v868 = v20 + 16;
    v876 = v20 - 1;
    v872 = v8 + 16;
    v881 = v8 - 1;
    while (1)
    {
      v28 = *v22;
      v29 = 0xCF1BBCDCB7A56463 * *v22;
      v30 = 0xCF1BBCDCBFA56300 * *v22;
      v31 = v22 - v8;
      v32 = *(v6 + 4 * (v29 >> v24));
      v33 = *(v7 + 4 * (v30 >> v25));
      v34 = v22 - v8 + 1;
      v35 = (v34 - v17);
      v36 = (v910 + v35 - v909);
      if (v35 >= v14)
      {
        v36 = (v8 + v35);
      }

      *(v7 + 4 * (v30 >> v25)) = v31;
      *(v6 + 4 * (v29 >> v24)) = v31;
      if ((v906 - v35) >= 3)
      {
        v37 = (v22 + 1);
        if (*v36 == *(v22 + 1))
        {
          if (v35 >= v14)
          {
            v38 = v9;
          }

          else
          {
            v38 = v21;
          }

          v39 = (v22 + 5);
          v40 = v36 + 1;
          if (&v22[v38 - (v36 + 1) + 5] >= v9)
          {
            v41 = v9;
          }

          else
          {
            v41 = &v22[v38 - (v36 + 1) + 5];
          }

          if (v41 - 7 <= v39)
          {
            v43 = v36 + 1;
            v44 = v22 + 5;
LABEL_66:
            v51 = (v8 + v14);
            if (v44 < v41 - 3 && *v43 == *v44)
            {
              ++v43;
              ++v44;
            }

            if (v44 < v41 - 1 && *v43 == *v44)
            {
              v43 = (v43 + 2);
              v44 = (v44 + 2);
            }

            if (v44 < v41 && *v43 == *v44)
            {
              v44 = (v44 + 1);
            }

            v49 = v44 - v39;
          }

          else
          {
            if (*v40 == *v39)
            {
              v42 = 0;
              v43 = v36 + 3;
              v44 = v22 + 13;
              do
              {
                if (v44 >= v41 - 7)
                {
                  goto LABEL_66;
                }

                v46 = *v43;
                v43 += 2;
                v45 = v46;
                v48 = *v44;
                v44 += 2;
                v47 = v48;
                v42 += 8;
              }

              while (v45 == v48);
              v49 = v42 + (__clz(__rbit64(v47 ^ v45)) >> 3);
            }

            else
            {
              v49 = __clz(__rbit64(*v39 ^ *v40)) >> 3;
            }

            v51 = (v8 + v14);
          }

          if ((v40 + v49) == v38)
          {
            v119 = &v39[v49];
            if (v26 <= v119)
            {
              v122 = v51;
              v121 = v119;
LABEL_194:
              if (v121 < v898 && *v122 == *v121)
              {
                ++v122;
                v121 += 4;
              }

              if (v121 < v894 && *v122 == *v121)
              {
                v122 = (v122 + 2);
                v121 += 2;
              }

              if (v121 < v9 && *v122 == *v121)
              {
                ++v121;
              }

              v127 = v121 - v119;
            }

            else if (*v51 == *v119)
            {
              v120 = 0;
              v121 = &v22[v49 + 13];
              v122 = (v14 + v8 + 8);
              do
              {
                if (v121 >= v26)
                {
                  goto LABEL_194;
                }

                v124 = *v122;
                v122 += 2;
                v123 = v124;
                v126 = *v121;
                v121 += 8;
                v125 = v126;
                v120 += 8;
              }

              while (v123 == v126);
              v127 = v120 + (__clz(__rbit64(v125 ^ v123)) >> 3);
            }

            else
            {
              v127 = __clz(__rbit64(*v119 ^ *v51)) >> 3;
            }

            v49 += v127;
          }

          v151 = v37 - a4;
          v152 = *(a2 + 24);
          if (v37 <= v27)
          {
            *v152 = *a4;
            v155 = *(a2 + 24);
            if (v151 > 0x10)
            {
              v156 = (v155 + 16);
              v157 = v155 + v151;
              v158 = a4 + 16;
              do
              {
                v159 = *v158;
                v158 += 16;
                *v156++ = v159;
              }

              while (v156 < v157);
              goto LABEL_221;
            }

            *(a2 + 24) = v155 + v151;
            v165 = *(a2 + 8);
          }

          else
          {
            if (a4 <= v27)
            {
              v154 = v152 + v27 - a4;
              v160 = a4;
              do
              {
                v161 = *v160;
                v160 += 16;
                *v152++ = v161;
              }

              while (v152 < v154);
              v153 = v9 - 32;
            }

            else
            {
              v153 = a4;
              v154 = *(a2 + 24);
            }

            if (v153 < v37)
            {
              if (a4 <= v27)
              {
                v162 = v9 - 32;
              }

              else
              {
                v162 = a4;
              }

              v163 = v22 - v162 + 1;
              do
              {
                v164 = *v153++;
                *v154++ = v164;
                --v163;
              }

              while (v163);
            }

LABEL_221:
            *(a2 + 24) += v151;
            v165 = *(a2 + 8);
            if (v151 >= 0x10000)
            {
              v166 = (v165 - *a2) >> 3;
              *(a2 + 72) = 1;
              *(a2 + 76) = v166;
            }
          }

          v135 = v49 + 4;
          *(v165 + 4) = v151;
          *v165 = 1;
          v167 = v49 + 1;
          v136 = v17;
          if (!((v49 + 1) >> 16))
          {
            goto LABEL_299;
          }

LABEL_298:
          v192 = (v165 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v192;
          v17 = v136;
          goto LABEL_299;
        }
      }

      if (v32 <= v14)
      {
        v61 = *(v903 + 4 * (v29 >> v890));
        v51 = (v8 + v14);
        if (v61 > v904)
        {
          v62 = v910 + v61;
          if (*(v910 + v61) == v28)
          {
            v63 = (v22 + 8);
            v64 = (v62 + 8);
            v65 = &v21[v22 - v62];
            if (v65 >= v9)
            {
              v66 = v9;
            }

            else
            {
              v66 = v65;
            }

            if (v66 - 7 <= v63)
            {
              v68 = v64;
              v69 = v22 + 8;
LABEL_166:
              if (v69 < v66 - 3 && *v68 == *v69)
              {
                ++v68;
                v69 += 4;
              }

              if (v69 < v66 - 1 && *v68 == *v69)
              {
                v68 = (v68 + 2);
                v69 += 2;
              }

              if (v69 < v66 && *v68 == *v69)
              {
                ++v69;
              }

              v74 = v69 - v63;
            }

            else if (*v64 == *v63)
            {
              v67 = 0;
              v68 = (v868 + v61);
              v69 = v22 + 16;
              do
              {
                if (v69 >= v66 - 7)
                {
                  goto LABEL_166;
                }

                v71 = *v68;
                v68 += 2;
                v70 = v71;
                v73 = *v69;
                v69 += 8;
                v72 = v73;
                v67 += 8;
              }

              while (v70 == v73);
              v74 = v67 + (__clz(__rbit64(v72 ^ v70)) >> 3);
            }

            else
            {
              v74 = __clz(__rbit64(*v63 ^ *v64)) >> 3;
            }

            if ((v64 + v74) == v21)
            {
              v142 = &v63[v74];
              if (v26 <= v142)
              {
                v145 = (v8 + v14);
                v144 = v142;
LABEL_184:
                if (v144 < v898 && *v145 == *v144)
                {
                  ++v145;
                  v144 += 4;
                }

                if (v144 < v894 && *v145 == *v144)
                {
                  v145 = (v145 + 2);
                  v144 += 2;
                }

                if (v144 < v9 && *v145 == *v144)
                {
                  ++v144;
                }

                v150 = v144 - v142;
              }

              else if (*v911 == *v142)
              {
                v143 = 0;
                v144 = &v22[v74 + 16];
                v145 = (v14 + v8 + 8);
                do
                {
                  if (v144 >= v26)
                  {
                    goto LABEL_184;
                  }

                  v147 = *v145;
                  v145 += 2;
                  v146 = v147;
                  v149 = *v144;
                  v144 += 8;
                  v148 = v149;
                  v143 += 8;
                }

                while (v146 == v149);
                v150 = v143 + (__clz(__rbit64(v148 ^ v146)) >> 3);
              }

              else
              {
                v150 = __clz(__rbit64(*v142 ^ *v911)) >> 3;
              }

              v74 += v150;
            }

            v135 = v74 + 8;
            v136 = v31 - (v909 + v61);
            if (v22 <= a4)
            {
              goto LABEL_280;
            }

            v137 = v22 - 1;
            v170 = (v876 + v61);
            do
            {
              if (*v137 != *v170)
              {
                goto LABEL_282;
              }

              ++v135;
              v139 = v137 - 1;
              if (v137 <= a4)
              {
                break;
              }

              --v137;
              v140 = v170-- > v888;
            }

            while (v140);
LABEL_279:
            v37 = (v139 + 1);
            goto LABEL_283;
          }
        }
      }

      else
      {
        v50 = v8 + v32;
        v51 = (v8 + v14);
        if (*(v8 + v32) == v28)
        {
          v52 = (v22 + 8);
          v53 = (v50 + 8);
          if (v26 <= (v22 + 8))
          {
            v55 = v22 + 8;
LABEL_77:
            if (v55 < v898 && *v53 == *v55)
            {
              ++v53;
              v55 += 4;
            }

            if (v55 < v894 && *v53 == *v55)
            {
              v53 = (v53 + 2);
              v55 += 2;
            }

            if (v55 < v9 && *v53 == *v55)
            {
              ++v55;
            }

            v60 = v55 - v52;
          }

          else if (*v53 == *v52)
          {
            v54 = 0;
            v53 = (v872 + v32);
            v55 = v22 + 16;
            do
            {
              if (v55 >= v26)
              {
                goto LABEL_77;
              }

              v57 = *v53;
              v53 += 2;
              v56 = v57;
              v59 = *v55;
              v55 += 8;
              v58 = v59;
              v54 += 8;
            }

            while (v56 == v59);
            v60 = v54 + (__clz(__rbit64(v58 ^ v56)) >> 3);
          }

          else
          {
            v60 = __clz(__rbit64(*v52 ^ *v53)) >> 3;
          }

          v135 = v60 + 8;
          v136 = (v22 - v50);
          if (v22 > a4)
          {
            v137 = v22 - 1;
            v138 = (v881 + v32);
            while (*v137 == *v138)
            {
              ++v135;
              v139 = v137 - 1;
              if (v137 > a4)
              {
                --v137;
                v140 = v138-- > v911;
                if (v140)
                {
                  continue;
                }
              }

              goto LABEL_279;
            }

LABEL_282:
            v37 = (v137 + 1);
            goto LABEL_283;
          }

LABEL_280:
          v37 = v22;
          goto LABEL_283;
        }
      }

      if (v33 <= v14)
      {
        v76 = *(v902 + 4 * (v30 >> v884));
        if (v76 <= v904 || (v75 = v910 + v76, *(v910 + v76) != *v22))
        {
LABEL_64:
          _X13 = &v22[(v22 - a4) >> 8];
          v22 = _X13 + 1;
          _X13 += 257;
          __asm { PRFM            #0, [X13] }

          goto LABEL_358;
        }

        LODWORD(v33) = v76 + v909;
      }

      else
      {
        v75 = v8 + v33;
        if (*(v8 + v33) != *v22)
        {
          goto LABEL_64;
        }
      }

      v37 = (v22 + 1);
      v77 = *(v22 + 1);
      v78 = (0xCF1BBCDCB7A56463 * v77) >> v24;
      v79 = *(v6 + 4 * v78);
      *(v6 + 4 * v78) = v34;
      if (v79 <= v14)
      {
        v95 = *(v903 + 4 * ((0xCF1BBCDCB7A56463 * v77) >> v890));
        if (v95 <= v904 || (v96 = v910 + v95, *(v910 + v95) != v77))
        {
LABEL_98:
          v108 = (v22 + 4);
          v109 = (v75 + 4);
          if (v33 >= v14)
          {
            if (v26 <= v108)
            {
              v129 = v22 + 4;
LABEL_134:
              if (v129 < v898 && *v109 == *v129)
              {
                ++v109;
                v129 += 4;
              }

              if (v129 < v894 && *v109 == *v129)
              {
                v109 = (v109 + 2);
                v129 += 2;
              }

              if (v129 < v9 && *v109 == *v129)
              {
                ++v129;
              }

              v134 = v129 - v108;
            }

            else if (*v109 == *v108)
            {
              v128 = 0;
              v109 = (v75 + 12);
              v129 = v22 + 12;
              do
              {
                if (v129 >= v26)
                {
                  goto LABEL_134;
                }

                v131 = *v109;
                v109 += 2;
                v130 = v131;
                v133 = *v129;
                v129 += 8;
                v132 = v133;
                v128 += 8;
              }

              while (v130 == v133);
              v134 = v128 + (__clz(__rbit64(v132 ^ v130)) >> 3);
            }

            else
            {
              v134 = __clz(__rbit64(*v108 ^ *v109)) >> 3;
            }

            v135 = v134 + 4;
            v136 = (v22 - v75);
            if (v22 > a4 && v75 > v51)
            {
              v137 = v22 - 1;
              v141 = (v75 - 1);
              while (*v137 == *v141)
              {
                ++v135;
                v139 = v137 - 1;
                if (v137 > a4)
                {
                  --v137;
                  v140 = v141-- > v51;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_279;
              }

              goto LABEL_282;
            }
          }

          else
          {
            if (&v108[v21 - v109] >= v9)
            {
              v110 = v9;
            }

            else
            {
              v110 = &v108[v21 - v109];
            }

            if (v110 - 7 <= v108)
            {
              v112 = (v75 + 4);
              v113 = v22 + 4;
LABEL_242:
              if (v113 < v110 - 3 && *v112 == *v113)
              {
                ++v112;
                v113 += 4;
              }

              if (v113 < v110 - 1 && *v112 == *v113)
              {
                v112 = (v112 + 2);
                v113 += 2;
              }

              if (v113 < v110 && *v112 == *v113)
              {
                ++v113;
              }

              v118 = v113 - v108;
            }

            else if (*v109 == *v108)
            {
              v111 = 0;
              v112 = (v75 + 12);
              v113 = v22 + 12;
              do
              {
                if (v113 >= v110 - 7)
                {
                  goto LABEL_242;
                }

                v115 = *v112;
                v112 += 2;
                v114 = v115;
                v117 = *v113;
                v113 += 8;
                v116 = v117;
                v111 += 8;
              }

              while (v114 == v117);
              v118 = v111 + (__clz(__rbit64(v116 ^ v114)) >> 3);
            }

            else
            {
              v118 = __clz(__rbit64(*v108 ^ *v109)) >> 3;
            }

            if ((v109 + v118) == v21)
            {
              v171 = &v108[v118];
              if (v26 <= v171)
              {
                v174 = v51;
                v173 = v171;
LABEL_260:
                if (v173 < v898 && *v174 == *v173)
                {
                  ++v174;
                  v173 += 4;
                }

                if (v173 < v894 && *v174 == *v173)
                {
                  v174 = (v174 + 2);
                  v173 += 2;
                }

                if (v173 < v9 && *v174 == *v173)
                {
                  ++v173;
                }

                v179 = v173 - v171;
              }

              else if (*v51 == *v171)
              {
                v172 = 0;
                v173 = &v22[v118 + 12];
                v174 = (v14 + v8 + 8);
                do
                {
                  if (v173 >= v26)
                  {
                    goto LABEL_260;
                  }

                  v176 = *v174;
                  v174 += 2;
                  v175 = v176;
                  v178 = *v173;
                  v173 += 8;
                  v177 = v178;
                  v172 += 8;
                }

                while (v175 == v178);
                v179 = v172 + (__clz(__rbit64(v177 ^ v175)) >> 3);
              }

              else
              {
                v179 = __clz(__rbit64(*v171 ^ *v51)) >> 3;
              }

              v118 += v179;
            }

            v135 = v118 + 4;
            v136 = (v31 - v33);
            if (v22 > a4 && v75 > v888)
            {
              v137 = v22 - 1;
              v180 = (v75 - 1);
              while (*v137 == *v180)
              {
                ++v135;
                v139 = v137 - 1;
                if (v137 > a4)
                {
                  --v137;
                  v140 = v180-- > v888;
                  if (v140)
                  {
                    continue;
                  }
                }

                goto LABEL_279;
              }

              goto LABEL_282;
            }
          }

          goto LABEL_280;
        }

        v97 = (v22 + 9);
        v98 = (v96 + 8);
        if (&v21[(v22 + 9) - 8 - v96] >= v9)
        {
          v99 = v9;
        }

        else
        {
          v99 = &v21[(v22 + 9) - 8 - v96];
        }

        if (v99 - 7 <= v97)
        {
          v101 = (v96 + 8);
          v102 = v22 + 9;
LABEL_360:
          if (v102 < v99 - 3 && *v101 == *v102)
          {
            ++v101;
            ++v102;
          }

          if (v102 < v99 - 1 && *v101 == *v102)
          {
            v101 = (v101 + 2);
            v102 = (v102 + 2);
          }

          if (v102 < v99 && *v101 == *v102)
          {
            v102 = (v102 + 1);
          }

          v107 = v102 - v97;
        }

        else if (*v98 == *v97)
        {
          v100 = 0;
          v101 = (v868 + v95);
          v102 = v22 + 17;
          do
          {
            if (v102 >= v99 - 7)
            {
              goto LABEL_360;
            }

            v104 = *v101;
            v101 += 2;
            v103 = v104;
            v106 = *v102;
            v102 += 2;
            v105 = v106;
            v100 += 8;
          }

          while (v103 == v106);
          v107 = v100 + (__clz(__rbit64(v105 ^ v103)) >> 3);
        }

        else
        {
          v107 = __clz(__rbit64(*v97 ^ *v98)) >> 3;
        }

        if ((v98 + v107) == v21)
        {
          v225 = &v97[v107];
          if (v26 <= v225)
          {
            v228 = v51;
            v227 = v225;
LABEL_379:
            if (v227 < v898 && *v228 == *v227)
            {
              ++v228;
              v227 += 4;
            }

            if (v227 < v894 && *v228 == *v227)
            {
              v228 = (v228 + 2);
              v227 += 2;
            }

            if (v227 < v9 && *v228 == *v227)
            {
              ++v227;
            }

            v233 = v227 - v225;
          }

          else if (*v51 == *v225)
          {
            v226 = 0;
            v227 = &v22[v107 + 17];
            v228 = (v14 + v8 + 8);
            do
            {
              if (v227 >= v26)
              {
                goto LABEL_379;
              }

              v230 = *v228;
              v228 += 2;
              v229 = v230;
              v232 = *v227;
              v227 += 8;
              v231 = v232;
              v226 += 8;
            }

            while (v229 == v232);
            v233 = v226 + (__clz(__rbit64(v231 ^ v229)) >> 3);
          }

          else
          {
            v233 = __clz(__rbit64(*v225 ^ *v51)) >> 3;
          }

          v107 += v233;
        }

        v135 = v107 + 8;
        v136 = v34 - (v909 + v95);
        if (v37 > a4)
        {
          v234 = (v876 + v95);
          do
          {
            if (*v22 != *v234)
            {
              goto LABEL_396;
            }

            ++v135;
            v169 = v22 - 1;
            if (v22 <= a4)
            {
              break;
            }

            --v22;
            v140 = v234-- > v888;
          }

          while (v140);
LABEL_395:
          v37 = (v169 + 1);
        }
      }

      else
      {
        v80 = v8 + v79;
        if (*(v8 + v79) != v77)
        {
          goto LABEL_98;
        }

        v81 = (v22 + 9);
        v82 = (v80 + 8);
        if (v26 <= (v22 + 9))
        {
          v84 = v22 + 9;
LABEL_147:
          if (v84 < v898 && *v82 == *v84)
          {
            ++v82;
            v84 += 4;
          }

          if (v84 < v894 && *v82 == *v84)
          {
            v82 = (v82 + 2);
            v84 += 2;
          }

          if (v84 < v9 && *v82 == *v84)
          {
            ++v84;
          }

          v89 = v84 - v81;
        }

        else if (*v82 == *v81)
        {
          v83 = 0;
          v82 = (v872 + v79);
          v84 = v22 + 17;
          do
          {
            if (v84 >= v26)
            {
              goto LABEL_147;
            }

            v86 = *v82;
            v82 += 2;
            v85 = v86;
            v88 = *v84;
            v84 += 8;
            v87 = v88;
            v83 += 8;
          }

          while (v85 == v88);
          v89 = v83 + (__clz(__rbit64(v87 ^ v85)) >> 3);
        }

        else
        {
          v89 = __clz(__rbit64(*v81 ^ *v82)) >> 3;
        }

        v135 = v89 + 8;
        v136 = (v37 - v80);
        if (v37 > a4)
        {
          v168 = (v881 + v79);
          while (*v22 == *v168)
          {
            ++v135;
            v169 = v22 - 1;
            if (v22 > a4)
            {
              --v22;
              v140 = v168-- > v51;
              if (v140)
              {
                continue;
              }
            }

            goto LABEL_395;
          }

LABEL_396:
          v37 = (v22 + 1);
        }
      }

LABEL_283:
      v181 = v37 - a4;
      v182 = *(a2 + 24);
      if (v37 <= v27)
      {
        *v182 = *a4;
        v186 = *(a2 + 24);
        if (v181 <= 0x10)
        {
          *(a2 + 24) = v186 + v181;
          v165 = *(a2 + 8);
          goto LABEL_297;
        }

        v187 = (v186 + 16);
        v188 = v186 + v181;
        v189 = a4 + 16;
        do
        {
          v190 = *v189;
          v189 += 16;
          *v187++ = v190;
        }

        while (v187 < v188);
      }

      else
      {
        if (a4 <= v27)
        {
          v183 = (v182 + v27 - a4);
          do
          {
            v184 = *a4;
            a4 += 16;
            *v182++ = v184;
          }

          while (v182 < v183);
          a4 = v9 - 32;
          v182 = v183;
        }

        while (a4 < v37)
        {
          v185 = *a4++;
          *v182 = v185;
          v182 = (v182 + 1);
        }
      }

      *(a2 + 24) += v181;
      v165 = *(a2 + 8);
      if (v181 >= 0x10000)
      {
        v191 = (v165 - *a2) >> 3;
        *(a2 + 72) = 1;
        *(a2 + 76) = v191;
      }

LABEL_297:
      *(v165 + 4) = v181;
      *v165 = v136 + 3;
      v167 = v135 - 3;
      v18 = v17;
      v17 = v136;
      if (v135 - 3 >= 0x10000)
      {
        goto LABEL_298;
      }

LABEL_299:
      *(v165 + 6) = v167;
      v193 = v165 + 8;
      *(a2 + 8) = v165 + 8;
      a4 = (v37 + v135);
      if (v37 + v135 > v16)
      {
        goto LABEL_357;
      }

      v194 = *(v8 + (v31 + 2));
      *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v194) >> v24)) = v31 + 2;
      *(v6 + 4 * ((0xCF1BBCDCB7A56463 * *(a4 - 2)) >> v24)) = a4 - 2 - v8;
      *(v7 + 4 * ((0xCF1BBCDCBFA56300 * v194) >> v25)) = v31 + 2;
      *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *(a4 - 1)) >> v25)) = a4 - 1 - v8;
      v195 = v17;
      v196 = v18;
      while (1)
      {
        v17 = v196;
        v196 = v195;
        v197 = a4 - v8;
        v198 = (a4 - v8 - v17);
        v199 = v198 >= v14 ? v8 : v910 - v909;
        if ((v906 - v198) < 3)
        {
          break;
        }

        v200 = v199 + v198;
        if (*(v199 + v198) != *a4)
        {
          break;
        }

        if (v198 >= v14)
        {
          v201 = v9;
        }

        else
        {
          v201 = v21;
        }

        v202 = a4 + 4;
        v203 = (v200 + 4);
        v204 = &v201[a4 - v200];
        if (v204 >= v9)
        {
          v205 = v9;
        }

        else
        {
          v205 = v204;
        }

        if (v205 - 7 <= v202)
        {
          v207 = v203;
          v208 = a4 + 4;
        }

        else
        {
          if (*v203 != *v202)
          {
            v213 = __clz(__rbit64(*v202 ^ *v203)) >> 3;
            goto LABEL_330;
          }

          v206 = 0;
          v207 = (v199 + v198 + 12);
          v208 = a4 + 12;
          while (v208 < v205 - 7)
          {
            v210 = *v207;
            v207 += 4;
            v209 = v210;
            v212 = *v208;
            v208 += 8;
            v211 = v212;
            v206 += 8;
            if (v209 != v212)
            {
              v213 = v206 + (__clz(__rbit64(v211 ^ v209)) >> 3);
              goto LABEL_330;
            }
          }
        }

        if (v208 < v205 - 3 && *v207 == *v208)
        {
          v207 += 2;
          v208 += 4;
        }

        if (v208 < v205 - 1 && *v207 == *v208)
        {
          ++v207;
          v208 += 2;
        }

        if (v208 < v205 && *v207 == *v208)
        {
          ++v208;
        }

        v213 = v208 - v202;
LABEL_330:
        if ((v203 + v213) == v201)
        {
          v214 = &v202[v213];
          if (v26 > v214)
          {
            if (*v51 == *v214)
            {
              v215 = 0;
              v216 = &a4[v213 + 12];
              v217 = (v14 + v8 + 8);
              while (v216 < v26)
              {
                v219 = *v217;
                v217 += 4;
                v218 = v219;
                v221 = *v216;
                v216 += 8;
                v220 = v221;
                v215 += 8;
                if (v218 != v221)
                {
                  v222 = v215 + (__clz(__rbit64(v220 ^ v218)) >> 3);
                  goto LABEL_349;
                }
              }

LABEL_339:
              if (v216 < v898 && *v217 == *v216)
              {
                v217 += 2;
                v216 += 4;
              }

              if (v216 < v894 && *v217 == *v216)
              {
                ++v217;
                v216 += 2;
              }

              if (v216 < v9 && *v217 == *v216)
              {
                ++v216;
              }

              v222 = v216 - v214;
            }

            else
            {
              v222 = __clz(__rbit64(*v214 ^ *v51)) >> 3;
            }

LABEL_349:
            v213 += v222;
            goto LABEL_350;
          }

          v217 = v51;
          v216 = v214;
          goto LABEL_339;
        }

LABEL_350:
        if (a4 <= v27)
        {
          **(a2 + 24) = *a4;
          v193 = *(a2 + 8);
        }

        *(v193 + 4) = 0;
        *v193 = 1;
        if (v213 + 1 >= 0x10000)
        {
          v223 = (v193 - *a2) >> 3;
          *(a2 + 72) = 2;
          *(a2 + 76) = v223;
        }

        *(v193 + 6) = v213 + 1;
        v193 += 8;
        v224 = *a4;
        *(v7 + 4 * ((0xCF1BBCDCBFA56300 * *a4) >> v25)) = v197;
        *(v6 + 4 * ((0xCF1BBCDCB7A56463 * v224) >> v24)) = v197;
        a4 += v213 + 4;
        *(a2 + 8) = v193;
        v195 = v17;
        v18 = v196;
        v22 = a4;
        if (a4 > v16)
        {
          goto LABEL_358;
        }
      }

      v18 = v17;
      v17 = v196;
LABEL_357:
      v22 = a4;
LABEL_358:
      if (v22 >= v16)
      {
LABEL_1549:
        a3 = v880;
        break;
      }
    }
  }

LABEL_1550:
  *a3 = v17;
  a3[1] = v18;
  return v9 - a4;
}