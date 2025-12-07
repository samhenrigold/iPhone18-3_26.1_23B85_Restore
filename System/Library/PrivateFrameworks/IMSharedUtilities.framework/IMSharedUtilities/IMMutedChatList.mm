@interface IMMutedChatList
+ (IMMutedChatList)sharedList;
- (BOOL)isMutedChatForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID;
- (BOOL)isMutedChatForMuteIdentifiers:(id)identifiers;
- (IMMutedChatList)init;
- (NSDictionary)mutedChatList;
- (id)groupHashForParticipantIDs:(id)ds lastAddressedHandleID:(id)d;
- (id)muteIdentifiersForChatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID chatIdentifier:(id)identifier;
- (id)unmuteDateForMuteIdentifier:(id)identifier;
- (id)unmuteDateForMuteIdentifiers:(id)identifiers;
- (void)_handleChatGroupIDChangedNotification:(id)notification;
- (void)_synchronizeMutedChatList:(id)list syncToPairedDevice:(BOOL)device;
- (void)dealloc;
- (void)groupID:(id)d didChangeTo:(id)to previousDomainIdentifiers:(id)identifiers newDomainIdentifiers:(id)domainIdentifiers forChatIdentifier:(id)identifier;
- (void)muteChatWithMuteIdentifiers:(id)identifiers untilDate:(id)date syncToPairedDevice:(BOOL)device;
- (void)syncToPairedDeviceIncludingVersion:(BOOL)version;
- (void)unmuteChatWithMuteIdentifiers:(id)identifiers syncToPairedDevice:(BOOL)device;
@end

@implementation IMMutedChatList

+ (IMMutedChatList)sharedList
{
  if (qword_1ED8C9D98 != -1)
  {
    sub_1A85FFAA8();
  }

  v3 = qword_1ED8C9D90;

  return v3;
}

- (IMMutedChatList)init
{
  v6.receiver = self;
  v6.super_class = IMMutedChatList;
  v2 = [(IMMutedChatList *)&v6 init];
  if (v2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1A86AAC80, @"com.apple.MobileSMS.CKDNDList.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleChatGroupIDChangedNotification_ name:@"_IMGroupIDChangedNotification" object:0];
  }

  return v2;
}

- (NSDictionary)mutedChatList
{
  v2 = CFPreferencesCopyAppValue(@"CKDNDListKey", @"com.apple.MobileSMS.CKDNDList");
  if (!v2)
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = IMMutedChatList;
  [(IMMutedChatList *)&v4 dealloc];
}

- (id)muteIdentifiersForChatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID chatIdentifier:(id)identifier
{
  styleCopy = style;
  dCopy = d;
  identifiersCopy = identifiers;
  dsCopy = ds;
  iDCopy = iD;
  groupIDCopy = groupID;
  identifierCopy = identifier;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (styleCopy == 45)
  {
    if ([identifierCopy length])
    {
      [v21 addObject:identifierCopy];
    }
  }

  else
  {
    if ([dCopy length])
    {
      [v21 addObject:dCopy];
    }

    if ([identifiersCopy count])
    {
      selfCopy = self;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_1A8601F74;
      v39 = sub_1A86021A8;
      v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = sub_1A8601F74;
      v33 = sub_1A86021A8;
      v34 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1A86AB048;
      v28[3] = &unk_1E78295C0;
      v28[4] = &v35;
      v28[5] = &v29;
      [identifiersCopy enumerateKeysAndObjectsUsingBlock:v28];
      allObjects = [v36[5] allObjects];
      [v21 addObjectsFromArray:allObjects];

      allObjects2 = [v30[5] allObjects];
      [v21 addObjectsFromArray:allObjects2];

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);
    }

    selfCopy = [(IMMutedChatList *)self groupHashForParticipantIDs:dsCopy lastAddressedHandleID:iDCopy, selfCopy];
    if ([selfCopy length])
    {
      [v21 addObject:selfCopy];
    }

    if ([groupIDCopy length])
    {
      [v21 addObject:groupIDCopy];
    }
  }

  v25 = [v21 copy];

  return v25;
}

- (BOOL)isMutedChatForChatIdentifier:(id)identifier chatStyle:(unsigned __int8)style groupID:(id)d domainIdentifiers:(id)identifiers participantIDs:(id)ds lastAddressedHandleID:(id)iD originalGroupID:(id)groupID
{
  selfCopy = self;
  v10 = [(IMMutedChatList *)self muteIdentifiersForChatStyle:style groupID:d domainIdentifiers:identifiers participantIDs:ds lastAddressedHandleID:iD originalGroupID:groupID chatIdentifier:identifier];
  LOBYTE(selfCopy) = [(IMMutedChatList *)selfCopy isMutedChatForMuteIdentifiers:v10];

  return selfCopy;
}

