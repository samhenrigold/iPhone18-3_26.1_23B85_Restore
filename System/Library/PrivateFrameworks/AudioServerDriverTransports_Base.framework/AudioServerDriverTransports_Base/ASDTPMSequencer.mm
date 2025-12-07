@interface ASDTPMSequencer
+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)config withParent:(id)parent;
+ (int64_t)compare:(id)compare with:(id)with forPowerUp:(BOOL)up;
- (ASDTAudioDevice)parentDevice;
- (ASDTPMProtocol)parent;
- (ASDTPMSequencer)initWithPMDeviceConfig:(id)config withParent:(id)parent;
- (BOOL)addPMDevicesWithConfig:(id)config;
- (BOOL)doAddPMDeviceWithConfig:(id)config;
- (id)pmDeviceWithName:(id)name;
- (int)doExecuteSequenceToState:(int)state;
- (int)executeSequenceFromState:(int)state toState:(int)toState;
- (int)executeSequenceToState:(int)state;
- (int)executeSequenceToState:(int)state fromState:(int)fromState;
- (int)powerState;
- (void)doUpdateQuiescentState:(int)state;
- (void)sortPMDevices;
- (void)updateQuiescentState:(int)state;
@end

@implementation ASDTPMSequencer

+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)config withParent:(id)parent
{
  configCopy = config;
  parentCopy = parent;
  v7 = [[ASDTPMSequencer alloc] initWithPMDeviceConfig:configCopy withParent:parentCopy];

  return v7;
}

- (ASDTPMSequencer)initWithPMDeviceConfig:(id)config withParent:(id)parent
{
  v38 = *MEMORY[0x277D85DE8];
  configCopy = config;
  parentCopy = parent;
  if (!parentCopy)
  {
    goto LABEL_19;
  }

  v36.receiver = self;
  v36.super_class = ASDTPMSequencer;
  v8 = [(ASDTPMSequencer *)&v36 init];
  self = v8;
  if (v8)
  {
    [(ASDTPMSequencer *)v8 setQuiescentState:1767990132];
    [(ASDTPMSequencer *)self setParent:parentCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ASDTPMSequencer *)self setParentDevice:parentCopy];
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = MEMORY[0x277CCACA8];
    parent = [(ASDTPMSequencer *)self parent];
    name = [parent name];
    v14 = [v11 stringWithFormat:@"%s.%@.serial", "com.apple.AudioServerDriverTransports", name];

    v15 = v14;
    v16 = dispatch_queue_create([v14 UTF8String], v10);
    [(ASDTPMSequencer *)self setPmSerialQueue:v16];

    pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
    LODWORD(v16) = pmSerialQueue == 0;

    if (v16)
    {
      v22 = ASDTBaseLogType(v18, v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        parent2 = [(ASDTPMSequencer *)self parent];
        name2 = [parent2 name];
        [(ASDTPMSequencer *)name2 initWithPMDeviceConfig:buf withParent:v22, parent2];
      }
    }

    else
    {
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configCopy, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerUp:v20];

      v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configCopy, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerDown:v21];

      v22 = [ASDTPMDeviceProxy forPMDevice:parentCopy];
      mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
      [mutablePMDevicesPowerUp addObject:v22];

      mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
      [mutablePMDevicesPowerDown addObject:v22];

      if ([(ASDTPMSequencer *)self addPMDevicesWithConfig:configCopy])
      {
        pmDevicesPowerUp = [(ASDTPMSequencer *)self pmDevicesPowerUp];
        if ([pmDevicesPowerUp count])
        {
          pmDevicesPowerDown = [(ASDTPMSequencer *)self pmDevicesPowerDown];
          v27 = [pmDevicesPowerDown count] == 0;

          if (!v27)
          {

            goto LABEL_10;
          }
        }

        else
        {
        }

        v33 = ASDTBaseLogType(v28, v29);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          name3 = [parentCopy name];
          [(ASDTPMSequencer *)name3 initWithPMDeviceConfig:buf withParent:v33];
        }
      }
    }

LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

LABEL_10:
  self = self;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (BOOL)doAddPMDeviceWithConfig:(id)config
{
  v17 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v6 = [ASDTPMDevice pmDeviceWithConfig:configCopy forSequencer:self];
  if (v6)
  {
    mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
    [mutablePMDevicesPowerUp addObject:v6];

    mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
    [mutablePMDevicesPowerDown addObject:v6];
  }

  else
  {
    v9 = ASDTBaseLogType(0, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      parent = [(ASDTPMSequencer *)self parent];
      name = [parent name];
      v13 = 138412546;
      v14 = name;
      v15 = 2112;
      v16 = configCopy;
      _os_log_error_impl(&dword_241659000, v9, OS_LOG_TYPE_ERROR, "%@: Error creating PM device for dictionary: %@", &v13, 0x16u);
    }
  }

  return v6 != 0;
}

