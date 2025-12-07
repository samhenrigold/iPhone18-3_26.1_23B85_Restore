@interface MTCrownFilterManager
+ (double)secondsFromMachTime:(unint64_t)time;
- (MTCrownFilterManager)init;
- (id)filterButtonEvent:(id)event;
- (id)filterDigitizerEvent:(id)event;
- (id)filterEvent:(id)event fromService:(id)service;
- (void)registerService:(id)service;
- (void)unregisterService:(id)service;
- (void)updateScrollMotionAccumulator:(id)accumulator;
@end

@implementation MTCrownFilterManager

+ (double)secondsFromMachTime:(unint64_t)time
{
  if (secondsFromMachTime__once != -1)
  {
    +[MTCrownFilterManager secondsFromMachTime:];
  }

  LODWORD(v3) = secondsFromMachTime__timebase;
  LODWORD(v4) = *algn_D23C;
  return time * v3 / v4 / 1000000000.0;
}

- (MTCrownFilterManager)init
{
  v14.receiver = self;
  v14.super_class = MTCrownFilterManager;
  v2 = [(MTSessionFilterManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    touchService = v2->_touchService;
    v2->_touchService = 0;

    crownService = v3->_crownService;
    v3->_crownService = 0;

    buttonService = v3->_buttonService;
    v3->_buttonService = 0;

    v3->_touchFilterX1 = 0.0;
    v3->_touchFilterX2 = 0.0;
    v3->_touchFilterY1 = 0.0;
    v3->_touchFilterY2 = 0.0;
    v3->_menuButtonPressed = 0;
    v3->_helpButtonPressed = 0;
    v3->_buttonDownMachTime = 0;
    v3->_scrollAccumulatorDistance = 0.0;
    v3->_scrollAccumulatorMachTime = 0;
    v7 = objc_opt_new();
    activePathIDs = v3->_activePathIDs;
    v3->_activePathIDs = v7;

    v9 = objc_opt_new();
    cancelPathIDs = v3->_cancelPathIDs;
    v3->_cancelPathIDs = v9;

    v11 = objc_opt_new();
    consumePathIDs = v3->_consumePathIDs;
    v3->_consumePathIDs = v11;
  }

  return v3;
}

- (void)registerService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy conformsToUsagePage:13 usage:4])
  {
    v5 = [serviceCopy propertyForKey:@"CrownFilterRect"];
    if (v5)
    {
      [(MTCrownFilterManager *)self setTouchService:serviceCopy];
      v6 = [v5 objectForKeyedSubscript:@"X1"];
      -[MTCrownFilterManager setTouchFilterX1:](self, "setTouchFilterX1:", ([v6 intValue] / 100.0));

      v7 = [v5 objectForKeyedSubscript:@"X2"];
      -[MTCrownFilterManager setTouchFilterX2:](self, "setTouchFilterX2:", ([v7 intValue] / 100.0));

      v8 = [v5 objectForKeyedSubscript:@"Y1"];
      -[MTCrownFilterManager setTouchFilterY1:](self, "setTouchFilterY1:", ([v8 intValue] / 100.0));

      v9 = [v5 objectForKeyedSubscript:@"Y2"];
      -[MTCrownFilterManager setTouchFilterY2:](self, "setTouchFilterY2:", ([v9 intValue] / 100.0));

      v11 = MTLoggingCrownFilterManager(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        touchFilterX1 = self->_touchFilterX1;
        touchFilterY1 = self->_touchFilterY1;
        touchFilterX2 = self->_touchFilterX2;
        touchFilterY2 = self->_touchFilterY2;
        v16 = 134218752;
        v17 = touchFilterX1;
        v18 = 2048;
        v19 = touchFilterY1;
        v20 = 2048;
        v21 = touchFilterX2;
        v22 = 2048;
        v23 = touchFilterY2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "MTCrownFilterManager: Filter Rect X1=%f Y1=%f X2=%f Y2=%f", &v16, 0x2Au);
      }
    }
  }

  else if ([serviceCopy conformsToUsagePage:65291 usage:1])
  {
    [(MTCrownFilterManager *)self setCrownService:serviceCopy];
  }

  else if ([serviceCopy conformsToUsagePage:11 usage:1])
  {
    [(MTCrownFilterManager *)self setButtonService:serviceCopy];
  }
}

