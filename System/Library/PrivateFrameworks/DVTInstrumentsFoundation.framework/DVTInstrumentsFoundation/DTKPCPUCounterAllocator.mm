@interface DTKPCPUCounterAllocator
- (BOOL)_eventExists:(id)exists eventOut:(id *)out;
- (BOOL)_matchesPMIEvent:(id)event;
- (DTKPCPUCounterAllocator)initWithCPU:(id)u error:(id *)error;
- (id)_counterNameForEvent:(id)event error:(id *)error;
- (int)_setErrorFromKpepError:(int)error eventName:(id)name error:(id *)a5;
- (int)addPMCEventName:(id)name error:(id *)error;
- (int)configureHardwareCounters:(id *)counters;
- (int)configureHardwarePMIPeriods:(id *)periods;
- (int)configurePMIActionID:(unsigned int)d error:(id *)error;
- (int)forceCounters:(id *)counters;
- (int)setPMIEventName:(id)name pmiThreshold:(unint64_t)threshold error:(id *)error;
- (int)startHardwareCounters:(id *)counters;
- (int)stopHardwareCounters:(id *)counters;
- (int)unforceCounters:(id *)counters;
- (unint64_t)_counterIndexForEvent:(id)event absolute:(BOOL)absolute error:(id *)error;
- (unint64_t)recordConfigWordsIntoBuffer:(unint64_t *)buffer;
- (unsigned)_getCurrentClasses:(id *)classes;
- (unsigned)kpcClasses;
- (void)_enumerateAllocatedPMCsWithIndex:(id)index;
- (void)dealloc;
- (void)enumerateAllocatedPMCs:(id)cs;
@end

@implementation DTKPCPUCounterAllocator

- (DTKPCPUCounterAllocator)initWithCPU:(id)u error:(id *)error
{
  uCopy = u;
  v30.receiver = self;
  v30.super_class = DTKPCPUCounterAllocator;
  v8 = [(DTKPCPUCounterAllocator *)&v30 init];
  v9 = v8;
  if (v8)
  {
    if (!uCopy)
    {
      sub_24802FCD4();
    }

    objc_storeStrong(&v8->_cpu, u);
    v10 = objc_opt_new();
    eventRecords = v9->_eventRecords;
    v9->_eventRecords = v10;

    [(DTKPCPU *)v9->_cpu kpepDB];
    v12 = kpep_config_create();
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0x277CCACA8];
      name = [(DTKPCPU *)v9->_cpu name];
      v16 = [v14 stringWithFormat:@"Failed to create a kpep config for %@: %d", name, v13];
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294967289, v16);
    }

    else
    {
      v17 = kpep_config_force_counters();
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0x277CCACA8];
        name2 = [(DTKPCPU *)v9->_cpu name];
        [v19 stringWithFormat:@"Failed to force on all counters for %@: %d", name2, v18];
      }

      else
      {
        v9->_fixedCounterCount = 0;
        [(DTKPCPU *)v9->_cpu kpepDB];
        v21 = kpep_db_counters_count();
        if (v21)
        {
          v22 = v21;
          v23 = MEMORY[0x277CCACA8];
          name2 = [(DTKPCPU *)v9->_cpu name];
          [v23 stringWithFormat:@"Failed to get fixed counter count for %@: %d", name2, v22];
        }

        else
        {
          v9->_configurableCounterCount = 0;
          [(DTKPCPU *)v9->_cpu kpepDB];
          v24 = kpep_db_counters_count();
          if (!v24)
          {
            pmiEvent = v9->_pmiEvent;
            v9->_eventsUniqueIds = 0;
            v9->_pmiEvent = 0;
            goto LABEL_13;
          }

          v25 = v24;
          v26 = MEMORY[0x277CCACA8];
          name2 = [(DTKPCPU *)v9->_cpu name];
          [v26 stringWithFormat:@"Failed to get configurable counter count for %@: %d", name2, v25];
        }
      }
      v27 = ;
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294967289, v27);

      kpep_config_free();
      v9->_kpepConfig = 0;
    }

    pmiEvent = v9;
    v9 = 0;
LABEL_13:
  }

  return v9;
}

- (void)dealloc
{
  if (self->_kpepConfig)
  {
    kpep_config_free();
    self->_kpepConfig = 0;
  }

  v3.receiver = self;
  v3.super_class = DTKPCPUCounterAllocator;
  [(DTKPCPUCounterAllocator *)&v3 dealloc];
}

