@interface PointerHIDEventProcessor
- (BOOL)checkForMomentumCancellation:(id)cancellation;
- (BOOL)handleMomentumInitiationForSubtype:(int)subtype event:(id)event;
- (BOOL)shouldDispatchEvent:(id)event;
- (PointerHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type;
- (id)debugDictionary;
- (id)deviceInfoEvent;
- (id)generateMomentumStartEventFrom:(id)from forSubtype:(int)subtype;
- (id)handleChildHIDEvent:(id)event previouslyGeneratedEvent:(id)generatedEvent timestamp:(unint64_t)timestamp momentumInitiationType:(int)type canceledMomentumScroll:(BOOL)scroll;
- (id)handleHIDEvent:(id)event;
- (id)momentumRequestEventFrom:(id)from;
- (id)structureHIDEventFrom:(id)from vendorEvents:(id)events timestamp:(unint64_t)timestamp;
- (id)validChildTypes;
- (int)momentumChangeFrom:(id)from startMomentum:(BOOL)momentum;
- (void)cancelMomentum;
- (void)copyPhaseFrom:(id)from to:(id)to;
- (void)handleConsume:(id)consume;
- (void)handleMomentumStateEvent:(id)event;
@end

@implementation PointerHIDEventProcessor

- (PointerHIDEventProcessor)initWithDeviceID:(unint64_t)d deviceType:(unsigned __int8)type
{
  v8.receiver = self;
  v8.super_class = PointerHIDEventProcessor;
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
    [(PointerHIDEventProcessor *)self handleMomentumStateEvent:consumeCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PointerHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:consumeCopy];
  }
}

- (id)handleHIDEvent:(id)event
{
  eventCopy = event;
  type = [eventCopy type];
  if (type != 11)
  {
    v13 = MTLoggingPlugin(type, v5);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v11 = v13;
      goto LABEL_54;
    }

    *buf = 136315906;
    *&buf[4] = "[Error] ";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
    *&buf[32] = 1024;
    *&buf[34] = [eventCopy type];
    v12 = "[HID] [MT] %s%s%s Unexpected event type: %u Eating it.";
    v11 = v13;
    v14 = v13;
    v15 = 38;
    goto LABEL_11;
  }

  v6 = [eventCopy integerValueForField:720918];
  if (v6 != &dword_0 + 1)
  {
    v11 = MTLoggingPlugin(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
      v12 = "[HID] [MT] %s%s%s Unexpected non-collection digitizer event. Eating it.";
      goto LABEL_10;
    }

LABEL_12:
    v16 = 0;
    goto LABEL_54;
  }

  parent = [eventCopy parent];

  if (parent)
  {
    v11 = MTLoggingPlugin(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
      v12 = "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.";
LABEL_10:
      v14 = v11;
      v15 = 32;
LABEL_11:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v12, buf, v15);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v49 = eventCopy;
  timestamp = [v49 timestamp];
  v51 = [(PointerHIDEventProcessor *)self momentumChangeFrom:v49 startMomentum:1];
  v50 = [(PointerHIDEventProcessor *)self checkForMomentumCancellation:v49];
  v17 = objc_opt_new();
  v47 = objc_opt_new();
  v46 = objc_opt_new();
  children = [v49 children];
  v19 = [children copy];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v19;
  v20 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v20)
  {
    goto LABEL_43;
  }

  v21 = *v54;
  do
  {
    v22 = 0;
    do
    {
      if (*v54 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v53 + 1) + 8 * v22);
      if ([v23 type] != 11 || -[TrackpadHIDEventProcessor deviceType](self, "deviceType") != 1)
      {
        [v49 removeEvent:v23];
      }

      children2 = [v23 children];
      if (-[NSObject count](children2, "count") && [v23 type] != 11)
      {
        v34 = [v23 type] == 23;

        if (v34)
        {
          goto LABEL_25;
        }

        children2 = MTLoggingPlugin(v35, v36);
        if (os_log_type_enabled(children2, OS_LOG_TYPE_ERROR))
        {
          type2 = [v23 type];
          children3 = [v23 children];
          *buf = 136316162;
          *&buf[4] = "[Error] ";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
          *&buf[32] = 1024;
          *&buf[34] = type2;
          *&buf[38] = 2112;
          *&buf[40] = children3;
          _os_log_impl(&dword_0, children2, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u %@", buf, 0x30u);
        }
      }

LABEL_25:
      v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v23 type]);
      v26 = [v17 objectForKey:v25];

      v27 = [(PointerHIDEventProcessor *)self handleChildHIDEvent:v23 previouslyGeneratedEvent:v26 timestamp:timestamp momentumInitiationType:v51 canceledMomentumScroll:v50];
      v28 = [v17 objectForKey:&off_112038];
      if (v28)
      {
        v29 = [v27 type] == 17;

        if (v29)
        {
          [v46 addObject:v27];
LABEL_31:

          goto LABEL_32;
        }
      }

      type3 = [v23 type];
      if (type3 == 1)
      {
        v32 = [v23 copy];
        [v47 addObject:v32];
LABEL_30:

        goto LABEL_31;
      }

      if (v27)
      {
        if (v26)
        {
          v32 = MTLoggingPlugin(type3, v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            type4 = [v23 type];
            *buf = 136315906;
            *&buf[4] = "[Error] ";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = "[PointerHIDEventProcessor handleHIDEvent:]";
            *&buf[32] = 1024;
            *&buf[34] = type4;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Generated an additional child of event type %u. Eating it", buf, 0x26u);
          }
        }

        else
        {
          v32 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v23 type]);
          [v17 setObject:v27 forKeyedSubscript:v32];
        }

        goto LABEL_30;
      }

