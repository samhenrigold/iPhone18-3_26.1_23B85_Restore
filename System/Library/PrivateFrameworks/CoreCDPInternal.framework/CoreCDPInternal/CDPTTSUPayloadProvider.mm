@interface CDPTTSUPayloadProvider
- (BOOL)requiresInitialSync;
- (CDPTTSUPayloadProvider)initWithCircleProxy:(id)proxy;
- (id)initiatingPayload:(id *)payload;
- (id)processIncomingPayload:(id)payload error:(id *)error;
@end

@implementation CDPTTSUPayloadProvider

- (CDPTTSUPayloadProvider)initWithCircleProxy:(id)proxy
{
  proxyCopy = proxy;
  v9.receiver = self;
  v9.super_class = CDPTTSUPayloadProvider;
  v6 = [(CDPTTSUPayloadProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_circleProxy, proxy);
  }

  return v7;
}

- (id)initiatingPayload:(id *)payload
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = _CDPSignpostLogSystem();
  v6 = _CDPSignpostCreate();

  v7 = _CDPSignpostLogSystem();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "TTSUInitiatingPayload", " enableTelemetry=YES ", buf, 2u);
  }

  v9 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v6;
    _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TTSUInitiatingPayload  enableTelemetry=YES ", buf, 0xCu);
  }

  if (!self->_pairingChannel)
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v10, OS_LOG_TYPE_DEFAULT, "Creating an initiating pairing channel...", buf, 2u);
    }

    pairingChannelInitiator = [(CDPDCircleProxy *)self->_circleProxy pairingChannelInitiator];
    pairingChannel = self->_pairingChannel;
    self->_pairingChannel = pairingChannelInitiator;
  }

  v13 = _CDPLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Creating initiating TTSU payload", buf, 2u);
  }

  v27 = 0;
  v14 = self->_pairingChannel;
  v26 = 0;
  v15 = [(KCPairingChannel *)v14 exchangePacket:0 complete:&v27 error:&v26];
  v16 = v26;
  v17 = _CDPLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v16;
    _os_log_impl(&dword_24510B000, v17, OS_LOG_TYPE_DEFAULT, "Created initiating TTSU payload with error: %@", buf, 0xCu);
  }

  self->_complete = v27;
  if (payload)
  {
    v18 = v16;
    *payload = v16;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v20 = _CDPSignpostLogSystem();
  v21 = v20;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    code = [v16 code];
    *buf = 67240192;
    LODWORD(v29) = code;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v21, OS_SIGNPOST_INTERVAL_END, v6, "TTSUInitiatingPayload", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v23 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    code2 = [v16 code];
    *buf = 134218496;
    v29 = v6;
    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 1026;
    v33 = code2;
    _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TTSUInitiatingPayload  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  return v15;
}

