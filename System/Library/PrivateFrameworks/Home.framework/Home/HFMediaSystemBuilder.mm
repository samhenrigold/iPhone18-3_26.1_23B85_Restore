@interface HFMediaSystemBuilder
- (BOOL)shouldAllowAddingAccessory:(id)accessory;
- (BOOL)stereoPairVersionMatchesForAccessory:(id)accessory;
- (BOOL)swapRoles;
- (HFMediaSystemBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (HFRoomBuilder)room;
- (HMMediaSystemBuilder)homeKitMediaSystemBuilder;
- (NSSet)accessories;
- (NSString)description;
- (NSString)name;
- (NSString)originalName;
- (id)_arbitrateMusicAccount;
- (id)_commitChangesToMediaSystemBuilder;
- (id)_defaultName;
- (id)_firstUnpopulatedRole;
- (id)_rooms;
- (id)_setHomeTheaterSource:(id)source toDestination:(id)destination;
- (id)_updateAssistantAccessControl;
- (id)_updateAudioAnalysisSoundNotificationSettings;
- (id)_updatePreferredMediaUser;
- (id)_updateRoom;
- (id)_updateSiriLanguageOptionsManager;
- (id)_updateValueForContextType:(unint64_t)type;
- (id)accessoryForRole:(id)role;
- (id)commitItem;
- (id)removeItemFromHome;
- (id)roleForAccessory:(id)accessory;
- (void)addAccessory:(id)accessory;
- (void)addAccessory:(id)accessory role:(id)role;
- (void)removeAccessory:(id)accessory;
- (void)setName:(id)name;
- (void)setRoom:(id)room;
@end

@implementation HFMediaSystemBuilder

- (HFMediaSystemBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  objectCopy = object;
  homeCopy = home;
  v8 = objc_opt_class();
  v9 = objectCopy;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v9;
    if (v10)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v11 = 0;
LABEL_8:

  v17.receiver = self;
  v17.super_class = HFMediaSystemBuilder;
  v14 = [(HFItemBuilder *)&v17 initWithExistingObject:v11 inHome:homeCopy];

  if (v14)
  {
    v15 = [HFNamingComponents namingComponentFromMediaSystem:v11];
    [(HFMediaSystemBuilder *)v14 setNamingComponent:v15];

    v14->_isCreatingMediaSystem = v11 == 0;
    v14->_showInHomeDashboard = [v11 hf_effectiveShowInHomeDashboard];
    v14->_isFavorite = [v11 hf_effectiveIsFavorite];
  }

  return v14;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  appendSuper = [v3 appendSuper];
  mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
  hf_prettyDescription = [mediaSystem hf_prettyDescription];
  v7 = [v3 appendObject:hf_prettyDescription withName:@"existingMediaSystem"];

  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  components = [homeKitMediaSystemBuilder components];
  v10 = [v3 appendObject:components withName:@"components"];

  leftRole = [MEMORY[0x277CD1C10] leftRole];
  v12 = [(HFMediaSystemBuilder *)self accessoryForRole:leftRole];
  v13 = [v3 appendObject:v12 withName:@"lefty" skipIfNil:1];

  rightRole = [MEMORY[0x277CD1C10] rightRole];
  v15 = [(HFMediaSystemBuilder *)self accessoryForRole:rightRole];
  v16 = [v3 appendObject:v15 withName:@"righty" skipIfNil:1];

  homeKitMediaSystemBuilder2 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  name = [homeKitMediaSystemBuilder2 name];
  v19 = [v3 appendObject:name withName:@"name"];

  homeKitMediaSystemBuilder3 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  hf_prettyDescription2 = [homeKitMediaSystemBuilder3 hf_prettyDescription];
  v22 = [v3 appendObject:hf_prettyDescription2 withName:@"room"];

  build = [v3 build];

  return build;
}

- (HMMediaSystemBuilder)homeKitMediaSystemBuilder
{
  homeKitMediaSystemBuilder = self->_homeKitMediaSystemBuilder;
  if (!homeKitMediaSystemBuilder)
  {
    mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];

    v5 = objc_alloc(MEMORY[0x277CD1BF0]);
    if (mediaSystem)
    {
      mediaSystem2 = [(HFMediaSystemBuilder *)self mediaSystem];
      v7 = [v5 initWithMediaSystem:mediaSystem2];
    }

    else
    {
      mediaSystem2 = objc_msgSend_home(self);
      v7 = [v5 initWithHome:mediaSystem2];
    }

    v8 = self->_homeKitMediaSystemBuilder;
    self->_homeKitMediaSystemBuilder = v7;

    homeKitMediaSystemBuilder = self->_homeKitMediaSystemBuilder;
  }

  return homeKitMediaSystemBuilder;
}

- (void)setName:(id)name
{
  nameCopy = name;
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  [homeKitMediaSystemBuilder setConfiguredName:nameCopy];
}

