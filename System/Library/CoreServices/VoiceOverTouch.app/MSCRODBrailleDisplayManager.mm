@interface MSCRODBrailleDisplayManager
+ (id)allocWithZone:(_NSZone *)zone;
+ (void)initialize;
- (BOOL)_brailleConfigMatch:(id)match withConfig:(id)config;
- (BOOL)_hasActiveDisplay;
- (BOOL)_hasUserInteractedWithDeviceRecently;
- (BOOL)_registerSleepNotifications;
- (BOOL)isConfigured;
- (MSCRODBrailleDisplayManager)init;
- (id)_displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate;
- (id)driverConfiguration;
- (id)newBrailleDisplayCommandDispatcher;
- (void)_delayedHandleSystemSleep;
- (void)_delayedPowerChangedNotification:(id)notification;
- (void)_eventQueue_begin;
- (void)_eventQueue_brailleDriverDisconnected:(id)disconnected;
- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)index;
- (void)_eventQueue_setVirtualStatusAlignment:(int)alignment;
- (void)_loadBluetoothDriverFromPreferences;
- (void)_loadBluetoothDriverWithAddress:(id)address;
- (void)_reallyDelayedWakeFromSleep;
- (void)_registerHasBlankedScreenNotification;
- (void)_removeBluetoothDriverWithAddress:(id)address;
- (void)_removeBluetoothDriverWithIOElement:(id)element removeFromPreferences:(BOOL)preferences;
- (void)_saveBluetoothDisplayConfiguration:(id)configuration;
- (void)_setupBluetooth;
- (void)_updateScreenUILock:(int)lock screenBlank:(int)blank;
- (void)addToDisplays:(id)displays;
- (void)airplaneModeChanged;
- (void)handleSettingsChange:(id)change;
- (void)invalidate;
- (void)removeBluetoothDriverWithAddress:(id)address;
- (void)setLastUserInteractionTime:(double)time;
@end

@implementation MSCRODBrailleDisplayManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_allocWithZone(MSCRODBrailleDisplayManager) init];
    v3 = qword_100019898;
    qword_100019898 = v2;

    v4 = qword_100019898;

    [SCROBrailleDisplayManager _setSharedManager:v4];
  }
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (qword_100019898)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MSCRODBrailleDisplayManager;
  return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
}

- (MSCRODBrailleDisplayManager)init
{
  selfCopy = self;
  if (!qword_100019898)
  {
    v22.receiver = self;
    v22.super_class = MSCRODBrailleDisplayManager;
    v3 = [(MSCRODBrailleDisplayManager *)&v22 init];
    selfCopy = v3;
    if (v3)
    {
      [*&v3->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__managedDisplayQueue] setActiveQueueMaximumSize:32];
      v4 = objc_opt_new();
      displays = selfCopy->_displays;
      selfCopy->_displays = v4;

      v6 = _AXSVoiceOverTouchCopyBrailleTableIdentifier();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [[BRLTTable alloc] initWithIdentifier:v6];
        v8 = +[SCROBrailleTranslationManager sharedManager];
        serviceIdentifier = [v7 serviceIdentifier];
        [v8 loadTranslatorWithServiceIdentifier:serviceIdentifier];

        language = [v7 language];
        [v8 setDefaultLanguage:language];
      }

      *&selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__inputAccessMode] = 0;
      selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__showDotsSevenAndEight] = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, sub_100002B74, kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v12, selfCopy, sub_100002B74, kAXSVoiceOverTouchBrailleVirtualStatusAlignmentChangedNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v13 = _AXSVoiceOverTouchBrailleVirtualStatusAlignment();
      v14 = OBJC_IVAR___SCROBrailleDisplayManager__status;
      [*&selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__status] setVirtualAlignment:v13];
      [*&selfCopy->SCROBrailleDisplayManager_opaque[v14] setMasterStatusCellIndex:_AXSVoiceOverTouchBrailleMasterStatusCellIndex()];
      selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__isValid] = 1;
      v15 = objc_opt_new();
      [(MSCRODBrailleDisplayManager *)selfCopy setRadiosPrefs:v15];

      radiosPrefs = [(MSCRODBrailleDisplayManager *)selfCopy radiosPrefs];
      [radiosPrefs setDelegate:selfCopy];

      radiosPrefs2 = [(MSCRODBrailleDisplayManager *)selfCopy radiosPrefs];
      -[MSCRODBrailleDisplayManager setAirplaneMode:](selfCopy, "setAirplaneMode:", [radiosPrefs2 airplaneMode]);

      v18 = *&selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002B8C;
      block[3] = &unk_100014770;
      selfCopy = selfCopy;
      v21 = selfCopy;
      dispatch_async(v18, block);
    }
  }

  return selfCopy;
}

