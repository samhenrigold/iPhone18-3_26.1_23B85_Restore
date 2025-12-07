uint64_t MISAppApprovalState(const __CFString *a1, const __CFDictionary *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 1;
  v26 = 0;
  if (sub_1B9D97C44(a2, @"HonorBlocklist", &v27))
  {
    v4 = sub_1B9D98960();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v4, OS_LOG_TYPE_ERROR, "MISAppAprovalState failed to check kMISValidationOptionHonorBlocklist option.", buf, 2u);
    }

    v27 = 1;
  }

  v25 = sub_1B9D97C44(a2, @"ReportIndeterminateSoon", &v26);
  if (v25)
  {
    v5 = sub_1B9D98960();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_ERROR, "MISAppAprovalState failed to check kMISAppApprovalStateReportIndeterminateSoon option.", buf, 2u);
    }

    v26 = 0;
  }

  v6 = sub_1B9D97D10(a1, a2, &v25);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1B9D981AC(v6);
    v9 = v8;
    if (!v8)
    {
      v13 = 1;
LABEL_33:
      CFRelease(v7);
      goto LABEL_34;
    }

    v10 = sub_1B9D98218(v8);
    if (!v10)
    {
      v11 = sub_1B9D98960();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v29 = v25;
        _os_log_impl(&dword_1B9D96000, v11, OS_LOG_TYPE_DEFAULT, "Could not extract cdhash: 0x%x", buf, 8u);
      }

      v13 = 1;
      goto LABEL_32;
    }

    v11 = v10;
    v12 = objc_opt_new();
    v13 = sub_1B9D98258(v11, v27);
    if (v13)
    {
      goto LABEL_13;
    }

    v15 = sub_1B9D98A70(v9, &v25);
    if (!v15)
    {
      v21 = sub_1B9D98960();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v29 = v25;
        _os_log_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_DEFAULT, "Could not extract signer: 0x%x", buf, 8u);
      }

      v13 = 1;
LABEL_13:
      v14 = v11;
LABEL_31:
      CFRelease(v14);

LABEL_32:
      goto LABEL_33;
    }

    v16 = v15;
    v17 = sub_1B9D98B60(v9, &v25);
    if (v25)
    {
      v18 = sub_1B9D98960();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:

LABEL_27:
        v13 = 1;
LABEL_28:
        if (v17)
        {
          CFRelease(v17);
        }

        CFRelease(v11);
        v14 = v16;
        goto LABEL_31;
      }

      *buf = 67109120;
      v29 = v25;
      v19 = "Could not extract signing time: 0x%x";
LABEL_25:
      _os_log_impl(&dword_1B9D96000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 8u);
      goto LABEL_26;
    }

    v22 = sub_1B9D98BF4(v16, v17, &v25);
    if (v22 == 2)
    {
      if (objc_msgSend_existsIndeterminatesWithProfileUUID_withCDHash_(v12, v23, 0, v11))
      {
        goto LABEL_27;
      }

      if (v26)
      {
        if (objc_msgSend_existsIndeterminatesSoonWithProfileUUID_withCDHash_(v12, v24, 0, v11))
        {
          v13 = 5;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_28;
      }
    }

    else if (!v22)
    {
      v18 = sub_1B9D98960();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 67109120;
      v29 = v25;
      v19 = "Could not validate certificate: 0x%x";
      goto LABEL_25;
    }

    v13 = 0;
    goto LABEL_28;
  }

  v9 = sub_1B9D98960();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v29 = v25;
    _os_log_impl(&dword_1B9D96000, v9, OS_LOG_TYPE_DEFAULT, "Could not copy signature: 0x%x", buf, 8u);
  }

  v13 = 1;
LABEL_34:

  return v13;
}

const __CFDictionary *sub_1B9D97C44(const __CFDictionary *a1, const void *a2, Boolean *a3)
{
  BOOLean = 0;
  TypeID = CFBooleanGetTypeID();
  v7 = sub_1B9D97CB4(a1, a2, TypeID, &BOOLean);
  if (!v7 && BOOLean)
  {
    *a3 = CFBooleanGetValue(BOOLean);
  }

  return v7;
}

const __CFDictionary *sub_1B9D97CB4(const __CFDictionary *result, const void *a2, uint64_t a3, const __CFDictionary **a4)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v6 = result;
      if (CFGetTypeID(result) == a3)
      {
        result = 0;
        *a4 = v6;
      }

      else
      {
        return 49174;
      }
    }
  }

  return result;
}

CFTypeRef sub_1B9D97D10(CFStringRef filePath, const __CFDictionary *a2, int *a3)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v16 = 0;
  if (!a2)
  {
    goto LABEL_8;
  }

  TypeID = CFNumberGetTypeID();
  Value = CFDictionaryGetValue(v4, @"UniversalFileOffset");
  if (Value)
  {
    v8 = Value;
    if (CFGetTypeID(Value) != TypeID)
    {
      v16 = 49174;
      v12 = sub_1B9D98960();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 67109120;
      LODWORD(v19) = 49174;
      v13 = "error processing kMISValidationOptionUniversalFileOffset (invalid type?), error 0x%x";
      goto LABEL_15;
    }

    CFNumberGetValue(v8, kCFNumberLongLongType, &valuePtr);
    if ((valuePtr & 0x8000000000000000) != 0)
    {
      v16 = 49174;
      v12 = sub_1B9D98960();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134217984;
      v19 = valuePtr;
      v13 = "invalid kMISValidationOptionUniversalFileOffset %lld";
      v14 = v12;
      v15 = 12;
      goto LABEL_16;
    }
  }

  v9 = CFDataGetTypeID();
  v10 = CFDictionaryGetValue(v4, @"DetachedSignature");
  v4 = v10;
  if (v10 && CFGetTypeID(v10) != v9)
  {
    v16 = 49174;
    v12 = sub_1B9D98960();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 67109120;
    LODWORD(v19) = 49174;
    v13 = "error processing kMISValidationOptionDetachedSignature (invalid type?), error 0x%x";
LABEL_15:
    v14 = v12;
    v15 = 8;
LABEL_16:
    _os_log_error_impl(&dword_1B9D96000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    goto LABEL_18;
  }

  v16 = 0;
  a2 = valuePtr;
LABEL_8:
  result = sub_1B9D97F74(filePath, a2, v4, &v16);
  if (result)
  {
    goto LABEL_19;
  }

  v12 = sub_1B9D98960();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v19) = v16;
    _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "Could not copy code signature (error 0x%x).", buf, 8u);
  }

LABEL_18:

  result = 0;
LABEL_19:
  if (a3)
  {
    *a3 = v16;
  }

  return result;
}

CFTypeRef sub_1B9D97F74(CFStringRef filePath, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  values[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  valuePtr = a2;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], filePath, kCFURLPOSIXPathStyle, 0);
  if (!v8)
  {
    LODWORD(v11) = -402620406;
    if (!a4)
    {
      return cf;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (a2)
  {
    values[0] = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
    v10 = CFDictionaryCreate(v7, MEMORY[0x1E697B030], values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values[0]);
    v11 = SecStaticCodeCreateWithPathAndAttributes(v9, 0, v10, &cf);
    if (v10)
    {
      CFRelease(v10);
    }

    if (!v11)
    {
LABEL_6:
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v11 = SecStaticCodeCreateWithPathAndAttributes(v8, 0, 0, &cf);
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v12 = sub_1B9D98960();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(values[0]) = 67109120;
    HIDWORD(values[0]) = v11;
    _os_log_impl(&dword_1B9D96000, v12, OS_LOG_TYPE_DEFAULT, "Failure creating static code: %d", values, 8u);
  }

  LODWORD(v11) = sub_1B9DCB79C(v11);
  if (a3)
  {
LABEL_14:
    v13 = SecCodeSetDetachedSignature();
    if (v13)
    {
      v14 = v13;
      LODWORD(v11) = sub_1B9DCB79C(v13);
      if (cf)
      {
        v15 = sub_1B9D98960();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(values[0]) = 67109120;
          HIDWORD(values[0]) = v14;
          _os_log_impl(&dword_1B9D96000, v15, OS_LOG_TYPE_DEFAULT, "Failure setting detached signature: %d", values, 8u);
        }

        CFRelease(cf);
        cf = 0;
      }
    }
  }

LABEL_19:
  CFRelease(v9);
  if (a4)
  {
LABEL_20:
    *a4 = v11;
  }

  return cf;
}

CFDictionaryRef sub_1B9D981AC(const __SecCode *a1)
{
  information = 0;
  v2 = objc_autoreleasePoolPush();
  LODWORD(a1) = SecCodeCopySigningInformation(a1, 0x23u, &information);
  objc_autoreleasePoolPop(v2);
  if (a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = information;
  }

  return v3;
}

const void *sub_1B9D98218(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E697B098]);
  v2 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v2;
}

uint64_t sub_1B9D98258(const __CFData *a1, int a2)
{
  if (a2 && (MISQueryBlacklistForCdHash(a1, 0x1A, 1, 0) & 1) != 0)
  {
    return 4;
  }

  v4 = objc_opt_new();
  if (objc_msgSend_isCDHashBanned_(v4, v5, a1))
  {
    v6 = sub_1B9D98960();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B9D96000, v6, OS_LOG_TYPE_DEFAULT, "CDHash is banned", v8, 2u);
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MISQueryBlacklistForCdHash(const __CFData *a1, const char *a2, int a3, _DWORD *a4)
{
  v4 = a2;
  v61 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", a2, @"denylist.map");
  Length = CFStringGetLength(v6);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v9 = MEMORY[0x1BFAE6D90](0, MaximumSizeForEncoding + 1, 1753344584, 0);
  v57 = v6;
  if (!v9)
  {
    v15 = sub_1B9D98960();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v16 = "Could not allocate buffer for denylist path (this should not happen.";
LABEL_13:
    v17 = v15;
    v18 = 2;
    goto LABEL_14;
  }

  if (!CFStringGetCString(v6, v9, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    v15 = sub_1B9D98960();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    *buf = 0;
    v16 = "Denylist path conversion failed (this should not happen.)";
    goto LABEL_13;
  }

  v10 = open(v9, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    v12 = lseek(v10, 0, 2);
    if (v12 <= 23)
    {
      v13 = sub_1B9D98960();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = 24;
        _os_log_error_impl(&dword_1B9D96000, v13, OS_LOG_TYPE_ERROR, "Denylist is too short (%lld bytes) for header (%lu bytes)", buf, 0x16u);
      }

      if (v12 < 1)
      {
        goto LABEL_37;
      }

      v14 = 0;
      goto LABEL_35;
    }

    v22 = mmap(0, v12, 1, 2, v11, 0);
    if (v22 == -1)
    {
      v30 = sub_1B9D98960();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v53 = *__error();
        *buf = 67109120;
        *&buf[4] = v53;
        _os_log_error_impl(&dword_1B9D96000, v30, OS_LOG_TYPE_ERROR, "Could not map denylist, error %{errno}d", buf, 8u);
      }

      v14 = -1;
      goto LABEL_35;
    }

    v14 = v22;
    if (*v22 == 1134124660)
    {
      v23 = v22[2];
      if (v12 >= v23)
      {
        v33 = v4;
        v34 = v12;
        v35 = v22 + v12;
        v36 = v22 + v23;
        v37 = v22[3];
        v38 = &v36[32 * v37];
        v39 = &v38[4 * v37];
        v40 = v39 - v35;
        if (v39 <= v35)
        {
LABEL_42:
          CFAllocatorDeallocate(0, v9);
          v44 = v38;
          v45 = v36;
          goto LABEL_43;
        }

        v41 = sub_1B9D98960();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v40;
          _os_log_error_impl(&dword_1B9D96000, v41, OS_LOG_TYPE_ERROR, "Denylist is %td bytes short for entry count", buf, 0xCu);
        }

        v4 = v33;
        v12 = v34;
        goto LABEL_35;
      }

      v24 = sub_1B9D98960();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        if ((v14 + 1) >= 2)
        {
          munmap(v14, v12);
        }

LABEL_37:
        close(v11);
        goto LABEL_38;
      }

      v25 = *(v14 + 8);
      *buf = 67109376;
      *&buf[4] = v25;
      *&buf[8] = 2048;
      *&buf[10] = v12;
      v26 = "Denylist entries offset %u is past denylist size %lld";
      v27 = v24;
      v28 = 18;
    }

    else
    {
      v31 = sub_1B9D98960();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      v32 = *v14;
      *buf = 67109120;
      *&buf[4] = v32;
      v26 = "Wrong denylist magic (0x08%x)";
      v27 = v31;
      v28 = 8;
    }

    _os_log_error_impl(&dword_1B9D96000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    goto LABEL_35;
  }

  v19 = *__error();
  v20 = sub_1B9D98960();
  v21 = v20;
  if (v19 != 2)
  {
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_38;
    }

    v29 = *__error();
    *buf = 67109120;
    *&buf[4] = v29;
    v16 = "Could not open denylist, error %{errno}d";
    v17 = v21;
    v18 = 8;
LABEL_14:
    _os_log_error_impl(&dword_1B9D96000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_38;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1B9D96000, v21, OS_LOG_TYPE_DEBUG, "Denylist does not exist.", buf, 2u);
  }

LABEL_38:
  v42 = sub_1B9D98960();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1B9D96000, v42, OS_LOG_TYPE_DEBUG, "Using empty denylist.", buf, 2u);
  }

  v33 = v4;
  v43 = mmap(0, 0x18uLL, 3, 4098, -1, 0);
  if (v43 == -1)
  {
    v54 = sub_1B9D98960();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B9D96000, v54, OS_LOG_TYPE_ERROR, "Failed to mmap fallback denylist header. Giving up.", buf, 2u);
    }

    abort();
  }

  v14 = v43;
  v43[2] = 0;
  *v43 = xmmword_1B9DDBBD8;
  v34 = 24;
  mprotect(v43, 0x18uLL, 1);
  v38 = 0;
  v36 = 0;
  v44 = 0;
  v45 = 0;
  v11 = -1;
  if (v9)
  {
    goto LABEL_42;
  }

