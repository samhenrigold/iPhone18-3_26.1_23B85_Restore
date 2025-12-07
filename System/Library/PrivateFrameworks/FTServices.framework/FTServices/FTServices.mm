uint64_t sub_1959265B8()
{
  qword_1ED7686E8 = objc_alloc_init(FTDeviceSupport);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1959269FC()
{
  qword_1ED7686F0 = objc_alloc_init(FTSelectedPNRSubscription);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195926DD0()
{
  qword_1ED768710 = objc_alloc_init(FTEntitlementSupport);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_195927218()
{
  qword_1ED768740 = [[FTServiceStatus alloc] initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

void sub_19592882C()
{
  v0 = MEMORY[0x19A8B8560]("MCFeatureVideoConferencingAllowed", @"ManagedConfiguration");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED7686C8, v1);
}

uint64_t sub_1959289E0(uint64_t a1)
{
  [*(a1 + 32) _registerForServiceStatusNotifications];
  [*(a1 + 32) _registerForCarrierNotifications];
  [*(a1 + 32) _registerForCapabilityNotifications];
  [*(a1 + 32) _registerForLockdownNotifications];
  v2 = *(a1 + 32);

  return MEMORY[0x1EEE66B58](v2, sel__registerForManagedConfigurationNotifications);
}

void sub_195928D2C(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"3Gvenice", @"venice", 0}];
  qword_1ED768768 = MGRegisterForUpdates();
  [*(a1 + 32) _updateCapabilities];
}

uint64_t sub_195928F94()
{
  qword_1ED768718 = objc_alloc_init(FTUserConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

id sub_195929380(void *a1)
{
  if ([a1 length] >> 14)
  {

    return [a1 _FTCopyGzippedData];
  }

  else
  {

    return a1;
  }
}

void sub_19592A540(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19592A3F0);
  }

  objc_sync_exit(v13);
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(exc_buf);
}

id sub_19592BAF4(void *a1)
{
  if ([a1 length])
  {
    *&v1 = 0xAAAAAAAAAAAAAAAALL;
    *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
    strm.msg = 0xAAAAAAAAAAAAAAAALL;
    strm.state = 0xAAAAAAAAAAAAAAAALL;
    strm.reserved = 0xAAAAAAAAAAAAAAAALL;
    *&strm.data_type = v1;
    *&strm.next_out = v1;
    *&strm.avail_in = v1;
    strm.total_out = 0;
    memset(&strm.zalloc, 0, 24);
    v2 = a1;
    strm.next_in = [a1 bytes];
    strm.avail_in = [a1 length];
    v3 = 0;
    if (!deflateInit2_(&strm, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:0x4000];
      do
      {
        total_out = strm.total_out;
        if (total_out >= [v3 length])
        {
          [v3 increaseLengthBy:0x4000];
        }

        v5 = [v3 mutableBytes];
        strm.next_out = (v5 + strm.total_out);
        v6 = [v3 length];
        strm.avail_out = v6 - LODWORD(strm.total_out);
        deflate(&strm, 4);
      }

      while (!strm.avail_out);
      [v3 setLength:strm.total_out];
      deflateEnd(&strm);
    }

    return v3;
  }

  else
  {

    return a1;
  }
}

id sub_19592BC58()
{
  if (qword_1ED768670 != -1)
  {
    sub_1959635D0();
  }

  v0 = off_1ED768680();

  return v0;
}

id sub_19592BCA0()
{
  if (qword_1ED768678 != -1)
  {
    sub_195963EFC();
  }

  v0 = off_1ED768688();

  return v0;
}

uint64_t sub_19592BE94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_19592BEA4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_19592BEB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_19592C000(void *a1, void *a2, void *a3, void *a4)
{
  *&v48[5] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([v7 length] && (objc_msgSend(v8, "length") || objc_msgSend(v10, "length")))
  {
    v12 = [v7 dataUsingEncoding:1];
    v46 = bswap32([v12 length]);
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v48[0] = [v12 length];
      LOWORD(v48[1]) = 2112;
      *(&v48[1] + 2) = @"bag-key";
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Appending %d length header for %@ segment", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v38 = [v12 length];
      v41 = @"bag-key";
      _IDSLogV();
    }

    [v11 appendBytes:&v46 length:{4, v38, v41}];
    if ([v12 length])
    {
      v14 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 length];
        *buf = 67109378;
        v48[0] = v15;
        LOWORD(v48[1]) = 2112;
        *(&v48[1] + 2) = @"bag-key";
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Appending %d bytes for %@ segment", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v39 = [v12 length];
        v42 = @"bag-key";
        _IDSLogV();
      }

      [v11 appendData:{v12, v39, v42}];
    }

    else
    {
      v16 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = @"bag-key";
        _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Appending no bytes for %@ segment", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v39 = @"bag-key";
        _IDSLogV();
      }
    }

    v17 = [v8 dataUsingEncoding:1];
    v46 = bswap32([v17 length]);
    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v17 length];
      *buf = 67109378;
      v48[0] = v19;
      LOWORD(v48[1]) = 2112;
      *(&v48[1] + 2) = @"query-string";
      _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Appending %d length header for %@ segment", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v39 = [v17 length];
      v42 = @"query-string";
      _IDSLogV();
    }

    [v11 appendBytes:&v46 length:{4, v39, v42}];
    if ([v17 length])
    {
      v20 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v17 length];
        *buf = 67109378;
        v48[0] = v21;
        LOWORD(v48[1]) = 2112;
        *(&v48[1] + 2) = @"query-string";
        _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "Appending %d bytes for %@ segment", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = [v17 length];
        v43 = @"query-string";
        _IDSLogV();
      }

      [v11 appendData:{v17, v40, v43}];
    }

    else
    {
      v22 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = @"query-string";
        _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "Appending no bytes for %@ segment", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v40 = @"query-string";
        _IDSLogV();
      }
    }

    v23 = v10;
    v46 = bswap32([v23 length]);
    v24 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v23 length];
      *buf = 67109378;
      v48[0] = v25;
      LOWORD(v48[1]) = 2112;
      *(&v48[1] + 2) = @"body";
      _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "Appending %d length header for %@ segment", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v40 = [v23 length];
      v43 = @"body";
      _IDSLogV();
    }

    [v11 appendBytes:&v46 length:{4, v40, v43}];
    if ([v23 length])
    {
      v26 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v23 length];
        *buf = 67109378;
        v48[0] = v27;
        LOWORD(v48[1]) = 2112;
        *(&v48[1] + 2) = @"body";
        _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "Appending %d bytes for %@ segment", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v38 = [v23 length];
        v44 = @"body";
        _IDSLogV();
      }

      [v11 appendData:{v23, v38, v44}];
    }

    else
    {
      v28 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v48 = @"body";
        _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Appending no bytes for %@ segment", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v38 = @"body";
        _IDSLogV();
      }
    }

    if ([v23 length])
    {
      v29 = v9;
      v46 = bswap32([v29 length]);
      v30 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v29 length];
        *buf = 67109378;
        v48[0] = v31;
        LOWORD(v48[1]) = 2112;
        *(&v48[1] + 2) = @"push-token";
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Appending %d length header for %@ segment", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        v38 = [v29 length];
        v44 = @"push-token";
        _IDSLogV();
      }

      [v11 appendBytes:&v46 length:{4, v38, v44}];
      if ([v29 length])
      {
        v32 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v29 length];
          *buf = 67109378;
          v48[0] = v33;
          LOWORD(v48[1]) = 2112;
          *(&v48[1] + 2) = @"push-token";
          _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "Appending %d bytes for %@ segment", buf, 0x12u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v38 = [v29 length];
          v45 = @"push-token";
          _IDSLogV();
        }

        [v11 appendData:{v29, v38, v45}];
      }

      else
      {
        v34 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v48 = @"push-token";
          _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, "Appending no bytes for %@ segment", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v38 = @"push-token";
          _IDSLogV();
        }
      }
    }
  }

  if ([v11 length])
  {
    v35 = v11;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35;

  return v35;
}

void sub_19592CC70(int a1, void *a2, void *a3, __SecKey *a4, __SecKey *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12)
{
  v19 = a3;
  v20 = a12;
  v21 = v20;
  if (v19 && a5 && a10 && v20)
  {
    value = v19;
    v35 = 0;
    v36 = 0;
    v22 = a11;
    v23 = a10;
    _FTGenerateNonceAndSignatureFromComponents(a4, a5, a6, a7, a2, a8, a9, &v36, &v35);
    v24 = v36;
    v25 = v35;
    if (v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = &stru_1F09C7808;
    }

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-%@-cert%@", v23, v26];
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-%@-nonce%@", v23, v26];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-%@-sig%@", v23, v26];

    if (a1)
    {
      v19 = value;
      CFDictionarySetValue(v21, v27, value);
      v30 = v24;
      if (v30)
      {
        CFDictionarySetValue(v21, v28, v30);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195962634();
      }

      v32 = v25;
      if (!v32)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v19 = value;
      v31 = [value _FTStringFromBaseData];
      if (v31)
      {
        CFDictionarySetValue(v21, v27, v31);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195962634();
      }

      v33 = [v24 _FTStringFromBaseData];
      if (v33)
      {
        CFDictionarySetValue(v21, v28, v33);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_195962634();
      }

      v32 = [v25 _FTStringFromBaseData];
      if (!v32)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_27:
          sub_195962634();
        }

LABEL_28:

        goto LABEL_29;
      }
    }

    CFDictionarySetValue(v21, v29, v32);
    goto LABEL_28;
  }

LABEL_29:
}

BOOL _FTGenerateNonceAndSignatureFromComponents(__SecKey *a1, __SecKey *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, id *a9)
{
  v14 = 0;
  _FTGenerateDigestForSigningFromComponents(1, a3, a4, a5, a6, a7, a8, &v14);
  v11 = v14;
  v12 = sub_19592D540(a1, a2, v11, a9);

  return v12;
}

void _FTGenerateDigestForSigningFromComponents(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a6;
  v16 = sub_19592C000(a2, a3, a4, a5);
  _FTGenerateDigestForSigningFromPayload(a1, v16, v15, a7, a8);
}

void _FTGenerateDigestForSigningFromPayload(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (a4)
  {
    v12 = [MEMORY[0x1E695DF00] date];
    [v12 timeIntervalSince1970];
    v14 = v13;

    if (v10)
    {
      [v10 doubleValue];
      v14 = v15 / 1000.0;
    }

    v16 = 1000 * v14;
    *&buf[9] = 0xAAAAAAAAAAAAAAAALL;
    buf[0] = 1;
    *&buf[1] = (0xE800000000000000 * v14) | HIBYTE(v16) | (256000 * v14) & 0xFF00000000 | (0x3E8000000 * v14) & 0xFF0000000000 | (0x3E80000000000 * v14) & 0xFF000000000000 | (v16 >> 40) & 0xFF00 | (v16 >> 24) & 0xFF0000 | (v16 >> 8) & 0xFF000000;
    SecureRandomBytes();
    v17 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:17];
    v18 = v17;
    *a4 = v17;
    if (v17)
    {
      [v11 appendData:v17];
    }
  }

  if (v9)
  {
    [v11 appendData:v9];
  }

  v19 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v11 length];
    *buf = 67109378;
    *&buf[4] = v20;
    *&buf[8] = 2112;
    *&buf[10] = v11;
    _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Signature input is %d bytes (%@)", buf, 0x12u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v11 length];
    _IDSLogV();
  }

  if (a1)
  {
    if (a1 == 2)
    {
      v21 = [v11 SHA256Data];
    }

    else
    {
      if (a1 != 1)
      {
        goto LABEL_25;
      }

      v21 = [v11 SHA1Data];
    }

    if (v21)
    {
      if (!a5)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v22 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = 0;
      _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_ERROR, "Unknown digest type provided as input to digest generation function -- returning empty digest { digestType: %ld }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

LABEL_25:
  v23 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v11 length];
    *buf = 134218240;
    *&buf[4] = v24;
    *&buf[12] = 2048;
    *&buf[14] = a1;
    _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "No digest generated { signatureInputDataLength: %lu, digestType: %ld }", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v11 length];
    _IDSLogV();
  }

  v21 = 0;
  if (a5)
  {
LABEL_31:
    v21 = v21;
    *a5 = v21;
  }

LABEL_32:
}

BOOL sub_19592D540(__SecKey *a1, __SecKey *a2, void *a3, id *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = 0;
  if (a2 && a4)
  {
    v20 = 257;
    v9 = *MEMORY[0x1E697B180];
    v19 = 0;
    v10 = SecKeyCreateSignature(a2, v9, v7, &v19);
    if (v10)
    {
      if (!a1)
      {
LABEL_9:
        v15 = [MEMORY[0x1E695DF88] dataWithBytes:&v20 length:2];
        [v15 appendData:v10];
        *a4 = [v15 copy];

        v16 = [MEMORY[0x1E69A60E0] security];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *a4;
          *buf = 138412290;
          v22 = v17;
          _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "Succeeded signing: %@", buf, 0xCu);
        }

        v8 = [*a4 length] != 0;
        goto LABEL_17;
      }

      v11 = SecKeyVerifySignature(a1, v9, v7, v10, &v19);
      v12 = [MEMORY[0x1E69A60E0] security];
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *a4;
          *buf = 138412290;
          v22 = v14;
          _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Succeeded verifying signature for: %@", buf, 0xCu);
        }

        goto LABEL_9;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_195962950(&v19, v13);
      }
    }

    else
    {
      v13 = [MEMORY[0x1E69A60E0] security];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v19;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Failed signing  with error: %@", buf, 0xCu);
      }
    }

    v8 = 0;
    *a4 = 0;
LABEL_17:
  }

  return v8;
}

void sub_19592DAD0(int a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a1 & 0x40000) != 0)
    {
      v5 = 87;
    }

    else
    {
      v5 = 45;
    }

    v14[0] = 67111426;
    v14[1] = v5;
    if ((a1 & 2) != 0)
    {
      v6 = 82;
    }

    else
    {
      v6 = 45;
    }

    v15 = 1024;
    v16 = v6;
    if (a1)
    {
      v7 = 116;
    }

    else
    {
      v7 = 45;
    }

    v17 = 1024;
    v18 = v7;
    if ((a1 & 4) != 0)
    {
      v8 = 99;
    }

    else
    {
      v8 = 45;
    }

    v19 = 1024;
    v20 = v8;
    if ((a1 & 8) != 0)
    {
      v9 = 67;
    }

    else
    {
      v9 = 45;
    }

    v21 = 1024;
    if ((a1 & 0x10) != 0)
    {
      v10 = 105;
    }

    else
    {
      v10 = 45;
    }

    v22 = v9;
    v23 = 1024;
    if ((a1 & 0x20) != 0)
    {
      v11 = 68;
    }

    else
    {
      v11 = 45;
    }

    v24 = v10;
    if ((a1 & 0x10000) != 0)
    {
      v12 = 108;
    }

    else
    {
      v12 = 45;
    }

    v25 = 1024;
    v26 = v11;
    if ((a1 & 0x20000) != 0)
    {
      v13 = 100;
    }

    else
    {
      v13 = 45;
    }

    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    v31 = 2080;
    v32 = a2;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n", v14, 0x42u);
  }
}

void sub_19592F8D0(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E695DF00] date];
  [v2 _correctServerTimestampForDriftOnMessage:v3 currentDate:v4];

  v5 = [objc_alloc(MEMORY[0x1E69A5260]) initWithName:@"Push Header Signing" uniqueIdentifier:0];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_19592FCA0;
  v36[3] = &unk_1E7434F08;
  v6 = v5;
  v37 = v6;
  v7 = *(a1 + 40);
  v42 = *(a1 + 88);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v38 = v12;
  v39 = v11;
  v40 = *(a1 + 72);
  v41 = *(a1 + 80);
  v13 = MEMORY[0x19A8B8CC0](v36);
  if (![*(a1 + 40) wantsPushSignatures] || (objc_msgSend(*(a1 + 40), "ignorePushSigHeaders") & 1) != 0)
  {
    goto LABEL_8;
  }

  [*(a1 + 40) addSubEventTracingOperation:v6];
  v14 = _os_feature_enabled_impl();
  v15 = *(a1 + 40);
  if (!v14)
  {
    v31 = *(a1 + 88);
    v30 = [v15 pushToken];
    v23 = [*(a1 + 40) pushCertificate];
    v24 = [*(a1 + 40) pushPublicKey];
    v25 = [*(a1 + 40) pushPrivateKey];
    v26 = *(a1 + 56);
    v27 = *(a1 + 64);
    v28 = *(a1 + 48);
    v29 = [*(a1 + 40) serverTimestamp];
    sub_19592CC70(v31, v30, v23, v24, v25, v28, v26, v27, v29, @"push", 0, *(a1 + 72));

LABEL_8:
    v13[2](v13);
    goto LABEL_9;
  }

  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = [v15 pushToken];
  v19 = sub_19592C000(v16, v17, v18, *(a1 + 64));

  v20 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v19;
    _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "Using push signing API to sign { signatureBody: %@ }", buf, 0xCu);
  }

  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) serverTimestamp];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1959302F8;
  v32[3] = &unk_1E7434F30;
  v35 = *(a1 + 88);
  v33 = *(a1 + 72);
  v34 = v13;
  [v21 signDataWithPushIdentity:v19 serverTimestamp:v22 withCompletion:v32];

