@interface WFDiagnosticsContext
- (WFDiagnosticsContext)initWithNetwork:(id)network profile:(id)profile detailsContext:(id)context;
- (void)cancel;
- (void)updateInfo:(id)info;
@end

@implementation WFDiagnosticsContext

- (WFDiagnosticsContext)initWithNetwork:(id)network profile:(id)profile detailsContext:(id)context
{
  networkCopy = network;
  profileCopy = profile;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = WFDiagnosticsContext;
  v12 = [(WFDiagnosticsContext *)&v30 init];
  v13 = v12;
  if (!v12)
  {
    v29 = 0;
    goto LABEL_46;
  }

  if (!networkCopy)
  {
    [WFDiagnosticsContext initWithNetwork:profile:detailsContext:];
    v29 = v13;
    v13 = 0;
    goto LABEL_46;
  }

  objc_storeStrong(&v12->_network, network);
  objc_storeStrong((v13 + 248), context);
  bssid = [*(v13 + 232) bssid];
  v15 = *(v13 + 16);
  *(v13 + 16) = bssid;

  securityMode = [networkCopy securityMode];
  v17 = @"kWFLocDiagnosticsSecurityOpen";
  if (securityMode <= 63)
  {
    if (securityMode <= 3)
    {
      if (securityMode)
      {
        if (securityMode == 1)
        {
          v17 = @"kWFLocDiagnosticsSecurityWEP";
        }

        else
        {
          if (securityMode != 2)
          {
            goto LABEL_39;
          }

          v17 = @"kWFLocDiagnosticsSecurityLEAP";
        }
      }
    }

    else if (securityMode > 15)
    {
      if (securityMode == 16)
      {
        v17 = @"kWFLocDiagnosticsSecurityWPAEnterprise";
      }

      else
      {
        if (securityMode != 32)
        {
          goto LABEL_39;
        }

        v17 = @"kWFLocDiagnosticsSecurityWPA2 Enterprise";
      }
    }

    else if (securityMode == 4)
    {
      v17 = @"kWFLocDiagnosticsSecurityWPAPersonal";
    }

    else
    {
      if (securityMode != 8)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWPA2Personal";
    }

    goto LABEL_38;
  }

  if (securityMode <= 519)
  {
    if (securityMode > 255)
    {
      if (securityMode == 256)
      {
        v17 = @"kWFLocDiagnosticsSecurityWEP40_128";
      }

      else
      {
        if (securityMode != 512)
        {
          goto LABEL_39;
        }

        v17 = @"kWFLocDiagnosticsSecurityWPA3Personal";
      }
    }

    else if (securityMode == 64)
    {
      v17 = @"kWFLocDiagnosticsSecurityWAPIPersonal";
    }

    else
    {
      if (securityMode != 128)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWAPIEnterprise";
    }

    goto LABEL_38;
  }

  if (securityMode <= 1074)
  {
    if (securityMode == 520)
    {
      v17 = @"kWFLocDiagnosticsSecurityWPA3Transition";
    }

    else
    {
      if (securityMode != 1024)
      {
        goto LABEL_39;
      }

      v17 = @"kWFLocDiagnosticsSecurityWPA3Enterprise";
    }

    goto LABEL_38;
  }

  if (securityMode == 1075)
  {
    v17 = @"kWFLocDiagnosticsSecurityAnyEAPEncryption";
    goto LABEL_38;
  }

  if (securityMode == 2048)
  {
LABEL_38:
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:v17 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
    v20 = *(v13 + 72);
    *(v13 + 72) = v19;
  }

LABEL_39:
  *(v13 + 8) = [profileCopy isCaptive];
  networkQualityDate = [profileCopy networkQualityDate];
  v22 = [networkQualityDate copy];
  v23 = *(v13 + 216);
  *(v13 + 216) = v22;

  [profileCopy networkQualityResponsiveness];
  *(v13 + 224) = v24;
  v25 = WiFiManagerClientCreate();
  *(v13 + 256) = v25;
  if (v25)
  {
    v26 = WiFiManagerClientCopyDevices();
    if ([v26 count])
    {
      *(v13 + 264) = [v26 objectAtIndex:0];
    }
  }

  v27 = *(v13 + 264);
  if (v27)
  {
    [(WFDiagnosticsContext *)v27 initWithNetwork:v13 profile:(v13 + 256) detailsContext:&v31];
    v29 = v31;
LABEL_46:
  }

  return v13;
}

