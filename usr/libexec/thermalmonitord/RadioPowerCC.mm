@interface RadioPowerCC
- (RadioPowerCC)initWithRunLoopAndParams:(__CFRunLoop *)params withMitigationType:(int)type withParams:(__CFDictionary *)withParams;
- (unint64_t)convertDetailStringToValue:(__CFString *)value;
- (void)defaultAction;
@end

@implementation RadioPowerCC

- (RadioPowerCC)initWithRunLoopAndParams:(__CFRunLoop *)params withMitigationType:(int)type withParams:(__CFDictionary *)withParams
{
  v13.receiver = self;
  v13.super_class = RadioPowerCC;
  v6 = [(RadioCC *)&v13 initWithRunLoopAndParams:params withMitigationType:*&type withParams:?];
  v7 = v6;
  if (withParams && v6)
  {
    Value = CFDictionaryGetValue(withParams, @"mitigationDetails");
    if (Value)
    {
      v9 = Value;
      [(ComponentControl *)v7 setMitigationDetails:[(RadioPowerCC *)v7 convertDetailStringToValue:Value]];
      if (byte_1000AB2F8 == 1)
      {
        v10 = qword_1000AB718;
        if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
        {
          mitigationDetails = [(ComponentControl *)v7 mitigationDetails];
          *buf = 138412546;
          v15 = v9;
          v16 = 2048;
          v17 = mitigationDetails;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<Notice> detailString: %@ detailValue: %lld", buf, 0x16u);
        }
      }
    }

    else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000573CC(v7);
    }
  }

  return v7;
}

- (unint64_t)convertDetailStringToValue:(__CFString *)value
{
  Length = CFStringGetLength(value);
  if (Length == 4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(value, v5);
      if (v5 == 3)
      {
        v6 += CharacterAtIndex;
      }

      else
      {
        v6 = (v6 + CharacterAtIndex) << 8;
      }

      ++v5;
    }

    while (v5 != 4);
  }

  else
  {
    v8 = Length;
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100057448(value, v8, v9);
    }

    return 0;
  }

  return v6;
}

- (void)defaultAction
{
  if ([(ComponentControl *)self isCPMSControlEnabled])
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000574D0(self);
    }

    [(RadioCC *)self setCPMSMitigationState:1];
  }
}

@end