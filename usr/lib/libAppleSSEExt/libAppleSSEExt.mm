void __copy_helper_block_e8_32b40w(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 7);

  objc_copyWeak((a1 + 40), (a2 + 40));
}

void __destroy_helper_block_e8_32s40w(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  v2 = *(a1 + 32);
}

void activationStateHandler()
{
  v0 = dispatch_get_global_queue(21, 0);
  dispatch_async(v0, &__block_literal_global_78);
}

void networkReachabilityHandler(uint64_t a1, unsigned int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "networkReachabilityHandler(): flags = 0x%x", v5, 8u);
  }

  if ((a2 & 2) != 0)
  {
    v3 = (a2 >> 4) & 1;
    if ((a2 & 0x28) == 0)
    {
      LOBYTE(v3) = 1;
    }

    if ((a2 & 0x40004) != 4 || (v3 & 1) == 0)
    {
      v4 = dispatch_get_global_queue(21, 0);
      dispatch_async(v4, &__block_literal_global_83);
    }
  }
}

uint64_t issueNewBAACertificate()
{
  v76[7] = *MEMORY[0x29EDCA608];
  v0 = isDeviceReadyToIssueCertificate();
  v1 = v0;
  if ((v0 + 16) <= 5 && ((1 << (v0 + 16)) & 0x31) != 0)
  {
LABEL_5:
    v3 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_35;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      issueNewBAACertificate_cold_1();
    }

    goto LABEL_5;
  }

  if (!qword_2A18BD348)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      issueNewBAACertificate_cold_10();
    }

    v6 = 0;
    v32 = 0;
    v33 = 0;
    v1 = 4294967290;
    goto LABEL_31;
  }

  v42 = 0;
  v43 = 0;
  v41 = 0;
  v1 = [qword_2A18BD348 generateSigKey:3 keyData:&v43 attestation:&v42 pubKey:&v41];
  v6 = v43;
  v7 = v42;
  v8 = v41;
  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      issueNewBAACertificate_cold_2();
    }

    goto LABEL_53;
  }

  v9 = v7;
  v10 = v8;
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = [MEMORY[0x29EDB8DE8] array];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy_;
  v54 = __Block_byref_object_dispose_;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = dispatch_semaphore_create(0);
  if (!v9)
  {
    issueNewBAACertificate_cold_8();
    goto LABEL_20;
  }

  if (!v10)
  {
    issueNewBAACertificate_cold_7();
    goto LABEL_20;
  }

  v11 = isDeviceReadyToIssueCertificate();
  v12 = v63;
  *(v63 + 6) = v11;
  if (!v11)
  {
    if (_cfgBaaCertForcedFailures)
    {
      v13 = _MergedGlobals;
      if (_cfgBaaCertForcedFailures - 1 >= _MergedGlobals)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v13 + 1;
          _os_log_error_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Forcing certificate issuance failure (attempt = %u)", buf, 8u);
          v13 = _MergedGlobals;
          v12 = v63;
        }

        v26 = 0;
        v27 = 0;
        _MergedGlobals = v13 + 1;
        *(v12 + 6) = -15;
        if (v13 == -1)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    v14 = *MEMORY[0x29EDC0FE8];
    v75[0] = *MEMORY[0x29EDC0F68];
    v75[1] = v14;
    v76[0] = MEMORY[0x29EDB8EB0];
    v76[1] = MEMORY[0x29EDB8EA8];
    v15 = *MEMORY[0x29EDC0F60];
    v75[2] = *MEMORY[0x29EDC0F58];
    v75[3] = v15;
    v16 = *MEMORY[0x29EDC0FD8];
    v76[4] = MEMORY[0x29EDB8EB0];
    v17 = *MEMORY[0x29EDC0FE0];
    v75[4] = v16;
    v75[5] = v17;
    v76[2] = v9;
    v76[3] = v10;
    v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:_cfgBaaCertValidity / 0x3CuLL];
    v76[5] = v18;
    v75[6] = *MEMORY[0x29EDC0FC0];
    v19 = *MEMORY[0x29EDC0F98];
    v74[0] = *MEMORY[0x29EDC0F78];
    v74[1] = v19;
    v20 = *MEMORY[0x29EDC0F88];
    v74[2] = *MEMORY[0x29EDC0FA8];
    v74[3] = v20;
    v74[4] = *MEMORY[0x29EDC0FC8];
    v21 = [MEMORY[0x29EDB8D80] arrayWithObjects:v74 count:5];
    v76[6] = v21;
    v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v76 forKeys:v75 count:7];

    v23 = dispatch_get_global_queue(0, 0);
    *buf = MEMORY[0x29EDCA5F8];
    v67 = 3254779904;
    v68 = __createBAACertificates_block_invoke;
    v69 = &__block_descriptor_64_e8_32r40r48r56r_e43_v32__0____SecKey__8__NSArray_16__NSError_24l;
    v70 = &v62;
    v71 = &v50;
    v72 = &v56;
    v73 = &v44;
    DeviceIdentityIssueClientCertificateWithCompletion();

    v24 = v45[5];
    v25 = dispatch_time(0, 90000000000);
    if (dispatch_semaphore_wait(v24, v25))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        issueNewBAACertificate_cold_4();
      }

      ++_MergedGlobals;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        issueNewBAACertificate_cold_5();
      }

      *(v63 + 6) = -15;

      goto LABEL_20;
    }

    v28 = *(v63 + 6);
    if (!v28)
    {
      _MergedGlobals = 0;
      v26 = v57[5];
      v29 = v26;
      v27 = v51[5];
      v30 = v27;
      *(v63 + 6) = 0;

      goto LABEL_27;
    }

    issueNewBAACertificate_cold_6(v28, v22);
