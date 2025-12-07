@interface ATAudioSessionClientImpl
- (ATAudioSessionClientImpl)initWithSession:(id)session;
- (ATAudioSessionClientImpl)initWithStrongSession:(id)session;
- (AVAudioSession)avas;
- (BOOL)isValid;
- (id).cxx_construct;
- (int)AudioSessionAddPropertyListenerImpl:(unsigned int)impl userProc:(void *)proc userData:(void *)data;
- (int)AudioSessionGetPropertyImpl:(unsigned int)impl size:(unsigned int *)size data:(void *)data;
- (int)AudioSessionGetPropertySizeImpl:(unsigned int)impl size:(unsigned int *)size;
- (int)AudioSessionRemovePropertyListenerImpl:(unsigned int)impl;
- (int)AudioSessionRemovePropertyListenerWithUserDataImpl:(unsigned int)impl userProc:(void *)proc userData:(void *)data;
- (int)AudioSessionSetActiveImpl:(unsigned __int8)impl flags:(unsigned int)flags;
- (int)AudioSessionSetPropertyImpl:(unsigned int)impl size:(unsigned int)size data:(const void *)data;
- (int)resetClientConfiguration;
- (int)setClientConfiguration:(__CFRunLoop *)configuration runLoopMode:(__CFString *)mode listenerProc:(void *)proc userData:(void *)data;
- (void)addAVAudioSessionKVOObservers:(unsigned int)observers session:(id)session;
- (void)addNSNotificationListenerFor:(id)for session:(id)session block:(id)block;
- (void)addNSNotificationListenerFor:(id)for session:(id)session selector:(SEL)selector;
- (void)callPropertyListeners:(unsigned int)listeners data:(id)data;
- (void)handleInterruption:(id)interruption;
- (void)handleRouteChange:(id)change;
- (void)handleServerDeath:(id)death;
- (void)handleServerReset:(id)reset;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAVAudioSessionKVOObservers:(unsigned int)observers;
@end

@implementation ATAudioSessionClientImpl

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  *(self + 9) = 0;
  *(self + 7) = 0;
  *(self + 8) = self + 72;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  return self;
}

- (void)callPropertyListeners:(unsigned int)listeners data:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!self->_clientRunLoop.mCFObject || !self->_clientRunLoopMode.mObject.mCFObject)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "ATAudioSessionClientImpl.mm";
      v18 = 1024;
      v19 = 702;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to call property listener: Either clientRunLoop or clientRunLoopMode is invalid", location, 0x12u);
    }

    goto LABEL_11;
  }

  if (!self->_propertyListeners.__ptr_)
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v9 = *kAudioSessionClientLogSubsystem;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "ATAudioSessionClientImpl.mm";
      v18 = 1024;
      v19 = 708;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: 'propertyListener' is invalid", location, 0x12u);
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_initWeak(location, self);
  mCFObject = self->_clientRunLoop.mCFObject;
  v8 = self->_clientRunLoopMode.mObject.mCFObject;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__ATAudioSessionClientImpl_callPropertyListeners_data___block_invoke;
  v12[3] = &unk_1E7ECDEE8;
  objc_copyWeak(&v15, location);
  listenersCopy = listeners;
  v13 = dataCopy;
  selfCopy = self;
  CFRunLoopPerformBlock(mCFObject, v8, v12);
  CFRunLoopWakeUp(self->_clientRunLoop.mCFObject);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_12:
}

