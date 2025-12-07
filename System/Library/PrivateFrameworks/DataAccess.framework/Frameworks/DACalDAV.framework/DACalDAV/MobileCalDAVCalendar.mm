@interface MobileCalDAVCalendar
+ (BOOL)clearCalendarChanges:(__CFArray *)changes forPrincipal:(id)principal changeTrackingClient:(id)client;
+ (BOOL)shouldSkipCalendar:(void *)calendar withChangeType:(int)type;
+ (__CFArray)gatherCalendarChangesInPrincipal:(id)principal calendars:(id)calendars adds:(id *)adds modifies:(id *)modifies deletes:(id *)deletes changeTracker:(id)tracker;
+ (id)calURLToUIDCache;
+ (id)calendarWithCalCalendar:(void *)calendar principal:(id)principal;
+ (int)cachedCalendarUIDForURLString:(id)string;
+ (void)cacheCalendarUID:(int)d forCalendarURLString:(id)string;
+ (void)clearCalendarUIDCache;
+ (void)processAddedCalendar:(id)calendar;
+ (void)processModifiedCalendar:(id)calendar oldFlags:(unsigned int)flags newFlags:(unsigned int)newFlags;
+ (void)removeUIDCacheEntryForCalendarURLString:(id)string;
- (BOOL)_isDeleted:(id)deleted;
- (BOOL)_removeCalendarItemWithURL:(id)l;
- (BOOL)_shouldRecordError:(id)error;
- (BOOL)canBePublished;
- (BOOL)canBeShared;
- (BOOL)deleteResourcesAtURLs:(id)ls;
- (BOOL)hasCalendarErrorOfType:(unint64_t)type;
- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)l;
- (BOOL)hasEvents;
- (BOOL)isAffectingAvailability;
- (BOOL)isEditable;
- (BOOL)isEventContainer;
- (BOOL)isFamilyCalendar;
- (BOOL)isHidden;
- (BOOL)isMarkedImmutableSharees;
- (BOOL)isMarkedUndeletable;
- (BOOL)isPublished;
- (BOOL)isRenameable;
- (BOOL)isSubscribed;
- (BOOL)isTaskContainer;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l;
- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d;
- (BOOL)updateResourcesFromServer:(id)server;
- (CalDAVPrincipal)principal;
- (CalDiagCalendarCollectionSync)calendarCollectionSyncDiagnostics;
- (CalRecordID)recordIDForExternalIdentifier:(id)identifier;
- (CalRecordID)recordIDForUniqueIdentifier:(id)identifier;
- (MobileCalDAVCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title;
- (NSArray)newlyAddedItems;
- (NSArray)shareeActions;
- (NSDictionary)bulkRequests;
- (NSSet)allItemURLs;
- (NSSet)preferredCalendarUserAddresses;
- (NSSet)sharees;
- (NSString)accountID;
- (NSString)color;
- (NSString)ctag;
- (NSString)description;
- (NSString)displayColor;
- (NSString)lastSyncTitle;
- (NSString)notes;
- (NSString)ownerDisplayName;
- (NSString)ownerEmailAddress;
- (NSString)ownerPhoneNumber;
- (NSString)pushKey;
- (NSString)symbolicColorName;
- (NSString)syncToken;
- (NSString)title;
- (NSURL)calendarURL;
- (NSURL)owner;
- (NSURL)prePublishURL;
- (NSURL)publishURL;
- (id)_actionsForJunkItemsInModifiedItems:(id)items alreadySentItems:(id)sentItems;
- (id)_calExternalRep;
- (id)_copyDeletedEventActions;
- (id)_createActionsForItems:(id)items withAction:(int)action alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save;
- (id)_itemPropertyDictForItemAtIndex:(int64_t)index withChangedIDs:(__CFArray *)ds withChangedRowids:(__CFArray *)rowids withExternalIDs:(__CFArray *)iDs uniqueIdentifiers:(__CFArray *)identifiers significantAttributeChanges:(__CFArray *)changes oldCalendarIDs:(__CFArray *)calendarIDs entityType:(int)self0;
- (id)_preferredAddress;
- (id)_recurrenceSplitActionsForItems:(id)items alreadySentItems:(id)sentItems;
- (id)calendarUserAddresses;
- (id)copyAddedItems;
- (id)copyAllItems;
- (id)copyDeletedItems;
- (id)copyModifiedItems;
- (id)copyRecurrenseSplitItems;
- (id)etagsForItemURLs:(id)ls;
- (id)removeInvitationsForItemWithUniqueIdentifier:(id)identifier;
- (int)order;
- (int)sharingStatus;
- (int64_t)maxAttendees;
- (void)_addAddedItemsOfType:(int)type toArray:(id)array;
- (void)_addAddedRecurrenceSplitItemsToArray:(id)array;
- (void)_addCalendarItemWithRowID:(int)d toArrayIfNeeded:(id)needed withChangeRowid:(int)rowid changeType:(id)type;
- (void)_addShareeWithRowID:(id)d toDictionaryIfNeeded:(id)needed;
- (void)_clearChanges:(id)changes shouldClearAttachmentChanges:(BOOL)attachmentChanges;
- (void)_clearChangesAtIndices:(id)indices forType:(int)type;
- (void)_clearChangesFromItem:(id)item;
- (void)_clearChangesFromItem:(id)item shouldClearAttachmentChanges:(BOOL)changes;
- (void)_clearExistingHTTPErrorForCalItem:(void *)item;
- (void)_collectShareeActions;
- (void)_copyCalItemWithExternalID:(id)d;
- (void)_copyCalItemWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store;
- (void)_dropCalStoreContext;
- (void)_gatherDeletedChanges:(void *)changes inDictionary:(id)dictionary;
- (void)_gatherModifiedEventsInArray:(id)array;
- (void)_gatherModifiedItemsFromCalChangesCall:(void *)call forType:(id)type inArray:(id)array;
- (void)_gatherModifiedTasksInArray:(id)array;
- (void)_recordError:(id)error forCalItem:(void *)item;
- (void)_saveChanges:(id)changes;
- (void)_saveChangesAtIndices:(id)indices forType:(int)type;
- (void)_saveChangesForItem:(id)item;
- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos;
- (void)_updateCalendarInfo;
- (void)addChangesToBeCleared:(__CFArray *)cleared forEntityType:(int)type;
- (void)clearCalendarErrorOfType:(unint64_t)type;
- (void)clearChangesForEntityType:(int)type;
- (void)clearEventChanges;
- (void)clearShareeActions;
- (void)correctLocationPredictionStateForRecurrenceSets:(id)sets calDB:(CalDatabase *)b;
- (void)createSyncActions;
- (void)dealloc;
- (void)deleteAction:(id)action completedWithError:(id)error;
- (void)deleteCalendar;
- (void)flushCaches;
- (void)generateICSForActions;
- (void)getCalCalendar;
- (void)initCalCalendarWithTitle:(id)title;
- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block;
- (void)prepareSyncActionsWithCompletionBlock:(id)block;
- (void)putAction:(id)action completedWithError:(id)error;
- (void)recordCalendarError:(id)error ofType:(unint64_t)type;
- (void)recordDiagnosticsForAccountSync:(id)sync;
- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag;
- (void)recurrenceSplitAction:(id)action failedWithError:(id)error;
- (void)recurrenceSplitActionsCompletedWithError:(id)error;
- (void)reportJunkAction:(id)action completedWithError:(id)error;
- (void)setBulkRequests:(id)requests;
- (void)setCalendarURL:(id)l;
- (void)setCanBePublished:(BOOL)published;
- (void)setCanBeShared:(BOOL)shared;
- (void)setColor:(id)color;
- (void)setCtag:(id)ctag;
- (void)setExternalIdentifier:(id)identifier forRecordID:(CalRecordID *)d;
- (void)setGuid:(id)guid;
- (void)setIsAffectingAvailability:(BOOL)availability;
- (void)setIsDirty:(BOOL)dirty;
- (void)setIsEditable:(BOOL)editable;
- (void)setIsEventContainer:(BOOL)container;
- (void)setIsFamilyCalendar:(BOOL)calendar;
- (void)setIsMarkedImmutableSharees:(BOOL)sharees;
- (void)setIsMarkedUndeletable:(BOOL)undeletable;
- (void)setIsPublished:(BOOL)published;
- (void)setIsRenameable:(BOOL)renameable;
- (void)setIsSubscribed:(BOOL)subscribed;
- (void)setIsTaskContainer:(BOOL)container;
- (void)setMaxAttendees:(int64_t)attendees;
- (void)setNewlyAddedItems:(id)items;
- (void)setNotes:(id)notes;
- (void)setOrder:(int)order;
- (void)setOwner:(id)owner;
- (void)setOwnerDisplayName:(id)name;
- (void)setPreferredCalendarUserAddresses:(id)addresses;
- (void)setPublishURL:(id)l;
- (void)setPushKey:(id)key;
- (void)setSharees:(id)sharees;
- (void)setSharingStatus:(int)status;
- (void)setSymbolicColorName:(id)name;
- (void)setSyncToken:(id)token;
- (void)setTitle:(id)title;
- (void)setUniqueIdentifier:(id)identifier forRecordID:(CalRecordID *)d;
- (void)syncDidFinishWithError:(id)error;
@end

@implementation MobileCalDAVCalendar

+ (id)calendarWithCalCalendar:(void *)calendar principal:(id)principal
{
  principalCopy = principal;
  if (calendar)
  {
    if (CalCalendarGetSharingStatus() == 3)
    {
      calendar = 0;
      goto LABEL_13;
    }

    v6 = CalCalendarCopyTitle();
    v7 = CalCalendarCopyExternalID();
    calendarHomeURL = [principalCopy calendarHomeURL];
    v9 = [v7 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

    if (CalCalendarIsInbox())
    {
      v10 = MobileCalDAVInboxCalendar;
    }

    else if (CalCalendarIsNotificationsCollection())
    {
      v10 = MobileCalDAVNotificationCalendar;
    }

    else
    {
      if (CalCalendarIsSubscribed())
      {
        subCalPropertiesByURL = [principalCopy subCalPropertiesByURL];
        absoluteString = [v9 absoluteString];
        v13 = [subCalPropertiesByURL objectForKeyedSubscript:absoluteString];

        calendar = [[MobileCalDAVSubscribedCalendar alloc] initWithCalendarURL:v9 calendar:calendar properties:v13 principal:principalCopy];
LABEL_12:

        goto LABEL_13;
      }

      v10 = MobileCalDAVCalendar;
    }

    calendar = [[v10 alloc] initWithCalendarURL:v9 calendar:calendar principal:principalCopy title:v6];
    goto LABEL_12;
  }

LABEL_13:

  return calendar;
}

- (MobileCalDAVCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title
{
  lCopy = l;
  principalCopy = principal;
  titleCopy = title;
  v29.receiver = self;
  v29.super_class = MobileCalDAVCalendar;
  v13 = [(MobileCalDAVCalendar *)&v29 init];
  v14 = v13;
  if (v13)
  {
    [(MobileCalDAVCalendar *)v13 setPrincipal:principalCopy];
    [(MobileCalDAVCalendar *)v14 setIsEnabled:1];
    [(MobileCalDAVCalendar *)v14 setIsDirty:0];
    principal = [(MobileCalDAVCalendar *)v14 principal];
    calendarHomeURL = [principal calendarHomeURL];
    v17 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
    calendarURLString = v14->_calendarURLString;
    v14->_calendarURLString = v17;

    if (calendar)
    {
      v14->_calCalendar = calendar;
      CFRetain(calendar);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v14 selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
    }

    else if (![(MobileCalDAVCalendar *)v14 getCalCalendar])
    {
      v14->_calCalendar = [(MobileCalDAVCalendar *)v14 initCalCalendarWithTitle:titleCopy];
    }

    if ([(MobileCalDAVCalendar *)v14 calCalendar])
    {
      [(MobileCalDAVCalendar *)v14 _updateCalendarInfo];
      v20 = CalCalendarCopyExternalIdentificationTag();
      if (v20)
      {
        da_newGUID = v20;
        objc_storeStrong(&v14->_guid, v20);
      }

      else
      {
        da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
        [(MobileCalDAVCalendar *)v14 setGuid:da_newGUID];
      }
    }

    calendarURLString = [(MobileCalDAVCalendar *)v14 calendarURLString];

    if (calendarURLString)
    {
      [(MobileCalDAVCalendar *)v14 calCalendar];
      UID = CalCalendarGetUID();
      calendarURLString2 = [(MobileCalDAVCalendar *)v14 calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString2];
    }

    v25 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setUniqueIdentifierToRecordIDMap:v25];

    v26 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setURLToRecordIDMap:v26];

    v27 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setURLToEtagMap:v27];
  }

  return v14;
}

- (void)dealloc
{
  [(MobileCalDAVCalendar *)self _dropCalStoreContext];
  v3.receiver = self;
  v3.super_class = MobileCalDAVCalendar;
  [(MobileCalDAVCalendar *)&v3 dealloc];
}

+ (id)calURLToUIDCache
{
  if (calURLToUIDCache_onceToken != -1)
  {
    +[MobileCalDAVCalendar calURLToUIDCache];
  }

  v3 = calURLToUIDCache_sCalURLToUIDCache;

  return v3;
}

uint64_t __40__MobileCalDAVCalendar_calURLToUIDCache__block_invoke()
{
  calURLToUIDCache_sCalURLToUIDCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)cacheCalendarUID:(int)d forCalendarURLString:(id)string
{
  if (string)
  {
    v4 = *&d;
    v6 = MEMORY[0x277CCABB0];
    stringCopy = string;
    v9 = [v6 numberWithInt:v4];
    calURLToUIDCache = [self calURLToUIDCache];
    [calURLToUIDCache setObject:v9 forKeyedSubscript:stringCopy];
  }
}

+ (void)removeUIDCacheEntryForCalendarURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    calURLToUIDCache = [self calURLToUIDCache];
    [calURLToUIDCache removeObjectForKey:stringCopy];
  }
}

+ (int)cachedCalendarUIDForURLString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([self calURLToUIDCache], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", stringCopy), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

+ (void)clearCalendarUIDCache
{
  calURLToUIDCache = [self calURLToUIDCache];
  [calURLToUIDCache removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v9 description];
  guid = [(MobileCalDAVCalendar *)self guid];
  title = [(MobileCalDAVCalendar *)self title];
  v7 = [v3 stringWithFormat:@"%@ [%@] %@", v4, guid, title];

  return v7;
}

- (void)deleteCalendar
{
  v12 = *MEMORY[0x277D85DE8];
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (getCalCalendar)
  {
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v6))
    {
      v10 = 67109120;
      LODWORD(v11) = CalCalendarGetUID();
      _os_log_impl(&dword_2484B2000, v5, v6, "Deleting calendar with uid %d", &v10, 8u);
    }

    CalRemoveCalendar();
    calCalendar = self->_calCalendar;
    if (calCalendar)
    {
      CFRelease(calCalendar);
      self->_calCalendar = 0;
    }
  }

  else
  {
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v4, *(MEMORY[0x277D03988] + 4)))
    {
      guid = [(MobileCalDAVCalendar *)self guid];
      v10 = 138412290;
      v11 = guid;
      _os_log_impl(&dword_2484B2000, v5, v8, "Couldn't find calendar with guid %@", &v10, 0xCu);
    }
  }
}

- (void)setIsDirty:(BOOL)dirty
{
  v10 = *MEMORY[0x277D85DE8];
  if (dirty)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      title = [(MobileCalDAVCalendar *)self title];
      v8 = 138412290;
      v9 = title;
      _os_log_impl(&dword_2484B2000, v5, v6, "Marking calendar %@ as dirty.", &v8, 0xCu);
    }
  }

  self->_isDirty = dirty;
}

- (void)setGuid:(id)guid
{
  v14 = *MEMORY[0x277D85DE8];
  guidCopy = guid;
  guid = [(MobileCalDAVCalendar *)self guid];
  v7 = guid;
  if (guid == guidCopy)
  {
  }

  else
  {
    guid2 = [(MobileCalDAVCalendar *)self guid];
    v9 = [guid2 isEqualToString:guidCopy];

    if ((v9 & 1) == 0)
    {
      if ([(MobileCalDAVCalendar *)self getCalCalendar])
      {
        CalCalendarSetExternalIdentificationTag();
      }

      else
      {
        v10 = DALoggingwithCategory();
        v11 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v10, v11))
        {
          v12 = 138412290;
          v13 = guidCopy;
          _os_log_impl(&dword_2484B2000, v10, v11, "Couldn't find a calendar with uid %@ to set the new guid on", &v12, 0xCu);
        }
      }

      objc_storeStrong(&self->_guid, guid);
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSURL)calendarURL
{
  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
  principal = [(MobileCalDAVCalendar *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v6 = [calendarURLString da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

  return v6;
}

- (void)setCalendarURL:(id)l
{
  lCopy = l;
  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
  principal = [(MobileCalDAVCalendar *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v8 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];

  da_appendSlashIfNeeded = [v8 da_appendSlashIfNeeded];

  if (calendarURLString != da_appendSlashIfNeeded && ([calendarURLString isEqualToString:da_appendSlashIfNeeded] & 1) == 0)
  {
    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:calendarURLString2];

      [(MobileCalDAVCalendar *)self setCalendarURLString:da_appendSlashIfNeeded];
      UID = CalCalendarGetUID();
      calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString3];

      calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
      CalCalendarSetExternalID();

      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }

    else
    {
      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v14, v15))
      {
        *v16 = 0;
        _os_log_impl(&dword_2484B2000, v14, v15, "Could not find a calendar to set a URL on", v16, 2u);
      }
    }
  }
}

- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos
{
  if ((todos & ~events) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (events)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (todos)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CanContainEntityType = CalCalendarCanContainEntityType();
    v8 = CalCalendarCanContainEntityType();
    if ((CanContainEntityType & (v8 ^ 1)) != 0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (!CanContainEntityType)
    {
      v9 = v10;
    }

    if (v9 != v6)
    {

      CalCalendarSetCanContainEntityType();
    }
  }
}

- (BOOL)isTaskContainer
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarCanContainEntityType();
  }

  return getCalCalendar;
}