- (unsigned)_getCurrentClasses:(id *)classes
{
  v4 = kpep_config_kpc_classes();
  if (!v4)
  {
    return 0;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to access kpc_classes: %d", v4];
  v6 = -1;
  DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", classes, 0xFFFFFFFFLL, v5);

  return v6;
}

- (unint64_t)_counterIndexForEvent:(id)event absolute:(BOOL)absolute error:(id *)error
{
  absoluteCopy = absolute;
  v19[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!eventCopy)
  {
    sub_24802FD00();
  }

  v9 = eventCopy;
  hwIdx = [eventCopy hwIdx];
  v11 = v19 - ((8 * [(DTKPCPUCounterAllocator *)self _hardwareEventCount]+ 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = kpep_config_kpc_map();
  if (v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to access kpc_map: %d", v12];
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 0xFFFFFFFFLL, v13);
  }

  else
  {
    v14 = *&v11[8 * hwIdx];
    if (!absoluteCopy)
    {
      goto LABEL_6;
    }

    v19[0] = 0;
    v16 = [(DTKPCPUCounterAllocator *)self _getCurrentClasses:v19];
    v17 = v19[0];
    v13 = v17;
    if (!v17)
    {
      if ((v16 & 1) == 0)
      {
        v14 += self->_fixedCounterCount;
      }

      goto LABEL_5;
    }

    if (error)
    {
      v18 = v17;
      *error = v13;
    }
  }

  v14 = -1;
LABEL_5:

LABEL_6:
  return v14;
}

- (id)_counterNameForEvent:(id)event error:(id *)error
{
  v5 = [(DTKPCPUCounterAllocator *)self _counterIndexForEvent:event absolute:1 error:error];
  if (v5 == -1)
  {
    if (error && *error && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_24802FD2C(error);
    }

    v6 = @"PMC<X>";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"PMC%zu", v5];
  }

  return v6;
}

- (BOOL)_eventExists:(id)exists eventOut:(id *)out
{
  existsCopy = exists;
  v7 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:existsCopy];
  v8 = v7;
  if (v7)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_247FE4034;
    v20 = sub_247FE4044;
    v21 = 0;
    eventRecords = self->_eventRecords;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FE404C;
    v12[3] = &unk_278EF3CE0;
    v13 = v7;
    v14 = &v22;
    v15 = &v16;
    [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v12];
    if (out)
    {
      *out = v17[5];
    }

    v10 = *(v23 + 24);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_matchesPMIEvent:(id)event
{
  eventCopy = event;
  pmiEvent = self->_pmiEvent;
  if (pmiEvent)
  {
    eventOrAliasName = [(DTKPCPUCounterAllocatorRecord *)pmiEvent eventOrAliasName];
    if ([eventOrAliasName isEqualToString:eventCopy])
    {
      v7 = 1;
    }

    else
    {
      eventName = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      v7 = [eventName isEqualToString:eventCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int)_setErrorFromKpepError:(int)error eventName:(id)name error:(id *)a5
{
  v16[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8 = kpep_strerror();
  if (nameCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Error for event %@: %s", nameCopy, v8];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }
  v9 = ;
  v10 = v9;
  if (a5)
  {
    v11 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:@"DTKPCPUCounterAllocator" code:-1 userInfo:v12];
  }

  if (error <= 11)
  {
    if (error == 1)
    {
      v13 = -4;
      goto LABEL_18;
    }

    if (error == 11)
    {
      v13 = -801;
      goto LABEL_18;
    }

LABEL_17:
    v13 = -1;
    goto LABEL_18;
  }

  if (error == 14)
  {
    v13 = -806;
    goto LABEL_18;
  }

  if (error == 13)
  {
    v13 = -805;
    goto LABEL_18;
  }

  if (error != 12)
  {
    goto LABEL_17;
  }

  v13 = -804;
LABEL_18:

  return v13;
}

- (int)setPMIEventName:(id)name pmiThreshold:(unint64_t)threshold error:(id *)error
{
  nameCopy = name;
  pmiEvent = self->_pmiEvent;
  if (!pmiEvent)
  {
    v37 = 0;
    v14 = [(DTKPCPUCounterAllocator *)self _eventExists:nameCopy eventOut:&v37];
    v15 = v37;
    v16 = v15;
    if (v14)
    {
      [v15 hwIdx];
      v17 = kpep_config_remove_event();
      if (v17)
      {
        v13 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v17 eventName:nameCopy error:error];
LABEL_17:

        goto LABEL_18;
      }

      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = sub_247FE46C4;
      v33[3] = &unk_278EF3D08;
      v34 = v16;
      selfCopy = self;
      errorCopy = error;
      [(DTKPCPUCounterAllocator *)self enumerateAllocatedPMCs:v33];
      --self->_eventsUniqueIds;
    }

    v18 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:nameCopy];
    v19 = v18;
    if (v18)
    {
      if (![v18 kpepEvent])
      {
        sub_24802FDF4();
      }

      kpepEvent = [v19 kpepEvent];
      v20 = kpep_config_add_event_trigger();
      if (v20)
      {
        v21 = v20;
        aliasOrName = [v19 aliasOrName];
        v13 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v21 eventName:aliasOrName error:error];
      }

      else
      {
        if (kpep_event_name())
        {
          sub_24802FDC8();
        }

        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
        v25 = [DTKPCPUCounterAllocatorRecord alloc];
        aliasOrName2 = [v19 aliasOrName];
        ++self->_eventsUniqueIds;
        v27 = [(DTKPCPUCounterAllocatorRecord *)v25 initWithName:v24 nameOrAlias:aliasOrName2 counterName:@"TBD" kpepEvent:kpepEvent isPMI:1 hwIdx:?];
        v28 = self->_pmiEvent;
        self->_pmiEvent = v27;

        v29 = [(DTKPCPUCounterAllocator *)self _counterNameForEvent:self->_pmiEvent error:error];
        [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent setCounterName:v29];

        self->_pmiThreshold = threshold;
        if (v14)
        {
          [v16 setHwIdx:{-[DTKPCPUCounterAllocatorRecord hwIdx](self->_pmiEvent, "hwIdx")}];
          counterName = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent counterName];
          [v16 setCounterName:counterName];

          [v16 setKpepEvent:0];
        }

        v13 = 0;
      }
    }

    else
    {
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Event not found: %@'", nameCopy];
      v13 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294966495, nameCopy);
    }

    goto LABEL_17;
  }

  v10 = MEMORY[0x277CCACA8];
  eventOrAliasName = [(DTKPCPUCounterAllocatorRecord *)pmiEvent eventOrAliasName];
  nameCopy2 = [v10 stringWithFormat:@"Cannot changed the allocated PMI event from '%@' to '%@'", eventOrAliasName, nameCopy];
  v13 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294966493, nameCopy2);

