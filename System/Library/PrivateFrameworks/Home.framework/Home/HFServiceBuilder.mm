@interface HFServiceBuilder
- (BOOL)_shouldUpdateNilNameWithRoomName;
- (HFServiceBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSArray)availableIconDescriptors;
- (NSString)description;
- (NSString)originalName;
- (id)_lazilyUpdateAssociatedServiceType;
- (id)_lazilyUpdateConfigurationState;
- (id)_lazilyUpdateIcon;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)type;
- (id)_performValidation;
- (id)accessories;
- (id)commitItem;
- (id)removeItemFromHome;
- (void)setAssociatedServiceType:(id)type;
@end

@implementation HFServiceBuilder

- (HFServiceBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  objectCopy = object;
  homeCopy = home;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceBuilder.m" lineNumber:40 description:{@"%@ can only be used with existing HMServices", objc_opt_class()}];
  }

  v31.receiver = self;
  v31.super_class = HFServiceBuilder;
  v9 = [(HFItemBuilder *)&v31 initWithExistingObject:objectCopy inHome:homeCopy];
  v10 = v9;
  if (v9)
  {
    v11 = objc_msgSend_service(v9);
    v12 = [HFNamingComponents namingComponentFromService:v11];
    [(HFServiceBuilder *)v10 setNamingComponent:v12];

    originalName = [(HFServiceBuilder *)v10 originalName];
    [(HFServiceBuilder *)v10 setName:originalName];

    v14 = objc_msgSend_service(v10);
    accessory = [v14 accessory];
    name = [accessory name];
    [(HFServiceBuilder *)v10 setAccessoryName:name];

    v17 = [HFRoomBuilder alloc];
    v18 = objc_msgSend_service(v10);
    accessory2 = [v18 accessory];
    room = [accessory2 room];
    v21 = [(HFRoomBuilder *)v17 initWithExistingObject:room inHome:homeCopy];
    [(HFServiceBuilder *)v10 setRoom:v21];

    v22 = objc_msgSend_service(v10);
    associatedServiceType = [v22 associatedServiceType];
    [(HFServiceBuilder *)v10 setAssociatedServiceType:associatedServiceType];

    v24 = objc_msgSend_service(v10);
    hf_iconDescriptor = [v24 hf_iconDescriptor];
    [(HFServiceBuilder *)v10 setIconDescriptor:hf_iconDescriptor];

    v26 = objc_msgSend_service(v10);
    -[HFServiceBuilder setShowInHomeDashboard:](v10, "setShowInHomeDashboard:", [v26 hf_effectiveShowInHomeDashboard]);

    v27 = objc_msgSend_service(v10);
    -[HFServiceBuilder setIsFavorite:](v10, "setIsFavorite:", [v27 hf_effectiveIsFavorite]);

    v28 = objc_msgSend_service(v10);
    -[HFServiceBuilder setConfigurationState:](v10, "setConfigurationState:", [v28 configurationState]);
  }

  return v10;
}

- (NSString)originalName
{
  namingComponent = [(HFServiceBuilder *)self namingComponent];
  name = [namingComponent name];

  return name;
}

- (void)setAssociatedServiceType:(id)type
{
  typeCopy = type;
  typeCopy2 = type;
  associatedServiceType = self->_associatedServiceType;
  if (associatedServiceType != typeCopy2)
  {
    v13 = typeCopy2;
    v7 = [(NSString *)associatedServiceType isEqualToString:typeCopy2];
    typeCopy2 = v13;
    if (!v7)
    {
      objc_storeStrong(&self->_associatedServiceType, typeCopy);
      v8 = self->_associatedServiceType;
      serviceType = v8;
      if (!v8)
      {
        typeCopy = objc_msgSend_service(self);
        serviceType = [typeCopy serviceType];
      }

      v10 = objc_msgSend_service(self);
      serviceSubtype = [v10 serviceSubtype];
      v12 = [HFServiceIconFactory defaultIconDescriptorForServiceType:serviceType serviceSubtype:serviceSubtype];
      [(HFServiceBuilder *)self setIconDescriptor:v12];

      typeCopy2 = v13;
      if (!v8)
      {

        typeCopy2 = v13;
      }
    }
  }
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_msgSend_service(self, a2);
  accessory = [v3 accessory];
  v5 = [v2 na_setWithSafeObject:accessory];

  return v5;
}