- (NSString)name
{
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  configuredName = [homeKitMediaSystemBuilder configuredName];
  v5 = configuredName;
  if (configuredName)
  {
    name = configuredName;
  }

  else
  {
    namingComponent = [(HFMediaSystemBuilder *)self namingComponent];
    name = [namingComponent name];
  }

  return name;
}

- (void)addAccessory:(id)accessory
{
  v11 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (![(HFMediaSystemBuilder *)self shouldAllowAddingAccessory:accessoryCopy])
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [accessoryCopy hf_prettyDescription];
      v9 = 138412290;
      v10 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Request to add an accessory that is not supported in this media system pair. We'll allow this to proceed (because there are no API restriction of what services can go into a pair; we just want to enforce restrictions in our UI). Accessory: %@", &v9, 0xCu);
    }
  }

  _firstUnpopulatedRole = [(HFMediaSystemBuilder *)self _firstUnpopulatedRole];
  [(HFMediaSystemBuilder *)self addAccessory:accessoryCopy role:_firstUnpopulatedRole];

  if (!self->_firstSetupSourceAccessory && [(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    objc_storeStrong(&self->_firstSetupSourceAccessory, accessory);
  }
}

- (void)addAccessory:(id)accessory role:(id)role
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  roleCopy = role;
  v9 = roleCopy;
  if (accessoryCopy)
  {
    if (roleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaSystemBuilder.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"accessory"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFMediaSystemBuilder.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"role"}];

LABEL_3:
  if (![(HFMediaSystemBuilder *)self shouldAllowAddingAccessory:accessoryCopy])
  {
    v10 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [accessoryCopy hf_prettyDescription];
      *buf = 138412290;
      v34 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Request to add an accessory that is not supported in this media system pair. We'll allow this to proceed (because there are no API restriction of what services can go into a pair; we just want to enforce restrictions in our UI). Accessory: %@", buf, 0xCu);
    }
  }

  v12 = [(HFMediaSystemBuilder *)self roleForAccessory:accessoryCopy];
  v13 = [v12 isEqual:v9];

  if ((v13 & 1) == 0)
  {
    [(HFMediaSystemBuilder *)self removeAccessory:accessoryCopy];
    homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    components = [homeKitMediaSystemBuilder components];
    v16 = [components mutableCopy];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_opt_new();
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x277CD1C00]);
    mediaProfile = [accessoryCopy mediaProfile];
    v22 = [v20 initWithMediaProfile:mediaProfile role:v9];

    [v19 addObject:v22];
    homeKitMediaSystemBuilder2 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    [homeKitMediaSystemBuilder2 setComponents:v19];

    room = [(HFMediaSystemBuilder *)self room];
    v24Room = [room room];

    if (!v24Room)
    {
      v26 = [HFRoomBuilder alloc];
      room2 = [accessoryCopy room];
      v28 = objc_msgSend_home(accessoryCopy);
      v29 = [(HFRoomBuilder *)v26 initWithExistingObject:room2 inHome:v28];
      [(HFMediaSystemBuilder *)self setRoom:v29];
    }

    mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
    if (mediaSystem)
    {
    }

    else if ([accessoryCopy hf_showInHomeDashboard])
    {
      -[HFMediaSystemBuilder setShowInHomeDashboard:](self, "setShowInHomeDashboard:", [accessoryCopy hf_showInHomeDashboard]);
      -[HFMediaSystemBuilder setIsFavorite:](self, "setIsFavorite:", [accessoryCopy hf_isFavorite]);
    }
  }
}

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessories = [(HFMediaSystemBuilder *)self accessories];
  v6 = [accessories containsObject:accessoryCopy];

  if (v6)
  {
    homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    components = [homeKitMediaSystemBuilder components];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__HFMediaSystemBuilder_removeAccessory___block_invoke;
    v11[3] = &unk_277DF7F50;
    v12 = accessoryCopy;
    v9 = [components na_filter:v11];
    homeKitMediaSystemBuilder2 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    [homeKitMediaSystemBuilder2 setComponents:v9];
  }
}

uint64_t __40__HFMediaSystemBuilder_removeAccessory___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mediaProfile];
  v4 = [v3 accessory];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)accessoryForRole:(id)role
{
  v19 = *MEMORY[0x277D85DE8];
  roleCopy = role;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  components = [homeKitMediaSystemBuilder components];

  accessory = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (accessory)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != accessory; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(components);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        role = [v10 role];
        if ([role isEqual:roleCopy])
        {
          mediaProfile = [v10 mediaProfile];
          accessory = [mediaProfile accessory];

          goto LABEL_11;
        }
      }

      accessory = [components countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (accessory)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return accessory;
}

- (id)roleForAccessory:(id)accessory
{
  v20 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  components = [homeKitMediaSystemBuilder components];

  role = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (role)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != role; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(components);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        mediaProfile = [v10 mediaProfile];
        accessory = [mediaProfile accessory];
        v13 = [accessory isEqual:accessoryCopy];

        if (v13)
        {
          role = [v10 role];
          goto LABEL_11;
        }
      }

      role = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (role)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return role;
}

