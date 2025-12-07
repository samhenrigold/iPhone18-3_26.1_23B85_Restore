uint64_t unlockedSinceBoot()
{
  v0 = atomic_load(unlockedSinceBoot_haveSeenUnlocked);
  if (v0)
  {
    return 1;
  }

  result = MKBDeviceUnlockedSinceBoot();
  if (result != 1)
  {
    return 0;
  }

  atomic_store(1u, unlockedSinceBoot_haveSeenUnlocked);
  return result;
}

uint64_t deviceLockState()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = MKBGetDeviceLockState();
  if (v0 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v2[0] = 67109120;
      v2[1] = v0;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "AKS: Error: Locked: %u", v2, 8u);
    }

    return 1;
  }

  return v0;
}

uint64_t registerForAKSEvents(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __registerForAKSEvents_block_invoke;
  v10 = &unk_1E77F2360;
  v3 = v2;
  v11 = v3;
  v4 = AKSEventsRegister();
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed register: AKSEventsRegister", v6, 2u);
  }

  return v4;
}

void unregisterForAKSEvents(uint64_t a1)
{
  if (a1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __unregisterForAKSEvents_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v2, block);
  }
}

__CFString *_PASJoinStrings(void *a1, void *a2)
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (!v5)
  {
    v11 = &stru_1F1B24B60;
    goto LABEL_76;
  }

  v6 = v5;
  v7 = v5 - 1;
  if (v5 != 1)
  {
    v83 = objc_autoreleasePoolPush();
    v13 = [v4 length];
    v14 = v13 * v7;
    v88 = v13;
    v84 = v4;
    if (v13)
    {
      v15 = [v4 canBeConvertedToEncoding:1];
    }

    else
    {
      v4 = 0;
      v15 = 1;
    }

    v16 = v4;
    v17 = 0;
    for (i = 0; i != v6; ++i)
    {
      v19 = [v3 objectAtIndexedSubscript:i];
      v20 = [v19 description];
      if (v20 != v19)
      {
        if (!v17)
        {
          v17 = [v3 mutableCopy];
        }

        [v17 setObject:v20 atIndexedSubscript:i];
      }

      v21 = [v20 length];
      if (v21)
      {
        v22 = v21;
        if (!v16)
        {
          v16 = v20;
        }

        v14 += v22;
        if (v15)
        {
          v15 = [v20 canBeConvertedToEncoding:1];
        }

        else
        {
          v15 = 0;
        }
      }
    }

    if (!v14)
    {
      v11 = &stru_1F1B24B60;
LABEL_73:
      v4 = v84;
      goto LABEL_74;
    }

    v4 = v84;
    if (v14 == [v16 length])
    {
      v11 = [v16 copy];
LABEL_74:

      v12 = v83;
      goto LABEL_75;
    }

    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = v3;
    }

    v24 = v23;
    v87 = v24;
    if (v15)
    {
      memptr = 0;
      v90 = 0;
      v25 = v88;
      v85 = v14 + 1;
      if (v14 + 1 <= 0x400)
      {
        MEMORY[0x1EEE9AC00](v24);
        v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v27, v26);
        memptr = v27;
        LOBYTE(v90) = 1;
        goto LABEL_30;
      }

      v77 = malloc_type_posix_memalign(&memptr, 8uLL, v14 + 1, 0x9A775E0EuLL);
      LOBYTE(v90) = 0;
      if (!v77)
      {
        v25 = v88;
        v27 = memptr;
LABEL_30:
        v28 = v90;
        v29 = [v87 objectAtIndexedSubscript:0];
        v30 = [v29 length];
        v31 = v29;
        v32 = v31;
        v86 = v30;
        if (v30)
        {
          CStringPtr = CFStringGetCStringPtr(v31, 0x600u);
          if (v86 > v14)
          {
            goto LABEL_79;
          }

          v34.location = CStringPtr;
          if (CStringPtr)
          {
            memcpy(v27, CStringPtr, v30);
          }

          else
          {
            v34.length = v30;
            CFStringGetBytes(v32, v34, 0x600u, 0, 0, v27, v30, 0);
          }
        }

        v82 = v32;

        v45 = v84;
        v46 = v45;
        if (!v25)
        {
          goto LABEL_51;
        }

        v47 = CFStringGetCStringPtr(v45, 0x600u);
        v30 = &v86[v25];
        if (&v86[v25] <= v14)
        {
          v48.location = v47;
          if (v47)
          {
            memcpy(&v86[v27], v47, v25);
          }

          else
          {
            v48.length = v25;
            CFStringGetBytes(v46, v48, 0x600u, 0, 0, &v86[v27], v25, 0);
          }

LABEL_51:
          v81 = v28;

          v53 = 1;
          while (1)
          {
            v54 = [v87 objectAtIndexedSubscript:v53];
            v55 = [v54 length];
            v56 = v54;
            v57 = v56;
            if (v55)
            {
              v58 = CFStringGetCStringPtr(v56, 0x600u);
              v59 = &v30[v55];
              if (&v30[v55] > v14)
              {
                goto LABEL_79;
              }

              v60.location = v58;
              if (v58)
              {
                memcpy(&v30[v27], v58, v55);
              }

              else
              {
                v60.length = v55;
                CFStringGetBytes(v57, v60, 0x600u, 0, 0, &v30[v27], v55, 0);
              }
            }

            else
            {
              v59 = v30;
            }

            v61 = v88;
            if (v59 == v14)
            {
              break;
            }

            ++v53;
            memcpy(&v59[v27], &v86[v27], v88);
            v30 = &v59[v61];
          }

          v27[v14] = 0;
          v62 = MEMORY[0x1E696AEC0];
          v63 = v27;
          v64 = v81;
          v65 = v85;
          v66 = 1;
          v67 = 1;
LABEL_72:
          v11 = [v62 _pas_stringWithConsumedAllocaDescrNoCopy:v63 bufferSize:v64 encoding:v65 nullTerminated:v66 isExternalRepresentation:{v67, 0}];

          goto LABEL_73;
        }

LABEL_79:
        __assert_rtn("appendASCII", "_PASStringUtil.m", 362, "*destCursor + len <= destLen");
      }

LABEL_85:
      v79 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v79);
    }

    memptr = 0;
    v90 = 0;
    v35 = v88;
    v81 = 2 * v14;
    if (((2 * v14) | 1) > 0x400)
    {
      v78 = malloc_type_posix_memalign(&memptr, 8uLL, 2 * v14, 0x958294E9uLL);
      LOBYTE(v90) = 0;
      if (v78)
      {
        goto LABEL_85;
      }

      v35 = v88;
      v37 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v24);
      v37 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v37, v36);
      memptr = v37;
      LOBYTE(v90) = 1;
    }

    v38 = v90;
    v39 = [v87 objectAtIndexedSubscript:0];
    v40 = [v39 length];
    v41 = v39;
    v42 = v41;
    if (v40)
    {
      CharactersPtr = CFStringGetCharactersPtr(v41);
      if (v40 > v14)
      {
        goto LABEL_80;
      }

      v44.location = CharactersPtr;
      if (CharactersPtr)
      {
        memcpy(v37, CharactersPtr, 2 * v40);
      }

      else
      {
        v44.length = v40;
        CFStringGetCharacters(v42, v44, v37);
      }
    }

    v82 = v42;

    v49 = v84;
    v50 = v49;
    v85 = 2 * v35;
    v86 = &v37[2 * v40];
    if (!v35)
    {
      goto LABEL_62;
    }

    v51 = CFStringGetCharactersPtr(v49);
    v40 += v35;
    if (v40 <= v14)
    {
      v52.location = v51;
      if (v51)
      {
        memcpy(v86, v51, v85);
      }

      else
      {
        v52.length = v35;
        CFStringGetCharacters(v50, v52, v86);
      }

LABEL_62:
      v80 = v38;

      v68 = 1;
      while (1)
      {
        v69 = [v87 objectAtIndexedSubscript:v68];
        v70 = [v69 length];
        v71 = v69;
        v72 = v71;
        if (v70)
        {
          v73 = CFStringGetCharactersPtr(v71);
          v74 = v70 + v40;
          if (v70 + v40 > v14)
          {
            goto LABEL_80;
          }

          v75.location = v73;
          if (v73)
          {
            memcpy(&v37[2 * v40], v73, 2 * v70);
          }

          else
          {
            v75.length = v70;
            CFStringGetCharacters(v72, v75, &v37[2 * v40]);
          }
        }

        else
        {
          v74 = v40;
        }

        if (v74 == v14)
        {
          break;
        }

        ++v68;
        memcpy(&v37[2 * v74], v86, v85);
        v40 = v74 + v88;
      }

      v62 = MEMORY[0x1E696AEC0];
      v63 = v37;
      v64 = v80;
      v65 = v81;
      v66 = 2483028224;
      v67 = 0;
      goto LABEL_72;
    }

LABEL_80:
    __assert_rtn("appendUnicode", "_PASStringUtil.m", 380, "*destCursor + len <= destLen");
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [v3 objectAtIndexedSubscript:0];
  v10 = [v9 description];
  v11 = [v10 copy];

  v12 = v8;
LABEL_75:
  objc_autoreleasePoolPop(v12);
LABEL_76:

  return v11;
}

void sub_1A7F4A290(void *a1)
{
  objc_begin_catch(a1);
  pthread_mutex_unlock((v1 + 16));
  objc_exception_rethrow();
}

void **_PASCompactStringArrayDestroy(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2)
    {
      v1[1] = v2;
      operator delete(v2);
    }

    JUMPOUT(0x1AC566470);
  }

  return result;
}

uint64_t _indexForBindParam(sqlite3_stmt *a1, char *zName)
{
  if (a1)
  {
    if (zName)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v6 handleFailureInFunction:v7 file:@"_PASSqliteStatement.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];

    if (zName)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
  [v8 handleFailureInFunction:v9 file:@"_PASSqliteStatement.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v4 = sqlite3_bind_parameter_index(a1, zName);
  if (v4 <= 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _indexForBindParam(sqlite3_stmt *, const char *)"}];
    [v10 handleFailureInFunction:v11 file:@"_PASSqliteStatement.m" lineNumber:255 description:{@"Unknown bind parameter %s", zName}];
  }

  return v4;
}

uint64_t _PAS_sqlite3_bind_nsstring(sqlite3_stmt *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (!v5)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _PAS_sqlite3_bind_nsstring(sqlite3_stmt * _Nonnull, int, NSString * _Nonnull __strong)"}];
    [v24 handleFailureInFunction:v25 file:@"_PASSqliteDatabase.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"str != nil"}];
  }

  v38 = 0;
  v6 = [v5 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v38];
  if (!v6)
  {
    v14 = [v5 _fastCharacterContents];
    if (v14)
    {
      v15 = v14;
      v9 = [v5 lengthOfBytesUsingEncoding:10];
      v10 = a1;
      v11 = v3;
      v12 = v15;
      v13 = -1;
LABEL_8:
      v16 = 4;
LABEL_18:
      v17 = sqlite3_bind_text64(v10, v11, v12, v9, v13, v16);
      goto LABEL_19;
    }

    v38 = [v5 lengthOfBytesUsingEncoding:4];
    if (v38)
    {
      v18 = [v5 length];
      if (!v18)
      {
        __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 128, "length > 0");
      }

      v19 = v18;
      v20 = sqlite3_malloc64(v38);
      if (v20)
      {
        v21 = v20;
        v31 = 0;
        v32 = 0;
        [v5 getBytes:v20 maxLength:v38 usedLength:0 encoding:4 options:0 range:0 remainingRange:{v19, &v31}];
        if (v32)
        {
          __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 133, "remainingRange.length == 0");
        }

        v9 = v38;
        v13 = MEMORY[0x1E69E59A0];
        v10 = a1;
        v11 = v3;
        v12 = v21;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = [v5 lengthOfBytesUsingEncoding:10];
      if (!v26)
      {
        __assert_rtn("_PAS_sqlite3_bind_nsstring", "_PASSqliteDatabase.m", 114, "utf16Size != 0");
      }

      v27 = v26;
      v28 = sqlite3_malloc64(v26);
      if (v28)
      {
        v29 = v28;
        [v5 getCharacters:v28];
        v13 = MEMORY[0x1E69E59A0];
        v10 = a1;
        v11 = v3;
        v12 = v29;
        v9 = v27;
        goto LABEL_8;
      }
    }

    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v30);
  }

  v7 = v6;
  v8 = _NSIsNSCFConstantString();
  v9 = v38;
  if (v8)
  {
    v10 = a1;
    v11 = v3;
    v12 = v7;
    v13 = 0;
LABEL_17:
    v16 = 1;
    goto LABEL_18;
  }

  if (v38 - 17 > 0x7FFFFFED)
  {
    v10 = a1;
    v11 = v3;
    v12 = v7;
    v13 = -1;
    goto LABEL_17;
  }

  CFRetain(v5);
  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = ___PAS_sqlite3_bind_nsstring_block_invoke;
  v36 = &__block_descriptor_40_e9_v16__0_v8l;
  v37 = v5;
  v17 = sqlite3_bind_text_b();
LABEL_19:
  v22 = v17;

  return v22;
}

void sub_1A7F4B000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_PASFullwidthLatinToHalfwidth(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (!v2)
  {
    goto LABEL_28;
  }

  v3 = v2;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  theString = v1;
  v50 = 0;
  v51 = v2;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v48 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v52 = 0;
  v53 = 0;
  v49 = CStringPtr;
  if (v3 < 1)
  {
LABEL_28:
    v19 = v1;
    goto LABEL_29;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 64;
  while (1)
  {
    if (v8 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v8;
    }

    v11 = v51;
    if (v51 <= v8)
    {
      goto LABEL_16;
    }

    if (v48)
    {
      v12 = &v48[v50];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }

    if (!v49)
    {
      if (v53 <= v8 || v7 > v8)
      {
        v15 = v10 + v6;
        v16 = v9 - v10;
        v17 = v8 - v10;
        v18 = v17 + 64;
        if (v17 + 64 >= v51)
        {
          v18 = v51;
        }

        v52 = v17;
        v53 = v18;
        if (v51 >= v16)
        {
          v11 = v16;
        }

        v55.location = v17 + v50;
        v55.length = v11 + v15;
        CFStringGetCharacters(theString, v55, &v39);
        v7 = v52;
      }

      v12 = &v39 - v7;
      goto LABEL_12;
    }

    v13 = v49[v50 + v8];
LABEL_15:
    if ((v13 + 255) < 0x5Eu)
    {
      break;
    }

LABEL_16:
    ++v8;
    --v6;
    ++v9;
    if (v3 == v8)
    {
      goto LABEL_28;
    }
  }

  v22 = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  if (!v22)
  {
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:{0, v39, v40, v41, v42, v43, v44, v45, v46}];
    objc_exception_throw(v38);
  }

  v23 = v22;
  v24 = 0;
  v25 = 0;
  v26 = 64;
  while (2)
  {
    if (v25 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v25;
    }

    v28 = v51;
    if (v51 <= v25)
    {
      v30 = 0;
    }

    else
    {
      if (v48)
      {
        v29 = &v48[v50];
        goto LABEL_40;
      }

      if (v49)
      {
        v30 = v49[v50 + v25];
      }

      else
      {
        v31 = v52;
        if (v53 <= v25 || v52 > v25)
        {
          v33 = v27 + v24;
          v34 = v26 - v27;
          v35 = v25 - v27;
          v36 = v35 + 64;
          if (v35 + 64 >= v51)
          {
            v36 = v51;
          }

          v52 = v35;
          v53 = v36;
          if (v51 >= v34)
          {
            v28 = v34;
          }

          v56.location = v35 + v50;
          v56.length = v28 + v33;
          CFStringGetCharacters(theString, v56, &v39);
          v31 = v52;
        }

        v29 = &v39 - v31;
LABEL_40:
        v30 = v29[v25];
      }
    }

    if ((v30 + 255) < 0x5Eu)
    {
      v30 += 288;
    }

    v23[v25++] = v30;
    --v24;
    ++v26;
    if (v3 != v25)
    {
      continue;
    }

    break;
  }

  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = [v37 initWithCharactersNoCopy:v23 length:v3 freeWhenDone:{1, v39, v40, v41, v42, v43, v44, v45, v46}];
LABEL_29:
  v20 = v19;

  return v20;
}

__CFString *_PASTryToConvertPhoneNumberToASCII(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  if (!v2)
  {
    goto LABEL_50;
  }

  v3 = v2;
  FastestEncoding = CFStringGetFastestEncoding(v1);
  if (FastestEncoding == 1536)
  {
    goto LABEL_50;
  }

  if (v3 > 0x1FF)
  {
    v5 = malloc_type_malloc(v3, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](FastestEncoding);
    v5 = buffer - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v3);
  }

  v6 = v1;
  v7 = objc_opt_self();

  if (!v7)
  {

    v11 = v5;
    goto LABEL_47;
  }

  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(v6);
  v28 = v6;
  v31 = 0;
  v32 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v33 = 0;
  v34 = 0;
  v11 = v5;
  v30 = CStringPtr;
  if (Length < 1)
  {
LABEL_45:

LABEL_47:
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v5 length:v11 - v5 encoding:1];
    goto LABEL_48;
  }

  v12 = 0;
  v13 = 0;
  v14 = 64;
  v11 = v5;
  while (1)
  {
    if (v13 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v13;
    }

    v16 = v32;
    if (v32 <= v13)
    {
      LOBYTE(v18) = 0;
      goto LABEL_19;
    }

    if (v29)
    {
      v17 = &v29[v31];
LABEL_17:
      v18 = v17[v13];
      goto LABEL_22;
    }

    if (!v30)
    {
      v19 = v33;
      if (v34 <= v13 || v33 > v13)
      {
        v21 = v15 + v12;
        v22 = v14 - v15;
        v23 = v13 - v15;
        v24 = v23 + 64;
        if (v23 + 64 >= v32)
        {
          v24 = v32;
        }

        v33 = v23;
        v34 = v24;
        if (v32 >= v22)
        {
          v16 = v22;
        }

        v36.location = v23 + v31;
        v36.length = v16 + v21;
        CFStringGetCharacters(v28, v36, buffer);
        v19 = v33;
      }

      v17 = buffer - v19;
      goto LABEL_17;
    }

    v18 = v30[v31 + v13];
LABEL_22:
    if (v18 > 0x2029u)
    {
      break;
    }

    if (v18 == 160)
    {
      goto LABEL_30;
    }

    if (v18 != 8211)
    {
      goto LABEL_41;
    }

    LOBYTE(v18) = 45;
LABEL_19:
    *v11++ = v18;
LABEL_24:
    ++v13;
    --v12;
    ++v14;
    if (Length == v13)
    {
      goto LABEL_45;
    }
  }

  if (v18 - 8234 < 5)
  {
    goto LABEL_24;
  }

  if (v18 == 12288)
  {
LABEL_30:
    LOBYTE(v18) = 32;
    goto LABEL_19;
  }