- (void)setIsTaskContainer:(BOOL)container
{
  containerCopy = container;
  isEventContainer = [(MobileCalDAVCalendar *)self isEventContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  isEnabledForTodos = [WeakRetained isEnabledForTodos];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:isEventContainer supportsTodos:isEnabledForTodos & containerCopy];
}

- (BOOL)isEventContainer
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarCanContainEntityType();
  }

  return getCalCalendar;
}

- (void)setIsEventContainer:(BOOL)container
{
  containerCopy = container;
  isTaskContainer = [(MobileCalDAVCalendar *)self isTaskContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  isEnabledForEvents = [WeakRetained isEnabledForEvents];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:isEnabledForEvents & containerCopy supportsTodos:isTaskContainer];
}

- (BOOL)isSubscribed
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarIsSubscribed();
  }

  return getCalCalendar;
}

- (void)setIsSubscribed:(BOOL)subscribed
{
  if ([(MobileCalDAVCalendar *)self isSubscribed]!= subscribed && [(MobileCalDAVCalendar *)self getCalCalendar])
  {

    CalCalendarSetSubscribed();
  }
}

- (NSString)title
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyTitle();
  }

  return getCalCalendar;
}

- (void)setTitle:(id)title
{
  v19 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = titleCopy;
  if (titleCopy && ![titleCopy isEqualToString:&stru_285AB0D40])
  {
    user = v5;
  }

  else
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    user = [principal user];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
      v15 = 138412546;
      v16 = user;
      v17 = 2112;
      v18 = calendarURL;
      _os_log_impl(&dword_2484B2000, v8, v9, "Empty calendar title received. Setting calendar title to %@. Calendar URL: %@", &v15, 0x16u);
    }
  }

  title = [(MobileCalDAVCalendar *)self title];
  v12 = title;
  if (user == title)
  {
  }

  else
  {
    title2 = [(MobileCalDAVCalendar *)self title];
    v14 = [user isEqualToString:title2];

    if ((v14 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetTitle();
      CalCalendarSetLastSyncTitle();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)lastSyncTitle
{
  SyncTitle = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (SyncTitle)
  {
    SyncTitle = CalCalendarCopyLastSyncTitle();
  }

  return SyncTitle;
}

- (NSString)notes
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyNotes();
  }

  return getCalCalendar;
}

- (void)setNotes:(id)notes
{
  notesCopy = notes;
  notes = [(MobileCalDAVCalendar *)self notes];
  if ([notesCopy length])
  {
    v5 = notesCopy;
  }

  else
  {

    v5 = 0;
  }

  v7 = v5;
  if (v5 != notes && ([v5 isEqualToString:notes] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetNotes();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSString)color
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v3 = CalCalendarCopyColorString();
    if (!v3)
    {
      v3 = CalCalendarCopyColorStringForDisplay();
      if (v3)
      {
        CalCalendarSetColorString();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopyColorString();
    if ([colorCopy length] && v4 != colorCopy && (objc_msgSend(colorCopy, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetColorString();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)symbolicColorName
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopySymbolicColorName();
  }

  return getCalCalendar;
}

- (void)setSymbolicColorName:(id)name
{
  nameCopy = name;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopySymbolicColorName();
    if ([nameCopy length] && v4 != nameCopy && (objc_msgSend(nameCopy, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetSymbolicColorName();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)pushKey
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPushKey();
  }

  return getCalCalendar;
}

- (void)setPushKey:(id)key
{
  keyCopy = key;
  pushKey = [(MobileCalDAVCalendar *)self pushKey];
  if (pushKey != keyCopy && ([keyCopy isEqualToString:pushKey] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetPushKey();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSDictionary)bulkRequests
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopyBulkRequests();
  }

  else
  {
    v2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBulkRequests:(id)requests
{
  requestsCopy = requests;
  bulkRequests = [(MobileCalDAVCalendar *)self bulkRequests];
  if (bulkRequests != requestsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([requestsCopy isEqualToDictionary:bulkRequests] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
    {
      CalCalendarSetBulkRequests();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)canBePublished
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147320]();
  }

  return getCalCalendar;
}

- (void)setCanBePublished:(BOOL)published
{
  if ([(MobileCalDAVCalendar *)self canBePublished]!= published && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBePublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)canBeShared
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147328]();
  }

  return getCalCalendar;
}

- (void)setCanBeShared:(BOOL)shared
{
  if ([(MobileCalDAVCalendar *)self canBeShared]!= shared && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBeShared();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isFamilyCalendar
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x2821473D8]();
  }

  return getCalCalendar;
}

- (void)setIsFamilyCalendar:(BOOL)calendar
{
  if ([(MobileCalDAVCalendar *)self isFamilyCalendar]!= calendar && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsFamilyCalendar();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedUndeletable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147428]();
  }

  return getCalCalendar;
}

- (void)setIsMarkedUndeletable:(BOOL)undeletable
{
  if ([(MobileCalDAVCalendar *)self isMarkedUndeletable]!= undeletable && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsMarkedUndeletable();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedImmutableSharees
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147420]();
  }

  return getCalCalendar;
}

- (void)setIsMarkedImmutableSharees:(BOOL)sharees
{
  if ([(MobileCalDAVCalendar *)self isMarkedImmutableSharees]!= sharees && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsMarkedImmutableSharees();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (int64_t)maxAttendees
{
  result = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (result)
  {

    return MEMORY[0x282147348]();
  }

  return result;
}

- (void)setMaxAttendees:(int64_t)attendees
{
  if ([(MobileCalDAVCalendar *)self maxAttendees]!= attendees && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetMaxAttendees();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isPublished
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147340]();
  }

  return getCalCalendar;
}

- (void)setIsPublished:(BOOL)published
{
  if ([(MobileCalDAVCalendar *)self isPublished]!= published && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsPublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isAffectingAvailability
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x2821473A8]();
  }

  return getCalCalendar;
}

- (void)setIsAffectingAvailability:(BOOL)availability
{
  if ([(MobileCalDAVCalendar *)self isAffectingAvailability]!= availability && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsAffectingAvailability();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)publishURL
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPublishedURL();
  }

  return getCalCalendar;
}

- (void)setPublishURL:(id)l
{
  lCopy = l;
  publishURL = [(MobileCalDAVCalendar *)self publishURL];
  if (publishURL != lCopy && ([publishURL da_isEqualToDAVURL:lCopy] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetPublishedURL();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)prePublishURL
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPublishedURL();
  }

  return getCalCalendar;
}

- (NSString)ownerDisplayName
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopySharedOwnerName();
  }

  return getCalCalendar;
}

- (void)setOwnerDisplayName:(id)name
{
  nameCopy = name;
  ownerDisplayName = [(MobileCalDAVCalendar *)self ownerDisplayName];
  if (ownerDisplayName == nameCopy)
  {
  }

  else
  {
    ownerDisplayName2 = [(MobileCalDAVCalendar *)self ownerDisplayName];
    v6 = [nameCopy isEqualToString:ownerDisplayName2];

    if ((v6 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetSharedOwnerName();
      CalCalendarSetOwnerIdentityDisplayName();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (id)_preferredAddress
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CF6FF8];
  preferredCalendarUserAddresses = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [v3 preferredAddress:preferredCalendarUserAddresses];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (NSString)ownerEmailAddress
{
  v22 = *MEMORY[0x277D85DE8];
  _preferredAddress = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = _preferredAddress;
  if (_preferredAddress && ([_preferredAddress scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"mailto"), v5, v6))
  {
    resourceSpecifier = [v4 resourceSpecifier];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(calendarUserAddresses);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          scheme = [v13 scheme];
          v15 = [scheme hasPrefix:@"mailto"];

          if (v15)
          {
            resourceSpecifier = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    resourceSpecifier = 0;
  }

LABEL_14:

  return resourceSpecifier;
}

- (NSString)ownerPhoneNumber
{
  v22 = *MEMORY[0x277D85DE8];
  _preferredAddress = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = _preferredAddress;
  if (_preferredAddress && ([_preferredAddress scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"tel"), v5, v6))
  {
    resourceSpecifier = [v4 resourceSpecifier];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(calendarUserAddresses);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          scheme = [v13 scheme];
          v15 = [scheme hasPrefix:@"tel"];

          if (v15)
          {
            resourceSpecifier = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [calendarUserAddresses countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    resourceSpecifier = 0;
  }

LABEL_14:

  return resourceSpecifier;
}

- (id)calendarUserAddresses
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  preferredCalendarUserAddresses = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(preferredCalendarUserAddresses);
        }

        address = [*(*(&v11 + 1) + 8 * i) address];
        [v3 addObject:address];
      }

      v6 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSURL)owner
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopySharedOwnerAddress();
    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  absoluteString = [ownerCopy absoluteString];
  owner = [(MobileCalDAVCalendar *)self owner];
  absoluteString2 = [owner absoluteString];

  if (absoluteString != absoluteString2 && ([absoluteString isEqualToString:absoluteString2] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetSharedOwnerAddress();
    CalCalendarSetOwnerIdentityAddress();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSSet)preferredCalendarUserAddresses
{
  principal = [(MobileCalDAVCalendar *)self principal];
  v4 = [principal preferredCalendarUserAddressesForCalendar:self];

  return v4;
}

- (void)setPreferredCalendarUserAddresses:(id)addresses
{
  v22 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  principal = [(MobileCalDAVCalendar *)self principal];
  [principal setPreferredCalendarUserAddresses:addressesCopy forCalendar:self];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = addressesCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          address = [v12 address];
          absoluteString = [address absoluteString];

          if (absoluteString)
          {
            address2 = [v12 address];
            absoluteString2 = [address2 absoluteString];
            [array addObject:absoluteString2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    CalCalendarSetSharedOwnerAddresses();
  }
}

- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v6 = [calendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(calendarUserAddresses);
          }

          absoluteString = [*(*(&v12 + 1) + 8 * i) absoluteString];
          v10 = [MobileCalDAVPrincipal compareAddressURL:lCopy localString:absoluteString];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [calendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (int)order
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LODWORD(getCalCalendar) = CalCalendarGetDisplayOrder();
  }

  return getCalCalendar & ~(getCalCalendar >> 31);
}

- (void)setOrder:(int)order
{
  if ([(MobileCalDAVCalendar *)self order]!= order && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetDisplayOrder();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (int)sharingStatus
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    SharingStatus = CalCalendarGetSharingStatus();
    if (SharingStatus == 1)
    {
      LODWORD(getCalCalendar) = 1;
    }

    else
    {
      LODWORD(getCalCalendar) = 2 * (SharingStatus == 2);
    }
  }

  return getCalCalendar;
}

- (void)setSharingStatus:(int)status
{
  if ([(MobileCalDAVCalendar *)self sharingStatus]!= status && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    if (status == 2)
    {
      CalCalendarSetSharingStatus();
      WeakRetained = objc_loadWeakRetained(&self->_principal);
      account = [WeakRetained account];
      serverVersion = [account serverVersion];
      [serverVersion supportsSharingNoScheduling];
      CalCalendarSetSchedulingProhibited();
    }

    else if (status <= 1)
    {
      CalCalendarSetSharingStatus();
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }

  if (status == 2)
  {
    [(MobileCalDAVCalendar *)self getCalCalendar];
    IsSchedulingProhibited = CalCalendarIsSchedulingProhibited();
    v9 = objc_loadWeakRetained(&self->_principal);
    account2 = [v9 account];
    serverVersion2 = [account2 serverVersion];
    supportsSharingNoScheduling = [serverVersion2 supportsSharingNoScheduling];

    if (IsSchedulingProhibited != supportsSharingNoScheduling)
    {
      CalCalendarSetSchedulingProhibited();

      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (void)setSharees:(id)sharees
{
  v62 = *MEMORY[0x277D85DE8];
  v42 = [sharees mutableCopy];
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    v44 = getCalCalendar;
    v5 = CalCalendarCopySharees();
    selfCopy = self;
    v41 = v5;
    if ([v5 count])
    {
      v7 = 0;
      type = *(MEMORY[0x277D03988] + 6);
      *&v6 = 138412546;
      v40 = v6;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:{v7, v40}];

        obj = v8;
        v9 = CalShareeCopyAddress();
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v10 = v42;
        v11 = [v10 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v53;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v53 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v52 + 1) + 8 * i);
              acceptedURL = [v15 acceptedURL];
              if (acceptedURL)
              {
                acceptedURL2 = [v15 acceptedURL];
              }

              else
              {
                href = [v15 href];
                acceptedURL2 = [href payloadAsFullURL];
              }

              if ([v9 da_isEqualToDAVURL:acceptedURL2])
              {
                self = selfCopy;
                v5 = v41;
                if ([v15 updateCalSharee:obj])
                {
                  [(MobileCalDAVCalendar *)selfCopy setIsDirty:1];
                  v21 = DALoggingwithCategory();
                  if (os_log_type_enabled(v21, type))
                  {
                    title = [(MobileCalDAVCalendar *)selfCopy title];
                    *buf = v40;
                    v58 = v9;
                    v59 = 2112;
                    v60 = title;
                    _os_log_impl(&dword_2484B2000, v21, type, "Updating sharee %@ to calendar %@", buf, 0x16u);
                  }
                }

                [v10 removeObject:v15];

                goto LABEL_23;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v52 objects:v61 count:16];
            self = selfCopy;
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, type))
        {
          title2 = [(MobileCalDAVCalendar *)self title];
          *buf = v40;
          v58 = v9;
          v59 = 2112;
          v60 = title2;
          _os_log_impl(&dword_2484B2000, v19, type, "Removing sharee %@ from calendar %@ ", buf, 0x16u);
        }

        CalRemoveSharee();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
        v5 = v41;
LABEL_23:

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    v27 = [dbHelper calDatabaseForAccountID:accountID];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obja = v42;
    v28 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
    v29 = v44;
    if (v28)
    {
      v30 = v28;
      v31 = *v49;
      v32 = *(MEMORY[0x277D03988] + 6);
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v34 = *(*(&v48 + 1) + 8 * j);
          v35 = DALoggingwithCategory();
          if (os_log_type_enabled(v35, v32))
          {
            commonName = [v34 commonName];
            payloadAsString = [commonName payloadAsString];
            title3 = [(MobileCalDAVCalendar *)self title];
            *buf = 138412546;
            v58 = payloadAsString;
            v59 = 2112;
            v60 = title3;
            _os_log_impl(&dword_2484B2000, v35, v32, "Adding sharee %@ to calendar %@", buf, 0x16u);

            self = selfCopy;
            v29 = v44;
          }

          v39 = [v34 createCalShareeInDatabase:v27 andCalendar:v29];
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          if (v39)
          {
            CFRelease(v39);
          }
        }

        v30 = [obja countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v30);
    }
  }
}

- (NSSet)sharees
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopySharees();
    if ([v2 count])
    {
      v3 = objc_opt_new();
      if ([v2 count])
      {
        v4 = 0;
        do
        {
          v5 = [v2 objectAtIndexedSubscript:v4];

          v6 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithCalSharee:v5];
          if (v6)
          {
            [v3 addObject:v6];
          }

          ++v4;
        }

        while (v4 < [v2 count]);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEditable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LOBYTE(getCalCalendar) = CalCalendarIsAlwaysReadOnly() ^ 1;
  }

  return getCalCalendar;
}

- (void)setIsEditable:(BOOL)editable
{
  editableCopy = editable;
  if ([(MobileCalDAVCalendar *)self isEditable]!= editable)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v6 = getCalCalendar;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147700](v6, !editableCopy);
    }
  }
}

- (BOOL)isRenameable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LOBYTE(getCalCalendar) = CalCalendarIsImmutable() ^ 1;
  }

  return getCalCalendar;
}

- (void)setIsRenameable:(BOOL)renameable
{
  renameableCopy = renameable;
  if ([(MobileCalDAVCalendar *)self isRenameable]!= renameable)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v6 = getCalCalendar;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147778](v6, !renameableCopy);
    }
  }
}

- (NSString)ctag
{
  principal = [(MobileCalDAVCalendar *)self principal];
  refreshContext = [principal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    getCalCalendar = 0;
  }

  else
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      getCalCalendar = CalCalendarCopyExternalModificationTag();
    }
  }

  return getCalCalendar;
}

- (void)setCtag:(id)ctag
{
  ctagCopy = ctag;
  ctag = [(MobileCalDAVCalendar *)self ctag];
  if (ctag == ctagCopy)
  {
  }

  else
  {
    ctag2 = [(MobileCalDAVCalendar *)self ctag];
    v6 = [ctagCopy isEqualToString:ctag2];

    if ((v6 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetExternalModificationTag();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)syncToken
{
  principal = [(MobileCalDAVCalendar *)self principal];
  refreshContext = [principal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    getCalCalendar = 0;
  }

  else
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      getCalCalendar = CalCalendarCopySyncToken();
    }
  }

  return getCalCalendar;
}

- (void)setSyncToken:(id)token
{
  tokenCopy = token;
  syncToken = [(MobileCalDAVCalendar *)self syncToken];
  if (syncToken == tokenCopy)
  {
    goto LABEL_7;
  }

  syncToken2 = [(MobileCalDAVCalendar *)self syncToken];
  v6 = [tokenCopy isEqualToString:syncToken2];

  if ((v6 & 1) == 0)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    v8 = tokenCopy;
    if (getCalCalendar)
    {
      CalCalendarSetSyncToken();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
      v8 = tokenCopy;
    }

    if ([v8 length])
    {
      syncToken = [(MobileCalDAVCalendar *)self principal];
      [syncToken setSupportsSyncToken:1];
LABEL_7:
    }
  }
}

- (CalDiagCalendarCollectionSync)calendarCollectionSyncDiagnostics
{
  if (!self->_calendarCollectionSyncDiagnostics && RecordCalendarDiagnostics(self, a2))
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    calendarCollectionSyncDiagnostics = self->_calendarCollectionSyncDiagnostics;
    self->_calendarCollectionSyncDiagnostics = v3;
  }

  v5 = self->_calendarCollectionSyncDiagnostics;

  return v5;
}

