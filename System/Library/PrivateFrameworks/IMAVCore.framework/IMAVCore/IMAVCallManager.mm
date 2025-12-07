@interface IMAVCallManager
+ (id)sharedInstance;
- (IMAVCallManager)init;
- (NSArray)calls;
- (id)_activeAudioCall;
- (id)_activeFaceTimeCall;
- (id)_copyMutableFTCalls;
- (id)_mutableFTCalls;
- (id)_nonRetainingChatList;
- (unsigned)_callState;
- (unsigned)_callStateForType:(unsigned int)type;
- (unsigned)callState;
- (void)_addACChatProxy:(id)proxy;
- (void)_addAVChatProxy:(id)proxy;
- (void)_addIMAVChatToChatList:(id)list;
- (void)_postStateChangeIfNecessary;
- (void)_postStateChangeNamed:(id)named fromState:(unsigned int)state toState:(unsigned int)toState postType:(BOOL)type type:(unsigned int)a7;
- (void)_removeIMAVChatFromChatList:(id)list;
- (void)_sendProxyUpdate;
- (void)_setACCallState:(unsigned int)state quietly:(BOOL)quietly;
- (void)_setAVCallState:(unsigned int)state quietly:(BOOL)quietly;
- (void)_updateACCallState;
- (void)_updateACChatProxyWithInfo:(id)info;
- (void)_updateAVCallState;
- (void)_updateAVChatProxyWithInfo:(id)info;
- (void)_updateOverallChatState;
@end

@implementation IMAVCallManager

+ (id)sharedInstance
{
  if (qword_28134A418 != -1)
  {
    sub_25477F8F0();
  }

  v3 = qword_28134A3E8;

  return v3;
}

- (IMAVCallManager)init
{
  v85.receiver = self;
  v85.super_class = IMAVCallManager;
  v6 = [(IMAVCallManager *)&v85 init];
  if (v6)
  {
    v7 = objc_msgSend_sharedInstance(IMAVController, v2, v3, v4, v5);
    if (objc_msgSend__shouldRunConferences(v7, v8, v9, v10, v11))
    {
      shouldRunACConferences = 1;
    }

    else
    {
      v17 = objc_msgSend_sharedInstance(IMAVController, v12, v13, v14, v15);
      shouldRunACConferences = objc_msgSend__shouldRunACConferences(v17, v18, v19, v20, v21);
    }

    v26 = objc_msgSend_sharedInstance(IMAVController, v22, v23, v24, v25);
    shouldObserveConferences = objc_msgSend__shouldObserveConferences(v26, v27, v28, v29, v30);

    if (shouldRunACConferences)
    {
      objc_msgSend_ensureHandlerSetup(IMAVHandler, v32, v33, v34, v35);
      v40 = objc_msgSend_date(MEMORY[0x277CBEAA8], v36, v37, v38, v39);
      lastCallStateChange = v6->_lastCallStateChange;
      v6->_lastCallStateChange = v40;

      v46 = objc_msgSend_sharedInstance(IMAVController, v42, v43, v44, v45);
      shouldRunConferences = objc_msgSend__shouldRunConferences(v46, v47, v48, v49, v50);

      if (shouldRunConferences)
      {
        notify_register_check("kIMAVCoreAVCallStateChanged", &v6->_avToken);
      }

      v56 = objc_msgSend_sharedInstance(IMAVController, v52, v53, v54, v55);
      v61 = objc_msgSend__shouldRunACConferences(v56, v57, v58, v59, v60);

      if (v61)
      {
        notify_register_check("kIMAVCoreACCallStateChanged", &v6->_acToken);
      }
    }

    else if ((shouldObserveConferences & 1) == 0)
    {
      v80 = MEMORY[0x277D85DD0];
      v81 = 3221225472;
      v82 = sub_25475B528;
      v83 = &unk_279783648;
      v70 = v6;
      v84 = v70;
      v71 = MEMORY[0x277D85CD0];
      im_notify_register_dispatch();
      state64[1] = MEMORY[0x277D85DD0];
      state64[2] = 3221225472;
      state64[3] = sub_25475B5A0;
      state64[4] = &unk_279783648;
      v72 = v70;
      v79 = v72;
      im_notify_register_dispatch();

      state64[0] = 0;
      notify_get_state(v6->_avToken, state64);
      objc_msgSend__setAVCallState_quietly_(v72, v73, LODWORD(state64[0]), 1, v74);
      notify_get_state(v70[17], state64);
      objc_msgSend__setACCallState_quietly_(v72, v75, LODWORD(state64[0]), 1, v76);

      guidToAVChatProxyMap = v84;
      goto LABEL_13;
    }

    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = v6->_acChatProxyArray;
    v6->_acChatProxyArray = v62;

    v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = v6->_avChatProxyArray;
    v6->_avChatProxyArray = v64;

    v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guidToACChatProxyMap = v6->_guidToACChatProxyMap;
    v6->_guidToACChatProxyMap = v66;

    v68 = objc_alloc_init(MEMORY[0x277CBEB38]);
    guidToAVChatProxyMap = v6->_guidToAVChatProxyMap;
    v6->_guidToAVChatProxyMap = v68;
LABEL_13:
  }

  return v6;
}