- (BOOL)isMutedChatForMuteIdentifiers:(id)identifiers
{
  v3 = [(IMMutedChatList *)self unmuteDateForMuteIdentifiers:identifiers];
  if (v3)
  {
    date = [MEMORY[0x1E695DF00] date];
    v5 = [date compare:v3] == -1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unmuteDateForMuteIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  identifiersCopy = identifiers;
  v5 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:*(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)unmuteDateForMuteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  mutedChatList = [(IMMutedChatList *)self mutedChatList];
  v6 = [mutedChatList objectForKey:identifierCopy];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF00];
    [v6 doubleValue];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unmuteChatWithMuteIdentifiers:(id)identifiers syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v22 = deviceCopy;
    selfCopy = self;
    mutedChatList = [(IMMutedChatList *)self mutedChatList];
    v7 = [mutedChatList mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = identifiersCopy;
    v8 = identifiersCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v9)
    {
      goto LABEL_15;
    }

    v10 = v9;
    v11 = *v25;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v7 objectForKey:v13];

        if (v14)
        {
          v16 = IMMutedChatListLogHandle([v7 removeObjectForKey:v13]);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v29 = v13;
          v17 = v16;
          v18 = "Unmuting chat with identifier: %@";
        }

        else
        {
          v16 = IMMutedChatListLogHandle(v15);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_13;
          }

          *buf = 138412290;
          v29 = v13;
          v17 = v16;
          v18 = "Can't unmute chat with identifier: %@, that wasn't muted to begin with...";
        }

        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
LABEL_13:
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (!v10)
      {
LABEL_15:

        v19 = [v7 copy];
        [(IMMutedChatList *)selfCopy _synchronizeMutedChatList:v19 syncToPairedDevice:v22];

        identifiersCopy = v23;
        break;
      }
    }
  }
}

- (void)muteChatWithMuteIdentifiers:(id)identifiers untilDate:(id)date syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  v41 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dateCopy = date;
  if ([identifiersCopy count])
  {
    if (!dateCopy)
    {
      [(IMMutedChatList *)self unmuteChatWithMuteIdentifiers:identifiersCopy syncToPairedDevice:deviceCopy];
      goto LABEL_22;
    }

    v29 = deviceCopy;
    selfCopy = self;
    mutedChatList = [(IMMutedChatList *)self mutedChatList];
    v11 = [mutedChatList mutableCopy];
    v31 = dateCopy;
    [dateCopy timeIntervalSince1970];
    v13 = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = identifiersCopy;
    v15 = identifiersCopy;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = v16;
    v18 = *v33;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * i);
        v21 = [mutedChatList objectForKey:v20];
        if (v21 && (v22 = [v14 isEqualToNumber:v21], v22))
        {
          v23 = IMMutedChatListLogHandle(v22);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 0;
          v24 = v23;
          v25 = "Same unmute time, not updating";
          v26 = 2;
        }

        else if (v13 <= 0.0)
        {
          v23 = IMMutedChatListLogHandle([v11 removeObjectForKey:v20]);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 138412546;
          v37 = v31;
          v38 = 2112;
          v39 = v20;
          v24 = v23;
          v25 = "Updating unmute time to %@ for chat with identifier: %@";
          v26 = 22;
        }

        else
        {
          v23 = IMMutedChatListLogHandle([v11 setObject:v14 forKey:v20]);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *buf = 138412290;
          v37 = v20;
          v24 = v23;
          v25 = "Muting chat with identifier: %@";
          v26 = 12;
        }

        _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
LABEL_18:
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (!v17)
      {
LABEL_20:

        v27 = [v11 copy];
        [(IMMutedChatList *)selfCopy _synchronizeMutedChatList:v27 syncToPairedDevice:v29];

        identifiersCopy = v30;
        dateCopy = v31;
        break;
      }
    }
  }

LABEL_22:
}

- (void)_synchronizeMutedChatList:(id)list syncToPairedDevice:(BOOL)device
{
  deviceCopy = device;
  CFPreferencesSetAppValue(@"CKDNDListKey", list, @"com.apple.MobileSMS.CKDNDList");
  v6 = CFPreferencesAppSynchronize(@"com.apple.MobileSMS.CKDNDList");
  v7 = IMMutedChatListLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_DEFAULT, "Synchronized Do Not Disturb list", v9, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.CKDNDList.changed", 0, 0, 2u);
  if (deviceCopy)
  {
    [(IMMutedChatList *)self syncToPairedDeviceIncludingVersion:0];
  }
}

- (id)groupHashForParticipantIDs:(id)ds lastAddressedHandleID:(id)d
{
  dCopy = d;
  v6 = [ds mutableCopy];
  v7 = v6;
  if (dCopy)
  {
    [v6 addObject:dCopy];
  }

  v8 = [v7 copy];
  v9 = IMSharedHelperGroupHashForHandleIDs(v8);

  return v9;
}

