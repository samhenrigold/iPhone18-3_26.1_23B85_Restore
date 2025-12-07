@interface AUUIAlert
- (AUUIAlert)initWithViewController:(id)controller actionSheet:(BOOL)sheet;
- (BOOL)alertViewShouldEnableFirstOtherButton:(id)button;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)dealloc;
- (void)dismissWithCancelActionAnimated:(BOOL)animated;
- (void)dismissWithOKActionAnimated:(BOOL)animated;
- (void)enableAlternateAction:(BOOL)action;
- (void)enableCancelAction:(BOOL)action;
- (void)enableDestructiveAction:(BOOL)action;
- (void)enableOKAction:(BOOL)action;
- (void)prepareToShow;
- (void)show;
@end

@implementation AUUIAlert

- (AUUIAlert)initWithViewController:(id)controller actionSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  v19.receiver = self;
  v19.super_class = AUUIAlert;
  v7 = [(AUUIAlert *)&v19 init];
  if (v7)
  {
    v8 = objc_msgSend_alertControllerWithTitle_message_preferredStyle_(MEMORY[0x277D75110], v6, 0, 0, !sheetCopy);
    objc_msgSend_setAlert_(v7, v9, v8, v10);
    objc_msgSend_setViewController_(v7, v11, controller, v12);
    v7->okButtonIndex = -1;
    v7->cancelButtonIndex = -1;
    v7->alternateButtonIndex = -1;
    v7->destructiveButtonIndex = -1;
    v16 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v13, v14, v15);
    objc_msgSend_addObserver_selector_name_object_(v16, v17, v7, sel_applicationDidEnterBackgroundNotification_, *MEMORY[0x277D76660], 0);
  }

  return v7;
}

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3);
  objc_msgSend_removeObserver_name_object_(v5, v6, self, *MEMORY[0x277D76660], 0);

  self->title = 0;
  self->message = 0;

  self->okButtonTitle = 0;
  self->cancelButtonTitle = 0;

  self->alternateButtonTitle = 0;
  self->destructiveButtonTitle = 0;
  objc_msgSend_setOkAction_(self, v7, 0, v8);
  objc_msgSend_setCancelAction_(self, v9, 0, v10);
  objc_msgSend_setDestructiveAction_(self, v11, 0, v12);
  objc_msgSend_setAlternateAction_(self, v13, 0, v14);
  objc_msgSend_dismissWithNoActionAnimated_(self, v15, 0, v16);

  self->alert = 0;
  v17.receiver = self;
  v17.super_class = AUUIAlert;
  [(AUUIAlert *)&v17 dealloc];
}

- (void)prepareToShow
{
  self->prepared = 1;
  alert = self->alert;
  objc_msgSend_setTitle_(alert, a2, self->title, v2);
  objc_msgSend_setMessage_(alert, v5, self->message, v6);
  if (objc_msgSend_length(self->destructiveButtonTitle, v7, v8, v9))
  {
    destructiveButtonTitle = self->destructiveButtonTitle;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = sub_23EB78230;
    v83[3] = &unk_278C68E68;
    v83[4] = self;
    v14 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v10, destructiveButtonTitle, 2, v83);
    objc_msgSend_setDestructiveAction_(self, v15, v14, v16);
  }

  if (objc_msgSend_length(self->cancelButtonTitle, v10, v11, v12))
  {
    cancelButtonTitle = self->cancelButtonTitle;
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = sub_23EB7828C;
    v82[3] = &unk_278C68E68;
    v82[4] = self;
    v21 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v17, cancelButtonTitle, 1, v82);
    objc_msgSend_setCancelAction_(self, v22, v21, v23);
  }

  if (objc_msgSend_length(self->alternateButtonTitle, v17, v18, v19))
  {
    alternateButtonTitle = self->alternateButtonTitle;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = sub_23EB782E8;
    v81[3] = &unk_278C68E68;
    v81[4] = self;
    v28 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v24, alternateButtonTitle, 0, v81);
    objc_msgSend_setAlternateAction_(self, v29, v28, v30);
  }

  if (objc_msgSend_length(self->okButtonTitle, v24, v25, v26))
  {
    okButtonTitle = self->okButtonTitle;
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = sub_23EB78344;
    v80[3] = &unk_278C68E68;
    v80[4] = self;
    v35 = objc_msgSend_actionWithTitle_style_handler_(MEMORY[0x277D750F8], v31, okButtonTitle, 0, v80);
    objc_msgSend_setOkAction_(self, v36, v35, v37);
  }

  if (objc_msgSend_destructiveAction(self, v31, v32, v33))
  {
    v41 = objc_msgSend_destructiveAction(self, v38, v39, v40);
    objc_msgSend_addAction_(alert, v42, v41, v43);
    if (objc_msgSend_alternateAction(self, v44, v45, v46))
    {
      v50 = objc_msgSend_alternateAction(self, v47, v48, v49);
      objc_msgSend_addAction_(alert, v51, v50, v52);
    }

    if (objc_msgSend_okAction(self, v47, v48, v49))
    {
      ok = objc_msgSend_okAction(self, v53, v54, v55);
      objc_msgSend_addAction_(alert, v57, ok, v58);
    }

    if (objc_msgSend_cancelAction(self, v53, v54, v55))
    {
      v62 = objc_msgSend_cancelAction(self, v59, v60, v61);
LABEL_22:
      objc_msgSend_addAction_(alert, v63, v62, v64);
    }
  }

  else
  {
    if (objc_msgSend_cancelAction(self, v38, v39, v40))
    {
      v68 = objc_msgSend_cancelAction(self, v65, v66, v67);
      objc_msgSend_addAction_(alert, v69, v68, v70);
    }

    if (objc_msgSend_alternateAction(self, v65, v66, v67))
    {
      v74 = objc_msgSend_alternateAction(self, v71, v72, v73);
      objc_msgSend_addAction_(alert, v75, v74, v76);
    }

    if (objc_msgSend_okAction(self, v71, v72, v73))
    {
      v62 = objc_msgSend_okAction(self, v77, v78, v79);
      goto LABEL_22;
    }
  }
}