- (void)sortPMDevices
{
  mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  [mutablePMDevicesPowerUp sortUsingComparator:&__block_literal_global_6];

  mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  [mutablePMDevicesPowerDown sortUsingComparator:&__block_literal_global_9];

  mutablePMDevicesPowerUp2 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  v3 = [mutablePMDevicesPowerUp2 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerUp:v3];

  mutablePMDevicesPowerDown2 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  v4 = [mutablePMDevicesPowerDown2 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerDown:v4];
}

- (BOOL)addPMDevicesWithConfig:(id)config
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  configCopy = config;
  v5 = [configCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(configCopy);
        }

        if (![(ASDTPMSequencer *)self doAddPMDeviceWithConfig:*(*(&v10 + 1) + 8 * i), v10])
        {

          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [configCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [(ASDTPMSequencer *)self sortPMDevices];
  v8 = 1;
LABEL_11:

  return v8;
}

+ (int64_t)compare:(id)compare with:(id)with forPowerUp:(BOOL)up
{
  upCopy = up;
  compareCopy = compare;
  withCopy = with;
  if (upCopy)
  {
    pmOrderPowerUp = [compareCopy pmOrderPowerUp];
    pmOrderPowerUp2 = [withCopy pmOrderPowerUp];
  }

  else
  {
    pmOrderPowerUp2 = [compareCopy pmOrderPowerDown];
    pmOrderPowerUp = [withCopy pmOrderPowerDown];
  }

  if (pmOrderPowerUp >= pmOrderPowerUp2)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (pmOrderPowerUp > pmOrderPowerUp2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (int)executeSequenceFromState:(int)state toState:(int)toState
{
  v101 = *MEMORY[0x277D85DE8];
  if (!toState)
  {
    return 1852797029;
  }

  v6 = asdtPowerTransitionForStateChange(state, toState);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  stateCopy = state;
  v62 = asdtPowerTransitionUpwards(v6);
  if (v62)
  {
    [(ASDTPMSequencer *)self pmDevicesPowerUp];
  }

  else
  {
    [(ASDTPMSequencer *)self pmDevicesPowerDown];
  }
  v8 = ;
  objectEnumerator = [v8 objectEnumerator];

  v69 = 0uLL;
  v70 = 0x10000;
  ASDTTime::machAbsoluteTime(&v67);
  v49 = 0;
  nextObject = 0;
  if (v7 - 32 >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = v7;
  }

  v13 = BYTE1(v7);
  if (BYTE1(v7) - 32 >= 0x5F)
  {
    v13 = 32;
  }

  v60 = v13;
  v61 = v12;
  if (BYTE2(v7) - 32 >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = BYTE2(v7);
  }

  if ((v7 - 0x20000000) >> 24 >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = BYTE3(v7);
  }

  v58 = v15;
  v59 = v14;
  if (toState - 32 >= 0x5F)
  {
    toStateCopy = 32;
  }

  else
  {
    toStateCopy = toState;
  }

  v17 = BYTE1(toState);
  if (BYTE1(toState) - 32 >= 0x5F)
  {
    v17 = 32;
  }

  v56 = v17;
  v57 = toStateCopy;
  if (BYTE2(toState) - 32 >= 0x5F)
  {
    v18 = 32;
  }

  else
  {
    v18 = BYTE2(toState);
  }

  if ((toState - 0x20000000) >> 24 >= 0x5F)
  {
    v19 = 32;
  }

  else
  {
    v19 = HIBYTE(toState);
  }

  v54 = v19;
  v55 = v18;
  v20 = stateCopy;
  if (stateCopy - 32 >= 0x5F)
  {
    v20 = 32;
  }

  v53 = v20;
  v21 = BYTE1(stateCopy);
  if (BYTE1(stateCopy) - 32 >= 0x5F)
  {
    v21 = 32;
  }

  v52 = v21;
  v22 = BYTE2(stateCopy);
  if (BYTE2(stateCopy) - 32 >= 0x5F)
  {
    v22 = 32;
  }

  v51 = v22;
  if ((stateCopy - 0x20000000) >> 24 >= 0x5F)
  {
    v23 = 32;
  }

  else
  {
    v23 = HIBYTE(stateCopy);
  }

  v50 = v23;
  *&v10 = 138414850;
  v47 = v10;
  while (1)
  {
    v24 = nextObject;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        v9 = v49;
        goto LABEL_65;
      }

      v69 = v67;
      v70 = v68;
      v9 = [nextObject asdtPowerStateChange:v7];
      v25 = ASDTTime::machAbsoluteTime(buf);
      v67 = *buf;
      v68 = *&buf[16];
      if (!v9)
      {
        v25 = [nextObject asdtHandlesPowerTransition:v7];
        v24 = nextObject;
        if ((v25 & 1) == 0)
        {
          continue;
        }
      }

      v27 = ASDTBaseLogType(v25, v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        parent = [(ASDTPMSequencer *)self parent];
        name = [parent name];
        name2 = [nextObject name];
        if (v62)
        {
          pmOrderPowerUp = [nextObject pmOrderPowerUp];
        }

        else
        {
          pmOrderPowerUp = [nextObject pmOrderPowerDown];
        }

        v34 = pmOrderPowerUp;
        v65 = v67;
        v66 = v68;
        ASDTTime::operator-=(&v65, &v69, v32, v33);
        *buf = 138416898;
        *&buf[4] = name;
        *&buf[12] = 2112;
        *&buf[14] = name2;
        *&buf[22] = 1024;
        *v72 = v34;
        *&v72[4] = 1024;
        *v73 = v50;
        *&v73[4] = 1024;
        *v74 = v51;
        *&v74[4] = 1024;
        *&v74[6] = v52;
        v75 = 1024;
        v76 = v53;
        v77 = 1024;
        v78 = v54;
        v79 = 1024;
        v80 = v55;
        v81 = 1024;
        v82 = v56;
        v83 = 1024;
        v84 = v57;
        v85 = 1024;
        v86 = v58;
        v87 = 1024;
        v88 = v59;
        v89 = 1024;
        v90 = v60;
        v91 = 1024;
        v92 = v61;
        v93 = 2048;
        v94 = v65;
        v95 = 2048;
        v96 = v67;
        v97 = 2048;
        v98 = *(&v67 + 1);
        v99 = 1024;
        v100 = v68;
        _os_log_impl(&dword_241659000, v27, OS_LOG_TYPE_DEFAULT, "%@: %@: Order: %u, State change '%c%c%c%c' to '%c%c%c%c' (transition '%c%c%c%c'): took %lluns, finished at %llu (%llu.%hu)", buf, 0x88u);
      }

      v24 = nextObject;
      if (v9)
      {
        break;
      }
    }

    v37 = ASDTBaseLogType(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      parent2 = [(ASDTPMSequencer *)self parent];
      name3 = [parent2 name];
      name4 = [nextObject name];
      v41 = name4;
      *buf = v47;
      v42 = HIBYTE(v9);
      *&buf[4] = name3;
      if ((v9 - 0x20000000) >> 24 >= 0x5F)
      {
        v42 = 32;
      }

      *&buf[12] = 1024;
      v43 = BYTE2(v9);
      *&buf[14] = v58;
      if (BYTE2(v9) - 32 >= 0x5F)
      {
        v43 = 32;
      }

      *&buf[18] = 1024;
      v44 = BYTE1(v9);
      *&buf[20] = v59;
      if (BYTE1(v9) - 32 >= 0x5F)
      {
        v44 = 32;
      }

      *v72 = 1024;
      v45 = v9;
      *&v72[2] = v60;
      if (v9 - 32 >= 0x5F)
      {
        v45 = 32;
      }

      *v73 = 1024;
      *&v73[2] = v61;
      *v74 = 2112;
      *&v74[2] = name4;
      v75 = 1024;
      v76 = v9;
      v77 = 1024;
      v78 = v42;
      v79 = 1024;
      v80 = v43;
      v81 = 1024;
      v82 = v44;
      v83 = 1024;
      v84 = v45;
      _os_log_error_impl(&dword_241659000, v37, OS_LOG_TYPE_ERROR, "%@: PM state transition '%c%c%c%c' failed for %@: %x '%c%c%c%c'", buf, 0x4Cu);
    }

    if (!stateCopy)
    {
      break;
    }

    v49 = v9;
    if (v62)
    {
      v49 = v9;
      if ([(ASDTPMSequencer *)self quiescentState]!= toState)
      {
        break;
      }
    }
  }

LABEL_65:

  return v9;
}

- (int)doExecuteSequenceToState:(int)state
{
  v3 = *&state;
  v43 = *MEMORY[0x277D85DE8];
  parent = [(ASDTPMSequencer *)self parent];
  powerState = [parent powerState];

  PowerState = asdtNextPowerState(powerState, v3);
  parent2 = [(ASDTPMSequencer *)self parent];
  name = [parent2 name];
  *__dst = 0;
  strlcpy(__dst, [name UTF8String], 9uLL);
  v32 = 0;

  if (powerState == v3)
  {
    return 0;
  }

  v11 = kdebug_trace();
  v13 = 1;
  v14 = 3;
  *&v15 = 138413314;
  v30 = v15;
  while (v14)
  {
    if (powerState == v3)
    {
      v16 = v3;
      powerState = v3;
      v10 = 1920234105;
    }

    else
    {
      while (1)
      {
        v16 = PowerState;
        v11 = [(ASDTPMSequencer *)self executeSequenceFromState:powerState toState:PowerState, v30];
        v10 = v11;
        if (v11)
        {
          break;
        }

        PowerState = asdtNextPowerState(PowerState, v3);
        powerState = v16;
        if (v16 == v3)
        {
          v10 = 0;
          goto LABEL_37;
        }
      }
    }

    v18 = v10 == 1920234105 && v14 > 1;
    if ((v18 & v13) != 1)
    {
      goto LABEL_30;
    }

    v19 = ASDTBaseLogType(v11, v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      parent3 = [(ASDTPMSequencer *)self parent];
      name2 = [parent3 name];
      v22 = name2;
      v23 = BYTE3(powerState);
      if ((powerState - 0x20000000) >> 24 >= 0x5F)
      {
        v23 = 32;
      }

      v24 = BYTE2(powerState);
      if (BYTE2(powerState) - 32 >= 0x5F)
      {
        v24 = 32;
      }

      v25 = BYTE1(powerState);
      if (BYTE1(powerState) - 32 >= 0x5F)
      {
        v25 = 32;
      }

      *buf = v30;
      v34 = name2;
      v35 = 1024;
      v36 = v23;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v25;
      if (powerState - 32 >= 0x5F)
      {
        v26 = 32;
      }

      else
      {
        v26 = powerState;
      }

      v41 = 1024;
      v42 = v26;
      _os_log_impl(&dword_241659000, v19, OS_LOG_TYPE_DEFAULT, "%@: retry from state: '%c%c%c%c'", buf, 0x24u);
    }

    v10 = [(ASDTPMSequencer *)self executeSequenceFromState:v16 toState:powerState];
    if (v10)
    {
      v13 = 0;
LABEL_30:
      powerState = [(ASDTPMSequencer *)self quiescentState];
      v11 = asdtPowerStateCompare(v16, powerState);
      if (v11 < 1 || v16 == powerState)
      {
        powerState = v16;
      }

      else
      {
        do
        {
          v27 = asdtNextPowerState(v16, powerState);
          v11 = [(ASDTPMSequencer *)self executeSequenceFromState:v16 toState:v27];
          v16 = v27;
        }

        while (v27 != powerState);
        PowerState = powerState;
      }

      goto LABEL_36;
    }

    v11 = asdtNextPowerState(powerState, v3);
    PowerState = v11;
    v13 = 0;
    v10 = 1920234105;
LABEL_36:
    --v14;
    if (v10 != 1920234105)
    {
      goto LABEL_37;
    }
  }

  v10 = 1920234105;
LABEL_37:
  parent4 = [(ASDTPMSequencer *)self parent];
  [parent4 powerState];
  kdebug_trace();

  return v10;
}

- (int)executeSequenceToState:(int)state
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDTPMSequencer_executeSequenceToState___block_invoke;
  block[3] = &unk_278CE6658;
  block[4] = self;
  block[5] = &v10;
  stateCopy = state;
  dispatch_sync(pmSerialQueue, block);

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void *__42__ASDTPMSequencer_executeSequenceToState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) doExecuteSequenceToState:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)executeSequenceToState:(int)state fromState:(int)fromState
{
  selfCopy = self;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ASDTPMSequencer_executeSequenceToState_fromState___block_invoke;
  block[3] = &unk_278CE6680;
  fromStateCopy = fromState;
  stateCopy = state;
  block[4] = selfCopy;
  block[5] = &v12;
  dispatch_sync(pmSerialQueue, block);

  LODWORD(selfCopy) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return selfCopy;
}