- (NSSet)allItemURLs
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v3 = *(MEMORY[0x277CBF158] + 16);
    *&v25.version = *MEMORY[0x277CBF158];
    *&v25.release = v3;
    v25.equal = *(MEMORY[0x277CBF158] + 32);
    v25.hash = CalDAVURLHashCallback;
    v4 = CFSetCreateMutable(0, 0, &v25);
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v9 = CalDatabaseCopyCalendarItemsWithCalendar();
    if ([v9 count])
    {
      v10 = 0;
      do
      {
        v11 = [v9 objectAtIndexedSubscript:v10];
        v12 = CalCalendarItemCopyExternalID();

        if (v12)
        {
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v14 = [v12 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

          if (v14)
          {
            [(__CFSet *)v4 addObject:v14];
          }
        }

        ++v10;
      }

      while (v10 < [v9 count]);
    }

    v15 = CalDatabaseCopyCalendarItemsWithCalendar();

    if ([v15 count])
    {
      v16 = 0;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        v18 = CalCalendarItemCopyExternalID();

        if (v18)
        {
          calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
          v20 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL2];

          if (v20)
          {
            [(__CFSet *)v4 addObject:v20];
          }
        }

        ++v16;
      }

      while (v16 < [v15 count]);
    }
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v21, v22))
    {
      title = [(MobileCalDAVCalendar *)self title];
      LODWORD(v25.version) = 138412290;
      *(&v25.version + 4) = title;
      _os_log_impl(&dword_2484B2000, v21, v22, "Couldn't get a calendar for %@", &v25, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

- (id)etagsForItemURLs:(id)ls
{
  v35 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v5 = *(MEMORY[0x277CBF138] + 16);
    *&keyCallBacks.version = *MEMORY[0x277CBF138];
    *&keyCallBacks.release = v5;
    keyCallBacks.equal = *(MEMORY[0x277CBF138] + 32);
    keyCallBacks.hash = CalDAVURLHashCallback;
    v28 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, MEMORY[0x277CBF150]);
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    accountID2 = [(MobileCalDAVCalendar *)self accountID];
    cf = CalDatabaseCopyStoreWithExternalID();

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = lsCopy;
    v11 = lsCopy;
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v30;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        v19 = [(NSMutableDictionary *)self->_URLToEtagMap objectForKeyedSubscript:v18];
        if (v19)
        {
          v20 = v19;
LABEL_12:
          [(__CFDictionary *)v28 setObject:v20 forKeyedSubscript:v16];

          goto LABEL_13;
        }

        v21 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
        if (v21 || (v21 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore()) != 0)
        {
          v22 = v21;
          v20 = CalCalendarItemCopyExternalModificationTag();
          CFRelease(v22);
          if (v20)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (!v13)
      {
LABEL_15:

        if (cf)
        {
          CFRelease(cf);
        }

        lsCopy = v27;
        goto LABEL_21;
      }
    }
  }

  v23 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v23, v24))
  {
    LODWORD(keyCallBacks.version) = 138412290;
    *(&keyCallBacks.version + 4) = self;
    _os_log_impl(&dword_2484B2000, v23, v24, "Could not find a calendar that matched %@", &keyCallBacks, 0xCu);
  }

  v28 = 0;
LABEL_21:

  return v28;
}

- (void)_copyCalItemWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store
{
  identifierCopy = identifier;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if (![(MobileCalDAVCalendar *)self recordIDForUniqueIdentifier:identifierCopy]|| (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    v11 = CalDatabaseCopyCalendarItemWithUniqueIdentifierInCalendarOrStore();
    if (v11)
    {
      v12 = CalEntityCopyRecordID();
      if (v12)
      {
        v13 = v12;
        [(MobileCalDAVCalendar *)self setUniqueIdentifier:identifierCopy forRecordID:v12];
        CFRelease(v13);
      }
    }
  }

  return v11;
}

- (void)_copyCalItemWithExternalID:(id)d
{
  dCopy = d;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v9 = [(NSMutableDictionary *)self->_URLToRecordIDMap objectForKeyedSubscript:dCopy];

  if (!v9 || (v10 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    if (![(MobileCalDAVCalendar *)self getCalCalendar])
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    if (!v10)
    {
      v10 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    }
  }

  v11 = v10;
LABEL_8:

  return v11;
}

- (void)setUniqueIdentifier:(id)identifier forRecordID:(CalRecordID *)d
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
    v8 = uniqueIdentifierToRecordIDMap;
    if (d)
    {
      [uniqueIdentifierToRecordIDMap setObject:d forKeyedSubscript:v9];
    }

    else
    {
      [uniqueIdentifierToRecordIDMap removeObjectForKey:v9];
    }

    identifierCopy = v9;
  }
}

- (CalRecordID)recordIDForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  v6 = [uniqueIdentifierToRecordIDMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)setExternalIdentifier:(id)identifier forRecordID:(CalRecordID *)d
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
    v8 = uRLToRecordIDMap;
    if (d)
    {
      [uRLToRecordIDMap setObject:d forKeyedSubscript:v9];
    }

    else
    {
      [uRLToRecordIDMap removeObjectForKey:v9];
    }

    identifierCopy = v9;
  }
}

- (CalRecordID)recordIDForExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  v6 = [uRLToRecordIDMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d
{
  v36 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  if (lCopy)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v9 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:dCopy inCalendar:getCalCalendar orStore:0];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = v9;
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v13 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        CalCalendarItemSetExternalID();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
        v14 = CalEntityCopyRecordID();
        if (v14)
        {
          v15 = v14;
          [(NSMutableDictionary *)self->_URLToRecordIDMap setObject:v14 forKeyedSubscript:v13];
        }

        CFRelease(v11);
      }

      else
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138412290;
          selfCopy = dCopy;
          _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't set url for the event %@ because it doesn't exist in our database", buf, 0xCu);
        }
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      syncActions = [(MobileCalDAVCalendar *)self syncActions];
      v20 = [syncActions countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v30;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v30 != v22)
            {
              objc_enumerationMutation(syncActions);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            if ([v24 action] == 1)
            {
              context = [v24 context];
              uniqueIdentifier = [context uniqueIdentifier];
              v27 = [uniqueIdentifier isEqualToString:dCopy];

              if (v27)
              {
                [context setServerID:lCopy];
              }
            }
          }

          v21 = [syncActions countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v21);
      }
    }

    else
    {
      syncActions = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(syncActions, v17))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2484B2000, syncActions, v17, "Could not find a calendar that matched %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  lCopy = l;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v10 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v9];
  if (v10)
  {
    CalCalendarItemSetExternalModificationTag();
    if (lCopy)
    {
      URLToEtagMap = self->_URLToEtagMap;
      if (etagCopy)
      {
        [(NSMutableDictionary *)URLToEtagMap setObject:etagCopy forKeyedSubscript:v9];
      }

      else
      {
        [(NSMutableDictionary *)URLToEtagMap removeObjectForKey:v9];
      }
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v12, v13))
    {
      v15 = 138412290;
      v16 = lCopy;
      _os_log_impl(&dword_2484B2000, v12, v13, "Couldn't set etag for the item at %@ because it doesn't exist in our database", &v15, 0xCu);
    }
  }

  return v10 != 0;
}

- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  lCopy = l;
  if (!tagCopy)
  {
    tagCopy = &stru_285AB0D40;
  }

  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];
  v10 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v9];

  if (v10)
  {
    CalCalendarItemSetExternalScheduleID();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v14 = 138412290;
      v15 = lCopy;
      _os_log_impl(&dword_2484B2000, v11, v12, "Couldn't set schedule tag for the item at %@ because it doesn't exist in our database", &v14, 0xCu);
    }
  }

  return v10 != 0;
}

- (id)removeInvitationsForItemWithUniqueIdentifier:(id)identifier
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_18;
  }

  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v11 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:identifierCopy inCalendar:0 orStore:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    v27 = identifierCopy;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = CalEventCopyEventActions();
    v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v31;
      do
      {
        v16 = 0;
        v28 = v13;
        do
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = CalEventActionCopyExternalID();
          v18 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
          CalEventRemoveEventAction();
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          if (v17 && [v18 count] <= 1)
          {
            v19 = v15;
            v20 = v11;
            if (!v14)
            {
              v14 = objc_opt_new();
            }

            principal2 = [(MobileCalDAVCalendar *)self principal];
            inboxURL = [principal2 inboxURL];
            [v17 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:inboxURL];
            v24 = v23 = v14;
            [v23 addObject:v24];

            v14 = v23;
            v11 = v20;
            v15 = v19;
            v13 = v28;
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v11);
    v25 = v14;

    identifierCopy = v27;
  }

  else
  {
LABEL_18:
    v25 = 0;
  }

  return v25;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v121 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v7 = getCalCalendar;
  if (getCalCalendar)
  {
    v89 = RecordCalendarDiagnostics(getCalCalendar, v6);
    if (v89)
    {
      DAWeakLinkClass();
    }

    v86 = objc_opt_new();
    v87 = objc_opt_new();
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v84 = serverCopy;
    v10 = serverCopy;
    v85 = v7;
    v94 = [v10 countByEnumeratingWithState:&v109 objects:v120 count:16];
    if (v94)
    {
      v93 = *v110;
      v11 = *(MEMORY[0x277D03988] + 6);
      obj = v10;
      v91 = v11;
      do
      {
        for (i = 0; i != v94; ++i)
        {
          if (*v110 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v109 + 1) + 8 * i);
          serverID = [v13 serverID];
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v16 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

          principal = [(MobileCalDAVCalendar *)self principal];
          account = [principal account];
          movedItemURLStrings = [account movedItemURLStrings];
          v20 = [movedItemURLStrings containsObject:v16];

          if (v20)
          {
            v21 = DALoggingwithCategory();
            if (os_log_type_enabled(v21, v11))
            {
              serverID2 = [v13 serverID];
              *buf = 138412290;
              selfCopy = serverID2;
              v23 = v21;
              v24 = v11;
              v25 = "Dropping server change for %@ on the floor because we have a move change for it";
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          principal2 = [(MobileCalDAVCalendar *)self principal];
          if ([principal2 isMergeSync])
          {
            v27 = [(MobileCalDAVCalendar *)self _isDeleted:v16];

            if (v27)
            {
              v21 = DALoggingwithCategory();
              if (os_log_type_enabled(v21, v11))
              {
                serverID2 = [v13 serverID];
                *buf = 138412290;
                selfCopy = serverID2;
                v23 = v21;
                v24 = v11;
                v25 = "Dropping server change for %@ on the floor because we have a delete change for it";
LABEL_14:
                _os_log_impl(&dword_2484B2000, v23, v24, v25, buf, 0xCu);
              }

LABEL_15:

              goto LABEL_47;
            }
          }

          else
          {
          }

          v92 = v16;
          v108 = 0;
          principal3 = [(MobileCalDAVCalendar *)self principal];
          account2 = [principal3 account];
          wasMigrated = [account2 wasMigrated];
          principal4 = [(MobileCalDAVCalendar *)self principal];
          account3 = [principal4 account];
          v107 = 0;
          v33 = [v13 saveToContainer:v7 shouldMergeProperties:wasMigrated outMergeDidChooseLocalProperties:&v108 account:account3 mobileCalendar:self outRecurrenceSets:&v107];
          v34 = v107;

          if ([v34 count])
          {
            accountID = [(MobileCalDAVCalendar *)self accountID];
            v36 = [v87 objectForKeyedSubscript:accountID];

            if (!v36)
            {
              v36 = objc_opt_new();
              accountID2 = [(MobileCalDAVCalendar *)self accountID];
              [v87 setObject:v36 forKeyedSubscript:accountID2];
            }

            [v36 unionSet:v34];
          }

          v11 = v91;
          v16 = v92;
          if ((v89 & v33) == 1)
          {
            document = [v13 document];
            calendar = [document calendar];
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v106 = 0u;
            componentKeys = [calendar componentKeys];
            v40 = [componentKeys countByEnumeratingWithState:&v103 objects:v119 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v104;
              while (2)
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v104 != v42)
                  {
                    objc_enumerationMutation(componentKeys);
                  }

                  v44 = [calendar componentForKey:*(*(&v103 + 1) + 8 * j)];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    summary = [v44 summary];

                    goto LABEL_38;
                  }
                }

                v41 = [componentKeys countByEnumeratingWithState:&v103 objects:v119 count:16];
                summary = 0;
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              summary = 0;
            }

LABEL_38:

            v46 = objc_opt_new();
            uniqueIdentifier = [v13 uniqueIdentifier];
            [v46 setUid:uniqueIdentifier];

            [v46 setTitle:summary];
            scheduleTag = [v13 scheduleTag];
            [v46 setScheduleTag:scheduleTag];

            syncKey = [v13 syncKey];
            [v46 setSyncKey:syncKey];

            dataPayload = [v13 dataPayload];
            [v46 setDownloadedData:dataPayload];

            [v86 addObject:v46];
            v7 = v85;
            v11 = v91;
            v16 = v92;
          }

          v51 = v108;
          v52 = DALoggingwithCategory();
          v53 = os_log_type_enabled(v52, v11);
          if (v51 == 1)
          {
            if (v53)
            {
              serverID3 = [v13 serverID];
              *buf = 138412290;
              selfCopy = serverID3;
              _os_log_impl(&dword_2484B2000, v52, v11, "The event at %@ was modified locally. Forcing it to the server.", buf, 0xCu);
            }
          }

          else
          {
            if (v53)
            {
              serverID4 = [v13 serverID];
              syncKey2 = [v13 syncKey];
              *buf = 138412546;
              selfCopy = serverID4;
              v117 = 2112;
              v118 = syncKey2;
              _os_log_impl(&dword_2484B2000, v52, v11, "Saved resource from %@ to the database. Etag is %@", buf, 0x16u);
            }

            syncKey3 = [v13 syncKey];
            serverID5 = [v13 serverID];
            [(MobileCalDAVCalendar *)self setEtag:syncKey3 forItemAtURL:serverID5];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }

LABEL_47:
        }

        v10 = obj;
        v94 = [obj countByEnumeratingWithState:&v109 objects:v120 count:16];
      }

      while (v94);
    }

    if ([v10 count])
    {
      -[MobileCalDAVCalendar setNumDownloadedElements:](self, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](self, "numDownloadedElements") + [v10 count]);
      principal5 = [(MobileCalDAVCalendar *)self principal];
      account4 = [principal5 account];
      dbHelper = [account4 dbHelper];
      accountID3 = [(MobileCalDAVCalendar *)self accountID];
      v63 = [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID3];

      if ((v89 & v63) == 1)
      {
        calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v65 = v86;
        v66 = [v65 countByEnumeratingWithState:&v99 objects:v114 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v100;
          do
          {
            for (k = 0; k != v67; ++k)
            {
              if (*v100 != v68)
              {
                objc_enumerationMutation(v65);
              }

              [calendarCollectionSyncDiagnostics addCalendarItemSync:*(*(&v99 + 1) + 8 * k)];
            }

            v67 = [v65 countByEnumeratingWithState:&v99 objects:v114 count:16];
          }

          while (v67);
        }
      }

      uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
      [uniqueIdentifierToRecordIDMap removeAllObjects];

      uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
      [uRLToRecordIDMap removeAllObjects];
    }

    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v72 = v87;
    v73 = [v72 countByEnumeratingWithState:&v95 objects:v113 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v96;
      do
      {
        for (m = 0; m != v74; ++m)
        {
          if (*v96 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(*(&v95 + 1) + 8 * m);
          v78 = [v72 objectForKeyedSubscript:v77];
          principal6 = [(MobileCalDAVCalendar *)self principal];
          account5 = [principal6 account];
          dbHelper2 = [account5 dbHelper];
          v82 = [dbHelper2 calDatabaseForAccountID:v77];

          [(MobileCalDAVCalendar *)self correctLocationPredictionStateForRecurrenceSets:v78 calDB:v82];
        }

        v74 = [v72 countByEnumeratingWithState:&v95 objects:v113 count:16];
      }

      while (v74);
    }

    serverCopy = v84;
    v7 = v85;
    v8 = v86;
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v8, v9, "Could not find a calendar that matched %@", buf, 0xCu);
    }
  }

  return v7 != 0;
}

- (void)correctLocationPredictionStateForRecurrenceSets:(id)sets calDB:(CalDatabase *)b
{
  v35 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  allObjects = [sets allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = CalDatabaseCopyEventsWithRecurrenceSet();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if ((CalEventGetLocationPredictionState() & 0xFFFFFFFE) == 2)
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v15 = v10;
        v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v21;
          do
          {
            v19 = 0;
            do
            {
              if (*v21 != v18)
              {
                objc_enumerationMutation(v15);
              }

              CalEventSetLocationPredictionState();
              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
          }

          while (v17);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [allObjects countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isDeleted:(id)deleted
{
  deletedCopy = deleted;
  deletedExternalIDs = self->_deletedExternalIDs;
  if (!deletedExternalIDs)
  {
    copyDeletedItems = [(MobileCalDAVCalendar *)self copyDeletedItems];
    v7 = MEMORY[0x277CBEB98];
    allKeys = [copyDeletedItems allKeys];
    v9 = [v7 setWithArray:allKeys];
    v10 = self->_deletedExternalIDs;
    self->_deletedExternalIDs = v9;

    deletedExternalIDs = self->_deletedExternalIDs;
  }

  v11 = [(NSSet *)deletedExternalIDs containsObject:deletedCopy];

  return v11;
}

- (BOOL)_removeCalendarItemWithURL:(id)l
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v10 = DALoggingwithCategory();
  v11 = v10;
  if (getCalCalendar)
  {
    v12 = MEMORY[0x277D03988];
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v13))
    {
      v22 = 138412290;
      selfCopy = lCopy;
      _os_log_impl(&dword_2484B2000, v11, v13, "Removing event with url %@", &v22, 0xCu);
    }

    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    [(MobileCalDAVCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];
    v15 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();

    if (v15)
    {
      Type = CalEntityGetType();
      if (Type == 3)
      {
        CalRemoveTask();
      }

      else
      {
        if (Type != 2)
        {
          v20 = 0;
          goto LABEL_18;
        }

        CalRemoveEventAndDetachedEvents();
      }

      v20 = 1;
      [(MobileCalDAVCalendar *)self setIsDirty:1];
LABEL_18:
      CFRelease(v15);
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
      goto LABEL_19;
    }

    v18 = DALoggingwithCategory();
    v19 = *(v12 + 4);
    if (os_log_type_enabled(v18, *(v12 + 4)))
    {
      v22 = 138412290;
      selfCopy = lCopy;
      _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't get a calendar item to remove with url %@", &v22, 0xCu);
    }
  }

  else
  {
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v17))
    {
      v22 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v11, v17, "Could not find a calendar that matched %@", &v22, 0xCu);
    }
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (BOOL)deleteResourcesAtURLs:(id)ls
{
  v20 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(lsCopy);
        }

        v7 |= [(MobileCalDAVCalendar *)self _removeCalendarItemWithURL:*(*(&v15 + 1) + 8 * i)];
      }

      v6 = [lsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    if (v7)
    {
      principal = [(MobileCalDAVCalendar *)self principal];
      account = [principal account];
      dbHelper = [account dbHelper];
      accountID = [(MobileCalDAVCalendar *)self accountID];
      [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
    }
  }

  return 1;
}