LABEL_41:
  if (v18 - 65281 < 0x5E)
  {
    LOBYTE(v18) = v18 + 32;
    goto LABEL_19;
  }

  if (v18 < 0x80u)
  {
    goto LABEL_19;
  }

  v1 = v6;
LABEL_48:

  if (v3 >= 0x200)
  {
    free(v5);
  }

LABEL_50:
  v25 = v1;

  return v1;
}

id _PASKeepOnlyCharacterSet(void *a1, const __CFCharacterSet *a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
    v7 = v3;
    v8 = objc_opt_self();

    if (v8)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *buffer = 0u;
      v31 = 0u;
      Length = CFStringGetLength(v7);
      theString = v7;
      v41 = 0;
      v42 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v7);
      CStringPtr = 0;
      v39 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
      }

      v29 = v3;
      v43 = 0;
      v44 = 0;
      v40 = CStringPtr;
      if (Length >= 1)
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 64;
        while (1)
        {
          if (v13 >= 4)
          {
            v16 = 4;
          }

          else
          {
            v16 = v13;
          }

          v17 = v42;
          if (v42 <= v13)
          {
            v19 = 0;
          }

          else
          {
            if (v39)
            {
              v18 = &v39[v41];
            }

            else
            {
              if (v40)
              {
                v19 = v40[v41 + v13];
                goto LABEL_15;
              }

              v20 = v43;
              if (v44 <= v13 || v43 > v13)
              {
                v22 = v16 + v12;
                v23 = v15 - v16;
                v24 = v13 - v16;
                v25 = v24 + 64;
                if (v24 + 64 >= v42)
                {
                  v25 = v42;
                }

                v43 = v24;
                v44 = v25;
                if (v42 >= v23)
                {
                  v17 = v23;
                }

                v46.location = v24 + v41;
                v46.length = v17 + v22;
                CFStringGetCharacters(theString, v46, buffer);
                v20 = v43;
              }

              v18 = &buffer[-v20];
            }

            v19 = v18[v13];
          }

LABEL_15:
          if (CFCharacterSetIsCharacterMember(a2, v19))
          {
            v6[v14++] = v19;
          }

          ++v13;
          --v12;
          ++v15;
          if (Length == v13)
          {
            goto LABEL_34;
          }
        }
      }

      v14 = 0;
LABEL_34:
      v3 = v29;
    }

    else
    {
      v14 = 0;
    }

    if (v14 == v5)
    {
      free(v6);
      v26 = [(__CFString *)v7 copy];
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharactersNoCopy:v6 length:v14 freeWhenDone:1];
    }
  }

  else
  {
    v26 = v3;
  }

  v27 = v26;

  return v27;
}

uint64_t _PAS_sqlite3_bind_nsdata(sqlite3_stmt *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _PAS_sqlite3_bind_nsdata(sqlite3_stmt * _Nonnull, int, NSData *__strong _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"_PASSqliteDatabase.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"data != nil"}];
  }

  v6 = [v5 _pas_dataWithNonnullBytes];

  v7 = [v6 length];
  if (v7 - 17 > 0x7FFFFFED)
  {
    BytePtr = CFDataGetBytePtr(v6);
    v8 = sqlite3_bind_blob64(a1, v3, BytePtr, v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    CFRetain(v6);
    CFDataGetBytePtr(v6);
    v8 = sqlite3_bind_blob_b();
  }

  v10 = v8;

  return v10;
}

id _PAS_sqlite3_column_nsdata(sqlite3_stmt *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3437;
  v9 = __Block_byref_object_dispose__3438;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PAS_sqlite3_column_nsdata_block_invoke;
  v4[3] = &unk_1E77F2540;
  v4[4] = &v5;
  _PAS_sqlite3_column_blob_bytes_block(a1, a2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A7F4C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PAS_sqlite3_column_blob_bytes_block(sqlite3_stmt *a1, int a2, void *a3)
{
  v8 = a3;
  v5 = sqlite3_column_bytes(a1, a2);
  if (v5 >= 1)
  {
    BytePtr = sqlite3_column_blob(a1, a2);
LABEL_5:
    v7 = BytePtr;
    goto LABEL_6;
  }

  if (sqlite3_column_type(a1, a2) == 4)
  {
    BytePtr = CFDataGetBytePtr(&unk_1EE71B5D8);
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v8[2](v8, v7, v5);
}

uint64_t xBestIndex(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = objc_opt_self();
  v5 = [v3 isSubclassOfClass:v4];

  if ((v5 & 1) == 0)
  {
    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
    [v60 handleFailureInFunction:v61 file:@"_PASSqliteCollections.m" lineNumber:1391 description:{@"Invalid parameter not satisfying: %@", @"[cursorClass isSubclassOfClass:[_PASSqliteCollectionsCursor self]]"}];
  }

  v6 = [v3 hasKey];
  if (v6)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v69 = v3;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Beginning xBestIndex for %@", buf, 0xCu);
  }

  *(a2 + 40) = 0;
  if (*a2 < 1)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = v6 - 1;
  v10 = (*(a2 + 8) + 5);
  v11 = 1;
  v12 = *a2;
  v13 = 1;
  while (*(v10 - 1) != 2 || *(v10 - 5) != v7 || !*v10)
  {
    v13 = v11 < *a2;
    v8 += 8;
    ++v11;
    v10 += 12;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v15 = *(a2 + 32) + v8;
  *v15 = 1;
  *(v15 + 4) = 1;
  if (!v13)
  {
LABEL_14:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v69 = v3;
      _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Ending xBestIndex for %@: pointer constraint missing", buf, 0xCu);
    }

    return 0;
  }

  [v3 baseEstimatedRows];
  v17 = v16;
  [v3 baseEstimatedCost];
  v19 = v18;
  v67 = objc_opt_new();
  v20 = *a2;
  if (*a2 >= 1)
  {
    v21 = 0;
    v22 = *(a2 + 8);
    v23 = @"rowId";
    if (v6)
    {
      v23 = @"key";
    }

    v65 = v23;
    v24 = -8;
    v25 = 1;
    v66 = v3;
    do
    {
      if (*(v22 + 5))
      {
        v26 = *v22;
        v27 = *v22 == v9 || v26 == v6;
        if (v27)
        {
          v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
          if (v26 == v6)
          {
            if (v28)
            {
              v45 = *(v22 + 4);
              *buf = 67109378;
              *v69 = v45;
              *&v69[4] = 2112;
              *&v69[6] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Considering value->%hhu for %@", buf, 0x12u);
            }

            v29 = [v3 planningInfoForValueConstraint:*(v22 + 4)];
          }

          else
          {
            if (v28)
            {
              v46 = *(v22 + 4);
              *buf = 138412802;
              *v69 = v65;
              *&v69[8] = 1024;
              *&v69[10] = v46;
              *&v69[14] = 2112;
              *&v69[16] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Considering %@->%hhu for %@", buf, 0x1Cu);
            }

            v32 = *(v22 + 4);
            if (v6)
            {
              [v3 planningInfoForKeyConstraint:v32];
            }

            else
            {
              [v3 planningInfoForRowIdConstraint:v32];
            }
            v29 = ;
          }

          v30 = v29;
          if (v29)
          {
            v33 = *(v29 + 9);
            v34 = *(v29 + 8);
            v35 = *(a2 + 8) + 12 * v21;
            v36 = *v35;
            v37 = *(v35 + 4);
            v27 = v36 == v6 - 1;
            v38 = 118;
            if (v27)
            {
              v38 = 107;
            }

            [v67 appendFormat:@"%c%03d", v38, v37];
            v39 = *(a2 + 32);
            v40 = v39 + 8 * v21;
            *v40 = 2;
            if (v21)
            {
              v41 = (v39 + v24);
              v42 = v25;
              while (--v42 >= 1)
              {
                v44 = *v41;
                v41 -= 2;
                v43 = v44;
                if (v44 >= 2)
                {
                  *v40 = v43 + 1;
                  break;
                }
              }
            }

            if (v33)
            {
              *(v40 + 4) = 1;
            }

            if (v34)
            {
              *(a2 + 80) |= 1u;
            }

            v17 = v17 * v30[2];
            v19 = v19 * v30[3];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218498;
              *v69 = v19;
              *&v69[8] = 2048;
              *&v69[10] = v17;
              *&v69[18] = 2112;
              v3 = v66;
              *&v69[20] = v66;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Estimated cost now %f, estimated rows now %f for %@", buf, 0x20u);
            }

            else
            {
              v3 = v66;
            }
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v47 = *(v22 + 4);
              *buf = 67109378;
              *v69 = v47;
              *&v69[4] = 2112;
              *&v69[6] = v3;
              _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections No optimization: %hhu for %@", buf, 0x12u);
            }

            v30 = 0;
          }

          goto LABEL_57;
        }

        if (v26 != v7)
        {
          v30 = [MEMORY[0x1E696AAA8] currentHandler];
          v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
          [v30 handleFailureInFunction:v31 file:@"_PASSqliteCollections.m" lineNumber:1444 description:{@"Invalid parameter not satisfying: %@", @"constraint->iColumn == pointerColumn"}];

LABEL_57:
          v20 = *a2;
          v9 = v6 - 1;
        }
      }

      ++v21;
      v22 += 3;
      v24 += 8;
      ++v25;
    }

    while (v21 < v20);
  }

  if (*(a2 + 16) != 1)
  {
    goto LABEL_83;
  }

  v48 = *(a2 + 24);
  if (*v48 == v9)
  {
    v49 = *(v48 + 4) != 0;
    if (v6)
    {
      if (([v3 canOrderByKey:v49] & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else if (![v3 canOrderByRowId:v49])
    {
LABEL_65:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *v69 = v3;
        v50 = MEMORY[0x1E69E9C10];
        v51 = "#passqlitecollections unable to optimize rowid/key ORDER BY for %@";
LABEL_82:
        _os_log_debug_impl(&dword_1A7F47000, v50, OS_LOG_TYPE_DEBUG, v51, buf, 0xCu);
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    *(a2 + 60) = 1;
    if (*(v48 + 4))
    {
      v53 = 1;
    }

    else
    {
      v53 = 2;
    }

    *(a2 + 40) = v53;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_83;
    }

    *buf = 138412290;
    *v69 = v3;
    v50 = MEMORY[0x1E69E9C10];
    v51 = "#passqlitecollections will optimize rowid/key ORDER BY for %@";
    goto LABEL_82;
  }

  if (*v48 == v6)
  {
    if ([v3 canOrderByValue:*(v48 + 4) != 0])
    {
      *(a2 + 60) = 1;
      if (*(v48 + 4))
      {
        v52 = 3;
      }

      else
      {
        v52 = 4;
      }

      *(a2 + 40) = v52;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_83;
      }

      *buf = 138412290;
      *v69 = v3;
      v50 = MEMORY[0x1E69E9C10];
      v51 = "#passqlitecollections will optimize value ORDER BY for %@";
      goto LABEL_82;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *v69 = v3;
      v50 = MEMORY[0x1E69E9C10];
      v51 = "#passqlitecollections unable to optimize value ORDER BY for %@";
      goto LABEL_82;
    }
  }

LABEL_83:
  *(a2 + 64) = v19;
  v54 = 1.0;
  if (v17 >= 1.0)
  {
    v54 = v17;
  }

  *(a2 + 72) = v54;
  v55 = [v67 lengthOfBytesUsingEncoding:1];
  v56 = v55 + 1;
  v57 = sqlite3_malloc(v55 + 1);
  if (!v57)
  {
    v64 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v64);
  }

  *(a2 + 48) = v57;
  if (([v67 getCString:v57 maxLength:v56 encoding:1] & 1) == 0)
  {
    v62 = [MEMORY[0x1E696AAA8] currentHandler];
    v63 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int xBestIndex(sqlite3_vtab *, sqlite3_index_info *)"}];
    [v62 handleFailureInFunction:v63 file:@"_PASSqliteCollections.m" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"[indexString getCString:info->idxStr maxLength:indexStringLength encoding:NSASCIIStringEncoding]"}];
  }

  *(a2 + 56) = 1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v58 = *(a2 + 64);
    v59 = *(a2 + 72);
    *buf = 134218498;
    *v69 = v58;
    *&v69[8] = 2048;
    *&v69[10] = v59;
    *&v69[18] = 2112;
    *&v69[20] = v3;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections Ending xBestIndex (estimatedCost: %f, estimatedRows: %lld) for %@", buf, 0x20u);
  }

  return 0;
}

uint64_t _PASSQLCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = a1;
    if (a3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
      if (a4)
      {
LABEL_4:
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:a4 encoding:4];
LABEL_7:
        [v8 createEventLogForQueryOpCode:a2 argumentOneValue:v9 argumentTwoValue:v10];

        return 0;
      }
    }

    else
    {
      v9 = &stru_1F1B24B60;
      if (a4)
      {
        goto LABEL_4;
      }
    }

    v10 = &stru_1F1B24B60;
    goto LABEL_7;
  }

  return 0;
}

void releaseObjcObject(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v3 = 138412546;
    v4 = objc_opt_class();
    v5 = 2048;
    v6 = a1;
    v2 = v4;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitestatement Releasing %@ %p", &v3, 0x16u);
  }
}

uint64_t xOpen(uint64_t a1, void *a2)
{
  v3 = sqlite3_malloc64(0x10uLL);
  if (!v3)
  {
    return 7;
  }

  v4 = v3;
  result = 0;
  *v4 = 0;
  v4[1] = 0;
  *a2 = v4;
  return result;
}

uint64_t xEof(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [(_PASSqliteCollectionsCursor *)v2 stayOnOrStepToOutputRow];
  v3 = v2[9];

  return v3;
}

uint64_t xFilter(void *a1, int a2, unsigned __int8 *a3, int a4, sqlite3_value **a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = *(*a1 + 24);
  v11 = sqlite3_value_pointer(*a5, [v10 sqliteMethodName]);
  if (!v11)
  {
    *(*a1 + 16) = sqlite3_mprintf("Object of incorrect type passed to %s", [v10 sqliteMethodName]);
    return 1;
  }

  v12 = v11;
  v13 = objc_opt_new();
  v14 = CFRetain(v12);
  [v13 setCollection:v14];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = a3;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2112;
    *&buf[20] = objc_opt_class();
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitecollections xFilter idxStr:%s idxNum:%d for %@", buf, 0x1Cu);
  }

  v15 = [objc_opt_class() hasKey];
  v16 = a1[1];
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = v13;
  a1[1] = v17;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *&buf[24] = 1;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __xFilter_block_invoke;
  v27 = &unk_1E77F23D8;
  v29 = buf;
  v30 = a5;
  v32 = v15;
  v18 = v17;
  v28 = v18;
  v31 = a4;
  v19 = v25;
  while (1)
  {
    v20 = *a3;
    if (v20 != 107)
    {
      break;
    }

    v21 = 1;
LABEL_11:
    v26(v19, v21, (10 * a3[2] + 100 * a3[1] + a3[3] + 48));
    a3 += 4;
  }

  if (v20 == 118)
  {
    v21 = 0;
    goto LABEL_11;
  }

  if (*a3)
  {
    goto LABEL_28;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_27;
    }

    if (a2 != 1)
    {
      goto LABEL_28;
    }

    if (v15)
    {
      goto LABEL_27;
    }

    v24 = 1;
LABEL_24:
    [v18 applyRowIdSort:v24];
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v24 = 0;
    goto LABEL_24;
  }

  if (a2 != 3)
  {
    if (a2 == 4)
    {
      v22 = 0;
      goto LABEL_26;
    }

LABEL_28:
    __break(1u);
  }

  v22 = 1;
LABEL_26:
  [v18 applyValueSort:v22];
LABEL_27:
  [v18 finalizeConstraints];

  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_1A7F4D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t xClose(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
    a1[1] = 0;
  }

  sqlite3_free(a1);
  return 0;
}

uint64_t xColumn(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 8);
  if (![objc_opt_class() hasKey])
  {
    if (a3 != 1)
    {
      if (a3)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    v12 = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = &v12;
LABEL_18:
    _os_log_fault_impl(&dword_1A7F47000, v9, OS_LOG_TYPE_FAULT, "#passqlitecollections xColumn accessing pointer for some reason", v10, 2u);
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = buf;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
LABEL_8:
    v6 = [(_PASSqliteCollectionsCursor *)v5 outputValue];
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  v6 = [v5 outputKey];
LABEL_9:
  v7 = v6;
  if (v6)
  {
    _PASSqliteSetResult(a2);

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

LABEL_11:
  v8 = 1;
LABEL_16:

  return v8;
}

void _PASSqliteSetResult(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  valuePtr[512] = *MEMORY[0x1E69E9840];
  v3 = v2;
  if (!v3)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASSqliteSetResult(sqlite3_context * _Nonnull, __strong id _Nonnull)"}];
    [v29 handleFailureInFunction:v30 file:@"_PASSqliteDatabase.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"objcObject"}];
  }

  v4 = CFGetTypeID(v3);
  if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
  {
    v5 = v3;
    if (CFNumberIsFloatType(v5))
    {
      [v5 doubleValue];
      sqlite3_result_double(v1, v6);
    }

    else
    {
      valuePtr[0] = 0;
      CFNumberGetValue(v5, kCFNumberSInt64Type, valuePtr);
      sqlite3_result_int64(v1, valuePtr[0]);
    }

    goto LABEL_24;
  }

  if (v4 == CFStringGetTypeID())
  {
    v5 = v3;
    v36 = 0;
    v7 = [v5 _pas_fastUTF8StringPtrWithOptions:0 encodedLength:&v36];
    if (v7)
    {
      v8 = v7;
      v9 = _NSIsNSCFConstantString() - 1;
      v10 = v36;
      v11 = v1;
      v12 = v8;
LABEL_11:
      v13 = 1;
LABEL_23:
      sqlite3_result_text64(v11, v12, v10, v9, v13);
      goto LABEL_24;
    }

    v20 = [v5 _fastCharacterContents];
    if (v20)
    {
      v21 = v20;
      v10 = [v5 lengthOfBytesUsingEncoding:10];
      v11 = v1;
      v12 = v21;
      v9 = -1;
LABEL_22:
      v13 = 4;
      goto LABEL_23;
    }

    v24 = [v5 length];
    v34 = 0;
    v35 = 0;
    v25 = [v5 maximumLengthOfBytesUsingEncoding:4];
    if (v25 <= 0x1000)
    {
      [v5 getBytes:valuePtr maxLength:v25 usedLength:&v36 encoding:4 options:0 range:0 remainingRange:{v24, &v34}];
      if (!v35)
      {
        v10 = v36;
        v12 = valuePtr;
        v11 = v1;
        v9 = -1;
        goto LABEL_11;
      }
    }

    v26 = [v5 lengthOfBytesUsingEncoding:4];
    v36 = v26;
    if (v26)
    {
      v27 = sqlite3_malloc64(v26);
      if (v27)
      {
        v28 = v27;
        [v5 getBytes:v27 maxLength:v36 usedLength:0 encoding:4 options:0 range:0 remainingRange:{v24, &v34}];
        if (v35)
        {
          __assert_rtn("_PASSqliteSetResult", "_PASSqliteDatabase.m", 408, "remainingRange.length == 0");
        }

        v10 = v36;
        v9 = MEMORY[0x1E69E59A0];
        v11 = v1;
        v12 = v28;
        goto LABEL_11;
      }
    }

    else
    {
      v31 = sqlite3_malloc64([v5 lengthOfBytesUsingEncoding:10]);
      if (v31)
      {
        v32 = v31;
        [v5 getCharacters:v31];
        v10 = [v5 lengthOfBytesUsingEncoding:10];
        v9 = MEMORY[0x1E69E59A0];
        v11 = v1;
        v12 = v32;
        goto LABEL_22;
      }
    }

LABEL_40:
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v33);
  }

  if (v4 == CFDateGetTypeID())
  {
    v5 = v3;
    v14 = objc_autoreleasePoolPush();
    if (_PASSqliteSetResult__pasOnceToken9 != -1)
    {
      dispatch_once(&_PASSqliteSetResult__pasOnceToken9, &__block_literal_global_3596);
    }

    v15 = [_PASSqliteSetResult__pasExprOnceResult stringFromDate:v5];
    objc_autoreleasePoolPop(v14);
    _PASSqliteSetResult();

    goto LABEL_24;
  }

  if (v4 == CFDataGetTypeID())
  {
    v5 = v3;
    v16 = [v5 length];
    if (!v16)
    {
      sqlite3_result_zeroblob64(v1, 0);
      goto LABEL_24;
    }

    v17 = v16;
    v18 = sqlite3_malloc64(v16);
    if (v18)
    {
      v19 = v18;
      [v5 getBytes:v18 length:v17];
      sqlite3_result_blob64(v1, v19, v17, MEMORY[0x1E69E59A0]);
LABEL_24:

      goto LABEL_25;
    }

    goto LABEL_40;
  }

  if (v4 != CFNullGetTypeID())
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASSqliteSetResult(sqlite3_context * _Nonnull, __strong id _Nonnull)"}];
    [v22 handleFailureInFunction:v23 file:@"_PASSqliteDatabase.m" lineNumber:439 description:{@"unsupported sql type %@", objc_opt_class()}];
  }

  sqlite3_result_null(v1);
LABEL_25:
}