- (NSArray)availableIconDescriptors
{
  associatedServiceType = [(HFServiceBuilder *)self associatedServiceType];
  v4 = associatedServiceType;
  if (associatedServiceType)
  {
    hf_effectiveServiceType = associatedServiceType;
  }

  else
  {
    v6 = objc_msgSend_service(self);
    hf_effectiveServiceType = [v6 hf_effectiveServiceType];
  }

  v7 = objc_msgSend_service(self);
  serviceSubtype = [v7 serviceSubtype];
  v9 = [HFServiceIconFactory allIconDescriptorsForServiceType:hf_effectiveServiceType serviceSubtype:serviceSubtype];
  allObjects = [v9 allObjects];

  return allObjects;
}

- (id)removeItemFromHome
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  accessories = [(HFServiceBuilder *)self accessories];
  anyObject = [accessories anyObject];

  v6 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [anyObject hf_prettyDescription];
    *buf = 138412290;
    v21 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Removing accessory from home: %@", buf, 0xCu);
  }

  v8 = objc_msgSend_home(self);
  errorOnlyCompletionHandlerAdapter = [v3 errorOnlyCompletionHandlerAdapter];
  [v8 removeAccessory:anyObject completionHandler:errorOnlyCompletionHandlerAdapter];

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __38__HFServiceBuilder_removeItemFromHome__block_invoke;
  v17[3] = &unk_277DF6F48;
  objc_copyWeak(&v19, buf);
  v10 = anyObject;
  v18 = v10;
  v11 = [v3 flatMap:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __38__HFServiceBuilder_removeItemFromHome__block_invoke_2;
  v15[3] = &unk_277DF5038;
  v12 = v10;
  v16 = v12;
  v13 = [v11 recover:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return v13;
}

id __38__HFServiceBuilder_removeItemFromHome__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to remove accessory from home completed successfully: %@", buf, 0xCu);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __38__HFServiceBuilder_removeItemFromHome__block_invoke_11;
  v11 = &unk_277DF3810;
  v12 = WeakRetained;
  v13 = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:&v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

void __38__HFServiceBuilder_removeItemFromHome__block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didRemoveAccessory:*(a1 + 40)];
  }
}

id __38__HFServiceBuilder_removeItemFromHome__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412546;
    v17 = v3;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to remove accessory from home failed with error: %@, %@", buf, 0x16u);
  }

  v6 = [*(a1 + 32) name];
  v7 = v6;
  v8 = &stru_2824B1A78;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v14[0] = @"HFErrorHandlerOptionFailedItemName";
  v14[1] = @"HFErrorUserInfoOperationKey";
  v15[0] = v9;
  v15[1] = @"HFOperationRemoveAccessory";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v3 hf_errorWithAddedUserInfo:v10];

  v12 = [MEMORY[0x277D2C900] futureWithError:v11];

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = objc_msgSend_service(self);

  if (v4)
  {
    name = objc_msgSend_service(self);
    hf_prettyDescription = [name hf_prettyDescription];
    v7 = [v3 appendObject:hf_prettyDescription withName:@"service"];
  }

  else
  {
    name = [(HFServiceBuilder *)self name];
    v8 = [v3 appendObject:name withName:@"name"];
  }

  build = [v3 build];

  return build;
}

- (BOOL)_shouldUpdateNilNameWithRoomName
{
  name = [(HFServiceBuilder *)self name];

  if (name)
  {
    return 0;
  }

  v5 = objc_msgSend_service(self);
  accessory = [v5 accessory];

  if (![accessory hf_isMediaAccessory] || (objc_msgSend(accessory, "hf_isHomePod") & 1) != 0 || objc_msgSend(accessory, "hf_isAppleTV"))
  {
    hf_isTelevision = [accessory hf_isTelevision];
  }

  else
  {
    hf_isTelevision = 1;
  }

  return hf_isTelevision;
}