- (NSSet)accessories
{
  v2 = MEMORY[0x277CBEB98];
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  components = [homeKitMediaSystemBuilder components];
  v5 = [components na_map:&__block_literal_global_101];
  v6 = [v2 setWithArray:v5];

  return v6;
}

id __35__HFMediaSystemBuilder_accessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfile];
  v3 = [v2 accessory];

  return v3;
}

- (id)removeItemFromHome
{
  v24 = *MEMORY[0x277D85DE8];
  mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
  v3 = objc_msgSend_home(mediaSystem);
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = mediaSystem;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Removing mediasystem '%@' from home '%@'", buf, 0x16u);
  }

  if (mediaSystem)
  {
    v5 = MEMORY[0x277D2C900];
    if (v3)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke;
      v18[3] = &unk_277DF2C68;
      v6 = mediaSystem;
      v19 = v6;
      v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_2;
      v15[3] = &unk_277DFA5C0;
      v16 = v3;
      v8 = v6;
      v17 = v8;
      v9 = [v7 flatMap:v15];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_4;
      v13[3] = &unk_277DF5038;
      v14 = v8;
      futureWithNoResult = [v9 recover:v13];
    }

    else
    {
      v11 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30 descriptionFormat:@"Home not found for media system: %@", mediaSystem];
      futureWithNoResult = [v5 futureWithError:v11];
    }
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_msgSend_home(v3);
  [v5 removeMediaSystem:*(a1 + 32) completionHandler:v4];
}

id __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_2(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_3;
  v8 = &unk_277DF3810;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v2 dispatchHomeObserverMessage:&v5 sender:0];

  v3 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v3;
}

void __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 home:*(a1 + 32) didRemoveMediaSystem:*(a1 + 40)];
  }
}

id __42__HFMediaSystemBuilder_removeItemFromHome__block_invoke_4(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 name];
  v5 = v4;
  v6 = &stru_2824B1A78;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v12[0] = @"HFErrorHandlerOptionFailedItemName";
  v12[1] = @"HFErrorUserInfoOperationKey";
  v13[0] = v7;
  v13[1] = @"HFOperationRemoveMediaSystem";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = [v3 hf_errorWithAddedUserInfo:v8];

  v10 = [MEMORY[0x277D2C900] futureWithError:v9];

  return v10;
}

- (BOOL)shouldAllowAddingAccessory:(id)accessory
{
  accessoryCopy = accessory;
  hf_isHomePod = [accessoryCopy hf_isHomePod];
  v6 = objc_msgSend_home(self);
  v7 = [v6 hf_mediaSystemForAccessory:accessoryCopy];

  return (v7 == 0) & hf_isHomePod;
}

- (BOOL)stereoPairVersionMatchesForAccessory:(id)accessory
{
  v33 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (![accessoryCopy hf_isHomePod])
  {
    goto LABEL_22;
  }

  supportedStereoPairVersions = [accessoryCopy supportedStereoPairVersions];
  if (!supportedStereoPairVersions)
  {
    v18 = HFLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_21:

LABEL_22:
      v17 = 0;
      goto LABEL_23;
    }

    v19 = NSStringFromSelector(a2);
    *buf = 138412802;
    selfCopy2 = self;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = accessoryCopy;
    _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ Found no stereo pairing versions in accessory: %@", buf, 0x20u);
LABEL_25:

    goto LABEL_21;
  }

  v7 = supportedStereoPairVersions;
  accessories = [(HFMediaSystemBuilder *)self accessories];
  if ([accessories count])
  {
    v9 = 0;
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  accessories2 = [(HFMediaSystemBuilder *)self accessories];
  v11 = [accessories2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(accessories2);
        }

        supportedStereoPairVersions2 = [*(*(&v22 + 1) + 8 * i) supportedStereoPairVersions];
        if (v9)
        {
          v16 = v9;
        }

        else
        {
          v16 = -1;
        }

        v9 = supportedStereoPairVersions2 & v16;
      }

      v12 = [accessories2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  if (!v9)
  {
    v18 = HFLogForCategory(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v19 = NSStringFromSelector(a2);
    accessories3 = [(HFMediaSystemBuilder *)self accessories];
    *buf = 138412802;
    selfCopy2 = self;
    v29 = 2112;
    v30 = v19;
    v31 = 2112;
    v32 = accessories3;
    _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ Found no stereo pairing versions in accessories: %@", buf, 0x20u);

    goto LABEL_25;
  }

  v17 = (v9 & v7) != 0;
LABEL_23:

  return v17;
}

- (BOOL)swapRoles
{
  leftRole = [MEMORY[0x277CD1C10] leftRole];
  v4 = [(HFMediaSystemBuilder *)self accessoryForRole:leftRole];

  rightRole = [MEMORY[0x277CD1C10] rightRole];
  v6 = [(HFMediaSystemBuilder *)self accessoryForRole:rightRole];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (!v7)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__HFMediaSystemBuilder_swapRoles__block_invoke;
    v15 = &unk_277DFAB18;
    v16 = v6;
    v17 = v4;
    v9 = __33__HFMediaSystemBuilder_swapRoles__block_invoke(&v12);
    v10 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder:v12];
    [v10 setComponents:v9];
  }

  return v8;
}