uint64_t xNext(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (v1[9] == 1)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel_stepOutputRow object:v1 file:@"_PASSqliteCollections.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"!_eof"}];
    }

    v2 = objc_autoreleasePoolPush();
    [v1 stepIndexedRow];
    [(_PASSqliteCollectionsCursor *)v1 stayOnOrStepToOutputRow];
    objc_autoreleasePoolPop(v2);
  }

  return 0;
}

uint64_t __registerForAKSEvents_block_invoke(uint64_t result, int a2, CFDictionaryRef theDict)
{
  if (a2 == 1)
  {
    value[5] = v3;
    value[6] = v4;
    v6 = result;
    value[0] = 0;
    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3C0], value))
    {
      v7 = CFGetTypeID(value[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AKS: Cx expiring", buf, 2u);
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }

    if (CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3B8], value))
    {
      v8 = CFGetTypeID(value[0]);
      if (v8 == CFBooleanGetTypeID())
      {
        if (CFBooleanGetValue(value[0]))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AKS: Cx expired", buf, 2u);
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }

    *buf = 0;
    result = CFDictionaryGetValueIfPresent(theDict, *MEMORY[0x1E698C3C8], value);
    if (result)
    {
      v9 = CFGetTypeID(value[0]);
      result = CFNumberGetTypeID();
      if (v9 == result)
      {
        result = CFNumberGetValue(value[0], kCFNumberLongLongType, buf);
        if (result)
        {
          if (*buf > 1)
          {
            if (*buf != 2)
            {
              if (*buf != 3)
              {
                return result;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                return (*(*(v6 + 32) + 16))(*(v6 + 32));
              }

              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Disabled";
              goto LABEL_30;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Locking";
              goto LABEL_30;
            }
          }

          else
          {
            if (*buf)
            {
              if (*buf != 1)
              {
                return result;
              }

              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                return (*(*(v6 + 32) + 16))(*(v6 + 32));
              }

              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Locked";
              goto LABEL_30;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *v12 = 0;
              v10 = MEMORY[0x1E69E9C10];
              v11 = "AKS: Unlocked";
LABEL_30:
              _os_log_impl(&dword_1A7F47000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
            }
          }

          return (*(*(v6 + 32) + 16))(*(v6 + 32));
        }
      }
    }
  }

  return result;
}

uint64_t __registerForLockStateChanges_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MKBGetDeviceLockState();
  if (v2 >= 4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  v4 = *(v1 + 16);

  return v4(v1, v3);
}

void sub_1A7F4E674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t lockState()
{
  LODWORD(result) = MKBGetDeviceLockState();
  if (result >= 4)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void _PASIterateLongChars(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    *buffer = 0u;
    v24 = 0u;
    Length = CFStringGetLength(v3);
    v31 = v3;
    v34 = 0;
    v35 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v32 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v33 = CStringPtr;
    v36 = 0;
    v37 = 0;
    if (Length >= 1)
    {
      v8 = 0;
      do
      {
        if (v8 < 0 || (v9 = v35, v35 <= v8))
        {
          v10 = 0;
        }

        else if (v32)
        {
          v10 = v32[v34 + v8];
        }

        else if (v33)
        {
          v10 = v33[v34 + v8];
        }

        else
        {
          if (v37 <= v8 || (v17 = v36, v36 > v8))
          {
            v18 = v8 - 4;
            if (v8 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v35)
            {
              v9 = v18 + 64;
            }

            v36 = v18;
            v37 = v9;
            v38.length = v9 - v18;
            v38.location = v34 + v18;
            CFStringGetCharacters(v31, v38, buffer);
            v17 = v36;
          }

          v10 = buffer[v8 - v17];
        }

        v21 = v10;
        v22 = 0;
        v11 = v10;
        if (v10 >> 10 == 54 && v8 < Length - 1 && v8 >= -1 && (v12 = v8 + 1, v13 = v35, v35 > v8 + 1))
        {
          if (v32)
          {
            v14 = v32[v34 + v12];
          }

          else if (v33)
          {
            v14 = v33[v34 + v12];
          }

          else
          {
            if (v37 <= v12 || (v19 = v36, v36 > v12))
            {
              v20 = v8 - 3;
              if (v12 < 4)
              {
                v20 = 0;
              }

              if (v20 + 64 < v35)
              {
                v13 = v20 + 64;
              }

              v36 = v20;
              v37 = v13;
              v39.length = v13 - v20;
              v39.location = v34 + v20;
              CFStringGetCharacters(v31, v39, buffer);
              v19 = v36;
            }

            v14 = buffer[v12 - v19];
          }

          v22 = v14;
          v15 = v8;
          if (v14 >> 10 == 55)
          {
            v11 = (v21 << 10) + v14 - 56613888;
            v15 = v8 + 1;
          }
        }

        else
        {
          v15 = v8;
        }

        v16 = v15 + 1;
        v4[2](v4, v11, &v21, v8, v15 + 1 - v8);
        v8 = v16;
      }

      while (v16 < Length);
    }
  }
}

uint64_t AsyncFIFOQueue.__allocating_init(priority:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AsyncFIFOQueue.init(priority:)(a1);
  return v2;
}

uint64_t sub_1A7F4EC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A7F4ECE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7F51870;

  return sub_1A7F4EDA0(a1, v4);
}

uint64_t sub_1A7F4EDA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7F510CC;

  return v6(a1);
}

uint64_t sub_1A7F4EE98(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A7F5177C;

  return sub_1A7F4EF94(a1, v6, v7, v1 + v5);
}

uint64_t sub_1A7F4EF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA48, &unk_1A7FB1820);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7F4F060, 0, 0);
}

uint64_t sub_1A7F4F060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  sub_1A7FAB9E8();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A7F51680;
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1A7F4F134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t AsyncFIFOQueue.init(priority:)(uint64_t a1)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA18, &qword_1A7FB1738);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  v8 = *(v33 - 8);
  v9 = MEMORY[0x1EEE9AC00](v33);
  v31 = v10;
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA28, &qword_1A7FB1748);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v36 = v1;
  swift_defaultActor_initialize();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v37 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA38, &qword_1A7FB1758);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v4);
  v21 = v12;
  sub_1A7FABA08();
  sub_1A7F4F134(v18, v16, &qword_1EB2DCA28, &qword_1A7FB1748);
  result = (*(v20 + 48))(v16, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v36;
    (*(v20 + 32))(v36 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v16, v19);
    v24 = v34;
    v25 = v35;
    sub_1A7F4F134(v35, v34, &qword_1EB2DCA10, &qword_1A7FB1730);
    v27 = v32;
    v26 = v33;
    (*(v8 + 16))(v32, v21, v33);
    v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    (*(v8 + 32))(v29 + v28, v27, v26);
    v30 = sub_1A7F534A4(0, 0, v24, &unk_1A7FB1768, v29);
    sub_1A7F4EC88(v25, &qword_1EB2DCA10, &qword_1A7FB1730);
    (*(v8 + 8))(v21, v26);
    *(v23 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__task) = v30;
    sub_1A7F4EC88(v18, &qword_1EB2DCA28, &qword_1A7FB1748);
    return v23;
  }

  return result;
}

uint64_t sub_1A7F4F630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA20, &qword_1A7FB1740);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A7F4F700(uint64_t a1, uint64_t a2)
{
  sub_1A7F4EC88(a2, &qword_1EB2DCA28, &qword_1A7FB1748);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_1A7F4F950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _PASCompactStringArrayResetSearchHint(_DWORD *a1)
{
  if (!a1)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _PASCompactStringArrayResetSearchHint(const struct _PASCompactStringArray * _Nonnull)"];
    [v4 handleFailureInFunction:v5 file:@"_PASCompactStringArray.mm" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"array"}];
  }

  v2 = a1[8];
  if (v2 != -1)
  {
    v3 = a1[9];
    a1[6] = v2;
    a1[7] = v3;
    result = NAN;
    *(a1 + 4) = -1;
  }

  return result;
}

id _PAS_sqlite3_column_nsstring(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_text(a1, a2);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:sqlite3_column_bytes(a1 encoding:{a2), 4}];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
LABEL_6:
      v9 = v7;

      goto LABEL_8;
    }

    v8 = sqlite3_column_text16(a1, a2);
    if (v8)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v8 length:{sqlite3_column_bytes16(a1, a2) >> 1}];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

void _PASCompactStringArrayAppendString(uint64_t a1, char *__s)
{
  if (a1)
  {
    if (__s)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
    [v7 handleFailureInFunction:v8 file:@"_PASCompactStringArray.mm" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    if (__s)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
  [v9 handleFailureInFunction:v10 file:@"_PASCompactStringArray.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v4 = strlen(__s);
  v5 = v4;
  v6 = *(a1 + 8);
  if (&v6[v4 - *a1 - 4294967292u] <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _PASCompactStringArrayAppendString(struct _PASCompactStringArray * _Nonnull, const char * _Nonnull)"}];
    [v11 handleFailureInFunction:v12 file:@"_PASCompactStringArray.mm" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"array->buffer.size() + szStringSize + sizeof(uint32_t) <= UINT32_MAX"}];

    v6 = *(a1 + 8);
  }

  __src = v5;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, v6, &__src, &v14, 4);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1, *(a1 + 8), __s, &__s[v5], v5);
}

void std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, char *__src, char *a4, int64_t a5)
{
  if (a5 >= 1)
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((v9 - v10) >= a5)
    {
      v16 = v10 - __dst;
      if ((v10 - __dst) >= a5)
      {
        v20 = &__dst[a5];
        v21 = (v10 - a5);
        v22 = *(a1 + 8);
        if (v10 >= a5)
        {
          do
          {
            v23 = *v21++;
            *v22++ = v23;
          }

          while (v21 != v10);
        }

        *(a1 + 8) = v22;
        if (v10 != v20)
        {
          memmove(&__dst[a5], __dst, v10 - v20);
        }

        v24 = __dst;
        v25 = __src;
        v26 = a5;
      }

      else
      {
        v17 = &__src[v16];
        v18 = *(a1 + 8);
        while (v17 != a4)
        {
          v19 = *v17++;
          *v18++ = v19;
        }

        *(a1 + 8) = v18;
        if (v16 < 1)
        {
          return;
        }

        v27 = &__dst[a5];
        v28 = &v18[-a5];
        v29 = v18;
        if (&v18[-a5] < v10)
        {
          do
          {
            v30 = *v28++;
            *v29++ = v30;
          }

          while (v28 != v10);
        }

        *(a1 + 8) = v29;
        if (v18 != v27)
        {
          memmove(&__dst[a5], __dst, v18 - v27);
        }

        v24 = __dst;
        v25 = __src;
        v26 = v10 - __dst;
      }

      memmove(v24, v25, v26);
    }

    else
    {
      v11 = *a1;
      v12 = v10 - *a1 + a5;
      if (v12 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        operator new();
      }

      v31 = (__dst - v11);
      memcpy(v13, __src, a5);
      v32 = &v13[a5];
      v33 = v10 - __dst;
      memcpy(v32, __dst, v10 - __dst);
      *(a1 + 8) = __dst;
      v34 = &v13[v11 - __dst];
      memcpy(v34, v11, v31);
      *a1 = v34;
      *(a1 + 8) = &v32[v33];
      *(a1 + 16) = 0;
      if (v11)
      {

        operator delete(v11);
      }
    }
  }
}

void std::vector<unsigned char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = (v4 + v2 - v7);
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

uint64_t _PASCompactStringArrayFindStringWithSize(uint64_t *a1, void *__s1, size_t __n)
{
  if (a1)
  {
    if (__s1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _PASCompactStringArrayFindStringWithSize(const struct _PASCompactStringArray * _Nonnull, const char * _Nonnull, size_t)"}];
    [v18 handleFailureInFunction:v19 file:@"_PASCompactStringArray.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"array"}];

    if (__s1)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"size_t _PASCompactStringArrayFindStringWithSize(const struct _PASCompactStringArray * _Nonnull, const char * _Nonnull, size_t)"}];
  [v20 handleFailureInFunction:v21 file:@"_PASCompactStringArray.mm" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"string"}];

LABEL_3:
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 - *a1;
  if (v6 == *a1)
  {
    return -1;
  }

  v10 = *(a1 + 6);
  v9 = *(a1 + 7);
  v11 = v10;
  while (1)
  {
    v12 = (v7 + v11);
    v13 = *v12;
    if (v13 == __n && !memcmp(__s1, v12 + 1, __n))
    {
      break;
    }

    v14 = v11 + v13 + 4;
    if (v8 == v14)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    if (v8 == v14)
    {
      v11 = 0;
    }

    else
    {
      v11 += v13 + 4;
    }

    if (v11 == v10)
    {
      return -1;
    }
  }

  if (*(a1 + 8) == -1)
  {
    *(a1 + 8) = v11;
    *(a1 + 9) = v9;
  }

  v16 = v11 + v13 + 4;
  if (v8 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9 + 1;
  }

  if (v8 == v16)
  {
    LODWORD(v16) = 0;
  }

  *(a1 + 6) = v16;
  *(a1 + 7) = v17;
  return v9;
}

__CFString *_PASRepairString(void *a1)
{
  v1 = a1;
  if (![(__CFString *)v1 length]|| (v2 = [(__CFString *)v1 fastestEncoding], v2 == 4) || v2 == 1)
  {
    v3 = v1;
LABEL_5:
    v4 = v3;
    goto LABEL_6;
  }

  CStringPtr = CFStringGetCStringPtr(v1, 4u);
  v7 = v1;
  v8 = v7;
  if (CStringPtr)
  {
    v4 = v7;
    goto LABEL_6;
  }

  v9 = objc_opt_self();

  if (!v9)
  {
    goto LABEL_40;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  *buffer = 0u;
  v54 = 0u;
  Length = CFStringGetLength(v8);
  v61 = v8;
  v64 = 0;
  v65 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  v12 = 0;
  v62 = CharactersPtr;
  if (!CharactersPtr)
  {
    v12 = CFStringGetCStringPtr(v8, 0x600u);
  }

  v63 = v12;
  v66 = 0;
  v67 = 0;
  if (Length <= 0)
  {
LABEL_40:

LABEL_41:
    v3 = v8;
    goto LABEL_5;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 64;
  do
  {
    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v16;
    }

    v19 = v15 >> 10;
    if (v65 <= v16)
    {
      if (v19 == 54)
      {
        goto LABEL_42;
      }

      v15 = 0;
      goto LABEL_28;
    }

    if (v62)
    {
      v20 = &v62[v64];
LABEL_22:
      v15 = v20[v16];
      goto LABEL_27;
    }

    if (!v63)
    {
      if (v67 <= v16 || v14 > v16)
      {
        v22 = v18 + v13;
        v23 = v17 - v18;
        v24 = v16 - v18;
        v25 = v24 + 64;
        if (v24 + 64 >= v65)
        {
          v25 = v65;
        }

        v66 = v24;
        v67 = v25;
        if (v65 < v23)
        {
          v23 = v65;
        }

        v69.location = v24 + v64;
        v69.length = v23 + v22;
        CFStringGetCharacters(v61, v69, buffer);
        v14 = v66;
      }

      v20 = &buffer[-v14];
      goto LABEL_22;
    }

    v15 = v63[v64 + v16];
LABEL_27:
    if ((v19 == 54) != (v15 >> 10 == 55))
    {
LABEL_42:

      goto LABEL_44;
    }

LABEL_28:
    ++v16;
    --v13;
    ++v17;
  }

  while (Length != v16);
  v26 = v15 >> 10;

  if (v26 != 54)
  {
    goto LABEL_41;
  }

LABEL_44:
  v4 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{-[__CFString length](v8, "length")}];
  v27 = v8;
  v28 = objc_opt_self();

  if (v28)
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *buffer = 0u;
    v54 = 0u;
    v29 = CFStringGetLength(v27);
    v61 = v27;
    v64 = 0;
    v65 = v29;
    v30 = CFStringGetCharactersPtr(v27);
    v31 = 0;
    v62 = v30;
    if (!v30)
    {
      v31 = CFStringGetCStringPtr(v27, 0x600u);
    }

    v50 = v27;
    v63 = v31;
    v66 = 0;
    v67 = 0;
    if (v29 >= 1)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 64;
      do
      {
        if (v34 >= 4)
        {
          v37 = 4;
        }

        else
        {
          v37 = v34;
        }

        v38 = v65;
        if (v65 <= v34)
        {
          v35 = 0;
          v52 = 0;
          goto LABEL_57;
        }

        if (v62)
        {
          v39 = &v62[v64];
        }

        else
        {
          if (v63)
          {
            v40 = v63[v64 + v34];
            goto LABEL_60;
          }

          v44 = v66;
          if (v67 <= v34 || v66 > v34)
          {
            v46 = v37 + v32;
            v47 = v36 - v37;
            v48 = v34 - v37;
            v49 = v48 + 64;
            if (v48 + 64 >= v65)
            {
              v49 = v65;
            }

            v66 = v48;
            v67 = v49;
            if (v65 >= v47)
            {
              v38 = v47;
            }

            v70.location = v48 + v64;
            v70.length = v38 + v46;
            CFStringGetCharacters(v61, v70, buffer);
            v44 = v66;
          }

          v39 = &buffer[-v44];
        }

        v40 = v39[v34];
LABEL_60:
        v52 = v40;
        if (v35 && (v40 & 0xFC00) == 56320)
        {
          v51[0] = v33;
          v51[1] = v40;
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:v51 length:2];
          [(__CFString *)v4 appendString:v42];

          v35 = 0;
          goto LABEL_63;
        }

        v43 = v40 & 0xFC00;
        v35 = v43 == 55296;
        if ((v43 | 0x400) == 0xDC00)
        {
          goto LABEL_63;
        }

LABEL_57:
        v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v52 length:1];
        [(__CFString *)v4 appendString:v41];

