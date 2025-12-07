@interface AXBEventManager
+ (id)sharedManager;
- (AXBEventManager)init;
- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId;
- (int)systemAppPid;
- (unsigned)clientPortForContextId:(unsigned int)id;
- (unsigned)contextIdForPosition:(CGPoint)position displayId:(unsigned int)id;
- (unsigned)contextIdHosterForContextId:(unsigned int)id;
- (unsigned)machPortForPoint:(CGPoint)point;
- (unsigned)systemEventPort;
- (void)_normalizeEventForContext:(id)context;
- (void)dispatchEventRepresentationToClient:(id)client;
- (void)postEvent:(id)event systemEvent:(BOOL)systemEvent afterNamedTap:(id)tap namedTaps:(id)taps;
@end

@implementation AXBEventManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[AXBEventManager sharedManager];
  }

  v3 = sharedManager_SharedManager_0;

  return v3;
}

uint64_t __32__AXBEventManager_sharedManager__block_invoke()
{
  sharedManager_SharedManager_0 = objc_alloc_init(AXBEventManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBEventManager)init
{
  v9.receiver = self;
  v9.super_class = AXBEventManager;
  v2 = [(AXBEventManager *)&v9 init];
  if (v2)
  {
    serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
    displays = [serverIfRunning displays];

    v5 = [displays count];
    if (v5)
    {
      v5 = [displays objectAtIndex:0];
    }

    v6 = _WindowDisplay;
    _WindowDisplay = v5;

    _AXSystemEventPort = GSGetPurpleSystemEventPort();
    v7 = v2;
  }

  return v2;
}

- (int)systemAppPid
{
  server = [MEMORY[0x29EDBDFB0] server];
  v3 = [server pid];

  return v3;
}

- (unsigned)systemEventPort
{
  result = _AXSystemEventPort;
  if (!_AXSystemEventPort)
  {
    result = GSGetPurpleSystemEventPort();
    _AXSystemEventPort = result;
  }

  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  y = point.y;
  x = point.x;
  v9 = _WindowDisplay;
  if (v5)
  {
    server = [MEMORY[0x29EDBBAE0] server];
    v11 = [server displayWithDisplayId:v5];

    v9 = v11;
  }

  if (v6)
  {
    [v9 convertPoint:v6 toContextId:{AXRotateToScreen(v5, x, y)}];
    x = v12;
    y = v13;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromContextId:(unsigned int)id displayId:(unsigned int)displayId
{
  v5 = *&displayId;
  v6 = *&id;
  y = point.y;
  x = point.x;
  v9 = _WindowDisplay;
  if (v5)
  {
    server = [MEMORY[0x29EDBBAE0] server];
    v11 = [server displayWithDisplayId:v5];

    v9 = v11;
  }

  if (v6)
  {
    [v9 convertPoint:v6 fromContextId:{x, y}];
    x = v12;
    y = v13;
  }

  v14 = x;
  v15 = y;
  result.y = v15;
  result.x = v14;
  return result;
}

- (void)_normalizeEventForContext:(id)context
{
  contextCopy = context;
  v4 = [contextCopy type] == 3001;
  v5 = contextCopy;
  if (!v4)
  {
    [contextCopy windowLocation];
    v8 = AXRotateToScreen(0, v6, v7);
    v10 = [_WindowDisplay contextIdAtPosition:{fmax(v8, 0.0), fmax(v9, 0.0)}];
    handInfo = [contextCopy handInfo];
    [contextCopy windowLocation];
    [(AXBEventManager *)self convertPoint:v10 toContextId:0 displayId:?];
    [contextCopy setWindowLocation:?];
    paths = [handInfo paths];
    v13 = [paths count];

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        paths2 = [handInfo paths];
        v16 = [paths2 objectAtIndexedSubscript:i];

        [v16 pathLocation];
        [(AXBEventManager *)self convertPoint:v10 toContextId:0 displayId:?];
        [v16 setPathLocation:?];
        [v16 setPathWindowContextID:v10];
      }
    }

    v5 = contextCopy;
  }
}

- (void)dispatchEventRepresentationToClient:(id)client
{
  v61 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v5 = +[AXBackBoardGlue hidClientConnectionManager];
  v6 = [clientCopy fakeTouchScaleEventRepresentation:0];

  newHIDEventRef = [v6 newHIDEventRef];
  if (newHIDEventRef)
  {
    v8 = newHIDEventRef;
    if ([v6 type] == 3001)
    {
      if (BKSHIDDigitizerEventIsFirstTouchDown())
      {
        IOHIDEventGetTimeStamp();
        if (dispatchEventRepresentationToClient__onceToken != -1)
        {
          [AXBEventManager dispatchEventRepresentationToClient:];
        }
      }

      handInfo = [v6 handInfo];
      paths = [handInfo paths];
      firstObject = [paths firstObject];

      if (firstObject)
      {
        v57 = 0;
        pathIndex = [firstObject pathIndex];
        touchCounter = [MEMORY[0x29EDBDF58] touchCounter];
        [firstObject pathLocation];
        v15 = v14;
        [firstObject pathLocation];
        *&v17 = v16;
        [firstObject pathLocation];
        *&v19 = v18;
        [firstObject pathLocation];
        v21 = v20;
        v56 = __PAIR64__(touchCounter, pathIndex);
        LODWORD(v58) = 0;
        *(&v58 + 1) = v15;
        v59 = __PAIR64__(v19, v17);
        v60 = v21;
        [v6 contextId];
        BKSHIDEventSetDigitizerInfoWithSubEventInfos();
      }

      else
      {
        [v6 contextId];
        BKSHIDEventSetDigitizerInfo();
      }

      goto LABEL_17;
    }

    [v6 type];
    if (AXEventTypeIsKeyboardKey())
    {
      server = [MEMORY[0x29EDBBAE0] server];
      v24 = [server displayWithDisplayId:{objc_msgSend(v6, "displayId")}];

      uniqueId = [v24 uniqueId];
      [v6 contextId];
      BKSHIDEventSetSimpleInfo();

      goto LABEL_17;
    }

    [v6 type];
    if (!AXEventTypeShouldLetBackboardProcess())
    {
LABEL_17:
      v56 = 0;
      v57 = &v56;
      v58 = 0x2020000000;
      v59 = 0;
      if (![v6 contextId])
      {
        clientId = [v6 clientId];
        if (!clientId)
        {
          if ([v6 taskPort])
          {
            goto LABEL_21;
          }

          v40 = [NSClassFromString(&cfstr_Bksystemshells.isa) safeValueForKey:@"sharedInstance"];
          clientId = [v40 safeValueForKey:@"primarySystemShell"];

          if (!clientId)
          {
            mEMORY[0x29EDBD6B8] = [MEMORY[0x29EDBD6B8] sharedInstance];
            ignoreLogging = [mEMORY[0x29EDBD6B8] ignoreLogging];

            if ((ignoreLogging & 1) == 0)
            {
              identifier = [MEMORY[0x29EDBD6B8] identifier];
              v44 = AXLoggerForFacility();

              v45 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v44, v45))
              {
                v46 = AXColorizeFormatLog();
                v47 = _AXStringForArgs();
                if (os_log_type_enabled(v44, v45))
                {
                  LODWORD(buf) = 138543362;
                  *(&buf + 4) = v47;
                  _os_log_impl(&dword_29BBBD000, v44, v45, "%{public}@", &buf, 0xCu);
                }
              }
            }
          }

          v48 = [clientId safeValueForKey:@"bundleIdentifier"];
          [v6 setClientId:v48];
        }
      }

LABEL_21:
      clientId2 = [v6 clientId];
      v28 = clientId2 == 0;

      if (!v28)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v54 = 0x2020000000;
        v55 = 0;
        v29 = v5;
        v52 = v6;
        AXPerformSafeBlock();
        v30 = *(*(&buf + 1) + 24);

        _Block_object_dispose(&buf, 8);
        if (v30 >= 1)
        {
          v51 = v29;
          AXPerformSafeBlock();
        }
      }

      if (v57[3])
      {
        goto LABEL_29;
      }

      if (![v6 taskPort] && objc_msgSend(v6, "contextId"))
      {
        serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
        [v6 setTaskPort:{objc_msgSend(serverIfRunning, "taskNamePortOfContextId:", objc_msgSend(v6, "contextId"))}];
      }

      v50 = v5;
      v32 = v6;
      AXPerformSafeBlock();

      if (v57[3])
      {
LABEL_29:
        CFAbsoluteTimeGetCurrent();
        v49 = v6;
        AXPerformSafeBlock();
        IOHIDEventSystemConnectionDispatchEvent();
        CFRelease(v57[3]);
        v33 = v49;
      }

      else
      {
        mEMORY[0x29EDBD6B8]2 = [MEMORY[0x29EDBD6B8] sharedInstance];
        ignoreLogging2 = [mEMORY[0x29EDBD6B8]2 ignoreLogging];

        if (ignoreLogging2)
        {
          goto LABEL_31;
        }

        identifier2 = [MEMORY[0x29EDBD6B8] identifier];
        v33 = AXLoggerForFacility();

        v37 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v33, v37))
        {
          v38 = AXColorizeFormatLog();
          v39 = _AXStringForArgs();
          if (os_log_type_enabled(v33, v37))
          {
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v39;
            _os_log_impl(&dword_29BBBD000, v33, v37, "%{public}@", &buf, 0xCu);
          }
        }
      }

