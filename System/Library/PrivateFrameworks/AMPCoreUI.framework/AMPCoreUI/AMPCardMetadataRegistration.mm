@interface AMPCardMetadataRegistration
+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width;
+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number;
+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number size:(id)size;
@end

@implementation AMPCardMetadataRegistration

+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number size:(id)size
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  sizeCopy = size;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [self _passesForPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = shouldLog;
  }

  else
  {
    v14 = shouldLog & 2;
  }

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = MEMORY[0x277CCABB0];
    v17 = v15;
    v18 = [v16 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *location = 138543618;
    *&location[4] = v15;
    v32 = 2114;
    v33 = v18;
    v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_23C90D000, oSLogObject, 0, "%{public}@: Found %{public}@ payment passes", location, 22);

    if (v19)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke;
  v27[3] = &unk_278BC2098;
  objc_copyWeak(&v30, location);
  v21 = sizeCopy;
  v28 = v21;
  v22 = v25;
  v29 = v22;
  [v10 enumerateObjectsUsingBlock:v27];
  v23 = [v22 copy];

  objc_destroyWeak(&v30);
  objc_destroyWeak(location);

  return v23;
}

void __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke(id *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_alloc_init(MEMORY[0x277CEE448]);
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy_;
  v68 = __Block_byref_object_dispose_;
  v69 = 0;
  [a1[4] floatValue];
  if (v6 > 0.0)
  {
    v7 = v6;
    block = MEMORY[0x277D85DD0];
    v57 = 3221225472;
    v58 = __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke_20;
    v59 = &unk_278BC2070;
    v62 = &v64;
    v60 = WeakRetained;
    v61 = v3;
    v63 = v7;
    dispatch_sync(MEMORY[0x277D85CD0], &block);
    v8 = v65[5];
    if (v8)
    {
      v9 = [v8 base64EncodedStringWithOptions:1];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"data:image/pngbase64, %@", v9];;
      [v5 setCardArtwork:v10];
    }

    else
    {
      v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v9)
      {
        v9 = [MEMORY[0x277D69B38] sharedConfig];
      }

      LODWORD(v41) = [v9 shouldLog];
      v42 = [v9 shouldLogToDisk];
      v43 = [v9 OSLogObject];
      v10 = v43;
      if (v42)
      {
        LODWORD(v41) = v41 | 2;
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v41 = v41;
      }

      else
      {
        v41 &= 2u;
      }

      if (v41)
      {
        v44 = objc_opt_class();
        v70 = 138543362;
        v71 = v44;
        v45 = v44;
        v46 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_23C90D000, v10, 16, "%{public}@: Failed to find card artwork", &v70, 12, block, v57, v58, v59, v60);

        if (!v46)
        {
          goto LABEL_5;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:4];
        free(v46);
        v54 = v10;
        SSFileLog();
      }
    }

LABEL_5:
    goto LABEL_18;
  }

  v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v12) = [v11 shouldLog];
  v13 = [v11 shouldLogToDisk];
  v14 = [v11 OSLogObject];
  v15 = v14;
  if (v13)
  {
    LODWORD(v12) = v12 | 2;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v12;
  }

  else
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_16;
  }

  v16 = objc_opt_class();
  v70 = 138543362;
  v71 = v16;
  v17 = v16;
  v18 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_23C90D000, v15, 0, "%{public}@: Caller did not specify a valid image size", &v70, 12);

  if (v18)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
    free(v18);
    v54 = v15;
    SSFileLog();
LABEL_16:
  }

