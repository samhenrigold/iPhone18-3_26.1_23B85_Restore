@interface WFShareActionUIKitUserInterface
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithExtensionItems:(id)items error:(id)error;
- (void)presentActivityViewControllerForItems:(id)items isContentManaged:(BOOL)managed;
- (void)presentExtensionViewControllerForItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed;
- (void)presentItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed;
- (void)prewarmInput:(id)input completion:(id)completion;
- (void)showWithArchivedItems:(id)items isContentManaged:(BOOL)managed extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier completionHandler:(id)handler;
@end

@implementation WFShareActionUIKitUserInterface

- (void)prewarmInput:(id)input completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  completionCopy = completion;
  v6 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  items = [inputCopy items];
  v8 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(items);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        dispatch_group_enter(v6);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke;
        v19[3] = &unk_278C37538;
        v20 = v6;
        [v12 prepareForPresentationWithCompletionHandler:v19];

        ++v11;
      }

      while (v9 != v11);
      v9 = [items countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke_2;
  block[3] = &unk_278C375C8;
  v17 = inputCopy;
  v18 = completionCopy;
  v13 = inputCopy;
  v14 = completionCopy;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __59__WFShareActionUIKitUserInterface_prewarmInput_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) items];
  (*(v1 + 16))(v1, v2);
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__WFShareActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFShareActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __75__WFShareActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithExtensionItems:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)finishWithExtensionItems:(id)items error:(id)error
{
  itemsCopy = items;
  errorCopy = error;
  completionHandler = [(WFShareActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFShareActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, itemsCopy, errorCopy);
  }

  [(WFShareActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)showWithArchivedItems:(id)items isContentManaged:(BOOL)managed extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier completionHandler:(id)handler
{
  itemsCopy = items;
  identifierCopy = identifier;
  pointIdentifierCopy = pointIdentifier;
  handlerCopy = handler;
  if (itemsCopy)
  {
    if (pointIdentifierCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    if (handlerCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:330 description:{@"Invalid parameter not satisfying: %@", @"archivedItems"}];

  if (!pointIdentifierCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(WFShareActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v17 = MEMORY[0x277CCAAC8];
  v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_278C36C70;
  v25[4] = self;
  v26 = identifierCopy;
  v27 = pointIdentifierCopy;
  managedCopy = managed;
  v19 = pointIdentifierCopy;
  v20 = identifierCopy;
  v21 = [v17 wf_securelyUnarchiveObjectWithData:itemsCopy allowedClasses:v18 completionHandler:v25];
}

void __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __143__WFShareActionUIKitUserInterface_showWithArchivedItems_isContentManaged_extensionBundleIdentifier_extensionPointIdentifier_completionHandler___block_invoke_2;
    v6[3] = &unk_278C36C48;
    v6[4] = v4;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    [v4 prewarmInput:a2 completion:v6];
  }

  else
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v11 = "[WFShareActionUIKitUserInterface showWithArchivedItems:isContentManaged:extensionBundleIdentifier:extensionPointIdentifier:completionHandler:]_block_invoke";
      _os_log_impl(&dword_23E342000, v5, OS_LOG_TYPE_FAULT, "%s Could not unarchive input items.", buf, 0xCu);
    }

    [*(a1 + 32) cancelPresentationWithCompletionHandler:&__block_literal_global_226];
  }
}

- (void)presentItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed
{
  if (identifier)
  {
    [(WFShareActionUIKitUserInterface *)self presentExtensionViewControllerForItems:items extensionBundleIdentifier:identifier extensionPointIdentifier:pointIdentifier isContentManaged:managed];
  }

  else
  {
    [(WFShareActionUIKitUserInterface *)self presentActivityViewControllerForItems:items isContentManaged:managed, pointIdentifier];
  }
}

- (void)presentActivityViewControllerForItems:(id)items isContentManaged:(BOOL)managed
{
  managedCopy = managed;
  v6 = MEMORY[0x277D546D8];
  itemsCopy = items;
  v8 = [[v6 alloc] initWithActivityItems:itemsCopy applicationActivities:0];

  excludedActivityTypes = [(WFShareActionUIKitUserInterface *)self excludedActivityTypes];
  [v8 setExcludedActivityTypes:excludedActivityTypes];

  [v8 setIsContentManaged:managedCopy];
  [v8 setAllowsCustomPresentationStyle:1];
  [v8 setModalPresentationStyle:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__WFShareActionUIKitUserInterface_presentActivityViewControllerForItems_isContentManaged___block_invoke;
  v13[3] = &unk_278C36C20;
  v13[4] = self;
  [v8 setCompletionWithItemsHandler:v13];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__WFShareActionUIKitUserInterface_presentActivityViewControllerForItems_isContentManaged___block_invoke_2;
  block[3] = &unk_278C375A0;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __90__WFShareActionUIKitUserInterface_presentActivityViewControllerForItems_isContentManaged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (a5)
  {
    v6 = 0;
    v7 = a5;
  }

  else
  {
    v6 = a4;
    v7 = 0;
  }

  return [v5 finishWithExtensionItems:v6 error:v7];
}

- (void)presentExtensionViewControllerForItems:(id)items extensionBundleIdentifier:(id)identifier extensionPointIdentifier:(id)pointIdentifier isContentManaged:(BOOL)managed
{
  v95 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  identifierCopy = identifier;
  pointIdentifierCopy = pointIdentifier;
  v60 = itemsCopy;
  if (itemsCopy)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v43 = identifierCopy;
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:232 description:{@"Invalid parameter not satisfying: %@", @"items"}];

    identifierCopy = v43;
    if (v43)
    {
      goto LABEL_3;
    }
  }

  v45 = identifierCopy;
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"extensionBundleIdentifier"}];

  identifierCopy = v45;