LABEL_20:
    v26 = 0;
    v27 = 0;
    goto LABEL_27;
  }

  issueNewBAACertificate_cold_3(v11, v76, buf);
  v26 = v76[0];
  v27 = *buf;
LABEL_27:
  if (_MergedGlobals)
  {
LABEL_28:
    v31 = dispatch_get_global_queue(21, 0);
    dispatch_async(v31, &__block_literal_global_95);
  }

LABEL_29:
  v1 = *(v63 + 6);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
  v32 = v26;
  v33 = v27;
  if (!v1)
  {
    v34 = v6;
    v35 = v32;
    v36 = v33;

    v1 = 0;
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    issueNewBAACertificate_cold_9();
  }

LABEL_53:
  v6 = 0;
  v32 = 0;
  v33 = 0;
LABEL_31:
  v5 = v6;
  v4 = v32;
  v37 = v33;
  v3 = v37;
  if (v1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      issueNewBAACertificate_cold_11();
    }
  }

  else
  {
    v38 = qword_2A18BD348;
    if (qword_2A18BD348)
    {
      [v37 timeIntervalSinceReferenceDate];
      v1 = [v38 setSigKey:3 expirationDate:v39 keyData:v5 certificates:v4];
      if (v1)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          issueNewBAACertificate_cold_12();
        }
      }

      else
      {
        objc_storeStrong(&qword_2A18BD328, v33);
        scheduleBAACertificateRenewalTimer();
        v1 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        issueNewBAACertificate_cold_13();
      }

      v1 = 4294967290;
    }
  }

LABEL_35:
  [qword_2A18BD348 confirmSigKey:3 status:v1];

  return v1;
}

void sub_296B98670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void checkBAACertificateRenewal()
{
  v6 = *MEMORY[0x29EDCA608];
  if (qword_2A18BD328)
  {
    [qword_2A18BD338 lock];
    [qword_2A18BD328 timeIntervalSinceNow];
    v1 = v0;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v2 = 134218240;
      v3 = v1;
      v4 = 2048;
      v5 = certificateRenewPeriod();
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "checkBAACertificateRenewal(): remaining = %f (renew period = %llu)", &v2, 0x16u);
    }

    if (v1 <= certificateRenewPeriod())
    {
      issueNewBAACertificate();
    }

    else
    {
      scheduleBAACertificateRenewalTimer();
    }

    [qword_2A18BD338 unlock];
  }
}

uint64_t __activationStateHandler_block_invoke()
{
  isDeviceActivated(1);

  return +[BAASupport prepareLazily];
}

uint64_t isDeviceActivated(int a1)
{
  objc_sync_enter(0);
  if (isDeviceActivated_wasRead != 1 || a1 != 0)
  {
    isDeviceActivated_wasRead = 0;
    v9 = 0;
    v3 = MAEGetActivationStateWithError();
    v4 = 0;
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        isDeviceActivated_cold_1(v5);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        isDeviceActivated_cold_2();
      }

      v6 = 4294967290;
      goto LABEL_17;
    }

    isDeviceActivated_activated = [v3 isEqualToString:*MEMORY[0x29EDC5CE8]];
    isDeviceActivated_wasRead = 1;
  }

  if (isDeviceActivated_activated)
  {
    v6 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "isDeviceActivated(): Not activated", v8, 2u);
    }

    v6 = 4294967285;
  }

LABEL_17:
  objc_sync_exit(0);
  return v6;
}