LABEL_32:

      v22 = v22 + 1;
    }

    while (v20 != v22);
    v39 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    v20 = v39;
  }

  while (v39);
LABEL_43:

  v40 = [v17 objectForKeyedSubscript:&off_112050];
  v41 = [(PointerHIDEventProcessor *)self generateMomentumStartEventFrom:v40 forSubtype:v51];

  if (v41)
  {
    [v46 addObject:v41];
  }

  [v17 setObject:v49 forKeyedSubscript:&off_112068];
  v42 = [(PointerHIDEventProcessor *)self structureHIDEventFrom:v17 vendorEvents:v47 timestamp:timestamp];
  if (!v42)
  {
    memset(buf, 170, sizeof(buf));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", buf);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleHIDEvent:];
    }

    goto LABEL_52;
  }

  if (![(PointerHIDEventProcessor *)self shouldDispatchEvent:v42])
  {
LABEL_52:
    v16 = 0;
    goto LABEL_53;
  }

  deviceInfoEvent = [(PointerHIDEventProcessor *)self deviceInfoEvent];
  if (deviceInfoEvent)
  {
    [v42 appendEvent:deviceInfoEvent];
  }

  v16 = objc_opt_new();
  [v16 addObject:v42];
  [v16 addObjectsFromArray:v46];

LABEL_53:
  v11 = v49;
LABEL_54:

  return v16;
}

- (void)handleMomentumStateEvent:(id)event
{
  eventCopy = event;
  isMomentumActive = [eventCopy isMomentumActive];
  if (self)
  {
    self->_momentumActive = isMomentumActive;
  }

  v6.receiver = self;
  v6.super_class = PointerHIDEventProcessor;
  [(TrackpadHIDEventProcessor *)&v6 handleConsume:eventCopy];
}

