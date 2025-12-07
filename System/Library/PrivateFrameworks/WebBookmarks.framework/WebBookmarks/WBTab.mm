@interface WBTab
+ (id)pinnedTabWithTitle:(id)title url:(id)url deviceIdentifier:(id)identifier;
+ (id)startPageTabWithDeviceIdentifier:(id)identifier;
- (BOOL)canCloseAutomaticallyForInterval:(double)interval;
- (BOOL)hasSameUUIDAndURLAsTab:(id)tab;
- (BOOL)isBlank;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIdentical:(id)identical;
- (BOOL)isInserted;
- (BOOL)isMarkedAsRead;
- (BOOL)isPinned;
- (BOOL)isSyncable;
- (NSDictionary)dictionaryRepresentation;
- (NSString)URLString;
- (NSString)debugSyncDescription;
- (NSString)description;
- (NSString)deviceIdentifier;
- (NSString)pinnedTitle;
- (NSString)privacyPreservingDescription;
- (NSString)title;
- (NSString)uuid;
- (NSURL)pinnedURL;
- (NSURL)syncableURL;
- (NSURL)url;
- (WBLocalTabAttributes)localAttributes;
- (WBSCRDTPosition)syncPosition;
- (WBTab)initWithBookmark:(id)bookmark;
- (WBTab)initWithBookmark:(id)bookmark isPrivateBrowsing:(BOOL)browsing;
- (WBTab)initWithBookmarkStorage:(id)storage;
- (WBTab)initWithCoder:(id)coder;
- (WBTab)initWithDictionaryRepresentation:(id)representation;
- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url deviceIdentifier:(id)identifier isPrivateBrowsing:(BOOL)browsing;
- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url deviceIdentifier:(id)identifier lastVisitTime:(id)time;
- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url pinned:(BOOL)pinned pinnedTitle:(id)pinnedTitle pinnedURL:(id)l localAttributes:(id)attributes deviceIdentifier:(id)self0;
- (WebBookmark)bookmark;
- (double)lastViewedTime;
- (id)_addressFromURL:(id)l;
- (id)_determineURL;
- (id)copyWithZone:(_NSZone *)zone;
- (id)duplicate;
- (id)duplicatePreservingUUID;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)mutableDuplicate;
- (int)identifier;
- (int)orderIndex;
- (int)parentIdentifier;
- (unint64_t)hash;
- (void)_setLocalURLString:(id)string;
- (void)_updateBookmarkWithURL:(id)l shouldSync:(BOOL)sync;
- (void)encodeWithCoder:(id)coder;
- (void)setBookmark:(id)bookmark;
@end

@implementation WBTab

- (NSString)uuid
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  uUID = [value UUID];

  return uUID;
}

- (WebBookmark)bookmark
{
  [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
  bookmarkStorage = self->_bookmarkStorage;

  return [(WBSCopyOnWriteValue *)bookmarkStorage value];
}

- (int)identifier
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  identifier = [value identifier];

  return identifier;
}

- (BOOL)isPinned
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isPinned = [value isPinned];

  return isPinned;
}

- (BOOL)isSyncable
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isSyncable = [value isSyncable];

  return isSyncable;
}