id __33__HFMediaSystemBuilder_swapRoles__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_alloc(MEMORY[0x277CD1C00]);
  v4 = [*(a1 + 32) mediaProfile];
  v5 = [MEMORY[0x277CD1C10] leftRole];
  v6 = [v3 initWithMediaProfile:v4 role:v5];
  [v2 addObject:v6];

  v7 = objc_alloc(MEMORY[0x277CD1C00]);
  v8 = [*(a1 + 40) mediaProfile];
  v9 = [MEMORY[0x277CD1C10] rightRole];
  v10 = [v7 initWithMediaProfile:v8 role:v9];
  [v2 addObject:v10];

  return v2;
}

- (id)commitItem
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_home(self);
  hf_currentUserIsAdministrator = [v4 hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
    v7 = HFOperationEditMediaSystem;
    if (!mediaSystem)
    {
      v7 = HFOperationAddMediaSystem;
    }

    v8 = *v7;

    _updateRoom = [(HFMediaSystemBuilder *)self _updateRoom];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke;
    v33[3] = &unk_277DF2CE0;
    v33[4] = self;
    v21 = [_updateRoom flatMap:v33];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_2;
    v32[3] = &unk_277DF4748;
    v32[4] = self;
    v32[5] = a2;
    v9 = [v21 flatMap:v32];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_58;
    v31[3] = &unk_277DF4748;
    v31[4] = self;
    v31[5] = a2;
    v10 = [v9 flatMap:v31];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_60;
    v30[3] = &unk_277DF4748;
    v30[4] = self;
    v30[5] = a2;
    v11 = [v10 flatMap:v30];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_61;
    v29[3] = &unk_277DF4748;
    v29[4] = self;
    v29[5] = a2;
    v12 = [v11 flatMap:v29];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_62;
    v28[3] = &unk_277DF4748;
    v28[4] = self;
    v28[5] = a2;
    v13 = [v12 flatMap:v28];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_67;
    v27[3] = &unk_277DF4748;
    v27[4] = self;
    v27[5] = a2;
    v14 = [v13 flatMap:v27];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_68;
    v26[3] = &unk_277DF4748;
    v26[4] = self;
    v26[5] = a2;
    v15 = [v14 flatMap:v26];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __34__HFMediaSystemBuilder_commitItem__block_invoke_69;
    v23[3] = &unk_277DFAB40;
    v24 = v8;
    v25 = a2;
    v23[4] = self;
    v16 = v8;
    futureWithNoResult = [v15 recover:v23];
  }

  else
  {
    v18 = HFLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v36 = 2112;
      v37 = v20;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "%@:%@ : Can't commit, user is NOT admin", buf, 0x16u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : account arbitrator future succeeded... on to next", &v7, 0x16u);
  }

  v3 = [*(a1 + 32) _commitChangesToMediaSystemBuilder];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_58(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : commit changes future succeeded... on to next", buf, 0x16u);
  }

  v3 = [*(a1 + 32) _updateValueForContextType:2];
  v4 = [*(a1 + 32) _updateValueForContextType:{3, v3}];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v6 = [MEMORY[0x277D2C900] combineAllFutures:v5];

  return v6;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_60(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update favorite future succeeded... on to next", &v7, 0x16u);
  }

  v3 = [*(a1 + 32) _updateAssistantAccessControl];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_61(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update assistant access control succeeded... on to next", &v7, 0x16u);
  }

  v3 = [*(a1 + 32) _updatePreferredMediaUser];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_62(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) accessories];
  v3 = [v2 na_all:&__block_literal_global_66_1];

  v4 = HFLogForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = NSStringFromSelector(*(a1 + 40));
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : update audio analysis notification settings... on to next", &v12, 0x16u);
    }

    v8 = [*(a1 + 32) _updateAudioAnalysisSoundNotificationSettings];
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = NSStringFromSelector(*(a1 + 40));
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : audio analysis not supported. Skipping step... on to next", &v12, 0x16u);
    }

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v8;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_67(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update preferred media user succeeded... on to next", &v7, 0x16u);
  }

  v3 = [*(a1 + 32) _updateSiriLanguageOptionsManager];

  return v3;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_68(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = NSStringFromSelector(*(a1 + 40));
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "%@:%@ : update siri language options manager succeeded... on to next", &v9, 0x16u);
  }

  v3 = MEMORY[0x277D2C900];
  v4 = [*(a1 + 32) mediaSystem];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