- (NSArray)calls
{
  v6 = objc_msgSend__mutableFTCalls(self, a2, v2, v3, v4);
  objc_msgSend_addObjectsFromArray_(v6, v7, self->_acChatProxyArray, v8, v9);
  objc_msgSend_addObjectsFromArray_(v6, v10, self->_avChatProxyArray, v11, v12);

  return v6;
}

- (id)_mutableFTCalls
{
  v5 = objc_msgSend__copyMutableFTCalls(self, a2, v2, v3, v4);

  return v5;
}

- (id)_copyMutableFTCalls
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_msgSend__chatListLock(IMAVChat, v4, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11, v12);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = self->_chatArray;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v37, v41, 16);
  if (v15)
  {
    v20 = v15;
    v21 = *v38;
    do
    {
      v22 = 0;
      do
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v13);
        }

        v26 = objc_msgSend_object(*(*(&v37 + 1) + 8 * v22), v16, v17, v18, v19, v37);
        if (v26)
        {
          objc_msgSend_addObject_(v3, v23, v26, v24, v25);
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v37, v41, 16);
    }

    while (v20);
  }

  v31 = objc_msgSend__chatListLock(IMAVChat, v27, v28, v29, v30);
  objc_msgSend_unlock(v31, v32, v33, v34, v35);

  return v3;
}

- (id)_nonRetainingChatList
{
  chatArray = self->_chatArray;
  if (!chatArray)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_chatArray;
    self->_chatArray = v4;

    chatArray = self->_chatArray;
  }

  return chatArray;
}

- (void)_addIMAVChatToChatList:(id)list
{
  listCopy = list;
  v9 = objc_msgSend__chatListLock(IMAVChat, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);

  if (!self->_chatArray)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    chatArray = self->_chatArray;
    self->_chatArray = v14;
  }

  v16 = objc_alloc(MEMORY[0x277D192E0]);
  inited = objc_msgSend_initRefWithObject_(v16, v17, listCopy, v18, v19);

  objc_msgSend_addObject_(self->_chatArray, v20, inited, v21, v22);
  v27 = objc_msgSend__chatListLock(IMAVChat, v23, v24, v25, v26);
  objc_msgSend_unlock(v27, v28, v29, v30, v31);
}

- (void)_removeIMAVChatFromChatList:(id)list
{
  v38 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v9 = objc_msgSend__chatListLock(IMAVChat, v5, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12, v13);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = self->_chatArray;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v34;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v34 != v22)
      {
        objc_enumerationMutation(v14);
      }

      if (objc_msgSend_hash(*(*(&v33 + 1) + 8 * v23), v17, v18, v19, v20, v33) == listCopy)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v37, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v28 = objc_msgSend__chatListLock(IMAVChat, v24, v25, v26, v27);
  objc_msgSend_unlock(v28, v29, v30, v31, v32);
}

- (void)_postStateChangeNamed:(id)named fromState:(unsigned int)state toState:(unsigned int)toState postType:(BOOL)type type:(unsigned int)a7
{
  v7 = *&a7;
  typeCopy = type;
  v9 = *&toState;
  v10 = *&state;
  v44 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v13 = objc_alloc(MEMORY[0x277CBEB38]);
  v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v10, v15, v16);
  v21 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, v9, v19, v20);
  v25 = objc_msgSend_initWithObjectsAndKeys_(v13, v22, v17, v23, v24, @"PreviousState", v21, @"NewState", 0);

  if (typeCopy)
  {
    v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v27, v7, v28, v29);
    objc_msgSend_setObject_forKey_(v25, v31, v30, @"CallType", v32);
  }

  v33 = sub_254761764(v26);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v41 = namedCopy;
    v42 = 2112;
    v43 = v25;
    _os_log_impl(&dword_254743000, v33, OS_LOG_TYPE_DEFAULT, "Posting %@  with %@", buf, 0x16u);
  }

  v38 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v34, v35, v36, v37);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v38, v39, namedCopy, self, v25);
}

- (void)_postStateChangeIfNecessary
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_callState(self, a2, v2, v3, v4);
  if (self->_globalCallState != v6)
  {
    v7 = v6;
    v8 = sub_254761764(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = _NSStringDescriptionForIMAVChatState(self->_globalCallState);
      v10 = _NSStringDescriptionForIMAVChatState(v7);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_254743000, v8, OS_LOG_TYPE_DEFAULT, "Global call state changed from %@ to %@", &v13, 0x16u);
    }

    globalCallState = self->_globalCallState;
    self->_globalCallState = v7;
    objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v12, @"com.apple.avcore.callstatechanged", globalCallState, v7, 0, 0);
  }
}

- (unsigned)_callState
{
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19))
  {

LABEL_4:
LABEL_5:
    v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
    objc_msgSend_connectToDaemon(v28, v29, v30, v31, v32);

    goto LABEL_6;
  }

  v34 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  shouldObserveConferences = objc_msgSend__shouldObserveConferences(v34, v35, v36, v37, v38);

  if (shouldObserveConferences)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (self->_avCallState <= self->_acCallState)
  {
    return self->_acCallState;
  }

  else
  {
    return self->_avCallState;
  }
}

