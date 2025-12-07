@interface HFZoneBuilder
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFZoneBuilder)initWithExistingObject:(id)object inHome:(id)home;
- (NSSet)rooms;
- (id)_createZone;
- (id)_performValidation;
- (id)_updateName;
- (id)_updateRooms;
- (id)commitItem;
- (unint64_t)hash;
- (void)addRoom:(id)room;
- (void)removeRoom:(id)room;
@end

@implementation HFZoneBuilder

- (HFZoneBuilder)initWithExistingObject:(id)object inHome:(id)home
{
  v17.receiver = self;
  v17.super_class = HFZoneBuilder;
  v5 = [(HFItemBuilder *)&v17 initWithExistingObject:object inHome:home];
  v6 = v5;
  if (v5)
  {
    v7 = [(HFZoneBuilder *)v5 zone];
    name = [v7 name];
    v9 = name;
    if (name)
    {
      v10 = name;
    }

    else
    {
      v10 = &stru_2824B1A78;
    }

    objc_storeStrong(&v6->_name, v10);

    if (object)
    {
      v11 = [(HFZoneBuilder *)v6 zone];
      rooms = [v11 rooms];
      v13 = HFHomeKitObjectUniqueIdentifiers(rooms);
    }

    else
    {
      v13 = [MEMORY[0x277CBEB98] set];
    }

    v14 = [[HFMutableSetDiff alloc] initWithFromSet:v13];
    roomUUIDs = v6->_roomUUIDs;
    v6->_roomUUIDs = v14;
  }

  return v6;
}

- (void)addRoom:(id)room
{
  roomCopy = room;
  roomUUIDs = [(HFZoneBuilder *)self roomUUIDs];
  toSet = [roomUUIDs toSet];
  uniqueIdentifier = [roomCopy uniqueIdentifier];
  v7 = [toSet containsObject:uniqueIdentifier];

  if ((v7 & 1) == 0)
  {
    roomUUIDs2 = [(HFZoneBuilder *)self roomUUIDs];
    uniqueIdentifier2 = [roomCopy uniqueIdentifier];
    [roomUUIDs2 addObject:uniqueIdentifier2];
  }
}

- (void)removeRoom:(id)room
{
  roomCopy = room;
  roomUUIDs = [(HFZoneBuilder *)self roomUUIDs];
  toSet = [roomUUIDs toSet];
  uniqueIdentifier = [roomCopy uniqueIdentifier];
  v7 = [toSet containsObject:uniqueIdentifier];

  if (v7)
  {
    roomUUIDs2 = [(HFZoneBuilder *)self roomUUIDs];
    uniqueIdentifier2 = [roomCopy uniqueIdentifier];
    [roomUUIDs2 deleteObject:uniqueIdentifier2];
  }
}

- (NSSet)rooms
{
  roomUUIDs = [(HFZoneBuilder *)self roomUUIDs];
  toSet = [roomUUIDs toSet];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __22__HFZoneBuilder_rooms__block_invoke;
  v7[3] = &unk_277DF5E10;
  v7[4] = self;
  v5 = [toSet na_map:v7];

  return v5;
}

id __22__HFZoneBuilder_rooms__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = objc_msgSend_home(v2);
  v5 = [v4 hf_roomWithIdentifier:v3];

  return v5;
}

- (id)_performValidation
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v4 = [(HFItemBuilder *)self lazy_verifyPropertyIsSet:@"name"];
  v10[0] = v4;
  name = [(HFZoneBuilder *)self name];
  v6 = [(HFItemBuilder *)self lazy_verifyNameIsNotEmpty:name];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v8 = [v3 chainFutures:v7];

  return v8;
}

