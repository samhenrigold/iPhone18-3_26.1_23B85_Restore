@interface SBHMultiplexingViewController
- (NSString)description;
- (SBHMultiplexingViewController)initWithLevel:(double)level identifier:(id)identifier;
- (id)sbh_underlyingAvocadoHostViewControllers;
- (void)_setUpMultiplexedViewController;
- (void)activateWithViewController:(id)controller;
- (void)addObserver:(id)observer;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)deactivate;
- (void)dealloc;
- (void)loadView;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation SBHMultiplexingViewController

- (void)_setUpMultiplexedViewController
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self->_multiplexedViewController;
  v4 = v3;
  if (v3)
  {
    parentViewController = [(UIViewController *)v3 parentViewController];

    if (parentViewController != self)
    {
      v7 = SBLogWidgets(v6);
      if (os_signpost_enabled(v7))
      {
        v8 = MEMORY[0x1E696AEC0];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [v8 stringWithFormat:@"<%@: %p>", v10, self];
        *buf = 138543362;
        v27 = v11;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_ACTIVATE", "%{public}@", buf, 0xCu);
      }

      view = [(UIViewController *)v4 view];
      view2 = [(SBHMultiplexingViewController *)self view];
      objc_msgSend_bounds(view2);
      [view setFrame:?];

      [view setAutoresizingMask:18];
      [(UIViewController *)v4 bs_endAppearanceTransition:1];
      [(SBHMultiplexingViewController *)self bs_addChildViewController:v4];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = [(NSHashTable *)self->_observers copy];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v21 + 1) + 8 * v18++) multiplexingViewControllerDidActivate:self];
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }

      v20 = SBLogWidgets(v19);
      if (os_signpost_enabled(v20))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BEB18000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_ACTIVATE", " isAnimation=YES ", buf, 2u);
      }
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setAutoresizingMask:18];
  [(SBHMultiplexingViewController *)self setView:v3];
}

- (void)deactivate
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_multiplexedViewController)
  {
    v3 = SBLogWidgets(self);
    if (os_signpost_enabled(v3))
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = [v4 stringWithFormat:@"<%@: %p>", v6, self];
      *buf = 138543362;
      v27 = v7;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_DEACTIVATE", "%{public}@", buf, 0xCu);
    }

    v9 = SBLogWidgets(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543618;
      v27 = v11;
      v28 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> deactivate", buf, 0x16u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(NSHashTable *)self->_observers copy];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        v16 = 0;
        do
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * v16);
          if (objc_opt_respondsToSelector())
          {
            [v17 multiplexingViewControllerWillDeactivate:self];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    multiplexedViewController = self->_multiplexedViewController;
    self->_multiplexedViewController = 0;

    v20 = SBLogWidgets(v19);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BEB18000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "SBH_HOME_LAYOUT_MULTIPLEX_DEACTIVATE", " isAnimation=YES ", buf, 2u);
    }
  }
}

- (void)dealloc
{
  multiplexingManager = [(SBHMultiplexingViewController *)self multiplexingManager];
  [multiplexingManager validateActiveMultiplexingViewControllerForIdentifier:self->_identifier];

  v4.receiver = self;
  v4.super_class = SBHMultiplexingViewController;
  [(SBHMultiplexingViewController *)&v4 dealloc];
}

- (SBHMultiplexingViewController)initWithLevel:(double)level identifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SBHMultiplexingViewController;
  v7 = [(SBHMultiplexingViewController *)&v12 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_level = level;
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;
  }

  return v8;
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = SBHMultiplexingViewController;
  [(SBHMultiplexingViewController *)&v4 viewIsAppearing:appearing];
  [(SBHMultiplexingViewController *)self _setUpMultiplexedViewController];
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [(SBHMultiplexingViewController *)self appendDescriptionToFormatter:v3];
  v4 = [v3 description];

  return v4;
}

- (void)activateWithViewController:(id)controller
{
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = SBLogWidgets(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13 = 138544130;
    v14 = v7;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = v9;
    v19 = 2048;
    v20 = controllerCopy;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> activateWithViewController: <%{public}@:%p>", &v13, 0x2Au);
  }

  multiplexedViewController = self->_multiplexedViewController;
  self->_multiplexedViewController = controllerCopy;

  if ([(SBHMultiplexingViewController *)self isViewLoaded])
  {
    view = [(SBHMultiplexingViewController *)self view];
    window = [view window];

    if (window)
    {
      [(SBHMultiplexingViewController *)self _setUpMultiplexedViewController];
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__SBHMultiplexingViewController_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E8088F18;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

id __62__SBHMultiplexingViewController_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:*(*(a1 + 40) + 1008) withName:@"identifier" skipIfEmpty:0];
  v2 = [*(a1 + 32) appendFloat:@"level" withName:*(*(a1 + 40) + 1000)];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 1016) withName:@"multiplexedViewController"];
}

- (id)sbh_underlyingAvocadoHostViewControllers
{
  multiplexedViewController = [(SBHMultiplexingViewController *)self multiplexedViewController];
  sbh_isWidgetHostViewController = [multiplexedViewController sbh_isWidgetHostViewController];
  v5 = MEMORY[0x1E695DFD8];
  if (sbh_isWidgetHostViewController)
  {
    multiplexedViewController2 = [(SBHMultiplexingViewController *)self multiplexedViewController];
    v7 = [v5 setWithObject:multiplexedViewController2];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFD8] set];
  }

  return v7;
}

@end