- (void)unregisterService:(id)service
{
  serviceCopy = service;
  touchService = [(MTCrownFilterManager *)self touchService];

  if (touchService == serviceCopy)
  {
    [(MTCrownFilterManager *)self setTouchService:0];
  }

  else
  {
    crownService = [(MTCrownFilterManager *)self crownService];

    if (crownService == serviceCopy)
    {
      [(MTCrownFilterManager *)self setCrownService:0];
    }

    else
    {
      buttonService = [(MTCrownFilterManager *)self buttonService];

      v7 = serviceCopy;
      if (buttonService != serviceCopy)
      {
        goto LABEL_8;
      }

      [(MTCrownFilterManager *)self setButtonService:0];
    }
  }

  v7 = serviceCopy;
LABEL_8:
}

- (id)filterEvent:(id)event fromService:(id)service
{
  eventCopy = event;
  serviceCopy = service;
  touchService = [(MTCrownFilterManager *)self touchService];
  if (!touchService)
  {
    goto LABEL_10;
  }

  v9 = touchService;
  crownService = [(MTCrownFilterManager *)self crownService];
  if (!crownService)
  {
    goto LABEL_9;
  }

  v11 = crownService;
  buttonService = [(MTCrownFilterManager *)self buttonService];
  if (!buttonService)
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = buttonService;
  touchService2 = [(MTCrownFilterManager *)self touchService];
  if (touchService2 == serviceCopy)
  {
LABEL_15:

    goto LABEL_16;
  }

  crownService2 = [(MTCrownFilterManager *)self crownService];
  v16 = crownService2;
  if (crownService2 == serviceCopy)
  {

    goto LABEL_15;
  }

  buttonService2 = [(MTCrownFilterManager *)self buttonService];

  if (buttonService2 != serviceCopy)
  {
    goto LABEL_10;
  }

LABEL_16:
  touchService3 = [(MTCrownFilterManager *)self touchService];
  v22 = touchService3;
  if (touchService3 == serviceCopy)
  {
    type = [eventCopy type];

    if (type != 11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  crownService3 = [(MTCrownFilterManager *)self crownService];
  v25 = crownService3;
  if (crownService3 != serviceCopy)
  {

    goto LABEL_22;
  }

  type2 = [eventCopy type];

  if (type2 != 6)
  {
LABEL_10:
    v18 = eventCopy;
    eventCopy = v18;
    goto LABEL_11;
  }

LABEL_22:
  buttonService3 = [(MTCrownFilterManager *)self buttonService];

  if (buttonService3 != serviceCopy)
  {
    [(MTCrownFilterManager *)self updateScrollMotionAccumulator:eventCopy];
    if ([eventCopy type] == 11)
    {
      v28 = [(MTCrownFilterManager *)self filterDigitizerEvent:eventCopy];

      eventCopy = v28;
    }

    goto LABEL_10;
  }

  v18 = [(MTCrownFilterManager *)self filterButtonEvent:eventCopy];
LABEL_11:
  v19 = v18;

  return v19;
}

- (id)filterDigitizerEvent:(id)event
{
  eventCopy = event;
  children = [eventCopy children];
  v75 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [children count]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = children;
  v5 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (!v5)
  {
    v71 = 0;
    v76 = 0;
    goto LABEL_49;
  }

  v7 = v5;
  v71 = 0;
  v76 = 0;
  v8 = *v82;
  *&v6 = 134217984;
  v65 = v6;
  do
  {
    v9 = 0;
    v73 = v7;
    do
    {
      if (*v82 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v81 + 1) + 8 * v9);
      if ([v10 type] == 11)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValueForField:720901]);
        v12 = [v10 integerValueForField:720903];
        v13 = [v10 integerValueForField:720905];
        consumePathIDs = [(MTCrownFilterManager *)self consumePathIDs];
        v15 = [consumePathIDs containsObject:v11];

        if (v15)
        {
          [v75 addObject:v10];
        }

        if (v13 == &dword_0 + 1)
        {
          cancelPathIDs = [(MTCrownFilterManager *)self cancelPathIDs];
          if ([cancelPathIDs containsObject:v11])
          {
            goto LABEL_14;
          }

          consumePathIDs2 = [(MTCrownFilterManager *)self consumePathIDs];
          v18 = [consumePathIDs2 containsObject:v11];

          if ((v18 & 1) == 0)
          {
            cancelPathIDs = [(MTCrownFilterManager *)self activePathIDs];
            [cancelPathIDs addObject:v11];
            goto LABEL_14;
          }
        }

        else
        {
          activePathIDs = [(MTCrownFilterManager *)self activePathIDs];
          [activePathIDs removeObject:v11];

          cancelPathIDs = [(MTCrownFilterManager *)self consumePathIDs];
          [cancelPathIDs removeObject:v11];
LABEL_14:
        }

        if ([(MTCrownFilterManager *)self touchIsNearCrown:v10])
        {
          crownIsActive = [(MTCrownFilterManager *)self crownIsActive];
        }

        else
        {
          crownIsActive = 0;
        }

        [MTCrownFilterManager secondsFromMachTime:mach_continuous_time() - [(MTCrownFilterManager *)self buttonDownMachTime]];
        v22 = v21;
        buttonDownMachTime = [(MTCrownFilterManager *)self buttonDownMachTime];
        v24 = v22 >= 0.5 || buttonDownMachTime == 0;
        v25 = !v24;
        if (!v24)
        {
          v26 = MTLoggingCrownFilterManager(buttonDownMachTime);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = v65;
            v87 = v22;
            _os_log_debug_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Cancel touch button timeout = %f s", buf, 0xCu);
          }
        }

        if (v13 == &dword_0 + 1)
        {
          v27 = (v12 >> 1) & 1 & (crownIsActive | v25);
          if ((v12 & 2) == 0 && crownIsActive == 1)
          {
            v28 = 1;
LABEL_35:
            consumePathIDs3 = [(MTCrownFilterManager *)self consumePathIDs];
            [consumePathIDs3 addObject:v11];

            activePathIDs2 = [(MTCrownFilterManager *)self activePathIDs];
            [activePathIDs2 removeObject:v11];

            if (!v27 || (v28 & 1) != 0)
            {
              v33 = [v75 containsObject:v10];
              [v10 setIntegerValue:0 forField:720905];
              [v10 setIntegerValue:0 forField:720904];
              [v10 setIntegerValue:v12 | 0x83 forField:720903];
              cancelPathIDs2 = [(MTCrownFilterManager *)self cancelPathIDs];
              [cancelPathIDs2 removeObject:v11];

              position = [v10 position];
              v37 = v36;
              v39 = v38;
              v40 = MTLoggingCrownFilterManager(position);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                unsignedIntegerValue = [v11 unsignedIntegerValue];
                *buf = 134218496;
                v87 = *&unsignedIntegerValue;
                v88 = 2048;
                v89 = v37;
                v90 = 2048;
                v91 = v39;
                _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "MTCrownFilterManager: Cancelling path id %lu at (%f, %f)", buf, 0x20u);
              }

              v71 += v33 ^ 1;
            }

            else
            {
              v30 = [v75 addObject:v10];
            }

LABEL_42:
            v42 = MTLoggingCrownFilterManager(v30);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              activePathIDs3 = [(MTCrownFilterManager *)self activePathIDs];
              allObjects = [activePathIDs3 allObjects];
              v67 = [allObjects componentsJoinedByString:{@", "}];
              cancelPathIDs3 = [(MTCrownFilterManager *)self cancelPathIDs];
              allObjects2 = [cancelPathIDs3 allObjects];
              v43 = [allObjects2 componentsJoinedByString:{@", "}];
              consumePathIDs4 = [(MTCrownFilterManager *)self consumePathIDs];
              allObjects3 = [consumePathIDs4 allObjects];
              v46 = [allObjects3 componentsJoinedByString:{@", "}];
              *buf = 138412802;
              v87 = *&v67;
              v88 = 2112;
              v89 = v43;
              v90 = 2112;
              v91 = v46;
              _os_log_debug_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Active = [%@], Cancel = [%@], Consume = [%@]", buf, 0x20u);
            }

            ++v76;

            v7 = v73;
            goto LABEL_45;
          }
        }

        else
        {
          v27 = 0;
        }

        cancelPathIDs4 = [(MTCrownFilterManager *)self cancelPathIDs];
        v28 = [cancelPathIDs4 containsObject:v11];

        if ((v28 & 1) != 0 || v27)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