LABEL_3:
  if (!pointIdentifierCopy)
  {
    v47 = identifierCopy;
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFShareActionUIKitUserInterface.m" lineNumber:234 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    identifierCopy = v47;
  }

  v75 = 0;
  v56 = identifierCopy;
  v61 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:identifierCopy error:&v75];
  v57 = v75;
  if (!v61)
  {
    v26 = getWFActionsLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "[WFShareActionUIKitUserInterface presentExtensionViewControllerForItems:extensionBundleIdentifier:extensionPointIdentifier:isContentManaged:]";
      *&buf[12] = 2114;
      *&buf[14] = v56;
      *&buf[22] = 2114;
      v93 = v57;
      _os_log_impl(&dword_23E342000, v26, OS_LOG_TYPE_ERROR, "%s Failed to create NSExtrension for %{public}@: %{public}@", buf, 0x20u);
    }

    [(WFShareActionUIKitUserInterface *)self finishWithExtensionItems:0 error:v57];
    goto LABEL_43;
  }

  objc_initWeak(&location, self);
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__2913;
  v72[4] = __Block_byref_object_dispose__2914;
  v73 = itemsCopy;
  v11 = v73;
  if (!itemsCopy)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray * _Nonnull WFActivityItemValuesFromContentItems(NSArray<WFContentItem *> * _Nonnull __strong)"];
    [currentHandler4 handleFailureInFunction:v50 file:@"WFShareActionUIKitUserInterface.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"contentItems"}];
  }

  v12 = objc_alloc(MEMORY[0x277D546D8]);
  v13 = [v12 initWithActivityItems:MEMORY[0x277CBEBF8] applicationActivities:0];
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __WFActivityItemValuesFromContentItems_block_invoke;
  v93 = &unk_278C36C98;
  v94 = v13;
  v14 = v13;
  v15 = [v11 if_compactMap:buf];

  v16 = v15;
  v59 = pointIdentifierCopy;
  v63 = v16;
  if (!v16)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<NSExtensionItem *> * _Nonnull WFExtensionItemsForActivityItemValues(NSArray * _Nonnull __strong, NSString * _Nonnull __strong, BOOL)"}];
    [currentHandler5 handleFailureInFunction:v52 file:@"WFShareActionUIKitUserInterface.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"activityItemValues"}];

    if (pointIdentifierCopy)
    {
      goto LABEL_10;
    }

LABEL_47:
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSArray<NSExtensionItem *> * _Nonnull WFExtensionItemsForActivityItemValues(NSArray * _Nonnull __strong, NSString * _Nonnull __strong, BOOL)"}];
    [currentHandler6 handleFailureInFunction:v54 file:@"WFShareActionUIKitUserInterface.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];

    goto LABEL_10;
  }

  if (!pointIdentifierCopy)
  {
    goto LABEL_47;
  }

LABEL_10:
  if ([v59 isEqualToString:*MEMORY[0x277CE8938]])
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v17 = v63;
    v18 = 0;
    v19 = [v17 countByEnumeratingWithState:&v82 objects:buf count:16];
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = *v83;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v83 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v82 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        if (v18)
        {
          v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n"];
          [v18 appendAttributedString:v24];

          if (isKindOfClass)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CCAB48]);
          if (isKindOfClass)
          {
LABEL_20:
            v25 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v22];
            [v18 appendAttributedString:v25];

            continue;
          }
        }

        [v18 appendAttributedString:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v82 objects:buf count:16];
      if (!v19)
      {
LABEL_25:

        goto LABEL_30;
      }
    }
  }

  v18 = 0;
