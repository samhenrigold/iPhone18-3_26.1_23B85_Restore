@interface SWNavigationManager
- (BOOL)shouldPreviewRequest:(id)request;
- (SWNavigationManager)init;
- (id)previewViewControllerForRequest:(id)request;
- (unint64_t)actionForRequest:(id)request;
- (void)addObserver:(id)observer;
- (void)commitViewController:(id)controller;
- (void)registerHandler:(id)handler;
- (void)registerHandler:(id)handler extension:(id)extension;
- (void)registerHandler:(id)handler scheme:(id)scheme;
- (void)removeObserver:(id)observer;
@end

@implementation SWNavigationManager

- (SWNavigationManager)init
{
  v12.receiver = self;
  v12.super_class = SWNavigationManager;
  v2 = [(SWNavigationManager *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    handlers = v2->_handlers;
    v2->_handlers = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    schemeHandlers = v2->_schemeHandlers;
    v2->_schemeHandlers = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    extensionHandlers = v2->_extensionHandlers;
    v2->_extensionHandlers = dictionary2;

    v9 = [MEMORY[0x1E695DFA8] set];
    observers = v2->_observers;
    v2->_observers = v9;
  }

  return v2;
}

- (unint64_t)actionForRequest:(id)request
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy URL];
  pathExtension = [v5 pathExtension];

  v7 = [requestCopy URL];
  scheme = [v7 scheme];

  if (pathExtension)
  {
    extensionHandlers = [(SWNavigationManager *)self extensionHandlers];
    v10 = [extensionHandlers objectForKey:pathExtension];

    v11 = [v10 handleRequest:requestCopy];
    if (v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  if (scheme)
  {
    schemeHandlers = [(SWNavigationManager *)self schemeHandlers];
    v13 = [schemeHandlers objectForKey:scheme];

    v11 = [v13 handleRequest:requestCopy];
  }

LABEL_7:
  if (v11)
  {
LABEL_18:
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    observers = [(SWNavigationManager *)self observers];
    v20 = [observers countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      do
      {
        v23 = 0;
        do
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(observers);
          }

          v24 = *(*(&v27 + 1) + 8 * v23);
          v25 = [requestCopy URL];
          [v24 handledNavigationWithURL:v25];

          ++v23;
        }

        while (v21 != v23);
        v21 = [observers countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v21);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    observers = [(SWNavigationManager *)self handlers];
    v15 = [observers countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(observers);
          }

          v19 = [*(*(&v31 + 1) + 8 * v18) handleRequest:requestCopy];
          if (v19)
          {
            v11 = v19;

            goto LABEL_18;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [observers countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldPreviewRequest:(id)request
{
  v34 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = [requestCopy URL];
  pathExtension = [v5 pathExtension];

  v7 = [requestCopy URL];
  scheme = [v7 scheme];

  v9 = &_OBJC_LABEL_PROTOCOL___TFAssembly;
  if (pathExtension)
  {
    extensionHandlers = [(SWNavigationManager *)self extensionHandlers];
    v11 = [extensionHandlers objectForKey:pathExtension];

    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 previewViewControllerForRequest:requestCopy];
      if (v12)
      {
        v13 = [[SWNavigationPreview alloc] initWithViewController:v12 navigationHandler:v11 URLRequest:requestCopy];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
  }

  if (scheme)
  {
    schemeHandlers = [(SWNavigationManager *)self schemeHandlers];
    v15 = [schemeHandlers objectForKey:scheme];

    if (objc_opt_respondsToSelector())
    {
      v16 = [v15 previewViewControllerForRequest:requestCopy];
      if (v16)
      {
        v13 = [[SWNavigationPreview alloc] initWithViewController:v16 navigationHandler:v15 URLRequest:requestCopy];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_18:
  if (!v13)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    handlers = [(SWNavigationManager *)self handlers];
    v13 = [handlers countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v27 = pathExtension;
      v28 = scheme;
      v18 = *v30;
      while (2)
      {
        v19 = 0;
        v20 = v9;
        do
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(handlers);
          }

          v21 = *(*(&v29 + 1) + 8 * v19);
          if (objc_opt_respondsToSelector())
          {
            v22 = [v21 previewViewControllerForRequest:requestCopy];
            if (v22)
            {
              v23 = v22;
              v13 = [[SWNavigationPreview alloc] initWithViewController:v22 navigationHandler:v21 URLRequest:requestCopy];

              goto LABEL_30;
            }
          }

          v19 = (v19 + 1);
        }

        while (v13 != v19);
        v13 = [handlers countByEnumeratingWithState:&v29 objects:v33 count:16];
        v9 = v20;
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_30:
      pathExtension = v27;
      scheme = v28;
    }
  }

  [(SWNavigationManager *)self setCurrentPreview:v13, v27, v28];
  currentPreview = [(SWNavigationManager *)self currentPreview];
  v25 = currentPreview != 0;

  return v25;
}

- (id)previewViewControllerForRequest:(id)request
{
  requestCopy = request;
  if (requestCopy && (-[SWNavigationManager currentPreview](self, "currentPreview"), v5 = objc_claimAutoreleasedReturnValue(), [v5 request], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(requestCopy, "isEqual:", v6), v6, v5, v7))
  {
    currentPreview = [(SWNavigationManager *)self currentPreview];
    viewController = [currentPreview viewController];
  }

  else
  {
    viewController = 0;
  }

  return viewController;
}

- (void)commitViewController:(id)controller
{
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  currentPreview = [(SWNavigationManager *)self currentPreview];
  v6 = currentPreview;
  if (controllerCopy)
  {
    viewController = [currentPreview viewController];

    if (viewController == controllerCopy)
    {
      [(SWNavigationManager *)self setCurrentPreview:0];
      navigationHandler = [v6 navigationHandler];
      request = [v6 request];
      [navigationHandler commitViewController:controllerCopy URLRequest:request];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      observers = [(SWNavigationManager *)self observers];
      v11 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          v14 = 0;
          do
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(observers);
            }

            v15 = *(*(&v18 + 1) + 8 * v14);
            request2 = [v6 request];
            v17 = [request2 URL];
            [v15 handledNavigationWithURL:v17];

            ++v14;
          }

          while (v12 != v14);
          v12 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }
}

- (void)registerHandler:(id)handler
{
  if (handler)
  {
    handlerCopy = handler;
    handlers = [(SWNavigationManager *)self handlers];
    [handlers addObject:handlerCopy];
  }
}

- (void)registerHandler:(id)handler scheme:(id)scheme
{
  if (handler && scheme)
  {
    schemeCopy = scheme;
    handlerCopy = handler;
    schemeHandlers = [(SWNavigationManager *)self schemeHandlers];
    [schemeHandlers setObject:handlerCopy forKey:schemeCopy];
  }
}

- (void)registerHandler:(id)handler extension:(id)extension
{
  if (handler && extension)
  {
    extensionCopy = extension;
    handlerCopy = handler;
    extensionHandlers = [(SWNavigationManager *)self extensionHandlers];
    [extensionHandlers setObject:handlerCopy forKey:extensionCopy];
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SWNavigationManager *)self observers];
    [observers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    observers = [(SWNavigationManager *)self observers];
    [observers removeObject:observerCopy];
  }
}

@end