uint64_t __52__ASDTPMSequencer_executeSequenceToState_fromState___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parent];
  v3 = [v2 powerState];

  if (v3 == *(a1 + 48))
  {
    result = [*(a1 + 32) doExecuteSequenceToState:*(a1 + 52)];
  }

  else
  {
    v7 = ASDTBaseLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) parentDevice];
      v9 = [v8 deviceUID];
      v10 = v9;
      if ((v3 - 0x20000000) >> 24 >= 0x5F)
      {
        v11 = 32;
      }

      else
      {
        v11 = HIBYTE(v3);
      }

      if (BYTE2(v3) - 32 >= 0x5F)
      {
        v12 = 32;
      }

      else
      {
        v12 = BYTE2(v3);
      }

      v13 = *(a1 + 48);
      v14 = *(a1 + 52);
      v15 = BYTE1(v3);
      if (BYTE1(v3) - 32 >= 0x5F)
      {
        v15 = 32;
      }

      v24 = 138415362;
      v25 = v9;
      v16 = v3;
      if (v3 - 32 >= 0x5F)
      {
        v16 = 32;
      }

      v26 = 1024;
      v27 = v11;
      if ((v14 - 0x20000000) >> 24 >= 0x5F)
      {
        v17 = 32;
      }

      else
      {
        v17 = HIBYTE(v14);
      }

      v28 = 1024;
      v29 = v12;
      v18 = BYTE2(v14);
      if (BYTE2(v14) - 32 >= 0x5F)
      {
        v18 = 32;
      }

      v30 = 1024;
      v31 = v15;
      v19 = BYTE1(v14);
      if (BYTE1(v14) - 32 >= 0x5F)
      {
        v19 = 32;
      }

      v32 = 1024;
      v33 = v16;
      v14 = v14;
      if (v14 - 32 >= 0x5F)
      {
        v14 = 32;
      }

      v34 = 1024;
      v35 = v17;
      if ((v13 - 0x20000000) >> 24 >= 0x5F)
      {
        v20 = 32;
      }

      else
      {
        v20 = HIBYTE(v13);
      }

      v36 = 1024;
      v37 = v18;
      v21 = BYTE2(v13);
      if (BYTE2(v13) - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v38 = 1024;
      v39 = v19;
      v22 = BYTE1(v13);
      if (BYTE1(v13) - 32 >= 0x5F)
      {
        v22 = 32;
      }

      v40 = 1024;
      v41 = v14;
      v42 = 1024;
      v43 = v20;
      v44 = 1024;
      v45 = v21;
      v46 = 1024;
      v47 = v22;
      if (v13 - 32 >= 0x5F)
      {
        v23 = 32;
      }

      else
      {
        v23 = v13;
      }

      v48 = 1024;
      v49 = v23;
      _os_log_error_impl(&dword_241659000, v7, OS_LOG_TYPE_ERROR, "%@: Unexpected starting state '%c%c%c%c' for transition to '%c%c%c%c' expected '%c%c%c%c'.", &v24, 0x54u);
    }

    result = 1852990585;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)powerState
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDTPMSequencer_powerState__block_invoke;
  v5[3] = &unk_278CE66A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(pmSerialQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __29__ASDTPMSequencer_powerState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  *(*(*(a1 + 40) + 8) + 24) = [v2 powerState];
}

