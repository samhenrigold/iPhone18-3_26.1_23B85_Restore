@interface AMSUICardMetadata
+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width;
+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number;
+ (id)appleCardIcon;
+ (id)appleCardIconString;
+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number cardArtworkSize:(id)size;
+ (void)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number cardArtworkSize:(id)size completionHandler:(id)handler;
@end

@implementation AMSUICardMetadata

+ (id)appleCardIcon
{
  v23 = *MEMORY[0x1E69E9840];
  if (appleCardIcon_onceToken != -1)
  {
    +[AMSUICardMetadata appleCardIcon];
  }

  v2 = AMSSetLogKeyIfNeeded();
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v2;
    v5 = *&buf[4];
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking for card icon", buf, 0x16u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v6 = getPKVirtualCardClass_softClass;
  v19 = getPKVirtualCardClass_softClass;
  if (!getPKVirtualCardClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKVirtualCardClass_block_invoke;
    v21 = &unk_1E7F241B0;
    v22 = &v16;
    __getPKVirtualCardClass_block_invoke(buf);
    v6 = v17[3];
  }

  v7 = v6;
  _Block_object_dispose(&v16, 8);
  v8 = objc_alloc_init(v6);
  v9 = v8;
  if (v8)
  {
    cardIcon = [v8 cardIcon];
  }

  else
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v2;
      v14 = v13;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch virtual card", buf, 0x16u);
    }

    cardIcon = 0;
  }

  return cardIcon;
}

void __34__AMSUICardMetadata_appleCardIcon__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7F24840;
    v3 = 0;
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (PassKitUIFoundationLibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

+ (id)appleCardIconString
{
  v17 = *MEMORY[0x1E69E9840];
  appleCardIcon = [self appleCardIcon];
  v3 = UIImagePNGRepresentation(appleCardIcon);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:1];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data:image/pngbase64, %@", v5];;
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v14 = v9;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch card icon", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

+ (void)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number cardArtworkSize:(id)size completionHandler:(id)handler
{
  identifierCopy = identifier;
  numberCopy = number;
  sizeCopy = size;
  handlerCopy = handler;
  v14 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize_completionHandler___block_invoke;
  block[3] = &unk_1E7F247D0;
  v23 = handlerCopy;
  selfCopy = self;
  v20 = identifierCopy;
  v21 = numberCopy;
  v22 = sizeCopy;
  v15 = handlerCopy;
  v16 = sizeCopy;
  v17 = numberCopy;
  v18 = identifierCopy;
  dispatch_async(v14, block);
}

void __98__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) metadataForPassTypeIdentifier:*(a1 + 32) serialNumber:*(a1 + 40) cardArtworkSize:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number cardArtworkSize:(id)size
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  numberCopy = number;
  sizeCopy = size;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [self _passesForPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = MEMORY[0x1E696AD98];
    v16 = v14;
    v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
    *buf = 138543874;
    v32 = v14;
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = v17;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found %{public}@ payment passes", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke;
  v26[3] = &unk_1E7F24820;
  objc_copyWeak(&v30, buf);
  v18 = sizeCopy;
  v27 = v18;
  v19 = v10;
  v28 = v19;
  v20 = v24;
  v29 = v20;
  [v11 enumerateObjectsUsingBlock:v26];
  v21 = [v20 copy];

  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);

  return v21;
}

