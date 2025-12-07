@interface _GCDevicePhysicalInputButtonElement
+ (unsigned)updateContextSize;
- (BOOL)isAnalog;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)isPressed;
- (BOOL)update:(void *)update forCollectionEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCLinearInput)forceInput;
- (GCTouchedStateInput)touchedInput;
- (NSSet)sources;
- (NSString)debugDescription;
- (NSString)description;
- (_GCDevicePhysicalInputButtonElement)initWithParameters:(id)parameters;
- (_GCDevicePhysicalInputButtonElement)initWithTemplate:(id)template context:(id)context;
- (double)_lastPressedTimestamp;
- (double)_lastValueTimestamp;
- (double)_pressed;
- (double)_pressedThreshold;
- (double)_value;
- (double)lastPressedStateLatency;
- (double)lastPressedStateTimestamp;
- (double)lastValueLatency;
- (double)lastValueTimestamp;
- (float)value;
- (id)_analogPressValueField;
- (id)_forceValueField;
- (id)_isAnalog;
- (id)_pressedDidChangeHandler;
- (id)_pressedValueField;
- (id)_setAnalog:(id *)result;
- (id)_setAnalogPressValueField:(id *)result;
- (id)_setForceValueField:(id *)result;
- (id)_setLastPressedTimestamp:(id *)result;
- (id)_setLastValueTimestamp:(id *)result;
- (id)_setPressed:(id *)result;
- (id)_setPressedDidChangeHandler:(id *)result;
- (id)_setPressedThreshold:(id *)result;
- (id)_setPressedValueField:(id *)result;
- (id)_setSources:(id *)result;
- (id)_setTouchValueField:(id *)result;
- (id)_setValue:(id *)result;
- (id)_setValueDidChangeHandler:(id *)result;
- (id)_sources;
- (id)_touchValueField;
- (id)_valueDidChangeHandler;
- (id)pressedDidChangeHandler;
- (id)valueDidChangeHandler;
- (uint64_t)_force;
- (uint64_t)_touch;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
@end

@implementation _GCDevicePhysicalInputButtonElement

- (_GCDevicePhysicalInputButtonElement)initWithTemplate:(id)template context:(id)context
{
  templateCopy = template;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = _GCDevicePhysicalInputButtonElement;
  v8 = [(_GCDevicePhysicalInputElement *)&v14 initWithTemplate:templateCopy context:contextCopy];
  v8->_sourcesSlot = [contextCopy view:v8 allocateObjectSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[7]];
  v8->_isAnalogSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  v8->_pressedThresholdSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];
  v8->_pressedValueFieldSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
  v8->_analogPressValueFieldSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[11]];
  v8->_touchValueFieldSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[12]];
  v8->_forceValueFieldSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[13]];
  v8->_valueChangedHandlerSlot = [contextCopy view:v8 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[14]];
  v8->_pressedChangedHandlerSlot = [contextCopy view:v8 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[15]];
  v8->_valueSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[16]];
  v8->_valueTimestampSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[17]];
  v8->_pressedSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[18]];
  v8->_pressedTimestampSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[19]];
  _touch = [(_GCDevicePhysicalInputButtonElement *)templateCopy _touch];

  if (_touch)
  {
    _touch2 = [(_GCDevicePhysicalInputButtonElement *)templateCopy _touch];
    v8->_touchInputSlot = [contextCopy view:v8 makeReferenceToView:_touch2];
  }

  _force = [(_GCDevicePhysicalInputButtonElement *)templateCopy _force];

  if (_force)
  {
    _force2 = [(_GCDevicePhysicalInputButtonElement *)templateCopy _force];
    v8->_forceInputSlot = [contextCopy view:v8 makeReferenceToView:_force2];
  }

  return v8;
}

+ (unsigned)updateContextSize
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS____GCDevicePhysicalInputButtonElement;
  v2 = objc_msgSendSuper2(&v5, sel_updateContextSize);
  v3 = v2 + +[_GCDevicePhysicalInputTouchInput updateContextSize];
  return v3 + +[_GCDevicePhysicalInputSensorInput updateContextSize]+ 2;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputButtonElement;
  [(_GCDevicePhysicalInputElement *)&v9 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v6;
  }

  v7 = (commit + v6);
  v8 = *v7;
  if (*v7)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_6:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_7:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_11:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x2000) == 0)
  {
LABEL_12:
    if ((v8 & 0x4000) == 0)
    {
      return;
    }

LABEL_23:
    [_GCDevicePhysicalInputButtonElement preCommit:commit sender:?];
    return;
  }