void __55__ATAudioSessionClientImpl_callPropertyListeners_data___block_invoke(uint64_t a1)
{
  v17[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 56);
  if (v4 <= 1684628835)
  {
    if (v4 > 1667788642)
    {
      if (v4 != 1667788643)
      {
        if (v4 != 1667788662)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }
    }

    else if (v4 != 1634296182)
    {
      v5 = 1667787107;
      goto LABEL_15;
    }

LABEL_16:
    v15 = [*(a1 + 32) unsignedIntValue];
    AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 4, &v15);
    goto LABEL_17;
  }

  if (v4 <= 1768387426)
  {
    if (v4 == 1684628836)
    {
      AudioSessionPropertyListeners::CallPropertyListeners(WeakRetained[4], 1684628836, 4, 0);
      goto LABEL_17;
    }

    v5 = 1768382838;
    goto LABEL_15;
  }

  if (v4 == 1768387427)
  {
LABEL_12:
    [*(a1 + 32) floatValue];
    v15 = v6;
    AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 4, &v15);
    goto LABEL_17;
  }

  if (v4 == 1919902568)
  {
    v7 = objc_loadWeakRetained((*(a1 + 40) + 8));
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D6D8]];
      v10 = [ATAudioSessionUtils getRouteDescriptionFromAVASRouteDescription:v9];

      v11 = [v8 currentRoute];
      v12 = [ATAudioSessionUtils getRouteDescriptionFromAVASRouteDescription:v11];

      v16[0] = @"OutputDeviceDidChange_Reason";
      v13 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E698D6E0]];
      v17[0] = v13;
      v17[1] = v10;
      v16[1] = @"ActiveAudioRouteDidChange_OldDetailedRoute";
      v16[2] = @"ActiveAudioRouteDidChange_NewDetailedRoute";
      v17[2] = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

      AudioSessionPropertyListeners::CallPropertyListeners(v3[4], *(a1 + 56), 8, v14);
    }

    goto LABEL_17;
  }

  v5 = 1768846450;
LABEL_15:
  if (v4 == v5)
  {
    goto LABEL_16;
  }

LABEL_17:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v13 = [ATAudioSessionUtils getAudioSessionProperty:pathCopy];
    v14 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [(ATAudioSessionClientImpl *)self callPropertyListeners:v13 data:v14];
  }
}

- (void)handleServerReset:(id)reset
{
  v10 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  if (kAudioSessionClientLogSubsystem)
  {
    v4 = *kAudioSessionClientLogSubsystem;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "ATAudioSessionClientImpl.mm";
    v8 = 1024;
    v9 = 683;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server reset notification received", &v6, 0x12u);
  }

LABEL_8:
}

- (void)handleServerDeath:(id)death
{
  v11 = *MEMORY[0x1E69E9840];
  deathCopy = death;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "ATAudioSessionClientImpl.mm";
    v9 = 1024;
    v10 = 675;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Server death notification received", &v7, 0x12u);
  }

LABEL_8:
  [(ATAudioSessionClientImpl *)self callPropertyListeners:1684628836 data:0];
  [(ATAudioSessionClientImpl *)self resetClientConfiguration];
}

- (void)handleRouteChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [changeCopy userInfo];
    v17 = 136315650;
    v18 = "ATAudioSessionClientImpl.mm";
    v19 = 1024;
    v20 = 649;
    v21 = 2112;
    v22 = userInfo;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change received %@", &v17, 0x1Cu);
  }

LABEL_8:
  if (changeCopy)
  {
    userInfo2 = [changeCopy userInfo];
    v10 = userInfo2;
    if (!userInfo2)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "ATAudioSessionClientImpl.mm";
        v19 = 1024;
        v20 = 660;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to post route change:Invalid notification info", &v17, 0x12u);
      }

      goto LABEL_26;
    }

    v11 = [userInfo2 objectForKey:*MEMORY[0x1E698D6E0]];
    v12 = v11 == 0;

    if (v12)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v13 = *kAudioSessionClientLogSubsystem;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "ATAudioSessionClientImpl.mm";
        v19 = 1024;
        v20 = 666;
        _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d nil route change reason", &v17, 0x12u);
      }
    }

LABEL_25:
    [(ATAudioSessionClientImpl *)self callPropertyListeners:1919902568 data:v10];
LABEL_26:
  }
}

- (void)handleInterruption:(id)interruption
{
  v31 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [interruptionCopy userInfo];
    *buf = 136315650;
    v26 = "ATAudioSessionClientImpl.mm";
    v27 = 1024;
    v28 = 595;
    v29 = 2112;
    v30 = userInfo;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption received %@", buf, 0x1Cu);
  }

