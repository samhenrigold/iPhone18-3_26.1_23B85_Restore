@interface FKPerson
+ (id)_allEmailValuesForRecord:(void *)record;
+ (id)_allEmailValuesInSet:(id)set;
+ (id)_allPhoneValuesForRecord:(void *)record;
+ (id)_allPhoneValuesInSet:(id)set;
+ (id)allValuesForPerson:(void *)person;
+ (id)preferredNameForPerson:(void *)person;
+ (id)sharedMetadataQueue;
+ (int)addValue:(void *)value withLabel:(__CFString *)label toPerson:(void *)person property:(int)property;
- (BOOL)_updateFromDictionaryRepresentation:(id)representation shouldLogUpdates:(BOOL)updates;
- (BOOL)isEqualToDictionaryRepresentation:(id)representation;
- (BOOL)isLikePerson:(id)person;
- (FKPerson)init;
- (FKPerson)initWithABRecordGUID:(id)d addressBook:(void *)book;
- (FKPerson)initWithCoder:(id)coder;
- (FKPerson)initWithDestinations:(id)destinations addressBook:(void *)book;
- (FKPerson)initWithDictionaryRepresentation:(id)representation addressBook:(void *)book;
- (FKPerson)initWithFavorite:(id)favorite addressBook:(void *)book;
- (NSDictionary)metadata;
- (float)_allValuesMatchScore:(id)score;
- (id)_recordMatchDictionaryFromCFArray:(__CFArray *)array followLinks:(BOOL)links addressBook:(void *)book;
- (id)allValues;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)initials;
- (id)metadataValueForKey:(id)key;
- (id)primaryDestination;
- (void)_bestRecordMatchFromDictionary:(id)dictionary addressBook:(void *)book;
- (void)_postChangeNotification;
- (void)_reconcile:(void *)_reconcile canPostChangeNotification:(BOOL)notification shouldLogUpdates:(BOOL)updates;
- (void)_setABRecordGUID:(id)d;
- (void)addMetadataEntriesFromDictionary:(id)dictionary;
- (void)copyABPersonWithAddressBook:(void *)book;
- (void)encodeWithCoder:(id)coder;
- (void)removeAllMetadataValues;
- (void)setMetadataValue:(id)value forKey:(id)key;
- (void)setPreferredReplyAs:(id)as;
@end

@implementation FKPerson

+ (id)sharedMetadataQueue
{
  if (sharedMetadataQueue_onceToken != -1)
  {
    +[FKPerson sharedMetadataQueue];
  }

  v3 = sharedMetadataQueue_metadataQueue;

  return v3;
}

uint64_t __31__FKPerson_sharedMetadataQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.FriendKit.FKPerson.metadata", MEMORY[0x277D85CD8]);
  v1 = sharedMetadataQueue_metadataQueue;
  sharedMetadataQueue_metadataQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (FKPerson)init
{
  v7.receiver = self;
  v7.super_class = FKPerson;
  v2 = [(FKPerson *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_abRecordID = -1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    metadata = v3->_metadata;
    v3->_metadata = dictionary;
  }

  return v3;
}

- (FKPerson)initWithDictionaryRepresentation:(id)representation addressBook:(void *)book
{
  representationCopy = representation;
  v6 = [(FKPerson *)self init];
  v7 = v6;
  if (v6)
  {
    [(FKPerson *)v6 _updateFromDictionaryRepresentation:representationCopy shouldLogUpdates:0];
  }

  return v7;
}

- (FKPerson)initWithDestinations:(id)destinations addressBook:(void *)book
{
  destinationsCopy = destinations;
  v7 = [(FKPerson *)self init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:destinationsCopy];
    allValues = v7->_allValues;
    v7->_allValues = v8;

    [(FKPerson *)v7 _reconcile:book canPostChangeNotification:0 shouldLogUpdates:0];
  }

  return v7;
}

- (FKPerson)initWithABRecordGUID:(id)d addressBook:(void *)book
{
  dCopy = d;
  v8 = [(FKPerson *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_abRecordGUID, d);
    [(FKPerson *)v9 _reconcile:book canPostChangeNotification:0 shouldLogUpdates:0];
  }

  return v9;
}

