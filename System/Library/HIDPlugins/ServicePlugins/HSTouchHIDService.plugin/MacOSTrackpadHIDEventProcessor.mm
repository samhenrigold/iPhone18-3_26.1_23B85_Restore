@interface MacOSTrackpadHIDEventProcessor
- (BOOL)checkForMomentumCancellation:(id)cancellation;
- (BOOL)checkForMomentumInitiation:(id)initiation triggerEvent:(id)event;
- (BOOL)shouldDispatchEvent:(id)event;
- (MacOSTrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type;
- (id)debugDictionary;
- (id)getMomentumEnableEvent:(id)event;
- (id)handleHIDEvent:(id)event;
- (void)_handleMomentumStateEvent:(id)event;
- (void)appendDeviceInfoTo:(id)to;
- (void)cancelMomentum;
- (void)handleConsume:(id)consume;
- (void)startMomentumWithSubtype:(int)subtype event:(id)event;
@end

@implementation MacOSTrackpadHIDEventProcessor

- (MacOSTrackpadHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type
{
  v8.receiver = self;
  v8.super_class = MacOSTrackpadHIDEventProcessor;
  v4 = [(TrackpadHIDEventProcessor *)&v8 initWithDeviceID:d deviceType:type];
  v5 = v4;
  if (v4)
  {
    v4->_momentumActive = 0;
    v4->_momentumDragButton = 0;
    v4->_momentumSubtype = 1;
    v6 = v4;
  }

  return v5;
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(MacOSTrackpadHIDEventProcessor *)self _handleMomentumStateEvent:consumeCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:consumeCopy];
  }
}

