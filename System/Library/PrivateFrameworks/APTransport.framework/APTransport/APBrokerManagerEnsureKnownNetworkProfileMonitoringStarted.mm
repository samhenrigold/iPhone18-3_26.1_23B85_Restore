@interface APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted
@end

@implementation APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted

void ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke(uint64_t a1)
{
  v13 = 0;
  FigSimpleMutexCheckIsNotLockedOnThisThread();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2;
  v12[3] = &__block_descriptor_40_e18_v16__0__CWFEvent_8l;
  v12[4] = v2;
  [v3 setEventHandler:v12];
  [*(*(a1 + 32) + 16) startMonitoringEventType:30 error:&v13];
  v4 = [objc_msgSend(*(*(a1 + 32) + 16) "currentKnownNetworkProfile")];
  FigSimpleMutexLock();
  v5 = v13;
  v6 = *(a1 + 32);
  if (v13)
  {
    *(v6 + 280) = 0;
    v7 = 90;
  }

  else
  {
    v7 = 50;
  }

  *(v6 + 281) = v4;
  if (v7 >= gLogCategory_APBrokerManager)
  {
    if (gLogCategory_APBrokerManager == -1)
    {
      v11 = _LogCategory_Initialize();
      v6 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_15;
      }

      v5 = v13;
    }

    if (v5)
    {
      v8 = 33554522;
    }

    else
    {
      v8 = 33554482;
    }

    v9 = "Failed to start";
    if (!v5)
    {
      v9 = "Started";
    }

    v10 = "is not";
    if (v4)
    {
      v10 = "is";
    }

    LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted(APBrokerManagerRef)_block_invoke", v8, "[%{ptr}] %s monitoring known network profile, current network %s a public AirPlay network%?{end}: %@", v6, v9, v10, v5 == 0, v5);
  }

LABEL_15:
  FigSimpleMutexUnlock();
  CFRelease(*(a1 + 32));
}

void *___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 type];
  if (result == 30)
  {
    v5 = [objc_msgSend(*(*(a1 + 32) + 16) "currentKnownNetworkProfile")];
    FigSimpleMutexCheckIsNotLockedOnThisThread();
    FigSimpleMutexLock();
    v6 = *(a1 + 32);
    v7 = *(v6 + 281);
    if (v7 != v5)
    {
      if (gLogCategory_APBrokerManager <= 50)
      {
        if (gLogCategory_APBrokerManager != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 32), v8))
        {
          v9 = "yes";
          if (v7)
          {
            v10 = "yes";
          }

          else
          {
            v10 = "no";
          }

          if (!v5)
          {
            v9 = "no";
          }

          LogPrintF(&gLogCategory_APBrokerManager, "void _APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted(APBrokerManagerRef)_block_invoke_2", 33554482, "[%{ptr}] Detected network profile updated, isPublicAirPlayNetwork: %s -> %s", v6, v10, v9);
          v6 = *(a1 + 32);
        }
      }

      *(v6 + 281) = v5;
      _APBrokerManagerUpdateBrowsing(v6);
    }

    return FigSimpleMutexUnlock();
  }

  else if (gLogCategory_APBrokerManager <= 60)
  {
    if (gLogCategory_APBrokerManager != -1)
    {
      return ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2_cold_1(a1, a2);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return ___APBrokerManagerEnsureKnownNetworkProfileMonitoringStarted_block_invoke_2_cold_1(a1, a2);
    }
  }

  return result;
}

@end