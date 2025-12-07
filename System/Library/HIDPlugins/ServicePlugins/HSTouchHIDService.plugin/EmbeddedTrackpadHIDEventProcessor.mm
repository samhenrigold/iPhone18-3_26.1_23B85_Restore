@interface EmbeddedTrackpadHIDEventProcessor
- (BOOL)shouldDispatchEvent:(id)event;
- (id)handleHIDEvent:(id)event;
- (void)copyPhaseFrom:(id)from to:(id)to;
@end

@implementation EmbeddedTrackpadHIDEventProcessor

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
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      *&buf[32] = 1024;
      *&buf[34] = [eventCopy type];
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
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected digitizer event. Eating it.", buf, 0x20u);
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
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected child digitizer event. Eating it.", buf, 0x20u);
    }

LABEL_12:

    v13 = v4;
    goto LABEL_13;
  }

  v97 = objc_opt_new();
  v100 = [HIDEvent pointerEvent:mach_absolute_time() x:[(TrackpadHIDEventProcessor *)self previousButtonState] y:0 z:0.0 buttonMask:0.0 options:0.0];
  if (v100)
  {
    v101 = eventCopy;
    children = [v101 children];
    v17 = [children copy];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
    if (v18)
    {
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v98 = 0;
      v20 = 0;
      v99 = 0;
      v21 = *v109;
      *&v19 = 136316162;
      v93 = v19;
      while (1)
      {
        v22 = 0;
        do
        {
          if (*v109 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v108 + 1) + 8 * v22);
          if ([v23 type] != 11)
          {
            if ([v23 type] == 17)
            {
              if (![(TrackpadHIDEventProcessor *)self noPointing])
              {
                [v23 doubleValueForField:1114112];
                v25 = v24;
                v26 = [v23 doubleValueForField:1114113];
                if (v99)
                {
                  v29 = MTLoggingPlugin(v26, v27);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "[Error] ";
                    *&buf[12] = 2080;
                    *&buf[14] = "";
                    *&buf[22] = 2080;
                    *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected multiple pointer events. Eating it.", buf, 0x20u);
                  }

                  v99 = 1;
                  goto LABEL_88;
                }

                v41 = v28;
                v42 = v25;
                [v100 setDoubleValue:1114112 forField:v42];
                v43 = v41;
                [v100 setDoubleValue:1114113 forField:v43];
                v99 = 1;
              }

LABEL_89:
              children2 = [v23 children];
              v78 = [children2 count] == 0;

              if (!v78)
              {
                v81 = MTLoggingPlugin(v79, v80);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  type2 = [v23 type];
                  *buf = 136315906;
                  *&buf[4] = "[Error] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  *&buf[32] = 1024;
                  *&buf[34] = type2;
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Unexpected grandchild events inside event type: %u. Eating them", buf, 0x26u);
                }
              }

              [v101 removeEvent:v23];
              goto LABEL_94;
            }

            if ([v23 type] == 2)
            {
              v30 = [v23 integerValueForField:0x20000];
              v31 = v30;
              if (v20)
              {
                if ([(TrackpadHIDEventProcessor *)self previousButtonState]== v30)
                {
                  memset(buf, 170, 0x400uLL);
                  v32 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    *v113 = 136315906;
                    v114 = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                    v115 = 2080;
                    v116 = v32;
                    v117 = 2048;
                    v118 = 118;
                    v119 = 2080;
                    v120 = "buttonMask != self.previousButtonState";
                    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v113, 0x2Au);
                  }
                }

                v29 = [(TrackpadHIDEventProcessor *)self createPointingEventWithDeltaX:v31 deltaY:mach_absolute_time() buttonMask:@"Host-Algs" timestamp:0.0 source:0.0];
                if (!v29)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  goto LABEL_141;
                }

                [v97 addObject:v29];
LABEL_88:
              }

              else
              {
                [v100 setIntegerValue:v30 forField:1114115];
                [(TrackpadHIDEventProcessor *)self logButtonState:v31 fromSource:@"Host-Algs"];
                [(TrackpadHIDEventProcessor *)self setPreviousButtonState:v31];
                v44 = +[HIDEvent buttonEvent:buttonMask:options:](HIDEvent, "buttonEvent:buttonMask:options:", mach_absolute_time(), v31, [v23 options]);
                v45 = v44;
                if (!v44)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v45 = 0;
                  goto LABEL_142;
                }

                if ((v31 & (v31 - 1)) != 0)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  goto LABEL_142;
                }

                v46 = __clz(__rbit32(v31));
                if (v31)
                {
                  v47 = v46 + 1;
                }

                else
                {
                  v47 = 1;
                }

                [v44 setIntegerValue:v47 forField:131073];
                [v45 setIntegerValue:v31 != 0 forField:131076];
                [v100 appendEvent:v45];
                v20 = v45;
              }

              goto LABEL_89;
            }

            type3 = [v23 type];
            if (type3 == 6)
            {
              if (v98)
              {
                v35 = MTLoggingPlugin(type3, v34);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "[Debug] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Multiple scroll events. Merging.", buf, 0x20u);
                }

                [(TrackpadHIDEventProcessor *)self mergeScrollEvent:v98 with:v23];
              }

              else
              {
                [v23 doubleValueForField:393216];
                v51 = v50;
                [v23 doubleValueForField:393217];
                v53 = v52;
                [v23 doubleValueForField:393218];
                v55 = v54;
                options = [v23 options];
                v57 = v51;
                v58 = v55;
                v59 = v58;
                v60 = v53;
                v61 = [(TrackpadHIDEventProcessor *)self createScrollEventWithDeltaX:options deltaY:v57 deltaZ:v60 options:v59];
                if (!v61)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v98 = 0;
                  goto LABEL_141;
                }

                [v100 appendEvent:v61];
                v98 = v61;
              }

              goto LABEL_89;
            }

            type4 = [v23 type];
            if (type4 == 7)
            {
              if (!v96)
              {
                [v23 doubleValueForField:458752];
                [v23 doubleValueForField:458753];
                [v23 doubleValueForField:458754];
                mach_absolute_time();
                [v23 options];
                ScaleEvent = IOHIDEventCreateScaleEvent();
                if (!ScaleEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v96 = 0;
                  goto LABEL_141;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v23 to:ScaleEvent];
                [v100 appendEvent:ScaleEvent];
                v96 = ScaleEvent;
                goto LABEL_89;
              }

              v29 = MTLoggingPlugin(type4, v37);
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v38 = v29;
              v39 = OS_LOG_TYPE_ERROR;
              v40 = "[HID] [MT] %s%s%s Unexpected multiple scale events. Eating the latest.";
LABEL_86:
              v76 = 32;
LABEL_87:
              _os_log_impl(&dword_0, v38, v39, v40, buf, v76);
              goto LABEL_88;
            }

            type5 = [v23 type];
            if (type5 == 5)
            {
              if (!v95)
              {
                [v23 doubleValueForField:327680];
                [v23 doubleValueForField:327681];
                [v23 doubleValueForField:327682];
                mach_absolute_time();
                [v23 options];
                RotationEvent = IOHIDEventCreateRotationEvent();
                if (!RotationEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v95 = 0;
                  goto LABEL_141;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v23 to:RotationEvent];
                [v100 appendEvent:RotationEvent];
                v95 = RotationEvent;
                goto LABEL_89;
              }

              v29 = MTLoggingPlugin(type5, v49);
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v38 = v29;
              v39 = OS_LOG_TYPE_ERROR;
              v40 = "[HID] [MT] %s%s%s Unexpected multiple rotate events. Eating the latest.";
              goto LABEL_86;
            }

            type6 = [v23 type];
            if (type6 == 4)
            {
              if (!v94)
              {
                [v23 doubleValueForField:0x40000];
                [v23 doubleValueForField:262145];
                [v23 doubleValueForField:262146];
                mach_absolute_time();
                [v23 options];
                TranslationEvent = IOHIDEventCreateTranslationEvent();
                if (!TranslationEvent)
                {
                  memset(buf, 170, 0x400uLL);
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PostAlg/EventProcessors/EmbeddedTrackpadHIDEventProcessor.mm", buf);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [EmbeddedTrackpadHIDEventProcessor handleHIDEvent:];
                  }

                  v94 = 0;
LABEL_141:
                  v45 = v20;
LABEL_142:

                  v13 = 0;
                  goto LABEL_143;
                }

                [(EmbeddedTrackpadHIDEventProcessor *)self copyPhaseFrom:v23 to:TranslationEvent];
                [v100 appendEvent:TranslationEvent];
                v94 = TranslationEvent;
                goto LABEL_89;
              }

              v29 = MTLoggingPlugin(type6, v63);
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Error] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v38 = v29;
              v39 = OS_LOG_TYPE_ERROR;
              v40 = "[HID] [MT] %s%s%s Unexpected multiple translate events. Eating the latest.";
              goto LABEL_86;
            }

            if ([v23 type] == 41 && _os_feature_enabled_impl())
            {
LABEL_66:
              v29 = [v23 copy];
              [v100 appendEvent:v29];
              goto LABEL_88;
            }

            if ([v23 type] != 1)
            {
              type7 = [v23 type];
              if (type7 == 32)
              {
                v29 = MTLoggingPlugin(type7, v72);
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_88;
                }

                *buf = 136315650;
                *&buf[4] = "[Debug] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                v38 = v29;
                v39 = OS_LOG_TYPE_DEBUG;
                v40 = "[HID] [MT] %s%s%s Force event. Ignoring.";
                goto LABEL_86;
              }

              type8 = [v23 type];
              if (type8 == 3)
              {
                v29 = MTLoggingPlugin(type8, v74);
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                IntegerValue = IOHIDEventGetIntegerValue();
                *buf = 136315906;
                *&buf[4] = "[Error] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                *&buf[32] = 2048;
                *&buf[34] = IntegerValue;
                v38 = v29;
                v39 = OS_LOG_TYPE_ERROR;
                v40 = "[HID] [MT] %s%s%s Unexpected keyboard child event with usage %lu. Eating it";
              }

              else
              {
                type9 = [v23 type];
                if (type9 != 24)
                {
                  v29 = MTLoggingPlugin(type9, v84);
                  if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_88;
                  }

                  type10 = [v23 type];
                  *buf = 136315906;
                  *&buf[4] = "[Error] ";
                  *&buf[12] = 2080;
                  *&buf[14] = "";
                  *&buf[22] = 2080;
                  *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                  *&buf[32] = 1024;
                  *&buf[34] = type10;
                  v38 = v29;
                  v39 = OS_LOG_TYPE_ERROR;
                  v40 = "[HID] [MT] %s%s%s Unexpected child event type: %u. Eating it";
                  v76 = 38;
                  goto LABEL_87;
                }

                v29 = MTLoggingPlugin(type9, v84);
                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                v85 = IOHIDEventGetIntegerValue();
                *buf = 136315906;
                *&buf[4] = "[Error] ";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
                *&buf[32] = 2048;
                *&buf[34] = v85;
                v38 = v29;
                v39 = OS_LOG_TYPE_ERROR;
                v40 = "[HID] [MT] %s%s%s Unexpected hotkey child event with value %lu. Eating it";
              }

              v76 = 42;
              goto LABEL_87;
            }

            v66 = [v23 integerValueForField:0x10000];
            v67 = [v23 integerValueForField:65537];
            v69 = v67;
            if (v66 == &loc_FF00 && v67 == 17)
            {
              v67 = _os_feature_enabled_impl();
              if ((v67 & 1) == 0)
              {
                goto LABEL_66;
              }
            }

            else if (v66 == &loc_FF00 && v67 == 1)
            {
              v29 = MTLoggingPlugin(1, v68);
              if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_88;
              }

              *buf = 136315650;
              *&buf[4] = "[Debug] ";
              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
              v38 = v29;
              v39 = OS_LOG_TYPE_DEBUG;
              v40 = "[HID] [MT] %s%s%s Vendor-defined Momentum event. Ignoring.";
              goto LABEL_86;
            }

            v29 = MTLoggingPlugin(v67, v68);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_88;
            }

            *buf = v93;
            *&buf[4] = "[Error] ";
            *&buf[12] = 2080;
            *&buf[14] = "";
            *&buf[22] = 2080;
            *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
            *&buf[32] = 2048;
            *&buf[34] = v66;
            *&buf[42] = 2048;
            *&buf[44] = v69;
            v38 = v29;
            v39 = OS_LOG_TYPE_ERROR;
            v40 = "[HID] [MT] %s%s%s Unexpected vendor-defined child event with usage page %lu and usage %lu. Eating it";
            v76 = 52;
            goto LABEL_87;
          }

