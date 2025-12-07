@interface WFControlCenterStateMonitor
- (BOOL)_airplaneModeEnabled;
- (BOOL)_isCellularOutrankingWiFi;
- (void)_airplaneModeEnabled;
- (void)_performAction:(int64_t)action;
- (void)_promptCarPlayDisable;
- (void)_promptCellularOutankDisable;
- (void)_promptMISDisable;
- (void)performAction:(id)action;
- (void)performActionFrom:(id)from withCompletion:(id)completion;
@end

@implementation WFControlCenterStateMonitor

- (void)performActionFrom:(id)from withCompletion:(id)completion
{
  completionCopy = completion;
  fromCopy = from;
  v8 = WFLogForCategory(7uLL);
  v9 = OSLogForWFLogLevel(1uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) && v8 && os_log_type_enabled(v8, v10))
  {
    *v12 = 0;
    _os_log_impl(&dword_273ECD000, v8, v10, "initializing WFControlCenterStateMonitor with presenter for alerts", v12, 2u);
  }

  [(WFControlCenterStateMonitor *)self setPresenter:fromCopy];
  [(WFControlCenterStateMonitor *)self performAction:completionCopy];
}

- (void)performAction:(id)action
{
  v71 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  client = [(WFWiFiStateMonitor *)self client];
  isPowerModificationDisabled = [client isPowerModificationDisabled];

  if (!isPowerModificationDisabled)
  {
    _airplaneModeEnabled = [(WFControlCenterStateMonitor *)self _airplaneModeEnabled];
    state = [(WFWiFiStateMonitor *)self state];
    v13 = state - 2;
    v14 = WFLogForCategory(7uLL);
    v15 = OSLogForWFLogLevel(1uLL);
    v16 = v15;
    if (WFCurrentLogLevel(v15, v17) && v14)
    {
      v18 = v14;
      if (os_log_type_enabled(v18, v16))
      {
        v19 = WFWiFiStateMonitorStringForState(state);
        v65 = 138543874;
        v66 = v19;
        v67 = 1024;
        v68 = v13 < 3;
        v69 = 1024;
        v70 = _airplaneModeEnabled;
        _os_log_impl(&dword_273ECD000, v18, v16, "{ACTION+} current state='%{public}@' poweredOn=%d airplaneMode=%d", &v65, 0x18u);
      }
    }

    if (state == 1)
    {
      v20 = WFLogForCategory(7uLL);
      v21 = OSLogForWFLogLevel(1uLL);
      v22 = v21;
      if (WFCurrentLogLevel(v21, v23) && v20 && os_log_type_enabled(v20, v22))
      {
        LOWORD(v65) = 0;
        _os_log_impl(&dword_273ECD000, v20, v22, "{ACTION*} set powered to ON", &v65, 2u);
      }

      if (actionCopy)
      {
        actionCopy[2](actionCopy, 3);
      }

      selfCopy6 = self;
      v25 = 3;
    }

    else
    {
      v26 = !_airplaneModeEnabled;
      if (v13 > 2)
      {
        v26 = 1;
      }

      if (v26)
      {
        if (state == 2)
        {
          if (![(WFWiFiStateMonitor *)self associatedToCarPlayOnly])
          {
            if ([(WFControlCenterStateMonitor *)self _isCellularOutrankingWiFi])
            {
              client2 = [(WFWiFiStateMonitor *)self client];
              interface = [client2 interface];
              currentNetwork = [interface currentNetwork];

              v47 = WFLogForCategory(7uLL);
              v48 = OSLogForWFLogLevel(1uLL);
              v49 = v48;
              if (WFCurrentLogLevel(v48, v50))
              {
                v51 = v47 == 0;
              }

              else
              {
                v51 = 1;
              }

              v52 = !v51;
              if (currentNetwork)
              {
                if (v52 && os_log_type_enabled(v47, v49))
                {
                  LOWORD(v65) = 0;
                  _os_log_impl(&dword_273ECD000, v47, v49, "{ACTION*} cellular is outranking WiFi, promping user", &v65, 2u);
                }

                selfCopy6 = self;
                v25 = 8;
                goto LABEL_38;
              }

              if (v52 && os_log_type_enabled(v47, v49))
              {
                LOWORD(v65) = 0;
                _os_log_impl(&dword_273ECD000, v47, v49, "Cellular outrank is in progress with no current network", &v65, 2u);
              }
            }

            v61 = WFLogForCategory(7uLL);
            v62 = OSLogForWFLogLevel(1uLL);
            v63 = v62;
            if (WFCurrentLogLevel(v62, v64) && v61 && os_log_type_enabled(v61, v63))
            {
              LOWORD(v65) = 0;
              _os_log_impl(&dword_273ECD000, v61, v63, "{ACTION*} setting userAutoJoin=1", &v65, 2u);
            }

            if (actionCopy)
            {
              actionCopy[2](actionCopy, 3);
            }

            [(WFControlCenterStateMonitor *)self _performAction:1];
            [(WFWiFiStateMonitor *)self _updateState];
            goto LABEL_39;
          }

          v36 = WFLogForCategory(7uLL);
          v37 = OSLogForWFLogLevel(1uLL);
          v38 = v37;
          if (WFCurrentLogLevel(v37, v39) && v36 && os_log_type_enabled(v36, v38))
          {
            LOWORD(v65) = 0;
            _os_log_impl(&dword_273ECD000, v36, v38, "{ACTION*} associated to CarPlay Only network, prompting user", &v65, 2u);
          }

          selfCopy6 = self;
          v25 = 6;
        }

        else if (state - 3 > 1)
        {
          if (state != 5)
          {
            if (!actionCopy)
            {
              goto LABEL_39;
            }

            v57 = WFLogForCategory(7uLL);
            v58 = OSLogForWFLogLevel(1uLL);
            v59 = v58;
            if (WFCurrentLogLevel(v58, v60) && v57 && os_log_type_enabled(v57, v59))
            {
              LOWORD(v65) = 0;
              _os_log_impl(&dword_273ECD000, v57, v59, "{ACTION*} no action performed, returning current state", &v65, 2u);
            }

            goto LABEL_7;
          }

          v53 = WFLogForCategory(7uLL);
          v54 = OSLogForWFLogLevel(1uLL);
          v55 = v54;
          if (WFCurrentLogLevel(v54, v56) && v53 && os_log_type_enabled(v53, v55))
          {
            LOWORD(v65) = 0;
            _os_log_impl(&dword_273ECD000, v53, v55, "{ACTION*} MIS active, prompting user", &v65, 2u);
          }

          if (actionCopy)
          {
            actionCopy[2](actionCopy, 5);
          }

          selfCopy6 = self;
          v25 = 4;
        }

        else
        {
          v40 = WFLogForCategory(7uLL);
          v41 = OSLogForWFLogLevel(1uLL);
          v42 = v41;
          if (WFCurrentLogLevel(v41, v43) && v40 && os_log_type_enabled(v40, v42))
          {
            LOWORD(v65) = 0;
            _os_log_impl(&dword_273ECD000, v40, v42, "{ACTION*} diassociate and set userAutoJoin=0", &v65, 2u);
          }

          if (actionCopy)
          {
            actionCopy[2](actionCopy, 2);
          }

          selfCopy6 = self;
          v25 = 0;
        }
      }

      else
      {
        v27 = state == 2;
        if (state == 2)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27)
        {
          v29 = 3;
        }

        else
        {
          v29 = 1;
        }

        v30 = WFLogForCategory(7uLL);
        v31 = OSLogForWFLogLevel(1uLL);
        v32 = v31;
        if (WFCurrentLogLevel(v31, v33) && v30)
        {
          v34 = v30;
          if (os_log_type_enabled(v34, v32))
          {
            v35 = _WFControlCenterActionStringForAction(v28);
            v65 = 138543362;
            v66 = v35;
            _os_log_impl(&dword_273ECD000, v34, v32, "{ACTION*} airplane mode is ON, next action is %{public}@", &v65, 0xCu);
          }
        }

        if (actionCopy)
        {
          actionCopy[2](actionCopy, v29);
        }

        selfCopy6 = self;
        v25 = v28;
      }
    }

LABEL_38:
    [(WFControlCenterStateMonitor *)selfCopy6 _performAction:v25];
    goto LABEL_39;
  }

  v7 = WFLogForCategory(7uLL);
  v8 = OSLogForWFLogLevel(1uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) && v7 && os_log_type_enabled(v7, v9))
  {
    LOWORD(v65) = 0;
    _os_log_impl(&dword_273ECD000, v7, v9, "{ACTION*} power modification is disabled", &v65, 2u);
  }

  if (actionCopy)
  {
LABEL_7:
    actionCopy[2](actionCopy, [(WFWiFiStateMonitor *)self state]);
  }