- (NSURL)url
{
  os_unfair_lock_lock(&self->_cachedURLUnfairLock);
  v3 = self->_cachedURL;
  os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
  if (!v3)
  {
    _determineURL = [(WBTab *)self _determineURL];
    v5 = _determineURL;
    if (_determineURL)
    {
      null = _determineURL;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v3 = null;

    os_unfair_lock_lock(&self->_cachedURLUnfairLock);
    objc_storeStrong(&self->_cachedURL, v3);
    os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

- (id)_determineURL
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  extraAttributes = [value extraAttributes];
  v5 = [extraAttributes objectForKeyedSubscript:@"LocalURL"];

  if ([v5 length])
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    value2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    address = [value2 address];

    v9 = [MEMORY[0x277CBEBC0] URLWithString:address];
    if ([address length] && objc_msgSend(v9, "safari_isHTTPFamilyURL"))
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  uuid = [(WBTab *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isBlank
{
  v2 = [(WBTab *)self url];
  v3 = v2 == 0;

  return v3;
}

- (NSString)title
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  extraAttributes = [value extraAttributes];
  v5 = [extraAttributes objectForKeyedSubscript:@"LocalTitle"];

  if ([v5 length])
  {
    title = v5;
  }

  else
  {
    value2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    title = [value2 title];
  }

  return title;
}

+ (id)startPageTabWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self alloc];
  v6 = _WBSLocalizedString();
  v7 = [v5 initWithTitle:v6 url:0 deviceIdentifier:identifierCopy];

  return v7;
}

+ (id)pinnedTabWithTitle:(id)title url:(id)url deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  urlCopy = url;
  titleCopy = title;
  v11 = [[self alloc] initWithUUID:0 title:titleCopy url:urlCopy pinned:1 pinnedTitle:titleCopy pinnedURL:urlCopy localAttributes:0 deviceIdentifier:identifierCopy];

  return v11;
}

- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url deviceIdentifier:(id)identifier isPrivateBrowsing:(BOOL)browsing
{
  result = [(WBTab *)self initWithUUID:d title:title url:url deviceIdentifier:identifier];
  result->_privateBrowsing = browsing;
  return result;
}

- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url deviceIdentifier:(id)identifier lastVisitTime:(id)time
{
  dCopy = d;
  titleCopy = title;
  urlCopy = url;
  timeCopy = time;
  if (titleCopy)
  {
    v16 = titleCopy;
  }

  else
  {
    v16 = &stru_288259858;
  }

  v17 = v16;
  identifierCopy = identifier;
  v19 = [[WebBookmark alloc] initWithTitle:v17 address:&stru_288259858 parentID:0 deviceIdentifier:identifierCopy collectionType:1];

  if (dCopy)
  {
    [(WebBookmark *)v19 _setUUID:dCopy];
  }

  if (timeCopy)
  {
    [(WebBookmark *)v19 setLocalAttributesValue:timeCopy forKey:*MEMORY[0x277D4A570]];
    [(WebBookmark *)v19 setTabDateLastViewed:timeCopy];
  }

  v20 = [(WBTab *)self initWithBookmark:v19];
  v21 = v20;
  if (v20)
  {
    [(WBTab *)v20 _updateBookmarkWithURL:urlCopy shouldSync:0];
    [(WBTab *)v21 _updateBookmarkWithURL:urlCopy shouldSync:1];
    v21->_modified = 0;
    [(WebBookmark *)v19 setModifiedAttributes:0];
    v22 = v21;
  }

  return v21;
}

- (WBTab)initWithUUID:(id)d title:(id)title url:(id)url pinned:(BOOL)pinned pinnedTitle:(id)pinnedTitle pinnedURL:(id)l localAttributes:(id)attributes deviceIdentifier:(id)self0
{
  pinnedCopy = pinned;
  pinnedTitleCopy = pinnedTitle;
  lCopy = l;
  attributesCopy = attributes;
  v19 = [(WBTab *)self initWithUUID:d title:title url:url deviceIdentifier:identifier];
  v20 = v19;
  if (v19)
  {
    value = [(WBSCopyOnWriteValue *)v19->_bookmarkStorage value];
    absoluteString = [lCopy absoluteString];
    [value setPinned:pinnedCopy title:pinnedTitleCopy address:absoluteString];

    dictionaryRepresentation = [attributesCopy dictionaryRepresentation];
    [value setLocalAttributes:dictionaryRepresentation];

    [value setNeedsSyncUpdate:0];
    [value setModifiedAttributes:0];
    v24 = v20;
  }

  return v20;
}

- (WBTab)initWithBookmark:(id)bookmark
{
  v4 = MEMORY[0x277D499E0];
  bookmarkCopy = bookmark;
  v6 = [[v4 alloc] initWithValue:bookmarkCopy];

  v7 = [(WBTab *)self initWithBookmarkStorage:v6];
  return v7;
}

- (WBTab)initWithBookmarkStorage:(id)storage
{
  v24 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v21.receiver = self;
  v21.super_class = WBTab;
  v6 = [(WBTab *)&v21 init];
  if (v6)
  {
    value = [storageCopy value];

    if (value)
    {
      objc_storeStrong(&v6->_bookmarkStorage, storage);
      objc_opt_class();
      v6->_isMutable = objc_opt_isKindOfClass() & 1;
      v6->_cachedURLUnfairLock._os_unfair_lock_opaque = 0;
      uuid = [(WBTab *)v6 uuid];
      if (uuid)
      {
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:uuid];

        if (!v12)
        {
          v15 = WBS_LOG_CHANNEL_PREFIXTabGroup(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            privacyPreservingDescription = [(WBTab *)v6 privacyPreservingDescription];
            *buf = 138543362;
            v23 = privacyPreservingDescription;
            _os_log_impl(&dword_272C20000, v16, OS_LOG_TYPE_DEFAULT, "WBTab initialized with a malformed UUID %{public}@", buf, 0xCu);
          }
        }

        goto LABEL_14;
      }

      v19 = WBS_LOG_CHANNEL_PREFIXTabGroup(0, v10);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        [(WBTab *)v19 initWithBookmarkStorage:v6];
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXTabGroup(v8, v9);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [(WBTab *)v18 initWithBookmarkStorage:v6];
      }

      uuid = v6;
    }

    v6 = 0;
LABEL_14:
  }

  return v6;
}

