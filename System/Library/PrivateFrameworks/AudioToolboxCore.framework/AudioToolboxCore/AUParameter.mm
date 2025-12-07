@interface AUParameter
- (AUParameter)initWithCoder:(id)coder;
- (AUParameter)initWithID:(id)d name:(id)name address:(unint64_t)address min:(float)min max:(float)max unit:(unsigned int)unit unitName:(id)unitName flags:(unsigned int)self0 valueStrings:(id)self1 dependentParameters:(id)self2;
- (AUValue)value;
- (AUValue)valueFromString:(NSString *)string;
- (NSString)stringFromValue:(const AUValue *)value;
- (NSString)unitName;
- (float)_internalValue;
- (id).cxx_construct;
- (id)copyNodeWithOffset:(unint64_t)offset;
- (id)description;
- (void)_observersChanged:(BOOL)changed deltaCount:(int)count;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(AUValue)value;
- (void)setValue:(float)value extOriginator:(AUParameterObserverExtendedToken)originator atHostTime:(unint64_t)time eventType:(unsigned int)type;
@end

@implementation AUParameter

- (id).cxx_construct
{
  *(self + 88) = 0;
  *(self + 23) = 0;
  *(self + 24) = 0;
  return self;
}

- (void)_observersChanged:(BOOL)changed deltaCount:(int)count
{
  v4 = &OBJC_IVAR___AUParameter__numUIObservers;
  if (changed)
  {
    v4 = &OBJC_IVAR___AUParameter__numRecordingObservers;
  }

  atomic_fetch_add((self + *v4), count);
}

- (AUParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  {
    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = objc_opt_self();
    v19 = objc_opt_self();
    -[AUParameter initWithCoder:]::depParamClasses = [v17 initWithObjects:{v18, v19, 0}];
  }

  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"id"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"name"];

  v20.receiver = self;
  v20.super_class = AUParameter;
  v9 = [(AUParameterNode *)&v20 initWithID:v6 name:v8];
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"info"];
    info = v9->_info;
    v9->_info = v11;

    [coderCopy decodeFloatForKey:@"value"];
    v9->_value = v13;
    v9->_address = [coderCopy decodeInt64ForKey:@"address"];
    v14 = [coderCopy decodeObjectOfClasses:-[AUParameter initWithCoder:]::depParamClasses forKey:@"deps"];
    dependentParameters = v9->_dependentParameters;
    v9->_dependentParameters = v14;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(AUParameterNode *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"id"];

  displayName = [(AUParameterNode *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"name"];

  info = [(AUParameter *)self info];
  [coderCopy encodeObject:info forKey:@"info"];

  [(AUParameter *)self value];
  [coderCopy encodeFloat:@"value" forKey:?];
  [coderCopy encodeInt64:-[AUParameter address](self forKey:{"address"), @"address"}];
  [coderCopy encodeObject:self->_dependentParameters forKey:@"deps"];
}