- (void)syncToPairedDeviceIncludingVersion:(BOOL)version
{
  versionCopy = version;
  syncManager = [(IMMutedChatList *)self syncManager];
  if (!syncManager)
  {
    syncManager = objc_alloc_init(MEMORY[0x1AC570AA0](@"NPSManager", @"NanoPreferencesSync"));
    [(IMMutedChatList *)self setSyncManager:syncManager];
  }

  v6 = [MEMORY[0x1E695DFA8] setWithObject:@"CKDNDListKey"];
  v7 = v6;
  if (versionCopy)
  {
    [v6 addObject:@"CKDNDMigrationKey"];
  }

  v8 = IMMutedChatListLogHandle([syncManager synchronizeUserDefaultsDomain:@"com.apple.MobileSMS.CKDNDList" keys:v7]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_DEFAULT, "NPSManager synchronizedNanoDomain", v9, 2u);
  }
}

- (void)groupID:(id)d didChangeTo:(id)to previousDomainIdentifiers:(id)identifiers newDomainIdentifiers:(id)domainIdentifiers forChatIdentifier:(id)identifier
{
  v58[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  toCopy = to;
  identifiersCopy = identifiers;
  domainIdentifiersCopy = domainIdentifiers;
  identifierCopy = identifier;
  v17 = identifierCopy;
  if (identifierCopy)
  {
    if (dCopy)
    {
      if (toCopy)
      {
        v18 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:dCopy];
        if (v18)
        {
          v19 = [(IMMutedChatList *)self unmuteDateForMuteIdentifier:toCopy];

          if (!v19)
          {
            v21 = IMMutedChatListLogHandle(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              *&buf[4] = dCopy;
              *&buf[12] = 2112;
              *&buf[14] = toCopy;
              *&buf[22] = 2112;
              v55 = v17;
              _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_DEFAULT, "Chat with previousGroupID (%@) was muted, but that group ID changed. Updating muted chat to new group ID (%@) for chatIdentifier: %@", buf, 0x20u);
            }

            v58[0] = toCopy;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
            [(IMMutedChatList *)self muteChatWithMuteIdentifiers:v22 untilDate:v18 syncToPairedDevice:1];
          }

          v45 = [domainIdentifiersCopy __im_setDifferenceBetweenSelfAndObject:identifiersCopy];
          v23 = [identifiersCopy __im_setDifferenceBetweenSelfAndObject:domainIdentifiersCopy];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v55 = sub_1A8601F74;
          v56 = sub_1A86021A8;
          v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v48 = 0;
          v49 = &v48;
          v50 = 0x3032000000;
          v51 = sub_1A8601F74;
          v52 = sub_1A86021A8;
          v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1A86ABF74;
          v47[3] = &unk_1E7829610;
          v47[4] = self;
          v47[5] = buf;
          [v45 enumerateKeysAndObjectsUsingBlock:v47];
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = sub_1A86AC060;
          v46[3] = &unk_1E7829610;
          v46[4] = self;
          v46[5] = &v48;
          [v23 enumerateKeysAndObjectsUsingBlock:v46];
          [(IMMutedChatList *)self muteChatWithMuteIdentifiers:*(*&buf[8] + 40) untilDate:v18 syncToPairedDevice:1];
          [(IMMutedChatList *)self unmuteChatWithMuteIdentifiers:v49[5] syncToPairedDevice:1];
          _Block_object_dispose(&v48, 8);

          _Block_object_dispose(buf, 8);
        }
      }

      else
      {
        v18 = IMMutedChatListLogHandle(identifierCopy);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1A88C38F0(v18, v38, v39, v40, v41, v42, v43, v44);
        }
      }
    }

    else
    {
      v18 = IMMutedChatListLogHandle(identifierCopy);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C3928(v18, v31, v32, v33, v34, v35, v36, v37);
      }
    }
  }

  else
  {
    v18 = IMMutedChatListLogHandle(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C3960(v18, v24, v25, v26, v27, v28, v29, v30);
    }
  }
}

- (void)_handleChatGroupIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v14 = [userInfo objectForKey:@"_IMGroupIDChangedPreviousGroupIDKey"];

  userInfo2 = [notificationCopy userInfo];
  v7 = [userInfo2 objectForKey:@"_IMGroupIDChangedUpdatedGroupIDKey"];

  userInfo3 = [notificationCopy userInfo];
  v9 = [userInfo3 objectForKey:@"_IMGroupIDChangedChatIdentifierKey"];

  userInfo4 = [notificationCopy userInfo];
  v11 = [userInfo4 objectForKey:@"_IMGroupIDChangedPreviousGroupIdentifiersKey"];

  userInfo5 = [notificationCopy userInfo];

  v13 = [userInfo5 objectForKey:@"_IMGroupIDChangedUpdatedGroupIdentifiersKey"];

  [(IMMutedChatList *)self groupID:v14 didChangeTo:v7 previousDomainIdentifiers:v11 newDomainIdentifiers:v13 forChatIdentifier:v9];
}

@end