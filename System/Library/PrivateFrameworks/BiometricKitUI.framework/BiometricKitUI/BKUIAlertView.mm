@interface BKUIAlertView
- (BKUIAlertView)init;
- (BOOL)isAlertHidden;
- (SEL)cancelButtonSelector;
- (SEL)otherButtonSelector;
- (UILabel)alertHudText;
- (UIView)alertHudView;
- (id)parent;
- (void)_hideAlertHudView;
- (void)_setFadeAnimation:(id)animation;
- (void)hideAnimated:(BOOL)animated;
- (void)isAlertHidden;
- (void)setCancelButtonSelector:(SEL)selector;
- (void)setOtherButtonSelector:(SEL)selector;
- (void)show:(id)show title:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle cancelButtonSelector:(SEL)selector otherButtonTitle:(id)otherButtonTitle otherButtonSelector:(SEL)buttonSelector viewController:(id)self0;
- (void)showAlert:(id)alert message:(id)message cancelButtonTitle:(id)title otherButtonTitle:(id)buttonTitle viewController:(id)controller;
@end

@implementation BKUIAlertView

- (BKUIAlertView)init
{
  v7.receiver = self;
  v7.super_class = BKUIAlertView;
  v2 = [(BKUIAlertView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(BKUIAlertView *)v2 _init];
    v4 = os_log_create("com.apple.biometrickitui", "AlertView");
    bkui_alert_view_log = v3->bkui_alert_view_log;
    v3->bkui_alert_view_log = v4;
  }

  return v3;
}

- (void)show:(id)show title:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle cancelButtonSelector:(SEL)selector otherButtonTitle:(id)otherButtonTitle otherButtonSelector:(SEL)buttonSelector viewController:(id)self0
{
  v47 = *MEMORY[0x277D85DE8];
  showCopy = show;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  otherButtonTitleCopy = otherButtonTitle;
  controllerCopy = controller;
  bkui_alert_view_log = self->bkui_alert_view_log;
  if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = titleCopy;
    v45 = 2112;
    v46 = messageCopy;
    _os_log_impl(&dword_241B0A000, bkui_alert_view_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Show alert with title: %@, message: %@", buf, 0x16u);
  }

  objc_storeWeak(&self->_parent, showCopy);
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);
  superview = [WeakRetained superview];
  v23 = objc_loadWeakRetained(&self->_alertHudView);
  [superview bringSubviewToFront:v23];

  v24 = objc_loadWeakRetained(&self->_alertHudView);
  if (v24)
  {
    if (CACurrentMediaTime() - self->_alertHudTextStartTime > self->_alertHudMinDisplayTime)
    {
      v25 = objc_loadWeakRetained(&self->_alertHudView);
      isHidden = [v25 isHidden];

      if ((isHidden & 1) == 0)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideAlertHudView object:0];
      }

      v27 = objc_loadWeakRetained(&self->_alertHudText);
      [v27 setText:messageCopy];

      self->_alertHudTextStartTime = CACurrentMediaTime();
      v28 = objc_loadWeakRetained(&self->_alertHudView);
      [(BKUIAlertView *)self _setFadeAnimation:v28];

      v29 = objc_loadWeakRetained(&self->_alertHudView);
      [v29 setHidden:0];

      [(BKUIAlertView *)self performSelector:sel__hideAlertHudView withObject:0 afterDelay:self->_alertHudTimeout];
    }
  }

  else
  {
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    self->_cancelButtonSelector = selectorCopy;
    if (buttonSelector)
    {
      buttonSelectorCopy = buttonSelector;
    }

    else
    {
      buttonSelectorCopy = 0;
    }

    self->_otherButtonSelector = buttonSelectorCopy;
    view = [(UIAlertController *)self->_alertController view];
    window = [view window];

    if (window)
    {
      alertController = self->_alertController;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __127__BKUIAlertView_show_title_message_cancelButtonTitle_cancelButtonSelector_otherButtonTitle_otherButtonSelector_viewController___block_invoke;
      v37[3] = &unk_278D09A88;
      v37[4] = self;
      v38 = titleCopy;
      v39 = messageCopy;
      v40 = buttonTitleCopy;
      v41 = otherButtonTitleCopy;
      v42 = controllerCopy;
      [(UIAlertController *)alertController dismissViewControllerAnimated:0 completion:v37];
    }

    else
    {
      [(BKUIAlertView *)self showAlert:titleCopy message:messageCopy cancelButtonTitle:buttonTitleCopy otherButtonTitle:otherButtonTitleCopy viewController:controllerCopy];
    }
  }
}