LABEL_63:
        v33 = v52;
        ++v34;
        --v32;
        ++v36;
      }

      while (v29 != v34);
    }

    v27 = v50;
  }

LABEL_6:

  return v4;
}

uint64_t sub_1A7F50F80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AsyncFIFOQueue.__deallocating_deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v2);
  sub_1A7FAB9C8();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1A7F510CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7F511C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA40, &qword_1A7FB1770);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[0] = &unk_1A7FB1780;
  v10[1] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  sub_1A7FAB9B8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A7F51304()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A7F51364()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[9] = v1;
  v0[10] = v2;
  if (!v1)
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    goto LABEL_5;
  }

  if (sub_1A7FABA28())
  {
    (*(v0[6] + 8))(v0[7], v0[5]);
    sub_1A7F50F80(v1, v2);
LABEL_5:

    v3 = v0[1];

    return v3();
  }

  v6 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1A7F51874;

  return v6();
}

uint64_t sub_1A7F514E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7F51870;

  return sub_1A7F51598(a1, v4);
}

uint64_t sub_1A7F51598(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1A7F5177C;

  return v5();
}

uint64_t sub_1A7F51680()
{

  return MEMORY[0x1EEE6DFA0](sub_1A7F51364, 0, 0);
}

uint64_t sub_1A7F5177C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A7F51874()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  sub_1A7F50F80(v3, v2);
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v4;
  v5[1] = sub_1A7F51680;
  v6 = *(v1 + 40);

  return MEMORY[0x1EEE6D9C8](v1 + 16, 0, 0, v6);
}

uint64_t type metadata accessor for AsyncFIFOQueue(uint64_t a1)
{
  result = qword_1EB2DCA00;
  if (!qword_1EB2DCA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t hashBufferDescr(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1 >= 0x20)
  {
    v2 = 32;
  }

  else
  {
    v2 = v1;
  }

  v3 = *a1;
  v4 = _PASMurmur3_x86_32(*a1, v2, v1 + *(a1 + 12));
  if (v1 >= 0x21)
  {
    if ((v1 - 32) >= 0x20)
    {
      v5 = 32;
    }

    else
    {
      v5 = v1 - 32;
    }

    v4 ^= _PASMurmur3_x86_32((v3 + v1 - v5), v5, 0);
  }

  return v4;
}

uint64_t _PASMurmur3_x86_32(_DWORD *a1, unint64_t a2, int a3)
{
  if (a2 < 4)
  {
    v3 = a1;
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        if (a2 != 3)
        {
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_13:
      v9 = *v3;
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v5 = *a1;
  v4 = a1 + 1;
  HIDWORD(v6) = (461845907 * ((380141568 * v5) | ((-862048943 * v5) >> 17))) ^ a3;
  LODWORD(v6) = HIDWORD(v6);
  a3 = 5 * (v6 >> 19) - 430675100;
  v3 = (v4 + (a2 & 0xFFFFFFFFFFFFFFFCLL) - 4);
  while (v4 < v3)
  {
    v7 = *v4++;
    HIDWORD(v8) = (461845907 * ((380141568 * v7) | ((-862048943 * v7) >> 17))) ^ a3;
    LODWORD(v8) = HIDWORD(v8);
    a3 = 5 * (v8 >> 19) - 430675100;
  }

  if ((a2 & 3) > 1)
  {
    if ((a2 & 3) != 2)
    {
LABEL_14:
      v9 = *v3 | (*(v3 + 2) << 16);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if ((a2 & 3) != 0)
  {
LABEL_11:
    v9 = *v3;
LABEL_15:
    a3 ^= 461845907 * ((380141568 * v9) | ((-862048943 * v9) >> 17));
  }

LABEL_16:
  v10 = -2048144789 * (a3 ^ a2 ^ ((a3 ^ a2) >> 16));
  return (-1028477387 * (v10 ^ (v10 >> 13))) ^ ((-1028477387 * (v10 ^ (v10 >> 13))) >> 16);
}

uint64_t bumpChecked(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 24);
  if (*(a1 + 8) - result < a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *bumpChecked(_PASLPAllocContext * _Nonnull, size_t)"}];
    [v5 handleFailureInFunction:v6 file:@"_PASLPWriterV1.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"offset(allocContext->bumpp, allocContext->endp) >= (ptrdiff_t)byteCount"}];

    result = *(a1 + 24);
  }

  *(a1 + 24) = result + a2;
  return result;
}

uint64_t kSqlEventFired_block_invoke(uint64_t *a1, const void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a3 & 0xFFFFFF0000000000 | (BYTE4(a3) << 32) | a3;
  v12[0] = a2;
  v12[1] = v7;
  Value = CFSetGetValue(v6[2], v12);
  if (Value)
  {
    v9 = *Value;
  }

  else
  {
    v10 = a3;
    alignChecked(*a1, BYTE4(a3));
    v9 = bumpChecked(*a1, a3);
    memcpy(v9, a2, v10);
    cacheBuffer(*(*a1 + 16), *(*a1 + 32), v9, v7);
  }

  return (v9 - **a1);
}

void alignChecked(void *a1, unint64_t a2)
{
  v3 = a1[3];
  v4 = &v3[-*a1];
  v5 = &v4[a2 - 1] / a2 * a2;
  v6 = *a1 + v5;
  if (v6 >= a1[1])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void *alignChecked(_PASLPAllocContext * _Nonnull, size_t)"}];
    [v7 handleFailureInFunction:v8 file:@"_PASLPWriterV1.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"alignedPtr < allocContext->endp"}];

    v3 = a1[3];
  }

  bzero(v3, v5 - v4);
  a1[3] = v6;
}

__n128 retainBufferDescr(uint64_t a1, __n128 *a2)
{
  v3 = MEMORY[0x1AC565D00](a1, 16, 0x10C0040EA531592, 0);
  if (!v3)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v5);
  }

  result = *a2;
  *v3 = *a2;
  return result;
}

void cacheBuffer(__CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  ++*(a2 + 120);
  if (CFSetGetCount(a1) < 0x2000)
  {
    CFSetAddValue(a1, v5);
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

uint64_t sub_1A7F534A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A7F4F134(a3, v25 - v10, &qword_1EB2DCA10, &qword_1A7FB1730);
  v12 = sub_1A7FAB9A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A7F4EC88(v11, &qword_1EB2DCA10, &qword_1A7FB1730);
  }

  else
  {
    sub_1A7FAB998();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A7FAB988();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A7FAB918() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A7F4EC88(a3, &qword_1EB2DCA10, &qword_1A7FB1730);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A7F4EC88(a3, &qword_1EB2DCA10, &qword_1A7FB1730);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t AsyncFIFOQueue.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA10, &qword_1A7FB1730);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A7FAB9A8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for AsyncFIFOQueue(0);
  v4 = swift_allocObject();
  AsyncFIFOQueue.init(priority:)(v2);
  return v4;
}

uint64_t AsyncFIFOQueue.deinit()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA30, &qword_1A7FB1750);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC16ProactiveSupport14AsyncFIFOQueue__streamContinuation, v2);
  sub_1A7FAB9C8();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v7((v1 + v6), v2);

  swift_defaultActor_destroy();
  return v1;
}

void sub_1A7F539EC(uint64_t a1)
{
  sub_1A7F53AE4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A7F53AE4(uint64_t a1)
{
  if (!qword_1EB2DC9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA38, &qword_1A7FB1758);
    v1 = sub_1A7FAB9D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2DC9E8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A7F53B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7F5177C;

  return sub_1A7F4EDA0(a1, v4);
}

uint64_t sub_1A7F53C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v31 = a4;
  *(&v31 + 1) = a5;
  v10 = sub_1A7FABA88();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - v12;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0] + 32;
  v34 = xmmword_1A7FB1830;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  v15 = sub_1A7F5ACEC();
  sub_1A7FAB8C8();
  (*(v11 + 16))(v13, a6, v10);
  v16 = (*(*(a2 - 8) + 48))(v13, 1, a2);
  (*(v11 + 8))(v13, v10);
  if (v16 != 1 && sub_1A7FAB888() == 1 || (MEMORY[0x1AC5658E0](a1, v14, a2, v15) & 1) != 0)
  {

    v32 = a2;
    v33 = a3;
    v34 = v31;
    result = type metadata accessor for StringTrieNode(0, &v32);
    *(a6 + *(result + 52)) = 0;
  }

  else
  {
    v32 = a1;
    sub_1A7FAB8A8();
    v18 = sub_1A7FAB868();
    v28 = v27;
    v40 = v18;
    MEMORY[0x1EEE9AC00](v18);
    v27[-4] = a2;
    v27[-3] = a3;
    v19 = v31;
    *&v27[-2] = v31;
    v27[1] = sub_1A7FAB8A8();
    v30 = MEMORY[0x1E69E5E50];
    swift_getWitnessTable();
    sub_1A7FAB928();
    v29 = 0;

    v28 = v39;
    v38 = v39;
    v20 = MEMORY[0x1E69E7230];
    v32 = MEMORY[0x1E69E7230];
    v33 = a2;
    *&v34 = MEMORY[0x1E69E7250];
    *(&v34 + 1) = MEMORY[0x1E69E7238];
    v21 = MEMORY[0x1E69E7240];
    v35 = MEMORY[0x1E69E7240];
    v36 = a3;
    v37 = v19;
    v22 = type metadata accessor for StandardTrieNode(255, &v32);
    swift_getTupleTypeMetadata2();
    v23 = sub_1A7FAB938();
    v24 = sub_1A7F5AA00(v23, v20, v22, v21);

    v27[0] = v27;
    v32 = v24;
    MEMORY[0x1EEE9AC00](v25);
    v27[-4] = a2;
    v27[-3] = a3;
    *&v27[-2] = v19;
    sub_1A7FAB8A8();
    swift_getWitnessTable();
    sub_1A7FAB928();

    v26 = v40;
    v32 = a2;
    v33 = a3;
    v34 = v19;
    result = type metadata accessor for StringTrieNode(0, &v32);
    *(a6 + *(result + 52)) = v26;
  }

  return result;
}

uint64_t sub_1A7F54098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v50 = a4;
  v48 = a1;
  v8 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v39 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v42 = *(v11 + 16);
  v43 = a2;
  v42(&v39 - v15, a2, TupleTypeMetadata2);
  v17 = *(v16 + 1);
  v47 = *v16;
  v18 = *(v16 + 2);
  v19 = *(v16 + 3);
  v20 = *(a3 - 8);
  (*(v20 + 8))(&v16[*(TupleTypeMetadata2 + 48)], a3);
  if (v18 == v19 >> 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v18 >= (v19 >> 1))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v40 = v19;
  v21 = v17;
  v46 = *(v17 + v18);
  v39 = v18 + 1;
  v22 = swift_allocObject();
  v23 = v50;
  v22[2] = a3;
  v22[3] = v23;
  v24 = v44;
  v25 = v45;
  v22[4] = v44;
  v22[5] = v25;
  v42(v14, v43, TupleTypeMetadata2);
  v26 = v47;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v27 = &v14[*(TupleTypeMetadata2 + 48)];
  v28 = v49;
  (*(v20 + 32))(v49, v27, a3);
  (*(v20 + 56))(v28, 0, 1, a3);
  v52 = v26;
  v53 = v21;
  v54 = v39;
  v55 = v40;
  v29 = swift_allocObject();
  v30 = v50;
  v29[2] = a3;
  v29[3] = v30;
  v29[4] = v24;
  v29[5] = v25;
  v29[6] = sub_1A7F5BDAC;
  v29[7] = v22;
  v31 = v48;
  swift_isUniquelyReferenced_nonNull_native();
  v56 = *v31;
  v32 = v56;
  sub_1A7F5A764(v46);
  if (__OFADD__(*(v32 + 16), (v33 & 1) == 0))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    result = sub_1A7FABBF8();
    __break(1u);
    return result;
  }

  v34 = v33;
  sub_1A7F5ACEC();
  sub_1A7FAB8A8();
  sub_1A7FABB18();
  v35 = sub_1A7FABAF8();
  v36 = v56;
  if (v35)
  {
    sub_1A7F5A764(v46);
    if ((v34 & 1) != (v37 & 1))
    {
      goto LABEL_12;
    }
  }

  *v48 = v36;
  if ((v34 & 1) == 0)
  {
    v56 = (v29[6])();
    v51 = v46;
    sub_1A7FABB08();
  }

  sub_1A7FAB8D8();

  return swift_unknownObjectRelease_n();
}

unint64_t sub_1A7F544D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  swift_getTupleTypeMetadata2();
  v3 = sub_1A7FAB938();
  v4 = sub_1A7F5ACEC();
  v5 = sub_1A7F5AA00(v3, v2, a1, v4);

  return v5;
}

uint64_t sub_1A7F54564(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a1;
  v20[0] = MEMORY[0x1E69E7230];
  v20[1] = a3;
  v20[2] = MEMORY[0x1E69E7250];
  v20[3] = MEMORY[0x1E69E7238];
  v11 = MEMORY[0x1E69E7240];
  v20[4] = MEMORY[0x1E69E7240];
  v20[5] = a4;
  v20[6] = a5;
  v20[7] = a6;
  v12 = type metadata accessor for StandardTrieNode(255, v20);
  v13 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v19 - v14;
  v16 = *a2;

  sub_1A7F546F8(v17, MEMORY[0x1E69E7230], a3, MEMORY[0x1E69E7250], MEMORY[0x1E69E7238], v11, a4, a5, v15, a6);
  (*(*(v12 - 8) + 56))(v15, 0, 1, v12);
  LOBYTE(v20[0]) = v16;
  sub_1A7FAB8A8();
  return sub_1A7FAB8D8();
}

uint64_t sub_1A7F546F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v45 = a7;
  v46 = a8;
  v44 = a5;
  v41 = a4;
  v40 = a1;
  v47 = a10;
  v14 = sub_1A7FABA88();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v39 - v16;
  v58 = sub_1A7FAB878();
  sub_1A7FAB978();
  swift_getWitnessTable();
  sub_1A7FAB8F8();

  v43 = v49;
  v56 = v49;
  v57 = v50;
  v18 = sub_1A7FABAA8();
  v42 = a6;
  v55 = a6;
  v19 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_1A7FAB8C8();
  swift_unknownObjectRelease();
  v21 = *(v15 + 16);
  *&v43 = a9;
  v21(v17, a9, v14);
  v22 = (*(*(a3 - 8) + 48))(v17, 1, a3);
  (*(v15 + 8))(v17, v14);
  if (v22 != 1 && sub_1A7FAB888() == 1 || (MEMORY[0x1AC5658E0](v19, v18, a3, WitnessTable) & 1) != 0)
  {

    *&v49 = a2;
    *(&v49 + 1) = a3;
    *&v50 = v41;
    *(&v50 + 1) = v44;
    v51 = v42;
    v52 = v45;
    v53 = v46;
    v54 = v47;
    result = type metadata accessor for StandardTrieNode(0, &v49);
    *(v43 + *(result + 84)) = 0;
  }

  else
  {
    *&v49 = v19;
    sub_1A7FAB8A8();
    v24 = v42;
    v58 = sub_1A7FAB868();
    MEMORY[0x1EEE9AC00](v58);
    v39[-8] = a2;
    v39[-7] = a3;
    v25 = v41;
    v39[-6] = v41;
    v26 = v25;
    v27 = v45;
    v39[-5] = v44;
    v39[-4] = v24;
    v29 = v46;
    v28 = v47;
    v39[-3] = v27;
    v39[-2] = v29;
    v39[-1] = v28;
    v39[2] = sub_1A7FAB8A8();
    v39[4] = MEMORY[0x1E69E5E50];
    swift_getWitnessTable();
    sub_1A7FAB928();
    v39[3] = 0;

    v40 = v56;
    v58 = v56;
    *&v49 = a2;
    *(&v49 + 1) = a3;
    v30 = v26;
    v31 = v44;
    v32 = v45;
    *&v50 = v26;
    *(&v50 + 1) = v44;
    v51 = v24;
    v52 = v45;
    v33 = v46;
    v53 = v46;
    v54 = v47;
    v34 = type metadata accessor for StandardTrieNode(255, &v49);
    swift_getTupleTypeMetadata2();
    v35 = sub_1A7FAB938();
    v36 = sub_1A7F5AA00(v35, a2, v34, v24);

    v39[1] = v39;
    v48 = v36;
    MEMORY[0x1EEE9AC00](v37);
    v39[-8] = a2;
    v39[-7] = a3;
    v39[-6] = v30;
    v39[-5] = v31;
    v39[-4] = v24;
    v39[-3] = v32;
    v38 = v47;
    v39[-2] = v33;
    v39[-1] = v38;
    sub_1A7FAB8A8();
    swift_getWitnessTable();
    sub_1A7FAB928();

    *(v43 + *(v34 + 84)) = v49;
  }

  return result;
}

uint64_t sub_1A7F54C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = sub_1A7FABA88();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v27 - v12;
  v13 = *(a5 + 16);
  v14 = sub_1A7FABA88();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v34 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v31 = a1;
  v41 = a1;
  v42 = a2;
  v29 = a2;
  v43 = a3;
  v44 = a4;
  v32 = a4;
  sub_1A7FABAA8();
  swift_getWitnessTable();
  sub_1A7FABA48();
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v21 = sub_1A7FABA88();
    return (*(*(v21 - 8) + 16))(v35, v36, v21);
  }

  v23 = v34;
  v24 = v35;
  (*(v19 + 32))(v34, v18, v13);
  if (!*(v36 + *(a5 + 84)))
  {
    (*(v19 + 8))(v23, v13);
    return (*(*(*(a5 + 24) - 8) + 56))(v24, 1, 1);
  }

  v25 = v33;
  sub_1A7FAB8C8();
  v26 = *(a5 - 8);
  if ((*(v26 + 48))(v25, 1, a5) == 1)
  {
    (*(v19 + 8))(v23, v13);
    (*(v27 + 8))(v25, v28);
    return (*(*(*(a5 + 24) - 8) + 56))(v24, 1, 1);
  }

  v37 = v31;
  v38 = v29;
  v39 = v30;
  v40 = v32;
  swift_unknownObjectRetain();
  sub_1A7FABA78();
  sub_1A7F54C50(v41, v42, v43, v44, a5, v24);
  swift_unknownObjectRelease();
  (*(v19 + 8))(v23, v13);
  return (*(v26 + 8))(v25, a5);
}