- (NSString)unitName
{
  unitName = [(_AUStaticParameterInfo *)self->_info unitName];

  info = self->_info;
  if (unitName)
  {
    unitName2 = [(_AUStaticParameterInfo *)info unitName];
  }

  else
  {
    unit = [(_AUStaticParameterInfo *)info unit];
    v7 = &stru_1F0340B48;
    switch(unit)
    {
      case 0u:
      case 1u:
      case 7u:
      case 0x10u:
      case 0x11u:
      case 0x19u:
      case 0x1Au:
        goto LABEL_26;
      case 2u:
        v7 = @"T/F";
        goto LABEL_22;
      case 3u:
        v7 = @"%";
        goto LABEL_22;
      case 4u:
        v7 = @"Secs";
        goto LABEL_22;
      case 5u:
        v7 = @"Samps";
        goto LABEL_22;
      case 6u:
      case 0xFu:
        v7 = @"Degr.";
        goto LABEL_22;
      case 8u:
        v7 = @"Hz";
        goto LABEL_22;
      case 9u:
      case 0x14u:
        v7 = @"Cents";
        goto LABEL_22;
      case 0xAu:
        v7 = @"S-T";
        goto LABEL_22;
      case 0xBu:
      case 0xCu:
      case 0x1Bu:
        v7 = @"MIDI";
        goto LABEL_22;
      case 0xDu:
        v7 = @"dB";
        goto LABEL_22;
      case 0xEu:
        v7 = @"Gain";
        goto LABEL_22;
      case 0x12u:
        v7 = @"L/R";
        goto LABEL_22;
      case 0x13u:
        v7 = @"Mtrs";
        goto LABEL_22;
      case 0x15u:
        v7 = @"8ve";
        goto LABEL_22;
      case 0x16u:
        v7 = @"BPM";
        goto LABEL_22;
      case 0x17u:
        v7 = @"Beats";
        goto LABEL_22;
      case 0x18u:
        v7 = @"msecs";
        goto LABEL_22;
      default:
        v7 = 0;
LABEL_22:
        {
          v9 = v7;
          v7 = v9;
          if (v10)
          {
            -[AUParameter unitName]::coreAudioUIBundle = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:@"/System/Library/Frameworks/CoreAudioKit.framework"];
            v7 = v9;
          }
        }

        if (![AUParameter unitName]::coreAudioUIBundle)
        {
          goto LABEL_26;
        }

        unitName2 = [-[AUParameter unitName]::coreAudioUIBundle localizedStringForKey:v7 value:&stru_1F0340B48 table:@"AUParameters"];
        break;
    }
  }

  v7 = unitName2;
LABEL_26:

  return v7;
}

- (AUValue)valueFromString:(NSString *)string
{
  v4 = string;
  implementorValueFromStringCallback = [(AUParameterNode *)self implementorValueFromStringCallback];

  if (implementorValueFromStringCallback)
  {
    implementorValueFromStringCallback2 = [(AUParameterNode *)self implementorValueFromStringCallback];
    v7 = (implementorValueFromStringCallback2)[2](implementorValueFromStringCallback2, self, v4);
  }

  else
  {
    _rootParent = [(AUParameterNode *)self _rootParent];
    implementorValueFromStringCallback2 = _rootParent;
    v7 = 0.0;
    if (_rootParent)
    {
      implementorValueFromStringCallback3 = [_rootParent implementorValueFromStringCallback];

      if (implementorValueFromStringCallback3)
      {
        v6ImplementorValueFromStringCallback = [implementorValueFromStringCallback2 implementorValueFromStringCallback];
        v7 = (v6ImplementorValueFromStringCallback)[2](v6ImplementorValueFromStringCallback, self, v4);
      }
    }
  }

  return v7;
}

