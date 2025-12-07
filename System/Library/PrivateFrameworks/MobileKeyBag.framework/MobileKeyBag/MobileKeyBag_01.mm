uint64_t MKBBackupValidateBackupKeyWithUUID(const __CFData *a1, const __CFData *a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (!_MKBBackupCheckKey(BytePtr, Length, v6, v7, v8, v9, v10, v11))
  {
    v12 = CFDataGetBytePtr(a2);
    result = memcmp(BytePtr, v12, 0x10uLL);
    if (!result)
    {
      return result;
    }

    debuglog("MKBBackupValidateBackupKeyWithUUID", @"BackupKey uuid mismatch", v14, v15, v16, v17, v18, v19);
  }

  return 0xFFFFFFFFLL;
}

uint64_t MKBBackupValidateKey(int *a1, CFDataRef theData)
{
  v60 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!_MKBBackupCheckKey(BytePtr, Length, v6, v7, v8, v9, v10, v11))
  {
    if (Length >= bswap32(*(BytePtr + 8)) + 44)
    {
      memset(out, 0, 37);
      uuid_unparse(BytePtr, out);
      all_crypto_ids = _apfs_get_all_crypto_ids(*a1);
      if (all_crypto_ids)
      {
        v25 = all_crypto_ids;
        v26 = 0;
        v27 = 0;
        v28 = (all_crypto_ids + 16);
        uu2 = BytePtr;
        do
        {
          if (v26 >= v25[4])
          {
            break;
          }

          v29 = v25;
          v30 = bswap32(*(BytePtr + 8));
          v31 = bswap64(*(BytePtr + 2));
          v32 = bswap64(*&BytePtr[v30 + 36]);
          v33 = bswap32(*(BytePtr + 6));
          memset(v58, 0, 37);
          uuid_unparse(BytePtr, v58);
          debuglog("MKBBackupValidateKey", @"[%d] crypto_id = 0x%016llx, extent_size = %llu, key class = %u, bag uuid = %s", v34, v35, v36, v37, v38, v39, v26, v31, v32, v33, v58);
          v40 = *v28;
          if (*v28 < -1)
          {
            v25 = v29;
          }

          else
          {
            v25 = v29;
            if (v31 != v40)
            {
              debuglog("MKBBackupValidateKey", @"crypto_id mismatch (0x%016llx != 0x%016llx)", v19, v20, v21, v22, v23, v24, v31, v40, v54, v56);
              goto LABEL_26;
            }

            v41 = *(v28 - 1);
            if (v32 != v41)
            {
              debuglog("MKBBackupValidateKey", @"extent_size mismatch (%llu != %llu)", v19, v20, v21, v22, v23, v24, v32, v41, v54, v56);
              goto LABEL_26;
            }

            if (uuid_compare(BytePtr, uu2))
            {
              debuglog("MKBBackupValidateKey", @"bag uuid mismatch (%s != %s)", v19, v20, v21, v22, v23, v24, v58, out, v54, v56);
              goto LABEL_26;
            }

            v27 += v30 + 44;
            BytePtr = &uu2[v27];
          }

          ++v26;
          v28 += 3;
        }

        while (v27 < Length);
        v42 = v25[4];
        if (v27 == Length && v26 == v42)
        {
          free(v25);
          return 0;
        }

        debuglog("MKBBackupValidateKey", @"extent count mismatch i=%d, count=%d, offset=%zu, key_blob_size=%zu", v19, v20, v21, v22, v23, v24, v26, v42, v27, Length);
LABEL_26:
        free(v25);
      }

      else
      {
        v45 = *(a1 + 3);
        v46 = *a1;
        v47 = __error();
        v55 = strerror(*v47);
        debuglog("MKBBackupValidateKey", @"Can't get crypto keys for inode %llu (fd %d): %s", v48, v49, v50, v51, v52, v53, v45, v46, v55);
      }
    }

    else
    {
      debuglog("MKBBackupValidateKey", @"truncated key size: %zd", v12, v13, v14, v15, v16, v17, Length);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t ANS_AKDF2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v22 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v11 = ccaes_cbc_encrypt_mode();
  v12 = 80 * ((v11[1] + *v11 + 159) / 0x50uLL);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - 2 * v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - 2 * v16;
  v18 = 0xFFFFFFFFLL;
  if (a5 && a6 && (a6 & 0xF) == 0 && a1 && v22 && a3 && a4 && !cccmac_init())
  {
    v23 = 1;
    if (a6 < 0x10)
    {
LABEL_15:
      v18 = 0;
    }

    else
    {
      v19 = a6 >> 4;
      while (1)
      {
        memcpy(v17, v15, v12);
        if (cccmac_update() || cccmac_update() || cccmac_final_generate())
        {
          break;
        }

        ++v23;
        a5 += 16;
        if (v23 > v19)
        {
          goto LABEL_15;
        }
      }

      v18 = 0xFFFFFFFFLL;
    }
  }

  cc_clear();
  cc_clear();
  return v18;
}

uint64_t ANS_AKDF2_construct_fixed_data(void *a1, uint64_t a2, char *__s, uint64_t a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 == 8 && __s && a1 && a4 == 15)
  {
    memset_s(__s, 0xFuLL, 0, 0xFuLL);
    v7 = 0;
    strcpy(__s, "ANS2");
    *(__s + 5) = *a1;
    *(__s + 13) = 1;
    v8 = 14;
    do
    {
      v9 = __s[v7];
      __s[v7] = __s[v8];
      __s[v8] = v9;
      ++v7;
      --v8;
    }

    while (v7 != 7);
    return 0;
  }

  return result;
}