LABEL_18:
  return v13;
}

- (int)addPMCEventName:(id)name error:(id *)error
{
  nameCopy = name;
  if ([(DTKPCPUCounterAllocator *)self _eventExists:nameCopy eventOut:0])
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"The event named '%@' has already been added.", nameCopy];
    v8 = DTKPSetErrorAndOrLogWithFileAndLine(0, "DTKPCPUCounterAllocator", error, 4294966494, nameCopy);
  }

  else
  {
    if ([(DTKPCPUCounterAllocator *)self _matchesPMIEvent:nameCopy])
    {
      eventRecords = self->_eventRecords;
      v10 = [DTKPCPUCounterAllocatorRecord alloc];
      eventName = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      eventName2 = [(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent eventName];
      v13 = [(DTKPCPUCounterAllocatorRecord *)v10 initWithName:eventName nameOrAlias:nameCopy counterName:eventName2 kpepEvent:0 isPMI:0 hwIdx:[(DTKPCPUCounterAllocatorRecord *)self->_pmiEvent hwIdx]];
      [(NSMutableArray *)eventRecords addObject:v13];

      v8 = 0;
      goto LABEL_6;
    }

    v15 = [(DTKPCPU *)self->_cpu eventFromNameOrAlias:nameCopy];
    nameCopy = v15;
    if (v15)
    {
      if (![v15 kpepEvent])
      {
        sub_24802FE20();
      }

      kpepEvent = [nameCopy kpepEvent];
      v16 = kpep_config_add_event();
      if (v16)
      {
        v17 = v16;
        name = [nameCopy name];
        v8 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v17 eventName:name error:error];
      }

      else
      {
        v20 = kpep_event_name();
        if (v20)
        {
          v21 = v20;
          name2 = [nameCopy name];
          v8 = [(DTKPCPUCounterAllocator *)self _setErrorFromKpepError:v21 eventName:name2 error:error];
        }

        else
        {
          name2 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
          v23 = [DTKPCPUCounterAllocatorRecord alloc];
          aliasOrName = [nameCopy aliasOrName];
          ++self->_eventsUniqueIds;
          v25 = [(DTKPCPUCounterAllocatorRecord *)v23 initWithName:name2 nameOrAlias:aliasOrName counterName:@"TBD" kpepEvent:kpepEvent isPMI:0 hwIdx:?];

          [(NSMutableArray *)self->_eventRecords addObject:v25];
          lastObject = [(NSMutableArray *)self->_eventRecords lastObject];
          v27 = [(DTKPCPUCounterAllocator *)self _counterNameForEvent:lastObject error:error];
          [(DTKPCPUCounterAllocatorRecord *)v25 setCounterName:v27];

          v8 = 0;
        }
      }
    }

    else
    {
      nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Event not found: %@'", nameCopy];
      v8 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294966495, nameCopy2);
    }
  }