LABEL_8:
  if (interruptionCopy)
  {
    userInfo2 = [interruptionCopy userInfo];
    v10 = userInfo2;
    if (userInfo2)
    {
      v11 = [userInfo2 objectForKey:*MEMORY[0x1E698D580]];
      unsignedLongValue = [v11 unsignedLongValue];
      if (unsignedLongValue)
      {
        v13 = unsignedLongValue == 1;
      }

      else
      {
        v14 = [v10 objectForKey:*MEMORY[0x1E698D568]];
        -[ATAudioSessionClientImpl setInterruptionType:](self, "setInterruptionType:", [v14 unsignedIntValue]);

        v13 = 0;
      }

      objc_initWeak(buf, self);
      if ([(ATAudioSessionClientImpl *)self clientInterruptionListenerProc])
      {
        mCFObject = self->_clientRunLoop.mCFObject;
        v16 = self->_clientRunLoopMode.mObject.mCFObject;
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __47__ATAudioSessionClientImpl_handleInterruption___block_invoke;
        v22 = &unk_1E7ECDEC0;
        objc_copyWeak(&v23, buf);
        v24 = v13;
        CFRunLoopPerformBlock(mCFObject, v16, &v19);
        objc_destroyWeak(&v23);
      }

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v13, v19, v20, v21, v22}];
      [(ATAudioSessionClientImpl *)self callPropertyListeners:1768846450 data:v17];

      objc_destroyWeak(buf);
    }

    else
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v11 = *kAudioSessionClientLogSubsystem;
        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "ATAudioSessionClientImpl.mm";
        v27 = 1024;
        v28 = 606;
        _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to post interruption:Invalid notification info", buf, 0x12u);
      }
    }

LABEL_20:
  }
}

void __47__ATAudioSessionClientImpl_handleInterruption___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    (*(WeakRetained + 14))(*(WeakRetained + 15), *(a1 + 40));
  }
}

- (void)removeAVAudioSessionKVOObservers:(unsigned int)observers
{
  v3 = *&observers;
  v18 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "ATAudioSessionClientImpl.mm";
    v14 = 1024;
    v15 = 568;
    v16 = 1024;
    v17 = v3;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing KVO for %d", &v12, 0x18u);
  }

LABEL_8:
  v7 = [ATAudioSessionUtils getAVASProperty:v3];
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakSession);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained removeObserver:self forKeyPath:v7 context:0];
    }
  }

  else
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v10 = *kAudioSessionClientLogSubsystem;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = "ATAudioSessionClientImpl.mm";
      v14 = 1024;
      v15 = 572;
      v16 = 1024;
      v17 = v3;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempt to remove KVO for unsupported property %d", &v12, 0x18u);
    }
  }

LABEL_18:
}

- (void)addAVAudioSessionKVOObservers:(unsigned int)observers session:(id)session
{
  v4 = *&observers;
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (kAudioSessionClientLogSubsystem)
  {
    v7 = *kAudioSessionClientLogSubsystem;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "ATAudioSessionClientImpl.mm";
    v14 = 1024;
    v15 = 555;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding KVO for %d", &v12, 0x18u);
  }

LABEL_8:
  v9 = [ATAudioSessionUtils getAVASProperty:v4];
  if (v9)
  {
    [sessionCopy addObserver:self forKeyPath:v9 options:3 context:0];
  }

  else
  {
    if (kAudioSessionClientLogSubsystem)
    {
      v10 = *kAudioSessionClientLogSubsystem;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "ATAudioSessionClientImpl.mm";
      v14 = 1024;
      v15 = 559;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Attempt to add KVO for unsupported property %d", &v12, 0x18u);
    }
  }

LABEL_17:
}