- (id)_performValidation
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D2C900];
  v3 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"room"];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 chainFutures:v4];

  return v5;
}

- (id)commitItem
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Starting commit (%@)", buf, 0xCu);
  }

  v4 = objc_msgSend_home(self);
  hf_currentUserIsAdministrator = [v4 hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    v6 = [(HFServiceBuilder *)self _lazilyUpdateValueForContextType:2];
    v29[0] = v6;
    v7 = [(HFServiceBuilder *)self _lazilyUpdateValueForContextType:3];
    v29[1] = v7;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

    v22 = [MEMORY[0x277D2C900] combineAllFutures:v23];
    v8 = @"HFOperationEditService";
    v9 = MEMORY[0x277D2C900];
    _performValidation = [(HFServiceBuilder *)self _performValidation];
    v28[0] = _performValidation;
    _lazilyUpdateName = [(HFServiceBuilder *)self _lazilyUpdateName];
    v28[1] = _lazilyUpdateName;
    _lazilyUpdateRoom = [(HFServiceBuilder *)self _lazilyUpdateRoom];
    v28[2] = _lazilyUpdateRoom;
    v28[3] = v22;
    _lazilyUpdateAssociatedServiceType = [(HFServiceBuilder *)self _lazilyUpdateAssociatedServiceType];
    v28[4] = _lazilyUpdateAssociatedServiceType;
    _lazilyUpdateIcon = [(HFServiceBuilder *)self _lazilyUpdateIcon];
    v28[5] = _lazilyUpdateIcon;
    _lazilyUpdateConfigurationState = [(HFServiceBuilder *)self _lazilyUpdateConfigurationState];
    v28[6] = _lazilyUpdateConfigurationState;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];
    v17 = [v9 chainFutures:v16];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __30__HFServiceBuilder_commitItem__block_invoke;
    v25[3] = &unk_277DF2D30;
    v26 = v8;
    selfCopy2 = self;
    futureWithNoResult = [v17 recover:v25];

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __30__HFServiceBuilder_commitItem__block_invoke_2;
    v24[3] = &unk_277DF70B0;
    v24[4] = self;
    v19 = [futureWithNoResult addCompletionBlock:v24];
  }

  else
  {
    v20 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Ignoring request to commit because the current user is not an administrator", buf, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __30__HFServiceBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v5 hf_errorWithOperationType:v3 failedItemName:v6];

  v8 = [v2 futureWithError:v7];

  return v8;
}

void __30__HFServiceBuilder_commitItem__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Commit for %@ finished with error: %@", &v7, 0x16u);
  }
}

