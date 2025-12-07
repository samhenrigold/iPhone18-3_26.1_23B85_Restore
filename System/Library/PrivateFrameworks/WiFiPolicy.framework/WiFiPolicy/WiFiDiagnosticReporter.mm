@interface WiFiDiagnosticReporter
+ (id)sharedWiFiDiagnosticReporter;
- (BOOL)isWiFiABCSignatureUnblocked:(id)unblocked;
- (WiFiDiagnosticReporter)init;
- (void)initABCReporter;
- (void)submitWiFiWatchdogReason:(id)reason subtypeContext:(id)context;
@end

@implementation WiFiDiagnosticReporter

+ (id)sharedWiFiDiagnosticReporter
{
  if (sharedWiFiDiagnosticReporter_onceToken != -1)
  {
    +[WiFiDiagnosticReporter sharedWiFiDiagnosticReporter];
  }

  v3 = sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter;

  return v3;
}

uint64_t __54__WiFiDiagnosticReporter_sharedWiFiDiagnosticReporter__block_invoke()
{
  v0 = objc_alloc_init(WiFiDiagnosticReporter);
  v1 = sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter;
  sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)submitWiFiWatchdogReason:(id)reason subtypeContext:(id)context
{
  v19[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  contextCopy = context;
  ABCReporter = self->_ABCReporter;
  if (ABCReporter || ([(WiFiDiagnosticReporter *)self initABCReporter], (ABCReporter = self->_ABCReporter) != 0))
  {
    v9 = [(SDRDiagnosticReporter *)ABCReporter signatureWithDomain:@"WiFi" type:@"WiFi Watchdog" subType:reasonCopy subtypeContext:contextCopy detectedProcess:@"wifid" triggerThresholdValues:0];
    v18 = *MEMORY[0x277D6B138];
    v19[0] = &unk_2848BB088;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]";
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ABC snapshotWithSignature signature: %@", buf, 0x16u);
    }

    v11 = self->_ABCReporter;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__WiFiDiagnosticReporter_submitWiFiWatchdogReason_subtypeContext___block_invoke;
    v12[3] = &unk_2789C6998;
    v13 = reasonCopy;
    [(SDRDiagnosticReporter *)v11 snapshotWithSignature:v9 delay:0 events:v10 payload:0 actions:v12 reply:60.0];
  }

  else
  {
    [WiFiDiagnosticReporter submitWiFiWatchdogReason:reasonCopy subtypeContext:?];
  }
}

void __66__WiFiDiagnosticReporter_submitWiFiWatchdogReason_subtypeContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]_block_invoke";
    v7 = 2112;
    v8 = v4;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: reasonString: %@ ABC snapshot response: %@", &v5, 0x20u);
  }
}

- (void)initABCReporter
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 136315138;
    v1 = "[WiFiDiagnosticReporter initABCReporter]";
    _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: initABCReporter already exists \n", &v0, 0xCu);
  }
}

- (WiFiDiagnosticReporter)init
{
  v5.receiver = self;
  v5.super_class = WiFiDiagnosticReporter;
  v2 = [(WiFiDiagnosticReporter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiDiagnosticReporter *)v2 initABCReporter];
  }

  return v3;
}

- (BOOL)isWiFiABCSignatureUnblocked:(id)unblocked
{
  v22 = *MEMORY[0x277D85DE8];
  unblockedCopy = unblocked;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults persistentDomainForName:@"com.apple.wifi.abc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    v17 = unblockedCopy;
    v18 = v15;
    v19 = standardUserDefaults;
    v20 = v15;
    v21 = v5;
    _os_log_debug_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: testing for key %@ have %@ and %@", v16, 0x2Au);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = 0;
LABEL_15:
    v11 = 1;
    goto LABEL_12;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = [v5 objectForKeyedSubscript:unblockedCopy];
  if (!v6)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = v6;
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date compare:v6];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v10 = v8 == -1;
  v11 = v8 != -1;
  if (v10)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_0_0();
      v17 = v6;
      v12 = MEMORY[0x277D86220];
      v13 = "%s: ABC signature is currently blocked by request until %@";
      goto LABEL_10;
    }
  }

  else if (v9)
  {
    OUTLINED_FUNCTION_0_0();
    v17 = unblockedCopy;
    v12 = MEMORY[0x277D86220];
    v13 = "%s: ABC signature is unblocked: %@";
LABEL_10:
    _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_DEFAULT, v13, v16, 0x16u);
  }

LABEL_12:
  return v11;
}

- (void)submitWiFiWatchdogReason:(uint64_t)a1 subtypeContext:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = 136315394;
    v3 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]";
    v4 = 2112;
    v5 = a1;
    _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: _ABCReporter failing to init, skipping submitting reasonString: %@ \n", &v2, 0x16u);
  }
}

@end