- (void)handleSettingsChange:(id)change
{
  changeCopy = change;
  if ([changeCopy isEqualToString:kAXSVoiceOverTouchBrailleContractionModeChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setContractionMode:_AXSVoiceOverTouchBrailleContractionMode()];
  }

  else if ([changeCopy isEqualToString:kAXSVoiceOverTouchBrailleEightDotModeChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setShowEightDotBraille:_AXSVoiceOverTouchBrailleEightDotMode() != 0];
  }

  else if ([changeCopy isEqualToString:kAXSVoiceOverTouchBrailleVirtualStatusAlignmentChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setVirtualStatusAlignment:_AXSVoiceOverTouchBrailleVirtualStatusAlignment()];
  }

  else if ([changeCopy isEqualToString:kAXSVoiceOverTouchBrailleMasterStatusCellIndexChangedNotification])
  {
    [(MSCRODBrailleDisplayManager *)self setMasterStatusCellIndex:_AXSVoiceOverTouchBrailleMasterStatusCellIndex()];
  }
}

- (void)_eventQueue_begin
{
  dispatch_assert_queue_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  if (self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__isValid] == 1)
  {
    [(MSCRODBrailleDisplayManager *)self _registerHasBlankedScreenNotification];
    [(MSCRODBrailleDisplayManager *)self _registerSleepNotifications];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002D48;
    block[3] = &unk_100014770;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    [(MSCRODBrailleDisplayManager *)self _loadStealthDisplay];
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v4 invalidate];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
}

- (void)_eventQueue_brailleDriverDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v6 _eventQueue_brailleDriverDisconnected:disconnectedCopy];
  v5 = disconnectedCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

- (void)_eventQueue_setVirtualStatusAlignment:(int)alignment
{
  v3 = *&alignment;
  v5 = OBJC_IVAR___SCROBrailleDisplayManager__status;
  virtualAlignment = [*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__status] virtualAlignment];
  v7.receiver = self;
  v7.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v7 _eventQueue_setVirtualStatusAlignment:v3];
  if (virtualAlignment != v3 && [*&self->SCROBrailleDisplayManager_opaque[v5] virtualAlignment] == v3)
  {
    _AXSVoiceOverTouchSetBrailleVirtualStatusAlignment();
  }
}

- (void)_eventQueue_setMasterStatusCellIndex:(int64_t)index
{
  v5 = OBJC_IVAR___SCROBrailleDisplayManager__status;
  masterStatusCellIndex = [*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__status] masterStatusCellIndex];
  v7.receiver = self;
  v7.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v7 _eventQueue_setMasterStatusCellIndex:index];
  if (masterStatusCellIndex != index && [*&self->SCROBrailleDisplayManager_opaque[v5] masterStatusCellIndex] == index)
  {
    _AXSVoiceOverTouchSetBrailleMasterStatusCellIndex();
  }
}

- (void)_setupBluetooth
{
  v3 = +[BluetoothManager sharedInstance];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"powerChangedNotification:" name:BluetoothPowerChangedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"powerChangedNotification:" name:BluetoothAvailabilityChangedNotification object:0];
}

- (void)_delayedPowerChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Handing power change: %@", buf, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = +[BluetoothManager sharedInstance];
  if ([v6 enabled] && !self->_isScreenBlank)
  {
    airplaneMode = [(MSCRODBrailleDisplayManager *)self airplaneMode];

    if ((airplaneMode & 1) == 0)
    {
      [(MSCRODBrailleDisplayManager *)self _loadBluetoothDriverFromPreferences];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v18 = notificationCopy;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(NSMutableArray *)self->_displays copy];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        ioElement = [v12 ioElement];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v15 = AXLogBrailleHW();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v12;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Call _removeBluetoothDriverWithIOElement for Display: %@", buf, 0xCu);
          }

          ioElement2 = [v12 ioElement];
          [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:ioElement2 removeFromPreferences:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  notificationCopy = v18;
LABEL_18:
}

