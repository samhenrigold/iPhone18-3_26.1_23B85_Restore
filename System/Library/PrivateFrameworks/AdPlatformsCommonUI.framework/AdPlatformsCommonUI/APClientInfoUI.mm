@interface APClientInfoUI
+ (id)sharedInstance;
- (APClientInfoUI)init;
- (id)keyboards;
- (void)dealloc;
- (void)orientationChanged:(id)changed;
@end

@implementation APClientInfoUI

+ (id)sharedInstance
{
  if (qword_280CCE8E0 != -1)
  {
    sub_23E74B040();
  }

  v3 = qword_280CCE8D8;

  return v3;
}

- (APClientInfoUI)init
{
  v39.receiver = self;
  v39.super_class = APClientInfoUI;
  v4 = [(APClientInfoUI *)&v39 init];
  if (v4)
  {
    v5 = objc_msgSend_currentDevice(MEMORY[0x277D75418], v2, v3);
    v8 = objc_msgSend_userInterfaceIdiom(v5, v6, v7);
    objc_msgSend_setInterfaceIdiom_(v4, v9, v8);

    v10 = MEMORY[0x277CCABB0];
    v13 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v11, v12);
    objc_msgSend_scale(v13, v14, v15);
    v18 = objc_msgSend_numberWithDouble_(v10, v16, v17);
    objc_msgSend_setScale_(v4, v19, v18);

    v22 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v20, v21);
    objc_msgSend_bounds(v22, v23, v24);
    v26 = v25;
    v28 = v27;

    objc_msgSend_setScreenWidth_(v4, v29, v26);
    objc_msgSend_setScreenHeight_(v4, v30, v28);
    objc_msgSend_orientationChanged_(v4, v31, 0);
    v34 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v32, v33);
    objc_msgSend_addObserver_selector_name_object_(v34, v35, v4, sel_orientationChanged_, *MEMORY[0x277D76878], 0);

    objc_msgSend_updateActiveClientInfo(v4, v36, v37);
  }

  return v4;
}

- (id)keyboards
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v2))
  {
    v6 = objc_msgSend_sharedInputModeController(MEMORY[0x277D75688], v4, v5);
    v9 = objc_msgSend_normalizedEnabledInputModeIdentifiers(v6, v7, v8);
    userKeyboards = self->_userKeyboards;
    self->_userKeyboards = v9;

    v11 = self->_userKeyboards;
  }

  else
  {
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_23E74BEAC;
    v15[3] = &unk_278C5A208;
    objc_copyWeak(&v16, &location);
    dispatch_async(MEMORY[0x277D85CD0], v15);
    v12 = self->_userKeyboards;
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    }

    v11 = v13;
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2);
  objc_msgSend_removeObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = APClientInfoUI;
  [(APClientInfoUI *)&v6 dealloc];
}

- (void)orientationChanged:(id)changed
{
  changedCopy = changed;
  v6 = objc_msgSend_object(changedCopy, v4, v5);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = objc_msgSend_object(changedCopy, v8, v9);
    v13 = objc_msgSend_orientation(v10, v11, v12);
    if ((v13 - 1) >= 4)
    {
      v14 = -1;
    }

    else
    {
      v14 = v13 - 1;
    }
  }

  else
  {
    v14 = -1;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_setOrientation_(selfCopy, v16, v14);
  objc_sync_exit(selfCopy);

  objc_msgSend_updateActiveClientInfo(selfCopy, v17, v18);
}

@end