- (void)showAlert:(id)alert message:(id)message cancelButtonTitle:(id)title otherButtonTitle:(id)buttonTitle viewController:(id)controller
{
  v32 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  messageCopy = message;
  titleCopy = title;
  buttonTitleCopy = buttonTitle;
  controllerCopy = controller;
  bkui_alert_view_log = self->bkui_alert_view_log;
  if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v29 = alertCopy;
    v30 = 2112;
    v31 = messageCopy;
    _os_log_impl(&dword_241B0A000, bkui_alert_view_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Show alert with title: %@, message: %@", buf, 0x16u);
  }

  v25 = alertCopy;
  v18 = [MEMORY[0x277D75110] alertControllerWithTitle:alertCopy message:messageCopy preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v18;

  v20 = self->_alertController;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke;
  v27[3] = &unk_278D09AB0;
  v27[4] = self;
  v21 = titleCopy;
  v22 = [MEMORY[0x277D750F8] actionWithTitle:titleCopy style:1 handler:v27];
  [(UIAlertController *)v20 addAction:v22];

  if (buttonTitleCopy)
  {
    v23 = self->_alertController;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke_2;
    v26[3] = &unk_278D09AB0;
    v26[4] = self;
    v24 = [MEMORY[0x277D750F8] actionWithTitle:buttonTitleCopy style:0 handler:v26];
    [(UIAlertController *)v23 addAction:v24];
  }

  [controllerCopy presentViewController:self->_alertController animated:1 completion:0];
}

void __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 408);
  v4 = a2;
  [v3 dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  if (*(*(a1 + 32) + 440))
  {
    v6 = *(*(a1 + 32) + 440);
  }

  else
  {
    v6 = 0;
  }

  v7 = WeakRetained;
  [WeakRetained performSelector:v6];
}

void __85__BKUIAlertView_showAlert_message_cancelButtonTitle_otherButtonTitle_viewController___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 408);
  v4 = a2;
  [v3 dismissViewControllerAnimated:1 completion:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 432));
  if (*(*(a1 + 32) + 448))
  {
    v6 = *(*(a1 + 32) + 448);
  }

  else
  {
    v6 = 0;
  }

  v7 = WeakRetained;
  [WeakRetained performSelector:v6];
}

- (BOOL)isAlertHidden
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_alertHudView);
    isHidden = [v4 isHidden];

    bkui_alert_view_log = self->bkui_alert_view_log;
    if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      [(BKUIAlertView *)isHidden isAlertHidden];
    }
  }

  else
  {
    alertController = self->_alertController;
    if (alertController)
    {
      view = [(UIAlertController *)alertController view];
      window = [view window];
      isHidden = window == 0;
    }

    else
    {
      isHidden = 1;
    }

    bkui_alert_view_log = self->bkui_alert_view_log;
    if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }
  }

  return isHidden;
}

- (void)hideAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_alertHudView);
    isHidden = [v6 isHidden];

    if ((isHidden & 1) == 0)
    {
      bkui_alert_view_log = self->bkui_alert_view_log;
      if (os_log_type_enabled(bkui_alert_view_log, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = animatedCopy;
        _os_log_impl(&dword_241B0A000, bkui_alert_view_log, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Hiding alert animated: %i", &v12, 8u);
      }

      if (CACurrentMediaTime() - self->_alertHudTextStartTime > self->_alertHudMinDisplayTime)
      {
        [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__hideAlertHudView object:0];
        [(BKUIAlertView *)self _hideAlertHudView];
      }
    }
  }

  else
  {
    view = [(UIAlertController *)self->_alertController view];
    window = [view window];

    if (window)
    {
      v11 = self->bkui_alert_view_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109120;
        v13 = animatedCopy;
        _os_log_impl(&dword_241B0A000, v11, OS_LOG_TYPE_DEFAULT, "BiometricKitUI: Hiding alert animated: %i", &v12, 8u);
      }

      [(UIAlertController *)self->_alertController dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }
}

- (void)_hideAlertHudView
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);
  [(BKUIAlertView *)self _setFadeAnimation:WeakRetained];

  v4 = objc_loadWeakRetained(&self->_alertHudView);
  [v4 setHidden:1];
}

- (void)_setFadeAnimation:(id)animation
{
  v3 = MEMORY[0x277CDA000];
  animationCopy = animation;
  animation = [v3 animation];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [animation setTimingFunction:v5];

  [animation setDuration:0.2];
  [animation setType:@"fade"];
  layer = [animationCopy layer];
  [layer removeAllAnimations];

  layer2 = [animationCopy layer];

  [layer2 addAnimation:animation forKey:*MEMORY[0x277CDA920]];
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (SEL)cancelButtonSelector
{
  if (self->_cancelButtonSelector)
  {
    return self->_cancelButtonSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setCancelButtonSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_cancelButtonSelector = selectorCopy;
}

- (SEL)otherButtonSelector
{
  if (self->_otherButtonSelector)
  {
    return self->_otherButtonSelector;
  }

  else
  {
    return 0;
  }
}

- (void)setOtherButtonSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_otherButtonSelector = selectorCopy;
}

- (UIView)alertHudView
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudView);

  return WeakRetained;
}

- (UILabel)alertHudText
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHudText);

  return WeakRetained;
}

- (void)isAlertHidden
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_241B0A000, a2, OS_LOG_TYPE_DEBUG, "BiometricKitUI: Is alert hidden: %i", v2, 8u);
}

@end