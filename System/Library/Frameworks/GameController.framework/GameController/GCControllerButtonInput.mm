@interface GCControllerButtonInput
- (BOOL)_setTouched:(BOOL)touched queue:(id)queue;
- (BOOL)_setValue:(float)value queue:(id)queue;
- (BOOL)isPressed;
- (BOOL)isTouched;
- (GCControllerButtonInput)initWithDescriptionName:(id)name;
- (float)value;
- (id)debugDescription;
- (id)description;
- (int)getAndResetTimesPressed;
- (void)isPressed;
- (void)isTouched;
- (void)setDeadzone:(float)deadzone;
- (void)setValue:(float)value;
- (void)value;
@end

@implementation GCControllerButtonInput

- (GCControllerButtonInput)initWithDescriptionName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = GCControllerButtonInput;
  v5 = [(GCControllerElement *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (nameCopy)
    {
      v7 = [nameCopy copy];
      [(GCControllerElement *)v6 setPrimaryAlias:v7];
    }

    else
    {
      [(GCControllerElement *)v5 setPrimaryAlias:@"Button"];
    }

    v6->_pressCounter = 0;
  }

  return v6;
}

- (BOOL)_setValue:(float)value queue:(id)queue
{
  v74 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v7 = clamp(value, 0.0, 1.0);
  value = self->_value;
  if (value != v7)
  {
    v9 = _gc_log_signpost();
    device = [(GCControllerElement *)self device];
    primaryAlias = [(GCControllerElement *)self primaryAlias];
    device2 = [(GCControllerElement *)self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    v14 = v13;

    v15 = _gc_log_signpost();
    v16 = _gc_log_signpost();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v33 = _gc_log_signpost();
      if (os_signpost_enabled(v33))
      {
        *buf = 134218755;
        v67 = device;
        v68 = 2117;
        v69 = primaryAlias;
        v70 = 2048;
        v71 = v14;
        v72 = 2053;
        v73 = v7;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Button.value.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}f}", buf, 0x2Au);
      }
    }

    v18 = self->_value;
    deadzone = self->_deadzone;
    self->_value = v7;
    v20 = _Block_copy(self->_valueChangedHandler);
    v21 = _Block_copy(self->_touchedChangedHandler);
    v22 = _Block_copy(self->_pressedChangedHandler);
    if (v20)
    {
      v23 = os_signpost_id_generate(v9);
      v24 = _gc_log_signpost();
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);

      if (v25)
      {
        v34 = v9;
        v35 = v34;
        if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          log = v34;
          v36 = os_signpost_enabled(v34);
          v35 = log;
          if (v36)
          {
            *buf = 134218499;
            v67 = device;
            v68 = 2117;
            v69 = primaryAlias;
            v70 = 2048;
            v71 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v23, "GCPhysicalInputProfile.Button.value.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v35 = log;
          }
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke;
      block[3] = &unk_1E841ACD0;
      v62 = v20;
      block[4] = self;
      v64 = v7;
      v65 = deadzone < v7;
      v61 = v9;
      v63 = v23;
      dispatch_async(queueCopy, block);
    }

    if (!self->_touchedAndValueDistinct && v7 > 0.0019531 == v18 <= 0.0019531)
    {
      self->_touched = v7 > 0.0019531;
      if (v21)
      {
        v26 = os_signpost_id_generate(v9);
        v27 = _gc_log_signpost();
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

        if (v28)
        {
          v40 = v9;
          v41 = v40;
          if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            logb = v40;
            v42 = os_signpost_enabled(v40);
            v41 = logb;
            if (v42)
            {
              *buf = 134218499;
              v67 = device;
              v68 = 2117;
              v69 = primaryAlias;
              v70 = 2048;
              v71 = v14;
              _os_signpost_emit_with_name_impl(&dword_1D2CD5000, logb, OS_SIGNPOST_INTERVAL_BEGIN, v26, "GCPhysicalInputProfile.Button.touched.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
              v41 = logb;
            }
          }
        }

        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke_89;
        v53[3] = &unk_1E841ACF8;
        v55 = v21;
        v53[4] = self;
        v57 = v7;
        v58 = deadzone < v7;
        v59 = v7 > 0.0019531;
        v54 = v9;
        v56 = v26;
        dispatch_async(queueCopy, v53);
      }
    }

    if (v18 > deadzone != deadzone < v7 && v22)
    {
      v29 = os_signpost_id_generate(v9);
      v30 = _gc_log_signpost();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);

      if (v31)
      {
        v37 = v9;
        v38 = v37;
        if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          loga = v37;
          v39 = os_signpost_enabled(v37);
          v38 = loga;
          if (v39)
          {
            *buf = 134218499;
            v67 = device;
            v68 = 2117;
            v69 = primaryAlias;
            v70 = 2048;
            v71 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, loga, OS_SIGNPOST_INTERVAL_BEGIN, v29, "GCPhysicalInputProfile.Button.pressed.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v38 = loga;
          }
        }
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __43__GCControllerButtonInput__setValue_queue___block_invoke_90;
      v47[3] = &unk_1E841ACD0;
      v49 = v22;
      v47[4] = self;
      v51 = v7;
      v52 = deadzone < v7;
      v48 = v9;
      v50 = v29;
      dispatch_async(queueCopy, v47);
    }

    if (v18 <= deadzone && deadzone < v7)
    {
      ++self->_pressCounter;
    }
  }

  return value != v7;
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v2 = _gc_log_signpost();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_cold_1(a1);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_89(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v2 = _gc_log_signpost();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(a1);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_90(uint64_t a1)
{
  (*(*(a1 + 48) + 16))(*(a1 + 64));
  v2 = _gc_log_signpost();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_90_cold_1(a1);
  }
}