id __34__HFMediaSystemBuilder_commitItem__block_invoke_69(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = NSStringFromSelector(*(a1 + 48));
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    v17 = 2112;
    v18 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@:%@ : One of the commit futures failed with error %@", &v13, 0x20u);
  }

  v5 = MEMORY[0x277D2C900];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) name];
  v8 = [v3 hf_errorWithOperationType:v6 failedItemName:v7];
  v9 = [v5 futureWithError:v8];

  return v9;
}

- (id)_commitChangesToMediaSystemBuilder
{
  v43 = *MEMORY[0x277D85DE8];
  mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
  v5 = mediaSystem == 0;

  if (mediaSystem)
  {
    mediaSystem2 = [(HFMediaSystemBuilder *)self mediaSystem];
    components = [mediaSystem2 components];
    homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    components2 = [homeKitMediaSystemBuilder components];
    v10 = [components isEqual:components2] ^ 1;

    mediaSystem3 = [(HFMediaSystemBuilder *)self mediaSystem];
    configuredName = [mediaSystem3 configuredName];
    homeKitMediaSystemBuilder2 = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
    configuredName2 = [homeKitMediaSystemBuilder2 configuredName];
    v15 = configuredName;
    v16 = configuredName2;
    if (v15 == v16)
    {
      v17 = 0;
    }

    else if (v15)
    {
      v17 = [v15 isEqual:v16] ^ 1;
    }

    else
    {
      v17 = 1;
    }

    v18 = v17 | v10;
  }

  else
  {
    v17 = 0;
    v10 = 0;
    v18 = 1;
  }

  v19 = HFLogForCategory(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = mediaSystem == 0;
    v21 = NSStringFromSelector(a2);
    *buf = 138413314;
    selfCopy = self;
    v35 = 2112;
    v36 = v21;
    v37 = 1024;
    v38 = v20;
    v39 = 1024;
    v40 = v10;
    v41 = 1024;
    v42 = v17;
    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@:%@ : Creating New Media System: %{BOOL}d / Existing Media System: updating components %{BOOL}d/ updating name %{BOOL}d", buf, 0x28u);
  }

  if (v18)
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke;
    v32[3] = &unk_277DF29A0;
    v32[4] = self;
    v22 = [MEMORY[0x277D2C900] futureWithBlock:v32];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3;
    v30[3] = &unk_277DFAB90;
    v30[4] = self;
    v30[5] = a2;
    v31 = v5;
    v23 = [v22 addFailureBlock:v30];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_80;
    v26[3] = &unk_277DFABE0;
    v26[4] = self;
    v26[5] = a2;
    v27 = v10;
    v28 = v17;
    v29 = v5;
    futureWithNoResult = [v23 addSuccessBlock:v26];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) homeKitMediaSystemBuilder];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2;
  v7[3] = &unk_277DFAB68;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 commitWithCompletionHandler:v7];
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    [*(a1 + 32) finishWithError:a2];
  }

  else
  {
    [*(a1 + 40) setMediaSystem:v5];
    v6 = [objc_alloc(MEMORY[0x277CD1BF0]) initWithMediaSystem:v7];
    [*(a1 + 40) setHomeKitMediaSystemBuilder:v6];

    [*(a1 + 32) finishWithResult:v7];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@:%@ : Commit Future FAILED with error %@", &v10, 0x20u);
  }

  v7 = +[HFErrorHandler sharedHandler];
  v8 = v7;
  if (*(a1 + 48))
  {
    v9 = @"HFMediaSystemBuilder.createMediaSystem";
  }

  else
  {
    v9 = @"HFMediaSystemBuilder.updateMediaSystem";
  }

  [v7 logError:v3 operationDescription:v9];
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_80(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = HFLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = NSStringFromSelector(*(a1 + 40));
    *buf = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "%@:%@ : Commit Future SUCCEED: %@", buf, 0x20u);
  }

  if (*(a1 + 48) == 1)
  {
    v10 = +[HFHomeKitDispatcher sharedDispatcher];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_81;
    v15[3] = &unk_277DFABB8;
    v15[4] = *(a1 + 32);
    [v10 dispatchMediaObjectObserverMessage:v15 sender:0];
  }

  if (*(a1 + 49) == 1)
  {
    v11 = +[HFHomeKitDispatcher sharedDispatcher];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2_85;
    v14[3] = &unk_277DFABB8;
    v14[4] = *(a1 + 32);
    [v11 dispatchMediaObjectObserverMessage:v14 sender:0];
  }

  if (*(a1 + 50) == 1)
  {
    v12 = +[HFHomeKitDispatcher sharedDispatcher];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3_88;
    v13[3] = &unk_277DF2CB8;
    v13[4] = *(a1 + 32);
    [v12 dispatchHomeObserverMessage:v13 sender:0];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_81(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) mediaSystem];
    v4 = [*(a1 + 32) mediaSystem];
    v5 = [v4 components];
    [v6 mediaSystem:v3 didUpdateComponents:v5];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_2_85(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) mediaSystem];
    v4 = [*(a1 + 32) mediaSystem];
    v5 = [v4 configuredName];
    [v6 mediaSystem:v3 didUpdateName:v5];
  }
}