void __getNetworkReachability_block_invoke()
{
  v1 = *MEMORY[0x29EDCA608];
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  qword_2A18BD358 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x29EDB8ED8], &address);
  if (!qword_2A18BD358)
  {
    __getNetworkReachability_block_invoke_cold_1();
  }
}

void scheduleBAACertificateRenewalTimer()
{
  v0 = dispatch_get_global_queue(21, 0);
  dispatch_async(v0, &__block_literal_global_101);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __createBAACertificates_block_invoke(void *a1, const void *a2, id a3, void *a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __createBAACertificates_block_invoke_cold_1(v8);
    }

    ++_MergedGlobals;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __createBAACertificates_block_invoke_cold_2();
    }

    *(*(a1[4] + 8) + 24) = -15;
  }

  else if ([v7 count])
  {
    v26 = a2;
    v9 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:_cfgBaaCertValidity];
    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(a1[6] + 8) + 40);
          v18 = MEMORY[0x29EDB8DA0];
          BytePtr = SecCertificateGetBytePtr();
          v20 = [v18 dataWithBytes:BytePtr length:SecCertificateGetLength()];
          [v17 addObject:v20];

          v21 = MEMORY[0x29EDB8DB0];
          SecCertificateNotValidAfter();
          v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
          v23 = [*(*(a1[5] + 8) + 40) earlierDate:v22];
          v24 = *(a1[5] + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = v23;
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    a2 = v26;
    v7 = v27;
  }

  else
  {
    __createBAACertificates_block_invoke_cold_3(a1);
  }

  dispatch_semaphore_signal(*(*(a1[7] + 8) + 40));
  if (a2)
  {
    CFRelease(a2);
  }
}

void __copy_helper_block_e8_32r40r48r56r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  v4 = *(a2 + 56);

  _Block_object_assign((a1 + 56), v4, 8);
}

void __destroy_helper_block_e8_32r40r48r56r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void __scheduleBAACertificateIssuanceRetryTimer_block_invoke()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = _MergedGlobals;
  if (_MergedGlobals)
  {
    v1 = _cfgBaaCertRetryPeriods;
    if (_cfgBaaCertRetryPeriods)
    {
      v2 = [_cfgBaaCertRetryPeriods count];
      if (v2 >= v0)
      {
        v3 = v0;
      }

      else
      {
        v3 = v2;
      }

      v4 = [v1 objectAtIndexedSubscript:v3 - 1];
      v5 = [v4 unsignedIntValue];
    }

    else
    {
      v5 = -1;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v6 = _MergedGlobals;
      v7 = v5;
      v8 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:v5];
      v9[0] = 67109634;
      v9[1] = v6;
      v10 = 1024;
      v11 = v5;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "scheduleBAACertificateIssuanceRetryTimer(): attempt:%u, interval:%u, scheduled to %@", v9, 0x18u);
    }

    else
    {
      v7 = v5;
    }

    [qword_2A18BD340 resetWithTimeInterval:&__block_literal_global_98 block:v7];
  }
}

uint64_t __scheduleBAACertificateIssuanceRetryTimer_block_invoke_96()
{
  [qword_2A18BD338 lock];
  if (_MergedGlobals)
  {
    issueNewBAACertificate();
  }

  v0 = qword_2A18BD338;

  return [v0 unlock];
}

void *__scheduleBAACertificateRenewalTimer_block_invoke()
{
  v8 = *MEMORY[0x29EDCA608];
  result = qword_2A18BD328;
  if (qword_2A18BD328)
  {
    [qword_2A18BD328 timeIntervalSinceNow];
    v2 = v1;
    v3 = certificateRenewPeriod();
    if (v2 - v3 >= 0.0)
    {
      v4 = v2 - v3;
    }

    else
    {
      v4 = 0.0;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:v4];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "scheduleBAACertificateRenewalTimer(): scheduled to %@", &v6, 0xCu);
    }

    return [qword_2A18BD340 resetWithTimeInterval:&__block_literal_global_104 block:v4];
  }

  return result;
}

uint64_t certificateRenewPeriod()
{
  v11 = *MEMORY[0x29EDCA608];
  if (([qword_2A18BD328 isEqualToDate:certificateRenewPeriod_computedForCertExpDate] & 1) == 0)
  {
    objc_storeStrong(&certificateRenewPeriod_computedForCertExpDate, qword_2A18BD328);
    [certificateRenewPeriod_computedForCertExpDate timeIntervalSinceReferenceDate];
    v9 = 0u;
    v10 = 0u;
    ccsha256_di();
    ccdigest();
    certificateRenewPeriod_computedRenewPeriod = (_cfgBaaCertRenewPeriod + (_cfgBaaCertRenewPeriod * _cfgBaaCertRenewPeriodRatio / 0x64) * (0 * 5.42101086e-20));
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218752;
      v2 = _cfgBaaCertRenewPeriod;
      v3 = 1024;
      v4 = _cfgBaaCertRenewPeriodRatio;
      v5 = 2048;
      v6 = 0 * 5.42101086e-20;
      v7 = 2048;
      v8 = certificateRenewPeriod_computedRenewPeriod;
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "certificateRenewPeriod: renewPeriod=%llu, renewPeriodRatio=%u, x=%f, computedRenewPeriod=%llu", buf, 0x26u);
    }
  }

  return certificateRenewPeriod_computedRenewPeriod;
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

