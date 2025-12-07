@interface HFAccessoryBuilder
- (BOOL)_shouldUpdateNilNameWithRoomName;
- (BOOL)supportsFavoriting;
- (HFAccessoryBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSString)originalName;
- (id)_lazilyUpdateName;
- (id)_lazilyUpdateRoom;
- (id)_lazilyUpdateValueForContextType:(unint64_t)type;
- (id)accessories;
- (id)commitItem;
- (id)removeItemFromHome;
@end

@implementation HFAccessoryBuilder

- (HFAccessoryBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  objectCopy = object;
  homeCopy = home;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryBuilder.m" lineNumber:43 description:{@"%@ can only be used with existing HMAccessories", objc_opt_class()}];
  }

  v22.receiver = self;
  v22.super_class = HFAccessoryBuilder;
  v9 = [(HFItemBuilder *)&v22 initWithExistingObject:objectCopy inHome:homeCopy];
  v10 = v9;
  if (v9)
  {
    homeKitRepresentation = [(HFItemBuilder *)v9 homeKitRepresentation];
    v12 = [HFNamingComponents namingComponentFromAccessory:homeKitRepresentation];
    [(HFAccessoryBuilder *)v10 setNamingComponent:v12];

    originalName = [(HFAccessoryBuilder *)v10 originalName];
    [(HFAccessoryBuilder *)v10 setName:originalName];

    v14 = [HFRoomBuilder alloc];
    accessory = [(HFAccessoryBuilder *)v10 accessory];
    room = [accessory room];
    v17 = [(HFRoomBuilder *)v14 initWithExistingObject:room inHome:homeCopy];
    [(HFAccessoryBuilder *)v10 setRoom:v17];

    accessory2 = [(HFAccessoryBuilder *)v10 accessory];
    -[HFAccessoryBuilder setShowInHomeDashboard:](v10, "setShowInHomeDashboard:", [accessory2 hf_effectiveShowInHomeDashboard]);

    accessory3 = [(HFAccessoryBuilder *)v10 accessory];
    -[HFAccessoryBuilder setIsFavorite:](v10, "setIsFavorite:", [accessory3 hf_effectiveIsFavorite]);

    [(HFAccessoryBuilder *)v10 setSkipPropagateFavoriteToServices:0];
  }

  return v10;
}

- (NSString)originalName
{
  namingComponent = [(HFAccessoryBuilder *)self namingComponent];
  name = [namingComponent name];

  return name;
}

- (id)accessories
{
  v2 = MEMORY[0x277CBEB98];
  accessory = [(HFAccessoryBuilder *)self accessory];
  v4 = [v2 setWithObject:accessory];

  return v4;
}

- (BOOL)supportsFavoriting
{
  accessory = [(HFAccessoryBuilder *)self accessory];
  hf_isNetworkRouter = [accessory hf_isNetworkRouter];

  return hf_isNetworkRouter ^ 1;
}

- (id)removeItemFromHome
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D2C900]);
  accessories = [(HFAccessoryBuilder *)self accessories];
  anyObject = [accessories anyObject];

  v6 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    hf_prettyDescription = [anyObject hf_prettyDescription];
    *buf = 138412290;
    v21 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Removing accessory from home: %@", buf, 0xCu);
  }

  v8 = objc_msgSend_home(self);
  errorOnlyCompletionHandlerAdapter = [v3 errorOnlyCompletionHandlerAdapter];
  [v8 removeAccessory:anyObject completionHandler:errorOnlyCompletionHandlerAdapter];

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke;
  v17[3] = &unk_277DF6F48;
  objc_copyWeak(&v19, buf);
  v10 = anyObject;
  v18 = v10;
  v11 = [v3 flatMap:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_2;
  v15[3] = &unk_277DF5038;
  v12 = v10;
  v16 = v12;
  v13 = [v11 recover:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return v13;
}

id __40__HFAccessoryBuilder_removeItemFromHome__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) hf_prettyDescription];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to remove accessory from home completed successfully: %@", buf, 0xCu);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_10;
  v11 = &unk_277DF3810;
  v12 = WeakRetained;
  v13 = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:&v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v6;
}

void __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didRemoveAccessory:*(a1 + 40)];
  }
}