- (void)addNSNotificationListenerFor:(id)for session:(id)session block:(id)block
{
  forCopy = for;
  sessionCopy = session;
  blockCopy = block;
  std::string::basic_string[abi:ne200100]<0>(__p, [forCopy UTF8String]);
  left = self->_newNotificationCenterObservers.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  p_end_node = &self->_newNotificationCenterObservers.__tree_.__end_node_;
  do
  {
    v13 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&left->_propertyListeners.__ptr_, __p);
    if ((v13 & 0x80u) == 0)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + ((v13 >> 4) & 8));
  }

  while (left);
  if (p_end_node == &self->_newNotificationCenterObservers.__tree_.__end_node_ || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &p_end_node->_propertyListeners.__ptr_) & 0x80) != 0)
  {
LABEL_8:
    operator new();
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)addNSNotificationListenerFor:(id)for session:(id)session selector:(SEL)selector
{
  forCopy = for;
  sessionCopy = session;
  std::string::basic_string[abi:ne200100]<0>(v12, [forCopy UTF8String]);
  left = self->_oldNotificationCenterObservers.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  p_end_node = &self->_oldNotificationCenterObservers.__tree_.__end_node_;
  do
  {
    v11 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&left->_propertyListeners.__ptr_, v12);
    if ((v11 & 0x80u) == 0)
    {
      p_end_node = left;
    }

    left = *(&left->super.isa + ((v11 >> 4) & 8));
  }

  while (left);
  if (p_end_node == &self->_oldNotificationCenterObservers.__tree_.__end_node_ || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12, &p_end_node->_propertyListeners.__ptr_) & 0x80) != 0)
  {
LABEL_8:
    operator new();
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }
}

- (int)AudioSessionRemovePropertyListenerWithUserDataImpl:(unsigned int)impl userProc:(void *)proc userData:(void *)data
{
  v7 = *&impl;
  v31 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v9 = *kAudioSessionClientLogSubsystem;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "ATAudioSessionClientImpl.mm";
    v29 = 1024;
    v30 = 491;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioSessionRemovePropertyListenerWithUserData", buf, 0x12u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(buf, v7);
  if (buf[0])
  {
    ptr = self->_propertyListeners.__ptr_;
    os_unfair_recursive_lock_lock_with_options();
    if (v7 == -1)
    {
      AudioSessionPropertyListeners::RemovePropertyListenersForAllPropertiesImp(ptr);
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      AudioSessionPropertyListeners::RemovePropertyListenerImp(ptr, v7, proc, data);
      os_unfair_recursive_lock_unlock();
      v11 = 0;
      if (v7 == 1684628836 || v7 == 1768846450 || v7 == 1919902568)
      {
        return v11;
      }
    }

    v15 = self->_propertyListeners.__ptr_;
    os_unfair_recursive_lock_lock_with_options();
    v16 = *v15;
    v17 = *(v15 + 1);
    if (*v15 == v17)
    {
      os_unfair_recursive_lock_unlock();
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = *v16;
        v16 += 6;
        if (v19 == v7)
        {
          ++v18;
        }
      }

      while (v16 != v17);
      os_unfair_recursive_lock_unlock();
      if (v18)
      {
        return 0;
      }
    }

    [(ATAudioSessionClientImpl *)self removeAVAudioSessionKVOObservers:v7];
    return 0;
  }

  v11 = 2003329396;
  if (kAudioSessionClientLogSubsystem)
  {
    v12 = *kAudioSessionClientLogSubsystem;
    if (!v12)
    {
      return v11;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315650;
    v22 = "ATAudioSessionClientImpl.mm";
    v23 = 1024;
    v24 = 499;
    v25 = 1024;
    v26 = v7;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: property %d does not support listening", &v21, 0x18u);
  }

  return v11;
}