- (BOOL)_setTouched:(BOOL)touched queue:(id)queue
{
  touchedCopy = touched;
  v46 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  if (self->_touchedAndValueDistinct && self->_touched != touchedCopy)
  {
    v8 = _gc_log_signpost();
    device = [(GCControllerElement *)self device];
    primaryAlias = [(GCControllerElement *)self primaryAlias];
    device2 = [(GCControllerElement *)self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    v14 = v13;

    v15 = _gc_log_signpost();
    v16 = _gc_log_signpost();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

    if (v17)
    {
      v26 = _gc_log_signpost();
      if (os_signpost_enabled(v26))
      {
        *buf = 134218755;
        v39 = device;
        v40 = 2117;
        v41 = primaryAlias;
        v42 = 2048;
        v43 = v14;
        v44 = 1029;
        v45 = touchedCopy;
        _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GCPhysicalInputProfile.Button.touched.set", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f, value: %{sensitive}u", buf, 0x26u);
      }
    }

    self->_touched = touchedCopy;
    v18 = _Block_copy(self->_touchedChangedHandler);
    value = self->_value;
    isPressed = [(GCControllerButtonInput *)self isPressed];
    if (v18)
    {
      v21 = isPressed;
      v22 = os_signpost_id_generate(v8);
      v23 = _gc_log_signpost();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

      if (v24)
      {
        v27 = v8;
        v28 = v27;
        if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          log = v27;
          v29 = os_signpost_enabled(v27);
          v28 = log;
          if (v29)
          {
            *buf = 134218499;
            v39 = device;
            v40 = 2117;
            v41 = primaryAlias;
            v42 = 2048;
            v43 = v14;
            _os_signpost_emit_with_name_impl(&dword_1D2CD5000, log, OS_SIGNPOST_INTERVAL_BEGIN, v22, "GCPhysicalInputProfile.Button.touched.callback", "{device: %p, primaryAlias: %{sensitive}@, lastEventTimestamp: %f}", buf, 0x20u);
            v28 = log;
          }
        }
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__GCControllerButtonInput__setTouched_queue___block_invoke;
      block[3] = &unk_1E841AD20;
      v33 = v18;
      block[4] = self;
      v35 = value;
      v36 = v21;
      v37 = touchedCopy;
      v32 = v8;
      v34 = v22;
      dispatch_async(queueCopy, block);
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __45__GCControllerButtonInput__setTouched_queue___block_invoke(uint64_t a1, __n128 a2)
{
  a2.n128_u32[0] = *(a1 + 64);
  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), *(a1 + 68) != 0.0, *(a1 + 72), a2);
  v3 = _gc_log_signpost();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);

  if (v4)
  {
    __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(a1);
  }
}