LABEL_9:
}

uint64_t sub_19592FCA0(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) stopWithError:0];
  v2 = [*(a1 + 40) certDataArray];
  v51 = [v2 count];

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1959623A4((a1 + 40), v3);
  }

  v54 = (a1 + 40);

  v4 = *(a1 + 88);
  v5 = [*(a1 + 40) pushToken];
  v6 = [*(a1 + 40) IDCertificate];
  v7 = [*(a1 + 40) identityPublicKey];
  v8 = [*(a1 + 40) identityPrivateKey];
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = [*(a1 + 40) serverTimestamp];
  v57 = a1;
  v46 = (a1 + 72);
  sub_19592CC70(v4, v5, v6, v7, v8, v11, v9, v10, v12, @"id", 0, *(a1 + 72));

  if (v51 == 1)
  {
    v13 = (a1 + 40);
    v14 = v57;
    if (([*v54 isMultipleAuthCertCapable] & 1) == 0)
    {
      v15 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_195962420(v54);
      }

      v52 = *(v57 + 88);
      v16 = [*(v57 + 40) pushToken];
      v55 = [*(v57 + 40) certDataArray];
      v17 = [v55 objectAtIndex:0];
      v18 = [*(v57 + 40) publicKeyArray];
      v19 = [v18 objectAtIndex:0];
      v20 = [*(v57 + 40) privateKeyArray];
      v21 = [v20 objectAtIndex:0];
      v23 = *(v57 + 56);
      v22 = *(v57 + 64);
      v24 = *(v57 + 48);
      v25 = [*(v57 + 40) serverTimestamp];
      sub_19592CC70(v52, v16, v17, v19, v21, v24, v23, v22, v25, @"auth", 0, *(v57 + 72));

      v14 = v57;
      v26 = [*(v57 + 40) userIDArray];
      v27 = [v26 objectAtIndex:0];

      if (v27)
      {
        CFDictionarySetValue(*v46, @"x-auth-user-id", v27);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1959624A4();
      }

      v44 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_19596252C(v46);
      }

LABEL_28:

      return (*(*(v14 + 80) + 16))();
    }
  }

  else
  {
    v13 = (a1 + 40);
    v14 = v57;
    if (v51 > 1)
    {
LABEL_11:
      v28 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        sub_1959625B0(v13);
      }

      v47 = v51;
      if (v51 >= 1)
      {
        v29 = 0;
        do
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-%d", v29];
          v53 = *(v14 + 88);
          v50 = [*(v14 + 40) pushToken];
          v56 = [*(v14 + 40) certDataArray];
          v31 = [v56 objectAtIndex:v29];
          v49 = [*(v14 + 40) publicKeyArray];
          v32 = [v49 objectAtIndex:v29];
          v33 = [*(v57 + 40) privateKeyArray];
          v34 = [v33 objectAtIndex:v29];
          v48 = *(v57 + 56);
          v35 = *(v57 + 64);
          v36 = *(v57 + 48);
          v37 = [*(v57 + 40) serverTimestamp];
          v38 = v32;
          v14 = v57;
          sub_19592CC70(v53, v50, v31, v38, v34, v36, v48, v35, v37, @"auth", v30, *(v57 + 72));

          v39 = v30;
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-auth-user-id%@", v30];
          v41 = [*(v57 + 40) userIDArray];
          v42 = [v41 objectAtIndex:v29];

          if (v42)
          {
            CFDictionarySetValue(*v46, v40, v42);
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v59 = v40;
            v60 = 2080;
            v61 = "dictionary";
            _os_log_error_impl(&dword_195925000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
          }

          v43 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v59 = v40;
            _os_log_debug_impl(&dword_195925000, v43, OS_LOG_TYPE_DEBUG, "   adding userID: %@", buf, 0xCu);
          }

          ++v29;
        }

        while (v47 != v29);
      }

      v44 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_19596252C(v46);
      }

      goto LABEL_28;
    }
  }

  if ([*v13 isMultipleAuthCertCapable])
  {
    goto LABEL_11;
  }

  return (*(*(v14 + 80) + 16))();
}

void sub_1959302F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(a1 + 48) == 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v9 _FTStringFromBaseData];
  }

  v12 = v11;
  if (*(a1 + 48) == 1)
  {
    v13 = v7;
  }

  else
  {
    v13 = [v7 _FTStringFromBaseData];
  }

  v14 = v13;
  v15 = IDSPEMFormatCertificatesForPushHeader();
  v16 = [v15 base64EncodedStringWithOptions:0];

  if (v16)
  {
    CFDictionarySetValue(*(a1 + 32), @"x-push-cert", v16);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1959626B0();
  }

  v17 = v12;
  if (v17)
  {
    CFDictionarySetValue(*(a1 + 32), @"x-push-nonce", v17);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_195962738();
  }

  v18 = v14;
  if (v18)
  {
    CFDictionarySetValue(*(a1 + 32), @"x-push-sig", v18);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1959627C0();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1959304A4()
{
  v0 = MEMORY[0x19A8B8560]("IDSBAASignerErrorDomain", @"IDS");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1EAED7790, v1);
}

void sub_1959304F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    [*(a1 + 40) addEntriesFromDictionary:v7];
  }

  else
  {
    v10 = [MEMORY[0x1E69A6138] nonce];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v11 signingSession];
      *buf = 138412802;
      v34 = v11;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Failed to sign message {message: %@, signingSession: %@, error: %@}", buf, 0x20u);
    }
  }

  v13 = [v9 signingDigest];

  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = [v9 signingDigest];
    [v14 setBaaSigningDigest:v15];
  }

  if (v8)
  {
    v16 = [v8 domain];
    v17 = [v16 isEqualToString:qword_1EAED7790];

    if (v17)
    {
      [*(a1 + 32) setBaaSigningError:v8];
    }

    else
    {
      v26 = v9;
      v27 = v7;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = [v8 underlyingErrors];
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v28 + 1) + 8 * i);
            v24 = [v23 domain];
            v25 = [v24 isEqualToString:qword_1EAED7790];

            if (v25)
            {
              [*(a1 + 32) setBaaSigningError:v23];
              goto LABEL_21;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      v9 = v26;
      v7 = v27;
    }
  }

  [*(a1 + 48) stopWithError:v8];
  (*(*(a1 + 56) + 16))();
}

void sub_19593078C(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E69A5260]) initWithName:@"BAA Signing" uniqueIdentifier:0];
  [*(a1 + 32) addSubEventTracingOperation:v2];
  v3 = [*(a1 + 40) baaSigner];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) serverTimestamp];
  v6 = [*(a1 + 32) topic];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1959308DC;
  v8[3] = &unk_1E7434FA0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v11 = v2;
  v12 = *(a1 + 64);
  v7 = v2;
  [v3 headersBySigningData:v4 serverTimestamp:v5 topic:v6 completion:v8];
}

void sub_1959308DC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [MEMORY[0x1E69A6138] nonce];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Failed to baa sign message {message: %@, error: %@}", &v15, 0x16u);
    }
  }

  if (v7)
  {
    [*(a1 + 40) addEntriesFromDictionary:v7];
  }

  v12 = [v9 signingDigest];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = [v9 signingDigest];
    [v13 setBaaSigningDigest:v14];
  }

  [*(a1 + 32) setBaaSigningError:v8];
  [*(a1 + 48) stopWithError:v8];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_195930B8C()
{
  result = MEMORY[0x19A8B8550](@"APSSignDataWithIdentityRequest", @"ApplePushService");
  qword_1EAED7798 = result;
  return result;
}

void sub_195930BBC(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 signature];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Failed to sign with push identity", buf, 2u);
    }
  }

  v6 = [v3 certificates];
  v7 = [v6 count];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Failed to retrieve push certificates", buf, 2u);
    }
  }

  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v3 signature];
    v11 = [v10 debugDescription];
    v12 = [v3 nonce];
    v13 = [v12 debugDescription];
    v14 = [v3 certificates];
    *buf = 138412802;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Signed with push certs { signature: %@, nonce: %@, certs: %@", buf, 0x20u);
  }

  v15 = im_primary_queue();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195930E58;
  v19[3] = &unk_1E7434FF0;
  v16 = *(a1 + 32);
  v20 = v3;
  v21 = v16;
  v17 = v3;
  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v19);
  dispatch_async(v15, v18);
}

void sub_195930E58(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) signature];
  v3 = [*(a1 + 32) certificates];
  v4 = [*(a1 + 32) nonce];
  (*(v2 + 16))(v2, v5, v3, v4);
}

void sub_1959310AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1959310C8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1959332A8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) appendString:@"&"];
  }

  v7 = IMCopyURLEscapedString();
  v8 = IMCopyURLEscapedString();

  [*(a1 + 32) appendFormat:@"%@=%@", v7, v8];
}

void sub_195933358(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 addEntriesFromDictionary:v4];

  v6 = [*(a1 + 32) additionalMessageHeaders];
  [v5 addEntriesFromDictionary:v6];

  [*(a1 + 40) setMessageHeaders:v5];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = sub_195933458;
  v11 = &unk_1E74350B0;
  v7 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  [v7 setCompletionBlock:&v8];
  [*(*(a1 + 48) + 16) sendMessage:{*(a1 + 40), v8, v9, v10, v11, v12}];
}

void sub_195933458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) _handleWebTunnelResponse:a2 error:a3 resultCode:a4 resultDictionary:a5 originalMessage:*(a1 + 40)];
  v6 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195933500;
  block[3] = &unk_1E7435088;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
}

uint64_t _FZErrorTypeFromNSError(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1EAED7780 == -1)
  {
    if (!v1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1959628A0();
    if (!v2)
    {
      goto LABEL_19;
    }
  }

  v3 = [v2 domain];
  v4 = [v3 isEqualToString:FTErrorDomain];

  if (!v4)
  {
    v8 = [v2 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x1E696A978]];

    if (v9)
    {
      v10 = [v2 code] + 1020;
      if (v10 < 0x15)
      {
        v11 = &unk_1959687F8;
LABEL_17:
        v7 = v11[v10];
        goto LABEL_20;
      }
    }

    else if (qword_1ED768690)
    {
      v12 = [v2 domain];
      v13 = [v12 isEqualToString:qword_1ED768690];

      if (v13)
      {
        v10 = [v2 code] - 2;
        if (v10 < 5)
        {
          v11 = &unk_19596884C;
          goto LABEL_17;
        }
      }
    }

LABEL_19:
    v7 = 1;
    goto LABEL_20;
  }

  v5 = [v2 code];
  if (v5 == 20000)
  {
    v6 = 8;
  }

  else
  {
    v6 = 1;
  }

  if (v5 == 10000)
  {
    v7 = 9;
  }

  else
  {
    v7 = v6;
  }

LABEL_20:

  return v7;
}

void sub_195933CB8()
{
  v0 = MEMORY[0x19A8B8560]("APSErrorDomain", @"ApplePushService");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768690, v1);
}

uint64_t _FZErrorTypeFromResponseCodeAndError(int a1, void *a2)
{
  result = _FZErrorTypeFromNSError(a2);
  if (result == 1)
  {
    if (a1 > 1004)
    {
      if (a1 > 5007)
      {
        if (a1 > 5999)
        {
          if (a1 == 6000)
          {
            return 18;
          }

          if (a1 == 10000)
          {
            return 9;
          }
        }

        else
        {
          if (a1 == 5008)
          {
            return 17;
          }

          if (a1 == 5032)
          {
            return 12;
          }
        }

        return 4;
      }

      if (a1 != 1005)
      {
        if (a1 == 5001)
        {
          return 15;
        }

        if (a1 == 5006)
        {
          return 19;
        }

        return 4;
      }
    }

    else
    {
      if (a1 <= 1001)
      {
        if (a1 < 2)
        {
          return 0;
        }

        if (a1 == 1000)
        {
          return 14;
        }

        if (a1 != 1001)
        {
          return 4;
        }

        return 17;
      }

      if (a1 == 1002 || a1 == 1003)
      {
        return 20;
      }
    }

    return 13;
  }

  return result;
}

__CFDictionary *_AuthenticationDictionaryFromParameters(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = v9;
    if (a1)
    {
      v10 = @"auth-token";
      v11 = v5;
    }

    else
    {
      v12 = [v5 _FTDataFromBase64String];
      v13 = IMSingleObjectArray();

      if (v13)
      {
        CFDictionarySetValue(v8, @"sigs", v13);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        sub_1959628B4();
      }

      v10 = @"push-token";
      v9 = v8;
      v11 = v7;
    }

    CFDictionarySetValue(v9, v10, v11);
  }

  return v8;
}

__CFDictionary *_DeviceCapabilitiesFromParameters(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  if (v5)
  {
    CFDictionarySetValue(v6, @"name", v5);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  if (v8)
  {
    CFDictionarySetValue(v7, @"version", v8);
  }

  if (a3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    if (v9)
    {
      CFDictionarySetValue(v7, @"flags", v9);
    }
  }

  return v7;
}

id _BindingsArrayFromURIs(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v10 = v9;
        if (v8)
        {
          CFDictionarySetValue(v9, @"uri", v8);
        }

        [v2 addObject:{v10, v12}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t _FTIDSFlagsNumber()
{
  v0 = +[FTDeviceSupport sharedInstance];
  v1 = [v0 isC2KEquipment];

  if (v1)
  {
    v2 = 17;
  }

  else
  {
    v2 = 1;
  }

  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithUnsignedInteger:v2];
}

BOOL _FTGenerateNonceAndSignatureFromPayload(__SecKey *a1, __SecKey *a2, void *a3, void *a4, void *a5, id *a6)
{
  v12 = 0;
  _FTGenerateDigestForSigningFromPayload(1, a3, a4, a5, &v12);
  v9 = v12;
  v10 = sub_19592D540(a1, a2, v9, a6);

  return v10;
}

id sub_195934274(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
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
        v9 = [v8 _FZBestGuessFZIDType];
        v10 = [v8 _stripFZIDPrefix];
        v11 = [v10 _URIFromFZIDType:v9];

        if ([v11 length])
        {
          [v2 addObject:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_1959343DC(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) _stripFZIDPrefix];
        v9 = [v8 _im_normalizedURIString];

        if ([v9 length])
        {
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

id sub_195934528(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 base64EncodedStringWithOptions:0];
LABEL_12:
          v10 = v9;
          [v2 addObject:{v9, v13}];

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 _FTFilteredArrayForAPS];
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 _FTFilteredDictionaryForAPS];
          goto LABEL_12;
        }

        [v2 addObject:{v8, v13}];
LABEL_13:
        ++v7;
      }

      while (v5 != v7);
      v11 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = v11;
    }

    while (v11);
  }

  return v2;
}

id sub_1959346F0(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a1 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [a1 objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 base64EncodedStringWithOptions:0];
LABEL_12:
          v11 = v10;
          [v2 setObject:v10 forKey:v8];

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 _FTFilteredDictionaryForAPS];
          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 _FTFilteredArrayForAPS];
          goto LABEL_12;
        }

        [v2 setObject:v9 forKey:v8];
LABEL_13:

        ++v7;
      }

      while (v5 != v7);
      v12 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v12;
    }

    while (v12);
  }

  return v2;
}

id sub_1959348E0(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:a1 options:0];

  return v1;
}

id sub_195934928(void *a1)
{
  v2 = [a1 length];
  if (v2)
  {
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFFFELL;
    v5 = malloc_type_malloc(2 * (v2 & 0xFFFFFFFFFFFFFFFELL), 0x1000040BDFB0063uLL);
    v6 = v3 >> 1;
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    [a1 getCharacters:v5 range:{0, v4}];
    __str[2] = 0;
    if (v4)
    {
      v8 = ((v4 - 1) >> 1) + 1;
      v9 = v5 + 2;
      v10 = v7;
      do
      {
        __str[0] = *(v9 - 2);
        v11 = *v9;
        v9 += 4;
        __str[1] = v11;
        *v10++ = strtol(__str, 0, 16);
        --v8;
      }

      while (v8);
    }

    free(v5);
    v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v7 length:v6 freeWhenDone:1];
  }

  else
  {
    v12 = [MEMORY[0x1E695DEF0] data];
  }

  return v12;
}

void sub_195934B0C()
{
  v0 = MEMORY[0x19A8B8560]("MCFeatureAudioConferencingAllowed", @"ManagedConfiguration");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED7686D8, v1);
}

void sub_195934B5C()
{
  v0 = MEMORY[0x19A8B8560]("MCFeatureChatAllowed", @"ManagedConfiguration");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED7686D0, v1);
}

