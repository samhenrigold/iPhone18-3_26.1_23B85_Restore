@interface DTGPUPerformanceStateControlAGXUMD
- (DTGPUPerformanceStateControlAGXUMD)initWithDevice:(id)device;
- (id)currentState;
- (id)disable;
@end

@implementation DTGPUPerformanceStateControlAGXUMD

- (DTGPUPerformanceStateControlAGXUMD)initWithDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = DTGPUPerformanceStateControlAGXUMD;
  v5 = [(DTGPUPerformanceStateControlAGXUMD *)&v10 init];
  if (v5)
  {
    v6 = deviceCopy;
    while ((objc_opt_respondsToSelector() & 1) != 0)
    {
      baseObject = [v6 baseObject];

      v6 = baseObject;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
    {

      v8 = 0;
      goto LABEL_12;
    }

    objc_storeStrong(&v5->_agxDevice, v6);
    v5->_acceleratorId = [v6 registryID];
  }

  v8 = v5;
LABEL_12:

  return v8;
}

- (id)currentState
{
  v29[6] = *MEMORY[0x277D85DE8];
  v3 = [(AGXConsistentStateDevice *)self->_agxDevice getConsistentPerfStateInfoAndReset:1];
  if (v3)
  {
    getConsistentPerfStateMappingTable = [(AGXConsistentStateDevice *)self->_agxDevice getConsistentPerfStateMappingTable];
    v5 = getConsistentPerfStateMappingTable;
    if (getConsistentPerfStateMappingTable)
    {
      v27 = [getConsistentPerfStateMappingTable objectForKeyedSubscript:@"min_pstate"];
      v26 = [v5 objectForKeyedSubscript:@"mid_pstate"];
      v6 = [v5 objectForKeyedSubscript:@"max_pstate"];
      v7 = v6;
      v8 = &unk_285A36FC0;
      if (v27 && v26 && v6)
      {
        v25 = v6;
        unsignedIntValue = [v27 unsignedIntValue];
        unsignedIntValue2 = [v26 unsignedIntValue];
        unsignedIntValue3 = [v25 unsignedIntValue];
        v8 = objc_opt_new();
        v28[0] = @"accelerator-id";
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_acceleratorId];
        v29[0] = v23;
        v29[1] = MEMORY[0x277CBEC38];
        v28[1] = @"available";
        v28[2] = @"enabled";
        v12 = MEMORY[0x277CCABB0];
        v24 = [v3 objectForKeyedSubscript:@"is_enabled"];
        v21 = [v12 numberWithBool:{objc_msgSend(v24, "BOOLValue")}];
        v29[2] = v21;
        v28[3] = @"sustained";
        v13 = MEMORY[0x277CCABB0];
        v22 = [v3 objectForKeyedSubscript:@"was_consistent"];
        v14 = [v13 numberWithBool:{objc_msgSend(v22, "BOOLValue")}];
        v29[3] = v14;
        v28[4] = @"level";
        v15 = MEMORY[0x277CCABB0];
        v16 = [v3 objectForKeyedSubscript:?];
        v17 = [v15 numberWithUnsignedInt:{objc_msgSend(v16, "unsignedIntValue")}];
        v29[4] = v17;
        v28[5] = @"mapping";
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(unsignedIntValue2 << 16) | (unsignedIntValue << 24) | (unsignedIntValue3 << 8)];
        v29[5] = v18;
        v7 = v25;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
        [v8 addEntriesFromDictionary:v19];
      }
    }

    else
    {
      v8 = &unk_285A36F98;
    }
  }

  else
  {
    v8 = &unk_285A36F70;
  }

  return v8;
}

- (id)disable
{
  currentState = [(DTGPUPerformanceStateControlAGXUMD *)self currentState];
  [(AGXConsistentStateDevice *)self->_agxDevice disableConsistentPerfState];

  return currentState;
}

@end