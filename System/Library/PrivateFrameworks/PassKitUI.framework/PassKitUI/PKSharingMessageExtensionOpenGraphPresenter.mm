@interface PKSharingMessageExtensionOpenGraphPresenter
+ (id)propertiesForMessage:(id)message;
- (PKSharingMessageExtensionOpenGraphPresenter)initWithTargetDevice:(id)device passLibrary:(id)library;
- (PKSharingMessageExtensionRenderer)renderer;
- (void)didTapMessage;
- (void)extensionWillAppear;
- (void)setMessage:(id)message;
- (void)validateForRecipients:(id)recipients senderAddress:(id)address completion:(id)completion;
@end

@implementation PKSharingMessageExtensionOpenGraphPresenter

- (PKSharingMessageExtensionOpenGraphPresenter)initWithTargetDevice:(id)device passLibrary:(id)library
{
  deviceCopy = device;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PKSharingMessageExtensionOpenGraphPresenter;
  v9 = [(PKSharingMessageExtensionOpenGraphPresenter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_targetDevice, device);
    objc_storeStrong(&v10->_passLibrary, library);
  }

  return v10;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_message, message);
  }
}

- (void)extensionWillAppear
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(PKSharingMessageExtensionOpenGraphMessage *)self->_message hasFetchedOpenGraphPreview])
  {
    isFromMe = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message isFromMe];
    message = self->_message;
    if (isFromMe)
    {
      urlRepresentation = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message urlRepresentation];
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        absoluteString = [urlRepresentation absoluteString];
        v8 = PKSharingLoggableMailboxAddress();
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_INFO, "iMessage Extension: fetching open graph preview for: '%@'...", buf, 0xCu);
      }

      v9 = objc_alloc_init(MEMORY[0x1E696ECE8]);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke;
      v18[3] = &unk_1E80183E8;
      v19 = urlRepresentation;
      selfCopy = self;
      v21 = v9;
      v10 = v9;
      v11 = urlRepresentation;
      [v10 startFetchingMetadataForURL:v11 completionHandler:v18];
    }

    else
    {
      v12 = PKLocalizedShareableCredentialString(&cfstr_SharePreviewSu.isa);
      [(PKSharingMessageExtensionOpenGraphMessage *)message setTitle:v12];

      v13 = self->_message;
      v14 = MEMORY[0x1E69DCAB8];
      v15 = PKPassKitUIBundle();
      v16 = [v14 imageNamed:@"Generic-Shared-Key" inBundle:v15];
      [(PKSharingMessageExtensionOpenGraphMessage *)v13 setThumbnail:v16];

      [(PKSharingMessageExtensionOpenGraphMessage *)self->_message setHasFetchedOpenGraphPreview:1];
      WeakRetained = objc_loadWeakRetained(&self->_renderer);
      [WeakRetained messageDidUpdate];
    }
  }
}

void __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke_2;
  block[3] = &unk_1E8010A88;
  v8 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__PKSharingMessageExtensionOpenGraphPresenter_extensionWillAppear__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) absoluteString];
    v6 = PKSharingLoggableMailboxAddress();
    v23 = 138412546;
    v24 = v4;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_INFO, "iMessage Extension: received metadata %@ for: '%@'", &v23, 0x16u);
  }

  [*(*(a1 + 48) + 24) setHasFetchedOpenGraphPreview:1];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(*(a1 + 48) + 24);
    v9 = [v7 title];
    [v8 setTitle:v9];

    v10 = [*(a1 + 32) image];
    v11 = [v10 data];

    if (v11)
    {
      v12 = PKCreateCGImage(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(*(a1 + 48) + 24);
        v15 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:v12];
        [v14 setThumbnail:v15];

        CGImageRelease(v13);
        goto LABEL_11;
      }
    }
  }

  v16 = *(*(a1 + 48) + 24);
  v17 = MEMORY[0x1E69DCAB8];
  v18 = PKPassKitUIBundle();
  v19 = [v17 imageNamed:@"Generic-Shared-Key" inBundle:v18];
  [v16 setThumbnail:v19];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v21 = [*(a1 + 40) absoluteString];
    v22 = PKSharingLoggableMailboxAddress();
    v23 = 138412290;
    v24 = v22;
    _os_log_error_impl(&dword_1BD026000, v3, OS_LOG_TYPE_ERROR, "iMessage Extension: no image present for open graph preview: '%@'", &v23, 0xCu);
  }

  v11 = v3;
LABEL_11:

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 32));
  [WeakRetained messageDidUpdate];
}

- (void)validateForRecipients:(id)recipients senderAddress:(id)address completion:(id)completion
{
  completionCopy = completion;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "iMessage Extension: validateForRecipients called for open graph presenter. This shouldn't happen", v7, 2u);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)didTapMessage
{
  if (![(PKSharingMessageExtensionOpenGraphMessage *)self->_message isFromMe])
  {
    WeakRetained = objc_loadWeakRetained(&self->_renderer);
    urlRepresentation = [(PKSharingMessageExtensionOpenGraphMessage *)self->_message urlRepresentation];
    [WeakRetained openAppURL:urlRepresentation];
  }
}

+ (id)propertiesForMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(PKCredentialSharingMessageExtensionViewProperties);
  title = [messageCopy title];
  if (title)
  {
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:title];
  }

  else
  {
    v6 = PKLocalizedString(&cfstr_Wallet_1.isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setTitle:v6];
  }

  subtitle = [messageCopy subtitle];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setSubtitle:subtitle];

  thumbnail = [messageCopy thumbnail];
  [(PKCredentialSharingMessageExtensionViewProperties *)v4 setCardImage:thumbnail];

  if (([messageCopy isFromMe] & 1) == 0)
  {
    v9 = PKLocalizedShareableCredentialString(&cfstr_ShareableMessa_0.isa);
    [(PKCredentialSharingMessageExtensionViewProperties *)v4 setButtonText:v9];
  }

  return v4;
}

- (PKSharingMessageExtensionRenderer)renderer
{
  WeakRetained = objc_loadWeakRetained(&self->_renderer);

  return WeakRetained;
}

@end