void __58__HFMediaSystemBuilder__commitChangesToMediaSystemBuilder__block_invoke_3_88(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [*(a1 + 32) mediaSystem];
    [v5 home:v3 didAddMediaSystem:v4];
  }
}

- (id)_arbitrateMusicAccount
{
  accountArbitrator = [(HFMediaSystemBuilder *)self accountArbitrator];
  v3 = accountArbitrator;
  if (accountArbitrator)
  {
    [accountArbitrator pendingArbitrationExecutionFuture];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v4 = ;

  return v4;
}

- (id)_setHomeTheaterSource:(id)source toDestination:(id)destination
{
  v29 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  hf_backingAccessory = [source hf_backingAccessory];
  audioDestinationController = [hf_backingAccessory audioDestinationController];

  v8 = HFLogForCategory(0x29uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[HFMediaSystemBuilder _setHomeTheaterSource:toDestination:]";
    v25 = 2112;
    v26 = audioDestinationController;
    v27 = 2112;
    v28 = destinationCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "(%s) setting Apple TV (%@) Home Theater destination to %@", buf, 0x20u);
  }

  v9 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke;
  v20[3] = &unk_277DF4150;
  v10 = audioDestinationController;
  v21 = v10;
  v11 = destinationCopy;
  v22 = v11;
  v12 = [v9 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke_2;
  v17[3] = &unk_277DF50B0;
  v18 = v10;
  v19 = v11;
  v13 = v11;
  v14 = v10;
  v15 = [v12 addCompletionBlock:v17];

  return v15;
}

void __60__HFMediaSystemBuilder__setHomeTheaterSource_toDestination___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x29uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 136315906;
    v9 = "[HFMediaSystemBuilder _setHomeTheaterSource:toDestination:]_block_invoke_2";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(%s) After setting Apple TV (%@) Home Theater destination, it is %@ (w/ error %@)", &v8, 0x2Au);
  }
}

- (id)_updateValueForContextType:(unint64_t)type
{
  v5 = 0;
  if (type > 1)
  {
    if (type != 2)
    {
      if (type != 3)
      {
        goto LABEL_10;
      }

      showInHomeDashboard = [(HFMediaSystemBuilder *)self showInHomeDashboard];
      goto LABEL_9;
    }

LABEL_8:
    showInHomeDashboard = [(HFMediaSystemBuilder *)self isFavorite];
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
    NSLog(&cfstr_IncludeInStatu_0.isa, a2);
LABEL_13:
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_15;
  }

LABEL_10:
  mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
  if (v5 == [mediaSystem hf_isOnForContextType:type])
  {
    mediaSystem2 = [(HFMediaSystemBuilder *)self mediaSystem];
    v9 = [mediaSystem2 hf_hasSetForContextType:type];

    if (v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  mediaSystem3 = [(HFMediaSystemBuilder *)self mediaSystem];
  v12 = [mediaSystem3 hf_updateValue:v5 forContextType:type];

  v13 = [v12 addFailureBlock:&__block_literal_global_97];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_2;
  v15[3] = &unk_277DF2CE0;
  v15[4] = self;
  futureWithNoResult = [v12 flatMap:v15];

LABEL_15:

  return futureWithNoResult;
}

void __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFMediaSystemBuilder.updateApplicationDataForContextType"];
}

id __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) accessories];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = +[HFHomeKitDispatcher sharedDispatcher];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_3;
        v13[3] = &unk_277DF27B8;
        v13[4] = v8;
        [v9 dispatchAccessoryObserverMessage:v13 sender:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277D2C900] futureWithResult:v12];

  return v10;
}

void __51__HFMediaSystemBuilder__updateValueForContextType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 accessoryDidUpdateApplicationData:*(a1 + 32)];
  }
}

- (id)_updateRoom
{
  v24 = *MEMORY[0x277D85DE8];
  if (![(HFMediaSystemBuilder *)self hasSetRoom])
  {
    v3 = [HFRoomBuilder alloc];
    mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
    hf_parentRoom = [mediaSystem hf_parentRoom];
    mediaSystem2 = [(HFMediaSystemBuilder *)self mediaSystem];
    hf_home = [mediaSystem2 hf_home];
    v8 = [(HFRoomBuilder *)v3 initWithExistingObject:hf_parentRoom inHome:hf_home];
    [(HFMediaSystemBuilder *)self setRoomBuilder:v8];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  accessories = [(HFMediaSystemBuilder *)self accessories];
  v10 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(accessories);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        room = [(HFMediaSystemBuilder *)self room];
        [room addAccessory:v14];
      }

      v11 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  room2 = [(HFMediaSystemBuilder *)self room];
  commitItem = [room2 commitItem];

  return commitItem;
}

