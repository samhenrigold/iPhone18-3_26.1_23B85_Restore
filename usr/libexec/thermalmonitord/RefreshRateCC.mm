@interface RefreshRateCC
- (RefreshRateCC)initWithParams:(__CFDictionary *)params;
- (__CFString)copyFieldCurrentValueForIndex:(int)index;
- (__CFString)copyHeaderForIndex:(int)index;
- (int)numberOfFields;
- (void)defaultAction;
- (void)initRefreshRateTable:(__CFArray *)table;
@end

@implementation RefreshRateCC

- (RefreshRateCC)initWithParams:(__CFDictionary *)params
{
  v7.receiver = self;
  v7.super_class = RefreshRateCC;
  v4 = [(ComponentControl *)&v7 initWithCC:7];
  v5 = v4;
  if (v4)
  {
    *(&v4->super.currentPower + 4) = 0;
    *(&v4->super.currentPower + 5) = 0;
    v4->refreshRateLevelDown[1] = 100;
    v4->refreshRateLevelDown[0] = 100;
    *&v4->super.allowLIOverride = 100;
    v4->super.super.nameofComponent = CFStringCreateWithFormat(0, 0, @"%d RefreshRate ", 7);
    v5->super.previousValue = v5->super.currentLoadingIndex;
    v5->super.releaseMaxLI = 2;
    sub_100002A20(params, @"MaxReleaseRate", kCFNumberIntType, &v5->super.releaseMaxLI);
  }

  return v5;
}

- (void)defaultAction
{
  previousValue = self->super.previousValue;
  v4 = *(&self->super.currentPower + 5);
  if (previousValue > *(&self->super.currentPower + v4 + 6))
  {
    if (!*(&self->super.currentPower + 5))
    {
      goto LABEL_8;
    }

    v5 = -1;
    goto LABEL_7;
  }

  if (previousValue < self->refreshRateLevels[v4] && *(&self->super.currentPower + 4) - 1 > v4)
  {
    v5 = 1;
LABEL_7:
    *(&self->super.currentPower + 5) = v4 + v5;
  }

LABEL_8:
  self->refreshRateLevelDown[1] = self->refreshRateLevelDown[0];
  v6 = self->refreshRateLevelUp[*(&self->super.currentPower + 5)];
  self->refreshRateLevelDown[0] = v6;
  if (v6 != self->refreshRateLevelDown[1])
  {
    v7 = IOMobileFramebufferSetParameter();
    if (v7)
    {
      v8 = v7;
      v9 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100052454(v8, v9);
      }
    }

    else if (byte_1000AB2F8 == 1)
    {
      v10 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->refreshRateLevelDown[0];
        *buf = 67109120;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> set refresh rate: %d", buf, 8u);
      }
    }
  }
}

- (void)initRefreshRateTable:(__CFArray *)table
{
  if (table && (v5 = CFGetTypeID(table), v5 == CFArrayGetTypeID()))
  {
    v18 = 0;
    valuePtr = 0;
    Count = CFArrayGetCount(table);
    *(&self->super.currentPower + 4) = Count;
    if (Count)
    {
      v7 = 0;
      selfCopy = self;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(table, v7);
        if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == CFDictionaryGetTypeID()))
        {
          Value = CFDictionaryGetValue(v10, @"up");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
            *(&selfCopy->super.currentPower + 6) = valuePtr;
          }

          v13 = CFDictionaryGetValue(v10, @"down");
          if (v13)
          {
            CFNumberGetValue(v13, kCFNumberSInt32Type, &v18);
            selfCopy->refreshRateLevels[0] = v18;
          }

          v14 = CFDictionaryGetValue(v10, @"level");
          if (v14)
          {
            CFNumberGetValue(v14, kCFNumberSInt32Type, &v18 + 4);
            selfCopy->refreshRateLevelUp[0] = BYTE4(v18);
          }
        }

        else
        {
          v15 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v20 = v7;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "<Error> Missing Refresh Rate Dictionary %d", buf, 8u);
          }
        }

        ++v7;
        selfCopy = (selfCopy + 1);
      }

      while (v7 < *(&self->super.currentPower + 4));
    }
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      self->refreshRateLevelUp[i] = 100;
      self->refreshRateLevels[i] = 100;
      *(&self->super.currentPower + i + 6) = 100;
    }

    *(&self->super.currentPower + 4) = 4;
  }
}

- (int)numberOfFields
{
  v3.receiver = self;
  v3.super_class = RefreshRateCC;
  return [(ComponentControl *)&v3 numberOfFields];
}

- (__CFString)copyHeaderForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RefreshRateCC;
  if ([(ComponentControl *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = RefreshRateCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return @"RefreshRate - fps";
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RefreshRateCC;
    return [(ComponentControl *)&v7 copyHeaderForIndex:v3];
  }
}

- (__CFString)copyFieldCurrentValueForIndex:(int)index
{
  v3 = *&index;
  v8.receiver = self;
  v8.super_class = RefreshRateCC;
  if ([(ComponentControl *)&v8 numberOfFields]<= index)
  {
    v6.receiver = self;
    v6.super_class = RefreshRateCC;
    if ([(ComponentControl *)&v6 numberOfFields]== v3)
    {
      return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", self->refreshRateLevelDown[2]);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = RefreshRateCC;
    return [(ComponentControl *)&v7 copyFieldCurrentValueForIndex:v3];
  }
}

@end