- (id)_displayWithIOElement:(id)element driverIdentifier:(id)identifier delegate:(id)delegate
{
  elementCopy = element;
  identifierCopy = identifier;
  delegateCopy = delegate;
  if ([elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol])
  {
    v10 = MSCRODMobileBrailleDisplay;
LABEL_5:
    v11 = [(__objc2_class *)v10 displayWithIOElement:elementCopy driverIdentifier:identifierCopy delegate:delegateCopy];
    goto LABEL_6;
  }

  if (elementCopy)
  {
    v10 = SCROBrailleDisplay;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (void)_loadBluetoothDriverWithAddress:(id)address
{
  addressCopy = address;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v3 = +[BluetoothManager sharedInstance];
  pairedDevices = [v3 pairedDevices];

  v5 = [pairedDevices countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v5)
  {
    v6 = *v55;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v55 != v6)
      {
        objc_enumerationMutation(pairedDevices);
      }

      v8 = *(*(&v54 + 1) + 8 * v7);
      address = [v8 address];
      v10 = [address isEqualToString:addressCopy];

      if (v10)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [pairedDevices countByEnumeratingWithState:&v54 objects:v63 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v8;

    if (!v11)
    {
      goto LABEL_35;
    }

    delegate2 = v11;
    v35 = +[NSBundle brailleDriverDeviceDetectionInfo];
    if ([v35 count])
    {
      v39 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v35 count]);
      name = [delegate2 name];
      v44 = +[NSExpression expressionForEvaluatedObject];
      v76 = 0u;
      v77 = 0u;
      *buf = 0u;
      v75 = 0u;
      obj = v35;
      v41 = [obj countByEnumeratingWithState:buf objects:&v68 count:16];
      if (v41)
      {
        v40 = *v75;
        do
        {
          for (i = 0; i != v41; i = i + 1)
          {
            if (*v75 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*&buf[8] + 8 * i);
            v14 = [obj objectForKey:?];
            v15 = [v14 objectForKey:kSCROBrailleDriverBluetoothSearchDictionary];

            if (v15)
            {
              if (name)
              {
                v16 = [v15 objectForKey:kSCROBrailleDriverBluetoothDeviceNameRegexPatterns];
                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                v17 = v16;
                v18 = [v17 countByEnumeratingWithState:&v58 objects:&v64 count:16];
                if (v18)
                {
                  v19 = *v59;
                  while (2)
                  {
                    for (j = 0; j != v18; j = j + 1)
                    {
                      if (*v59 != v19)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v21 = [objc_allocWithZone(NSConstantValueExpression) initWithObject:*(*(&v58 + 1) + 8 * j)];
                      v22 = [objc_allocWithZone(NSComparisonPredicate) initWithLeftExpression:v44 rightExpression:v21 modifier:0 type:6 options:0];
                      v23 = [v22 evaluateWithObject:name];

                      if (v23)
                      {

                        [v39 insertObject:v42 atIndex:0];
                        goto LABEL_31;
                      }
                    }

                    v18 = [v17 countByEnumeratingWithState:&v58 objects:&v64 count:16];
                    if (v18)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_31:
              }

              else
              {
                [v39 addObject:v42];
              }
            }
          }

          v41 = [obj countByEnumeratingWithState:buf objects:&v68 count:16];
        }

        while (v41);
      }
    }

    else
    {
      v39 = 0;
    }

    if ([v39 count] && (v24 = objc_msgSend(objc_allocWithZone(MSCRODIOBluetoothElement), "initWithAddress:", addressCopy)) != 0)
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x2020000000;
      v67 = 0;
      v68 = 0;
      v69 = &v68;
      v70 = 0x3032000000;
      v71 = sub_100003BDC;
      v72 = sub_100003BEC;
      v73 = 0;
      v25 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100003BF4;
      block[3] = &unk_1000147C0;
      block[4] = self;
      delegate = v24;
      v50 = delegate;
      v52 = &v64;
      v53 = &v68;
      v51 = v39;
      dispatch_sync(v25, block);
      if ((v65[3] & 1) == 0)
      {
        [(MSCRODBrailleDisplayManager *)self _loadNextDriverForIOElement:delegate];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        loadingDisplays = [*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__managedDisplayQueue] loadingDisplays];
        v28 = [loadingDisplays countByEnumeratingWithState:&v45 objects:v62 count:16];
        if (v28)
        {
          v29 = *v46;
          while (2)
          {
            for (k = 0; k != v28; k = k + 1)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(loadingDisplays);
              }

              v31 = *(*(&v45 + 1) + 8 * k);
              ioElement = [v31 ioElement];
              v33 = [ioElement isEqual:delegate];

              if (v33)
              {
                [(NSMutableArray *)self->_displays addObject:v31];
                v34 = AXLogBrailleHW();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v31;
                  _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Adding BT display: %@", buf, 0xCu);
                }

                goto LABEL_53;
              }
            }

            v28 = [loadingDisplays countByEnumeratingWithState:&v45 objects:v62 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

LABEL_53:

        _updateNewlyActiveDisplay();
        [v69[5] configurationDidChange];
      }

      _Block_object_dispose(&v68, 8);
      _Block_object_dispose(&v64, 8);
    }

    else
    {
      delegate = [(MSCRODBrailleDisplayManager *)self delegate];
      [delegate handleFailedToLoadBluetoothDevice:addressCopy];
    }
  }

  else
  {
LABEL_9:

LABEL_35:
    delegate2 = [(MSCRODBrailleDisplayManager *)self delegate];
    [delegate2 handleFailedToLoadBluetoothDevice:addressCopy];
  }
}

