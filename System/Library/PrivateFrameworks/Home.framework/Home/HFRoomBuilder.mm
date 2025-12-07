@interface HFRoomBuilder
- (BOOL)isEqual:(id)equal;
- (HFRoomBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSSet)accessories;
- (NSString)description;
- (id)_createRoom;
- (id)_performValidation;
- (id)_updateAccessories;
- (id)_updateName;
- (id)commitItem;
- (unint64_t)hash;
- (void)addAccessory:(id)accessory;
- (void)removeAccessory:(id)accessory;
@end

@implementation HFRoomBuilder

- (HFRoomBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  objectCopy = object;
  v23.receiver = self;
  v23.super_class = HFRoomBuilder;
  v7 = [(HFItemBuilder *)&v23 initWithExistingObject:objectCopy inHome:home];
  v8 = v7;
  if (v7)
  {
    room = [(HFRoomBuilder *)v7 room];
    name = [room name];
    v11 = name;
    if (name)
    {
      v12 = name;
    }

    else
    {
      v12 = &stru_2824B1A78;
    }

    objc_storeStrong(&v8->_name, v12);

    if (+[HFExecutionEnvironment isHomeApp])
    {
      v13 = +[HFWallpaperManager sharedInstance];
      wallpaperSourceRegistered = [v13 wallpaperSourceRegistered];

      if (wallpaperSourceRegistered)
      {
        v15 = [[HFWallpaperEditCollectionBuilder alloc] initWithHomeKitObject:objectCopy namedWallpaperCollectionType:1];
        wallpaperBuilder = v8->_wallpaperBuilder;
        v8->_wallpaperBuilder = v15;
      }
    }

    if (objectCopy)
    {
      room2 = [(HFRoomBuilder *)v8 room];
      accessories = [room2 accessories];
      v19 = HFHomeKitObjectUniqueIdentifiers(accessories);
    }

    else
    {
      v19 = [MEMORY[0x277CBEB98] set];
    }

    v20 = [[HFMutableSetDiff alloc] initWithFromSet:v19];
    accessoryUUIDs = v8->_accessoryUUIDs;
    v8->_accessoryUUIDs = v20;
  }

  return v8;
}

- (void)addAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryUUIDs = [(HFRoomBuilder *)self accessoryUUIDs];
  toSet = [accessoryUUIDs toSet];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  v7 = [toSet containsObject:uniqueIdentifier];

  if ((v7 & 1) == 0)
  {
    accessoryUUIDs2 = [(HFRoomBuilder *)self accessoryUUIDs];
    uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
    [accessoryUUIDs2 addObject:uniqueIdentifier2];
  }
}

- (void)removeAccessory:(id)accessory
{
  accessoryCopy = accessory;
  accessoryUUIDs = [(HFRoomBuilder *)self accessoryUUIDs];
  toSet = [accessoryUUIDs toSet];
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  v7 = [toSet containsObject:uniqueIdentifier];

  if (v7)
  {
    accessoryUUIDs2 = [(HFRoomBuilder *)self accessoryUUIDs];
    uniqueIdentifier2 = [accessoryCopy uniqueIdentifier];
    [accessoryUUIDs2 deleteObject:uniqueIdentifier2];
  }
}

- (NSSet)accessories
{
  accessoryUUIDs = [(HFRoomBuilder *)self accessoryUUIDs];
  toSet = [accessoryUUIDs toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__HFRoomBuilder_accessories__block_invoke;
  v7[3] = &unk_277DF5E10;
  v7[4] = self;
  v5 = [toSet na_map:v7];

  return v5;
}

id __28__HFRoomBuilder_accessories__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_msgSend_home(v2);
  v5 = [v4 hf_accessoryWithIdentifier:v3];

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  room = [(HFRoomBuilder *)self room];

  if (room)
  {
    room2 = [(HFRoomBuilder *)self room];
    hf_prettyDescription = [room2 hf_prettyDescription];
    v7 = [v3 appendObject:hf_prettyDescription withName:@"room"];
  }

  else
  {
    room2 = [(HFRoomBuilder *)self name];
    v8 = [v3 appendObject:room2 withName:@"name"];
  }

  build = [v3 build];

  return build;
}

