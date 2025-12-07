@interface _CardDAVActionsABLegacyDataSource
- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType inFolderWithURL:(id)l outNewExternalURL:(id *)rL outTouchedDB:(BOOL *)b;
- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType outTouchedDB:(BOOL *)b;
- (BOOL)_isValidRecordType:(unsigned int)type forDACardDAVRecord:(id)record;
- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)book;
- (id)_copyABActionsOfType:(unsigned int)type inContainer:(void *)container accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)actions maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize isPrimaryAppleAccount:(BOOL)self0 isImageUploadRestricted:(BOOL)self1;
- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4;
- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size;
- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId changeIdsToClear:(id)clear;
@end

@implementation _CardDAVActionsABLegacyDataSource

- (_CardDAVActionsABLegacyDataSource)initWithAddressBook:(void *)book
{
  v5.receiver = self;
  v5.super_class = _CardDAVActionsABLegacyDataSource;
  result = [(_CardDAVActionsABLegacyDataSource *)&v5 init];
  if (result)
  {
    result->_addressBook = book;
  }

  return result;
}

- (id)_copyCoalescedChangesInContainer:(id)container isPrimaryAppleAccount:(BOOL)account isU18Account:(BOOL)u18Account isImageUploadRestricted:(BOOL)restricted databaseHelper:(id)helper accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)self0 maxImageSize:(int64_t)self1 maxResourceSize:(int64_t)self2 changeContext:(id)self3 outTouchedDB:(BOOL *)self4
{
  u18AccountCopy = u18Account;
  accountCopy = account;
  containerCopy = container;
  lCopy = l;
  dCopy = d;
  actionsCopy = actions;
  contextCopy = context;
  v21 = objc_opt_new();
  asSource = [containerCopy asSource];
  if ([containerCopy isGuardianStateDirty])
  {
    externalIdentifier = [containerCopy externalIdentifier];
    v46 = externalIdentifier;
    isGuardianRestricted = [containerCopy isGuardianRestricted];
    v25 = @"true";
    if (!isGuardianRestricted)
    {
      v25 = 0;
    }

    restrictedCopy = restricted;
    v26 = actionsCopy;
    v27 = v25;
    v28 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
    v29 = [DAEditPropertyAction alloc];
    v30 = dCopy;
    v31 = lCopy;
    v32 = [v29 initWithChangedItem:containerCopy propertyName:cdXMLCardDAVGuardianRestricted value:v27 propertyNamespace:cdXMLMMeDAVURI serverId:v28];

    actionsCopy = v26;
    restricted = restrictedCopy;
    [v32 setIgnoresGuardianRestrictions:accountCopy & u18AccountCopy];
    [v21 addObject:v32];

    lCopy = v31;
    dCopy = v30;
  }

  BYTE1(v44) = restricted;
  LOBYTE(v44) = accountCopy;
  v33 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:0 inContainer:asSource accountHomeURL:lCopy changeTrackingID:dCopy existingActions:actionsCopy maxImageSize:size maxResourceSize:resourceSize isPrimaryAppleAccount:v44 isImageUploadRestricted:?];
  actions = [v33 actions];

  if (actions)
  {
    actions2 = [v33 actions];
    [v21 addObjectsFromArray:actions2];
  }

  BYTE1(v45) = restricted;
  LOBYTE(v45) = accountCopy;
  v36 = [(_CardDAVActionsABLegacyDataSource *)self _copyABActionsOfType:1 inContainer:asSource accountHomeURL:lCopy changeTrackingID:dCopy existingActions:actionsCopy maxImageSize:size maxResourceSize:resourceSize isPrimaryAppleAccount:v45 isImageUploadRestricted:?];
  actions3 = [v36 actions];

  if (actions3)
  {
    actions4 = [v36 actions];
    [v21 addObjectsFromArray:actions4];
  }

  [contextCopy setAbPersonChangeId:{objc_msgSend(v33, "highestChangeID")}];
  [contextCopy setAbGroupChangeId:{objc_msgSend(v36, "highestChangeID")}];
  latestSequenceNumber = [v33 latestSequenceNumber];
  latestSequenceNumber2 = [v36 latestSequenceNumber];
  if (latestSequenceNumber >= latestSequenceNumber2)
  {
    v41 = latestSequenceNumber2;
  }

  else
  {
    v41 = latestSequenceNumber;
  }

  [contextCopy setLatestSequenceNumber:v41];
  if (([v33 isChangeHistoryTruncated] & 1) != 0 || objc_msgSend(v36, "isChangeHistoryTruncated"))
  {
    [contextCopy setChangeHistoryTruncated:1];
  }

  if ([v33 touchedDatabase])
  {
    touchedDatabase = 1;
  }

  else
  {
    touchedDatabase = [v36 touchedDatabase];
  }

  *b = touchedDatabase;

  return v21;
}