- (id)commitItem
{
  v26 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Starting a commit %@", buf, 0xCu);
  }

  v4 = [(HFZoneBuilder *)self zone];
  v5 = HFOperationEditZone;
  if (!v4)
  {
    v5 = HFOperationAddZone;
  }

  v6 = *v5;

  _performValidation = [(HFZoneBuilder *)self _performValidation];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __27__HFZoneBuilder_commitItem__block_invoke;
  v21[3] = &unk_277DF3D10;
  objc_copyWeak(&v22, &location);
  v8 = [_performValidation flatMap:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __27__HFZoneBuilder_commitItem__block_invoke_2;
  v19[3] = &unk_277DF3D10;
  objc_copyWeak(&v20, &location);
  v9 = [v8 flatMap:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__HFZoneBuilder_commitItem__block_invoke_3;
  v16[3] = &unk_277E01118;
  objc_copyWeak(&v18, &location);
  v10 = v6;
  v17 = v10;
  v11 = [v9 recover:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__HFZoneBuilder_commitItem__block_invoke_4;
  v14[3] = &unk_277DF3D10;
  objc_copyWeak(&v15, &location);
  v12 = [v11 flatMap:v14];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v12;
}

id __27__HFZoneBuilder_commitItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained zone];

  v3 = [WeakRetained name];
  v4 = [WeakRetained zone];
  v5 = [v4 name];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    if (v2)
    {
      v7 = [WeakRetained _updateName];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
    v9 = [WeakRetained roomUUIDs];
    v10 = [v9 toSet];
    v11 = [(HFSetDiff *)HFMutableSetDiff diffFromSet:v8 toSet:v10];
    [WeakRetained setRoomUUIDs:v11];
  }

  v7 = [WeakRetained _createZone];
LABEL_6:
  v12 = v7;

  return v12;
}

id __27__HFZoneBuilder_commitItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _updateRooms];

  return v2;
}

id __27__HFZoneBuilder_commitItem__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x277D2C900];
  v6 = *(a1 + 32);
  v7 = [WeakRetained name];
  v8 = [v3 hf_errorWithOperationType:v6 failedItemName:v7];

  v9 = [v5 futureWithError:v8];

  return v9;
}

id __27__HFZoneBuilder_commitItem__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = MEMORY[0x277D2C900];
  v3 = [WeakRetained zone];
  v4 = [v2 futureWithResult:v3];

  return v4;
}

- (id)_createZone
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__createZone__block_invoke;
  v8[3] = &unk_277DF2C90;
  v8[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithCompletionHandlerAdapterBlock:v8];
  v4 = [v3 addFailureBlock:&__block_literal_global_217];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__HFZoneBuilder__createZone__block_invoke_18;
  v7[3] = &unk_277E01140;
  v7[4] = self;
  v5 = [v3 flatMap:v7];

  return v5;
}

void __28__HFZoneBuilder__createZone__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) name];
    v6 = objc_msgSend_home(*(a1 + 32));
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Creating zone with name %@ in home %@", &v9, 0x16u);
  }

  v7 = objc_msgSend_home(*(a1 + 32));
  v8 = [*(a1 + 32) name];
  [v7 addZoneWithName:v8 completionHandler:v3];
}

void __28__HFZoneBuilder__createZone__block_invoke_12(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFZoneBuilder: Zone creation failed with error %@", &v5, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFZoneBuilder.addZone"];
}

id __28__HFZoneBuilder__createZone__block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Zone creation successful", buf, 2u);
  }

  [*(a1 + 32) setZone:v3];
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__createZone__block_invoke_20;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFZoneBuilder__createZone__block_invoke_20(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [*(a1 + 32) zone];
    [v5 home:v3 didAddZone:v4];
  }
}

- (id)_updateName
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    name = [(HFZoneBuilder *)self name];
    v5 = objc_msgSend_home(self);
    *buf = 138412546;
    v18 = name;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Updating zone with name %@ in home %@", buf, 0x16u);
  }

  v6 = [(HFZoneBuilder *)self zone];
  name2 = [v6 name];
  name3 = [(HFZoneBuilder *)self name];
  v9 = [name2 isEqualToString:name3];

  if (v9)
  {
    v10 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Skipping the name update", buf, 2u);
    }

    v11 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __28__HFZoneBuilder__updateName__block_invoke;
    v16[3] = &unk_277DF2C68;
    v16[4] = self;
    v12 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v16];
    v13 = [v12 addFailureBlock:&__block_literal_global_27_13];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__HFZoneBuilder__updateName__block_invoke_31;
    v15[3] = &unk_277DF2CE0;
    v15[4] = self;
    v11 = [v12 flatMap:v15];
  }

  return v11;
}