LABEL_22:
  [_GCDevicePhysicalInputButtonElement preCommit:? sender:?];
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_23;
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInputButtonElement;
  [(_GCDevicePhysicalInputElement *)&v9 postCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v6;
  }

  v7 = (commit + v6);
  v8 = *v7;
  if (*v7)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *v7;
    if ((*v7 & 2) == 0)
    {
LABEL_5:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_5;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x80) == 0)
  {
LABEL_6:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x100) == 0)
  {
LABEL_7:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x800) == 0)
  {
LABEL_9:
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x1000) == 0)
  {
LABEL_11:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *v7;
  if ((*v7 & 0x200) == 0)
  {
LABEL_12:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  v8 = v10;
  if ((v10 & 0x800) == 0)
  {
LABEL_13:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  v8 = v10;
  if ((v10 & 0x2000) == 0)
  {
LABEL_14:
    if ((v8 & 0x4000) == 0)
    {
      return;
    }

LABEL_27:
    [_GCDevicePhysicalInputButtonElement postCommit:commit sender:?];
    return;
  }

LABEL_26:
  [_GCDevicePhysicalInputButtonElement postCommit:? sender:?];
  if ((v10 & 0x4000) != 0)
  {
    goto LABEL_27;
  }
}

- (BOOL)isEqualToElement:(id)element
{
  elementCopy = element;
  v7.receiver = self;
  v7.super_class = _GCDevicePhysicalInputButtonElement;
  if ([(_GCDevicePhysicalInputElement *)&v7 isEqualToElement:elementCopy])
  {
    [(_GCDevicePhysicalInputButtonElement *)&self->super.super.super.isa isEqualToElement:elementCopy, &v8];
    v5 = v8;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDevicePhysicalInputElement *)self identifier];
  [(_GCDevicePhysicalInputButtonElement *)self value];
  v6 = v5;
  isPressed = [(_GCDevicePhysicalInputButtonElement *)self isPressed];
  v8 = &stru_1F4E3B4E0;
  if (isPressed)
  {
    v8 = @" (pressed)";
  }

  v9 = [v3 stringWithFormat:@"<Button '%@' value = %f%@>", identifier, *&v6, v8];;

  return v9;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v37.receiver = self;
  v37.super_class = _GCDevicePhysicalInputButtonElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 != -1)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_30:
    [event floatValueForElement:0];
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if (v35 <= 0.00000011921)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v10 = +[_GCDevicePhysicalInputElement updateContextSize];
  MyUpdateContext_Offset_12 = v10;
  if (!self)
  {
    goto LABEL_30;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v12 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v13 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v14 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  if (v12 == -1)
  {
    v12 = v11;
  }

  if (v11 != -1)
  {
    v15 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    [event floatValueForElement:v11];
    v17 = v16;
    v18 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    if ((v17 - v18) > 0.00000011921 != (v15 - v18) > 0.00000011921)
    {
      [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_pressedSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_pressedTimestampSlot forSlot:?];
LABEL_8:
      *(update + v10) |= 0x1800u;
      v9 = 1;
    }
  }

  if (v12 == -1)
  {
    goto LABEL_14;
  }

  if (self)
  {
    v19 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    [event floatValueForElement:v12];
    if (v20 == v19)
    {
      goto LABEL_14;
    }

    [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
    [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_valueTimestampSlot forSlot:?];
    goto LABEL_13;
  }

LABEL_31:
  [event floatValueForElement:v12];
  if (v36 != 0.0)
  {
LABEL_13:
    *(update + v10) |= 0x600u;
    v9 = 1;
  }

LABEL_14:
  if (v13 != -1)
  {
    [event floatValueForElement:v13];
    v23 = v22;
    _touch = [(_GCDevicePhysicalInputButtonElement *)self _touch];
    if ((touchUpdateContext_Offset_0 & 1) == 0)
    {
      touchUpdateContext_Offset_0 = 1;
    }

    v25 = MyUpdateContext_Offset_12;
    if (MyUpdateContext_Offset_12 == -1)
    {
      v25 = +[_GCDevicePhysicalInputElement updateContextSize];
      MyUpdateContext_Offset_12 = v25;
      v26 = 0xFFFFFFFFLL;
      if (touchUpdateContext_Offset_0)
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 2;
    }

    v27 = [_GCDevicePhysicalInputTouchInput update:_touch withValue:update + v25 + v26 timestamp:v23];
    if (v27)
    {
      v28 = 0x2000;
    }

    else
    {
      v28 = 0;
    }

    *(update + v10) = *(update + v10) & 0xDFFF | v28;
    v9 |= v27;
  }

  if (v14 != -1)
  {
    [event floatValueForElement:v14];
    v30 = v29;
    _force = [(_GCDevicePhysicalInputButtonElement *)self _force];
    updated = forceUpdateContext(update);
    v33 = [_GCDevicePhysicalInputSensorInput update:_force withValue:updated timestamp:v30];
    if (v33)
    {
      v34 = 0x4000;
    }

    else
    {
      v34 = 0;
    }

    *(update + v10) = *(update + v10) & 0xBFFF | v34;
    v9 |= v33;
  }

  return v9;
}

- (BOOL)update:(void *)update forCollectionEvent:(id)event withTimestamp:(double)timestamp
{
  v37.receiver = self;
  v37.super_class = _GCDevicePhysicalInputButtonElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forCollectionEvent_withTimestamp_ forCollectionEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 != -1)
  {
    if (self)
    {
      goto LABEL_3;
    }

LABEL_30:
    [event floatValueForKey:0];
    v14 = 0;
    v13 = 0;
    v12 = 0;
    if (v35 <= 0.00000011921)
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  v10 = +[_GCDevicePhysicalInputElement updateContextSize];
  MyUpdateContext_Offset_12 = v10;
  if (!self)
  {
    goto LABEL_30;
  }

LABEL_3:
  v11 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v12 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v13 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  v14 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  if (v12 == -1)
  {
    v12 = v11;
  }

  if (v11 != -1)
  {
    v15 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    [event floatValueForKey:v11];
    v17 = v16;
    v18 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    if ((v17 - v18) > 0.00000011921 != (v15 - v18) > 0.00000011921)
    {
      [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_pressedSlot forSlot:?];
      [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_pressedTimestampSlot forSlot:?];
LABEL_8:
      *(update + v10) |= 0x1800u;
      v9 = 1;
    }
  }

  if (v12 == -1)
  {
    goto LABEL_14;
  }

  if (self)
  {
    v19 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    [event floatValueForKey:v12];
    if (v20 == v19)
    {
      goto LABEL_14;
    }

    [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_valueSlot forSlot:?];
    [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_valueTimestampSlot forSlot:?];
    goto LABEL_13;
  }

LABEL_31:
  [event floatValueForKey:v12];
  if (v36 != 0.0)
  {
LABEL_13:
    *(update + v10) |= 0x600u;
    v9 = 1;
  }

LABEL_14:
  if (v13 != -1)
  {
    [event floatValueForKey:v13];
    v23 = v22;
    _touch = [(_GCDevicePhysicalInputButtonElement *)self _touch];
    if ((touchUpdateContext_Offset_0 & 1) == 0)
    {
      touchUpdateContext_Offset_0 = 1;
    }

    v25 = MyUpdateContext_Offset_12;
    if (MyUpdateContext_Offset_12 == -1)
    {
      v25 = +[_GCDevicePhysicalInputElement updateContextSize];
      MyUpdateContext_Offset_12 = v25;
      v26 = 0xFFFFFFFFLL;
      if (touchUpdateContext_Offset_0)
      {
        v26 = 2;
      }
    }

    else
    {
      v26 = 2;
    }

    v27 = [_GCDevicePhysicalInputTouchInput update:_touch withValue:update + v25 + v26 timestamp:v23];
    if (v27)
    {
      v28 = 0x2000;
    }

    else
    {
      v28 = 0;
    }

    *(update + v10) = *(update + v10) & 0xDFFF | v28;
    v9 |= v27;
  }

  if (v14 != -1)
  {
    [event floatValueForKey:v14];
    v30 = v29;
    _force = [(_GCDevicePhysicalInputButtonElement *)self _force];
    updated = forceUpdateContext(update);
    v33 = [_GCDevicePhysicalInputSensorInput update:_force withValue:updated timestamp:v30];
    if (v33)
    {
      v34 = 0x4000;
    }

    else
    {
      v34 = 0;
    }

    *(update + v10) = *(update + v10) & 0xBFFF | v34;
    v9 |= v33;
  }

  return v9;
}

- (_GCDevicePhysicalInputButtonElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v27.receiver = self;
  v27.super_class = _GCDevicePhysicalInputButtonElement;
  v6 = [(_GCDevicePhysicalInputElement *)&v27 initWithParameters:parametersCopy];
  [(_GCDevicePhysicalInputButtonElementParameters *)parametersCopy sources];
  objc_claimAutoreleasedReturnValue();
  v7 = OUTLINED_FUNCTION_8_0();
  [(_GCDevicePhysicalInputButtonElement *)v7 _setSources:v3];

  if (parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v6)
  {
LABEL_3:
    v8 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v8 _testAndSetPrimitiveValue:v9 forSlot:v10];
  }

LABEL_4:
  if (parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:
    v11 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v11 _testAndSetPrimitiveValue:v12 forSlot:v13];
  }

LABEL_7:
  if (parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
LABEL_9:
    v14 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v14 _testAndSetPrimitiveValue:v15 forSlot:v16];
  }