- (id)processIncomingPayload:(id)payload error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v7 = _CDPSignpostLogSystem();
  v8 = _CDPSignpostCreate();

  v9 = _CDPSignpostLogSystem();
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "TTSUProcessIncomingPayload", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v49 = v8;
    _os_log_impl(&dword_24510B000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: TTSUProcessIncomingPayload  enableTelemetry=YES ", buf, 0xCu);
  }

  if (!self->_pairingChannel)
  {
    v13 = _CDPLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v13, OS_LOG_TYPE_DEFAULT, "Creating an accepting pairing channel...", buf, 2u);
    }

    pairingChannelAcceptor = [(CDPDCircleProxy *)self->_circleProxy pairingChannelAcceptor];
    pairingChannel = self->_pairingChannel;
    self->_pairingChannel = pairingChannelAcceptor;
  }

  v16 = _CDPLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v16, OS_LOG_TYPE_DEFAULT, "Processing incoming TTSU payload", buf, 2u);
  }

  v47 = 0;
  v17 = self->_pairingChannel;
  v46 = 0;
  v18 = [(KCPairingChannel *)v17 exchangePacket:payloadCopy complete:&v47 error:&v46];
  v19 = v46;
  v20 = _CDPLogSystem();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v49 = v19;
    v22 = "Processed incoming TTSU payload with error: %@";
    v23 = v20;
    v24 = 12;
  }

  else
  {
    if (!v21)
    {
      goto LABEL_18;
    }

    *buf = 0;
    v22 = "Processing the incoming TTSU payload was successful.";
    v23 = v20;
    v24 = 2;
  }

  _os_log_impl(&dword_24510B000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_18:

  domain = [v19 domain];
  if ([domain isEqualToString:*MEMORY[0x277D22B18]])
  {
    code = [v19 code];

    if (code != 2)
    {
      goto LABEL_27;
    }

    v44 = v8;
    v27 = v8 - 1;
    errorCopy2 = error;
    v29 = _CDPLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v29, OS_LOG_TYPE_DEFAULT, "Detected a stale channel, re-initializing...", buf, 2u);
    }

    pairingChannelAcceptor2 = [(CDPDCircleProxy *)self->_circleProxy pairingChannelAcceptor];
    v31 = self->_pairingChannel;
    self->_pairingChannel = pairingChannelAcceptor2;

    v32 = self->_pairingChannel;
    v45 = v19;
    v33 = [(KCPairingChannel *)v32 exchangePacket:payloadCopy complete:&v47 error:&v45];
    v34 = v45;

    domain = _CDPLogSystem();
    v35 = os_log_type_enabled(domain, OS_LOG_TYPE_DEFAULT);
    if (v34)
    {
      if (v35)
      {
        *buf = 138412290;
        v49 = v34;
        _os_log_impl(&dword_24510B000, domain, OS_LOG_TYPE_DEFAULT, "After re-initialization, processed incoming TTSU payload with error: %@", buf, 0xCu);
      }
    }

    else
    {
      if (v35)
      {
        *buf = 0;
        _os_log_impl(&dword_24510B000, domain, OS_LOG_TYPE_DEFAULT, "After re-initialization, processing the incoming TTSU payload was successful.", buf, 2u);
      }

      v34 = 0;
    }
  }

  else
  {
    v44 = v8;
    v27 = v8 - 1;
    errorCopy2 = error;
    v33 = v18;
    v34 = v19;
  }

  v18 = v33;
  v19 = v34;
  error = errorCopy2;
  v11 = v27;
  v8 = v44;
LABEL_27:
  self->_complete = v47;
  if (error)
  {
    v36 = v19;
    *error = v19;
  }

  Nanoseconds = _CDPSignpostGetNanoseconds();
  v38 = _CDPSignpostLogSystem();
  v39 = v38;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    code2 = [v19 code];
    *buf = 67240192;
    LODWORD(v49) = code2;
    _os_signpost_emit_with_name_impl(&dword_24510B000, v39, OS_SIGNPOST_INTERVAL_END, v8, "TTSUProcessIncomingPayload", " Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 8u);
  }

  v41 = _CDPSignpostLogSystem();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    code3 = [v19 code];
    *buf = 134218496;
    v49 = v8;
    v50 = 2048;
    v51 = Nanoseconds / 1000000000.0;
    v52 = 1026;
    v53 = code3;
    _os_log_impl(&dword_24510B000, v41, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: TTSUProcessIncomingPayload  Error=%{public,signpost.telemetry:number1,name=Error}d ", buf, 0x1Cu);
  }

  return v18;
}

- (BOOL)requiresInitialSync
{
  v6 = *MEMORY[0x277D85DE8];
  needInitialSync = [(KCPairingChannel *)self->_pairingChannel needInitialSync];
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = needInitialSync;
    _os_log_impl(&dword_24510B000, v3, OS_LOG_TYPE_DEFAULT, "Pairing channel indicated initial sync requirement: %{BOOL}d", v5, 8u);
  }

  return needInitialSync;
}

@end