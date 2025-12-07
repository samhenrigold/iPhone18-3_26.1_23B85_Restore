@interface VSAppDocumentController
- (BOOL)_updateViewModel:(id)model error:(id *)error;
- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query;
- (VSAppDocumentController)init;
- (VSAppDocumentController)initWithAppDocument:(id)document;
- (VSAppDocumentControllerDelegate)delegate;
- (id)_getSupportedButtonTextsforTemplate:(id)template andElementKeys:(id)keys supportedCount:(unint64_t)count;
- (id)_imageItemProviderWithImageElement:(id)element;
- (void)_notiftyDidFailToUpdateViewModelWithError:(id)error;
- (void)_notiftyDidUpdateViewModel:(id)model;
- (void)_notifyDidUpdateLogoViewModel:(id)model;
- (void)_startObservingViewModel:(id)model;
- (void)_stopObservingViewModel:(id)model;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)documentNeedsUpdate:(id)update;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)userInterfaceStyleDidUpdate;
@end

@implementation VSAppDocumentController

- (VSAppDocumentController)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSAppDocumentController)initWithAppDocument:(id)document
{
  documentCopy = document;
  v17.receiver = self;
  v17.super_class = VSAppDocumentController;
  v6 = [(VSAppDocumentController *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appDocument, document);
    [(IKAppDocument *)v7->_appDocument setDelegate:v7];
    templateElement = [(IKAppDocument *)v7->_appDocument templateElement];
    templateElement = v7->_templateElement;
    v7->_templateElement = templateElement;

    _newViewModel = [(VSAppDocumentController *)v7 _newViewModel];
    objc_storeStrong(&v7->_viewModel, _newViewModel);
    v16 = 0;
    v11 = [(VSAppDocumentController *)v7 _updateViewModel:_newViewModel error:&v16];
    v12 = v16;
    v13 = v16;
    if (v11)
    {
      [(VSAppDocumentController *)v7 _startObservingViewModel:_newViewModel];
    }

    else
    {
      viewModel = v7->_viewModel;
      v7->_viewModel = 0;

      objc_storeStrong(&v7->_viewModelError, v12);
    }
  }

  return v7;
}

- (void)dealloc
{
  [(IKAppDocument *)self->_appDocument setDelegate:0];
  v3 = self->_viewModel;
  if (v3)
  {
    [(VSAppDocumentController *)self _stopObservingViewModel:v3];
  }

  v4.receiver = self;
  v4.super_class = VSAppDocumentController;
  [(VSAppDocumentController *)&v4 dealloc];
}

- (void)documentNeedsUpdate:(id)update
{
  v7 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = updateCopy;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Document needs update: %@", &v5, 0xCu);
  }
}

- (void)documentDidUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = updateCopy;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Document did update: %@", buf, 0xCu);
  }

  v6 = MEMORY[0x277CE2298];
  viewModel = [(VSAppDocumentController *)self viewModel];
  v8 = [v6 optionalWithObject:viewModel];

  forceUnwrapObject = [v8 forceUnwrapObject];
  v14 = 0;
  v10 = [(VSAppDocumentController *)self _updateViewModel:forceUnwrapObject error:&v14];
  v11 = v14;
  v12 = v11;
  if (v10)
  {
    [(VSAppDocumentController *)self _notiftyDidUpdateViewModel:forceUnwrapObject];
  }

  else
  {
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
    }

    v13 = v12;
    [(VSAppDocumentController *)self _stopObservingViewModel:forceUnwrapObject];
    [(VSAppDocumentController *)self setViewModel:0];
    [(VSAppDocumentController *)self setViewModelError:v13];
    [(VSAppDocumentController *)self _notiftyDidFailToUpdateViewModelWithError:v13];
  }
}

- (BOOL)document:(id)document evaluateStyleMediaQuery:(id)query
{
  v4 = MEMORY[0x277D759A0];
  queryCopy = query;
  mainScreen = [v4 mainScreen];
  [mainScreen scale];
  v8 = v7;

  featureValues = [queryCopy featureValues];

  v10 = [featureValues objectForKey:@"min-pixel-ratio"];
  integerValue = [v10 integerValue];

  return v8 == integerValue;
}