LABEL_10:
  if (parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v6)
  {
LABEL_12:
    v17 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v17 _testAndSetPrimitiveValue:v18 forSlot:v19];
  }

LABEL_13:
  if (parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v6)
  {
LABEL_15:
    v20 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v20 _testAndSetPrimitiveValue:v21 forSlot:v22];
  }

LABEL_16:
  if (!parametersCopy)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v6)
  {
LABEL_18:
    v23 = OUTLINED_FUNCTION_2_3();
    [(_GCDevicePhysicalInputView *)v23 _testAndSetPrimitiveValue:v24 forSlot:v25];
  }

LABEL_19:
  if (parametersCopy && parametersCopy[7])
  {
    [[_GCDevicePhysicalInputTouchInput alloc] initWithParameters:parametersCopy[7]];
    v6->_touchInputSlot = [OUTLINED_FUNCTION_8_0() view:v6 makeReferenceToView:&OBJC_IVAR___GCController__motionConfigurableSensors];
  }

  if (parametersCopy && parametersCopy[8])
  {
    [[_GCDevicePhysicalInputSensorInput alloc] initWithParameters:parametersCopy[8]];
    v6->_forceInputSlot = [OUTLINED_FUNCTION_8_0() view:v6 makeReferenceToView:&OBJC_IVAR___GCController__motionConfigurableSensors];
  }

  return v6;
}