- (id)_updateAssistantAccessControl
{
  v35 = *MEMORY[0x277D85DE8];
  isCreatingMediaSystem = [(HFMediaSystemBuilder *)self isCreatingMediaSystem];
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  if (isCreatingMediaSystem)
  {
    v5 = objc_msgSend_home(self);
    currentUser = [v5 currentUser];
    v7 = objc_msgSend_home(self);
    v8 = [currentUser assistantAccessControlForHome:v7];
    v9 = [v8 mutableCopy];

    accessories = [v9 accessories];
    v11 = [accessories count];

    if (v11)
    {
      accessories2 = [v9 accessories];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke;
      v32[3] = &unk_277DF3888;
      v32[4] = self;
      v13 = [accessories2 na_filter:v32];

      accessories3 = [v9 accessories];
      v15 = [accessories3 count];
      v16 = [v13 count];

      accessories4 = [(HFMediaSystemBuilder *)self accessories];
      v18 = [accessories4 count];

      if (v15 == v16 || v15 - v16 != v18)
      {
        v19 = HFLogForCategory(0);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
          *buf = 138412290;
          v34 = mediaSystem;
          _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Mismatch between Personal Requests options for the media system %@", buf, 0xCu);
        }

        [v9 setAccessories:v13];
        v21 = MEMORY[0x277D2C900];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_104;
        v29[3] = &unk_277DF4150;
        v22 = v9;
        v30 = v22;
        selfCopy = self;
        v23 = [v21 futureWithErrorOnlyHandlerAdapterBlock:v29];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_105;
        v27[3] = &unk_277DF7060;
        v27[4] = self;
        v28 = v22;
        v24 = [v23 addSuccessBlock:v27];
        v25 = [v24 addFailureBlock:&__block_literal_global_110_0];

        futureWithNoResult = v25;
      }

      futureWithNoResult = futureWithNoResult;
    }

    else
    {
      futureWithNoResult = futureWithNoResult;
    }
  }

  return futureWithNoResult;
}

uint64_t __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 accessories];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1u;
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_104(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) mediaSystem];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Updating Personal Requests %@ for media system %@", &v11, 0x16u);
  }

  v7 = objc_msgSend_home(*(a1 + 40));
  v8 = [v7 currentUser];
  v9 = *(a1 + 32);
  v10 = objc_msgSend_home(*(a1 + 40));
  [v8 updateAssistantAccessControl:v9 forHome:v10 completionHandler:v3];
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_105(uint64_t a1)
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_2;
  v4[3] = &unk_277DF80C8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 dispatchUserObserverMessage:v4 sender:0];
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [v3 currentUser];
    v5 = *(a1 + 40);
    v6 = objc_msgSend_home(*(a1 + 32));
    [v7 user:v4 didUpdateAssistantAccessControl:v5 forHome:v6];
  }
}

void __53__HFMediaSystemBuilder__updateAssistantAccessControl__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFMediaSystemBuilder.updateAssistantAccessControl"];
}

- (id)_updateSiriLanguageOptionsManager
{
  if ([(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    mediaSystem = [(HFMediaSystemBuilder *)self mediaSystem];
    hf_siriLanguageOptionsManager = [mediaSystem hf_siriLanguageOptionsManager];
  }

  v5 = MEMORY[0x277D2C900];

  return [v5 futureWithNoResult];
}

- (id)_updatePreferredMediaUser
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    v3 = objc_opt_new();
    preferredMediaUser = [(HFMediaSystemBuilder *)self preferredMediaUser];
    v5 = preferredMediaUser != 0;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    accessories = [(HFMediaSystemBuilder *)self accessories];
    v7 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(accessories);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 supportsPreferredMediaUser])
          {
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke;
            v15[3] = &unk_277DFAC08;
            v15[5] = self;
            v15[6] = v5;
            v15[4] = v11;
            v12 = [MEMORY[0x277D2C900] futureWithBlock:v15];
            [v3 addObject:v12];
          }
        }

        v8 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] combineAllFutures:v3];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

void __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) preferredMediaUser];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke_2;
  v8[3] = &unk_277DF2748;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v5 updatePreferredMediaUserSelectionType:v4 user:v6 completionHandler:v8];
}

void __49__HFMediaSystemBuilder__updatePreferredMediaUser__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x39uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Failed to update primary user for accessory %@ with error %@", &v8, 0x16u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Successfully updated primary user setting for accessory %@", &v8, 0xCu);
    }

    [*(a1 + 40) finishWithNoResult];
  }
}

