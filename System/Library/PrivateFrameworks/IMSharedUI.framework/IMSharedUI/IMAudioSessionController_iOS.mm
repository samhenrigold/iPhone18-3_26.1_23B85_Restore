@interface IMAudioSessionController_iOS
- (IMAudioSessionController_iOS)init;
- (void)audioSessionInterruption:(id)interruption;
- (void)audioSessionMediaServicesWereLost:(id)lost;
- (void)audioSessionMediaServicesWereReset:(id)reset;
- (void)audioSessionRouteChange:(id)change;
- (void)configureAudioSessionWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation IMAudioSessionController_iOS

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v4, v3);
  objc_msgSend_removeObserver_(v6, v7, self, v9, v8);

  v10.receiver = self;
  v10.super_class = IMAudioSessionController_iOS;
  [(IMAudioSessionController_iOS *)&v10 dealloc];
}

- (IMAudioSessionController_iOS)init
{
  v17.receiver = self;
  v17.super_class = IMAudioSessionController_iOS;
  v5 = [(IMAudioSessionController_iOS *)&v17 init];
  if (v5)
  {
    v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v3, v6, v4);
    objc_msgSend_addObserver_selector_name_object_(v7, v8, v5, v9, sel_audioSessionInterruption_, *MEMORY[0x277CB8068], 0);
    objc_msgSend_addObserver_selector_name_object_(v7, v10, v5, v11, sel_audioSessionRouteChange_, *MEMORY[0x277CB8210], 0);
    objc_msgSend_addObserver_selector_name_object_(v7, v12, v5, v13, sel_audioSessionMediaServicesWereLost_, *MEMORY[0x277CB8098], 0);
    objc_msgSend_addObserver_selector_name_object_(v7, v14, v5, v15, sel_audioSessionMediaServicesWereReset_, *MEMORY[0x277CB80A0], 0);
  }

  return v5;
}

- (void)configureAudioSessionWithOptions:(unint64_t)options
{
  v49.receiver = self;
  v49.super_class = IMAudioSessionController_iOS;
  [(IMAudioSessionController *)&v49 configureAudioSessionWithOptions:?];
  v8 = objc_msgSend_sharedInstance(MEMORY[0x277CB83F8], v4, v5, v7, v6);
  v9 = *MEMORY[0x277CB80A8];
  v48 = 0;
  v12 = objc_msgSend_setMode_error_(v8, v10, v9, v11, &v48);
  v16 = v48;
  if ((v12 & 1) == 0)
  {
    v18 = objc_msgSend_audio(IMSharedUILogs, v13, v14, v17, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_2548059AC();
    }
  }

  v19 = options & 1;
  v20 = 44;
  if ((options & 1) == 0)
  {
    v20 = 36;
  }

  if ((options & 2) != 0)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  v22 = (options >> 1) & 2;
  v23 = MEMORY[0x277CB8020];
  if ((options & 2) == 0)
  {
    v23 = MEMORY[0x277CB8028];
  }

  v24 = *v23;

  v47 = 0;
  v27 = objc_msgSend_setCategory_withOptions_error_(v8, v25, v24, v26, v21 | v22, &v47);
  v31 = v47;
  if ((v27 & 1) == 0)
  {
    v33 = objc_msgSend_audio(IMSharedUILogs, v28, v29, v32, v30);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_254805A14();
    }
  }

  v46 = 0;
  v36 = objc_msgSend_setActivationContext_error_(v8, v34, MEMORY[0x277CBEC10], v35, &v46);
  v40 = v46;
  if ((v36 & 1) == 0)
  {
    v42 = objc_msgSend_audio(IMSharedUILogs, v37, v38, v41, v39);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_254805A7C();
    }
  }

  v43 = objc_msgSend_audio(IMSharedUILogs, v37, v38, v41, v39);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    sub_254805AE4(v19, v8, v43, v44, v45);
  }
}

- (void)audioSessionRouteChange:(id)change
{
  v45 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v9 = objc_msgSend_audio(IMSharedUILogs, v5, v6, v8, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v43 = 138412290;
    v44 = changeCopy;
    _os_log_impl(&dword_2547F8000, v9, OS_LOG_TYPE_INFO, "audioSessionRouteChange: %@", &v43, 0xCu);
  }

  objc_msgSend_setDirty_(self, v10, 1, v12, v11);
  if (objc_msgSend_isActive(self, v13, v14, v16, v15))
  {
    v21 = objc_msgSend_userInfo(changeCopy, v17, v18, v20, v19);
    v25 = objc_msgSend_objectForKey_(v21, v22, *MEMORY[0x277CB8220], v24, v23);
    v30 = objc_msgSend_unsignedIntegerValue(v25, v26, v27, v29, v28);

    if ((v30 - 1) <= 1)
    {
      v35 = objc_msgSend_audio(IMSharedUILogs, v31, v32, v34, v33);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_2547F8000, v35, OS_LOG_TYPE_INFO, "Available audio routes changed", &v43, 2u);
      }

      v40 = objc_msgSend_options(self, v36, v37, v39, v38);
      objc_msgSend_activateWithOptions_completion_(self, v41, v40, v42, 0);
    }
  }
}

- (void)audioSessionInterruption:(id)interruption
{
  v15 = *MEMORY[0x277D85DE8];
  interruptionCopy = interruption;
  v9 = objc_msgSend_audio(IMSharedUILogs, v5, v6, v8, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = interruptionCopy;
    _os_log_impl(&dword_2547F8000, v9, OS_LOG_TYPE_INFO, "audioSessionInterruption: %@", &v13, 0xCu);
  }

  objc_msgSend_setDirty_(self, v10, 1, v12, v11);
}

- (void)audioSessionMediaServicesWereLost:(id)lost
{
  v15 = *MEMORY[0x277D85DE8];
  lostCopy = lost;
  v9 = objc_msgSend_audio(IMSharedUILogs, v5, v6, v8, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = lostCopy;
    _os_log_impl(&dword_2547F8000, v9, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereLost: %@", &v13, 0xCu);
  }

  objc_msgSend_setDirty_(self, v10, 1, v12, v11);
}

- (void)audioSessionMediaServicesWereReset:(id)reset
{
  v15 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  v9 = objc_msgSend_audio(IMSharedUILogs, v5, v6, v8, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = resetCopy;
    _os_log_impl(&dword_2547F8000, v9, OS_LOG_TYPE_INFO, "audioSessionMediaServicesWereReset: %@", &v13, 0xCu);
  }

  objc_msgSend_setDirty_(self, v10, 1, v12, v11);
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if (active)
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x277CB83F8], a2, active, v4, v3);
    v27 = 0;
    active = objc_msgSend_setActive_error_(v7, v8, 1, v9, &v27);
    v11 = v27;

    if ((active & 1) == 0)
    {
      v16 = objc_msgSend_audio(IMSharedUILogs, v12, v13, v15, v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_254805C68();
      }

LABEL_8:
    }
  }

  else
  {
    v17 = objc_msgSend_sharedInstance(MEMORY[0x277CB83F8], a2, active, v4, v3);
    v26 = 0;
    v20 = objc_msgSend_setActive_withOptions_error_(v17, v18, 0, v19, 1, &v26);
    v11 = v26;

    if ((v20 & 1) == 0)
    {
      v16 = objc_msgSend_audio(IMSharedUILogs, v21, v22, v24, v23);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_254805C00();
      }

      goto LABEL_8;
    }
  }

  v25.receiver = self;
  v25.super_class = IMAudioSessionController_iOS;
  [(IMAudioSessionController *)&v25 setActive:activeCopy];
}

@end