- (BOOL)hasEvents
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    v3 = getCalCalendar;
    if (CalCalendarHasEvents())
    {
      LOBYTE(getCalCalendar) = 1;
    }

    else
    {

      LOBYTE(getCalCalendar) = MEMORY[0x282147398](v3);
    }
  }

  return getCalCalendar;
}

- (BOOL)isHidden
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarIsHidden();
  }

  return getCalCalendar;
}

- (NSString)displayColor
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyColorStringForDisplay();
  }

  return getCalCalendar;
}

- (NSString)accountID
{
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  accountID = [account accountID];

  return accountID;
}

- (NSArray)newlyAddedItems
{
  v2 = [(NSMutableArray *)self->_newlyAddedItems copy];

  return v2;
}

- (void)setNewlyAddedItems:(id)items
{
  self->_newlyAddedItems = [items mutableCopy];

  MEMORY[0x2821F96F8]();
}

- (void)_updateCalendarInfo
{
  principal = [(MobileCalDAVCalendar *)self principal];
  fullName = [principal fullName];

  principal2 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarEmailAddress = [principal2 preferredCalendarEmailAddress];

  principal3 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarPhoneNumber = [principal3 preferredCalendarPhoneNumber];

  principal4 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarUserAddress = [principal4 preferredCalendarUserAddress];

  shouldCalendarBeHidden = [(MobileCalDAVCalendar *)self shouldCalendarBeHidden];
  isSubscribed = [(MobileCalDAVCalendar *)self isSubscribed];
  isScheduleInbox = [(MobileCalDAVCalendar *)self isScheduleInbox];
  isNotification = [(MobileCalDAVCalendar *)self isNotification];
  if (![fullName length])
  {

    fullName = 0;
  }

  if (![preferredCalendarEmailAddress length])
  {

    preferredCalendarEmailAddress = 0;
  }

  if (![preferredCalendarPhoneNumber length])
  {

    preferredCalendarPhoneNumber = 0;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v13 = CalCalendarCopySelfIdentityDisplayName();
  v14 = v13;
  if (fullName == v13 || fullName && ([v13 isEqualToString:fullName] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityDisplayName();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v16 = CalCalendarCopySelfIdentityEmail();
  v17 = v16;
  v31 = v14;
  if (v16 != preferredCalendarEmailAddress && (!preferredCalendarEmailAddress || ([v16 isEqualToString:preferredCalendarEmailAddress] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v18 = CalCalendarCopySelfIdentityPhoneNumber();
  v19 = v18;
  if (v18 != preferredCalendarPhoneNumber && (!preferredCalendarPhoneNumber || ([v18 isEqualToString:preferredCalendarPhoneNumber] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityPhoneNumber();
    v15 = 1;
  }

  v32 = v19;
  [(MobileCalDAVCalendar *)self calCalendar];
  v20 = CalCalendarCopySelfIdentityAddress();
  v21 = v20;
  if (v20 != preferredCalendarUserAddress && ([v20 da_isEqualToDAVURL:preferredCalendarUserAddress] & 1) == 0)
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityAddress();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (shouldCalendarBeHidden != CalCalendarIsHidden())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetHidden();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isSubscribed != CalCalendarIsSubscribed())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSubscribed();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isScheduleInbox != CalCalendarIsInbox())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsInbox();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isNotification != CalCalendarIsNotificationsCollection())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsNotificationsCollection();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (CalCalendarGetSharingStatus() == 2 && ([(MobileCalDAVCalendar *)self owner], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    ownerDisplayName = [(MobileCalDAVCalendar *)self ownerDisplayName];

    ownerEmailAddress = [(MobileCalDAVCalendar *)self ownerEmailAddress];

    ownerPhoneNumber = [(MobileCalDAVCalendar *)self ownerPhoneNumber];

    owner = [(MobileCalDAVCalendar *)self owner];

    if (![ownerDisplayName length])
    {

      ownerDisplayName = 0;
    }

    if (![ownerEmailAddress length])
    {

      ownerEmailAddress = 0;
    }

    if ([ownerPhoneNumber length])
    {
      preferredCalendarPhoneNumber = ownerPhoneNumber;
    }

    else
    {

      preferredCalendarPhoneNumber = 0;
    }
  }

  else
  {
    owner = preferredCalendarUserAddress;
    ownerEmailAddress = preferredCalendarEmailAddress;
    ownerDisplayName = fullName;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v26 = CalCalendarCopyOwnerIdentityDisplayName();

  if (ownerDisplayName != v26 && (!ownerDisplayName || ([v26 isEqualToString:ownerDisplayName] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityDisplayName();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v27 = CalCalendarCopyOwnerIdentityEmail();

  if (v27 != ownerEmailAddress && (!ownerEmailAddress || ([v27 isEqualToString:ownerEmailAddress] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v28 = CalCalendarCopyOwnerIdentityPhoneNumber();

  if (v28 != preferredCalendarPhoneNumber && (!preferredCalendarPhoneNumber || ([v28 isEqualToString:preferredCalendarPhoneNumber] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityPhoneNumber();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v29 = CalCalendarCopyOwnerIdentityAddress();

  if (v29 != owner && ([v29 da_isEqualToDAVURL:owner] & 1) == 0)
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityAddress();
    goto LABEL_57;
  }

  if (v15)
  {
LABEL_57:
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)initCalCalendarWithTitle:(id)title
{
  v43 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    v9 = [dbHelper calDatabaseForAccountID:accountID];

    if (v9)
    {
      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v11 = CalDatabaseCopyStoreWithExternalID();

      principal2 = [(MobileCalDAVCalendar *)self principal];
      account2 = [principal2 account];
      wasMigrated = [account2 wasMigrated];
      v15 = v11 != 0;

      if (wasMigrated && v11)
      {
        v16 = CalStoreCopyCalendars();
        if ([v16 count])
        {
          v17 = 0;
          while (1)
          {
            v18 = [v16 objectAtIndexedSubscript:v17];

            v19 = CalCalendarCopyTitle();
            if ([titleCopy isEqualToString:v19])
            {
              break;
            }

            if (++v17 >= [v16 count])
            {
              goto LABEL_16;
            }
          }

          self->_calCalendar = v18;
          if (v18)
          {
            CFRetain(v18);
          }
        }

LABEL_16:
      }

      calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
      if (calCalendar)
      {
        v15 = 0;
      }

      else
      {
        self->_calCalendar = CalDatabaseCreateCalendar();
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
      CalCalendarSetExternalID();

      [(MobileCalDAVCalendar *)self calCalendar];
      guid = [(MobileCalDAVCalendar *)self guid];
      CalCalendarSetExternalIdentificationTag();

      [(MobileCalDAVCalendar *)self calCalendar];
      CalCalendarSetTitle();
      [(MobileCalDAVCalendar *)self calCalendar];
      CalCalendarSetLastSyncTitle();
      [(MobileCalDAVCalendar *)self _updateCalendarInfo];
      [(MobileCalDAVCalendar *)self setIsDirty:1];
      v25 = DALoggingwithCategory();
      v26 = v25;
      if (v15)
      {
        v27 = *(MEMORY[0x277D03988] + 5);
        if (os_log_type_enabled(v25, v27))
        {
          calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v39 = 138412546;
          v40 = calendarURLString2;
          v41 = 2114;
          v42 = callStackSymbols;
          _os_log_impl(&dword_2484B2000, v26, v27, "******Creating calendar with url %@ %{public}@", &v39, 0x16u);
        }

        [(MobileCalDAVCalendar *)self calCalendar];
        CalStoreAddCalendar();
      }

      else
      {
        if (calCalendar)
        {
          v30 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v25, v30))
          {
            v39 = 138412290;
            v40 = titleCopy;
            _os_log_impl(&dword_2484B2000, v26, v30, "Merged calendar titled %@ with calDAV", &v39, 0xCu);
          }
        }

        else
        {
          v31 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v25, *(MEMORY[0x277D03988] + 3)))
          {
            guid2 = [(MobileCalDAVCalendar *)self guid];
            v39 = 138412290;
            v40 = guid2;
            _os_log_impl(&dword_2484B2000, v26, v31, "Could not get a calendar store. Cowardly refusing to create a calendar with UID %@", &v39, 0xCu);
          }
        }
      }

      if ([(MobileCalDAVCalendar *)self calCalendar])
      {
        calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];

        if (calendarURLString3)
        {
          [(MobileCalDAVCalendar *)self calCalendar];
          UID = CalCalendarGetUID();
          calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
          [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString4];
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v20, *(MEMORY[0x277D03988] + 6)))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_2484B2000, v20, v21, "Couldn't get a database ref. This isn't the time to create a calendar", &v39, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
  }

  calCalendar2 = [(MobileCalDAVCalendar *)self calCalendar];

  return calCalendar2;
}

- (void)getCalCalendar
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];

    if (!calendarURLString)
    {
      return 0;
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
    v10 = [MobileCalDAVCalendar cachedCalendarUIDForURLString:calendarURLString2];

    v11 = MEMORY[0x277D03988];
    if ((v10 & 0x80000000) == 0)
    {
      v12 = DALoggingwithCategory();
      v13 = *(v11 + 6);
      if (os_log_type_enabled(v12, v13))
      {
        calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v26 = 67109634;
        *v27 = v10;
        *&v27[4] = 2112;
        *&v27[6] = calendarURLString3;
        v28 = 2112;
        v29 = callStackSymbols;
        _os_log_impl(&dword_2484B2000, v12, v13, "Found a cached calendar uid (%d) for url %@ %@", &v26, 0x1Cu);
      }

      self->_calCalendar = CalDatabaseCopyCalendarWithUID();
      if (![(MobileCalDAVCalendar *)self calCalendar])
      {
        calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
        [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:calendarURLString4];
      }
    }

    if (![(MobileCalDAVCalendar *)self calCalendar])
    {
      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v18 = CalDatabaseCopyStoreWithExternalID();

      calendarURLString5 = [(MobileCalDAVCalendar *)self calendarURLString];
      self->_calCalendar = CalDatabaseCopyCalendarWithExternalIDInStore();

      if (v18)
      {
        CFRelease(v18);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];

    if ([(MobileCalDAVCalendar *)self calCalendar])
    {
      calendarURLString6 = [(MobileCalDAVCalendar *)self calendarURLString];

      if (!calendarURLString6)
      {
        return [(MobileCalDAVCalendar *)self calCalendar];
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      UID = CalCalendarGetUID();
      calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString7];
    }

    else
    {
      calendarURLString7 = DALoggingwithCategory();
      v24 = *(v11 + 7);
      if (os_log_type_enabled(calendarURLString7, v24))
      {
        calendarURLString8 = [(MobileCalDAVCalendar *)self calendarURLString];
        v26 = 138412290;
        *v27 = calendarURLString8;
        _os_log_impl(&dword_2484B2000, calendarURLString7, v24, "Couldn't find calendar with url %@.", &v26, 0xCu);
      }
    }

    return [(MobileCalDAVCalendar *)self calCalendar];
  }

  return [(MobileCalDAVCalendar *)self calCalendar];
}

- (void)_dropCalStoreContext
{
  calCalendar = self->_calCalendar;
  if (calCalendar)
  {
    CFRelease(calCalendar);
    self->_calCalendar = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"CalDBIsClosing" object:0];
}

- (id)_calExternalRep
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopyExternalRepresentation();
    if (v2)
    {
      v3 = [MEMORY[0x277CCAC58] propertyListFromData:v2 mutabilityOption:2 format:0 errorDescription:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

+ (__CFArray)gatherCalendarChangesInPrincipal:(id)principal calendars:(id)calendars adds:(id *)adds modifies:(id *)modifies deletes:(id *)deletes changeTracker:(id)tracker
{
  v100 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  calendarsCopy = calendars;
  trackerCopy = tracker;
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v84 = objc_opt_new();
  account = [principalCopy account];
  dbHelper = [account dbHelper];
  accountID = [principalCopy accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  account2 = [principalCopy account];
  accountID2 = [account2 accountID];
  v19 = CalDatabaseCopyStoreWithExternalID();

  v20 = MEMORY[0x277D03988];
  if (v19)
  {
    theDict = 0;
    CalDatabaseCopyCalendarChangesInStore();
    v26 = 0;
    cf = v19;
    v79 = v13;
    account3 = [principalCopy account];
    wasMigrated = [account3 wasMigrated];

    if (wasMigrated)
    {
      allValues = [calendarsCopy allValues];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v30 = [allValues countByEnumeratingWithState:&v86 objects:v99 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v87;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v87 != v32)
            {
              objc_enumerationMutation(allValues);
            }

            v34 = *(*(&v86 + 1) + 8 * i);
            if (([self shouldSkipAddedCalendar:{objc_msgSend(v34, "getCalCalendar")}] & 1) == 0)
            {
              [self processAddedCalendar:v34];
              [v12 addObject:v34];
            }
          }

          v31 = [allValues countByEnumeratingWithState:&v86 objects:v99 count:16];
        }

        while (v31);
      }

      v61 = DALoggingwithCategory();
      v60 = MEMORY[0x277D03988];
      v62 = *(MEMORY[0x277D03988] + 3);
      modifiesCopy2 = modifies;
      deletesCopy2 = deletes;
      addsCopy2 = adds;
      if (os_log_type_enabled(v61, v62))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v61, v62, "CalDatabaseCopyCalendarChangesInStore returned no changeTableIDs.", buf, 2u);
      }

      v25 = 0;
      v13 = v79;

      goto LABEL_47;
    }

    v72 = principalCopy;
    Count = CFArrayGetCount(0);
    Mutable = CFArrayCreateMutable(0, Count, 0);
    if (Count < 1)
    {
LABEL_43:
      v25 = CFAutorelease(Mutable);
      principalCopy = v72;
      deletesCopy2 = deletes;
      v13 = v79;
      addsCopy2 = adds;
      modifiesCopy2 = modifies;
      v60 = MEMORY[0x277D03988];
LABEL_47:
      CFRelease(cf);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      v63 = DALoggingwithCategory();
      v64 = *(v60 + 6);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = [v12 count];
        v66 = [v13 count];
        v67 = [v84 count];
        *buf = 138413058;
        v92 = principalCopy;
        v93 = 2048;
        v94 = v65;
        v95 = 2048;
        v96 = v66;
        v13 = v79;
        v97 = 2048;
        v98 = v67;
        _os_log_impl(&dword_2484B2000, v63, v64, "+gatherCalendarChangesInPrincipal %@: found %lu added calendars, %lu modified calendars, and %lu deleted calendars", buf, 0x2Au);
      }

      if (addsCopy2)
      {
        v68 = v12;
        *addsCopy2 = v12;
      }

      if (modifiesCopy2)
      {
        v69 = v13;
        *modifiesCopy2 = v13;
      }

      if (deletesCopy2)
      {
        *deletesCopy2 = v84;
      }

      goto LABEL_57;
    }

    v38 = 0;
    v85 = *MEMORY[0x277CF7648];
    v74 = *MEMORY[0x277CF7640];
    v73 = *(MEMORY[0x277D03988] + 5);
    type = *(MEMORY[0x277D03988] + 3);
    *&v37 = 138412546;
    v71 = v37;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(0, v38);
      v40 = CFArrayGetValueAtIndex(0, v38);
      v41 = CFArrayGetValueAtIndex(v26, v38);
      if (v85 == ValueAtIndex)
      {
        v42 = CFArrayGetValueAtIndex(0, v38);
        if (v42)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
            if ((CFArrayGetValueAtIndex(0, v38) & 0x800000) != 0)
            {
              v44 = [v43 stringByAppendingString:@"?isJunk=true"];

              v43 = v44;
            }

            [v84 addObject:{v43, v71}];
          }
        }
      }

      else
      {
        v45 = Count;
        v46 = Mutable;
        v47 = v26;
        v48 = CalDatabaseCopyCalendarWithUID();
        if (v48)
        {
          v49 = v48;
          if (([self shouldSkipCalendar:v48 withChangeType:ValueAtIndex] & 1) == 0)
          {
            v80 = CalCalendarCopyExternalIdentificationTag();
            v50 = [calendarsCopy objectForKeyedSubscript:?];
            if (!v50)
            {
              v54 = DALoggingwithCategory();
              if (os_log_type_enabled(v54, v73))
              {
                UID = CalCalendarGetUID();
                *buf = v71;
                v92 = v80;
                v93 = 1024;
                LODWORD(v94) = UID;
                _os_log_impl(&dword_2484B2000, v54, v73, "There's an change for calendar with guid %@ (UID %d) but it isn't in the cached calendars. Keeping the change for it until next time.", buf, 0x12u);
              }

              CFRelease(v49);
              [trackerCopy saveChange:v41 forEntityType:1];
              v26 = v47;
              Mutable = v46;
              Count = v45;
              goto LABEL_42;
            }

            v51 = v50;
            if (v74 == ValueAtIndex)
            {
              [self processAddedCalendar:v50];
              v52 = v12;
            }

            else
            {
              v56 = CFArrayGetValueAtIndex(0, v38);
              [self processModifiedCalendar:v51 oldFlags:v56 newFlags:{CFArrayGetValueAtIndex(0, v38)}];
              v52 = v79;
            }

            [v52 addObject:{v51, v71}];
          }

          CFRelease(v49);
        }

        else
        {
          v53 = DALoggingwithCategory();
          if (os_log_type_enabled(v53, type))
          {
            *buf = 67109120;
            LODWORD(v92) = v40;
            _os_log_impl(&dword_2484B2000, v53, type, "Got a change for calendar with UID %d, but couldn't find that calendar. Most likely it no longer exists. Ignoring change.", buf, 8u);
          }
        }

        v26 = v47;
        Mutable = v46;
        Count = v45;
      }

      CFArrayAppendValue(Mutable, v41);
LABEL_42:
      if (Count == ++v38)
      {
        goto LABEL_43;
      }
    }
  }

  v21 = DALoggingwithCategory();
  v22 = *(v20 + 3);
  if (os_log_type_enabled(v21, v22))
  {
    account4 = [principalCopy account];
    accountID3 = [account4 accountID];
    *buf = 138543362;
    v92 = accountID3;
    _os_log_impl(&dword_2484B2000, v21, v22, "Could not find a calendar store with id %{public}@", buf, 0xCu);
  }

  v25 = 0;
LABEL_57:

  return v25;
}

+ (BOOL)shouldSkipCalendar:(void *)calendar withChangeType:(int)type
{
  v11 = *MEMORY[0x277D85DE8];
  if ((CalCalendarCanContainEntityType() & 1) == 0 && !CalShouldSyncReminders())
  {
    return 1;
  }

  if (*MEMORY[0x277CF7640] == type)
  {

    return [self shouldSkipAddedCalendar:calendar];
  }

  if (*MEMORY[0x277CF7650] != type)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10[0] = 67109120;
      v10[1] = type;
      _os_log_impl(&dword_2484B2000, v8, v9, "+shouldSkipCalendar:withChangeType: Unexpected change type: %i", v10, 8u);
    }

    return 1;
  }

  return [self shouldSkipModifiedCalendar:calendar];
}

+ (void)processAddedCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([calendarCopy isPublished])
  {
    [calendarCopy setNeedsPublishUpdate:1];
  }

  [calendarCopy setWasModifiedLocally:1];
}

+ (void)processModifiedCalendar:(id)calendar oldFlags:(unsigned int)flags newFlags:(unsigned int)newFlags
{
  calendarCopy = calendar;
  isPublished = [calendarCopy isPublished];
  publishURL = [calendarCopy publishURL];
  if (((isPublished ^ (publishURL == 0)) & 1) == 0)
  {
    [calendarCopy setNeedsPublishUpdate:1];
  }

  v9 = CalCalendarFlagsAreValid();
  if (flags != newFlags && v9)
  {
    v10 = newFlags ^ flags;
    if ((v10 & 0x100000) != 0)
    {
      [calendarCopy setNeedsIsAffectingAvailabilityUpdate:1];
    }

    if ((newFlags & v10 & 0x400) != 0)
    {
      [calendarCopy setBecameDefaultSchedulingCalendar:1];
    }
  }

  [calendarCopy setWasModifiedLocally:1];
}

+ (BOOL)clearCalendarChanges:(__CFArray *)changes forPrincipal:(id)principal changeTrackingClient:(id)client
{
  clientCopy = client;
  principalCopy = principal;
  account = [principalCopy account];
  dbHelper = [account dbHelper];
  accountID = [principalCopy accountID];

  [dbHelper calDatabaseForAccountID:accountID];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  return 1;
}

- (id)_itemPropertyDictForItemAtIndex:(int64_t)index withChangedIDs:(__CFArray *)ds withChangedRowids:(__CFArray *)rowids withExternalIDs:(__CFArray *)iDs uniqueIdentifiers:(__CFArray *)identifiers significantAttributeChanges:(__CFArray *)changes oldCalendarIDs:(__CFArray *)calendarIDs entityType:(int)self0
{
  v16 = objc_opt_new();
  if (ds && CFArrayGetValueAtIndex(ds, index) != -1)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v17 forKeyedSubscript:@"ChangeID"];
  }

  if (rowids && CFArrayGetValueAtIndex(rowids, index) != -1)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v18 forKeyedSubscript:@"ChangeRowid"];
  }

  if (iDs)
  {
    iDs = CFArrayGetValueAtIndex(iDs, index);
    if (iDs)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:iDs forKeyedSubscript:@"ExternalID"];
      }
    }
  }

  if (identifiers)
  {
    identifiers = CFArrayGetValueAtIndex(identifiers, index);
    if (identifiers)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:identifiers forKeyedSubscript:@"UniqueIdentifier"];
      }
    }
  }

  if (changes)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(changes, index);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
  [v16 setObject:v20 forKeyedSubscript:@"SignificantAttributeChange"];

  if (calendarIDs)
  {
    v21 = CFArrayGetValueAtIndex(calendarIDs, index);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [v16 setObject:v22 forKeyedSubscript:@"OldCalendarID"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:type];
  [v16 setObject:v23 forKeyedSubscript:@"EntityType"];

  return v16;
}

