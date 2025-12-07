@interface FASharedSubscriptionSpecifierProvider
- (BOOL)_launchWithResourceDictionary:(id)dictionary;
- (BOOL)handleURL:(id)l;
- (FASharedSubscriptionSpecifierProvider)initWithAppleAccount:(id)account presenter:(id)presenter;
- (FASharedSubscriptionSpecifierProviderSelectionHandler)selectionHandler;
- (NSArray)specifiers;
- (NSArray)subscriptionSpecifiers;
- (NSArray)subscriptionsFamilyViewSpecifier;
- (id)_iconURLStringForService:(id)service;
- (id)_serviceSpecifiersFromArray:(id)array;
- (id)_sharedSubscriptionSpecifierCell:(int)cell;
- (id)_specifierNamed:(id)named;
- (id)_valueForServiceSpecifier:(id)specifier;
- (void)_addSharedSubscriptionsButtonWasTapped:(id)tapped;
- (void)_delayedLoadIfNeeded;
- (void)_handleSubscriptionListResponse:(id)response;
- (void)_loadSubscriptionServices;
- (void)_serviceSpecifierWasTapped:(id)tapped;
- (void)reloadSpecifiers;
@end

@implementation FASharedSubscriptionSpecifierProvider

- (FASharedSubscriptionSpecifierProvider)initWithAppleAccount:(id)account presenter:(id)presenter
{
  accountCopy = account;
  presenterCopy = presenter;
  v16.receiver = self;
  v16.super_class = FASharedSubscriptionSpecifierProvider;
  v9 = [(FASharedSubscriptionSpecifierProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    v10->_updateSubsriptionSpecifiers = 1;
    objc_storeStrong(&v10->_appleAccount, account);
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    networkActivityQueue = v10->_networkActivityQueue;
    v10->_networkActivityQueue = v11;

    [(NSOperationQueue *)v10->_networkActivityQueue setQualityOfService:33];
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    subscribers = v10->_subscribers;
    v10->_subscribers = weakObjectsHashTable;

    v10->_numberOfGroups = 0;
  }

  return v10;
}

- (id)_sharedSubscriptionSpecifierCell:(int)cell
{
  v3 = *&cell;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Shared Subscriptions" value:&stru_282D9AA68 table:@"Localizable"];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%i Subscriptions", v3];
  v9 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.clockwise"];
  v10 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"SharedSubscriptions"];
  v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:1 edit:0];
  [array addObject:v10];
  [v11 setProperty:v7 forKey:*MEMORY[0x277D40170]];
  [v11 setProperty:v8 forKey:*MEMORY[0x277D40160]];
  [v11 setProperty:v9 forKey:*MEMORY[0x277D3FFC0]];
  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FF08]];
  [v11 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v11 setButtonAction:sel__addSharedSubscriptionsButtonWasTapped_];
  [array addObject:v11];

  return array;
}

- (NSArray)specifiers
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_updateSubsriptionSpecifiers || self->_isLoadingSpecifiers)
  {
    _sharedSubscriptionGroupSpecifier = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier];

    self->_updateSubsriptionSpecifiers = 0;
    self->_specifierState = 1;
    [(FASharedSubscriptionSpecifierProvider *)self _loadSubscriptionServices];
    services3 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