- (id)handleChildHIDEvent:(id)event previouslyGeneratedEvent:(id)generatedEvent timestamp:(unint64_t)timestamp momentumInitiationType:(int)type canceledMomentumScroll:(BOOL)scroll
{
  v8 = *&type;
  eventCopy = event;
  generatedEventCopy = generatedEvent;
  children = [eventCopy children];
  if ([children count] && objc_msgSend(eventCopy, "type") != 11)
  {
    type = [eventCopy type];

    if (type != 23)
    {
      v28 = MTLoggingPlugin(v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        type2 = [eventCopy type];
        children2 = [eventCopy children];
        LODWORD(v64[0]) = 136316162;
        *(v64 + 4) = "[Error] ";
        WORD2(v64[1]) = 2080;
        *(&v64[1] + 6) = "";
        HIWORD(v64[2]) = 2080;
        v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
        LOWORD(v64[4]) = 1024;
        *(&v64[4] + 2) = type2;
        HIWORD(v64[4]) = 2112;
        v64[5] = children2;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u %@", v64, 0x30u);
      }
    }
  }

  else
  {
  }

  if ([eventCopy type] == 11)
  {
    goto LABEL_5;
  }

  if ([eventCopy type] == 17)
  {
    if (![(PointerHIDEventProcessor *)self handleMomentumInitiationForSubtype:v8 event:eventCopy])
    {
      noPointing = [(TrackpadHIDEventProcessor *)self noPointing];
      v18 = generatedEventCopy ? 1 : noPointing;
      if ((v18 & 1) == 0)
      {
        [eventCopy doubleValueForField:1114112];
        v20 = v19;
        [eventCopy doubleValueForField:1114113];
        v22 = v21;
        previousButtonState = [(TrackpadHIDEventProcessor *)self previousButtonState];
        if ([(TrackpadHIDEventProcessor *)self hostClickControl])
        {
          previousButtonState = [eventCopy integerValueForField:1114115];
        }

        v24 = -[TrackpadHIDEventProcessor createPointingEventWithDeltaX:deltaY:buttonMask:timestamp:source:options:](self, "createPointingEventWithDeltaX:deltaY:buttonMask:timestamp:source:options:", previousButtonState, timestamp, @"HostAlgs-Pointer", [eventCopy options], v20, v22);
        goto LABEL_18;
      }
    }

LABEL_5:
    v15 = 0;
    goto LABEL_6;
  }

  if ([eventCopy type] != 2)
  {
    if ([eventCopy type] == 6)
    {
      if (![(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
      {
        goto LABEL_5;
      }

      [eventCopy doubleValueForField:393216];
      v34 = v33;
      [eventCopy doubleValueForField:393217];
      v36 = v35;
      v37 = [eventCopy doubleValueForField:393218];
      if (generatedEventCopy)
      {
        v40 = MTLoggingPlugin(v37, v38);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v64[0]) = 136315650;
          *(v64 + 4) = "[Debug] ";
          WORD2(v64[1]) = 2080;
          *(&v64[1] + 6) = "";
          HIWORD(v64[2]) = 2080;
          v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", v64, 0x20u);
        }

        [(TrackpadHIDEventProcessor *)self mergeScrollEvent:generatedEventCopy with:eventCopy];
        goto LABEL_5;
      }

      v24 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:v34 deltaZ:v36 options:v39];
LABEL_18:
      v15 = v24;
      goto LABEL_6;
    }

    type3 = [eventCopy type];
    if (type3 == 7)
    {
      if (generatedEventCopy)
      {
        ScaleEvent = MTLoggingPlugin(type3, v42);
        if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        LODWORD(v64[0]) = 136315650;
        *(v64 + 4) = "[Error] ";
        WORD2(v64[1]) = 2080;
        *(&v64[1] + 6) = "";
        HIWORD(v64[2]) = 2080;
        v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
        v43 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
        goto LABEL_53;
      }

      [eventCopy doubleValueForField:458752];
      [eventCopy doubleValueForField:458753];
      [eventCopy doubleValueForField:458754];
      [eventCopy options];
      ScaleEvent = IOHIDEventCreateScaleEvent();
      if (!ScaleEvent)
      {
        memset(v64, 170, 0x400uLL);
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
        }

        goto LABEL_81;
      }

LABEL_79:
      [(PointerHIDEventProcessor *)self copyPhaseFrom:eventCopy to:ScaleEvent];
      goto LABEL_80;
    }

    type4 = [eventCopy type];
    if (type4 == 5)
    {
      if (!generatedEventCopy)
      {
        [eventCopy doubleValueForField:327680];
        [eventCopy doubleValueForField:327681];
        [eventCopy doubleValueForField:327682];
        [eventCopy options];
        ScaleEvent = IOHIDEventCreateRotationEvent();
        if (!ScaleEvent)
        {
          memset(v64, 170, 0x400uLL);
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
          }

          goto LABEL_81;
        }

        goto LABEL_79;
      }

      ScaleEvent = MTLoggingPlugin(type4, v45);
      if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(v64[0]) = 136315650;
      *(v64 + 4) = "[Error] ";
      WORD2(v64[1]) = 2080;
      *(&v64[1] + 6) = "";
      HIWORD(v64[2]) = 2080;
      v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
      v43 = "[HID] [MT] %s%s%s Unexpected multiple rotation events. Eating the latest.";
    }

    else
    {
      type5 = [eventCopy type];
      if (type5 != 4)
      {
        if ([eventCopy type] == 41 && (v54 = _os_feature_enabled_impl(), v54))
        {
          if (generatedEventCopy)
          {
            ScaleEvent = MTLoggingPlugin(v54, v55);
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            LODWORD(v64[0]) = 136315650;
            *(v64 + 4) = "[Error] ";
            WORD2(v64[1]) = 2080;
            *(&v64[1] + 6) = "";
            HIWORD(v64[2]) = 2080;
            v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            v43 = "[HID] [MT] %s%s%s Unexpected multiple force stage events. Eating the latest.";
            goto LABEL_53;
          }
        }

        else
        {
          type6 = [eventCopy type];
          if (type6 != 1)
          {
            ScaleEvent = MTLoggingPlugin(type6, v57);
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            type7 = [eventCopy type];
            LODWORD(v64[0]) = 136315906;
            *(v64 + 4) = "[Error] ";
            WORD2(v64[1]) = 2080;
            *(&v64[1] + 6) = "";
            HIWORD(v64[2]) = 2080;
            v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            LOWORD(v64[4]) = 1024;
            *(&v64[4] + 2) = type7;
            v43 = "[HID] [MT] %s%s%s Unexpected child event type %u. Eating it";
            v52 = ScaleEvent;
            v53 = 38;
            goto LABEL_54;
          }

          v58 = [eventCopy integerValueForField:0x10000];
          v59 = [eventCopy integerValueForField:65537];
          v61 = v59;
          if (v58 != &loc_FF00 || v59 != 17 || (v59 = _os_feature_enabled_impl(), (v59 & 1) != 0))
          {
            ScaleEvent = MTLoggingPlugin(v59, v60);
            if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_55;
            }

            LODWORD(v64[0]) = 136316162;
            *(v64 + 4) = "[Error] ";
            WORD2(v64[1]) = 2080;
            *(&v64[1] + 6) = "";
            HIWORD(v64[2]) = 2080;
            v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
            LOWORD(v64[4]) = 2048;
            *(&v64[4] + 2) = v58;
            WORD1(v64[5]) = 2048;
            *(&v64[5] + 4) = v61;
            v43 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
            v52 = ScaleEvent;
            v53 = 52;
            goto LABEL_54;
          }
        }

        v24 = [eventCopy copy];
        goto LABEL_18;
      }

      if (!generatedEventCopy)
      {
        [eventCopy doubleValueForField:0x40000];
        [eventCopy doubleValueForField:262145];
        [eventCopy doubleValueForField:262146];
        [eventCopy options];
        ScaleEvent = IOHIDEventCreateTranslationEvent();
        if (!ScaleEvent)
        {
          memset(v64, 170, 0x400uLL);
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
          }

          goto LABEL_81;
        }

        goto LABEL_79;
      }

      ScaleEvent = MTLoggingPlugin(type5, v51);
      if (!os_log_type_enabled(ScaleEvent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }

      LODWORD(v64[0]) = 136315650;
      *(v64 + 4) = "[Error] ";
      WORD2(v64[1]) = 2080;
      *(&v64[1] + 6) = "";
      HIWORD(v64[2]) = 2080;
      v64[3] = "[PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:]";
      v43 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
    }