void sub_195934BAC()
{
  v0 = MEMORY[0x19A8B8560]("MCFeatureAccountModificationAllowed", @"ManagedConfiguration");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED7686E0, v1);
}

uint64_t sub_195934BFC()
{
  qword_1ED768760 = MEMORY[0x19A8B8550](@"MCProfileConnection", @"ManagedConfiguration");
  result = MEMORY[0x19A8B8550](@"MCRestrictionManager", @"ManagedConfiguration");
  qword_1ED768758 = result;
  return result;
}

uint64_t sub_195934CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = a2;
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "MG capabilities changed: %@  (%@)", &v8, 0x16u);
  }

  return [*(a1 + 32) _updateCapabilities];
}

void sub_195934D90(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "DeviceCenterRegistrationCommCenterReadyCallback: %@", &v7, 0xCu);
  }

  v6 = objc_initWeak(&v7, a2);
  if (a2)
  {
    [a2 _commCenterAlive];
  }

  objc_destroyWeak(&v7);
}

void sub_19593623C(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 hwSupport];
  v7 = [MEMORY[0x1E69A6138] registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v5;
      v9 = "Failed to get stewie hw support { error: %@ }";
LABEL_8:
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  else if (v8)
  {
    v10 = @"NO";
    if (v6)
    {
      v10 = @"YES";
    }

    v11 = 138412290;
    v12 = v10;
    v9 = "Got stewie hw support { stewieHWSupport: %@ }";
    goto LABEL_8;
  }

  *(*(a1 + 32) + 168) = v6;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v6);
}

void *sub_195936B34(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v6 = 138412546;
    v7 = v4;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "Received phone number registration ready state change callback { state: %@, context: %@ }", &v6, 0x16u);
  }

  result = [*(*(a1 + 40) + 160) isSelectedPhoneNumberRegistrationSubscriptionContext:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _handlePotentialPhoneNumberRegistrationStateChanged];
  }

  return result;
}

void *sub_195936CB8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "Received phone number changed delegate callback { context: %@ }", &v5, 0xCu);
  }

  result = [*(*(a1 + 40) + 160) isSelectedPhoneNumberRegistrationSubscriptionContext:*(a1 + 32)];
  if (result)
  {
    return [*(a1 + 40) _handlePotentialPhoneNumberRegistrationStateChanged];
  }

  return result;
}

void *sub_195936F64(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "SIM status changed { status: %@, context: %@ }", &v6, 0x16u);
  }

  result = [*(*(a1 + 48) + 160) isSelectedPhoneNumberRegistrationSubscriptionContext:*(a1 + 40)];
  if (result)
  {
    return [*(a1 + 48) _handleSIMStatusChangedToStatus:*(a1 + 32)];
  }

  return result;
}

void sub_1959371E0(uint64_t a1)
{
  if (!*(*(a1 + 32) + 120))
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 __mainThreadPostNotificationName:@"__kFaceTimeDeviceSIMRemovedNotification" object:0];
  }
}

void sub_19593743C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  byte_1EAED7718 = 0;
  v1 = [*(a1 + 32) registrationState];
  v2 = qword_1EAED7770;
  if (v1)
  {
    v3 = qword_1EAED7770 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if ([qword_1EAED7770 isEqualToDictionary:v1])
    {
      v4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412546;
        v8 = qword_1EAED7770;
        v9 = 2112;
        v10 = v1;
        _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "No change to phone number registration state -- not posting notification { lastState: %@, state: %@ }", &v7, 0x16u);
      }

      goto LABEL_14;
    }

    v2 = qword_1EAED7770;
  }

  if (v2 != v1)
  {
    objc_storeStrong(&qword_1EAED7770, v1);
  }

  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = @"__kFTCTRegistrationStatusChangedNotification";
    v9 = 2112;
    v10 = v1;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Phone number registration state changed -- posting notification { notification: %@, state: %@ } ", &v7, 0x16u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = +[FTEntitlementSupport sharedInstance];
  [v4 __mainThreadPostNotificationName:@"__kFTCTRegistrationStatusChangedNotification" object:v6 userInfo:v1];

LABEL_14:
}

uint64_t (*sub_195937E84())(void, void, void)
{
  result = MEMORY[0x19A8B8560]("_CTServerConnectionCreate", @"CoreTelephony");
  off_1EAED77A8 = result;
  return result;
}

uint64_t (*sub_195937EB4())(void, void)
{
  result = MEMORY[0x19A8B8560]("_CTServerConnectionIsPhoneNumberRegistrationSupported", @"CoreTelephony");
  off_1EAED77B8 = result;
  return result;
}

void sub_19593816C()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return;
  }

  v1 = v0;
  if (CFEqual(v0, @"AppleTV"))
  {
    v2 = 5;
LABEL_7:
    qword_1ED768778 = v2;
    goto LABEL_8;
  }

  if (CFEqual(v1, @"AudioAccessory"))
  {
    v2 = 7;
    goto LABEL_7;
  }

LABEL_8:

  CFRelease(v1);
}

uint64_t (*sub_195938468())(void)
{
  result = MEMORY[0x19A8B8560]("PKCanMakePaymentsForIDS", @"PassKitCore");
  off_1EAED7708 = result;
  return result;
}

uint64_t (*sub_19593857C())(void)
{
  result = MEMORY[0x19A8B8560]("PKSupportsManateeForAppleCashForIDS", @"PassKitCore");
  off_1EAED76F8 = result;
  return result;
}

uint64_t (*sub_195938690())(void)
{
  result = MEMORY[0x19A8B8560]("PKSupportsRegionForAppleCashForIDS", @"PassKitCore");
  off_1EAED76E8 = result;
  return result;
}

uint64_t (*sub_1959388CC())(void)
{
  result = MEMORY[0x19A8B8560]("PKShareableCredentialsSupportsHarmony", @"PassKitCore");
  off_1ED768620 = result;
  return result;
}

uint64_t (*sub_1959389E0())(void)
{
  result = MEMORY[0x19A8B8560]("isEligibleForReceivingZelkova", @"SafetyMonitor");
  off_1EAED76D8 = result;
  return result;
}

void *sub_195938CF0(uint64_t a1)
{
  result = [*(a1 + 32) cpuFamily];
  v2 = 1;
  if (result <= 506291072)
  {
    if (result > -823913144)
    {
      if (result <= -310978391)
      {
        v3 = result == -823913143;
        v4 = -416119890;
      }

      else
      {
        v3 = result == -310978390 || result == 214503012;
        v4 = 280134364;
      }
    }

    else if (result <= -1471079479)
    {
      v3 = result == -1879695144;
      v4 = -1777893647;
    }

    else
    {
      v3 = result == -1471079478 || result == -1439483605;
      v4 = -1122301207;
    }
  }

  else if (result <= 1418770315)
  {
    if (result <= 747742333)
    {
      v3 = result == 506291073;
      v4 = 526772277;
    }

    else
    {
      v3 = result == 747742334 || result == 933271106;
      v4 = 1404044789;
    }
  }

  else if (result > 1801080017)
  {
    v3 = result == 1801080018 || result == 2009171118;
    v4 = 2028621756;
  }

  else
  {
    v3 = result == 1418770316 || result == 1463508716;
    v4 = 1479463068;
  }

  if (!v3 && result != v4)
  {
    v2 = 0;
  }

  byte_1EAED77D0 = v2;
  return result;
}

uint64_t sub_195938F9C(uint64_t a1)
{
  result = [*(a1 + 32) memorySize];
  byte_1EAED7778 = result < 1610612737;
  return result;
}

uint64_t sub_195939008()
{
  v3 = *MEMORY[0x1E69E9840];
  *v2 = 0x1800000006;
  v1 = 8;
  return sysctl(v2, 2u, &qword_1ED768660, &v1, 0, 0);
}

void sub_195939288()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    if (CFStringHasSuffix(v0, @"DEV"))
    {
      v2 = 1;
    }

    else
    {
      v2 = CFStringHasSuffix(v1, @"dev") != 0;
    }

    byte_1EAED7710 = v2;

    CFRelease(v1);
  }
}

void sub_195939314(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_195939E80(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((byte_1EAED77F0 & 1) == 0)
  {
    v3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = a2;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Selected subscription externally changed -- clearing cached selected phone number registration subscription { observer: %@ }", &v4, 0xCu);
    }

    [a2 invalidateCache];
  }
}

uint64_t sub_19593C250()
{
  result = _CTServerConnectionCreate();
  qword_1EAED77F8 = result;
  return result;
}

uint64_t sub_19593C2F8()
{
  qword_1ED7686F8 = objc_alloc_init(FTNetworkSupport);

  return MEMORY[0x1EEE66BB8]();
}

void sub_19593D898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _reload];
    WeakRetained = v2;
  }
}

uint64_t sub_19593D960()
{
  qword_1ED768748 = [[FTiMessageStatus alloc] initPrivate];

  return MEMORY[0x1EEE66BB8]();
}

void *sub_19593DAFC()
{
  result = MEMORY[0x19A8B8560]("SCNetworkReachabilityCreateWithName", @"SystemConfiguration");
  off_1EAED7808 = result;
  return result;
}

uint64_t (*sub_19593DBB0())(void, void)
{
  result = MEMORY[0x19A8B8560]("SCNetworkReachabilityCreateWithAddress", @"SystemConfiguration");
  off_1ED7687E0 = result;
  return result;
}

uint64_t (*sub_19593DD88())(void, void)
{
  result = MEMORY[0x19A8B8560]("SCNetworkReachabilityGetFlags", @"SystemConfiguration");
  off_1EAED7818 = result;
  return result;
}

uint64_t (*sub_19593DDB8())(void, void)
{
  result = MEMORY[0x19A8B8560]("SCNetworkReachabilityGetFlags", @"SystemConfiguration");
  off_1ED7686A0 = result;
  return result;
}

uint64_t sub_19593E988()
{
  qword_1ED768700 = objc_alloc_init(FTAuthKitManager);

  return MEMORY[0x1EEE66BB8]();
}

void sub_19593EB8C(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "AuthKit - gathering headers", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "AuthKit - gathering headers", buf, 2u);
  }

  v4 = [*(*(a1 + 32) + 8) appleIDHeadersForRequest:*(a1 + 40)];
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    *buf = 134217984;
    v14 = v6;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "AuthKit - received headers, count: %lu", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19593EDF4;
  v10[3] = &unk_1E7434FF0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v11 = v4;
  v12 = v8;
  v9 = v4;
  dispatch_async(v7, v10);
}

void sub_19593EEF8(uint64_t a1)
{
  v9 = 0;
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "AuthKit - handling response", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "AuthKit - handling response", buf, 2u);
  }

  [*(*(a1 + 32) + 8) handleResponse:*(a1 + 40) forRequest:*(a1 + 48) shouldRetry:&v9];
  v4 = im_primary_queue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19593F0D8;
  v5[3] = &unk_1E74352C0;
  v7 = v9;
  v6 = *(a1 + 56);
  dispatch_async(v4, v5);
}

uint64_t sub_19593F0D8(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "AuthKit - shouldRetry: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      if (*(a1 + 40))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v9 = v4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      if (*(a1 + 40))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v9 = v5;
      IMLogString();
    }
  }

  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "AuthKit - shouldRetry: %@", buf, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

double sub_19593F484(double result, uint64_t a2, uint64_t a3)
{
  if (result < 10.0)
  {
    v3 = a3 / 10.0;
    if (v3 > 3.0)
    {
      v3 = 3.0;
    }

    result = __exp10(v3 + 1.0);
  }

  if (result > 43200.0)
  {
    return 43200.0;
  }

  return result;
}

void sub_195940F38(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) appendString:@"&"];
  }

  v7 = IMCopyURLEscapedString();
  v8 = IMCopyURLEscapedString();

  [*(a1 + 32) appendFormat:@"%@=%@", v7, v8];
}

void sub_195940FE8(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!WeakRetained)
  {
    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 72)];
      v15 = [v14 stringValue];
      *buf = 138412290;
      v28 = v15;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEFAULT, "Message with ID %@ not found in queue.  Abandoning anisette header collection.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 72)];
      v23 = [v16 stringValue];
      _IDSLogV();
    }

    goto LABEL_9;
  }

  v5 = [*(*(a1 + 32) + 144) objectForKey:@"anisette-headers-disabled"];
  v6 = [v5 BOOLValue];

  v7 = [WeakRetained isIDSMessage] ^ 1 | v6;
  [WeakRetained anisetteHeadersTimeout];
  if (v8 > 0.0 && (v7 & 1) != 0)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412290;
      v28 = v11;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "anisette headers are required for messageType %@ but disabled by the server bag anisette-headers-disabled", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v12 = objc_opt_class();
      v22 = NSStringFromClass(v12);
      _IDSLogV();
    }

LABEL_9:
    v3[2](v3);
    goto LABEL_19;
  }

  [WeakRetained anisetteHeadersTimeout];
  if ((v17 < 0.0) | v7 & 1)
  {
    v3[2](v3);
  }

  else
  {
    v18 = +[FTAuthKitManager sharedInstance];
    v19 = *(a1 + 48);
    v20 = im_primary_queue();
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1959413A8;
    v24[3] = &unk_1E7435328;
    v26 = *(a1 + 56);
    v21 = v3;
    v24[4] = *(a1 + 32);
    v25 = v21;
    [v18 anisetteHeadersForRequest:v19 completionBlockQueue:v20 completionBlock:v24];
  }

LABEL_19:
}

void sub_1959413A8(void *a1, void *a2)
{
  v3 = a2;
  v4 = im_primary_queue();
  dispatch_assert_queue_V2(v4);

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
  v7 = v3;

  (*(a1[5] + 16))();
  v8 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195941488;
  block[3] = &unk_1E7435088;
  block[4] = a1[4];
  dispatch_async(v8, block);
}

void *sub_195941488(uint64_t a1)
{
  result = [*(a1 + 32) busy];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 _dequeueIfNeeded];
  }

  return result;
}

void sub_1959414D4(uint64_t a1, char a2)
{
  v4 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959415E0;
  block[3] = &unk_1E74353A0;
  v16 = *(a1 + 80);
  v17 = a2;
  v11 = *(a1 + 32);
  v5 = *(&v11 + 1);
  v10 = *(a1 + 64);
  v6 = v10;
  v15 = v10;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  dispatch_async(v4, block);
}

void sub_1959415E0(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue];
  v44 = [v2 messageForUniqueID:*(a1 + 80)];

  if (!v44)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 80)];
      v5 = [v4 stringValue];
      *buf = 138412290;
      v62 = v5;
      _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Message with ID %@ not found in queue.  Abandoning anisette header collection.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 80)];
      v41 = [v6 stringValue];
      _IDSLogV();
    }
  }

  if (*(a1 + 88) == 1)
  {
    v7 = [*(a1 + 40) URL];
    v46 = [v7 absoluteString];

    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v46;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "************* Couldn't gather Anisette headers for %@ *************", buf, 0xCu);
    }

    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v46;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "************* Couldn't gather Anisette headers %@ *************", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v41 = v46;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v41 = v46;
        IMLogString();
      }
    }

    v43 = 0;
    goto LABEL_57;
  }

  v10 = os_variant_allows_internal_security_policies();
  v46 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v56 = 0u;
  obj = [*(*(*(a1 + 72) + 8) + 40) allKeys];
  v11 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  v43 = v11 != 0;
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = 0;
  v13 = *v57;
  v45 = *MEMORY[0x1E69A4938];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v57 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v56 + 1) + 8 * i);
      v16 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:{v15, v41}];
      v17 = [v15 lowercaseString];
      v18 = [&unk_1F09D07D0 containsObject:v17];

      if (!(v10 & 1 | ((v18 & 1) == 0)))
      {

        v16 = @"<redacted>";
      }

      v19 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412547;
        v62 = v15;
        v63 = 2113;
        v64 = v16;
        _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "       %@: %{private}@", buf, 0x16u);
      }

      v20 = [*(a1 + 32) baaSigner];
      v21 = [v20 isBAAProtocolHeader:v15];

      if (v21)
      {
        v22 = [v15 isEqual:v45];
        if (v12 & 1 | ((v22 & 1) == 0))
        {
          v12 |= v22;
        }

        else
        {
          v26 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v26, OS_LOG_TYPE_DEFAULT, "AuthKit BAA headers present", buf, 2u);
          }

          v12 = 1;
        }

        [v46 addObject:v15];
      }

      else
      {
        v23 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v15];

        if (v23)
        {
          v24 = *(a1 + 40);
          v25 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v15];
          [v24 setValue:v25 forHTTPHeaderField:v15];
        }
      }
    }

    v11 = [obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    v43 = 0;
    goto LABEL_53;
  }

  if (([*(a1 + 32) authKitBAADisabled] & 1) == 0)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v27 = v46;
    v28 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v28)
    {
      v29 = *v53;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v53 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v52 + 1) + 8 * j);
          v32 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v31];

          if (v32)
          {
            v33 = *(a1 + 40);
            v34 = [*(*(*(a1 + 72) + 8) + 40) objectForKey:v31];
            [v33 setValue:v34 forHTTPHeaderField:v31];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v28);
    }

    v35 = *(a1 + 40);
    obj = [&unk_1F09D0770 stringValue];
    [v35 setValue:obj forHTTPHeaderField:*MEMORY[0x1E69A4980]];