- (id)_setSources:(id *)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"_GCDevicePhysicalInputButtonElement.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    v4 = OUTLINED_FUNCTION_2_3();

    return [(_GCDevicePhysicalInputView *)v4 _testAndSetObjectValue:a2 forSlot:v5 policy:771];
  }

  return result;
}

- (id)_setAnalog:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 64);
  }

  return result;
}

- (id)_setPressedThreshold:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 72);
  }

  return result;
}

- (id)_setPressedValueField:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 80);
  }

  return result;
}

- (id)_setAnalogPressValueField:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 88);
  }

  return result;
}

- (id)_setTouchValueField:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 96);
  }

  return result;
}

- (id)_setForceValueField:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, a2, 104);
  }

  return result;
}

- (uint64_t)_touch
{
  if (result)
  {
    v1 = result;
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 160))
    {
      [dataSource view:v1 viewForSlot:v1 + 160];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)_force
{
  if (result)
  {
    v1 = result;
    dataSource = [(_GCDevicePhysicalInputView *)result dataSource];
    if (*(v1 + 168))
    {
      [dataSource view:v1 viewForSlot:v1 + 168];
      return objc_claimAutoreleasedReturnValue();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  v76.receiver = self;
  v76.super_class = _GCDevicePhysicalInputButtonElement;
  v10 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  p_inst_meths = &OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface.inst_meths;
  v12 = MyUpdateContext_Offset_12;
  if (MyUpdateContext_Offset_12 == -1)
  {
    v12 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset_12 = v12;
    if ((usages & 2) == 0)
    {
LABEL_3:
      if ((usages & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_41:
      [(_GCDevicePhysicalInputButtonElement *)with _valueDidChangeHandler];
      v37 = OUTLINED_FUNCTION_8_7();
      v39 = [(_GCDevicePhysicalInputButtonElement *)v37 _setValueDidChangeHandler:v38];
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_18_0(v40 & 0xFF7F);

      [(_GCDevicePhysicalInputButtonElement *)with _pressedDidChangeHandler];
      v41 = OUTLINED_FUNCTION_8_7();
      [(_GCDevicePhysicalInputButtonElement *)v41 _setPressedDidChangeHandler:v42];
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_18_0(v43 & 0xFEFF);
      v10 |= v39 | v44;

      if ((usages & 8) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_42;
    }
  }

  else if ((usages & 2) == 0)
  {
    goto LABEL_3;
  }

  [(_GCDevicePhysicalInputButtonElement *)with _sources];
  v13 = OUTLINED_FUNCTION_8_7();
  v74 = [(_GCDevicePhysicalInputButtonElement *)v13 _setSources:v14];
  *(update + v12) = *(update + v12) & 0xFFFE | v74;

  if (with)
  {
    v15 = OUTLINED_FUNCTION_49(64) != 0;
    if (self)
    {
      goto LABEL_9;
    }

LABEL_73:
    v16 = 0;
    v17 = 0;
    goto LABEL_12;
  }

  v15 = 0;
  if (!self)
  {
    goto LABEL_73;
  }

LABEL_9:
  v16 = OUTLINED_FUNCTION_6_9(v15, 64);
  if (v16)
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_2_20(v17);
  if (with)
  {
    v18 = OUTLINED_FUNCTION_49(72);
    v19 = OUTLINED_FUNCTION_3_3(v18);
    if (self)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0.0;
    if (self)
    {
LABEL_14:
      v20 = OUTLINED_FUNCTION_6_9(*&v19, 72);
      if (v20)
      {
        v21 = 4;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_17;
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_17:
  OUTLINED_FUNCTION_2_20(v21);
  if (with)
  {
    v22 = OUTLINED_FUNCTION_49(80);
  }

  else
  {
    v22 = 0;
  }

  v75 = v10;
  if (self)
  {
    v23 = OUTLINED_FUNCTION_6_9(v22, 80);
    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  OUTLINED_FUNCTION_2_20(v24);
  if (with)
  {
    v25 = OUTLINED_FUNCTION_49(88);
    if (self)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v25 = 0;
    if (self)
    {
LABEL_25:
      v26 = OUTLINED_FUNCTION_6_9(v25, 88);
      if (v26)
      {
        v27 = 16;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_28;
    }
  }

  v26 = 0;
  v27 = 0;
LABEL_28:
  v28 = v16 | v20;
  OUTLINED_FUNCTION_2_20(v27);
  if (with)
  {
    v29 = OUTLINED_FUNCTION_49(96);
  }

  else
  {
    v29 = 0;
  }

  v30 = v28 | v23;
  if (self)
  {
    v31 = OUTLINED_FUNCTION_6_9(v29, 96);
    if (v31)
    {
      v32 = 32;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = v30 | v26;
  OUTLINED_FUNCTION_2_20(v32);
  if (with)
  {
    v34 = OUTLINED_FUNCTION_49(104);
  }

  else
  {
    v34 = 0;
  }

  p_inst_meths = (&OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface + 24);
  v5 = (v33 | v31);
  if (self)
  {
    if (OUTLINED_FUNCTION_6_9(v34, 104))
    {
      v35 = 64;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  OUTLINED_FUNCTION_2_20(v35);
  v10 = v75 | v74 | v36 | v5;
  if ((usages & 4) != 0)
  {
    goto LABEL_41;
  }

LABEL_4:
  if ((usages & 8) == 0)
  {
    goto LABEL_64;
  }

LABEL_42:
  if (with)
  {
    v45 = OUTLINED_FUNCTION_49(128);
    v46 = OUTLINED_FUNCTION_3_3(v45);
    if (self)
    {
      goto LABEL_44;
    }

LABEL_85:
    v47 = 0;
    v48 = 0;
    goto LABEL_47;
  }

  v46 = 0.0;
  if (!self)
  {
    goto LABEL_85;
  }

LABEL_44:
  v47 = OUTLINED_FUNCTION_6_9(*&v46, 128);
  if (v47)
  {
    v48 = 512;
  }

  else
  {
    v48 = 0;
  }

LABEL_47:
  OUTLINED_FUNCTION_2_20(v48);
  if (with)
  {
    v49 = OUTLINED_FUNCTION_49(136);
    if (self)
    {
      goto LABEL_49;
    }

LABEL_87:
    v50 = 0;
    v51 = 0;
    goto LABEL_52;
  }

  v49 = 0;
  if (!self)
  {
    goto LABEL_87;
  }

LABEL_49:
  v50 = OUTLINED_FUNCTION_6_9(v49, 136);
  if (v50)
  {
    v51 = 1024;
  }

  else
  {
    v51 = 0;
  }

LABEL_52:
  OUTLINED_FUNCTION_2_20(v51);
  if (with)
  {
    v52 = OUTLINED_FUNCTION_49(128);
    v53 = OUTLINED_FUNCTION_3_3(v52);
    if (self)
    {
      goto LABEL_54;
    }

LABEL_89:
    v54 = 0;
    v55 = 0;
    goto LABEL_57;
  }

  v53 = 0.0;
  if (!self)
  {
    goto LABEL_89;
  }

LABEL_54:
  v54 = OUTLINED_FUNCTION_6_9(*&v53, 144);
  if (v54)
  {
    v55 = 2048;
  }

  else
  {
    v55 = 0;
  }

LABEL_57:
  v56 = v47 | v50;
  OUTLINED_FUNCTION_2_20(v55);
  if (with)
  {
    v57 = OUTLINED_FUNCTION_49(152);
  }

  else
  {
    v57 = 0;
  }

  v58 = v56 | v54;
  if (self)
  {
    if (OUTLINED_FUNCTION_6_9(v57, 152))
    {
      v59 = 4096;
    }

    else
    {
      v59 = 0;
    }
  }

  else
  {
    v59 = 0;
  }

  p_inst_meths = &OBJC_PROTOCOL___GCSystemGestureXPCProxyServiceRemoteServerInterface.inst_meths;
  OUTLINED_FUNCTION_2_20(v59);
  v10 |= v58 | v60;
LABEL_64:
  _touch = [(_GCDevicePhysicalInputButtonElement *)self _touch];
  if ((touchUpdateContext_Offset_0 & 1) == 0)
  {
    touchUpdateContext_Offset_0 = 1;
  }

  v62 = *(p_inst_meths + 140);
  if (v62 == -1)
  {
    v62 = +[_GCDevicePhysicalInputElement updateContextSize];
    *(p_inst_meths + 140) = v62;
    if (touchUpdateContext_Offset_0)
    {
      v63 = 2;
    }

    else
    {
      v63 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v63 = 2;
  }

  v64 = update + v62;
  _touch2 = [(_GCDevicePhysicalInputButtonElement *)with _touch];
  LOBYTE(v64) = [_touch update:&v64[v63] forUsages:usages with:_touch2];
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_0(v66 & 0xDFFF);

  _force = [(_GCDevicePhysicalInputButtonElement *)self _force];
  updated = forceUpdateContext(update);
  _force2 = [(_GCDevicePhysicalInputButtonElement *)with _force];
  [_force update:updated forUsages:usages with:_force2];
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_0(v70 & 0xBFFF);
  v72 = v10 | v71 | v64;

  return v72 & 1;
}

- (id)_sources
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (id)_isAnalog
{
  if (result)
  {
    return ([(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?]!= 0);
  }

  return result;
}

- (double)_pressedThreshold
{
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (id)_pressedValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 80);
  }

  return result;
}

- (id)_analogPressValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 88);
  }

  return result;
}

- (id)_touchValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 96);
  }

  return result;
}

- (id)_forceValueField
{
  if (result)
  {
    return OUTLINED_FUNCTION_3_4(result, 104);
  }

  return result;
}

- (id)_valueDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (id)_setValueDidChangeHandler:(id *)result
{
  if (result)
  {
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(112);

    return v3;
  }

  return result;
}

- (id)_pressedDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (id)_setPressedDidChangeHandler:(id *)result
{
  if (result)
  {
    v2 = _Block_copy(aBlock);
    v3 = OUTLINED_FUNCTION_2_9(120);

    return v3;
  }

  return result;
}

- (double)_value
{
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (id)_setValue:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 128);
  }

  return result;
}

- (double)_lastValueTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (id)_setLastValueTimestamp:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 136);
  }

  return result;
}

- (id)_setPressed:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, COERCE__INT64(a2), 144);
  }

  return result;
}

