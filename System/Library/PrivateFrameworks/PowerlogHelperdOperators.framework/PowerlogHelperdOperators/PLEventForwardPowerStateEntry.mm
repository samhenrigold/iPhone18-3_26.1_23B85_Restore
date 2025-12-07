@interface PLEventForwardPowerStateEntry
+ (void)load;
- (BOOL)isBasebandWake;
- (id)initEntryWithIOMessage:(unsigned int)message;
- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withCurrentWakeTime:(unint64_t)time withCurrentWakeTimeKey:(id)key withDate:(id)date;
- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withCurrentWakeTime:(unint64_t)time withCurrentWakeTimeKey:(id)key withWakeType:(id)type withDriverWakeReason:(id)wakeReason withDate:(id)self0;
- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withDate:(id)date;
- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withKernelSleepDate:(id)date withDate:(id)withDate;
- (signed)event;
- (signed)state;
@end

@implementation PLEventForwardPowerStateEntry

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEventForwardPowerStateEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withDate:(id)date
{
  eventCopy = event;
  stateCopy = state;
  reasonCopy = reason;
  dateCopy = date;
  v12 = +[PLEventForwardPowerStateEntry entryKey];
  v18.receiver = self;
  v18.super_class = PLEventForwardPowerStateEntry;
  v13 = [(PLEntry *)&v18 initWithEntryKey:v12 withDate:dateCopy];

  if (v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithShort:stateCopy];
    [(PLEntry *)v13 setObject:v14 forKeyedSubscript:@"State"];

    v15 = [MEMORY[0x277CCABB0] numberWithShort:eventCopy];
    [(PLEntry *)v13 setObject:v15 forKeyedSubscript:@"Event"];

    v16 = IOPMSleepWakeCopyUUID();
    [(PLEntry *)v13 setObject:v16 forKeyedSubscript:@"UUID"];

    if (reasonCopy)
    {
      [(PLEntry *)v13 setObject:reasonCopy forKeyedSubscript:@"Reason"];
    }
  }

  return v13;
}

- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withKernelSleepDate:(id)date withDate:(id)withDate
{
  eventCopy = event;
  stateCopy = state;
  reasonCopy = reason;
  dateCopy = date;
  withDateCopy = withDate;
  v15 = +[PLEventForwardPowerStateEntry entryKey];
  v21.receiver = self;
  v21.super_class = PLEventForwardPowerStateEntry;
  v16 = [(PLEntry *)&v21 initWithEntryKey:v15 withDate:withDateCopy];

  if (v16)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithShort:stateCopy];
    [(PLEntry *)v16 setObject:v17 forKeyedSubscript:@"State"];

    v18 = [MEMORY[0x277CCABB0] numberWithShort:eventCopy];
    [(PLEntry *)v16 setObject:v18 forKeyedSubscript:@"Event"];

    v19 = IOPMSleepWakeCopyUUID();
    [(PLEntry *)v16 setObject:v19 forKeyedSubscript:@"UUID"];

    [(PLEntry *)v16 setObject:dateCopy forKeyedSubscript:@"KernelSleepDate"];
    if (reasonCopy)
    {
      [(PLEntry *)v16 setObject:reasonCopy forKeyedSubscript:@"Reason"];
    }
  }

  return v16;
}

- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withCurrentWakeTime:(unint64_t)time withCurrentWakeTimeKey:(id)key withWakeType:(id)type withDriverWakeReason:(id)wakeReason withDate:(id)self0
{
  eventCopy = event;
  stateCopy = state;
  reasonCopy = reason;
  keyCopy = key;
  typeCopy = type;
  wakeReasonCopy = wakeReason;
  dateCopy = date;
  v21 = +[PLEventForwardPowerStateEntry entryKey];
  v28.receiver = self;
  v28.super_class = PLEventForwardPowerStateEntry;
  v22 = [(PLEntry *)&v28 initWithEntryKey:v21 withDate:dateCopy];

  if (v22)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithShort:stateCopy];
    [(PLEntry *)v22 setObject:v23 forKeyedSubscript:@"State"];

    v24 = [MEMORY[0x277CCABB0] numberWithShort:eventCopy];
    [(PLEntry *)v22 setObject:v24 forKeyedSubscript:@"Event"];

    v25 = IOPMSleepWakeCopyUUID();
    [(PLEntry *)v22 setObject:v25 forKeyedSubscript:@"UUID"];

    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
    [(PLEntry *)v22 setObject:v26 forKeyedSubscript:keyCopy];

    if (reasonCopy)
    {
      [(PLEntry *)v22 setObject:reasonCopy forKeyedSubscript:@"Reason"];
    }

    if (typeCopy)
    {
      [(PLEntry *)v22 setObject:typeCopy forKeyedSubscript:@"WakeType"];
    }

    if (wakeReasonCopy)
    {
      [(PLEntry *)v22 setObject:wakeReasonCopy forKeyedSubscript:@"DriverWakeReason"];
    }
  }

  return v22;
}

- (id)initEntryWithState:(signed __int16)state withEvent:(signed __int16)event withReason:(id)reason withCurrentWakeTime:(unint64_t)time withCurrentWakeTimeKey:(id)key withDate:(id)date
{
  eventCopy = event;
  stateCopy = state;
  reasonCopy = reason;
  keyCopy = key;
  dateCopy = date;
  v17 = +[PLEventForwardPowerStateEntry entryKey];
  v24.receiver = self;
  v24.super_class = PLEventForwardPowerStateEntry;
  v18 = [(PLEntry *)&v24 initWithEntryKey:v17 withDate:dateCopy];

  if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithShort:stateCopy];
    [(PLEntry *)v18 setObject:v19 forKeyedSubscript:@"State"];

    v20 = [MEMORY[0x277CCABB0] numberWithShort:eventCopy];
    [(PLEntry *)v18 setObject:v20 forKeyedSubscript:@"Event"];

    v21 = IOPMSleepWakeCopyUUID();
    [(PLEntry *)v18 setObject:v21 forKeyedSubscript:@"UUID"];

    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
    [(PLEntry *)v18 setObject:v22 forKeyedSubscript:keyCopy];

    if (reasonCopy)
    {
      [(PLEntry *)v18 setObject:reasonCopy forKeyedSubscript:@"Reason"];
    }
  }

  return v18;
}

- (id)initEntryWithIOMessage:(unsigned int)message
{
  HIDWORD(v5) = message + 536870288;
  LODWORD(v5) = message + 536870288;
  v4 = v5 >> 4;
  v6 = -1;
  if (v4 <= 1)
  {
    if (v4 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (v4)
    {
      v6 = v8;
    }

    else
    {
      v6 = 3;
    }

    if (v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_18;
  }

  if (v4 == 2)
  {
    v9 = 1;
    v6 = 2;
LABEL_18:
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    self = [(PLEventForwardPowerStateEntry *)self initEntryWithState:v9 withEvent:v6 withReason:0 withDate:monotonicDate];

    selfCopy = self;
    goto LABEL_19;
  }

  if (v4 == 9)
  {
    v6 = 0;
    v9 = 0;
    goto LABEL_18;
  }

  if (v4 != 11)
  {
    v9 = -1;
    goto LABEL_18;
  }

  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (signed)state
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"State"];
  longValue = [v2 longValue];

  return longValue;
}

- (signed)event
{
  v2 = [(PLEntry *)self objectForKeyedSubscript:@"Event"];
  longValue = [v2 longValue];

  return longValue;
}

- (BOOL)isBasebandWake
{
  reason = [(PLEventForwardPowerStateEntry *)self reason];
  v3 = [reason containsAtleastOneOf:&unk_28714BC78];

  return v3;
}

@end