- (id)handleHIDEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  type = [eventCopy type];
  if (type != 11)
  {
    v12 = MTLoggingPlugin(type, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v64 = "[Error] ";
      v65 = 2080;
      v66 = "";
      v67 = 2080;
      v68 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      v69 = 1024;
      type2 = [eventCopy type];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.", buf, 0x26u);
    }

    goto LABEL_12;
  }

  v7 = [eventCopy integerValueForField:720918];
  if (v7 != &dword_0 + 1)
  {
    v12 = MTLoggingPlugin(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v64 = "[Error] ";
      v65 = 2080;
      v66 = "";
      v67 = 2080;
      v68 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected non-collection digitizer event. Eating it.", buf, 0x20u);
    }

    goto LABEL_12;
  }

  parent = [eventCopy parent];

  if (parent)
  {
    v12 = MTLoggingPlugin(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v64 = "[Error] ";
      v65 = 2080;
      v66 = "";
      v67 = 2080;
      v68 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.", buf, 0x20u);
    }

LABEL_12:

    v13 = v4;
    goto LABEL_13;
  }

  v57 = v4;
  v15 = eventCopy;
  v54 = [v15 conformsToEventType:2];
  v16 = [v15 conformsToEventType:3];
  v17 = [(MacOSTrackpadHIDEventProcessor *)self checkForMomentumCancellation:v15];
  children = [v15 children];
  v19 = [children copy];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v21)
  {
    goto LABEL_57;
  }

  v23 = 0;
  v24 = *v59;
  v56 = v17 | (v54 | v16) ^ 1;
  *&v22 = 136315906;
  v53 = v22;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v59 != v24)
      {
        objc_enumerationMutation(v20);
      }

      v26 = *(*(&v58 + 1) + 8 * i);
      if ([v26 type] == 17)
      {
        [v26 doubleValueForField:1114112];
        v28 = v27;
        [v26 doubleValueForField:1114113];
        v30 = v29;
        if (![(MacOSTrackpadHIDEventProcessor *)self checkForMomentumInitiation:v15 triggerEvent:v26]&& ![(TrackpadHIDEventProcessor *)self noPointing])
        {
          previousButtonState = [(TrackpadHIDEventProcessor *)self previousButtonState];
          if ([(TrackpadHIDEventProcessor *)self hostClickControl])
          {
            previousButtonState = [v26 integerValueForField:1114115];
          }

          previousButtonState2 = [(TrackpadHIDEventProcessor *)self previousButtonState];
          if (previousButtonState2 != previousButtonState)
          {
            v34 = MTLoggingPlugin(previousButtonState2, v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = v53;
              v64 = "[Error] ";
              v65 = 2080;
              v66 = "";
              v67 = 2080;
              v68 = "[MacOSTrackpadHIDEventProcessor handleHIDEvent:]";
              v69 = 1024;
              type2 = v54;
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Pointer event processed with different button mask before button event(isPresent? %d)", buf, 0x26u);
            }
          }

          v35 = mach_absolute_time();
          options = [v26 options];
          v37 = v28;
          v38 = v30;
          v39 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:previousButtonState deltaY:v35 buttonMask:@"HostAlgs-Pointer" timestamp:options source:v37 options:v38];
          if (v39)
          {
            goto LABEL_31;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if ([v26 type] == 6)
        {
          [v26 doubleValueForField:393216];
          v41 = v40;
          [v26 doubleValueForField:393217];
          v43 = v42;
          [v26 doubleValueForField:393218];
          v45 = v44;
          IOHIDEventGetPhase();
          if (v23)
          {
            v23 = 1;
            continue;
          }

          v47 = v41;
          v48 = v43;
          v49 = v45;
          v39 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:v47 deltaZ:v48 options:v49];
          if (v39)
          {
            [v57 addObject:v39];
          }

          v50 = [(MacOSTrackpadHIDEventProcessor *)self checkForMomentumInitiation:v15 triggerEvent:v26];
          if (v50)
          {
            v51 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:0.0 deltaZ:0.0 options:0.0];
            if (v51)
            {
              if ([(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& !self->_momentumActive)
              {
                IOHIDEventSetScrollMomentum();
              }

              [v57 addObject:v51];
            }
          }

          if (v50 & 1 | ![(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
          {
            [v15 removeEvent:v26];
          }

          v23 = 1;
          goto LABEL_54;
        }

        if ([v26 type] == 2)
        {
          v46 = [v26 integerValueForField:0x20000];
          if (v56)
          {
            continue;
          }

          v39 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v46 deltaY:mach_absolute_time() buttonMask:@"HostAlgs-Button" timestamp:0.0 source:0.0];
          if (v39)
          {
LABEL_31:
            [v57 addObject:v39];
          }

LABEL_54:

          continue;
        }

        if ([v26 type] == 11 && -[TrackpadHIDEventProcessor deviceType](self, "deviceType") == 2)
        {
          [v15 removeEvent:v26];
        }
      }
    }

    v21 = [v20 countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v21);
LABEL_57:

  if ([(MacOSTrackpadHIDEventProcessor *)self shouldDispatchEvent:v15])
  {
    [(MacOSTrackpadHIDEventProcessor *)self appendDeviceInfoTo:v15];
    [v57 addObject:v15];
  }

  v52 = v57;

  v4 = v57;
LABEL_13:

  return v4;
}

- (void)_handleMomentumStateEvent:(id)event
{
  eventCopy = event;
  self->_momentumActive = [eventCopy isMomentumActive];
  v5.receiver = self;
  v5.super_class = MacOSTrackpadHIDEventProcessor;
  [(TrackpadHIDEventProcessor *)&v5 handleConsume:eventCopy];
}

- (BOOL)shouldDispatchEvent:(id)event
{
  eventCopy = event;
  if (![(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:eventCopy])
  {
    v7 = 0;
    goto LABEL_20;
  }

  v5 = [eventCopy integerValueForField:720903];
  v6 = [eventCopy integerValueForField:720920];
  if ([(TrackpadHIDEventProcessor *)self deviceType]!= 1)
  {
    if ([(TrackpadHIDEventProcessor *)self deviceType]!= 2 || (v5 & 0x108) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    v7 = 1;
    goto LABEL_20;
  }

  if (v5 | v6 & 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [eventCopy children];
  v9 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(children);
        }

        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(*(&v15 + 1) + 8 * i) type]);
        v13 = [&off_112B80 containsObject:v12];

        if (v13)
        {
          v7 = 1;
          goto LABEL_19;
        }
      }

      v9 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_19:

LABEL_20:
  return v7;
}

- (void)appendDeviceInfoTo:(id)to
{
  toCopy = to;
  v8 = 0u;
  v9 = 0u;
  deviceID = [(TrackpadHIDEventProcessor *)self deviceID];
  LODWORD(v6) = 0;
  v5 = +[HIDEvent vendorDefinedEvent:usagePage:usage:version:data:length:options:](HIDEvent, "vendorDefinedEvent:usagePage:usage:version:data:length:options:", [toCopy timestamp], 65280, 6007, 1, &deviceID, 40, v6);
  if (v5)
  {
    [toCopy appendEvent:v5];
  }
}