LABEL_31:
      CFRelease(v8);
      _Block_object_dispose(&v56, 8);
      goto LABEL_32;
    }

    [(AXBEventManager *)self _processHIDEvent:v8];
    CFRelease(v8);
  }

  else
  {
    v22 = AXLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(AXBEventManager *)v6 dispatchEventRepresentationToClient:v22];
    }
  }

LABEL_32:
}

double __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 * 0.000000001;
    dispatchEventRepresentationToClient__timeScale = *&result;
  }

  return result;
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_303(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) clientId];
  *(*(*(a1 + 48) + 8) + 24) = [v2 pidForBundleID:v3];
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_2(uint64_t a1)
{
  v2 = NSClassFromString(&cfstr_Bkshideventdef.isa);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_3;
  v4[3] = &__block_descriptor_36_e8_v16__0_8l;
  v5 = *(a1 + 48);
  v3 = [(objc_class *)v2 build:v4];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) copyClientForDestination:v3];
}

void *__55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) copyClientForTaskPort:{objc_msgSend(*(a1 + 40), "taskPort")}];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __55__AXBEventManager_dispatchEventRepresentationToClient___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  if ([*(a1 + 32) type] == 3001)
  {
    v2 = BKSHIDEventGetDigitizerAttributes();
    v3 = [v2 pathAttributes];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          [v8 preciseLocationX];
          v10 = v9;
          [v8 preciseLocationY];
          [*(a1 + 40) convertPoint:objc_msgSend(*(a1 + 32) fromContextId:"contextId") displayId:{objc_msgSend(*(a1 + 32), "displayId"), v10, v11}];
          +[AXBackBoardGlue _applyExtendedHitTestInformationForCAScreenCoordinates:displayUUID:toPathAttributes:secureName:excludeContextIDs:](AXBackBoardGlue, "_applyExtendedHitTestInformationForCAScreenCoordinates:displayUUID:toPathAttributes:secureName:excludeContextIDs:", 0, v8, [*(a1 + 32) secureName], 0, v12, v13);
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    BKSHIDEventSetAttributes();
  }
}

