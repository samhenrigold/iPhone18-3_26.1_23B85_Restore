@interface FAActivityViewController
- (FAActivityViewController)initWithItemSource:(id)source eventType:(id)type;
- (FAActivityViewControllerDelegate)delegate;
- (id)_parseRecipientAddresses:(id)addresses;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion;
@end

@implementation FAActivityViewController

- (FAActivityViewController)initWithItemSource:(id)source eventType:(id)type
{
  v26[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  typeCopy = type;
  v9 = objc_alloc_init(FAInviteInPersonActivity);
  v10 = [typeCopy isEqualToString:*MEMORY[0x277D08108]];

  v26[0] = sourceCopy;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v25 = v9;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  v22.receiver = self;
  v22.super_class = FAActivityViewController;
  v13 = [(FAActivityViewController *)&v22 initWithActivityItems:v11 applicationActivities:v12 shouldSuggestFamilyMembers:v10 ^ 1u];

  if (v13)
  {
    objc_storeStrong(&v13->_itemSource, source);
    v14 = objc_alloc_init(FAInviteRecipientEvaluator);
    inviteRecipientEvaluator = v13->_inviteRecipientEvaluator;
    v13->_inviteRecipientEvaluator = v14;

    v16 = *MEMORY[0x277D54728];
    if (v10)
    {
      v24[0] = *MEMORY[0x277D54710];
      v24[1] = v16;
      v24[2] = *MEMORY[0x277D54738];
      v17 = MEMORY[0x277CBEA60];
      v18 = v24;
      v19 = 3;
    }

    else
    {
      v23[0] = *MEMORY[0x277D54710];
      v23[1] = v16;
      v23[2] = *MEMORY[0x277D54738];
      v23[3] = @"FAInviteInPersonActivity";
      v17 = MEMORY[0x277CBEA60];
      v18 = v23;
      v19 = 4;
    }

    v20 = [v17 arrayWithObjects:v18 count:v19];
    [(FAActivityViewController *)v13 setIncludedActivityTypes:v20];

    [(FAActivityViewController *)v13 setAirDropDelegate:v13];
    [(FAActivityViewController *)v13 setAllowsCustomPresentationStyle:1];
  }

  return v13;
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = 0;

  delegate = [(FAActivityViewController *)self delegate];
  v10 = [delegate linkMetadataForActivityViewController:self];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__FAActivityViewController__prepareActivity_completion___block_invoke;
  v15[3] = &unk_2782F3420;
  v16 = activityCopy;
  selfCopy = self;
  v18 = v10;
  v19 = completionCopy;
  v14.receiver = self;
  v14.super_class = FAActivityViewController;
  v11 = completionCopy;
  v12 = v10;
  v13 = activityCopy;
  [(FAActivityViewController *)&v14 _prepareActivity:v13 completion:v15];
}

uint64_t __56__FAActivityViewController__prepareActivity_completion___block_invoke(uint64_t a1)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) activityType];
  v3 = *MEMORY[0x277D54738];

  v4 = *(a1 + 32);
  if (v2 == v3)
  {
    v11 = v4;
    v12 = *(a1 + 40);
    v13 = [v11 messageComposeViewController];
    [v13 setMessageComposeDelegate:v12];

    v14 = [*(a1 + 48) context];
    v15 = [v14 messageBubbleTitle];

    if (v15)
    {
      v16 = objc_alloc(MEMORY[0x277CD6908]);
      v17 = [*(a1 + 48) bubbleMetadata];
      v9 = [v16 initWithLinkMetadata:v17];

      v18 = [objc_alloc(MEMORY[0x277CD6900]) initWithAlternateLayout:v9];
      v43[0] = *MEMORY[0x277D18888];
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      [v18 setRequiredCapabilities:v19];

      v20 = objc_alloc(MEMORY[0x277CD68F8]);
      v21 = objc_alloc_init(MEMORY[0x277CD6920]);
      v22 = [v20 initWithSession:v21];

      [v22 setLayout:v18];
      v23 = [*(a1 + 48) context];
      v24 = [v23 buildInviteMessageBubbleURL:0];
      [v22 setURL:v24];

      v25 = [*(a1 + 48) context];
      v26 = [v25 messageBubbleSubTitle];
      [v22 setSummaryText:v26];

      v27 = [v11 messageComposeViewController];
      [v27 setMessage:v22];
    }

    else
    {
      v9 = [v11 messageComposeViewController];
      v18 = [*(a1 + 48) bubbleMetadata];
      v22 = [v18 dataRepresentation];
      v27 = [*(a1 + 48) bubbleMetadata];
      v41 = [v27 URL];
      [v9 addRichLinkData:v22 withWebpageURL:v41];
    }

LABEL_11:

    goto LABEL_12;
  }

  v5 = [v4 activityType];
  v6 = *MEMORY[0x277D54728];

  if (v5 == v6)
  {
    v11 = [*(a1 + 48) mailMetadata];
    v28 = objc_alloc(MEMORY[0x277CD46C0]);
    v29 = [v11 originalURL];
    v9 = [v28 initWithURL:v29];

    [v9 setMetadata:v11];
    v18 = [v9 HTMLFragmentString];
    v30 = [*(a1 + 48) context];
    v31 = [v30 mailMessageBodyHTML];
    v32 = v31;
    v33 = &stru_282D9AA68;
    if (v31)
    {
      v33 = v31;
    }

    v34 = v33;

    v22 = [(__CFString *)v34 stringByAppendingString:v18];

    v35 = *(a1 + 40);
    v36 = *(a1 + 32);
    v37 = [v36 mailComposeViewController];
    [v37 setMailComposeDelegate:v35];

    v38 = [v36 mailComposeViewController];
    [v38 setMessageBody:v22 isHTML:1];

    v27 = [v36 mailComposeViewController];
    v39 = [*(a1 + 48) context];

    v40 = [v39 mailMessageSubject];
    [v27 setSubject:v40];

    goto LABEL_11;
  }

  v7 = [*(a1 + 32) activityType];

  if (v7 == @"FAInviteInPersonActivity")
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = [v8 presentingViewController];
    [v9 setPresentingViewController:v10];

    v11 = [*(a1 + 40) delegate];
    [v11 activityViewController:*(a1 + 40) willStartAsyncActivity:v9];
