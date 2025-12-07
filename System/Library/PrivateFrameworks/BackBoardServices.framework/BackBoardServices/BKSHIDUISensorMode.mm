@interface BKSHIDUISensorMode
+ (BKSHIDUISensorMode)new;
+ (id)_prevailingMode:(id)mode;
+ (id)buildModeForReason:(id)reason builder:(id)builder;
- (BKSHIDUISensorMode)init;
- (BKSHIDUISensorMode)initWithCoder:(id)coder;
- (BOOL)_settingKeysAllowed:(id)allowed;
- (BOOL)isEffectivelyEqualToMode:(id)mode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualExceptIdentifierAndReasons:(id)reasons;
- (BOOL)isRestrictedToSystemShell;
- (id)_init;
- (id)_initCopyFrom:(id)from;
- (id)didFinishProtobufDecodingWithError:(id *)error;
- (id)initForProtobufDecoding;
- (id)mutableCopy;
- (int64_t)_comparisonScore;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDUISensorMode

- (int64_t)_comparisonScore
{
  v3 = self->_proximityDetectionMode - 1;
  if (v3 > 0xC)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1863CFB58[v3];
  }

  if (self->_estimatedProximityMode)
  {
    v4 += 5000;
  }

  v5 = v4 + self->_postEventWithCurrentDetectionMask;
  if (self->_digitizerEnabled)
  {
    if ([(NSSet *)self->_multitouchHostStateKeys count])
    {
      v6 = [(NSSet *)self->_multitouchHostStateKeys mutableCopy];
      v7 = [MEMORY[0x1E695DFD8] setWithObjects:{@"WakeOnTapEnabled", @"WakeOnSwipeEnabled", 0}];
      [v6 minusSet:?];

      v5 += 100 * [v6 count];
    }
  }

  else
  {
    v5 += 100 * [(NSSet *)self->_multitouchHostStateKeys count]+ 4000;
  }

  return v5;
}

- (id)_init
{
  v24 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = BKSHIDUISensorMode;
  v3 = [(BKSHIDUISensorMode *)&v11 init];
  if (v3)
  {
    v4 = objc_opt_class();
    if (v4 != objc_opt_class())
    {
      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = NSStringFromSelector(a2);
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138544642;
          v13 = v8;
          v14 = 2114;
          v15 = v10;
          v16 = 2048;
          v17 = v3;
          v18 = 2114;
          v19 = @"BKSHIDUISensorMode.m";
          v20 = 1024;
          v21 = 120;
          v22 = 2114;
          v23 = v7;
          _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
        }

        [v7 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x18634E724);
      }
    }

    v3->_identifier = atomic_fetch_add(&_BKSNextUIModeIdentifier_staticIdentifier, 1uLL);
    v3->_versionedPID = BSGetVersionedPID();
  }

  return v3;
}

- (unint64_t)hash
{
  [(NSString *)self->_reason hash];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [v5 hash];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v6 hash];

  multitouchHostStateKeys = self->_multitouchHostStateKeys;
  if (multitouchHostStateKeys)
  {
    [(NSSet *)multitouchHostStateKeys hash];
  }

  proximityHostStateKeys = self->_proximityHostStateKeys;
  if (proximityHostStateKeys)
  {
    [(NSSet *)proximityHostStateKeys hash];
  }

  return BSHashPurifyNS();
}

void __36__BKSHIDUISensorMode_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
  objc_opt_class();
  [v2 addRepeatingField:? containsClass:?];
  [v2 addField:?];
  [v2 addField:?];
}

- (id)initForProtobufDecoding
{
  v3.receiver = self;
  v3.super_class = BKSHIDUISensorMode;
  return [(BKSHIDUISensorMode *)&v3 init];
}

- (id)mutableCopy
{
  v2 = [BKSMutableHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v2 _initCopyFrom:?];
}

- (BOOL)isRestrictedToSystemShell
{
  proximityDetectionMode = self->_proximityDetectionMode;
  result = 1;
  v7 = proximityDetectionMode > 0x14;
  v8 = (1 << proximityDetectionMode) & 0x100030;
  v9 = v7 || v8 == 0;
  if (v9 && !self->_pocketTouchesExpected)
  {
    return [(BKSHIDUISensorMode *)self _comparisonScore:v2]> 10;
  }

  return result;
}

- (BOOL)_settingKeysAllowed:(id)allowed
{
  v3 = _settingKeysAllowed__onceToken;
  allowedCopy = allowed;
  if (v3 != -1)
  {
    dispatch_once(&_settingKeysAllowed__onceToken, &__block_literal_global_137);
  }

  v5 = [allowedCopy intersectsSet:?];

  return v5 ^ 1;
}