LABEL_4:
    [v3 addObject:services3];
    goto LABEL_5;
  }

  services = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse services];
  v15 = [services count];

  if (!v15)
  {
    _sharedSubscriptionGroupSpecifier2 = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier2];

    self->_specifierState = 2;
    v33 = MEMORY[0x277D3FAD8];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"FAILED_TO_LOAD_SERVICES" value:&stru_282D9AA68 table:@"Localizable"];
    services3 = [v33 preferenceSpecifierNamed:v35 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

    [services3 setProperty:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D3FF38]];
    goto LABEL_4;
  }

  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (!specifiers || (v17 = [(NSArray *)specifiers count]) == 0 || self->_specifierState != 3)
  {
    self->_specifierState = 3;
    serviceGroups = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse serviceGroups];
    v19 = [serviceGroups count];

    if (v19)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse serviceGroups];
      v21 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v42;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v42 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v41 + 1) + 8 * i);
            v26 = MEMORY[0x277D3FAD8];
            headerText = [v25 headerText];
            footerText = [v25 footerText];
            v29 = [v26 groupSpecifierWithHeader:headerText footer:footerText];
            [v3 addObject:v29];

            ++self->_numberOfGroups;
            services2 = [v25 services];
            v31 = [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifiersFromArray:services2];
            [v3 addObjectsFromArray:v31];
          }

          v22 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v22);
      }

      goto LABEL_6;
    }

    v36 = _FALogSystem(v20);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v36, OS_LOG_TYPE_DEFAULT, "No groups, kickin it old school.", buf, 2u);
    }

    _sharedSubscriptionGroupSpecifier3 = [(FASharedSubscriptionSpecifierProvider *)self _sharedSubscriptionGroupSpecifier];
    [v3 addObject:_sharedSubscriptionGroupSpecifier3];

    services3 = [(FASharedServicesResponse *)self->_sharedSubscriptionResponse services];
    v38 = [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifiersFromArray:services3];
    [v3 addObjectsFromArray:v38];

LABEL_5:
LABEL_6:
    v6 = [v3 copy];
    v9 = self->_specifiers;
    v7 = &self->_specifiers;
    p_super = &v9->super;
    *v7 = v6;
    p_specifiers = v7;
    goto LABEL_7;
  }

  p_super = _FALogSystem(v17);
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BB35000, p_super, OS_LOG_TYPE_DEFAULT, "Returning existing specifiers.", buf, 2u);
  }

LABEL_7:

  v11 = *p_specifiers;
  v12 = *p_specifiers;

  return v11;
}

- (id)_serviceSpecifiersFromArray:(id)array
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__FASharedSubscriptionSpecifierProvider__serviceSpecifiersFromArray___block_invoke;
  v5[3] = &unk_2782F3890;
  v5[4] = self;
  v3 = [array fa_map:v5];

  return v3;
}

id __69__FASharedSubscriptionSpecifierProvider__serviceSpecifiersFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D3FAD8];
  v4 = a2;
  v5 = [v4 displayLabel];
  v6 = [v3 preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:sel__valueForServiceSpecifier_ detail:0 cell:2 edit:0];

  v7 = [v4 subLabel];
  [v6 setProperty:v7 forKey:*MEMORY[0x277D40160]];

  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v8 = MEMORY[0x277CBEBC0];
  v9 = [*(a1 + 32) _iconURLStringForService:v4];
  v10 = [v8 URLWithString:v9];

  [v6 setProperty:v10 forKey:*MEMORY[0x277D40030]];
  [v6 setControllerLoadAction:sel__serviceSpecifierWasTapped_];
  [v6 setUserInfo:v4];
  v11 = [v4 name];
  [v6 setIdentifier:v11];

  v12 = MEMORY[0x277CBEBC0];
  v13 = [v4 actionURLString];

  v14 = [v12 URLWithString:v13];
  [v6 setProperty:v14 forKey:@"FASharedServicesSpecifierActionURLKey"];

  return v6;
}

- (id)_iconURLStringForService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  view = [(PSListController *)self->_presenter view];
  window = [view window];
  screen = [window screen];
  [screen scale];
  v9 = v8;

  switch(v9)
  {
    case 3:
      iconURLStringx3 = [serviceCopy iconURLStringx3];
      goto LABEL_7;
    case 2:
      iconURLStringx3 = [serviceCopy iconURLStringx2];
      goto LABEL_7;
    case 1:
      iconURLStringx3 = [serviceCopy iconURLString];
LABEL_7:
      iconURLStringx32 = iconURLStringx3;
      goto LABEL_11;
  }

  iconURLStringx32 = [serviceCopy iconURLStringx3];
  v12 = _FALogSystem(iconURLStringx32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [FASharedSubscriptionSpecifierProvider _iconURLStringForService:v12];
  }

