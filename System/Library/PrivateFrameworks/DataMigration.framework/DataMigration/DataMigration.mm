void DMReportMigrationFailure()
{
  if (os_variant_has_internal_content())
  {
    v1 = getprogname();
    getpid();
    _DMLogFunc(v0, 5, @"DMReportMigrationFailure called by process: %s[%d]", v2, v3, v4, v5, v6, v1);
    v7 = +[DMConnection connection];
    v14 = v7;
    if (v7)
    {
      [v7 reportMigrationFailure];
    }

    else
    {
      _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v8, v9, v10, v11, v12, v13);
    }
  }
}

void DMForceMigrationOnNextReboot()
{
  v1 = getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMForceMigrationOnNextReboot called by process: %s[%d]", v2, v3, v4, v5, v6, v1);
  v7 = +[DMConnection connection];
  v14 = v7;
  if (v7)
  {
    [v7 forceMigrationOnNextRebootWithUserDataDisposition:0 context:0];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v8, v9, v10, v11, v12, v13);
  }
}

void DMForceMigrationOnNextRebootWithUserDataDisposition(uint64_t a1, uint64_t a2)
{
  v5 = getprogname();
  getpid();
  _DMLogFunc(v2, 5, @"DMForceMigrationOnNextRebootWithUserDataDisposition called by process: %s[%d]", v6, v7, v8, v9, v10, v5);
  v11 = +[DMConnection connection];
  v18 = v11;
  if (v11)
  {
    [v11 forceMigrationOnNextRebootWithUserDataDisposition:a1 context:a2];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!", v12, v13, v14, v15, v16, v17);
  }
}

uint64_t DMIsMigrationNeeded()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 isMigrationNeeded];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v10);
    v8 = 0;
  }

  return v8;
}

uint64_t DMGetUserDataDisposition()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 userDataDisposition];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v10);
    v8 = 0;
  }

  return v8;
}

uint64_t DMCopyUserDataDispositionAuxiliaryData()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 userDataDispositionAuxiliaryData];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v10);
    v8 = 0;
  }

  return v8;
}

void *DMGetPreviousBuildVersion()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 previousBuildVersion];
    v9 = v8;
    if (v8)
    {
      CFAutorelease(v8);
    }
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v11);
    v9 = 0;
  }

  return v9;
}

uint64_t DMCopyOrderedPluginIndentifiers()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 orderedPluginIdentifiers];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v10);
    v8 = 0;
  }

  return v8;
}

uint64_t DMPerformMigrationReturningAfterPlugin(uint64_t a1)
{
  v3 = getprogname();
  getpid();
  _DMLogFunc(v1, 5, @"DMPerformMigrationReturningAfterPlugin called by process: %s[%d], plugin %@", v4, v5, v6, v7, v8, v3);

  return _DMPerformMigration(1, a1, 0);
}

uint64_t _DMPerformMigration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = +[DMEnvironment sharedInstance];
    if ([v7 deviceModeIsSharediPad])
    {
      v8 = +[DMEnvironment sharedInstance];
      v9 = [v8 userSessionIsLoginWindow];

      if (v9)
      {
        goto LABEL_8;
      }

      v10 = +[DMEnvironment sharedInstance];
      v7 = [v10 buildVersion];

      v11 = +[DMEnvironment sharedInstance];
      v12 = [v11 lastBuildVersionPref];

      if ([DMEnvironment isBuildVersion:v7 equalToBuildVersion:v12])
      {
        _DMLogFunc(v3, 5, @"We are in EDU mode and current build version(%@) is equal to last build version(%@). Skip migration.", v13, v14, v15, v16, v17, v7);

LABEL_13:
        v24 = 1;
        goto LABEL_14;
      }
    }
  }

LABEL_8:
  v7 = +[DMConnection connection];
  if (!v7)
  {
    _DMLogFunc(v3, 3, @"Can't connect to migrator service!", v18, v19, v20, v21, v22, v26);
    goto LABEL_13;
  }

  v23 = objc_alloc_init(DMClientAPIController);
  v24 = [(DMClientAPIController *)v23 _migrateWithConnection:v7 checkNecessity:a1 lastRelevantPlugin:a2 testMigrationInfrastructureOnly:a3];
  if ((v24 & 1) == 0)
  {
    DMReportMigrationFailure();
  }

LABEL_14:
  return v24;
}

uint64_t DMPerformMigrationIfNeeded()
{
  v1 = getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMPerformMigrationIfNeeded called by process: %s[%d]", v2, v3, v4, v5, v6, v1);

  return _DMPerformMigration(1, 0, 0);
}

uint64_t DMPerformMigration()
{
  v1 = getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMPerformMigration called by process: %s[%d], reason: %@", v2, v3, v4, v5, v6, v1);

  return _DMPerformMigration(0, 0, 0);
}

uint64_t DMTestPerformMigrationInfrastructure()
{
  v1 = getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMTestPerformMigrationInfrastructure called by process: %s[%d]", v2, v3, v4, v5, v6, v1);

  return _DMPerformMigration(0, 0, 1);
}

