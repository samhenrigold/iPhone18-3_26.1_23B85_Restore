@interface WFSelectContactsActionUIKitUserInterface
- (BOOL)respondsToSelector:(SEL)selector;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
- (void)contactPickerDidCancel:(id)cancel;
- (void)finishWithContacts:(id)contacts error:(id)error;
- (void)showWithProperties:(id)properties selectMultiple:(BOOL)multiple completionHandler:(id)handler;
@end

@implementation WFSelectContactsActionUIKitUserInterface

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  v5 = [contacts if_map:&__block_literal_global_5645];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v5 error:0];
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5 = WFContactFromCNContactProperty();
  v7[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v6 error:0];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CFC278] contactWithCNContact:contact];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  contactProperties = [(WFSelectContactsActionUIKitUserInterface *)self contactProperties];
  v7 = [contactProperties countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    selfCopy = self;
    v9 = *v19;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(contactProperties);
        }

        v23 = *(*(&v18 + 1) + 8 * i);
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v12 = WFContactPropertyIDsFromActionProperties();
        firstObject = [v12 firstObject];
        intValue = [firstObject intValue];

        if ([v5 hasValueForPropertyID:intValue])
        {
          v15 = [v5 contactWithPropertyID:intValue multivalueIndex:0];

          v5 = v15;
          goto LABEL_11;
        }
      }

      v8 = [contactProperties countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

LABEL_11:
    self = selfCopy;
  }

  v22 = v5;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:v16 error:0];
}

- (void)contactPickerDidCancel:(id)cancel
{
  userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
  [(WFSelectContactsActionUIKitUserInterface *)self finishWithContacts:0 error:userCancelledError];
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5 = sel_contactPicker_didSelectContacts_ == selector || sel_contactPicker_didSelectContactProperties_ == selector;
  if (!v5 || (v6 = [(WFSelectContactsActionUIKitUserInterface *)self selectMultiple]))
  {
    v8.receiver = self;
    v8.super_class = WFSelectContactsActionUIKitUserInterface;
    LOBYTE(v6) = [(WFSelectContactsActionUIKitUserInterface *)&v8 respondsToSelector:selector];
  }

  return v6;
}

- (void)finishWithContacts:(id)contacts error:(id)error
{
  contactsCopy = contacts;
  errorCopy = error;
  completionHandler = [(WFSelectContactsActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFSelectContactsActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, contactsCopy, errorCopy);
  }

  [(WFSelectContactsActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__WFSelectContactsActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFSelectContactsActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __84__WFSelectContactsActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithContacts:0 error:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showWithProperties:(id)properties selectMultiple:(BOOL)multiple completionHandler:(id)handler
{
  multipleCopy = multiple;
  propertiesCopy = properties;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSelectContactsActionUIKitUserInterface.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  [(WFSelectContactsActionUIKitUserInterface *)self setContactProperties:propertiesCopy];
  [(WFSelectContactsActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  [(WFSelectContactsActionUIKitUserInterface *)self setSelectMultiple:multipleCopy];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__WFSelectContactsActionUIKitUserInterface_showWithProperties_selectMultiple_completionHandler___block_invoke;
  block[3] = &unk_278C375A0;
  block[4] = self;
  v14 = propertiesCopy;
  v11 = propertiesCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __96__WFSelectContactsActionUIKitUserInterface_showWithProperties_selectMultiple_completionHandler___block_invoke(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v2 = getCNContactPickerViewControllerClass_softClass;
  v16 = getCNContactPickerViewControllerClass_softClass;
  if (!getCNContactPickerViewControllerClass_softClass)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __getCNContactPickerViewControllerClass_block_invoke;
    v12[3] = &unk_278C37610;
    v12[4] = &v13;
    __getCNContactPickerViewControllerClass_block_invoke(v12);
    v2 = v14[3];
  }

  v3 = v2;
  _Block_object_dispose(&v13, 8);
  v4 = objc_alloc_init(v2);
  [v4 setModalPresentationStyle:2];
  [v4 setDelegate:*(a1 + 32)];
  v5 = WFCNPropertyKeysFromActionProperties();
  [v4 setDisplayedPropertyKeys:v5];

  v6 = [v4 displayedPropertyKeys];
  v7 = WFPredicateForEnablingPerson();
  [v4 setPredicateForEnablingContact:v7];

  v8 = [v4 displayedPropertyKeys];
  v9 = WFPredicateForSelectionOfPerson();
  [v4 setPredicateForSelectionOfContact:v9];

  v10 = *(a1 + 32);
  v11 = [v4 presentationController];
  [v11 setDelegate:v10];

  [*(a1 + 32) presentContent:v4];
}

@end