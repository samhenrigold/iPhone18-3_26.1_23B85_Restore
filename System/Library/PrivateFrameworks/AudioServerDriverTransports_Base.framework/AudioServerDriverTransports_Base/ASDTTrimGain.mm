@interface ASDTTrimGain
- (ASDTTrimGain)initWithSysCfgData:(id)data andType:(int)type;
@end

@implementation ASDTTrimGain

- (ASDTTrimGain)initWithSysCfgData:(id)data andType:(int)type
{
  v4 = *&type;
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = ASDTTrimGain;
  v7 = [(ASDTAcousticData *)&v29 initWithSysCfgData:dataCopy andType:v4];
  if (v7)
  {
    v8 = dataCopy;
    bytes = [dataCopy bytes];
    v11 = *bytes;
    if (v11 == 2)
    {
      v12 = dataCopy;
      bytes2 = [dataCopy bytes];
      v14 = ASDT::Acoustic::Base::valid(bytes2, [dataCopy length], 6uLL, 2);
      if (v14)
      {
        v16 = ASDT::Acoustic::Data<ASDT::Acoustic::TrimGainV2,(unsigned short)2>::entries(bytes2);
        if (v16)
        {
          v18 = v16;
          v19 = [(ASDTAcousticData *)v7 setEntries:v16];
          v21 = ASDTBaseLogType(v19, v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            name = [(ASDTAcousticData *)v7 name];
            entries = [(ASDTAcousticData *)v7 entries];
            *buf = 138412546;
            v31 = name;
            v32 = 2112;
            v33 = entries;
            _os_log_impl(&dword_241659000, v21, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
          }

          goto LABEL_8;
        }

        v25 = ASDTBaseLogType(0, v17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          name2 = [(ASDTAcousticData *)v7 name];
          [(ASDTSpeakerThieleSmall *)name2 initWithSysCfgData:buf, v25];
        }
      }

      else
      {
        v25 = ASDTBaseLogType(v14, v15);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [ASDTTrimGain initWithSysCfgData:v25 andType:?];
        }
      }
    }

    else
    {
      v25 = ASDTBaseLogType(bytes, v10);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        name3 = [(ASDTAcousticData *)v7 name];
        [(ASDTSpeakerThieleSmall *)name3 initWithSysCfgData:buf, v11, v25];
      }
    }

    v24 = 0;
    goto LABEL_16;
  }

LABEL_8:
  v24 = v7;
LABEL_16:

  return v24;
}

@end