- (double)_lastPressedTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (id)_setLastPressedTimestamp:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_6(result, *&a2, 152);
  }

  return result;
}

- (GCTouchedStateInput)touchedInput
{
  _touch = [(_GCDevicePhysicalInputButtonElement *)self _touch];

  return _touch;
}

- (GCLinearInput)forceInput
{
  _force = [(_GCDevicePhysicalInputButtonElement *)self _force];

  return _force;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDevicePhysicalInputElement *)self identifier];
  localizedName = [(_GCDevicePhysicalInputElement *)self localizedName];
  sfSymbolsName = [(_GCDevicePhysicalInputElement *)self sfSymbolsName];
  isAnalog = [(_GCDevicePhysicalInputButtonElement *)self isAnalog];
  if (self)
  {
    v8 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  }

  else
  {
    v8 = 0;
  }

  if (isAnalog)
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [(_GCDevicePhysicalInputButtonElement *)self value];
  v11 = v10;
  isPressed = [(_GCDevicePhysicalInputButtonElement *)self isPressed];
  v13 = &stru_1F4E3B4E0;
  if (isPressed)
  {
    v13 = @" (pressed)";
  }

  v14 = [v3 stringWithFormat:@"<Button %p '%@' name = '%@', symbol = '%@', analog = %s, source = %zi, value = %f%@>", self, identifier, localizedName, sfSymbolsName, v9, v8, *&v11, v13];;

  return v14;
}