- (unsigned)_callStateForType:(unsigned int)type
{
  v7 = objc_msgSend_sharedInstance(IMAVController, a2, *&type, v3, v4);
  if (objc_msgSend__shouldRunConferences(v7, v8, v9, v10, v11))
  {
    goto LABEL_4;
  }

  v16 = objc_msgSend_sharedInstance(IMAVController, v12, v13, v14, v15);
  if (objc_msgSend__shouldRunACConferences(v16, v17, v18, v19, v20))
  {

LABEL_4:
LABEL_5:
    v29 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v25, v26, v27, v28);
    objc_msgSend_connectToDaemon(v29, v30, v31, v32, v33);

    goto LABEL_6;
  }

  v36 = objc_msgSend_sharedInstance(IMAVController, v21, v22, v23, v24);
  shouldObserveConferences = objc_msgSend__shouldObserveConferences(v36, v37, v38, v39, v40);

  if (shouldObserveConferences)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (type == 1)
  {
    v34 = 72;
    return *(&self->super.isa + v34);
  }

  if (type == 2)
  {
    v34 = 76;
    return *(&self->super.isa + v34);
  }

  return 0;
}

- (void)_setAVCallState:(unsigned int)state quietly:(BOOL)quietly
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_avCallState != state)
  {
    v7 = sub_254761764(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _NSStringDescriptionForIMAVChatState(self->_avCallState);
      v9 = _NSStringDescriptionForIMAVChatState(state);
      v27 = 138412546;
      *v28 = v8;
      *&v28[8] = 2112;
      v29 = v9;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Setting av call state from %@ to %@", &v27, 0x16u);
    }

    v14 = objc_msgSend__callState(self, v10, v11, v12, v13);
    self->_avCallState = state;
    v19 = objc_msgSend__callState(self, v15, v16, v17, v18);
    if (!quietly)
    {
      v20 = v19;
      if (v14 != v19)
      {
        v21 = sub_254761764(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 67109376;
          *v28 = v14;
          *&v28[4] = 1024;
          *&v28[6] = v20;
          _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Posting overall non-telephony state changed from %d to %d", &v27, 0xEu);
        }

        objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v22, @"com.apple.avcore._callstatechanged", v14, v20, 1, 1);
        objc_msgSend__postStateChangeIfNecessary(self, v23, v24, v25, v26);
      }
    }
  }
}

- (void)_updateAVCallState
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = objc_msgSend_calls(self, a2, v2, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v37, 16);
  if (v8)
  {
    v13 = v8;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_isVideo(v17, v9, v10, v11, v12))
        {
          v18 = objc_msgSend_state(v17, v9, v10, v11, v12);
          isStateFinal = objc_msgSend_isStateFinal(v17, v19, v20, v21, v22);
          if (v14 <= v18)
          {
            v24 = v18;
          }

          else
          {
            v24 = v14;
          }

          if (isStateFinal)
          {
            v14 = v14;
          }

          else
          {
            v14 = v24;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v37, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v26 = sub_254761764(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = _NSStringDescriptionForIMAVChatState(v14);
    *buf = 138412290;
    v36 = v27;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "Updating AV call state to %@", buf, 0xCu);
  }

  objc_msgSend__setAVCallState_(self, v28, v14, v29, v30);
}

- (void)_setACCallState:(unsigned int)state quietly:(BOOL)quietly
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_acCallState != state)
  {
    v7 = sub_254761764(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _NSStringDescriptionForIMAVChatState(self->_acCallState);
      v9 = _NSStringDescriptionForIMAVChatState(state);
      v27 = 138412546;
      *v28 = v8;
      *&v28[8] = 2112;
      v29 = v9;
      _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Setting ac call state from %@ to %@", &v27, 0x16u);
    }

    v14 = objc_msgSend__callState(self, v10, v11, v12, v13);
    self->_acCallState = state;
    v19 = objc_msgSend__callState(self, v15, v16, v17, v18);
    if (!quietly)
    {
      v20 = v19;
      if (v14 != v19)
      {
        v21 = sub_254761764(v19);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 67109376;
          *v28 = v14;
          *&v28[4] = 1024;
          *&v28[6] = v20;
          _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "Posting overall non-telephony state changed from %d to %d", &v27, 0xEu);
        }

        objc_msgSend__postStateChangeNamed_fromState_toState_postType_type_(self, v22, @"com.apple.avcore._callstatechanged", v14, v20, 1, 2);
        objc_msgSend__postStateChangeIfNecessary(self, v23, v24, v25, v26);
      }
    }
  }
}