LABEL_52:

    goto LABEL_53;
  }

  v43 = 1;
LABEL_53:
  objc_autoreleasePoolPop(context);
  if ([v44 wantsUDID])
  {
    [*(a1 + 40) ak_addDeviceUDIDHeader];
  }

  if ([v44 wantsClientInfo])
  {
    [*(a1 + 40) ak_addClientInfoHeader];
  }

LABEL_57:

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = sub_195941E50;
  v48[3] = &unk_1E7435378;
  v49 = *(a1 + 40);
  v36 = v44;
  v50 = v36;
  v51 = *(a1 + 64);
  v37 = MEMORY[0x19A8B8CC0](v48);
  if (([v36 wantsSignature] & 1) != 0 || objc_msgSend(v36, "wantsBAASigning"))
  {
    if ([v36 wantsBodySignature])
    {
      v38 = *(a1 + 32);
    }

    else
    {
      v39 = [v36 wantsBAASigning];
      v38 = *(a1 + 32);
      if (!v39)
      {
        v40 = 0;
        goto LABEL_65;
      }
    }

    v40 = *(a1 + 48);
LABEL_65:
    [v38 _signMessage:v36 useDataSignatures:0 authKitHeadersPresent:v43 body:v40 queryString:*(a1 + 56) completion:v37];
    goto LABEL_66;
  }

  v37[2](v37, 0);
LABEL_66:
}

void sub_195941E50(id *a1, void *a2)
{
  v3 = a2;
  v4 = im_primary_queue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195941F3C;
  v6[3] = &unk_1E7435298;
  v7 = v3;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_195941F3C(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v3)
  {
    v4 = *v32;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v32 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v25, v26}];

        if (v7)
        {
          v8 = *(a1 + 40);
          v9 = [*(a1 + 32) objectForKey:v6];
          [v8 setValue:v9 forHTTPHeaderField:v6];
        }

        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [*(a1 + 32) objectForKey:v6];
          *buf = 138412546;
          v37 = v6;
          v38 = 2112;
          v39 = v11;
          _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            [*(a1 + 32) objectForKey:v6];
            v26 = v25 = v6;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            [*(a1 + 32) objectForKey:v6];
            v26 = v25 = v6;
            IMLogString();
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v3);
  }

  v12 = [MEMORY[0x1E69A60F0] sharedInstance];
  v13 = [v12 isInternalInstall];

  if (v13)
  {
    [*(a1 + 48) additionalInternalHeaders];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v14 = v28 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = *v28;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v27 + 1) + 8 * j);
          v19 = [v14 objectForKey:{v18, v25, v26}];

          if (v19)
          {
            v20 = *(a1 + 40);
            v21 = [v14 objectForKey:v18];
            [v20 setValue:v21 forHTTPHeaderField:v18];
          }

          v22 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v14 objectForKey:v18];
            *buf = 138412546;
            v37 = v18;
            v38 = 2112;
            v39 = v23;
            _os_log_impl(&dword_195925000, v22, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (MarcoShouldLog())
            {
              [v14 objectForKey:v18];
              v26 = v25 = v18;
              MarcoLog();
            }

            if (IMShouldLog())
            {
              [v14 objectForKey:v18];
              v26 = v25 = v18;
              IMLogString();
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v15);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void sub_195942438(uint64_t a1)
{
  v2 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1959424C4;
  block[3] = &unk_1E74353F0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1959424C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_19594267C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int buf, int a14, int a15, __int16 a16)
{
  if (a2 == 1)
  {
    v16 = objc_begin_catch(a1);
    v17 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      buf = 138412546;
      a16 = 2112;
      _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_ERROR, "Exception processing result: %@   for message: %@", &buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }

    objc_end_catch();
    JUMPOUT(0x195942664);
  }

  _Unwind_Resume(a1);
}

void sub_195942EB4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x195942C40);
  }

  objc_sync_exit(v2);
  _Unwind_Resume(exc_buf);
}

void sub_195942F04(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v58 = a2;
  v3 = [*(a1 + 32) _queue];
  v59 = [v3 messageForUniqueID:*(a1 + 56)];

  if (!v59)
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
      v6 = [v5 stringValue];
      *buf = 138412290;
      v71 = v6;
      _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Message with ID %@ not found in queue.  Abandoning URL request.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 56)];
      v54 = [v7 stringValue];
      _IDSLogV();
    }
  }

  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v71 = v58;
    v72 = 2112;
    v73 = v58;
    _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Created URL Request: %@  from URL: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v54 = v58;
    v56 = v58;
    _IDSLogV();
  }

  if (v58)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      *buf = 134218242;
      v71 = v10;
      v72 = 2112;
      v73 = v11;
      _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Delivering message %lu to URL: %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v54 = *(a1 + 56);
        v56 = *(a1 + 40);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v54 = *(a1 + 56);
        v56 = *(a1 + 40);
        IMLogString();
      }
    }

    v12 = [v59 currentSendEventTracingOperation];
    v13 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [v12 addDateSubfieldWithName:@"Network Send Time" value:v13];

    if ([v59 payloadCanBeLogged])
    {
      v14 = *(a1 + 56);
      v15 = [*(a1 + 48) description];
      v16 = IDSLoggableDescriptionForObjectOnService();

      v64 = MEMORY[0x1E69E9820];
      v65 = 3221225472;
      v66 = sub_19594399C;
      v67 = &unk_1E7435440;
      v68 = v16;
      v69 = v14;
      v17 = v16;
      cut_dispatch_log_queue();
    }

    v18 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v59 forceCellular];
      v20 = @"NO";
      if (v19)
      {
        v20 = @"YES";
      }

      *buf = 138412290;
      v71 = v20;
      _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "Force cellular: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v21 = [v59 forceCellular];
        v22 = @"NO";
        if (v21)
        {
          v22 = @"YES";
        }

        v55 = v22;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v23 = [v59 forceCellular];
        v24 = @"NO";
        if (v23)
        {
          v24 = @"YES";
        }

        v55 = v24;
        IMLogString();
      }
    }

    if ([*(a1 + 32) logToRegistration])
    {
      v25 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 56);
        v27 = *(a1 + 40);
        *buf = 134218242;
        v71 = v26;
        v72 = 2112;
        v73 = v27;
        _os_log_impl(&dword_195925000, v25, OS_LOG_TYPE_DEFAULT, "Delivering message %lu to URL: %@", buf, 0x16u);
      }

      v28 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v59 forceCellular];
        v30 = @"NO";
        if (v29)
        {
          v30 = @"YES";
        }

        *buf = 138412290;
        v71 = v30;
        _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Force cellular: %@", buf, 0xCu);
      }
    }

    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_195943A58;
    v60[3] = &unk_1E7435490;
    v32 = *(a1 + 32);
    v31 = (a1 + 32);
    v33 = v31[3];
    v60[4] = v32;
    v63 = v33;
    v34 = v58;
    v61 = v34;
    v35 = v59;
    v62 = v35;
    v57 = MEMORY[0x19A8B8CC0](v60);
    [*(*v31 + 96) setRequest:v34];
    [*(*v31 + 96) setBlock:v57];
    v36 = *(*v31 + 144);
    v37 = [v36 objectForKey:@"do-http-pipelining"];
    v38 = [v37 BOOLValue];

    v39 = [v36 objectForKey:@"max-concurrent-connections"];
    v40 = [v39 intValue];

    v41 = [v36 objectForKey:@"do-http-keep-alive"];
    v42 = [v41 BOOLValue];

    v43 = [v36 objectForKey:@"http-keep-alive-idle-timeout-wifi-millis"];
    v44 = [v43 intValue];

    v45 = [v36 objectForKey:@"http-keep-alive-idle-timeout-cell-millis"];
    v46 = [v45 intValue];

    [*(*v31 + 96) setShouldUsePipelining:v38];
    [*(*v31 + 96) setConcurrentConnections:v40];
    [*(*v31 + 96) setDisableKeepAlive:v42 ^ 1u];
    [*(*v31 + 96) setKeepAliveWifi:v44];
    [*(*v31 + 96) setKeepAliveCell:v46];
    v47 = *(*v31 + 96);
    v48 = [v35 dataUsageBundleIdentifier];
    [v47 setBundleIdentifierForDataUsage:v48];

    [*(*v31 + 96) setForceCellularIfPossible:{objc_msgSend(v35, "forceCellular")}];
    [*(*v31 + 96) setRequireIDSHost:{objc_msgSend(v35, "wantsIDSServer")}];
    [*(*v31 + 96) setShouldReturnTimingData:{objc_msgSend(v35, "isIDSMessage") ^ 1}];
    [*(*v31 + 96) setAllowsUltraConstrainedNetworks:{objc_msgSend(v35, "allowsUltraConstrainedNetworks")}];
    [*(*v31 + 96) load];
  }

  else
  {
    v49 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "Failing message, empty url request", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        MarcoLog();
      }

      if (IMShouldLog())
      {
        IMLogString();
      }
    }

    v50 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(a1 + 40);
      *buf = 138412290;
      v71 = v51;
      _os_log_impl(&dword_195925000, v50, OS_LOG_TYPE_DEFAULT, "Failing message, empty url request for URL: %@", buf, 0xCu);
    }

    v52 = *(a1 + 32);
    v53 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1000 userInfo:0];
    [v52 _notifyDelegateAboutError:v53 forMessage:v59];
  }
}

void sub_19594399C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%lu Message body: %@", &v5, 0x16u);
  }
}

void sub_195943A58(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v78 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  if (a3 == 503)
  {
    v11 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1959635E4();
    }

    [*(*(a1 + 32) + 144) forceBagLoad];
    [*(*(a1 + 32) + 152) forceBagLoad];
  }

  v12 = [v10 allHeaderFields];
  v13 = [v12 objectForKey:@"x-bag-refresh"];
  v14 = [v13 intValue];

  if ((objc_opt_respondsToSelector() & (v14 > 0)) == 1)
  {
    v15 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_195963624();
    }

    [qword_1EAED7828 timeIntervalSinceNow];
    v17 = qword_1EAED7828;
    if (fabs(v16) > v14)
    {
      v18 = 0;
LABEL_15:
      qword_1EAED7828 = v18;

      v20 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        *v77 = v14;
        *&v77[4] = 2112;
        *&v77[6] = qword_1EAED7828;
        _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "  * Sending refresh, we're outside our interval: %d  (Last date: %@)", buf, 0x12u);
      }

      [*(*(a1 + 32) + 144) forceBagLoad];
      [*(*(a1 + 32) + 152) forceBagLoad];
      goto LABEL_18;
    }

    if (!qword_1EAED7828)
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
      v17 = qword_1EAED7828;
      goto LABEL_15;
    }

    v19 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v77 = v14;
      *&v77[4] = 2112;
      *&v77[6] = qword_1EAED7828;
      _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "  * Not refreshing, we're still inside our interval: %d (Laste date: %@)", buf, 0x12u);
    }
  }

LABEL_18:
  v21 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 56);
    v23 = *(a1 + 40);
    *buf = 134218240;
    *v77 = v22;
    *&v77[8] = 2048;
    *&v77[10] = v23;
    _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "%lu Finished URL request: %p", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v48 = *(a1 + 56);
      v49 = *(a1 + 40);
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v48 = *(a1 + 56);
      v49 = *(a1 + 40);
      IMLogString();
    }
  }

  v24 = *(a1 + 56);
  v25 = [*(a1 + 40) description];
  v70 = MEMORY[0x1E69E9820];
  v71 = 3221225472;
  v72 = sub_195944310;
  v73 = &unk_1E7435440;
  v75 = v24;
  v26 = v25;
  v74 = v26;
  cut_dispatch_log_queue();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [v10 allHeaderFields];
    v28 = [v27 objectForKey:@"X-Apple-Splunk-Hint"];
    if (!v28)
    {
      v28 = [v27 objectForKey:@"xt-hint"];
    }

    [*(a1 + 48) setSplunkHint:v28];
    if (IMShouldLog())
    {
      v29 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v77 = v10;
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Response: %p", buf, 0xCu);
      }

      v30 = [v27 description];
      v64 = MEMORY[0x1E69E9820];
      v65 = 3221225472;
      v66 = sub_1959443CC;
      v67 = &unk_1E7435440;
      v68 = v30;
      v69 = v24;
      v31 = v30;
      cut_dispatch_log_queue();
    }
  }

  else
  {
    v28 = 0;
  }

  v32 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v77 = v10;
    _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "           Response: %@", buf, 0xCu);
  }

  v33 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v77 = a3;
    _os_log_impl(&dword_195925000, v33, OS_LOG_TYPE_DEFAULT, "       Replied Code: %d", buf, 8u);
  }

  v34 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v52 length];
    *buf = 67109120;
    *v77 = v35;
    _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, " Result Data Length: %d", buf, 8u);
  }

  v36 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v77 = v51;
    _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_DEFAULT, "              Error: %@", buf, 0xCu);
  }

  [*(a1 + 32) _clearRetryTimer];
  v37 = *(a1 + 48);
  v38 = [MEMORY[0x1E695DF00] date];
  [v37 setResponseReceived:v38];

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = sub_195944488;
  v54[3] = &unk_1E7435468;
  v63 = a3;
  v55 = *(a1 + 48);
  v39 = v10;
  v56 = v39;
  v40 = v51;
  v41 = *(a1 + 32);
  v57 = v40;
  v58 = v41;
  v59 = *(a1 + 40);
  v42 = v52;
  v60 = v42;
  v43 = v50;
  v61 = v43;
  v44 = v28;
  v62 = v44;
  v45 = MEMORY[0x19A8B8CC0](v54);
  if ([*(a1 + 48) isIDSMessage] && (objc_msgSend(*(a1 + 48), "anisetteHeadersTimeout"), v46 > -1.0))
  {
    v47 = +[FTAuthKitManager sharedInstance];
    [v47 handleResponse:v39 forRequest:*(a1 + 40) completionBlock:v45];
  }

  else
  {
    v45[2](v45, 0);
  }
}

void sub_195944310(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%lu Information about finished URL request: %@", &v5, 0x16u);
  }
}

void sub_1959443CC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = 134218242;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%lu Information about response headers: %@", &v5, 0x16u);
  }
}

void sub_195944488(uint64_t a1, int a2)
{
  v148 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 96);
  v134 = (*(a1 + 96) - 400) < 0xC8;
  v4 = [*(a1 + 32) isIDSMessage];
  v138 = [*(v3 - 7) allHeaderFields];
  if (_os_feature_enabled_impl() && (v5 = MEMORY[0x19A8B8550](@"IDSBAASigner", @"IDS")) != 0 && [v5 isBAAHTTPResponseCode:*v3])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithInteger:*v3];
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v141 = v137;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Noticed BAA failure in response %@", buf, 0xCu);
    }

    v134 = 0;
    a2 = 0;
  }

  else
  {
    v137 = 0;
  }

  v7 = (a1 + 48);
  if ((a2 | (*(a1 + 48) != 0) | v134) & v4)
  {
    v8 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *v7;
      *buf = 138412290;
      *v141 = v9;
      _os_log_impl(&dword_195925000, v8, OS_LOG_TYPE_DEFAULT, "Connection failed with error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v123 = *v7;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v123 = *v7;
        IMLogString();
      }
    }

    if ([*(a1 + 56) logToRegistration])
    {
      v10 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v7;
        *buf = 138412290;
        *v141 = v11;
        _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Connection failed with error: %@", buf, 0xCu);
      }
    }

    if ([*(a1 + 56) logToRegistration])
    {
      v12 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_19596377C(v3, (a1 + 48), v12);
      }
    }

    v13 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *v3;
      v15 = [*v7 domain];
      v16 = [*v7 code];
      v17 = [*v7 localizedDescription];
      v18 = [*v7 userInfo];
      v19 = [v18 objectForKey:*MEMORY[0x1E696A990]];
      *buf = 67110146;
      *v141 = v14;
      *&v141[4] = 2112;
      *&v141[6] = v15;
      v142 = 1024;
      v143 = v16;
      v144 = 2112;
      v145 = v17;
      v146 = 2112;
      v147 = v19;
      _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_ERROR, "FTMessageDelivery failed! (HTTP Status Code: %d) Error (%@:%d): %@ %@", buf, 0x2Cu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      v20 = *v3;
      v21 = [*v7 domain];
      v22 = [*v7 code];
      v23 = [*v7 localizedDescription];
      v24 = [*v7 userInfo];
      v25 = *MEMORY[0x1E696A990];
      v132 = [v24 objectForKey:*MEMORY[0x1E696A990]];
      v125 = v20;
      _IDSWarnV();

      v26 = *v3;
      v27 = [*v7 domain];
      v28 = [*v7 code];
      v29 = [*v7 localizedDescription];
      v30 = [*v7 userInfo];
      v133 = [v30 objectForKey:v25];
      v126 = v26;
      _IDSLogV();

      v31 = *v3;
      v32 = [*v7 domain];
      v33 = [*v7 code];
      v34 = [*v7 localizedDescription];
      v35 = [*v7 userInfo];
      [v35 objectForKey:v25];
      v131 = v130 = v34;
      v128 = v32;
      v129 = v33;
      v124 = v31;
      _IDSLogTransport();
    }

    v36 = *v3;
    if ((*v3 - 500) <= 0x63)
    {
      v37 = [*(a1 + 64) URL];
      v38 = [v37 absoluteString];

      v39 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1959638B4();
      }

      v40 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_195963934();
      }

      v41 = [MEMORY[0x1E69A53D8] metricWithDomain:2 type:0 error:v36 bagURL:v38];
      v42 = [MEMORY[0x1E69A53D0] logger];
      [v42 logMetric:v41];
    }

    v43 = [*v7 domain];
    v44 = [v43 isEqualToString:*MEMORY[0x1E69A6048]];

    v45 = *v7;
    if (v44)
    {
      if ([v45 code] == -1)
      {
        if ([*(a1 + 56) logToRegistration])
        {
          v46 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v47 = "... this was a remote loader crash";
LABEL_194:
            _os_log_impl(&dword_195925000, v46, OS_LOG_TYPE_DEFAULT, v47, buf, 2u);
            goto LABEL_195;
          }

          goto LABEL_195;
        }

        goto LABEL_205;
      }