uint64_t sub_1A7F55094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v38 = a4;
  v39 = a5;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A7FABA88();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v34 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v40 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v34 - v16;
  v18 = *(v15 + 48);
  v41 = v12;
  v19 = *(v12 + 16);
  v36 = a1;
  v19(&v34 - v16, a1, v11);
  v37 = a2;
  v19(&v17[v18], a2, v11);
  v20 = v9;
  v21 = *(v9 + 48);
  if (v21(v17, 1, a3) != 1)
  {
    v19(v43, v17, v11);
    if (v21(&v17[v18], 1, a3) != 1)
    {
      v24 = &v17[v18];
      v25 = v35;
      (*(v9 + 32))(v35, v24, a3);
      v22 = v42;
      v26 = v43;
      v27 = sub_1A7FAB908();
      v28 = *(v20 + 8);
      v28(v25, a3);
      v28(v26, a3);
      (*(v41 + 8))(v17, v11);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v9 + 8))(v43, a3);
LABEL_6:
    (*(v40 + 8))(v17, TupleTypeMetadata2);
    return 0;
  }

  if (v21(&v17[v18], 1, a3) != 1)
  {
    goto LABEL_6;
  }

  (*(v41 + 8))(v17, v11);
  v22 = v42;
LABEL_10:
  v30 = v38;
  v29 = v39;
  v44 = a3;
  v45 = v38;
  v46 = v39;
  v47 = v22;
  v31 = *(type metadata accessor for StringTrieNode(0, &v44) + 52);
  v32 = *(v37 + v31);
  if (*(v36 + v31))
  {
    if (v32)
    {

      v44 = MEMORY[0x1E69E7230];
      v45 = a3;
      v46 = MEMORY[0x1E69E7250];
      v47 = MEMORY[0x1E69E7238];
      v48 = MEMORY[0x1E69E7240];
      v49 = v30;
      v50 = v29;
      v51 = v22;
      type metadata accessor for StandardTrieNode(0, &v44);
      swift_getWitnessTable();
      v33 = sub_1A7FAB8B8();

      if (v33)
      {
        return 1;
      }
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A7F554DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A7FABBE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6156627573 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A7FABBE8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A7F555AC(char a1)
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](a1 & 1);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F555F4(char a1)
{
  if (a1)
  {
    return 0x65756C6156627573;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1A7F5566C(uint64_t a1)
{
  sub_1A7FABC18();
  sub_1A7F53434(v3, *v1);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F556CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7F554DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7F5570C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1A7F5BC44();
  *a2 = result;
  return result;
}

uint64_t sub_1A7F55740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F55794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F557E8(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v6 = *(a2 + 40);
  v22 = *(a2 + 32);
  v23 = v5;
  v28 = v5;
  v29 = v4;
  v20 = v6;
  v21 = v4;
  v30 = v22;
  v31 = v6;
  type metadata accessor for StringTrieNode.CodingKeys(255, &v28);
  swift_getWitnessTable();
  v7 = sub_1A7FABBD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v22;
  sub_1A7FABC58();
  LOBYTE(v28) = 0;
  v13 = v24;
  v14 = v23;
  v15 = v25;
  sub_1A7FABBB8();
  if (v15)
  {
    return (*(v8 + 8))(v10, v11);
  }

  v25 = v8;
  v37 = *(v13 + *(a2 + 52));
  v36 = 1;
  v28 = MEMORY[0x1E69E7230];
  v29 = v14;
  v17 = MEMORY[0x1E69E7238];
  v30 = MEMORY[0x1E69E7250];
  v31 = MEMORY[0x1E69E7238];
  v32 = MEMORY[0x1E69E7240];
  v33 = v21;
  v34 = v12;
  v35 = v20;
  type metadata accessor for StandardTrieNode(255, &v28);
  sub_1A7FAB8A8();
  WitnessTable = swift_getWitnessTable();
  v26 = v17;
  v27 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABBB8();
  return (*(v25 + 8))(v10, v11);
}

uint64_t sub_1A7F55A7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a6;
  v11 = sub_1A7FABA88();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - v12;
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for StringTrieNode.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v41 = sub_1A7FABB98();
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &v30 - v13;
  v45 = a2;
  v46 = a3;
  v40 = a3;
  v33 = a5;
  v34 = a4;
  v47 = a4;
  v48 = a5;
  v15 = type metadata accessor for StringTrieNode(0, &v45);
  v31 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v14;
  v18 = v42;
  sub_1A7FABC48();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v34;
  v30 = v17;
  v42 = a1;
  v20 = v38;
  v21 = v39;
  LOBYTE(v45) = 0;
  v23 = v35;
  v22 = v36;
  sub_1A7FABB68();
  (*(v20 + 32))(v30, v23, v21);
  v45 = MEMORY[0x1E69E7230];
  v46 = a2;
  v24 = MEMORY[0x1E69E7250];
  v47 = MEMORY[0x1E69E7250];
  v48 = MEMORY[0x1E69E7238];
  v49 = MEMORY[0x1E69E7240];
  v50 = v40;
  v51 = v19;
  v52 = v33;
  type metadata accessor for StandardTrieNode(255, &v45);
  sub_1A7FAB8A8();
  LOBYTE(v45) = 1;
  v25 = v41;
  WitnessTable = swift_getWitnessTable();
  v43 = v24;
  v44 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABB68();
  (*(v37 + 8))(v22, v25);
  v27 = v30;
  *&v30[*(v15 + 52)] = v53;
  v28 = v31;
  (*(v31 + 16))(v32, v27, v15);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return (*(v28 + 8))(v27, v15);
}

uint64_t sub_1A7F55F4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v85 = a8;
  v77 = a7;
  v83 = a5;
  v84 = a6;
  v78 = a1;
  v13 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v79 = v68 - v14;
  v76 = sub_1A7FABA88();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v16 = v68 - v15;
  v17 = sub_1A7FABAA8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v73 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (v68 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = v68 - v25;
  v27 = *(a3 - 8);
  v28 = MEMORY[0x1EEE9AC00](v24);
  v71 = v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v89 = v68 - v30;
  v32 = *(v31 + 16);
  v82 = a2;
  v81 = v31 + 16;
  v80 = v32;
  v32(v26, a2, TupleTypeMetadata2);
  *&v87 = *(TupleTypeMetadata2 + 48);
  v33 = *(v26 + 1);
  v86 = *v26;
  v93 = v86;
  v94 = v33;
  WitnessTable = swift_getWitnessTable();
  v74 = v17;
  v72 = WitnessTable;
  sub_1A7FABA48();
  v35 = *(v27 + 48);
  v88 = a3;
  if (v35(v16, 1, a3) == 1)
  {
    (*(v75 + 8))(v16, v76);
    swift_unknownObjectRelease();
    return (*(*(a4 - 8) + 8))(&v26[v87], a4);
  }

  *&v86 = a10;
  v76 = a9;
  v69 = v27;
  (*(v27 + 32))(v89, v16, v88);
  swift_unknownObjectRelease();
  v70 = *(a4 - 8);
  v37 = *(v70 + 8);
  v37(&v26[v87], a4);
  v80(v23, v82, TupleTypeMetadata2);
  v39 = *v23;
  v38 = v23[1];
  v40 = v23[2];
  v41 = v23[3];
  v37(v23 + *(TupleTypeMetadata2 + 48), a4);
  v42 = v77;
  v43 = swift_allocObject();
  v43[2] = v88;
  v43[3] = a4;
  v75 = a4;
  v44 = v84;
  v43[4] = v83;
  v43[5] = v44;
  v45 = v85;
  v43[6] = v42;
  v43[7] = v45;
  v46 = v86;
  v43[8] = v76;
  v43[9] = v46;
  *&v91 = v39;
  *(&v91 + 1) = v38;
  *&v92 = v40;
  *(&v92 + 1) = v41;
  swift_unknownObjectRetain();
  v68[1] = v39;
  v47 = sub_1A7FABA98();
  if (__OFADD__(v47, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v95 = v47 + 1;
  sub_1A7FABA58();
  v48 = v94;
  v87 = v93;
  v49 = v73;
  v80(v73, v82, TupleTypeMetadata2);
  swift_unknownObjectRelease();
  v50 = v70;
  v51 = &v49[*(TupleTypeMetadata2 + 48)];
  v52 = v79;
  v53 = v75;
  (*(v70 + 32))(v79, v51, v75);
  (*(v50 + 56))(v52, 0, 1, v53);
  v91 = v87;
  v92 = v48;
  v54 = swift_allocObject();
  v55 = v88;
  v54[2] = v88;
  v54[3] = v53;
  v56 = v84;
  v54[4] = v83;
  v54[5] = v56;
  v57 = v85;
  v54[6] = v42;
  v54[7] = v57;
  v58 = v86;
  v54[8] = v76;
  v54[9] = v58;
  v54[10] = sub_1A7F5BD58;
  v54[11] = v43;
  v59 = v78;
  LODWORD(v86) = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v59;
  v95 = v60;
  *&v87 = sub_1A7F5A7AC(v89, v55, v42);
  if (__OFADD__(*(v60 + 16), (v61 & 1) == 0))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = sub_1A7FABBF8();
    __break(1u);
    return result;
  }

  v62 = v61;
  v90 = v42;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FABB18();
  v63 = sub_1A7FABAF8();
  v64 = v95;
  if (v63)
  {
    *&v87 = sub_1A7F5A7AC(v89, v55, v42);
    if ((v62 & 1) != (v65 & 1))
    {
      goto LABEL_13;
    }
  }

  v66 = v69;
  v67 = v89;
  *v78 = v64;
  if ((v62 & 1) == 0)
  {
    v95 = (v54[10])();
    (*(v66 + 16))(v71, v67, v55);
    sub_1A7FABB08();
  }

  sub_1A7FAB8D8();
  swift_unknownObjectRelease();
  (*(v66 + 8))(v67, v55);
}

unint64_t sub_1A7F5675C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A7FABAA8();
  swift_getTupleTypeMetadata2();
  v4 = sub_1A7FAB938();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1A7F5AA00(v4, v3, a2, WitnessTable);

  return v6;
}

uint64_t sub_1A7F56810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a1;
  v31 = a6;
  v32 = a8;
  v27 = a7;
  v28 = a10;
  v29 = a9;
  v30 = a5;
  v34[0] = a3;
  v34[1] = a4;
  v26 = a4;
  v34[2] = a5;
  v34[3] = a6;
  v34[4] = a7;
  v34[5] = a8;
  v34[6] = a9;
  v34[7] = a10;
  v13 = type metadata accessor for StandardTrieNode(255, v34);
  v14 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v25 - v15;
  sub_1A7FABAA8();
  v34[9] = a7;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = *(v18 + 16);
  v22(&v25 - v23, a2, TupleTypeMetadata2);

  v22(v21, a2, TupleTypeMetadata2);
  sub_1A7F546F8(*&v21[*(TupleTypeMetadata2 + 48)], a3, v26, v30, v31, v27, v32, v29, v16, v28);
  (*(*(a3 - 8) + 8))(v21, a3);
  (*(*(v13 - 8) + 56))(v16, 0, 1, v13);
  sub_1A7FAB8A8();
  return sub_1A7FAB8D8();
}

uint64_t sub_1A7F56ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v38 = a6;
  v39 = a8;
  v42 = a3;
  v43 = a7;
  v37 = a5;
  v13 = *(a4 - 8);
  v48 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7FABA88();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v36 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v21 = &v36 - v20;
  v22 = *(v19 + 48);
  v46 = v16;
  v23 = *(v16 + 16);
  v40 = a1;
  v23(&v36 - v20, a1, v15);
  v41 = a2;
  v23(&v21[v22], a2, v15);
  v47 = v13;
  v24 = *(v13 + 48);
  if (v24(v21, 1, a4) != 1)
  {
    v26 = v45;
    v23(v45, v21, v15);
    if (v24(&v21[v22], 1, a4) != 1)
    {
      v28 = v47;
      v29 = &v21[v22];
      v30 = v36;
      (*(v47 + 32))(v36, v29, a4);
      v25 = v48;
      v31 = sub_1A7FAB908();
      v32 = *(v28 + 8);
      v32(v30, a4);
      v32(v26, a4);
      (*(v46 + 8))(v21, v15);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v47 + 8))(v26, a4);
LABEL_6:
    (*(v44 + 8))(v21, TupleTypeMetadata2);
    return 0;
  }

  if (v24(&v21[v22], 1, a4) != 1)
  {
    goto LABEL_6;
  }

  (*(v46 + 8))(v21, v15);
  v25 = v48;
