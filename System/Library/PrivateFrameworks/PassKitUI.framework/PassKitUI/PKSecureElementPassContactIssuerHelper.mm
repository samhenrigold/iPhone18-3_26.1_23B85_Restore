@interface PKSecureElementPassContactIssuerHelper
- (PKSecureElementPassContactIssuerHelperDelegate)delegate;
- (void)callIssuerWithSourceItem:(id)item;
- (void)emailIssuer;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)openIssuerWebsite;
- (void)presentContactViewController:(unint64_t)controller sourceItem:(id)item;
- (void)setPass:(id)pass;
@end

@implementation PKSecureElementPassContactIssuerHelper

- (void)setPass:(id)pass
{
  v30 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  objc_storeStrong(&self->_pass, pass);
  devicePaymentApplications = [(PKSecureElementPass *)self->_pass devicePaymentApplications];
  allObjects = [devicePaymentApplications allObjects];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = allObjects;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v24 + 1) + 8 * v10);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      automaticSelectionCriteria = [v11 automaticSelectionCriteria];
      v13 = [automaticSelectionCriteria countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
LABEL_8:
        v16 = 0;
        while (1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(automaticSelectionCriteria);
          }

          type = [*(*(&v20 + 1) + 8 * v16) type];
          self->_isAppleAccess = PKEqualObjects();

          if (self->_isAppleAccess)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [automaticSelectionCriteria countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      if (self->_isAppleAccess)
      {
        break;
      }

      if (++v10 == v8)
      {
        v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)presentContactViewController:(unint64_t)controller sourceItem:(id)item
{
  itemCopy = item;
  v6 = PKUserInterfaceIdiom() & 0xFFFFFFFFFFFFFFFBLL;
  v7 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
  v8 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
  v9 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
  businessChatIdentifier = [(PKSecureElementPass *)self->_pass businessChatIdentifier];
  organizationName = [(PKSecureElementPass *)self->_pass organizationName];
  v11 = [v8 length] != 0;
  v45 = v9;
  if ([(PKSecureElementPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    v12 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPas_11.isa);
LABEL_5:
    v13 = v12;
LABEL_6:

    organizationName = v13;
    goto LABEL_7;
  }

  if (self->_featureIdentifier)
  {
    v12 = PKLocalizedFeatureString();
    goto LABEL_5;
  }

  if (self->_isAppleAccess && [(PKSecureElementPass *)self->_pass isAccessPass])
  {
    v39 = [(PKSecureElementPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0F8]];
    value = [v39 value];
    v41 = value;
    if (value)
    {
      v42 = value;
    }

    else
    {
      v42 = organizationName;
    }

    v13 = v42;

    organizationName = v39;
    v9 = v45;
    goto LABEL_6;
  }

LABEL_7:
  v14 = controller & v11;
  v48 = PKLocalizedPaymentString(&cfstr_ContactIssuer.isa, &stru_1F3BD5BF0.isa, organizationName);
  v15 = 0;
  if (v6 && ((v14 ^ 1) & 1) == 0)
  {
    organizationName2 = [(PKSecureElementPass *)self->_pass organizationName];
    v15 = PKLocalizedPaymentString(&cfstr_ContactIssuerB.isa, &cfstr_12.isa, organizationName2, v8);
  }

  v17 = v6 == 0;
  v43 = v8;
  if (v7 && [v7 length])
  {
    v18 = (controller >> 1) & 1;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v18) = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if ([v9 length])
  {
    v9 = ((controller >> 2) & 1);
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_18:
  v19 = 0;
  v20 = v17 & v14;
  if ((controller & 8) != 0 && businessChatIdentifier)
  {
    v19 = +[PKBusinessChatController deviceSupportsBusinessChat];
  }

  v44 = v7;
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v48 message:v15 preferredStyle:0];
  if (v20)
  {
    v22 = MEMORY[0x1E69DC648];
    v23 = PKLocalizedPaymentString(&cfstr_Call.isa);
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke;
    v52[3] = &unk_1E8011310;
    v52[4] = self;
    v53 = itemCopy;
    v24 = [v22 actionWithTitle:v23 style:0 handler:v52];
    [v21 addAction:v24];
  }

  if (v18)
  {
    v25 = MEMORY[0x1E69DC648];
    v26 = PKLocalizedPaymentString(&cfstr_Email_0.isa);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_2;
    v51[3] = &unk_1E80112E8;
    v51[4] = self;
    v27 = [v25 actionWithTitle:v26 style:0 handler:v51];
    [v21 addAction:v27];
  }

  if (v9)
  {
    v28 = MEMORY[0x1E69DC648];
    v29 = PKLocalizedPaymentString(&cfstr_GoToWebsite.isa);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_3;
    v50[3] = &unk_1E80112E8;
    v50[4] = self;
    v30 = [v28 actionWithTitle:v29 style:0 handler:v50];
    [v21 addAction:v30];
  }

  if (v19)
  {
    v31 = MEMORY[0x1E69DC648];
    v32 = PKLocalizedPaymentString(&cfstr_Message.isa);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_4;
    v49[3] = &unk_1E80112E8;
    v49[4] = self;
    v33 = [v31 actionWithTitle:v32 style:0 handler:v49];
    [v21 addAction:v33];
  }

  v34 = MEMORY[0x1E69DC648];
  v35 = PKLocalizedString(&cfstr_Cancel.isa);
  v36 = [v34 actionWithTitle:v35 style:1 handler:0];
  [v21 addAction:v36];

  popoverPresentationController = [v21 popoverPresentationController];
  [popoverPresentationController setSourceItem:itemCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v21 animated:1 completion:0];
}

uint64_t __82__PKSecureElementPassContactIssuerHelper_presentContactViewController_sourceItem___block_invoke_4(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)callIssuerWithSourceItem:(id)item
{
  v55[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = PKStoreDemoModeEnabled();
  if (v5)
  {
    organizationName = PKUIStoreDemoGatewayViewController(v5, v6, v7);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:organizationName animated:1 completion:0];

LABEL_33:
    goto LABEL_34;
  }

  if (!PKUserInterfaceIdiomSupportsLargeLayouts())
  {
    organizationName = [(PKSecureElementPass *)self->_pass organizationName];
    v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:organizationName message:0 preferredStyle:0];
    v11 = MEMORY[0x1E69DCC10];
    v55[0] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
    v13 = [v11 appearanceWhenContainedInInstancesOfClasses:v12];
    [v13 setNumberOfLines:2];

    v14 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC100]];
    v15 = v14;
    if (v14)
    {
      v16 = MEMORY[0x1E69DC648];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke;
      v51[3] = &unk_1E80112E8;
      v52 = v14;
      v17 = [v16 actionWithTitle:v52 style:0 handler:v51];
      [v10 addAction:v17];
    }

    selfCopy = self;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = [(PKSecureElementPass *)self->_pass backFieldBuckets];
    v39 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (!v39)
    {
LABEL_32:

      v32 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
      v33 = [MEMORY[0x1E69DC648] actionWithTitle:v32 style:1 handler:0];
      [v10 addAction:v33];

      popoverPresentationController = [v10 popoverPresentationController];
      [popoverPresentationController setSourceItem:itemCopy];

      v35 = objc_loadWeakRetained(&selfCopy->_delegate);
      [v35 contactIssuerHelper:selfCopy didRequestPresentViewController:v10 animated:1 completion:0];

      goto LABEL_33;
    }

    v38 = *v48;
LABEL_9:
    v18 = 0;
    while (1)
    {
      if (*v48 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = v18;
      v19 = *(*(&v47 + 1) + 8 * v18);
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v20 = v19;
      v21 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v21)
      {
        break;
      }

LABEL_30:

      v18 = v40 + 1;
      if (v40 + 1 == v39)
      {
        v39 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (!v39)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }
    }

    v22 = v21;
    v23 = *v44;
LABEL_14:
    v24 = 0;
    while (1)
    {
      if (*v44 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v43 + 1) + 8 * v24);
      if ([v25 dataDetectorTypes] != 1)
      {
        goto LABEL_28;
      }

      label = [v25 label];

      value = [v25 value];

      if (label)
      {
        v28 = value == 0;
      }

      else
      {
        v28 = 1;
      }

      if (v28)
      {
        if (label || (label = value) != 0)
        {
LABEL_27:
          v30 = MEMORY[0x1E69DC648];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke_2;
          v41[3] = &unk_1E80112E8;
          v15 = value;
          v42 = v15;
          v31 = [v30 actionWithTitle:label style:0 handler:v41];
          [v10 addAction:v31];

          organizationName = label;
          goto LABEL_28;
        }
      }

      else
      {
        v29 = [label stringByAppendingFormat:@"\n%@", value];

        label = v29;
        if (v29)
        {
          goto LABEL_27;
        }
      }

      organizationName = 0;
      v15 = value;
LABEL_28:
      if (v22 == ++v24)
      {
        v22 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_14;
      }
    }
  }

  [(PKSecureElementPassContactIssuerHelper *)self presentContactViewController:1 sourceItem:0];