LABEL_204:
      if (((v134 | a2) & 1) == 0)
      {
        goto LABEL_209;
      }

      goto LABEL_205;
    }

    v70 = [v45 domain];
    v71 = [v70 isEqualToString:*MEMORY[0x1E69A5090]];

    v72 = *v7;
    if (v71)
    {
      v73 = [v72 code];
      switch(v73)
      {
        case 2:
          if ([*(a1 + 56) logToRegistration])
          {
            v46 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v47 = "... IDS message timed out";
              goto LABEL_194;
            }

            goto LABEL_195;
          }

          goto LABEL_205;
        case 1:
          if ([*(a1 + 56) logToRegistration])
          {
            v46 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v47 = "... IDS message failed sending";
              goto LABEL_194;
            }

            goto LABEL_195;
          }

          goto LABEL_205;
        case 0:
          v74 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v74, OS_LOG_TYPE_DEFAULT, "... no error, ignoring...", buf, 2u);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          break;
      }

      goto LABEL_204;
    }

    v86 = [v72 domain];
    v87 = [v86 isEqualToString:*MEMORY[0x1E696A978]];

    if (!v87)
    {
      goto LABEL_204;
    }

    v88 = [*v7 code];
    if (v88 <= -1023)
    {
      if (v88 != -2000 && v88 != -1200)
      {
        goto LABEL_200;
      }
    }

    else if (((v88 + 1022) > 0x16 || ((1 << (v88 - 2)) & 0x6F6C3D) == 0) && v88 != -1)
    {
LABEL_200:
      if ([*(a1 + 56) logToRegistration])
      {
        v120 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
        {
          v121 = [*v7 code];
          *buf = 67109120;
          *v141 = v121;
          _os_log_impl(&dword_195925000, v120, OS_LOG_TYPE_DEFAULT, "... we're done here, code: %d", buf, 8u);
        }
      }

      goto LABEL_204;
    }

    if ([*(a1 + 56) logToRegistration])
    {
      v46 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v47 = "... we should retry this";
        goto LABEL_194;
      }

LABEL_195:
    }

LABEL_205:
    if (([*(a1 + 32) wantsCFNetworkTimeout] & 1) == 0 && objc_msgSend(*(a1 + 32), "wantsManagedRetries"))
    {
      if ([*(a1 + 56) _tryRetryMessageWithTimeInterval:0.0])
      {
        goto LABEL_214;
      }

      goto LABEL_213;
    }

LABEL_209:
    if ([*(a1 + 56) logToRegistration])
    {
      v122 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v122, OS_LOG_TYPE_DEFAULT, "... not going to retry, we're done", buf, 2u);
      }
    }

LABEL_213:
    [*(a1 + 56) _informDelegatesOfMessage:*(a1 + 32) result:0 resultCode:20000 error:*(a1 + 48)];
    goto LABEL_214;
  }

  contexta = objc_autoreleasePoolPush();
  v48 = [*(a1 + 40) statusCode];
  v49 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v141 = v138;
    _os_log_impl(&dword_195925000, v49, OS_LOG_TYPE_DEFAULT, "  headers: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v123 = v138;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v123 = v138;
      IMLogString();
    }
  }

  v50 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v141 = v48;
    _os_log_impl(&dword_195925000, v50, OS_LOG_TYPE_DEFAULT, "  status code: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v123 = v48;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v123 = v48;
      IMLogString();
    }
  }

  if ([v138 count])
  {
    v51 = [*(a1 + 56) currentMessage];
    v52 = v51 == 0;

    if (!v52)
    {
      v53 = [*(a1 + 56) currentMessage];
      [v53 handleResponseHeaders:v138];
    }
  }

  if (v48)
  {
    v54 = [*(a1 + 56) currentMessage];
    [v54 handleResponseStatus:v48];
  }

  if ([*(a1 + 72) length])
  {
    v55 = [*(a1 + 56) currentMessage];
    [v55 handleResponseBody:*(a1 + 72)];
  }

  v56 = [*(a1 + 56) currentMessage];
  if (([v56 isIDSMessage] & 1) == 0)
  {
    v57 = *(a1 + 80) == 0;

    if (v57)
    {
      goto LABEL_65;
    }

    v56 = [*(a1 + 56) currentMessage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v56 setTimingData:*(a1 + 80)];
    }
  }

LABEL_65:
  v58 = [*(a1 + 56) currentMessage];
  [v58 setReceivedByteCount:{objc_msgSend(*(a1 + 72), "length")}];

  v59 = *(a1 + 56);
  v60 = *(a1 + 72);
  v61 = *(a1 + 32);
  v139 = 0;
  v62 = [v59 _processResultData:v60 forMessage:v61 error:&v139];
  v63 = v139;
  v64 = 0x1E69A6000;
  if (v63)
  {
    v65 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_195963698();
    }
  }

  v66 = [v62 objectForKey:@"status"];
  if (v66)
  {
    v67 = [v62 objectForKey:@"status"];
    v68 = [v67 intValue];

    v69 = v68;
  }

  else
  {
    v69 = 1;
  }

  v75 = [*(a1 + 32) isIDSMessage];
  if (v69 == 1)
  {
    v76 = v75;
  }

  else
  {
    v76 = 1;
  }

  if (v76)
  {
    v77 = v69;
  }

  else
  {
    v77 = 0;
  }

  v78 = [v62 objectForKey:@"retry-interval"];
  [v78 doubleValue];
  v80 = v79;

  v81 = [v62 objectForKey:@"current-timestamp-ms"];
  if (_os_feature_enabled_impl())
  {
    if (v137)
    {
      v77 = [v137 integerValue];
      if (v77 == 440)
      {
        v82 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_195925000, v82, OS_LOG_TYPE_DEFAULT, "BAA Do Not Retry detected. Swapping status code to Do Not Retry", buf, 2u);
        }

        v83 = MEMORY[0x19A8B8550](@"IDSBAASigner", @"IDS");
        if (v83 && ([*(a1 + 32) baaSigningError], v69 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend(v83, "shouldRetryError:", v69), v69, v84))
        {
          v69 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v85 = [*(a1 + 32) baaSigningError];
            *buf = 138412290;
            *v141 = v85;
            _os_log_impl(&dword_195925000, v69, OS_LOG_TYPE_DEFAULT, "Received BAA DoNotRetry, but see we should retry due to client error %@", buf, 0xCu);
          }

          v77 = 6002;
        }

        else
        {
          v77 = 6001;
        }
      }
    }

    v89 = [v138 objectForKey:@"x-apple-server-time"];
    if (v89)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v90 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        v69 = [v90 numberFromString:v89];

        v81 = v69;
      }

      if (!v81)
      {
        v91 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
        {
          sub_195963708();
        }

        v81 = 0;
      }
    }
  }

  if ([*(a1 + 56) logToRegistration])
  {
    v92 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v141 = v77;
      _os_log_impl(&dword_195925000, v92, OS_LOG_TYPE_DEFAULT, "Result status code: %d", buf, 8u);
    }

    v93 = [v62 objectForKey:@"message"];
    v94 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = *(a1 + 88);
      *buf = 138543362;
      *v141 = v95;
      _os_log_impl(&dword_195925000, v94, OS_LOG_TYPE_DEFAULT, "SplunkHint: %{public}@", buf, 0xCu);
    }

    v96 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v141 = v93;
      _os_log_impl(&dword_195925000, v96, OS_LOG_TYPE_DEFAULT, "ServerErrorDetail: %{public}@", buf, 0xCu);
    }
  }

  if (![*(a1 + 32) wantsStatusCodeBasedRetries])
  {
    goto LABEL_141;
  }

  if (v77 > 442)
  {
    if (v77 == 443 || v77 == 6003)
    {
      if (v81)
      {
        [*(a1 + 32) setServerTimestamp:v81];
        v101 = MEMORY[0x1E696AD98];
        v102 = [MEMORY[0x1E695DF00] date];
        [v102 timeIntervalSince1970];
        v97 = [v101 numberWithDouble:?];

        [*(a1 + 32) setServerTimestampReceivedDate:v97];
        [MEMORY[0x1E69A6180] setFtMessageDeliveryServerTimestamp:v81];
        [MEMORY[0x1E69A6180] setFtMessageDeliveryServerTimestampReceivedDate:v97];
        if ([*(a1 + 56) logToRegistration])
        {
          v103 = [MEMORY[0x1E69A6138] nonce];
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v141 = v81;
            _os_log_impl(&dword_195925000, v103, OS_LOG_TYPE_DEFAULT, "Setting server timestamp %@", buf, 0xCu);
          }
        }

        goto LABEL_156;
      }
    }

    else if (v77 == 6002)
    {
      if (v80 < 10.0)
      {
        v80 = 300.0;
      }

      if (![*(a1 + 56) logToRegistration])
      {
        goto LABEL_157;
      }

      v97 = [MEMORY[0x1E69A6138] registration];
      if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_156;
      }

      *buf = 134217984;
      *v141 = v80;
      v98 = "Server requested retry with delay, will retry after %f seconds";
      v99 = v97;
      v100 = 12;
      goto LABEL_155;
    }

LABEL_141:
    v104 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      v105 = [*(a1 + 32) payloadCanBeLogged];
      if (v105)
      {
        v64 = [*(a1 + 32) messageBodyUsingCache];
        v69 = [v64 description];
        v106 = IDSLoggableDescriptionForObjectOnService();
      }

      else
      {
        v106 = @"(Not Loggable)";
      }

      *buf = 138412290;
      *v141 = v106;
      _os_log_impl(&dword_195925000, v104, OS_LOG_TYPE_DEFAULT, "sent dictionary: %@", buf, 0xCu);
      if (v105)
      {
      }
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        if ([*(a1 + 32) payloadCanBeLogged])
        {
          v107 = [*(a1 + 32) messageBodyUsingCache];
          v108 = [v107 description];
          v127 = IDSLoggableDescriptionForObjectOnService();
          MarcoLog();
        }

        else
        {
          v127 = @"(Not Loggable)";
          MarcoLog();
        }
      }

      if (IMShouldLog())
      {
        if ([*(a1 + 32) payloadCanBeLogged])
        {
          v115 = [*(a1 + 32) messageBodyUsingCache];
          v116 = [v115 description];
          v127 = IDSLoggableDescriptionForObjectOnService();
          IMLogString();
        }

        else
        {
          v127 = @"(Not Loggable)";
          IMLogString();
        }
      }
    }

    v117 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [v62 allKeys];
      *buf = 138412290;
      *v141 = v118;
      _os_log_impl(&dword_195925000, v117, OS_LOG_TYPE_DEFAULT, "         result: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v127 = [v62 allKeys];
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v127 = [v62 allKeys];
        IMLogString();
      }
    }

    v119 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v141 = v77;
      _os_log_impl(&dword_195925000, v119, OS_LOG_TYPE_DEFAULT, "    status code: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v127 = v77;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v127 = v77;
        IMLogString();
      }
    }

    [*(a1 + 56) _informDelegatesOfMessage:*(a1 + 32) result:v62 resultCode:v77 error:{*(a1 + 48), v127}];
    goto LABEL_187;
  }

  if (v77 != 441)
  {
    if (v77 != 442)
    {
      goto LABEL_141;
    }

    if (![*(a1 + 56) logToRegistration])
    {
      goto LABEL_157;
    }

    v97 = [MEMORY[0x1E69A6138] registration];
    if (!os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_156;
    }

    *buf = 0;
    v98 = "Server requested BAA cert purge, will retry";
LABEL_154:
    v99 = v97;
    v100 = 2;
LABEL_155:
    _os_log_impl(&dword_195925000, v99, OS_LOG_TYPE_DEFAULT, v98, buf, v100);
    goto LABEL_156;
  }

  v109 = [*(a1 + 56) baaSigner];
  v110 = [*(a1 + 32) topic];
  [v109 purgeBAACertForTopic:v110];

  if (![*(a1 + 56) logToRegistration])
  {
    goto LABEL_157;
  }

  v97 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v98 = "Server requested BAA cert purge, will retry";
    goto LABEL_154;
  }

LABEL_156:

LABEL_157:
  v111 = [*(a1 + 56) _tryRetryMessageWithTimeInterval:v80];
  v112 = [*(a1 + 56) logToRegistration];
  if (v111)
  {
    if (v112)
    {
      v113 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v113, OS_LOG_TYPE_DEFAULT, "Kicked off server retry", buf, 2u);
      }
    }
  }

  else
  {
    if (v112)
    {
      v114 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195925000, v114, OS_LOG_TYPE_DEFAULT, "Unable to retry this message any further", buf, 2u);
      }
    }

    [*(a1 + 56) _informDelegatesOfMessage:*(a1 + 32) result:v62 resultCode:v77 error:*(a1 + 48)];
  }

LABEL_187:

  objc_autoreleasePoolPop(contexta);
LABEL_214:
}

void sub_195945DF0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%@ Message body: %@", &v5, 0x16u);
  }
}

void sub_195945EAC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%@ Message body: %@", &v5, 0x16u);
  }
}

void sub_195945F68(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%@ Message body: %@", &v5, 0x16u);
  }
}

void sub_195946024(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] messageDelivery_oversized];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "%@ Message body: %@", &v5, 0x16u);
  }
}

void sub_195947260()
{
  v0 = MEMORY[0x19A8B8560]("IDSServiceNameiMessage", @"IDS");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED7687F8, v1);
}

void sub_1959472B0()
{
  v0 = MEMORY[0x19A8B8560]("IDSServiceNameiMessageLite", @"IDS");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768808, v1);
}

uint64_t (*sub_195947678())(void)
{
  result = MEMORY[0x19A8B8560]("_CFNetworkCopyPreferredLanguageCode", @"CFNetwork");
  off_1ED768680 = result;
  return result;
}

uint64_t sub_1959476FC()
{
  qword_1ED768708 = objc_alloc_init(FTMessageDelivery_APS);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195947A54(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 connection];
  [v5 cancelOutgoingMessage:v4];
}

void sub_195948D1C()
{
  v0 = MEMORY[0x19A8B8560]("APSErrorDomain", @"ApplePushService");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768810, v1);
}

void sub_1959498C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1959499F8()
{
  v0 = MEMORY[0x19A8B8560]("APSErrorDomain", @"ApplePushService");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768818, v1);
}

void sub_195949A48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _messageNeedsRetry:v3];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Self dealloced, not calling timer handler for message retry.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_195949B48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _messageAckGracePeriodTimedOut:v3];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Self dealloced, not calling timer handler for message ack grace period timeout.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_19594AA04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _messageACKTimedOut:v3];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Self dealloced, not calling timer handler for message ACK timeout.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_19594AB04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _messageSendTimedOut:v3];
  }

  else
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Self dealloced, not calling timer handler for message send timeout.", v7, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

void sub_19594ACD0(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) _noteMessageSent:v3 ftMessage:*(a1 + 40) body:*(a1 + 48)];
    [*(a1 + 32) _updateTopics];
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E695DF00] date];
    [v4 setRequestStart:v5];

    v6 = [*(a1 + 40) currentSendEventTracingOperation];
    v7 = objc_alloc_init(MEMORY[0x1E695DF00]);
    [v6 addDateSubfieldWithName:@"Network Send Time" value:v7];

    v8 = objc_autoreleasePoolPush();
    v9 = [*(a1 + 32) connection];
    [v9 sendOutgoingMessage:v3];

    objc_autoreleasePoolPop(v8);
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) bagKey];
      v12 = [*(a1 + 40) uniqueIDString];
      v13 = [*(a1 + 32) connection];
      *buf = 138413058;
      v20 = v3;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Sent outgoing message: %@ to command: %@   (Request ID: %@   Connection: %@)", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v14 = [*(a1 + 40) bagKey];
      v15 = [*(a1 + 40) uniqueIDString];
      v18 = [*(a1 + 32) connection];
      _IDSLogV();
    }
  }

  else
  {
    v16 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v20 = v17;
      _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_ERROR, "Could not generate APSMessage for message: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }
}