LABEL_11:
  v13 = _FALogSystem(iconURLStringx3);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109120;
    v15[1] = v9;
    _os_log_impl(&dword_21BB35000, v13, OS_LOG_TYPE_DEFAULT, "Returning service image at scale - %d", v15, 8u);
  }

  return iconURLStringx32;
}

- (void)_serviceSpecifierWasTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_selectionHandler);
  [WeakRetained didSelectSpecifier:tappedCopy];
}

- (id)_valueForServiceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = _FALogSystem(userInfo);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FASharedSubscriptionSpecifierProvider _valueForServiceSpecifier:];
  }

  detailLabel = [userInfo detailLabel];

  return detailLabel;
}

- (void)_loadSubscriptionServices
{
  if (!self->_isLoadingSpecifiers)
  {
    self->_isLoadingSpecifiers = 1;
    self->_specifierState = 1;
    networkActivityQueue = self->_networkActivityQueue;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke;
    v3[3] = &unk_2782F29E8;
    v3[4] = self;
    [(NSOperationQueue *)networkActivityQueue addOperationWithBlock:v3];
  }
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke(uint64_t a1)
{
  v2 = _FASignpostLogSystem(a1);
  v3 = _FASignpostCreate(v2);
  v5 = v4;

  v7 = _FASignpostLogSystem(v6);
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_21BB35000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FetchFamilySubscriptions", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _FASignpostLogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_cold_1();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_108;
  aBlock[3] = &unk_2782F38B8;
  aBlock[5] = v3;
  aBlock[6] = v5;
  aBlock[4] = *(a1 + 32);
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2;
  v14[3] = &unk_2782F3498;
  v14[4] = *(a1 + 32);
  v15 = v11;
  v13 = v11;
  [v12 fetchAAURLConfigurationWithCompletion:v14];
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_108(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Nanoseconds = _FASignpostGetNanoseconds(a1[5], a1[6]);
  v5 = _FASignpostLogSystem(Nanoseconds);
  v6 = v5;
  v7 = a1[5];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 67240192;
    LODWORD(v17) = [v3 statusCode];
    _os_signpost_emit_with_name_impl(&dword_21BB35000, v6, OS_SIGNPOST_INTERVAL_END, v7, "FetchFamilySubscriptions", " StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d ", buf, 8u);
  }

  v9 = _FASignpostLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = Nanoseconds / 1000000000.0;
    v12 = a1[5];
    v13 = [v3 statusCode];
    *buf = 134218496;
    v17 = v12;
    v18 = 2048;
    v19 = v11;
    v20 = 1026;
    v21 = v13;
    _os_log_debug_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchFamilySubscriptions  StatusCode=%{public,signpost.telemetry:number1,name=StatusCode}d ", buf, 0x1Cu);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_109;
  v14[3] = &unk_2782F2AF8;
  v14[4] = a1[4];
  v15 = v3;
  v10 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 urlForEndpoint:@"getFamilySubscriptions"];
  v4 = v3;
  if (!v3)
  {
    v5 = _FALogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2_cold_1(v5);
    }
  }

  v6 = _FALogSystem(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __66__FASharedSubscriptionSpecifierProvider__loadSubscriptionServices__block_invoke_2_cold_2();
  }

  v7 = [FASharedServicesRequest alloc];
  v8 = *(*(a1 + 32) + 24);
  v9 = [v4 absoluteString];
  v10 = [(FASharedServicesRequest *)v7 initWithAppleAccount:v8 urlString:v9];

  v11 = [objc_alloc(MEMORY[0x277CEC840]) initWithRequest:v10 handler:*(a1 + 40)];
  v12 = _FALogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_21BB35000, v12, OS_LOG_TYPE_DEFAULT, "Fetching family subscriptions.", v13, 2u);
  }

  [*(*(a1 + 32) + 56) addOperation:v11];
}