- (id)_updateAudioAnalysisSoundNotificationSettings
{
  v36 = *MEMORY[0x277D85DE8];
  if (![(HFMediaSystemBuilder *)self isCreatingMediaSystem])
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_29;
  }

  leftRole = [MEMORY[0x277CD1C10] leftRole];
  v4 = [(HFMediaSystemBuilder *)self accessoryForRole:leftRole];

  rightRole = [MEMORY[0x277CD1C10] rightRole];
  v6 = [(HFMediaSystemBuilder *)self accessoryForRole:rightRole];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = HFLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33[0]) = 0;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Unable to find accessories in media system", v33, 2u);
    }

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    goto LABEL_28;
  }

  v10 = v4;
  if ([v10 conformsToProtocol:&unk_282560CB0])
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = v6;
  if ([v14 conformsToProtocol:&unk_282560CB0])
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  hf_userNotificationSettings = [v13 hf_userNotificationSettings];
  v18 = [hf_userNotificationSettings mutableCopy];

  hf_userNotificationSettings2 = [v16 hf_userNotificationSettings];
  v20 = [hf_userNotificationSettings2 mutableCopy];

  areNotificationsEnabled = [v18 areNotificationsEnabled];
  areNotificationsEnabled2 = [v20 areNotificationsEnabled];
  v23 = HFLogForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v33[0] = 67109376;
    v33[1] = areNotificationsEnabled;
    v34 = 1024;
    v35 = areNotificationsEnabled2;
    _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, "Is left notification settings enabled? %{BOOL}d Is right notification settings enabled? %{BOOL}d", v33, 0xEu);
  }

  if (areNotificationsEnabled)
  {
    notificationCondition = [v18 notificationCondition];
    v25 = [HFConditionCollection conditionCollectionForPredicate:notificationCondition];

    predicate = [v25 predicate];
    [v20 setNotificationCondition:predicate];

    [v20 setNotificationsEnabled:1];
    v27 = v16;
    v28 = v20;
  }

  else
  {
    if (!areNotificationsEnabled2)
    {
      v31 = HFLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33[0]) = 0;
        _os_log_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_DEFAULT, "Neither accessory has notification settings enabled. No action needed.", v33, 2u);
      }

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
      goto LABEL_27;
    }

    notificationCondition2 = [v20 notificationCondition];
    v25 = [HFConditionCollection conditionCollectionForPredicate:notificationCondition2];

    predicate2 = [v25 predicate];
    [v18 setNotificationCondition:predicate2];

    [v18 setNotificationsEnabled:1];
    v27 = v13;
    v28 = v18;
  }

  futureWithNoResult = [v27 hf_updateUserNotificationSettings:v28];

LABEL_27:
LABEL_28:

LABEL_29:

  return futureWithNoResult;
}

- (id)_rooms
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA940] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  accessories = [(HFMediaSystemBuilder *)self accessories];
  v5 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(accessories);
        }

        room = [*(*(&v11 + 1) + 8 * i) room];
        [v3 na_safeAddObject:room];
      }

      v6 = [accessories countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSString)originalName
{
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  configuredName = [homeKitMediaSystemBuilder configuredName];
  v5 = configuredName;
  if (configuredName)
  {
    _defaultName = configuredName;
  }

  else
  {
    _defaultName = [(HFMediaSystemBuilder *)self _defaultName];
  }

  v7 = _defaultName;

  return v7;
}

- (id)_defaultName
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  accessories = [(HFMediaSystemBuilder *)self accessories];
  v4 = [accessories countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hf_isHomePod])
        {
          v10 = [HFNamingComponents namingComponentFromAccessory:v8];
          defaultName = [v10 defaultName];

          goto LABEL_11;
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  accessories = [(HFMediaSystemBuilder *)self mediaSystem];
  defaultName = [accessories name];
LABEL_11:

  return defaultName;
}

- (HFRoomBuilder)room
{
  roomBuilder = self->_roomBuilder;
  if (!roomBuilder)
  {
    v4 = [HFRoomBuilder alloc];
    v5 = objc_msgSend_home(self);
    v6 = [(HFItemBuilder *)v4 initWithHome:v5];
    v7 = self->_roomBuilder;
    self->_roomBuilder = v6;

    roomBuilder = self->_roomBuilder;
  }

  return roomBuilder;
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  [(HFMediaSystemBuilder *)self setHasSetRoom:1];
  roomBuilder = self->_roomBuilder;
  self->_roomBuilder = roomCopy;
}

- (id)_firstUnpopulatedRole
{
  v23[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB70];
  homeKitMediaSystemBuilder = [(HFMediaSystemBuilder *)self homeKitMediaSystemBuilder];
  components = [homeKitMediaSystemBuilder components];
  v5 = [components na_map:&__block_literal_global_173];
  v6 = [v2 orderedSetWithArray:v5];

  v7 = MEMORY[0x277CBEB70];
  leftRole = [MEMORY[0x277CD1C10] leftRole];
  v23[0] = leftRole;
  rightRole = [MEMORY[0x277CD1C10] rightRole];
  v23[1] = rightRole;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v11 = [v7 orderedSetWithArray:v10];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v18 + 1) + 8 * i);
        if (![v6 containsObject:{v16, v18}])
        {
          v13 = v16;
          goto LABEL_11;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v13;
}

@end