LABEL_10:
  v49[0] = v42;
  v49[1] = a4;
  v49[2] = v37;
  v49[3] = v38;
  v49[4] = v43;
  v49[5] = v39;
  v49[6] = a9;
  v49[7] = v25;
  v33 = *(type metadata accessor for StandardTrieNode(0, v49) + 84);
  v34 = *(v41 + v33);
  if (*(v40 + v33))
  {
    if (v34)
    {

      swift_getWitnessTable();
      v35 = sub_1A7FAB8B8();

      if (v35)
      {
        return 1;
      }
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A7F56F14(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v15 = *(a2 + 16);
  v16 = v4;
  v23 = v15;
  v18 = *(a2 + 24);
  v24 = v18;
  v25 = v4;
  v5 = *(a2 + 48);
  v17 = *(a2 + 64);
  v14 = v5;
  v26 = v5;
  v27 = v17;
  type metadata accessor for StandardTrieNode.CodingKeys(255, &v23);
  swift_getWitnessTable();
  v6 = sub_1A7FABBD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v19;
  sub_1A7FABC58();
  LOBYTE(v23) = 0;
  v11 = v20;
  sub_1A7FABBB8();
  if (!v11)
  {
    v23 = *(v10 + *(a2 + 84));
    v28 = 1;
    sub_1A7FAB8A8();
    WitnessTable = swift_getWitnessTable();
    v21 = v16;
    v22 = WitnessTable;
    swift_getWitnessTable();
    sub_1A7FABBB8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A7F57160@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v44 = a8;
  v43 = a5;
  v32 = a9;
  v42 = a10;
  v35 = sub_1A7FABA88();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v40 = &v31 - v18;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a7;
  v54 = a8;
  v55 = a10;
  type metadata accessor for StandardTrieNode.CodingKeys(255, &v48);
  swift_getWitnessTable();
  v41 = sub_1A7FABB98();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v20 = &v31 - v19;
  v36 = a2;
  v37 = a4;
  v48 = a2;
  v49 = a3;
  v38 = a3;
  v50 = a4;
  v51 = v43;
  v33 = a6;
  v52 = a6;
  v53 = a7;
  v43 = a7;
  v54 = v44;
  v55 = v42;
  v21 = type metadata accessor for StandardTrieNode(0, &v48);
  v42 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v44 = v20;
  v24 = v45;
  sub_1A7FABC48();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = a1;
  v25 = v37;
  v26 = v34;
  v27 = v35;
  LOBYTE(v48) = 0;
  sub_1A7FABB68();
  (*(v26 + 32))(v23, v40, v27);
  sub_1A7FAB8A8();
  v56 = 1;
  WitnessTable = swift_getWitnessTable();
  v46 = v25;
  v47 = WitnessTable;
  swift_getWitnessTable();
  sub_1A7FABB68();
  (*(v39 + 8))(v44, v41);
  *&v23[*(v21 + 84)] = v48;
  v29 = v42;
  (*(v42 + 16))(v32, v23, v21);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return (*(v29 + 8))(v23, v21);
}

uint64_t sub_1A7F575E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v58 = a1;
  v59 = a2;
  v60 = a4;
  v61 = a8;
  v62 = a9;
  v63 = a10;
  v16 = type metadata accessor for StringTrieNode(0, &v60);
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v43 - v17;
  v60 = a3;
  v61 = a4;
  v62 = a5;
  v63 = a6;
  v64 = a7;
  v65 = a8;
  v66 = a9;
  v67 = a10;
  v18 = type metadata accessor for StandardTrieNode(0, &v60);
  v51 = *(v18 - 8);
  v52 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v43 - v19;
  v46 = a3;
  v60 = a3;
  v61 = a4;
  v56 = a4;
  v57 = a8;
  v47 = a5;
  v48 = a6;
  v62 = a5;
  v63 = a6;
  v49 = a7;
  v64 = a7;
  v65 = a8;
  v66 = a9;
  v67 = a10;
  v55 = a10;
  v20 = type metadata accessor for Trie.RootNode(0, &v60);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v43 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v30 = &v43 - v29;
  v31 = *(v28 + 48);
  v32 = *(v21 + 16);
  v32(&v43 - v29, v58, v20);
  v32(&v30[v31], v59, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32(v24, v30, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = v53;
      v33 = v54;
      v35 = v45;
      (*(v53 + 32))(v45, &v30[v31], v54);
      v36 = sub_1A7F55094(v24, v35, v56, v57, a9, v55);
      v37 = *(v34 + 8);
      v37(v35, v33);
      v37(v24, v33);
      goto LABEL_10;
    }

    (*(v53 + 8))(v24, v54);
LABEL_7:
    v36 = 0;
    v21 = v50;
    v20 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v32(v26, v30, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v51 + 8))(v26, v52);
    goto LABEL_7;
  }

  v39 = v51;
  v38 = v52;
  v40 = v44;
  (*(v51 + 32))(v44, &v30[v31], v52);
  v36 = sub_1A7F56ADC(v26, v40, v46, v56, v47, v48, v49, v57, a9, v55);
  v41 = *(v39 + 8);
  v41(v40, v38);
  v41(v26, v38);
LABEL_10:
  (*(v21 + 8))(v30, v20);
  return v36 & 1;
}

uint64_t sub_1A7F57A88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A7FABBE8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A7FABBE8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A7F57B50(char a1)
{
  if (a1)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1A7F57B84(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701080942 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A7FABBE8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A7F57BFC(void *a1, void *a2)
{
  v71 = a2;
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v60 = a2[5];
  v61 = a1;
  v5 = a2[7];
  v59 = a2[6];
  v7 = a2[8];
  v6 = a2[9];
  v63 = v2;
  v64 = v3;
  v65 = v4;
  v66 = v60;
  v8 = v4;
  v67 = v59;
  v68 = v5;
  v69 = v7;
  v70 = v6;
  v9 = v6;
  v51 = type metadata accessor for Trie.RootNode.StringCodingKeys(255, &v63);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A7FABBD8();
  v55 = *(v10 - 8);
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = v42 - v11;
  v63 = v3;
  v64 = v5;
  v65 = v7;
  v66 = v9;
  v12 = v9;
  v54 = type metadata accessor for StringTrieNode(0, &v63);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v49 = v42 - v13;
  v63 = v2;
  v64 = v3;
  v57 = v3;
  v58 = v2;
  v65 = v8;
  v14 = v8;
  v16 = v59;
  v15 = v60;
  v66 = v60;
  v67 = v59;
  v68 = v5;
  v69 = v7;
  v70 = v12;
  v17 = v12;
  v18 = type metadata accessor for Trie.RootNode.StandardCodingKeys(255, &v63);
  v19 = swift_getWitnessTable();
  v44 = v18;
  v42[1] = v19;
  v48 = sub_1A7FABBD8();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v42 - v20;
  v63 = v2;
  v64 = v3;
  v65 = v14;
  v66 = v15;
  v21 = v15;
  v67 = v16;
  v68 = v5;
  v22 = v16;
  v69 = v7;
  v70 = v17;
  v45 = type metadata accessor for StandardTrieNode(0, &v63);
  v43 = *(v45 - 8);
  v23 = MEMORY[0x1EEE9AC00](v45);
  v42[0] = v42 - v24;
  v25 = *(v71 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v58;
  v64 = v57;
  v65 = v14;
  v66 = v21;
  v67 = v22;
  v68 = v5;
  v69 = v7;
  v70 = v17;
  type metadata accessor for Trie.RootNode.CodingKeys(255, &v63);
  swift_getWitnessTable();
  v28 = sub_1A7FABBD8();
  v60 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v42 - v29;
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  sub_1A7FABC58();
  (*(v25 + 16))(v27, v62, v71);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v52;
    v32 = v49;
    v33 = v54;
    (*(v52 + 32))(v49, v27, v54);
    LOBYTE(v63) = 1;
    v34 = v53;
    sub_1A7FABBA8();
    swift_getWitnessTable();
    v35 = v56;
    sub_1A7FABBC8();
    (*(v55 + 8))(v34, v35);
    (*(v31 + 8))(v32, v33);
  }

  else
  {
    v36 = v43;
    v37 = v42[0];
    v38 = v45;
    (*(v43 + 32))(v42[0], v27, v45);
    LOBYTE(v63) = 0;
    v39 = v46;
    sub_1A7FABBA8();
    swift_getWitnessTable();
    v40 = v48;
    sub_1A7FABBC8();
    (*(v47 + 8))(v39, v40);
    (*(v36 + 8))(v37, v38);
  }

  return (*(v60 + 8))(v30, v28);
}

uint64_t sub_1A7F582AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v92 = a1;
  v77 = a9;
  *&v86 = a2;
  *(&v86 + 1) = a3;
  *&v87 = a4;
  *(&v87 + 1) = a5;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v75 = type metadata accessor for Trie.RootNode.StringCodingKeys(255, &v86);
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1A7FABB98();
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v78 = &v57 - v17;
  *&v86 = a2;
  *(&v86 + 1) = a3;
  *&v87 = a4;
  *(&v87 + 1) = a5;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  v18 = type metadata accessor for Trie.RootNode.StandardCodingKeys(255, &v86);
  v19 = swift_getWitnessTable();
  v72 = v18;
  v71 = v19;
  v62 = sub_1A7FABB98();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v73 = &v57 - v20;
  *&v86 = a2;
  *(&v86 + 1) = a3;
  *&v87 = a4;
  *(&v87 + 1) = a5;
  v88 = a6;
  v89 = a7;
  v90 = a8;
  v91 = a10;
  type metadata accessor for Trie.RootNode.CodingKeys(255, &v86);
  v82 = swift_getWitnessTable();
  v21 = sub_1A7FABB98();
  v80 = *(v21 - 8);
  v81 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v63 = a2;
  *&v86 = a2;
  *(&v86 + 1) = a3;
  v69 = a3;
  v23 = &v57 - v22;
  v64 = a4;
  *&v87 = a4;
  *(&v87 + 1) = a5;
  v66 = a5;
  v67 = a6;
  v88 = a6;
  v89 = a7;
  v76 = a7;
  v79 = a8;
  v90 = a8;
  v91 = a10;
  v70 = a10;
  v24 = type metadata accessor for Trie.RootNode(0, &v86);
  v60 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v57 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v57 - v31;
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v33 = v83;
  sub_1A7FABC48();
  if (!v33)
  {
    v59 = v27;
    v82 = v30;
    v58 = v32;
    v83 = v24;
    v35 = v78;
    v34 = v79;
    *&v86 = sub_1A7FABB88();
    sub_1A7FAB978();
    swift_getWitnessTable();
    *&v84 = sub_1A7FABAB8();
    *(&v84 + 1) = v36;
    *&v85 = v37;
    *(&v85 + 1) = v38;
    sub_1A7FABAA8();
    swift_getWitnessTable();
    sub_1A7FABA38();
    v39 = v86;
    if (v86 == 2 || (v57 = v84, v86 = v84, v87 = v85, (sub_1A7FABA68() & 1) == 0))
    {
      v43 = sub_1A7FABAE8();
      swift_allocError();
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB2DCAE0, qword_1A7FB1BE8);
      *v45 = v83;
      v46 = v81;
      sub_1A7FABB58();
      sub_1A7FABAD8();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v80 + 8))(v23, v46);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v39)
      {
        LOBYTE(v86) = 1;
        v40 = v35;
        v41 = v81;
        sub_1A7FABB48();
        v42 = v77;
        *&v86 = v69;
        *(&v86 + 1) = v76;
        *&v87 = v34;
        *(&v87 + 1) = v70;
        type metadata accessor for StringTrieNode(0, &v86);
        swift_getWitnessTable();
        v50 = v59;
        v51 = v68;
        sub_1A7FABB78();
        v52 = v80;
        (*(v65 + 8))(v40, v51);
        (*(v52 + 8))(v23, v41);
      }

      else
      {
        LOBYTE(v86) = 0;
        v47 = v73;
        v48 = v81;
        sub_1A7FABB48();
        v42 = v77;
        *&v86 = v63;
        *(&v86 + 1) = v69;
        *&v87 = v64;
        *(&v87 + 1) = v66;
        v88 = v67;
        v89 = v76;
        v90 = v34;
        v91 = v70;
        type metadata accessor for StandardTrieNode(0, &v86);
        swift_getWitnessTable();
        v50 = v82;
        v49 = v62;
        sub_1A7FABB78();
        (*(v61 + 8))(v47, v49);
        (*(v80 + 8))(v23, v48);
      }

      swift_unknownObjectRelease();
      v54 = v83;
      swift_storeEnumTagMultiPayload();
      v55 = *(v60 + 32);
      v56 = v58;
      v55(v58, v50, v54);
      v55(v42, v56, v54);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v92);
}

uint64_t sub_1A7F58C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F58CE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F58E5C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void, void, void, void, void))
{
  sub_1A7FABC18();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F58F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9]);
  *a5 = result;
  return result;
}

uint64_t sub_1A7F58F88@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_1A7F58FCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F59020(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F590A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F590F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A7F5914C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7F57B84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A7F59198(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F591EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Trie.init(dictionary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[10] = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  swift_getTupleTypeMetadata2();
  v16 = sub_1A7FAB938();
  v17 = sub_1A7F5ACEC();
  v18 = sub_1A7F5AA00(v16, v15, a3, v17);

  v23[9] = v18;
  sub_1A7FAB8A8();
  sub_1A7FAB8A8();
  swift_getWitnessTable();
  sub_1A7FAB928();

  sub_1A7F53C48(v23[0], a3, a7, a8, a10, a9);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  type metadata accessor for Trie.RootNode(0, v23);
  return swift_storeEnumTagMultiPayload();
}

{
  v23[12] = a1;
  v14 = sub_1A7FABAA8();
  swift_getTupleTypeMetadata2();
  v15 = sub_1A7FAB938();
  v23[11] = a6;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1A7F5AA00(v15, v14, a3, WitnessTable);

  v23[10] = v17;
  sub_1A7FAB978();
  v23[8] = a6;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FAB8A8();
  swift_getWitnessTable();
  sub_1A7FAB928();

  sub_1A7F546F8(v23[0], a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v23[6] = a8;
  v23[7] = a10;
  type metadata accessor for Trie.RootNode(0, v23);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A7F59474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v6 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v22 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *(v9 + 16);
  v15(&v22 - v13, a2, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  v16 = sub_1A7FAB918();

  v17 = *(v16 + 16);
  v22 = v16 + 32;
  v18 = (2 * v17) | 1;
  v15(v12, a2, TupleTypeMetadata2);

  v19 = *(a4 - 8);
  v20 = v23;
  (*(v19 + 32))(v23, &v12[*(TupleTypeMetadata2 + 48)], a4);
  (*(v19 + 56))(v20, 0, 1, a4);
  v26 = v16;
  v27 = v22;
  v28 = 0;
  v29 = v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
  sub_1A7F5ACEC();
  sub_1A7FAB8A8();
  sub_1A7FAB8D8();
  return (*(v19 + 8))(&v14[v24], a4);
}

uint64_t sub_1A7F5993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a1;
  v30 = a3;
  v31 = a7;
  v27 = a2;
  v9 = sub_1A7FABA88();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v28 = &v26 - v10;
  sub_1A7FAB978();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = *(v12 + 16);
  v18(&v26 - v16, a2, TupleTypeMetadata2);
  v19 = *v17;
  v29 = *(TupleTypeMetadata2 + 48);
  v40 = v19;
  swift_getWitnessTable();
  sub_1A7FAB8F8();

  v20 = v38;
  v21 = v39;
  v26 = v37;
  v18(v15, v27, TupleTypeMetadata2);

  v22 = *(a4 - 8);
  v23 = &v15[*(TupleTypeMetadata2 + 48)];
  v24 = v28;
  (*(v22 + 32))(v28, v23, a4);
  (*(v22 + 56))(v24, 0, 1, a4);
  v34 = v26;
  v35 = v20;
  v36 = v21;
  sub_1A7FABAA8();
  v33 = v31;
  swift_getWitnessTable();
  sub_1A7FAB8A8();
  sub_1A7FAB8D8();
  return (*(v22 + 8))(&v17[v29], a4);
}

uint64_t Trie.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v21 = a1;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v8 = a2[6];
  v7 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v26 = a2[2];
  v3 = v26;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v8;
  v31 = v7;
  v32 = v9;
  v33 = v10;
  v11 = type metadata accessor for StandardTrieNode(0, &v26);
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v30 = v8;
  v31 = v7;
  v32 = v9;
  v33 = v10;
  v14 = type metadata accessor for Trie.RootNode(0, &v26);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v15 + 16))(&v20 - v16, v23, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v4 - 8) + 56))(v24, 1, 1, v4);
    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v19 = v22;
    (*(v22 + 32))(v13, v17, v11);
    v25 = v21;
    sub_1A7FAB978();
    swift_getWitnessTable();
    sub_1A7FAB8F8();
    sub_1A7F54C50(v26, v27, v28, v29, v11, v24);
    swift_unknownObjectRelease();
    return (*(v19 + 8))(v13, v11);
  }
}

uint64_t sub_1A7F59EF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65646F4E746F6F72 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1A7FABBE8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1A7F59F70()
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](0);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F59FB4(uint64_t a1)
{
  sub_1A7FABC18();
  MEMORY[0x1AC565C70](0);
  return sub_1A7FABC38();
}

uint64_t sub_1A7F5A00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7F59EF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A7F5A058@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1A7F5A0A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A7F5A0F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Trie.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[5];
  v18 = a2[4];
  v19 = v3;
  v6 = a2[7];
  v16 = a2[6];
  v17 = v5;
  v7 = a2[9];
  v14 = a2[8];
  v15 = v6;
  v13 = v7;
  v20 = v4;
  v21 = v3;
  v22 = v18;
  v23 = v5;
  v24 = v16;
  v25 = v6;
  v26 = v14;
  v27 = v7;
  type metadata accessor for Trie.CodingKeys(255, &v20);
  swift_getWitnessTable();
  v8 = sub_1A7FABBD8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A7FABC58();
  v20 = v4;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  v26 = v14;
  v27 = v13;
  type metadata accessor for Trie.RootNode(0, &v20);
  swift_getWitnessTable();
  sub_1A7FABBC8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t Trie.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v40 = a1;
  v41 = a2;
  v32 = a9;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v38 = a8;
  v48 = a10;
  v17 = type metadata accessor for Trie.RootNode(0, &v41);
  v34 = *(v17 - 8);
  v35 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v31 - v18;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a8;
  v48 = a10;
  type metadata accessor for Trie.CodingKeys(255, &v41);
  WitnessTable = swift_getWitnessTable();
  v37 = sub_1A7FABB98();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v20 = &v31 - v19;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = v38;
  v48 = a10;
  v21 = v40;
  v22 = type metadata accessor for Trie(0, &v41);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v31 - v24;
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v38 = v20;
  v26 = v49;
  sub_1A7FABC48();
  if (!v26)
  {
    WitnessTable = v22;
    v49 = v23;
    v27 = v33;
    v28 = v34;
    v29 = v35;
    swift_getWitnessTable();
    sub_1A7FABB78();
    (*(v27 + 8))(v38, v37);
    (*(v28 + 32))(v25, v36, v29);
    (*(v49 + 32))(v32, v25, WitnessTable);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1A7F5A764(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1AC565C50](*(v1 + 40), a1, 1);

  return sub_1A7F5A808(v2, v3);
}

unint64_t sub_1A7F5A7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A7FAB8E8();

  return sub_1A7F5A878(a1, v6, a2, a3);
}