- (void)_updateACCallState
{
  v38 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = objc_msgSend_calls(self, a2, v2, v3, v4, 0);
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v31, v37, 16);
  if (v8)
  {
    v13 = v8;
    v14 = 0;
    v15 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        if ((objc_msgSend_isVideo(v17, v9, v10, v11, v12) & 1) == 0)
        {
          v18 = objc_msgSend_state(v17, v9, v10, v11, v12);
          isStateFinal = objc_msgSend_isStateFinal(v17, v19, v20, v21, v22);
          if (v14 <= v18)
          {
            v24 = v18;
          }

          else
          {
            v24 = v14;
          }

          if (isStateFinal)
          {
            v14 = v14;
          }

          else
          {
            v14 = v24;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v31, v37, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v26 = sub_254761764(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = _NSStringDescriptionForIMAVChatState(v14);
    *buf = 138412290;
    v36 = v27;
    _os_log_impl(&dword_254743000, v26, OS_LOG_TYPE_DEFAULT, "Updating AC call state to %@", buf, 0xCu);
  }

  objc_msgSend__setACCallState_(self, v28, v14, v29, v30);
}

- (unsigned)callState
{
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
    goto LABEL_4;
  }

  v15 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
  if (objc_msgSend__shouldRunACConferences(v15, v16, v17, v18, v19))
  {

LABEL_4:
LABEL_5:
    v28 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v24, v25, v26, v27);
    objc_msgSend_connectToDaemon(v28, v29, v30, v31, v32);

    goto LABEL_6;
  }

  v34 = objc_msgSend_sharedInstance(IMAVController, v20, v21, v22, v23);
  shouldObserveConferences = objc_msgSend__shouldObserveConferences(v34, v35, v36, v37, v38);

  if (shouldObserveConferences)
  {
    goto LABEL_5;
  }

LABEL_6:

  return objc_msgSend__callState(self, v24, v25, v26, v27);
}

- (void)_updateOverallChatState
{
  v204 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10))
  {
  }

  else
  {
    v19 = objc_msgSend_sharedInstance(IMAVController, v11, v12, v13, v14);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v19, v20, v21, v22, v23);

    if (!shouldRunACConferences)
    {
      return;
    }
  }

  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  selfCopy = self;
  v25 = objc_msgSend_calls(self, v15, v16, v17, v18);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v197, v203, 16);
  if (!v27)
  {
    v195 = 0;
    v196 = 0;
    v194 = 0;
    v29 = 0;
    goto LABEL_25;
  }

  v28 = v27;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v29 = 0;
  v30 = *v198;
  v31 = 0x281D46000uLL;
  do
  {
    v32 = 0;
    v193 = v28;
    do
    {
      if (*v198 != v30)
      {
        objc_enumerationMutation(v25);
      }

      v33 = *(*(&v197 + 1) + 8 * v32);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = objc_msgSend_state(v33, v34, v35, v36, v37);
        if ((objc_msgSend_isStateFinal(v33, v39, v40, v41, v42) & 1) == 0)
        {
          if (objc_msgSend_isVideo(v33, v34, v43, v44, v45))
          {
            if (v29 <= v38)
            {
              v29 = v38;
            }

            else
            {
              v29 = v29;
            }

            v50 = v195;
            v51 = v196;
            v52 = v33;
            if (v29 != objc_msgSend_state(v195, v46, v47, v48, v49))
            {
              goto LABEL_20;
            }
          }

          else
          {
            v53 = v30;
            v54 = v31;
            v55 = v25;
            v56 = v29;
            v57 = v194;
            if (v194 <= v38)
            {
              v57 = v38;
            }

            v50 = v196;
            v51 = v33;
            v52 = v195;
            v194 = v57;
            v58 = v57 == objc_msgSend_state(v196, v46, v47, v48, v49);
            v29 = v56;
            v25 = v55;
            v31 = v54;
            v30 = v53;
            v28 = v193;
            if (!v58)
            {
LABEL_20:
              v59 = v33;

              v195 = v52;
              v196 = v51;
            }
          }
        }
      }

      ++v32;
    }

    while (v28 != v32);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v34, &v197, v203, 16);
  }

  while (v28);