- (id)_lazilyUpdateName
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HFServiceBuilder *)self _shouldUpdateNilNameWithRoomName])
  {
    room = [(HFServiceBuilder *)self room];
    name = [room name];
    [(HFServiceBuilder *)self setName:name];
  }

  else
  {
    room = [(HFServiceBuilder *)self namingComponent];
    name = [(HFServiceBuilder *)self name];
    v5 = [room commitableNameForString:name];
    [(HFServiceBuilder *)self setName:v5];
  }

  name2 = [(HFServiceBuilder *)self name];
  originalName = [(HFServiceBuilder *)self originalName];
  v8 = name2;
  v9 = originalName;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8)
    {

LABEL_13:
      objc_initWeak(buf, self);
      v15 = MEMORY[0x277D2C900];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke;
      v17[3] = &unk_277DF4F68;
      objc_copyWeak(&v18, buf);
      futureWithNoResult = [v15 lazyFutureWithBlock:v17];
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);
      goto LABEL_14;
    }

    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v12 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [(HFServiceBuilder *)self name];
    *buf = 138412290;
    v20 = name3;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_14:

  return futureWithNoResult;
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_msgSend_service(WeakRetained);
    v7 = [v6 name];
    v8 = [WeakRetained name];
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating name from %@ to %@", buf, 0x16u);
  }

  v9 = MEMORY[0x277D2C900];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_33;
  v16[3] = &unk_277DF4F68;
  objc_copyWeak(&v17, (a1 + 32));
  v10 = [v9 futureWithBlock:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_4;
  v14[3] = &unk_277DF50B0;
  v14[4] = WeakRetained;
  v11 = v3;
  v15 = v11;
  v12 = [v10 addCompletionBlock:v14];
  v13 = [v10 addFailureBlock:&__block_literal_global_194];

  objc_destroyWeak(&v17);
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_msgSend_service(WeakRetained);
  v6 = [v5 accessory];

  v7 = objc_msgSend_service(WeakRetained);
  v8 = [WeakRetained name];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2;
  v11[3] = &unk_277DFD130;
  objc_copyWeak(&v14, (a1 + 32));
  v9 = v3;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v7 updateName:v8 completionHandler:v11];

  objc_destroyWeak(&v14);
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v3)
  {
    [a1[4] finishWithError:v3];
  }

  else if ([a1[5] hf_isSingleServiceLikeAccessory] && (objc_msgSend_service(WeakRetained), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hf_isChildService"), v5, (v6 & 1) == 0))
  {
    v7 = a1[5];
    v8 = [WeakRetained name];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_3;
    v9[3] = &unk_277DF2D08;
    v10 = a1[4];
    [v7 updateName:v8 completionHandler:v9];
  }

  else
  {
    [a1[4] finishWithNoResult];
  }
}

uint64_t __37__HFServiceBuilder__lazilyUpdateName__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update name finished with error: %@", buf, 0xCu);
  }

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __37__HFServiceBuilder__lazilyUpdateName__block_invoke_36;
  v16[3] = &unk_277DF27B8;
  v16[4] = *(a1 + 32);
  [v8 dispatchAccessoryObserverMessage:v16 sender:0];

  v9 = [*(a1 + 32) name];
  v10 = objc_msgSend_service(*(a1 + 32));
  v11 = [v10 name];
  v12 = v9;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12)
    {

      goto LABEL_10;
    }

    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = [*(a1 + 32) originalName];
  [*(a1 + 32) setName:v10];
LABEL_10:

LABEL_11:
  [*(a1 + 40) finishWithResult:v5 error:v6];
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_36(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_service(*(a1 + 32));
    v4 = [v3 accessory];
    v5 = objc_msgSend_service(*(a1 + 32));
    [v6 accessory:v4 didUpdateNameForService:v5];
  }
}