void DMProgressHostIsReady()
{
  v1 = getprogname();
  getpid();
  _DMLogFunc(v0, 5, @"DMProgressHostIsReady called by process: %s[%d]", v2, v3, v4, v5, v6, v1);
  v7 = objc_alloc_init(DMClientAPIController);
  v14 = v7;
  if (v7)
  {
    [(DMClientAPIController *)v7 progressHostIsReady];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Failed to create client API controller!", v8, v9, v10, v11, v12, v13);
  }
}

void DMChangeGraphicalProgressVisibility(uint64_t a1, void *a2)
{
  v4 = a2;
  v10 = +[DMConnection connection];
  if (v10)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __DMChangeGraphicalProgressVisibility_block_invoke;
    v11[3] = &unk_2788550A8;
    v13 = a1;
    v12 = v4;
    [v10 changeVisibility:a1 completion:v11];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!", v5, v6, v7, v8, v9, v11[0]);
  }
}

uint64_t __DMChangeGraphicalProgressVisibility_block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  _DMLogFunc(v1, 5, @"Data migrator visibility change to %@ completed with success: %s.", v4, v5, v6, v7, v8, v3);

  result = *(a1 + 32);
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

uint64_t DMCopyMigrationPhaseDescription()
{
  v1 = +[DMConnection connection];
  v7 = v1;
  if (v1)
  {
    v8 = [v1 migrationPhaseDescription];
  }

  else
  {
    _DMLogFunc(v0, 3, @"Can't connect to migrator service!", v2, v3, v4, v5, v6, v10);
    v8 = 0;
  }

  return v8;
}

void DMGetMigrationPluginResults(void *a1)
{
  v2 = a1;
  v8 = +[DMConnection connection];
  if (v8)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __DMGetMigrationPluginResults_block_invoke;
    v10[3] = &unk_2788550D0;
    v11 = v2;
    [v8 migrationPluginResults:v10];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!", v3, v4, v5, v6, v7, v9);
    if (v2)
    {
      (*(v2 + 2))(v2, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.datamigrator" code:1 userInfo:0]);
    }
  }
}

uint64_t __DMGetMigrationPluginResults_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void DMDeferExit(void *a1)
{
  v10 = a1;
  v2 = +[DMConnection connection];
  v8 = v2;
  if (v2)
  {
    [v2 deferExit];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!", v3, v4, v5, v6, v7, v9);
  }

  if (v10)
  {
    v10[2]();
  }
}

void DMCancelDeferredExit(void *a1)
{
  v10 = a1;
  v2 = +[DMConnection connection];
  v8 = v2;
  if (v2)
  {
    [v2 cancelDeferredExit];
  }

  else
  {
    _DMLogFunc(v1, 3, @"Can't connect to migrator service!", v3, v4, v5, v6, v7, v9);
  }

  if (v10)
  {
    v10[2]();
  }
}

void DMTestMigrationUI(uint64_t a1, uint64_t a2)
{
  v5 = +[DMConnection connection];
  v12 = v5;
  if (v5)
  {
    [v5 testMigrationUIWithProgress:a1 forceInvert:a2];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to migrator service!", v6, v7, v8, v9, v10, v11);
  }
}

void sub_22E744094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E7441F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _DMCoreLog(uint64_t a1)
{
  if (_DMCoreLog_onceToken != -1)
  {
    _DMCoreLog_cold_1();
  }

  v2 = _DMCoreLog_log;

  return v2;
}

void _DMLogFunc(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a3;
  v10 = _DMCoreLog(v9);
  os_log_shim_with_CFString();
}

void _DMLog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a6;
  v10 = _DMCoreLog(v9);
  os_log_shim_with_CFString();
}

id _DMPluginSignpostLog(uint64_t a1)
{
  if (_DMPluginSignpostLog_onceToken != -1)
  {
    _DMPluginSignpostLog_cold_1();
  }

  v2 = _DMPluginSignpostLog_log;

  return v2;
}

void DMSetContext(uint64_t a1)
{
  v2 = +[DMEnvironment sharedInstance];
  [v2 setContext:a1];
}

void __DMContextPath_block_invoke()
{
  v0 = +[DMEnvironment sharedInstance];
  DMContextPath_retval = [v0 contextPath];
}

void __DMContextPathCStr_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (DMContextPath_onceToken != -1)
  {
    [DMEnvironment(DMContext) context];
  }

  v10 = DMContextPath_retval;
  Length = CFStringGetLength(DMContextPath_retval);
  DMContextPathCStr_retval = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  if (!CFStringGetCString(v10, DMContextPathCStr_retval, Length + 1, 0x8000100u))
  {

    _DMLogFunc(v9, 3, @"DMContextPathCStr CFStringGetCString failed to convert our path to a c string!", v12, v13, v14, v15, v16, a9);
  }
}

uint64_t DMCopyCurrentBuildVersion()
{
  v0 = +[DMEnvironment sharedInstance];
  v1 = [v0 buildVersion];

  return v1;
}

void sub_22E7475F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E747AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}