- (FKPerson)initWithFavorite:(id)favorite addressBook:(void *)book
{
  favoriteCopy = favorite;
  v7 = [(FKPerson *)self init];
  if (v7)
  {
    _abUid = [favoriteCopy _abUid];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(book, _abUid);
    if (PersonWithRecordID)
    {
      v7->_abRecordID = _abUid;
      v10 = ABRecordCopyValue(PersonWithRecordID, *MEMORY[0x277CE9950]);
      abRecordGUID = v7->_abRecordGUID;
      v7->_abRecordGUID = v10;

      v12 = ABAddressBookCopyUniqueIdentifier();
      abDatabaseUID = v7->_abDatabaseUID;
      v7->_abDatabaseUID = v12;

      [(FKPerson *)v7 _reconcile:book canPostChangeNotification:0 shouldLogUpdates:0];
    }

    else
    {
      displayName = [favoriteCopy displayName];
      name = v7->_name;
      v7->_name = displayName;

      value = [favoriteCopy value];
      fkMessageCanonicalRawAddress = [value fkMessageCanonicalRawAddress];

      v18 = [MEMORY[0x277CBEB98] setWithObject:fkMessageCanonicalRawAddress];
      allValues = v7->_allValues;
      v7->_allValues = v18;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  primaryDestination = self->_primaryDestination;
  coderCopy = coder;
  [coderCopy encodeObject:primaryDestination forKey:@"pd"];
  [coderCopy encodeObject:self->_initials forKey:@"i"];
  [coderCopy encodeObject:self->_phoneNumberCount forKey:@"pnc"];
  [coderCopy encodeObject:self->_emailAddressCount forKey:@"eac"];
  [coderCopy encodeInt64:self->_abRecordID forKey:@"abid"];
  [coderCopy encodeObject:self->_abRecordGUID forKey:@"abguid"];
  [coderCopy encodeObject:self->_abDatabaseUID forKey:@"abdbuid"];
  [coderCopy encodeObject:self->_name forKey:@"n"];
  [coderCopy encodeObject:self->_allValues forKey:@"av"];
  [coderCopy encodeObject:self->_metadata forKey:@"m"];
}

- (FKPerson)initWithCoder:(id)coder
{
  v34[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(FKPerson *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pd"];
    primaryDestination = v5->_primaryDestination;
    v5->_primaryDestination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    initials = v5->_initials;
    v5->_initials = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pnc"];
    phoneNumberCount = v5->_phoneNumberCount;
    v5->_phoneNumberCount = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eac"];
    emailAddressCount = v5->_emailAddressCount;
    v5->_emailAddressCount = v12;

    v5->_abRecordID = [coderCopy decodeInt64ForKey:@"abid"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abguid"];
    abRecordGUID = v5->_abRecordGUID;
    v5->_abRecordGUID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"abdbuid"];
    abDatabaseUID = v5->_abDatabaseUID;
    v5->_abDatabaseUID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    name = v5->_name;
    v5->_name = v18;

    v20 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"av"];
    allValues = v5->_allValues;
    v5->_allValues = v23;

    v25 = MEMORY[0x277CBEB38];
    v26 = MEMORY[0x277CBEB98];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v33[3] = objc_opt_class();
    v33[4] = objc_opt_class();
    v33[5] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
    v28 = [v26 setWithArray:v27];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"m"];
    v30 = [v25 dictionaryWithDictionary:v29];
    metadata = v5->_metadata;
    v5->_metadata = v30;
  }

  return v5;
}

- (BOOL)_updateFromDictionaryRepresentation:(id)representation shouldLogUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v68 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v6 = [representationCopy objectForKey:@"ABRecordID"];
  intValue = [v6 intValue];

  v49 = [representationCopy objectForKey:@"ABRecordGUID"];
  v8 = [representationCopy objectForKey:@"ABDatabaseUID"];
  v9 = [representationCopy objectForKey:@"Name"];
  v10 = MEMORY[0x277CBEB98];
  v11 = [representationCopy objectForKey:@"AllValues"];
  v47 = [v10 setWithArray:v11];

  v12 = [representationCopy objectForKey:@"ReplyAs"];
  v13 = [representationCopy objectForKey:@"Monogram"];
  v14 = MEMORY[0x277CBEB38];
  v15 = [representationCopy objectForKey:@"Metadata"];
  v45 = [v14 dictionaryWithDictionary:v15];

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  if (self->_abRecordID != intValue)
  {
    self->_abRecordID = intValue;
    v57 = 1;
  }

  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID | v49)
  {
    v17 = [(NSString *)abRecordGUID isEqualToString:v49];
    if ((v17 & 1) == 0)
    {
      if (updatesCopy)
      {
        v18 = _FKGetLogSystem(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = self->_abRecordGUID;
          *buf = 136316162;
          v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
          v60 = 1024;
          v61 = 195;
          v62 = 2112;
          selfCopy6 = self;
          v64 = 2112;
          v65 = v19;
          v66 = 2112;
          v67 = v49;
          _os_log_impl(&dword_24BC19000, v18, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to abRecordGUID: %@ -> %@", buf, 0x30u);
        }
      }

      [(FKPerson *)self _setABRecordGUID:v49, v45];
      *(v55 + 24) = 1;
    }
  }

  abDatabaseUID = self->_abDatabaseUID;
  if (abDatabaseUID | v8)
  {
    v21 = [(NSString *)abDatabaseUID isEqualToString:v8];
    if ((v21 & 1) == 0)
    {
      if (updatesCopy)
      {
        v22 = _FKGetLogSystem(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = self->_abDatabaseUID;
          *buf = 136316162;
          v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
          v60 = 1024;
          v61 = 201;
          v62 = 2112;
          selfCopy6 = self;
          v64 = 2112;
          v65 = v23;
          v66 = 2112;
          v67 = v8;
          _os_log_impl(&dword_24BC19000, v22, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to abDatabaseUID: %@ -> %@", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_abDatabaseUID, v8);
      *(v55 + 24) = 1;
    }
  }

  name = self->_name;
  if (name | v9)
  {
    v25 = [(NSString *)name isEqualToString:v9];
    if ((v25 & 1) == 0)
    {
      if (updatesCopy)
      {
        v26 = _FKGetLogSystem(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = self->_name;
          *buf = 136316162;
          v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
          v60 = 1024;
          v61 = 207;
          v62 = 2112;
          selfCopy6 = self;
          v64 = 2112;
          v65 = v27;
          v66 = 2112;
          v67 = v9;
          _os_log_impl(&dword_24BC19000, v26, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to name: '%@' -> '%@'", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_name, v9);
      *(v55 + 24) = 1;
    }
  }

  fkSanitizedDestinationSet = [v47 fkSanitizedDestinationSet];
  allValues = self->_allValues;
  if (allValues | fkSanitizedDestinationSet)
  {
    v30 = [(NSSet *)allValues isEqualToSet:fkSanitizedDestinationSet];
    if ((v30 & 1) == 0)
    {
      if (updatesCopy)
      {
        v31 = _FKGetLogSystem(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = self->_allValues;
          *buf = 136316162;
          v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
          v60 = 1024;
          v61 = 216;
          v62 = 2112;
          selfCopy6 = self;
          v64 = 2112;
          v65 = v32;
          v66 = 2112;
          v67 = fkSanitizedDestinationSet;
          _os_log_impl(&dword_24BC19000, v31, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to allValues: %@ -> %@", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_allValues, fkSanitizedDestinationSet);
      *(v55 + 24) = 1;
      self->_needsSave = [v47 isEqualToSet:fkSanitizedDestinationSet] ^ 1;
    }
  }

  preferredReplyAs = self->_preferredReplyAs;
  if (preferredReplyAs | v12)
  {
    v34 = [(NSString *)preferredReplyAs isEqualToString:v12];
    if ((v34 & 1) == 0)
    {
      if (updatesCopy)
      {
        v35 = _FKGetLogSystem(v34);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = self->_preferredReplyAs;
          *buf = 136316162;
          v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
          v60 = 1024;
          v61 = 225;
          v62 = 2112;
          selfCopy6 = self;
          v64 = 2112;
          v65 = v36;
          v66 = 2112;
          v67 = v12;
          _os_log_impl(&dword_24BC19000, v35, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to _preferredReplyAs: '%@' -> '%@'", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_preferredReplyAs, v12);
      *(v55 + 24) = 1;
    }
  }

  if (!v13)
  {
    v13 = [FKUtility initialForString:self->_name];
  }

  if ([v13 length])
  {
    v37 = 0;
  }

  else
  {
    v37 = [(NSString *)self->_initials length]== 0;
  }

  initials = self->_initials;
  if (v13 | initials)
  {
    if (!v37)
    {
      v39 = [(NSString *)initials isEqualToString:v13];
      if ((v39 & 1) == 0)
      {
        if (updatesCopy)
        {
          v40 = _FKGetLogSystem(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v41 = self->_initials;
            *buf = 136316162;
            v59 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
            v60 = 1024;
            v61 = 234;
            v62 = 2112;
            selfCopy6 = self;
            v64 = 2112;
            v65 = v41;
            v66 = 2112;
            v67 = v13;
            _os_log_impl(&dword_24BC19000, v40, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to initials: [%@] -> [%@]", buf, 0x30u);
          }
        }

        objc_storeStrong(&self->_initials, v13);
        *(v55 + 24) = 1;
      }
    }
  }

  v42 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke;
  block[3] = &unk_27916A658;
  block[4] = self;
  v51 = v46;
  v53 = updatesCopy;
  v52 = &v54;
  v43 = v46;
  dispatch_sync(v42, block);

  LOBYTE(v42) = *(v55 + 24);
  _Block_object_dispose(&v54, 8);

  return v42 & 1;
}

void __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 80) | v2)
  {
    v4 = [v2 isEqualToDictionary:?];
    if ((v4 & 1) == 0)
    {
      if (*(a1 + 56) == 1)
      {
        v5 = _FKGetLogSystem(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 32);
          v7 = *(a1 + 40);
          v8 = *(v6 + 80);
          *buf = 136316162;
          v14 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]_block_invoke";
          v15 = 1024;
          v16 = 241;
          v17 = 2112;
          v18 = v6;
          v19 = 2112;
          v20 = v8;
          v21 = 2112;
          v22 = v7;
          _os_log_impl(&dword_24BC19000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to metadata: %@ -> %@", buf, 0x30u);
        }
      }

      objc_initWeak(buf, *(a1 + 32));
      v9 = +[FKPerson sharedMetadataQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke_72;
      v10[3] = &unk_27916A280;
      objc_copyWeak(&v12, buf);
      v11 = *(a1 + 40);
      dispatch_barrier_async(v9, v10);

      *(*(*(a1 + 48) + 8) + 24) = 1;
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }
}

void __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _metadataDictionary];
  [v3 removeAllObjects];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 _metadataDictionary];
  [v4 addEntriesFromDictionary:*(a1 + 32)];
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_abRecordID];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, @"ABRecordID", 0}];

  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID)
  {
    [v5 setObject:abRecordGUID forKey:@"ABRecordGUID"];
  }

  abDatabaseUID = self->_abDatabaseUID;
  if (abDatabaseUID)
  {
    [v5 setObject:abDatabaseUID forKey:@"ABDatabaseUID"];
  }

  name = self->_name;
  if (name)
  {
    [v5 setObject:name forKey:@"Name"];
  }

  allValues = self->_allValues;
  if (allValues)
  {
    allObjects = [(NSSet *)allValues allObjects];
    [v5 setObject:allObjects forKey:@"AllValues"];
  }

  preferredReplyAs = self->_preferredReplyAs;
  if (preferredReplyAs)
  {
    [v5 setObject:preferredReplyAs forKey:@"ReplyAs"];
  }

  if (self->_initials)
  {
    initials = self->_initials;
  }

  else
  {
    initials = &stru_285F8D5E0;
  }

  [v5 setObject:initials forKey:@"Monogram"];
  v13 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FKPerson_dictionaryRepresentation__block_invoke;
  block[3] = &unk_27916A548;
  block[4] = self;
  v14 = v5;
  v19 = v14;
  dispatch_sync(v13, block);

  v15 = v19;
  v16 = v14;

  return v14;
}

void __36__FKPerson_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) count])
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 80)];
    [v2 setObject:v3 forKey:@"Metadata"];
  }
}

