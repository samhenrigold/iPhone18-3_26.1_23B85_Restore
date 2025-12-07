void _devicePowerChanged(uint64_t a1, uint64_t a2, int a3, intptr_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v10[0] = 67109120;
    v10[1] = a3;
    _os_log_impl(&dword_2424DF000, v6, v7, "Handling power change call with messageType %d", v10, 8u);
  }

  v8 = +[DADAgentManager sharedManager];
  v9 = v8;
  switch(a3)
  {
    case -536870288:
      goto LABEL_8;
    case -536870272:
      [v8 _deviceWillSleep];
LABEL_8:
      IOAllowPowerChange(__RootDomainConnect, a4);
      break;
    case -536870144:
      [v8 _deviceDidWake];
      break;
  }
}

void sub_2424E10DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2424E6484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2424E6AEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t launchdActiveSyncPath()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dataaccess.activesync"];
  v1 = [v0 fileSystemRepresentation];

  return v1;
}

void handleSignal(int a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 <= 14)
  {
    if (a1 == 1)
    {
      v12 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v12, v21))
      {
        LOWORD(v22[0]) = 0;
        _os_log_impl(&dword_2424DF000, v12, v21, "HUP received.  HUP is currently unused.  Ignoring.\n", v22, 2u);
      }

      goto LABEL_16;
    }

    if (a1 != 3)
    {
      goto LABEL_20;
    }

LABEL_13:
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v9, v10))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_2424DF000, v9, v10, "QUIT received.  Shutting down.\n", v22, 2u);
    }

    v11 = +[DARefreshManager sharedManager];
    [v11 setPersistAPSAfterShutdown:1];

    v12 = +[DADMain sharedMain];
    [v12 shutdownDAD];
LABEL_16:

    goto LABEL_20;
  }

  if (a1 == 15)
  {
    goto LABEL_13;
  }

  if (a1 != 31)
  {
    if (a1 != 30)
    {
      goto LABEL_20;
    }

    v2 = DALoggingwithCategory();
    v3 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v2, v3))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&dword_2424DF000, v2, v3, "Signal USR1 (30) received.  Exit if xpc transaction count is 0.\n", v22, 2u);
    }

    v4 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
    v5 = [v4 transactionCount];

    if (v5)
    {
      v6 = DALoggingwithCategory();
      if (os_log_type_enabled(v6, v3))
      {
        v7 = [MEMORY[0x277CF3A38] sharedTransactionMonitor];
        v8 = [v7 transactionCount];
        v22[0] = 67109120;
        v22[1] = v8;
        _os_log_impl(&dword_2424DF000, v6, v3, "The xpc transaction count is %d. Do nothing.\n", v22, 8u);
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v13, v14))
  {
    LOWORD(v22[0]) = 0;
    _os_log_impl(&dword_2424DF000, v13, v14, "USR2 received.  Dumping our state.\n", v22, 2u);
  }

  logState(1, v15);
LABEL_20:
  v16 = +[DADMain sharedMain];
  v17 = [v16 isDisabled];

  if (v17)
  {
    for (i = 0; i != 5; ++i)
    {
      v19 = signalSources[i];
      if (v19)
      {
        dispatch_source_cancel(v19);
        v20 = signalSources[i];
        signalSources[i] = 0;
      }
    }
  }
}

void logState(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __logState_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = v2;
  dispatch_async(v3, block);
}

void sub_2424E97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _languageMayHaveChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    *buf = 138412290;
    v7 = a3;
    _os_log_impl(&dword_2424DF000, v4, v5, "Received notificaion %@ indicating a language change.  Going to exit to pick up new locale support", buf, 0xCu);
  }

  NSLog(&cfstr_ReceivedNotifi_0.isa, a3);
  sleep(1u);
  exit(0);
}

void __logState_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = +[DADAgentManager sharedManager];
  v4 = [v3 stateString];

  v5 = +[DARefreshManager sharedManager];
  v6 = [v5 stateString];

  if (v6)
  {
    v7 = [v4 stringByAppendingString:v6];

    v4 = v7;
  }

  v8 = DALoggingwithCategory();
  v9 = v8;
  v10 = 5;
  if (!*(a1 + 32))
  {
    v10 = 6;
  }

  v11 = *(MEMORY[0x277CF3AF0] + v10);
  if (os_log_type_enabled(v8, v11))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_2424DF000, v9, v11, "%@", &v12, 0xCu);
  }

  dispatch_time(0, 1000000000);
  DACPLoggingFlush();

  objc_autoreleasePoolPop(v2);
}

void sub_2424F5744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}