@interface CWFDiagnosticReporter
+ (id)sharedWiFiDiagnosticReporter;
- (CWFDiagnosticReporter)init;
- (void)initABCReporter;
- (void)removeRequestedBlockOnWiFiABCSignature:(id)signature;
- (void)requestWiFiToBlockABCSignatureUntil:(id)until signature:(id)signature;
- (void)submitWiFiDiagnosticReportType:(id)type reason:(id)reason subtypeContext:(id)context;
@end

@implementation CWFDiagnosticReporter

+ (id)sharedWiFiDiagnosticReporter
{
  if (qword_1ED7E3A48 != -1)
  {
    dispatch_once(&qword_1ED7E3A48, &unk_1F5B89D50);
  }

  v3 = qword_1ED7E3A40;

  return v3;
}

- (CWFDiagnosticReporter)init
{
  v5.receiver = self;
  v5.super_class = CWFDiagnosticReporter;
  v2 = [(CWFDiagnosticReporter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CWFDiagnosticReporter *)v2 initABCReporter];
  }

  return v3;
}

- (void)initABCReporter
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_ABCReporter)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[CWFDiagnosticReporter initABCReporter]";
      _os_log_error_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: initABCReporter already exists \n", &buf, 0xCu);
    }
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = qword_1ED7E3A50;
    v10 = qword_1ED7E3A50;
    if (!qword_1ED7E3A50)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v12 = sub_1E0D3FAF0;
      v13 = &unk_1E86E5600;
      v14 = &v7;
      sub_1E0D3FAF0(&buf);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    v5 = objc_alloc_init(v3);
    ABCReporter = self->_ABCReporter;
    self->_ABCReporter = v5;
  }
}

- (void)submitWiFiDiagnosticReportType:(id)type reason:(id)reason subtypeContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  reasonCopy = reason;
  contextCopy = context;
  ABCReporter = self->_ABCReporter;
  if (ABCReporter || ([(CWFDiagnosticReporter *)self initABCReporter], (ABCReporter = self->_ABCReporter) != 0))
  {
    v12 = [(SDRDiagnosticReporter *)ABCReporter signatureWithDomain:@"WiFi" type:typeCopy subType:reasonCopy subtypeContext:contextCopy detectedProcess:@"wifid" triggerThresholdValues:0];
    v18 = *MEMORY[0x1E69D5080];
    v19 = &unk_1F5BBD7F0;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[CWFDiagnosticReporter submitWiFiDiagnosticReportType:reason:subtypeContext:]";
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: ABC snapshotWithSignature signature: %@", buf, 0x16u);
    }

    v14 = self->_ABCReporter;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1E0D3F600;
    v15[3] = &unk_1E86E9B58;
    v16 = typeCopy;
    v17 = reasonCopy;
    [(SDRDiagnosticReporter *)v14 snapshotWithSignature:v12 delay:0 events:v13 payload:0 actions:v15 reply:0.0];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v21 = "[CWFDiagnosticReporter submitWiFiDiagnosticReportType:reason:subtypeContext:]";
    v22 = 2112;
    v23 = typeCopy;
    v24 = 2112;
    v25 = reasonCopy;
    _os_log_error_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: _ABCReporter failing to init, skipping submitting typeString: %@ reasonString: %@ \n", buf, 0x20u);
  }
}

- (void)requestWiFiToBlockABCSignatureUntil:(id)until signature:(id)signature
{
  v18 = *MEMORY[0x1E69E9840];
  untilCopy = until;
  signatureCopy = signature;
  v7 = signatureCopy;
  if (untilCopy && signatureCopy)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = MEMORY[0x1E695DF90];
    v10 = [standardUserDefaults persistentDomainForName:@"com.apple.wifi.abc"];
    dictionary = [v9 dictionaryWithDictionary:v10];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    [dictionary setObject:untilCopy forKey:v7];
    [standardUserDefaults setPersistentDomain:dictionary forName:@"com.apple.wifi.abc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "[CWFDiagnosticReporter requestWiFiToBlockABCSignatureUntil:signature:]";
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = untilCopy;
      _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: Setting Request to Mute WiFi ABC Calls %@ until %@", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = 136315650;
    v13 = "[CWFDiagnosticReporter requestWiFiToBlockABCSignatureUntil:signature:]";
    v14 = 2112;
    v15 = untilCopy;
    v16 = 2112;
    v17 = v7;
    _os_log_error_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Invalid parameters - date: %@, key: %@", &v12, 0x20u);
  }
}

- (void)removeRequestedBlockOnWiFiABCSignature:(id)signature
{
  v16 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  if (signatureCopy)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = MEMORY[0x1E695DF90];
    v6 = [standardUserDefaults persistentDomainForName:@"com.apple.wifi.abc"];
    v7 = [v5 dictionaryWithDictionary:v6];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[CWFDiagnosticReporter removeRequestedBlockOnWiFiABCSignature:]";
      v12 = 2112;
      v13 = signatureCopy;
      _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: Removing Request to Mute WiFi ABC Calls %@", &v10, 0x16u);
    }

    if (v7)
    {
      v8 = [v7 objectForKeyedSubscript:signatureCopy];

      if (v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v7 objectForKeyedSubscript:signatureCopy];
        v10 = 136315650;
        v11 = "[CWFDiagnosticReporter removeRequestedBlockOnWiFiABCSignature:]";
        v12 = 2112;
        v13 = signatureCopy;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: Removed Request to Mute WiFi ABC Call %@ until %@", &v10, 0x20u);
      }

      [v7 removeObjectForKey:signatureCopy];
      [standardUserDefaults setPersistentDomain:v7 forName:@"com.apple.wifi.abc"];
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CWFDiagnosticReporter removeRequestedBlockOnWiFiABCSignature:]";
      _os_log_error_impl(&dword_1E0BBF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s: Invalid parameter - key is nil", &v10, 0xCu);
    }

    standardUserDefaults = 0;
  }
}

@end