- (void)doUpdateQuiescentState:(int)state
{
  v3 = *&state;
  if ([(ASDTPMSequencer *)self quiescentState]!= state)
  {
    parent = [(ASDTPMSequencer *)self parent];
    powerState = [parent powerState];
    quiescentState = [(ASDTPMSequencer *)self quiescentState];

    [(ASDTPMSequencer *)self setQuiescentState:v3];
    if (powerState == quiescentState)
    {

      [(ASDTPMSequencer *)self doExecuteSequenceToState:v3];
    }
  }
}

- (void)updateQuiescentState:(int)state
{
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASDTPMSequencer_updateQuiescentState___block_invoke;
  v6[3] = &unk_278CE66D0;
  v6[4] = self;
  stateCopy = state;
  dispatch_sync(pmSerialQueue, v6);
}

- (id)pmDeviceWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  pmDevicesPowerUp = [(ASDTPMSequencer *)self pmDevicesPowerUp];
  v6 = [pmDevicesPowerUp countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(pmDevicesPowerUp);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pmDevicesPowerUp countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (ASDTAudioDevice)parentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDevice);

  return WeakRetained;
}

- (ASDTPMProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)initWithPMDeviceConfig:(os_log_t)log withParent:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: PM sequencer memory allocation error.", buf, 0xCu);
}

- (void)initWithPMDeviceConfig:(os_log_t)log withParent:(void *)a4 .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Failed creating dispatch queue.", buf, 0xCu);
}

@end