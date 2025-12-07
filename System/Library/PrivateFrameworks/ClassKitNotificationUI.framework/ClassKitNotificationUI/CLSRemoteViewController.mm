@interface CLSRemoteViewController
+ (id)instantiateViewControllerWithInputItems:(id)items identifier:(id)identifier connectionHandler:(id)handler;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)presentModallyInNewWindowWithCompletion:(id)completion;
- (void)viewDidInvalidateIntrinsicContentSize;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation CLSRemoteViewController

+ (id)instantiateViewControllerWithInputItems:(id)items identifier:(id)identifier connectionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  handlerCopy = handler;
  v11 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEB38], v9, identifier, *MEMORY[0x277CCA0E0], v10);
  v30 = 0;
  v14 = objc_msgSend_extensionsWithMatchingAttributes_error_(MEMORY[0x277CCA9C8], v12, v11, &v30, v13);
  v19 = v30;
  if (v19 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v32 = v11;
    v33 = 2114;
    v34 = v19;
    _os_log_error_impl(&dword_24351C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get privacy disclosure extension for attributes: %{public}@. Error: %{public}@", buf, 0x16u);
  }

  v20 = objc_msgSend_firstObject(v14, v15, v16, v17, v18);
  if (v20)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_243520188;
    v25[3] = &unk_278DBEFE0;
    v21 = &v26;
    v26 = handlerCopy;
    objc_msgSend_instantiateViewControllerWithInputItems_listenerEndpoint_connectionHandler_(v20, v22, itemsCopy, 0, v25);
    v23 = v20;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_243520170;
    block[3] = &unk_278DBF030;
    v21 = &v29;
    v29 = handlerCopy;
    v28 = v19;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v20;
}

- (void)viewDidInvalidateIntrinsicContentSize
{
  v9 = objc_msgSend_serviceViewControllerProxy(self, a2, v2, v3, v4);
  objc_msgSend_viewDidInvalidateIntrinsicContentSize(v9, v5, v6, v7, v8);
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v9 = errorCopy;
  if (errorCopy && objc_msgSend_code(errorCopy, v5, v6, v7, v8) != 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v9;
    _os_log_error_impl(&dword_24351C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "viewServiceDidTerminateWithError Terminated with error: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CLSRemoteViewController;
  [(_UIRemoteViewController *)&v10 viewServiceDidTerminateWithError:v9];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2435203F4;
  v9[3] = &unk_278DBF008;
  v7 = completionCopy;
  v10 = v7;
  objc_copyWeak(&v11, &location);
  v8.receiver = self;
  v8.super_class = CLSRemoteViewController;
  [(CLSRemoteViewController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)presentModallyInNewWindowWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_243520568;
  v6[3] = &unk_278DBF030;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

@end