- (id)_performValidation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v10[0] = v4;
  name = [(HFRoomBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:name];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 chainFutures:v7];

  return v8;
}

- (id)commitItem
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Starting commit (%@)", buf, 0xCu);
  }

  room = [(HFRoomBuilder *)self room];
  v5 = HFOperationEditRoom;
  if (!room)
  {
    v5 = HFOperationAddRoom;
  }

  v6 = *v5;

  _performValidation = [(HFRoomBuilder *)self _performValidation];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __27__HFRoomBuilder_commitItem__block_invoke;
  v23[3] = &unk_277DF2CE0;
  v23[4] = self;
  v8 = [_performValidation flatMap:v23];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __27__HFRoomBuilder_commitItem__block_invoke_17;
  v22[3] = &unk_277DF2CE0;
  v22[4] = self;
  v9 = [v8 flatMap:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __27__HFRoomBuilder_commitItem__block_invoke_2;
  v21[3] = &unk_277DF2CE0;
  v21[4] = self;
  v10 = [v9 flatMap:v21];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __27__HFRoomBuilder_commitItem__block_invoke_3;
  v18[3] = &unk_277DF2D30;
  v19 = v6;
  selfCopy2 = self;
  v11 = v6;
  v12 = [v10 recover:v18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __27__HFRoomBuilder_commitItem__block_invoke_4;
  v17[3] = &unk_277DF2CE0;
  v17[4] = self;
  v13 = [v12 flatMap:v17];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__HFRoomBuilder_commitItem__block_invoke_5;
  v16[3] = &unk_277DF70B0;
  v16[4] = self;
  v14 = [v13 addCompletionBlock:v16];

  return v13;
}

id __27__HFRoomBuilder_commitItem__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) room];

  v3 = [*(a1 + 32) room];
  v4 = objc_msgSend_home(*(a1 + 32));
  v5 = [v4 roomForEntireHome];
  if ([v3 isEqual:v5])
  {
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 32) room];
    v8 = [v7 name];
    v9 = [v6 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = HFLogForCategory(0x2BuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) name];
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Request to modify name for default room. Creating a new room and moving accessories into it instead (%@)", &v18, 0xCu);
      }

      v12 = [MEMORY[0x277CBEB98] set];
      v13 = [*(a1 + 32) accessoryUUIDs];
      v14 = [v13 toSet];
      v15 = [(HFSetDiff *)HFMutableSetDiff diffFromSet:v12 toSet:v14];
      [*(a1 + 32) setAccessoryUUIDs:v15];

      goto LABEL_9;
    }
  }

  else
  {
  }

  if (v2)
  {
    v16 = [*(a1 + 32) _updateName];
    goto LABEL_10;
  }

LABEL_9:
  v16 = [*(a1 + 32) _createRoom];
LABEL_10:

  return v16;
}

id __27__HFRoomBuilder_commitItem__block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) wallpaperBuilder];
  if (v2)
  {
    v3 = [*(a1 + 32) wallpaperBuilder];
    v4 = [v3 commitWallpaper];
  }

  else
  {
    v4 = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return v4;
}

id __27__HFRoomBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) name];
  v7 = [v6 length];
  if (v7)
  {
    v8 = [*(a1 + 40) name];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 hf_errorWithOperationType:v5 failedItemName:v8];
  v10 = [v4 futureWithError:v9];

  if (v7)
  {
  }

  return v10;
}

id __27__HFRoomBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  v2 = [*(a1 + 32) room];
  v3 = [v1 futureWithResult:v2];

  return v3;
}

void __27__HFRoomBuilder_commitItem__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
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
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Commit for %@ finished with error: %@", &v7, 0x16u);
  }
}