- (NSArray)subscriptionSpecifiers
{
  v26 = *MEMORY[0x277D85DE8];
  p_subscriptionSpecifiers = &self->_subscriptionSpecifiers;
  if (![(NSArray *)self->_subscriptionSpecifiers count])
  {
    specifiers = [(FASharedSubscriptionSpecifierProvider *)self specifiers];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = v5;
    if (!self->_isLoadingSpecifiers)
    {
      v19 = p_subscriptionSpecifiers;
      v20 = v5;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = specifiers;
      v7 = specifiers;
      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            identifier = [v12 identifier];
            if ([identifier isEqual:@"ICLOUD_STORAGE"])
            {
            }

            else
            {
              identifier2 = [v12 identifier];
              v15 = [identifier2 isEqual:@"SHARE_MY_LOCATION"];

              if ((v15 & 1) == 0)
              {
                [v20 addObject:v12];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v9);
      }

      p_subscriptionSpecifiers = v19;
      v6 = v20;
      objc_storeStrong(v19, v20);
      specifiers = v18;
    }
  }

  v16 = *p_subscriptionSpecifiers;

  return v16;
}

- (NSArray)subscriptionsFamilyViewSpecifier
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  subscriptionsFamilyViewSpecifier = self->_subscriptionsFamilyViewSpecifier;
  if (!subscriptionsFamilyViewSpecifier || ![(NSArray *)subscriptionsFamilyViewSpecifier count])
  {
    specifiers = [(FASharedSubscriptionSpecifierProvider *)selfCopy specifiers];
    v5 = specifiers;
    if (!selfCopy->_isLoadingSpecifiers)
    {
      v23 = selfCopy;
      v6 = [specifiers count] - selfCopy->_numberOfGroups;
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      obj = v5;
      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      v22 = v5;
      if (v8)
      {
        v9 = v8;
        v10 = *v26;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v26 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v25 + 1) + 8 * i);
            identifier = [v12 identifier];
            v14 = [identifier isEqual:@"ICLOUD_STORAGE"];

            if (v14)
            {
              v6 = (v6 - 1);
              [v7 addObject:v12];
            }

            identifier2 = [v12 identifier];
            v16 = [identifier2 isEqual:@"SHARE_MY_LOCATION"];

            if (v16)
            {
              v6 = (v6 - 1);
              [v7 addObject:v12];
            }
          }

          v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v9);
      }

      selfCopy = v23;
      v17 = [(FASharedSubscriptionSpecifierProvider *)v23 _sharedSubscriptionSpecifierCell:v6];
      [(NSArray *)v21 addObjectsFromArray:v17];

      [(NSArray *)v21 addObjectsFromArray:v7];
      v18 = v23->_subscriptionsFamilyViewSpecifier;
      v23->_subscriptionsFamilyViewSpecifier = v21;

      v5 = v22;
    }
  }

  v19 = selfCopy->_subscriptionsFamilyViewSpecifier;

  return v19;
}

- (void)_handleSubscriptionListResponse:(id)response
{
  v32 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  self->_isLoadingSpecifiers = 0;
  statusCode = [responseCopy statusCode];
  if (statusCode != 200)
  {
    v7 = _FALogSystem(statusCode);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      error = [responseCopy error];
      *buf = 138412290;
      v29 = error;
      _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Failed to get subscription services %@", buf, 0xCu);
    }
  }

  v9 = _FALogSystem(statusCode);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    responseDictionary = [responseCopy responseDictionary];
    *buf = 138412546;
    v29 = responseCopy;
    v30 = 2112;
    v31 = responseDictionary;
    _os_log_impl(&dword_21BB35000, v9, OS_LOG_TYPE_DEFAULT, "Received shared services response %@ - resourceDictionary: %@", buf, 0x16u);
  }

  services = [responseCopy services];
  if (services && (v12 = services, -[FASharedServicesResponse services](self->_sharedSubscriptionResponse, "services"), v13 = objc_claimAutoreleasedReturnValue(), [responseCopy services], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v12, v15))
  {
    v16 = _FALogSystem(services);
    if (os_log_type_enabled(&v16->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, &v16->super, OS_LOG_TYPE_DEFAULT, "Response matches current subscription services; not reloading specifiers", buf, 2u);
    }
  }

  else
  {
    v17 = _FALogSystem(services);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21BB35000, v17, OS_LOG_TYPE_DEFAULT, "Response indicates changes to subscription services; reloading specifiers", buf, 2u);
    }

    objc_storeStrong(&self->_sharedSubscriptionResponse, response);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = self->_subscribers;
    v18 = [(NSHashTable *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v23 + 1) + 8 * v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v22 reloadSpecifiersForProvider:self oldSpecifiers:self->_subscriptionSpecifiers animated:{1, v23}];
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [(NSHashTable *)v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v19);
    }
  }

  [(FASharedSubscriptionSpecifierProvider *)self _delayedLoadIfNeeded];
}