LABEL_39:
}

- (void)_performAction:(int64_t)action
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(7uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v10 = _WFControlCenterActionStringForAction(action);
      *buf = 138543362;
      v70 = v10;
      _os_log_impl(&dword_273ECD000, v9, v7, "{ACTION-} performing action='%{public}@'", buf, 0xCu);
    }
  }

  if (action > 4)
  {
    if (action <= 6)
    {
      if (action == 5)
      {
        v37 = WFLogForCategory(7uLL);
        v38 = OSLogForWFLogLevel(1uLL);
        v39 = v38;
        if (WFCurrentLogLevel(v38, v40) && v37 && os_log_type_enabled(v37, v39))
        {
          *buf = 136315138;
          v70 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v37, v39, "%s: disable MIS", buf, 0xCu);
        }

        client = [(WFWiFiStateMonitor *)self client];
        [client setMISDiscoveryState:0 immediateDisable:1];

        client2 = [(WFWiFiStateMonitor *)self client];
        [client2 setMISState:0];

        [(WFWiFiStateMonitor *)self _updateState];
      }

      else
      {
        v24 = WFLogForCategory(7uLL);
        v25 = OSLogForWFLogLevel(1uLL);
        v26 = v25;
        if (WFCurrentLogLevel(v25, v27) && v24 && os_log_type_enabled(v24, v26))
        {
          *buf = 136315138;
          v70 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v24, v26, "%s: prompting to disable CarPlay", buf, 0xCu);
        }

        [(WFControlCenterStateMonitor *)self _promptCarPlayDisable];
      }
    }

    else
    {
      switch(action)
      {
        case 7:
          v43 = WFLogForCategory(7uLL);
          v44 = OSLogForWFLogLevel(1uLL);
          v45 = v44;
          if (WFCurrentLogLevel(v44, v46) && v43 && os_log_type_enabled(v43, v45))
          {
            *buf = 136315138;
            v70 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v43, v45, "%s: disable CarPlay", buf, 0xCu);
          }

          client3 = [(WFWiFiStateMonitor *)self client];
          interface = [client3 interface];

          if (interface)
          {
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_5;
            v62[3] = &unk_279EBCFE0;
            v62[4] = self;
            [interface disassociateFromCurrentNetworkWithCompletion:v62];
          }

          else
          {
            v53 = WFLogForCategory(7uLL);
            v54 = OSLogForWFLogLevel(1uLL);
            v55 = v54;
            if (WFCurrentLogLevel(v54, v56) && v53 && os_log_type_enabled(v53, v55))
            {
              *buf = 136315138;
              v70 = "[WFControlCenterStateMonitor _performAction:]";
              _os_log_impl(&dword_273ECD000, v53, v55, "%s: failed to get WFInterface", buf, 0xCu);
            }
          }

          break;
        case 8:
          v49 = WFLogForCategory(7uLL);
          v50 = OSLogForWFLogLevel(1uLL);
          v51 = v50;
          if (WFCurrentLogLevel(v50, v52) && v49 && os_log_type_enabled(v49, v51))
          {
            *buf = 136315138;
            v70 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v49, v51, "%s: prompting to disable cellular outrank", buf, 0xCu);
          }

          [(WFControlCenterStateMonitor *)self _promptCellularOutankDisable];
          break;
        case 9:
          v12 = WFLogForCategory(7uLL);
          v13 = OSLogForWFLogLevel(1uLL);
          v14 = v13;
          if (WFCurrentLogLevel(v13, v15) && v12 && os_log_type_enabled(v12, v14))
          {
            *buf = 136315138;
            v70 = "[WFControlCenterStateMonitor _performAction:]";
            _os_log_impl(&dword_273ECD000, v12, v14, "%s: disabling cellular outrank", buf, 0xCu);
          }

          client4 = [(WFWiFiStateMonitor *)self client];
          interface2 = [client4 interface];

          if (interface2)
          {
            currentNetwork = [interface2 currentNetwork];
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_6;
            v61[3] = &unk_279EBDC90;
            v61[4] = self;
            [interface2 asyncAssociateToNetwork:currentNetwork profile:0 reply:v61];
          }

          else
          {
            v57 = WFLogForCategory(7uLL);
            v58 = OSLogForWFLogLevel(1uLL);
            v59 = v58;
            if (WFCurrentLogLevel(v58, v60) && v57 && os_log_type_enabled(v57, v59))
            {
              *buf = 136315138;
              v70 = "[WFControlCenterStateMonitor _performAction:]";
              _os_log_impl(&dword_273ECD000, v57, v59, "%s: failed to get WFInterface", buf, 0xCu);
            }
          }

          break;
      }
    }
  }

  else if (action <= 1)
  {
    if (action)
    {
      if (action == 1)
      {
        v19 = WFLogForCategory(7uLL);
        v20 = OSLogForWFLogLevel(1uLL);
        v21 = v20;
        if (WFCurrentLogLevel(v20, v22) && v19 && os_log_type_enabled(v19, v21))
        {
          *buf = 136315138;
          v70 = "[WFControlCenterStateMonitor _performAction:]";
          _os_log_impl(&dword_273ECD000, v19, v21, "%s: enabling user autojoin", buf, 0xCu);
        }

        objc_initWeak(buf, self);
        client5 = [(WFWiFiStateMonitor *)self client];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_1;
        v65[3] = &unk_279EBCEA0;
        objc_copyWeak(&v66, buf);
        [client5 setUserAutoJoinState:1 completion:v65];

        objc_destroyWeak(&v66);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v32 = WFLogForCategory(7uLL);
      v33 = OSLogForWFLogLevel(1uLL);
      v34 = v33;
      if (WFCurrentLogLevel(v33, v35) && v32 && os_log_type_enabled(v32, v34))
      {
        *buf = 136315138;
        v70 = "[WFControlCenterStateMonitor _performAction:]";
        _os_log_impl(&dword_273ECD000, v32, v34, "%s: disabling user autojoin", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      client6 = [(WFWiFiStateMonitor *)self client];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_3;
      v63[3] = &unk_279EBCEA0;
      objc_copyWeak(&v64, buf);
      [client6 setUserAutoJoinState:0 completion:v63];

      objc_destroyWeak(&v64);
      objc_destroyWeak(buf);
    }
  }

  else if ((action - 2) >= 2)
  {
    if (action == 4)
    {
      v28 = WFLogForCategory(7uLL);
      v29 = OSLogForWFLogLevel(1uLL);
      v30 = v29;
      if (WFCurrentLogLevel(v29, v31) && v28 && os_log_type_enabled(v28, v30))
      {
        *buf = 136315138;
        v70 = "[WFControlCenterStateMonitor _performAction:]";
        _os_log_impl(&dword_273ECD000, v28, v30, "%s: prompting to disable MIS", buf, 0xCu);
      }

      [(WFControlCenterStateMonitor *)self _promptMISDisable];
    }
  }

  else
  {
    objc_initWeak(buf, self);
    client7 = [(WFWiFiStateMonitor *)self client];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke;
    v67[3] = &unk_279EBD698;
    objc_copyWeak(&v68, buf);
    [client7 setPoweredToggle:action == 3 handler:v67];

    objc_destroyWeak(&v68);
    objc_destroyWeak(buf);
  }
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(7uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) && v4 && os_log_type_enabled(v4, v6))
  {
    v9 = 136315394;
    v10 = "[WFControlCenterStateMonitor _performAction:]_block_invoke";
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_273ECD000, v4, v6, "%s: power toggle handler called, powered=%d", &v9, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateState];
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_2;
  block[3] = &unk_279EBCFE0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFControlCenterStateMonitor__performAction___block_invoke_2_4;
  block[3] = &unk_279EBCFE0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__WFControlCenterStateMonitor__performAction___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WFLogForCategory(7uLL);
  v7 = OSLogForWFLogLevel(1uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_273ECD000, v6, v8, "cellular outrank association success=%d error='%@'", v10, 0x12u);
  }

  [*(a1 + 32) _updateState];
}