- (id)_createRoom
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(HFRoomBuilder *)self name];
    *buf = 138412290;
    v12 = name;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Adding room with name: %@", buf, 0xCu);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __28__HFRoomBuilder__createRoom__block_invoke;
  v10[3] = &unk_277DF2C90;
  v10[4] = self;
  v5 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v10];
  v6 = [v5 addFailureBlock:&__block_literal_global_221];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__HFRoomBuilder__createRoom__block_invoke_26;
  v9[3] = &unk_277E016F8;
  v9[4] = self;
  v7 = [v5 flatMap:v9];

  return v7;
}

void __28__HFRoomBuilder__createRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = objc_msgSend_home(v3);
  v5 = [*(a1 + 32) name];
  [v6 addRoomWithName:v5 completionHandler:v4];
}

void __28__HFRoomBuilder__createRoom__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to add room with error: %@", &v5, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.addRoomWithName"];
}

id __28__HFRoomBuilder__createRoom__block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished adding room", buf, 2u);
  }

  [*(a1 + 32) setRoom:v3];
  v5 = [*(a1 + 32) wallpaperBuilder];
  [v5 setHkObject:v3];

  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__HFRoomBuilder__createRoom__block_invoke_28;
  v9[3] = &unk_277DF2CB8;
  v9[4] = *(a1 + 32);
  [v6 dispatchHomeObserverMessage:v9 sender:0];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v7;
}

void __28__HFRoomBuilder__createRoom__block_invoke_28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [*(a1 + 32) room];
    [v5 home:v3 didAddRoom:v4];
  }
}

- (id)_updateName
{
  v23 = *MEMORY[0x277D85DE8];
  room = [(HFRoomBuilder *)self room];
  name = [room name];
  name2 = [(HFRoomBuilder *)self name];
  v6 = [name isEqualToString:name2];

  v7 = HFLogForCategory(0x2BuLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      name3 = [(HFRoomBuilder *)self name];
      *buf = 138412290;
      v20 = name3;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Not updating name because it hasn't changed (%@)", buf, 0xCu);
    }

    v10 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    if (v8)
    {
      room2 = [(HFRoomBuilder *)self room];
      name4 = [room2 name];
      name5 = [(HFRoomBuilder *)self name];
      *buf = 138412546;
      v20 = name4;
      v21 = 2112;
      v22 = name5;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Updating name from %@ to %@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __28__HFRoomBuilder__updateName__block_invoke;
    v18[3] = &unk_277DF2C68;
    v18[4] = self;
    v14 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v18];
    v15 = [v14 addFailureBlock:&__block_literal_global_35_5];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__HFRoomBuilder__updateName__block_invoke_39;
    v17[3] = &unk_277DF2CE0;
    v17[4] = self;
    v10 = [v14 flatMap:v17];
  }

  return v10;
}

void __28__HFRoomBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 room];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __28__HFRoomBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to update name with error: %@", &v5, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.updateName"];
}

id __28__HFRoomBuilder__updateName__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished updating name", buf, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFRoomBuilder__updateName__block_invoke_40;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFRoomBuilder__updateName__block_invoke_40(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [*(a1 + 32) room];
    [v5 home:v3 didUpdateNameForRoom:v4];
  }
}

- (id)_updateAccessories
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    accessories = [(HFRoomBuilder *)self accessories];
    hf_prettyDescription = [accessories hf_prettyDescription];
    *buf = 138412290;
    v17 = hf_prettyDescription;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Updating accessories: %@", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFRoomBuilder__updateAccessories__block_invoke;
  aBlock[3] = &unk_277E01748;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  accessoryUUIDs = [(HFRoomBuilder *)self accessoryUUIDs];
  room = [(HFRoomBuilder *)self room];
  v9 = v6[2](v6, room);
  v10 = objc_msgSend_home(self);
  roomForEntireHome = [v10 roomForEntireHome];
  v12 = v6[2](v6, roomForEntireHome);
  v13 = [(HFItemBuilder *)self commitSetDiff:accessoryUUIDs addBlock:v9 updateBlock:&__block_literal_global_56_3 deleteBlock:v12];

  return v13;
}

id __35__HFRoomBuilder__updateAccessories__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_2;
  v7[3] = &unk_277E01720;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  return v5;
}