- (int)AudioSessionRemovePropertyListenerImpl:(unsigned int)impl
{
  v3 = *&impl;
  v24 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v21 = "ATAudioSessionClientImpl.mm";
    v22 = 1024;
    v23 = 449;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioSessionRemovePropertyListener", buf, 0x12u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(buf, v3);
  if (buf[0])
  {
    ptr = self->_propertyListeners.__ptr_;
    if (ptr)
    {
      os_unfair_recursive_lock_lock_with_options();
      AudioSessionPropertyListeners::RemoveAllPropertyListenersImp(ptr, v3);
      os_unfair_recursive_lock_unlock();
      v7 = 0;
      if (v3 != 1684628836 && v3 != 1768846450 && v3 != 1919902568)
      {
        [(ATAudioSessionClientImpl *)self removeAVAudioSessionKVOObservers:v3];
        return 0;
      }
    }

    else
    {
      v7 = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v11 = *kAudioSessionClientLogSubsystem;
        if (!v11)
        {
          return v7;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "ATAudioSessionClientImpl.mm";
        v16 = 1024;
        v17 = 463;
        _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: 'propertyListener' is invalid", &v14, 0x12u);
      }
    }
  }

  else
  {
    v7 = 2003329396;
    if (kAudioSessionClientLogSubsystem)
    {
      v8 = *kAudioSessionClientLogSubsystem;
      if (!v8)
      {
        return v7;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "ATAudioSessionClientImpl.mm";
      v16 = 1024;
      v17 = 457;
      v18 = 1024;
      v19 = v3;
      _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: property %d does not support listening", &v14, 0x18u);
    }
  }

  return v7;
}

- (int)AudioSessionAddPropertyListenerImpl:(unsigned int)impl userProc:(void *)proc userData:(void *)data
{
  v7 = *&impl;
  v43 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v9 = *kAudioSessionClientLogSubsystem;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v40 = "ATAudioSessionClientImpl.mm";
    v41 = 1024;
    v42 = 333;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioSessionAddPropertyListener", buf, 0x12u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  if (!WeakRetained)
  {
    v12 = 560557673;
    if (kAudioSessionClientLogSubsystem)
    {
      v14 = *kAudioSessionClientLogSubsystem;
      if (!v14)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "ATAudioSessionClientImpl.mm";
      v41 = 1024;
      v42 = 339;
      _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: session no longer valid", buf, 0x12u);
    }

    goto LABEL_62;
  }

  asPropertyInfo::GetPropertyInfo(buf, v7);
  if (buf[0])
  {
    if (proc)
    {
      ptr = self->_propertyListeners.__ptr_;
      if (ptr)
      {
        os_unfair_recursive_lock_lock_with_options();
        AudioSessionPropertyListeners::AddPropertyListenerImp(ptr, v7, proc, data);
        os_unfair_recursive_lock_unlock();
        objc_initWeak(location, self);
        switch(v7)
        {
          case 0x64696564:
            if (UseNewNotifications(void)::once != -1)
            {
              dispatch_once(&UseNewNotifications(void)::once, &__block_literal_global_232);
            }

            v22 = *MEMORY[0x1E698D5A8];
            if (UseNewNotifications(void)::sUseNewNotifications == 1)
            {
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_3;
              v28[3] = &unk_1E7ECDE98;
              v17 = &v29;
              objc_copyWeak(&v29, location);
              [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:v22 session:WeakRetained block:v28];
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_4;
              v26[3] = &unk_1E7ECDE98;
              objc_copyWeak(&v27, location);
              [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D5B8] session:WeakRetained block:v26];
              objc_destroyWeak(&v27);
              goto LABEL_51;
            }

            [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D5A8] session:WeakRetained selector:sel_handleServerDeath_];
            v16 = *MEMORY[0x1E698D5B8];
            v24 = &selRef_handleServerReset_;
            break;
          case 0x696E7472:
            if (UseNewNotifications(void)::once != -1)
            {
              dispatch_once(&UseNewNotifications(void)::once, &__block_literal_global_232);
            }

            v16 = *MEMORY[0x1E698D550];
            if (UseNewNotifications(void)::sUseNewNotifications == 1)
            {
              v30[0] = MEMORY[0x1E69E9820];
              v30[1] = 3221225472;
              v30[2] = __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_2;
              v30[3] = &unk_1E7ECDE98;
              v17 = &v31;
              objc_copyWeak(&v31, location);
              [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:v16 session:WeakRetained block:v30];
              goto LABEL_51;
            }

            v24 = &selRef_handleInterruption_;
            break;
          case 0x726F6368:
            if (UseNewNotifications(void)::once != -1)
            {
              dispatch_once(&UseNewNotifications(void)::once, &__block_literal_global_232);
            }

            v16 = *MEMORY[0x1E698D6C8];
            if (UseNewNotifications(void)::sUseNewNotifications == 1)
            {
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke;
              v32[3] = &unk_1E7ECDE98;
              v17 = &v33;
              objc_copyWeak(&v33, location);
              [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:v16 session:WeakRetained block:v32];
LABEL_51:
              objc_destroyWeak(v17);
LABEL_61:
              objc_destroyWeak(location);
              v12 = 0;
              goto LABEL_62;
            }

            v24 = &selRef_handleRouteChange_;
            break;
          default:
            [(ATAudioSessionClientImpl *)self addAVAudioSessionKVOObservers:v7 session:WeakRetained];
            goto LABEL_61;
        }

        [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:v16 session:WeakRetained selector:*v24];
        goto LABEL_61;
      }

      v12 = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v20 = *kAudioSessionClientLogSubsystem;
        if (!v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "ATAudioSessionClientImpl.mm";
        v35 = 1024;
        v36 = 359;
        _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: 'propertyListener' is invalid", location, 0x12u);
      }
    }

    else
    {
      v12 = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v20 = *kAudioSessionClientLogSubsystem;
        if (!v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *location = 136315394;
        *&location[4] = "ATAudioSessionClientImpl.mm";
        v35 = 1024;
        v36 = 353;
        _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: nil client proc", location, 0x12u);
      }
    }

    goto LABEL_62;
  }

  v12 = 2003329396;
  if (kAudioSessionClientLogSubsystem)
  {
    v13 = *kAudioSessionClientLogSubsystem;
    if (!v13)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *location = 136315650;
    *&location[4] = "ATAudioSessionClientImpl.mm";
    v35 = 1024;
    v36 = 347;
    v37 = 1024;
    v38 = v7;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Failed: property %d does not support listening", location, 0x18u);
  }