- (id)copyAllItems
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopyEvents();
    v5 = 0x278F16000uLL;
    if ([v4 count])
    {
      v6 = 0;
      do
      {
        v7 = [v4 objectAtIndexedSubscript:v6];

        v8 = [DACalDAViCalItem alloc];
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        principal = [(MobileCalDAVCalendar *)self principal];
        accountID = [principal accountID];
        v12 = v8;
        v5 = 0x278F16000uLL;
        v13 = [(DACalDAViCalItem *)v12 initWithCalRecord:v7 inContainer:calendarURL accountID:accountID];

        [v3 addObject:v13];
        ++v6;
      }

      while (v6 < [v4 count]);
    }

    v14 = CalCalendarCopyTasks();
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];

        v17 = objc_alloc(*(v5 + 3360));
        calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
        principal2 = [(MobileCalDAVCalendar *)self principal];
        accountID2 = [principal2 accountID];
        v21 = v17;
        v5 = 0x278F16000;
        v22 = [v21 initWithCalRecord:v16 inContainer:calendarURL2 accountID:accountID2];

        [v3 addObject:v22];
        ++v15;
      }

      while (v15 < [v14 count]);
    }

    v23 = v3;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      v27 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar with that matched %@", &v27, 0xCu);
    }

    v23 = 0;
  }

  return v23;
}

- (void)_addCalendarItemWithRowID:(int)d toArrayIfNeeded:(id)needed withChangeRowid:(int)rowid changeType:(id)type
{
  v64 = *&rowid;
  v80 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  typeCopy = type;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v15 = CalDatabaseCopyCalendarItemWithRowID();
  if (v15)
  {
    Mutable = v15;
    if (CalCalendarItemGetEntityType() != 2 && !CalShouldSyncReminders())
    {
      goto LABEL_49;
    }

    v62 = typeCopy;
    v63 = neededCopy;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v17 = neededCopy;
    v18 = [v17 countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v66;
LABEL_6:
      v21 = 0;
      while (1)
      {
        if (*v66 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v65 + 1) + 8 * v21);
        clientID = [v22 clientID];
        intValue = [clientID intValue];

        if (intValue == d)
        {
          break;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v65 objects:v79 count:16];
          if (v19)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      v29 = v22;

      if (!v29)
      {
        goto LABEL_22;
      }

      typeCopy = v62;
      neededCopy = v63;
      goto LABEL_19;
    }

LABEL_12:

LABEL_22:
    v34 = CalCalendarItemCopyCalendar();
    typeCopy = v62;
    if (!v34)
    {
      v48 = DALoggingwithCategory();
      v49 = *(MEMORY[0x277D03988] + 3);
      neededCopy = v63;
      if (os_log_type_enabled(v48, v49))
      {
        RowID = CalCalendarItemGetRowID();
        *buf = 138412802;
        v70 = v62;
        v71 = 1024;
        v72 = v64;
        v73 = 1024;
        v74 = RowID;
        _os_log_impl(&dword_2484B2000, v48, v49, "Ignoring change of type %@ for change row id %d on item with uid %d because it does not have a calendar", buf, 0x18u);
      }

      goto LABEL_49;
    }

    v35 = v34;
    UID = CalCalendarGetUID();
    v37 = CalCalendarGetUID();
    if (UID == v37)
    {
      principal2 = [(MobileCalDAVCalendar *)self principal];
      account2 = [principal2 account];
      IsSelfOrganizedWithScheduleAgentClient = CalCalendarItemIsSelfOrganizedWithScheduleAgentClient();

      neededCopy = v63;
      if (!IsSelfOrganizedWithScheduleAgentClient)
      {
        v54 = [DACalDAViCalItem alloc];
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        principal3 = [(MobileCalDAVCalendar *)self principal];
        accountID2 = [principal3 accountID];
        v29 = [(DACalDAViCalItem *)v54 initWithCalRecord:Mutable inContainer:calendarURL accountID:accountID2];

        [v17 addObject:v29];
        CFRelease(v35);
        if (v29)
        {
LABEL_19:
          v30 = DALoggingwithCategory();
          v31 = *(MEMORY[0x277D03988] + 7);
          if (os_log_type_enabled(v30, v31))
          {
            clientID2 = [(DACalDAViCalItem *)v29 clientID];
            intValue2 = [clientID2 intValue];
            *buf = 138412802;
            v70 = typeCopy;
            v71 = 1024;
            v72 = v64;
            v73 = 1024;
            v74 = intValue2;
            _os_log_impl(&dword_2484B2000, v30, v31, "Adding change of type %@ for change row id %d on item with uid %d", buf, 0x18u);
          }

          [(DACalDAViCalItem *)v29 addChangeOfType:typeCopy forChangeRowid:v64];
        }

LABEL_49:
        CFRelease(Mutable);
        goto LABEL_50;
      }

      v41 = DALoggingwithCategory();
      v42 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = CalCalendarItemGetRowID();
        *buf = 138412802;
        v70 = v62;
        v71 = 1024;
        v72 = v64;
        v73 = 1024;
        v74 = v43;
        v44 = "Ignoring change of type %@ for change row id %d on item with uid %d because it is self organized with a client schedule agent";
        v45 = v41;
        v46 = v42;
        v47 = 24;
LABEL_36:
        _os_log_impl(&dword_2484B2000, v45, v46, v44, buf, v47);
      }
    }

    else
    {
      v51 = v37;
      v41 = DALoggingwithCategory();
      v52 = *(MEMORY[0x277D03988] + 7);
      neededCopy = v63;
      if (os_log_type_enabled(v41, v52))
      {
        v53 = CalCalendarItemGetRowID();
        *buf = 138413314;
        v70 = v62;
        v71 = 1024;
        v72 = v64;
        v73 = 1024;
        v74 = v53;
        v75 = 1024;
        v76 = UID;
        v77 = 1024;
        v78 = v51;
        v44 = "Ignoring change of type %@ for change row id %d on item with uid %d because it's now in calendar %d and this is %d";
        v45 = v41;
        v46 = v52;
        v47 = 36;
        goto LABEL_36;
      }
    }

    CFRelease(v35);
    goto LABEL_49;
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v25, v26))
  {
    *buf = 67109120;
    LODWORD(v70) = d;
    _os_log_impl(&dword_2484B2000, v25, v26, "Could not get an owning item with uid %d", buf, 8u);
  }

  Mutable = CFArrayCreateMutable(0, 1, 0);
  CFArrayAppendValue(Mutable, v64);
  if ([typeCopy isEqualToString:@"CalDAVChangeEvent"])
  {
    v27 = typeCopy;
    v28 = neededCopy;
  }

  else if ([typeCopy isEqualToString:@"CalDAVChangeTask"])
  {
    v27 = typeCopy;
    v28 = neededCopy;
  }

  else if ([typeCopy isEqualToString:@"CalDAVChangeAlarm"])
  {
    v27 = typeCopy;
    v28 = neededCopy;
  }

  else if ([typeCopy isEqualToString:@"CalDAVChangeAttendee"])
  {
    v27 = typeCopy;
    v28 = neededCopy;
  }

  else if ([typeCopy isEqualToString:@"CalDAVChangeOrganizer"])
  {
    v27 = typeCopy;
    v28 = neededCopy;
  }

  else
  {
    v58 = typeCopy;
    if ([typeCopy isEqualToString:@"CalDAVChangeAttachment"])
    {
      v27 = typeCopy;
      v28 = neededCopy;
    }

    else
    {
      v28 = neededCopy;
      v27 = v58;
      if (([v58 isEqualToString:@"CalDAVChangeRecurrence"] & 1) == 0)
      {
        [v58 isEqualToString:@"CalDAVChangeEventAction"];
      }
    }
  }

  principal4 = [(MobileCalDAVCalendar *)self principal];
  account3 = [principal4 account];
  changeTrackingID = [account3 changeTrackingID];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  neededCopy = v28;
  typeCopy = v27;
  if (Mutable)
  {
    goto LABEL_49;
  }

LABEL_50:
}

- (void)_addAddedItemsOfType:(int)type toArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v11 = CalDatabaseCopyCalendarItemChangesInCalendar();
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = @"tasks";
      if (type == 2)
      {
        v16 = @"events";
      }

      *buf = 138412546;
      selfCopy = v16;
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_2484B2000, v14, v15, "Gathering added %@. Change index is %d", buf, 0x12u);
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v12, v13, "Could not find a calendar with that matched %@", buf, 0xCu);
    }
  }
}

- (id)copyAddedItems
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _addAddedItemsOfType:2 toArray:v3];
  v4 = [v3 count];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "%ld added events found", &v10, 0xCu);
  }

  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _addAddedItemsOfType:3 toArray:v3];
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v3 count];
      v10 = 134217984;
      v11 = v8 - v4;
      _os_log_impl(&dword_2484B2000, v7, v6, "%ld added tasks found", &v10, 0xCu);
    }
  }

  return v3;
}

- (void)_gatherModifiedItemsFromCalChangesCall:(void *)call forType:(id)type inArray:(id)array
{
  v27 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  v14 = [dbHelper calDatabaseForAccountID:accountID];

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    *theDict = 0;
    (call)(v14, getCalCalendar, theDict);
    if (*theDict)
    {
      Value = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF75F0]);
      v17 = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF7608]);
      v18 = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF75E0]);
      if (Value)
      {
        v19 = v18;
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v21 = Count;
          for (i = 0; i != v21; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
            [(MobileCalDAVCalendar *)self _addCalendarItemWithRowID:ValueAtIndex toArrayIfNeeded:arrayCopy withChangeRowid:CFArrayGetValueAtIndex(v19 changeType:i), typeCopy];
          }
        }
      }

      if (*theDict)
      {
        CFRelease(*theDict);
      }
    }
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *theDict = 138412290;
      *&theDict[4] = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }
}

- (void)_gatherModifiedEventsInArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyEventChangesInCalendar();
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 67109120;
      v15 = v9;
      _os_log_impl(&dword_2484B2000, v12, v13, "Gathering modified events. Change index is %d", buf, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v10, v11, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }
}

- (void)_gatherModifiedTasksInArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyTaskChangesInCalendar();
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      v14[0] = 67109120;
      v14[1] = v9;
      _os_log_impl(&dword_2484B2000, v12, v13, "Gathering modified tasks. Change index is %d", v14, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v10, v11, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }
}

- (id)copyModifiedItems
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7140] forType:@"CalDAVChangeAlarm" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7160] forType:@"CalDAVChangeAttendee" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7178] forType:@"CalDAVChangeOrganizer" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7150] forType:@"CalDAVChangeAttachment" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7180] forType:@"CalDAVChangeRecurrence" inArray:v3];
  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _gatherModifiedTasksInArray:v3];
  }

  [(MobileCalDAVCalendar *)self _gatherModifiedEventsInArray:v3];
  return v3;
}

- (void)_addAddedRecurrenceSplitItemsToArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyCalendarItemChangesInCalendar();
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 67109120;
      v16 = v9;
      _os_log_impl(&dword_2484B2000, v13, v14, "Gathering added recurrence split events. Change index is %d", buf, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = arrayCopy;
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }

    arrayCopy = v10;
  }
}

- (id)copyRecurrenseSplitItems
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _addAddedRecurrenceSplitItemsToArray:v3];
  v4 = [v3 count];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "%ld added recurrence split items found", &v8, 0xCu);
  }

  return v3;
}

