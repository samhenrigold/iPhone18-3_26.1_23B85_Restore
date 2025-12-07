@interface BAASupport
+ (int)getCertificateExpirationDate:(double *)date;
+ (int)getCertificates:(id *)certificates;
+ (int)issueNewCertificate;
+ (int)prepareLazily:(BOOL)lazily;
+ (void)initialize;
+ (void)issueNewCertificate;
@end

@implementation BAASupport

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDBA020]);
    v5 = qword_2A18BD330;
    qword_2A18BD330 = v4;

    v6 = objc_alloc_init(MEMORY[0x29EDBA020]);
    v7 = qword_2A18BD338;
    qword_2A18BD338 = v6;

    v8 = objc_alloc_init(Timer);
    v9 = qword_2A18BD340;
    qword_2A18BD340 = v8;
  }
}

void __28__BAASupport_prepareLazily___block_invoke()
{
  v46 = *MEMORY[0x29EDCA608];
  v0 = _cfgBaaCertRetryPeriods;
  _cfgBaaCertRetryPeriods = &unk_2A1DEB290;

  v1 = 0x2A18BD000uLL;
  v2 = 0x2A1396000;
  v3 = 0x2A1396000;
  if ([qword_2A18BD348 isInternal])
  {
    v4 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v5 = [v4 objectForKey:@"sseBAACertValidity"];

    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v5;
          _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertValidity=%@", buf, 0xCu);
        }

        _cfgBaaCertValidity = [v5 unsignedLongValue];
        if (_cfgBaaCertValidity <= 0x3C)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            __28__BAASupport_prepareLazily___block_invoke_cold_1();
          }

          _cfgBaaCertValidity = 31536000;
        }
      }
    }

    v6 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v7 = [v6 objectForKey:@"sseBAACertRenewPeriod"];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v7;
          _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertRenewPeriod=%@", buf, 0xCu);
        }

        _cfgBaaCertRenewPeriod = [v7 unsignedLongValue];
      }
    }

    if (_cfgBaaCertRenewPeriod >= _cfgBaaCertValidity)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        __28__BAASupport_prepareLazily___block_invoke_cold_2();
      }

      _cfgBaaCertRenewPeriod = 0;
    }

    v8 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v9 = [v8 objectForKey:@"sseBAACertRenewPeriodRatio"];

    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v45 = v9;
          _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertRenewPeriodRatio=%@", buf, 0xCu);
        }

        _cfgBaaCertRenewPeriodRatio = [v9 unsignedIntValue];
      }
    }

    if (_cfgBaaCertRenewPeriod + _cfgBaaCertRenewPeriod * _cfgBaaCertRenewPeriodRatio / 0x64 >= _cfgBaaCertValidity)
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        __28__BAASupport_prepareLazily___block_invoke_cold_3();
      }

      _cfgBaaCertRenewPeriodRatio = 0;
    }

    v10 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v11 = [v10 objectForKey:@"sseBAACertRetryPeriods"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 count])
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v11;
            _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertRetryPeriods=%@", buf, 0xCu);
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v28 objects:buf count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v29 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v28 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || ![v17 unsignedIntValue])
                {
                  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
                  {
                    __28__BAASupport_prepareLazily___block_invoke_cold_4();
                  }

                  v1 = 0x2A18BD000uLL;
                  goto LABEL_46;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:buf count:16];
              v1 = 0x2A18BD000;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          objc_storeStrong(&_cfgBaaCertRetryPeriods, v11);
LABEL_46:
          v3 = 0x2A1396000uLL;
        }
      }
    }

    v18 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v19 = [v18 objectForKey:@"sseBAACertForcedFailures"];

    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 138412290;
          v33 = v19;
          _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertForcedFailures=%@", v32, 0xCu);
        }

        _cfgBaaCertForcedFailures = [v19 unsignedIntValue];
      }
    }

    v20 = [MEMORY[0x29EDB8E78] standardUserDefaults];
    v21 = [v20 objectForKey:@"sseBAACertDeleteOnStart"];

    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 138412290;
          v33 = v21;
          _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: using NSUserDefaults value sseBAACertDeleteOnStart=%@", v32, 0xCu);
        }

        *(v3 + 1632) = [v21 BOOLValue];
      }
    }

    v2 = 0x2A1396000uLL;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v22 = _cfgBaaCertValidity;
    v23 = _cfgBaaCertRenewPeriod;
    v24 = *(v2 + 1624);
    v25 = [_cfgBaaCertRetryPeriods componentsJoinedByString:{@", "}];
    v26 = *(v3 + 1632);
    *v32 = 134219266;
    v33 = v22;
    v34 = 2048;
    v35 = v23;
    v36 = 1024;
    v37 = v24;
    v38 = 2112;
    v39 = v25;
    v40 = 1024;
    v41 = _cfgBaaCertForcedFailures;
    v42 = 1024;
    v43 = v26;
    _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "cacheConfiguration: validity=%llu, renewPeriod=%llu, renewPeriodRatio=%u, retryPeriods=(%@), forcedFailures=%u, deleteOnStart=%u", v32, 0x32u);
  }

  if (*(v3 + 1632) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296B96000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Forced delete of existing certificates", buf, 2u);
    }

    [*(v1 + 840) setSigKey:3 expirationDate:0 keyData:0 certificates:0];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, activationStateHandler, *MEMORY[0x29EDC5CF0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (qword_2A18BD360 != -1)
  {
    __28__BAASupport_prepareLazily___block_invoke_cold_5();
  }

  if (SCNetworkReachabilitySetCallback(qword_2A18BD358, networkReachabilityHandler, 0))
  {
    if (qword_2A18BD360 != -1)
    {
      __28__BAASupport_prepareLazily___block_invoke_cold_5();
    }

    if (!SCNetworkReachabilitySetDispatchQueue(qword_2A18BD358, MEMORY[0x29EDCA578]))
    {
      __28__BAASupport_prepareLazily___block_invoke_cold_7();
    }
  }

  else
  {
    __28__BAASupport_prepareLazily___block_invoke_cold_8();
  }
}

