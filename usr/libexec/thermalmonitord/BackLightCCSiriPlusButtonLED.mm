@interface BackLightCCSiriPlusButtonLED
- (BOOL)findBacklightServices;
- (BackLightCCSiriPlusButtonLED)initWithParams:(__CFDictionary *)params;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)refreshFunctionalTelemetry;
- (void)setBrightnessKey:(id)key value:(int)value;
@end

@implementation BackLightCCSiriPlusButtonLED

- (BackLightCCSiriPlusButtonLED)initWithParams:(__CFDictionary *)params
{
  v6.receiver = self;
  v6.super_class = BackLightCCSiriPlusButtonLED;
  v3 = [(BackLightCC *)&v6 initWithParams:params];
  v4 = v3;
  if (v3)
  {
    *(v3 + 330) = -1;
    *(v3 + 338) = -1;
    *(v3 + 346) = 100;
    *(v3 + 334) = -1;
    *(v3 + 342) = -1;
    *(v3 + 350) = 100;
    [v3 setSolarBehaviorSuppressed:0];
  }

  return v4;
}

- (BOOL)findBacklightServices
{
  keys = @"backlight-control";
  values = kCFBooleanTrue;
  *(&self->super._solarDetectorPresent + 5) = 0;
  v3 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = v3;
  v17 = @"IOPropertyMatch";
  v4 = CFDictionaryCreate(kCFAllocatorDefault, &v17, &v16, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v3);
  existing = 0;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v4, &existing);
  v6 = 0;
  if (!MatchingServices)
  {
    if (*(&self->super._solarDetectorPresent + 5) > 1u)
    {
      v6 = 0;
    }

    else
    {
      v7 = IOIteratorNext(existing);
      *(&self->super._brightnessSystemClient + 4 * *(&self->super._solarDetectorPresent + 5) + 6) = v7;
      v6 = v7 != 0;
      if (v7)
      {
        do
        {
          if (byte_1000AB2F8 == 1)
          {
            v8 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(&self->super._solarDetectorPresent + 5);
              *buf = 67109120;
              v15 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<Notice> Found display no:%d", buf, 8u);
            }
          }

          v10 = ++*(&self->super._solarDetectorPresent + 5);
          if (v10 >= 2)
          {
            break;
          }

          v11 = IOIteratorNext(existing);
          *(&self->super._brightnessSystemClient + 4 * *(&self->super._solarDetectorPresent + 5) + 6) = v11;
        }

        while (v11);
      }
    }

    IOObjectRelease(existing);
  }

  return v6;
}

- (void)refreshFunctionalTelemetry
{
  selfCopy = self;
  v35.receiver = self;
  v35.super_class = BackLightCCSiriPlusButtonLED;
  [(BackLightCC *)&v35 refreshFunctionalTelemetry];
  v3 = 326;
  if (*(&selfCopy->super._solarDetectorPresent + 5))
  {
    v4 = 0;
    v5 = 346;
    v6 = 318;
    v7 = @"IODisplayParameters";
    for (i = selfCopy; ; i = (i + 4))
    {
      *(&i->super.super.super.super.isa + v5) = 0;
      v9 = sub_100005E68(v7, *(&i->super.super.super.super.isa + v6));
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDictionaryGetTypeID())
        {
          break;
        }
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_1000513F8(&v24, v25);
        if (!v10)
        {
          goto LABEL_34;
        }
      }

      else if (!v10)
      {
        goto LABEL_34;
      }

LABEL_33:
      CFRelease(v10);
LABEL_34:
      if (++v4 >= *(&selfCopy->super.super.super.super.isa + v3))
      {
        return;
      }
    }

    Value = CFDictionaryGetValue(v10, @"brightness");
    v13 = CFDictionaryGetValue(v10, @"BrightnessMilliNits");
    if (Value && (v23 = v13, v14 = selfCopy, v15 = v3, v16 = v5, v17 = v6, v18 = v7, v19 = CFGetTypeID(Value), v20 = v19 == CFDictionaryGetTypeID(), v7 = v18, v6 = v17, v5 = v16, v3 = v15, selfCopy = v14, v13 = v23, v20))
    {
      v34 = 0;
      if (sub_100002A20(Value, @"value", kCFNumberIntType, &v34 + 4) && sub_100002A20(Value, @"max", kCFNumberIntType, &v34))
      {
        v21 = v34;
        if (v34)
        {
          v21 = (100 * HIDWORD(v34) + v34 / 2) / v34;
        }

        *(&i->super.super.super.super.isa + v5) = v21;
        if (!v23)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051348(&v32, v33);
        if (!v23)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051374(&v30, v31);
      if (!v13)
      {
LABEL_31:
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_1000513CC(&v26, v27);
        }

        goto LABEL_33;
      }

LABEL_22:
      v22 = CFGetTypeID(v13);
      if (v22 == CFDictionaryGetTypeID())
      {
        if (!sub_100002A20(v13, @"value", kCFNumberIntType, i->gPowerServiceBL + 2) || (sub_100002A20(v13, @"max", kCFNumberIntType, &i->displayCount + 2) & 1) == 0)
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_1000513A0(&v28, v29);
          }

          *(i->gPowerServiceBL + 2) = -1;
          *(&i->displayCount + 2) = -1;
        }

        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (!v13)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }
}

