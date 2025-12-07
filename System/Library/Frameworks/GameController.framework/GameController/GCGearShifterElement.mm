@interface GCGearShifterElement
+ (unsigned)updateContextSize;
- (BOOL)canWrap;
- (BOOL)isAnalog;
- (BOOL)isEqualToElement:(id)element;
- (BOOL)isSequential;
- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp;
- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with;
- (GCGearShifterElement)initWithParameters:(id)parameters;
- (GCGearShifterElement)initWithTemplate:(id)template context:(id)context;
- (NSSet)sources;
- (NSString)description;
- (_NSRange)positionRange;
- (__n64)_delta;
- (double)_lastDeltaTimestamp;
- (double)_lastPositionTimestamp;
- (double)lastDeltaLatency;
- (double)lastDeltaTimestamp;
- (double)lastPositionLatency;
- (double)lastPositionTimestamp;
- (float)delta;
- (id)_deltaDidChangeHandler;
- (id)_position;
- (id)_positionDidChangeHandler;
- (id)_positionField;
- (id)_positionMax;
- (id)_positionMin;
- (id)_setDelta:(id *)result;
- (id)_setDeltaDidChangeHandler:(id *)result;
- (id)_setLastDeltaTimestamp:(id *)result;
- (id)_setLastPositionTimestamp:(id *)result;
- (id)_setPosition:(id *)result;
- (id)_setPositionDidChangeHandler:(id *)result;
- (id)_setPositionField:(id *)result;
- (id)_setPositionMax:(id *)result;
- (id)_setPositionMin:(id *)result;
- (id)_setSources:(id *)result;
- (id)_sources;
- (id)deltaDidChangeHandler;
- (id)patternInput;
- (id)positionDidChangeHandler;
- (id)sequentialInput;
- (int64_t)position;
- (void)postCommit:(const void *)commit sender:(id)sender;
- (void)preCommit:(const void *)commit sender:(id)sender;
- (void)setDeltaDidChangeHandler:(id)handler;
- (void)setPositionDidChangeHandler:(id)handler;
@end

@implementation GCGearShifterElement

- (GCGearShifterElement)initWithTemplate:(id)template context:(id)context
{
  templateCopy = template;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = GCGearShifterElement;
  v8 = [(_GCDevicePhysicalInputElement *)&v12 initWithTemplate:templateCopy context:contextCopy];
  v9 = *(templateCopy + 56);
  v8->_isPatternShifter = v9;
  v8->_impl.pattern.sourcesSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[8]];
  if (v9 == 1)
  {
    v8->_impl.pattern.positionMinSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[9]];
    v8->_impl.pattern.positionMaxSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
    v8->_impl.pattern.positionFieldSlot = [contextCopy view:v8 allocatePrimitiveSlot:1 withCopyOfValueFromView:templateCopy slot:templateCopy[11]];
  }

  if (v8->_isPatternShifter)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  *(&v8->_impl.pattern.sourcesSlot + v10 * 8) = [contextCopy view:v8 allocateObjectSlot:2 withCopyOfValueFromView:templateCopy slot:templateCopy[v10 + 8]];
  if (v8->_isPatternShifter)
  {
    v8->_impl.pattern.positionSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[13]];
    v8->_impl.pattern.timestampSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[14]];
  }

  else
  {
    v8->_impl.pattern.positionMaxSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
    v8->_impl.pattern.positionMaxSlot = [contextCopy view:v8 allocatePrimitiveSlot:3 withCopyOfValueFromView:templateCopy slot:templateCopy[10]];
  }

  return v8;
}

+ (unsigned)updateContextSize
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___GCGearShifterElement;
  return objc_msgSendSuper2(&v3, sel_updateContextSize) + 2;
}