- (id)getMomentumEnableEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy conformsToEventType:1])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    children = [eventCopy children];
    v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = *v15;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(children);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = [v8 integerValueForField:0x10000];
          v10 = [v8 integerValueForField:65537];
          if ([v8 type] == 1 && v9 == &loc_FF00 && v10 == &dword_0 + 1)
          {
            v5 = v8;
            goto LABEL_19;
          }
        }

        v5 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)checkForMomentumInitiation:(id)initiation triggerEvent:(id)event
{
  eventCopy = event;
  v7 = [(MacOSTrackpadHIDEventProcessor *)self getMomentumEnableEvent:initiation];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [v7 dataValueForField:65540];
  if ([v8 integerValueForField:65539] < 3 || *v9 != 1)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = v9[1];
  if (v11 <= 4 && ((1 << v11) & 0x16) != 0)
  {
    if (v9[2] == 1)
    {
      [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
      [(MacOSTrackpadHIDEventProcessor *)self startMomentumWithSubtype:v11 event:eventCopy];
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (BOOL)checkForMomentumCancellation:(id)cancellation
{
  cancellationCopy = cancellation;
  if (self->_momentumActive)
  {
    v5 = [(MacOSTrackpadHIDEventProcessor *)self getMomentumEnableEvent:cancellationCopy];
    v6 = v5;
    if (v5 && (v7 = [v5 dataValueForField:65540], objc_msgSend(v6, "integerValueForField:", 65539) >= 3) && *v7 == 1 && !v7[2])
    {
      v8 = 0;
      v22 = v7[1];
      if (v22 <= 4 && ((1 << v22) & 0x16) != 0)
      {
        [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = [cancellationCopy conformsToEventType:17];
    v10 = [cancellationCopy conformsToEventType:2];
    v11 = [cancellationCopy conformsToEventType:3];
    if (!v8 && ((v9 | v10 | v11) & 1) != 0)
    {
      if (v9)
      {
        if (self->_momentumSubtype != 1 && [cancellationCopy integerValueForField:1114115] == self->_momentumDragButton)
        {
          [cancellationCopy doubleValueForField:1114112];
          v13 = v12;
          [cancellationCopy doubleValueForField:1114113];
          v15 = v14;
          v16 = objc_opt_new();
          v17 = v13;
          v18 = v15;
          *(v16 + 8) = 1;
          *(v16 + 16) = v17;
          *(v16 + 20) = v18;
          v20 = MTLoggingPlugin(v16, v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v25 = "";
            v26 = 2080;
            v27 = "";
            v28 = 2080;
            v29 = "[MacOSTrackpadHIDEventProcessor checkForMomentumCancellation:]";
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to decay point / drag momentum", buf, 0x20u);
          }

          v23.receiver = self;
          v23.super_class = MacOSTrackpadHIDEventProcessor;
          [(TrackpadHIDEventProcessor *)&v23 handleConsume:v16];
        }
      }

      else
      {
        [(MacOSTrackpadHIDEventProcessor *)self cancelMomentum];
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)startMomentumWithSubtype:(int)subtype event:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 6)
  {
    v7 = eventCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if ([eventCopy type] == 17)
  {
    v9 = eventCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v8 | v10 && (!v8 || [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled]))
  {
    v11 = objc_opt_new();
    v12 = v11;
    *(v11 + 8) = 0;
    *(v11 + 12) = subtype;
    if (v8)
    {
      *(v11 + 24) = 0;
      *(v11 + 16) = [v8 integerValueForField:393216];
      v13 = [v8 integerValueForField:393217];
    }

    else
    {
      *(v11 + 24) = [v10 integerValueForField:1114115];
      *(v12 + 16) = [v10 integerValueForField:1114112];
      v13 = [v10 integerValueForField:1114113];
    }

    *(v12 + 20) = v13;
    self->_momentumDragButton = *(v12 + 24);
    self->_momentumSubtype = subtype;
    v14 = objc_opt_new();
    objc_storeStrong(v14 + 2, v12);
    v17 = MTLoggingPlugin(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "";
      v21 = 2080;
      v22 = "";
      v23 = 2080;
      v24 = "[MacOSTrackpadHIDEventProcessor startMomentumWithSubtype:event:]";
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to start momentum", buf, 0x20u);
    }

    v18.receiver = self;
    v18.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v18 handleConsume:v14];
  }
}

- (void)cancelMomentum
{
  if (self->_momentumActive)
  {
    v3 = objc_opt_new();
    v3[2] = 2;
    v5 = MTLoggingPlugin(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = "";
      v9 = 2080;
      v10 = "";
      v11 = 2080;
      v12 = "[MacOSTrackpadHIDEventProcessor cancelMomentum]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to interrupt momentum", buf, 0x20u);
    }

    v6.receiver = self;
    v6.super_class = MacOSTrackpadHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:v3];
  }
}

- (id)debugDictionary
{
  v9.receiver = self;
  v9.super_class = MacOSTrackpadHIDEventProcessor;
  debugDictionary = [(TrackpadHIDEventProcessor *)&v9 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  v5 = [NSNumber numberWithBool:self->_momentumActive];
  [v4 setObject:v5 forKeyedSubscript:@"MomentumActive"];

  v6 = [NSNumber numberWithInt:self->_momentumDragButton];
  [v4 setObject:v6 forKeyedSubscript:@"MomentumDragButton"];

  v7 = [NSNumber numberWithUnsignedInt:self->_momentumSubtype];
  [v4 setObject:v7 forKeyedSubscript:@"MomentumSubType"];

  return v4;
}

@end