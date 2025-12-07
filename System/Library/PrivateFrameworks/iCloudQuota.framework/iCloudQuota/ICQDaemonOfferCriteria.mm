@interface ICQDaemonOfferCriteria
- (BOOL)isSatisfiedByConditions:(id)conditions;
- (ICQDaemonOfferCriteria)initWithServerDictionary:(id)dictionary;
@end

@implementation ICQDaemonOfferCriteria

- (BOOL)isSatisfiedByConditions:(id)conditions
{
  conditionsCopy = conditions;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  objc_opt_class();
  objc_opt_isKindOfClass();
  serverDict = self->_serverDict;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ICQDaemonOfferCriteria_isSatisfiedByConditions___block_invoke;
  v8[3] = &unk_27A652DD8;
  v10 = &v11;
  v6 = conditionsCopy;
  v9 = v6;
  [(NSDictionary *)serverDict enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(serverDict) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serverDict;
}

void __50__ICQDaemonOfferCriteria_isSatisfiedByConditions___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) != 1)
  {
    LOBYTE(v12) = 0;
    goto LABEL_19;
  }

  v10 = *(a1 + 32);
  if ([v7 isEqualToString:@"deviceStorageAlmostFull"])
  {
    v11 = [v10 isDeviceStorageAlmostFull];
    goto LABEL_7;
  }

  if (![v7 isEqualToString:@"iCPLEnabled"])
  {
    if ([v7 isEqualToString:@"optimizeEnabled"])
    {
      if (_ICQDoesCriterionValueEqualBOOL(v8, [v10 isPhotosOptimizeEnabled]))
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (([v7 isEqualToString:@"minPhotoLibraryInBytes"] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", @"maxPhotoLibraryInBytes"))
    {
      if ([v7 isEqualToString:@"backupRestoreComplete"])
      {
        LOBYTE(v12) = _ICQDoesCriterionValueEqualBOOL(v8, [v10 isBackupRestoreComplete]);
        goto LABEL_18;
      }

      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v7;
        v13 = "unexpected criterion key %@";
        v14 = v12;
        v15 = 12;
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v12 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      v24 = 138412546;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      v13 = "criterion: %@: %@ not convertible to long long";
      goto LABEL_15;
    }

    v16 = [v10 photosLibrarySize];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      v12 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LOWORD(v24) = 0;
      v13 = "criterion: photos library size unknown";
      v14 = v12;
      v15 = 2;
      goto LABEL_16;
    }

    v18 = [v8 longLongValue];
    v19 = [v10 photosLibrarySize];
    v20 = [v19 longLongValue];

    LODWORD(v19) = [v7 isEqualToString:@"minPhotoLibraryInBytes"];
    v21 = _ICQGetLogSystem();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      LOBYTE(v12) = v20 >= v18;
      if (v22)
      {
        v23 = @"<";
        v24 = 138544130;
        v25 = v7;
        if (v20 >= v18)
        {
          v23 = @">=";
        }

LABEL_42:
        v26 = 2048;
        v27 = v20;
        v28 = 2114;
        v29 = v23;
        v30 = 2048;
        v31 = v18;
        _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "criterion: %{public}@: %lld %{public}@ %lld", &v24, 0x2Au);
      }
    }

    else
    {
      LODWORD(v12) = v20 <= v18;
      if (v22)
      {
        v23 = @">";
        v24 = 138544130;
        v25 = v7;
        if (v20 <= v18)
        {
          v23 = @"<=";
        }

        goto LABEL_42;
      }
    }

    goto LABEL_18;
  }

  v11 = [v10 isPhotosCloudEnabled];
LABEL_7:
  if (_ICQDoesCriterionValueEqualBOOL(v8, v11))
  {
LABEL_8:
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = v7;
      v26 = 2114;
      v27 = v8;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "criterion: %{public}@ matches %{public}@", &v24, 0x16u);
    }

    LOBYTE(v12) = 1;
    goto LABEL_18;
  }

LABEL_13:
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543618;
    v25 = v7;
    v26 = 2114;
    v27 = v8;
    v13 = "criterion: %{public}@ doesn't match %{public}@";
LABEL_15:
    v14 = v12;
    v15 = 22;
LABEL_16:
    _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, v13, &v24, v15);
  }

LABEL_17:

  LOBYTE(v12) = 0;
LABEL_18:

  v9 = *(*(a1 + 40) + 8);
LABEL_19:
  *(v9 + 24) = v12;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (ICQDaemonOfferCriteria)initWithServerDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ICQDaemonOfferCriteria;
  v5 = [(ICQDaemonOfferCriteria *)&v13 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [dictionaryCopy copy];
    }

    else
    {
      v7 = _ICQGetLogSystem();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (dictionaryCopy)
      {
        if (v8)
        {
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "criteria: expected NSDictionary, got %@", buf, 0xCu);
        }

        v14 = @"fail";
        v15 = &stru_288431E38;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "criteria: missing, substituting empty criteria (always succeeds)", buf, 2u);
        }

        v6 = MEMORY[0x277CBEC10];
      }
    }

    serverDict = v5->_serverDict;
    v5->_serverDict = v6;
  }

  return v5;
}

@end