id MKBCopyCryptoIDKeysForFileDescriptor_cold_1(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MobileKeyBagError" code:a1 userInfo:0];
  *a2 = v3;
  v4 = v3;

  return v4;
}

void MKBBackupCreateFromFileDescriptors_cold_2(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("MKBBackupCreateFromFileDescriptors", @"failed to fstat encryptedfd(%d): %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

void __MKBBackupDecryptInPlace_cold_1(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("__MKBBackupDecryptInPlace", @"Can't set key class to %d: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

void __MKBBackupDecryptInPlace_cold_2(uint64_t a1, uint64_t a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  debuglog("__MKBBackupDecryptInPlace", @"Failed to shrink %s to %lld: %s", v6, v7, v8, v9, v10, v11, a1, a2, v5);
}

void __MKBBackupDecryptInPlace_cold_4(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("__MKBBackupDecryptInPlace", @"open(%s) failed: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

uint64_t KBPostAggdScalar(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (MEMORY[0x1EEE83340] && MEMORY[0x1EEE83328])
  {
    if (a3 && arc4random() % a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      if (a2)
      {
        ADClientSetValueForScalarKey();
      }

      else
      {
        ADClientAddValueForScalarKey();
      }

      return 0;
    }
  }

  return result;
}

uint64_t KBPostAggdDistribution(uint64_t a1, int a2, unsigned int a3, double a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (MEMORY[0x1EEE83338] && MEMORY[0x1EEE83330])
  {
    if (a3 && arc4random() % a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      if (a2)
      {
        ADClientSetValueForDistributionKey();
      }

      else
      {
        ADClientPushValueForDistributionKey();
      }

      return 0;
    }
  }

  return result;
}

__CFDictionary *MKBUserSessionGetUserLockStateInfo(CFDictionaryRef theDict)
{
  Int = theDict;
  v13[7] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, kMKBUserSessionIDKey))
    {
      Int = _getInt(Int, kMKBUserSessionIDKey);
    }

    else
    {
      Int = 0;
    }
  }

  v2 = +[MKBKeyStoreDevice sharedService];
  v3 = [v2 getLockStateForUser:Int];

  if (!v3)
  {
    return 0;
  }

  v4 = CFGetTypeID(v3);
  if (v4 == CFDictionaryGetTypeID())
  {
    dict = create_dict();
    if (dict)
    {
      v6 = v13;
      v12 = @"IsWipePending";
      v13[0] = @"sw";
      v13[1] = @"IsPermanentlyBlocked";
      v13[2] = @"pb";
      v13[3] = @"FailedPasscodeAttempts";
      v13[4] = @"fa";
      v13[5] = @"TimeUntilUnblockedSinceReferenceDate";
      v13[6] = @"boff";
      v7 = 4;
      do
      {
        v8 = *(v6 - 1);
        if (CFDictionaryContainsKey(v3, v8))
        {
          v9 = *v6;
          Value = CFDictionaryGetValue(v3, v8);
          CFDictionarySetValue(dict, v9, Value);
        }

        v6 += 2;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    dict = 0;
  }

  CFRelease(v3);
  return dict;
}

const void *load_binary_dict_from_buffer(UInt8 *bytes, CFIndex length)
{
  v2 = 0;
  format = kCFPropertyListBinaryFormat_v1_0;
  if (bytes && length)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
    if (!v5)
    {
      debuglog("load_binary_dict_from_buffer", @"Could not create stream from serialized data", v6, v7, v8, v9, v10, v11);
      return 0;
    }

    v12 = v5;
    if (CFReadStreamOpen(v5))
    {
      v19 = CFPropertyListCreateWithStream(v4, v12, length, 2uLL, &format, 0);
      v2 = v19;
      if (!v19)
      {
        debuglog("load_binary_dict_from_buffer", @"Could not create dictionary from stream", v20, v21, v22, v23, v24, v25);
        goto LABEL_9;
      }

      v26 = CFGetTypeID(v19);
      if (v26 == CFDictionaryGetTypeID())
      {
LABEL_9:
        CFReadStreamClose(v12);
        CFRelease(v12);
        return v2;
      }

      CFRelease(v2);
    }

    else
    {
      debuglog("load_binary_dict_from_buffer", @"Could not open the stream", v13, v14, v15, v16, v17, v18);
    }

    v2 = 0;
    goto LABEL_9;
  }

  return v2;
}

void __is_device_in_device_recovery_environment_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  memset(__s1, 0, sizeof(__s1));
  v7 = 31;
  v0 = sysctlbyname("hw.osenvironment", __s1, &v7, 0, 0);
  if (v0)
  {
    debuglog("is_device_in_device_recovery_environment_block_invoke", @"sysctl(hw.osenvironment) -> %d", v1, v2, v3, v4, v5, v6, v0);
  }

  else if (!strcmp(__s1, "device-recovery"))
  {
    is_device_in_device_recovery_environment_answer = 1;
  }
}

void store_binary_dict_fd_cold_1(const __CFString *a1, uint64_t a2)
{
  v4 = __error();
  v5 = strerror(*v4);
  debuglog("store_binary_dict_fd", a1, v6, v7, v8, v9, v10, v11, a2, v5);
}

void store_binary_dict_fd_cold_2(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("store_binary_dict_fd", @"Could not create %s: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

void load_binary_dict_cold_1(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("load_binary_dict", @"Could not fstat %s: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

void load_binary_dict_cold_2(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("load_binary_dict", @"Could not read %s: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}

void load_binary_dict_cold_4(uint64_t a1)
{
  v2 = __error();
  v3 = strerror(*v2);
  debuglog("load_binary_dict", @"Could not open %s: %s", v4, v5, v6, v7, v8, v9, a1, v3);
}