id __35__HFRoomBuilder__updateAccessories__block_invoke_2(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_msgSend_home(*(a1 + 32));
  v5 = [v4 hf_accessoryWithIdentifier:v3];

  if (!v5)
  {
    v6 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_home(*(a1 + 32));
      *buf = 138412546;
      v32 = v3;
      v33 = 2112;
      v34 = v20;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "Could not find accessory with UUID: %@ in home: %@. This is going to cause the HFRoomBuilder commit to fail.", buf, 0x16u);
    }
  }

  v7 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) hf_prettyDescription];
    v9 = [v5 hf_prettyDescription];
    *buf = 138412546;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Assigning accessory to room: %@. Accessory: %@", buf, 0x16u);
  }

  v10 = MEMORY[0x277D2C900];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_43;
  v28[3] = &unk_277DF6F70;
  v28[4] = *(a1 + 32);
  v11 = v5;
  v29 = v11;
  v30 = *(a1 + 40);
  v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v28];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_2_44;
  v25[3] = &unk_277DF2748;
  v13 = v11;
  v26 = v13;
  v27 = *(a1 + 40);
  v14 = [v12 addFailureBlock:v25];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_48;
  v21[3] = &unk_277DF9400;
  v22 = v13;
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  v23 = v15;
  v24 = v16;
  v17 = v13;
  v18 = [v12 flatMap:v21];

  return v18;
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_43(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = objc_msgSend_home(v3);
  [v5 assignAccessory:a1[5] toRoom:a1[6] completionHandler:v4];
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_2_44(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 40) hf_prettyDescription];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "HFRoomBuilder: Failed to assign accessory (%@) to room (%@) with error: %@", &v8, 0x20u);
  }

  v5 = +[HFErrorHandler sharedHandler];
  [v5 logError:v3 operationDescription:@"HFRoomBuilder.assignAccessoryToRoom"];
}

id __35__HFRoomBuilder__updateAccessories__block_invoke_48(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = [*(a1 + 40) name];
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFRoomBuilder: Finished assigning accessory (%@) to room (%@)", buf, 0x16u);
  }

  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __35__HFRoomBuilder__updateAccessories__block_invoke_49;
  v12[3] = &unk_277DF64F0;
  v11 = *(a1 + 40);
  v8 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = *(a1 + 32);
  [v7 dispatchHomeObserverMessage:v12 sender:0];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

void __35__HFRoomBuilder__updateAccessories__block_invoke_49(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didUpdateRoom:*(a1 + 40) forAccessory:*(a1 + 48)];
  }
}

- (unint64_t)hash
{
  room = [(HFRoomBuilder *)self room];

  if (room)
  {
    room2 = [(HFRoomBuilder *)self room];
    uniqueIdentifier = [room2 uniqueIdentifier];
    v6 = [uniqueIdentifier hash];
  }

  else
  {
    room2 = [(HFRoomBuilder *)self name];
    v6 = [room2 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v5 = equalCopy;
  room = [(HFRoomBuilder *)self room];
  uniqueIdentifier = [room uniqueIdentifier];
  null = uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  room2 = [v5 room];
  uniqueIdentifier2 = [room2 uniqueIdentifier];
  null2 = uniqueIdentifier2;
  if (!uniqueIdentifier2)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  if ([null isEqual:null2])
  {
    v19 = null;
    name = [(HFRoomBuilder *)self name];
    name2 = [v5 name];
    if ([name isEqualToString:name2])
    {
      v17 = __25__HFRoomBuilder_isEqual___block_invoke(self);
      __25__HFRoomBuilder_isEqual___block_invoke(v5);
      v14 = v18 = room;
      v15 = [v17 isEqual:v14];

      room = v18;
    }

    else
    {
      v15 = 0;
    }

    null = v19;
    if (!uniqueIdentifier2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
    if (!uniqueIdentifier2)
    {
LABEL_14:
    }
  }

  if (!uniqueIdentifier)
  {
  }

LABEL_18:
  return v15;
}

id __25__HFRoomBuilder_isEqual___block_invoke(void *a1)
{
  v1 = [a1 accessories];
  v2 = [v1 na_map:&__block_literal_global_63_3];

  return v2;
}

@end