- (void)_loadBluetoothDriverFromPreferences
{
  selfCopy = self;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v2 = +[AXSettings sharedInstance];
  obj = [v2 voiceOverBrailleDisplays];

  v45 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
  if (v45)
  {
    v44 = *v79;
    do
    {
      v3 = 0;
      do
      {
        if (*v79 != v44)
        {
          v4 = v3;
          objc_enumerationMutation(obj);
          v3 = v4;
        }

        v46 = v3;
        v5 = *(*(&v78 + 1) + 8 * v3);
        v6 = AXLogBrailleHW();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Processing BT device: %@", buf, 0xCu);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v5 objectForKey:kSCROBrailleDisplayBluetoothAddress];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v5 objectForKey:kSCROBrailleDisplayTransport];
            intValue = [v8 intValue];

            v10 = AXLogBrailleHW();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = [NSNumber numberWithUnsignedInt:intValue];
              *buf = 138412290;
              *&buf[4] = v11;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BT transport type: %@", buf, 0xCu);
            }

            if (intValue == 2)
            {
              pairedDevices = [objc_allocWithZone(MSCRODIOBluetoothElement) initWithAddress:v7];
              if (!pairedDevices)
              {
                goto LABEL_35;
              }

LABEL_37:
              v30 = AXLogBrailleHW();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                displays = selfCopy->_displays;
                *buf = 138412290;
                *&buf[4] = displays;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "In _loadBluetoothDriverFromPreferences: _displays = %@", buf, 0xCu);
              }

              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v32 = selfCopy->_displays;
              v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v66 objects:v90 count:16];
              if (v33)
              {
                v34 = *v67;
                while (2)
                {
                  for (i = 0; i != v33; i = i + 1)
                  {
                    if (*v67 != v34)
                    {
                      objc_enumerationMutation(v32);
                    }

                    ioElement = [*(*(&v66 + 1) + 8 * i) ioElement];
                    v37 = [ioElement isEqual:pairedDevices];

                    if (v37)
                    {

                      v41 = AXLogBrailleHW();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *&buf[4] = v7;
                        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Not remaking display, we already have a cached version: %@", buf, 0xCu);
                      }

                      goto LABEL_55;
                    }
                  }

                  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v66 objects:v90 count:16];
                  if (v33)
                  {
                    continue;
                  }

                  break;
                }
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v87 = sub_100003BDC;
              v88 = sub_100003BEC;
              v89 = 0;
              v62 = 0;
              v63 = &v62;
              v64 = 0x2020000000;
              v65 = 0;
              v56 = 0;
              v57 = &v56;
              v58 = 0x3032000000;
              v59 = sub_100003BDC;
              v60 = sub_100003BEC;
              v61 = 0;
              v38 = *&selfCopy->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000045BC;
              block[3] = &unk_1000147E8;
              block[4] = selfCopy;
              pairedDevices = pairedDevices;
              v51 = pairedDevices;
              v52 = v5;
              v53 = buf;
              v54 = &v62;
              v55 = &v56;
              dispatch_sync(v38, block);
              v39 = AXLogBrailleHW();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v40 = [NSNumber numberWithBool:*(v63 + 24)];
                *v82 = 138412546;
                v83 = v40;
                v84 = 2112;
                v85 = pairedDevices;
                _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding new display element? %@ %@", v82, 0x16u);
              }

              if (*(v63 + 24) == 1)
              {
                [(NSMutableArray *)selfCopy->_displays addObject:*(*&buf[8] + 40)];
                [v57[5] configurationDidChange];
              }

              _Block_object_dispose(&v56, 8);
              _Block_object_dispose(&v62, 8);
              _Block_object_dispose(buf, 8);