- (NSString)stringFromValue:(const AUValue *)value
{
  implementorStringFromValueCallback = [(AUParameterNode *)self implementorStringFromValueCallback];

  if (implementorStringFromValueCallback)
  {
    implementorStringFromValueCallback2 = [(AUParameterNode *)self implementorStringFromValueCallback];
    v7 = (implementorStringFromValueCallback2)[2](implementorStringFromValueCallback2, self, value);
  }

  else
  {
    _rootParent = [(AUParameterNode *)self _rootParent];
    implementorStringFromValueCallback2 = _rootParent;
    if (_rootParent)
    {
      implementorStringFromValueCallback3 = [_rootParent implementorStringFromValueCallback];

      if (implementorStringFromValueCallback3)
      {
        v6ImplementorStringFromValueCallback = [implementorStringFromValueCallback2 implementorStringFromValueCallback];
        v11 = (v6ImplementorStringFromValueCallback)[2](v6ImplementorStringFromValueCallback, self, value);

        goto LABEL_10;
      }
    }

    if (!value)
    {
      value = &self->_value;
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", *value];
  }

  v11 = v7;
LABEL_10:

  return v11;
}

- (void)setValue:(float)value extOriginator:(AUParameterObserverExtendedToken)originator atHostTime:(unint64_t)time eventType:(unsigned int)type
{
  v11 = objc_autoreleasePoolPush();
  _rootParent = [(AUParameterNode *)self _rootParent];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = time;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke;
  v22 = &unk_1E72C13C0;
  valueCopy = value;
  selfCopy = self;
  var0 = originator.var0;
  v13 = _rootParent;
  timeCopy = time;
  typeCopy = type;
  v24 = v13;
  v25 = v30;
  v14 = _Block_copy(&v19);
  v15 = objc_autoreleasePoolPush();
  if (!v13 || ([v13 valueAccessQueue], v16 = objc_claimAutoreleasedReturnValue(), specific = dispatch_get_specific(&current_queue_key), v16, specific == v16))
  {
    v14[2](v14);
  }

  else
  {
    valueAccessQueue = [v13 valueAccessQueue];
    dispatch_sync(valueAccessQueue, v14);
  }

  objc_autoreleasePoolPop(v15);

  _Block_object_dispose(v30, 8);
  objc_autoreleasePoolPop(v11);
}

void __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 100) = *(a1 + 72);
  atomic_store(1u, (*(a1 + 32) + 88));
  v2 = *(a1 + 56);
  v3 = v2 & 0xFFFFFFFE;
  v4 = (v2 & 0xFFFFFFFE) == 2 || v3 == 4;
  if (!v4 && (v3 != 8 || (v2 & 1) != 0))
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        v7 = [v6 implementorValueObserver];
        v8 = v7;
        if (v7)
        {
          break;
        }

        v9 = [v6 parentNode];

        v6 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      (*(v7 + 16))(v7, *(a1 + 32), *(a1 + 72));
    }

LABEL_13:
    v2 = *(a1 + 56);
  }

  if ((v2 & 1) == 0)
  {
    v10 = [*(a1 + 40) remoteParameterSynchronizerXPCConnection];

    if (v10)
    {
      if (v3 == 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = *(a1 + 56);
      }

      [*(a1 + 40) remoteParameterSynchronizerXPCConnection];
      v42[0] = &unk_1F033F978;
      v42[1] = &__block_literal_global_7237;
      v12 = v42[3] = v42;
      v43 = v12;
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v44, v42);

      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v42);
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v47, v44);
      v13 = v43;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3321888768;
      v45[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33_AURemoteParameterSynchronization11objc_objectJEE11async_proxyEv_block_invoke;
      v45[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v46, v47);
      v14 = [v13 remoteObjectProxyWithErrorHandler:v45];
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v46);
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v47);
      v15 = [*(a1 + 32) address];
      LODWORD(v16) = *(a1 + 72);
      [v14 syncParameter:v15 value:v11 extOriginator:*(a1 + 64) hostTime:*(a1 + 76) eventType:v16];

      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v44);
    }
  }

  [*(a1 + 32) _internalValue];
  if (*(a1 + 40))
  {
    if (v3 != 6 && v3 != 8)
    {
      v19 = v17;
      v20 = atomic_load((*(a1 + 32) + 92));
      if (v20 || (v21 = atomic_load((*(a1 + 32) + 96))) != 0)
      {
        v22 = *(a1 + 32);
        v23 = *(v22 + 104);
        v24 = atomic_load((v22 + 92));
        v4 = v24 == 0;
        v25 = v24 != 0;
        v26 = atomic_load((v22 + 96));
        if (v4)
        {
          v27 = 2;
        }

        else
        {
          v27 = 3;
        }

        if (v26)
        {
          v28 = v27;
        }

        else
        {
          v28 = v25;
        }

        v29 = atomic_load((*(a1 + 32) + 96));
        if (v29 && !*(*(*(a1 + 48) + 8) + 24))
        {
          *(*(*(a1 + 48) + 8) + 24) = mach_absolute_time();
        }

        {
          {
            serialDeferralQueue(void)::gDeferralQueue = dispatch_queue_create("AUParameterTree.deferralQueue", 0);
          }
        }

        v30 = serialDeferralQueue(void)::gDeferralQueue;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke_3;
        v34[3] = &unk_1E72C1398;
        v31 = *(a1 + 40);
        v39 = v28;
        v40 = v19;
        v33 = *(a1 + 48);
        v32 = *(a1 + 56);
        v37 = v23;
        v38 = v32;
        v35 = v31;
        v36 = v33;
        v41 = *(a1 + 76);
        dispatch_async(v30, v34);
      }
    }
  }
}