LABEL_25:

  v64 = objc_msgSend__sendProxyUpdate(selfCopy, v60, v61, v62, v63);
  if (v29 == 5)
  {

    v195 = 0;
    v29 = 0;
  }

  v69 = v194;
  if (v194 == 5)
  {

    v196 = 0;
    v69 = 0;
  }

  if (!(v29 | v69))
  {
    v70 = sub_254761764(v64);
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = _NSStringDescriptionForIMAVChatState(0);
      *buf = 138412290;
      v202 = v71;
      _os_log_impl(&dword_254743000, v70, OS_LOG_TYPE_DEFAULT, "Ending logging session with state: %@", buf, 0xCu);
    }

    v73 = sub_254761764(v72);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_msgSend__FTCalls(selfCopy, v74, v75, v76, v77);
      *buf = 138412290;
      v202 = v78;
      _os_log_impl(&dword_254743000, v73, OS_LOG_TYPE_DEFAULT, "Remaining chats: %@", buf, 0xCu);
    }
  }

  v79 = objc_msgSend_sharedInstance(IMAVController, v65, v66, v67, v68);
  shouldRunConferences = objc_msgSend__shouldRunConferences(v79, v80, v81, v82, v83);

  if (shouldRunConferences)
  {
    avCallState = selfCopy->_avCallState;
    v90 = MEMORY[0x277CBEAC0];
    v91 = _NSStringDescriptionForIMAVChatState(v29);
    v92 = _NSStringDescriptionForIMAVChatState(avCallState);
    v93 = MEMORY[0x277CCACA8];
    objc_msgSend_timeIntervalSinceNow(selfCopy->_lastCallStateChange, v94, v95, v96, v97);
    v102 = objc_msgSend_stringWithFormat_(v93, v99, @"%.1f", v100, v101, fabs(v98));
    v106 = objc_msgSend_dictionaryWithObjectsAndKeys_(v90, v103, v91, v104, v105, @"CurrentState", v92, @"PreviousState", v102, @"TimeSinceLastStateChange", 0);

    if (qword_28134A458 != -1)
    {
      sub_25477F904();
    }

    if (off_28134A460)
    {
      off_28134A460(8, @"VideoCallStateChange", v106, 0);
    }
  }

  v107 = objc_msgSend_sharedInstance(IMAVController, v85, v86, v87, v88);
  v112 = objc_msgSend__shouldRunACConferences(v107, v108, v109, v110, v111);

  if (v112)
  {
    acCallState = selfCopy->_acCallState;
    v118 = MEMORY[0x277CBEAC0];
    v119 = _NSStringDescriptionForIMAVChatState(v69);
    v120 = _NSStringDescriptionForIMAVChatState(acCallState);
    v121 = MEMORY[0x277CCACA8];
    objc_msgSend_timeIntervalSinceNow(selfCopy->_lastCallStateChange, v122, v123, v124, v125);
    v130 = objc_msgSend_stringWithFormat_(v121, v127, @"%.1f", v128, v129, fabs(v126));
    v134 = objc_msgSend_dictionaryWithObjectsAndKeys_(v118, v131, v119, v132, v133, @"CurrentState", v120, @"PreviousState", v130, @"TimeSinceLastStateChange", 0);

    if (qword_28134A3C0 != -1)
    {
      sub_25477F92C();
    }

    if (off_28134A3C8)
    {
      off_28134A3C8(8, @"AudioCallStateChange", v134, 0);
    }
  }

  v135 = objc_msgSend_date(MEMORY[0x277CBEAA8], v113, v114, v115, v116);
  lastCallStateChange = selfCopy->_lastCallStateChange;
  selfCopy->_lastCallStateChange = v135;

  v141 = objc_msgSend_sharedInstance(IMAVController, v137, v138, v139, v140);
  v146 = objc_msgSend__shouldRunConferences(v141, v142, v143, v144, v145);

  if (v146)
  {
    objc_msgSend__setAVCallState_(selfCopy, v147, v29, v149, v150);
    notify_set_state(selfCopy->_avToken, v29);
    notify_post("kIMAVCoreAVCallStateChanged");
  }

  v151 = objc_msgSend_sharedInstance(IMAVController, v147, v148, v149, v150);
  v156 = objc_msgSend__shouldRunACConferences(v151, v152, v153, v154, v155);

  if (v156)
  {
    objc_msgSend__setACCallState_(selfCopy, v157, v69, v159, v160);
    notify_set_state(selfCopy->_acToken, v69);
    notify_post("kIMAVCoreACCallStateChanged");
  }

  v161 = objc_msgSend_sharedInstance(IMAVController, v157, v158, v159, v160);
  v166 = objc_msgSend__shouldRunConferences(v161, v162, v163, v164, v165);

  v171 = objc_msgSend_sharedInstance(IMAVController, v167, v168, v169, v170);
  v176 = objc_msgSend__shouldRunACConferences(v171, v172, v173, v174, v175);

  if (v29)
  {
    v178 = v166;
  }

  else
  {
    v178 = 0;
  }

  if (v69)
  {
    v179 = v176;
  }

  else
  {
    v179 = 0;
  }

  powerAssertion = selfCopy->_powerAssertion;
  if (v178 & 1) != 0 || (v179)
  {
    if (!powerAssertion)
    {
      v184 = objc_alloc(MEMORY[0x277D19290]);
      v188 = objc_msgSend_initWithIdentifier_(v184, v185, @"ActiveFaceTimeConferenceAssertion", v186, v187);
      v189 = selfCopy->_powerAssertion;
      selfCopy->_powerAssertion = v188;

      v183 = sub_254761764(v190);
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        v191 = selfCopy->_powerAssertion;
        *buf = 138412290;
        v202 = v191;
        _os_log_impl(&dword_254743000, v183, OS_LOG_TYPE_DEFAULT, "Setting power assertion: %@", buf, 0xCu);
      }

LABEL_66:
    }
  }

  else if (powerAssertion)
  {
    v181 = sub_254761764(v177);
    if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
    {
      v182 = selfCopy->_powerAssertion;
      *buf = 138412290;
      v202 = v182;
      _os_log_impl(&dword_254743000, v181, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: %@", buf, 0xCu);
    }

    v183 = selfCopy->_powerAssertion;
    selfCopy->_powerAssertion = 0;
    goto LABEL_66;
  }
}

- (void)_addAVChatProxy:(id)proxy
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (!self->_guidToAVChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToAVChatProxyMap = self->_guidToAVChatProxyMap;
    self->_guidToAVChatProxyMap = Mutable;
  }

  if (!self->_avChatProxyArray)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = self->_avChatProxyArray;
    self->_avChatProxyArray = v11;
  }

  v13 = self->_guidToAVChatProxyMap;
  v14 = objc_msgSend_GUID(proxyCopy, v4, v5, v6, v7);
  objc_msgSend_setObject_forKey_(v13, v15, proxyCopy, v14, v16);

  v20 = objc_msgSend_addObject_(self->_avChatProxyArray, v17, proxyCopy, v18, v19);
  v21 = sub_254761764(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_guidToAVChatProxyMap;
    v23 = 138412290;
    v24 = v22;
    _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "New AV proxy map after add %@", &v23, 0xCu);
  }
}