- (id)displayName
{
  if ([(NSString *)self->_name length])
  {
    primaryDestination = [(NSString *)self->_name copy];
  }

  else
  {
    primaryDestination = [(FKPerson *)self primaryDestination];
    if ([primaryDestination fkMessageDestinationType] == 1)
    {
      v4 = [FKUtility compressPhoneNumberString:primaryDestination];

      primaryDestination = v4;
    }
  }

  return primaryDestination;
}

- (id)primaryDestination
{
  primaryDestination = self->_primaryDestination;
  if (!primaryDestination)
  {
    v4 = [FKPerson _allPhoneValuesInSet:self->_allValues];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
    }

    else
    {
      v6 = [FKPerson _allEmailValuesInSet:self->_allValues];
      if ([v6 count])
      {
        v5 = [v6 objectAtIndex:0];
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = self->_primaryDestination;
    self->_primaryDestination = v5;

    primaryDestination = self->_primaryDestination;
  }

  return primaryDestination;
}

- (id)allValues
{
  v2 = [(NSSet *)self->_allValues copy];

  return v2;
}

- (void)setPreferredReplyAs:(id)as
{
  v24 = *MEMORY[0x277D85DE8];
  asCopy = as;
  preferredReplyAs = self->_preferredReplyAs;
  if (asCopy | preferredReplyAs)
  {
    v7 = [(NSString *)preferredReplyAs isEqualToString:asCopy];
    if ((v7 & 1) == 0)
    {
      v8 = _FKGetLogSystem(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        abRecordGUID = self->_abRecordGUID;
        v11 = self->_preferredReplyAs;
        v12 = 136316418;
        v13 = "[FKPerson setPreferredReplyAs:]";
        v14 = 1024;
        v15 = 348;
        v16 = 2112;
        v17 = name;
        v18 = 2112;
        v19 = abRecordGUID;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = asCopy;
        _os_log_impl(&dword_24BC19000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) updating preferredReplyAs for [%@] (GUID %@): %@ -> %@", &v12, 0x3Au);
      }

      objc_storeStrong(&self->_preferredReplyAs, as);
      self->_needsSave = 1;
      [(FKPerson *)self _postChangeNotification];
    }
  }
}

- (id)metadataValueForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__FKPerson_metadataValueForKey___block_invoke;
  block[3] = &unk_27916A680;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __32__FKPerson_metadataValueForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setMetadataValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_initWeak(&location, self);
  v8 = +[FKPerson sharedMetadataQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__FKPerson_setMetadataValue_forKey___block_invoke;
  v11[3] = &unk_27916A460;
  objc_copyWeak(&v14, &location);
  v12 = valueCopy;
  v13 = keyCopy;
  v9 = keyCopy;
  v10 = valueCopy;
  dispatch_barrier_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __36__FKPerson_setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _metadataDictionary];
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _postChangeNotification];
}