void __37__HFServiceBuilder__lazilyUpdateName__block_invoke_2_40(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateName"];
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)type
{
  v5 = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_10;
      }

      showInHomeDashboard = [(HFServiceBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    showInHomeDashboard = [(HFServiceBuilder *)self isFavorite];
LABEL_9:
    v5 = showInHomeDashboard;
    goto LABEL_10;
  }

  if (!type)
  {
    goto LABEL_8;
  }

  if (type == 1)
  {
    NSLog(&cfstr_IncludeInStatu_3.isa, a2);
LABEL_16:
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_22;
  }

LABEL_10:
  v7 = objc_msgSend_service(self);
  accessory = [v7 accessory];
  v9 = objc_msgSend_home(accessory);
  accessories = [v9 accessories];
  v11 = objc_msgSend_service(self);
  accessory2 = [v11 accessory];
  v13 = [accessories containsObject:accessory2];

  if ((v13 & 1) == 0)
  {
    v15 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating state for context type %lu because accessory was removed from the home", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v14 = objc_msgSend_service(self);
  if (v5 == [v14 hf_isOnForContextType:type])
  {
    v17 = objc_msgSend_service(self);
    v18 = [v17 hf_hasSetForContextType:type];

    if (v18)
    {
      v19 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        typeCopy2 = type;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating state for context type %lu because it hasn't changed (currentState = %{BOOL}d)", buf, 0x12u);
      }

      goto LABEL_16;
    }
  }

  else
  {
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke;
  v21[3] = &unk_277DF7088;
  v21[4] = self;
  v21[5] = type;
  v22 = v5;
  futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v21];
LABEL_22:

  return futureWithNoResult;
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_msgSend_service(*(a1 + 32));
    v6 = objc_msgSend_service(*(a1 + 32));
    v7 = [v6 accessory];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138413058;
    v37 = v5;
    v38 = 2112;
    v39 = v7;
    v40 = 2048;
    v41 = v8;
    v42 = 1024;
    v43 = v9;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating application data to set state for service %@, accessory: %@, context type %lu, currentState: %{BOOL}d)", buf, 0x26u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_msgSend_service(*(a1 + 32));
  v12 = [v11 accessory];
  v13 = [v12 hf_isHomePod];

  if (!v13 || (objc_msgSend_service(*(a1 + 32)), v14 = objc_claimAutoreleasedReturnValue(), [v14 accessory], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "hf_hasSetForContextType:", *(a1 + 40)), v15, v14, v16))
  {
    v17 = objc_msgSend_service(*(a1 + 32));
    v18 = [v17 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];

    [v10 addObject:v18];
  }

  v19 = objc_msgSend_service(*(a1 + 32));
  v20 = [v19 accessory];
  if ([v20 hf_showAsIndividualServices])
  {
    goto LABEL_11;
  }

  v21 = objc_msgSend_service(*(a1 + 32));
  if (([v21 hf_shouldBeOnForContextType:*(a1 + 40)] & 1) == 0)
  {

LABEL_11:
    goto LABEL_12;
  }

  v22 = objc_msgSend_service(*(a1 + 32));
  v23 = [v22 accessory];

  if (v23)
  {
    v24 = objc_msgSend_service(*(a1 + 32));
    v25 = [v24 accessory];
    v19 = [v25 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];

    [v10 addObject:v19];
LABEL_12:
  }

  v26 = [MEMORY[0x277D2C900] chainFutures:v10];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_49;
  v33 = &unk_277DF50B0;
  v34 = *(a1 + 32);
  v35 = v3;
  v27 = v3;
  v28 = [v26 addCompletionBlock:&v30];
  v29 = [v26 addFailureBlock:{&__block_literal_global_54_5, v30, v31, v32, v33, v34}];
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update application data for setting favorite finished with error: %@", buf, 0xCu);
  }

  v8 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_50;
  v9[3] = &unk_277DF27B8;
  v9[4] = *(a1 + 32);
  [v8 dispatchAccessoryObserverMessage:v9 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_50(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_service(*(a1 + 32));
    v4 = [v3 accessory];
    v5 = objc_msgSend_service(*(a1 + 32));
    [v6 accessory:v4 didUpdateApplicationDataForService:v5];
  }
}

void __53__HFServiceBuilder__lazilyUpdateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateFavorite"];
}

- (id)_lazilyUpdateRoom
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_service(self, a2);
  accessory = [v3 accessory];

  room = [accessory room];
  uniqueIdentifier = [room uniqueIdentifier];
  room2 = [(HFServiceBuilder *)self room];
  v7Room = [room2 room];
  uniqueIdentifier2 = [v7Room uniqueIdentifier];
  v10 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  if (v10)
  {
    v11 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      room3 = [(HFServiceBuilder *)self room];
      *buf = 138412290;
      v24 = room3;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating room because it hasn't changed (%@)", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v14 = MEMORY[0x277D2C900];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke;
    v20 = &unk_277DF28D8;
    selfCopy = self;
    v22 = accessory;
    futureWithNoResult = [v14 lazyFutureWithBlock:&v17];
    v15 = [futureWithNoResult addCompletionBlock:{&__block_literal_global_61_5, v17, v18, v19, v20, selfCopy}];
  }

  return futureWithNoResult;
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) name];
  v5 = [*(a1 + 32) originalName];
  v6 = v4;
  v7 = v5;
  if (v6 == v7)
  {
    v8 = 1;
  }

  else if (v6)
  {
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 40) room];
    v11 = [v10 hf_prettyDescription];
    v12 = [*(a1 + 32) room];
    v13 = [v12 hf_prettyDescription];
    *buf = 138412546;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Committing HFRoomBuilder to change room from %@ to %@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) room];
  [v14 addAccessory:*(a1 + 40)];

  v15 = [*(a1 + 32) room];
  v16 = [v15 commitItem];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_58;
  v19[3] = &unk_277DF7038;
  v21 = v8;
  v19[4] = *(a1 + 32);
  v20 = v3;
  v17 = v3;
  v18 = [v16 addCompletionBlock:v19];
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_58(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 48) == 1)
  {
    v6 = [*(a1 + 32) originalName];
    [*(a1 + 32) setName:v6];
  }

  [*(a1 + 40) finishWithResult:v7 error:v5];
}