- (void)_addACChatProxy:(id)proxy
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if (!self->_guidToACChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToACChatProxyMap = self->_guidToACChatProxyMap;
    self->_guidToACChatProxyMap = Mutable;
  }

  if (!self->_acChatProxyArray)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = self->_acChatProxyArray;
    self->_acChatProxyArray = v11;
  }

  v13 = self->_guidToACChatProxyMap;
  v14 = objc_msgSend_GUID(proxyCopy, v4, v5, v6, v7);
  objc_msgSend_setObject_forKey_(v13, v15, proxyCopy, v14, v16);

  v20 = objc_msgSend_addObject_(self->_acChatProxyArray, v17, proxyCopy, v18, v19);
  v21 = sub_254761764(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_guidToACChatProxyMap;
    v23 = 138412290;
    v24 = v22;
    _os_log_impl(&dword_254743000, v21, OS_LOG_TYPE_DEFAULT, "New AC proxy map after add %@", &v23, 0xCu);
  }
}

- (void)_updateAVChatProxyWithInfo:(id)info
{
  v132 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = infoCopy;
  if (!self->_guidToAVChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToAVChatProxyMap = self->_guidToAVChatProxyMap;
    self->_guidToAVChatProxyMap = Mutable;
  }

  if (!self->_avChatProxyArray)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    avChatProxyArray = self->_avChatProxyArray;
    self->_avChatProxyArray = v8;
  }

  v10 = sub_254761764(infoCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_guidToAVChatProxyMap;
    *buf = 138412290;
    v131 = v11;
    _os_log_impl(&dword_254743000, v10, OS_LOG_TYPE_DEFAULT, "Old AV proxy map %@", buf, 0xCu);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  obj = v5;
  v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v123, v129, 16);
  if (v114)
  {
    v112 = *v124;
    *&v17 = 138412290;
    v110 = v17;
    selfCopy = self;
    do
    {
      for (i = 0; i != v114; ++i)
      {
        if (*v124 != v112)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v123 + 1) + 8 * i);
        v24 = objc_msgSend_objectForKey_(v19, v14, @"GUID", v15, v16, v110);
        if (v24)
        {
          v25 = v12;
          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          v26 = objc_msgSend__calls(self, v20, v21, v22, v23);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v119, v128, 16);
          if (v28)
          {
            v33 = v28;
            v34 = *v120;
            while (2)
            {
              for (j = 0; j != v33; ++j)
              {
                if (*v120 != v34)
                {
                  objc_enumerationMutation(v26);
                }

                v36 = objc_msgSend_GUID(*(*(&v119 + 1) + 8 * j), v29, v30, v31, v32);
                isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v36, v37, v24, v38, v39);

                if (isEqualToIgnoringCase)
                {
                  v56 = sub_254761764(v41);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254743000, v56, OS_LOG_TYPE_DEFAULT, "Ignoring proxy update, we own the real IMAVChat object", buf, 2u);
                  }

                  v12 = v25;
                  objc_msgSend_addObject_(v25, v57, v24, v58, v59);
                  goto LABEL_41;
                }
              }

              v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v119, v128, 16);
              if (v33)
              {
                continue;
              }

              break;
            }
          }

          v43 = sub_254761764(v42);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v110;
            v131 = v19;
            _os_log_impl(&dword_254743000, v43, OS_LOG_TYPE_DEFAULT, "Updating chat proxy with info %@", buf, 0xCu);
          }

          v12 = v25;
          objc_msgSend_addObject_(v25, v44, v24, v45, v46);
          v50 = objc_msgSend_objectForKey_(selfCopy->_guidToAVChatProxyMap, v47, v24, v48, v49);
          v51 = sub_254761764(v50);
          v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
          if (v50)
          {
            if (v52)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Found existing proxy, updating...", buf, 2u);
            }

            objc_msgSend_updateWithInfo_(v50, v53, v19, v54, v55);
          }

          else
          {
            if (v52)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v51, OS_LOG_TYPE_DEFAULT, "Creating new proxy", buf, 2u);
            }

            v63 = objc_alloc_init(IMAVChatProxy);
            objc_msgSend_setObject_forKey_(selfCopy->_guidToAVChatProxyMap, v64, v63, v24, v65);
            objc_msgSend_addObject_(selfCopy->_avChatProxyArray, v66, v63, v67, v68);
            v72 = objc_msgSend_updateWithInfo_(v63, v69, v19, v70, v71);
            v73 = sub_254761764(v72);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v74 = selfCopy->_guidToAVChatProxyMap;
              *buf = v110;
              v131 = v74;
              _os_log_impl(&dword_254743000, v73, OS_LOG_TYPE_DEFAULT, "AV Proxy Map: %@", buf, 0xCu);
            }
          }