uint64_t __42__BKSHIDUISensorMode__settingKeysAllowed___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"DigitizerSurfaceCovered", @"PocketTouchesExpected", @"FaceTouchesExpected", 0}];
  v1 = _settingKeysAllowed__disallowedSettingKeys;
  _settingKeysAllowed__disallowedSettingKeys = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)didFinishProtobufDecodingWithError:(id *)error
{
  if ([(BKSHIDUISensorMode *)self _settingKeysAllowed:?])
  {
    selfCopy = self;
  }

  else
  {
    if (error)
    {
      v6 = MEMORY[0x1E696ABC0];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:self->_multitouchHostStateKeys, *MEMORY[0x1E696A588]];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      *error = [v6 errorWithDomain:? code:? userInfo:?];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:v6 block:{3221225472, __48__BKSHIDUISensorMode_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

id __48__BKSHIDUISensorMode_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierDescription];
  [v2 appendString:? withName:?];

  v4 = *(a1 + 32);
  [*(a1 + 40) _comparisonScore];
  v5 = [v4 appendInteger:? withName:?];
  v6 = *(a1 + 32);
  v7 = BSProcessDescriptionForPID();
  [v6 appendString:? withName:?];

  [*(a1 + 32) appendString:? withName:?];
  v8 = *(a1 + 40);
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = *(a1 + 32);
    v11 = NSStringFromBKSHIDUISensorChangeSource(v9);
    [v10 appendString:? withName:?];

    v8 = *(a1 + 40);
  }

  v12 = *(v8 + 40);
  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = NSStringFromBKSHIDServicesProximityDetectionMode(v12);
    [v13 appendString:? withName:?];
  }

  v15 = [*(a1 + 32) appendBool:? withName:?];
  v16 = *(*(a1 + 40) + 64);
  if (v16)
  {
    v17 = *(a1 + 32);
    v18 = NSStringFromBKSHIDUISensorDisplayState(v16);
    [v17 appendString:? withName:?];
  }

  v19 = [*(a1 + 32) appendBool:? withName:? ifEqualTo:?];
  v20 = [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
  v21 = [*(a1 + 32) appendObject:? withName:? skipIfNil:?];
  v22 = [*(a1 + 32) appendBool:? withName:? ifEqualTo:?];
  return [*(a1 + 32) appendBool:? withName:? ifEqualTo:?];
}

- (id)_initCopyFrom:(id)from
{
  fromCopy = from;
  _init = [(BKSHIDUISensorMode *)self _init];
  v6 = _init;
  if (_init)
  {
    _init[1] = atomic_fetch_add(&_BKSNextUIModeIdentifier_staticIdentifier, 1uLL);
    v7 = [*(fromCopy + 2) copy];
    v8 = v6[2];
    v6[2] = v7;

    *(v6 + 3) = *(fromCopy + 24);
    *(v6 + 10) = *(fromCopy + 10);
    v6[8] = *(fromCopy + 8);
    *(v6 + 72) = fromCopy[72];
    *(v6 + 73) = fromCopy[73];
    v9 = [*(fromCopy + 6) copy];
    v10 = v6[6];
    v6[6] = v9;

    v11 = [*(fromCopy + 7) copy];
    v12 = v6[7];
    v6[7] = v11;

    *(v6 + 74) = fromCopy[74];
    *(v6 + 75) = fromCopy[75];
  }

  return v6;
}

- (BOOL)isEffectivelyEqualToMode:(id)mode
{
  modeCopy = mode;
  v5 = BSEqualObjects() && BSEqualObjects() && modeCopy[10] == self->_proximityDetectionMode && *(modeCopy + 72) == self->_digitizerEnabled && *(modeCopy + 8) == self->_displayState && *(modeCopy + 73) == self->_pocketTouchesExpected && *(modeCopy + 74) == self->_estimatedProximityMode && *(modeCopy + 75) == self->_postEventWithCurrentDetectionMask;

  return v5;
}