LABEL_43:
  memset(buf, 0, sizeof(buf));
  v59 = 0;
  v60 = v33;
  v46 = CFDataGetLength(a1);
  if (v46 >= 28)
  {
    v47.length = 28;
  }

  else
  {
    v47.length = v46;
  }

  v47.location = 0;
  CFDataGetBytes(a1, v47, buf);
  v48 = bsearch_b(buf, v45, *(v14 + 12), 0x20uLL, &unk_1F37D91D8);
  if (v48)
  {
    v49 = v57;
    if (!v44 || (v50 = v48, a3) && MISBlacklistOverriddenByUser(a1, v33))
    {
      v51 = 0;
    }

    else
    {
      if (a4)
      {
        *a4 = *&v44[(v50 - v45) >> 3];
      }

      v51 = 1;
    }
  }

  else
  {
    v51 = 0;
    v49 = v57;
  }

  if ((v14 + 1) >= 2)
  {
    munmap(v14, v34);
    if (v11 < 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if ((v11 & 0x80000000) == 0)
  {
LABEL_57:
    close(v11);
  }

LABEL_58:

  return v51;
}

id sub_1B9D98960()
{
  if (qword_1EDCF09D0 != -1)
  {
    dispatch_once(&qword_1EDCF09D0, &unk_1F37DA508);
  }

  if (qword_1EDCF09D8)
  {
    v1 = qword_1EDCF09D8;
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
  }

  return v1;
}

__CFString *sub_1B9D989C4(const __CFData *a1)
{
  if (!a1)
  {
    return @"NULL";
  }

  v2 = *MEMORY[0x1E695E480];
  Length = CFDataGetLength(a1);
  Mutable = CFStringCreateMutable(v2, 2 * Length);
  BytePtr = CFDataGetBytePtr(a1);
  v6 = CFDataGetLength(a1);
  if (v6 >= 1)
  {
    v7 = v6;
    do
    {
      v8 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02x", v8);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

const __CFArray *sub_1B9D98A70(void *a1, int *a2)
{
  v3 = -402620415;
  v4 = a1;
  if (CFDictionaryContainsKey(v4, *MEMORY[0x1E697B070]) != 1)
  {
    Copy = 0;
    v3 = -402620388;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(v4, *MEMORY[0x1E697B040]);
  Copy = Value;
  if (!Value)
  {
    v3 = -402620396;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = CFGetTypeID(Value);
  if (v7 == CFArrayGetTypeID() && CFArrayGetCount(Copy) >= 1)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], Copy);
    v3 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  Copy = 0;
  if (a2)
  {
LABEL_10:
    *a2 = v3;
  }

LABEL_11:

  return Copy;
}

const void *sub_1B9D98B60(void *a1, int *a2)
{
  v3 = a1;
  if (CFDictionaryContainsKey(v3, *MEMORY[0x1E697B070]) != 1)
  {
    v5 = 0;
    v6 = -402620388;
    if (!a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a2 = v6;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(v3, *MEMORY[0x1E697B088]);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  v6 = 0;
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

uint64_t sub_1B9D98BF4(const __CFArray *a1, uint64_t a2, int *a3)
{
  if (qword_1EBBE4098 != -1)
  {
    dispatch_once(&qword_1EBBE4098, &unk_1F37DA548);
  }

  v6 = qword_1EBBE4090;
  ValueAtIndex = CFArrayGetValueAtIndex(a1, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1B9DCFFD8;
  aBlock[3] = &unk_1E7ED8908;
  aBlock[4] = a1;
  aBlock[5] = a2;
  v8 = _Block_copy(aBlock);
  if (!ValueAtIndex)
  {
    v19 = sub_1B9D98960();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v19, OS_LOG_TYPE_ERROR, "There is no leaf cert (this should not happen).", v31, 2u);
    }

    v18 = 0;
    v9 = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v9 = SecCertificateCopyData(ValueAtIndex);
  v11 = sub_1B9D98EE4(v9);
  if (!v11 || !v6)
  {
    v20 = sub_1B9D98960();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v20, OS_LOG_TYPE_ERROR, "Failure creating profile cache key. This shouldn't happen.", v31, 2u);
    }

    v18 = 0;
LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v12 = objc_msgSend_objectForKey_(v6, v10, v11);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_intValue(v12, v13, v14);
    if (v16)
    {
      v17 = 0;
      v18 = v16;
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v22 = sub_1B9D98960();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v31 = 0;
      _os_log_error_impl(&dword_1B9D96000, v22, OS_LOG_TYPE_ERROR, "Found in cert cache, but cert type is CertTypeError (this should not happen).", v31, 2u);
    }
  }

  v23 = SecPolicyCreateiPhoneApplicationSigning();
  if (!v8[2](v8, v23))
  {
    v18 = 1;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, 1);
    goto LABEL_30;
  }

  v25 = SecPolicyCreateiPhoneVPNApplicationSigning();
  if (!v8[2](v8, v25))
  {
    v18 = 3;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v26, 3);
    goto LABEL_30;
  }

  v27 = SecPolicyCreateiPhoneProfileApplicationSigning();
  if (!v8[2](v8, v27))
  {
    v18 = 2;
    objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v28, 2);
    v29 = LABEL_30:;
    objc_msgSend_setObject_forKey_(v6, v30, v29, v11);

    v17 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v18 = 0;
LABEL_17:
  v17 = -402620392;
  if (a3)
  {
LABEL_18:
    *a3 = v17;
  }

LABEL_19:

  return v18;
}

CFDataRef sub_1B9D98EE4(const __CFData *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, sizeof(v5));
  CC_SHA256_Init(&v5);
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  CC_SHA256_Update(&v5, BytePtr, Length);
  CC_SHA256_Final(md, &v5);
  return CFDataCreate(*MEMORY[0x1E695E480], md, 32);
}

uint64_t MISEnumerateInstalledProvisioningProfiles(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -402620415;
  v4 = sub_1B9D99240();
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "MessageType", "CopyAll");
  v6 = xpc_connection_send_message_with_reply_sync(v4, v5);
  if (MEMORY[0x1BFAE82F0]() == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v6, "Status");
    *(v20 + 6) = uint64;
    if (uint64)
    {
      goto LABEL_10;
    }
  }

  else if (MEMORY[0x1BFAE82F0](v6) == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28]);
    v8 = sub_1B9D98960();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v24 = string;
      _os_log_error_impl(&dword_1B9D96000, v8, OS_LOG_TYPE_ERROR, "error getting installed profiles: %{public}s\n", buf, 0xCu);
    }

    v9 = v20;
    goto LABEL_9;
  }

  v11 = xpc_dictionary_get_value(v6, "Payload");
  v9 = v20;
  if (!v11)
  {
LABEL_9:
    *(v9 + 6) = -402620403;
    uint64 = 3892346893;
    goto LABEL_10;
  }

  *(v20 + 6) = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B9DCA0C4;
  v14[3] = &unk_1E7ED8740;
  v12 = v4;
  v15 = v12;
  v17 = &v19;
  v18 = a1;
  v16 = v3;
  xpc_array_apply(v11, v14);
  xpc_connection_cancel(v12);
  uint64 = *(v20 + 6);

LABEL_10:
  _Block_object_dispose(&v19, 8);

  return uint64;
}

void sub_1B9D9921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_xpc_connection_s *sub_1B9D99240()
{
  mach_service = xpc_connection_create_mach_service("com.apple.misagent", 0, 0);
  xpc_connection_set_event_handler(mach_service, &unk_1F37DA4E8);
  xpc_connection_resume(mach_service);

  return mach_service;
}

void sub_1B9D9929C(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 != MEMORY[0x1E69E9E20])
  {
    if (MEMORY[0x1BFAE82F0](v2) == MEMORY[0x1E69E9E98])
    {
      string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
      v7 = sub_1B9D98960();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446210;
        v9 = string;
        _os_log_impl(&dword_1B9D96000, v7, OS_LOG_TYPE_DEFAULT, "misagent connection error: %{public}s\n", &v8, 0xCu);
      }
    }

    else
    {
      v4 = MEMORY[0x1BFAE8200](v3);
      v5 = sub_1B9D98960();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136446210;
        v9 = v4;
        _os_log_impl(&dword_1B9D96000, v5, OS_LOG_TYPE_DEFAULT, "received unhandled event from misagent: %{public}s\n", &v8, 0xCu);
      }

      free(v4);
    }
  }
}

uint64_t sub_1B9D993F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99430()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D994C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99500()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99548()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D995A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D995D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B9DD2888();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1B9D996E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B9DD2888();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B9D997A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D997D8()
{
  if (v0[3])
  {

    sub_1B9D9D534(v0[4], v0[5]);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D9981C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D9985C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1B9DD2878();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[9];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1B9D99988(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1B9DD2878();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[9];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1B9D99AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LaunchWarningDetails(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B9D99B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LaunchWarningDetails(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B9D99C44()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99CDC()
{
  sub_1B9D9D534(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D99D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9D99D6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99DAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 36, 7);
}

uint64_t sub_1B9D99E18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9D99E50()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9D99E90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9D99EA0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9D99EE8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B9D99FB8()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000019, 0x80000001B9DDCAE0, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9A0A0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000025, 0x80000001B9DDCB00, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9A188(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  *(v5 + 24) = 0xE000000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  swift_bridgeObjectRetain_n();

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCB30, sub_1B9D9BB18, v7, sub_1B9D9A308, v8);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9A308(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = (*(*a1 + 192))(0);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    swift_beginAccess();
    *(v3 + 16) = v7;
    *(v3 + 24) = v8;
  }

  else
  {
    sub_1B9DD2B88();

    MEMORY[0x1BFAE6A10](v2, v4);
    sub_1B9D9B8E4();
    swift_allocError();
    *v10 = 0xD000000000000023;
    *(v10 + 8) = 0x80000001B9DDCFA0;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1B9D9A510(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCB60, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9A650(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000030, 0x80000001B9DDCB90, sub_1B9D9BB18, v7, sub_1B9D9A780, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9A798(void *a1, uint64_t a2, uint64_t a3)
{
  v23[7] = *MEMORY[0x1E69E9840];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B9DB3518(0xD00000000000002CLL, 0x80000001B9DDCF40, sub_1B9D9BB18, v8, sub_1B9D9B938, v7);
  if (v3)
  {
  }

  swift_beginAccess();
  v10 = *(v7 + 24);
  if (!v10)
  {
    sub_1B9D9B9C4();
    swift_allocError();
    *v12 = xmmword_1B9DD4FE0;
    *(v12 + 16) = xmmword_1B9DD4FF0;
    *(v12 + 32) = 1;
LABEL_6:
    swift_willThrow();
  }

  v22 = *(v7 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  sub_1B9DB3518(0xD000000000000027, 0x80000001B9DDCF70, sub_1B9D9BB18, v11, 0, 0);

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v22;
  *(v14 + 24) = v10;

  sub_1B9DB3518(0xD000000000000030, 0x80000001B9DDCB90, sub_1B9D9BB18, v14, sub_1B9D9BB34, v13);

  swift_beginAccess();
  v15 = *(v13 + 16);

  if (v15)
  {
  }

  v16 = sub_1B9DD2968();
  v23[0] = 0;
  v17 = [a1 deleteTrustedWithTeamID:v16 error:v23];

  v18 = v23[0];
  if (!v17)
  {
    v21 = v23[0];

    sub_1B9DD2698();

    goto LABEL_6;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v22;
  *(v19 + 24) = v10;
  v20 = v18;
  sub_1B9DB3518(0xD00000000000002BLL, 0x80000001B9DDCBD0, sub_1B9D9BB18, v19, 0, 0);
}

uint64_t sub_1B9D9ACBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9D9ACFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000041, 0x80000001B9DDCC00, sub_1B9D9BB18, v7, sub_1B9D9AE2C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9AE2C()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_1B9D9AE74(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000037, 0x80000001B9DDCC50, sub_1B9D9BB18, v7, sub_1B9D9BAE8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9AFA4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000038, 0x80000001B9DDCC90, 0, 0, sub_1B9D9BB1C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9B08C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD0000000000000A2, 0x80000001B9DDCCD0, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B1CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000009CLL, 0x80000001B9DDCD80, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B30C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000008FLL, 0x80000001B9DDCE20, sub_1B9D9BB18, v7, sub_1B9D9BB1C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B44C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000089, 0x80000001B9DDCEB0, sub_1B9D9B58C, v7, sub_1B9D9B590, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6;
}

uint64_t sub_1B9D9B5A8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    swift_beginAccess();
    v7 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1B9D9B78C(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_1B9D9B78C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    *(v2 + 16) = v7;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1B9D9B6CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9D9B6E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B9D9B728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

char *sub_1B9D9B78C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9D9B898(&qword_1EBBE3198, "Bm");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_1B9D9B898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B9D9B8E4()
{
  result = qword_1EBBE31A0;
  if (!qword_1EBBE31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31A0);
  }

  return result;
}

uint64_t sub_1B9D9B938(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 192))(0);
  v5 = v4;
  swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = v5;
}

unint64_t sub_1B9D9B9C4()
{
  result = qword_1EBBE31A8;
  if (!qword_1EBBE31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31A8);
  }

  return result;
}

uint64_t sub_1B9D9BA18(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 160))(0);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  return result;
}

uint64_t sub_1B9D9BB4C(void *a1)
{
  v3 = [a1 teamID];
  v4 = sub_1B9DD2998();
  v6 = v5;

  v7 = sub_1B9D9A650(v4, v6);
  if (v1)
  {
  }

  v9 = v7;

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    v11 = a1;
    sub_1B9DB3518(0xD000000000000073, 0x80000001B9DDD540, sub_1B9D9DC40, v10, 0, 0);
  }

  else
  {
    sub_1B9D9B8E4();
    swift_allocError();
    *v12 = 0xD000000000000048;
    *(v12 + 8) = 0x80000001B9DDD5C0;
    *(v12 + 16) = 1;
    return swift_willThrow();
  }
}

void sub_1B9D9BE18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B9DD2968();
  v13[0] = 0;
  v8 = [a1 getTeamIDForProfileUUID:v7 error:v13];

  v9 = v13[0];
  if (v8)
  {
    if (a5 >> 60 == 15)
    {
      v10 = 0;
    }

    else
    {
      v10 = sub_1B9DD2778();
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v8 signature:v10];

    sub_1B9D9BB4C(v12);
  }

  else
  {
    v11 = v9;
    sub_1B9DD2698();

    swift_willThrow();
  }
}

void *sub_1B9D9C0B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000042, 0x80000001B9DDCFD0, sub_1B9D9BB18, v7, sub_1B9D9C1E8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v8 = v6;
  }

  return v6;
}

void sub_1B9D9C1E8(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_1B9DD2968();

    if (v9 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v8, v9);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = *(v2 + 16);
    *(v2 + 16) = v12;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1B9D9C330(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000092, 0x80000001B9DDD020, sub_1B9D9BB18, v7, sub_1B9D9C464, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    v8 = v6;
  }

  return v6;
}

void sub_1B9D9C464(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  v8 = v7;
  if (v5)
  {
    v9 = v6;
    v10 = sub_1B9DD2968();

    if (v8 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v9, v8);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = *(v2 + 16);
    *(v2 + 16) = v12;
  }

  else
  {
    sub_1B9D9D520(v6, v7);
  }
}

uint64_t sub_1B9D9C5B4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD00000000000002FLL, 0x80000001B9DDD0C0, 0, 0, sub_1B9D9C69C, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9C69C(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  v6 = (*(*a1 + 128))(1);
  if (v5)
  {
    v8 = v6;
    v9 = v7;
    sub_1B9D9DB7C(v6, v7);
    v10 = sub_1B9DD2968();

    if (v9 >> 60 == 15)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1B9DD2778();
      sub_1B9D9D520(v8, v9);
    }

    v12 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v10 signature:v11];

    swift_beginAccess();
    v13 = v12;
    MEMORY[0x1BFAE6A70]();
    if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B9DD2A98();
    }

    sub_1B9DD2AA8();
    swift_endAccess();
    sub_1B9D9D520(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9D9C84C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000167, 0x80000001B9DDD0F0, 0, 0, sub_1B9D9C934, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9C934(uint64_t a1)
{
  v2 = v1;
  v4 = *(*a1 + 192);
  v4(0);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4(1);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = *(*a1 + 160);
  v8 = v7(2) == 1;
  v9 = v7(3) == 1;
  v10 = objc_allocWithZone(MISTeamIDEntryForUI);
  v11 = sub_1B9DD2968();

  v12 = sub_1B9DD2968();

  v13 = [v10 initWithTeamID:v11 teamName:v12 trusted:v8 hasAuxiliarySignature:v9];

  swift_beginAccess();
  v14 = v13;
  MEMORY[0x1BFAE6A70]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B9DD2A98();
  }

  sub_1B9DD2AA8();
  swift_endAccess();
}

uint64_t sub_1B9D9CB0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000047, 0x80000001B9DDD260, sub_1B9D9BB18, v7, sub_1B9D9CC3C, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9D9CC3C(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v4 = v3;
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {

    v6 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = sub_1B9DD2968();
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1B9DBF144(v7, v5);

    v6 = !v8;
  }

  result = swift_beginAccess();
  *(v2 + 16) = v6;
  return result;
}

uint64_t sub_1B9D9CD28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000091, 0x80000001B9DDD2B0, 0, 0, sub_1B9D9D200, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9D9CE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9DD28D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 192);
  v34 = v8(0);
  v10 = v9;
  v11 = v8(1);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = (*(*a1 + 128))(2);
    v17 = v15;
    v18 = v16;
    if (v10)
    {
      sub_1B9D9DB7C(v15, v16);
      v19 = sub_1B9DD2968();

      if (v18 >> 60 == 15)
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1B9DD2778();
        sub_1B9D9D520(v17, v18);
      }

      v28 = [objc_allocWithZone(MISTrustedTeamIDEntry) initWithTeamID:v19 signature:v20];

      v29 = objc_allocWithZone(MISTrustedProfileEntry);
      v30 = v28;
      v31 = sub_1B9DD2968();

      v32 = [v29 initWithUUID:v31 trustedTeamIDEntry:v30];

      swift_beginAccess();
      v33 = v32;
      MEMORY[0x1BFAE6A70]();
      if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B9DD2A98();
      }

      sub_1B9DD2AA8();
      swift_endAccess();
      sub_1B9D9D520(v17, v18);
    }

    else
    {
      v34 = v15;
      v21 = sub_1B9DA9D3C();
      v22 = v5;
      (*(v5 + 16))(v7, v21, v4);

      v23 = sub_1B9DD28B8();
      v24 = sub_1B9DD2AC8();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v35[0] = v26;
        *v25 = 136446210;
        v27 = sub_1B9D9D588(v13, v14, v35);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_1B9D96000, v23, v24, "Entry in trusted_team_ids exists without associated profile: %{public}s", v25, 0xCu);
        sub_1B9D9DB30(v26);
        MEMORY[0x1BFAE80B0](v26, -1, -1);
        MEMORY[0x1BFAE80B0](v25, -1, -1);

        sub_1B9D9D520(v34, v18);
      }

      else
      {
        sub_1B9D9D520(v34, v18);
      }

      (*(v22 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9D9D22C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD0000000000000EBLL, 0x80000001B9DDD350, 0, 0, sub_1B9D9B5A8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_1B9D9D520(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9D9D534(result, a2);
  }

  return result;
}

uint64_t sub_1B9D9D534(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1B9D9D588(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B9D9D654(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B9D9DBE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1B9D9DB30(v11);
  return v7;
}

unint64_t sub_1B9D9D654(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B9D9D760(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B9DD2BA8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B9D9D760(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B9D9D7AC(a1, a2);
  sub_1B9D9D8DC(&unk_1F37D95C0);
  return v3;
}

void *sub_1B9D9D7AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B9D9D9C8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B9DD2BA8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B9DD2A28();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B9D9D9C8(v10, 0);
        result = sub_1B9DD2B68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B9D9D8DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B9D9DA3C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B9D9D9C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1B9D9B898(&qword_1EBBE31B0, "6e");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B9D9DA3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9D9B898(&qword_1EBBE31B0, "6e");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B9D9DB30(void *a1)
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

uint64_t sub_1B9D9DB7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9D9DB90(a1, a2);
  }

  return a1;
}

uint64_t sub_1B9D9DB90(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1B9D9DBE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B9D9DC40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v5 = [v4 teamID];
  v6 = sub_1B9DD2998();
  v8 = v7;

  (*(*a1 + 184))(v6, v8, 1);

  v9 = [v4 signature];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B9DD2798();
    v13 = v12;

    v14 = v13;
    v15 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v15 != 2)
      {
        sub_1B9D9D534(v11, v13);
        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      result = sub_1B9D9D534(v11, v14);
      if (!__OFSUB__(v16, v17))
      {
        if (v16 == v17)
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      if (!v15)
      {
        sub_1B9D9D534(v11, v13);
        if (!BYTE6(v13))
        {
          return (*(*a1 + 120))(0, 0xF000000000000000, 2);
        }

        goto LABEL_12;
      }

      result = sub_1B9D9D534(v11, v13);
      if (!__OFSUB__(HIDWORD(v11), v11))
      {
        if (HIDWORD(v11) != v11)
        {
          goto LABEL_12;
        }

        return (*(*a1 + 120))(0, 0xF000000000000000, 2);
      }
    }

    __break(1u);
    return result;
  }

LABEL_12:
  v19 = [v4 signature];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1B9DD2798();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  (*(*a1 + 120))(v21, v23, 2);

  return sub_1B9D9D520(v21, v23);
}

uint64_t sub_1B9D9DE94()
{
  v1 = *v0;
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](v1);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9D9DF08(uint64_t a1)
{
  v2 = *v1;
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](v2);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9D9DF4C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = a1;
  return result;
}

uint64_t sub_1B9D9DF88(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  sub_1B9D9DFE0(a1, a2);
  return v4;
}

uint64_t sub_1B9D9DFE0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v50[5] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) != a1)
      {
        goto LABEL_8;
      }