void __28__HFZoneBuilder__updateName__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 zone];
  v5 = [*(a1 + 32) name];
  [v6 updateName:v5 completionHandler:v4];
}

void __28__HFZoneBuilder__updateName__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "HFZoneBuilder: Zone name change failed with error %@", &v5, 0xCu);
  }

  v4 = +[HFErrorHandler sharedHandler];
  [v4 logError:v2 operationDescription:@"HFRoomBuilder.updateName"];
}

id __28__HFZoneBuilder__updateName__block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Zone name change successful", buf, 2u);
  }

  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __28__HFZoneBuilder__updateName__block_invoke_32;
  v8[3] = &unk_277DF2CB8;
  v8[4] = *(a1 + 32);
  [v5 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __28__HFZoneBuilder__updateName__block_invoke_32(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    v4 = [*(a1 + 32) zone];
    [v5 home:v3 didUpdateNameForZone:v4];
  }
}

- (id)_updateRooms
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__HFZoneBuilder__updateRooms__block_invoke;
  aBlock[3] = &unk_277E01190;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __29__HFZoneBuilder__updateRooms__block_invoke_5;
  v12[3] = &unk_277E01190;
  objc_copyWeak(&v13, &location);
  v4 = _Block_copy(v12);
  roomUUIDs = [(HFZoneBuilder *)self roomUUIDs];
  v6 = [(HFZoneBuilder *)self zone];
  v7 = v3[2](v3, v6);
  v8 = [(HFZoneBuilder *)self zone];
  v9 = v4[2](v4, v8);
  v10 = [(HFItemBuilder *)self commitSetDiff:roomUUIDs addBlock:v7 updateBlock:&__block_literal_global_61_6 deleteBlock:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

id __29__HFZoneBuilder__updateRooms__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HFZoneBuilder__updateRooms__block_invoke_2;
  v7[3] = &unk_277E01168;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

id __29__HFZoneBuilder__updateRooms__block_invoke_2(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_home(WeakRetained);
  v6 = [v5 hf_roomWithIdentifier:v3];

  if (!v6)
  {
    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_msgSend_home(WeakRetained);
      *buf = 138412546;
      v30 = v3;
      v31 = 2112;
      v32 = v20;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Could not find room with UUID: %@ in home: %@. This is going to cause the HFZoneBuilder commit to fail.", buf, 0x16u);
    }
  }

  v8 = [*(a1 + 32) rooms];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __29__HFZoneBuilder__updateRooms__block_invoke_35;
  v27[3] = &unk_277DF7E60;
  v9 = v6;
  v28 = v9;
  v10 = [v8 na_any:v27];

  v11 = HFLogForCategory(0x2BuLL);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v30 = v9;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Skipping adding room %@ as one already exists!", buf, 0xCu);
    }

    v13 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  }

  else
  {
    if (v12)
    {
      v14 = [WeakRetained name];
      *buf = 138412546;
      v30 = v9;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Assigning room %@ to zone named %@", buf, 0x16u);
    }

    v15 = MEMORY[0x277D2C900];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __29__HFZoneBuilder__updateRooms__block_invoke_37;
    v24[3] = &unk_277DF4150;
    v25 = *(a1 + 32);
    v16 = v9;
    v26 = v16;
    v17 = [v15 futureWithErrorOnlyHandlerAdapterBlock:v24];
    v18 = [v17 addFailureBlock:&__block_literal_global_40_6];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __29__HFZoneBuilder__updateRooms__block_invoke_3;
    v21[3] = &unk_277DF9400;
    v21[4] = WeakRetained;
    v22 = v16;
    v23 = *(a1 + 32);
    v13 = [v17 flatMap:v21];
  }

  return v13;
}

uint64_t __29__HFZoneBuilder__updateRooms__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_2_38(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFZoneBuilder.assignZoneToRoom"];
}