void __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) observationQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke_4;
  v5[3] = &unk_1E72C1398;
  v3 = *(a1 + 32);
  v9 = *(a1 + 64);
  v10 = *(a1 + 68);
  v8 = *(a1 + 48);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  v11 = *(a1 + 72);
  dispatch_sync(v2, v5);
}

uint64_t __59__AUParameter_setValue_extOriginator_atHostTime_eventType___block_invoke_4(uint64_t a1)
{
  v28[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) observerController];
  v3 = v2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 68);
  v6 = *(a1 + 48);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = *(a1 + 72);
  if ((*(v2 + 48) & 1) == 0)
  {
    *(v2 + 48) = 1;
    v10 = *v2;
    v9 = *(v2 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
    }

    v28[0] = &unk_1F032F260;
    v28[1] = v10;
    v28[2] = v9;
    v28[3] = v28;
    CAEventReceiver::createTimer(*(v2 + 32), v28);
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v28);
  }

  if (v4)
  {
    v11 = *(a1 + 56);
    *&v27 = v6;
    *(&v27 + 1) = v11;
    std::__tree<AUObserverController::AddressOriginator>::__emplace_unique_key_args<AUObserverController::AddressOriginator,AUObserverController::AddressOriginator>((v3 + 56), v6, v11, &v27);
  }

  if ((v4 & 2) != 0)
  {
    v12 = *(a1 + 56) & 0xFFFFFFFELL;
    v14 = v12 != 6 && v12 != 10 && v12 != 2;
    v15 = *(v3 + 88);
    v16 = *(v3 + 96);
    if (v15 >= v16)
    {
      v18 = *(v3 + 80);
      v19 = v15 - v18;
      v20 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v18) >> 3);
      v21 = v20 + 1;
      if (v20 + 1 > 0x666666666666666)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v18) >> 3);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x333333333333333)
      {
        v23 = 0x666666666666666;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        if (v23 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v24 = 40 * v20;
      *v24 = v7;
      *(v24 + 8) = v6;
      *(v24 + 16) = v5;
      *(v24 + 20) = v8;
      *(v24 + 24) = v14;
      *(v24 + 32) = v12;
      v17 = 40 * v20 + 40;
      v25 = (40 * v20 - v19);
      memcpy(v25, v18, v19);
      *(v3 + 80) = v25;
      *(v3 + 88) = v17;
      *(v3 + 96) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v15 = v7;
      *(v15 + 8) = v6;
      *(v15 + 16) = v5;
      *(v15 + 20) = v8;
      v17 = v15 + 40;
      *(v15 + 24) = v14;
      *(v15 + 32) = v12;
    }

    *(v3 + 88) = v17;
  }

  return CAEventReceiver::Impl::timerShouldFireWithin(*(v3 + 32), 0.05);
}

- (void)setValue:(AUValue)value
{
  v5 = objc_autoreleasePoolPush();
  *&v6 = value;
  [(AUParameter *)self setValue:0 extOriginator:0 atHostTime:0 eventType:v6];

  objc_autoreleasePoolPop(v5);
}