LABEL_53:
    v52 = ScaleEvent;
    v53 = 32;
LABEL_54:
    _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, v43, v64, v53);
    goto LABEL_55;
  }

  if (scroll)
  {
    goto LABEL_5;
  }

  v31 = [eventCopy integerValueForField:0x20000];
  if (generatedEventCopy)
  {
    ScaleEvent = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v31 deltaY:mach_absolute_time() buttonMask:@"HostAlgs-Button" timestamp:0.0 source:0.0];
    if (!ScaleEvent)
    {
      memset(v64, 170, 0x400uLL);
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
      }

      goto LABEL_81;
    }

LABEL_80:
    v62 = ScaleEvent;
LABEL_81:
    v15 = ScaleEvent;
    goto LABEL_82;
  }

  v46 = [(TrackpadHIDEventProcessor *)self updateButtonMask:v31 source:@"HostAlgs-Button"];
  v47 = +[HIDEvent buttonEvent:buttonMask:options:](HIDEvent, "buttonEvent:buttonMask:options:", timestamp, v46, [eventCopy options]);
  ScaleEvent = v47;
  if (v47)
  {
    if ((v46 & (v46 - 1)) == 0)
    {
      v48 = __clz(__rbit32(v46));
      if (v46)
      {
        v49 = v48 + 1;
      }

      else
      {
        v49 = 1;
      }

      [v47 setIntegerValue:v49 forField:131073];
      [ScaleEvent setIntegerValue:v46 != 0 forField:131076];
      v15 = ScaleEvent;
      goto LABEL_82;
    }

    memset(v64, 170, 0x400uLL);
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
    }
  }

  else
  {
    memset(v64, 170, 0x400uLL);
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", v64);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:];
    }
  }