LABEL_94:
          v22 = v22 + 1;
        }

        while (v18 != v22);
        v87 = [obj countByEnumeratingWithState:&v108 objects:v122 count:16];
        v18 = v87;
        if (!v87)
        {
          goto LABEL_110;
        }
      }
    }

    v94 = 0;
    v95 = 0;
    v96 = 0;
    v98 = 0;
    v20 = 0;
LABEL_110:

    [v100 appendEvent:v101];
    if ([(EmbeddedTrackpadHIDEventProcessor *)self shouldDispatchEvent:v100])
    {
      [v4 addObject:v100];
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v89 = v97;
      v90 = [v89 countByEnumeratingWithState:&v104 objects:v112 count:16];
      if (v90)
      {
        v91 = *v105;
        do
        {
          for (i = 0; i != v90; i = i + 1)
          {
            if (*v105 != v91)
            {
              objc_enumerationMutation(v89);
            }

            if (*(*(&v104 + 1) + 8 * i))
            {
              [v4 addObject:?];
            }
          }

          v90 = [v89 countByEnumeratingWithState:&v104 objects:v112 count:16];
        }

        while (v90);
      }
    }

    v13 = [v4 copy];
    v45 = v20;
LABEL_143:

    v88 = v101;
  }

  else
  {
    v88 = MTLoggingPlugin(0, v15);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[Error] ";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = "[EmbeddedTrackpadHIDEventProcessor handleHIDEvent:]";
      _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s Failed to create pointer event. Bailing.", buf, 0x20u);
    }

    v94 = 0;
    v95 = 0;
    v96 = 0;
    v98 = 0;
    v45 = 0;
    v13 = 0;
  }

LABEL_13:

  return v13;
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
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        children = [v5 children];
        v7 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          v15 = *v22;
          while (2)
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(children);
              }

              v17 = *(*(&v21 + 1) + 8 * i);
              if ([(TrackpadHIDEventProcessor *)self isDigitizerCollectionHIDEvent:v17])
              {
                v18 = [v17 integerValueForField:720903];
                if (v18 | [v17 integerValueForField:720920] & 3)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v17 type]);
                v20 = [&off_112B20 containsObject:v19];

                if (v20)
                {
LABEL_20:
                  LOBYTE(v7) = 1;
                  goto LABEL_21;
                }
              }
            }

            v7 = [children countByEnumeratingWithState:&v21 objects:v25 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }

LABEL_21:
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)copyPhaseFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  IOHIDEventGetPhase();
  IOHIDEventSetPhase();
}

- (void)handleHIDEvent:.cold.1()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.2()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.3()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.4()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.5()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.6()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

- (void)handleHIDEvent:.cold.7()
{
  v5 = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, v5);
}

@end