LABEL_41:
          self = selfCopy;
        }

        else
        {
          v60 = sub_254761764(0);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v60, OS_LOG_TYPE_DEFAULT, "No GUID in proxy update, ignoring...", buf, 2u);
          }

          v62 = sub_254761764(v61);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v110;
            v131 = v19;
            _os_log_impl(&dword_254743000, v62, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }
      }

      v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v123, v129, 16);
    }

    while (v114);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v79 = objc_msgSend__copyForEnumerating(self->_avChatProxyArray, v75, v76, v77, v78);
  v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v115, v127, 16);
  if (v81)
  {
    v86 = v81;
    v87 = *v116;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v116 != v87)
        {
          objc_enumerationMutation(v79);
        }

        v89 = *(*(&v115 + 1) + 8 * k);
        v90 = objc_msgSend_GUID(v89, v82, v83, v84, v85);
        v94 = objc_msgSend_containsObject_(v12, v91, v90, v92, v93);

        if ((v94 & 1) == 0)
        {
          v95 = self->_guidToAVChatProxyMap;
          v96 = objc_msgSend_GUID(v89, v82, v83, v84, v85);
          objc_msgSend_removeObjectForKey_(v95, v97, v96, v98, v99);

          objc_msgSend_removeObjectIdenticalTo_(self->_avChatProxyArray, v100, v89, v101, v102);
          objc_msgSend_finalUpdate(v89, v103, v104, v105, v106);
        }
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v82, &v115, v127, 16);
    }

    while (v86);
  }

  v108 = sub_254761764(v107);
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    v109 = self->_guidToAVChatProxyMap;
    *buf = 138412290;
    v131 = v109;
    _os_log_impl(&dword_254743000, v108, OS_LOG_TYPE_DEFAULT, "New AV proxy map %@", buf, 0xCu);
  }
}

- (void)_updateACChatProxyWithInfo:(id)info
{
  v128 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (!self->_guidToACChatProxyMap)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    guidToACChatProxyMap = self->_guidToACChatProxyMap;
    self->_guidToACChatProxyMap = Mutable;
  }

  if (!self->_acChatProxyArray)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    acChatProxyArray = self->_acChatProxyArray;
    self->_acChatProxyArray = v7;
  }

  v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = sub_254761764(v110);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_guidToACChatProxyMap;
    *buf = 138412290;
    v127 = v10;
    _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, "Old AC proxy map %@", buf, 0xCu);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = infoCopy;
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v119, v125, 16);
  if (v109)
  {
    v108 = *v120;
    *&v15 = 138412290;
    v106 = v15;
    do
    {
      for (i = 0; i != v109; ++i)
      {
        if (*v120 != v108)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v119 + 1) + 8 * i);
        v22 = objc_msgSend_objectForKey_(v17, v12, @"GUID", v13, v14, v106);
        if (v22)
        {
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v23 = objc_msgSend__calls(self, v18, v19, v20, v21);
          v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v115, v124, 16);
          if (v25)
          {
            v30 = v25;
            v31 = *v116;
            while (2)
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v116 != v31)
                {
                  objc_enumerationMutation(v23);
                }

                v33 = objc_msgSend_GUID(*(*(&v115 + 1) + 8 * j), v26, v27, v28, v29);
                isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v33, v34, v22, v35, v36);

                if (isEqualToIgnoringCase)
                {
                  v53 = sub_254761764(v38);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_254743000, v53, OS_LOG_TYPE_DEFAULT, "Ignoring proxy update, we own the real IMAVChat object", buf, 2u);
                  }

                  objc_msgSend_addObject_(v110, v54, v22, v55, v56);
                  goto LABEL_40;
                }
              }

              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v115, v124, 16);
              if (v30)
              {
                continue;
              }

              break;
            }
          }

          v40 = sub_254761764(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v106;
            v127 = v17;
            _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Updating chat proxy with info %@", buf, 0xCu);
          }

          objc_msgSend_addObject_(v110, v41, v22, v42, v43);
          v47 = objc_msgSend_objectForKey_(self->_guidToACChatProxyMap, v44, v22, v45, v46);
          v48 = sub_254761764(v47);
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v47)
          {
            if (v49)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Found existing proxy, updating...", buf, 2u);
            }

            objc_msgSend_updateWithInfo_(v47, v50, v17, v51, v52);
          }

          else
          {
            if (v49)
            {
              *buf = 0;
              _os_log_impl(&dword_254743000, v48, OS_LOG_TYPE_DEFAULT, "Creating new proxy", buf, 2u);
            }

            v59 = objc_alloc_init(IMAVChatProxy);
            objc_msgSend_setObject_forKey_(self->_guidToACChatProxyMap, v60, v59, v22, v61);
            objc_msgSend_addObject_(self->_acChatProxyArray, v62, v59, v63, v64);
            v68 = objc_msgSend_updateWithInfo_(v59, v65, v17, v66, v67);
            v69 = sub_254761764(v68);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v70 = self->_guidToACChatProxyMap;
              *buf = v106;
              v127 = v70;
              _os_log_impl(&dword_254743000, v69, OS_LOG_TYPE_DEFAULT, "AC Proxy Map: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v57 = sub_254761764(0);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_254743000, v57, OS_LOG_TYPE_DEFAULT, "No GUID in proxy update, ignoring...", buf, 2u);
          }

          v47 = sub_254761764(v58);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v106;
            v127 = v17;
            _os_log_impl(&dword_254743000, v47, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }
        }

