@interface DSConsensusDatum
- (DSConsensusDatum)initWithIdentifier:(id)identifier andConfidence:(unsigned __int8)confidence atTime:(id)time;
- (void)printInfo;
@end

@implementation DSConsensusDatum

- (DSConsensusDatum)initWithIdentifier:(id)identifier andConfidence:(unsigned __int8)confidence atTime:(id)time
{
  identifierCopy = identifier;
  timeCopy = time;
  v14.receiver = self;
  v14.super_class = DSConsensusDatum;
  v11 = [(DSConsensusDatum *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_identifier, identifier);
    v12->_confidence = confidence;
    objc_storeStrong(&v12->_time, time);
  }

  return v12;
}

- (void)printInfo
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
  if (onceTokenDSConsensus != -1)
  {
    [DSConsensusDatum printInfo];
  }

  v4 = logObjDSConsensus;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->_identifier UTF8String];
    confidence = self->_confidence;
    if (confidence <= 6)
    {
      if (!self->_confidence)
      {
        v7 = "lowest";
        goto LABEL_16;
      }

      if (confidence == 4)
      {
        v7 = "low-medium";
        goto LABEL_16;
      }
    }

    else
    {
      switch(confidence)
      {
        case 7u:
          v7 = "medium";
          goto LABEL_16;
        case 0xBu:
          v7 = "medium-high";
          goto LABEL_16;
        case 0xFu:
          v7 = "highest";
LABEL_16:
          v8 = [v3 stringFromDate:self->_time];
          v9 = 136315650;
          v10 = uTF8String;
          v11 = 2080;
          v12 = v7;
          v13 = 2112;
          v14 = v8;
          _os_log_impl(&dword_249027000, v4, OS_LOG_TYPE_DEFAULT, "Consensus Datum with ID: %s, Confidence: %s, time: %@", &v9, 0x20u);

          goto LABEL_17;
      }
    }

    v7 = "?";
    goto LABEL_16;
  }

LABEL_17:
}

@end