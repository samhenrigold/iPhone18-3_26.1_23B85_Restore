@interface WFInterchangeDocumentActionDefinition
- (NSArray)fileTypes;
- (id)fileTypeForOpeningItem:(id)item;
- (id)identifier;
- (id)inputContentClasses;
- (id)localizedNameWithContext:(id)context;
- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler;
@end

@implementation WFInterchangeDocumentActionDefinition

- (void)performActionWithInput:(id)input parameters:(id)parameters userInterface:(id)interface successHandler:(id)handler errorHandler:(id)errorHandler
{
  inputCopy = input;
  handlerCopy = handler;
  errorHandlerCopy = errorHandler;
  items = [inputCopy items];
  firstObject = [items firstObject];

  if (firstObject)
  {
    v15 = [(WFInterchangeDocumentActionDefinition *)self fileTypeForOpeningItem:firstObject];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke;
    v16[3] = &unk_1E837ADC0;
    v16[4] = self;
    v17 = errorHandlerCopy;
    v18 = handlerCopy;
    [inputCopy getFileRepresentation:v16 forType:v15];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] app];
    v5 = [v3 fileURL];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2;
    v6[3] = &unk_1E837B3A0;
    v7 = a1[6];
    v8 = a1[5];
    [v4 openFile:v5 completionHandler:v6];
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

uint64_t __117__WFInterchangeDocumentActionDefinition_performActionWithInput_parameters_userInterface_successHandler_errorHandler___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (id)fileTypeForOpeningItem:(id)item
{
  v60 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  preferredFileType = [itemCopy preferredFileType];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v7 = [fileTypes countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(fileTypes);
        }

        if ([preferredFileType conformsToType:*(*(&v51 + 1) + 8 * i)])
        {
          v20 = preferredFileType;
          goto LABEL_44;
        }
      }

      v8 = [fileTypes countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v32 = [fileTypes countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v32)
  {
    v11 = *v48;
    v34 = itemCopy;
    v31 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(fileTypes);
        }

        v13 = *(*(&v47 + 1) + 8 * j);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        supportedTypes = [itemCopy supportedTypes];
        v15 = [supportedTypes countByEnumeratingWithState:&v43 objects:v57 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v44;
          while (2)
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v44 != v17)
              {
                objc_enumerationMutation(supportedTypes);
              }

              v19 = *(*(&v43 + 1) + 8 * k);
              if ([v19 conformsToType:v13])
              {
                v20 = v19;

LABEL_43:
                itemCopy = v34;
                goto LABEL_44;
              }
            }

            v16 = [supportedTypes countByEnumeratingWithState:&v43 objects:v57 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        itemCopy = v34;
        v11 = v31;
      }

      v32 = [fileTypes countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v32);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
  v20 = [fileTypes countByEnumeratingWithState:&v39 objects:v56 count:16];
  if (v20)
  {
    v21 = *v40;
    v33 = *v40;
    v34 = itemCopy;
    do
    {
      for (m = 0; m != v20; m = m + 1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(fileTypes);
        }

        v23 = *(*(&v39 + 1) + 8 * m);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        allSupportedTypes = [itemCopy allSupportedTypes];
        v25 = [allSupportedTypes countByEnumeratingWithState:&v35 objects:v55 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v36;
          while (2)
          {
            for (n = 0; n != v26; ++n)
            {
              if (*v36 != v27)
              {
                objc_enumerationMutation(allSupportedTypes);
              }

              v29 = *(*(&v35 + 1) + 8 * n);
              if ([v29 conformsToType:v23])
              {
                v20 = v29;

                goto LABEL_43;
              }
            }

            v26 = [allSupportedTypes countByEnumeratingWithState:&v35 objects:v55 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v21 = v33;
        itemCopy = v34;
      }

      v20 = [fileTypes countByEnumeratingWithState:&v39 objects:v56 count:16];
    }

    while (v20);
  }

LABEL_44:

  return v20;
}

- (id)inputContentClasses
{
  v21 = *MEMORY[0x1E69E9840];
  inputContentClasses = self->_inputContentClasses;
  if (!inputContentClasses)
  {
    mEMORY[0x1E6996D68] = [MEMORY[0x1E6996D68] sharedRegistry];
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    fileTypes = [(WFInterchangeDocumentActionDefinition *)self fileTypes];
    v7 = [fileTypes countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(fileTypes);
          }

          v11 = [mEMORY[0x1E6996D68] contentItemClassForType:*(*(&v16 + 1) + 8 * v10)];
          if (v11)
          {
            [v5 addObject:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [fileTypes countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    array = [v5 array];
    v13 = [array copy];
    v14 = self->_inputContentClasses;
    self->_inputContentClasses = v13;

    inputContentClasses = self->_inputContentClasses;
  }

  return inputContentClasses;
}

- (NSArray)fileTypes
{
  fileTypes = self->_fileTypes;
  if (!fileTypes)
  {
    v4 = MEMORY[0x1E69E0AF8];
    definition = [(WFInterchangeActionDefinition *)self definition];
    v6 = [definition objectForKey:@"FileTypes"];
    v7 = [v4 typesFromStrings:v6];
    v8 = [v7 copy];
    v9 = self->_fileTypes;
    self->_fileTypes = v8;

    fileTypes = self->_fileTypes;
  }

  return fileTypes;
}

- (id)identifier
{
  v10.receiver = self;
  v10.super_class = WFInterchangeDocumentActionDefinition;
  identifier = [(WFInterchangeActionDefinition *)&v10 identifier];
  v4 = identifier;
  if (identifier)
  {
    v5 = identifier;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(WFInterchangeActionDefinition *)self app];
    bundleIdentifier = [v7 bundleIdentifier];
    v5 = [v6 stringWithFormat:@"%@.openin", bundleIdentifier];
  }

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = WFInterchangeDocumentActionDefinition;
  v5 = [(WFInterchangeActionDefinition *)&v12 localizedNameWithContext:contextCopy];
  if (!v5)
  {
    v6 = WFLocalizedStringResourceWithKey(@"Open in %@ (Action Name - Open In)", @"Open in %@");
    v7 = [contextCopy localize:v6];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(WFInterchangeActionDefinition *)self app];
    localizedName = [v9 localizedName];
    v5 = [v8 localizedStringWithFormat:v7, localizedName];
  }

  return v5;
}

@end