- (BOOL)update:(void *)update forUsages:(unint64_t)usages with:(id)with
{
  usagesCopy = usages;
  v45.receiver = self;
  v45.super_class = GCGearShifterElement;
  v10 = [_GCDevicePhysicalInputElement update:sel_update_forUsages_with_ forUsages:? with:?];
  if (self->_isPatternShifter != *(with + 56))
  {
    [GCGearShifterElement update:a2 forUsages:self with:?];
  }

  v11 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v11 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v11;
  }

  if (!self->_isPatternShifter)
  {
    if ((usagesCopy & 2) != 0)
    {
      _sources = [(GCGearShifterElement *)with _sources];
      v41 = [(GCGearShifterElement *)&self->super.super.super.isa _setSources:_sources];
      *(update + v11) = *(update + v11) & 0xFE | v41;
      v10 |= v41;

      if ((usagesCopy & 4) == 0)
      {
LABEL_15:
        if ((usagesCopy & 8) == 0)
        {
          return v10;
        }

        goto LABEL_16;
      }
    }

    else if ((usagesCopy & 4) == 0)
    {
      goto LABEL_15;
    }

    _deltaDidChangeHandler = [(GCGearShifterElement *)with _deltaDidChangeHandler];
    v43 = [(GCGearShifterElement *)&self->super.super.super.isa _setDeltaDidChangeHandler:_deltaDidChangeHandler];
    if (v43)
    {
      v44 = 2;
    }

    else
    {
      v44 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFD | v44;
    v10 |= v43;

    if ((usagesCopy & 8) == 0)
    {
      return v10;
    }

LABEL_16:
    v17 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?]);
    v18 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_impl.pattern.positionMaxSlot forSlot:?];
    if (v18)
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFB | v19;
    v15 = v10 | v18;
    v16 = 24;
    goto LABEL_20;
  }

  if ((usagesCopy & 2) != 0)
  {
    _sources2 = [(GCGearShifterElement *)with _sources];
    v25 = [(GCGearShifterElement *)&self->super.super.super.isa _setSources:_sources2];
    *(update + v11) = *(update + v11) & 0xFFFE | v25;
    v26 = v10 | v25;

    v27 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    v28 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v27 forSlot:&self->_impl.pattern.positionMinSlot];
    if (v28)
    {
      v29 = 8;
    }

    else
    {
      v29 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFFF7 | v29;
    v30 = v26 | v28;
    v31 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    v32 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v31 forSlot:&self->_impl.pattern.positionMaxSlot];
    if (v32)
    {
      v33 = 16;
    }

    else
    {
      v33 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFFEF | v33;
    v34 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    v35 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v34 forSlot:&self->_impl.pattern.positionFieldSlot];
    if (v35)
    {
      v36 = 32;
    }

    else
    {
      v36 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFFDF | v36;
    v10 = v30 | v32 | v35;
    if ((usagesCopy & 4) == 0)
    {
LABEL_8:
      if ((usagesCopy & 8) == 0)
      {
        return v10;
      }

      goto LABEL_9;
    }
  }

  else if ((usagesCopy & 4) == 0)
  {
    goto LABEL_8;
  }

  _positionDidChangeHandler = [(GCGearShifterElement *)with _positionDidChangeHandler];
  v38 = [(GCGearShifterElement *)&self->super.super.super.isa _setPositionDidChangeHandler:_positionDidChangeHandler];
  if (v38)
  {
    v39 = 64;
  }

  else
  {
    v39 = 0;
  }

  *(update + v11) = *(update + v11) & 0xFFBF | v39;
  v10 |= v38;

  if ((usagesCopy & 8) != 0)
  {
LABEL_9:
    v12 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    v13 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v12 forSlot:&self->_impl.pattern.positionSlot];
    if (v13)
    {
      v14 = 128;
    }

    else
    {
      v14 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFF7F | v14;
    v15 = v10 | v13;
    v16 = 48;
LABEL_20:
    v20 = [(_GCDevicePhysicalInputView *)with _primitiveValueForSlot:?];
    v21 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v20 forSlot:&self->_impl + v16];
    if (v21)
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    *(update + v11) = *(update + v11) & 0xFEFF | v22;
    return v15 | v21;
  }

  return v10;
}