- (void)_gatherDeletedChanges:(void *)changes inDictionary:(id)dictionary
{
  v70 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  v11 = [dbHelper calDatabaseForAccountID:accountID];

  selfCopy = self;
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v13 = MEMORY[0x277D03988];
  if (getCalCalendar)
  {
    v65 = 0;
    v14 = (changes)(v11, getCalCalendar, &v65);
    if (v65)
    {
      Value = CFDictionaryGetValue(v65, *MEMORY[0x277CF75E0]);
      theArray = CFDictionaryGetValue(v65, *MEMORY[0x277CF75F0]);
      v15 = CFDictionaryGetValue(v65, *MEMORY[0x277CF7618]);
      v55 = CFDictionaryGetValue(v65, *MEMORY[0x277CF75E8]);
      v62 = CFDictionaryGetValue(v65, *MEMORY[0x277CF7628]);
      v54 = CFDictionaryGetValue(v65, *MEMORY[0x277CF7610]);
      v53 = CFDictionaryGetValue(v65, *MEMORY[0x277CF75F8]);
    }

    else
    {
      v53 = 0;
      v54 = 0;
      v62 = 0;
      v55 = 0;
      v15 = 0;
      theArray = 0;
      Value = 0;
    }

    changesCopy = changes;
    v18 = DALoggingwithCategory();
    v64 = *(v13 + 6);
    if (os_log_type_enabled(v18, v64))
    {
      *buf = 67109120;
      *v67 = v14;
      _os_log_impl(&dword_2484B2000, v18, v64, "Gathering deleted items. Change index is %d", buf, 8u);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v20 = Count;
        v21 = 0;
        v22 = *MEMORY[0x277CF7648];
        v23 = *(v13 + 3);
        v57 = *MEMORY[0x277CF7648];
        v60 = v23;
        v59 = v15;
        while (v22 != CFArrayGetValueAtIndex(v15, v21))
        {
LABEL_40:
          if (v20 == ++v21)
          {
            goto LABEL_47;
          }
        }

        v24 = CFArrayGetValueAtIndex(v62, v21);
        if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (changesCopy == MEMORY[0x277CF7170])
          {
            v48 = CalGetRealUIDFromRecurrenceUID();
            Mutable = CalDatabaseCopyEventWithExternalIDInCalendar();

            if (Mutable)
            {
              v49 = DALoggingwithCategory();
              if (os_log_type_enabled(v49, v64))
              {
                RowID = CalCalendarItemGetRowID();
                *buf = 67109120;
                *v67 = RowID;
                _os_log_impl(&dword_2484B2000, v49, v64, "Found an owning event: %d", buf, 8u);
              }

LABEL_38:
              CFRelease(Mutable);
LABEL_39:

              v15 = v59;
              goto LABEL_40;
            }

            v27 = 2;
          }

          else
          {
            v27 = 3;
          }

          v25 = CFArrayGetValueAtIndex(v55, v21);
          if (v25)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          principal2 = [(MobileCalDAVCalendar *)selfCopy principal];
          account2 = [principal2 account];
          itemIDsToMoveActions = [account2 itemIDsToMoveActions];
          v31 = [itemIDsToMoveActions mutableCopy];

          v32 = [MEMORY[0x277CCABB0] numberWithInt:{CFArrayGetValueAtIndex(theArray, v21)}];
          v33 = [v31 objectForKeyedSubscript:v32];
          if (v33)
          {
            v34 = DALoggingwithCategory();
            if (os_log_type_enabled(v34, v64))
            {
              [v33 oldExternalID];
              v35 = v52 = dictionaryCopy;
              *buf = 138412290;
              *v67 = v35;
              _os_log_impl(&dword_2484B2000, v34, v64, "Found a really interesting move. We're going to steal the filename from the move action: %@", buf, 0xCu);

              dictionaryCopy = v52;
            }

            oldExternalID = [v33 oldExternalID];

            v25 = oldExternalID;
          }

          v23 = v60;

          if (v25)
          {
LABEL_52:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ([v25 length])
              {
                v37 = DALoggingwithCategory();
                if (os_log_type_enabled(v37, v64))
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
                  v39 = CFArrayGetValueAtIndex(Value, v21);
                  *buf = 67109634;
                  *v67 = ValueAtIndex;
                  *&v67[4] = 1024;
                  *&v67[6] = v39;
                  v68 = 2112;
                  v69 = v25;
                  _os_log_impl(&dword_2484B2000, v37, v64, "Found a delete of the item at row %d (change row is %d) for filename %@", buf, 0x18u);
                }

                LODWORD(v51) = v27;
                v40 = [(MobileCalDAVCalendar *)selfCopy _itemPropertyDictForItemAtIndex:v21 withChangedIDs:theArray withChangedRowids:Value withExternalIDs:v55 uniqueIdentifiers:v62 significantAttributeChanges:v54 oldCalendarIDs:v53 entityType:v51];
                [dictionaryCopy setObject:v40 forKeyedSubscript:v25];

                v22 = v57;
                goto LABEL_39;
              }
            }
          }

          v41 = DALoggingwithCategory();
          if (os_log_type_enabled(v41, v23))
          {
            *buf = 138412290;
            *v67 = v24;
            _os_log_impl(&dword_2484B2000, v41, v23, "No filename exists for the deleted item with guid %@", buf, 0xCu);
          }
        }

        else
        {
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v23))
          {
            v26 = CFArrayGetValueAtIndex(theArray, v21);
            *buf = 67109120;
            *v67 = v26;
            _os_log_impl(&dword_2484B2000, v25, v23, "The calendar store had a delete we don't have a mapping for: %d", buf, 8u);
          }
        }

        v42 = DALoggingwithCategory();
        if (os_log_type_enabled(v42, v64))
        {
          *buf = 67109120;
          *v67 = v21;
          _os_log_impl(&dword_2484B2000, v42, v64, "Clearing change at index %d", buf, 8u);
        }

        Mutable = CFArrayCreateMutable(0, 1, 0);
        v44 = CFArrayGetValueAtIndex(Value, v21);
        CFArrayAppendValue(Mutable, v44);
        principal3 = [(MobileCalDAVCalendar *)selfCopy principal];
        account3 = [principal3 account];
        changeTrackingID = [account3 changeTrackingID];
        CalDatabaseClearIndividualChangeRowIDsForClient();

        v22 = v57;
        v23 = v60;
        if (!Mutable)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

LABEL_47:
    if (v65)
    {
      CFRelease(v65);
    }
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(v13 + 3);
    if (os_log_type_enabled(v16, v17))
    {
      *buf = 138412290;
      *v67 = self;
      _os_log_impl(&dword_2484B2000, v16, v17, "Could not find a calendar that matched %@", buf, 0xCu);
    }
  }
}

- (id)copyDeletedItems
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _gatherDeletedChanges:MEMORY[0x277CF7170] inDictionary:v3];
  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _gatherDeletedChanges:MEMORY[0x277CF7190] inDictionary:v3];
  }

  return v3;
}

- (id)_copyDeletedEventActions
{
  v11 = *MEMORY[0x277D85DE8];
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalDatabaseCopyEventActionChangesInCalendar();
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      *theDict = 138412290;
      *&theDict[4] = self;
      _os_log_impl(&dword_2484B2000, v7, v8, "Could not find a calendar that matched %@", theDict, 0xCu);
    }
  }

  return 0;
}

- (void)clearEventChanges
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:9];

  [(MobileCalDAVCalendar *)self setDeletedCalendarItems:0];
}

- (void)clearChangesForEntityType:(int)type
{
  v31 = *MEMORY[0x277D85DE8];
  changesToClear = self->_changesToClear;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)changesToClear objectForKeyedSubscript:v6];

  title = [(MobileCalDAVCalendar *)self title];
  v9 = CalEntityTypeGetName();
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (v7)
  {
    typeCopy = type;
    if (v12)
    {
      *buf = 134218498;
      Count = CFArrayGetCount(v7);
      v27 = 2114;
      v28 = v9;
      v29 = 2112;
      v30 = title;
      _os_log_impl(&dword_2484B2000, v10, v11, "Clearing %lu %{public}@ in %@", buf, 0x20u);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    [(MobileCalDAVCalendar *)self principal];
    v16 = v24 = title;
    [v16 account];
    v18 = v17 = v9;
    changeTrackingID = [v18 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    v9 = v17;
    v20 = self->_changesToClear;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:typeCopy];
    v21 = v20;
    title = v24;
    [(NSMutableDictionary *)v21 removeObjectForKey:v10];
  }

  else if (v12)
  {
    *buf = 138543618;
    Count = v9;
    v27 = 2112;
    v28 = title;
    _os_log_impl(&dword_2484B2000, v10, v11, "No %{public}@ to clear in %@", buf, 0x16u);
  }
}

- (void)addChangesToBeCleared:(__CFArray *)cleared forEntityType:(int)type
{
  v4 = *&type;
  if (!self->_changesToClear)
  {
    v7 = objc_opt_new();
    changesToClear = self->_changesToClear;
    self->_changesToClear = v7;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v9 = [(NSMutableDictionary *)self->_changesToClear objectForKeyedSubscript:?];

  if (v9)
  {
    Count = CFArrayGetCount(v9);
    v11 = CFArrayGetCount(cleared);
    Mutable = CFArrayCreateMutable(0, v11 + Count, 0);
    v15.length = CFArrayGetCount(v9);
    v15.location = 0;
    CFArrayAppendArray(Mutable, v9, v15);
    v16.length = CFArrayGetCount(cleared);
    v16.location = 0;
    CFArrayAppendArray(Mutable, cleared, v16);
    [(NSMutableDictionary *)self->_changesToClear setObject:Mutable forKeyedSubscript:v13];
  }

  else
  {
    [(NSMutableDictionary *)self->_changesToClear setObject:cleared forKeyedSubscript:v13];
  }
}

- (void)_clearChangesAtIndices:(id)indices forType:(int)type
{
  v32 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = DAStringFromCalEntityType();
      dACompactDescription = [indicesCopy DACompactDescription];
      *buf = 138412546;
      v29 = v8;
      v30 = 2112;
      v31 = dACompactDescription;
      _os_log_impl(&dword_2484B2000, v6, v7, "Clearing %@ changes at indices %@", buf, 0x16u);
    }

    Mutable = CFArrayCreateMutable(0, [indicesCopy count], 0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = indicesCopy;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          CFArrayAppendValue(Mutable, [*(*(&v23 + 1) + 8 * i) longValue]);
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v13);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    changeTrackingID = [account2 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

- (void)_clearChangesFromItem:(id)item
{
  originatingChangeItems = [item originatingChangeItems];
  [(MobileCalDAVCalendar *)self _clearChanges:originatingChangeItems shouldClearAttachmentChanges:1];
}

- (void)_clearChangesFromItem:(id)item shouldClearAttachmentChanges:(BOOL)changes
{
  changesCopy = changes;
  originatingChangeItems = [item originatingChangeItems];
  [(MobileCalDAVCalendar *)self _clearChanges:originatingChangeItems shouldClearAttachmentChanges:changesCopy];
}

- (void)_clearChanges:(id)changes shouldClearAttachmentChanges:(BOOL)attachmentChanges
{
  attachmentChangesCopy = attachmentChanges;
  changesCopy = changes;
  v6 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v6 forType:2];

  v7 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v7 forType:3];

  v8 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v8 forType:4];

  v9 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v9 forType:7];

  v10 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v10 forType:8];

  v11 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEventAction"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v11 forType:9];

  if (attachmentChangesCopy)
  {
    v12 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttachment"];
    [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v12 forType:11];
  }

  v13 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v13 forType:5];
}

- (void)_saveChangesAtIndices:(id)indices forType:(int)type
{
  v4 = *&type;
  v25 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = DAStringFromCalEntityType();
      dACompactDescription = [indicesCopy DACompactDescription];
      *buf = 138412546;
      v22 = v9;
      v23 = 2112;
      v24 = dACompactDescription;
      _os_log_impl(&dword_2484B2000, v7, v8, "Saving %@ changes at indices %@", buf, 0x16u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = indicesCopy;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          -[CalDAVDBChangeTrackingHelper saveChange:forEntityType:](self->_changeTracker, "saveChange:forEntityType:", [*(*(&v16 + 1) + 8 * i) intValue], v4);
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (void)_saveChangesForItem:(id)item
{
  originatingChangeItems = [item originatingChangeItems];
  [(MobileCalDAVCalendar *)self _saveChanges:originatingChangeItems];
}

- (void)_saveChanges:(id)changes
{
  changesCopy = changes;
  v5 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v5 forType:2];

  v6 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v6 forType:3];

  v7 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v7 forType:4];

  v8 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v8 forType:7];

  v9 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v9 forType:8];

  v10 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttachment"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v10 forType:11];

  v11 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v11 forType:5];

  v12 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEventAction"];

  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v12 forType:9];
}

- (id)_actionsForJunkItemsInModifiedItems:(id)items alreadySentItems:(id)sentItems
{
  v41 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  sentItemsCopy = sentItems;
  v29 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    type = *(MEMORY[0x277D03988] + 3);
    v31 = v8;
    v32 = sentItemsCopy;
    v30 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        calItem = [v13 calItem];
        if (calItem)
        {
          v15 = calItem;
          if ([(MobileCalDAVCalendar *)self _isItemJunk:calItem])
          {
            v16 = CalEntityCopyRecordID();
            if (v16)
            {
              v17 = v16;
              if (([sentItemsCopy containsObject:v16] & 1) == 0)
              {
                v18 = [DACalDAViCalItem alloc];
                calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
                principal = [(MobileCalDAVCalendar *)self principal];
                accountID = [principal accountID];
                v22 = [(DACalDAViCalItem *)v18 initWithCalRecord:v15 inContainer:calendarURL accountID:accountID];

                sentItemsCopy = v32;
                serverID = [(DACalDAViCalItem *)v22 serverID];
                if (serverID)
                {
                  v24 = [objc_alloc(MEMORY[0x277CF7030]) initWithResourceURL:serverID];
                  originatingChangeItems = [v13 originatingChangeItems];
                  [v24 setChangeContext:originatingChangeItems];

                  [v29 addObject:v24];
                  [v32 addObject:v17];
                }

                v11 = v30;
                v8 = v31;
              }

              CFRelease(v17);
            }
          }
        }

        else
        {
          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, type))
          {
            serverID2 = [v13 serverID];
            *buf = 138412290;
            v39 = serverID2;
            _os_log_impl(&dword_2484B2000, v26, type, "Couldn't find an event ref for a modified event: %@", buf, 0xCu);
          }

          [(MobileCalDAVCalendar *)self _clearChangesFromItem:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v10);
  }

  return v29;
}

- (id)_recurrenceSplitActionsForItems:(id)items alreadySentItems:(id)sentItems
{
  v51 = *MEMORY[0x277D85DE8];
  sentItemsCopy = sentItems;
  itemsCopy = items;
  v37 = objc_opt_new();
  v6 = [itemsCopy sortedArrayUsingComparator:&__block_literal_global_110];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v45;
    type = *(MEMORY[0x277D03988] + 3);
    *&v8 = 138412290;
    v36 = v8;
    v39 = *v45;
    do
    {
      v11 = 0;
      v41 = v9;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * v11);
        [v12 calItem];
        RecurrenceInSetForEvent = CalEventCopyNextRecurrenceInSetForEvent();
        [v12 calItem];
        v14 = CalEventCopyNextRecurrenceInSetForEvent();
        [v12 calItem];
        v15 = CalEntityCopyRecordID();
        v16 = v15;
        if (RecurrenceInSetForEvent)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17 || v15 == 0)
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, type))
          {
            serverID = [v12 serverID];
            *buf = v36;
            v49 = serverID;
            _os_log_impl(&dword_2484B2000, v19, type, "Couldn't find split origin for event: %@", buf, 0xCu);
          }

          if (!RecurrenceInSetForEvent)
          {
            if (!v14)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(v14);
            goto LABEL_19;
          }
        }

        else
        {
          v21 = [DACalDAViCalItem alloc];
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          principal = [(MobileCalDAVCalendar *)self principal];
          accountID = [principal accountID];
          v25 = [(DACalDAViCalItem *)v21 initWithCalRecord:RecurrenceInSetForEvent inContainer:calendarURL accountID:accountID];
          serverID2 = [(DACalDAViCalItem *)v25 serverID];

          v27 = objc_alloc(MEMORY[0x277CBEAA8]);
          CalEventGetStartDate();
          v28 = [v27 initWithTimeIntervalSinceReferenceDate:?];
          [v12 calItem];
          v29 = CalEventCopyUniqueIdentifier();
          IsFloating = CalEventIsFloating();
          IsAllDay = CalEventIsAllDay();
          if (serverID2 && v28 && v29)
          {
            v32 = [objc_alloc(MEMORY[0x277CF7028]) initWithResourceURL:serverID2 recurrenceDate:v28 uidForCreatedSeries:v29 floating:IsFloating allday:IsAllDay];
            [v37 addObject:v32];
            [sentItemsCopy addObject:v16];
            originatingChangeItems = [v12 originatingChangeItems];
            [v32 setChangeContext:originatingChangeItems];
          }

          v10 = v39;
          v9 = v41;
        }

        CFRelease(RecurrenceInSetForEvent);
        if (v14)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (v16)
        {
          CFRelease(v16);
        }

        ++v11;
      }

      while (v9 != v11);
      v34 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      v9 = v34;
    }

    while (v34);
  }

  return v37;
}

uint64_t __73__MobileCalDAVCalendar__recurrenceSplitActionsForItems_alreadySentItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 calItem];
  CalEventGetStartDate();
  v6 = v5;
  [v4 calItem];

  CalEventGetStartDate();
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (id)_createActionsForItems:(id)items withAction:(int)action alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save
{
  dsCopy = ds;
  v61 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  sentItemsCopy = sentItems;
  v50 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v55;
    v15 = *(MEMORY[0x277D03988] + 3);
    v48 = *v55;
    v49 = v11;
    v47 = v15;
    do
    {
      v16 = 0;
      v52 = v13;
      do
      {
        if (*v55 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v54 + 1) + 8 * v16);
        calItem = [v17 calItem];
        if (calItem)
        {
          v19 = calItem;
          if ((CalEntityGetType() == 2 || CalEntityGetType() == 5) && (v20 = CalEventCopyOriginalEvent()) != 0)
          {
            action = 1;
            v19 = v20;
          }

          else
          {
            CFRetain(v19);
          }

          v23 = CalEntityCopyRecordID();
          if (v23 && ([sentItemsCopy containsObject:v23] & 1) == 0)
          {
            actionCopy = action;
            v24 = [DACalDAViCalItem alloc];
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            principal = [(MobileCalDAVCalendar *)self principal];
            accountID = [principal accountID];
            v28 = [(DACalDAViCalItem *)v24 initWithCalRecord:v19 inContainer:calendarURL accountID:accountID];

            originatingChangeItems = [v17 originatingChangeItems];
            [(DACalDAViCalItem *)v28 setOriginatingChangeItems:originatingChangeItems];

            serverID = [(DACalDAViCalItem *)v28 serverID];
            calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
            v32 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL2];

            serverID2 = [(DACalDAViCalItem *)v28 serverID];
            if (serverID2 || !dsCopy)
            {
            }

            else if (![(DACalDAViCalItem *)v28 prohibitLocalCreationOfServerID])
            {
              calendarURL3 = [(MobileCalDAVCalendar *)self calendarURL];
              filename = [(DACalDAViCalItem *)v28 filename];
              v36 = [calendarURL3 URLByAppendingPathComponent:filename];
              [(DACalDAViCalItem *)v28 setServerID:v36];

              serverID3 = [(DACalDAViCalItem *)v28 serverID];
              calendarURL4 = [(MobileCalDAVCalendar *)self calendarURL];
              v39 = [serverID3 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL4];

              CalCalendarItemSetExternalID();
              v32 = v39;
            }

            action = actionCopy;
            if (v32)
            {
              [(NSMutableDictionary *)self->_URLToRecordIDMap setObject:v23 forKeyedSubscript:v32];
            }

            v40 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:actionCopy context:v28];
            originatingChangeItems2 = [v17 originatingChangeItems];
            [v40 setChangeContext:originatingChangeItems2];

            [v50 addObject:v40];
            v13 = v52;
            if (!actionCopy)
            {
              newlyAddedItems = self->_newlyAddedItems;
              if (!newlyAddedItems)
              {
                v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v44 = self->_newlyAddedItems;
                self->_newlyAddedItems = v43;

                newlyAddedItems = self->_newlyAddedItems;
              }

              [(NSMutableArray *)newlyAddedItems addObject:v28];
            }

            [sentItemsCopy addObject:v23];

            v14 = v48;
            v11 = v49;
            v15 = v47;
          }

          else
          {
            if (action == 1)
            {
              [(MobileCalDAVCalendar *)self _clearChangesFromItem:v17 shouldClearAttachmentChanges:0];
            }

            if (!v23)
            {
              goto LABEL_34;
            }
          }

          CFRelease(v23);
LABEL_34:
          CFRelease(v19);
          goto LABEL_35;
        }

        v21 = DALoggingwithCategory();
        if (os_log_type_enabled(v21, v15))
        {
          serverID4 = [v17 serverID];
          *buf = 138412290;
          v59 = serverID4;
          _os_log_impl(&dword_2484B2000, v21, v15, "Couldn't find an event ref for an added event: %@", buf, 0xCu);

          v13 = v52;
        }

        [(MobileCalDAVCalendar *)self _clearChangesFromItem:v17];