void sub_19594BE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19594BE7C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 topic];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
    if ([v8 ultraConstrainedAllowed])
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v4 addObject:v3];
    }
  }
}

void sub_19594BF34(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 topic];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
    if ([v8 ultraConstrainedAllowed])
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (!v4)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = v5;

        v4 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v4 addObject:v3];
    }
  }
}

void sub_19594D568(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x19594C47CLL);
  }

  _Unwind_Resume(a1);
}

void sub_19594D5E8(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v2 = [v3 objectForKey:{v8, v16, v18}];

        if (v2)
        {
          v9 = *(a1 + 32);
          v2 = [v3 objectForKey:v8];
          [v9 setObject:v2 forKey:v8];
        }

        v10 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v2 = [v3 objectForKey:v8];
          *buf = 138412546;
          v25 = v8;
          v26 = 2112;
          v27 = v2;
          _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "       %@: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
        {
          v2 = [v3 objectForKey:v8];
          v16 = v8;
          v18 = v2;
          _IDSLogV();
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 40) payloadCanBeLogged];
    if (v12)
    {
      v5 = [*(a1 + 48) description];
      v2 = [*(a1 + 40) service];
      v13 = IDSLoggableDescriptionForObjectOnService();
    }

    else
    {
      v13 = @"(Not Loggable)";
    }

    *buf = 138412290;
    v25 = v13;
    _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "Final delivery payload: %@", buf, 0xCu);
    if (v12)
    {
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    if ([*(a1 + 40) payloadCanBeLogged])
    {
      v14 = [*(a1 + 48) description];
      v15 = [*(a1 + 40) service];
      v17 = IDSLoggableDescriptionForObjectOnService();
      _IDSLogV();
    }

    else
    {
      _IDSLogV();
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_19594DB00(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 120);
  v5 = [*(a1 + 40) uniqueIDString];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    if (!*(*(a1 + 32) + 120))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = *(a1 + 32);
      v9 = *(v8 + 120);
      *(v8 + 120) = Mutable;
    }

    if (v3)
    {
      v10 = *(a1 + 40);
      v11 = *(*(a1 + 32) + 120);
      v12 = v3;
      CFDictionarySetValue(v11, [v10 uniqueIDString], v12);
    }
  }

  if (([*(a1 + 40) wantsBinaryPush] & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AE30] processInfo];
    v14 = [v13 processName];
    IMLogSimulateCrashForProcess();
  }

  if ([*(a1 + 40) wantsBinaryPush])
  {
    v15 = v3;
  }

  else
  {
    v15 = [v3 _FTFilteredDictionaryForAPS];
  }

  v16 = v15;
  v17 = objc_alloc(*(*(a1 + 32) + 96));
  v18 = [*(a1 + 40) topic];
  v19 = [v17 initWithTopic:v18 userInfo:v16];

  if ([*(a1 + 40) wantsBinaryPush])
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      *buf = 138412290;
      v26 = v21;
      _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "Sending message: %@ as binary push", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v24 = *(a1 + 40);
      _IDSLogV();
    }

    [v19 setPayloadFormat:1, v24];
  }

  [v19 setIdentifier:{objc_msgSend(*(a1 + 40), "uniqueID")}];
  [*(a1 + 40) timeout];
  [v19 setTimeout:v22];
  if ([*(a1 + 40) highPriority])
  {
    [v19 setCritical:1];
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  [v19 setPriority:v23];
  (*(*(a1 + 48) + 16))();
}

uint64_t (*sub_19594DE90())(void, void, void, void)
{
  result = MEMORY[0x19A8B8560]("PLLogRegisteredEvent", @"PowerLog");
  off_1ED768820 = result;
  return result;
}

void sub_19594E2A0(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"YES";
    if (!v3)
    {
      v5 = @"NO";
    }

    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Created APSOutgoingMessage body: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v6 = @"YES";
    if (!v3)
    {
      v6 = @"NO";
    }

    v33 = v6;
    _IDSLogV();
  }

  if ([v3 count])
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v38 = v8;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Delivering message to command: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v34 = *(a1 + 32);
      _IDSLogV();
    }

    v9 = [MEMORY[0x1E695DF90] dictionary];
    v10 = [v3 objectForKey:@"c"];

    if (v10)
    {
      v11 = [v3 objectForKey:@"c"];
      [(__CFString *)v9 setObject:v11 forKey:@"CommandID"];
    }

    v12 = [v3 objectForKey:@"i"];

    if (v12)
    {
      v13 = [v3 objectForKey:@"i"];
      [(__CFString *)v9 setObject:v13 forKey:@"MessageIdentifier"];
    }

    v14 = [*(a1 + 40) topic];

    if (v14)
    {
      v15 = [*(a1 + 40) topic];
      [(__CFString *)v9 setObject:v15 forKey:@"Topic"];
    }

    v16 = [v3 objectForKey:@"U"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = MEMORY[0x1E695DEF0];
      v18 = [v3 objectForKey:@"U"];
      v19 = [v17 _IDSDataFromBase64String:v18];
      v20 = JWUUIDPushObjectToString();
    }

    else
    {
      v18 = [v3 objectForKey:@"U"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v3 objectForKey:@"U"];
        v20 = JWUUIDPushObjectToString();
      }

      else
      {
        v20 = JWUUIDPushObjectToString();
      }
    }

    if (v20)
    {
      v24 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [*(a1 + 40) topic];
        *buf = 138412546;
        v38 = v20;
        v39 = 2112;
        v40 = v25;
        _os_log_impl(&dword_195925000, v24, OS_LOG_TYPE_DEFAULT, "OUTGOING-APS_DELIVERY:%@ SERVICE:%@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        [*(a1 + 40) topic];
        v36 = v35 = v20;
        _IDSLogV();
      }

      [(__CFString *)v9 setObject:v20 forKey:@"MessageGUID", v35, v36];
    }

    v26 = objc_opt_class();
    v27 = sub_19594EAB0(v26, v3, *MEMORY[0x1E69A49E8]);
    if (v27)
    {
      [(__CFString *)v9 setObject:v27 forKey:@"CommandContext"];
    }

    v28 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 40) service];
      v30 = IDSLoggableDescriptionForObjectOnService();
      *buf = 138412546;
      v38 = v30;
      v39 = 2112;
      v40 = v20;
      _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Message body: %@ [guid: %@]", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v31 = [*(a1 + 40) service];
      v35 = IDSLoggableDescriptionForObjectOnService();
      v36 = v20;
      _IDSLogV();
    }

    v32 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v9;
      _os_log_impl(&dword_195925000, v32, OS_LOG_TYPE_DEFAULT, "Logging outgoing push power event: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      v35 = v9;
      _IDSLogV();
    }

    [*(a1 + 48) _powerLogEvent:@"IDS OutgoingPushSent" dictionary:{v9, v35, v36}];
    [*(a1 + 48) _sendMessage:v3 ftMessage:*(a1 + 40)];
  }

  else
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Failing message, empty message", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v22 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1000 userInfo:0];
    [v22 _notifyDelegateAboutError:v9 resultCode:20000 forMessage:*(a1 + 40)];
  }
}

id sub_19594EAB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKey:v5];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    if (v6)
    {
      v8 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_195963F24(v5, a1, v8);
      }
    }

    v7 = 0;
  }

  return v7;
}

void sub_19594F25C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x19594F1B8);
  }

  objc_sync_exit(v2);
  _Unwind_Resume(exc_buf);
}

void sub_19594F5C8()
{
  v0 = MEMORY[0x19A8B8560]("IDSServiceNameiMessage", @"IDS");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768838, v1);
}

void sub_19594F618()
{
  v0 = MEMORY[0x19A8B8560]("IDSServiceNameiMessageLite", @"IDS");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768848, v1);
}

void sub_195950F60(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x195950D08);
  }

  _Unwind_Resume(a1);
}

void sub_195951520()
{
  v0 = MEMORY[0x19A8B8560]("APSErrorDomain", @"ApplePushService");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED768850, v1);
}

uint64_t (*sub_195951674())(void)
{
  result = MEMORY[0x19A8B8560]("_CFNetworkCopyPreferredLanguageCode", @"CFNetwork");
  off_1ED768688 = result;
  return result;
}

id sub_195951E8C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:b", v4];
    v6 = [v3 objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      [v6 _FTDataFromBase64String];
    }

    else
    {
      [v3 objectForKey:v4];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_195951F64(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v3 = [v1 allKeys];
    v27 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (!v27)
    {
      goto LABEL_36;
    }

    v4 = *v29;
    v22 = v2;
    v23 = v1;
    v24 = v3;
    v25 = *v29;
    while (1)
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        if ([v6 length])
        {
          v7 = [v6 rangeOfString:@":b"];
          if (v7 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v8 = v6;
          }

          else
          {
            v8 = [v6 substringToIndex:v7];
          }

          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = [v1 objectForKey:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = sub_195951F64(v10);
          goto LABEL_30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v10)
          {
            goto LABEL_34;
          }

          v11 = sub_195951E8C(v1, v9);
LABEL_30:
          v15 = v11;
          goto LABEL_33;
        }

        v12 = v10;
        v13 = v6;
        v26 = v12;
        if (![v13 length])
        {
          v15 = 0;
          goto LABEL_32;
        }

        v14 = [v13 hasSuffix:@":b"];
        v15 = [v12 mutableCopy];
        v16 = [v15 count];
        if (v16 - 1 < 0)
        {
          goto LABEL_27;
        }

        v17 = v16;
        do
        {
          v18 = [v15 objectAtIndex:{--v17, v22, v23}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = sub_195951F64(v18);
LABEL_21:
            v20 = v19;
            [v15 replaceObjectAtIndex:v17 withObject:v19];

            goto LABEL_25;
          }

          if (v14)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v18 _FTDataFromBase64String];
              goto LABEL_21;
            }
          }

LABEL_25:
        }

        while (v17 > 0);
        v2 = v22;
        v1 = v23;
LABEL_27:
        v3 = v24;
LABEL_32:

        v4 = v25;
LABEL_33:
        [v2 setValue:v15 forKey:{v9, v22, v23}];

LABEL_34:
      }

      v27 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v27)
      {
LABEL_36:

        goto LABEL_38;
      }
    }
  }

  v2 = v1;
LABEL_38:

  return v2;
}

void sub_195952F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = a2;
    v11 = 2112;
    v12 = a3;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "CT Request callback: %@: %@", &v9, 0x16u);
  }

  v8 = +[FTEntitlementSupport sharedInstance];
  [v8 _handleCTServiceRequestName:a2 userInfo:a3 contextInfo:a4];
}

void sub_195953140(uint64_t a1, uint64_t a2, const __CFString *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = a3;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "CT Daemon ready: %@", &v8, 0xCu);
  }

  if (CFStringCompare(a3, *MEMORY[0x1E6965268], 1uLL) == kCFCompareEqualTo)
  {
    v5 = +[FTEntitlementSupport sharedInstance];
    v6 = [v5 _setupCTServerConnection];

    if (v6)
    {
      v7 = +[FTEntitlementSupport sharedInstance];
      [v7 _registerForCTEntitlementNotifications];
    }
  }
}

void sub_195953980(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (CFEqual(a2, *MEMORY[0x1E6965288]))
    {
      v4 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = a2;
        _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Received %@ so nuking cached values", &v6, 0xCu);
      }

      [WeakRetained _clearCaches];
    }

    else if (CFEqual(a2, *MEMORY[0x1E6965260]))
    {
      v5 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 138412290;
        v7 = a2;
        _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Received %@ disconnecting and clearing values", &v6, 0xCu);
      }

      [WeakRetained _clearCaches];
      WeakRetained[6] = 0;
    }
  }
}

void sub_1959545E0(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _clearCaches];
}

void sub_195954828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195954858(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (MEMORY[0x19A8B8F50]() == MEMORY[0x1E69E9E50])
  {
    if (xpc_array_get_count(v3))
    {
      v6 = xpc_array_get_dictionary(v3, 0);
      WiFi_data_allowed_from_policy = network_usage_policy_get_WiFi_data_allowed_from_policy();

      v8 = xpc_array_get_dictionary(v3, 0);
      cell_data_allowed_from_policy = network_usage_policy_get_cell_data_allowed_from_policy();

      *(*(*(a1 + 64) + 8) + 24) = WiFi_data_allowed_from_policy & cell_data_allowed_from_policy;
      v10 = [MEMORY[0x1E696AD98] numberWithBool:*(*(*(a1 + 64) + 8) + 24)];
      v11 = *(*(a1 + 72) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = *(a1 + 32);
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v15;
        _os_log_impl(&dword_195925000, v13, OS_LOG_TYPE_DEBUG, "Caching canUseNonBT {canUseNonBT: %@, bundle: %@}", buf, 0x16u);
      }

      v16 = [*(a1 + 40) object];
      v17 = [v16 nonBTAllowedCache];
      [v17 setObject:*(*(*(a1 + 72) + 8) + 40) forKey:*(a1 + 32)];

      v18 = xpc_array_get_dictionary(v3, 0);
      LOBYTE(v17) = network_usage_policy_get_first_use_flow_performed_from_policy();

      if ((v17 & 1) == 0)
      {
        v19 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Showing network usage policy first alert {bundle: %@}", buf, 0xCu);
        }

        [*(a1 + 32) UTF8String];
        perform_first_network_use_flow();
      }
    }
  }

  else if (MEMORY[0x19A8B8F50](v3) == MEMORY[0x1E69E9ED0])
  {
    v21 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      *buf = 138412290;
      v26 = v22;
      _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Received NULL policy for canUseNonBT -- caching NO {bundle: %@}", buf, 0xCu);
    }

    v23 = [*(a1 + 40) object];
    v24 = [v23 nonBTAllowedCache];
    [v24 setObject:MEMORY[0x1E695E110] forKey:*(a1 + 32)];
  }

  else
  {
    v4 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v26 = v5;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_ERROR, "Unexpected network usage policy {bundle: %@, policies: %@}", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      _IDSLogTransport();
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

id sub_1959554C8(void *a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "count"))
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 regionID];
          v12 = [v11 isEqualToString:v3];

          if (v12)
          {
            v19 = v10;
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
LABEL_13:
      v17 = 0;
      while (1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) subRegions];
        v19 = sub_1959554C8(v3, v18);

        if (v19)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          v19 = 0;
          if (v15)
          {
            goto LABEL_13;
          }

          break;
        }
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_22:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t sub_1959558B0()
{
  qword_1ED768720 = objc_alloc_init(FTRegionSupport);

  return MEMORY[0x1EEE66BB8]();
}

void sub_195955A84(uint64_t a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v25 = a3;
  v24 = a5;
  if (a4 > 1)
  {
    v20 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v32 = v25;
      v33 = 2048;
      v34 = a4;
      _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_ERROR, "Failed querying regions: %@  code: %ld", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      _IDSWarnV();
      _IDSLogV();
      v21 = v25;
      v22 = a4;
      _IDSLogTransport();
    }

    [*(a1 + 32) setRegions:{0, v21, v22}];
  }

  else
  {
    v23 = v9;
    v10 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Succeeded loading region information", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = [v23 responseRegionInformation];
    v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v15;
            _os_log_impl(&dword_195925000, v16, OS_LOG_TYPE_DEFAULT, "   Region info: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          v17 = [[FTRegion alloc] _initWithDictionary:v15];
          v18 = OSLogHandleForIDSCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v17;
            _os_log_impl(&dword_195925000, v18, OS_LOG_TYPE_DEFAULT, "   Loaded region: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
          {
            _IDSLogV();
          }

          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v12);
    }

    [*(a1 + 32) setRegions:v11];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 __mainThreadPostNotificationName:@"__kFTRegionListFinishedLoadingNotification" object:*(a1 + 32)];
  }
}

uint64_t sub_19595657C()
{
  qword_1ED768728 = objc_alloc_init(FTPasswordManager);

  return MEMORY[0x1EEE66BB8]();
}

id sub_195956704(uint64_t a1)
{
  if (qword_1ED768630 != -1)
  {
    sub_195964300();
  }

  v2 = qword_1ED768640;

  return v2;
}

id sub_195956748(uint64_t a1)
{
  if (qword_1ED768638 != -1)
  {
    sub_195964314();
  }

  v2 = qword_1ED768648;

  return v2;
}

