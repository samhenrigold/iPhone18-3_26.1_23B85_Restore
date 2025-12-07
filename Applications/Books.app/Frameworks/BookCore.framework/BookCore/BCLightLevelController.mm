@interface BCLightLevelController
+ (id)sharedInstance;
+ (void)preWarm;
- (BCLightLevelController)init;
- (BOOL)_sensorAvailable;
- (BOOL)_sensorShouldBeAvailable;
- (BOOL)shouldMonitorLightLevel;
- (int64_t)_luxToLightLevel:(float)level;
- (int64_t)currentLightLevel;
- (void)_notifyLightLevelChange;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_updateCurrentLightLevel:(int64_t)level force:(BOOL)force;
- (void)_updateStatsAndLightLevelNow;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)dealloc;
- (void)emulateCurrentLightLevelChange:(int64_t)change;
- (void)removeObserver:(id)observer;
@end

@implementation BCLightLevelController

+ (void)preWarm
{
  v2 = +[BCLightLevelController sharedInstance];
  [v2 _startMonitoring];
}

+ (id)sharedInstance
{
  if (qword_342900 != -1)
  {
    sub_1E9EB0();
  }

  v3 = qword_3428F8;

  return v3;
}

- (BCLightLevelController)init
{
  v6.receiver = self;
  v6.super_class = BCLightLevelController;
  v2 = [(BCLightLevelController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BrightnessSystemClient);
    client = v2->_client;
    v2->_client = v3;

    v2->_emulatedLightLevel = 0;
    v2->_currentLightLevel = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(BCLightLevelController *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = BCLightLevelController;
  [(BCLightLevelController *)&v3 dealloc];
}

- (BOOL)_sensorAvailable
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E4530;
  block[3] = &unk_2C7FE0;
  block[4] = self;
  if (qword_342910 != -1)
  {
    dispatch_once(&qword_342910, block);
  }

  return byte_342908;
}

- (BOOL)_sensorShouldBeAvailable
{
  if (qword_342920 != -1)
  {
    sub_1E9EC4();
  }

  return byte_342918;
}

- (BOOL)shouldMonitorLightLevel
{
  _sensorAvailable = [(BCLightLevelController *)self _sensorAvailable];
  if (_sensorAvailable)
  {

    LOBYTE(_sensorAvailable) = [(BCLightLevelController *)self _sensorShouldBeAvailable];
  }

  return _sensorAvailable;
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];

  [(BCLightLevelController *)self _startMonitoring];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  [(NSMapTable *)self->_observers removeObjectForKey:?];
  if (![(NSMapTable *)self->_observers count])
  {
    [(BCLightLevelController *)self _stopMonitoring];
  }
}

- (int64_t)currentLightLevel
{
  result = self->_emulatedLightLevel;
  if (!result)
  {
    return self->_currentLightLevel;
  }

  return result;
}

- (void)emulateCurrentLightLevelChange:(int64_t)change
{
  currentLightLevel = [(BCLightLevelController *)self currentLightLevel];
  self->_emulatedLightLevel = change;
  if (currentLightLevel != [(BCLightLevelController *)self currentLightLevel])
  {

    [(BCLightLevelController *)self _notifyLightLevelChange];
  }
}

- (void)_updateCurrentLightLevel:(int64_t)level force:(BOOL)force
{
  currentLightLevel = [(BCLightLevelController *)self currentLightLevel];
  if (force || level && self->_currentLightLevel != level)
  {
    self->_currentLightLevel = level;
  }

  currentLightLevel2 = [(BCLightLevelController *)self currentLightLevel];
  if (currentLightLevel != currentLightLevel2)
  {
    v9 = _BCLightLevelLog(currentLightLevel2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (currentLightLevel == 1)
      {
        v10 = @"regular";
      }

      else
      {
        v10 = @"unknown";
      }

      if (currentLightLevel == 2)
      {
        v10 = @"low";
      }

      v11 = v10;
      if (level == 1)
      {
        v12 = @"regular";
      }

      else
      {
        v12 = @"unknown";
      }

      if (level == 2)
      {
        v12 = @"low";
      }

      v13 = v12;
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "_notifyLightLevelChange old:%@ new: %@", &v14, 0x16u);
    }

    [(BCLightLevelController *)self _notifyLightLevelChange];
  }
}

- (void)_notifyLightLevelChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"BCLightLevelChangedNotification" object:self];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (int64_t)_luxToLightLevel:(float)level
{
  if (level < 0.0)
  {
    return 0;
  }

  if (level <= 2.5)
  {
    return 2;
  }

  return level >= 20.0;
}

- (void)_updateStatsAndLightLevelNow
{
  if ([(BCLightLevelController *)self shouldMonitorLightLevel])
  {
    v3 = [(BrightnessSystemClient *)self->_client copyPropertyForKey:@"TrustedLux"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = isKindOfClass;
    v6 = _BCLightLevelLog(isKindOfClass);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "_updateStatsAndLightLevelNow: lux value: %@", &v12, 0xCu);
      }

      [v3 floatValue];
      v8 = [(BCLightLevelController *)self _luxToLightLevel:?];
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      [(BCLightLevelController *)self _updateCurrentLightLevel:v9 force:1];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Object for 'kCBTrustedLux' was '%@' and not NSNumber like expected", &v12, 0xCu);
      }
    }
  }
}

- (void)_startMonitoring
{
  if (!self->_monitoring && [(BCLightLevelController *)self shouldMonitorLightLevel])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BCShouldOverrideNightMode"];

    client = self->_client;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E4E88;
    v8[3] = &unk_2CD2E0;
    v9 = v4;
    v8[4] = self;
    [(BrightnessSystemClient *)client registerNotificationBlock:v8 forProperties:&off_2EBDC0];
    self->_monitoring = 1;
    v6 = _BCLightLevelLog([(BCLightLevelController *)self _updateStatsAndLightLevelNow]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Light Level Monitoring Started", v7, 2u);
    }
  }
}

- (void)_stopMonitoring
{
  client = self->_client;
  if (client)
  {
    v4 = _BCLightLevelLog([(BrightnessSystemClient *)client registerNotificationBlock:0 forProperties:0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Light Level Monitoring Stopped", v5, 2u);
    }
  }

  self->_monitoring = 0;
}

@end