- (BOOL)_updateViewModel:(id)model error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  templateElement = [(VSAppDocumentController *)self templateElement];
  children = [templateElement children];

  v8 = [children countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(children);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if ([v12 vs_elementType] == 156)
        {
          [v5 addObject:v12];
        }
      }

      v9 = [children countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v9);
  }

  if ([v5 count] < 3)
  {
    [(VSAppDocumentController *)self setFilteredButtonLockupElements:v5];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
    v14 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = [v13 objectAtIndex:0];
    v47[0] = v15;
    v16 = [v13 objectAtIndex:1];
    v47[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v18 = [v14 initWithArray:v17];

    v35 = v18;
    [v13 removeObjectsInArray:v18];
    v19 = VSErrorLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VSAppDocumentController _updateViewModel:v13 error:v19];
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v13;
    v21 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v37;
      v24 = *MEMORY[0x277CBE660];
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v36 + 1) + 8 * j);
          if ([v26 vs_elementType] == 138)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v27 = MEMORY[0x277CBEAD8];
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              [v27 raise:v24 format:{@"Unexpectedly, extraButton was %@, instead of IKTextElement.", v29}];
            }

            v30 = v26;
            text = [v30 text];
            string = [text string];

            v33 = VSErrorLogObject();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v45 = string;
              _os_log_error_impl(&dword_270DD4000, v33, OS_LOG_TYPE_ERROR, "Attempted to add extra button with text: %@", buf, 0xCu);
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v22);
    }

    [(VSAppDocumentController *)self setFilteredButtonLockupElements:v35];
  }

  return 1;
}

- (id)_getSupportedButtonTextsforTemplate:(id)template andElementKeys:(id)keys supportedCount:(unint64_t)count
{
  v48 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  keysCopy = keys;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  filteredButtonLockupElements = [(VSAppDocumentController *)self filteredButtonLockupElements];
  v9 = [filteredButtonLockupElements count];

  if (v9)
  {
    filteredButtonLockupElements2 = [(VSAppDocumentController *)self filteredButtonLockupElements];
    v11 = [filteredButtonLockupElements2 count];

    if (v11)
    {
      v12 = 0;
      v36 = *MEMORY[0x277CBE660];
      selfCopy = self;
      do
      {
        filteredButtonLockupElements3 = [(VSAppDocumentController *)self filteredButtonLockupElements];
        v14 = [filteredButtonLockupElements3 objectAtIndex:v12];

        if (v14)
        {
          v38 = v12;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v33 = v14;
          v15 = [v14 vs_itemElementsOfType:138];
          v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = 0;
            v19 = *v40;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                if (v18)
                {
                  v18 = 1;
                }

                else
                {
                  v21 = *(*(&v39 + 1) + 8 * i);
                  elementName = [v21 elementName];
                  if (elementName && [keysCopy containsObject:elementName])
                  {
                    if (!v21)
                    {
                      [MEMORY[0x277CBEAD8] raise:v36 format:@"The textElement parameter must not be nil."];
                    }

                    v23 = v21;
                    text = [v23 text];
                    string = [text string];

                    if (string)
                    {
                      if (v38 >= count)
                      {
                        v27 = VSErrorLogObject();
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v44 = templateCopy;
                          v45 = 2112;
                          v46 = string;
                          _os_log_error_impl(&dword_270DD4000, v27, OS_LOG_TYPE_ERROR, "Tried to add invalid extra button to %@ Template with text: %@", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v26 = VSDefaultLogObject();
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v44 = templateCopy;
                          v45 = 2112;
                          v46 = string;
                          _os_log_impl(&dword_270DD4000, v26, OS_LOG_TYPE_DEFAULT, "Setting %@ Template button with text: %@", buf, 0x16u);
                        }

                        v27 = [string copy];
                        [v35 addObject:v27];
                      }

                      v18 = v38 < count;
                    }

                    else
                    {
                      v18 = 0;
                    }
                  }

                  else
                  {
                    v18 = 0;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v17);
          }

          self = selfCopy;
          v14 = v33;
          v12 = v38;
        }

        ++v12;
        filteredButtonLockupElements4 = [(VSAppDocumentController *)self filteredButtonLockupElements];
        v29 = [filteredButtonLockupElements4 count];
      }

      while (v12 < v29);
    }
  }

  else
  {
    v30 = VSErrorLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [VSAppDocumentController _getSupportedButtonTextsforTemplate:templateCopy andElementKeys:v30 supportedCount:?];
    }
  }

  return v35;
}

- (void)_startObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_ViewModelViewState;
  modelCopy = model;
  [modelCopy addObserver:self forKeyPath:@"viewState" options:3 context:v4];
  [modelCopy addObserver:self forKeyPath:@"userInterfaceStyle" options:1 context:kVSKeyValueObservingContext_ViewModelUserInterfaceStyle];
}

- (void)_stopObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_ViewModelViewState;
  modelCopy = model;
  [modelCopy removeObserver:self forKeyPath:@"viewState" context:v4];
  [modelCopy removeObserver:self forKeyPath:@"userInterfaceStyle" context:kVSKeyValueObservingContext_ViewModelUserInterfaceStyle];
}