- (WBTab)initWithBookmark:(id)bookmark isPrivateBrowsing:(BOOL)browsing
{
  v5 = [(WBTab *)self initWithBookmark:bookmark];
  v6 = v5;
  if (v5)
  {
    v5->_privateBrowsing = browsing;
    v7 = v5;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uuid = [(WBTab *)self uuid];
      uuid2 = [(WBTab *)v5 uuid];

      v8 = WBSIsEqual();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_isMutable)
  {
    v5 = [WBTab allocWithZone:?];
    v6 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage copyWithZone:zone];
    v7 = [(WBTab *)v5 initWithBookmarkStorage:v6];

    v8 = [(NSString *)self->_tabGroupUUID copy];
    v9 = *(v7 + 16);
    *(v7 + 16) = v8;

    *(v7 + 24) = self->_added;
    *(v7 + 26) = self->_moved;
    *(v7 + 25) = self->_modified;
    *(v7 + 27) = self->_inUnnamedTabGroup;
    *(v7 + 28) = self->_privateBrowsing;
    *(v7 + 29) = self->_shared;
    return v7;
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [WBMutableTab alloc];
  v6 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage copyWithZone:zone];
  v7 = [(WBTab *)v5 initWithBookmarkStorage:v6];

  [(WBMutableTab *)v7 setTabGroupUUID:self->_tabGroupUUID];
  [(WBMutableTab *)v7 setAdded:self->_added];
  [(WBMutableTab *)v7 setMoved:self->_moved];
  [(WBMutableTab *)v7 setModified:self->_modified];
  [(WBMutableTab *)v7 setInUnnamedTabGroup:self->_inUnnamedTabGroup];
  [(WBMutableTab *)v7 setPrivateBrowsing:self->_privateBrowsing];
  [(WBMutableTab *)v7 setShared:self->_shared];
  return v7;
}

- (WBTab)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bookmark"];
  v6 = [(WBTab *)self initWithBookmark:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tabGroupUUID"];
    tabGroupUUID = v6->_tabGroupUUID;
    v6->_tabGroupUUID = v7;

    v6->_privateBrowsing = [coderCopy decodeBoolForKey:@"privateBrowsing"];
    v6->_inUnnamedTabGroup = [coderCopy decodeBoolForKey:@"local"];
    v6->_shared = [coderCopy decodeBoolForKey:@"shared"];
    v9 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  bookmarkStorage = self->_bookmarkStorage;
  coderCopy = coder;
  value = [(WBSCopyOnWriteValue *)bookmarkStorage value];
  [coderCopy encodeObject:value forKey:@"bookmark"];

  [coderCopy encodeObject:self->_tabGroupUUID forKey:@"tabGroupUUID"];
  [coderCopy encodeBool:self->_privateBrowsing forKey:@"privateBrowsing"];
  [coderCopy encodeBool:self->_inUnnamedTabGroup forKey:@"local"];
  [coderCopy encodeBool:self->_shared forKey:@"shared"];
}