id __40__HFAccessoryBuilder_removeItemFromHome__block_invoke_2(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to remove accessory from home failed with error: %@, %@", buf, 0x16u);
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

- (BOOL)_shouldUpdateNilNameWithRoomName
{
  name = [(HFAccessoryBuilder *)self name];

  if (!name)
  {
    accessory = [(HFAccessoryBuilder *)self accessory];
    hf_isMediaAccessory = [accessory hf_isMediaAccessory];
    if (hf_isMediaAccessory)
    {
      accessory2 = [(HFAccessoryBuilder *)self accessory];
      if ([accessory2 hf_isHomePod])
      {
        v9 = 0;
      }

      else
      {
        accessory3 = [(HFAccessoryBuilder *)self accessory];
        if (([accessory3 hf_isAppleTV] & 1) == 0)
        {

          hf_isTelevision = 1;
          goto LABEL_15;
        }

        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }

    accessory4 = [(HFAccessoryBuilder *)self accessory];
    hf_isTelevision = [accessory4 hf_isTelevision];

    if (v9)
    {

      if ((hf_isMediaAccessory & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!hf_isMediaAccessory)
    {
      goto LABEL_16;
    }

LABEL_15:

LABEL_16:
    return hf_isTelevision;
  }

  return 0;
}

- (id)commitItem
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Starting commit (%@)", buf, 0xCu);
  }

  v4 = objc_msgSend_home(self);
  hf_currentUserIsAdministrator = [v4 hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    v6 = objc_opt_new();
    v7 = [(HFAccessoryBuilder *)self _lazilyUpdateValueForContextType:3];
    [v6 na_safeAddObject:v7];

    accessory = [(HFAccessoryBuilder *)self accessory];
    hf_isCamera = [accessory hf_isCamera];

    if ((hf_isCamera & 1) == 0)
    {
      v10 = [(HFAccessoryBuilder *)self _lazilyUpdateValueForContextType:2];
      [v6 na_safeAddObject:v10];
    }

    v11 = [MEMORY[0x277D2C900] combineAllFutures:v6];
    v12 = @"HFOperationEditService";
    v13 = MEMORY[0x277D2C900];
    _performValidation = [(HFAccessoryBuilder *)self _performValidation];
    v25[0] = _performValidation;
    _lazilyUpdateName = [(HFAccessoryBuilder *)self _lazilyUpdateName];
    v25[1] = _lazilyUpdateName;
    _lazilyUpdateRoom = [(HFAccessoryBuilder *)self _lazilyUpdateRoom];
    v25[2] = _lazilyUpdateRoom;
    v25[3] = v11;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    v18 = [v13 chainFutures:v17];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __32__HFAccessoryBuilder_commitItem__block_invoke;
    v22[3] = &unk_277DF2D30;
    v23 = v12;
    selfCopy2 = self;
    futureWithNoResult = [v18 recover:v22];
  }

  else
  {
    v20 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Ignoring request to commit because the current user is not an administrator", buf, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __32__HFAccessoryBuilder_commitItem__block_invoke(uint64_t a1, void *a2)
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

- (id)_lazilyUpdateName
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(HFAccessoryBuilder *)self _shouldUpdateNilNameWithRoomName])
  {
    room = [(HFAccessoryBuilder *)self room];
    name = [room name];
    [(HFAccessoryBuilder *)self setName:name];
  }

  else
  {
    room = [(HFAccessoryBuilder *)self namingComponent];
    name = [(HFAccessoryBuilder *)self name];
    v5 = [room commitableNameForString:name];
    [(HFAccessoryBuilder *)self setName:v5];
  }

  name2 = [(HFAccessoryBuilder *)self name];
  originalName = [(HFAccessoryBuilder *)self originalName];
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
      accessory = [(HFAccessoryBuilder *)self accessory];
      name3 = [(HFAccessoryBuilder *)self name];
      v17 = MEMORY[0x277D2C900];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke;
      v21[3] = &unk_277DF28D8;
      v22 = accessory;
      v23 = name3;
      v18 = name3;
      v19 = accessory;
      futureWithNoResult = [v17 lazyFutureWithBlock:v21];

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
    name4 = [(HFAccessoryBuilder *)self name];
    *buf = 138412290;
    v25 = name4;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
  }

  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_14:

  return futureWithNoResult;
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = *(a1 + 40);
    *buf = 138412546;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating name from %@ to %@", buf, 0x16u);
  }

  v7 = MEMORY[0x277D2C900];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_25;
  v19[3] = &unk_277DF4150;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v8 = [v7 futureWithErrorOnlyHandlerAdapterBlock:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2;
  v15[3] = &unk_277DF7010;
  v16 = *(a1 + 32);
  v9 = v3;
  v17 = v9;
  v18 = *(a1 + 40);
  v10 = [v8 addSuccessBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_43;
  v13[3] = &unk_277DF2D08;
  v14 = v9;
  v11 = v9;
  v12 = [v8 addFailureBlock:v13];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_3;
  v31[3] = &unk_277DF27B8;
  v32 = a1[4];
  [v4 dispatchAccessoryObserverMessage:v31 sender:0];

  if ([a1[4] hf_isSingleServiceLikeAccessory])
  {
    v5 = [a1[4] hf_visibleServices];
    v6 = [v5 anyObject];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [a1[4] hf_primaryService];

      if (!v7)
      {
        v14 = HFLogForCategory(0x2BuLL);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Attempted to name a single service accessory without a visible service", buf, 2u);
        }

        v15 = a1[5];
        v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
        [v15 finishWithError:v11];
        goto LABEL_7;
      }
    }

    v8 = MEMORY[0x277D2C900];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_31;
    v26[3] = &unk_277DF6F70;
    v9 = v7;
    v27 = v9;
    v28 = a1[6];
    v29 = a1[4];
    v10 = [v8 futureWithErrorOnlyHandlerAdapterBlock:v26];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_32;
    v20[3] = &unk_277DF6FC0;
    v21 = a1[4];
    v22 = v9;
    v23 = a1[6];
    v24 = a1[5];
    v25 = v3;
    v11 = v9;
    v12 = [v10 addSuccessBlock:v20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_37;
    v16[3] = &unk_277DF6FE8;
    v17 = a1[6];
    v18 = a1[4];
    v19 = a1[5];
    v13 = [v10 addFailureBlock:v16];

LABEL_7:
    goto LABEL_8;
  }

  [a1[5] finishWithResult:v3];
LABEL_8:
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateName:*(a1 + 32)];
  }
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_31(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) updateName:*(a1 + 40) completionHandler:a2];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Apply accessory %@ service %@ name %@ (same as accessory name)", &v7, 0x20u);
  }
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_32(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2_33;
  v8 = &unk_277DF6F98;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v2 dispatchAccessoryObserverMessage:&v5 sender:0];

  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "Successfully applied primary service level name %@ to accessory", buf, 0xCu);
  }

  [*(a1 + 56) finishWithResult:{*(a1 + 64), v5, v6, v7, v8}];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_2_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessory:*(a1 + 32) didUpdateNameForService:*(a1 + 40)];
  }
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_37(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Unable to apply primary service level name: %@ to accessory %@ | %@", &v8, 0x20u);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateName"];

  [*(a1 + 48) finishWithError:v3];
}