id sub_195956E14(void *a1)
{
  v1 = a1;
  v2 = [v1 accountProperties];
  v3 = [v2 objectForKey:@"profile-id"];

  if ([v3 length])
  {
    goto LABEL_4;
  }

  v4 = [v1 accountProperties];
  v5 = [v4 objectForKey:@"profileID"];

  if ([v5 length])
  {
    v3 = v5;
LABEL_4:
    v6 = v3;
    v5 = v6;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_5:

  return v6;
}

__CFString *sub_195956EDC(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 length])
    {
      if ([v2 length] < 0xB)
      {
        v5 = @"(short auth token)";
      }

      else
      {
        v3 = MEMORY[0x1E696AEC0];
        v4 = [v2 substringToIndex:10];
        v5 = [v3 stringWithFormat:@"%@...", v4];
      }
    }

    else
    {
      v5 = @"(empty auth token)";
    }
  }

  else
  {
    v5 = @"(nil auth token)";
  }

  return v5;
}

id sub_195956FA8(void *a1)
{
  v1 = a1;
  v2 = [v1 credential];

  if (v2)
  {
    v3 = [v1 credential];
    v2 = [v3 token];
  }

  return v2;
}

id sub_195957020(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = [MEMORY[0x1E695DF70] array];
  v2 = [v1 accountProperties];
  v3 = [v2 objectForKey:@"handles"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v1;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 objectForKey:@"uri"];
            v11 = [v9 objectForKey:@"status"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == 5051 && objc_msgSend(v10, "length") && IMStringIsEmail())
              {
                [v14 addObject:v10];
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v1 = v13;
  }

  return v14;
}

uint64_t sub_195957808(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 _stripFZIDPrefix];
    v7 = [v5 username];
    v8 = [v5 accountProperties];
    v9 = [v8 objectForKey:@"originalUsername"];

    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_debug_impl(&dword_195925000, v10, OS_LOG_TYPE_DEBUG, "Comparing strippedUserName %@, accountUserName %@ and accountOriginalUserName %@", &v13, 0x20u);
    }

    if (v7 && ([v7 isEqualToIgnoringCase:v6] & 1) != 0)
    {
      v11 = 1;
    }

    else if (v9)
    {
      v11 = [v9 isEqualToIgnoringCase:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_195964390();
    }

    v11 = 0;
  }

  return v11;
}

BOOL sub_195957EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_195957F04(*(a1 + 32), v3))
  {
    v4 = sub_195956FA8(v3);
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_195957F04(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    sub_195957020(a2);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v4 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v4)
    {
      v6 = *v16;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          v9 = [v3 _stripFZIDPrefix];
          if (v9)
          {
            v10 = v9;
            v11 = [v3 _stripFZIDPrefix];
            v12 = [v8 _stripFZIDPrefix];
            v13 = [v11 isEqualToIgnoringCase:v12];

            if (v13)
            {
              v4 = 1;
              goto LABEL_14;
            }
          }
        }

        v4 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  return v4;
}

BOOL sub_195958084(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_195957F04(*(a1 + 32), v3))
  {
    v4 = [v3 credential];
    v5 = [v4 password];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_195958560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_195956E14(v3);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_195956E14(v3);
    if ([v5 isEqualToIgnoringCase:v6])
    {
      v7 = sub_195956FA8(v3);
      v8 = v7 != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1959585FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_195956E14(v3);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_195956E14(v3);
    if ([v5 isEqualToIgnoringCase:v6])
    {
      v7 = [v3 credential];
      v8 = [v7 password];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_1959586B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_195956E14(v3);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_195956E14(v3);
    if ([v5 isEqualToIgnoringCase:v6])
    {
      v7 = sub_195957808(*(a1 + 40), v3);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_195958754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_195956E14(v3);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = sub_195956E14(v3);
    v7 = [v5 isEqualToIgnoringCase:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_195958C90(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195958DB4;
  block[3] = &unk_1E74356F8;
  v16 = v6;
  v17 = v5;
  v14 = *(a1 + 32);
  v8 = *(&v14 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v14;
  v19 = v11;
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void sub_195958DB4(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_195964408();
    }
  }

  else
  {
    v3 = [*(*(a1 + 48) + 16) accountsWithAccountType:?];
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v2 = v3;
    v5 = [v2 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v2);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          if ([*(a1 + 56) length] && sub_195957808(*(a1 + 56), v9))
          {
            [v4 addObject:v9];
          }
        }

        v6 = [v2 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v6);
    }

    v10 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v4;
      _os_log_impl(&dword_195925000, v10, OS_LOG_TYPE_DEFAULT, "Updating username on accounts { accountsToUpdate : %@ }", buf, 0xCu);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * j);
          [v16 setUsername:*(a1 + 64)];
          v17 = *(*(a1 + 48) + 16);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = sub_195959098;
          v18[3] = &unk_1E74356D0;
          v18[4] = v16;
          [v17 saveVerifiedAccount:v16 withCompletionHandler:v18];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v13);
    }
  }
}

void sub_195959098(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Save completed (%@) with error: %@", &v8, 0x16u);
  }

  if (v4)
  {
    v7 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195964484();
    }
  }
}

void sub_195959744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195959844;
  block[3] = &unk_1E7435748;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void sub_195959844(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1[4] || !a1[5])
  {
    v2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_195964530();
    }

    v3 = a1[8];
    if (v3)
    {
      (*(v3 + 16))(v3, 0);
    }
  }

  else
  {
    v4 = [*(a1[6] + 16) accountsWithAccountType:?];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v35;
      v10 = *MEMORY[0x1E69A4920];
      *&v7 = 138412290;
      v26 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v35 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [v12 accountPropertyForKey:{v10, v26}];

          if (v13)
          {
            v14 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v26;
              v40 = v12;
              _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Found candidate account for clean-up { account : %@ }", buf, 0xCu);
            }

            [v12 setAccountProperty:0 forKey:v10];
            [v5 addObject:v12];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v8);
    }

    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v5;
      _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "Requesting save of cleaned-up accounts { accountsToSave : %@ }", buf, 0xCu);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v19 = v17;
      v20 = *v31;
      *&v18 = 138412290;
      v27 = v18;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v30 + 1) + 8 * j);
          v23 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v40 = v22;
            _os_log_impl(&dword_195925000, v23, OS_LOG_TYPE_DEFAULT, "Saving account { account: %@ }", buf, 0xCu);
          }

          v24 = *(a1[6] + 16);
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = sub_195959C48;
          v29[3] = &unk_1E74356D0;
          v29[4] = v22;
          [v24 saveVerifiedAccount:v22 withCompletionHandler:v29];
        }

        v19 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    v25 = a1[8];
    if (v25)
    {
      (*(v25 + 16))(v25, 1);
    }
  }
}

void sub_195959C48(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Save completed { account: %@, success: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_195959F3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19595A0A0;
  block[3] = &unk_1E7435798;
  v16 = v6;
  v17 = v5;
  v14 = *(a1 + 32);
  v8 = *(&v14 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v18 = v14;
  v19 = v11;
  v20 = *(a1 + 64);
  v22 = *(a1 + 80);
  v21 = *(a1 + 72);
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

void sub_19595A0A0(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = v2;
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v4 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1959645AC();
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      (*(v5 + 16))(v5, 0);
    }
  }

  else
  {
    v44 = v2;
    v6 = [*(*(a1 + 48) + 16) accountsWithAccountType:?];
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v64;
      v46 = *v64;
      do
      {
        v10 = 0;
        v47 = v8;
        do
        {
          if (*v64 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * v10);
          if ([*(a1 + 56) length])
          {
            if (sub_195957808(*(a1 + 56), v11))
            {
              v12 = 1;
            }

            else
            {
              v12 = sub_195957F04(*(a1 + 56), v11);
            }
          }

          else
          {
            v12 = 0;
          }

          if ([*(a1 + 64) length])
          {
            v13 = sub_195956E14(v11);
            if (v13)
            {
              v14 = *(a1 + 64);
              v15 = sub_195956E14(v11);
              v16 = [v14 isEqualToIgnoringCase:v15];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }

          if ((v12 | v16))
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v17 = *(a1 + 72);
            v18 = [v17 countByEnumeratingWithState:&v59 objects:v71 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v60;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v60 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = *(*(&v59 + 1) + 8 * i);
                  if (sub_195957808(v22, v11) & 1) != 0 || (sub_195957F04(v22, v11))
                  {
                    v23 = 0;
                    goto LABEL_36;
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v59 objects:v71 count:16];
                v23 = 1;
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v23 = 1;
            }

LABEL_36:
            v49 = v23;

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v24 = *(a1 + 80);
            v25 = [v24 countByEnumeratingWithState:&v55 objects:v70 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v56;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v56 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v55 + 1) + 8 * j);
                  v30 = sub_195956E14(v11);
                  if (v30)
                  {
                    v31 = v30;
                    v32 = sub_195956E14(v11);
                    v33 = [v29 isEqualToIgnoringCase:v32];

                    if (v33)
                    {

                      v9 = v46;
                      v8 = v47;
                      goto LABEL_48;
                    }
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v55 objects:v70 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }

            v9 = v46;
            v8 = v47;
            if (v49)
            {
              [v45 addObject:v11];
            }
          }

LABEL_48:
          ++v10;
        }

        while (v10 != v8);
        v8 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v8);
    }

    v34 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v45;
      _os_log_impl(&dword_195925000, v34, OS_LOG_TYPE_DEFAULT, "Requesting deletion of accounts { accountsToDelete : %@ }", buf, 0xCu);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v35 = v45;
    v36 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v52;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v52 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v51 + 1) + 8 * k);
          v41 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v40;
            _os_log_impl(&dword_195925000, v41, OS_LOG_TYPE_DEFAULT, "Deleting unused account { account: %@ }", buf, 0xCu);
          }

          v42 = *(*(a1 + 48) + 16);
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = sub_19595A670;
          v50[3] = &unk_1E74356D0;
          v50[4] = v40;
          [v42 removeAccount:v40 withCompletionHandler:v50];
        }

        v37 = [v35 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v37);
    }

    v43 = *(a1 + 96);
    if (v43)
    {
      (*(v43 + 16))(v43, 1);
    }

    v3 = v44;
  }

  objc_autoreleasePoolPop(v3);
}

void sub_19595A670(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Delete completed { account: %@, success: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_19595A930(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19595AA74;
  block[3] = &unk_1E74357E8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v17 = v6;
  v18 = v5;
  v15 = *(a1 + 32);
  v21 = *(a1 + 64);
  v10 = *(a1 + 40);
  *&v11 = v15;
  *(&v11 + 1) = v10;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v20 = v12;
  v19 = v11;
  v13 = v5;
  v14 = v6;
  dispatch_async(v7, block);
}

void sub_19595AA74(void *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = (*(a1[8] + 16))();
  v3 = (*(a1[9] + 16))();
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v79 = v2;
    v80 = 2112;
    v81 = v3;
    _os_log_impl(&dword_195925000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up unused accounts { usernames : %@, profileIDs : %@ }", buf, 0x16u);
  }

  if (a1[4] || !a1[5])
  {
    v5 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195964530();
    }

    v6 = a1[10];
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  else
  {
    v56 = a1;
    v7 = [*(a1[6] + 16) accountsWithAccountType:?];
    v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v7;
    v51 = v3;
    v52 = v2;
    v55 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    if (v55)
    {
      v54 = *v71;
      v53 = *MEMORY[0x1E69A48F8];
      *&v8 = 138412290;
      v48 = v8;
      while (2)
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v71 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v70 + 1) + 8 * i);
          v11 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v48;
            v79 = v10;
            _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_INFO, "Checking if account should be deleted { account: %@ }", buf, 0xCu);
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v12 = v2;
          v13 = [v12 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v67;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v67 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v66 + 1) + 8 * j);
                if (sub_195957808(v17, v10) & 1) != 0 || (sub_195957F04(v17, v10))
                {
                  v18 = 0;
                  goto LABEL_28;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v66 objects:v76 count:16];
              v18 = 1;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v18 = 1;
          }

LABEL_28:

          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v19 = v3;
          v20 = [v19 countByEnumeratingWithState:&v62 objects:v75 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v63;
            while (2)
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v63 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v62 + 1) + 8 * k);
                v25 = sub_195956E14(v10);
                if (v25)
                {
                  v26 = v25;
                  v27 = sub_195956E14(v10);
                  v28 = [v24 isEqualToIgnoringCase:v27];

                  if (v28)
                  {
                    v18 = 0;
                    goto LABEL_39;
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v62 objects:v75 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

LABEL_39:
            v3 = v51;
            v2 = v52;
          }

          v29 = [v10 accountProperties];
          v30 = [v29 objectForKey:v53];

          if (v30)
          {
            v31 = MEMORY[0x1E695DF00];
            [v30 doubleValue];
            v32 = [v31 dateWithTimeIntervalSince1970:?];
            v33 = [MEMORY[0x1E695DF00] now];
            [v33 timeIntervalSinceDate:v32];
            v35 = v34;

            if (v35 <= 60.0)
            {
              v37 = [MEMORY[0x1E69A6138] registration];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_195925000, v37, OS_LOG_TYPE_INFO, "Account was recently added. Not deleting", buf, 2u);
              }

              goto LABEL_52;
            }
          }

          v36 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_195925000, v36, OS_LOG_TYPE_INFO, "Account was not recently added", buf, 2u);
          }

          if (v18)
          {
            [v49 addObject:v10];
          }
        }

        v55 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_52:

    v38 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v49;
      _os_log_impl(&dword_195925000, v38, OS_LOG_TYPE_DEFAULT, "Requesting deletion of accounts { accountsToDelete : %@ }", buf, 0xCu);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = v49;
    v40 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v59;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v59 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v58 + 1) + 8 * m);
          v45 = [MEMORY[0x1E69A6138] registration];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v79 = v44;
            _os_log_impl(&dword_195925000, v45, OS_LOG_TYPE_DEFAULT, "Deleting unused account { account: %@ }", buf, 0xCu);
          }

          v46 = *(v56[6] + 16);
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = sub_19595B1C8;
          v57[3] = &unk_1E74356D0;
          v57[4] = v44;
          [v46 removeAccount:v44 withCompletionHandler:v57];
        }

        v41 = [v39 countByEnumeratingWithState:&v58 objects:v74 count:16];
      }

      while (v41);
    }

    v47 = v56[10];
    if (v47)
    {
      (*(v47 + 16))(v47, 1);
    }

    v3 = v51;
    v2 = v52;
  }
}

void sub_19595B1C8(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v9 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Delete completed { account: %@, success: %@, error: %@ }", &v9, 0x20u);
  }
}

void sub_19595B96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

id sub_19595B9DC(void *a1)
{
  v1 = a1;
  v2 = [v1 hasPrefix:@"FaceTime"];
  v3 = MEMORY[0x1E69A50B0];
  if ((v2 & 1) != 0 || ([v1 hasPrefix:@"iMessage"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"Calling") & 1) != 0 || (v4 = v1, objc_msgSend(v1, "hasPrefix:", @"Multiway")))
  {
    v4 = *v3;
  }

  if ([v1 hasPrefix:@"com.apple"])
  {
    v5 = *v3;

    v4 = v5;
  }

  return v4;
}

id sub_19595BAB4(void *a1)
{
  v1 = [a1 accountProperties];
  v2 = [v1 objectForKey:@"self-handle"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_6:
    v4 = v3;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 count])
  {
    v3 = [v2 objectForKey:@"uri"];
    goto LABEL_6;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

void sub_19595BB78(void *a1)
{
  v2 = a1;
  v1 = [v2 accountPropertyForKey:@"bundleRef"];
  if (!v1)
  {
    v1 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v2 setAccountProperty:v1 forKey:@"bundleRef"];
  }

  [v1 addObject:@"com.apple.imcore"];
}

void sub_19595C670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_activity_scope_state_s state, char a21)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_19595CB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, os_activity_scope_state_s state, char a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_19595CB9C(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (!WeakRetained || ![WeakRetained[1] containsObject:*(a1 + 32)])
  {
    goto LABEL_21;
  }

  v6 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_195925000, v6, OS_LOG_TYPE_DEFAULT, "Handle user notification complete: %@:%@", buf, 0x16u);
  }

  v9 = [v3 responseInformation];
  v10 = [v9 objectForKey:*MEMORY[0x1E69A60A0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
    v12 = v10;
  }

  else
  {
    objc_opt_class();
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = v10;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v15 = v10;
  v13 = v12;
  v14 = v11;
LABEL_9:
  if ([v14 count] >= 2)
  {
    v16 = [v14 objectAtIndex:0];
    v17 = v14;
    v18 = 1;
LABEL_13:
    v19 = [v17 objectAtIndex:v18];
    goto LABEL_14;
  }

  if ([v14 count] == 1)
  {
    v16 = *(a1 + 40);
    v17 = v14;
    v18 = 0;
    goto LABEL_13;
  }

  if (!v13)
  {
    v16 = 0;
    v20 = 0;
    goto LABEL_15;
  }

  v16 = *(a1 + 40);
  v19 = v13;
LABEL_14:
  v20 = v19;
LABEL_15:
  v21 = [v3 response] == 3 || objc_msgSend(v3, "response") == 1;
  v22 = [v3 response];
  v23 = *(a1 + 56);
  if (v23)
  {
    BYTE2(v24) = v22 == 2;
    BYTE1(v24) = 1;
    LOBYTE(v24) = v21;
    (*(v23 + 16))(v23, *(a1 + 32), v16, *(a1 + 48), v16, 0, v20, 0, v24);
  }

  [v5[1] removeObject:*(a1 + 32)];

LABEL_21:
}

void sub_19595D6E4(_Unwind_Exception *a1)
{
  os_activity_scope_leave((v1 - 200));
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_19595D74C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, __int16 a10, char a11)
{
  v29 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  if (*(a1 + 48) == 1)
  {
    v25 = *(a1 + 32);
    v26 = *(v25 + 32);
    *(v25 + 32) = 0;
  }

  v27 = *(a1 + 40);
  if (v27)
  {
    BYTE2(v28) = a11;
    LOWORD(v28) = a10;
    (*(v27 + 16))(v27, v29, v18, v19, v20, v21, v22, v23, v24, v28);
  }
}

void sub_19595D890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = im_primary_queue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19595D9D8;
  block[3] = &unk_1E74358B0;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v20 = a2;
  v12 = *(a1 + 64);
  v9 = *(&v12 + 1);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v17 = v10;
  v18 = v12;
  v19 = *(a1 + 80);
  v11 = v5;
  dispatch_async(v6, block);
}