- (WBTab)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [WebBookmark alloc];
  v6 = [representationCopy safari_dictionaryForKey:@"bookmark"];
  v7 = [(WebBookmark *)v5 initWithDictionaryRepresentationForInMemoryChangeTracking:v6];

  if ([(WebBookmark *)v7 isFolder]|| (self = [(WBTab *)self initWithBookmark:v7]) == 0)
  {
    selfCopy = 0;
  }

  else
  {
    v8 = [representationCopy safari_stringForKey:@"tabGroupUUID"];
    tabGroupUUID = self->_tabGroupUUID;
    self->_tabGroupUUID = v8;

    self->_privateBrowsing = [representationCopy safari_BOOLForKey:@"privateBrowsing"];
    self->_inUnnamedTabGroup = [representationCopy safari_BOOLForKey:@"local"];
    self->_shared = [representationCopy safari_BOOLForKey:@"shared"];
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  dictionaryRepresentationForInMemoryChangeTracking = [value dictionaryRepresentationForInMemoryChangeTracking];
  [dictionary setObject:dictionaryRepresentationForInMemoryChangeTracking forKeyedSubscript:@"bookmark"];

  [dictionary setObject:self->_tabGroupUUID forKeyedSubscript:@"tabGroupUUID"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_privateBrowsing];
  [dictionary setObject:v6 forKeyedSubscript:@"privateBrowsing"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_inUnnamedTabGroup];
  [dictionary setObject:v7 forKeyedSubscript:@"local"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_shared];
  [dictionary setObject:v8 forKeyedSubscript:@"shared"];

  return dictionary;
}

- (BOOL)hasSameUUIDAndURLAsTab:(id)tab
{
  tabCopy = tab;
  uuidString = [tabCopy uuidString];
  uuidString2 = [(WBTab *)self uuidString];
  v7 = [uuidString isEqualToString:uuidString2];

  if (v7)
  {
    v8 = [tabCopy url];
    v9 = [(WBTab *)self url];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (double)lastViewedTime
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  dateLastViewed = [value dateLastViewed];
  [dateLastViewed timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (void)setBookmark:(id)bookmark
{
  v4 = MEMORY[0x277D499E0];
  bookmarkCopy = bookmark;
  v6 = [[v4 alloc] initWithValue:bookmarkCopy];

  bookmarkStorage = self->_bookmarkStorage;
  self->_bookmarkStorage = v6;
}

- (NSString)URLString
{
  v2 = [(WBTab *)self url];
  absoluteString = [v2 absoluteString];

  return absoluteString;
}

- (NSString)deviceIdentifier
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  deviceIdentifier = [value deviceIdentifier];

  return deviceIdentifier;
}

- (int)parentIdentifier
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  parentID = [value parentID];

  return parentID;
}

- (WBLocalTabAttributes)localAttributes
{
  v3 = [WBLocalTabAttributes alloc];
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  localAttributes = [value localAttributes];
  v6 = [(WBLocalTabAttributes *)v3 initWithDictionaryRepresentation:localAttributes];

  return v6;
}

- (NSURL)syncableURL
{
  v2 = MEMORY[0x277CBEBC0];
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  address = [value address];
  v5 = [v2 URLWithString:address];

  return v5;
}

- (void)_updateBookmarkWithURL:(id)l shouldSync:(BOOL)sync
{
  syncCopy = sync;
  lCopy = l;
  v16 = lCopy;
  if (syncCopy)
  {
    v7 = [(WBTab *)self _addressFromURL:lCopy];
    value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    address = [value address];
    v10 = [v7 isEqualToString:address];

    if ((v10 & 1) == 0)
    {
      os_unfair_lock_lock(&self->_cachedURLUnfairLock);
      cachedURL = self->_cachedURL;
      self->_cachedURL = 0;

      os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
      self->_modified = 1;
      [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
      v12 = [(WBTab *)self _addressFromURL:v16];
      value2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
      [value2 setAddress:v12];
    }
  }

  else
  {
    absoluteString = [lCopy absoluteString];
    v7 = absoluteString;
    if (absoluteString)
    {
      v15 = absoluteString;
    }

    else
    {
      v15 = &stru_288259858;
    }

    [(WBTab *)self _setLocalURLString:v15];
  }
}

- (void)_setLocalURLString:(id)string
{
  stringCopy = string;
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  extraAttributes = [value extraAttributes];
  v6 = [extraAttributes objectForKeyedSubscript:@"LocalURL"];
  v7 = [stringCopy isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    os_unfair_lock_lock(&self->_cachedURLUnfairLock);
    cachedURL = self->_cachedURL;
    self->_cachedURL = 0;

    os_unfair_lock_unlock(&self->_cachedURLUnfairLock);
    self->_modified = 1;
    [(WBSCopyOnWriteValue *)self->_bookmarkStorage willModify];
    value2 = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    [value2 setExtraAttributesValue:stringCopy forKey:@"LocalURL"];
  }
}

- (BOOL)isMarkedAsRead
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isMarkedAsRead = [value isMarkedAsRead];

  return isMarkedAsRead;
}

- (WBSCRDTPosition)syncPosition
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  syncPosition = [value syncPosition];

  return syncPosition;
}