- (BOOL)isEqualExceptIdentifierAndReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (*(reasonsCopy + 24) == *&self->_versionedPID)
  {
    v5 = [(BKSHIDUISensorMode *)self isEffectivelyEqualToMode:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8 && v8[1] == self->_identifier && BSEqualObjects())
  {
    v9 = [(BKSHIDUISensorMode *)self isEqualExceptIdentifierAndReasons:?];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:? forKey:?];
  if (self->_reason)
  {
    [coderCopy encodeObject:? forKey:?];
  }

  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (BKSHIDUISensorMode)initWithCoder:(id)coder
{
  v39 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = BKSHIDUISensorMode;
  v5 = [(BKSHIDUISensorMode *)&v32 init];
  v5->_identifier = [coderCopy decodeIntegerForKey:?];
  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];
  reason = v5->_reason;
  v5->_reason = v6;

  v5->_versionedPID = [coderCopy decodeInt64ForKey:?];
  v5->_changeSource = [coderCopy decodeIntegerForKey:?];
  v5->_proximityDetectionMode = [coderCopy decodeIntegerForKey:?];
  v5->_displayState = [coderCopy decodeIntegerForKey:?];
  v5->_digitizerEnabled = [coderCopy decodeBoolForKey:?];
  v5->_pocketTouchesExpected = [coderCopy decodeBoolForKey:?];
  objc_opt_class();
  v8 = [coderCopy decodeObjectOfClass:? forKey:?];
  multitouchHostStateKeys = v5->_multitouchHostStateKeys;
  v5->_multitouchHostStateKeys = v8;

  v10 = v5->_multitouchHostStateKeys;
  v11 = [NSSet countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v11)
  {
    v12 = v11;
    v13 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = MEMORY[0x1E696ABC0];
          v37 = *MEMORY[0x1E696A588];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
          v38 = v23;
          v24 = MEMORY[0x1E695DF20];
LABEL_21:
          v25 = [v24 dictionaryWithObjects:? forKeys:? count:?];
          v26 = [v22 errorWithDomain:? code:? userInfo:?];
          [coderCopy failWithError:?];

          goto LABEL_22;
        }
      }

      v12 = [NSSet countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v10 = v5->_proximityHostStateKeys;
  v15 = [NSSet countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v15)
  {
    v16 = v15;
    v17 = MEMORY[0];
    while (2)
    {
      for (j = 0; j != v16; j = (j + 1))
      {
        if (MEMORY[0] != v17)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = MEMORY[0x1E696ABC0];
          v35 = *MEMORY[0x1E696A588];
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
          v36 = v23;
          v24 = MEMORY[0x1E695DF20];
          goto LABEL_21;
        }
      }

      v16 = [NSSet countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  if ([(BKSHIDUISensorMode *)v5 _settingKeysAllowed:?])
  {
    objc_opt_class();
    v19 = [coderCopy decodeObjectOfClass:? forKey:?];
    proximityHostStateKeys = v5->_proximityHostStateKeys;
    v5->_proximityHostStateKeys = v19;

    v5->_estimatedProximityMode = [coderCopy decodeBoolForKey:?];
    v5->_postEventWithCurrentDetectionMask = [coderCopy decodeBoolForKey:?];
    v21 = v5;
  }

  else
  {
    v28 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A588];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:v5->_multitouchHostStateKeys];
    v34 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v31 = [v28 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

LABEL_22:
    v21 = 0;
  }

  return v21;
}

- (BKSHIDUISensorMode)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorMode.m";
    v17 = 1024;
    v18 = 93;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)_prevailingMode:(id)mode
{
  modeCopy = mode;
  v4 = [modeCopy sortedArrayUsingComparator:?];
  lastObject = [v4 lastObject];
  proximityDetectionMode = [lastObject proximityDetectionMode];
  if ([lastObject digitizerEnabled] && !objc_msgSend(lastObject, "pocketTouchesExpected") || proximityDetectionMode == 20)
  {
    v26 = v4;
    v27 = modeCopy;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v7 = 0;
      v12 = MEMORY[0];
      do
      {
        for (i = 0; i != v10; i = (i + 1))
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(8 * i);
          if (v14 != lastObject)
          {
            if ([*(8 * i) digitizerEnabled] && objc_msgSend(v14, "pocketTouchesExpected"))
            {
              v15 = v14;

              v11 = v15;
            }

            if (proximityDetectionMode == 20)
            {
              proximityDetectionMode2 = [v14 proximityDetectionMode];
              if (proximityDetectionMode2 && proximityDetectionMode2 != 20)
              {
                v18 = v14;

                v7 = v18;
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v7 = 0;
    }

    if (v11 | v7)
    {
      v19 = [lastObject mutableCopy];
      modeCopy = v27;
      if (![v19 changeSource] && !objc_msgSend(v11, "changeSource"))
      {
        [v7 changeSource];
      }

      v4 = v26;
      [v19 setChangeSource:?];
      reason = [lastObject reason];
      v21 = [reason mutableCopy];

      if (v11)
      {
        _identifierDescription = [v11 _identifierDescription];
        [v21 appendFormat:_identifierDescription];

        [v19 setPocketTouchesExpected:?];
      }

      if (v7)
      {
        _identifierDescription2 = [v7 _identifierDescription];
        [v21 appendFormat:_identifierDescription2];

        [v7 proximityDetectionMode];
        [v19 setProximityDetectionMode:?];
      }

      [v19 setReason:?];
      v24 = [v19 copy];

      lastObject = v24;
    }

    else
    {
      v4 = v26;
      modeCopy = v27;
    }
  }

  else
  {
    v7 = 0;
  }

  return lastObject;
}

uint64_t __38__BKSHIDUISensorMode__prevailingMode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 _comparisonScore];
  v6 = [v4 _comparisonScore];

  return MEMORY[0x1EEDEFF38](v5, v6);
}

+ (id)buildModeForReason:(id)reason builder:(id)builder
{
  builderCopy = builder;
  reasonCopy = reason;
  _init = [(BKSHIDUISensorMode *)[BKSMutableHIDUISensorMode alloc] _init];
  [_init setReason:?];

  builderCopy[2](builderCopy, _init);
  v8 = [_init copy];

  return v8;
}

+ (BKSHIDUISensorMode)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDUISensorMode.m";
    v17 = 1024;
    v18 = 98;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end