LABEL_30:
  v27 = _NSExtensionItemsFromActivityItemValues();
  v28 = v27;
  if (v18)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v78 objects:v91 count:16];
    if (v30)
    {
      v31 = *v79;
      while (2)
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v79 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v78 + 1) + 8 * j);
          if (([v63 containsObject:v33] & 1) == 0)
          {
            [v33 setAttributedContentText:v18];
            v28 = v29;
            goto LABEL_41;
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v78 objects:v91 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v34 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    [v34 setAttributedContentText:v18];
    v28 = [v29 arrayByAddingObject:v34];

    v29 = v34;
LABEL_41:
  }

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __WFExtensionItemsForActivityItemValues_block_invoke;
  v76[3] = &__block_descriptor_33_e32_v32__0__NSExtensionItem_8Q16_B24l;
  managedCopy = managed;
  [v28 enumerateObjectsUsingBlock:v76];

  v35 = *MEMORY[0x277CCA0F8];
  v88 = v59;
  v89[0] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
  v89[1] = @"NSExtensionActivationRule";
  v90[0] = v36;
  v86 = @"extensionItems";
  v37 = [v28 if_compactMap:&__block_literal_global_2918];
  v87 = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v90[1] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];

  v40 = MEMORY[0x277CCA9C8];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2;
  v64[3] = &unk_278C36BF8;
  v70 = v72;
  objc_copyWeak(&v71, &location);
  v41 = v39;
  v65 = v41;
  v66 = v61;
  selfCopy = self;
  v42 = v28;
  v68 = v42;
  v69 = v59;
  [v40 extensionsWithMatchingAttributes:v41 completion:v64];

  objc_destroyWeak(&v71);
  _Block_object_dispose(v72, 8);

  objc_destroyWeak(&location);
