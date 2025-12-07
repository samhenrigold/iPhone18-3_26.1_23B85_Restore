@interface ASDTSpeakerThieleSmall
- (ASDTSpeakerThieleSmall)initWithSysCfgData:(id)data;
@end

@implementation ASDTSpeakerThieleSmall

- (ASDTSpeakerThieleSmall)initWithSysCfgData:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = ASDTSpeakerThieleSmall;
  v5 = [(ASDTAcousticData *)&v28 initWithSysCfgData:dataCopy andType:1399870547];
  if (v5)
  {
    v6 = dataCopy;
    bytes = [dataCopy bytes];
    v9 = *bytes;
    if (v9 == 2)
    {
      v10 = dataCopy;
      bytes2 = [dataCopy bytes];
      v12 = ASDT::Acoustic::Base::valid(bytes2, [dataCopy length], 0x16uLL, 2);
      if (v12)
      {
        v14 = ASDT::Acoustic::Data<ASDT::Acoustic::SpeakerThieleSmallV2,(unsigned short)2>::entries(bytes2);
        if (v14)
        {
          v16 = v14;
          v17 = [(ASDTAcousticData *)v5 setEntries:v14];
          v19 = ASDTBaseLogType(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            name = [(ASDTAcousticData *)v5 name];
            entries = [(ASDTAcousticData *)v5 entries];
            *buf = 138412546;
            v30 = name;
            v31 = 2112;
            v32 = entries;
            _os_log_impl(&dword_241659000, v19, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
          }

          goto LABEL_8;
        }

        v23 = ASDTBaseLogType(0, v15);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          name2 = [(ASDTAcousticData *)v5 name];
          [(ASDTSpeakerThieleSmall *)name2 initWithSysCfgData:buf, v23];
        }
      }

      else
      {
        v23 = ASDTBaseLogType(v12, v13);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          name3 = [(ASDTAcousticData *)v5 name];
          [(ASDTSpeakerThieleSmall *)name3 initWithSysCfgData:buf, v23];
        }
      }
    }

    else
    {
      v23 = ASDTBaseLogType(bytes, v8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        name4 = [(ASDTAcousticData *)v5 name];
        [(ASDTSpeakerThieleSmall *)name4 initWithSysCfgData:buf, v9, v23];
      }
    }

    v22 = 0;
    goto LABEL_16;
  }

LABEL_8:
  v22 = v5;
LABEL_16:

  return v22;
}

- (void)initWithSysCfgData:(int)a3 .cold.1(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Unsupported data version: %hu", buf, 0x12u);
}

- (void)initWithSysCfgData:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Invalid data.", buf, 0xCu);
}

- (void)initWithSysCfgData:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Could not generate entries from data.", buf, 0xCu);
}

@end