LABEL_55:
  v15 = 0;
LABEL_82:

LABEL_6:

  return v15;
}

- (id)structureHIDEventFrom:(id)from vendorEvents:(id)events timestamp:(unint64_t)timestamp
{
  fromCopy = from;
  eventsCopy = events;
  v10 = [fromCopy objectForKeyedSubscript:&off_112038];
  if (v10 || ([HIDEvent pointerEvent:timestamp x:[(TrackpadHIDEventProcessor *)self previousButtonState] y:0 z:0.0 buttonMask:0.0 options:0.0], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [fromCopy objectForKeyedSubscript:&off_112080];
    v12 = v11;
    if (v11)
    {
      [v10 setIntegerValue:objc_msgSend(v11 forField:{"integerValueForField:", 0x20000), 1114115}];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allValues = [fromCopy allValues];
    v14 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([v17 type] != 17)
          {
            [v17 setTimestamp:timestamp];
            [v10 appendEvent:v17];
          }
        }

        v14 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v14);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = eventsCopy;
    v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = *v25;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v10 appendEvent:{*(*(&v24 + 1) + 8 * j), v24}];
        }

        v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v19);
    }

    v22 = v10;
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerHIDEventProcessor structureHIDEventFrom:vendorEvents:timestamp:];
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)shouldDispatchEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && [eventCopy type] == 17 && (objc_msgSend(v5, "parent"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    [v5 doubleValueForField:1114112];
    v10 = v9;
    [v5 doubleValueForField:1114113];
    v12 = v10;
    LOBYTE(v7) = 1;
    if (v12 == 0.0)
    {
      v13 = v11;
      if (v13 == 0.0)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        children = [v5 children];
        v7 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v7)
        {
          v15 = *v23;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(children);
              }

              v17 = *(*(&v22 + 1) + 8 * i);
              if ([(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:v17])
              {
                v18 = [v17 integerValueForField:720903];
                if ([(TrackpadHIDEventProcessor *)self deviceType]== 1)
                {
                  if (v18 | [v17 integerValueForField:720920] & 3)
                  {
                    goto LABEL_24;
                  }
                }

                else if ([(TrackpadHIDEventProcessor *)self deviceType]== 2 && (v18 & 0x108) != 0)
                {
LABEL_24:
                  LOBYTE(v7) = 1;
                  goto LABEL_25;
                }
              }

              else
              {
                validChildTypes = [(PointerHIDEventProcessor *)self validChildTypes];
                v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
                v21 = [validChildTypes containsObject:v20];

                if (v21)
                {
                  goto LABEL_24;
                }
              }
            }

            v7 = [children countByEnumeratingWithState:&v22 objects:v26 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)deviceInfoEvent
{
  v6 = 0u;
  v7 = 0u;
  deviceID = [(TrackpadHIDEventProcessor *)self deviceID];
  LODWORD(v4) = 0;
  v2 = [HIDEvent vendorDefinedEvent:mach_absolute_time() usagePage:65280 usage:6007 version:1 data:&deviceID length:40 options:v4];

  return v2;
}

- (id)momentumRequestEventFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy conformsToEventType:1])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    children = [fromCopy children];
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