LABEL_43:
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__2913;
  v84[4] = __Block_byref_object_dispose__2914;
  v85 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3;
  aBlock[3] = &unk_278C36B58;
  aBlock[4] = *(a1 + 72);
  aBlock[5] = v84;
  objc_copyWeak(&v83, (a1 + 80));
  v7 = _Block_copy(aBlock);
  if (v5)
  {
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_208;
    v80[3] = &unk_278C36B80;
    v81 = *(a1 + 40);
    v8 = [v5 if_firstObjectPassingTest:v80];
    v9 = v8 == 0;

    if (v9)
    {
      v38 = *(a1 + 48);
      v39 = WFLocalizedString(@"Input Not Supported");
      v40 = WFLocalizedString(@"Selected app does not support the provided input.");
      v41 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      *&v103 = *MEMORY[0x277CCA470];
      *(&v103 + 1) = v42;
      *buf = v39;
      *&buf[8] = v40;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v103 count:2];
      v44 = [v41 errorWithDomain:@"WFShareActionUIKitUserInterfaceErrorDomain" code:0 userInfo:v43];

      [v38 finishWithExtensionItems:0 error:v44];
LABEL_39:

      goto LABEL_40;
    }

    v10 = *(a1 + 40);
    v12 = *(a1 + 56);
    v11 = *(a1 + 64);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v76 = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2_210;
    v77 = &unk_278C36BD0;
    v78 = v84;
    objc_copyWeak(&v79, (a1 + 80));
    v13 = v10;
    v14 = v12;
    v15 = v11;
    v16 = v13;
    v74 = v15;
    v17 = v7;
    v73 = v75;
    if (!v13)
    {
      v56 = [MEMORY[0x277CCA890] currentHandler];
      v57 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v56 handleFailureInFunction:v57 file:@"WFShareActionUIKitUserInterface.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"extension"}];
    }

    v72 = v14;
    if (!v14)
    {
      v58 = [MEMORY[0x277CCA890] currentHandler];
      v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v58 handleFailureInFunction:v59 file:@"WFShareActionUIKitUserInterface.m" lineNumber:220 description:{@"Invalid parameter not satisfying: %@", @"extensionItems"}];
    }

    if (!v74)
    {
      v60 = [MEMORY[0x277CCA890] currentHandler];
      v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v60 handleFailureInFunction:v61 file:@"WFShareActionUIKitUserInterface.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier"}];
    }

    if (!v17)
    {
      v62 = [MEMORY[0x277CCA890] currentHandler];
      v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WFConfiguredViewControllerForExtension(NSExtension * _Nonnull __strong, NSArray<NSExtensionItem *> * _Nonnull __strong, NSString * _Nonnull __strong, void (^ _Nonnull __strong)(NSArray * _Nullable __strong, NSError * _Nullable __strong), void (^ _Nonnull __strong)(UIViewController * _Nullable __strong))"}];
      [v62 handleFailureInFunction:v63 file:@"WFShareActionUIKitUserInterface.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"presentationCompletionBlock"}];
    }

    if (![v74 isEqualToString:*MEMORY[0x277CE8938]])
    {
      v45 = v16;
      v46 = v14;
      v47 = v17;
      v48 = v73;
      v95[0] = 0;
      v95[1] = v95;
      v95[2] = 0x2020000000;
      v96 = 0;
      *&v103 = MEMORY[0x277D85DD0];
      *(&v103 + 1) = 3221225472;
      *&v104 = __WFConfiguredViewControllerForActionExtension_block_invoke;
      *(&v104 + 1) = &unk_278C36D20;
      *(&v105 + 1) = v95;
      v49 = v47;
      *&v105 = v49;
      [v45 setRequestCompletionBlock:&v103];
      v89 = MEMORY[0x277D85DD0];
      v90 = 3221225472;
      v91 = __WFConfiguredViewControllerForActionExtension_block_invoke_2;
      v92 = &unk_278C36D48;
      v94 = v95;
      v50 = v49;
      v93 = v50;
      [v45 setRequestCancellationBlock:&v89];
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __WFConfiguredViewControllerForActionExtension_block_invoke_3;
      v86[3] = &unk_278C36D70;
      v88 = v95;
      v51 = v50;
      v87 = v51;
      [v45 setRequestInterruptionBlock:v86];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __WFConfiguredViewControllerForActionExtension_block_invoke_4;
      v98 = &unk_278C36D98;
      v102 = v95;
      v52 = v51;
      v100 = v52;
      v53 = v45;
      v99 = v53;
      v54 = v48;
      v101 = v54;
      [v53 instantiateViewControllerWithInputItems:v46 connectionHandler:buf];

      _Block_object_dispose(v95, 8);
LABEL_38:

      objc_destroyWeak(&v79);
      goto LABEL_39;
    }

    v71 = v16;
    v69 = v14;
    v70 = v17;
    v68 = v73;
    if (([getSLComposeViewControllerClass() isAvailableForExtension:v71] & 1) == 0)
    {
      v18 = WFExtensionCommunicationError(0);
      v70[2](v70, 0, v18);
LABEL_37:

      goto LABEL_38;
    }

    v18 = [getSLComposeViewControllerClass() composeViewControllerForExtension:v71];
    if (!v18)
    {
      v35 = WFExtensionCommunicationError(0);
      v70[2](v70, 0, v35);
      goto LABEL_36;
    }

    v89 = MEMORY[0x277D85DD0];
    v90 = 3221225472;
    v91 = __WFConfiguredViewControllerForShareExtension_block_invoke;
    v92 = &unk_278C36CE0;
    v93 = v70;
    [v18 setCompletionHandler:&v89];
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v19 = v69;
    v20 = [v19 countByEnumeratingWithState:&v103 objects:buf count:16];
    v21 = v16;
    if (v20)
    {
      v22 = *v104;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v104 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v18 addExtensionItem:*(*(&v103 + 1) + 8 * i)];
        }

        v20 = [v19 countByEnumeratingWithState:&v103 objects:buf count:16];
      }

      while (v20);
    }

    v16 = v21;
    v24 = [v71 infoDictionary];
    v25 = [v24 objectForKeyedSubscript:@"NSExtension"];

    v26 = objc_alloc(MEMORY[0x277CC1E50]);
    v27 = [v71 identifier];
    v67 = [v26 initWithBundleIdentifier:v27 error:0];

    v28 = [v67 SDKVersion];
    v29 = v28;
    v30 = @"1.0";
    if (v28)
    {
      v30 = v28;
    }

    v66 = v30;

    v31 = [v25 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
    if (([v31 BOOLValue] & 1) == 0)
    {
      v65 = [v25 objectForKeyedSubscript:@"NSExtensionAttributes"];
      v32 = [v65 objectForKeyedSubscript:@"NSExtensionActionWantsFullScreenPresentation"];
      if (![v32 BOOLValue])
      {
        v55 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v64 = [v55 isVersion:v66 greaterThanOrEqualToVersion:@"13.0"];

        if (v64)
        {
          v33 = 0;
          v34 = -2;
          goto LABEL_28;
        }

LABEL_27:
        v33 = 1;
        v34 = 5;
LABEL_28:
        [v18 setModalPresentationStyle:v34];
        [v18 setShouldForceNonAnimatedTransition:v33];
        v76(v68, v18);

        v35 = v93;
LABEL_36:

        goto LABEL_37;
      }
    }

    goto LABEL_27;
  }

  v36 = getWFActionsLogObject();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = *(a1 + 32);
    *buf = 136315650;
    *&buf[4] = "[WFShareActionUIKitUserInterface presentExtensionViewControllerForItems:extensionBundleIdentifier:extensionPointIdentifier:isContentManaged:]_block_invoke_2";
    *&buf[12] = 2112;
    *&buf[14] = v37;
    *&buf[22] = 2114;
    v98 = v6;
    _os_log_impl(&dword_23E342000, v36, OS_LOG_TYPE_ERROR, "%s Failed to find matching extensions for attributes %@: %{public}@", buf, 0x20u);
  }

  (*(v7 + 2))(v7, 0, v6);
LABEL_40:

  objc_destroyWeak(&v83);
  _Block_object_dispose(v84, 8);
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_4;
  block[3] = &unk_278C36B30;
  v12 = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 48));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v13);
}

uint64_t __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_208(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_2_210(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3_211;
  v3[3] = &unk_278C36BA8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v3);
  objc_destroyWeak(&v4);
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_3_211(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentContent:*(*(*(a1 + 32) + 8) + 40)];
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_5;
    v8[3] = &unk_278C36B08;
    objc_copyWeak(&v11, (a1 + 64));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v4 dismissViewControllerAnimated:1 completion:v8];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    objc_destroyWeak(&v11);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained finishWithExtensionItems:*(a1 + 32) error:*(a1 + 40)];
  }
}

void __142__WFShareActionUIKitUserInterface_presentExtensionViewControllerForItems_extensionBundleIdentifier_extensionPointIdentifier_isContentManaged___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained finishWithExtensionItems:*(a1 + 32) error:*(a1 + 40)];
}

@end