void __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_alloc_init(MEMORY[0x1E698C850]);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__0;
  v51 = __Block_byref_object_dispose__0;
  v52 = 0;
  [*(a1 + 32) floatValue];
  if (v6 <= 0.0)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2114;
      *&buf[14] = v13;
      v14 = v12;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Caller did not specify a valid image size", buf, 0x16u);
    }
  }

  else
  {
    v7 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8 = [WeakRetained _cardArtworkForPaymentPass:v3 width:v7];
      v9 = v48[5];
      v48[5] = v8;
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke_22;
      block[3] = &unk_1E7F247F8;
      v45 = &v47;
      block[4] = WeakRetained;
      v44 = v3;
      v46 = v7;
      dispatch_sync(MEMORY[0x1E69E96A0], block);
    }

    v15 = v48[5];
    if (v15)
    {
      v10 = [v15 base64EncodedStringWithOptions:1];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data:image/pngbase64, %@", v10];;
      [v5 setCardArtwork:v11];
      [v5 setCardArtworkData:v48[5]];
    }

    else
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v10)
      {
        v10 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = objc_opt_class();
        v17 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v16;
        *&buf[12] = 2114;
        *&buf[14] = v17;
        v18 = v16;
        _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find card artwork", buf, 0x16u);
      }
    }
  }

  v19 = [v3 localizedDescription];
  [v5 setDescriptionShort:v19];

  v20 = [v3 serialNumber];
  [v5 setSerialNumber:v20];

  v21 = [v3 passTypeIdentifier];
  [v5 setPassTypeIdentifier:v21];

  v53 = 0;
  v54 = &v53;
  v55 = 0x2050000000;
  v22 = getPKPaymentPassClass_softClass;
  v56 = getPKPaymentPassClass_softClass;
  if (!getPKPaymentPassClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentPassClass_block_invoke;
    v58 = &unk_1E7F241B0;
    v59 = &v53;
    __getPKPaymentPassClass_block_invoke(buf);
    v22 = v54[3];
  }

  v23 = v22;
  _Block_object_dispose(&v53, 8);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSuffix:{objc_msgSend(v3, "performSelector:withObject:", sel_primaryAccountNumberSuffix, 0)}];
  }

  v24 = [v3 paymentPass];
  v25 = [v24 associatedAccountServiceAccountIdentifier];
  v26 = v25 == 0;

  if (v26)
  {
    v33 = [v3 paymentPass];
    v34 = [v33 hasAssociatedPeerPaymentAccount];

    if (v34)
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v36;
        v37 = v35;
        _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found cash payment instrument", buf, 0x16u);
      }

      v32 = 1;
    }

    else
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v27)
      {
        v27 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v28 = [v27 OSLogObject];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v38 = objc_opt_class();
        v39 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v38;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        v40 = v38;
        _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found credit payment instrument", buf, 0x16u);
      }

      v32 = 0;
    }
  }

  else
  {
    v27 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v30;
      v31 = v29;
      _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Found associated account", buf, 0x16u);
    }

    v32 = 2;
  }

  [v5 setCardType:v32];
  v41 = [v3 paymentPass];
  v42 = [v41 devicePrimaryInAppPaymentApplication];
  [v5 setPaymentNetwork:{objc_msgSend(v42, "paymentNetworkIdentifier")}];

  [*(a1 + 48) addObject:v5];
  _Block_object_dispose(&v47, 8);
}

uint64_t __80__AMSUICardMetadata_metadataForPassTypeIdentifier_serialNumber_cardArtworkSize___block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) _cardArtworkForPaymentPass:*(a1 + 40) width:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width
{
  v19 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (_cardArtworkForPaymentPass_width__onceToken != -1)
  {
    +[AMSUICardMetadata _cardArtworkForPaymentPass:width:];
  }

  v6 = [passCopy cardImageWithDimensions:{width, width}];
  v7 = v6;
  if (v6)
  {
    v8 = UIImagePNGRepresentation(v6);
  }

  else
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSSetLogKeyIfNeeded();
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to obtain card artwork", &v15, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

void __54__AMSUICardMetadata__cardArtworkForPaymentPass_width___block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!PassKitUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __PassKitUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7F24870;
    v3 = 0;
    PassKitUILibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v1[0];
    if (PassKitUILibraryCore_frameworkLibrary)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  numberCopy = number;
  v7 = AMSSetLogKeyIfNeeded();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = getPKPassLibraryClass_softClass;
  v32 = getPKPassLibraryClass_softClass;
  if (!getPKPassLibraryClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPassLibraryClass_block_invoke;
    v35 = &unk_1E7F241B0;
    v36 = &v29;
    __getPKPassLibraryClass_block_invoke(buf);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  v10 = objc_alloc_init(v8);
  if (identifierCopy)
  {
    v11 = numberCopy == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968];
  if (v12)
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      v17 = v16;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to search for specific card", buf, 0x16u);
    }

    v18 = [v10 passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
    v19 = v18;
    if (v18)
    {
      v33 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    }

    else
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        v27 = v26;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Card metadata failed for no card", buf, 0x16u);
      }

      v20 = 0;
    }
  }

  else
  {
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      v23 = v22;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to search for all cards", buf, 0x16u);
    }

    v20 = [v10 passesOfType:1];
  }

  return v20;
}

@end