LABEL_34:
}

void __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = PKTelephoneURLFromPhoneNumber();
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

void __67__PKSecureElementPassContactIssuerHelper_callIssuerWithSourceItem___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = PKTelephoneURLFromPhoneNumber();
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v2 openSensitiveURL:v3 withOptions:0];
}

- (void)openIssuerWebsite
{
  v3 = PKStoreDemoModeEnabled();
  if (v3)
  {
    v7 = PKUIStoreDemoGatewayViewController(v3, v4, v5);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v7 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC108]];
    WeakRetained = [MEMORY[0x1E695DFF8] URLWithString:?];
    PKOpenURL();
  }
}

- (void)emailIssuer
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = PKStoreDemoModeEnabled();
  if (v3)
  {
    v15 = PKUIStoreDemoGatewayViewController(v3, v4, v5);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained contactIssuerHelper:self didRequestPresentViewController:v15 animated:1 completion:0];

    v7 = v15;
  }

  else
  {
    if ([(objc_class *)getMFMailComposeViewControllerClass_0() canSendMail])
    {
      v8 = objc_alloc_init(getMFMailComposeViewControllerClass_0());
      [v8 setMailComposeDelegate:self];
      v9 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
      v17[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      [v8 setToRecipients:v10];

      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 contactIssuerHelper:self didRequestPresentViewController:v8 animated:1 completion:0];

      return;
    }

    v16 = [(PKSecureElementPass *)self->_pass localizedValueForFieldKey:*MEMORY[0x1E69BC0F0]];
    if ([v16 length])
    {
      v12 = MEMORY[0x1E695DFF8];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v16];
      v14 = [v12 URLWithString:v13];
      PKOpenURL();
    }

    v7 = v16;
  }
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (PKSecureElementPassContactIssuerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end