- (void)preCommit:(const void *)commit sender:(id)sender
{
  v11.receiver = self;
  v11.super_class = GCGearShifterElement;
  [(_GCDevicePhysicalInputElement *)&v11 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v6;
  }

  if (self->_isPatternShifter)
  {
    v7 = *(commit + v6);
    if (v7)
    {
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      v7 = *(commit + v6);
    }

    if ((v7 & 0x18) != 0)
    {
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      v7 = *(commit + v6);
      if ((v7 & 0x40) == 0)
      {
LABEL_8:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((v7 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 0x80) == 0)
    {
LABEL_9:
      if ((v7 & 0x100) == 0)
      {
        return;
      }

      goto LABEL_19;
    }

LABEL_18:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    if ((*(commit + v6) & 0x100) == 0)
    {
      return;
    }

LABEL_19:
    v9 = @"lastPositionLatency";
    v10 = @"lastPositionTimestamp";
LABEL_24:
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:v10];
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:v9];
    return;
  }

  v8 = *(commit + v6);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
    v8 = *(commit + v6);
    if ((v8 & 2) == 0)
    {
LABEL_13:
      if ((v8 & 4) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
      if ((*(commit + v6) & 8) == 0)
      {
        return;
      }

      goto LABEL_23;
    }
  }

  else if ((*(commit + v6) & 2) == 0)
  {
    goto LABEL_13;
  }

  [(_GCDevicePhysicalInputView *)self _willChangeValueForKey:?];
  v8 = *(commit + v6);
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v8 & 8) != 0)
  {
LABEL_23:
    v9 = @"lastDeltaLatency";
    v10 = @"lastDeltaTimestamp";
    goto LABEL_24;
  }
}

