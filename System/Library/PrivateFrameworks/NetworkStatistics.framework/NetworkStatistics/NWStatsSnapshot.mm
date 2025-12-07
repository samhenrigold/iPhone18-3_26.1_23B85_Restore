@interface NWStatsSnapshot
+ (double)_intervalWithContinuousTime:(unint64_t)time;
+ (double)_referenceIntervalWithContinuousTime:(unint64_t)time;
+ (void)initialize;
- (BOOL)attributedEntityIsBundleName;
- (BOOL)attributedEntityIsProcessName;
- (BOOL)isADaemon;
- (NSString)attributionReasonString;
- (NSString)delegateAttributionReasonString;
- (NSString)snapshotReasonString;
- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16];
- (id)extensionDictionaries;
- (void)setAppStateIsForeground:(BOOL)foreground screenStateOn:(BOOL)on startAppStateIsForeground:(BOOL)isForeground startScreenStateOn:(BOOL)stateOn;
- (void)setAttribution:(id)attribution derivation:(int)derivation delegateName:(id)name delegateDerivation:(int)delegateDerivation extensionName:(id)extensionName;
- (void)setDomainName:(id)name owner:(id)owner context:(id)context attributedBundleId:(id)id isTracker:(BOOL)tracker isNonAppInitiated:(BOOL)initiated isSilent:(BOOL)silent;
@end

@implementation NWStatsSnapshot

- (BOOL)isADaemon
{
  if ([(NWStatsSnapshot *)self delegateAttributionReason])
  {
    return 1;
  }

  else
  {
    return attributionReasonImpliesBundleName([(NWStatsSnapshot *)self attributionReason]) ^ 1;
  }
}

- (NSString)snapshotReasonString
{
  v2 = self->_snapshotReason - 1;
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_27996E270 + v2);
  }
}

- (id)_createNSUUIDForBytes:(unsigned __int8)bytes[16]
{
  if (uuid_is_null(bytes))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
  }

  return v4;
}

- (void)setAttribution:(id)attribution derivation:(int)derivation delegateName:(id)name delegateDerivation:(int)delegateDerivation extensionName:(id)extensionName
{
  v8 = *&delegateDerivation;
  v9 = *&derivation;
  nameCopy = name;
  extensionNameCopy = extensionName;
  v13 = MEMORY[0x277CCACA8];
  attributionCopy = attribution;
  v15 = [[v13 alloc] initWithString:attributionCopy];

  [(NWStatsSnapshot *)self setAttributedEntity:v15];
  [(NWStatsSnapshot *)self setAttributionReason:v9];
  [(NWStatsSnapshot *)self setDelegateAttributionReason:v8];
  if (extensionNameCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:extensionNameCopy];
    [(NWStatsSnapshot *)self setAttributedExtension:v16];
  }

  if (nameCopy)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:nameCopy];
    [(NWStatsSnapshot *)self setDelegateName:v17];
  }
}

- (void)setDomainName:(id)name owner:(id)owner context:(id)context attributedBundleId:(id)id isTracker:(BOOL)tracker isNonAppInitiated:(BOOL)initiated isSilent:(BOOL)silent
{
  initiatedCopy = initiated;
  trackerCopy = tracker;
  nameCopy = name;
  ownerCopy = owner;
  contextCopy = context;
  idCopy = id;
  if (nameCopy)
  {
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:nameCopy];
    [(NWStatsSnapshot *)self setDomainName:v18];

    if (ownerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [(NWStatsSnapshot *)self setDomainName:0];
    if (ownerCopy)
    {
LABEL_3:
      v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:ownerCopy];
      [(NWStatsSnapshot *)self setDomainOwner:v19];

      if (contextCopy)
      {
        goto LABEL_4;
      }

LABEL_8:
      [(NWStatsSnapshot *)self setDomainTrackerContext:0];
      if (idCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  [(NWStatsSnapshot *)self setDomainOwner:0];
  if (!contextCopy)
  {
    goto LABEL_8;
  }

LABEL_4:
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:contextCopy];
  [(NWStatsSnapshot *)self setDomainTrackerContext:v20];

  if (idCopy)
  {
LABEL_5:
    v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:idCopy];
    [(NWStatsSnapshot *)self setDomainAttributedBundleId:v21];

    goto LABEL_10;
  }

LABEL_9:
  [(NWStatsSnapshot *)self setDomainAttributedBundleId:0];
LABEL_10:
  [(NWStatsSnapshot *)self setIsTracker:trackerCopy];
  [(NWStatsSnapshot *)self setIsNonAppInitiated:initiatedCopy];
  [(NWStatsSnapshot *)self setIsSilent:silent];
}

