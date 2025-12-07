@interface FigNetworkWirelessReportingInterface
+ (id)globalInterface;
- (FigNetworkWirelessReportingInterface)init;
@end

@implementation FigNetworkWirelessReportingInterface

- (FigNetworkWirelessReportingInterface)init
{
  v49 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = FigNetworkWirelessReportingInterface;
  v2 = [(FigNetworkWirelessReportingInterface *)&v39 init];
  if (!v2)
  {
    [FigNetworkWirelessReportingInterface init];
    v4 = 0;
LABEL_30:
    v23 = 0;
    goto LABEL_21;
  }

  v38 = 0;
  v3 = [[FigCoreWiFi alloc] initWithError:&v38];
  v4 = v38;
  wifiManager = v2->_wifiManager;
  v2->_wifiManager = v3;

  if (!v2->_wifiManager)
  {
    v37 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
LABEL_29:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_30;
  }

  if (CelestialIsAudioAccessory())
  {
LABEL_6:
    v9 = v4;
    v34 = v4;
    v10 = [[FigWTEPredictionProvider alloc] initWithError:&v34];
    v4 = v34;

    wtePredictionProvider = v2->_wtePredictionProvider;
    v2->_wtePredictionProvider = v10;

    if (v2->_wtePredictionProvider)
    {
      if (dword_1EAF17610)
      {
        v37 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v13 = v37;
        v14 = type;
        if (os_log_type_enabled(v12, type))
        {
          v15 = v13;
        }

        else
        {
          v15 = v13 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = v2->_wtePredictionProvider;
          v40 = 136315650;
          v41 = "[FigNetworkWirelessReportingInterface init]";
          v42 = 2112;
          v43 = v2;
          v44 = 2112;
          v45 = v16;
          _os_log_send_and_compose_impl(v15, 0, v48, 128, &dword_1962D5000, v12, v14, "<<<< FigNetworkWirelessReportingInterface >>>> %s: [%@] networkWirelessInterface brought up wtePredictionProvider { %@ }", &v40, 32);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();

        if (dword_1EAF17610)
        {
          v37 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v18 = v37;
          v19 = type;
          if (os_log_type_enabled(v17, type))
          {
            v20 = v18;
          }

          else
          {
            v20 = v18 & 0xFFFFFFFE;
          }

          if (v20)
          {
            v21 = v2->_wifiManager;
            cellManager = v2->_cellManager;
            v40 = 136315906;
            v41 = "[FigNetworkWirelessReportingInterface init]";
            v42 = 2112;
            v43 = v2;
            v44 = 2112;
            v45 = v21;
            v46 = 2112;
            v47 = cellManager;
            LODWORD(v33) = 42;
            _os_log_send_and_compose_impl(v20, 0, v48, 128, &dword_1962D5000, v17, v19, "<<<< FigNetworkWirelessReportingInterface >>>> %s: [%@] networkWirelessInterface brought up wifiManager { %@ }, cellManager { %@ }", &v40, v33);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v23 = v2;
      goto LABEL_21;
    }

    v37 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v37;
    v27 = type;
    if (os_log_type_enabled(v25, type))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v40 = 136315394;
      v41 = "[FigNetworkWirelessReportingInterface init]";
      v42 = 2112;
      v43 = v4;
      _os_log_send_and_compose_impl(v28, 0, v48, 128, &dword_1962D5000, v25, v27, "<<<< FigNetworkWirelessReportingInterface >>>> %s: FigWTEPredictionProvider failed to come up with error %@", &v40, 22);
    }

    goto LABEL_29;
  }

  v35 = v4;
  v6 = [[FigCoreTelephony alloc] initWithError:&v35];
  v7 = v35;

  v8 = v2->_cellManager;
  v2->_cellManager = v6;

  if (v2->_cellManager)
  {
    v4 = v7;
    goto LABEL_6;
  }

  v37 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v30 = v37;
  v31 = type;
  if (os_log_type_enabled(v29, type))
  {
    v32 = v30;
  }

  else
  {
    v32 = v30 & 0xFFFFFFFE;
  }

  if (v32)
  {
    v40 = 136315394;
    v41 = "[FigNetworkWirelessReportingInterface init]";
    v42 = 2112;
    v43 = v7;
    _os_log_send_and_compose_impl(v32, 0, v48, 128, &dword_1962D5000, v29, v31, "<<<< FigNetworkWirelessReportingInterface >>>> %s: FigCoreTelephony failed to come up with error %@", &v40, 22);
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v23 = 0;
  v4 = v7;
LABEL_21:

  return v23;
}

+ (id)globalInterface
{
  if (globalInterface_sOnceToken != -1)
  {
    +[FigNetworkWirelessReportingInterface globalInterface];
  }

  v3 = globalInterface_sGlobalInterface;

  return v3;
}

uint64_t __55__FigNetworkWirelessReportingInterface_globalInterface__block_invoke()
{
  globalInterface_sGlobalInterface = objc_alloc_init(FigNetworkWirelessReportingInterface);

  return MEMORY[0x1EEE66BB8]();
}

@end