- (id)_imageItemProviderWithImageElement:(id)element
{
  vs_url = [element vs_url];
  if (vs_url)
  {
    v4 = objc_alloc(MEMORY[0x277CCAA88]);
    v5 = [v4 initWithItem:vs_url typeIdentifier:*MEMORY[0x277CC20B0]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kVSKeyValueObservingContext_ViewModelViewState == context)
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    if (unsignedIntegerValue > 3)
    {
      if (unsignedIntegerValue == 4)
      {
        v24 = VSDefaultLogObject();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v24, OS_LOG_TYPE_DEFAULT, "Will call onDisappear()", buf, 2u);
        }

        appDocument = [(VSAppDocumentController *)self appDocument];
        [appDocument onDisappear];

        v18 = VSDefaultLogObject();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v19 = "Did call onDisappear()";
        goto LABEL_26;
      }

      if (unsignedIntegerValue != 6)
      {
        goto LABEL_28;
      }

      v20 = VSDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v20, OS_LOG_TYPE_DEFAULT, "Will call onUnload()", buf, 2u);
      }

      appDocument2 = [(VSAppDocumentController *)self appDocument];
      [appDocument2 onUnload];

      v18 = VSDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Did call onUnload()";
        goto LABEL_26;
      }
    }

    else
    {
      if (unsignedIntegerValue == 1)
      {
        v22 = VSDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v22, OS_LOG_TYPE_DEFAULT, "Will call onLoad()", buf, 2u);
        }

        appDocument3 = [(VSAppDocumentController *)self appDocument];
        [appDocument3 onLoad];

        v18 = VSDefaultLogObject();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v19 = "Did call onLoad()";
        goto LABEL_26;
      }

      if (unsignedIntegerValue != 2)
      {
        goto LABEL_28;
      }

      v16 = VSDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v16, OS_LOG_TYPE_DEFAULT, "Will call onAppear()", buf, 2u);
      }

      appDocument4 = [(VSAppDocumentController *)self appDocument];
      [appDocument4 onAppear];

      v18 = VSDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Did call onAppear()";
LABEL_26:
        _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (kVSKeyValueObservingContext_ViewModelUserInterfaceStyle == context)
  {
    [(VSAppDocumentController *)self userInterfaceStyleDidUpdate];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = VSAppDocumentController;
    [(VSAppDocumentController *)&v26 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_28:
}

- (void)_notiftyDidUpdateViewModel:(id)model
{
  modelCopy = model;
  delegate = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appDocumentController:self didUpdateViewModel:modelCopy];
  }
}

- (void)_notiftyDidFailToUpdateViewModelWithError:(id)error
{
  errorCopy = error;
  delegate = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appDocumentController:self didFailToUpdateViewModelWithError:errorCopy];
  }
}

- (void)_notifyDidUpdateLogoViewModel:(id)model
{
  modelCopy = model;
  delegate = [(VSAppDocumentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate appDocumentController:self didUpdateLogoViewModel:modelCopy];
  }
}

- (void)userInterfaceStyleDidUpdate
{
  v23 = *MEMORY[0x277D85DE8];
  viewModel = [(VSAppDocumentController *)self viewModel];
  if (viewModel)
  {
    viewModel2 = [(VSAppDocumentController *)self viewModel];

    if (!viewModel2)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self viewModel] parameter must not be nil."];
    }

    viewModel3 = [(VSAppDocumentController *)self viewModel];
    if ([viewModel3 conformsToProtocol:&unk_2880E88E0])
    {
      viewModel3 = viewModel3;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      templateElement = [(VSAppDocumentController *)self templateElement];
      children = [templateElement children];

      v8 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(children);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            if ([v12 vs_elementType] == 49)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v13 = MEMORY[0x277CBEAD8];
                v14 = *MEMORY[0x277CBE660];
                v15 = objc_opt_class();
                v16 = NSStringFromClass(v15);
                [v13 raise:v14 format:{@"Unexpectedly, childElement was %@, instead of IKImageElement.", v16}];
              }

              v17 = [(VSAppDocumentController *)self _imageItemProviderWithImageElement:v12];
              [viewModel3 setLogoProvider:v17];
              [(VSAppDocumentController *)self _notifyDidUpdateLogoViewModel:viewModel3];

              goto LABEL_17;
            }
          }

          v9 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }
  }
}

- (VSAppDocumentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateViewModel:(void *)a1 error:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = 2;
  v5 = 2048;
  v6 = [a1 count];
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Only %ld button lockups are allowed, attempted adding %ld extra button(s).", &v3, 0x16u);
}

- (void)_getSupportedButtonTextsforTemplate:(uint64_t)a1 andElementKeys:(NSObject *)a2 supportedCount:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "No button specified for the %@ Template", &v2, 0xCu);
}

@end