- (double)_pressed
{
  if (!self)
  {
    return 0.0;
  }

  v1 = [(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?];
  *&result = OUTLINED_FUNCTION_3_3(v1);
  return result;
}

- (id)valueDidChangeHandler
{
  _valueDidChangeHandler = [(_GCDevicePhysicalInputButtonElement *)&self->super.super.super.isa _valueDidChangeHandler];

  return _valueDidChangeHandler;
}

- (float)value
{
  if (!self)
  {
    return 0.0;
  }

  v2 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  return OUTLINED_FUNCTION_3_3(v2);
}

- (BOOL)isAnalog
{
  if (self)
  {
    LOBYTE(self) = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]!= 0;
  }

  return self;
}

- (double)lastValueTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (double)lastValueLatency
{
  if (!dword_1EC7361F4)
  {
    mach_timebase_info(&lastValueLatency_sTimebaseInfo_4);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = mach_absolute_time();
  return OUTLINED_FUNCTION_5_3(v4, &lastValueLatency_sTimebaseInfo_4) / 1000000000.0 - v3;
}

- (NSSet)sources
{
  _sources = [(_GCDevicePhysicalInputButtonElement *)&self->super.super.super.isa _sources];

  return _sources;
}

- (id)pressedDidChangeHandler
{
  _pressedDidChangeHandler = [(_GCDevicePhysicalInputButtonElement *)&self->super.super.super.isa _pressedDidChangeHandler];

  return _pressedDidChangeHandler;
}

- (BOOL)isPressed
{
  if (self)
  {
    selfCopy = self;
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    v4 = [(_GCDevicePhysicalInputView *)&selfCopy->super.super.super.isa _primitiveValueForSlot:?];
    LOBYTE(self) = (v3 - OUTLINED_FUNCTION_3_3(v4)) > 0.00000011921;
  }

  return self;
}

- (double)lastPressedStateTimestamp
{
  if (self)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  else
  {
    return 0.0;
  }
}

- (double)lastPressedStateLatency
{
  if (!dword_1EC7361FC)
  {
    mach_timebase_info(&lastPressedStateLatency_sTimebaseInfo_0);
  }

  if (self)
  {
    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = mach_absolute_time();
  return OUTLINED_FUNCTION_5_3(v4, &lastPressedStateLatency_sTimebaseInfo_0) / 1000000000.0 - v3;
}

- (void)preCommit:(uint64_t)a1 sender:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_20_0(a1);
  OUTLINED_FUNCTION_13_2();
  if (!v3)
  {
    *(v2 + 512) = 1;
  }

  if (MyUpdateContext_Offset_12 == -1)
  {
    OUTLINED_FUNCTION_14_2(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() preCommit:? sender:?];

  OUTLINED_FUNCTION_15_3();
}

- (void)preCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
  [v4 preCommit:forceUpdateContext(a2) sender:a1];
}

- (void)postCommit:(id *)a1 sender:.cold.1(id *a1)
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)a1 _valueDidChangeHandler];
  if (v2)
  {
    [a1 value];
    v3 = OUTLINED_FUNCTION_10_8();
    v4(v3);
  }

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(id *)a1 sender:.cold.2(id *a1)
{
  v2 = [(_GCDevicePhysicalInputButtonElement *)a1 _pressedDidChangeHandler];
  if (v2)
  {
    [a1 isPressed];
    v3 = OUTLINED_FUNCTION_10_8();
    v4(v3);
  }

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(uint64_t)a1 sender:.cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_20_0(a1);
  OUTLINED_FUNCTION_13_2();
  if (!v3)
  {
    *(v2 + 512) = 1;
  }

  if (MyUpdateContext_Offset_12 == -1)
  {
    OUTLINED_FUNCTION_14_2(+[_GCDevicePhysicalInputElement updateContextSize]);
  }

  [OUTLINED_FUNCTION_43() postCommit:? sender:?];

  OUTLINED_FUNCTION_15_3();
}