LABEL_12:
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v17 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = _FALogSystem(controllerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v13 = 138412546;
    v14 = v9;
    v15 = 2048;
    resultCopy = result;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - didFinishWithResult:%ld", &v13, 0x16u);
  }

  activity = [(FAActivityViewController *)self activity];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    activity2 = [(FAActivityViewController *)self activity];
    [activity2 messageComposeViewController:controllerCopy didFinishWithResult:result];
  }
}

- (void)messageComposeViewController:(id)controller shouldSendMessage:(id)message toRecipients:(id)recipients completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  completionCopy = completion;
  v10 = _FALogSystem(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = @"FAActivityViewController.m";
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - shouldSendMessage", &v19, 0xCu);
  }

  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = recipientsCopy;
  v12 = recipientsCopy;

  inviteRecipientEvaluator = self->_inviteRecipientEvaluator;
  delegate = [(FAActivityViewController *)self delegate];
  v15 = [delegate linkMetadataForActivityViewController:self];
  context = [v15 context];
  activity = [(FAActivityViewController *)self activity];
  activityViewController = [activity activityViewController];
  [(FAInviteRecipientEvaluator *)inviteRecipientEvaluator validateRecipients:v12 inviteContext:context presenter:activityViewController completion:completionCopy];
}

- (void)mailComposeController:(id)controller shouldSendMail:(id)mail toRecipients:(id)recipients completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  recipientsCopy = recipients;
  v10 = _FALogSystem(recipientsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = @"FAActivityViewController.m";
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - shouldSendMail", &v19, 0xCu);
  }

  v11 = [(FAActivityViewController *)self _parseRecipientAddresses:recipientsCopy];
  recipientAddresses = self->_recipientAddresses;
  self->_recipientAddresses = v11;

  inviteRecipientEvaluator = self->_inviteRecipientEvaluator;
  delegate = [(FAActivityViewController *)self delegate];
  v15 = [delegate linkMetadataForActivityViewController:self];
  context = [v15 context];
  activity = [(FAActivityViewController *)self activity];
  activityViewController = [activity activityViewController];
  [(FAInviteRecipientEvaluator *)inviteRecipientEvaluator validateRecipients:recipientsCopy inviteContext:context presenter:activityViewController completion:completionCopy];
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  errorCopy = error;
  v10 = _FALogSystem(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = @"FAActivityViewController.m";
    v16 = 2048;
    resultCopy = result;
    _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "%@ MFMessageComposeVC delegate callback - didFinishWithResult:%ld", &v14, 0x16u);
  }

  activity = [(FAActivityViewController *)self activity];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    activity2 = [(FAActivityViewController *)self activity];
    [activity2 mailComposeController:controllerCopy didFinishWithResult:result error:errorCopy];
  }
}

- (id)_parseRecipientAddresses:(id)addresses
{
  v18 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc_init(MEMORY[0x277CFBE00]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = addressesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 firstEmailAddressInString:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)activityViewControllerDidFinishAirdropTransfer:(id)transfer
{
  transferCopy = transfer;
  self->_didCompleteAirdropTransfer = 1;
  v10 = transferCopy;
  completionWithItemsHandler = [transferCopy completionWithItemsHandler];

  if (completionWithItemsHandler)
  {
    completionWithItemsHandler2 = [v10 completionWithItemsHandler];
    activity = [v10 activity];
    activityType = [activity activityType];
    (completionWithItemsHandler2)[2](completionWithItemsHandler2, activityType, 1, 0, 0);
  }

  presentingViewController = [v10 presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (FAActivityViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end