- (int)momentumChangeFrom:(id)from startMomentum:(BOOL)momentum
{
  momentumCopy = momentum;
  v5 = [(PointerHIDEventProcessor *)self momentumRequestEventFrom:from];
  v6 = v5;
  if (v5 && (v7 = [v5 dataValueForField:65540], objc_msgSend(v6, "integerValueForField:", 65539) >= 3) && *v7 == 1 && v7[2] == momentumCopy && (v7[1] - 1) < 4u)
  {
    v8 = dword_D51F0[(v7[1] - 1)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)handleMomentumInitiationForSubtype:(int)subtype event:(id)event
{
  eventCopy = event;
  if (subtype)
  {
    [(PointerHIDEventProcessor *)self cancelMomentum];
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
    v12 = v10;
    if (v8 | v10)
    {
      if (!v8 || [(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& [(TrackpadHIDEventProcessor *)self gestureScrollsEnabled])
      {
        v13 = subtype != 1 || v8 == 0;
        v14 = !v13;
        if (v13 && v12)
        {
          if (subtype == 2 || subtype == 4)
          {
LABEL_23:
            v15 = objc_opt_new();
            v16 = v15;
            v15[2] = 0.0;
            *(v15 + 3) = subtype;
            if (v8)
            {
              v15[6] = 0.0;
              [v8 doubleValueForField:393216];
              *&v17 = v17;
              v16[4] = *&v17;
              [v8 doubleValueForField:393217];
              v19 = v18;
            }

            else
            {
              *(v15 + 6) = [v12 integerValueForField:1114115];
              v16[4] = [v12 integerValueForField:1114112];
              v19 = [v12 integerValueForField:1114113];
            }

            v16[5] = v19;
            if (self)
            {
              self->_momentumDragButton = v16[6];
              self->_momentumSubtype = subtype;
            }

            v23 = objc_opt_new();
            objc_storeStrong(v23 + 2, v16);
            v26 = MTLoggingPlugin(v24, v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:]";
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to start momentum", buf, 0x20u);
            }

            v27.receiver = self;
            v27.super_class = PointerHIDEventProcessor;
            [(TrackpadHIDEventProcessor *)&v27 handleConsume:v23];

            v20 = 1;
            goto LABEL_30;
          }
        }

        else if (v14)
        {
          goto LABEL_23;
        }

        memset(buf, 170, 0x400uLL);
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/PointerHIDEventProcessor.mm", buf);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:];
        }
      }
    }

    else
    {
      v21 = MTLoggingPlugin(v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[Error] ";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        *&buf[24] = "[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:]";
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Attempted to start momentum without a pointer or scroll event", buf, 0x20u);
      }
    }

    v20 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v20 = 0;
LABEL_31:

  return v20;
}

- (BOOL)checkForMomentumCancellation:(id)cancellation
{
  cancellationCopy = cancellation;
  if (self && self->_momentumActive)
  {
    v5 = [(PointerHIDEventProcessor *)self momentumChangeFrom:cancellationCopy startMomentum:0];
    v6 = v5 != 0;
    if (v5)
    {
      [(PointerHIDEventProcessor *)self cancelMomentum];
    }

    v7 = [cancellationCopy conformsToEventType:17];
    v8 = [cancellationCopy conformsToEventType:2];
    v9 = [cancellationCopy conformsToEventType:3];
    if (!v5 && ((v7 | v8 | v9) & 1) != 0)
    {
      if (v7)
      {
        if (self->_momentumSubtype != 1 && [cancellationCopy integerValueForField:1114115] == self->_momentumDragButton)
        {
          [cancellationCopy doubleValueForField:1114112];
          v11 = v10;
          [cancellationCopy doubleValueForField:1114113];
          v13 = v12;
          v14 = objc_opt_new();
          v15 = v11;
          v16 = v13;
          *(v14 + 8) = 1;
          *(v14 + 16) = v15;
          *(v14 + 20) = v16;
          v18 = MTLoggingPlugin(v14, v17);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v22 = "";
            v23 = 2080;
            v24 = "";
            v25 = 2080;
            v26 = "[PointerHIDEventProcessor checkForMomentumCancellation:]";
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to decay point / drag momentum", buf, 0x20u);
          }

          v20.receiver = self;
          v20.super_class = PointerHIDEventProcessor;
          [(TrackpadHIDEventProcessor *)&v20 handleConsume:v14];
        }
      }

      else
      {
        [(PointerHIDEventProcessor *)self cancelMomentum];
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancelMomentum
{
  if (self && self->_momentumActive)
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
      v12 = "[PointerHIDEventProcessor cancelMomentum]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Requesting to interrupt momentum", buf, 0x20u);
    }

    v6.receiver = self;
    v6.super_class = PointerHIDEventProcessor;
    [(TrackpadHIDEventProcessor *)&v6 handleConsume:v3];
  }
}

- (id)generateMomentumStartEventFrom:(id)from forSubtype:(int)subtype
{
  v4 = *&subtype;
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy && [fromCopy type] == 6 && -[PointerHIDEventProcessor handleMomentumInitiationForSubtype:event:](self, "handleMomentumInitiationForSubtype:event:", v4, v7))
  {
    v8 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:0 deltaY:0.0 deltaZ:0.0 options:0.0];
    if (v8)
    {
      if ([(TrackpadHIDEventProcessor *)self scrollMomentumEnabled]&& (!self || !self->_momentumActive))
      {
        IOHIDEventSetScrollMomentum();
      }

      v9 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)copyPhaseFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
}

- (id)validChildTypes
{
  if ([PointerHIDEventProcessor validChildTypes]::once != -1)
  {
    [PointerHIDEventProcessor validChildTypes];
  }

  v3 = [PointerHIDEventProcessor validChildTypes]::validChildTypes;

  return v3;
}

void __43__PointerHIDEventProcessor_validChildTypes__block_invoke(id a1)
{
  v1 = [PointerHIDEventProcessor validChildTypes]::validChildTypes;
  [PointerHIDEventProcessor validChildTypes]::validChildTypes = &off_112AD8;
}

- (id)debugDictionary
{
  v12.receiver = self;
  v12.super_class = PointerHIDEventProcessor;
  debugDictionary = [(TrackpadHIDEventProcessor *)&v12 debugDictionary];
  v4 = [debugDictionary mutableCopy];

  if (self)
  {
    momentumActive = self->_momentumActive;
  }

  else
  {
    momentumActive = 0;
  }

  v6 = [NSNumber numberWithBool:momentumActive];
  [v4 setObject:v6 forKeyedSubscript:@"MomentumActive"];

  if (self)
  {
    momentumDragButton = self->_momentumDragButton;
  }

  else
  {
    momentumDragButton = 0;
  }

  v8 = [NSNumber numberWithUnsignedInt:momentumDragButton];
  [v4 setObject:v8 forKeyedSubscript:@"MomentumDragButton"];

  if (self)
  {
    momentumSubtype = self->_momentumSubtype;
  }

  else
  {
    momentumSubtype = 0;
  }

  v10 = [NSNumber numberWithUnsignedInt:momentumSubtype];
  [v4 setObject:v10 forKeyedSubscript:@"MomentumSubType"];

  return v4;
}

- (void)handleHIDEvent:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.2()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.3()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.4()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.5()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleChildHIDEvent:previouslyGeneratedEvent:timestamp:momentumInitiationType:canceledMomentumScroll:.cold.6()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)structureHIDEventFrom:vendorEvents:timestamp:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleMomentumInitiationForSubtype:event:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

@end