LABEL_55:
            }

            else
            {
              if (intValue == 8)
              {
                v76 = 0u;
                v77 = 0u;
                v74 = 0u;
                v75 = 0u;
                v12 = +[BluetoothManager sharedInstance];
                pairedDevices = [v12 pairedDevices];

                v49 = [pairedDevices countByEnumeratingWithState:&v74 objects:v92 count:16];
                if (v49)
                {
                  v48 = *v75;
                  do
                  {
                    for (j = 0; j != v49; j = j + 1)
                    {
                      if (*v75 != v48)
                      {
                        objc_enumerationMutation(pairedDevices);
                      }

                      v14 = *(*(&v74 + 1) + 8 * j);
                      address = [v14 address];
                      v16 = [address isEqualToString:v7];

                      if (v16)
                      {
                        v72 = 0u;
                        v73 = 0u;
                        v70 = 0u;
                        v71 = 0u;
                        v17 = +[BluetoothManager sharedInstance];
                        connectingDevices = [v17 connectingDevices];

                        v19 = 0;
                        v20 = [connectingDevices countByEnumeratingWithState:&v70 objects:v91 count:16];
                        if (v20)
                        {
                          v21 = *v71;
                          do
                          {
                            for (k = 0; k != v20; k = k + 1)
                            {
                              if (*v71 != v21)
                              {
                                objc_enumerationMutation(connectingDevices);
                              }

                              address2 = [*(*(&v70 + 1) + 8 * k) address];
                              v24 = [address2 isEqualToString:v7];

                              v19 |= v24;
                            }

                            v20 = [connectingDevices countByEnumeratingWithState:&v70 objects:v91 count:16];
                          }

                          while (v20);
                        }

                        if ((([v14 connected] | v19) & 1) == 0)
                        {
                          [v14 device];
                          v25 = BTDeviceConnectServices();
                          v26 = AXLogBrailleHW();
                          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                          {
                            v27 = [NSNumber numberWithInt:v25];
                            *buf = 138412546;
                            *&buf[4] = v27;
                            *&buf[12] = 2112;
                            *&buf[14] = v14;
                            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Connected to device[%@]: %@", buf, 0x16u);
                          }
                        }
                      }
                    }

                    v49 = [pairedDevices countByEnumeratingWithState:&v74 objects:v92 count:16];
                  }

                  while (v49);
                }

                goto LABEL_55;
              }

LABEL_35:
              v28 = +[BluetoothManager sharedInstance];
              available = [v28 available];

              if ((available & 1) == 0)
              {
                pairedDevices = 0;
                goto LABEL_37;
              }
            }
          }
        }

        v3 = v46 + 1;
      }

      while ((v46 + 1) != v45);
      v45 = [obj countByEnumeratingWithState:&v78 objects:v93 count:16];
    }

    while (v45);
  }
}

- (void)removeBluetoothDriverWithAddress:(id)address
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004860;
  v4[3] = &unk_100014798;
  v4[4] = self;
  addressCopy = address;
  v3 = addressCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)_removeBluetoothDriverWithAddress:(id)address
{
  addressCopy = address;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = [objc_allocWithZone(MSCRODIOBluetoothElement) initWithAddress:addressCopy];

  v5 = v6;
  if (v6)
  {
    [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:v6 removeFromPreferences:1];
    v5 = v6;
  }
}