uint64_t isDeviceReadyToIssueCertificate()
{
  v28 = *MEMORY[0x29EDCA608];
  HIDWORD(v22) = 0;
  if (qword_2A18BD360 != -1)
  {
    dispatch_once(&qword_2A18BD360, &__block_literal_global_80);
  }

  if (!qword_2A18BD358)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_4();
    v26 = &unk_296B9B506;
    OUTLINED_FUNCTION_3();
    v27 = 282;
    v8 = MEMORY[0x29EDCA988];
LABEL_27:
    OUTLINED_FUNCTION_8(&dword_296B96000, v8, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7, v21, v22);
    goto LABEL_19;
  }

  if (SCNetworkReachabilityGetFlags(qword_2A18BD358, &v22 + 1))
  {
    v0 = HIDWORD(v22);
    if ((v22 & 0x200000000) == 0)
    {
      goto LABEL_30;
    }

    v1 = (HIDWORD(v22) >> 4) & 1;
    if ((v22 & 0x2800000000) == 0)
    {
      v1 = 1;
    }

    if ((HIDWORD(v22) & 0x40004) == 4 && v1)
    {
LABEL_30:
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v24 = v0;
        _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "isNetworkReachable(): Not reachable (flags = 0x%x)", buf, 8u);
      }

      return 4294967284;
    }

    else
    {
      result = isDeviceActivated(0);
      if (result == -11)
      {
        return 4294967285;
      }

      else if (result)
      {
        v9 = result;
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          OUTLINED_FUNCTION_7();
          v25 = v15;
          OUTLINED_FUNCTION_9();
          v26 = &unk_296B9B506;
          OUTLINED_FUNCTION_3();
          v27 = 358;
          OUTLINED_FUNCTION_8(&dword_296B96000, MEMORY[0x29EDCA988], v16, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v17, v18, v19, v20, v21, v22);
        }

        return v9;
      }
    }

    return result;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4();
    v26 = &unk_296B9B506;
    OUTLINED_FUNCTION_3();
    v27 = 285;
    v8 = MEMORY[0x29EDCA988];
    goto LABEL_27;
  }

LABEL_19:
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    OUTLINED_FUNCTION_7();
    v25 = -6;
    OUTLINED_FUNCTION_9();
    v26 = &unk_296B9B506;
    OUTLINED_FUNCTION_3();
    v27 = 352;
    OUTLINED_FUNCTION_8(&dword_296B96000, MEMORY[0x29EDCA988], v10, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v11, v12, v13, v14, v21, v22);
  }

  return 4294967290;
}

void issueNewBAACertificate_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_3(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v6, v7, v8, v9);
  }

  *a3 = 0;
  *a2 = 0;
}

void issueNewBAACertificate_cold_4()
{
  v1 = *MEMORY[0x29EDCA608];
  v0[0] = 67109120;
  v0[1] = _MergedGlobals;
  _os_log_error_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "DeviceIdentityIssueClientCertificateWithCompletion(attempt = %u) timeout", v0, 8u);
}

void issueNewBAACertificate_cold_5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_6(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v4, v5, v6, v7);
  }
}

void issueNewBAACertificate_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }

  OUTLINED_FUNCTION_11();
}

void issueNewBAACertificate_cold_8()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }

  OUTLINED_FUNCTION_11();
}

void issueNewBAACertificate_cold_9()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_11()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_12()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void issueNewBAACertificate_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void isDeviceActivated_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "MAEGetActivationStateWithError() -> %@", &v1, 0xCu);
}

void isDeviceActivated_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __getNetworkReachability_block_invoke_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }
}

void __createBAACertificates_block_invoke_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1[0] = 67109378;
  v1[1] = _MergedGlobals;
  v2 = 2112;
  v3 = a1;
  _os_log_error_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "DeviceIdentityIssueClientCertificateWithCompletion(attempt = %u) failed: %@", v1, 0x12u);
}

void __createBAACertificates_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __createBAACertificates_block_invoke_cold_3(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *(*(*(a1 + 32) + 8) + 24) = -6;
}