- (BOOL)_isValidRecordType:(unsigned int)type forDACardDAVRecord:(id)record
{
  recordCopy = record;
  v6 = recordCopy;
  if (type == 1)
  {
    isGroup = [recordCopy isGroup];
  }

  else
  {
    if (type)
    {
      v8 = 0;
      goto LABEL_7;
    }

    isGroup = [recordCopy isContact];
  }

  v8 = isGroup;
LABEL_7:

  return v8;
}

- (id)_copyABActionsOfType:(unsigned int)type inContainer:(void *)container accountHomeURL:(id)l changeTrackingID:(id)d existingActions:(id)actions maxImageSize:(int64_t)size maxResourceSize:(int64_t)resourceSize isPrimaryAppleAccount:(BOOL)self0 isImageUploadRestricted:(BOOL)self1
{
  v14 = *&type;
  lCopy = l;
  dCopy = d;
  actionsCopy = actions;
  v141 = objc_alloc_init(ABLegacyActionsResult);
  v18 = ABRecordCopyValue(container, kABSourceExternalIdentifierProperty);
  v184 = 0;
  IntValue = ABRecordGetIntValue();
  v136 = v18;
  v137 = lCopy;
  v160 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
  v161 = objc_opt_new();
  v19 = kABChangeHistoryRecordIDsKey;
  v20 = kABChangeHistoryEventTypesKey;
  v194[0] = kABChangeHistoryRecordIDsKey;
  v194[1] = kABChangeHistoryEventTypesKey;
  v21 = kABChangeHistoryExternalIDsKey;
  v22 = kABChangeHistoryChangeTableRowIDsKey;
  v194[2] = kABChangeHistoryExternalIDsKey;
  v194[3] = kABChangeHistoryChangeTableRowIDsKey;
  v194[4] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v194 count:5];
  [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  v138 = v14 != 0;
  v139 = dCopy;
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  if (EntityChangesSinceSequenceNumberForClient && (v24 = EntityChangesSinceSequenceNumberForClient, CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) >= 1))
  {
    Value = CFDictionaryGetValue(v24, v19);
    cf = CFDictionaryGetValue(v24, v20);
    v26 = CFDictionaryGetValue(v24, v21);
    v145 = CFDictionaryGetValue(v24, v22);
    v27 = CFDictionaryGetValue(v24, kABChangeHistoryChangesTruncatedKey);
    v28 = CFDictionaryGetValue(v24, kABChangeHistoryLatestSequenceNumberKey);
    v29 = v141;
    -[ABLegacyActionsResult setChangeHistoryTruncated:](v141, "setChangeHistoryTruncated:", [v27 BOOLValue]);
    if (v28)
    {
      -[ABLegacyActionsResult setLatestSequenceNumber:](v141, "setLatestSequenceNumber:", [v28 unsignedIntegerValue]);
    }

    if (Value)
    {
      CFRetain(Value);
    }

    if (cf)
    {
      CFRetain(cf);
    }

    if (v26)
    {
      CFRetain(v26);
    }

    if (v145)
    {
      CFRetain(v145);

      if (CFArrayGetCount(v145) >= 1)
      {
        Count = CFArrayGetCount(v145);
        [(ABLegacyActionsResult *)v141 setHighestChangeID:CFArrayGetValueAtIndex(v145, Count - 1)];
      }

      v135 = 0;
    }

    else
    {

      v145 = 0;
      v135 = 1;
    }

    v31 = Value;
  }

  else
  {
    v31 = 0;
    v145 = 0;
    cf = 0;
    v26 = 0;
    v135 = 1;
    v29 = v141;
  }

  v32 = objc_opt_new();
  v142 = objc_opt_new();
  selfCopy = self;
  v151 = v32;
  if (!v31)
  {
    goto LABEL_107;
  }

  v143 = v26;
  v155 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(v31) / 3];
  v154 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(v31) / 3];
  v147 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(v31) / 3];
  theArray = v31;
  v157 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(v31)];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  obj = actionsCopy;
  v33 = [obj countByEnumeratingWithState:&v180 objects:v193 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v181;
    type = _CPLog_to_os_log_type[3];
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v181 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v180 + 1) + 8 * i);
        itemChangeType = [v37 itemChangeType];
        v39 = itemChangeType;
        if (itemChangeType <= 1)
        {
          changedItem = [v37 changedItem];
          cardDAVRecordItem = [changedItem cardDAVRecordItem];
          v42 = [(_CardDAVActionsABLegacyDataSource *)self _isValidRecordType:v14 forDACardDAVRecord:cardDAVRecordItem];

          if (v42)
          {
            [changedItem loadClientIDs];
            [changedItem setLocalItem:0];
            if ([changedItem loadLocalItemWithAccount:0])
            {
              serverID = [changedItem serverID];
              v44 = serverID;
              if (v39 != &dword_0 + 1 || serverID)
              {
                clientID = [changedItem clientID];
                intValue = [clientID intValue];

                v46 = [NSNumber numberWithInt:intValue];
                itemChangeType2 = [v37 itemChangeType];
                v54 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v37 changeId]);
                [(_CardDAVActionsABLegacyDataSource *)selfCopy _addChangeForType:itemChangeType2 changedItemId:v46 changeId:v54 addedIdsToChangeId:v155 modifiedIdsToChangeId:v154 deletedIdsToChangeId:v147 changeIdsToClear:v151];

                if (v44)
                {
                  [v157 setObject:v44 forKeyedSubscript:v46];
                }

                self = selfCopy;
              }

              else
              {
                v45 = DALoggingwithCategory();
                if (os_log_type_enabled(v45, type))
                {
                  *buf = 138412290;
                  *v190 = v37;
                  _os_log_impl(&dword_0, v45, type, "A preset action for a sync request wanted a modify, but we have no server id.  Dropping the modify of %@", buf, 0xCu);
                }

                v46 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v37 changeId]);
                [v151 addObject:v46];
                self = selfCopy;
              }

              goto LABEL_45;
            }

            v47 = DALoggingwithCategory();
            if (os_log_type_enabled(v47, type))
            {
              *buf = 138412290;
              *v190 = v37;
              v48 = v47;
              typeCopy2 = type;
              v50 = "A preset action for a sync request didn't have an associated local event in the db action %@";
LABEL_39:
              _os_log_impl(&dword_0, v48, typeCopy2, v50, buf, 0xCu);
            }
          }

          else
          {
            v47 = DALoggingwithCategory();
            if (os_log_type_enabled(v47, type))
            {
              *buf = 134217984;
              *v190 = v39;
              v48 = v47;
              typeCopy2 = type;
              v50 = "A preset action for a sync request had change type %lu, which is unsupported.  Dropping that action";
              goto LABEL_39;
            }
          }

          v44 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v37 changeId]);
          [v151 addObject:v44];
          self = selfCopy;