+ (int)getCertificateExpirationDate:(double *)date
{
  if (date)
  {
    if (+[BAASupport prepare])
    {
      +[BAASupport getCertificateExpirationDate:];
      return v6;
    }

    else
    {
      if (qword_2A18BD328)
      {
        [qword_2A18BD328 timeIntervalSinceReferenceDate];
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *date = v4;
    }
  }

  else
  {
    [BAASupport getCertificateExpirationDate:?];
    return v7;
  }

  return result;
}

+ (int)getCertificates:(id *)certificates
{
  if (certificates)
  {
    if (+[BAASupport prepare])
    {
      +[BAASupport getCertificates:];
      return v5;
    }

    else
    {
      result = [qword_2A18BD348 getSigKeyCertificates:3 certificates:certificates];
      if (result)
      {
        +[BAASupport getCertificates:];
        return v6;
      }
    }
  }

  else
  {
    [BAASupport getCertificates:?];
    return v7;
  }

  return result;
}

+ (int)issueNewCertificate
{
  [qword_2A18BD338 lock];
  v2 = issueNewBAACertificate();
  if (v2)
  {
    +[BAASupport issueNewCertificate];
  }

  [qword_2A18BD338 unlock];
  return v2;
}

+ (int)prepareLazily:(BOOL)lazily
{
  lazilyCopy = lazily;
  v37 = *MEMORY[0x29EDCA608];
  v30 = 0;
  if (qword_2A18BD350 != -1)
  {
    dispatch_once(&qword_2A18BD350, &__block_literal_global);
  }

  [qword_2A18BD330 lock];
  if (lazilyCopy && _MergedGlobals && ([qword_2A18BD340 isActive] & 1) != 0)
  {
    v9 = -15;
  }

  else if (qword_2A18BD348)
  {
    v4 = [qword_2A18BD348 getSigKeyExpDate:3 expirationDate:&v30];
    if (v4)
    {
      v9 = v4;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        OUTLINED_FUNCTION_7();
        v34 = v13;
        OUTLINED_FUNCTION_9();
        v35 = &unk_296B9B506;
        OUTLINED_FUNCTION_3();
        v36 = 866;
        OUTLINED_FUNCTION_8(&dword_296B96000, MEMORY[0x29EDCA988], v14, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v15, v16, v17, v18, v29, v30);
      }
    }

    else
    {
      if (v30)
      {
        v5 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceReferenceDate:v30];
      }

      else
      {
        v5 = 0;
      }

      v6 = qword_2A18BD328;
      qword_2A18BD328 = v5;

      if (qword_2A18BD328 && ([qword_2A18BD328 timeIntervalSinceNow], v7 > 0.0))
      {
        v8 = dispatch_get_global_queue(21, 0);
        dispatch_async(v8, &__block_literal_global_21);

        v9 = 0;
      }

      else
      {
        [qword_2A18BD338 lock];
        if (qword_2A18BD328 && ([qword_2A18BD328 timeIntervalSinceNow], v10 > 0.0))
        {
          v9 = 0;
        }

        else
        {
          v11 = issueNewBAACertificate();
          v9 = v11;
          if (((v11 + 16) > 5 || ((1 << (v11 + 16)) & 0x31) == 0) && v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v32 = "err == 0 ";
            v33 = 2048;
            v34 = v9;
            OUTLINED_FUNCTION_9();
            v35 = &unk_296B9B506;
            OUTLINED_FUNCTION_3();
            v36 = 889;
            OUTLINED_FUNCTION_8(&dword_296B96000, MEMORY[0x29EDCA988], v19, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v20, v21, v22, v23, v29, v30);
          }
        }

        [qword_2A18BD338 unlock];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_4();
      v35 = &unk_296B9B506;
      OUTLINED_FUNCTION_3();
      v36 = 863;
      OUTLINED_FUNCTION_8(&dword_296B96000, MEMORY[0x29EDCA988], v24, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v25, v26, v27, v28, v29, v30);
    }

    v9 = -6;
  }

  [qword_2A18BD330 unlock];
  return v9;
}

void __28__BAASupport_prepareLazily___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __28__BAASupport_prepareLazily___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __28__BAASupport_prepareLazily___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __28__BAASupport_prepareLazily___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
}

void __28__BAASupport_prepareLazily___block_invoke_cold_7()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }
}

void __28__BAASupport_prepareLazily___block_invoke_cold_8()
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }
}

+ (void)getCertificateExpirationDate:.cold.1()
{
  OUTLINED_FUNCTION_10();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *v0 = v1;
}

+ (void)getCertificateExpirationDate:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *a1 = -4;
}

+ (void)getCertificates:.cold.1()
{
  OUTLINED_FUNCTION_10();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *v0 = v1;
}

+ (void)getCertificates:.cold.2()
{
  OUTLINED_FUNCTION_10();
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *v0 = v1;
}

+ (void)getCertificates:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v3, v4, v5, v6);
  }

  *a1 = -4;
}

+ (void)issueNewCertificate
{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_5(&dword_296B96000, MEMORY[0x29EDCA988], v0, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n", v1, v2, v3, v4);
  }
}

@end