void __39__HFAccessoryBuilder__lazilyUpdateName__block_invoke_43(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to update name finished with error: %@", &v6, 0xCu);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateSingleServiceLikeAccessoryName"];

  [*(a1 + 32) finishWithError:v3];
}

- (id)_lazilyUpdateRoom
{
  accessory = [(HFAccessoryBuilder *)self accessory];
  room = [accessory room];
  uniqueIdentifier = [room uniqueIdentifier];
  room2 = [(HFAccessoryBuilder *)self room];
  v6Room = [room2 room];
  uniqueIdentifier2 = [v6Room uniqueIdentifier];
  v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

  v10 = MEMORY[0x277D2C900];
  if (v9)
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke;
    v13[3] = &unk_277DF28D8;
    v13[4] = self;
    v14 = accessory;
    futureWithNoResult = [v10 lazyFutureWithBlock:v13];
  }

  return futureWithNoResult;
}

void __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Committing HFRoomBuilder to change room from %@ to %@", buf, 0x16u);
  }

  v14 = [*(a1 + 32) room];
  [v14 addAccessory:*(a1 + 40)];

  v15 = [*(a1 + 32) room];
  v16 = [v15 commitItem];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke_48;
  v19[3] = &unk_277DF7038;
  v21 = v8;
  v19[4] = *(a1 + 32);
  v20 = v3;
  v17 = v3;
  v18 = [v16 addCompletionBlock:v19];
}

void __39__HFAccessoryBuilder__lazilyUpdateRoom__block_invoke_48(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Room builder commit finished with error: %@", &v9, 0xCu);
  }

  if (*(a1 + 48) == 1)
  {
    v8 = [*(a1 + 32) originalName];
    [*(a1 + 32) setName:v8];
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];
}

- (id)_lazilyUpdateValueForContextType:(unint64_t)type
{
  v5 = 0;
  v26 = *MEMORY[0x277D85DE8];
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_10;
      }

      showInHomeDashboard = [(HFAccessoryBuilder *)self showInHomeDashboard];
LABEL_9:
      v5 = showInHomeDashboard;