LABEL_45:

          continue;
        }

        if (!v14 && itemChangeType == &dword_0 + 2)
        {
          [v161 addObject:v37];
        }
      }

      v34 = [obj countByEnumeratingWithState:&v180 objects:v193 count:16];
    }

    while (v34);
  }

  obja = CFArrayGetCount(theArray);
  if (obja < 1)
  {
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v148 = _CPLog_to_os_log_type[7];
    do
    {
      v58 = v57;
      v59 = v56;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v55);
      v61 = CFArrayGetValueAtIndex(cf, v55);
      v56 = [NSNumber numberWithInt:ValueAtIndex];

      v57 = [NSNumber numberWithInt:CFArrayGetValueAtIndex(v145, v55)];

      v62 = CFArrayGetValueAtIndex(v143, v55);
      v63 = v62;
      typea = v61;
      v64 = v61;
      if (v62 == kCFNull)
      {
        v179 = 0;
        v67 = selfCopy;
        v66 = [(_CardDAVActionsABLegacyDataSource *)selfCopy _fillOutExternalURLForRecordType:v14 localId:ValueAtIndex changeType:v61 inFolderWithURL:v160 outNewExternalURL:&v179 outTouchedDB:&v184];
        v65 = v179;
      }

      else
      {
        v65 = [(__CFNull *)v62 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v160];
        v66 = 1;
        v67 = selfCopy;
      }

      if ([(_CardDAVActionsABLegacyDataSource *)v67 _fillOutExternalUUIDForRecordType:v14 localId:ValueAtIndex changeType:v64 outTouchedDB:&v184]&& v66)
      {
        v68 = DALoggingwithCategory();
        if (os_log_type_enabled(v68, v148))
        {
          *buf = 67109634;
          *v190 = ValueAtIndex;
          *&v190[4] = 1024;
          *&v190[6] = typea;
          v191 = 2112;
          v192 = v65;
          _os_log_impl(&dword_0, v68, v148, "Looking at change with id %d type %d externalURL %@", buf, 0x18u);
        }

        if (v65 && ValueAtIndex)
        {
          [v157 setObject:v65 forKeyedSubscript:v56];
        }

        [(_CardDAVActionsABLegacyDataSource *)selfCopy _addChangeForType:v64 changedItemId:v56 changeId:v57 addedIdsToChangeId:v155 modifiedIdsToChangeId:v154 deletedIdsToChangeId:v147 changeIdsToClear:v151];
      }

      else
      {
        [v151 addObject:v57];
      }

      ++v55;
    }

    while (obja != v55);
  }

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  allKeys = [v155 allKeys];
  v70 = [allKeys countByEnumeratingWithState:&v175 objects:v188 count:16];
  if (v70)
  {
    v71 = v70;
    v72 = *v176;
    do
    {
      v73 = 0;
      v74 = v56;
      do
      {
        if (*v176 != v72)
        {
          objc_enumerationMutation(allKeys);
        }

        v56 = *(*(&v175 + 1) + 8 * v73);

        addressBook = [(_CardDAVActionsABLegacyDataSource *)selfCopy addressBook];
        intValue2 = [v56 intValue];
        if (v14)
        {
          GroupWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook, intValue2);
          IsDowntimeWhitelisted = 0;
          if (!GroupWithRecordID)
          {
            goto LABEL_78;
          }
        }

        else
        {
          GroupWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, intValue2);
          IsDowntimeWhitelisted = ABPersonIsDowntimeWhitelisted();
          if (!GroupWithRecordID)
          {
            goto LABEL_78;
          }
        }

        buf[0] = 0;
        LOBYTE(v134) = 0;
        v79 = [CardDAVVCardItem itemWithABRecord:GroupWithRecordID addressBook:[(_CardDAVActionsABLegacyDataSource *)selfCopy addressBook] outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:v160 afterImageSyncFailed:v134];
        v184 |= buf[0];
        v80 = [[DAAction alloc] initWithItemChangeType:0 changedItem:v79 serverId:0];
        v81 = [v155 objectForKeyedSubscript:v56];
        [v80 setChangeId:{objc_msgSend(v81, "intValue")}];

        if (account && IsDowntimeWhitelisted | ((IntValue & 4) >> 2))
        {
          [v80 setIgnoresGuardianRestrictions:1];
        }

        [v161 addObject:v80];

LABEL_78:
        v73 = v73 + 1;
        v74 = v56;
      }

      while (v71 != v73);
      v71 = [allKeys countByEnumeratingWithState:&v175 objects:v188 count:16];
    }

    while (v71);
  }

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  allKeys2 = [v154 allKeys];
  v83 = [allKeys2 countByEnumeratingWithState:&v171 objects:v187 count:16];
  self = selfCopy;
  if (!v83)
  {
    goto LABEL_96;
  }

  v84 = v83;
  v85 = 0;
  v86 = *v172;
  do
  {
    v87 = 0;
    v88 = v85;
    do
    {
      if (*v172 != v86)
      {
        objc_enumerationMutation(allKeys2);
      }

      v85 = *(*(&v171 + 1) + 8 * v87);

      addressBook2 = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
      intValue3 = [v85 intValue];
      if (v14)
      {
        PersonWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook2, intValue3);
        v92 = 0;
        if (!PersonWithRecordID)
        {
          goto LABEL_93;
        }
      }

      else
      {
        PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook2, intValue3);
        v92 = sub_17E6C(PersonWithRecordID, 1);
        if (!PersonWithRecordID)
        {
          goto LABEL_93;
        }
      }

      buf[0] = 0;
      LOBYTE(v134) = 0;
      v93 = [CardDAVVCardItem itemWithABRecord:PersonWithRecordID addressBook:[(_CardDAVActionsABLegacyDataSource *)self addressBook] outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:v160 afterImageSyncFailed:v134];
      v184 |= buf[0];
      v94 = [[DAAction alloc] initWithItemChangeType:1 changedItem:v93 serverId:0];
      v95 = [v154 objectForKeyedSubscript:v85];
      [v94 setChangeId:{objc_msgSend(v95, "intValue")}];

      if (account && v92 | ((IntValue & 4) >> 2))
      {
        [v94 setIgnoresGuardianRestrictions:1];
      }

      [v161 addObject:v94];

      self = selfCopy;
