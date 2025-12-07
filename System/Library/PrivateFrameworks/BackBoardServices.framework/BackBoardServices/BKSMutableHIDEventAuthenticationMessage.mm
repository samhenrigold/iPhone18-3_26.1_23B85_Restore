@interface BKSMutableHIDEventAuthenticationMessage
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDestinationAuditToken:(id)token;
- (void)setHitTestInformationFromEndEvent:(id)event;
- (void)setHitTestInformationFromStartEvent:(id)event;
@end

@implementation BKSMutableHIDEventAuthenticationMessage

- (id)copyWithZone:(_NSZone *)zone
{
  _init = [+[BKSHIDEventAuthenticationMessage allocWithZone:](BKSHIDEventAuthenticationMessage _init];
  _init[1] = self->super._versionedPID;
  *(_init + 4) = self->super._eventType;
  *(_init + 5) = self->super._targetSlotID;
  *(_init + 6) = self->super._targetContextID;
  v5 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromStartEvent copy];
  v6 = _init[4];
  _init[4] = v5;

  v7 = [(BKSHIDEventHitTestLayerInformation *)self->super._hitTestInformationFromEndEvent copy];
  v8 = _init[5];
  _init[5] = v7;

  _init[6] = self->super._timestamp;
  _init[7] = self->super._originIdentifier;
  *(_init + 4) = *&self->super._context;
  *(_init + 80) = self->super._registrantEntitled;
  v9 = [(NSData *)self->super._signature copy];
  v10 = _init[11];
  _init[11] = v9;

  return _init;
}

- (void)setHitTestInformationFromEndEvent:(id)event
{
  eventCopy = event;
  hitTestInformationFromEndEvent = self->super._hitTestInformationFromEndEvent;
  p_hitTestInformationFromEndEvent = &self->super._hitTestInformationFromEndEvent;
  if (hitTestInformationFromEndEvent != eventCopy)
  {
    v8 = eventCopy;
    objc_storeStrong(p_hitTestInformationFromEndEvent, event);
    eventCopy = v8;
  }
}

- (void)setHitTestInformationFromStartEvent:(id)event
{
  eventCopy = event;
  hitTestInformationFromStartEvent = self->super._hitTestInformationFromStartEvent;
  p_hitTestInformationFromStartEvent = &self->super._hitTestInformationFromStartEvent;
  if (hitTestInformationFromStartEvent != eventCopy)
  {
    v8 = eventCopy;
    objc_storeStrong(p_hitTestInformationFromStartEvent, event);
    eventCopy = v8;
  }
}

- (void)setDestinationAuditToken:(id)token
{
  v27 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (tokenCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x1E696AEC0];
      classForCoder = [tokenCopy classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v7 = NSStringFromClass(classForCoder);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v5 stringWithFormat:@"destinationAuditToken", v7, v9];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138544642;
        v16 = v11;
        v17 = 2114;
        v18 = v13;
        v19 = 2048;
        selfCopy = self;
        v21 = 2114;
        v22 = @"BKSHIDEventAuthenticationMessage.m";
        v23 = 1024;
        v24 = 419;
        v25 = 2114;
        v26 = v10;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v10 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186396868);
    }
  }

  self->super._versionedPID = [tokenCopy versionedPID];
}

@end