void sub_19595D9D8(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = sub_19595BAB4(*(a1 + 40));
  v5 = [*(a1 + 40) accountProperties];
  v6 = [v5 objectForKey:@"status"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 48))
  {
    v8 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195964698();
    }
  }

  [*v3 reload];
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 96);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    *buf = 138413314;
    v43 = v10;
    v44 = 2112;
    v45 = v11;
    v46 = 2112;
    v47 = v13;
    v48 = 2048;
    v49 = v12;
    v50 = 2112;
    v51 = v14;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Renewal complete for: %@  service: %@ account: %@  renewResult: %ld  error: %@", buf, 0x34u);
  }

  if ([*(*(a1 + 72) + 8) containsObject:*(a1 + 80)])
  {
    v15 = [*(a1 + 72) _credentialForAccount:*(a1 + 40)];
    v16 = [v15 token];
    if (![v2 length])
    {
      v17 = sub_195956E14(*v3);

      v2 = v17;
    }

    if (![v4 length])
    {
      v18 = sub_19595BAB4(*v3);

      v4 = v18;
    }

    v19 = *(a1 + 96);
    if (v19)
    {
      v20 = v19 == 1;

      v16 = 0;
    }

    else
    {
      v20 = 0;
    }

    if (![v2 length])
    {
      v21 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_195964710();
      }

      v22 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_195964750();
      }

      v16 = 0;
    }

    v23 = im_primary_queue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19595DEB8;
    block[3] = &unk_1E7435888;
    v39 = *(a1 + 88);
    v32 = *(a1 + 80);
    v33 = *(a1 + 56);
    v34 = *(a1 + 64);
    v2 = v2;
    v35 = v2;
    v4 = v4;
    v36 = v4;
    v37 = v16;
    v38 = v7;
    v40 = v20;
    v41 = 1;
    v24 = v16;
    dispatch_async(v23, block);

    [*(*(a1 + 72) + 8) removeObject:*(a1 + 80)];
    v25 = [*(a1 + 48) domain];
    [*(a1 + 48) code];
    FTAWDLogRegistrationRenewCredentialsCompleted();

    v26 = objc_alloc(MEMORY[0x1E69A53C8]);
    v27 = *(a1 + 96);
    v28 = [*(a1 + 48) domain];
    v29 = [v26 initWithRenewResult:v27 errorDomain:v28 errorCode:{objc_msgSend(*(a1 + 48), "code")}];

    v30 = [MEMORY[0x1E69A5210] defaultLogger];
    [v30 logMetric:v29];
  }

  else
  {
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "  => Cancelled, bailing", buf, 2u);
    }
  }
}

uint64_t sub_19595DEB8(uint64_t a1)
{
  BYTE2(v2) = *(a1 + 98);
  LOWORD(v2) = *(a1 + 96);
  return (*(*(a1 + 88) + 16))(*(a1 + 88), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), 0, *(a1 + 80), v2);
}

void sub_19595DF0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Completed verify credentials", buf, 2u);
  }

  v8 = im_primary_queue();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19595E0F4;
  v18[3] = &unk_1E7435950;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = v6;
  v9 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = v9;
  v25 = v5;
  v10 = *(a1 + 88);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v28 = *(a1 + 104);
  v13 = *(a1 + 96);
  *&v14 = v10;
  *(&v14 + 1) = v13;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  v26 = v15;
  v27 = v14;
  v16 = v5;
  v17 = v6;
  dispatch_async(v8, v18);
}

void sub_19595E0F4(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *buf = 138413058;
    v46 = v3;
    v47 = 2112;
    v48 = v4;
    v49 = 2112;
    v50 = v5;
    v51 = 2112;
    v52 = v6;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "Verification complete for: %@  service: %@ account: %@  error: %@", buf, 0x2Au);
  }

  v7 = (a1 + 56);
  if (*(a1 + 56))
  {
    v8 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1959647C8();
    }
  }

  if ([*(*(a1 + 64) + 8) containsObject:*(a1 + 72)])
  {
    if (!*v7 && !*(a1 + 80))
    {
      v9 = [MEMORY[0x1E69A6138] warning];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_195964840();
      }
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      v11 = v10;
      goto LABEL_18;
    }

    v11 = *(a1 + 48);
    if (v11)
    {
LABEL_18:
      if (*v7)
      {
        v12 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 56);
          v14 = *(a1 + 88);
          *buf = 138412546;
          v46 = v13;
          v47 = 2112;
          v48 = v14;
          _os_log_impl(&dword_195925000, v12, OS_LOG_TYPE_DEFAULT, "   Verification failed with error: %@, starting renew for service: %@", buf, 0x16u);
        }

        [v11 setCredential:0];
        [*(a1 + 64) _renewCredentialsIfPossibleForAccount:v11 username:*(a1 + 32) inServiceIdentifier:*(a1 + 40) originalInServiceIdentifier:*(a1 + 96) serviceName:*(a1 + 88) failIfNotSilent:*(a1 + 120) renewHandler:*(a1 + 112) shortCircuitCompletionBlock:*(a1 + 104)];
      }

      else
      {
        v15 = [*(a1 + 64) _credentialForAccount:v11];
        v16 = [v15 token];
        v17 = sub_195956E14(v11);
        v18 = sub_19595BAB4(v11);
        v19 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v11;
          _os_log_impl(&dword_195925000, v19, OS_LOG_TYPE_DEFAULT, "Verification succeeded for account: %@", buf, 0xCu);
        }

        v20 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v16;
          _os_log_impl(&dword_195925000, v20, OS_LOG_TYPE_DEFAULT, "     => Token: %@", buf, 0xCu);
        }

        v21 = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v18;
          _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "    => SelfID: %@", buf, 0xCu);
        }

        if (![v17 length])
        {
          v22 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            sub_195964710();
          }

          v23 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1959648B8();
          }

          v24 = [MEMORY[0x1E69A6138] warning];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            sub_195964928(v11, v24);
          }

          v16 = 0;
        }

        v25 = im_primary_queue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19595E7B8;
        block[3] = &unk_1E7435928;
        v39 = *(a1 + 104);
        v32 = *(a1 + 72);
        v33 = *(a1 + 32);
        v34 = *(a1 + 40);
        v35 = v17;
        v36 = v18;
        v37 = v16;
        v38 = v11;
        v11 = v11;
        v26 = v16;
        v27 = v18;
        v28 = v17;
        dispatch_async(v25, block);

        [*(*(a1 + 64) + 8) removeObject:*(a1 + 72)];
      }

      goto LABEL_40;
    }

    v29 = [MEMORY[0x1E69A6138] warning];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1959649BC();
    }

    v30 = im_primary_queue();
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = sub_19595E764;
    v40[3] = &unk_1E7435900;
    v44 = *(a1 + 104);
    v41 = *(a1 + 72);
    v42 = *(a1 + 32);
    v43 = *(a1 + 40);
    dispatch_async(v30, v40);

    v11 = v44;
  }

  else
  {
    v11 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195925000, v11, OS_LOG_TYPE_DEFAULT, "  => Cancelled, bailing", buf, 2u);
    }
  }

LABEL_40:
}

uint64_t sub_19595E764(void *a1)
{
  BYTE2(v2) = 0;
  LOWORD(v2) = 256;
  return (*(a1[7] + 16))(a1[7], a1[4], a1[5], a1[6], 0, 0, 0, 0, 0, v2);
}

void sub_19595E7B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  v11 = [*(a1 + 80) accountPropertyForKey:*MEMORY[0x1E69A48E0]];
  v9 = [*(a1 + 80) accountPropertyForKey:*MEMORY[0x1E69A48F0]];
  BYTE2(v10) = 0;
  LOWORD(v10) = 256;
  (*(v8 + 16))(v8, v2, v3, v4, v5, v6, v7, v11, v9, v10);
}

void sub_19595F1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state, char a15)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_1959601BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, char a17)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_19596165C(uint64_t a1)
{
  v2 = sub_195956E14(*(a1 + 32));
  v3 = [*(*(a1 + 40) + 32) profileID];
  v4 = [v2 isEqualToIgnoringCase:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;
  }
}

void sub_1959617A0(uint64_t a1)
{
  v2 = sub_195956E14(*(a1 + 32));
  v3 = [*(*(a1 + 40) + 32) profileID];
  v4 = [v2 isEqualToIgnoringCase:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;
  }
}

CFTypeRef sub_195961890()
{
  result = *MEMORY[0x19A8B8560]("ACAccountTypeIdentifierIdentityServices", @"Accounts");
  qword_1ED768640 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_1959618E0()
{
  result = *MEMORY[0x19A8B8560]("ACAccountTypeIdentifierGameCenter", @"Accounts");
  qword_1ED768648 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_195961930()
{
  result = *MEMORY[0x19A8B8560]("ACAccountTypeIdentifierIDMS", @"Accounts");
  qword_1EAED7768 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_195961980()
{
  result = *MEMORY[0x19A8B8560]("kACRenewCredentialsShouldForceKey", @"Accounts");
  qword_1EAED7748 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_1959619D0()
{
  result = *MEMORY[0x19A8B8560]("kACRenewCredentialsReasonStringKey", @"Accounts");
  qword_1EAED7750 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_195961A20()
{
  result = *MEMORY[0x19A8B8560]("kACRenewCredentialsAppleIDServiceTypeKey", @"Accounts");
  qword_1EAED7760 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_195961A70()
{
  result = *MEMORY[0x19A8B8560]("kACRenewCredentialsProxiedAppBundleIDKey", @"Accounts");
  qword_1EAED7758 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFTypeRef sub_195961AC0()
{
  result = *MEMORY[0x19A8B8560]("kACRenewCredentialsShouldAvoidUIKey", @"Accounts");
  qword_1EAED7850 = result;
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_195961B10()
{
  qword_1EAED7860 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/PrivateFrameworks/IMDaemonCore.framework"];

  return MEMORY[0x1EEE66BB8]();
}

void sub_195961B70(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1959623A4(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_195925000, a2, OS_LOG_TYPE_DEBUG, "Signing message: %@", &v3, 0xCu);
}

void sub_195962420(uint64_t a1)
{
  v1 = [sub_1959310E8(a1) userIDArray];
  sub_195929314();
  sub_1959310C8(&dword_195925000, v2, v3, "   Single signing for: %@", v4, v5, v6, v7);
}

void sub_1959624A4()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_19596252C(uint64_t a1)
{
  v1 = [sub_1959310E8(a1) allKeys];
  sub_195929314();
  sub_1959310C8(&dword_195925000, v2, v3, "   result dictionary: %@", v4, v5, v6, v7);
}

void sub_1959625B0(uint64_t a1)
{
  v1 = [sub_1959310E8(a1) userIDArray];
  sub_195929314();
  sub_1959310C8(&dword_195925000, v2, v3, "   Multiple signatures for: %@", v4, v5, v6, v7);
}

void sub_1959626B0()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195962738()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1959627C0()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1959628B4()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = @"sigs";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_195925000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_195962950(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_195925000, a2, OS_LOG_TYPE_ERROR, "Failed verifying signature with error: %@", &v3, 0xCu);
}

void sub_1959629CC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_195929314();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_195925000, v1, OS_LOG_TYPE_FAULT, "Failed to create CoreTelephonyClient object! { self: %@, coreTelephonyClient: %@ }", v2, 0x16u);
}

void sub_195962AA4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195929314();
  _os_log_error_impl(&dword_195925000, v0, OS_LOG_TYPE_ERROR, "Unable to read SIM status { simStatusError: %@ }", v1, 0xCu);
}

void sub_195962BA0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195929314();
  _os_log_debug_impl(&dword_195925000, v0, OS_LOG_TYPE_DEBUG, "No value found for telephony network key { key: %@ }", v1, 0xCu);
}

void sub_195962C14()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195929314();
  _os_log_debug_impl(&dword_195925000, v0, OS_LOG_TYPE_DEBUG, "Selected subscription to check isPNRSupported { selectedSubscription: %@ }", v1, 0xCu);
}

void sub_195962DC4()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195962E4C()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195962ED4()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195962F5C()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195962FCC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_195929314();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_195925000, v1, OS_LOG_TYPE_DEBUG, "No valid subscriptions found { subscriptionInfo: %@, subscriptions: %@ }", v2, 0x16u);
}

void sub_195963050()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1959630C0()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195963170()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195929314();
  _os_log_debug_impl(&dword_195925000, v0, OS_LOG_TYPE_DEBUG, "Loaded phone number info { phoneNumberInfo: %@ }", v1, 0xCu);
}

void sub_1959631E4()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1959632AC(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 2048;
  v5 = a1 >> 32;
  _os_log_error_impl(&dword_195925000, log, OS_LOG_TYPE_ERROR, "_CTServerConnectionIsEmergencyNumber - encountered error %d %ld", v3, 0x12u);
}

void sub_1959633C8(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FTEmbeddedReachability.m" lineNumber:190 description:@"connectionRequired called with NULL reachabilityRef"];
}

void sub_195963450(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FTEmbeddedReachability.m" lineNumber:199 description:@"currentNetworkStatus called with NULL reachabilityRef"];
}

void sub_1959634D8()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = @"v";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_195925000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_195963574(void *a1)
{

  objc_end_catch();
}

void sub_195963698()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195963708()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195929314();
  _os_log_fault_impl(&dword_195925000, v0, OS_LOG_TYPE_FAULT, "Failed to parse x-apple-server-time %@", v1, 0xCu);
}

void sub_19596377C(int *a1, id *a2, NSObject *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [*a2 domain];
  v7 = [*a2 code];
  v8 = [*a2 localizedDescription];
  v9 = [*a2 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x1E696A990]];
  v11[0] = 67110146;
  v11[1] = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 1024;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  v18 = 2112;
  v19 = v10;
  _os_log_error_impl(&dword_195925000, a3, OS_LOG_TYPE_ERROR, "FTMessageDelivery failed! (HTTP Status Code: %d) Error (%@:%d): %@ %@", v11, 0x2Cu);
}

void sub_1959638B4()
{
  sub_195929314();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1959639CC()
{
  sub_195929314();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195963A48()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195963AB8()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195963B28()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195963C54()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195963CDC()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195963D64()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195963DEC()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195963E74()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195963F24(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_195925000, log, OS_LOG_TYPE_FAULT, "Server Bag provided us with a retry interval of %f ", &v3, 0x16u);
}

void sub_195963FAC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_195925000, a2, OS_LOG_TYPE_ERROR, "Message not being delivered, missing some required keys: %@", &v2, 0xCu);
}

void sub_1959640A4()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_19596412C()
{
  v5 = 138412546;
  sub_195929340();
  sub_1959310AC(&dword_195925000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_1959641B4()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = @"x-protocol-version";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_195925000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_195964264()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = @"accept-language";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_195925000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_195964390()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195961B58();
  _os_log_debug_impl(&dword_195925000, v0, OS_LOG_TYPE_DEBUG, "Invalid username %@ or account %@", v1, 0x16u);
}

void sub_195964408()
{
  sub_195961B8C();
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_195964530()
{
  sub_195961B8C();
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1959645AC()
{
  sub_195961B8C();
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_195964628()
{
  sub_195961B58();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195964698()
{
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1959647C8()
{
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195964840()
{
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1959648B8()
{
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195964928(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountProperties];
  sub_195929314();
  _os_log_error_impl(&dword_195925000, a2, OS_LOG_TYPE_ERROR, "*** Account properties: %@", v4, 0xCu);
}

void sub_1959649BC()
{
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195964A9C()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195961B58();
  _os_log_fault_impl(&dword_195925000, v0, OS_LOG_TYPE_FAULT, "Failed saving account %@ with error: %@", v1, 0x16u);
}