LABEL_15:
      v12 = 1;
LABEL_25:
      sub_1B9D9E728();
      swift_allocError();
      *v23 = v12;
      swift_willThrow();
      sub_1B9D9D534(a1, a2);
      type metadata accessor for LaunchWarningMark();
      swift_deallocPartialClassInstance();
      return v3;
    }

    goto LABEL_61;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  if (sub_1B9DD2768() != 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      LODWORD(v11) = HIDWORD(a1) - a1;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v11 = v11;
        goto LABEL_21;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_20;
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v9 = __OFSUB__(v13, v14);
  v11 = v13 - v14;
  if (v9)
  {
    __break(1u);
LABEL_20:
    v11 = BYTE6(a2);
  }

LABEL_21:
  v12 = 1;
  if (v11 != 9)
  {
    goto LABEL_25;
  }

  *(v3 + 16) = 1;
  v15 = sub_1B9D9E420(1, 8, a1, a2);
  v50[3] = MEMORY[0x1E6969080];
  v50[4] = MEMORY[0x1E6969078];
  v50[0] = v15;
  v50[1] = v16;
  v17 = sub_1B9D9E7A0(v50, MEMORY[0x1E6969080]);
  v18 = *v17;
  v19 = v17[1];
  v20 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v20)
    {
      v48[0] = *v17;
      LOWORD(v48[1]) = v19;
      BYTE2(v48[1]) = BYTE2(v19);
      BYTE3(v48[1]) = BYTE3(v19);
      BYTE4(v48[1]) = BYTE4(v19);
      BYTE5(v48[1]) = BYTE5(v19);
      v21 = v48 + BYTE6(v19);
      v22 = v48;
      goto LABEL_46;
    }

LABEL_34:
    v30 = v18;
    v31 = v18 >> 32;
    v29 = v31 - v30;
    if (v31 >= v30)
    {
      v27 = sub_1B9DD2628();
      if (v27)
      {
        v32 = sub_1B9DD2658();
        if (__OFSUB__(v30, v32))
        {
          goto LABEL_68;
        }

        v27 += v30 - v32;
      }

      goto LABEL_38;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v20 != 2)
  {
    memset(v48, 0, 14);
    v22 = v48;
    v21 = v48;
    goto LABEL_46;
  }

  v25 = *(v18 + 16);
  v26 = *(v18 + 24);
  v27 = sub_1B9DD2628();
  if (v27)
  {
    v28 = sub_1B9DD2658();
    v18 = v25 - v28;
    if (__OFSUB__(v25, v28))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
    }

    v27 += v18;
  }

  v9 = __OFSUB__(v26, v25);
  v29 = v26 - v25;
  if (v9)
  {
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  v33 = sub_1B9DD2648();
  if (v33 >= v29)
  {
    v34 = v29;
  }

  else
  {
    v34 = v33;
  }

  v35 = (v34 + v27);
  if (v27)
  {
    v21 = v35;
  }

  else
  {
    v21 = 0;
  }

  v22 = v27;
LABEL_46:
  sub_1B9D9E7E4(v22, v21, v49);
  v36 = v49[0];
  v37 = v49[1];
  sub_1B9D9DB30(v50);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      sub_1B9D9D534(a1, a2);
      *(v3 + 24) = 0;
      return v3;
    }

    v39 = *(v36 + 16);
    v40 = sub_1B9DD2628();
    if (v40)
    {
      v41 = v40;
      v42 = sub_1B9DD2658();
      if (__OFSUB__(v39, v42))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v43 = (v39 - v42 + v41);
      sub_1B9DD2648();
      if (v43)
      {
LABEL_58:
        v47 = *v43;
        sub_1B9D9D534(a1, a2);
        sub_1B9D9D534(v36, v37);
        *(v3 + 24) = v47;
        return v3;
      }
    }

    else
    {
      sub_1B9DD2648();
    }

    __break(1u);
    goto LABEL_71;
  }

  if (!v38)
  {
    sub_1B9D9D534(a1, a2);
    *(v3 + 24) = v36;
    return v3;
  }

  if (v36 > v36 >> 32)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v44 = sub_1B9DD2628();
  if (!v44)
  {
LABEL_71:
    result = sub_1B9DD2648();
    __break(1u);
    goto LABEL_72;
  }

  v45 = v44;
  v46 = sub_1B9DD2658();
  if (__OFSUB__(v36, v46))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = (v36 - v46 + v45);
  result = sub_1B9DD2648();
  if (v43)
  {
    goto LABEL_58;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1B9D9E420(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
  }

  else if (v6 > a2)
  {
    if (a2 + 1 >= a1)
    {
      return MEMORY[0x1EEDC4510]();
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return MEMORY[0x1EEDC4510]();
}

uint64_t sub_1B9D9E48C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1B9D9E7A0(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1B9D9EA44(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1B9D9EAFC(v3, v4);
    }

    else
    {
      v6 = sub_1B9D9EB78(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1B9D9DB30(v8);
  return v6;
}

uint64_t sub_1B9D9E548()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = xmmword_1B9DD50F0;
  v5 = *(v0 + 24);
  v1 = sub_1B9D9E48C(&v5, &v6);
  v3 = v2;
  sub_1B9DD27A8();
  sub_1B9D9D534(v1, v3);
  return v6;
}

uint64_t sub_1B9D9E5EC()
{
  result = (*(*v0 + 112))();
  if (!v1)
  {
    v4 = v3;
    v5 = result;
    sub_1B9DAB4F0(0xD000000000000015, 0x80000001B9DDD610, result, v3);
    return sub_1B9D9D534(v5, v4);
  }

  return result;
}

uint64_t sub_1B9D9E680(uint64_t a1)
{
  v3 = sub_1B9DAB158(0xD000000000000015, 0x80000001B9DDD610);
  if (!v1)
  {
    if (v4 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      v5 = v3;
      v6 = v4;
      type metadata accessor for LaunchWarningMark();
      a1 = swift_allocObject();
      sub_1B9D9DFE0(v5, v6);
    }
  }

  return a1;
}

unint64_t sub_1B9D9E728()
{
  result = qword_1EBBE31B8;
  if (!qword_1EBBE31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31B8);
  }

  return result;
}

void *sub_1B9D9E7A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_1B9D9E7E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B9D9EA44(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B9D9EAFC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B9D9EB78(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_1B9D9E87C()
{
  result = qword_1EBBE31C0;
  if (!qword_1EBBE31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE31C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningMarkError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchWarningMarkError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B9D9EA44(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B9D9EAFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B9DD2668();
  swift_allocObject();
  result = sub_1B9DD2618();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9DD2748();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B9D9EB78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B9DD2668();
  swift_allocObject();
  result = sub_1B9DD2618();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void __swiftcall MISProfileDBClient.init()(MISProfileDBClient *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id MISProfileDBClient.init()()
{
  v69 = *MEMORY[0x1E69E9840];
  v0 = sub_1B9DD28D8();
  v65 = *(v0 - 8);
  v66 = v0;
  v1 = MEMORY[0x1EEE9AC00](v0);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v62 = &v62 - v3;
  v4 = sub_1B9DD26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v62 - v9;
  v11 = sub_1B9DD2728();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B9DA43D4();
  v17 = objc_msgSend_stringByAppendingPathComponent_(v15, v16, @"mis.db");

  v18 = v17;
  if (!v18)
  {
    __break(1u);
  }

  v19 = v18;
  sub_1B9DD2998();

  (*(v12 + 56))(v10, 1, 1, v11);
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
  sub_1B9DD2718();
  v20 = objc_allocWithZone(MISDBManager);
  v21 = sub_1B9DD26C8();
  v22 = [v20 initWithDatabaseURL:v21 asReadOnly:1];

  (*(v12 + 8))(v14, v11);
  v23 = v64;
  *&v64[OBJC_IVAR___MISProfileDBClient_db] = v22;
  v24 = [v22 readSetting_];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1B9DD2998();
    v28 = v27;

    v29 = sub_1B9DD2998();
    v32 = v65;
    v31 = v66;
    if (v26 == v29 && v28 == v30)
    {
    }

    else
    {
      v43 = sub_1B9DD2C18();

      if ((v43 & 1) == 0)
      {
LABEL_12:
        type metadata accessor for MISAgentClient();
        v47.super.isa = MISAgentClient.init()().super.isa;
        v67 = 0;
        if ([(objc_class *)v47.super.isa migrateData:0 error:&v67])
        {
          v48 = v67;
        }

        else
        {
          v49 = v67;
          v50 = sub_1B9DD2698();

          swift_willThrow();
          v51 = sub_1B9DA9E4C();
          v52 = v63;
          (*(v32 + 16))(v63, v51, v31);
          v53 = v50;
          v54 = sub_1B9DD28B8();
          v55 = sub_1B9DD2AC8();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            *v56 = 138543362;
            v58 = v50;
            v59 = _swift_stdlib_bridgeErrorToNSError();
            *(v56 + 4) = v59;
            *v57 = v59;
            _os_log_impl(&dword_1B9D96000, v54, v55, "Error migrating user trust: %{public}@", v56, 0xCu);
            sub_1B9DA429C(v57, &qword_1EBBE31D8, "Xa");
            MEMORY[0x1BFAE80B0](v57, -1, -1);
            v60 = v56;
            v52 = v63;
            MEMORY[0x1BFAE80B0](v60, -1, -1);
          }

          else
          {
          }

          (*(v32 + 8))(v52, v31);
        }

        goto LABEL_18;
      }
    }

    v44 = sub_1B9DA357C(v33, v34, v35);
    if ((v44 & 1) == 0 && !sub_1B9DA367C(v44, v45, v46))
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v36 = sub_1B9DA9E4C();
  v38 = v65;
  v37 = v66;
  v39 = v62;
  (*(v65 + 16))(v62, v36, v66);
  v40 = sub_1B9DD28B8();
  v41 = sub_1B9DD2AC8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1B9D96000, v40, v41, "Error fetching schema version", v42, 2u);
    MEMORY[0x1BFAE80B0](v42, -1, -1);
  }

  (*(v38 + 8))(v39, v37);
LABEL_18:
  v68.receiver = v23;
  v68.super_class = MISProfileDBClient;
  return objc_msgSendSuper2(&v68, sel_init);
}

uint64_t sub_1B9D9F338(uint64_t (*a1)(void), const char *a2, ...)
{
  v4 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v6 = a1();

  return v6;
}

Swift::String_optional __swiftcall MISProfileDBClient.teamID(withProfileUUID:)(Swift::String withProfileUUID)
{
  object = withProfileUUID._object;
  countAndFlagsBits = withProfileUUID._countAndFlagsBits;
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B9DD28D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___MISProfileDBClient_db);
  v9 = sub_1B9DD2968();
  v33[0] = 0;
  v10 = [v8 getTeamIDForProfileUUID:v9 error:v33];

  v11 = v33[0];
  if (v10)
  {
    v12 = sub_1B9DD2998();
    v14 = v13;
    v15 = v11;
  }

  else
  {
    v16 = v33[0];
    v17 = sub_1B9DD2698();

    swift_willThrow();
    v18 = sub_1B9DA9E4C();
    (*(v5 + 16))(v7, v18, v4);

    v19 = v17;
    v20 = sub_1B9DD28B8();
    v21 = sub_1B9DD2AC8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v20;
      v25 = v24;
      v33[0] = v24;
      *v22 = 136446466;
      *(v22 + 4) = sub_1B9D9D588(countAndFlagsBits, object, v33);
      *(v22 + 12) = 2114;
      v26 = v17;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v27;
      *v23 = v27;
      v28 = v32;
      _os_log_impl(&dword_1B9D96000, v32, v21, "Error getting team ID for profile UUID %{public}s: %{public}@", v22, 0x16u);
      sub_1B9DA429C(v23, &qword_1EBBE31D8, "Xa");
      MEMORY[0x1BFAE80B0](v23, -1, -1);
      sub_1B9D9DB30(v25);
      MEMORY[0x1BFAE80B0](v25, -1, -1);
      MEMORY[0x1BFAE80B0](v22, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    v12 = 0;
    v14 = 0;
  }

  v29 = v12;
  v30 = v14;
  result.value._object = v30;
  result.value._countAndFlagsBits = v29;
  return result;
}

BOOL sub_1B9D9F9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4, ...)
{
  v8 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v4 + OBJC_IVAR___MISProfileDBClient_db);
  v10 = a3(a1, a2);

  return v10 != 0;
}

uint64_t sub_1B9D9FCDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4, ...)
{
  v8 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v4 + OBJC_IVAR___MISProfileDBClient_db);
  LOBYTE(a3) = a3(a1, a2);

  return a3 & 1;
}

uint64_t MISProfileDBClient.auxiliarySignature(withTeamID:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v7 = sub_1B9D9C0B4(a1, a2);

  if (v7)
  {
    v8 = [v7 signature];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1B9DD2798();

      return v10;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall MISProfileDBClient.deviceUDID()()
{
  v1 = [*(v0 + OBJC_IVAR___MISProfileDBClient_db) readSetting_];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B9DD2998();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v3;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

id sub_1B9DA05DC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1B9DD2A68();

  return v5;
}

uint64_t sub_1B9DA0664(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4, ...)
{
  v8 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v4 + OBJC_IVAR___MISProfileDBClient_db);
  v10 = a3(a1, a2);

  return v10;
}

uint64_t MISProfileDBClient.teamIDs(withSigningIdentity:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B9DD28D8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - v8;
  v10 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v11 = sub_1B9D9B44C(a1, a2);

  if (*(v11 + 16) >= 2uLL)
  {
    v12 = sub_1B9DA9E4C();
    (*(v6 + 16))(v9, v12, v5);

    v13 = sub_1B9DD28B8();
    v14 = sub_1B9DD2AC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_1B9D9D588(a1, a2, v22);
      *(v15 + 12) = 2082;
      v17 = MEMORY[0x1BFAE6AA0](v11, MEMORY[0x1E69E6158]);
      v19 = sub_1B9D9D588(v17, v18, v22);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1B9D96000, v13, v14, "Signing identity %{public}s has more than one team IDs: %{public}s. This will cause issues with user trust.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v16, -1, -1);
      MEMORY[0x1BFAE80B0](v15, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
  }

  return v11;
}

id sub_1B9DA0DBC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  v10 = sub_1B9DD2A68();

  return v10;
}

uint64_t sub_1B9DA0E88(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1B9DD2998();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t MISProfileDBClient.isCDHashBanned(_:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v2 + OBJC_IVAR___MISProfileDBClient_db);
  v7 = sub_1B9DB1788(a1, a2);

  return v7 & 1;
}

void sub_1B9DA1294(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, int a6, const char *a7, ...)
{
  v15 = sub_1B9DD28D8();
  v24 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v25 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B9DCC028();
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 9.22337204e18)
  {
    v22 = a6;
    v23 = a7;
    v18 = v17;
    v19 = sub_1B9DCC054();
    v20 = *(v7 + OBJC_IVAR___MISProfileDBClient_db);
    sub_1B9DB0BC8(v18, v19, a1, a2, a3, a4, a5 & 1);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1B9DA16A0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *, unint64_t))
{
  v6 = a4;
  if (!a3)
  {
    v8 = 0;
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = a1;
    v14 = 0xF000000000000000;
    goto LABEL_6;
  }

  v8 = sub_1B9DD2998();
  v10 = v9;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = v6;
  v12 = a1;
  v6 = sub_1B9DD2798();
  v14 = v13;

LABEL_6:
  v16 = a5(v8, v10, v6, v14);
  sub_1B9D9D520(v6, v14);

  return v16 & 1;
}

uint64_t MISProfileDBClient.isRejected(withProfileUUID:withCDHash:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1B9DD28D8();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1B9DD2968();
  v12 = sub_1B9DBF144(v10, v11);

  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v13 = *(v4 + OBJC_IVAR___MISProfileDBClient_db);
    v14 = sub_1B9DB11EC(a1, a2, a3, a4);
  }

  return v14 & 1;
}