LABEL_93:
      v87 = v87 + 1;
      v88 = v85;
    }

    while (v84 != v87);
    v84 = [allKeys2 countByEnumeratingWithState:&v171 objects:v187 count:16];
  }

  while (v84);

LABEL_96:
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  allKeys3 = [v147 allKeys];
  v97 = [allKeys3 countByEnumeratingWithState:&v167 objects:v186 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = 0;
    v100 = *v168;
    do
    {
      v101 = 0;
      v102 = v99;
      do
      {
        if (*v168 != v100)
        {
          objc_enumerationMutation(allKeys3);
        }

        v99 = *(*(&v167 + 1) + 8 * v101);

        v103 = [v157 objectForKeyedSubscript:v99];
        if (v103)
        {
          v104 = [[DAAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v103];
          v105 = [v147 objectForKeyedSubscript:v99];
          [v104 setChangeId:{objc_msgSend(v105, "intValue")}];

          [v161 addObject:v104];
        }

        v101 = v101 + 1;
        v102 = v99;
      }

      while (v98 != v101);
      v98 = [allKeys3 countByEnumeratingWithState:&v167 objects:v186 count:16];
    }

    while (v98);
  }

  allKeys4 = [v155 allKeys];
  [v142 addObjectsFromArray:allKeys4];

  allKeys5 = [v154 allKeys];
  [v142 addObjectsFromArray:allKeys5];

  allKeys6 = [v147 allKeys];
  [v142 addObjectsFromArray:allKeys6];

  CFRelease(theArray);
  v29 = v141;
  v32 = v151;
  v26 = v143;
LABEL_107:
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v135 & 1) == 0)
  {
    CFRelease(v145);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (!v138 && !restricted)
  {
    v109 = +[NSDate date];
    v110 = [v109 dateByAddingTimeInterval:-86400.0];

    [(_CardDAVActionsABLegacyDataSource *)self addressBook];
    v158 = v110;
    v111 = ABSourceCopyPeopleWithImageSyncFailedTimeBefore();
    v112 = CFArrayGetCount(v111);
    if (v112 < 1)
    {
      v116 = 0;
      if (v111)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v113 = v112;
      v114 = 0;
      v115 = kABPersonExternalIdentifierProperty;
      do
      {
        v116 = CFArrayGetValueAtIndex(v111, v114);
        v117 = [NSNumber numberWithInt:ABRecordGetRecordID(v116)];
        v118 = [v142 containsObject:v117];

        if ((v118 & 1) == 0)
        {
          buf[0] = 0;
          LOBYTE(v134) = 0;
          v119 = [CardDAVVCardItem itemWithABRecord:v116 addressBook:[(_CardDAVActionsABLegacyDataSource *)self addressBook] outNeedsDBSave:buf maxImageSize:size maxResourceSize:resourceSize inContainerWithURL:v160 afterImageSyncFailed:v134];
          v184 |= buf[0];
          v120 = ABRecordCopyValue(v116, v115);
          v121 = [[DAAction alloc] initWithItemChangeType:v120 == 0 changedItem:v119 serverId:0];
          if (account && ((sub_17E6C(v116, v120 != 0) & 1) != 0 || (IntValue & 4) != 0))
          {
            [v121 setIgnoresGuardianRestrictions:1];
          }

          [v161 addObject:v121];

          self = selfCopy;
        }

        ++v114;
      }

      while (v113 != v114);
      if (v111)
      {
LABEL_125:
        CFRelease(v111);
      }
    }

    v32 = v151;
    if (v116)
    {
      CFRelease(v116);
    }

    v29 = v141;
  }

  if ([v32 count])
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v123 = v32;
    v124 = [v123 countByEnumeratingWithState:&v163 objects:v185 count:16];
    if (v124)
    {
      v125 = v124;
      v126 = *v164;
      v127 = _CPLog_to_os_log_type[7];
      do
      {
        for (j = 0; j != v125; j = j + 1)
        {
          if (*v164 != v126)
          {
            objc_enumerationMutation(v123);
          }

          intValue4 = [*(*(&v163 + 1) + 8 * j) intValue];
          if (intValue4 != -1)
          {
            v130 = intValue4;
            v131 = DALoggingwithCategory();
            if (os_log_type_enabled(v131, v127))
            {
              *buf = 67109120;
              *v190 = v130;
              _os_log_impl(&dword_0, v131, v127, "Clearing change index %d", buf, 8u);
            }

            CFArrayAppendValue(Mutable, v130);
          }
        }

        v125 = [v123 countByEnumeratingWithState:&v163 objects:v185 count:16];
      }

      while (v125);
    }

    if (CFArrayGetCount(Mutable))
    {
      v184 = 1;
      [(_CardDAVActionsABLegacyDataSource *)selfCopy addressBook];
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    }

    CFRelease(Mutable);
    v29 = v141;
    v32 = v151;
  }

  [(ABLegacyActionsResult *)v29 setTouchedDatabase:v184];
  [(ABLegacyActionsResult *)v29 setActions:v161];
  v132 = v29;

  return v132;
}

- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId changeIdsToClear:(id)clear
{
  idCopy = id;
  changeIdCopy = changeId;
  toChangeIdCopy = toChangeId;
  idsToChangeIdCopy = idsToChangeId;
  deletedIdsToChangeIdCopy = deletedIdsToChangeId;
  clearCopy = clear;
  v20 = DALoggingwithCategory();
  v21 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v20, v21))
  {
    v32 = 134219522;
    typeCopy = type;
    v34 = 2112;
    v35 = idCopy;
    v36 = 2112;
    v37 = changeIdCopy;
    v38 = 2112;
    v39 = toChangeIdCopy;
    v40 = 2112;
    v41 = idsToChangeIdCopy;
    v42 = 2112;
    v43 = deletedIdsToChangeIdCopy;
    v44 = 2112;
    v45 = clearCopy;
    _os_log_impl(&dword_0, v20, v21, "_addChange for type %lu, changedItemId %@ changeId %@ addedIds %@ modifiedIds %@ deletedIds %@, changeIdsToClear %@", &v32, 0x48u);
  }

  if (!changeIdCopy)
  {
    changeIdCopy = &off_3DC90;
  }

  switch(type)
  {
    case 2uLL:
      v28 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v28)
      {
        v30 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];

        if (v30)
        {
          v31 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
          [clearCopy addObject:v31];

          [idsToChangeIdCopy removeObjectForKey:idCopy];
        }

        [deletedIdsToChangeIdCopy setObject:changeIdCopy forKeyedSubscript:idCopy];
        break;
      }

      v29 = [toChangeIdCopy objectForKeyedSubscript:idCopy];
      [clearCopy addObject:v29];

      [toChangeIdCopy removeObjectForKey:idCopy];