- (void)updateInfo:(id)info
{
  infoCopy = info;
  v4 = WiFiDeviceClientCopyCurrentNetwork();
  if (!infoCopy || !v4)
  {
    goto LABEL_55;
  }

  v5 = WiFiNetworkGetProperty();
  BSSID = self->_BSSID;
  self->_BSSID = v5;

  v7 = WiFiNetworkGetProperty();
  channel = self->_channel;
  self->_channel = v7;

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%dMHz)", self->_channel, WiFiNetworkGetChannelWidthInMHz()];
  channelString = self->_channelString;
  self->_channelString = v9;

  v11 = WiFiNetworkGetAPEnv();
  intValue = [v11 intValue];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = v13;
  if ((intValue - 1) > 3)
  {
    v15 = @"kWFLocDiagnosticsUnspecifiedEnv";
  }

  else
  {
    v15 = off_279EC5280[intValue - 1];
  }

  v16 = [v13 localizedStringForKey:v15 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
  deployment = self->_deployment;
  self->_deployment = v16;

  v18 = [infoCopy objectForKey:*MEMORY[0x277D297B8]];
  if (![v18 isEqualToString:@"Stationary"])
  {
    if ([v18 isEqualToString:@"Walking"])
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"kWFLocDiagnosticsWalking";
      goto LABEL_14;
    }

    if ([v18 isEqualToString:@"Running"])
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"kWFLocDiagnosticsRunning";
      goto LABEL_14;
    }

    if ([v18 isEqualToString:@"Driving"])
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"kWFLocDiagnosticsDriving";
      goto LABEL_14;
    }

    if (![v18 isEqualToString:@"Moving"])
    {
      v94 = [v18 isEqualToString:@"Driving Stopped"];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      if (v94)
      {
        v21 = @"kWFLocDiagnosticsDrivingStopped";
      }

      else
      {
        v21 = @"kWFLocDiagnosticsMotionUnknown";
      }

      goto LABEL_14;
    }
  }

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = v19;
  v21 = @"kWFLocDiagnosticsMoving";