- (void)addMetadataEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionaryCopy];
  objc_initWeak(&location, self);
  v6 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FKPerson_addMetadataEntriesFromDictionary___block_invoke;
  block[3] = &unk_27916A280;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_barrier_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__FKPerson_addMetadataEntriesFromDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _metadataDictionary];
  [v3 addEntriesFromDictionary:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _postChangeNotification];
}

- (void)removeAllMetadataValues
{
  objc_initWeak(&location, self);
  v2 = +[FKPerson sharedMetadataQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__FKPerson_removeAllMetadataValues__block_invoke;
  v3[3] = &unk_27916A258;
  objc_copyWeak(&v4, &location);
  dispatch_barrier_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __35__FKPerson_removeAllMetadataValues__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _metadataDictionary];
  [v3 removeAllObjects];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _postChangeNotification];
}

- (NSDictionary)metadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = +[FKPerson sharedMetadataQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__FKPerson_metadata__block_invoke;
  v6[3] = &unk_27916A5E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __20__FKPerson_metadata__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 80)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  displayName = [(FKPerson *)self displayName];
  primaryDestination = [(FKPerson *)self primaryDestination];
  v8 = [v3 stringWithFormat:@"<%@: %p [%@]:%@>", v5, self, displayName, primaryDestination];

  return v8;
}