void __37__HFServiceBuilder__lazilyUpdateRoom__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Room builder commit finished with error: %@", &v5, 0xCu);
  }
}

- (id)_lazilyUpdateIcon
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_service(self, a2);
  hf_iconDescriptor = [v3 hf_iconDescriptor];
  identifier = [hf_iconDescriptor identifier];

  iconDescriptor = [(HFServiceBuilder *)self iconDescriptor];
  identifier2 = [iconDescriptor identifier];
  v8 = [identifier isEqualToString:identifier2];

  if (v8)
  {
    v9 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      iconDescriptor2 = [(HFServiceBuilder *)self iconDescriptor];
      identifier3 = [iconDescriptor2 identifier];
      *buf = 138412290;
      v17 = identifier3;
      _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating icon because it hasn't changed (%@)", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke;
    v15[3] = &unk_277DF29A0;
    v15[4] = self;
    futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v15];
  }

  v13 = futureWithNoResult;

  return v13;
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) iconDescriptor];
    v6 = [v5 identifier];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating application data to set icon (%@)", buf, 0xCu);
  }

  v7 = objc_msgSend_service(*(a1 + 32));
  v8 = [*(a1 + 32) iconDescriptor];
  v9 = [v7 hf_updateIconDescriptor:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_62;
  v15[3] = &unk_277DF5038;
  v15[4] = *(a1 + 32);
  v10 = [v9 recover:v15];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_2;
  v13[3] = &unk_277DF50B0;
  v13[4] = *(a1 + 32);
  v14 = v3;
  v11 = v3;
  v12 = [v10 addCompletionBlock:v13];
}

id __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_62(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hf_isHMErrorWithCode:3] & 1) != 0 || objc_msgSend(v3, "hf_isHFErrorWithCode:", 33))
  {
    v4 = objc_msgSend_service(*(a1 + 32));
    v5 = [HFServiceIconFactory defaultIconDescriptorForService:v4];

    v6 = objc_msgSend_service(*(a1 + 32));
    v7 = [v6 hf_updateIconDescriptor:v5];
  }

  else
  {
    v8 = +[HFErrorHandler sharedHandler];
    [v8 logError:v3 operationDescription:@"HFServiceBuilder.updateIcon"];

    v7 = [MEMORY[0x277D2C900] futureWithError:v3];
  }

  return v7;
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) iconDescriptor];
    v9 = [v8 identifier];
    *buf = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update application data for setting icon (%@) finished with error: %@", buf, 0x16u);
  }

  v10 = +[HFHomeKitDispatcher sharedDispatcher];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_66;
  v11[3] = &unk_277DF27B8;
  v11[4] = *(a1 + 32);
  [v10 dispatchAccessoryObserverMessage:v11 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
}

void __37__HFServiceBuilder__lazilyUpdateIcon__block_invoke_66(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_service(*(a1 + 32));
    v4 = [v3 accessory];
    v5 = objc_msgSend_service(*(a1 + 32));
    [v6 accessory:v4 didUpdateApplicationDataForService:v5];
  }
}