LABEL_18:
  v19 = [v3 localizedDescription];
  [v5 setDescriptionShort:v19];

  v20 = [v3 serialNumber];
  [v5 setSerialNumber:v20];

  getPKPaymentPassClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSuffix:{objc_msgSend(v3, "performSelector:withObject:", sel_primaryAccountNumberSuffix, 0)}];
  }

  v21 = [v3 paymentPass];
  v22 = [v21 associatedAccountServiceAccountIdentifier];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v25) = [v24 shouldLog];
    v26 = [v24 shouldLogToDisk];
    v27 = [v24 OSLogObject];
    v28 = v27;
    if (v26)
    {
      LODWORD(v25) = v25 | 2;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v29 = objc_opt_class();
      v70 = 138543362;
      v71 = v29;
      v30 = v29;
      LODWORD(v55) = 12;
      v31 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_23C90D000, v28, 0, "%{public}@: Found associated account", &v70, v55);

      if (!v31)
      {
        v32 = 2;
        goto LABEL_66;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:4];
      free(v31);
      SSFileLog();
    }

    v32 = 2;
    goto LABEL_65;
  }

  v33 = [v3 paymentPass];
  v34 = [v33 hasAssociatedPeerPaymentAccount];

  if (v34)
  {
    v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v35) = [v24 shouldLog];
    v36 = [v24 shouldLogToDisk];
    v37 = [v24 OSLogObject];
    v28 = v37;
    if (v36)
    {
      LODWORD(v35) = v35 | 2;
    }

    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v35;
    }

    else
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v38 = objc_opt_class();
      v70 = 138543362;
      v71 = v38;
      v39 = v38;
      LODWORD(v55) = 12;
      v40 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_23C90D000, v28, 0, "%{public}@: Found cash payment instrument", &v70, v55);

      if (!v40)
      {
        v32 = 1;
        goto LABEL_66;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithCString:v40 encoding:4];
      free(v40);
      SSFileLog();
    }

    v32 = 1;
    goto LABEL_65;
  }

  v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x277D69B38] sharedConfig];
  }

  LODWORD(v47) = [v24 shouldLog];
  v48 = [v24 shouldLogToDisk];
  v49 = [v24 OSLogObject];
  v28 = v49;
  if (v48)
  {
    LODWORD(v47) = v47 | 2;
  }

  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v47 = v47;
  }

  else
  {
    v47 &= 2u;
  }

  if (!v47)
  {
LABEL_64:
    v32 = 0;
LABEL_65:

    goto LABEL_66;
  }

  v50 = objc_opt_class();
  v70 = 138543362;
  v71 = v50;
  v51 = v50;
  LODWORD(v55) = 12;
  v32 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &dword_23C90D000, v28, 0, "%{public}@: Found credit payment instrument", &v70, v55);

  if (v32)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:4];
    free(v32);
    SSFileLog();
    goto LABEL_64;
  }

LABEL_66:

  [v5 setCardType:v32];
  v52 = [v3 paymentPass];
  v53 = [v52 devicePrimaryInAppPaymentApplication];
  [v5 setPaymentNetwork:{objc_msgSend(v53, "paymentNetworkIdentifier")}];

  [a1[5] addObject:v5];
  _Block_object_dispose(&v64, 8);
}

uint64_t __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke_20(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _cardArtworkForPaymentPass:*(a1 + 40) width:*(a1 + 56)];

  return MEMORY[0x2821F96F8]();
}

+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width
{
  v18 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if (_cardArtworkForPaymentPass_width__onceToken != -1)
  {
    +[AMPCardMetadataRegistration _cardArtworkForPaymentPass:width:];
  }

  v6 = [passCopy cardImageWithDimensions:{width, width}];
  v7 = v6;
  if (v6)
  {
    v8 = UIImagePNGRepresentation(v6);
    goto LABEL_18;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  v16 = 138543362;
  v17 = objc_opt_class();
  v13 = v17;
  v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_23C90D000, oSLogObject, 16, "%{public}@: Failed to obtain card artwork", &v16, 12);

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    SSFileLog();
LABEL_16:
  }

  v8 = 0;
LABEL_18:

  return v8;
}

void __64__AMPCardMetadataRegistration__cardArtworkForPaymentPass_width___block_invoke(uint64_t result, uint64_t a2)
{
  if (PassKitUILibrary_sOnce != -1)
  {
    __64__AMPCardMetadataRegistration__cardArtworkForPaymentPass_width___block_invoke_cold_1();
  }
}

+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  v7 = objc_alloc_init(getPKPassLibraryClass());
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (!identifierCopy || !numberCopy)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      LODWORD(v19) = shouldLog | 2;
    }

    else
    {
      LODWORD(v19) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v19;
    }

    else
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v35 = 138543362;
      v36 = objc_opt_class();
      v21 = v36;
      v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &dword_23C90D000, oSLogObject, 0, "%{public}@: Attempting to search for all cards", &v35, 12);

      if (!v22)
      {
LABEL_29:

        v17 = [v7 passesOfType:1];
        goto LABEL_44;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:4];
      free(v22);
      v32 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_29;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v35 = 138543362;
    v36 = objc_opt_class();
    v13 = v36;
    v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_23C90D000, oSLogObject2, 0, "%{public}@: Attempting to search for specific card", &v35, 12);

    if (!v14)
    {
      goto LABEL_15;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
    free(v14);
    v32 = oSLogObject2;
    SSFileLog();
  }

LABEL_15:
  v15 = [v7 passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
  v16 = v15;
  if (!v15)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v35 = 138543362;
      v36 = v27;
      v28 = v27;
      LODWORD(v33) = 12;
      v29 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_23C90D000, oSLogObject3, 16, "%{public}@: Card metadata failed for no card", &v35, v33);

      if (!v29)
      {
LABEL_42:

        v17 = 0;
        goto LABEL_43;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:4];
      free(v29);
      v32 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_42;
  }

  v34 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
LABEL_43:

LABEL_44:
  v30 = [v17 copy];

  return v30;
}

@end