- (void)_removeBluetoothDriverWithIOElement:(id)element removeFromPreferences:(BOOL)preferences
{
  preferencesCopy = preferences;
  elementCopy = element;
  v7 = AXLogBrailleHW();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = elementCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing BT driver: %@", &buf, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (elementCopy)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v78 = 0x3032000000;
    v79 = sub_100003BDC;
    v80 = sub_100003BEC;
    v81 = 0;
    v70[0] = 0;
    v70[1] = v70;
    v70[2] = 0x2020000000;
    v71 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = sub_100003BDC;
    v68 = sub_100003BEC;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_100003BDC;
    v62 = sub_100003BEC;
    v63 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = sub_100003BDC;
    v56[4] = sub_100003BEC;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x2020000000;
    v55 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v49 = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 2;
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_100003BDC;
    v43[4] = sub_100003BEC;
    v44 = 0;
    displays = self->_displays;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000510C;
    v41[3] = &unk_100014810;
    v9 = elementCopy;
    v42 = v9;
    v10 = [(NSMutableArray *)displays indexOfObjectPassingTest:v41];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL && v10 < [(NSMutableArray *)self->_displays count])
    {
      v11 = [(NSMutableArray *)self->_displays objectAtIndexedSubscript:v10];
      v12 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v11;

      v13 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100005150;
      block[3] = &unk_100014838;
      block[4] = self;
      p_buf = &buf;
      v31 = &v50;
      v32 = v56;
      v33 = v54;
      v34 = v48;
      v35 = v47;
      v36 = v45;
      v37 = v43;
      v38 = v70;
      v29 = v9;
      v39 = &v64;
      v40 = &v58;
      dispatch_sync(v13, block);
      if (*(*(&buf + 1) + 40))
      {
        [(NSMutableArray *)self->_displays removeObject:?];
        v14 = AXLogBrailleHW();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(&buf + 1) + 40);
          LODWORD(v74) = 138412290;
          *(&v74 + 4) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removing BT display: %@", &v74, 0xCu);
        }

        *&v74 = 0;
        *(&v74 + 1) = &v74;
        v75 = 0x2020000000;
        v76 = 0x7FFFFFFFFFFFFFFFLL;
        configuration = [*(*(&buf + 1) + 40) configuration];
        v17 = +[AXSettings sharedInstance];
        voiceOverBrailleDisplays = [v17 voiceOverBrailleDisplays];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000053FC;
        v25[3] = &unk_100014860;
        v25[4] = self;
        v19 = configuration;
        v26 = v19;
        v27 = &v74;
        [voiceOverBrailleDisplays enumerateObjectsUsingBlock:v25];

        if (preferencesCopy && *(*(&v74 + 1) + 24) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = +[AXSettings sharedInstance];
          voiceOverBrailleDisplays2 = [v20 voiceOverBrailleDisplays];
          v22 = [voiceOverBrailleDisplays2 mutableCopy];

          [v22 removeObjectAtIndex:*(*(&v74 + 1) + 24)];
          v23 = +[AXSettings sharedInstance];
          [v23 setVoiceOverBrailleDisplays:v22];

          v24 = AXLogBrailleHW();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *v72 = 138412290;
            v73 = v19;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Removed display from list: %@", v72, 0xCu);
          }
        }

        [*(*(&buf + 1) + 40) invalidate];
        if (*(v51 + 24) == 1)
        {
          _updateNewlyActiveDisplay();
        }

        else
        {
          [(MSCRODBrailleDisplayManager *)self setUIDisplayMode];
          [(MSCRODBrailleDisplayManager *)self performSelector:"_loadStealthDisplay" withObject:0 afterDelay:0.0];
        }

        _Block_object_dispose(&v74, 8);
      }

      [v65[5] handleBrailleDriverDisconnected];
      [v59[5] configurationDidChange];
    }

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v45, 8);
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v48, 8);
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(v54, 8);
    _Block_object_dispose(v56, 8);

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(v70, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (id)driverConfiguration
{
  dispatch_assert_queue_not_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  driverConfiguration = [(MSCRODBrailleDisplayManager *)&v6 driverConfiguration];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005520;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);

  return driverConfiguration;
}

- (BOOL)_brailleConfigMatch:(id)match withConfig:(id)config
{
  matchCopy = match;
  configCopy = config;
  v7 = [matchCopy objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v8 = [configCopy objectForKeyedSubscript:kSCROBrailleDisplayBluetoothAddress];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [matchCopy objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v12 = [configCopy objectForKeyedSubscript:kSCROBrailleDisplayBrailleVendorProductId];
    v10 = [v11 isEqualToString:v12];
  }

  return v10;
}

- (void)_saveBluetoothDisplayConfiguration:(id)configuration
{
  v4 = [configuration mutableCopyWithZone:0];
  [v4 removeObjectForKey:kSCROBrailleDisplayToken];
  v20 = v4;
  v5 = [v4 copyWithZone:0];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = +[AXSettings sharedInstance];
  voiceOverBrailleDisplays = [v6 voiceOverBrailleDisplays];
  v8 = [voiceOverBrailleDisplays mutableCopy];

  if (!v8)
  {
    v8 = +[NSMutableArray array];
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100005A74;
  v25[3] = &unk_100014860;
  v25[4] = self;
  v9 = v5;
  v26 = v9;
  v27 = &v28;
  [v8 enumerateObjectsUsingBlock:v25];
  v10 = v29[3];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 addObject:v9];
  }

  else
  {
    [v8 replaceObjectAtIndex:v10 withObject:v9];
  }

  v11 = +[AXSettings sharedInstance];
  [v11 setVoiceOverBrailleDisplays:v8];

  v12 = AXLogBrailleHW();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Saving VO braille configs: %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v15)
  {
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = AXLogBrailleHW();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "-- Braille configs: %@", buf, 0xCu);
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(&v28, 8);
}