LABEL_18:
      [clearCopy addObject:changeIdCopy];
      break;
    case 1uLL:
      v24 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v24)
      {
        v25 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
        v22 = v25;
        if (v25)
        {
          intValue = [v25 intValue];
          intValue2 = [changeIdCopy intValue];
          if (intValue == -1 || intValue2 == -1)
          {
            if (intValue2 == -1)
            {
LABEL_25:

              break;
            }
          }

          else
          {
            [clearCopy addObject:v22];
          }
        }

        v23 = idsToChangeIdCopy;
LABEL_24:
        [v23 setObject:changeIdCopy forKeyedSubscript:idCopy];
        goto LABEL_25;
      }

      goto LABEL_18;
    case 0uLL:
      v22 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
      if (v22)
      {
        [clearCopy addObject:v22];
        [idsToChangeIdCopy removeObjectForKey:idCopy];
      }

      v23 = toChangeIdCopy;
      goto LABEL_24;
  }
}

- (BOOL)_fillOutExternalUUIDForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType outTouchedDB:(BOOL *)b
{
  if (changeType > 1)
  {
    LOBYTE(GroupWithRecordID) = 1;
    return GroupWithRecordID;
  }

  addressBook = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  if (type)
  {
    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook, id);
    if (!GroupWithRecordID)
    {
      return GroupWithRecordID;
    }

    v11 = GroupWithRecordID;
    v12 = &kABGroupExternalUUIDProperty;
  }

  else
  {
    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, id);
    if (!GroupWithRecordID)
    {
      return GroupWithRecordID;
    }

    v11 = GroupWithRecordID;
    v12 = &kABPersonExternalUUIDProperty;
  }

  v13 = *v12;
  v14 = ABRecordCopyValue(v11, *v12);
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    *b = 1;
    v15 = +[NSString da_newGUID];
    ABRecordSetValue(v11, v13, v15, 0);
  }

  LOBYTE(GroupWithRecordID) = 1;
  return GroupWithRecordID;
}

