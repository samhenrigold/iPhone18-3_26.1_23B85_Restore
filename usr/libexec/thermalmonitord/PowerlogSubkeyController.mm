@interface PowerlogSubkeyController
- (id)cacheArray;
- (id)initForSubkey:(__CFString *)subkey;
- (void)logHIPStatusToPowerlogLite:(id)lite;
- (void)logToPowerlog:(__CFString *)powerlog;
- (void)logToPowerlogLite;
- (void)printPowerLogDictionary;
- (void)setIntValue:(int)value forKey:(__CFString *)key;
@end

@implementation PowerlogSubkeyController

- (id)cacheArray
{
  result = qword_1000AABC8;
  if (!qword_1000AABC8)
  {
    result = objc_alloc_init(NSMutableArray);
    qword_1000AABC8 = result;
  }

  return result;
}

- (id)initForSubkey:(__CFString *)subkey
{
  v6.receiver = self;
  v6.super_class = PowerlogSubkeyController;
  v4 = [(PowerlogSubkeyController *)&v6 init];
  if (v4)
  {
    v4->_state = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v4->_stateLastLogged = 0;
    v4->_subkey = subkey;
  }

  return v4;
}

- (void)setIntValue:(int)value forKey:(__CFString *)key
{
  valuePtr = value;
  if (key)
  {
    state = self->_state;
    if (state)
    {
      sub_100002FB4(state, key, kCFNumberIntType, &valuePtr);
    }
  }
}

- (void)logToPowerlog:(__CFString *)powerlog
{
  if (self->_subkey)
  {
    state = self->_state;
    if (state)
    {
      if (CFDictionaryGetCount(state) >= 1)
      {
        if (self->_stateLastLogged && [(__CFDictionary *)self->_state isEqualToDictionary:?])
        {
          if (byte_1000AB2F8 == 1)
          {
            v6 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              subkey = self->_subkey;
              v12 = 136315394;
              v13 = "[PowerlogSubkeyController logToPowerlog:]";
              v14 = 2112;
              v15 = subkey;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<Notice> %s: no change in subkey %@", &v12, 0x16u);
            }
          }
        }

        else if (PLShouldLogRegisteredEvent())
        {
          stateLastLogged = self->_stateLastLogged;
          if (stateLastLogged)
          {
            CFRelease(stateLastLogged);
          }

          self->_stateLastLogged = CFDictionaryCreateCopy(kCFAllocatorDefault, self->_state);
          if (powerlog)
          {
            CFDictionarySetValue(self->_state, @"Time", powerlog);
          }

          PLLogRegisteredEvent();
          if (byte_1000AB2F8 == 1)
          {
            v9 = qword_1000AB718;
            if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
            {
              v10 = self->_subkey;
              v11 = self->_state;
              v12 = 136315650;
              v13 = "[PowerlogSubkeyController logToPowerlog:]";
              v14 = 2112;
              v15 = v10;
              v16 = 2112;
              v17 = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> %s: logged subkey %@, dict %@", &v12, 0x20u);
            }
          }

          CFDictionaryRemoveValue(self->_state, @"Time");
        }
      }
    }
  }
}

- (void)printPowerLogDictionary
{
  if (byte_1000AB2F8 == 1)
  {
    v3 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      state = self->_state;
      v5 = 138412290;
      v6 = state;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "<Notice> %@", &v5, 0xCu);
    }
  }
}

- (void)logToPowerlogLite
{
  if (PLShouldLogRegisteredEvent())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    cacheArray = [(PowerlogSubkeyController *)self cacheArray];
    v4 = [cacheArray countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(cacheArray);
          }

          v8 = *(*(&v11 + 1) + 8 * v7);
          if (v8)
          {
            v15[0] = @"Time";
            v16[0] = [v8 objectAtIndex:0];
            v15[1] = @"thermalLevel";
            v16[1] = [v8 objectAtIndex:1];
            v15[2] = @"pressureLevel";
            v16[2] = [v8 objectAtIndex:2];
            [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
            PLLogRegisteredEvent();
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [cacheArray countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }

    [-[PowerlogSubkeyController cacheArray](self "cacheArray")];
  }

  else if (byte_1000AB2F8 == 1)
  {
    v9 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      subkey = self->_subkey;
      *buf = 138412290;
      v19 = subkey;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Notice> Denied to log to lite mode powerlog %@", buf, 0xCu);
    }
  }
}

- (void)logHIPStatusToPowerlogLite:(id)lite
{
  if (PLShouldLogRegisteredEvent())
  {
    v6[0] = @"Time";
    v7[0] = [lite objectAtIndex:0];
    v6[1] = @"status";
    v7[1] = [lite objectAtIndex:1];
    v6[2] = @"client";
    v7[2] = [lite objectAtIndex:2];
    [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
    PLLogRegisteredEvent();
  }

  else if (byte_1000AB2F8 == 1)
  {
    v4 = qword_1000AB718;
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Denied to log to lite mode powerlog", v5, 2u);
    }
  }
}

@end