id sub_1B9DA1BA8(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void *a5)
{
  v8 = a1;
  a3();

  sub_1B9DA4254(0, a4, a5);
  v9 = sub_1B9DD2A68();

  return v9;
}

void sub_1B9DA1C2C(void *a1)
{
  v3 = sub_1B9DD2838();
  v126 = *(v3 - 8);
  v127 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v125 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1B9DD2878();
  v5 = *(v129 - 8);
  v6 = MEMORY[0x1EEE9AC00](v129);
  v115 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v113 - v8;
  v10 = sub_1B9D9B898(&qword_1EBBE3238, &qword_1B9DD5258);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v113 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v113 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v113 - v20;
  v22 = sub_1B9DA3FBC(MEMORY[0x1E69E7CC0]);
  UUID = MISProvisioningProfileGetUUID(a1);
  if (!UUID)
  {
    __break(1u);
    goto LABEL_34;
  }

  v122 = v1;
  v114 = v9;
  v124 = v16;
  v128 = v5;
  v131 = v21;
  v16 = UUID;
  v25 = sub_1B9DD2998();
  if (!@"UUID")
  {
LABEL_34:

    __break(1u);
    goto LABEL_35;
  }

  v26 = v24;
  v130 = v16;
  v27 = sub_1B9DD2998();
  v29 = v28;
  v136 = MEMORY[0x1E69E6158];
  *&v135 = v25;
  *(&v135 + 1) = v26;
  sub_1B9DA4230(&v135, v134);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v22;
  sub_1B9DA3BA4(v134, v27, v29, isUniquelyReferenced_nonNull_native);

  v31 = v133;
  Name = MISProvisioningProfileGetName(a1);
  if (!Name)
  {
LABEL_35:

    __break(1u);
    goto LABEL_36;
  }

  v33 = Name;
  v34 = sub_1B9DD2998();
  v36 = v35;

  if (!@"Name")
  {
LABEL_36:

    __break(1u);
    goto LABEL_37;
  }

  v121 = v13;
  v37 = sub_1B9DD2998();
  v39 = v38;
  v136 = MEMORY[0x1E69E6158];
  *&v135 = v34;
  *(&v135 + 1) = v36;
  sub_1B9DA4230(&v135, v134);

  v40 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v31;
  sub_1B9DA3BA4(v134, v37, v39, v40);

  v41 = v133;
  TeamIdentifier = MISProvisioningProfileGetTeamIdentifier(a1);
  if (!TeamIdentifier)
  {
LABEL_37:

    __break(1u);
    goto LABEL_38;
  }

  v123 = TeamIdentifier;
  v44 = sub_1B9DD2998();
  if (!@"TeamIdentifier")
  {
LABEL_38:

    __break(1u);
    goto LABEL_39;
  }

  v45 = v43;
  v118 = v36;
  v116 = v26;
  v46 = sub_1B9DD2998();
  v48 = v47;
  v136 = MEMORY[0x1E69E6158];
  *&v135 = v44;
  *(&v135 + 1) = v45;
  sub_1B9DA4230(&v135, v134);
  v117 = v45;

  v49 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v41;
  sub_1B9DA3BA4(v134, v46, v48, v49);

  v50 = v133;
  v132 = a1;
  CreationDate = MISProvisioningProfileGetCreationDate(a1);
  if (!CreationDate)
  {
LABEL_39:

    __break(1u);
LABEL_40:

    __break(1u);
    goto LABEL_41;
  }

  v52 = CreationDate;
  v53 = v131;
  sub_1B9DD2868();

  v54 = v128;
  v55 = v129;
  v56 = *(v128 + 56);
  v56(v53, 0, 1, v129);
  sub_1B9DA436C(v53, v19, &qword_1EBBE3238, &qword_1B9DD5258);
  v57 = *(v54 + 48);
  v58 = v57(v19, 1, v55);
  v120 = v56;
  v119 = v57;
  if (v58 == 1)
  {
    sub_1B9DA429C(v19, &qword_1EBBE3238, &qword_1B9DD5258);
  }

  else
  {
    v59 = v114;
    (*(v54 + 32))(v114, v19, v55);
    if (!@"CreationDate")
    {
LABEL_44:

      __break(1u);
      goto LABEL_45;
    }

    v60 = v55;
    v61 = v54;
    v113 = sub_1B9DD2998();
    v63 = v62;
    v64 = v125;
    sub_1B9DA2830(v125);
    v65 = sub_1B9DD27D8();
    v67 = v66;
    (*(v126 + 8))(v64, v127);
    v136 = MEMORY[0x1E69E6158];
    *&v135 = v65;
    *(&v135 + 1) = v67;
    sub_1B9DA4230(&v135, v134);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v50;
    sub_1B9DA3BA4(v134, v113, v63, v68);

    v55 = v60;
    (*(v61 + 8))(v59, v60);
    v50 = v133;
    v53 = v131;
    v54 = v61;
  }

  v69 = v121;
  ExpirationDate = MISProvisioningProfileGetExpirationDate(v132);
  if (!ExpirationDate)
  {
    goto LABEL_40;
  }

  v71 = ExpirationDate;
  v72 = v124;
  sub_1B9DD2868();

  sub_1B9DA429C(v53, &qword_1EBBE3238, &qword_1B9DD5258);
  v120(v72, 0, 1, v55);
  sub_1B9DA42FC(v72, v53);
  sub_1B9DA436C(v53, v69, &qword_1EBBE3238, &qword_1B9DD5258);
  if (v119(v69, 1, v55) == 1)
  {
    sub_1B9DA429C(v69, &qword_1EBBE3238, &qword_1B9DD5258);
    v73 = v132;
LABEL_17:
    v83 = MISProvisioningProfileProvisionsAllDevices(v73);
    v84 = MEMORY[0x1E69E6370];
    if (!v83)
    {
LABEL_20:
      if (!MISProvisioningProfileIsForLocalProvisioning(v73))
      {
LABEL_23:
        if (MISProfileIsDEREncoded(v73))
        {
          v136 = MEMORY[0x1E69E6158];
          v93 = 5391684;
        }

        else
        {
          v136 = MEMORY[0x1E69E6158];
          v93 = 5000536;
        }

        *&v135 = v93;
        *(&v135 + 1) = 0xE300000000000000;
        sub_1B9DA4230(&v135, v134);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v50;
        sub_1B9DA3BA4(v134, 0x676E69646F636E45, 0xEE00726F76616C46, v94);
        v95 = v133;
        v96 = v122;
        v97 = v130;
        v98 = [v122 isProfileTrusted_];

        v136 = v84;
        LOBYTE(v135) = v98;
        sub_1B9DA4230(&v135, v134);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v95;
        sub_1B9DA3BA4(v134, 0x7375725472657355, 0xEB00000000646574, v99);
        v100 = v133;
        v101 = v96;
        v102 = v123;
        v103 = [v101 auxiliarySignatureWithTeamID_];

        if (v103)
        {
          v104 = sub_1B9DD2798();
          v106 = v105;
        }

        else
        {
          v104 = 0;
          v106 = 0xF000000000000000;
        }

        v136 = v84;
        LOBYTE(v135) = v106 >> 60 != 15;
        sub_1B9DA4230(&v135, v134);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v100;
        sub_1B9DA3BA4(v134, 0xD000000000000015, 0x80000001B9DDD720, v107);
        v108 = v133;
        if (!MISProvisioningProfileIsAppleInternalProfile(v132))
        {

          sub_1B9D9D520(v104, v106);
          sub_1B9DA429C(v53, &qword_1EBBE3238, &qword_1B9DD5258);
          return;
        }

        if (@"AppleInternalProfile")
        {

          v109 = sub_1B9DD2998();
          v111 = v110;
          v136 = v84;
          LOBYTE(v135) = 1;
          sub_1B9DA4230(&v135, v134);
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v133 = v108;
          sub_1B9DA3BA4(v134, v109, v111, v112);
          sub_1B9D9D520(v104, v106);

          sub_1B9DA429C(v53, &qword_1EBBE3238, &qword_1B9DD5258);
          return;
        }

        goto LABEL_43;
      }

      if (@"LocalProvision")
      {
        v89 = sub_1B9DD2998();
        v91 = v90;
        v136 = v84;
        LOBYTE(v135) = 1;
        sub_1B9DA4230(&v135, v134);
        v92 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v50;
        sub_1B9DA3BA4(v134, v89, v91, v92);

        v50 = v133;
        goto LABEL_23;
      }

LABEL_42:

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (@"ProvisionsAllDevices")
    {
      v85 = sub_1B9DD2998();
      v87 = v86;
      v136 = v84;
      LOBYTE(v135) = 1;
      sub_1B9DA4230(&v135, v134);
      v88 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v50;
      sub_1B9DA3BA4(v134, v85, v87, v88);

      v50 = v133;
      goto LABEL_20;
    }

LABEL_41:

    __break(1u);
    goto LABEL_42;
  }

  v74 = v115;
  (*(v54 + 32))(v115, v69, v55);
  v73 = v132;
  if (@"ExpirationDate")
  {
    v75 = sub_1B9DD2998();
    v77 = v76;
    v78 = v125;
    sub_1B9DA2830(v125);
    v79 = sub_1B9DD27D8();
    v81 = v80;
    (*(v126 + 8))(v78, v127);
    v136 = MEMORY[0x1E69E6158];
    *&v135 = v79;
    *(&v135 + 1) = v81;
    sub_1B9DA4230(&v135, v134);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v50;
    sub_1B9DA3BA4(v134, v75, v77, v82);

    (*(v54 + 8))(v74, v55);
    v50 = v133;
    v53 = v131;
    goto LABEL_17;
  }

LABEL_45:

  __break(1u);
}

uint64_t sub_1B9DA2830@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1B9D9B898(&qword_1EBBE3240, qword_1B9DD5260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_1B9DD28A8();
  v3 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B9DD2828();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B9DD2808();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B9DD27E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B9DD27F8();
  MEMORY[0x1EEE9AC00](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969358], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x1E6969370], v8);
  (*(v5 + 104))(v21, *MEMORY[0x1E6969380], v27);
  sub_1B9DD2898();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_1B9DD2818();
  }

  return result;
}

void MISProfileDBClient.diagnostics()()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B9DA3FBC(MEMORY[0x1E69E7CC0]);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = MISProfileEnumerationFlagDefault;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0;
  v32 = sub_1B9DA40EC;
  v33 = v5;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v30 = sub_1B9DA30C4;
  v31 = &unk_1F37D98A8;
  v6 = _Block_copy(&aBlock);

  v7 = v0;

  MISEnumerateInstalledProvisioningProfiles(v4, v6);
  _Block_release(v6);
  swift_beginAccess();
  v8 = *(v3 + 16);
  v9 = sub_1B9D9B898(&qword_1EBBE31E0, &qword_1B9DD5220);
  v31 = v9;
  *&aBlock = v8;
  sub_1B9DA4230(&aBlock, v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9DA3BA4(v28, 0x73656C69666F7270, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  v11 = [v7 onlineAuthEntries];
  sub_1B9DA4254(0, &qword_1EBBE31E8, off_1E7ED4638);
  v12 = sub_1B9DD2A78();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v9;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_15:
    v15 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v31 = v27;
    *&aBlock = v15;
    sub_1B9DA4230(&aBlock, v28);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000013, 0x80000001B9DDD670, v22);
    v23 = sub_1B9DCC028();
    v31 = MEMORY[0x1E69E63B0];
    *&aBlock = v23;
    sub_1B9DA4230(&aBlock, v28);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000016, 0x80000001B9DDD690, v24);
    v25 = sub_1B9DCC054();
    v31 = MEMORY[0x1E69E72F0];
    LODWORD(aBlock) = v25;
    sub_1B9DA4230(&aBlock, v28);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B9DA3BA4(v28, 0xD000000000000017, 0x80000001B9DDD6B0, v26);
    sub_1B9DA3120(v2);

    return;
  }

  v13 = sub_1B9DD2BB8();
  v27 = v9;
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1BFAE6BB0](v14, v12);
      }

      else
      {
        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 dictionaryDescription];
      v19 = sub_1B9DD2958();

      v31 = sub_1B9D9B898(&qword_1EBBE31F0, &qword_1B9DD5228);
      *&aBlock = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1B9DA346C(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_1B9DA346C((v20 > 1), v21 + 1, 1, v15);
      }

      ++v14;

      *(v15 + 2) = v21 + 1;
      sub_1B9DA4230(&aBlock, &v15[32 * v21 + 32]);
    }

    while (v13 != v14);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1B9DA30C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1B9DA3120(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B9D9B898(&qword_1EBBE3210, &qword_1B9DD5230);
    v2 = sub_1B9DD2BE8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1B9D9DBE4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1B9DA4230(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1B9DA4230(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1B9DA4230(v31, v32);
    result = sub_1B9DD2B58();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1B9DA4230(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_1B9DA346C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9D9B898(&qword_1EBBE3218, &qword_1B9DD5238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B9DA357C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v4 = @"UserTrustedUpps.plist";
  v5 = @"/private/var/db/MobileIdentityData";
  v7 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v6, v4);

  LOBYTE(v4) = objc_msgSend_fileExistsAtPath_(v3, v8, v7);
  if (v4)
  {
    return 1;
  }

  v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10);
  v13 = @"UserTrust.db";
  v14 = @"/private/var/db/MobileIdentityData";
  v16 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v15, v13);

  v18 = objc_msgSend_fileExistsAtPath_(v12, v17, v16);
  return v18;
}

uint64_t sub_1B9DA367C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v4 = @"Indeterminates.plist";
  v5 = @"/private/var/db/MobileIdentityData";
  v7 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v6, v4);

  if (objc_msgSend_fileExistsAtPath_(v3, v8, v7))
  {
    v9 = 1;
  }

  else
  {
    v10 = @"AGP.plist";
    v11 = @"/private/var/db/MobileIdentityData";
    v13 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v12, v10);

    if (objc_msgSend_fileExistsAtPath_(v3, v14, v13))
    {
      v9 = 1;
    }

    else
    {
      v15 = @"Rejections.plist";
      v16 = @"/private/var/db/MobileIdentityData";
      v18 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v17, v15);

      if (objc_msgSend_fileExistsAtPath_(v3, v19, v18))
      {
        v9 = 1;
      }

      else
      {
        v20 = @"AuthListBannedUpps.plist";
        v21 = @"/private/var/db/MobileIdentityData";
        v23 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v22, v20);

        if (objc_msgSend_fileExistsAtPath_(v3, v24, v23))
        {
          v9 = 1;
        }

        else
        {
          v25 = @"AuthListBannedCdHashes.plist";
          v26 = @"/private/var/db/MobileIdentityData";
          v28 = objc_msgSend_stringByAppendingPathComponent_(@"/private/var/db/MobileIdentityData", v27, v25);

          v9 = objc_msgSend_fileExistsAtPath_(v3, v29, v28);
        }
      }
    }
  }

  return v9;
}

unint64_t sub_1B9DA3874(uint64_t a1, uint64_t a2)
{
  sub_1B9DD2C98();
  sub_1B9DD29E8();
  v4 = sub_1B9DD2CB8();

  return sub_1B9DA3D60(a1, a2, v4);
}