- (BOOL)_airplaneModeEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = SCPreferencesCreate(*MEMORY[0x277CBECE8], @"com.apple.wifikit", @"com.apple.radios.plist");
  if (v2)
  {
    v3 = v2;
    v4 = SCPreferencesGetValue(v2, @"AirplaneMode") == *MEMORY[0x277CBED28];
    CFRelease(v3);
  }

  else
  {
    [WFControlCenterStateMonitor _airplaneModeEnabled];
    v4 = 0;
  }

  v5 = WFLogForCategory(7uLL);
  v6 = OSLogForWFLogLevel(1uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) && v5 && os_log_type_enabled(v5, v7))
  {
    v10 = 136315394;
    v11 = "[WFControlCenterStateMonitor _airplaneModeEnabled]";
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_273ECD000, v5, v7, "%s: airplaneModeEnabled set to %i", &v10, 0x12u);
  }

  return v4;
}

- (BOOL)_isCellularOutrankingWiFi
{
  client = [(WFWiFiStateMonitor *)self client];
  isCellularOutrankingWiFi = [client isCellularOutrankingWiFi];

  return isCellularOutrankingWiFi;
}

- (void)_promptMISDisable
{
  v3 = +[WFMISDisablePromptOperation misDisablePromptOperation];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v3];

  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke;
  v5[3] = &unk_279EBD448;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v3 setCompletionBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __48__WFControlCenterStateMonitor__promptMISDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6))
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v2 == 2)
  {
    if (v8)
    {
      if (os_log_type_enabled(v3, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v5, "User accepted prompt to disable MIS", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:5];
  }

  else
  {
    if (v8 && os_log_type_enabled(v3, v5))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "User did not accept prompt to disable MIS", v9, 2u);
    }
  }
}