LABEL_45:
      v9 = v9 + 1;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
  }

  while (v7);
LABEL_49:

  v47 = v75;
  if (v71 == v76 - [v75 count])
  {
    v48 = [eventCopy integerValueForField:720903];
    [eventCopy setIntegerValue:0 forField:720905];
    [eventCopy setIntegerValue:0 forField:720904];
    [eventCopy setIntegerValue:v48 | 0x83 forField:720903];
  }

  v49 = [v75 count];
  if (v49 == v76)
  {
    v50 = MTLoggingCrownFilterManager(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      [MTCrownFilterManager filterDigitizerEvent:v50];
    }

    v51 = eventCopy;
    eventCopy = 0;
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v51 = v75;
    v52 = [v51 countByEnumeratingWithState:&v77 objects:v85 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v78;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v78 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v77 + 1) + 8 * i);
          v57 = [v56 integerValueForField:720901];
          position2 = [v56 position];
          v60 = v59;
          v62 = v61;
          v63 = MTLoggingCrownFilterManager(position2);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v87 = *&v57;
            v88 = 2048;
            v89 = v60;
            v90 = 2048;
            v91 = v62;
            _os_log_debug_impl(&dword_0, v63, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Consuming path id %ld at (%f, %f)", buf, 0x20u);
          }

          [eventCopy removeEvent:v56];
        }

        v53 = [v51 countByEnumeratingWithState:&v77 objects:v85 count:16];
      }

      while (v53);
      v47 = v75;
    }
  }

  return eventCopy;
}