- (void)postCommit:(const void *)commit sender:(id)sender
{
  v9.receiver = self;
  v9.super_class = GCGearShifterElement;
  [(_GCDevicePhysicalInputElement *)&v9 preCommit:commit sender:sender];
  v6 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v6 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v6;
  }

  if (self->_isPatternShifter)
  {
    v7 = *(commit + v6);
    if (v7)
    {
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      v7 = *(commit + v6);
    }

    if ((v7 & 0x18) != 0)
    {
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      v7 = *(commit + v6);
      if ((v7 & 0x40) == 0)
      {
LABEL_8:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((v7 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 0x80) == 0)
    {
LABEL_9:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

LABEL_19:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v7 = *(commit + v6);
    if ((v7 & 0x100) == 0)
    {
LABEL_10:
      if ((v7 & 0x80) == 0)
      {
        return;
      }

LABEL_21:
      [GCGearShifterElement postCommit:? sender:?];
      return;
    }

LABEL_20:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    if ((*(commit + v6) & 0x80) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v8 = *(commit + v6);
  if (v8)
  {
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    v8 = *(commit + v6);
    if ((v8 & 2) == 0)
    {
LABEL_14:
      if ((v8 & 4) == 0)
      {
        goto LABEL_15;
      }

LABEL_24:
      [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
      if ((*(commit + v6) & 8) == 0)
      {
        return;
      }

      goto LABEL_25;
    }
  }

  else if ((*(commit + v6) & 2) == 0)
  {
    goto LABEL_14;
  }

  [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  v8 = *(commit + v6);
  if ((v8 & 4) != 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  if ((v8 & 8) != 0)
  {
LABEL_25:
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
    [(_GCDevicePhysicalInputView *)self _didChangeValueForKey:?];
  }
}

- (BOOL)isEqualToElement:(id)element
{
  elementCopy = element;
  v21.receiver = self;
  v21.super_class = GCGearShifterElement;
  if ([(_GCDevicePhysicalInputElement *)&v21 isEqualToElement:elementCopy])
  {
    isPatternShifter = self->_isPatternShifter;
    if (isPatternShifter == *(elementCopy + 56))
    {
      if (self->_isPatternShifter)
      {
        _sources = [(GCGearShifterElement *)&self->super.super.super.isa _sources];
        _sources2 = [(GCGearShifterElement *)elementCopy _sources];
        v12 = _sources != _sources2;
        if (_sources == _sources2 || (v5 = -[GCGearShifterElement _sources](&self->super.super.super.isa), v6 = -[GCGearShifterElement _sources](elementCopy), [v5 isEqual:?]))
        {
          v13 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
          if (v13 == [(_GCDevicePhysicalInputView *)elementCopy _primitiveValueForSlot:?])
          {
            v14 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
            if (v14 == [(_GCDevicePhysicalInputView *)elementCopy _primitiveValueForSlot:?])
            {
              v15 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
              if (v15 == [(_GCDevicePhysicalInputView *)elementCopy _primitiveValueForSlot:?])
              {
                if (_sources != _sources2)
                {
                }

                v10 = 1;
                goto LABEL_21;
              }
            }
          }
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v12 = 0;
      }

      _sources3 = [(GCGearShifterElement *)&self->super.super.super.isa _sources];
      _sources4 = [(GCGearShifterElement *)elementCopy _sources];
      v18 = _sources4;
      if (_sources3 == _sources4)
      {

        v10 = 1;
        if (v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        _sources5 = [(GCGearShifterElement *)&self->super.super.super.isa _sources];
        _sources6 = [(GCGearShifterElement *)elementCopy _sources];
        v10 = [_sources5 isEqual:_sources6];

        if (v12)
        {
LABEL_17:

          if ((isPatternShifter & 1) == 0)
          {
            goto LABEL_4;
          }

LABEL_21:

          goto LABEL_4;
        }
      }

      if (!isPatternShifter)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  v10 = 0;
LABEL_4:

  return v10;
}

- (id)patternInput
{
  if (!self->_isPatternShifter)
  {
    self = 0;
  }

  return self;
}

- (id)sequentialInput
{
  if (self->_isPatternShifter)
  {
    self = 0;
  }

  return self;
}

- (NSString)description
{
  isPatternShifter = self->_isPatternShifter;
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(_GCDevicePhysicalInputElement *)self identifier];
  if (isPatternShifter)
  {
    [v4 stringWithFormat:@"<Pattern Shifter '%@'; position = %zd>", identifier, -[GCGearShifterElement position](self, "position")];
  }

  else
  {
    [(GCGearShifterElement *)self delta];
    [v4 stringWithFormat:@"<Sequential Shifter '%@'; delta = %f>", identifier, v6];
  }
  v7 = ;

  return v7;
}

- (id)positionDidChangeHandler
{
  if (self->_isPatternShifter)
  {
    _positionDidChangeHandler = [(GCGearShifterElement *)&self->super.super.super.isa _positionDidChangeHandler];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    _positionDidChangeHandler = 0;
  }

  return _positionDidChangeHandler;
}

- (void)setPositionDidChangeHandler:(id)handler
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)&self->super.super.super.isa _setPositionDidChangeHandler:handler];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  }
}

- (int64_t)position
{
  if (self->_isPatternShifter)
  {

    return [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
    return 0;
  }
}

- (_NSRange)positionRange
{
  if (self->_isPatternShifter)
  {
    v3 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
    v4 = ([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]- v3);
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    v3 = 0;
    v4 = 0;
  }

  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (BOOL)isSequential
{
  if (!self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 0;
}

- (BOOL)canWrap
{
  if (!self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 1;
}

- (double)lastPositionTimestamp
{
  if (self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (double)lastPositionLatency
{
  if (self->_isPatternShifter)
  {
    if (!dword_1EC735E94)
    {
      mach_timebase_info(&lastPositionLatency_sTimebaseInfo);
    }

    v3 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
    return (mach_absolute_time() * lastPositionLatency_sTimebaseInfo / dword_1EC735E94) / 1000000000.0 - v3;
  }

  else
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    return 0.0;
  }
}

- (id)deltaDidChangeHandler
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
    _deltaDidChangeHandler = 0;
  }

  else
  {
    _deltaDidChangeHandler = [(GCGearShifterElement *)&self->super.super.super.isa _deltaDidChangeHandler];
  }

  return _deltaDidChangeHandler;
}

- (void)setDeltaDidChangeHandler:(id)handler
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  }

  else
  {
    [(GCGearShifterElement *)&self->super.super.super.isa _setDeltaDidChangeHandler:handler];
  }
}

- (float)delta
{
  if (!self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (BOOL)isAnalog
{
  if (self->_isPatternShifter)
  {
    [(GCGearShifterElement *)self doesNotRecognizeSelector:a2, v2, v3];
  }

  return 0;
}

- (double)lastDeltaTimestamp
{
  if (!self->_isPatternShifter)
  {
    return COERCE_DOUBLE([(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?]);
  }

  [(GCGearShifterElement *)self doesNotRecognizeSelector:a2];
  return 0.0;
}

- (double)lastDeltaLatency
{
  if (!dword_1EC735E9C)
  {
    mach_timebase_info(&lastDeltaLatency_sTimebaseInfo);
  }

  v4 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
  result = (mach_absolute_time() * lastDeltaLatency_sTimebaseInfo / dword_1EC735E9C) / 1000000000.0 - v4;
  *a2 = result;
  return result;
}

- (BOOL)update:(void *)update forGamepadEvent:(id)event withTimestamp:(double)timestamp
{
  v17.receiver = self;
  v17.super_class = GCGearShifterElement;
  v9 = [_GCDevicePhysicalInputElement update:sel_update_forGamepadEvent_withTimestamp_ forGamepadEvent:? withTimestamp:?];
  v10 = MyUpdateContext_Offset;
  if (MyUpdateContext_Offset == -1)
  {
    v10 = +[_GCDevicePhysicalInputElement updateContextSize];
    MyUpdateContext_Offset = v10;
  }

  if (self->_isPatternShifter)
  {
    v11 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
    if (v11 != -1)
    {
      v12 = v11;
      v13 = [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _primitiveValueForSlot:?];
      [event floatValueForElement:v12];
      v15 = rintf(v14);
      if (v13 != v15)
      {
        [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:v15 forSlot:&self->_impl.pattern.positionSlot];
        [(_GCDevicePhysicalInputView *)&self->super.super.super.isa _testAndSetPrimitiveValue:&self->_impl.pattern.timestampSlot forSlot:?];
        *(update + v10) |= 0x180u;
        return 1;
      }
    }
  }

  return v9;
}

- (GCGearShifterElement)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = GCGearShifterElement;
  v5 = [(_GCDevicePhysicalInputElement *)&v15 initWithParameters:parametersCopy];
  v6 = v5;
  if (parametersCopy)
  {
    v7 = parametersCopy[40];
  }

  else
  {
    v7 = 0;
  }

  v5->_isPatternShifter = v7 & 1;
  sources = [(_GCGearShifterElementParameters *)parametersCopy sources];
  [(GCGearShifterElement *)&v6->super.super.super.isa _setSources:sources];

  if (v6->_isPatternShifter)
  {
    OUTLINED_FUNCTION_2_0();
    if (parametersCopy)
    {
      [(_GCDevicePhysicalInputView *)&v6->super.super.super.isa _testAndSetPrimitiveValue:v9 forSlot:v10 + 8];
      [(_GCDevicePhysicalInputView *)&v6->super.super.super.isa _testAndSetPrimitiveValue:&v6->_impl.pattern.positionMaxSlot forSlot:?];
    }

    else
    {
      [(_GCDevicePhysicalInputView *)&v6->super.super.super.isa _testAndSetPrimitiveValue:v10 + 8 forSlot:?];
      OUTLINED_FUNCTION_2_0();
      [(_GCDevicePhysicalInputView *)&v6->super.super.super.isa _testAndSetPrimitiveValue:v14 + 16 forSlot:?];
    }

    OUTLINED_FUNCTION_2_0();
    [(_GCDevicePhysicalInputView *)&v6->super.super.super.isa _testAndSetPrimitiveValue:v12 forSlot:v11 + 24];
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
      [currentHandler handleFailureInMethod:sel__setSources_ object:v3 file:@"GCGearShifterElement.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %s", "newValue != nil"}];
    }

    return [(_GCDevicePhysicalInputView *)v3 _testAndSetObjectValue:a2 forSlot:(v3 + 8) policy:771];
  }

  return result;
}

- (id)_setPositionMin:(id *)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:(result + 9)];
  }

  return result;
}

- (id)_setPositionMax:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_2(result, a2, 64);
  }

  return result;
}

- (id)_setPositionField:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_1(result, a2, 64);
  }

  return result;
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

- (id)_positionMin
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (id)_positionMax
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (id)_positionField
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (id)_positionDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (id)_setPositionDidChangeHandler:(id *)result
{
  if (result)
  {
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:(v2 + 12) policy:771];

    return v4;
  }

  return result;
}