- (void)copyABPersonWithAddressBook:(void *)book
{
  result = [(NSString *)self->_abRecordGUID length];
  if (result)
  {

    return ABAddressBookCopyPersonMatchingInternalUUID();
  }

  return result;
}

- (void)_setABRecordGUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID)
  {
    if ([(NSString *)dCopy length])
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_285F8D5E0;
    }

    if (![(NSString *)abRecordGUID isEqualToString:v7])
    {
      objc_initWeak(&location, self);
      v15 = @"UnlinkedABGUID";
      v16[0] = self->_abRecordGUID;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __29__FKPerson__setABRecordGUID___block_invoke;
      v11[3] = &unk_27916A280;
      objc_copyWeak(&v13, &location);
      v12 = v8;
      v9 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v11);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  v10 = self->_abRecordGUID;
  self->_abRecordGUID = v5;
}

void __29__FKPerson__setABRecordGUID___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 postNotificationName:@"FKPersonUnlinkedFromAddressBookNotification" object:WeakRetained userInfo:*(a1 + 32)];
}

- (id)initials
{
  v2 = [(NSString *)self->_initials copy];

  return v2;
}

- (BOOL)isEqualToDictionaryRepresentation:(id)representation
{
  v20 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"ABRecordGUID"];
  abRecordGUID = self->_abRecordGUID;
  if ((v5 == 0) == (abRecordGUID != 0))
  {
    v7 = 0;
  }

  else if (abRecordGUID)
  {
    v7 = [(NSString *)abRecordGUID isEqualToString:v5];
  }

  else
  {
    v8 = [representationCopy objectForKey:@"AllValues"];
    if ([v8 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([(NSSet *)self->_allValues containsObject:*(*(&v15 + 1) + 8 * i), v15])
            {
              v7 = 1;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_16:
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isLikePerson:(id)person
{
  personCopy = person;
  v5 = personCopy;
  if (personCopy)
  {
    abRecordGUID = [personCopy abRecordGUID];
    abRecordGUID = self->_abRecordGUID;
    if (abRecordGUID)
    {
      v8 = abRecordGUID == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || ![(NSString *)abRecordGUID isEqualToString:abRecordGUID])
    {
      allValues = [v5 allValues];
      allValues = self->_allValues;
      v9 = allValues && allValues && [(NSSet *)allValues intersectsSet:allValues];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_postChangeNotification
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__FKPerson__postChangeNotification__block_invoke;
  v2[3] = &unk_27916A258;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __35__FKPerson__postChangeNotification__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"FKPersonValuesChangedNotification" object:WeakRetained];
}

- (void)_reconcile:(void *)_reconcile canPostChangeNotification:(BOOL)notification shouldLogUpdates:(BOOL)updates
{
  v52 = *MEMORY[0x277D85DE8];
  if (!_reconcile)
  {
    return;
  }

  updatesCopy = updates;
  notificationCopy = notification;
  v8 = ABAddressBookCopyUniqueIdentifier();
  if (v8 && ![(NSString *)self->_abDatabaseUID isEqualToString:v8])
  {
    objc_storeStrong(&self->_abDatabaseUID, v8);
    v9 = 1;
    self->_needsSave = 1;
  }

  else
  {
    v9 = 0;
  }

  if (self->_abRecordGUID && (v10 = ABAddressBookCopyPersonMatchingInternalUUID()) != 0)
  {
    v11 = v10;
    RecordID = ABRecordGetRecordID(v10);
    if (self->_abRecordID != RecordID)
    {
      v13 = RecordID;
      if (updatesCopy)
      {
        v14 = _FKGetLogSystem(RecordID);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          abRecordGUID = self->_abRecordGUID;
          abRecordID = self->_abRecordID;
          *buf = 136316162;
          v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v45 = 1024;
          v46 = 536;
          v47 = 2112;
          v48 = abRecordGUID;
          v49 = 1024;
          *v50 = abRecordID;
          *&v50[4] = 1024;
          *&v50[6] = v13;
          _os_log_impl(&dword_24BC19000, v14, OS_LOG_TYPE_DEFAULT, "%s (%d) updating AB record ID for friend with GUID %@: %d -> %d", buf, 0x28u);
        }
      }

      self->_abRecordID = v13;
      v9 = 1;
      self->_needsSave = 1;
    }

    v17 = [FKPerson preferredNameForPerson:v11];
    name = self->_name;
    if (name | v17)
    {
      v19 = [(NSString *)name isEqualToString:v17];
      if ((v19 & 1) == 0)
      {
        if (updatesCopy)
        {
          v20 = _FKGetLogSystem(v19);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = self->_abRecordGUID;
            v22 = self->_name;
            *buf = 136316162;
            v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
            v45 = 1024;
            v46 = 546;
            v47 = 2112;
            v48 = v21;
            v49 = 2112;
            *v50 = v22;
            *&v50[8] = 2112;
            v51 = v17;
            _os_log_impl(&dword_24BC19000, v20, OS_LOG_TYPE_DEFAULT, "%s (%d) updating name for friend with GUID %@: [%@] -> [%@]", buf, 0x30u);
          }
        }

        objc_storeStrong(&self->_name, v17);
        v9 = 1;
        self->_needsSave = 1;
      }
    }

    v23 = [FKPerson allValuesForPerson:v11];
    allValues = self->_allValues;
    if (allValues | v23)
    {
      v25 = [(NSSet *)allValues isEqualToSet:v23];
      if ((v25 & 1) == 0)
      {
        if (updatesCopy)
        {
          v26 = _FKGetLogSystem(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = self->_abRecordGUID;
            v28 = self->_allValues;
            *buf = 136316162;
            v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
            v45 = 1024;
            v46 = 556;
            v47 = 2112;
            v48 = v27;
            v49 = 2112;
            *v50 = v28;
            *&v50[8] = 2112;
            v51 = v23;
            _os_log_impl(&dword_24BC19000, v26, OS_LOG_TYPE_DEFAULT, "%s (%d) updated destinations for friend with GUID %@: %@ -> %@", buf, 0x30u);
          }
        }

        objc_storeStrong(&self->_allValues, v23);
        primaryDestination = self->_primaryDestination;
        self->_primaryDestination = 0;

        phoneNumberCount = self->_phoneNumberCount;
        self->_phoneNumberCount = 0;

        emailAddressCount = self->_emailAddressCount;
        self->_emailAddressCount = 0;

        v9 = 1;
        self->_needsSave = 1;
      }
    }

    v32 = [FKUtility initialsForPerson:v11];
  }

  else
  {
    v33 = [(NSSet *)self->_allValues count];
    if (v33)
    {
      v33 = [(NSString *)self->_name length];
      if (v33)
      {
        v34 = _FKGetLogSystem(v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = self->_name;
          *buf = 136315650;
          v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v45 = 1024;
          v46 = 571;
          v47 = 2112;
          v48 = v35;
          _os_log_impl(&dword_24BC19000, v34, OS_LOG_TYPE_DEFAULT, "%s (%d) friend needs a full AB lookup, searching with name: %@", buf, 0x1Cu);
        }

        v33 = ABAddressBookCopyPeopleAndIdentifiersMatchingName();
      }
    }

    v36 = _FKGetLogSystem(v33);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
      v45 = 1024;
      v46 = 600;
      _os_log_impl(&dword_24BC19000, v36, OS_LOG_TYPE_DEFAULT, "%s (%d) unable to find matching record using name", buf, 0x12u);
    }

    if (self->_abRecordID != -1)
    {
      self->_abRecordID = -1;
      [(FKPerson *)self _setABRecordGUID:0];
      v9 = 1;
      self->_needsSave = 1;
    }

    v32 = [FKUtility initialForString:self->_name];
    v11 = 0;
  }

  if ([v32 length])
  {
    if (v32)
    {
      goto LABEL_47;
    }

    v37 = 0;
  }

  else
  {
    v38 = [(NSString *)self->_initials length];
    v37 = v38 == 0;
    if (v32)
    {
      if (v38)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  if (self->_initials && !v37)
  {
LABEL_47:
    v39 = [v32 isEqualToString:self->_initials];
    if ((v39 & 1) == 0)
    {
      if (updatesCopy)
      {
        v40 = _FKGetLogSystem(v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = self->_abRecordGUID;
          initials = self->_initials;
          *buf = 136316162;
          v44 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v45 = 1024;
          v46 = 615;
          v47 = 2112;
          v48 = v41;
          v49 = 2112;
          *v50 = initials;
          *&v50[8] = 2112;
          v51 = v32;
          _os_log_impl(&dword_24BC19000, v40, OS_LOG_TYPE_DEFAULT, "%s (%d) updating monogram for friend with GUID %@: [%@] -> [%@]", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_initials, v32);
      v9 = 1;
      self->_needsSave = 1;
    }
  }

LABEL_53:
  if (v11)
  {
    CFRelease(v11);
  }

  if ((v9 & notificationCopy) == 1)
  {
    [(FKPerson *)self _postChangeNotification];
  }
}

+ (id)preferredNameForPerson:(void *)person
{
  if (person)
  {
    v4 = ABPersonCopyPreferredLinkedPersonForName();
    v5 = v4;
    if (v4)
    {
      personCopy = v4;
    }

    else
    {
      personCopy = person;
    }

    if (ABPersonGetShortNameFormatEnabled())
    {
      v7 = ABPersonCopyShortName();
    }

    else
    {
      v7 = 0;
    }

    if (ABPersonGetShortNamePreferNicknames())
    {
      v9 = ABRecordCopyValue(personCopy, *MEMORY[0x277CE99B0]);
    }

    else
    {
      v9 = 0;
    }

    v10 = ABPersonCopyCompositeName();
    if (v5)
    {
      CFRelease(v5);
    }

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v10;
    }

    if (v9)
    {
      v11 = v9;
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)allValuesForPerson:(void *)person
{
  v22 = *MEMORY[0x277D85DE8];
  if (person)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [FKPerson _allEmailValuesForRecord:person];
    v6 = [FKPerson _allPhoneValuesForRecord:person];
    [v4 addObjectsFromArray:v5];
    [v4 addObjectsFromArray:v6];
    if ([FKUtility personHasLinkages:person])
    {
      v16 = v5;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = ABPersonCopyArrayOfAllLinkedPeople(person);
      v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            if (v12 != person)
            {
              v13 = [FKPerson _allEmailValuesForRecord:*(*(&v17 + 1) + 8 * i)];
              v14 = [FKPerson _allPhoneValuesForRecord:v12];
              [v4 addObjectsFromArray:v13];
              [v4 addObjectsFromArray:v14];
            }
          }

          v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      v5 = v16;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_recordMatchDictionaryFromCFArray:(__CFArray *)array followLinks:(BOOL)links addressBook:(void *)book
{
  linksCopy = links;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  Count = CFArrayGetCount(array);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(array, i);
      if (ValueAtIndex)
      {
        PersonWithRecordID = ValueAtIndex;
        RecordID = ABRecordGetRecordID(ValueAtIndex);
        if (linksCopy)
        {
          IntValue = ABRecordGetIntValue();
          if (IntValue != -1)
          {
            v16 = IntValue;
            PersonWithRecordID = ABAddressBookGetPersonWithRecordID(book, IntValue);
            RecordID = v16;
          }
        }

        v17 = [MEMORY[0x277CCABB0] numberWithInt:RecordID];
        if (PersonWithRecordID)
        {
          v18 = [dictionary objectForKey:v17];

          if (!v18)
          {
            v19 = [FKPerson allValuesForPerson:PersonWithRecordID];
            [dictionary setObject:v19 forKey:v17];
          }
        }
      }
    }
  }

  return dictionary;
}

- (float)_allValuesMatchScore:(id)score
{
  scoreCopy = score;
  v5 = [(NSSet *)self->_allValues mutableCopy];
  [v5 intersectSet:scoreCopy];
  v6 = [v5 count];
  v7 = [(NSSet *)self->_allValues count];
  v8 = v6 / v7;
  if (v6 == v7)
  {
    v8 = v8 + (([scoreCopy count] - v6) * (1.0 / v7));
  }

  return v8;
}

- (void)_bestRecordMatchFromDictionary:(id)dictionary addressBook:(void *)book
{
  dictionaryCopy = dictionary;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__FKPerson__bestRecordMatchFromDictionary_addressBook___block_invoke;
  v10[3] = &unk_27916A6A8;
  v10[4] = self;
  v10[5] = v11;
  v10[6] = &v13;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v10];
  v7 = *(v14 + 6);
  if (v7 == -1)
  {
    PersonWithRecordID = 0;
  }

  else
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(book, v7);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return PersonWithRecordID;
}

void __55__FKPerson__bestRecordMatchFromDictionary_addressBook___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) _allValuesMatchScore:a3];
  v6 = *(*(a1 + 40) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
    *(*(*(a1 + 48) + 8) + 24) = [v7 intValue];
  }
}

+ (id)_allPhoneValuesForRecord:(void *)record
{
  if (record)
  {
    v3 = ABRecordCopyValue(record, *MEMORY[0x277CE9A18]);
    v4 = v3;
    if (v3)
    {
      array = ABMultiValueCopyArrayOfAllValues(v3);
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v7 = array;
    v8 = [MEMORY[0x277CBEB98] setWithArray:array];
    fkSanitizedDestinationSet = [v8 fkSanitizedDestinationSet];
    allObjects = [fkSanitizedDestinationSet allObjects];

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

+ (id)_allPhoneValuesInSet:(id)set
{
  v17 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (setCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = setCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 fkMessageDestinationType] == 1)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_allEmailValuesForRecord:(void *)record
{
  if (record)
  {
    v3 = ABRecordCopyValue(record, *MEMORY[0x277CE9888]);
    v4 = v3;
    if (v3)
    {
      array = ABMultiValueCopyArrayOfAllValues(v3);
    }

    else
    {
      array = [MEMORY[0x277CBEA60] array];
    }

    v7 = array;
    v8 = [MEMORY[0x277CBEB98] setWithArray:array];
    fkSanitizedDestinationSet = [v8 fkSanitizedDestinationSet];
    allObjects = [fkSanitizedDestinationSet allObjects];

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

+ (id)_allEmailValuesInSet:(id)set
{
  v17 = *MEMORY[0x277D85DE8];
  setCopy = set;
  if (setCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = setCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if ([v10 fkMessageDestinationType] == 2)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int)addValue:(void *)value withLabel:(__CFString *)label toPerson:(void *)person property:(int)property
{
  outIdentifier = -1;
  if ((ABPersonGetTypeOfProperty(property) & 0x100) != 0)
  {
    v11 = ABRecordCopyValue(person, property);
    if (v11)
    {
      v12 = v11;
      MutableCopy = ABMultiValueCreateMutableCopy(v11);
      CFRelease(v12);
    }

    else
    {
      TypeOfProperty = ABPersonGetTypeOfProperty(property);
      MutableCopy = ABMultiValueCreateMutable(TypeOfProperty);
    }

    ABMultiValueAddValueAndLabel(MutableCopy, value, label, &outIdentifier);
    ABRecordSetValue(person, property, MutableCopy, 0);
    CFRelease(MutableCopy);
    return outIdentifier;
  }

  else
  {
    ABRecordSetValue(person, property, value, 0);
    return -1;
  }
}

@end