LABEL_10:
      accessory = [(HFAccessoryBuilder *)self accessory];
      v8 = objc_msgSend_home(accessory);
      accessories = [v8 accessories];
      accessory2 = [(HFAccessoryBuilder *)self accessory];
      v11 = [accessories containsObject:accessory2];

      if ((v11 & 1) == 0)
      {
        v15 = HFLogForCategory(0x2BuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          typeCopy2 = type;
          _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating overall state for context type: %lu because accessory was removed from the home", buf, 0xCu);
        }

        goto LABEL_19;
      }

      accessory3 = [(HFAccessoryBuilder *)self accessory];
      if (v5 == [accessory3 hf_shouldBeOnForContextType:type])
      {
        accessory4 = [(HFAccessoryBuilder *)self accessory];
        if (v5 == [accessory4 hf_isOnForContextType:type])
        {
          accessory5 = [(HFAccessoryBuilder *)self accessory];
          v18 = [accessory5 hf_hasSetForContextType:type];

          if (v18)
          {
            v19 = HFLogForCategory(0x2BuLL);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              typeCopy2 = type;
              v24 = 1024;
              v25 = v5;
              _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Not updating overall state for context type: %lu because it hasn't changed (state = %{BOOL}d)", buf, 0x12u);
            }

            goto LABEL_19;
          }

LABEL_15:
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke;
          v20[3] = &unk_277DF7088;
          v21 = v5;
          v20[4] = self;
          v20[5] = type;
          futureWithNoResult = [MEMORY[0x277D2C900] lazyFutureWithBlock:v20];
          goto LABEL_20;
        }
      }

      goto LABEL_15;
    }

LABEL_8:
    showInHomeDashboard = [(HFAccessoryBuilder *)self isFavorite];
    goto LABEL_9;
  }

  if (!type)
  {
    goto LABEL_8;
  }

  if (type != 1)
  {
    goto LABEL_10;
  }

  NSLog(&cfstr_IncludeInStatu.isa, a2);
LABEL_19:
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_20:

  return futureWithNoResult;
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 134218240;
    v34 = v5;
    v35 = 1024;
    LODWORD(v36) = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating application data to set state for context type: %lu, currentState: %{BOOL}d", buf, 0x12u);
  }

  v7 = [*(a1 + 32) accessory];
  if (*(a1 + 48) == [v7 hf_isOnForContextType:*(a1 + 40)])
  {
    v8 = [*(a1 + 32) accessory];
    v9 = [v8 hf_shouldBeOnForContextType:*(a1 + 40)];
    v10 = *(a1 + 48);

    if (v10 == v9)
    {
      v11 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        *buf = 134218240;
        v34 = v12;
        v35 = 1024;
        LODWORD(v36) = v13;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Skipping accessory state update for context type: %lu because it hasn't changed (state = %{BOOL}d)", buf, 0x12u);
      }

LABEL_17:

      v22 = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_18;
    }
  }

  else
  {
  }

  v14 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    *buf = 134218240;
    v34 = v15;
    v35 = 1024;
    LODWORD(v36) = v16;
    _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Updating accessory state for context type: %lu, currentState: %{BOOL}d", buf, 0x12u);
  }

  v17 = [*(a1 + 32) skipPropagateFavoriteToServices];
  v18 = [*(a1 + 32) accessory];
  v19 = v18;
  if (v17)
  {
    v20 = objc_opt_respondsToSelector();

    if ((v20 & 1) == 0)
    {
      v11 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        v24 = [*(a1 + 32) accessory];
        *buf = 134218242;
        v34 = v23;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Skipping accessory state update for context type: %lu because accessory does not implement hf_updateValueForCurrentObjectOnly, which shouldn't be possible for %@", buf, 0x16u);
      }

      goto LABEL_17;
    }

    v19 = [*(a1 + 32) accessory];
    v21 = [v19 hf_updateValueForCurrentObjectOnly:*(a1 + 48) forContextType:*(a1 + 40)];
  }

  else
  {
    v21 = [v18 hf_updateValue:*(a1 + 48) forContextType:*(a1 + 40)];
  }

  v22 = v21;

LABEL_18:
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_55;
  v31[3] = &unk_277DF7060;
  v31[4] = *(a1 + 32);
  v25 = v3;
  v32 = v25;
  v26 = [v22 addSuccessBlock:v31];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_3;
  v29[3] = &unk_277DF2D08;
  v30 = v25;
  v27 = v25;
  v28 = [v22 addFailureBlock:v29];
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_2;
  v5[3] = &unk_277DF27B8;
  v5[4] = *(a1 + 32);
  [v4 dispatchAccessoryObserverMessage:v5 sender:0];

  [*(a1 + 40) finishWithResult:v3];
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) accessory];
    [v4 accessoryDidUpdateApplicationData:v3];
  }
}

void __55__HFAccessoryBuilder__lazilyUpdateValueForContextType___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFAccessoryBuilder: Request to update application data for setting favorite finished with error: %@", &v6, 0xCu);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFAccessoryBuilder.updateFavorite"];

  [*(a1 + 32) finishWithError:v3];
}

@end