- (void)_promptCarPlayDisable
{
  v3 = +[WFCarPlayDisablePromptOperation carPlayDisablePromptOperation];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  [mainQueue addOperation:v3];

  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke;
  v5[3] = &unk_279EBD448;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  [v3 setCompletionBlock:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __52__WFControlCenterStateMonitor__promptCarPlayDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6))
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v2 == 2)
  {
    if (v8)
    {
      if (os_log_type_enabled(v3, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v5, "User accepted prompt to disable CarPlay", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:7];
  }

  else
  {
    if (v8 && os_log_type_enabled(v3, v5))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "User did not accept prompt to disable CarPlay", v9, 2u);
    }
  }
}

- (void)_promptCellularOutankDisable
{
  client = [(WFWiFiStateMonitor *)self client];
  interface = [client interface];
  currentNetwork = [interface currentNetwork];
  ssid = [currentNetwork ssid];

  if (ssid)
  {
    client2 = [(WFWiFiStateMonitor *)self client];
    v8 = +[WFCellularOutrankPromptOperation cellularOutrankPromptOperationWithNetworkName:privateCellular:](WFCellularOutrankPromptOperation, "cellularOutrankPromptOperationWithNetworkName:privateCellular:", ssid, [client2 cellularOutrankState] == 5);

    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    [mainQueue addOperation:v8];

    objc_initWeak(location, v8);
    objc_initWeak(&from, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke;
    v13[3] = &unk_279EBD448;
    objc_copyWeak(&v14, location);
    objc_copyWeak(&v15, &from);
    [v8 setCompletionBlock:v13];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = WFLogForCategory(7uLL);
    v10 = OSLogForWFLogLevel(1uLL);
    v11 = v10;
    if (WFCurrentLogLevel(v10, v12) && v8 && os_log_type_enabled(v8, v11))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_273ECD000, v8, v11, "nil network name, unable to prompt for cellular outrank", location, 2u);
    }
  }
}

void __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke_2;
  v5[3] = &unk_279EBD290;
  v6 = WeakRetained;
  v7 = v3;
  v4 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __59__WFControlCenterStateMonitor__promptCellularOutankDisable__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = WFLogForCategory(7uLL);
  v4 = OSLogForWFLogLevel(1uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6))
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v2 == 2)
  {
    if (v8)
    {
      if (os_log_type_enabled(v3, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_273ECD000, v3, v5, "User accepted prompt to disable cellular outrank", buf, 2u);
      }
    }

    [*(a1 + 40) _performAction:9];
  }

  else
  {
    if (v8 && os_log_type_enabled(v3, v5))
    {
      *v9 = 0;
      _os_log_impl(&dword_273ECD000, v3, v5, "User did not accept prompt to disable cellular outrank", v9, 2u);
    }
  }
}

- (void)_airplaneModeEnabled
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(7uLL);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v4 = 136315138;
    v5 = "[WFControlCenterStateMonitor _airplaneModeEnabled]";
    _os_log_impl(&dword_273ECD000, v0, v2, "%s: failed to create preferences ref", &v4, 0xCu);
  }
}

@end