- (int)getAndResetTimesPressed
{
  pressCounter = self->_pressCounter;
  self->_pressCounter = 0;
  return pressCounter;
}

- (BOOL)isPressed
{
  [(GCControllerButtonInput *)self value];
  v4 = v3;
  [(GCControllerButtonInput *)self deadzone];
  v6 = v5;
  v7 = _gc_log_signpost();
  v8 = _gc_log_signpost();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (v9)
  {
    [(GCControllerButtonInput *)self isPressed];
  }

  return v4 > v6;
}

- (BOOL)isTouched
{
  touched = self->_touched;
  v4 = _gc_log_signpost();
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    [(GCControllerButtonInput *)self isTouched];
  }

  return touched;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  primaryAlias = [(GCControllerElement *)self primaryAlias];
  [(GCControllerButtonInput *)self value];
  v6 = [v3 stringWithFormat:@"%@ (value: %.3f, pressed: %d)", primaryAlias, v5, -[GCControllerButtonInput isPressed](self, "isPressed")];

  return v6;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GCControllerButtonInput *)self description];
  v7 = [v3 stringWithFormat:@"<%@: %p %@>", v5, self, v6];

  return v7;
}

- (void)setValue:(float)value
{
  device = [(GCControllerElement *)self device];
  if (device)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = device;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_9;
    }

    isSnapshot = [device isSnapshot];
    v6 = device;
    if ((isSnapshot & 1) == 0)
    {
      goto LABEL_9;
    }

    handlerQueue = [device handlerQueue];
  }

  else
  {
    handlerQueue = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
  }

  selfCopy = self;
  *&v11 = value;
  if ([(GCControllerButtonInput *)selfCopy _setValue:handlerQueue queue:v11])
  {
    [0 addObject:selfCopy];
  }

  v6 = device;
LABEL_9:
}

- (float)value
{
  value = self->_value;
  v4 = _gc_log_signpost();
  v5 = _gc_log_signpost();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    [(GCControllerButtonInput *)self value];
  }

  return value;
}

- (void)setDeadzone:(float)deadzone
{
  if (deadzone <= 0.0019531)
  {
    deadzone = 0.0019531;
  }

  self->_deadzone = deadzone;
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    v9 = 0;
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.value.callback", "{}", v7, v8, v9);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_89_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    v9 = 0;
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.touched.callback", "{}", v7, v8, v9);
  }
}

void __43__GCControllerButtonInput__setValue_queue___block_invoke_90_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_9(a1);
  OUTLINED_FUNCTION_1_22();
  if (!(!v3 & v2) && os_signpost_enabled(v1))
  {
    v9 = 0;
    OUTLINED_FUNCTION_2_16(&dword_1D2CD5000, v4, v5, v6, "GCPhysicalInputProfile.Button.pressed.callback", "{}", v7, v8, v9);
  }
}

- (void)isPressed
{
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    device = [self device];
    primaryAlias = [self primaryAlias];
    device2 = [self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x26u);
  }
}

- (void)isTouched
{
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    device = [self device];
    primaryAlias = [self primaryAlias];
    device2 = [self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    OUTLINED_FUNCTION_3_10();
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x26u);
  }
}

- (void)value
{
  v2 = _gc_log_signpost();
  if (os_signpost_enabled(v2))
  {
    device = [self device];
    primaryAlias = [self primaryAlias];
    device2 = [self device];
    physicalInputProfile = [device2 physicalInputProfile];
    [physicalInputProfile lastEventTimestamp];
    OUTLINED_FUNCTION_0_28();
    _os_signpost_emit_with_name_impl(v7, v8, v9, v10, v11, v12, v13, 0x2Au);
  }
}

@end