- (void)show
{
  if (!self->prepared)
  {
    objc_msgSend_prepareToShow(self, a2, v2, v3);
  }

  alert = self->alert;
  v6 = objc_msgSend_viewController(self, a2, v2, v3);

  MEMORY[0x2821F9670](v6, sel_presentViewController_animated_completion_, alert, 1);
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  cancelButtonIndex = self->cancelButtonIndex;
  if (cancelButtonIndex != -1 && cancelButtonIndex == index)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate = self->delegate;

      MEMORY[0x2821F9670](delegate, sel_auUIAlertCancelAction_, self, v15);
    }
  }

  else
  {
    okButtonIndex = self->okButtonIndex;
    if (okButtonIndex != -1 && okButtonIndex == index)
    {
      if (objc_opt_respondsToSelector())
      {
        v18 = self->delegate;

        MEMORY[0x2821F9670](v18, sel_auUIAlertOKAction_, self, v17);
      }
    }

    else
    {
      alternateButtonIndex = self->alternateButtonIndex;
      if (alternateButtonIndex != -1 && alternateButtonIndex == index)
      {
        if (objc_opt_respondsToSelector())
        {
          v20 = self->delegate;
          context = self->context;

          MEMORY[0x2821F9670](v20, sel_auUIAlertAlternateAction_, context, v19);
        }
      }

      else
      {
        destructiveButtonIndex = self->destructiveButtonIndex;
        v12 = destructiveButtonIndex != -1 && destructiveButtonIndex == index;
        if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v14 = self->delegate;

          MEMORY[0x2821F9670](v14, sel_auUIAlertDestructiveAction_, self, v13);
        }
      }
    }
  }
}

- (BOOL)alertViewShouldEnableFirstOtherButton:(id)button
{
  buttonCopy = button;
  v4 = 1;
  v22 = 1;
  if (objc_opt_respondsToSelector())
  {
    v7 = objc_msgSend_methodSignatureForSelector_(self->delegate, v5, sel_alertViewShouldEnableFirstOtherButton_, v6);
    v10 = objc_msgSend_invocationWithMethodSignature_(MEMORY[0x277CBEAE8], v8, v7, v9);
    objc_msgSend_setTarget_(v10, v11, self->delegate, v12);
    objc_msgSend_setSelector_(v10, v13, sel_alertViewShouldEnableFirstOtherButton_, v14);
    objc_msgSend_setArgument_atIndex_(v10, v15, &buttonCopy, 2);
    objc_msgSend_invoke(v10, v16, v17, v18);
    objc_msgSend_getReturnValue_(v10, v19, &v22, v20);
    v4 = v22;
  }

  return v4 & 1;
}

- (void)dismissWithOKActionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_msgSend_alert(self, a2, animated, v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23EB78670;
  v8[3] = &unk_278C66C50;
  v8[4] = self;
  objc_msgSend_dismissViewControllerAnimated_completion_(v6, v7, animatedCopy, v8);
}

- (void)dismissWithCancelActionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = objc_msgSend_alert(self, a2, animated, v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_23EB78750;
  v8[3] = &unk_278C66C50;
  v8[4] = self;
  objc_msgSend_dismissViewControllerAnimated_completion_(v6, v7, animatedCopy, v8);
}

- (void)enableOKAction:(BOOL)action
{
  actionCopy = action;
  ok = objc_msgSend_okAction(self, a2, action, v3);

  objc_msgSend_setEnabled_(ok, v6, actionCopy, v7);
}

- (void)enableCancelAction:(BOOL)action
{
  actionCopy = action;
  v5 = objc_msgSend_cancelAction(self, a2, action, v3);

  objc_msgSend_setEnabled_(v5, v6, actionCopy, v7);
}

- (void)enableDestructiveAction:(BOOL)action
{
  actionCopy = action;
  v5 = objc_msgSend_destructiveAction(self, a2, action, v3);

  objc_msgSend_setEnabled_(v5, v6, actionCopy, v7);
}

- (void)enableAlternateAction:(BOOL)action
{
  actionCopy = action;
  v5 = objc_msgSend_alternateAction(self, a2, action, v3);

  objc_msgSend_setEnabled_(v5, v6, actionCopy, v7);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  objc_msgSend_setDelegate_(self, a2, 0, v3);

  objc_msgSend_dismissWithNoActionAnimated_(self, v5, 0, v6);
}

@end