unint64_t sub_1A7F5A808(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A7F5A878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1A7FAB908();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1A7F5AA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1A7FAB958())
  {
    sub_1A7FABB38();
    v13 = sub_1A7FABB28();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1A7FAB958();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1A7FAB948())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1A7FABAC8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1A7F5A7AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_1A7F5ACEC()
{
  result = qword_1EB2DCA58[0];
  if (!qword_1EB2DCA58[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2DCA50, &qword_1A7FB1840);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB2DCA58);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_1A7F5AEB0(_OWORD *a1)
{
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v2 = a1[4];
  v5[2] = a1[3];
  v5[3] = v2;
  result = type metadata accessor for Trie.RootNode(319, v5);
  if (v4 <= 0x3F)
  {
    v6 = 0;
    *&v5[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A7F5AF44(uint64_t a1)
{
  result = sub_1A7FABA88();
  if (v2 <= 0x3F)
  {
    sub_1A7FAB8A8();
    result = sub_1A7FABA88();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5AFE4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 24) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A7F5B15C(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 24) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1A7F5B3B8(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = v7;
  v10 = *(a1 + 40);
  v11 = v1;
  v12 = v2;
  v13 = v3;
  result = type metadata accessor for StandardTrieNode(319, &v8);
  if (v5 <= 0x3F)
  {
    v14 = result;
    v8 = v7;
    *&v9 = v1;
    *(&v9 + 1) = v2;
    *&v10 = v3;
    result = type metadata accessor for StringTrieNode(319, &v8);
    if (v6 <= 0x3F)
    {
      v15 = result;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5B478(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 9;
  if ((v5 + 9) <= 3)
  {
    v7 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *&a1[v6];
      if (*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *&a1[v6];
      if (v10)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v14 = a1[v5 + 8];
    if (v14 >= 2)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = a1[v6];
  if (!a1[v6])
  {
    goto LABEL_28;
  }

LABEL_24:
  v12 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return (v13 | v12) + 255;
}

void sub_1A7F5B590(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + 9;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_17;
    }

LABEL_25:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      *&a1[v8] = 0;
    }

    else if (v11)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_35:
      a1[v7 + 8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_25;
  }

LABEL_17:
  v12 = a2 - 255;
  v13 = (a2 - 255) >> 8;
  bzero(a1, v7 + 9);
  if (v8 <= 3)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_22:
      if (v11 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_22;
    }
  }

  if (v11)
  {
    a1[v8] = v14;
  }
}

uint64_t sub_1A7F5B728(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1A7FABA88();
  if (v4 <= 0x3F)
  {
    v10 = 0;
    v12 = result;
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E7230];
    v7[1] = v2;
    v7[2] = MEMORY[0x1E69E7250];
    v7[3] = MEMORY[0x1E69E7238];
    v7[4] = MEMORY[0x1E69E7240];
    v8 = *(a1 + 24);
    v9 = v5;
    type metadata accessor for StandardTrieNode(255, v7);
    sub_1A7FAB8A8();
    result = sub_1A7FABA88();
    if (v6 <= 0x3F)
    {
      v11 = 0;
      v13 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A7F5B81C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_1A7F5B994(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFE)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v22 = 0;
      *v22 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v22 = a2;
    }
  }

  else if (v7 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_1A7F5BDCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A7F5BE5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A7F5BF0C(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1A7F5BF5C(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

id corruptionError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The lazy plist archive is corrupt: %@", v3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v5 setObject:@"The lazy plist archive is corrupt." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v6 copy];
  v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:4 userInfo:v9];

  return v10;
}

void sub_1A7F5F9F8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A7F60C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F60E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F613F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id notPLPlistError(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_new();
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The file is not a lazy plist archive: %@", v3];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  else
  {
    [v5 setObject:@"The file is not a lazy plist archive." forKeyedSubscript:*MEMORY[0x1E696A578]];
  }

  [v6 setObject:v3 forKeyedSubscript:*MEMORY[0x1E696A588]];

  [v6 setObject:v4 forKeyedSubscript:*MEMORY[0x1E696A368]];
  v8 = objc_alloc(MEMORY[0x1E696ABC0]);
  v9 = [v6 copy];
  v10 = [v8 initWithDomain:@"_PASLazyPlistErrorDomain" code:2 userInfo:v9];

  return v10;
}

void sub_1A7F62714(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1A7F62A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _PASEnumerateSimpleLinesInString(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (![v5 length])
  {
    goto LABEL_38;
  }

  v7 = v5;
  v8 = objc_opt_self();

  if (!v8)
  {
    goto LABEL_37;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  Length = CFStringGetLength(v7);
  theString = v7;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v7);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  }

  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  if (Length <= 0)
  {
LABEL_37:

    goto LABEL_38;
  }

  v32 = v7;
  v33 = v5;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v34 = v6;
  v16 = 64;
  do
  {
    if (v15 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v15;
    }

    v18 = v47;
    if (v47 <= v15)
    {
      ++v14;
      goto LABEL_22;
    }

    if (v44)
    {
      v19 = &v44[v46];
LABEL_13:
      v20 = v19[v15];
      goto LABEL_17;
    }

    if (!v45)
    {
      v25 = v48;
      if (v49 <= v15 || v48 > v15)
      {
        v27 = v17 + v12;
        v28 = v16 - v17;
        v29 = v15 - v17;
        v30 = v29 + 64;
        if (v29 + 64 >= v47)
        {
          v30 = v47;
        }

        v48 = v29;
        v49 = v30;
        if (v47 >= v28)
        {
          v18 = v28;
        }

        v50.location = v29 + v46;
        v50.length = v18 + v27;
        CFStringGetCharacters(theString, v50, buffer);
        v25 = v48;
      }

      v19 = &buffer[-v25];
      goto LABEL_13;
    }

    v20 = v45[v46 + v15];
LABEL_17:
    ++v14;
    if (v20 == 10)
    {
      if ((a3 & 1) != 0 || v14 - v13 >= 2)
      {
        v21 = a3;
        v22 = objc_autoreleasePoolPush();
        v23 = v34[2](v34, v13, v14 - v13);
        v24 = v22;
        a3 = v21;
        objc_autoreleasePoolPop(v24);
        v13 = v14;
        if ((v23 & 1) == 0)
        {
          v7 = v32;
          v5 = v33;
          v6 = v34;
          goto LABEL_37;
        }
      }

      else
      {
        v13 = v14;
      }
    }

LABEL_22:
    ++v15;
    --v12;
    ++v16;
  }

  while (Length != v15);

  v5 = v33;
  v6 = v34;
  if (v14 > v13)
  {
    v31 = objc_autoreleasePoolPush();
    v34[2](v34, v13, v14 - v13);
    v6 = v34;
    objc_autoreleasePoolPop(v31);
  }

LABEL_38:
}

void _PASEnumerateSimpleLinesInUTF8Data(void *a1, void *a2, char a3)
{
  v18 = a1;
  v5 = a2;
  if (![v18 length])
  {
    goto LABEL_14;
  }

  v6 = v18;
  v7 = [v18 bytes];
  v8 = [v18 length];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v11 + 1;
    if (*(v7 + v11) != 10)
    {
      v13 = v10;
LABEL_10:
      v10 = v13;
      goto LABEL_11;
    }

    v13 = v11 + 1;
    v14 = v11 - v10 + 1;
    if ((a3 & 1) == 0 && v14 < 2)
    {
      goto LABEL_10;
    }

    v15 = objc_autoreleasePoolPush();
    v16 = v5[2](v5, v10, v14);
    objc_autoreleasePoolPop(v15);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_11:
    v11 = v12;
  }

  while (v9 != v12);
  if (v9 > v10)
  {
    v17 = objc_autoreleasePoolPush();
    v5[2](v5, v10, v9 - v10);
    objc_autoreleasePoolPop(v17);
  }

LABEL_14:
}

id _PASBytesToHex(char *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a2;
    v3 = a1;
    v4 = (2 * a2) | 1;
    memptr = 0;
    v21 = 0;
    if (v4 > 0x400)
    {
      v17 = malloc_type_posix_memalign(&memptr, 8uLL, v4, 0xB02EA422uLL);
      LOBYTE(v21) = 0;
      if (v17)
      {
        v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
        objc_exception_throw(v18);
      }

      v5 = memptr;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
      memptr = v5;
      LOBYTE(v21) = 1;
    }

    v6 = 2 * v2;
    v7 = v21;
    if (v2)
    {
      v8 = v5 + 1;
      do
      {
        if (*v3 >= 0xA0u)
        {
          v9 = (*v3 >> 4) + 87;
        }

        else
        {
          v9 = (*v3 >> 4) | 0x30;
        }

        *(v8 - 1) = v9;
        v10 = *v3++;
        v11 = v10 & 0xF;
        v12 = v10 & 0xF | 0x30;
        v13 = v11 + 87;
        if (v11 < 0xA)
        {
          v13 = v12;
        }

        *v8 = v13;
        v8 += 2;
        --v2;
      }

      while (v2);
    }

    v5[v6] = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v5 bufferSize:v7 encoding:v4 nullTerminated:1 isExternalRepresentation:{1, 0}];
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

_BYTE *_PASHexToBytes(_BYTE *result, unint64_t a2, size_t *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2 >> 1;
    if (a3)
    {
      *a3 = v5;
    }

    result = malloc_type_malloc(v5, 0x5F9CEFA9uLL);
    if (!result)
    {
      v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v16);
    }

    if (a2)
    {
      v6 = 0;
      v7 = v4 + 1;
      do
      {
        v8 = *(v7 - 1);
        if (v8 >= 58)
        {
          v9 = 9;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9 + v8;
        v12 = *v7;
        v7 += 2;
        v11 = v12;
        v13 = v12;
        if (v12 >= 0x47)
        {
          v14 = -87;
        }

        else
        {
          v14 = -55;
        }

        if (v13 >= 58)
        {
          v15 = v14;
        }

        else
        {
          v15 = -48;
        }

        result[v6++] = v15 + v11 + 16 * v10;
      }

      while (((a2 - 1) >> 1) + 1 != v6);
    }
  }

  return result;
}

uint64_t _PASIsAllDigits(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v1;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v10 = 4;
        }

        else
        {
          v10 = v8;
        }

        v11 = v26;
        if (v26 <= v8)
        {
LABEL_29:
          v19 = 0;
          goto LABEL_30;
        }

        if (v23)
        {
          break;
        }

        if (!v24)
        {
          if (v28 <= v8 || v7 > v8)
          {
            v15 = v10 + v6;
            v16 = v9 - v10;
            v17 = v8 - v10;
            v18 = v17 + 64;
            if (v17 + 64 >= v26)
            {
              v18 = v26;
            }

            v27 = v17;
            v28 = v18;
            if (v26 >= v16)
            {
              v11 = v16;
            }

            v29.location = v17 + v25;
            v29.length = v11 + v15;
            CFStringGetCharacters(theString, v29, v21);
            v7 = v27;
          }

          v12 = v21 - v7;
          goto LABEL_12;
        }

        v13 = v24[v25 + v8];
LABEL_15:
        if ((v13 - 48) >= 0xAu)
        {
          goto LABEL_29;
        }

        ++v8;
        --v6;
        ++v9;
        if (Length == v8)
        {
          goto LABEL_28;
        }
      }

      v12 = &v23[v25];
LABEL_12:
      v13 = v12[v8];
      goto LABEL_15;
    }
  }

LABEL_28:
  v19 = 1;
LABEL_30:

  return v19;
}

uint64_t _PASIsAllUppercase(void *a1)
{
  v1 = a1;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  v3 = v1;
  v4 = objc_opt_self();

  if (v4)
  {
    memset(v23, 0, sizeof(v23));
    Length = CFStringGetLength(v3);
    theString = v3;
    v27 = 0;
    v28 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v25 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v29 = 0;
    v30 = 0;
    v26 = CStringPtr;
    if (Length >= 1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 64;
      do
      {
        if (v9 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v9;
        }

        v12 = v28;
        if (v28 <= v9)
        {
          v14 = 0;
        }

        else
        {
          if (v25)
          {
            v13 = &v25[v27];
LABEL_12:
            v14 = v13[v9];
            goto LABEL_14;
          }

          if (!v26)
          {
            v15 = v29;
            if (v30 <= v9 || v29 > v9)
            {
              v17 = v11 + v8;
              v18 = v10 - v11;
              v19 = v9 - v11;
              v20 = v19 + 64;
              if (v19 + 64 >= v28)
              {
                v20 = v28;
              }

              v29 = v19;
              v30 = v20;
              if (v28 >= v18)
              {
                v12 = v18;
              }

              v31.location = v19 + v27;
              v31.length = v12 + v17;
              CFStringGetCharacters(theString, v31, v23);
              v15 = v29;
            }

            v13 = v23 - v15;
            goto LABEL_12;
          }

          v14 = v26[v27 + v9];
        }

LABEL_14:
        if (CFCharacterSetIsCharacterMember(Predefined, v14))
        {
          v21 = 0;
          goto LABEL_30;
        }

        ++v9;
        --v8;
        ++v10;
      }

      while (Length != v9);
    }
  }

  v21 = 1;
LABEL_30:

  return v21;
}

uint64_t _PASLooksLikeNumber(void *a1)
{
  v1 = a1;
  v2 = objc_opt_self();

  if (v2)
  {
    memset(v21, 0, sizeof(v21));
    Length = CFStringGetLength(v1);
    theString = v1;
    v25 = 0;
    v26 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v1);
    CStringPtr = 0;
    v23 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
    }

    v27 = 0;
    v28 = 0;
    v24 = CStringPtr;
    if (Length >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 64;
      while (1)
      {
        if (v8 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v8;
        }

        v12 = v26;
        if (v26 <= v8)
        {
          break;
        }

        if (v23)
        {
          v13 = &v23[v25];
        }

        else
        {
          if (v24)
          {
            v14 = v24[v25 + v8];
            goto LABEL_15;
          }

          if (v28 <= v8 || v7 > v8)
          {
            v16 = v11 + v6;
            v17 = v10 - v11;
            v18 = v8 - v11;
            v19 = v18 + 64;
            if (v18 + 64 >= v26)
            {
              v19 = v26;
            }

            v27 = v18;
            v28 = v19;
            if (v26 >= v17)
            {
              v12 = v17;
            }

            v29.location = v18 + v25;
            v29.length = v12 + v16;
            CFStringGetCharacters(theString, v29, v21);
            v7 = v27;
          }

          v13 = v21 - v7;
        }

        v14 = v13[v8];
LABEL_15:
        if (v14 - 48 >= 0xA)
        {
          if (v14 - 44 > 2)
          {
            break;
          }
        }

        else
        {
          v9 = 1;
        }

        ++v8;
        --v6;
        ++v10;
        if (Length == v8)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v9 = 0;
LABEL_31:

  return v9 & 1;
}

uint64_t _PASInsensitiveStringContainsString(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = _PASNormalizeUnicodeString(a1, 1);
  v5 = _PASNormalizeUnicodeString(v3, 1);

  v6 = [v4 containsString:v5];
  return v6;
}

id _PASNormalizeUnicodeString(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = fastNormalizeUnicodeString(v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _PASSimpleICUTransform(@"[^…] NFKD Latin-ASCII; [[:Nonspacing Mark:]&[:Zinh:]] Remove; NFC; Lower", v3, v2);;
  }

  v7 = v6;

  return v7;
}

__CFString *fastNormalizeUnicodeString(void *a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (CFStringGetFastestEncoding(v1) == 1536)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [(__CFString *)v1 lowercaseString];
    v4 = v2;
LABEL_3:
    objc_autoreleasePoolPop(v4);
    goto LABEL_40;
  }

  v5 = [(__CFString *)v1 length];
  v6 = v1;
  v7 = objc_opt_self();

  if (!v7)
  {
    goto LABEL_38;
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  buffer = 0u;
  Length = CFStringGetLength(v6);
  v71 = v6;
  v74 = 0;
  v75 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v72 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v76 = 0;
  v77 = 0;
  v73 = CStringPtr;
  if (Length <= 0)
  {
LABEL_38:

    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 64;
  while (1)
  {
    v16 = v14 >= 4 ? 4 : v14;
    v17 = v75;
    if (v75 > v14)
    {
      break;
    }

LABEL_35:
    ++v14;
    --v11;
    ++v15;
    if (Length == v14)
    {

      if (v13)
      {
        v27 = 2 * v5;
        buffer = 0uLL;
        if (((2 * v5) | 1uLL) > 0x400)
        {
          v59 = malloc_type_posix_memalign(&buffer, 8uLL, 2 * v5, 0x9A42C891uLL);
          BYTE8(buffer) = 0;
          if (v59)
          {
            v60 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
            objc_exception_throw(v60);
          }

          v29 = buffer;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v26);
          v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v29, v28);
          *&buffer = v29;
          BYTE8(buffer) = 1;
        }

        v30 = *(&buffer + 1);
        v31 = v6;
        v32 = objc_opt_self();

        if (v32)
        {
          v62 = v27;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          buffer = 0u;
          v33 = CFStringGetLength(v31);
          v71 = v31;
          v74 = 0;
          v75 = v33;
          v34 = CFStringGetCharactersPtr(v31);
          v35 = 0;
          v72 = v34;
          if (!v34)
          {
            v35 = CFStringGetCStringPtr(v31, 0x600u);
          }

          v76 = 0;
          v77 = 0;
          v73 = v35;
          if (v33 >= 1)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 64;
            while (1)
            {
              v40 = v37 >= 4 ? 4 : v37;
              v41 = v75;
              if (v75 > v37)
              {
                break;
              }

              v43 = 0;
LABEL_59:
              *&v29[2 * v38] = v43;
LABEL_60:
              ++v38;
LABEL_61:
              ++v37;
              --v36;
              ++v39;
              if (v33 == v37)
              {
                goto LABEL_150;
              }
            }

            if (v72)
            {
              v42 = &v72[v74];
            }

            else
            {
              if (v73)
              {
                v43 = v73[v74 + v37];
                goto LABEL_65;
              }

              v44 = v76;
              if (v77 <= v37 || v76 > v37)
              {
                v46 = v40 + v36;
                v47 = v39 - v40;
                v48 = v37 - v40;
                v49 = v48 + 64;
                if (v48 + 64 >= v75)
                {
                  v49 = v75;
                }

                v76 = v48;
                v77 = v49;
                if (v75 >= v47)
                {
                  v41 = v47;
                }

                v81.location = v48 + v74;
                v81.length = v41 + v46;
                CFStringGetCharacters(v71, v81, &buffer);
                v44 = v76;
              }

              v42 = &buffer - v44;
            }

            v43 = v42[v37];
LABEL_65:
            switch(v43)
            {
              case 65:
              case 170:
              case 192:
              case 193:
              case 194:
              case 195:
              case 196:
              case 197:
              case 224:
              case 225:
              case 226:
              case 227:
              case 228:
              case 229:
                v43 = 97;
                goto LABEL_59;
              case 66:
                v43 = 98;
                goto LABEL_59;
              case 67:
              case 199:
              case 231:
                v43 = 99;
                goto LABEL_59;
              case 68:
              case 208:
              case 240:
                v43 = 100;
                goto LABEL_59;
              case 69:
              case 200:
              case 201:
              case 202:
              case 203:
              case 232:
              case 233:
              case 234:
              case 235:
                v43 = 101;
                goto LABEL_59;
              case 70:
                v43 = 102;
                goto LABEL_59;
              case 71:
                v43 = 103;
                goto LABEL_59;
              case 72:
                v43 = 104;
                goto LABEL_59;
              case 73:
              case 204:
              case 205:
              case 206:
              case 207:
              case 236:
              case 237:
              case 238:
              case 239:
                v43 = 105;
                goto LABEL_59;
              case 74:
                v43 = 106;
                goto LABEL_59;
              case 75:
                v43 = 107;
                goto LABEL_59;
              case 76:
                v43 = 108;
                goto LABEL_59;
              case 77:
                v43 = 109;
                goto LABEL_59;
              case 78:
              case 209:
              case 241:
                v43 = 110;
                goto LABEL_59;
              case 79:
              case 186:
              case 210:
              case 211:
              case 212:
              case 213:
              case 214:
              case 216:
              case 242:
              case 243:
              case 244:
              case 245:
              case 246:
              case 248:
                v43 = 111;
                goto LABEL_59;
              case 80:
                v43 = 112;
                goto LABEL_59;
              case 81:
                v43 = 113;
                goto LABEL_59;
              case 82:
                v43 = 114;
                goto LABEL_59;
              case 83:
                v43 = 115;
                goto LABEL_59;
              case 84:
                v43 = 116;
                goto LABEL_59;
              case 85:
              case 217:
              case 218:
              case 219:
              case 220:
              case 249:
              case 250:
              case 251:
              case 252:
                v43 = 117;
                goto LABEL_59;
              case 86:
                v43 = 118;
                goto LABEL_59;
              case 87:
                v43 = 119;
                goto LABEL_59;
              case 88:
                v43 = 120;
                goto LABEL_59;
              case 89:
              case 221:
              case 253:
              case 255:
                v43 = 121;
                goto LABEL_59;
              case 90:
                v43 = 122;
                goto LABEL_59;
              case 91:
              case 92:
              case 93:
              case 94:
              case 95:
              case 96:
              case 97:
              case 98:
              case 99:
              case 100:
              case 101:
              case 102:
              case 103:
              case 104:
              case 105:
              case 106:
              case 107:
              case 108:
              case 109:
              case 110:
              case 111:
              case 112:
              case 113:
              case 114:
              case 115:
              case 116:
              case 117:
              case 118:
              case 119:
              case 120:
              case 121:
              case 122:
              case 123:
              case 124:
              case 125:
              case 126:
              case 127:
              case 128:
              case 129:
              case 130:
              case 131:
              case 132:
              case 133:
              case 134:
              case 135:
              case 136:
              case 137:
              case 138:
              case 139:
              case 140:
              case 141:
              case 142:
              case 143:
              case 144:
              case 145:
              case 146:
              case 147:
              case 148:
              case 149:
              case 150:
              case 151:
              case 152:
              case 153:
              case 154:
              case 155:
              case 156:
              case 157:
              case 158:
              case 159:
              case 162:
              case 163:
              case 164:
              case 165:
              case 166:
              case 167:
              case 172:
              case 176:
              case 182:
              case 183:
                goto LABEL_59;
              case 160:
              case 168:
              case 175:
              case 180:
              case 184:
LABEL_68:
                *&v29[2 * v38] = 32;
                goto LABEL_60;
              case 161:
                v43 = 33;
                goto LABEL_59;
              case 169:
                v52 = &v29[2 * v38];
                v54 = 6488104;
                goto LABEL_113;
              case 171:
                v50 = 2 * v38;
                v51 = 3932220;
                goto LABEL_147;
              case 173:
LABEL_83:
                v43 = 45;
                goto LABEL_59;
              case 174:
                v52 = &v29[2 * v38];
                v54 = 7471144;
LABEL_113:
                *v52 = v54;
                v38 += 3;
                v53 = 41;
                goto LABEL_140;
              case 177:
                v52 = &v29[2 * v38];
                *v52 = 3080235;
                v38 += 3;
                v53 = 45;
                goto LABEL_140;
              case 178:
                v43 = 50;
                goto LABEL_59;
              case 179:
                v43 = 51;
                goto LABEL_59;
              case 181:
                v43 = 956;
                goto LABEL_59;
              case 185:
                v43 = 49;
                goto LABEL_59;
              case 187:
                v50 = 2 * v38;
                v51 = 4063294;
                goto LABEL_147;
              case 188:
                v52 = &v29[2 * v38];
                v55 = 49;
                goto LABEL_125;
              case 189:
                v52 = &v29[2 * v38];
                *v52 = 3080241;
                v38 += 3;
                v53 = 50;
                goto LABEL_140;
              case 190:
                v52 = &v29[2 * v38];
                v55 = 51;
LABEL_125:
                *v52 = v55 | 0x2F0000;
                v38 += 3;
                v53 = 52;
LABEL_140:
                *(v52 + 2) = v53;
                goto LABEL_61;
              case 191:
                v43 = 63;
                goto LABEL_59;
              case 198:
              case 230:
                v50 = 2 * v38;
                v51 = 6619233;
                goto LABEL_147;
              case 215:
LABEL_92:
                v43 = 42;
                goto LABEL_59;
              case 222:
              case 254:
                v50 = 2 * v38;
                v51 = 6815860;
                goto LABEL_147;
              case 223:
                v50 = 2 * v38;
                v51 = 7536755;
LABEL_147:
                *&v29[v50] = v51;
                v38 += 2;
                goto LABEL_61;
              case 247:
LABEL_93:
                v43 = 47;
                goto LABEL_59;
              default:
                switch(v43)
                {
                  case 8192:
                  case 8193:
                  case 8194:
                  case 8195:
                  case 8196:
                  case 8197:
                  case 8198:
                  case 8199:
                  case 8200:
                  case 8201:
                  case 8202:
                  case 8215:
                  case 8239:
                  case 8254:
                  case 8287:
                    goto LABEL_68;
                  case 8208:
                  case 8209:
                  case 8210:
                  case 8211:
                  case 8212:
                  case 8213:
                    goto LABEL_83;
                  case 8214:
                    v50 = 2 * v38;
                    v51 = 8126588;
                    goto LABEL_147;
                  case 8216:
                  case 8217:
                  case 8219:
                  case 8242:
                    v43 = 39;
                    goto LABEL_59;
                  case 8218:
                    v43 = 44;
                    goto LABEL_59;
                  case 8220:
                  case 8221:
                  case 8223:
                    v43 = 34;
                    goto LABEL_59;
                  case 8222:
                    v50 = 2 * v38;
                    v51 = 2883628;
                    goto LABEL_147;
                  case 8228:
                    v43 = 46;
                    goto LABEL_59;
                  case 8229:
                    v50 = 2 * v38;
                    v51 = 3014702;
                    goto LABEL_147;
                  case 8243:
                    v50 = 2 * v38;
                    v51 = 2555943;
                    goto LABEL_147;
                  case 8244:
                    v52 = &v29[2 * v38];
                    *v52 = 2555943;
                    v38 += 3;
                    v53 = 39;
                    goto LABEL_140;
                  case 8246:
                    v50 = 2 * v38;
                    v51 = 540352565;
                    goto LABEL_147;
                  case 8247:
                    v52 = &v29[2 * v38];
                    *v52 = 540352565;
                    v38 += 3;
                    v53 = 8245;
                    goto LABEL_140;
                  case 8249:
                    v43 = 60;
                    goto LABEL_59;
                  case 8250:
                    v43 = 62;
                    goto LABEL_59;
                  case 8252:
                    v50 = 2 * v38;
                    v56 = 33;
                    goto LABEL_146;
                  case 8260:
                    goto LABEL_93;
                  case 8261:
                    v43 = 91;
                    goto LABEL_59;
                  case 8262:
                    v43 = 93;
                    goto LABEL_59;
                  case 8263:
                    v50 = 2 * v38;
                    v51 = 4128831;
                    goto LABEL_147;
                  case 8264:
                    v50 = 2 * v38;
                    v56 = 63;
LABEL_146:
                    v51 = v56 | 0x210000;
                    goto LABEL_147;
                  case 8265:
                    v50 = 2 * v38;
                    v51 = 4128801;
                    goto LABEL_147;
                  case 8270:
                    goto LABEL_92;
                  case 8279:
                    v57 = 2 * v38;
                    v38 += 4;
                    *&v29[v57] = 0x27002700270027;
                    goto LABEL_61;
                  default:
                    goto LABEL_59;
                }
            }
          }

LABEL_150:
          v27 = v62;
        }

        v58 = objc_autoreleasePoolPush();
        v3 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v29 bufferSize:v30 encoding:v27 nullTerminated:2483028224 isExternalRepresentation:{0, 0}];
        v4 = v58;
        goto LABEL_3;
      }

LABEL_39:
      v3 = v6;
      goto LABEL_40;
    }
  }

  if (v72)
  {
    v18 = &v72[v74];
  }

  else
  {
    if (v73)
    {
      v19 = v73[v74 + v14];
      goto LABEL_18;
    }

    if (v77 <= v14 || v12 > v14)
    {
      v21 = v16 + v11;
      v22 = v15 - v16;
      v23 = v14 - v16;
      v24 = v23 + 64;
      if (v23 + 64 >= v75)
      {
        v24 = v75;
      }

      v76 = v23;
      v77 = v24;
      if (v75 >= v22)
      {
        v17 = v22;
      }

      v80.location = v23 + v74;
      v80.length = v17 + v21;
      CFStringGetCharacters(v71, v80, &buffer);
      v12 = v76;
    }

    v18 = &buffer - v12;
  }

  v19 = v18[v14];
LABEL_18:
  if (v19 < 0x100u || (v19 - 0x2000) <= 0x6Fu)
  {
    switch(v19)
    {
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
      case 0x46u:
      case 0x47u:
      case 0x48u:
      case 0x49u:
      case 0x4Au:
      case 0x4Bu:
      case 0x4Cu:
      case 0x4Du:
      case 0x4Eu:
      case 0x4Fu:
      case 0x50u:
      case 0x51u:
      case 0x52u:
      case 0x53u:
      case 0x54u:
      case 0x55u:
      case 0x56u:
      case 0x57u:
      case 0x58u:
      case 0x59u:
      case 0x5Au:
      case 0xA0u:
      case 0xA1u:
      case 0xA8u:
      case 0xAAu:
      case 0xADu:
      case 0xAFu:
      case 0xB2u:
      case 0xB3u:
      case 0xB4u:
      case 0xB5u:
      case 0xB8u:
      case 0xB9u:
      case 0xBAu:
      case 0xBFu:
      case 0xC0u:
      case 0xC1u:
      case 0xC2u:
      case 0xC3u:
      case 0xC4u:
      case 0xC5u:
      case 0xC7u:
      case 0xC8u:
      case 0xC9u:
      case 0xCAu:
      case 0xCBu:
      case 0xCCu:
      case 0xCDu:
      case 0xCEu:
      case 0xCFu:
      case 0xD0u:
      case 0xD1u:
      case 0xD2u:
      case 0xD3u:
      case 0xD4u:
      case 0xD5u:
      case 0xD6u:
      case 0xD7u:
      case 0xD8u:
      case 0xD9u:
      case 0xDAu:
      case 0xDBu:
      case 0xDCu:
      case 0xDDu:
      case 0xE0u:
      case 0xE1u:
      case 0xE2u:
      case 0xE3u:
      case 0xE4u:
      case 0xE5u:
      case 0xE7u:
      case 0xE8u:
      case 0xE9u:
      case 0xEAu:
      case 0xEBu:
      case 0xECu:
      case 0xEDu:
      case 0xEEu:
      case 0xEFu:
      case 0xF0u:
      case 0xF1u:
      case 0xF2u:
      case 0xF3u:
      case 0xF4u:
      case 0xF5u:
      case 0xF6u:
      case 0xF7u:
      case 0xF8u:
      case 0xF9u:
      case 0xFAu:
      case 0xFBu:
      case 0xFCu:
      case 0xFDu:
      case 0xFFu:
        goto LABEL_34;
      case 0x5Bu:
      case 0x5Cu:
      case 0x5Du:
      case 0x5Eu:
      case 0x5Fu:
      case 0x60u:
      case 0x61u:
      case 0x62u:
      case 0x63u:
      case 0x64u:
      case 0x65u:
      case 0x66u:
      case 0x67u:
      case 0x68u:
      case 0x69u:
      case 0x6Au:
      case 0x6Bu:
      case 0x6Cu:
      case 0x6Du:
      case 0x6Eu:
      case 0x6Fu:
      case 0x70u:
      case 0x71u:
      case 0x72u:
      case 0x73u:
      case 0x74u:
      case 0x75u:
      case 0x76u:
      case 0x77u:
      case 0x78u:
      case 0x79u:
      case 0x7Au:
      case 0x7Bu:
      case 0x7Cu:
      case 0x7Du:
      case 0x7Eu:
      case 0x7Fu:
      case 0x80u:
      case 0x81u:
      case 0x82u:
      case 0x83u:
      case 0x84u:
      case 0x85u:
      case 0x86u:
      case 0x87u:
      case 0x88u:
      case 0x89u:
      case 0x8Au:
      case 0x8Bu:
      case 0x8Cu:
      case 0x8Du:
      case 0x8Eu:
      case 0x8Fu:
      case 0x90u:
      case 0x91u:
      case 0x92u:
      case 0x93u:
      case 0x94u:
      case 0x95u:
      case 0x96u:
      case 0x97u:
      case 0x98u:
      case 0x99u:
      case 0x9Au:
      case 0x9Bu:
      case 0x9Cu:
      case 0x9Du:
      case 0x9Eu:
      case 0x9Fu:
      case 0xA2u:
      case 0xA3u:
      case 0xA4u:
      case 0xA5u:
      case 0xA6u:
      case 0xA7u:
      case 0xACu:
      case 0xB0u:
      case 0xB6u:
      case 0xB7u:
        goto LABEL_35;
      case 0xA9u:
      case 0xAEu:
      case 0xB1u:
      case 0xBCu:
      case 0xBDu:
      case 0xBEu:
LABEL_33:
        v5 += 2;
        goto LABEL_34;
      case 0xABu:
      case 0xBBu:
      case 0xC6u:
      case 0xDEu:
      case 0xDFu:
      case 0xE6u:
      case 0xFEu:
LABEL_22:
        ++v5;
LABEL_34:
        v13 = 1;
        break;
      default:
        switch(v19)
        {
          case 0x2000u:
          case 0x2001u:
          case 0x2002u:
          case 0x2003u:
          case 0x2004u:
          case 0x2005u:
          case 0x2006u:
          case 0x2007u:
          case 0x2008u:
          case 0x2009u:
          case 0x200Au:
          case 0x2010u:
          case 0x2011u:
          case 0x2012u:
          case 0x2013u:
          case 0x2014u:
          case 0x2015u:
          case 0x2017u:
          case 0x2018u:
          case 0x2019u:
          case 0x201Au:
          case 0x201Bu:
          case 0x201Cu:
          case 0x201Du:
          case 0x201Fu:
          case 0x2024u:
          case 0x202Fu:
          case 0x2032u:
          case 0x2039u:
          case 0x203Au:
          case 0x203Eu:
          case 0x2044u:
          case 0x2045u:
          case 0x2046u:
          case 0x204Eu:
          case 0x205Fu:
            goto LABEL_34;
          case 0x2016u:
          case 0x201Eu:
          case 0x2025u:
          case 0x2033u:
          case 0x2036u:
          case 0x203Cu:
          case 0x2047u:
          case 0x2048u:
          case 0x2049u:
            goto LABEL_22;
          case 0x2034u:
          case 0x2037u:
            goto LABEL_33;
          case 0x2057u:
            v5 += 3;
            goto LABEL_34;
          default:
            goto LABEL_35;
        }
    }

    goto LABEL_35;
  }

  v3 = 0;
LABEL_40:

  return v3;
}

