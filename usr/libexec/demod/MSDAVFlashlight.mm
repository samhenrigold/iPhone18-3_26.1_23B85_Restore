@interface MSDAVFlashlight
+ (id)sharedInstance;
- (BOOL)_setFlashlightLevel:(float)level;
- (BOOL)_turnPowerOn;
- (BOOL)flash:(unsigned int)flash;
- (MSDAVFlashlight)init;
- (void)_setFlashTimer:(unsigned int)timer;
- (void)_startFlash;
- (void)_stopFlash:(id)flash;
- (void)_turnPowerOff;
@end

@implementation MSDAVFlashlight

+ (id)sharedInstance
{
  if (qword_1001A5728 != -1)
  {
    sub_1000D0080();
  }

  v3 = qword_1001A5730;

  return v3;
}

- (MSDAVFlashlight)init
{
  v8.receiver = self;
  v8.super_class = MSDAVFlashlight;
  v2 = [(MSDAVFlashlight *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVFlashlight);
    flashlight = v2->_flashlight;
    v2->_flashlight = v3;

    v5 = dispatch_queue_create("MSD_DEVICE_FLASH_QUEUE", 0);
    flashQueue = v2->_flashQueue;
    v2->_flashQueue = v5;
  }

  return v2;
}

- (BOOL)flash:(unsigned int)flash
{
  v5 = +[AVFlashlight hasFlashlight];
  if (v5 && (v5 = [(MSDAVFlashlight *)self available], (v5 & 1) != 0))
  {
    if (!flash)
    {
      flash = 20;
    }

    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D0138(flash, v6);
    }

    objc_initWeak(&location, self);
    flashQueue = self->_flashQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100040670;
    block[3] = &unk_10016AB58;
    objc_copyWeak(&v10, &location);
    flashCopy = flash;
    dispatch_async(flashQueue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    return 1;
  }

  else
  {
    sub_1000D0094(v5);
    return 0;
  }
}

- (void)_setFlashTimer:(unsigned int)timer
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004074C;
  v3[3] = &unk_10016AB80;
  timerCopy = timer;
  v3[4] = self;
  dispatch_sync(&_dispatch_main_q, v3);
}

- (BOOL)_setFlashlightLevel:(float)level
{
  flashlight = self->_flashlight;
  v8 = 0;
  v4 = [(AVFlashlight *)flashlight setFlashlightLevel:&v8 withError:?];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    sub_1000D01C4(v5);
  }

  return v4;
}

- (BOOL)_turnPowerOn
{
  flashlight = self->_flashlight;
  v7 = 0;
  v3 = [(AVFlashlight *)flashlight turnPowerOnWithError:&v7];
  v4 = v7;
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    sub_1000D0294(v4);
  }

  return v3;
}

- (void)_turnPowerOff
{
  [(MSDAVFlashlight *)self _setFlashlightLevel:0.0];
  flashlight = self->_flashlight;

  [(AVFlashlight *)flashlight turnPowerOff];
}

- (void)_stopFlash:(id)flash
{
  if (!self->_flashDone)
  {
    self->_flashDone = 1;
    [(MSDAVFlashlight *)self _turnPowerOff];
  }
}

- (void)_startFlash
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[MSDAVFlashlight _startFlash]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s - INFO - Start flashing ...", &v7, 0xCu);
  }

  self->_flashDone = 0;
  _turnPowerOn = [(MSDAVFlashlight *)self _turnPowerOn];
  if (_turnPowerOn)
  {
    if (self->_flashDone)
    {
LABEL_8:
      v6 = sub_100063A54(_turnPowerOn);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315138;
        v8 = "[MSDAVFlashlight _startFlash]";
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s - INFO - Done flashing ...", &v7, 0xCu);
      }
    }

    else
    {
      while (1)
      {
        LODWORD(v5) = 1.0;
        if (![(MSDAVFlashlight *)self _setFlashlightLevel:v5])
        {
          break;
        }

        sleep(1u);
        if (![(MSDAVFlashlight *)self _setFlashlightLevel:0.0])
        {
          break;
        }

        _turnPowerOn = sleep(1u);
        if (self->_flashDone)
        {
          goto LABEL_8;
        }
      }

      [(MSDAVFlashlight *)self _stopFlash:0];
    }
  }
}

@end