- (id)_lazilyUpdateAssociatedServiceType
{
  v22 = *MEMORY[0x277D85DE8];
  associatedServiceType = [(HFServiceBuilder *)self associatedServiceType];
  v4 = objc_msgSend_service(self);
  serviceType = [v4 serviceType];
  v6 = [(__CFString *)associatedServiceType isEqualToString:serviceType];

  if (v6)
  {

    associatedServiceType = 0;
  }

  if (associatedServiceType)
  {
    v7 = associatedServiceType;
  }

  else
  {
    v7 = &stru_2824B1A78;
  }

  v8 = objc_msgSend_service(self);
  associatedServiceType2 = [v8 associatedServiceType];
  v10 = associatedServiceType2;
  if (associatedServiceType2)
  {
    v11 = associatedServiceType2;
  }

  else
  {
    v11 = &stru_2824B1A78;
  }

  v12 = [(__CFString *)v7 isEqualToString:v11];

  if (v12)
  {
    v13 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = associatedServiceType;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating associated service type because it hasn't changed (%@)", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v15 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke;
    v17[3] = &unk_277DF28D8;
    v18 = associatedServiceType;
    selfCopy = self;
    futureWithNoResult = [v15 lazyFutureWithBlock:v17];
  }

  return futureWithNoResult;
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke(int8x16_t *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[2].i64[0];
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Updating associated service type (%@)", buf, 0xCu);
  }

  v6 = MEMORY[0x277D2C900];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_67;
  v19[3] = &unk_277DF4150;
  v14 = a1[2];
  v7 = v14.i64[0];
  v20 = vextq_s8(v14, v14, 8uLL);
  v8 = [v6 futureWithErrorOnlyHandlerAdapterBlock:v19];
  v9 = [v8 addFailureBlock:&__block_literal_global_70_6];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_3;
  v15[3] = &unk_277DF3180;
  v10 = a1[2].i64[0];
  v11 = a1[2].i64[1];
  v16 = v10;
  v17 = v11;
  v18 = v3;
  v12 = v3;
  v13 = [v8 addCompletionBlock:v15];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_msgSend_service(v3);
  [v5 updateAssociatedServiceType:*(a1 + 40) completionHandler:v4];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateAssociatedServiceType"];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update associated service type (%@) finished with error: %@", buf, 0x16u);
  }

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_74;
  v10[3] = &unk_277DF27B8;
  v10[4] = *(a1 + 40);
  [v9 dispatchAccessoryObserverMessage:v10 sender:0];

  [*(a1 + 48) finishWithResult:v6 error:v5];
}

void __54__HFServiceBuilder__lazilyUpdateAssociatedServiceType__block_invoke_74(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_service(*(a1 + 32));
    v4 = [v3 accessory];
    v5 = objc_msgSend_service(*(a1 + 32));
    [v6 accessory:v4 didUpdateAssociatedServiceTypeForService:v5];
  }
}

- (id)_lazilyUpdateConfigurationState
{
  v13 = *MEMORY[0x277D85DE8];
  configurationState = [(HFServiceBuilder *)self configurationState];
  v4 = objc_msgSend_service(self);
  configurationState2 = [v4 configurationState];

  if (configurationState == configurationState2)
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = NSStringFromConfigurationState(configurationState);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Not updating configuration state because it hasn't changed (%@)", buf, 0xCu);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke;
    v10[3] = &unk_277DF2770;
    v10[4] = self;
    v10[5] = configurationState;
    futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v10];
  }

  return futureWithNoResult;
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_2;
  v14[3] = &unk_277DF46B0;
  v4 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v14[5] = v4;
  v5 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v14];
  v6 = [v5 addFailureBlock:&__block_literal_global_78_3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_4;
  v11[3] = &unk_277DF7378;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v3;
  v13 = v7;
  v11[4] = v8;
  v9 = v3;
  v10 = [v5 addCompletionBlock:v11];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_msgSend_service(v3);
  [v5 updateConfigurationState:*(a1 + 40) completionHandler:v4];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFServiceBuilder.updateConfigurationState"];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromConfigurationState(*(a1 + 48));
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFServiceBuilder: Request to update configuration state (%@) finished with error: %@", buf, 0x16u);
  }

  v9 = +[HFHomeKitDispatcher sharedDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_82;
  v10[3] = &unk_277DF27B8;
  v10[4] = *(a1 + 32);
  [v9 dispatchAccessoryObserverMessage:v10 sender:0];

  [*(a1 + 40) finishWithResult:v6 error:v5];
}

void __51__HFServiceBuilder__lazilyUpdateConfigurationState__block_invoke_82(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_service(*(a1 + 32));
    v4 = [v3 accessory];
    v5 = objc_msgSend_service(*(a1 + 32));
    [v6 accessory:v4 didUpdateConfigurationStateForService:v5];
  }
}

@end