- (BOOL)handleURL:(id)l
{
  lCopy = l;
  v6 = [(FASharedSubscriptionSpecifierProvider *)self _launchWithResourceDictionary:lCopy];
  v7 = v6;
  if ((v6 & 1) == 0)
  {
    v8 = _FALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "FASharedSubscriptionSpecifierProvider doesn't have the specifier, will try again upon response.", v10, 2u);
    }

    objc_storeStrong(&self->_cachedResourceDictionary, l);
  }

  return v7;
}

- (BOOL)_launchWithResourceDictionary:(id)dictionary
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = [dictionary objectForKeyedSubscript:*MEMORY[0x277D08130]];
  if (v4)
  {
    v5 = [(FASharedSubscriptionSpecifierProvider *)self _specifierNamed:v4];
    v6 = v5;
    cachedResourceDictionary = self->_cachedResourceDictionary;
    if (cachedResourceDictionary)
    {
      v19 = @"HookContinuationParameters";
      v20[0] = cachedResourceDictionary;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = _FALogSystem([v6 setProperty:v8 forKey:@"FASharedServicesAdditionalParameters"]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [FASharedSubscriptionSpecifierProvider _launchWithResourceDictionary:];
      }
    }

    v10 = _FALogSystem(v5);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v11)
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "We have the service specifier, tapping!", &v15, 2u);
      }

      [(FASharedSubscriptionSpecifierProvider *)self _serviceSpecifierWasTapped:v6];
      v12 = 1;
    }

    else
    {
      if (v11)
      {
        specifiers = self->_specifiers;
        v15 = 138412546;
        v16 = v4;
        v17 = 2112;
        v18 = specifiers;
        _os_log_impl(&dword_21BB35000, v10, OS_LOG_TYPE_DEFAULT, "A specifier for %@ was not found in: %@", &v15, 0x16u);
      }

      v12 = 0;
      v6 = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_delayedLoadIfNeeded
{
  if (self->_cachedResourceDictionary)
  {
    v3 = _FALogSystem(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "We have a cached resource dictionary, let's try launching.", v5, 2u);
    }

    [(FASharedSubscriptionSpecifierProvider *)self _launchWithResourceDictionary:self->_cachedResourceDictionary];
    cachedResourceDictionary = self->_cachedResourceDictionary;
    self->_cachedResourceDictionary = 0;
  }
}

- (id)_specifierNamed:(id)named
{
  v18 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_specifiers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:namedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)reloadSpecifiers
{
  v3 = _FALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21BB35000, v3, OS_LOG_TYPE_DEFAULT, "Requesting shared subscription services", v7, 2u);
  }

  sharedSubscriptionResponse = self->_sharedSubscriptionResponse;
  self->_sharedSubscriptionResponse = 0;

  subscriptionsFamilyViewSpecifier = self->_subscriptionsFamilyViewSpecifier;
  self->_subscriptionsFamilyViewSpecifier = 0;

  subscriptionSpecifiers = self->_subscriptionSpecifiers;
  self->_subscriptionSpecifiers = 0;

  self->_numberOfGroups = 0;
  [(FASharedSubscriptionSpecifierProvider *)self _loadSubscriptionServices];
}

- (void)_addSharedSubscriptionsButtonWasTapped:(id)tapped
{
  v5 = [[FASharedSubscriptionsViewController alloc] initWithAppleAccount:self->_appleAccount sharedSubscriptionSpecifierProvider:self];
  navigationController = [(PSListController *)self->_presenter navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (FASharedSubscriptionSpecifierProviderSelectionHandler)selectionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionHandler);

  return WeakRetained;
}

@end