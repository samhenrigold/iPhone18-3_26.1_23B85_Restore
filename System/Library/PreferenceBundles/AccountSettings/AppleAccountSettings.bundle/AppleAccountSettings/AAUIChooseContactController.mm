@interface AAUIChooseContactController
- (AAUIChooseContactController)init;
- (AAUIChooseContactController)initWithAccountManager:(id)manager;
- (AAUIChooseContactControllerDelegate)delegate;
- (BOOL)_isHandleReachable:(id)reachable;
- (id)_idsReachabilityDictionaryForRecipient:(id)recipient;
- (id)searchController:(id)controller composeRecipientForAddress:(id)address;
- (id)searchController:(id)controller tintColorForRecipient:(id)recipient;
- (void)_prepareNextButton;
- (void)_selectionCompleted;
- (void)_setupViewController;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller;
- (void)fetchIDSStatusForRecipient:(id)recipient;
- (void)searchController:(id)controller didAddRecipient:(id)recipient;
@end

@implementation AAUIChooseContactController

- (AAUIChooseContactController)init
{
  v5.receiver = self;
  v5.super_class = AAUIChooseContactController;
  v2 = [(AAUIChooseContactController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AAUIChooseContactController *)v2 _setupViewController];
  }

  return v3;
}

- (AAUIChooseContactController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = AAUIChooseContactController;
  v6 = [(AAUIChooseContactController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(AAUIChooseContactController *)v6 _setupViewController];
    objc_storeStrong(&v7->_accountManager, manager);
  }

  return v7;
}

- (id)searchController:(id)controller composeRecipientForAddress:(id)address
{
  addressCopy = address;
  v5 = _AAUILogSystem(addressCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = addressCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Composing contact for address: %@", &v9, 0xCu);
  }

  if ([addressCopy aa_appearsToBeEmail])
  {
    v6 = 0;
  }

  else if ([addressCopy aa_appearsToBePhoneNumber])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  v7 = [[CNComposeRecipient alloc] initWithContact:0 address:addressCopy kind:v6];

  return v7;
}

- (id)searchController:(id)controller tintColorForRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  if ([recipientCopy kind] > 1)
  {
    v11 = +[UIColor grayColor];
  }

  else if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    idsStatusAccessQueue = self->_idsStatusAccessQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A05C;
    block[3] = &unk_594F0;
    objc_copyWeak(&v26, &location);
    v9 = recipientCopy;
    v25 = v9;
    dispatch_async(idsStatusAccessQueue, block);
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v10 = self->_idsStatusAccessQueue;
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_A0AC;
    v16 = &unk_59608;
    objc_copyWeak(&v19, &location);
    v18 = &v20;
    v17 = v9;
    dispatch_sync(v10, &v13);
    v11 = 0;
    if (*(v21 + 24) == 1)
    {
      v11 = [UIColor tintColor:v13];
    }

    objc_destroyWeak(&v19);
    _Block_object_dispose(&v20, 8);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)didTapTextViewAccessoryButtonForSearchController:(id)controller
{
  v6 = objc_opt_new();
  [v6 setDelegate:self];
  chooseContactViewController = [(AAUIChooseContactController *)self chooseContactViewController];
  navigationController = [chooseContactViewController navigationController];
  [navigationController presentViewController:v6 animated:1 completion:0];
}