uint64_t sub_1B9DA38EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
  v33 = v4;
  result = sub_1B9DD2BD8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B9DA4230(v24, v34);
      }

      else
      {
        sub_1B9D9DBE4(v24, v34);
      }

      sub_1B9DD2C98();
      sub_1B9DD29E8();
      result = sub_1B9DD2CB8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B9DA4230(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1B9DA3BA4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9DA3874(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B9DA3E18();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9DA38EC(v16, a4 & 1);
    v11 = sub_1B9DA3874(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1B9DD2C38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1B9D9DB30(v22);

    return sub_1B9DA4230(a1, v22);
  }

  else
  {
    sub_1B9DA3CF4(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B9DA3CF4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B9DA4230(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1B9DA3D60(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B9DD2C18())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_1B9DA3E18()
{
  v1 = v0;
  sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
  v2 = *v0;
  v3 = sub_1B9DD2BC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B9D9DBE4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B9DA4230(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1B9DA3FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
    v3 = sub_1B9DD2BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B9DA436C(v4, &v13, &qword_1EBBE3248, &unk_1B9DD5BB0);
      v5 = v13;
      v6 = v14;
      result = sub_1B9DA3874(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9DA4230(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1B9DA40EC()
{
  v1 = *(v0 + 16);
  sub_1B9D9B898(&qword_1EBBE3228, &qword_1B9DD5248);
  v2 = sub_1B9DD2B08();
  sub_1B9DA1C2C(v2);
  v4 = v3;
  v11 = sub_1B9D9B898(&qword_1EBBE3230, &qword_1B9DD5250);
  *&v10 = v4;
  swift_beginAccess();
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1B9DA346C(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1B9DA346C((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  sub_1B9DA4230(&v10, &v5[32 * v8 + 32]);
  *(v1 + 16) = v5;
  swift_endAccess();
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1B9DA4218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_1B9DA4230(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B9DA4254(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1B9DA429C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1B9D9B898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9DA42FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3238, &qword_1B9DD5258);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA436C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1B9D9B898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for LegacyUserTrustedProfileEntry(uint64_t a1)
{
  result = qword_1EBBE3688;
  if (!qword_1EBBE3688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9DA442C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B9D9DB90(a3, a4);
  }
}

void sub_1B9DA4478(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B9D9D534(a3, a4);
  }
}

uint64_t sub_1B9DA44C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1B9DA44E0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B9DA44EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B9DA4534(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B9DA45AC(uint64_t a1)
{
  sub_1B9DD2888();
  if (v1 <= 0x3F)
  {
    sub_1B9DA4630();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9DA4630()
{
  if (!qword_1EBBE3250)
  {
    v0 = sub_1B9DD2B18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBE3250);
    }
  }
}

void sub_1B9DA4680(uint64_t a1)
{
  v2 = a1;
  v3 = objc_allocWithZone(v1);
  sub_1B9DA46B4(v2);
}

void sub_1B9DA46B4(int a1)
{
  v20 = a1;
  v1 = sub_1B9DD26A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1B9DD2728();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B9DD2968();
  v13 = sub_1B9DA4E6C();
  v15 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, v12);

  v16 = v15;
  if (v16)
  {
    sub_1B9DD2998();

    (*(v9 + 56))(v7, 1, 1, v8);
    (*(v2 + 104))(v4, *MEMORY[0x1E6968F70], v1);
    sub_1B9DD2718();
    v17 = sub_1B9DD26C8();
    (*(v9 + 8))(v11, v8);
    v18 = type metadata accessor for LegacyUserTrustDB();
    v21.receiver = v19;
    v21.super_class = v18;
    objc_msgSendSuper2(&v21, sel_initWithDatabaseURL_asReadOnly_, v17, v20 & 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9DA4BB8()
{
  v1 = v0;
  v2 = sub_1B9DD2728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 dbURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v7 = *(v3 + 8);
  v7(v5, v2);
  v8 = sub_1B9DD29D8();

  sub_1B9DD1A74((v8 + 32));

  v9 = [v1 shmURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v7(v5, v2);
  v10 = sub_1B9DD29D8();

  sub_1B9DD1A74((v10 + 32));

  v11 = [v1 walURL];
  sub_1B9DD26E8();

  sub_1B9DD26F8();
  v7(v5, v2);
  v12 = sub_1B9DD29D8();

  sub_1B9DD1A74((v12 + 32));
}

id sub_1B9DA4E38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustDB();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

const char *sub_1B9DA4E78(void *a1)
{
  v2 = sub_1B9DD28D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - v7;
  v9 = sub_1B9DD2918();
  result = swift_unknownObjectRelease();
  if (v9 != a1)
  {
    v11 = MEMORY[0x1BFAE82F0](a1);
    if (v11 == sub_1B9DD28E8())
    {
      v21 = sub_1B9DD2908();
      result = xpc_dictionary_get_string(a1, v21);
      if (result)
      {
        v22 = sub_1B9DD2A08();
        v24 = v23;
        v25 = sub_1B9DA9E08();
        (*(v3 + 16))(v8, v25, v2);

        v26 = sub_1B9DD28B8();
        v27 = sub_1B9DD2AC8();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v32 = v29;
          *v28 = 136446210;
          v30 = sub_1B9D9D588(v22, v24, &v32);

          *(v28 + 4) = v30;
          _os_log_impl(&dword_1B9D96000, v26, v27, "misagent connection error: %{public}s", v28, 0xCu);
          sub_1B9D9DB30(v29);
          MEMORY[0x1BFAE80B0](v29, -1, -1);
          MEMORY[0x1BFAE80B0](v28, -1, -1);
        }

        else
        {
        }

        return (*(v3 + 8))(v8, v2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      MEMORY[0x1BFAE8200](a1);
      v12 = sub_1B9DD2A08();
      v14 = v13;
      v15 = sub_1B9DA9E08();
      (*(v3 + 16))(v6, v15, v2);

      v16 = sub_1B9DD28B8();
      v17 = sub_1B9DD2AC8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136446210;
        v20 = sub_1B9D9D588(v12, v14, &v32);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_1B9D96000, v16, v17, "Received unhandled event from misagent: %{public}s", v18, 0xCu);
        sub_1B9D9DB30(v19);
        MEMORY[0x1BFAE80B0](v19, -1, -1);
        MEMORY[0x1BFAE80B0](v18, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_1B9DA51EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MISAgentClient.ping()()
{
  v0 = sub_1B9DA5D10();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1B9DA5810(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_1B9D9D520(v7, v13);
  return 1;
}

MISAgentClient __swiftcall MISAgentClient.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B9DA5998(uint64_t a1, unint64_t a2, xpc_object_t xdict, char *key)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(bytes, 0, 14);
      v9 = xdict;
      v10 = key;
      v8 = 0;
      goto LABEL_9;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      bytes[0] = a1;
      LOWORD(bytes[1]) = a2;
      BYTE2(bytes[1]) = BYTE2(a2);
      BYTE3(bytes[1]) = BYTE3(a2);
      BYTE4(bytes[1]) = BYTE4(a2);
      v8 = BYTE6(a2);
      BYTE5(bytes[1]) = BYTE5(a2);
      v9 = xdict;
      v10 = key;
LABEL_9:
      xpc_dictionary_set_data(v9, v10, bytes, v8);
      return swift_unknownObjectRelease();
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  sub_1B9DA5B10(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict, key);
  return swift_unknownObjectRelease();
}

char *sub_1B9DA5B10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const char *a5)
{
  result = sub_1B9DD2628();
  v10 = result;
  if (result)
  {
    result = sub_1B9DD2658();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B9DD2648();
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  xpc_dictionary_set_data(a4, a5, v10, v13);
  return swift_unknownObjectRelease();
}

const char *sub_1B9DA5BB8(void *a1)
{
  v2 = MEMORY[0x1BFAE82F0]();
  result = sub_1B9DD28F8();
  if (result != v2)
  {
    if (sub_1B9DD28E8() == v2)
    {
      v10 = sub_1B9DD2908();
      result = xpc_dictionary_get_string(a1, v10);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = sub_1B9DD2A08();
      v7 = v11;
      sub_1B9DD2B88();

      v8 = 0x80000001B9DDD900;
      v9 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = MEMORY[0x1BFAE82F0](a1);
      xpc_type_get_name(v4);
      v5 = sub_1B9DD2A08();
      v7 = v6;
      sub_1B9DD2B88();

      v8 = 0x80000001B9DDD8E0;
      v9 = 0xD000000000000014;
    }

    v13 = v9;
    v14 = v8;
    MEMORY[0x1BFAE6A10](v5, v7);

    sub_1B9DA7600();
    swift_allocError();
    *v12 = v13;
    *(v12 + 8) = v14;
    *(v12 + 16) = 0;
    *(v12 + 20) = 0;
    return swift_willThrow();
  }

  return result;
}

_xpc_connection_s *sub_1B9DA5D10()
{
  result = sub_1B9DD25B0();
  if (result)
  {
    v2 = result;
    v8[4] = sub_1B9DA4E78;
    v8[5] = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B9DA51EC;
    v8[3] = &unk_1F37D9A80;
    v3 = _Block_copy(v8);
    xpc_connection_set_event_handler(v2, v3);
    _Block_release(v3);
    xpc_connection_resume(v2);
    type metadata accessor for XPCConnection();
    v4 = sub_1B9DA8518(v2);
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "MessageType", "Ping");
    v6 = (*(*v4 + 88))();
    v7 = xpc_connection_send_message_with_reply_sync(v6, v5);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v7);
    if (v0)
    {
LABEL_5:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v6;
    }

    result = xpc_dictionary_get_string(v7, "Payload");
    if (result)
    {
      v6 = sub_1B9DD2A08();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

xpc_connection_t sub_1B9DA5EC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int a7)
{
  v68 = a5;
  v69 = a1;
  v76 = a3;
  v12 = sub_1B9DD28D8();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v15 = result;
    v74 = sub_1B9DA4E78;
    v75 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1B9DA51EC;
    v73 = &unk_1F37D9A58;
    v16 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v15, v16);
    _Block_release(v16);
    xpc_connection_resume(v15);
    type metadata accessor for XPCConnection();
    v17 = sub_1B9DA8518(v15);
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v18, "MessageType", "Trust");
    v19 = xpc_dictionary_create(0, 0, 0);
    v67 = a7;
    xpc_dictionary_set_BOOL(v19, "Trust", a7 & 1);
    if (a2)
    {
      v20 = sub_1B9DD29D8();
      xpc_dictionary_set_string(v19, "ProfileID", (v20 + 32));
    }

    v21 = a6;
    if (a4)
    {
      v22 = sub_1B9DD29D8();
      xpc_dictionary_set_string(v19, "TeamID", (v22 + 32));
    }

    v66 = a6 >> 60;
    if (a6 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      v23 = v68;
      sub_1B9D9DB7C(v68, a6);
      sub_1B9DA5998(v23, a6, v19, "AuxiliarySignature");
      sub_1B9D9D520(v23, a6);
    }

    xpc_dictionary_set_value(v18, "Payload", v19);
    v24 = (*(*v17 + 88))();
    v25 = xpc_connection_send_message_with_reply_sync(v24, v18);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v25);
    if (v7)
    {
      goto LABEL_31;
    }

    v62 = v25;
    uint64 = xpc_dictionary_get_uint64(v25, "Status");
    if (uint64)
    {
      aBlock = 0;
      v71 = 0xE000000000000000;
      sub_1B9DD2B88();
      MEMORY[0x1BFAE6A10](0xD000000000000034, 0x80000001B9DDD9D0);
      v65 = uint64;
      countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
      MEMORY[0x1BFAE6A10](countAndFlagsBits);

      MEMORY[0x1BFAE6A10](0xD000000000000010, 0x80000001B9DDDA10);
      if (a2)
      {
        v28 = v69;
      }

      else
      {
        v28 = 7104878;
      }

      v29 = 0xE300000000000000;
      if (a2)
      {
        v30 = a2;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v31 = 7104878;

      MEMORY[0x1BFAE6A10](v28, v30);

      MEMORY[0x1BFAE6A10](0x44496D616574202CLL, 0xEB00000000203D20);
      if (a4)
      {
        v32 = v76;
      }

      else
      {
        v32 = 7104878;
      }

      if (a4)
      {
        v33 = a4;
      }

      else
      {
        v33 = 0xE300000000000000;
      }

      MEMORY[0x1BFAE6A10](v32, v33);

      MEMORY[0x1BFAE6A10](0x74616E676973202CLL, 0xEE00203D20657275);
      if (v66 <= 0xE)
      {
        v31 = sub_1B9DAC708(v68, v21);
        v29 = v34;
      }

      MEMORY[0x1BFAE6A10](v31, v29);

      MEMORY[0x1BFAE6A10](0x207473757274202CLL, 0xEA0000000000203DLL);
      if (v67)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v67)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x1BFAE6A10](v35, v36);

      v37 = aBlock;
      v38 = v71;
      sub_1B9DA7600();
      swift_allocError();
      *v39 = v37;
      *(v39 + 8) = v38;
      *(v39 + 16) = v65;
      *(v39 + 20) = 1;
      swift_willThrow();
LABEL_31:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    v40 = sub_1B9DA9E08();
    (*(v64 + 16))(v63, v40, v65);
    v41 = v68;
    sub_1B9D9DB7C(v68, v21);

    v61 = sub_1B9DD28B8();
    v42 = sub_1B9DD2AD8();

    v43 = v41;
    v44 = v61;
    sub_1B9D9D520(v43, v21);
    v60 = v42;
    if (os_log_type_enabled(v44, v42))
    {
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock = v59;
      *v45 = 136446978;
      if (a2)
      {
        v46 = v69;
      }

      else
      {
        v46 = 7104878;
      }

      if (a2)
      {
        v47 = a2;
      }

      else
      {
        v47 = 0xE300000000000000;
      }

      v48 = sub_1B9D9D588(v46, v47, &aBlock);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      if (a4)
      {
        v49 = v76;
      }

      else
      {
        v49 = 7104878;
      }

      if (a4)
      {
        v50 = a4;
      }

      else
      {
        v50 = 0xE300000000000000;
      }

      v51 = sub_1B9D9D588(v49, v50, &aBlock);

      v52 = 7104878;
      *(v45 + 14) = v51;
      v53 = 0xE300000000000000;
      *(v45 + 22) = 2082;
      if (v66 <= 0xE)
      {
        v52 = sub_1B9DAC708(v68, v21);
        v53 = v54;
      }

      v55 = sub_1B9D9D588(v52, v53, &aBlock);

      *(v45 + 24) = v55;
      *(v45 + 32) = 1024;
      *(v45 + 34) = v67 & 1;
      v56 = v61;
      _os_log_impl(&dword_1B9D96000, v61, v60, "Successfully set trust: profileUUID = %{public}s, teamID = %{public}s, signature = %{public}s, trust = %{BOOL}d", v45, 0x26u);
      v57 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v57, -1, -1);
      MEMORY[0x1BFAE80B0](v45, -1, -1);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return (*(v64 + 8))(v63, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_connection_t sub_1B9DA6664(int a1)
{
  v3 = sub_1B9DD28D8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v8 = result;
    v29 = sub_1B9DA4E78;
    v30 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1B9DA51EC;
    v28 = &unk_1F37D9A30;
    v9 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v8, v9);
    _Block_release(v9);
    xpc_connection_resume(v8);
    type metadata accessor for XPCConnection();
    v10 = sub_1B9DA8518(v8);
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v11, "MessageType", "Migrate");
    xpc_dictionary_set_int64(v11, "MigrationPhase", a1);
    v12 = (*(*v10 + 88))();
    v13 = xpc_connection_send_message_with_reply_sync(v12, v11);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v13);
    if (v1)
    {
LABEL_5:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    uint64 = xpc_dictionary_get_uint64(v13, "Status");
    if (uint64)
    {
      aBlock = 0;
      v26 = 0xE000000000000000;
      sub_1B9DD2B88();

      aBlock = 0x6F72726520746F47;
      v26 = 0xEA00000000002072;
      countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
      MEMORY[0x1BFAE6A10](countAndFlagsBits);

      MEMORY[0x1BFAE6A10](0xD000000000000022, 0x80000001B9DDD990);
      v16 = aBlock;
      v17 = v26;
      sub_1B9DA7600();
      swift_allocError();
      *v18 = v16;
      *(v18 + 8) = v17;
      *(v18 + 16) = uint64;
      *(v18 + 20) = 1;
      swift_willThrow();
      goto LABEL_5;
    }

    v19 = sub_1B9DA9E08();
    (*(v4 + 16))(v6, v19, v3);
    v20 = sub_1B9DD28B8();
    v21 = sub_1B9DD2AD8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v31 = v4;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_1B9D96000, v20, v21, "misagent successfully migrated data", v22, 2u);
      v24 = v23;
      v4 = v31;
      MEMORY[0x1BFAE80B0](v24, -1, -1);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_connection_t sub_1B9DA6A18(int64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1B9DD28D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v11 = result;
    v50 = sub_1B9DA4E78;
    v51 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B9DA51EC;
    v49 = &unk_1F37D9A08;
    v12 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v11, v12);
    _Block_release(v12);
    xpc_connection_resume(v11);
    type metadata accessor for XPCConnection();
    v13 = sub_1B9DA8518(v11);
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v14, "MessageType", "AddMonotonicTimeOffset");
    v44 = a1;
    xpc_dictionary_set_int64(v14, "Offset", a1);
    v43 = v8;
    if (a3 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      sub_1B9D9DB7C(a2, a3);
      sub_1B9DA5998(a2, a3, v14, "CDHash");
      v15 = sub_1B9D9D520(a2, a3);
    }

    v16 = (*(*v13 + 88))(v15);
    v17 = xpc_connection_send_message_with_reply_sync(v16, v14);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v17);
    if (v3)
    {
      goto LABEL_8;
    }

    v18 = v7;
    uint64 = xpc_dictionary_get_uint64(v17, "Status");
    v20 = uint64;
    if (a3 >> 60 == 15)
    {
      v21 = 0xE500000000000000;
      v42 = 0x296C696E28;
      v22 = v45;
      if (uint64)
      {
LABEL_7:
        aBlock = 0;
        v47 = 0xE000000000000000;
        sub_1B9DD2B88();
        MEMORY[0x1BFAE6A10](0x6F72726520746F47, 0xEA00000000002072);
        countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
        MEMORY[0x1BFAE6A10](countAndFlagsBits);

        MEMORY[0x1BFAE6A10](0xD00000000000002CLL, 0x80000001B9DDD940);
        v52 = v44;
        v24 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v24);

        MEMORY[0x1BFAE6A10](544175136, 0xE400000000000000);
        MEMORY[0x1BFAE6A10](v42, v21);

        v25 = aBlock;
        v26 = v47;
        sub_1B9DA7600();
        swift_allocError();
        *v27 = v25;
        *(v27 + 8) = v26;
        *(v27 + 16) = v20;
        *(v27 + 20) = 1;
        swift_willThrow();
LABEL_8:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = sub_1B9DAC708(a2, a3);
      v21 = v28;
      v22 = v45;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v29 = sub_1B9DA9E08();
    v30 = v43;
    v31 = *(v43 + 16);
    v40 = v18;
    v31(v22, v29, v18);

    v32 = sub_1B9DD28B8();
    v33 = sub_1B9DD2AD8();

    v41 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v34 = 134218242;
      *(v34 + 4) = v44;
      *(v34 + 12) = 2082;
      v35 = sub_1B9D9D588(v42, v21, &aBlock);

      *(v34 + 14) = v35;
      v36 = v41;
      _os_log_impl(&dword_1B9D96000, v41, v33, "misagent successfully added monotonic time offset %ld to %{public}s", v34, 0x16u);
      v37 = v39;
      sub_1B9D9DB30(v39);
      MEMORY[0x1BFAE80B0](v37, -1, -1);
      MEMORY[0x1BFAE80B0](v34, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v30 + 8))(v45, v40);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v30 + 8))(v22, v40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_connection_t sub_1B9DA6F74(int64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_1B9DD28D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9DD25B0();
  if (result)
  {
    v11 = result;
    v50 = sub_1B9DA4E78;
    v51 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B9DA51EC;
    v49 = &unk_1F37D99E0;
    v12 = _Block_copy(&aBlock);
    xpc_connection_set_event_handler(v11, v12);
    _Block_release(v12);
    xpc_connection_resume(v11);
    type metadata accessor for XPCConnection();
    v13 = sub_1B9DA8518(v11);
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v14, "MessageType", "AddRTCResetCountOffset");
    v44 = a1;
    xpc_dictionary_set_int64(v14, "Offset", a1);
    v43 = v8;
    if (a3 >> 60 != 15)
    {
      swift_unknownObjectRetain();
      sub_1B9D9DB7C(a2, a3);
      sub_1B9DA5998(a2, a3, v14, "CDHash");
      v15 = sub_1B9D9D520(a2, a3);
    }

    v16 = (*(*v13 + 88))(v15);
    v17 = xpc_connection_send_message_with_reply_sync(v16, v14);
    swift_unknownObjectRelease();
    sub_1B9DA5BB8(v17);
    if (v3)
    {
      goto LABEL_8;
    }

    v18 = v7;
    uint64 = xpc_dictionary_get_uint64(v17, "Status");
    v20 = uint64;
    if (a3 >> 60 == 15)
    {
      v21 = 0xE500000000000000;
      v42 = 0x296C696E28;
      v22 = v45;
      if (uint64)
      {
LABEL_7:
        aBlock = 0;
        v47 = 0xE000000000000000;
        sub_1B9DD2B88();
        MEMORY[0x1BFAE6A10](0x6F72726520746F47, 0xEA00000000002072);
        countAndFlagsBits = MISError.hexString()()._countAndFlagsBits;
        MEMORY[0x1BFAE6A10](countAndFlagsBits);

        MEMORY[0x1BFAE6A10](0xD00000000000002DLL, 0x80000001B9DDD8A0);
        v52 = v44;
        v24 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v24);

        MEMORY[0x1BFAE6A10](544175136, 0xE400000000000000);
        MEMORY[0x1BFAE6A10](v42, v21);

        v25 = aBlock;
        v26 = v47;
        sub_1B9DA7600();
        swift_allocError();
        *v27 = v25;
        *(v27 + 8) = v26;
        *(v27 + 16) = v20;
        *(v27 + 20) = 1;
        swift_willThrow();
LABEL_8:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v42 = sub_1B9DAC708(a2, a3);
      v21 = v28;
      v22 = v45;
      if (v20)
      {
        goto LABEL_7;
      }
    }

    v29 = sub_1B9DA9E08();
    v30 = v43;
    v31 = *(v43 + 16);
    v40 = v18;
    v31(v22, v29, v18);

    v32 = sub_1B9DD28B8();
    v33 = sub_1B9DD2AD8();

    v41 = v32;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock = v39;
      *v34 = 134218242;
      *(v34 + 4) = v44;
      *(v34 + 12) = 2082;
      v35 = sub_1B9D9D588(v42, v21, &aBlock);

      *(v34 + 14) = v35;
      v36 = v41;
      _os_log_impl(&dword_1B9D96000, v41, v33, "misagent successfully added RTC reset count offset %ld to %{public}s", v34, 0x16u);
      v37 = v39;
      sub_1B9D9DB30(v39);
      MEMORY[0x1BFAE80B0](v37, -1, -1);
      MEMORY[0x1BFAE80B0](v34, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return (*(v30 + 8))(v45, v40);
    }

    else
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return (*(v30 + 8))(v22, v40);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1B9DA74DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1B9DA74F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B9DA7538(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for MISAgentClient()
{
  result = qword_1EBBE3720[0];
  if (!qword_1EBBE3720[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBBE3720);
  }

  return result;
}

uint64_t sub_1B9DA75E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B9DA7600()
{
  result = qword_1EBBE3258;
  if (!qword_1EBBE3258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3258);
  }

  return result;
}

uint64_t sub_1B9DA7674(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  v6 = v5 + 16;
  *(v5 + 32) = 0u;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000046, 0x80000001B9DDDA60, sub_1B9D9BB18, v7, sub_1B9DA78B8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
    sub_1B9DA442C(v6, *(v5 + 24), *(v5 + 32), *(v5 + 40));
  }

  return v6;
}

uint64_t sub_1B9DA77D0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD000000000000026, 0x80000001B9DDDAB0, 0, 0, sub_1B9DA79B8, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9DA78B8(uint64_t a1)
{
  v2 = v1;
  (*(*a1 + 192))(0);
  v5 = v4;
  (*(*a1 + 128))(1);
  if (v5)
  {
    if (v6 >> 60 != 15)
    {
      nullsub_1();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      swift_beginAccess();
      v15 = v2[2];
      v16 = v2[3];
      v17 = v2[4];
      v18 = v2[5];
      v2[2] = v8;
      v2[3] = v10;
      v2[4] = v12;
      v2[5] = v14;
      sub_1B9DA4478(v15, v16, v17, v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B9DA79B8(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = sub_1B9DD29C8();
    v7 = v6;

    swift_beginAccess();
    v8 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B9D9B78C(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + 16) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B9D9B78C((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v5;
    *(v12 + 5) = v7;
    *(v2 + 16) = v8;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B9DA7AE0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for LegacyUserTrustDB();
  result = objc_msgSendSuper2(&v8, sel_setupSchema);
  if (result)
  {
    v2 = result;
    v3 = [v0 readSetting_];
    if (!v3)
    {
      v4 = sub_1B9DD2968();
      [v0 executeQuery:v4 withBind:0 withResults:0];

      v5 = sub_1B9DD2968();
      [v0 executeQuery:v5 withBind:0 withResults:0];

      v6 = @"databaseSchemaVersion";
      v7 = sub_1B9DD2968();
      [v0 setSetting:v6 toValue:v7];

      v3 = v7;
    }

    return v2;
  }

  return result;
}

uint64_t sub_1B9DA7C58(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_1B9DA7C70@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL sub_1B9DA7CEC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B9DA7D1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B9DA7D48@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B9DA7E34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B9DA7E64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B9DA8400(a1);

  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for LaunchWarningDetails(uint64_t a1)
{
  result = qword_1EBBE3460;
  if (!qword_1EBBE3460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9DA7EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA7F60@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  v13 = type metadata accessor for LaunchWarningDetails(0);
  v14 = v13[6];
  v15 = sub_1B9DD2878();
  (*(*(v15 - 8) + 32))(a8 + v14, a4, v15);
  *(a8 + v13[7]) = a5 & 1;
  *(a8 + v13[8]) = a6;
  v16 = a8 + v13[9];

  return sub_1B9DA802C(a7, v16);
}

uint64_t sub_1B9DA802C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9DA80A0()
{
  result = qword_1EBBE3260;
  if (!qword_1EBBE3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3260);
  }

  return result;
}

unint64_t sub_1B9DA80F8()
{
  result = qword_1EBBE3268;
  if (!qword_1EBBE3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3268);
  }

  return result;
}

unint64_t sub_1B9DA8150()
{
  result = qword_1EBBE3270;
  if (!qword_1EBBE3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3270);
  }

  return result;
}

unint64_t sub_1B9DA81A8()
{
  result = qword_1EBBE3278;
  if (!qword_1EBBE3278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3278);
  }

  return result;
}

unint64_t sub_1B9DA8200()
{
  result = qword_1EBBE3280;
  if (!qword_1EBBE3280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3280);
  }

  return result;
}

void sub_1B9DA829C(uint64_t a1)
{
  type metadata accessor for SecCSDigestAlgorithm();
  if (v1 <= 0x3F)
  {
    sub_1B9DD2878();
    if (v2 <= 0x3F)
    {
      sub_1B9DA83A8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for SecCSDigestAlgorithm()
{
  if (!qword_1EBBE3180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EBBE3180);
    }
  }
}

void sub_1B9DA83A8(uint64_t a1)
{
  if (!qword_1EBBE3190)
  {
    sub_1B9DD2728();
    v1 = sub_1B9DD2B18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBE3190);
    }
  }
}

uint64_t sub_1B9DA8400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B9DA847C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1B9DA8518(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1B9DA854C()
{
  swift_beginAccess();
  xpc_connection_cancel(*(v0 + 16));
  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

void sub_1B9DA85C0()
{
  v0 = sub_1B9DD2728();
  sub_1B9DA8D8C(v0, qword_1EBBE40A8);
  sub_1B9DA86B4(v0, qword_1EBBE40A8);
  v1 = sub_1B9DD2968();
  v2 = sub_1B9DA4E6C();
  v4 = objc_msgSend_stringByAppendingPathComponent_(v2, v3, v1);

  v5 = v4;
  if (v5)
  {
    sub_1B9DD2998();

    sub_1B9DD26B8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9DA86B4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_1B9DA86EC(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  if (qword_1EBBE3B30 != -1)
  {
    swift_once();
  }

  v5 = sub_1B9DD2728();
  sub_1B9DA86B4(v5, qword_1EBBE40A8);
  v6 = sub_1B9DD26C8();
  v9.receiver = v4;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithDatabaseURL_asReadOnly_, v6, a1 & 1);

  return v7;
}

id sub_1B9DA89E4()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for LaunchWarningDB();
  v1 = objc_msgSendSuper2(&v16, sel_setupSchema);
  if (v1)
  {
    v2 = [v0 readSetting_];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B9DD2998();
      v6 = v5;
    }

    else
    {
      v7 = sub_1B9DD2968();
      [v0 executeQuery:v7 withBind:0 withResults:0];

      v8 = @"databaseSchemaVersion";
      v4 = 49;
      v6 = 0xE100000000000000;
      v9 = sub_1B9DD2968();
      [v0 setSetting:v8 toValue:v9];
    }

    if (v4 == 49 && v6 == 0xE100000000000000)
    {
    }

    else
    {
      v11 = sub_1B9DD2C18();

      if ((v11 & 1) == 0)
      {
        return v1;
      }
    }

    v12 = sub_1B9DD2968();
    [v0 executeQuery:v12 withBind:0 withResults:0];

    v13 = @"databaseSchemaVersion";
    v14 = sub_1B9DD2968();
    [v0 setSetting:v13 toValue:v14];
  }

  return v1;
}

id sub_1B9DA8D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchWarningDB();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_1B9DA8D8C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1B9DA8DF0()
{
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](0);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9DA8E5C(uint64_t a1)
{
  sub_1B9DD2C98();
  MEMORY[0x1BFAE6CC0](0);
  return sub_1B9DD2CB8();
}

uint64_t sub_1B9DA8E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1B9DD28D8();
  v71 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v62 - v7;
  v8 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  v13 = sub_1B9DD2878();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - v16;
  v18 = *(*a1 + 160);
  v19 = v18(0);
  v75 = (*(*a1 + 128))(1);
  v21 = v20;
  v67 = v18(2);
  v62 = v18(3);
  v22 = *(*a1 + 144);
  v68 = v17;
  v22(4);
  result = (*(*a1 + 192))(5);
  v25 = v24;
  v72 = v21;
  if (v21 >> 60 == 15)
  {

    v26 = sub_1B9DA9E4C();
    v27 = v71;
    (*(v71 + 16))(v6, v26, v3);
    v28 = sub_1B9DD28B8();
    v29 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B9D96000, v28, v29, "cdhash is nil in database", v30, 2u);
      MEMORY[0x1BFAE80B0](v30, -1, -1);
    }

    (*(v27 + 8))(v6, v3);
    v31 = v75;
    v32 = v72;
    v73 = v75;
    v74 = v72;
    sub_1B9D9DB7C(v75, v72);
    sub_1B9D9B898(&qword_1EBBE3350, &qword_1B9DD59A0);
    v33 = sub_1B9DD29B8();
    v35 = v34;
    v36 = 0x687361686463;
LABEL_11:
    sub_1B9D9B9C4();
    swift_allocError();
    *v47 = v36;
    *(v47 + 8) = 0xE600000000000000;
    *(v47 + 16) = v33;
    *(v47 + 24) = v35;
    *(v47 + 32) = 1;
    swift_willThrow();
    sub_1B9D9D520(v31, v32);
    return (*(v69 + 8))(v68, v70);
  }

  v37 = v71;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v19))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v38 = v75;
  v32 = v72;
  sub_1B9D9DB90(v75, v72);
  v39 = sub_1B9DA7C58(v67);
  if (v39 == 2)
  {
    sub_1B9D9D520(v38, v32);

    v40 = sub_1B9DA9E4C();
    v41 = v37;
    v42 = v65;
    (*(v37 + 16))(v65, v40, v3);
    v43 = sub_1B9DD28B8();
    v44 = sub_1B9DD2AC8();
    v31 = v38;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134217984;
      *(v45 + 4) = v67;
      _os_log_impl(&dword_1B9D96000, v43, v44, "Invalid reason in database: %lld", v45, 0xCu);
      MEMORY[0x1BFAE80B0](v45, -1, -1);
    }

    (*(v41 + 8))(v42, v3);
    v73 = v67;
    v33 = sub_1B9DD2C08();
    v35 = v46;
    v36 = 0x6E6F73616572;
    goto LABEL_11;
  }

  v48 = v39;
  v49 = v19;
  v50 = sub_1B9DD2728();
  (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
  v51 = v64;
  if (v25)
  {
    sub_1B9DD2708();

    sub_1B9DA429C(v12, &qword_1EBBE31C8, &unk_1B9DD5340);
    sub_1B9DA802C(v51, v12);
  }

  v52 = v68;
  v53 = v69;
  v54 = v63;
  v55 = v70;
  (*(v69 + 16))(v63, v68, v70);
  nullsub_1();
  v57 = v56;
  sub_1B9DA436C(v12, v51, &qword_1EBBE31C8, &unk_1B9DD5340);
  v58 = v48 & 1;
  v59 = v49;
  v60 = v75;
  v61 = v72;
  sub_1B9DA7F60(v59, v75, v72, v54, v58, v57, v51, v66);
  sub_1B9D9D520(v60, v61);
  sub_1B9DA429C(v12, &qword_1EBBE31C8, &unk_1B9DD5340);
  return (*(v53 + 8))(v52, v55);
}

uint64_t sub_1B9DA9590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = _s18LaunchWarningEntryVMa(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0x205443454C4553, 0xE700000000000000);
  MEMORY[0x1BFAE6A10](0xD000000000000035, 0x80000001B9DDDE30);
  MEMORY[0x1BFAE6A10](0xD000000000000035, 0x80000001B9DDDE70);

  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DA99E4, a1, sub_1B9DA9D00, v5);

  if (v2)
  {
  }

  swift_beginAccess();
  sub_1B9DA436C(v7, a2, &qword_1EBBE3358, &qword_1B9DD5750);
}

uint64_t sub_1B9DA9784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v15 - v5);
  v7 = type metadata accessor for LaunchWarningDetails(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  result = sub_1B9DA8E9C(a1, v9);
  if (!v2)
  {
    v12 = (*(*a1 + 176))(6);
    result = (*(*a1 + 160))(7);
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = result;
      v14 = _s18LaunchWarningEntryVMa(0);
      sub_1B9DA9A3C(v9, v6 + *(v14 + 20), type metadata accessor for LaunchWarningDetails);
      *v6 = v13;
      *(v6 + *(v14 + 24)) = v12 & 1;
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      swift_beginAccess();
      return sub_1B9DA9C90(v6, v10);
    }
  }

  return result;
}

uint64_t _s18LaunchWarningEntryVMa(uint64_t a1)
{
  result = qword_1EBBE3470;
  if (!qword_1EBBE3470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9DA99E4(uint64_t a1)
{
  result = *(v1 + 24);
  if ((result & 0x8000000000000000) == 0)
  {
    return (*(*a1 + 152))();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9DA9A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B9DA9AA8()
{
  result = qword_1EBBE3360;
  if (!qword_1EBBE3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3360);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchWarningDBError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchWarningDBError(_WORD *result, int a2, int a3)
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

uint64_t sub_1B9DA9C0C(uint64_t a1)
{
  result = type metadata accessor for LaunchWarningDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9DA9C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DA9D78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B9DD28D8();
  sub_1B9DA8D8C(v5, a2);
  sub_1B9DA86B4(v5, a2);

  return sub_1B9DD28C8();
}

uint64_t sub_1B9DA9E9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B9DD28D8();
  sub_1B9DA8D8C(v5, a2);
  sub_1B9DA86B4(v5, a2);
  return sub_1B9DD28C8();
}

uint64_t sub_1B9DA9F44(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_1B9DD28D8();

  return sub_1B9DA86B4(v4, a2);
}

Swift::String __swiftcall MISError.hexString()()
{
  sub_1B9DAA004();
  v0 = sub_1B9DD2A48();
  MEMORY[0x1BFAE6A10](v0);

  v1 = 30768;
  v2 = 0xE200000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_1B9DAA004()
{
  result = qword_1EBBE3368;
  if (!qword_1EBBE3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3368);
  }

  return result;
}

uint64_t sub_1B9DAA058(void *a1)
{
  staticCode[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B9DD2728();
  v133 = *(v2 - 8);
  v134 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v124 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v131 = &v124 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v128 = &v124 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v124 - v13;
  v14 = sub_1B9DD28D8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v124 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v130 = (&v124 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v129 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v124 - v26;
  staticCode[0] = 0;
  v132 = a1;
  v27 = sub_1B9DD26C8();
  v28 = SecStaticCodeCreateWithPath(v27, 0, staticCode);

  if (v28 || !staticCode[0])
  {
    v34 = sub_1B9DA9F20();
    v35 = v15;
    v36 = *(v15 + 16);
    v131 = v14;
    v36(v18, v34, v14);
    v37 = v133;
    v38 = v134;
    (*(v133 + 16))(v5, v132, v134);
    v39 = sub_1B9DD28B8();
    v40 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v138 = v130;
      *v41 = 67109378;
      *(v41 + 4) = v28;
      *(v41 + 8) = 2082;
      v42 = sub_1B9DD26F8();
      v132 = v35;
      v44 = v43;
      (*(v37 + 8))(v5, v134);
      v45 = sub_1B9D9D588(v42, v44, &v138);

      *(v41 + 10) = v45;
      _os_log_impl(&dword_1B9D96000, v39, v40, "Unable to create code object (%d) for: %{public}s", v41, 0x12u);
      v46 = v130;
      sub_1B9D9DB30(v130);
      MEMORY[0x1BFAE80B0](v46, -1, -1);
      MEMORY[0x1BFAE80B0](v41, -1, -1);

      (v132[1])(v18, v131);
    }

    else
    {

      (*(v37 + 8))(v5, v38);
      (*(v35 + 8))(v18, v131);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v47 = v28;
    *(v47 + 4) = 0;
    swift_willThrow();
    goto LABEL_42;
  }

  information = 0;
  v125 = staticCode[0];
  v29 = SecCodeCopySigningInformation(v125, 0x21u, &information);
  if (v29 || (v30 = information) == 0)
  {
    v48 = v29;
    v49 = sub_1B9DA9F20();
    v50 = v15;
    v51 = *(v15 + 16);
    v52 = v14;
    v51(v21, v49, v14);
    v53 = v133;
    v54 = v134;
    (*(v133 + 16))(v8, v132, v134);
    v39 = sub_1B9DD28B8();
    v55 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v39, v55))
    {
      v56 = swift_slowAlloc();
      v131 = v52;
      v57 = v56;
      v132 = swift_slowAlloc();
      *&v138 = v132;
      *v57 = 67109378;
      v130 = v39;
      v58 = v48;
      *(v57 + 4) = v48;
      *(v57 + 8) = 2082;
      LODWORD(v129) = v55;
      v59 = sub_1B9DD26F8();
      v61 = v60;
      (*(v53 + 8))(v8, v54);
      v62 = sub_1B9D9D588(v59, v61, &v138);
      v48 = v58;

      *(v57 + 10) = v62;
      v39 = v130;
      _os_log_impl(&dword_1B9D96000, v130, v129, "Unable to create signing info (%d) for: %{public}s", v57, 0x12u);
      v63 = v132;
      sub_1B9D9DB30(v132);
      MEMORY[0x1BFAE80B0](v63, -1, -1);
      MEMORY[0x1BFAE80B0](v57, -1, -1);

      (*(v50 + 8))(v21, v131);
    }

    else
    {

      (*(v53 + 8))(v8, v54);
      (*(v50 + 8))(v21, v52);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v64 = v48;
    *(v64 + 4) = 0;
    swift_willThrow();
    goto LABEL_41;
  }

  *&v136 = *MEMORY[0x1E697B038];
  v31 = v136;
  v32 = v30;
  sub_1B9D9B898(&qword_1EBBE3378, &qword_1B9DD5840);
  v33 = [(__CFDictionary *)v32 __swift_objectForKeyedSubscript:sub_1B9DD2C28()];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_1B9DD2B38();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v65 = v15;
  v66 = v134;
  v67 = v131;
  v138 = v136;
  v139 = v137;
  v68 = v14;
  if (!*(&v137 + 1))
  {
    sub_1B9DAAE68(&v138);
LABEL_22:
    v70 = sub_1B9DA9F20();
    v71 = v130;
    (*(v65 + 16))(v130, v70, v14);
    v72 = v65;
    v73 = v133;
    (*(v133 + 16))(v67, v132, v66);
    v74 = v67;
    v75 = sub_1B9DD28B8();
    v76 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v124 = v32;
      v79 = v78;
      *&v138 = v78;
      *v77 = 136446210;
      v80 = sub_1B9DD26F8();
      v81 = v66;
      v82 = v80;
      v131 = v68;
      v84 = v83;
      (*(v73 + 8))(v74, v81);
      v85 = sub_1B9D9D588(v82, v84, &v138);

      *(v77 + 4) = v85;
      _os_log_impl(&dword_1B9D96000, v75, v76, "Unable to get full cdhash information for: %{public}s", v77, 0xCu);
      sub_1B9D9DB30(v79);
      v86 = v79;
      v32 = v124;
      MEMORY[0x1BFAE80B0](v86, -1, -1);
      MEMORY[0x1BFAE80B0](v77, -1, -1);

      v87 = *(v72 + 8);
      v39 = v72 + 8;
      v87(v130, v131);
    }

    else
    {

      (*(v73 + 8))(v74, v66);
      v88 = *(v72 + 8);
      v39 = v72 + 8;
      v88(v71, v68);
    }

    sub_1B9DAAE14();
    swift_allocError();
    *v89 = 0;
    *(v89 + 4) = 1;
    swift_willThrow();

    goto LABEL_41;
  }

  sub_1B9D9B898(&qword_1EBBE3388, &qword_1B9DD5850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v66 = v134;
    v67 = v131;
    goto LABEL_22;
  }

  v69 = v135;
  if ([(__CFDictionary *)v32 __swift_objectForKeyedSubscript:*MEMORY[0x1E697B048]])
  {
    sub_1B9DD2B38();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v138 = v136;
  v139 = v137;
  v124 = v32;
  if (!*(&v137 + 1))
  {

    sub_1B9DAAE68(&v138);
    goto LABEL_34;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_34:
    v93 = sub_1B9DA9F20();
    v94 = v129;
    (*(v65 + 16))(v129, v93, v14);
    v95 = v133;
    v96 = v128;
    v97 = v134;
    (*(v133 + 16))(v128, v132, v134);
    v98 = sub_1B9DD28B8();
    v99 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = v96;
      v132 = v65;
      v102 = v97;
      v103 = v100;
      v104 = swift_slowAlloc();
      *&v138 = v104;
      *v103 = 136446210;
      v105 = sub_1B9DD26F8();
      v106 = v95;
      v108 = v107;
      (*(v106 + 8))(v101, v102);
      v109 = sub_1B9D9D588(v105, v108, &v138);

      *(v103 + 4) = v109;
      _os_log_impl(&dword_1B9D96000, v98, v99, "Unable to get best cdhash digest algorithm: %{public}s", v103, 0xCu);
      sub_1B9D9DB30(v104);
      MEMORY[0x1BFAE80B0](v104, -1, -1);
      MEMORY[0x1BFAE80B0](v103, -1, -1);

      (v132[1])(v129, v68);
LABEL_40:
      sub_1B9DAAE14();
      swift_allocError();
      *v122 = 0;
      *(v122 + 4) = 1;
      swift_willThrow();
      v39 = v124;

LABEL_41:
LABEL_42:

      return v39;
    }

LABEL_39:

    (*(v95 + 8))(v96, v97);
    (*(v65 + 8))(v94, v68);
    goto LABEL_40;
  }

  if (!*(v69 + 16) || (v39 = v135, v90 = sub_1B9DAAED0(v135), (v91 & 1) == 0))
  {

    v110 = sub_1B9DA9F20();
    v94 = v127;
    (*(v65 + 16))(v127, v110, v68);
    v95 = v133;
    v96 = v126;
    v97 = v134;
    (*(v133 + 16))(v126, v132, v134);
    v98 = sub_1B9DD28B8();
    v111 = sub_1B9DD2AC8();
    if (os_log_type_enabled(v98, v111))
    {
      v112 = swift_slowAlloc();
      v113 = v96;
      v132 = v65;
      v114 = v97;
      v115 = v112;
      v116 = swift_slowAlloc();
      *&v138 = v116;
      *v115 = 136446210;
      v117 = sub_1B9DD26F8();
      v118 = v95;
      v120 = v119;
      (*(v118 + 8))(v113, v114);
      v121 = sub_1B9D9D588(v117, v120, &v138);

      *(v115 + 4) = v121;
      _os_log_impl(&dword_1B9D96000, v98, v111, "Unable to get best cdhash data: %{public}s", v115, 0xCu);
      sub_1B9D9DB30(v116);
      MEMORY[0x1BFAE80B0](v116, -1, -1);
      MEMORY[0x1BFAE80B0](v115, -1, -1);

      (v132[1])(v127, v68);
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v92 = v90;

  sub_1B9D9DB90(*(*(v69 + 56) + 16 * v92), *(*(v69 + 56) + 16 * v92 + 8));

  return v39;
}

unint64_t sub_1B9DAAE14()
{
  result = qword_1EBBE3370;
  if (!qword_1EBBE3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3370);
  }

  return result;
}

uint64_t sub_1B9DAAE68(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE3380, &qword_1B9DD5848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9DAAED0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1BFAE6CA0](*(v1 + 40), a1, 4);

  return sub_1B9DAB0EC(v2, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for CodeSignatureError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CodeSignatureError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodeSignatureError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B9DAAF78(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9DAAF94(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

__n128 sub_1B9DAAFC4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9DAAFD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B9DAB02C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1B9DAB0A0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1B9DAB0EC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1B9DAB158(uint64_t a1, uint64_t a2)
{
  sub_1B9D9B898(&qword_1EBBE3350, &qword_1B9DD59A0);
  result = sub_1B9DD26D8();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1B9DAB1CC@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1B9DD25F8();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B9DD29D8();
  v12 = getxattr(a1, (v11 + 32), 0, 0, 0, 0);

  if (v12 < 0)
  {
    result = MEMORY[0x1BFAE6950](v13);
    if (result == 93)
    {
      *a4 = xmmword_1B9DD5980;
    }

    else
    {
      v19 = result;
      v20 = sub_1B9DD2928();
      if ((v20 & 0x100000000) != 0)
      {
        sub_1B9DABFD4();
        swift_allocError();
        *v22 = v19;
      }

      else
      {
        LODWORD(v25) = v20;
        sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
        sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1B9DD2678();
        sub_1B9DD25E8();
        (*(v24 + 8))(v10, v8);
      }

      return swift_willThrow();
    }
  }

  else
  {
    *&v25 = sub_1B9DAC028(v12);
    *(&v25 + 1) = v14;

    v15 = sub_1B9DAC0C8(&v25, a1, a2, a3, v12);

    if (v15 < 0)
    {
      v17 = MEMORY[0x1BFAE6950](result);
      v18 = sub_1B9DD2928();
      if ((v18 & 0x100000000) != 0)
      {
        sub_1B9DABFD4();
        swift_allocError();
        *v21 = v17;
      }

      else
      {
        v26 = v18;
        sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
        sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1B9DD2678();
        sub_1B9DD25E8();
        (*(v24 + 8))(v10, v8);
      }

      swift_willThrow();
      return sub_1B9D9D534(v25, *(&v25 + 1));
    }

    else
    {
      *a4 = v25;
    }
  }

  return result;
}

uint64_t sub_1B9DAB53C(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  value[2] = *MEMORY[0x1E69E9840];
  v9 = sub_1B9DD25F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3 >> 62;
  v39 = v12;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(value, 0, 14);
      v31 = sub_1B9DD29D8();
      v32 = setxattr(a1, (v31 + 32), value, 0, 0, 0);

      if ((v32 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    v37 = a1;
    v38 = v5;
    v17 = v10;
    v18 = v9;
    v19 = *(a2 + 16);
    v20 = sub_1B9DD2628();
    if (v20)
    {
      v21 = sub_1B9DD2658();
      if (__OFSUB__(v19, v21))
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      v20 += v19 - v21;
    }

    v9 = v18;
    sub_1B9DD2648();
    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      v10 = v17;
      v25 = sub_1B9DD29D8();
      v26 = setxattr(v37, (v25 + 32), v20, v24, 0, 0);

      if ((v26 & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  if (v13)
  {
    v38 = v9;
    if (a2 <= a2 >> 32)
    {
      v37 = v10;
      v27 = sub_1B9DD2628();
      if (v27)
      {
        v28 = sub_1B9DD2658();
        if (__OFSUB__(a2, v28))
        {
          goto LABEL_29;
        }

        v27 += a2 - v28;
      }

      sub_1B9DD2648();
      if (!__OFSUB__(HIDWORD(a2), a2))
      {
        v29 = sub_1B9DD29D8();
        v30 = setxattr(a1, (v29 + 32), v27, HIDWORD(a2) - a2, 0, 0);

        v10 = v37;
        v9 = v38;
        if ((v30 & 0x80000000) == 0)
        {
          return result;
        }

        goto LABEL_20;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  value[0] = a2;
  LOWORD(value[1]) = a3;
  BYTE2(value[1]) = BYTE2(a3);
  BYTE3(value[1]) = BYTE3(a3);
  BYTE4(value[1]) = BYTE4(a3);
  BYTE5(value[1]) = BYTE5(a3);
  v14 = sub_1B9DD29D8();
  v15 = setxattr(a1, (v14 + 32), value, BYTE6(a3), 0, 0);

  if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

LABEL_20:
  v33 = MEMORY[0x1BFAE6950](result);
  v34 = sub_1B9DD2928();
  if ((v34 & 0x100000000) != 0)
  {
    sub_1B9DABFD4();
    swift_allocError();
    *v36 = v33;
  }

  else
  {
    LODWORD(value[0]) = v34;
    sub_1B9DAC540(MEMORY[0x1E69E7CC0]);
    sub_1B9DAC650(&qword_1EBBE33C0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    v35 = v39;
    sub_1B9DD2678();
    sub_1B9DD25E8();
    (*(v10 + 1))(v35, v9);
  }

  return swift_willThrow();
}

uint64_t sub_1B9DAB95C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9DD2998();
  v3 = MEMORY[0x1BFAE6A50](v2);

  return v3;
}

uint64_t sub_1B9DAB998(uint64_t a1, uint64_t a2)
{
  sub_1B9DD2998();
  sub_1B9DD29E8();
}

uint64_t sub_1B9DAB9EC(uint64_t a1, uint64_t a2)
{
  sub_1B9DD2998();
  sub_1B9DD2C98();
  sub_1B9DD29E8();
  v2 = sub_1B9DD2CB8();

  return v2;
}

uint64_t sub_1B9DABA68(uint64_t a1, id *a2)
{
  result = sub_1B9DD2978();
  *a2 = 0;
  return result;
}

uint64_t sub_1B9DABAE0(uint64_t a1, id *a2)
{
  v3 = sub_1B9DD2988();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B9DABB60@<X0>(uint64_t *a3@<X8>)
{
  sub_1B9DD2998();
  v4 = sub_1B9DD2968();

  *a3 = v4;
  return result;
}

uint64_t sub_1B9DABBA4(void *a1, uint64_t *a2)
{
  v2 = sub_1B9DD2998();
  v4 = v3;
  if (v2 == sub_1B9DD2998() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B9DD2C18();
  }

  return v7 & 1;
}

uint64_t sub_1B9DABC2C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B9DD2968();

  *a2 = v3;
  return result;
}

uint64_t sub_1B9DABC74@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B9DD2998();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B9DABCA0(uint64_t a1)
{
  v2 = sub_1B9DAC650(&qword_1EBBE3398, type metadata accessor for FileAttributeKey, &unk_1B9DD5B68);
  v3 = sub_1B9DAC650(&qword_1EBBE33B0, type metadata accessor for FileAttributeKey, &unk_1B9DD5ABC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

unint64_t sub_1B9DABD5C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B9D9EA44(a1, &a1[a2]);
  }

  sub_1B9DD2668();
  swift_allocObject();
  sub_1B9DD2618();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B9DD2748();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_1EDCF0828)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDCF0828);
    }
  }
}

uint64_t getEnumTagSinglePayload for UtilitiesError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UtilitiesError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

unint64_t sub_1B9DABFD4()
{
  result = qword_1EBBE33B8;
  if (!qword_1EBBE33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE33B8);
  }

  return result;
}

uint64_t sub_1B9DAC028(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B9DD2668();
      swift_allocObject();
      sub_1B9DD2638();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B9DD2748();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1B9DAC0C8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v24 = sub_1B9DD29D8();
      swift_bridgeObjectRetain_n();
      v11 = getxattr(a2, (v24 + 32), &value, a5, 0, 0);
      swift_bridgeObjectRelease_n();

      return v11;
    }

    swift_bridgeObjectRetain_n();
    sub_1B9D9DB90(v8, v7);
    sub_1B9D9D534(v8, v7);
    *&value = v8;
    *(&value + 1) = v7 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1B9DD5990;
    sub_1B9D9D534(0, 0xC000000000000000);
    sub_1B9DD2738();
    v14 = *(value + 16);

    result = sub_1B9DD2628();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v16 = result;
    v17 = sub_1B9DD2658();
    v18 = v14 - v17;
    if (!__OFSUB__(v14, v17))
    {
      sub_1B9DD2648();
      v19 = sub_1B9DD29D8();
      v11 = getxattr(a2, (v19 + 32), (v16 + v18), a5, 0, 0);
      swift_bridgeObjectRelease_n();

      v20 = *(&value + 1) | 0x8000000000000000;
      *a1 = value;
LABEL_19:
      a1[1] = v20;
      return v11;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
    swift_bridgeObjectRetain_n();
    sub_1B9D9D534(v8, v7);
    *&value = v8;
    WORD4(value) = v7;
    BYTE10(value) = BYTE2(v7);
    BYTE11(value) = BYTE3(v7);
    BYTE12(value) = BYTE4(v7);
    BYTE13(value) = BYTE5(v7);
    BYTE14(value) = BYTE6(v7);
    v10 = sub_1B9DD29D8();
    v11 = getxattr(a2, (v10 + 32), &value, a5, 0, 0);

    v12 = value;
    v13 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
    swift_bridgeObjectRelease_n();
    *a1 = v12;
    a1[1] = v13;
    return v11;
  }

  v21 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  swift_bridgeObjectRetain_n();
  sub_1B9D9DB90(v8, v7);
  sub_1B9D9D534(v8, v7);
  *a1 = xmmword_1B9DD5990;
  sub_1B9D9D534(0, 0xC000000000000000);
  v22 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v22 < v8)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_1B9DD2628() && __OFSUB__(v8, sub_1B9DD2658()))
    {
LABEL_25:
      __break(1u);
    }

    sub_1B9DD2668();
    swift_allocObject();
    v25 = sub_1B9DD2608();

    v21 = v25;
  }

  if (v22 < v8)
  {
    goto LABEL_22;
  }

  result = sub_1B9DD2628();
  if (result)
  {
    v26 = result;
    v27 = sub_1B9DD2658();
    v28 = v8 - v27;
    if (!__OFSUB__(v8, v27))
    {
      sub_1B9DD2648();
      v29 = sub_1B9DD29D8();
      v11 = getxattr(a2, (v29 + 32), (v26 + v28), a5, 0, 0);

      swift_bridgeObjectRelease_n();

      v20 = v21 | 0x4000000000000000;
      *a1 = v8;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B9DAC540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9D9B898(&qword_1EBBE3220, &qword_1B9DD5240);
    v3 = sub_1B9DD2BE8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B9DAC698(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B9DA3874(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B9DA4230(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1B9DAC650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9DAC698(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9D9B898(&qword_1EBBE3248, &unk_1B9DD5BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DAC708(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B9DD27B8();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9D9DB90(a1, a2);
  sub_1B9DD27C8();
  sub_1B9DAC934();
  sub_1B9DD2B28();
  if (v22)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v18 = xmmword_1B9DD5BC0;
    v9 = MEMORY[0x1E69E7558];
    do
    {
      v10 = v21;
      sub_1B9D9B898(&qword_1EBBE33C8, &qword_1B9DD5BD0);
      v11 = swift_allocObject();
      *(v11 + 16) = v18;
      *(v11 + 56) = MEMORY[0x1E69E7508];
      *(v11 + 64) = v9;
      *(v11 + 32) = v10;
      v12 = sub_1B9DD29A8();
      v14 = v13;
      v19 = v7;
      v20 = v8;

      MEMORY[0x1BFAE6A10](v12, v14);

      v7 = v19;
      v8 = v20;
      sub_1B9DD2B28();
    }

    while (v22 != 1);
  }

  (*(v17 + 8))(v6, v4);
  return v7;
}

unint64_t sub_1B9DAC934()
{
  result = qword_1EBBE3390;
  if (!qword_1EBBE3390)
  {
    sub_1B9DD27B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE3390);
  }

  return result;
}

uint64_t sub_1B9DAC98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_1B9DD28D8();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B9DD2728();
  v38 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = sub_1B9DD26C8();
  Unique = _CFBundleCreateUnique();

  if (Unique)
  {
    v15 = CFBundleCopyExecutableURL(Unique);
    if (v15)
    {
      v16 = v15;
      v36 = a2;
      sub_1B9DD26E8();
      v17 = sub_1B9DA9F20();
      v18 = v4;
      v19 = *(v4 + 16);
      v20 = v37;
      v19(v6, v17, v37);
      (*(v38 + 16))(v10, v12, v7);
      v21 = sub_1B9DD28B8();
      v22 = sub_1B9DD2AB8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v35 = v18;
        v24 = v23;
        v39 = swift_slowAlloc();
        v25 = v39;
        *v24 = 136315138;
        v34 = v21;
        v33 = sub_1B9DD26F8();
        v27 = v26;
        (*(v38 + 8))(v10, v7);
        v28 = sub_1B9D9D588(v33, v27, &v39);

        *(v24 + 4) = v28;
        v29 = v34;
        _os_log_impl(&dword_1B9D96000, v34, v22, "Switched to checking executable url: %s", v24, 0xCu);
        sub_1B9D9DB30(v25);
        MEMORY[0x1BFAE80B0](v25, -1, -1);
        MEMORY[0x1BFAE80B0](v24, -1, -1);

        (*(v35 + 8))(v6, v37);
      }

      else
      {

        (*(v38 + 8))(v10, v7);
        (*(v18 + 8))(v6, v20);
      }

      return (*(v38 + 32))(v36, v12, v7);
    }
  }

  v30 = *(v38 + 16);

  return v30(a2, a1, v7);
}

id sub_1B9DACEC4(NSObject *a1)
{
  v3 = v2;
  v5 = sub_1B9DD2728();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = sub_1B9DD28D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9DA843C())
  {
    v43 = v1;
    v15 = sub_1B9DA9F20();
    (*(v12 + 16))(v14, v15, v11);
    isa = v6[2].isa;
    v42 = a1;
    isa(v10, a1, v5);
    v1 = v5;
    a1 = v6;
    v6 = sub_1B9DD28B8();
    v17 = sub_1B9DD2AB8();
    if (os_log_type_enabled(v6, v17))
    {
      v18 = swift_slowAlloc();
      v41 = v2;
      v19 = v18;
      v37 = v18;
      v38 = swift_slowAlloc();
      v45 = v38;
      *v19 = 136315138;
      v39 = v1;
      v40 = a1;
      v20 = v1;
      v36 = sub_1B9DD26F8();
      v22 = v21;
      v23 = a1[1].isa;
      v23(v10, v20);
      v24 = sub_1B9D9D588(v36, v22, &v45);

      v25 = v37;
      *(v37 + 4) = v24;
      v26 = v17;
      v27 = v25;
      _os_log_impl(&dword_1B9D96000, v6, v26, "Checking warning state for bundle: %s", v25, 0xCu);
      v28 = v38;
      sub_1B9D9DB30(v38);
      MEMORY[0x1BFAE80B0](v28, -1, -1);
      v3 = v41;
      MEMORY[0x1BFAE80B0](v27, -1, -1);

      v29 = v23;
      (*(v12 + 8))(v14, v11);
      v30 = v39;
      goto LABEL_7;
    }
  }

  else
  {
    result = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v29 = a1[1].isa;
  v29(v10, v1);
  (*(v12 + 8))(v14, v11);
  v30 = v1;
LABEL_7:
  v32 = v44;
  sub_1B9DAC98C(v42, v44);
  v33 = (*((*MEMORY[0x1E69E7D40] & *v43) + 0x50))(v32);
  if (v3)
  {
    return (v29)(v32, v30);
  }

  v34 = v33;
  v29(v32, v30);
  return v34;
}

id sub_1B9DAD76C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LaunchWarningClientOperations();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1B9DAD7A0(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE31C8, &unk_1B9DD5340);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v55 - v6;
  v7 = _s18LaunchWarningEntryVMa(0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B9DD2728();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B9DD28D8();
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B9DA843C())
  {
    v60 = v9;
    v18 = sub_1B9DA9F20();
    (*(v15 + 16))(v17, v18, v14);
    isa = v11[2].isa;
    v62 = a1;
    isa(v13, a1, v10);
    v9 = v11;
    v11 = sub_1B9DD28B8();
    v20 = sub_1B9DD2AB8();
    v61 = v10;
    v21 = v20;
    v22 = os_log_type_enabled(v11, v20);
    v59 = v4;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v56 = v23;
      v57 = swift_slowAlloc();
      v67 = v57;
      *v23 = 136315138;
      v24 = v9;
      v58 = v9;
      v25 = sub_1B9DD26F8();
      v27 = v26;
      v28 = v24[1].isa;
      v29 = v13;
      v30 = v61;
      v28(v29, v61);
      v31 = sub_1B9D9D588(v25, v27, &v67);

      v32 = v56;
      *(v56 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_1B9D96000, v11, v21, "Checking warning state for url: %s", v32, 0xCu);
      v34 = v57;
      sub_1B9D9DB30(v57);
      MEMORY[0x1BFAE80B0](v34, -1, -1);
      MEMORY[0x1BFAE80B0](v33, -1, -1);

      v36 = *(v15 + 8);
      v35 = v15 + 8;
      v36(v17, v14);
      v37 = v58;
      goto LABEL_7;
    }
  }

  else
  {
    if ([objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0])
    {
      return;
    }

    __break(1u);
  }

  v28 = v9[1].isa;
  v38 = v13;
  v30 = v61;
  v28(v38, v61);
  v39 = *(v15 + 8);
  v35 = v15 + 8;
  v39(v17, v14);
  v37 = v9;
LABEL_7:
  type metadata accessor for LaunchWarningMark();
  v40 = v66;
  v41 = sub_1B9D9E680(v62);
  v66 = v40;
  if (v40)
  {
    return;
  }

  v42 = v41;
  if (v41)
  {
    type metadata accessor for LaunchWarningDB();
    v14 = sub_1B9DA86EC(1);
    v35 = v65;
    v43 = v66;
    sub_1B9DA9590(v42, v65);
    v66 = v43;
    if (v43)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (![objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0])
  {
    __break(1u);
LABEL_14:
    v44 = v64;
    if ((*(v63 + 48))(v35, 1, v64) == 1)
    {
      sub_1B9DAEAC0(v35);
      v44 = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:0 withUserOverridden:0 withKBURL:0];
      if (v44)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v45 = v35;
    v46 = v44;
    v47 = v60;
    sub_1B9DAEB28(v45, v60);
    v49 = v46 + 20;
    v48 = *(v46 + 5);
    v50 = *(v47 + *(v49 + 1));
    v51 = v47 + v48 + *(type metadata accessor for LaunchWarningDetails(0) + 36);
    v52 = v59;
    sub_1B9DA7EF0(v51, v59);
    v53 = 0;
    if ((v37[6].isa)(v52, 1, v30) != 1)
    {
      v53 = sub_1B9DD26C8();
      v28(v52, v30);
    }

    v54 = [objc_allocWithZone(MISLaunchWarningQueryResult) initWithWarningState:1 withUserOverridden:v50 withKBURL:v53];

    if (!v54)
    {
      __break(1u);
      return;
    }

    sub_1B9DAEB8C(v60);
LABEL_11:
  }
}

void sub_1B9DADDBC(void *a1)
{
  v2 = v1;
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B9DD2728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B9DD28D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1B9DA843C())
  {
    v12 = sub_1B9DA9F20();
    (*(v9 + 16))(v11, v12, v8);
    v13 = *(v5 + 16);
    v43 = a1;
    v13(v7, a1, v4);
    v14 = sub_1B9DD28B8();
    v15 = sub_1B9DD2AB8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v40 = v14;
      v17 = v16;
      v41 = swift_slowAlloc();
      *&v45 = v41;
      *v17 = 136446210;
      v39 = v15;
      v18 = sub_1B9DD26F8();
      v42 = v1;
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = sub_1B9D9D588(v18, v20, &v45);
      v2 = v42;

      *(v17 + 4) = v21;
      v22 = v40;
      _os_log_impl(&dword_1B9D96000, v40, v39, "Performing warning lookup for bundle: %{public}s", v17, 0xCu);
      v23 = v41;
      sub_1B9D9DB30(v41);
      MEMORY[0x1BFAE80B0](v23, -1, -1);
      MEMORY[0x1BFAE80B0](v17, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v9 + 8))(v11, v8);
    v24 = sub_1B9DAA058(v43);
    if (!v2)
    {
      v27 = v25;
      v28 = v26;
      v46[0] = 0;
      v29 = v24;
      sub_1B9D9DB90(v25, v26);
      v30 = sub_1B9DD2778();
      sub_1B9D9D534(v27, v28);
      v31 = sub_1B9DD122C(v29, v30, v46);

      if (v31)
      {
        *&v45 = 0;
        *(&v45 + 1) = 0xE000000000000000;
        sub_1B9DD2B88();

        *&v45 = 0xD000000000000011;
        *(&v45 + 1) = 0x80000001B9DDDF10;
        v44 = v31;
        v32 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v32);

        v33 = v45;
        sub_1B9DAEA6C();
        swift_allocError();
        *v34 = v33;
      }

      else
      {
        v35 = v46[0];
        if (v46[0])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v45 = xmmword_1B9DD5980;
            v36 = v35;
            sub_1B9DD2788();

            if (*(&v45 + 1) >> 60 != 15)
            {
              sub_1B9D9D534(v27, v28);

              return;
            }
          }
        }

        sub_1B9DAEA6C();
        swift_allocError();
        *v37 = 0xD000000000000029;
        v37[1] = 0x80000001B9DDDF30;
      }

      swift_willThrow();
      sub_1B9D9D534(v27, v28);
    }
  }
}