LABEL_14:
  v22 = [v19 localizedStringForKey:v21 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
  motion = self->_motion;
  self->_motion = v22;

  v101 = [infoCopy objectForKey:*MEMORY[0x277D297B0]];
  if (v101)
  {
    v24 = v18;
    v25 = v11;
    v26 = v4;
    v27 = [v101 objectForKey:@"RSSI"];
    v28 = [v101 objectForKey:@"CCA"];
    if ([v27 intValue] < -59)
    {
      intValue2 = [v27 intValue];
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = v29;
      if (intValue2 < -74)
      {
        v31 = @"kWFLocDiagnosticsRSSIWeak";
      }

      else
      {
        v31 = @"kWFLocDiagnosticsRSSIModerate";
      }
    }

    else
    {
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v30 = v29;
      v31 = @"kWFLocDiagnosticsRSSIStrong";
    }

    v33 = [v29 localizedStringForKey:v31 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
    rssiPerformance = self->_rssiPerformance;
    self->_rssiPerformance = v33;

    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v27, self->_rssiPerformance];
    rssi = self->_rssi;
    self->_rssi = v35;

    if ([v28 intValue] > 49)
    {
      intValue3 = [v28 intValue];
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = v37;
      if (intValue3 > 69)
      {
        v39 = @"kWFLocDiagnosticsCCAWeak";
      }

      else
      {
        v39 = @"kWFLocDiagnosticsCCAModerate";
      }
    }

    else
    {
      v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v38 = v37;
      v39 = @"kWFLocDiagnosticsCCAStrong";
    }

    v41 = [v37 localizedStringForKey:v39 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
    cca = self->_cca;
    self->_cca = v41;

    v4 = v26;
    v11 = v25;
    v18 = v24;
  }

  v43 = [infoCopy objectForKey:*MEMORY[0x277D297C0]];
  v44 = [v43 objectAtIndexedSubscript:0];

  if (v44)
  {
    v45 = [v44 objectForKey:@"kWiFiLqaMgrNumProbesFail"];
    v46 = [v44 objectForKey:@"kWiFiLqaMgrAverageRTT"];
    if ([v45 intValue] < 1)
    {
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ms", v46];
      gateway = self->_gateway;
      self->_gateway = v50;
    }

    else
    {
      gateway = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [gateway localizedStringForKey:@"kWFLocDiagnosticsProbeNoConnection" value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
      v49 = self->_gateway;
      self->_gateway = v48;
    }
  }

  v51 = [infoCopy objectForKey:*MEMORY[0x277D297C8]];
  v52 = [v51 objectAtIndexedSubscript:0];

  if (v52)
  {
    v53 = [v52 objectForKey:@"kWiFiLqaMgrNumProbesFail"];
    v54 = v52;
    v55 = [v52 objectForKey:@"kWiFiLqaMgrAverageRTT"];
    if ([v53 intValue] < 1)
    {
      v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ms", v55];
      internet = self->_internet;
      self->_internet = v59;
    }

    else
    {
      internet = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v57 = [internet localizedStringForKey:@"kWFLocDiagnosticsProbeNoConnection" value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
      v58 = self->_internet;
      self->_internet = v57;
    }

    v52 = v54;
  }

  v100 = v44;
  v60 = [infoCopy objectForKey:*MEMORY[0x277D297A0]];
  v61 = v60;
  if (v60)
  {
    v62 = [v60 objectForKey:@"LINK_CHANGED_IS_LINKDOWN"];
    bOOLValue = [v62 BOOLValue];

    v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v65 = v64;
    if (bOOLValue)
    {
      v66 = @"kWFLocDiagnosticsAWDLInactive";
    }

    else
    {
      v66 = @"kWFLocDiagnosticsAWDLActive";
    }

    v67 = [v64 localizedStringForKey:v66 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
    awdl = self->_awdl;
    self->_awdl = v67;
  }

  v99 = v61;
  v69 = [infoCopy objectForKey:*MEMORY[0x277D297A8]];
  v70 = v69;
  if (v69)
  {
    intValue4 = [v69 intValue];
    v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v73 = v72;
    if (intValue4 > 8)
    {
      v74 = @"kWFLocDiagnosticsBTUnnkown";
    }

    else
    {
      v74 = off_279EC52A0[intValue4];
    }

    v75 = [v72 localizedStringForKey:v74 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
    bluetooth = self->_bluetooth;
    self->_bluetooth = v75;
  }

  v77 = [infoCopy objectForKey:*MEMORY[0x277D297D8]];
  if ([v77 intValue])
  {
    v78 = @"kWFLocDiagnosticsScanInactive";
  }

  else
  {
    v78 = @"kWFLocDiagnosticsScanActive";
  }

  v79 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v80 = [v79 localizedStringForKey:v78 value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
  scan = self->_scan;
  self->_scan = v80;

  v82 = [infoCopy objectForKey:*MEMORY[0x277D297D0]];
  v83 = v82;
  if (v82)
  {
    v98 = v52;
    v84 = [v82 objectForKey:*MEMORY[0x277D29788]];
    v85 = [v83 objectForKey:*MEMORY[0x277D29790]];
    v86 = v85;
    if (v84 && v85)
    {
      v95 = MEMORY[0x277CCACA8];
      v97 = v4;
      v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v87 = [v96 localizedStringForKey:@"kWFLocDiagnosticsLastScan" value:&stru_288308678 table:@"WiFiKitLocalizableStrings"];
      [MEMORY[0x277CCA968] localizedStringFromDate:v86 dateStyle:1 timeStyle:1];
      v88 = v18;
      v90 = v89 = v11;
      v91 = [v95 stringWithFormat:@"%@ %@ at %@", v87, v84, v90];
      coexFooter = self->_coexFooter;
      self->_coexFooter = v91;

      v11 = v89;
      v18 = v88;

      v4 = v97;
    }

    v52 = v98;
  }

  refreshHandler = [(WFDiagnosticsContext *)self refreshHandler];
  refreshHandler[2]();

  CFRelease(v4);
LABEL_55:
}

- (void)cancel
{
  if (self->_device)
  {
    WiFiDeviceClientRegisterDiagnosticsCallback();
  }

  if (self->_manager)
  {
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop getCFRunLoop];
    WiFiManagerClientUnscheduleFromRunLoop();
  }
}

- (void)initWithNetwork:profile:detailsContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v4 = 136315138;
    v5 = "[WFDiagnosticsContext initWithNetwork:profile:detailsContext:]";
    _os_log_impl(&dword_273FB9000, v0, v2, "%s: nil network", &v4, 0xCu);
  }
}

- (uint64_t)initWithNetwork:(uint64_t *)a3 profile:(void *)a4 detailsContext:.cold.2(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  WiFiDeviceClientRegisterDiagnosticsCallback();
  v5 = [MEMORY[0x277CBEB88] mainRunLoop];
  *a4 = v5;
  [v5 getCFRunLoop];
  return WiFiManagerClientScheduleWithRunLoop();
}

@end