- (id)filterButtonEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 3)
  {
    v5 = [eventCopy integerValueForField:196608];
    v6 = [eventCopy integerValueForField:196609];
    v7 = [eventCopy integerValueForField:196610];
    if (v5 == &dword_C)
    {
      v8 = v7;
      if (v6 == (&stru_68.size + 5))
      {
        [(MTCrownFilterManager *)self setHelpButtonPressed:v7 == &dword_0 + 1];
      }

      else
      {
        if (v6 != &stru_20.vmsize)
        {
          goto LABEL_16;
        }

        [(MTCrownFilterManager *)self setMenuButtonPressed:v7 == &dword_0 + 1];
      }

      if (v8 == &dword_0 + 1)
      {
        cancelPathIDs = [(MTCrownFilterManager *)self cancelPathIDs];
        activePathIDs = [(MTCrownFilterManager *)self activePathIDs];
        [cancelPathIDs unionSet:activePathIDs];

        activePathIDs2 = [(MTCrownFilterManager *)self activePathIDs];
        [activePathIDs2 removeAllObjects];

        if (![(MTCrownFilterManager *)self buttonDownMachTime])
        {
          [(MTCrownFilterManager *)self setButtonDownMachTime:mach_continuous_time()];
        }
      }

      menuButtonPressed = [(MTCrownFilterManager *)self menuButtonPressed];
      if ((menuButtonPressed & 1) == 0)
      {
        menuButtonPressed = [(MTCrownFilterManager *)self helpButtonPressed];
        if ((menuButtonPressed & 1) == 0)
        {
          menuButtonPressed = [(MTCrownFilterManager *)self setButtonDownMachTime:0];
        }
      }

      v13 = MTLoggingCrownFilterManager(menuButtonPressed);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(MTCrownFilterManager *)self filterButtonEvent:v13];
      }
    }
  }

LABEL_16:

  return eventCopy;
}

- (void)updateScrollMotionAccumulator:(id)accumulator
{
  accumulatorCopy = accumulator;
  timestamp = [accumulatorCopy timestamp];
  v5 = 0.0;
  v6 = 0.0;
  if ([accumulatorCopy type] == 6)
  {
    [accumulatorCopy position];
    v6 = v7;
  }

  if (self->_scrollAccumulatorMachTime)
  {
    [MTCrownFilterManager secondsFromMachTime:timestamp - [(MTCrownFilterManager *)self scrollAccumulatorMachTime]];
    v5 = v8;
  }

  v9 = pow(0.95, v5 / 0.00800000038);
  [(MTCrownFilterManager *)self setScrollAccumulatorDistance:fabs(v6) + self->_scrollAccumulatorDistance * v9];
  [(MTCrownFilterManager *)self setScrollAccumulatorMachTime:timestamp];
}

- (void)filterButtonEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 activePathIDs];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [a1 cancelPathIDs];
  v7 = [v6 allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [a1 consumePathIDs];
  v10 = [v9 allObjects];
  v11 = [v10 componentsJoinedByString:{@", "}];
  *buf = 138412802;
  v14 = v5;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v11;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Active = [%@], Cancel = [%@], Consume = [%@]", buf, 0x20u);
}

@end