@interface SBUIPopoverExtensionRemoteViewController
+ (id)_exportedInterface;
- (SBUIPopoverExtensionRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)popoverExtensionContext;
- (void)_invalidateSBUIPopoverExtension;
- (void)_setupChildViewController:(id)controller;
- (void)_updateForBundleIdentifier:(id)identifier;
- (void)_updateForWidgetConfiguration:(id)configuration;
- (void)_willAppearInRemoteViewController:(id)controller;
- (void)addChildViewController:(id)controller;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)dealloc;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBUIPopoverExtensionRemoteViewController

- (SBUIPopoverExtensionRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SBUIPopoverExtensionRemoteViewController;
  v4 = [(SBUIPopoverExtensionRemoteViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    add = atomic_fetch_add(__activeInstanceCount, 1u);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    instanceIdentifier = v4->_instanceIdentifier;
    v4->_instanceIdentifier = uUID;

    v9 = SBLogUIRemoteVC(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v4->_instanceIdentifier;
      *buf = 138412546;
      v14 = v10;
      v15 = 2048;
      v16 = (add + 1);
      _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_DEFAULT, "%@!!> init; instance count %lu", buf, 0x16u);
    }
  }

  return v4;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(__activeInstanceCount, 0xFFFFFFFF);
  v4 = SBLogUIRemoteVC(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v8 = instanceIdentifier;
    v9 = 2048;
    v10 = (add - 1);
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "%@!!!> dealloc; instance count %lu", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = SBUIPopoverExtensionRemoteViewController;
  [(SBUIPopoverExtensionRemoteViewController *)&v6 dealloc];
}

+ (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DE5CB8];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel__updateForWidgetConfiguration_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)_updateForBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = SBLogUIRemoteVC(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    v8 = 138412546;
    v9 = instanceIdentifier;
    v10 = 2112;
    v11 = identifierCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "%@> _updateForBundleIdentifier: %@", &v8, 0x16u);
  }

  extensionViewController = [(SBUIPopoverExtensionRemoteViewController *)self extensionViewController];
  [extensionViewController updateForBundleIdentifier:identifierCopy];
}

- (void)_updateForWidgetConfiguration:(id)configuration
{
  v12 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = SBLogUIRemoteVC(configurationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    instanceIdentifier = self->_instanceIdentifier;
    v8 = 138412546;
    v9 = instanceIdentifier;
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "%@> _updateForWidgetConfiguration: %@", &v8, 0x16u);
  }

  extensionViewController = [(SBUIPopoverExtensionRemoteViewController *)self extensionViewController];
  [extensionViewController updateForWidgetConfiguration:configurationCopy];
}

- (void)_invalidateSBUIPopoverExtension
{
  popoverExtensionContext = [(SBUIPopoverExtensionRemoteViewController *)self popoverExtensionContext];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__SBUIPopoverExtensionRemoteViewController__invalidateSBUIPopoverExtension__block_invoke;
  v4[3] = &unk_1E789DC08;
  v4[4] = self;
  [popoverExtensionContext completeRequestReturningItems:MEMORY[0x1E695E0F0] completionHandler:v4];
}

void __75__SBUIPopoverExtensionRemoteViewController__invalidateSBUIPopoverExtension__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  v4 = SBLogUIRemoteVC(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 992);
    v6 = 138412546;
    v7 = v5;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "%@> Terminated Extension; expired? %{BOOL}d", &v6, 0x12u);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBUIPopoverExtensionRemoteViewController;
  v5 = [(SBUIPopoverExtensionRemoteViewController *)&v8 viewWillAppear:?];
  v6 = SBLogUIRemoteVC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v10 = instanceIdentifier;
    v11 = 1024;
    v12 = appearCopy;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "%@> viewWillAppear:%{BOOL}d", buf, 0x12u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBUIPopoverExtensionRemoteViewController;
  v5 = [(SBUIPopoverExtensionRemoteViewController *)&v8 viewDidAppear:?];
  v6 = SBLogUIRemoteVC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v10 = instanceIdentifier;
    v11 = 1024;
    v12 = appearCopy;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "%@> viewDidAppear:%{BOOL}d", buf, 0x12u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBUIPopoverExtensionRemoteViewController;
  v5 = [(SBUIPopoverExtensionRemoteViewController *)&v8 viewWillDisappear:?];
  v6 = SBLogUIRemoteVC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v10 = instanceIdentifier;
    v11 = 1024;
    v12 = disappearCopy;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "%@> viewWillDisappear:%{BOOL}d", buf, 0x12u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v13 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBUIPopoverExtensionRemoteViewController;
  v5 = [(SBUIPopoverExtensionRemoteViewController *)&v8 viewDidDisappear:?];
  v6 = SBLogUIRemoteVC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v10 = instanceIdentifier;
    v11 = 1024;
    v12 = disappearCopy;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "%@> viewDidDisappear:%{BOOL}d", buf, 0x12u);
  }
}

