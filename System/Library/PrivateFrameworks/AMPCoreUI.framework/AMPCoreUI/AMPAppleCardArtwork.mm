@interface AMPAppleCardArtwork
+ (id)cardIcon;
+ (id)cardIconString;
@end

@implementation AMPAppleCardArtwork

+ (id)cardIcon
{
  v32 = *MEMORY[0x277D85DE8];
  if (cardIcon_onceToken != -1)
  {
    +[AMPAppleCardArtwork cardIcon];
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    LODWORD(v28) = 138543362;
    *(&v28 + 4) = objc_opt_class();
    v6 = *(&v28 + 4);
    v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_23C90D000, oSLogObject, 0, "%{public}@: Checking for cardIcon", &v28, 12);

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:4];
      free(v7);
      v22 = v8;
      SSFileLog();
    }
  }

  else
  {
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v9 = getPKVirtualCardClass_softClass;
  v27 = getPKVirtualCardClass_softClass;
  if (!getPKVirtualCardClass_softClass)
  {
    *&v28 = MEMORY[0x277D85DD0];
    *(&v28 + 1) = 3221225472;
    v29 = __getPKVirtualCardClass_block_invoke;
    v30 = &unk_278BC1F78;
    v31 = &v24;
    __getPKVirtualCardClass_block_invoke(&v28);
    v9 = v25[3];
  }

  v10 = v9;
  _Block_object_dispose(&v24, 8);
  v11 = objc_alloc_init(v9);
  v12 = v11;
  if (v11)
  {
    cardIcon = [v11 cardIcon];
    goto LABEL_32;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    LODWORD(v16) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v16) = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v16 = v16;
  }

  else
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  v18 = objc_opt_class();
  LODWORD(v28) = 138543362;
  *(&v28 + 4) = v18;
  v19 = v18;
  LODWORD(v23) = 12;
  v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_23C90D000, oSLogObject2, 16, "%{public}@: Failed to fetch virtual card", &v28, v23, v24);

  if (v20)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_30:
  }

  cardIcon = 0;
LABEL_32:

  return cardIcon;
}

void __31__AMPAppleCardArtwork_cardIcon__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278BC20B8;
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
      abort_report_np("%s", v1[0]);
    }

    free(v0);
  }
}

+ (id)cardIconString
{
  v16 = *MEMORY[0x277D85DE8];
  cardIcon = [self cardIcon];
  v3 = UIImagePNGRepresentation(cardIcon);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:1];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"data:image/pngbase64, %@", v5];;

    goto LABEL_16;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_14;
  }

  v14 = 138543362;
  v15 = objc_opt_class();
  v11 = v15;
  v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_23C90D000, oSLogObject, 16, "%{public}@: Failed to fetch card icon", &v14, 12);

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_14:
  }

  v6 = 0;
LABEL_16:

  return v6;
}

@end