LABEL_35:
        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v54 objects:v60 count:16];
    }

    while (v13);
  }

  return v50;
}

- (BOOL)_shouldRecordError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CFDB18]])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqualToString:*MEMORY[0x277CFDB80]])
  {

    goto LABEL_9;
  }

  code2 = [errorCopy code];

  if (code2 != 412)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v8 = 0;
LABEL_10:

  return v8;
}

- (void)_clearExistingHTTPErrorForCalItem:(void *)item
{
  if (CalCalendarItemHasErrorCode())
  {
    CalCalendarItemSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)_recordError:(id)error forCalItem:(void *)item
{
  v13[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = errorCopy;
  if (item)
  {
    if (errorCopy)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:errorCopy])
      {
        v8 = MEMORY[0x24C1CF2F0](item);
        Error = CalDatabaseCreateError();
        v12 = *MEMORY[0x277CCA7E8];
        cal_serializableError = [v7 cal_serializableError];
        v13[0] = cal_serializableError;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

        CalErrorSetCalendarItemErrorCode();
        CalCalendarItemSetError();
        CFRelease(Error);
        CFRelease(v8);
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }

    else
    {
      [(MobileCalDAVCalendar *)self _clearExistingHTTPErrorForCalItem:item];
    }
  }
}

- (BOOL)hasCalendarErrorOfType:(unint64_t)type
{
  calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
  if (calCalendar)
  {

    LOBYTE(calCalendar) = MEMORY[0x282147380]();
  }

  return calCalendar;
}

- (void)clearCalendarErrorOfType:(unint64_t)type
{
  if ([(MobileCalDAVCalendar *)self hasCalendarErrorOfType:type])
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)recordCalendarError:(id)error ofType:(unint64_t)type
{
  v13[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
  if (errorCopy)
  {
    v7 = calCalendar;
    if (calCalendar)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:errorCopy])
      {
        v8 = MEMORY[0x24C1CF2F0](v7);
        Error = CalDatabaseCreateError();
        v12 = *MEMORY[0x277CCA7E8];
        cal_serializableError = [errorCopy cal_serializableError];
        v13[0] = cal_serializableError;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

        CalErrorSetCalendarErrorCode();
        CalCalendarSetError();
        CFRelease(Error);
        CFRelease(v8);
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (void)putAction:(id)action completedWithError:(id)error
{
  v33 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemsPendingSync = self->_itemsPendingSync;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  -[MobileCalDAVCalendar _recordError:forCalItem:](self, "_recordError:forCalItem:", errorCopy, [context calItem]);
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  v13 = os_log_type_enabled(v10, v12);
  if (!errorCopy)
  {
    if (v13)
    {
      serverID = [context serverID];
      v29 = 138412290;
      v30 = serverID;
      _os_log_impl(&dword_2484B2000, v10, v12, "Put of item at %@ succeeded without error", &v29, 0xCu);
    }

    goto LABEL_12;
  }

  if (v13)
  {
    serverID2 = [context serverID];
    v29 = 138412546;
    v30 = errorCopy;
    v31 = 2112;
    v32 = serverID2;
    _os_log_impl(&dword_2484B2000, v10, v12, "Encountered error %@ when putting item to %@", &v29, 0x16u);
  }

  domain = [errorCopy domain];
  v16 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v16)
  {
    code = [errorCopy code];
    switch(code)
    {
      case 412:
LABEL_8:
        serverID3 = [context serverID];
        [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:serverID3];

        [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_12:
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v12))
        {
          serverID4 = [context serverID];
          v29 = 138412290;
          v30 = serverID4;
          _os_log_impl(&dword_2484B2000, v20, v12, "Clearing local changes for the item at %@", &v29, 0xCu);
        }

        [(MobileCalDAVCalendar *)self _clearChangesFromItem:context];
        goto LABEL_23;
      case 409:
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v12))
        {
          serverID5 = [context serverID];
          v29 = 138412290;
          v30 = serverID5;
          _os_log_impl(&dword_2484B2000, v22, v12, "Received a 409 conflict for the event at %@. Creating a new UUID and trying again.", &v29, 0xCu);
        }

        da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
        [context calItem];
        CalCalendarItemSetUniqueIdentifier();
        v25 = DALoggingwithCategory();
        v26 = *(v11 + 7);
        if (os_log_type_enabled(v25, v26))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_2484B2000, v25, v26, "Marking calendar as dirty because we just received a 409 conflict error", &v29, 2u);
        }

        self->_isDirty = 1;
        break;
      case 403:
        goto LABEL_8;
    }
  }

  v27 = DALoggingwithCategory();
  if (os_log_type_enabled(v27, v12))
  {
    serverID6 = [context serverID];
    v29 = 138412290;
    v30 = serverID6;
    _os_log_impl(&dword_2484B2000, v27, v12, "Saving local changes to try again later for the item at %@", &v29, 0xCu);
  }

  [(MobileCalDAVCalendar *)self _saveChangesForItem:context];
LABEL_23:
}

- (void)deleteAction:(id)action completedWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemsPendingSync = self->_itemsPendingSync;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (!errorCopy)
  {
    if (v12)
    {
      v23 = 138412290;
      v24 = context;
      _os_log_impl(&dword_2484B2000, v10, v11, "Delete of item at %@ succeeded without error", &v23, 0xCu);
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v23 = 138412546;
    v24 = errorCopy;
    v25 = 2112;
    v26 = context;
    _os_log_impl(&dword_2484B2000, v10, v11, "Encountered error %@ when deleting item from %@", &v23, 0x16u);
  }

  domain = [errorCopy domain];
  v14 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v14)
  {
    v15 = 0;
    v16 = [errorCopy code] - 403;
    if (v16 <= 9 && ((1 << v16) & 0x203) != 0)
    {
      [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:context];
      [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_11:
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [(NSMutableDictionary *)self->_deletedCalendarItems objectForKeyedSubscript:context];
  if (v17)
  {
    v18 = DALoggingwithCategory();
    v19 = os_log_type_enabled(v18, v11);
    if (v15)
    {
      if (v19)
      {
        v23 = 138412290;
        v24 = context;
        _os_log_impl(&dword_2484B2000, v18, v11, "Clearing local delete change for item at %@", &v23, 0xCu);
      }

      v20 = MEMORY[0x277CBEB98];
      rowid = [v17 rowid];
      rowid2 = [v20 setWithObject:rowid];
      -[MobileCalDAVCalendar _clearChangesAtIndices:forType:](self, "_clearChangesAtIndices:forType:", rowid2, [v17 entityType]);
    }

    else
    {
      if (v19)
      {
        v23 = 138412290;
        v24 = context;
        _os_log_impl(&dword_2484B2000, v18, v11, "Keeping delete change to try again later for item at %@", &v23, 0xCu);
      }

      rowid = [(MobileCalDAVCalendar *)self changeTracker];
      rowid2 = [v17 rowid];
      [rowid saveChange:objc_msgSend(rowid2 forEntityType:{"intValue"), objc_msgSend(v17, "entityType")}];
    }
  }
}

- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag
{
  itemsPendingSync = self->_itemsPendingSync;
  createdScheduleTagCopy = createdScheduleTag;
  eTagCopy = eTag;
  lCopy = l;
  scheduleTagCopy = scheduleTag;
  tagCopy = tag;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  resourceURL = [actionCopy resourceURL];
  [(MobileCalDAVCalendar *)self setEtag:tagCopy forItemAtURL:resourceURL];

  resourceURL2 = [actionCopy resourceURL];
  [(MobileCalDAVCalendar *)self setScheduleTag:scheduleTagCopy forItemAtURL:resourceURL2];

  uidForCreatedSeries = [actionCopy uidForCreatedSeries];

  [(MobileCalDAVCalendar *)self setURL:lCopy forResourceWithUUID:uidForCreatedSeries];
  [(MobileCalDAVCalendar *)self setEtag:eTagCopy forItemAtURL:lCopy];

  [(MobileCalDAVCalendar *)self setScheduleTag:createdScheduleTagCopy forItemAtURL:lCopy];
}

- (void)recurrenceSplitAction:(id)action failedWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  errorCopy = error;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:actionCopy];
  domain = [errorCopy domain];
  v9 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9)
  {
    code = [errorCopy code];
    if (code != 401 && (code - 500) > 0xFFFFFFFFFFFFFF9BLL)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        resourceURL = [actionCopy resourceURL];
        v23 = 138412546;
        v24 = resourceURL;
        v25 = 2112;
        v26 = errorCopy;
        _os_log_impl(&dword_2484B2000, v11, v12, "Split action for item at URL %@ failed with error %@. Clearing recurrence-set.", &v23, 0x16u);
      }

      resourceURL2 = [actionCopy resourceURL];
      calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
      v16 = [resourceURL2 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

      v17 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v16];
      if (v17)
      {
        v18 = v17;
        v19 = CalEventCopyRecurrenceSet();
        if (v19)
        {
          changeContext = v19;
          CalEventSetRecurrenceSet();
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          CFRelease(v18);
LABEL_16:

          goto LABEL_17;
        }

        CFRelease(v18);
      }

      else
      {
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v12))
        {
          v23 = 138412290;
          v24 = v16;
          _os_log_impl(&dword_2484B2000, v22, v12, "Unable to find the item we were trying to split with URL %@.", &v23, 0xCu);
        }
      }

      changeContext = [actionCopy changeContext];
      [(MobileCalDAVCalendar *)self _clearChanges:changeContext];
      goto LABEL_16;
    }
  }

  v16 = DALoggingwithCategory();
  v21 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v16, v21))
  {
    changeContext = [actionCopy resourceURL];
    v23 = 138412546;
    v24 = changeContext;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2484B2000, v16, v21, "Split action for item at URL %@ failed with error %@. Error appears to be transient; we will try again next time.", &v23, 0x16u);
    goto LABEL_16;
  }

LABEL_17:
}

- (void)recurrenceSplitActionsCompletedWithError:(id)error
{
  if ([(MobileCalDAVCalendar *)self isDirty])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
  }
}

- (void)reportJunkAction:(id)action completedWithError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  errorCopy = error;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:actionCopy];
  if (!errorCopy)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      resourceURL = [actionCopy resourceURL];
      v22 = 138412290;
      v23 = resourceURL;
      v17 = "Successfully reported URL %@ as junk.";
      v18 = v14;
      v19 = v15;
      v20 = 12;
LABEL_11:
      _os_log_impl(&dword_2484B2000, v18, v19, v17, &v22, v20);
    }

LABEL_12:

    changeContext = [actionCopy changeContext];
    [(MobileCalDAVCalendar *)self _clearChanges:changeContext];
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v9 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9 && ([errorCopy code] - 500) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v21))
    {
      resourceURL = [actionCopy resourceURL];
      v22 = 138412546;
      v23 = resourceURL;
      v24 = 2112;
      v25 = errorCopy;
      v17 = "Reporting junk for URL %@ failed with error %@. Will not try again.";
      v18 = v14;
      v19 = v21;
      v20 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v11))
  {
    resourceURL2 = [actionCopy resourceURL];
    v22 = 138412546;
    v23 = resourceURL2;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_impl(&dword_2484B2000, v10, v11, "Reporting junk for URL %@ failed with error %@. Trying again later.", &v22, 0x16u);
  }

  changeContext = [actionCopy changeContext];
  [(MobileCalDAVCalendar *)self _saveChanges:changeContext];
LABEL_13:
}

- (NSArray)shareeActions
{
  shareeActions = self->_shareeActions;
  if (!shareeActions)
  {
    [(MobileCalDAVCalendar *)self _collectShareeActions];
    shareeActions = self->_shareeActions;
  }

  return shareeActions;
}

- (void)clearShareeActions
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:15];

  [(MobileCalDAVCalendar *)self setShareeActions:0];
}

- (void)_addShareeWithRowID:(id)d toDictionaryIfNeeded:(id)needed
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  neededCopy = needed;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v12 = [neededCopy objectForKeyedSubscript:dCopy];

  if (!v12)
  {
    [dCopy intValue];
    v13 = CalDatabaseCopyShareeWithUID();
    if (v13)
    {
      v14 = v13;
      v15 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithCalSharee:v13];
      if (v15)
      {
        [neededCopy setObject:v15 forKeyedSubscript:dCopy];
      }

      CFRelease(v14);
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v16, v17))
      {
        v18[0] = 67109120;
        v18[1] = [dCopy intValue];
        _os_log_impl(&dword_2484B2000, v16, v17, "Could not get an owning sharee with uid %d", v18, 8u);
      }
    }
  }
}

- (void)_collectShareeActions
{
  v54 = *MEMORY[0x277D85DE8];
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  wasMigrated = [account wasMigrated];

  if (!wasMigrated)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    dbHelper = [account2 dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      theDict = 0;
      if (CalDatabaseCopyShareeChangesInCalendar() == -1)
      {
        v12 = dictionary2;
LABEL_30:

        return;
      }

      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 134217984;
        selfCopy2 = 0;
        _os_log_impl(&dword_2484B2000, v13, v14, "Gathering modified sharees; found %li modified sharees", buf, 0xCu);
      }

      selfCopy = self;
      array = [MEMORY[0x277CBEB18] array];
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      allValues = [dictionary2 allValues];
      v16 = [(__CFArray *)allValues countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v44;
        v19 = *MEMORY[0x277CF6F90];
        v20 = *MEMORY[0x277CF6F98];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(allValues);
            }

            v22 = *(*(&v43 + 1) + 8 * i);
            v23 = objc_alloc(MEMORY[0x277CFDB90]);
            v49[1] = v20;
            v50[0] = v22;
            v49[0] = v19;
            v24 = [MEMORY[0x277CCABB0] numberWithBool:0];
            v50[1] = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
            v26 = [v23 initWithAction:2 context:v25];

            [(NSArray *)array addObject:v26];
          }

          v17 = [(__CFArray *)allValues countByEnumeratingWithState:&v43 objects:v51 count:16];
        }

        while (v17);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      allValues2 = [dictionary allValues];
      v28 = [allValues2 countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v40;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v40 != v30)
            {
              objc_enumerationMutation(allValues2);
            }

            v32 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:1 context:*(*(&v39 + 1) + 8 * j)];
            [(NSArray *)array addObject:v32];
          }

          v29 = [allValues2 countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v29);
      }

      shareeActions = selfCopy->_shareeActions;
      selfCopy->_shareeActions = array;
    }

    else
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v10, v11))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_2484B2000, v10, v11, "Could not find a calendar with that matched %@", buf, 0xCu);
      }
    }

    v12 = dictionary2;
    goto LABEL_30;
  }

  v38 = objc_opt_new();
  [(MobileCalDAVCalendar *)self setShareeActions:?];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];

  if (![account wasMigrated])
  {
    v33 = account;
    v34 = blockCopy;
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    dbHelper = [account2 dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    LODWORD(principal2) = CalDatabaseGetSequenceNumber();
    [(MobileCalDAVCalendar *)self createSyncActions];
    [(MobileCalDAVCalendar *)self generateICSForActions];
    if (principal2 != CalDatabaseGetSequenceNumber())
    {
      selfCopy = self;
      do
      {
        principal3 = [(MobileCalDAVCalendar *)self principal];
        account3 = [principal3 account];
        serverVersion = [account3 serverVersion];
        supportsCalendarRecurrenceSplit = [serverVersion supportsCalendarRecurrenceSplit];

        if (!supportsCalendarRecurrenceSplit)
        {
          break;
        }

        copyRecurrenseSplitItems = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
        v16 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:copyRecurrenseSplitItems alreadySentItems:0];
        v17 = [v16 count];
        if (v17 == [(NSArray *)self->_recurrenceSplitActions count])
        {
          if (!v17)
          {

            break;
          }

          v35 = copyRecurrenseSplitItems;
          v18 = 0;
          v19 = 0;
          v37 = v17;
          do
          {
            v20 = [v16 objectAtIndexedSubscript:v19];
            v21 = [(NSArray *)self->_recurrenceSplitActions objectAtIndexedSubscript:v19];
            resourceURL = [v20 resourceURL];
            resourceURL2 = [v21 resourceURL];
            if ([resourceURL isEqual:resourceURL2])
            {
              recurrenceDate = [v20 recurrenceDate];
              [v21 recurrenceDate];
              v26 = v25 = v16;
              v27 = [recurrenceDate isEqual:v26] ^ 1;

              v16 = v25;
              v17 = v37;

              self = selfCopy;
              v18 |= v27;
            }

            else
            {
              v18 = 1;
            }

            ++v19;
          }

          while (v17 != v19);

          if ((v18 & 1) == 0)
          {
            break;
          }
        }

        else
        {
        }

        CalDatabaseRevert();
        SequenceNumber = CalDatabaseGetSequenceNumber();
        [(MobileCalDAVCalendar *)self createSyncActions];
        [(MobileCalDAVCalendar *)self generateICSForActions];
      }

      while (SequenceNumber != CalDatabaseGetSequenceNumber());
    }

    account = v33;
    blockCopy = v34;
    if ([(NSArray *)self->_syncActions count]&& ct_green_tea_logging_enabled())
    {
      backingAccount = [v33 backingAccount];
      isICloudAccount = [backingAccount isICloudAccount];

      if (isICloudAccount)
      {
        v31 = DALoggingwithCategory();
        v32 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v31, v32))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v31, v32, "Skipping greentea log for iCloud account", buf, 2u);
        }
      }

      else
      {
        DAGreenTeaLog();
      }
    }
  }

  blockCopy[2](blockCopy, self);
}

