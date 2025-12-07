@interface ADAMSRSensorWriter
- (ADAMSRSensorWriter)initWithSensorType:(int)type bundleIdentifier:(id)identifier;
- (BOOL)isMonitoring;
- (BOOL)provideSample:(id)sample continuousTimestamp:(unint64_t)timestamp error:(id *)error;
- (BOOL)provideSample:(id)sample error:(id *)error;
@end

@implementation ADAMSRSensorWriter

- (BOOL)isMonitoring
{
  writer = self->_writer;
  if (writer)
  {
    LOBYTE(writer) = [(SRSensorWriter *)writer isMonitoring];
  }

  return writer;
}

- (BOOL)provideSample:(id)sample continuousTimestamp:(unint64_t)timestamp error:(id *)error
{
  sampleCopy = sample;
  writer = self->_writer;
  if (writer)
  {
    v10 = [(SRSensorWriter *)writer provideSample:sampleCopy continuousTimestamp:timestamp error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)provideSample:(id)sample error:(id *)error
{
  sampleCopy = sample;
  writer = self->_writer;
  if (writer)
  {
    v8 = [(SRSensorWriter *)writer provideSample:sampleCopy error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ADAMSRSensorWriter)initWithSensorType:(int)type bundleIdentifier:(id)identifier
{
  v30 = *MEMORY[0x29EDCA608];
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = ADAMSRSensorWriter;
  v8 = [(ADAMSRSensorWriter *)&v21 init];
  if (!v8)
  {
    goto LABEL_21;
  }

  if (type <= 5)
  {
    v4 = **(&unk_29EE526D0 + type);
  }

  v9 = [ADAMSensorKitWriterFactory GetSensorKitWriterWithIdentifier:v4];
  writer = v8->_writer;
  v8->_writer = v9;

  v11 = v8->_writer;
  v12 = v4;
  if (!v11)
  {
    if (ADAM::ADAMLogScope(void)::once != -1)
    {
      dispatch_once(&ADAM::ADAMLogScope(void)::once, &__block_literal_global_107);
    }

    if (ADAM::ADAMLogScope(void)::scope)
    {
      v13 = *ADAM::ADAMLogScope(void)::scope;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = MEMORY[0x29EDCA988];
      v14 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "ADAMSensorKitWriterFactory.mm";
      v24 = 1024;
      v25 = 22;
      v26 = 2112;
      *v27 = v12;
      _os_log_impl(&dword_296C34000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to create SRWriter for %@", buf, 0x1Cu);
    }
  }

LABEL_14:

  if (type > 2)
  {
    v16 = v8->_writer;
    if (v16)
    {
      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __58__ADAMSRSensorWriter_initWithSensorType_bundleIdentifier___block_invoke;
      v18[3] = &unk_29EE526B0;
      v19 = v8;
      v20 = identifierCopy;
      [(SRSensorWriter *)v16 bundleEligibility:v20 completion:v18];
    }
  }

  else
  {
    v8->_isBundleIdentifierEligible = 1;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v15 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v23 = "ADAMSRSensorWriter.mm";
      v24 = 1024;
      v25 = 64;
      v26 = 1040;
      *v27 = 18;
      *&v27[4] = 2080;
      *&v27[6] = "ADAMSRSensorWriter]";
      v28 = 2048;
      v29 = v8;
      _os_log_impl(&dword_296C34000, v15, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] No bundle identifier check for Siri use case", buf, 0x2Cu);
    }
  }

LABEL_21:
  return v8;
}

void __58__ADAMSRSensorWriter_initWithSensorType_bundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (a2 != 1 || v5)
  {
    *(v7 + 18) = 0;
    if (!a2)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v11 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v17 = 136316418;
        v18 = "ADAMSRSensorWriter.mm";
        v19 = 1024;
        v20 = 81;
        v21 = 1040;
        v22 = 18;
        v23 = 2080;
        v24 = "ADAMSRSensorWriter]";
        v25 = 2048;
        v26 = v12;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_296C34000, v11, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] Bundle identifier %@ is not eligible", &v17, 0x36u);
      }
    }

    if (v6)
    {
      {
        ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
      }

      v14 = ADAM::get_log(void)::adam_os_log;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = [v6 debugDescription];
        v17 = 136316418;
        v18 = "ADAMSRSensorWriter.mm";
        v19 = 1024;
        v20 = 86;
        v21 = 1040;
        v22 = 18;
        v23 = 2080;
        v24 = "ADAMSRSensorWriter]";
        v25 = 2048;
        v26 = v15;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_296C34000, v14, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] Error getting bundle identifier eligibility from SensorKit: %@", &v17, 0x36u);
      }
    }
  }

  else
  {
    *(v7 + 18) = 1;
    {
      ADAM::get_log(void)::adam_os_log = os_log_create("com.apple.coreaudio", "adam");
    }

    v8 = ADAM::get_log(void)::adam_os_log;
    if (os_log_type_enabled(ADAM::get_log(void)::adam_os_log, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v17 = 136316418;
      v18 = "ADAMSRSensorWriter.mm";
      v19 = 1024;
      v20 = 74;
      v21 = 1040;
      v22 = 18;
      v23 = 2080;
      v24 = "ADAMSRSensorWriter]";
      v25 = 2048;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_296C34000, v8, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] Bundle identifier %@ is eligible", &v17, 0x36u);
    }
  }
}

@end