- (id)_position
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _primitiveValueForSlot:?];
  }

  return result;
}

- (id)_setPosition:(id *)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:a2 forSlot:(result + 13)];
  }

  return result;
}

- (double)_lastPositionTimestamp
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

- (id)_setLastPositionTimestamp:(id *)result
{
  if (result)
  {
    return [(_GCDevicePhysicalInputView *)result _testAndSetPrimitiveValue:(result + 14) forSlot:?];
  }

  return result;
}

- (id)_deltaDidChangeHandler
{
  if (result)
  {
    [(_GCDevicePhysicalInputView *)result _objectValueForSlot:?];
    return objc_claimAutoreleasedReturnValue();
  }

  return result;
}

- (id)_setDeltaDidChangeHandler:(id *)result
{
  if (result)
  {
    v2 = result;
    v3 = _Block_copy(aBlock);
    v4 = [(_GCDevicePhysicalInputView *)v2 _testAndSetObjectValue:v3 forSlot:(v2 + 9) policy:771];

    return v4;
  }

  return result;
}

- (__n64)_delta
{
  if (self)
  {
    v1 = COERCE_DOUBLE([(_GCDevicePhysicalInputView *)self _primitiveValueForSlot:?]);
    result.n64_u32[1] = HIDWORD(v1);
    result.n64_f32[0] = v1;
  }

  else
  {
    return 0;
  }

  return result;
}

- (id)_setDelta:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_2(result, COERCE__INT64(a2), 64);
  }

  return result;
}

- (double)_lastDeltaTimestamp
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

- (id)_setLastDeltaTimestamp:(id *)result
{
  if (result)
  {
    return OUTLINED_FUNCTION_1_1(result, *&a2, 64);
  }

  return result;
}

- (NSSet)sources
{
  _sources = [(GCGearShifterElement *)&self->super.super.super.isa _sources];

  return _sources;
}

- (void)update:(uint64_t)a1 forUsages:(uint64_t)a2 with:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCGearShifterElement.m" lineNumber:150 description:@"Assertion failed: _isPatternShifter == other->_isPatternShifter"];
}

- (void)postCommit:(id *)a1 sender:.cold.1(id *a1)
{
  v2 = [(GCGearShifterElement *)a1 _positionDidChangeHandler];
  if (v2)
  {
    v3 = [(_GCDevicePhysicalInputView *)a1 _primitiveValueForSlot:?];
    (v2[2])(v2, a1, a1, v3);
  }
}

@end