- (int)orderIndex
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  orderIndex = [value orderIndex];

  return orderIndex;
}

- (BOOL)isInserted
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  isInserted = [value isInserted];

  return isInserted;
}

- (NSString)pinnedTitle
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  pinnedTitle = [value pinnedTitle];

  return pinnedTitle;
}

- (NSURL)pinnedURL
{
  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  pinnedAddress = [value pinnedAddress];

  if (pinnedAddress)
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:pinnedAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isIdentical:(id)identical
{
  identicalCopy = identical;
  if (WBSIsEqual() && (v5 = -[WBTab isPinned](self, "isPinned"), v5 == [identicalCopy isPinned]) && (-[WBTab title](self, "title"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(identicalCopy, "title"), v7 = objc_claimAutoreleasedReturnValue(), v8 = WBSIsEqual(), v7, v6, v8) && (-[WBSCopyOnWriteValue value](self->_bookmarkStorage, "value"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "extraAttributes"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:", @"LocalURL"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(identicalCopy[1], "value"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "extraAttributes"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", @"LocalURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = WBSIsEqual(), v14, v13, v12, v11, v10, v9, v15))
  {
    value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
    address = [value address];
    value2 = [identicalCopy[1] value];
    address2 = [value2 address];
    v20 = WBSIsEqual();
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)duplicate
{
  v3 = [WBMutableTab alloc];
  deviceIdentifier = [(WBTab *)self deviceIdentifier];
  v5 = [(WBTab *)v3 initWithUUID:0 deviceIdentifier:deviceIdentifier];

  [(WBMutableTab *)v5 adoptAttributesFromTab:self];
  v6 = [(WBMutableTab *)v5 copy];

  return v6;
}

- (id)mutableDuplicate
{
  v3 = [WBMutableTab alloc];
  deviceIdentifier = [(WBTab *)self deviceIdentifier];
  v5 = [(WBTab *)v3 initWithUUID:0 deviceIdentifier:deviceIdentifier];

  [(WBMutableTab *)v5 adoptAttributesFromTab:self];

  return v5;
}

- (id)duplicatePreservingUUID
{
  v3 = [WBMutableTab alloc];
  uuid = [(WBTab *)self uuid];
  deviceIdentifier = [(WBTab *)self deviceIdentifier];
  v6 = [(WBTab *)v3 initWithUUID:uuid deviceIdentifier:deviceIdentifier];

  [(WBMutableTab *)v6 adoptAttributesFromTab:self];
  v7 = [(WBMutableTab *)v6 copy];

  return v7;
}

- (id)_addressFromURL:(id)l
{
  lCopy = l;
  if ([lCopy safari_isHTTPFamilyURL])
  {
    absoluteString = [lCopy absoluteString];
  }

  else
  {
    absoluteString = &stru_288259858;
  }

  return absoluteString;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  tabGroupUUID = [(WBTab *)self tabGroupUUID];
  title = [(WBTab *)self title];
  v8 = [(WBTab *)self url];
  uuid = [(WBTab *)self uuid];
  v10 = [v3 stringWithFormat:@"<%@: %p tabGroupUUID = %@; title = %@; url = %@; uuid = %@>", v5, self, tabGroupUUID, title, v8, uuid];;

  return v10;
}

- (NSString)privacyPreservingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uuid = [(WBTab *)self uuid];
  v7 = [v3 stringWithFormat:@"<%@: %p uuid = %@>", v5, self, uuid];;

  return v7;
}

- (NSString)debugSyncDescription
{
  v3 = MEMORY[0x277CCAB68];
  title = [(WBTab *)self title];
  uuid = [(WBTab *)self uuid];
  v6 = [v3 stringWithFormat:@"%@, UUID: %@", title, uuid];

  value = [(WBSCopyOnWriteValue *)self->_bookmarkStorage value];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__WBTab_debugSyncDescription__block_invoke;
  v11[3] = &unk_279E75E40;
  v12 = v6;
  v8 = v6;
  [value getReadOnlyCachedBookmarkSyncDataUsingBlock:v11];

  v9 = [v8 copy];

  return v9;
}

void __29__WBTab_debugSyncDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v5 = [a2 record];
  v3 = [v5 recordID];
  v4 = [v3 ckShortDescription];
  [v2 appendFormat:@", recordID: %@", v4];
}

- (BOOL)canCloseAutomaticallyForInterval:(double)interval
{
  isSyncable = [(WBTab *)self isSyncable];
  if (isSyncable)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabs(isSyncable, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v33 = 0;
      v8 = "Not automatically closable because the tab is syncable.";
      v9 = &v33;
LABEL_19:
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
      return 0;
    }

    return 0;
  }

  isPinned = [(WBTab *)self isPinned];
  if (isPinned)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabs(isPinned, v11);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v32 = 0;
      v8 = "Not automatically closable because tab is pinned.";
      v9 = &v32;
      goto LABEL_19;
    }

    return 0;
  }

  localAttributes = [(WBTab *)self localAttributes];
  lastVisitTime = [localAttributes lastVisitTime];

  if (!lastVisitTime)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXTabs(v14, v15);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v31 = 0;
      v8 = "Not automatically closable because lastViewedTime is unknown.";
      v9 = &v31;
      goto LABEL_19;
    }

    return 0;
  }

  isBlank = [(WBTab *)self isBlank];
  if (isBlank)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXTabs(isBlank, v17);
    v19 = 1;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_272C20000, v18, OS_LOG_TYPE_INFO, "Tab is automatically closable because it is blank.", buf, 2u);
    }
  }

  else
  {
    localAttributes2 = [(WBTab *)self localAttributes];
    lastVisitTime2 = [localAttributes2 lastVisitTime];
    [lastVisitTime2 timeIntervalSinceNow];
    v23 = -v22;

    v26 = WBS_LOG_CHANNEL_PREFIXTabs(v24, v25);
    v7 = v26;
    if (v23 <= interval)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = 0;
        v8 = "Not automatically closable because its lastVisitTime does not cross threshold.";
        v9 = &v28;
        goto LABEL_19;
      }

      return 0;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Tab is automatically closable because lastVisitTime is beyond threshold from user preference.", v29, 2u);
    }

    return 1;
  }

  return v19;
}

- (void)initWithBookmarkStorage:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_272C20000, v5, v6, "WBTab must have a UUID %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

- (void)initWithBookmarkStorage:(void *)a1 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 privacyPreservingDescription];
  LODWORD(v11) = 138543362;
  *(&v11 + 4) = v4;
  OUTLINED_FUNCTION_0(&dword_272C20000, v5, v6, "WBTab must be backed by a bookmark %{public}@", v7, v8, v9, v10, v11, DWORD2(v11));
}

@end