- (void)postCommit:(uint64_t)a1 sender:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
  [v4 postCommit:forceUpdateContext(a2) sender:a1];
}

- (void)isEqualToElement:(unsigned __int8 *)a3 .cold.1(id *a1, id *a2, unsigned __int8 *a3)
{
  v8 = [(_GCDevicePhysicalInputButtonElement *)a1 _sources];
  v9 = [(_GCDevicePhysicalInputButtonElement *)a2 _sources];
  if (v8 != v9)
  {
    v3 = [(_GCDevicePhysicalInputButtonElement *)a1 _sources];
    v4 = [a2 sources];
    if (([v3 isEqual:v4] & 1) == 0)
    {
      v20 = 0;
      goto LABEL_17;
    }
  }

  if (a1)
  {
    v10 = OUTLINED_FUNCTION_4_4(64);
    v11 = v10 != 0;
    if (!a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }

      v12 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_23;
    }

    v11 = 0;
  }

  if (v11 != (OUTLINED_FUNCTION_2_4(64) != 0))
  {
LABEL_15:
    v19 = 0;
    v20 = 0;
    goto LABEL_16;
  }

  if (!a1)
  {
    v13 = 0.0;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_7:
  v13 = COERCE_DOUBLE(OUTLINED_FUNCTION_4_4(72));
  if (v12)
  {
    if (v13 != 0.0 || OUTLINED_FUNCTION_4_4(80) || OUTLINED_FUNCTION_4_4(88))
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_4_4(96);
    v18 = 0;
    goto LABEL_14;
  }

LABEL_8:
  v14 = OUTLINED_FUNCTION_2_4(72);
  if (v13 != OUTLINED_FUNCTION_3_3(v14))
  {
    goto LABEL_15;
  }

  if (a1)
  {
    v15 = OUTLINED_FUNCTION_4_4(80);
    if (v15 != OUTLINED_FUNCTION_2_4(80))
    {
      goto LABEL_15;
    }

    v16 = OUTLINED_FUNCTION_4_4(88);
    if (v16 != OUTLINED_FUNCTION_2_4(88))
    {
      goto LABEL_15;
    }

    v17 = OUTLINED_FUNCTION_4_4(96);
  }

  else
  {
    if (OUTLINED_FUNCTION_2_4(80) || OUTLINED_FUNCTION_2_4(88))
    {
      goto LABEL_15;
    }

    v17 = 0;
  }

  v18 = OUTLINED_FUNCTION_2_4(96);
LABEL_14:
  if (v17 != v18)
  {
    goto LABEL_15;
  }

LABEL_23:
  v21 = [(_GCDevicePhysicalInputButtonElement *)a1 _touch];
  v22 = [(_GCDevicePhysicalInputButtonElement *)a2 _touch];
  if (v21 == v22)
  {
    goto LABEL_24;
  }

  v26 = [(_GCDevicePhysicalInputButtonElement *)a1 _touch];
  v31 = [(_GCDevicePhysicalInputButtonElement *)a2 _touch];
  if ([(_GCDevicePhysicalInputTouchInput *)v26 isEqualToInput:v31])
  {
    v29 = v26;
LABEL_24:
    v30 = v21;
    v23 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
    v24 = [(_GCDevicePhysicalInputButtonElement *)a2 _force];
    v25 = v24;
    if (v23 == v24)
    {

      v19 = 1;
    }

    else
    {
      v28 = [(_GCDevicePhysicalInputButtonElement *)a1 _force];
      v27 = [(_GCDevicePhysicalInputButtonElement *)a2 _force];
      v19 = [(_GCDevicePhysicalInputSensorInput *)v28 isEqualToInput:v27];
    }

    v26 = v29;
    v21 = v30;
    if (v30 == v22)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v19 = 0;
LABEL_30:

LABEL_31:
  v20 = v19;
LABEL_16:
  if (v8 != v9)
  {
LABEL_17:

    v19 = v20;
  }

  *a3 = v19;
}

@end