- (BOOL)isConfigured
{
  dispatch_assert_queue_not_V2(*&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue]);
  v6.receiver = self;
  v6.super_class = MSCRODBrailleDisplayManager;
  isConfigured = [(MSCRODBrailleDisplayManager *)&v6 isConfigured];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B84;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  return isConfigured;
}

- (BOOL)_registerSleepNotifications
{
  p_sleepWake = &self->_sleepWake;
  v3 = IORegisterForSystemPower(0, &self->_sleepWake.notifyPortRef, sub_100005D18, &self->_sleepWake.notifierObject);
  p_sleepWake->rootPort = v3;
  if (v3)
  {
    Current = CFRunLoopGetCurrent();
    RunLoopSource = IONotificationPortGetRunLoopSource(p_sleepWake->notifyPortRef);
    CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopCommonModes);
  }

  else
  {
    NSLog(@"Error: IORegisterForSystemPower failed");
  }

  return v3 != 0;
}

- (void)setLastUserInteractionTime:(double)time
{
  v7.receiver = self;
  v7.super_class = MSCRODBrailleDisplayManager;
  [(MSCRODBrailleDisplayManager *)&v7 setLastUserInteractionTime:time];
  v4 = AXLogBrailleHW();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10000CDC8(self, v4);
  }

  if ([(MSCRODBrailleDisplayManager *)self isBrailleSystemSleeping])
  {
    v5 = AXLogBrailleHW();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received user interaction but system was asleep - rewaking", buf, 2u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (BOOL)_hasUserInteractedWithDeviceRecently
{
  Current = CFAbsoluteTimeGetCurrent();
  [(MSCRODBrailleDisplayManager *)self lastUserInteractionTime];
  v5 = Current - v4;
  v6 = AXLogBrailleHW();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Last interaction time happened: %f", &v8, 0xCu);
  }

  return v5 < 2.0;
}

- (BOOL)_hasActiveDisplay
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_displays;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100006220;
      block[3] = &unk_100014888;
      block[5] = v7;
      block[6] = &v16;
      block[4] = self;
      dispatch_sync(v8, block);
      if (v17[3])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v20 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v9;
}

- (void)_reallyDelayedWakeFromSleep
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Processing wake from sleep to auto detect", buf, 2u);
  }

  if ([(MSCRODBrailleDisplayManager *)self _hasActiveDisplay])
  {
    v4 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006378;
    block[3] = &unk_100014770;
    block[4] = self;
    dispatch_async(v4, block);
  }

  [(MSCRODBrailleDisplayManager *)self _enableAutoDetect];
  [(MSCRODBrailleDisplayManager *)self powerChangedNotification:0];
  [0 configurationDidChange];
  [(MSCRODBrailleDisplayManager *)self setIsBrailleSystemSleeping:0];
}

- (void)_delayedHandleSystemSleep
{
  v3 = AXLogBrailleHW();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Handled system sleep in Braille", buf, 2u);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reallyDelayedWakeFromSleep" object:0];
  [(MSCRODBrailleDisplayManager *)self _disableAutoDetect];
  _hasActiveDisplay = [(MSCRODBrailleDisplayManager *)self _hasActiveDisplay];
  v5 = *&self->SCROBrailleDisplayManager_opaque[OBJC_IVAR___SCROBrailleDisplayManager__eventQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000689C;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(v5, block);
  if (_hasActiveDisplay)
  {
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.25, 0);
    if (_AXSVoiceOverTouchBrailleDisplayDisconnectOnSleep())
    {
      v6 = AXLogBrailleHW();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        displays = self->_displays;
        *buf = 138412290;
        v27 = displays;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "In _delayedHandleSystemSleep: remove certain drivers in _displays: %@", buf, 0xCu);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [(NSMutableArray *)self->_displays copy];
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = *v21;
        *&v10 = 138412290;
        v19 = v10;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if (([(NSMutableArray *)v14 requiresPersistentConnection]& 1) == 0)
            {
              ioElement = [(NSMutableArray *)v14 ioElement];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                ioElement2 = [(NSMutableArray *)v14 ioElement];
                [(MSCRODBrailleDisplayManager *)self _removeBluetoothDriverWithIOElement:ioElement2 removeFromPreferences:0];

                v18 = AXLogBrailleHW();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v19;
                  v27 = v14;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Call _removeBluetoothDriverWithIOElement for Display: %@", buf, 0xCu);
                }
              }
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    [NSThread sleepForTimeInterval:0.25];
  }

  [(MSCRODBrailleDisplayManager *)self setIsBrailleSystemSleeping:1];
}