LABEL_40:
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v119, v125, 16);
    }

    while (v109);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v75 = objc_msgSend__copyForEnumerating(self->_acChatProxyArray, v71, v72, v73, v74);
  v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v111, v123, 16);
  if (v77)
  {
    v82 = v77;
    v83 = *v112;
    do
    {
      for (k = 0; k != v82; ++k)
      {
        if (*v112 != v83)
        {
          objc_enumerationMutation(v75);
        }

        v85 = *(*(&v111 + 1) + 8 * k);
        v86 = objc_msgSend_GUID(v85, v78, v79, v80, v81);
        v90 = objc_msgSend_containsObject_(v110, v87, v86, v88, v89);

        if ((v90 & 1) == 0)
        {
          v91 = self->_guidToACChatProxyMap;
          v92 = objc_msgSend_GUID(v85, v78, v79, v80, v81);
          objc_msgSend_removeObjectForKey_(v91, v93, v92, v94, v95);

          objc_msgSend_removeObjectIdenticalTo_(self->_acChatProxyArray, v96, v85, v97, v98);
          objc_msgSend_finalUpdate(v85, v99, v100, v101, v102);
        }
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v111, v123, 16);
    }

    while (v82);
  }

  v104 = sub_254761764(v103);
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    v105 = self->_guidToACChatProxyMap;
    *buf = 138412290;
    v127 = v105;
    _os_log_impl(&dword_254743000, v104, OS_LOG_TYPE_DEFAULT, "New AC proxy map %@", buf, 0xCu);
  }
}

- (void)_sendProxyUpdate
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  shouldRunConferences = objc_msgSend__shouldRunConferences(v6, v7, v8, v9, v10);

  if (shouldRunConferences)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v21 = objc_msgSend_calls(self, v17, v18, v19, v20);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v91, v96, 16);
    if (v23)
    {
      v24 = v23;
      v25 = *v92;
      do
      {
        v26 = 0;
        do
        {
          if (*v92 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v91 + 1) + 8 * v26);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_isVideo(v27, v28, v29, v30, v31))
          {
            v35 = objc_msgSend__proxyRepresentation(v27, v28, v32, v33, v34);
            objc_msgSend_addObject_(v16, v36, v35, v37, v38);
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v91, v96, 16);
      }

      while (v24);
    }

    v40 = sub_254761764(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v40, OS_LOG_TYPE_DEFAULT, "Sending video chat proxy update", buf, 2u);
    }

    v45 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v41, v42, v43, v44);
    objc_msgSend_setValue_ofProperty_(v45, v46, v16, @"AVChatProxy", v47);
  }

  v48 = objc_msgSend_sharedInstance(IMAVController, v12, v13, v14, v15);
  shouldRunACConferences = objc_msgSend__shouldRunACConferences(v48, v49, v50, v51, v52);

  if (shouldRunACConferences)
  {
    v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v59 = objc_msgSend_calls(self, v55, v56, v57, v58, 0);
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v86, v95, 16);
    if (v61)
    {
      v62 = v61;
      v63 = *v87;
      do
      {
        v64 = 0;
        do
        {
          if (*v87 != v63)
          {
            objc_enumerationMutation(v59);
          }

          v65 = *(*(&v86 + 1) + 8 * v64);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_isVideo(v65, v66, v67, v68, v69) & 1) == 0)
          {
            v73 = objc_msgSend__proxyRepresentation(v65, v66, v70, v71, v72);
            objc_msgSend_addObject_(v54, v74, v73, v75, v76);
          }

          ++v64;
        }

        while (v62 != v64);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v66, &v86, v95, 16);
      }

      while (v62);
    }

    v78 = sub_254761764(v77);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_254743000, v78, OS_LOG_TYPE_DEFAULT, "Sending audio chat proxy update", buf, 2u);
    }

    v83 = objc_msgSend_sharedInstance(MEMORY[0x277D18D68], v79, v80, v81, v82);
    objc_msgSend_setValue_ofProperty_(v83, v84, v54, @"ACChatProxy", v85);
  }
}

- (id)_activeFaceTimeCall
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend__FTCalls(self, a2, v2, v3, v4, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (objc_msgSend_isVideo(v14, v7, v8, v9, v10))
        {
          v15 = objc_msgSend_state(v14, v7, v8, v9, v10);
          if (v15 != 5 && v15 != 0)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
    }

    while (v11);
  }

LABEL_14:

  return v11;
}

- (id)_activeAudioCall
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend__FTCalls(self, a2, v2, v3, v4, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ((objc_msgSend_isVideo(v14, v7, v8, v9, v10) & 1) == 0)
        {
          v15 = objc_msgSend_state(v14, v7, v8, v9, v10);
          if (v15 != 5 && v15 != 0)
          {
            v11 = v14;
            goto LABEL_14;
          }
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
    }

    while (v11);
  }

LABEL_14:

  return v11;
}

@end