- (void)setBrightnessKey:(id)key value:(int)value
{
  v4 = *&value;
  if (byte_1000AB2F8 == 1)
  {
    v7 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      keyCopy = key;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> BL set %@ to %d", &v16, 0x12u);
    }
  }

  v8 = [[NSNumber alloc] initWithInt:v4];
  v9 = [NSNumber alloc];
  if (v4 <= 15)
  {
    v10 = 15;
  }

  else
  {
    v10 = v4;
  }

  v11 = [v9 initWithInt:v10];
  v12 = v11;
  if (v8)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if ([*&self->super.currentPowerLevel setProperty:@"DisplayTypeSiri" forKey:@"DisplaySelect"])
    {
      if (([*&self->super.currentPowerLevel setProperty:v12 forKey:key] & 1) == 0)
      {
        v14 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_100051424(key, v14);
        }
      }
    }

    if ([*&self->super.currentPowerLevel setProperty:@"DisplayTypeIcon" forKey:@"DisplaySelect"])
    {
      if (([*&self->super.currentPowerLevel setProperty:v8 forKey:key] & 1) == 0)
      {
        v15 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
        {
          sub_10005149C(key, v15);
        }
      }
    }
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = BackLightCCSiriPlusButtonLED;
  return [(BackLightCC *)&v3 numberOfFields]+ 6;
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v9.receiver = self;
  v9.super_class = BackLightCCSiriPlusButtonLED;
  if ([(BackLightCC *)&v9 numberOfFields]<= index)
  {
    v7.receiver = self;
    v7.super_class = BackLightCCSiriPlusButtonLED;
    v6 = v3 - [(BackLightCC *)&v7 numberOfFields];
    if (v6 > 5)
    {
      return 0;
    }

    else
    {
      return off_100085280[v6];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = BackLightCCSiriPlusButtonLED;
    return [(BackLightCC *)&v8 copyHeaderForIndex:v3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v15.receiver = self;
  v15.super_class = BackLightCCSiriPlusButtonLED;
  if ([(BackLightCC *)&v15 numberOfFields]> index)
  {
    v14.receiver = self;
    v14.super_class = BackLightCCSiriPlusButtonLED;
    return [(BackLightCC *)&v14 copyFieldCurrentValueForIndex:v3];
  }

  v13.receiver = self;
  v13.super_class = BackLightCCSiriPlusButtonLED;
  numberOfFields = [(BackLightCC *)&v13 numberOfFields];
  result = 0;
  v7 = v3 - numberOfFields;
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          return result;
        }

        v8 = kCFAllocatorDefault;
        v9 = *(&self->_brightnessMilliNitsCurrent[1] + 2);
        return CFStringCreateWithFormat(v8, 0, @"%d", v9);
      }

      v8 = kCFAllocatorDefault;
      v10 = 338;
    }

    else
    {
      v8 = kCFAllocatorDefault;
      v10 = 330;
    }

    v12 = *(&self->super.super.super.super.isa + v10);
    goto LABEL_18;
  }

  if (v7 == 3)
  {
    v8 = kCFAllocatorDefault;
    v11 = 330;
LABEL_17:
    v12 = *(&self->super.super.super.super.isa + v11 + 4);
LABEL_18:
    v9 = ((v12 + 500) / 1000);
    return CFStringCreateWithFormat(v8, 0, @"%d", v9);
  }

  if (v7 == 4)
  {
    v8 = kCFAllocatorDefault;
    v11 = 338;
    goto LABEL_17;
  }

  if (v7 != 5)
  {
    return result;
  }

  v8 = kCFAllocatorDefault;
  v9 = *(self->_brightnessMilliNitsMaximum + 2);
  return CFStringCreateWithFormat(v8, 0, @"%d", v9);
}

@end