- (void)_willAppearInRemoteViewController:(id)controller
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = SBLogUIRemoteVC(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    v9 = 138412546;
    v10 = instanceIdentifier;
    v11 = 2112;
    v12 = controllerCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "%@> _willAppearInRemoteViewController:%@", &v9, 0x16u);
  }

  [(SBUIPopoverExtensionRemoteViewController *)self setHostService:controllerCopy];
  popoverExtensionContext = [(SBUIPopoverExtensionRemoteViewController *)self popoverExtensionContext];
  hostService = [(SBUIPopoverExtensionRemoteViewController *)self hostService];
  [popoverExtensionContext setHostService:hostService];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v7.receiver = self;
  v7.super_class = SBUIPopoverExtensionRemoteViewController;
  [(SBUIPopoverExtensionRemoteViewController *)&v7 addChildViewController:controllerCopy];
  v5 = [controllerCopy conformsToProtocol:&unk_1F1E25460];
  if (v5)
  {
    [(SBUIPopoverExtensionRemoteViewController *)self _setupChildViewController:controllerCopy];
  }

  else
  {
    v6 = SBLogUIRemoteVC(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SBUIPopoverExtensionRemoteViewController *)self addChildViewController:v6];
    }
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v13 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v8.receiver = self;
  v8.super_class = SBUIPopoverExtensionRemoteViewController;
  [(SBUIPopoverExtensionRemoteViewController *)&v8 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v5 = SBLogUIRemoteVC([(SBUIPopoverExtensionRemoteViewController *)self setPreferredContentSize:?]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    [containerCopy preferredContentSize];
    v7 = NSStringFromCGSize(v14);
    *buf = 138412546;
    v10 = instanceIdentifier;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "%@> preferredContentSizeDidChangeForChildContentContainer; preferredContentSize: %{public}@", buf, 0x16u);
  }
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = SBUIPopoverExtensionRemoteViewController;
  v5 = [(SBUIPopoverExtensionRemoteViewController *)&v10 beginRequestWithExtensionContext:contextCopy];
  v6 = SBLogUIRemoteVC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    *buf = 138412546;
    v12 = instanceIdentifier;
    v13 = 2112;
    v14 = contextCopy;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "%@> beginRequestWithExtensionContext: %@", buf, 0x16u);
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v9 = SBLogUIRemoteVC(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBUIPopoverExtensionRemoteViewController *)self beginRequestWithExtensionContext:contextCopy, v9];
    }
  }
}

- (id)popoverExtensionContext
{
  extensionContext = [(SBUIPopoverExtensionRemoteViewController *)self extensionContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    extensionContext2 = [(SBUIPopoverExtensionRemoteViewController *)self extensionContext];
  }

  else
  {
    extensionContext2 = 0;
  }

  return extensionContext2;
}

- (void)_setupChildViewController:(id)controller
{
  v13 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = SBLogUIRemoteVC(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    instanceIdentifier = self->_instanceIdentifier;
    v9 = 138412546;
    v10 = instanceIdentifier;
    v11 = 2112;
    v12 = controllerCopy;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "%@> _setupChildViewController:%@", &v9, 0x16u);
  }

  [(SBUIPopoverExtensionRemoteViewController *)self setExtensionViewController:controllerCopy];
  view = [(SBUIPopoverExtensionRemoteViewController *)self view];
  view2 = [controllerCopy view];
  [view2 setAutoresizingMask:18];
  [view bounds];
  [view2 setFrame:?];
  [view addSubview:view2];
}

- (void)addChildViewController:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 992);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A9A79000, a2, OS_LOG_TYPE_ERROR, "%@> Tried to add a view controller that does not conform to SBUIPopverExtension.", &v3, 0xCu);
}

- (void)beginRequestWithExtensionContext:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 992);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_ERROR, "%@> Unexpected extension context class %@", &v7, 0x16u);
}

@end