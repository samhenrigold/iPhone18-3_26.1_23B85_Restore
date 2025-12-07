@interface DDRemoteActionViewController
+ (BOOL)controllerIsAvailable;
+ (id)prepareViewController:(id)controller forAction:(id)action actionController:(id)actionController;
- (CGSize)preferredContentSize;
- (DDAction)action;
- (DDActionController)actionController;
- (id)serviceViewControllerProxy;
- (void)_prepareForAction:(id)action inActionController:(id)controller;
- (void)actionCanBeCancelledExternally:(BOOL)externally;
- (void)actionDidFinishShouldDismiss:(BOOL)dismiss;
- (void)adaptForPresentationInPopover:(BOOL)popover;
- (void)getIsBeingPresentedInPopover:(id)popover;
- (void)viewControllerReady;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation DDRemoteActionViewController

- (void)_prepareForAction:(id)action inActionController:(id)controller
{
  self->_waitingForRemoteConfiguration = 1;
  controllerCopy = controller;
  actionCopy = action;
  [(DDRemoteActionViewController *)self setAction:actionCopy];
  [(DDRemoteActionViewController *)self setActionController:controllerCopy];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom <= 6 && ((1 << userInterfaceIdiom) & 0x62) != 0)
  {
    [(DDRemoteActionViewController *)self setModalPresentationStyle:7];
  }

  serviceViewControllerProxy = [(DDRemoteActionViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy prepareForAction:actionCopy];
}

+ (BOOL)controllerIsAvailable
{
  if (qword_280B12308 != -1)
  {
    +[DDRemoteActionViewController controllerIsAvailable];
  }

  return _MergedGlobals_10;
}

void __53__DDRemoteActionViewController_controllerIsAvailable__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.datadetectors.DDActionsService"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.InputUI"))
  {
    v1 = 0;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.calendar.EventKitUIRemoteUIExtension"] ^ 1;
  }

  _MergedGlobals_10 = v1;
}

- (void)viewControllerReady
{
  WeakRetained = objc_loadWeakRetained(&self->_actionController);
  v4 = objc_loadWeakRetained(&self->_action);
  [WeakRetained action:v4 viewControllerReady:self];

  self->_waitingForRemoteConfiguration = 0;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_waitingForRemoteConfiguration)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDRemoteActionViewController viewServiceDidTerminateWithError:];
    }

    WeakRetained = objc_loadWeakRetained(&self->_actionController);
    v7 = objc_loadWeakRetained(&self->_action);
    [WeakRetained failedToPrepareViewControllerForAction:v7];

    goto LABEL_15;
  }

  if (!self->_receivedActionDidFinish)
  {
    goto LABEL_18;
  }

  if ([errorCopy code] == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [DDRemoteActionViewController viewServiceDidTerminateWithError:];
    }

    goto LABEL_15;
  }

  if (self->_receivedActionDidFinish)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDRemoteActionViewController viewServiceDidTerminateWithError:];
    }
  }

  else
  {
LABEL_18:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDRemoteActionViewController viewServiceDidTerminateWithError:];
    }

    [(DDRemoteActionViewController *)self actionDidFinishShouldDismiss:1];
  }

LABEL_15:
  v8.receiver = self;
  v8.super_class = DDRemoteActionViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:v5];
}

- (void)adaptForPresentationInPopover:(BOOL)popover
{
  popoverCopy = popover;
  serviceViewControllerProxy = [(DDRemoteActionViewController *)self serviceViewControllerProxy];
  [serviceViewControllerProxy adaptForPresentationInPopover:popoverCopy];
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = DDRemoteActionViewController;
  [(DDRemoteActionViewController *)&v4 preferredContentSize];
  if (v2 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v3 = 480.0;
    v2 = 360.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)prepareViewController:(id)controller forAction:(id)action actionController:(id)actionController
{
  actionCopy = action;
  actionControllerCopy = actionController;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__DDRemoteActionViewController_prepareViewController_forAction_actionController___block_invoke;
  v15[3] = &unk_2782915F0;
  v16 = actionCopy;
  v17 = actionControllerCopy;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___DDRemoteActionViewController;
  v10 = actionControllerCopy;
  v11 = actionCopy;
  v12 = objc_msgSendSuper2(&v14, sel_requestViewController_fromServiceWithBundleIdentifier_connectionHandler_, controller, @"com.apple.datadetectors.DDActionsService", v15);

  return v12;
}

void __81__DDRemoteActionViewController_prepareViewController_forAction_actionController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setViewController:v5];
    [v5 _prepareForAction:*(a1 + 32) inActionController:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __81__DDRemoteActionViewController_prepareViewController_forAction_actionController___block_invoke_cold_1();
    }

    [*(a1 + 40) failedToPrepareViewControllerForAction:*(a1 + 32)];
  }
}

- (id)serviceViewControllerProxy
{
  v4.receiver = self;
  v4.super_class = DDRemoteActionViewController;
  serviceViewControllerProxy = [(_UIRemoteViewController *)&v4 serviceViewControllerProxy];

  return serviceViewControllerProxy;
}

- (void)actionCanBeCancelledExternally:(BOOL)externally
{
  externallyCopy = externally;
  WeakRetained = objc_loadWeakRetained(&self->_actionController);
  v5 = objc_loadWeakRetained(&self->_action);
  [WeakRetained action:v5 presentationShouldBeModal:!externallyCopy];
}

- (void)actionDidFinishShouldDismiss:(BOOL)dismiss
{
  if (!self->_receivedActionDidFinish)
  {
    dismissCopy = dismiss;
    self->_receivedActionDidFinish = 1;
    WeakRetained = objc_loadWeakRetained(&self->_action);
    delegate = [WeakRetained delegate];

    if (delegate)
    {
      v8 = objc_loadWeakRetained(&self->_action);
      delegate2 = [v8 delegate];
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_action);
        delegate3 = [v11 delegate];
        v13 = objc_loadWeakRetained(&self->_action);
        [delegate3 actionDidFinish:v13 shouldDismiss:dismissCopy];
      }
    }

    v14 = objc_loadWeakRetained(&self->_action);
    [v14 invalidate];

    objc_storeWeak(&self->_action, 0);
  }
}

- (void)getIsBeingPresentedInPopover:(id)popover
{
  popoverCopy = popover;
  WeakRetained = objc_loadWeakRetained(&self->_actionController);
  (*(popover + 2))(popoverCopy, [WeakRetained isPresentingInPopover]);
}

- (DDAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (DDActionController)actionController
{
  WeakRetained = objc_loadWeakRetained(&self->_actionController);

  return WeakRetained;
}

@end