id __29__HFZoneBuilder__updateRooms__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__HFZoneBuilder__updateRooms__block_invoke_4;
  v8[3] = &unk_277DF64F0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 48);
  [v4 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didAddRoom:*(a1 + 40) toZone:*(a1 + 48)];
  }
}

id __29__HFZoneBuilder__updateRooms__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HFZoneBuilder__updateRooms__block_invoke_6;
  v7[3] = &unk_277E01168;
  objc_copyWeak(&v9, (a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(v7);

  objc_destroyWeak(&v9);

  return v5;
}

id __29__HFZoneBuilder__updateRooms__block_invoke_6(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_home(WeakRetained);
  v6 = [v5 hf_roomWithIdentifier:v3];

  if (!v6)
  {
    v7 = HFLogForCategory(0x2BuLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_msgSend_home(WeakRetained);
      *buf = 138412546;
      v25 = v3;
      v26 = 2112;
      v27 = v17;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Could not find room with UUID: %@ in home: %@. This is going to cause the HFZoneBuilder commit to fail.", buf, 0x16u);
    }
  }

  v8 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [WeakRetained name];
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "HFZoneBuilder: Removing room %@ from zone named %@", buf, 0x16u);
  }

  v10 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __29__HFZoneBuilder__updateRooms__block_invoke_48;
  v21[3] = &unk_277DF4150;
  v22 = *(a1 + 32);
  v11 = v6;
  v23 = v11;
  v12 = [v10 futureWithErrorOnlyHandlerAdapterBlock:v21];
  v13 = [v12 addFailureBlock:&__block_literal_global_51_2];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __29__HFZoneBuilder__updateRooms__block_invoke_3_55;
  v18[3] = &unk_277DF9400;
  v18[4] = WeakRetained;
  v19 = v11;
  v20 = *(a1 + 32);
  v14 = v11;
  v15 = [v12 flatMap:v18];

  return v15;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_2_49(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFErrorHandler sharedHandler];
  [v3 logError:v2 operationDescription:@"HFZoneBuilder.removeZoneToRoom"];
}

id __29__HFZoneBuilder__updateRooms__block_invoke_3_55(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFHomeKitDispatcher sharedDispatcher];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__HFZoneBuilder__updateRooms__block_invoke_4_56;
  v8[3] = &unk_277DF64F0;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = *(a1 + 48);
  [v4 dispatchHomeObserverMessage:v8 sender:0];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v6;
}

void __29__HFZoneBuilder__updateRooms__block_invoke_4_56(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_msgSend_home(*(a1 + 32));
    [v4 home:v3 didRemoveRoom:*(a1 + 40) fromZone:*(a1 + 48)];
  }
}

+ (id)na_identity
{
  if (qword_280E02728 != -1)
  {
    dispatch_once(&qword_280E02728, &__block_literal_global_64_2);
  }

  v3 = _MergedGlobals_1_2;

  return v3;
}

void __28__HFZoneBuilder_na_identity__block_invoke()
{
  v6 = [MEMORY[0x277D2C908] builder];
  v0 = [v6 appendCharacteristic:&__block_literal_global_68_3 withRole:1];
  v1 = [v6 appendCharacteristic:&__block_literal_global_70_7 withRole:2];
  v2 = [v6 appendCharacteristic:&__block_literal_global_72_2 withRole:2];
  v3 = [v6 appendCharacteristic:&__block_literal_global_74_2 withRole:2];
  v4 = [v6 build];
  v5 = _MergedGlobals_1_2;
  _MergedGlobals_1_2 = v4;
}

id __28__HFZoneBuilder_na_identity__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 zone];

  if (v3)
  {
    v4 = [v2 zone];

    v5 = [v4 uniqueIdentifier];
    v6 = [v5 UUIDString];

    v2 = v4;
  }

  else
  {
    v6 = [v2 name];
  }

  return v6;
}

id __28__HFZoneBuilder_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 zone];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

id __28__HFZoneBuilder_na_identity__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 zone];
  v3 = [v2 rooms];
  v4 = [v3 na_map:&__block_literal_global_77_0];

  return v4;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

@end