LABEL_6:
  return v8;
}

- (void)_enumerateAllocatedPMCsWithIndex:(id)index
{
  indexCopy = index;
  eventRecords = self->_eventRecords;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE4AFC;
  v7[3] = &unk_278EF3D30;
  v8 = indexCopy;
  v6 = indexCopy;
  [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v7];
}

- (void)enumerateAllocatedPMCs:(id)cs
{
  csCopy = cs;
  eventRecords = self->_eventRecords;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247FE4BA4;
  v7[3] = &unk_278EF3D30;
  v8 = csCopy;
  v6 = csCopy;
  [(NSMutableArray *)eventRecords enumerateObjectsUsingBlock:v7];
}

- (unsigned)kpcClasses
{
  if (kpep_config_kpc_classes())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)recordConfigWordsIntoBuffer:(unint64_t *)buffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FE4CC8;
  v5[3] = &unk_278EF3D58;
  v5[5] = &v6;
  v5[6] = buffer;
  v5[4] = self;
  [(DTKPCPUCounterAllocator *)self _enumerateAllocatedPMCsWithIndex:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int)configureHardwareCounters:(id *)counters
{
  if (!kpep_config_kpc_classes())
  {
    return 0;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc classes: %s.", kpep_strerror()];
  v5 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", counters, 4294967288, v4);

  return v5;
}

- (int)configureHardwarePMIPeriods:(id *)periods
{
  if (kpep_config_kpc_classes())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc classes: %s.", kpep_strerror()];
    v5 = LABEL_5:;
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", periods, 4294967288, v5);
    goto LABEL_6;
  }

  [(DTKPCPU *)self->_cpu kpepDB];
  if (kpep_db_counters_count())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc period number: %s.", kpep_strerror()];
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEB28] dataWithLength:0];
  [v5 mutableBytes];
  if (kpep_config_kpc_periods())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configureHardwarePMIPeriods: Failed to get kpc periods: %s.", kpep_strerror()];
  }

  else
  {
    [v5 mutableBytes];
    if (!kpc_set_period())
    {
      v6 = 0;
      goto LABEL_6;
    }

    v8 = MEMORY[0x277CCACA8];
    v9 = __error();
    [v8 stringWithFormat:@"configureHardwarePMIPeriods: Failed to set kpc PMI period: %s.", strerror(*v9)];
  }
  v10 = ;
  v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", periods, 4294967288, v10);

LABEL_6:
  return v6;
}

- (int)configurePMIActionID:(unsigned int)d error:(id *)error
{
  if (kpep_config_kpc_classes())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configurePMIActionID: Failed to get kpc classes: %s.", kpep_strerror()];
    v7 = LABEL_5:;
    v8 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294967288, v7);
    goto LABEL_6;
  }

  [(DTKPCPU *)self->_cpu kpepDB];
  if (kpep_db_counters_count())
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"configurePMIActionID: Failed to get kpc period number: %s.", kpep_strerror()];
    goto LABEL_5;
  }

  allocatedPMIRecord = [(DTKPCPUCounterAllocator *)self allocatedPMIRecord];
  if (!allocatedPMIRecord)
  {
    sub_24802FED8();
  }

  v7 = allocatedPMIRecord;
  v11 = [(DTKPCPUCounterAllocator *)self _counterIndexForEvent:allocatedPMIRecord absolute:0 error:error];
  v12 = [MEMORY[0x277CBEB28] dataWithLength:0];
  *([v12 mutableBytes] + 4 * v11) = d;
  if (kpc_set_actionid())
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = __error();
    v15 = [v13 stringWithFormat:@"configurePMIActionID: Failed to set kpc PMI period: %s.", strerror(*v14)];
    v8 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", error, 4294967288, v15);
  }

  else
  {
    v8 = 0;
  }

LABEL_6:
  return v8;
}

- (int)forceCounters:(id *)counters
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to force all hardware CPU counters: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", counters, 4294966489, v5);

    return v6;
  }

  return result;
}

- (int)unforceCounters:(id *)counters
{
  result = kpc_force_all_ctrs_set();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to unforce all hardware CPU counters: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", counters, 4294966487, v5);

    return v6;
  }

  return result;
}

- (int)startHardwareCounters:(id *)counters
{
  [(DTKPCPUCounterAllocator *)self kpcClasses];
  result = kpc_set_counting();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to start kpc counting: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", counters, 4294967288, v5);

    return v6;
  }

  return result;
}

- (int)stopHardwareCounters:(id *)counters
{
  result = kpc_set_counting();
  if (result)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to stop kpc counting: %d.", *__error()];
    v6 = DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPUCounterAllocator", counters, 4294967288, v5);

    return v6;
  }

  return result;
}

@end