- (NSString)attributionReasonString
{
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonString(attributionReason);
}

- (NSString)delegateAttributionReasonString
{
  delegateAttributionReason = [(NWStatsSnapshot *)self delegateAttributionReason];

  return attributionReasonString(delegateAttributionReason);
}

- (BOOL)attributedEntityIsBundleName
{
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesBundleName(attributionReason);
}

- (BOOL)attributedEntityIsProcessName
{
  attributionReason = [(NWStatsSnapshot *)self attributionReason];

  return attributionReasonImpliesProcessName(attributionReason);
}

- (void)setAppStateIsForeground:(BOOL)foreground screenStateOn:(BOOL)on startAppStateIsForeground:(BOOL)isForeground startScreenStateOn:(BOOL)stateOn
{
  stateOnCopy = stateOn;
  isForegroundCopy = isForeground;
  onCopy = on;
  [(NWStatsSnapshot *)self setSnapshotAppStateIsForeground:foreground];
  [(NWStatsSnapshot *)self setSnapshotScreenStateOn:onCopy];
  [(NWStatsSnapshot *)self setStartAppStateIsForeground:isForegroundCopy];

  [(NWStatsSnapshot *)self setStartScreenStateOn:stateOnCopy];
}

+ (double)_intervalWithContinuousTime:(unint64_t)time
{
  LODWORD(v3) = timebase_info_1;
  LODWORD(v4) = *algn_280C54FDC;
  return time * v3 / v4 / 1000000000.0;
}

+ (double)_referenceIntervalWithContinuousTime:(unint64_t)time
{
  v5 = 9;
  do
  {
    v6 = mach_continuous_time();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7;
    v9 = mach_continuous_time() - v6;
    [self _intervalWithContinuousTime:v9];
  }

  while (v10 * 1000000.0 >= 50.0 && v5-- != 0);
  v12 = v6 + (v9 >> 1);
  if (v12 <= time)
  {
    [self _intervalWithContinuousTime:time - v12];
    return v8 + v15;
  }

  else
  {
    [self _intervalWithContinuousTime:v12 - time];
    return v8 - v13;
  }
}

+ (void)initialize
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = mach_timebase_info(&timebase_info_1);
  if (v2)
  {
    v3 = v2;
    v4 = NStatGetLog(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = v3;
      _os_log_impl(&dword_25BA3A000, v4, OS_LOG_TYPE_ERROR, "mach_timebase_info failed %d", v5, 8u);
    }
  }
}

- (id)extensionDictionaries
{
  v20 = *MEMORY[0x277D85DE8];
  extensionDictionaries = self->_extensionDictionaries;
  if (!extensionDictionaries)
  {
    if (self->_extensions)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      extensions = [(NWStatsSnapshot *)self extensions];
      v6 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          v9 = 0;
          do
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(extensions);
            }

            v10 = *(*(&v15 + 1) + 8 * v9);
            extensions2 = [(NWStatsSnapshot *)self extensions];
            v12 = [extensions2 objectForKeyedSubscript:v10];
            [(NSDictionary *)v4 setObject:v12 forKeyedSubscript:v10];

            ++v9;
          }

          while (v7 != v9);
          v7 = [extensions countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v13 = self->_extensionDictionaries;
      self->_extensionDictionaries = v4;

      extensionDictionaries = self->_extensionDictionaries;
    }

    else
    {
      extensionDictionaries = 0;
    }
  }

  return extensionDictionaries;
}

@end