- (void)searchController:(id)controller didAddRecipient:(id)recipient
{
  controllerCopy = controller;
  recipientCopy = recipient;
  recipients = [controllerCopy recipients];
  v9 = [recipients count];

  if (v9 >= 2)
  {
    v11 = recipientCopy;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [controllerCopy setRecipients:v10];
  }

  [(AAUIChooseContactController *)self _prepareNextButton];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  v8 = [AAUITrustedContactPickerViewController addressKindAndHandleForSingleAddressContact:contactCopy];
  v9 = [CNComposeRecipient alloc];
  handle = [v8 handle];
  v11 = [v9 initWithContact:contactCopy address:handle kind:{objc_msgSend(v8, "kind")}];

  v13 = v11;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setRecipients:v12];

  if (self->_directPickerViewController == pickerCopy)
  {
    [(AAUIChooseContactController *)self _selectionCompleted];
  }

  else
  {
    [(CNContactPickerViewController *)pickerCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  pickerCopy = picker;
  propertyCopy = property;
  value = [propertyCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    stringValue = [value stringValue];
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = value;
      v10 = 0;
    }

    else
    {
      stringValue = 0;
      v10 = 5;
    }
  }

  v11 = [CNComposeRecipient alloc];
  contact = [propertyCopy contact];

  v13 = [v11 initWithContact:contact address:stringValue kind:v10];
  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setRecipients:v14];

  if (self->_directPickerViewController == pickerCopy)
  {
    [(AAUIChooseContactController *)self _selectionCompleted];
  }

  else
  {
    [(CNContactPickerViewController *)pickerCopy dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_setupViewController
{
  v3 = objc_alloc_init(NSMutableDictionary);
  idsReachabilityForRecipientHandle = self->_idsReachabilityForRecipientHandle;
  self->_idsReachabilityForRecipientHandle = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  idsReachabilityForUnifiedOrGroupRecipientHandle = self->_idsReachabilityForUnifiedOrGroupRecipientHandle;
  self->_idsReachabilityForUnifiedOrGroupRecipientHandle = v5;

  v7 = objc_alloc_init(NSMutableDictionary);
  handleToRecipient = self->_handleToRecipient;
  self->_handleToRecipient = v7;

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.appleaccountui.idsReachabilityAccessQueue", v9);
  idsStatusAccessQueue = self->_idsStatusAccessQueue;
  self->_idsStatusAccessQueue = v10;

  v12 = objc_alloc_init(AAContactsManager);
  contactsManager = self->_contactsManager;
  self->_contactsManager = v12;

  v22 = objc_opt_new();
  v14 = [[CNAutocompleteSearchController alloc] initWithSearchType:1];
  autocompleteSearchController = self->_autocompleteSearchController;
  self->_autocompleteSearchController = v14;

  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setDelegate:self];
  title = [v22 title];
  [(CNAutocompleteSearchController *)self->_autocompleteSearchController setTitle:title];

  v17 = objc_opt_new();
  selectButtonText = [v22 selectButtonText];
  [v17 setTitle:selectButtonText];

  [v17 setTarget:self];
  [v17 setAction:"_selectionCompleted"];
  navigationItem = [(CNAutocompleteSearchController *)self->_autocompleteSearchController navigationItem];
  [navigationItem setRightBarButtonItem:v17];

  [(AAUIChooseContactController *)self _prepareNextButton];
  v20 = objc_opt_new();
  directPickerViewController = self->_directPickerViewController;
  self->_directPickerViewController = v20;

  [(CNContactPickerViewController *)self->_directPickerViewController setDelegate:self];
}

- (void)_prepareNextButton
{
  recipients = [(CNAutocompleteSearchController *)self->_autocompleteSearchController recipients];
  v4 = [recipients count] == &dword_0 + 1;

  navigationItem = [(CNAutocompleteSearchController *)self->_autocompleteSearchController navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (void)_selectionCompleted
{
  recipients = [(CNAutocompleteSearchController *)self->_autocompleteSearchController recipients];
  firstObject = [recipients firstObject];

  kind = [firstObject kind];
  if (kind > 1)
  {
    v11 = _AAUILogSystem(kind);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_3351C(v11);
    }
  }

  else
  {
    v6 = [AALocalContactInfo alloc];
    address = [firstObject address];
    contact = [firstObject contact];
    v9 = [v6 initWithHandle:address contact:contact];

    delegate = [(AAUIChooseContactController *)self delegate];
    [delegate chooseContactController:self didSelectContact:v9];
  }
}

- (BOOL)_isHandleReachable:(id)reachable
{
  reachableCopy = reachable;
  v5 = [(AAUIChooseContactController *)self _idsReachabilityDictionaryForRecipient:reachableCopy];
  address = [reachableCopy address];
  v7 = [v5 objectForKeyedSubscript:address];

  if (!v7 || (bOOLValue = [v7 integerValue], bOOLValue == -1))
  {
    v9 = 0;
  }

  else
  {
    bOOLValue = [v7 BOOLValue];
    v9 = bOOLValue;
  }

  v10 = _AAUILogSystem(bOOLValue);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_33560(reachableCopy, v9, v10);
  }

  return v9;
}

- (id)_idsReachabilityDictionaryForRecipient:(id)recipient
{
  children = [recipient children];
  v5 = [children count];
  v6 = 24;
  if (!v5)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  v8 = v7;

  return v7;
}

- (void)fetchIDSStatusForRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    v6 = [(AAUIChooseContactController *)self _idsReachabilityDictionaryForRecipient:recipientCopy];
    address = [recipientCopy address];
    v8 = [v6 objectForKeyedSubscript:address];

    if (!v8)
    {
      address2 = [recipientCopy address];
      v10 = [v6 objectForKeyedSubscript:address2];

      if (v10)
      {
        if ([v10 integerValue] == -1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        address3 = [recipientCopy address];
        [v6 setObject:&off_5C520 forKeyedSubscript:address3];
      }

      children = [recipientCopy children];
      v13 = [children count];

      if (v13)
      {
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        children2 = [recipientCopy children];
        v15 = [children2 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v15)
        {
          v16 = *v32;
          do
          {
            v17 = 0;
            do
            {
              if (*v32 != v16)
              {
                objc_enumerationMutation(children2);
              }

              [(AAUIChooseContactController *)self fetchIDSStatusForRecipient:*(*(&v31 + 1) + 8 * v17)];
              v17 = v17 + 1;
            }

            while (v15 != v17);
            v15 = [children2 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v15);
        }
      }

      handleToRecipient = self->_handleToRecipient;
      address4 = [recipientCopy address];
      v20 = [(NSMutableDictionary *)handleToRecipient objectForKeyedSubscript:address4];

      if (!v20 || v20 == recipientCopy)
      {
        if (v20 && v20 == recipientCopy)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = _AAUILogSystem(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_336B0(recipientCopy, v20, v22);
        }
      }

      v23 = self->_handleToRecipient;
      address5 = [recipientCopy address];
      [(NSMutableDictionary *)v23 setObject:recipientCopy forKeyedSubscript:address5];

      objc_initWeak(&location, self);
      contactsManager = self->_contactsManager;
      address6 = [recipientCopy address];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_AD84;
      v27[3] = &unk_59658;
      v27[4] = self;
      objc_copyWeak(&v29, &location);
      v28 = recipientCopy;
      [(AAContactsManager *)contactsManager idsStatusForHandle:address6 completion:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
LABEL_26:

LABEL_27:
    }
  }

  else
  {
    v6 = _AAUILogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_33614(recipientCopy, v6);
    }
  }
}

- (AAUIChooseContactControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end