@interface VLAR_DTMFCommandsAccumulator
- (VLAR_DTMFCommandsAccumulator)init;
- (id)_stringFromDTMFCommand:(unint64_t)command withPlaybackState:(unint64_t)state;
- (id)analyticsDataDict;
- (id)reportedCommands;
- (void)noteDidReceiveDTMFCommand:(unint64_t)command withPlaybackState:(unint64_t)state;
@end

@implementation VLAR_DTMFCommandsAccumulator

- (VLAR_DTMFCommandsAccumulator)init
{
  v8.receiver = self;
  v8.super_class = VLAR_DTMFCommandsAccumulator;
  v2 = [(VLAR_DTMFCommandsAccumulator *)&v8 init];
  if (v2)
  {
    v3 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFCommand"];
    commandsAccumulator = v2->_commandsAccumulator;
    v2->_commandsAccumulator = v3;

    v5 = [[SOSAnalyticsEventAccumulator alloc] initWithName:@"DTMFCommand-PlaybackState"];
    commandsWithPlaybackStateAccumulator = v2->_commandsWithPlaybackStateAccumulator;
    v2->_commandsWithPlaybackStateAccumulator = v5;
  }

  return v2;
}

- (id)_stringFromDTMFCommand:(unint64_t)command withPlaybackState:(unint64_t)state
{
  if (command <= 199)
  {
    if (!command)
    {
      v4 = @"None";
      goto LABEL_13;
    }

    if (command == 100)
    {
      v4 = @"Stop";
      goto LABEL_13;
    }
  }

  else
  {
    switch(command)
    {
      case 0xC8uLL:
        v4 = @"Repeat";
        goto LABEL_13;
      case 0x1388uLL:
        v4 = @"Resume";
        goto LABEL_13;
      case 0x2710uLL:
        v4 = @"Unhandled";
        goto LABEL_13;
    }
  }

  v4 = @"Unknown";
LABEL_13:
  v5 = @"NotStarted";
  v6 = @"Responding";
  v7 = @"Repeating";
  if (state != 400)
  {
    v7 = @"NotStarted";
  }

  if (state != 300)
  {
    v6 = v7;
  }

  if (state == 200)
  {
    v5 = @"Stopped";
  }

  if (state == 100)
  {
    v5 = @"InitialLoop";
  }

  if (state > 299)
  {
    v5 = v6;
  }

  return [(__CFString *)v4 stringByAppendingFormat:@"-%@", v5];
}

- (void)noteDidReceiveDTMFCommand:(unint64_t)command withPlaybackState:(unint64_t)state
{
  commandsAccumulator = self->_commandsAccumulator;
  if (command <= 199)
  {
    if (!command)
    {
      v8 = @"None";
      goto LABEL_13;
    }

    if (command == 100)
    {
      v8 = @"Stop";
      goto LABEL_13;
    }
  }

  else
  {
    switch(command)
    {
      case 0xC8uLL:
        v8 = @"Repeat";
        goto LABEL_13;
      case 0x1388uLL:
        v8 = @"Resume";
        goto LABEL_13;
      case 0x2710uLL:
        v8 = @"Unhandled";
        goto LABEL_13;
    }
  }

  v8 = @"Unknown";
LABEL_13:
  [(SOSAnalyticsEventAccumulator *)commandsAccumulator noteEvent:v8];
  commandsWithPlaybackStateAccumulator = self->_commandsWithPlaybackStateAccumulator;
  v10 = [(VLAR_DTMFCommandsAccumulator *)self _stringFromDTMFCommand:command withPlaybackState:state];
  [(SOSAnalyticsEventAccumulator *)commandsWithPlaybackStateAccumulator noteEvent:v10];
}

- (id)reportedCommands
{
  if ([SOSUtilities BOOLOverrideForDefaultsKey:@"debug.voiceloop.demo.allowResume" defaultValue:0])
  {
    v2 = [&unk_2875D2C80 arrayByAddingObject:&unk_2875D2B00];
  }

  else
  {
    v2 = &unk_2875D2C80;
  }

  return v2;
}

- (id)analyticsDataDict
{
  v36 = *MEMORY[0x277D85DE8];
  reportedCommands = [(VLAR_DTMFCommandsAccumulator *)self reportedCommands];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(reportedCommands, "count")}];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(&unk_2875D2C98, "count") * objc_msgSend(reportedCommands, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = reportedCommands;
  v5 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v22 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue = [*(*(&v28 + 1) + 8 * i) unsignedIntegerValue];
        v9 = unsignedIntegerValue;
        if (unsignedIntegerValue <= 199)
        {
          v10 = @"None";
          if (!unsignedIntegerValue)
          {
            goto LABEL_17;
          }

          if (unsignedIntegerValue == 100)
          {
            v10 = @"Stop";
            goto LABEL_17;
          }
        }

        else
        {
          switch(unsignedIntegerValue)
          {
            case 200:
              v10 = @"Repeat";
              goto LABEL_17;
            case 5000:
              v10 = @"Resume";
              goto LABEL_17;
            case 10000:
              v10 = @"Unhandled";
              goto LABEL_17;
          }
        }

        v10 = @"Unknown";
LABEL_17:
        [v23 addObject:v10];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v11 = [&unk_2875D2C98 countByEnumeratingWithState:&v24 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(&unk_2875D2C98);
              }

              v15 = -[VLAR_DTMFCommandsAccumulator _stringFromDTMFCommand:withPlaybackState:](self, "_stringFromDTMFCommand:withPlaybackState:", v9, [*(*(&v24 + 1) + 8 * j) unsignedIntegerValue]);
              [v4 addObject:v15];
            }

            v12 = [&unk_2875D2C98 countByEnumeratingWithState:&v24 objects:v34 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v6);
  }

  v32[0] = @"AllEventsKey";
  v32[1] = @"KnownEventsKey";
  v33[0] = @"nDTMFCommands_Total";
  v33[1] = @"nDTMFCommands_Known";
  v32[2] = @"UnknownEventsKey";
  v33[2] = @"nDTMFCommands_Unknown";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  v17 = [(SOSAnalyticsEventAccumulator *)self->_commandsAccumulator analyticsDataDictForAccumulatedKeys:v23 outputKeyPrefix:@"nDTMFCommand_" summaryKeysDict:0];
  v18 = [(SOSAnalyticsEventAccumulator *)self->_commandsWithPlaybackStateAccumulator analyticsDataDictForAccumulatedKeys:v4 outputKeyPrefix:@"nDTMFCommand_" summaryKeysDict:v16];
  v19 = [v17 mutableCopy];
  [v19 addEntriesFromDictionary:v18];

  return v19;
}

@end