- (AUValue)value
{
  _rootParent = [(AUParameterNode *)self _rootParent];
  v4 = _rootParent;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  value = self->_value;
  if (!_rootParent || ([_rootParent valueAccessQueue], v5 = objc_claimAutoreleasedReturnValue(), specific = dispatch_get_specific(&current_queue_key), v5, specific == v5))
  {
    [(AUParameter *)self _internalValue];
    v8 = v9;
    v13[6] = v9;
  }

  else
  {
    valueAccessQueue = [v4 valueAccessQueue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __20__AUParameter_value__block_invoke;
    v11[3] = &unk_1E72C1370;
    v11[4] = self;
    v11[5] = &v12;
    dispatch_sync(valueAccessQueue, v11);

    v8 = v13[6];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

void *__20__AUParameter_value__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _internalValue];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (float)_internalValue
{
  _rootParent = [(AUParameterNode *)self _rootParent];
  v4 = atomic_load(&self->_localValueStale);
  if ((v4 & 1) != 0 || ([(_AUStaticParameterInfo *)self->_info flags]& 0x8000) != 0 && _rootParent)
  {
    selfCopy = self;
    v6 = selfCopy;
    while (1)
    {
      implementorValueProvider = [v6 implementorValueProvider];
      v8 = implementorValueProvider;
      if (implementorValueProvider)
      {
        break;
      }

      parentNode = [v6 parentNode];

      v6 = parentNode;
      if (!parentNode)
      {
        goto LABEL_9;
      }
    }

    selfCopy->_value = (*(implementorValueProvider + 16))(implementorValueProvider, selfCopy);
    atomic_store(0, &self->_localValueStale);
  }

LABEL_9:
  value = self->_value;

  return value;
}

- (id)copyNodeWithOffset:(unint64_t)offset
{
  v5 = [AUParameter alloc];
  identifier = [(AUParameterNode *)self identifier];
  displayName = [(AUParameterNode *)self displayName];
  v8 = [(AUParameterNode *)v5 initWithID:identifier name:displayName];

  info = [(AUParameter *)self info];
  [(AUParameter *)v8 setInfo:info];

  [(AUParameter *)v8 setAddress:[(AUParameter *)self address]+ offset];
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(AUParameterNode *)self identifier];
  displayName = [(AUParameterNode *)self displayName];
  address = [(AUParameter *)self address];
  [(AUParameter *)self value];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@, %@, addr 0x%llx, val %.3f>", v4, self, identifier, displayName, address, v8];

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUParameter;
  [(AUParameterNode *)&v2 dealloc];
}

- (AUParameter)initWithID:(id)d name:(id)name address:(unint64_t)address min:(float)min max:(float)max unit:(unsigned int)unit unitName:(id)unitName flags:(unsigned int)self0 valueStrings:(id)self1 dependentParameters:(id)self2
{
  v12 = *&flags;
  v13 = *&unit;
  unitNameCopy = unitName;
  stringsCopy = strings;
  parametersCopy = parameters;
  v30.receiver = self;
  v30.super_class = AUParameter;
  v23 = [(AUParameterNode *)&v30 initWithID:d name:name];
  if (v23)
  {
    v24 = objc_alloc_init(_AUStaticParameterInfo);
    *&v25 = min;
    [(_AUStaticParameterInfo *)v24 setMinValue:v25];
    *&v26 = max;
    [(_AUStaticParameterInfo *)v24 setMaxValue:v26];
    [(_AUStaticParameterInfo *)v24 setFlags:v12];
    [(_AUStaticParameterInfo *)v24 setValueStrings:stringsCopy];
    [(_AUStaticParameterInfo *)v24 setUnit:v13];
    [(_AUStaticParameterInfo *)v24 setUnitName:unitNameCopy];
    [(_AUStaticParameterInfo *)v24 setDefaultValue:0.0];
    [(_AUStaticParameterInfo *)v24 setOriginalOrder:0];
    info = v23->_info;
    v23->_info = v24;
    v28 = v24;

    v23->_address = address;
    objc_storeStrong(&v23->_dependentParameters, parameters);
  }

  return v23;
}

@end