- (unsigned)contextIdHosterForContextId:(unsigned int)id
{
  v3 = *&id;
  serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
  LODWORD(v3) = [serverIfRunning contextIdHostingContextId:v3];

  return v3;
}

- (void)postEvent:(id)event systemEvent:(BOOL)systemEvent afterNamedTap:(id)tap namedTaps:(id)taps
{
  systemEventCopy = systemEvent;
  eventCopy = event;
  tapCopy = tap;
  tapsCopy = taps;
  if ([eventCopy type] == 3001)
  {
    handInfo = [eventCopy handInfo];
    if ([handInfo eventType] == 2 || objc_msgSend(handInfo, "eventType") == 6 || objc_msgSend(handInfo, "eventType") == 8)
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = [handInfo eventType] == 1;
      v14 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

  type = [eventCopy type];
  newHIDEventRef = 0;
  if (type <= 3000)
  {
    if (((type - 1000) > 0x33 || ((1 << (type + 24)) & 0xFFC007E603FC3) == 0) && (type - 10) >= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((type - 4000) < 2 || type == 3001)
  {
LABEL_11:
    newHIDEventRef = [eventCopy newHIDEventRef];
  }

LABEL_12:
  if ([eventCopy type] == 50)
  {
    systemEventPort = [(AXBEventManager *)self systemEventPort];
    v18 = 1;
  }

  else
  {
    if (newHIDEventRef)
    {
      v19 = 0;
    }

    else
    {
      v19 = v14;
    }

    if (v19 == 1)
    {
      if (systemEventCopy)
      {
        systemEventPort2 = [(AXBEventManager *)self systemEventPort];
      }

      else
      {
        [eventCopy windowLocation];
        systemEventPort2 = [(AXBEventManager *)self machPortForPoint:?];
      }

      systemEventPort = systemEventPort2;
      if (v13)
      {
        v18 = 0;
        postEvent_systemEvent_afterNamedTap_namedTaps__DownPort = systemEventPort2;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      systemEventPort = postEvent_systemEvent_afterNamedTap_namedTaps__DownPort;
    }
  }

  +[AXBackBoardGlue sendUserEventOccurred];
  -[AXBEventManager setHomeIsDown:](self, "setHomeIsDown:", [eventCopy type] == 1000);
  if (!tapsCopy && newHIDEventRef)
  {
    v21 = [eventCopy copy];
    lastHIDRecord = self->_lastHIDRecord;
    self->_lastHIDRecord = v21;

    if (!IOHIDEventGetSenderID())
    {
      IOHIDEventSetSenderID();
      NSLog(&cfstr_NoIohidsenderi.isa, eventCopy);
    }

    [(AXBEventManager *)self _processHIDEvent:newHIDEventRef];
LABEL_35:
    CFRelease(newHIDEventRef);
    goto LABEL_36;
  }

  if (!systemEventCopy)
  {
    [(AXBEventManager *)self _normalizeEventForContext:eventCopy];
  }

  [eventCopy setTaskPort:systemEventPort];
  mEMORY[0x29EDBDF60] = [MEMORY[0x29EDBDF60] sharedManager];
  v24 = mEMORY[0x29EDBDF60];
  eventTapIdentifier = tapCopy;
  if (!tapCopy)
  {
    eventTapIdentifier = self->_eventTapIdentifier;
  }

  [mEMORY[0x29EDBDF60] sendEvent:eventCopy afterTap:eventTapIdentifier useGSEvent:newHIDEventRef == 0 namedTaps:tapsCopy options:v18];

  if (newHIDEventRef)
  {
    goto LABEL_35;
  }

LABEL_36:
}

- (unsigned)clientPortForContextId:(unsigned int)id
{
  v3 = *&id;
  serverIfRunning = [MEMORY[0x29EDBBAE0] serverIfRunning];
  LODWORD(v3) = [serverIfRunning clientPortOfContextId:v3];

  return v3;
}

- (unsigned)contextIdForPosition:(CGPoint)position displayId:(unsigned int)id
{
  v4 = *&id;
  v5 = AXRotateToScreen(id, position.x, position.y);
  v7 = v6;
  v8 = _WindowDisplay;
  if (v4)
  {
    server = [MEMORY[0x29EDBBAE0] server];
    v10 = [server displayWithDisplayId:v4];

    v8 = v10;
  }

  v11 = [v8 contextIdAtPosition:{v5, v7}];

  return v11;
}

- (unsigned)machPortForPoint:(CGPoint)point
{
  result = [_WindowDisplay clientPortAtPosition:{AXRotateToScreen(0, point.x, point.y)}];
  if (!result)
  {

    return [(AXBEventManager *)self systemEventPort];
  }

  return result;
}

- (void)dispatchEventRepresentationToClient:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_29BBBD000, a2, OS_LOG_TYPE_ERROR, "Could not create an event ref from: %@", &v2, 0xCu);
}

@end