- (void)createSyncActions
{
  v131 = *MEMORY[0x277D85DE8];
  v105 = objc_opt_new();
  v3 = objc_opt_new();
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = v3;

  v122 = 0;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  copyDeletedItems = [(MobileCalDAVCalendar *)self copyDeletedItems];
  obj = [copyDeletedItems allKeys];
  v5 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
  v6 = *(MEMORY[0x277D03988] + 6);
  selfCopy = self;
  if (v5)
  {
    v7 = v5;
    v8 = *v119;
    type = *(MEMORY[0x277D03988] + 4);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v119 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v118 + 1) + 8 * i);
        if (v10)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = DALoggingwithCategory();
            if (os_log_type_enabled(v11, v6))
            {
              *buf = 138412290;
              v129 = v10;
              _os_log_impl(&dword_2484B2000, v11, v6, "Sending up a delete for the item at URL %@", buf, 0xCu);
            }

            if (!self->_deletedCalendarItems)
            {
              v12 = objc_opt_new();
              deletedCalendarItems = self->_deletedCalendarItems;
              self->_deletedCalendarItems = v12;
            }

            v14 = [copyDeletedItems objectForKeyedSubscript:v10];
            v15 = [v14 objectForKeyedSubscript:@"ChangeRowid"];

            v16 = [copyDeletedItems objectForKeyedSubscript:v10];
            v17 = [v16 objectForKeyedSubscript:@"EntityType"];
            selfCopy2 = self;
            intValue = [v17 intValue];

            if (intValue)
            {
              v20 = intValue;
            }

            else
            {
              v20 = 2;
            }

            calendarURL = [(MobileCalDAVCalendar *)selfCopy2 calendarURL];
            v22 = [v10 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

            if (v22)
            {
              if (v15)
              {
                v23 = objc_opt_new();
                [v23 setRowid:v15];
                [v23 setEntityType:v20];
                [(NSMutableDictionary *)selfCopy->_deletedCalendarItems setObject:v23 forKeyedSubscript:v22];
              }

              v24 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v22];
              if (v20 == 2)
              {
                v126 = @"CalDAVChangeEvent";
                v25 = [MEMORY[0x277CBEB98] setWithObject:v15];
                v127 = v25;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                [v24 setChangeContext:v26];
              }

              [(NSArray *)v105 addObject:v24];
              self = selfCopy;
            }

            else
            {
              v27 = DALoggingwithCategory();
              if (os_log_type_enabled(v27, type))
              {
                *buf = 138412290;
                v129 = v10;
                _os_log_impl(&dword_2484B2000, v27, type, "Couldn't get a URL for the delete of %@", buf, 0xCu);
              }

              v24 = [MEMORY[0x277CBEB98] setWithObject:v15];
              self = selfCopy;
              [(MobileCalDAVCalendar *)selfCopy _clearChangesAtIndices:v24 forType:v20];
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v118 objects:v130 count:16];
    }

    while (v7);
  }

  v28 = DALoggingwithCategory();
  if (os_log_type_enabled(v28, v6))
  {
    v29 = [copyDeletedItems count];
    *buf = 134217984;
    v129 = v29;
    _os_log_impl(&dword_2484B2000, v28, v6, "Found %lu deleted items", buf, 0xCu);
  }

  v30 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  serverVersion = [account serverVersion];
  supportsCalendarRecurrenceSplit = [serverVersion supportsCalendarRecurrenceSplit];

  if (supportsCalendarRecurrenceSplit)
  {
    copyRecurrenseSplitItems = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
    v36 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:copyRecurrenseSplitItems alreadySentItems:v30];
    v37 = DALoggingwithCategory();
    if (os_log_type_enabled(v37, v6))
    {
      v38 = [(NSArray *)v36 count];
      *buf = 134217984;
      v129 = v38;
      _os_log_impl(&dword_2484B2000, v37, v6, "Found %lu split items", buf, 0xCu);
    }

    recurrenceSplitActions = self->_recurrenceSplitActions;
    self->_recurrenceSplitActions = v36;
    v40 = v36;

    [(NSMutableSet *)self->_itemsPendingSync addObjectsFromArray:v40];
  }

  v41 = [v30 mutableCopy];
  copyAddedItems = [(MobileCalDAVCalendar *)self copyAddedItems];
  v94 = v41;
  v42 = [MobileCalDAVCalendar _createActionsForItems:"_createActionsForItems:withAction:alreadySentItems:createServerIDs:shouldSave:" withAction:? alreadySentItems:? createServerIDs:? shouldSave:?];
  v43 = DALoggingwithCategory();
  if (os_log_type_enabled(v43, v6))
  {
    v44 = [v42 count];
    *buf = 134217984;
    v129 = v44;
    _os_log_impl(&dword_2484B2000, v43, v6, "Found %lu added items", buf, 0xCu);
  }

  v92 = v42;
  [(NSArray *)v105 addObjectsFromArray:v42];
  v96 = v30;
  [v94 minusSet:v30];
  copyModifiedItems = [(MobileCalDAVCalendar *)self copyModifiedItems];
  principal2 = [(MobileCalDAVCalendar *)self principal];
  account2 = [principal2 account];
  serverVersion2 = [account2 serverVersion];
  supportsCalendarRecurrenceSplit2 = [serverVersion2 supportsCalendarRecurrenceSplit];

  if (supportsCalendarRecurrenceSplit2)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v50 = copyModifiedItems;
    v51 = [v50 countByEnumeratingWithState:&v114 objects:v125 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v115;
      do
      {
        for (j = 0; j != v52; ++j)
        {
          if (*v115 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v114 + 1) + 8 * j);
          [v55 calItem];
          v56 = CalEntityCopyRecordID();
          if ([v96 containsObject:v56])
          {
            [v55 setProhibitLocalCreationOfServerID:1];
          }

          if (v56)
          {
            CFRelease(v56);
          }
        }

        v52 = [v50 countByEnumeratingWithState:&v114 objects:v125 count:16];
      }

      while (v52);
    }
  }

  principal3 = [(MobileCalDAVCalendar *)self principal];
  account3 = [principal3 account];
  serverVersion3 = [account3 serverVersion];
  supportsCalendarAudit = [serverVersion3 supportsCalendarAudit];

  if (supportsCalendarAudit)
  {
    v61 = v94;
    v62 = [(MobileCalDAVCalendar *)self _actionsForJunkItemsInModifiedItems:copyModifiedItems alreadySentItems:v94];
  }

  else
  {
    v62 = 0;
    v61 = v94;
  }

  reportJunkActions = self->_reportJunkActions;
  self->_reportJunkActions = v62;

  v64 = [(MobileCalDAVCalendar *)self _createActionsForItems:copyModifiedItems withAction:1 alreadySentItems:v61 createServerIDs:1 shouldSave:&v122];
  v65 = DALoggingwithCategory();
  if (os_log_type_enabled(v65, v6))
  {
    v66 = [v64 count];
    *buf = 134217984;
    v129 = v66;
    _os_log_impl(&dword_2484B2000, v65, v6, "Found %lu modified items", buf, 0xCu);
  }

  v91 = v64;
  [(NSArray *)v105 addObjectsFromArray:v64];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v97 = copyModifiedItems;
  v99 = [v97 countByEnumeratingWithState:&v110 objects:v124 count:16];
  v67 = 0;
  if (v99)
  {
    v98 = *v111;
    v68 = *MEMORY[0x277CF78F0];
    do
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v111 != v98)
        {
          objc_enumerationMutation(v97);
        }

        v70 = *(*(&v110 + 1) + 8 * k);
        if (([v70 statusChanged] & 1) != 0 || objc_msgSend(v70, "invitationStatusCleared"))
        {
          uniqueIdentifier = [v70 uniqueIdentifier];
          [v70 calItem];
          CalEventGetOriginalStartDate();
          v73 = v72 == 0.0 || v72 == v68;
          v103 = k;
          if (!v73)
          {
            v74 = CalGetRecurrenceUIDFromRealUID();

            uniqueIdentifier = v74;
          }

          typea = uniqueIdentifier;
          v75 = [(MobileCalDAVCalendar *)self removeInvitationsForItemWithUniqueIdentifier:uniqueIdentifier];
          if (!v67)
          {
            v67 = objc_opt_new();
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v76 = v75;
          v77 = [v76 countByEnumeratingWithState:&v106 objects:v123 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v107;
            do
            {
              for (m = 0; m != v78; ++m)
              {
                if (*v107 != v79)
                {
                  objc_enumerationMutation(v76);
                }

                v81 = *(*(&v106 + 1) + 8 * m);
                if (([v67 containsObject:v81] & 1) == 0)
                {
                  v82 = DALoggingwithCategory();
                  if (os_log_type_enabled(v82, v6))
                  {
                    absoluteString = [v81 absoluteString];
                    *buf = 138412290;
                    v129 = absoluteString;
                    _os_log_impl(&dword_2484B2000, v82, v6, "Creating a delete for the invitation at %@", buf, 0xCu);
                  }

                  v84 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v81];
                  originatingChangeItems = [v70 originatingChangeItems];
                  [v84 setChangeContext:originatingChangeItems];

                  [(NSArray *)v105 addObject:v84];
                  [v67 addObject:v81];
                }
              }

              v78 = [v76 countByEnumeratingWithState:&v106 objects:v123 count:16];
            }

            while (v78);
          }

          self = selfCopy;
          k = v103;
        }
      }

      v99 = [v97 countByEnumeratingWithState:&v110 objects:v124 count:16];
    }

    while (v99);
  }

  _copyDeletedEventActions = [(MobileCalDAVCalendar *)self _copyDeletedEventActions];
  v87 = DALoggingwithCategory();
  if (os_log_type_enabled(v87, v6))
  {
    v88 = [_copyDeletedEventActions count];
    *buf = 134217984;
    v129 = v88;
    _os_log_impl(&dword_2484B2000, v87, v6, "Found %lu deleted event actions", buf, 0xCu);
  }

  [(NSArray *)v105 addObjectsFromArray:_copyDeletedEventActions];
  [(NSMutableSet *)self->_itemsPendingSync addObjectsFromArray:v105];
  syncActions = self->_syncActions;
  self->_syncActions = v105;
  v90 = v105;
}

- (void)generateICSForActions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_syncActions;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 action] == 1)
        {
          context = [v7 context];
          [context cacheDataPayload];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v80 = 0;
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v3, v5, "Preparing merge sync actions...", buf, 2u);
  }

  type = v5;

  selfCopy6 = self;
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = 0;

  v61 = objc_opt_new();
  v63 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  wasMigrated = [account wasMigrated];

  if (wasMigrated)
  {
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = [(MobileCalDAVCalendar *)self copyAllItems];
    v13 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v77;
      v62 = *(v4 + 5);
      do
      {
        v16 = 0;
        selfCopy4 = self;
        do
        {
          if (*v77 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v76 + 1) + 8 * v16);
          if (![v18 calItem])
          {
            principal2 = [(MobileCalDAVCalendar *)selfCopy4 principal];
            account2 = [principal2 account];
            backingAccount = [account2 backingAccount];
            [v18 loadLocalItemWithAccount:backingAccount];
          }

          if ([v18 calItem])
          {
            [v18 calItem];
            v22 = CalCalendarItemCopyExternalModificationTag();
            if (!v22)
            {
              [v18 setIsMigrate:1];
              [v18 calItem];
              if ((CalEventIsDetached() & 1) == 0)
              {
                serverID = [v18 serverID];

                v24 = DALoggingwithCategory();
                v25 = os_log_type_enabled(v24, type);
                if (serverID)
                {
                  if (v25)
                  {
                    uniqueIdentifier = [v18 uniqueIdentifier];
                    serverID2 = [v18 serverID];
                    *buf = 138412546;
                    v84 = uniqueIdentifier;
                    v85 = 2112;
                    v86 = serverID2;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which exists on the server at %@", buf, 0x16u);

                    selfCopy4 = self;
                  }

                  [v63 addObject:v18];
                }

                else
                {
                  if (v25)
                  {
                    uniqueIdentifier2 = [v18 uniqueIdentifier];
                    *buf = 138412290;
                    v84 = uniqueIdentifier2;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which does not exist on the server", buf, 0xCu);
                  }

                  [v18 calItem];
                  principal3 = [(MobileCalDAVCalendar *)selfCopy4 principal];
                  account3 = [principal3 account];
                  IsSelfOrganizedWithScheduleAgentClient = CalCalendarItemIsSelfOrganizedWithScheduleAgentClient();

                  if (IsSelfOrganizedWithScheduleAgentClient)
                  {
                    v32 = DALoggingwithCategory();
                    if (os_log_type_enabled(v32, v62))
                    {
                      uniqueIdentifier3 = [v18 uniqueIdentifier];
                      *buf = 138412290;
                      v84 = uniqueIdentifier3;
                      _os_log_impl(&dword_2484B2000, v32, v62, "Skipping add for item %@ because it is self organized with a client schedule agent", buf, 0xCu);
                    }
                  }

                  else
                  {
                    [v61 addObject:v18];
                  }

                  selfCopy4 = self;
                }
              }
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v76 objects:v87 count:16];
      }

      while (v14);
    }

    selfCopy6 = self;
  }

  obja = objc_opt_new();
  bulkRequests = [(MobileCalDAVCalendar *)selfCopy6 bulkRequests];
  v35 = [bulkRequests objectForKeyedSubscript:*MEMORY[0x277CFDF70]];
  if (v35)
  {
    principal4 = [(MobileCalDAVCalendar *)selfCopy6 principal];
    account4 = [principal4 account];
    v38 = [account4 wasMigrated] ^ 1;

    selfCopy6 = self;
  }

  else
  {
    v38 = 1;
  }

  v39 = [(MobileCalDAVCalendar *)selfCopy6 _createActionsForItems:v61 withAction:0 alreadySentItems:obja createServerIDs:v38 shouldSave:&v80];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v73;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v73 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v72 + 1) + 8 * i);
        context = [v44 context];
        uniqueIdentifier4 = [context uniqueIdentifier];
        [v8 setObject:v44 forKeyedSubscript:uniqueIdentifier4];
      }

      v41 = [v39 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v41);
  }

  v47 = DALoggingwithCategory();
  if (os_log_type_enabled(v47, type))
  {
    v48 = [v39 count];
    *buf = 134217984;
    v84 = v48;
    _os_log_impl(&dword_2484B2000, v47, type, "Found %lu adds for our merge sync", buf, 0xCu);
  }

  v49 = [(MobileCalDAVCalendar *)self _createActionsForItems:v63 withAction:1 alreadySentItems:obja createServerIDs:v38 shouldSave:&v80];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v69;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v69 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v68 + 1) + 8 * j);
        context2 = [v54 context];
        serverID3 = [context2 serverID];
        [v9 setObject:v54 forKeyedSubscript:serverID3];
      }

      v51 = [v49 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v51);
  }

  v57 = DALoggingwithCategory();
  if (os_log_type_enabled(v57, type))
  {
    v58 = [v49 count];
    *buf = 134217984;
    v84 = v58;
    _os_log_impl(&dword_2484B2000, v57, type, "Found %lu mods for our merge sync", buf, 0xCu);
  }

  if ([v39 count] || objc_msgSend(v49, "count"))
  {
    DAGreenTeaLog();
  }

  [(MobileCalDAVCalendar *)self setUuidsToAddActions:v8, blockCopy];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:v9];
  (v60)[2](v60, self);
}

- (void)recordDiagnosticsForAccountSync:(id)sync
{
  syncCopy = sync;
  calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
  [syncCopy addCalendarCollectionSync:calendarCollectionSyncDiagnostics];
}

- (void)flushCaches
{
  uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  [uniqueIdentifierToRecordIDMap removeAllObjects];

  uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  [uRLToRecordIDMap removeAllObjects];

  uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
  [uRLToEtagMap removeAllObjects];

  [(MobileCalDAVCalendar *)self setSyncActions:0];
  [(MobileCalDAVCalendar *)self setShareeActions:0];
  [(MobileCalDAVCalendar *)self setUuidsToAddActions:0];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:0];
  +[MobileCalDAVCalendar clearCalendarUIDCache];
  deletedExternalIDs = self->_deletedExternalIDs;
  self->_deletedExternalIDs = 0;
}

- (void)syncDidFinishWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    v5 = [(MobileCalDAVCalendar *)self recordCalendarError:errorCopy ofType:4];
  }

  else
  {
    v5 = [(MobileCalDAVCalendar *)self clearCalendarErrorOfType:4];
  }

  if (RecordCalendarDiagnostics(v5, v6))
  {
    calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
    title = [(MobileCalDAVCalendar *)self title];
    [calendarCollectionSyncDiagnostics setCalendarTitle:title];

    [(MobileCalDAVCalendar *)self getCalCalendar];
    v9 = CalCalendarCopyExternalID();
    [calendarCollectionSyncDiagnostics setCalendarExternalIdentifier:v9];
  }

  [(MobileCalDAVCalendar *)self flushCaches];
  if (errorCopy)
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = [(NSMutableSet *)self->_itemsPendingSync count];
      *buf = 138412546;
      selfCopy2 = self;
      v29 = 2048;
      v30 = v12;
      _os_log_impl(&dword_2484B2000, v10, v11, "Sync of calendar %@ failed. Saving changes for %lu items that we did not attempt to sync.", buf, 0x16u);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_itemsPendingSync;
    v14 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          changeContext = [*(*(&v22 + 1) + 8 * i) changeContext];
          [(MobileCalDAVCalendar *)self _saveChanges:changeContext];
        }

        v15 = [(NSMutableSet *)v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([(NSMutableSet *)self->_itemsPendingSync count])
  {
    v13 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(&v13->super.super, v19))
    {
      v20 = [(NSMutableSet *)self->_itemsPendingSync count];
      *buf = 138412546;
      selfCopy2 = self;
      v29 = 2048;
      v30 = v20;
      _os_log_impl(&dword_2484B2000, &v13->super.super, v19, "The sync of calendar %@ claims to have finished without error, but there are still %lu items pending sync!", buf, 0x16u);
    }

    goto LABEL_20;
  }

LABEL_21:
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = 0;
}

- (CalDAVPrincipal)principal
{
  WeakRetained = objc_loadWeakRetained(&self->_principal);

  return WeakRetained;
}

@end