LABEL_62:
  return v12;
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleRouteChange:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleInterruption:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleServerDeath:v5];
  }
}

void __82__ATAudioSessionClientImpl_AudioSessionAddPropertyListenerImpl_userProc_userData___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleServerReset:v5];
  }
}

- (int)AudioSessionGetPropertySizeImpl:(unsigned int)impl size:(unsigned int *)size
{
  v13 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v6 = *kAudioSessionClientLogSubsystem;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "ATAudioSessionClientImpl.mm";
    v11 = 1024;
    v12 = 322;
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioSessionGetPropertySizeImpl", &v9, 0x12u);
  }

LABEL_8:
  asPropertyInfo::GetPropertyInfo(&v9, impl);
  *size = v10;
  return 0;
}

- (int)AudioSessionSetPropertyImpl:(unsigned int)impl size:(unsigned int)size data:(const void *)data
{
  v6 = *&size;
  v7 = *&impl;
  v19 = *MEMORY[0x1E69E9840];
  if (!kAudioSessionClientLogSubsystem)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_6:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "ATAudioSessionClientImpl.mm";
      v17 = 1024;
      v18 = 310;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioSessionSetProperty", &v15, 0x12u);
    }

    if (data)
    {
      return [(ATAudioSessionPropertyManager *)self->_propertyManager SetProperty:v7 size:v6 data:data];
    }

    goto LABEL_9;
  }

  v9 = *kAudioSessionClientLogSubsystem;
  if (v9)
  {
    goto LABEL_6;
  }

  if (data)
  {
    return [(ATAudioSessionPropertyManager *)self->_propertyManager SetProperty:v7 size:v6 data:data];
  }

LABEL_9:
  v10 = 2003329396;
  if (kAudioSessionClientLogSubsystem)
  {
    v12 = *kAudioSessionClientLogSubsystem;
    if (!v12)
    {
      return v10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "ATAudioSessionClientImpl.mm";
    v17 = 1024;
    v18 = 313;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid data input", &v15, 0x12u);
  }

  return v10;
}

- (int)AudioSessionGetPropertyImpl:(unsigned int)impl size:(unsigned int *)size data:(void *)data
{
  v7 = *&impl;
  v19 = *MEMORY[0x1E69E9840];
  if (!kAudioSessionClientLogSubsystem)
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
LABEL_6:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "ATAudioSessionClientImpl.mm";
      v17 = 1024;
      v18 = 295;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioSessionGetProperty", &v15, 0x12u);
    }

    if (data)
    {
      return [(ATAudioSessionPropertyManager *)self->_propertyManager GetProperty:v7 size:size data:data];
    }

    goto LABEL_9;
  }

  v9 = *kAudioSessionClientLogSubsystem;
  if (v9)
  {
    goto LABEL_6;
  }

  if (data)
  {
    return [(ATAudioSessionPropertyManager *)self->_propertyManager GetProperty:v7 size:size data:data];
  }

