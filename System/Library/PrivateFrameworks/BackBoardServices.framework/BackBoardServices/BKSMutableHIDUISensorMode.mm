@interface BKSMutableHIDUISensorMode
- (BKSMutableHIDUISensorMode)initWithReason:(id)reason;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setMultitouchSettingKey:(id)key enabled:(BOOL)enabled;
- (void)setMultitouchHostStateKeys:(id)keys;
- (void)setProximityHostStateKeys:(id)keys;
- (void)setReason:(id)reason;
@end

@implementation BKSMutableHIDUISensorMode

- (id)copy
{
  v2 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v2 _initCopyFrom:?];
}

- (void)_setMultitouchSettingKey:(id)key enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  keyCopy = key;
  multitouchHostStateKeys = self->super._multitouchHostStateKeys;
  if (enabledCopy)
  {
    v11 = keyCopy;
    if (multitouchHostStateKeys)
    {
      [(NSSet *)multitouchHostStateKeys setByAddingObject:?];
    }

    else
    {
      [MEMORY[0x1E695DFD8] setWithObject:?];
    }
    v10 = ;
    goto LABEL_10;
  }

  if (multitouchHostStateKeys)
  {
    v11 = keyCopy;
    multitouchHostStateKeys = [(NSSet *)multitouchHostStateKeys containsObject:?];
    keyCopy = v11;
    if (multitouchHostStateKeys)
    {
      v8 = [(NSSet *)self->super._multitouchHostStateKeys count];
      v9 = self->super._multitouchHostStateKeys;
      if (v8 == 1)
      {
        v10 = 0;
LABEL_11:
        self->super._multitouchHostStateKeys = v10;

        keyCopy = v11;
        goto LABEL_12;
      }

      v10 = [(NSSet *)v9 mutableCopy];
      [(NSSet *)v10 removeObject:?];
LABEL_10:
      v9 = self->super._multitouchHostStateKeys;
      goto LABEL_11;
    }
  }

LABEL_12:

  MEMORY[0x1EEE66BB8](multitouchHostStateKeys, keyCopy);
}

- (void)setProximityHostStateKeys:(id)keys
{
  if (self->super._proximityHostStateKeys != keys)
  {
    v5 = [keys copy];
    proximityHostStateKeys = self->super._proximityHostStateKeys;
    self->super._proximityHostStateKeys = v5;

    MEMORY[0x1EEE66BB8](v5, proximityHostStateKeys);
  }
}

- (void)setMultitouchHostStateKeys:(id)keys
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v6 = keysCopy;
  if (self->super._multitouchHostStateKeys != keysCopy)
  {
    v13 = keysCopy;
    if (![(BKSHIDUISensorMode *)self _settingKeysAllowed:?])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[self _settingKeysAllowed:multitouchHostStateKeys]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(a2);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        v15 = v10;
        v16 = 2114;
        v17 = v12;
        v18 = 2048;
        selfCopy = self;
        v20 = 2114;
        v21 = @"BKSHIDUISensorMode.m";
        v22 = 1024;
        v23 = 667;
        v24 = 2114;
        v25 = v9;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1863B0280);
    }

    v7 = [(NSSet *)v13 copy];
    multitouchHostStateKeys = self->super._multitouchHostStateKeys;
    self->super._multitouchHostStateKeys = v7;

    v6 = v13;
  }

  MEMORY[0x1EEE66BB8](keysCopy, v6);
}

- (void)setReason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  if (!reasonCopy)
  {
    v9 = NSStringFromClass(v6);
    v10 = [v5 stringWithFormat:@"reason", v9];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v25 = v11;
      v26 = 2114;
      v27 = v13;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDUISensorMode.m";
      v32 = 1024;
      v33 = 634;
      v34 = 2114;
      v35 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B047CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = MEMORY[0x1E696AEC0];
    classForCoder = [reasonCopy classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v16 = NSStringFromClass(classForCoder);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v14 stringWithFormat:@"reason", v16, v18];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138544642;
      v25 = v20;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      selfCopy2 = self;
      v30 = 2114;
      v31 = @"BKSHIDUISensorMode.m";
      v32 = 1024;
      v33 = 634;
      v34 = 2114;
      v35 = v19;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v19 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B05B4);
  }

  v7 = [reasonCopy copy];
  reason = self->super._reason;
  self->super._reason = v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [BKSHIDUISensorMode alloc];

  return [(BKSHIDUISensorMode *)v3 _initCopyFrom:?];
}

- (BKSMutableHIDUISensorMode)initWithReason:(id)reason
{
  reasonCopy = reason;
  v8.receiver = self;
  v8.super_class = BKSMutableHIDUISensorMode;
  _init = [(BKSHIDUISensorMode *)&v8 _init];
  v6 = _init;
  if (_init)
  {
    [(BKSMutableHIDUISensorMode *)_init setReason:?];
  }

  return v6;
}

@end