__CFString *_PASSimpleICUTransform(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5 || !v6)
  {
    v7 = v6;
    v11 = v7;
    goto LABEL_29;
  }

  if ([(__CFString *)v6 _pas_retainsConmingledBackingStore])
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v7];

    v7 = v8;
  }

  pthread_mutex_lock(&icuLock);
  if (!a3)
  {
    v9 = 0;
LABEL_10:
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v12 = _getIcuTransformCache();
    if ([v12 count] >= 0x65)
    {
      _destroyIcuTransformCache();
    }

    v13 = [v12 objectForKeyedSubscript:v5];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 pointerValue];
      v48[3] = v15;
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = ___PASSimpleICUTransform_block_invoke;
      v39[3] = &unk_1E77F2310;
      v18 = v5;
      v40 = v18;
      v41 = &v47;
      v42 = &v43;
      _PASMemoryHeavyOperation(v39);
      if (v44[6] > 0)
      {
        v19 = v40;
        goto LABEL_23;
      }

      v22 = [MEMORY[0x1E696B098] valueWithPointer:v48[3]];
      [v12 setObject:v22 forKeyedSubscript:v18];
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, v7);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v35 = 0u;
    v23 = MutableCopy;
    Length = CFStringGetLength(MutableCopy);
    v33 = MutableCopy;
    v36 = Length;
    CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x600u);
    }

    *&v35 = CStringPtr;
    v37 = 0;
    cf = 0;
    v44[6] = 0;
    utrans_trans();
    if (v44[6] >= 1)
    {
      CFRelease(MutableCopy);
      if (!a3)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v19 = v7;
    v7 = MutableCopy;
LABEL_23:

    if (!a3)
    {
LABEL_27:
      pthread_mutex_unlock(&icuLock);
      v7 = v7;

      _Block_object_dispose(&v43, 8);
      _Block_object_dispose(&v47, 8);
      v11 = v7;
      goto LABEL_28;
    }

LABEL_24:
    v20 = _getIcuTransformResultCache();
    if ([v20 count] >= 0x19)
    {
      [v20 removeAllObjects];
    }

    [v20 setObject:v7 forKeyedSubscript:{v9, v23, Length, v25, v26, v27, v28, v29, v30, v31, v32, v33, CharactersPtr, v35, v36, v37, cf}];

    goto LABEL_27;
  }

  v9 = [[_PASTuple2 alloc] initWithFirst:v5 second:v7];
  v10 = _getIcuTransformResultCache();
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    goto LABEL_10;
  }

  pthread_mutex_unlock(&icuLock);
LABEL_28:

LABEL_29:

  return v11;
}

void sub_1A7F64520(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _getIcuTransformResultCache()
{
  if (_getIcuTransformResultCache__pasOnceToken14 != -1)
  {
    dispatch_once(&_getIcuTransformResultCache__pasOnceToken14, &__block_literal_global_45);
  }

  v1 = _getIcuTransformResultCache__pasExprOnceResult;

  return [v1 result];
}

id _getIcuTransformCache()
{
  if (_getIcuTransformCache__pasOnceToken13 != -1)
  {
    dispatch_once(&_getIcuTransformCache__pasOnceToken13, &__block_literal_global_52);
  }

  v1 = _getIcuTransformCache__pasExprOnceResult;

  return v1;
}

void _destroyIcuTransformCache()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = _getIcuTransformCache();
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 objectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) pointerValue];
        utrans_close();
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }

  [v0 removeAllObjects];
}

const char *__CFStringReplaceableCopy(uint64_t a1, int a2, int a3, int a4)
{
  v11.length = a3 - a2;
  v11.location = a2;
  v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E4A8], *a1, v11);
  CFStringInsert(*a1, a4, v6);
  CFRelease(v6);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v8 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v8, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

void __CFStringReplaceableExtract(void *a1, int a2, int a3, UniChar *__dst)
{
  v4 = __dst;
  v6 = a2;
  v7 = a3 - a2;
  v8 = a1[19];
  if (v8)
  {
    v9 = (v8 + 2 * a1[21] + 2 * a2);

    memmove(__dst, v9, 2 * v7);
  }

  else
  {
    v10 = a1 + 2;
    v11 = a1[23];
    v12 = v11 - v6;
    if (v11 > v6 || (v13 = a1[24], v14 = v13 <= v6, v15 = v13 - v6, v14))
    {
      v17 = __OFSUB__(v7 + v6, v11);
      v18 = v7 + v6 - v11;
      if (!((v18 < 0) ^ v17 | (v18 == 0)) && v7 + v6 < a1[24])
      {
        memmove(&__dst[v12], v10, 2 * v18);
        v7 = v12;
      }
    }

    else
    {
      if (v7 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v7;
      }

      memmove(__dst, v10 + 2 * (v6 - v11), 2 * v16);
      v4 += v16;
      v6 += v16;
      v7 -= v16;
    }

    if (v7 >= 1)
    {
      v19 = a1[20];
      v20.location = a1[21] + v6;
      if (v19)
      {
        v21 = (v19 + v20.location);
        do
        {
          v22 = *v21++;
          *v4++ = v22;
          --v7;
        }

        while (v7);
      }

      else
      {
        v23 = a1[18];
        v20.length = v7;

        CFStringGetCharacters(v23, v20, v4);
      }
    }
  }
}

const char *__CFStringReplaceableReplace(uint64_t a1, int a2, int a3, UniChar *chars, int a5)
{
  v8 = *(a1 + 200);
  if (v8)
  {
    CFStringSetExternalCharactersNoCopy(v8, chars, a5, a5);
    MutableWithExternalCharactersNoCopy = *(a1 + 200);
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E4A8], chars, a5, a5, *MEMORY[0x1E695E498]);
    *(a1 + 200) = MutableWithExternalCharactersNoCopy;
  }

  v14.location = a2;
  v14.length = a3 - a2;
  CFStringReplace(*a1, v14, MutableWithExternalCharactersNoCopy);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v11 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v11);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v11, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

uint64_t __CFStringReplaceableChar32At(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    return 0xFFFFLL;
  }

  if (a2 < 0)
  {
    return 0;
  }

  v3 = a2;
  v4 = *(a1 + 176);
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = a1 + 16;
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = *(v6 + 2 * *(a1 + 168) + 2 * a2);
  }

  else
  {
    v10 = *(a1 + 160);
    if (v10)
    {
      v7 = *(v10 + *(a1 + 168) + a2);
    }

    else
    {
      if (*(a1 + 192) <= a2 || (v11 = *(a1 + 184), v11 > a2))
      {
        v12 = a2 - 4;
        if (a2 < 4)
        {
          v12 = 0;
        }

        if (v12 + 64 < v4)
        {
          v4 = v12 + 64;
        }

        *(a1 + 184) = v12;
        *(a1 + 192) = v4;
        v20.length = v4 - v12;
        v20.location = *(a1 + 168) + v12;
        CFStringGetCharacters(*(a1 + 144), v20, (a1 + 16));
        v11 = *(a1 + 184);
      }

      v7 = *(v5 + 2 * (v3 - v11));
    }
  }

  if (v7 >> 10 != 54 || *(a1 + 8) - 1 <= v3)
  {
    return v7;
  }

  v8 = v7;
  v13 = v3 + 1;
  v14 = *(a1 + 176);
  if (v14 > v13)
  {
    v15 = *(a1 + 152);
    if (v15)
    {
      v16 = *(v15 + 2 * *(a1 + 168) + 2 * v13);
    }

    else
    {
      v17 = *(a1 + 160);
      if (v17)
      {
        v16 = *(v17 + *(a1 + 168) + v13);
      }

      else
      {
        if (*(a1 + 192) <= v13 || (v18 = *(a1 + 184), v18 > v13))
        {
          v19 = v13 - 4;
          if (v13 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v14)
          {
            v14 = v19 + 64;
          }

          *(a1 + 184) = v19;
          *(a1 + 192) = v14;
          v21.length = v14 - v19;
          v21.location = *(a1 + 168) + v19;
          CFStringGetCharacters(*(a1 + 144), v21, (a1 + 16));
          v18 = *(a1 + 184);
        }

        v16 = *(v5 + 2 * (v13 - v18));
      }
    }

    if (v16 >> 10 == 55)
    {
      return (v8 << 10) + v16 - 56613888;
    }
  }

  return v8;
}