LABEL_9:
  v10 = 2003329396;
  if (kAudioSessionClientLogSubsystem)
  {
    v12 = *kAudioSessionClientLogSubsystem;
    if (!v12)
    {
      return v10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315394;
    v16 = "ATAudioSessionClientImpl.mm";
    v17 = 1024;
    v18 = 299;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid data", &v15, 0x12u);
  }

  return v10;
}

- (int)AudioSessionSetActiveImpl:(unsigned __int8)impl flags:(unsigned int)flags
{
  implCopy = impl;
  v27 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v7 = *kAudioSessionClientLogSubsystem;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "ATAudioSessionClientImpl.mm";
    v23 = 1024;
    v24 = 260;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioSessionSetActiveImpl", buf, 0x12u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v20 = 0;
    v11 = [WeakRetained setActive:implCopy == 1 withOptions:flags error:&v20];
    v12 = v20;
    v13 = v12;
    if (v11)
    {
      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          code = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = @"Activated";
        v22 = "ATAudioSessionClientImpl.mm";
        *buf = 136315650;
        if (!implCopy)
        {
          v17 = @"Deactivated";
        }

        v23 = 1024;
        v24 = 285;
        v25 = 2112;
        v26 = v17;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Session %@ !", buf, 0x1Cu);
      }

      code = 0;
    }

    else
    {
      code = 2003329396;
      if (v12 && [v12 code])
      {
        code = [v13 code];
      }

      if (kAudioSessionClientLogSubsystem)
      {
        v14 = *kAudioSessionClientLogSubsystem;
        if (!v14)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "ATAudioSessionClientImpl.mm";
        v23 = 1024;
        v24 = 281;
        v25 = 1024;
        LODWORD(v26) = code;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d activation failed. status = %d", buf, 0x18u);
      }
    }

    goto LABEL_30;
  }

  code = 560557673;
LABEL_31:

  return code;
}

- (AVAudioSession)avas
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);

  return WeakRetained;
}

- (int)resetClientConfiguration
{
  self->_isConfigured = 0;
  self->_clientUserData = 0;
  self->_interruptionType = 0;
  Main = CFRunLoopGetMain();
  v4 = Main;
  if (Main)
  {
    CFRetain(Main);
  }

  mCFObject = self->_clientRunLoop.mCFObject;
  self->_clientRunLoop.mCFObject = v4;
  if (mCFObject)
  {
    CFRelease(mCFObject);
  }

  applesauce::CF::StringRef::from_get(&v9, *MEMORY[0x1E695E8E0]);
  v6 = self->_clientRunLoopMode.mObject.mCFObject;
  self->_clientRunLoopMode.mObject.mCFObject = v9;
  v9 = v6;
  if (v6)
  {
    CFRelease(v6);
  }

  self->_clientInterruptionListenerProc = 0;
  ptr = self->_propertyListeners.__ptr_;
  os_unfair_recursive_lock_lock_with_options();
  AudioSessionPropertyListeners::RemovePropertyListenersForAllPropertiesImp(ptr);
  os_unfair_recursive_lock_unlock();
  return 0;
}