- (BOOL)_fillOutExternalURLForRecordType:(unsigned int)type localId:(int)id changeType:(unint64_t)changeType inFolderWithURL:(id)l outNewExternalURL:(id *)rL outTouchedDB:(BOOL *)b
{
  lCopy = l;
  if (changeType > 1)
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, v20, "Found a delete of a record with no external id.  Dropping this delete on the floor", buf, 2u);
    }

    goto LABEL_8;
  }

  addressBook = [(_CardDAVActionsABLegacyDataSource *)self addressBook];
  if (!type)
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(addressBook, id);
    if (PersonWithRecordID)
    {
      v17 = PersonWithRecordID;
      v18 = &kABPersonExternalIdentifierProperty;
      goto LABEL_11;
    }

LABEL_8:
    v21 = 0;
    goto LABEL_15;
  }

  GroupWithRecordID = ABAddressBookGetGroupWithRecordID(addressBook, id);
  if (!GroupWithRecordID)
  {
    goto LABEL_8;
  }

  v17 = GroupWithRecordID;
  v18 = &kABGroupExternalIdentifierProperty;
LABEL_11:
  v23 = *v18;
  v24 = ABRecordCopyValue(v17, *v18);
  if (v24)
  {
    v25 = v24;
    *rL = [v24 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:lCopy];
  }

  else
  {
    *b = 1;
    v26 = +[NSString da_newGUID];
    v27 = [NSString stringWithFormat:@"%@.vcf", v26];
    *rL = [lCopy URLByAppendingPathComponent:v27];

    v25 = [*rL da_leastInfoStringRepresentationRelativeToParentURL:lCopy];
    ABRecordSetValue(v17, v23, v25, 0);
  }

  v21 = 1;
LABEL_15:

  return v21;
}

- (id)copyWithoutImageAction:(id)action withFolderURL:(id)l maxResourceSize:(int64_t)size
{
  actionCopy = action;
  lCopy = l;
  changedItem = [actionCopy changedItem];
  clientID = [changedItem clientID];
  intValue = [clientID intValue];

  PersonWithRecordID = ABAddressBookGetPersonWithRecordID([(_CardDAVActionsABLegacyDataSource *)self addressBook], intValue);
  if (PersonWithRecordID)
  {
    buf[0] = 0;
    LOBYTE(v22) = 1;
    v14 = [CardDAVVCardItem itemWithABRecord:PersonWithRecordID addressBook:[(_CardDAVActionsABLegacyDataSource *)self addressBook] outNeedsDBSave:buf maxImageSize:0 maxResourceSize:size inContainerWithURL:lCopy afterImageSyncFailed:v22];
    v15 = [DAAction alloc];
    itemChangeType = [actionCopy itemChangeType];
    serverId = [actionCopy serverId];
    v18 = [v15 initWithItemChangeType:itemChangeType changedItem:v14 serverId:serverId];

    [v18 setChangeId:{objc_msgSend(actionCopy, "changeId")}];
    [v18 setIgnoresGuardianRestrictions:{objc_msgSend(actionCopy, "ignoresGuardianRestrictions")}];
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 67109120;
      v24 = intValue;
      _os_log_impl(&dword_0, v19, v20, "Missing item with id %d for sync retry!", buf, 8u);
    }

    v18 = 0;
  }

  return v18;
}

@end