- (void)_updateScreenUILock:(int)lock screenBlank:(int)blank
{
  v4 = *&blank;
  v5 = *&lock;
  v7 = sub_100006E58();
  v8 = _SCROD_LOG();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [NSNumber numberWithInt:v5];
    v10 = [NSNumber numberWithInt:v4];
    v11 = [NSNumber numberWithBool:v7];
    *buf = 138412802;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    *&buf[22] = 2112;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating system ui lock status: %@, screen blank status: %@, system lock: %@", buf, 0x20u);
  }

  self->_isScreenUILocked = v5 != 0;
  v12 = v4 != 0;
  self->_isScreenBlank = v12;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v13 = v12 & v7 & self->_isScreenUILocked;
  LOBYTE(v26) = v13;
  if (byte_1000198A0 != 1 || self->_isInDisconnectedState != v13)
  {
    v14 = _SCROD_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [NSNumber numberWithBool:byte_1000198A0];
      v16 = [NSNumber numberWithBool:*(*&buf[8] + 24)];
      v17 = [NSNumber numberWithBool:self->_isInDisconnectedState];
      *v19 = 138412802;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initialized: %@, should disconnected %@, is disconnected: %@", v19, 0x20u);
    }

    if (*(*&buf[8] + 24) == 1)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }

    else
    {
      [(MSCRODBrailleDisplayManager *)self _wakeFromSleep];
      v18 = _SCROD_LOG();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Braille Device: Waking", v19, 2u);
      }
    }

    byte_1000198A0 = 1;
    self->_isInDisconnectedState = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_registerHasBlankedScreenNotification
{
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000074B8;
  v23[3] = &unk_1000148D8;
  objc_copyWeak(&v24, &location);
  v3 = objc_retainBlock(v23);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000075C0;
  v21[3] = &unk_1000148D8;
  objc_copyWeak(&v22, &location);
  v4 = objc_retainBlock(v21);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_1000076D0;
  v19 = &unk_1000148D8;
  objc_copyWeak(&v20, &location);
  v5 = objc_retainBlock(&v16);
  v6 = &_dispatch_main_q;
  v7 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_keybagLockStateToken, &_dispatch_main_q, v3) == 0;

  if (v7)
  {
    (v3[2])(v3, self->_keybagLockStateToken);
    v8 = AXLogBrailleHW();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [NSNumber numberWithInt:self->_keybagLockStateToken, v16, v17, v18, v19];
      *buf = 138412546;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registered keybag lock state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_keybagLockStateToken = -1;
  }

  v10 = notify_register_dispatch("com.apple.springboard.lockstate", &self->_notifyLockStateToken, &_dispatch_main_q, v4) == 0;

  if (v10)
  {
    (v4[2])(v4, self->_notifyLockStateToken);
    v11 = AXLogBrailleHW();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSNumber numberWithInt:self->_notifyLockStateToken];
      *buf = 138412546;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registered lock state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_notifyLockStateToken = -1;
  }

  v13 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_blankScreenToken, &_dispatch_main_q, v5) == 0;

  if (v13)
  {
    (v5[2])(v5, self->_blankScreenToken);
    v14 = AXLogBrailleHW();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [NSNumber numberWithInt:self->_blankScreenToken];
      *buf = 138412546;
      selfCopy3 = self;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Registered blank screen state: %@ %@", buf, 0x16u);
    }
  }

  else
  {
    self->_blankScreenToken = -1;
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)airplaneModeChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007854;
  block[3] = &unk_100014770;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)newBrailleDisplayCommandDispatcher
{
  v2 = objc_allocWithZone(SCROBrailleDisplayCommandDispatcher);

  return [v2 init];
}

- (void)addToDisplays:(id)displays
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000079A4;
  v4[3] = &unk_100014798;
  v4[4] = self;
  displaysCopy = displays;
  v3 = displaysCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

@end