- (int)setClientConfiguration:(__CFRunLoop *)configuration runLoopMode:(__CFString *)mode listenerProc:(void *)proc userData:(void *)data
{
  v27 = *MEMORY[0x1E69E9840];
  if (kAudioSessionClientLogSubsystem)
  {
    v11 = *kAudioSessionClientLogSubsystem;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ATAudioSessionClientImpl.mm";
    v25 = 1024;
    v26 = 172;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setClientConfiguration", buf, 0x12u);
  }

LABEL_8:
  if (!self->_isConfigured)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakSession);
    if (!WeakRetained)
    {
      v13 = 2003329396;
      if (kAudioSessionClientLogSubsystem)
      {
        v17 = *kAudioSessionClientLogSubsystem;
        if (!v17)
        {
LABEL_41:

          return v13;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ATAudioSessionClientImpl.mm";
        v25 = 1024;
        v26 = 228;
        _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create AVAudioSession shared instance.", buf, 0x12u);
      }

      goto LABEL_41;
    }

    if (configuration)
    {
      CFRetain(configuration);
      mCFObject = self->_clientRunLoop.mCFObject;
      self->_clientRunLoop.mCFObject = configuration;
      if (mCFObject)
      {
        CFRelease(mCFObject);
      }
    }

    if (mode)
    {
      applesauce::CF::StringRef::from_get(buf, mode);
      v16 = self->_clientRunLoopMode.mObject.mCFObject;
      self->_clientRunLoopMode.mObject.mCFObject = *buf;
      *buf = v16;
      if (v16)
      {
        CFRelease(v16);
      }
    }

    if (proc)
    {
      self->_clientInterruptionListenerProc = proc;
LABEL_33:
      if (data)
      {
        self->_clientUserData = data;
      }

      [(ATAudioSessionClientImpl *)self setInterruptionType:0];
      if (UseNewNotifications(void)::once != -1)
      {
        dispatch_once(&UseNewNotifications(void)::once, &__block_literal_global_232);
      }

      if (UseNewNotifications(void)::sUseNewNotifications == 1)
      {
        objc_initWeak(buf, self);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __85__ATAudioSessionClientImpl_setClientConfiguration_runLoopMode_listenerProc_userData___block_invoke;
        v22[3] = &unk_1E7ECDE98;
        objc_copyWeak(&v23, buf);
        [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D550] session:WeakRetained block:v22];
        objc_destroyWeak(&v23);
        objc_destroyWeak(buf);
      }

      else
      {
        [(ATAudioSessionClientImpl *)self addNSNotificationListenerFor:*MEMORY[0x1E698D550] session:WeakRetained selector:sel_handleInterruption_];
      }

      v13 = 0;
      self->_isConfigured = 1;
      goto LABEL_41;
    }

    if (kAudioSessionClientLogSubsystem)
    {
      v18 = *kAudioSessionClientLogSubsystem;
      if (!v18)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ATAudioSessionClientImpl.mm";
      v25 = 1024;
      v26 = 193;
      _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No Interruption listener provided", buf, 0x12u);
    }

    goto LABEL_33;
  }

  return 1768843636;
}

void __85__ATAudioSessionClientImpl_setClientConfiguration_runLoopMode_listenerProc_userData___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleInterruption:v5];
  }
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_weakSession);
  v3 = WeakRetained != 0;

  return v3;
}

- (ATAudioSessionClientImpl)initWithStrongSession:(id)session
{
  sessionCopy = session;
  v6 = [(ATAudioSessionClientImpl *)self initWithSession:sessionCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_strongSession, session);
    v8 = v7;
  }

  return v7;
}

- (ATAudioSessionClientImpl)initWithSession:(id)session
{
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (kAudioSessionClientLogSubsystem)
  {
    v5 = *kAudioSessionClientLogSubsystem;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "ATAudioSessionClientImpl.mm";
    v16 = 1024;
    v17 = 134;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d initWithSession", buf, 0x12u);
  }

LABEL_8:
  v14.receiver = self;
  v14.super_class = ATAudioSessionClientImpl;
  v7 = [(ATAudioSessionClientImpl *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_weakSession, sessionCopy);
    v8->_isConfigured = 0;
    v8->_clientUserData = 0;
    Main = CFRunLoopGetMain();
    v10 = Main;
    if (Main)
    {
      CFRetain(Main);
    }

    mCFObject = v8->_clientRunLoop.mCFObject;
    v8->_clientRunLoop.mCFObject = v10;
    if (mCFObject)
    {
      CFRelease(mCFObject);
    }

    applesauce::CF::StringRef::from_get(buf, *MEMORY[0x1E695E8E0]);
    v12 = v8->_clientRunLoopMode.mObject.mCFObject;
    v8->_clientRunLoopMode.mObject.mCFObject = *buf;
    *buf = v12;
    if (v12)
    {
      CFRelease(v12);
    }

    v8->_clientInterruptionListenerProc = 0;
    v8->_interruptionType = 0;
    operator new();
  }

  return 0;
}

@end