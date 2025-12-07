@interface _ASAccountSharingGroupMemberDataManager
+ (_ASAccountSharingGroupMemberDataManager)sharedManager;
- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount;
- (_ASAccountSharingGroupMemberDataManager)init;
- (double)_screenScale;
- (id)_contactDisplayNameFromNameComponents:(id)components;
- (id)_contactForCurrentUser;
- (id)_formattedAddressForAddress:(id)address;
- (id)_renderingScopeForDiameter:(double)diameter;
- (id)_shortContactDisplayNameFromNameComponents:(id)components;
- (id)avatarImageForContact:(id)contact diameter:(double)diameter;
- (id)avatarImageForGroupMember:(id)member diameter:(double)diameter;
- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter;
- (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter;
- (id)displayNameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD;
- (id)fetchContactForUserHandle:(id)handle;
- (id)groupMemberDataForGroup:(id)group;
- (id)groupMemberDataForGroupParticipants:(id)participants;
- (id)groupMemberDataForRecipients:(id)recipients;
- (id)nameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD;
- (id)placeholderAvatarImageWithDiameter:(double)diameter;
- (void)_contactForCurrentUser;
- (void)_contactsUpdatedNotification:(id)notification;
@end

@implementation _ASAccountSharingGroupMemberDataManager

- (_ASAccountSharingGroupMemberDataManager)init
{
  v24.receiver = self;
  v24.super_class = _ASAccountSharingGroupMemberDataManager;
  v2 = [(_ASAccountSharingGroupMemberDataManager *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695D098]);
    avatarImageRenderer = v2->_avatarImageRenderer;
    v2->_avatarImageRenderer = v5;

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v7 = getAAUIProfilePictureStoreClass_softClass;
    v29 = getAAUIProfilePictureStoreClass_softClass;
    if (!getAAUIProfilePictureStoreClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getAAUIProfilePictureStoreClass_block_invoke;
      v25[3] = &unk_1E7AF7948;
      v25[4] = &v26;
      __getAAUIProfilePictureStoreClass_block_invoke(v25);
      v7 = v27[3];
    }

    v8 = v7;
    _Block_object_dispose(&v26, 8);
    v9 = [v7 alloc];
    aa_primaryAppleAccount = [(ACAccountStore *)v2->_accountStore aa_primaryAppleAccount];
    v11 = [v9 initWithAppleAccount:aa_primaryAppleAccount store:v2->_accountStore];
    profilePictureStore = v2->_profilePictureStore;
    v2->_profilePictureStore = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    avatarImageDiameterToRenderingScopes = v2->_avatarImageDiameterToRenderingScopes;
    v2->_avatarImageDiameterToRenderingScopes = dictionary;

    v15 = objc_alloc_init(MEMORY[0x1E695CE28]);
    [*MEMORY[0x1E69C8CC0] UTF8String];
    v16 = tcc_identity_create();
    [v15 setAssumedIdentity:v16];

    v17 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v15];
    contactStore = v2->_contactStore;
    v2->_contactStore = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    contactsCache = v2->_contactsCache;
    v2->_contactsCache = v19;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__contactsUpdatedNotification_ name:*MEMORY[0x1E695C3D8] object:0];

    v22 = v2;
  }

  return v2;
}

+ (_ASAccountSharingGroupMemberDataManager)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___ASAccountSharingGroupMemberDataManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_once != -1)
  {
    dispatch_once(&sharedManager_once, block);
  }

  v2 = sharedManager_sharedManager_0;

  return v2;
}

- (_ASAccountSharingGroupMemberData)groupMemberDataForPrimaryAccount
{
  aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
  v4 = objc_alloc_init(_ASAccountSharingGroupMemberData);
  v5 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  aa_firstName = [aa_primaryAppleAccount aa_firstName];
  [v5 setGivenName:aa_firstName];

  aa_middleName = [aa_primaryAppleAccount aa_middleName];
  [v5 setMiddleName:aa_middleName];

  aa_lastName = [aa_primaryAppleAccount aa_lastName];
  [v5 setFamilyName:aa_lastName];

  v9 = [(_ASAccountSharingGroupMemberDataManager *)self _contactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setContactDisplayName:v9];

  v10 = [(_ASAccountSharingGroupMemberDataManager *)self _shortContactDisplayNameFromNameComponents:v5];
  [(_ASAccountSharingGroupMemberData *)v4 setShortContactDisplayName:v10];

  v11 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForPrimaryAccountOwnerWithDiameter:37.0];
  [(_ASAccountSharingGroupMemberData *)v4 setAvatarImageForGroupMemberCell:v11];

  _contactForCurrentUser = [(_ASAccountSharingGroupMemberDataManager *)self _contactForCurrentUser];
  [(_ASAccountSharingGroupMemberData *)v4 setContact:_contactForCurrentUser];

  [(_ASAccountSharingGroupMemberData *)v4 setIsMeParticipant:1];
  username = [aa_primaryAppleAccount username];
  [(_ASAccountSharingGroupMemberData *)v4 setHandle:username];

  username2 = [aa_primaryAppleAccount username];
  v15 = [(_ASAccountSharingGroupMemberDataManager *)self _formattedAddressForAddress:username2];
  [(_ASAccountSharingGroupMemberData *)v4 setHandleForDisplay:v15];

  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  currentUserParticipantID = [mEMORY[0x1E69C88E8] currentUserParticipantID];
  [(_ASAccountSharingGroupMemberData *)v4 setParticipantID:currentUserParticipantID];

  return v4;
}

- (id)groupMemberDataForRecipients:(id)recipients
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72___ASAccountSharingGroupMemberDataManager_groupMemberDataForRecipients___block_invoke;
  v5[3] = &unk_1E7AF7CB8;
  v5[4] = self;
  v3 = [recipients safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)groupMemberDataForGroup:(id)group
{
  participants = [group participants];
  v5 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:participants];

  return v5;
}

- (id)groupMemberDataForGroupParticipants:(id)participants
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79___ASAccountSharingGroupMemberDataManager_groupMemberDataForGroupParticipants___block_invoke;
  v5[3] = &unk_1E7AF7CE0;
  v5[4] = self;
  v3 = [participants safari_mapObjectsUsingBlock:v5];

  return v3;
}

- (id)displayNameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD
{
  v4 = [(_ASAccountSharingGroupMemberDataManager *)self nameForOriginalContributorParticipantID:d inGroupID:iD];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _WBSLocalizedString();
  }

  v7 = v6;

  return v7;
}

- (id)nameForOriginalContributorParticipantID:(id)d inGroupID:(id)iD
{
  v31[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  mEMORY[0x1E69C88E8] = [MEMORY[0x1E69C88E8] sharedProvider];
  v9 = [mEMORY[0x1E69C88E8] cachedGroupWithID:iDCopy];

  if (v9)
  {
    participants = [v9 participants];
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __93___ASAccountSharingGroupMemberDataManager_nameForOriginalContributorParticipantID_inGroupID___block_invoke;
    v29 = &unk_1E7AF7D08;
    v30 = dCopy;
    v13 = [participants safari_firstObjectPassingTest:&v26];

    if (v13)
    {
      v31[0] = v13;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
      v17 = [(_ASAccountSharingGroupMemberDataManager *)self groupMemberDataForGroupParticipants:v16];
      firstObject = [v17 firstObject];

      if ([firstObject isMeParticipant])
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = _WBSLocalizedString();
        displayName = [firstObject displayName];
        displayName2 = [v19 localizedStringWithFormat:v20, displayName, v26, v27, v28, v29];
      }

      else
      {
        displayName2 = [firstObject displayName];
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v14, v15);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
      }

      displayName2 = 0;
    }
  }

  else
  {
    v23 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v10, v11);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_ASAccountSharingGroupMemberDataManager nameForOriginalContributorParticipantID:inGroupID:];
    }

    displayName2 = 0;
  }

  return displayName2;
}

- (id)fetchContactForUserHandle:(id)handle
{
  v27[1] = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([handleCopy length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:handleCopy])
    {
      v6 = MEMORY[0x1E695CD58];
      v7 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:handleCopy];
      v8 = [v6 predicateForContactsMatchingPhoneNumber:v7];
    }

    else
    {
      v11 = [MEMORY[0x1E69966C8] isStringEmailAddress:handleCopy];
      v12 = MEMORY[0x1E695CD58];
      if (v11)
      {
        v13 = [MEMORY[0x1E695CD58] predicateForContactsMatchingEmailAddress:handleCopy];
LABEL_11:
        v14 = [(NSCache *)self->_contactsCache objectForKey:v13];
        v15 = v14;
        if (v14)
        {
          firstObject = v14;
        }

        else
        {
          contactStore = self->_contactStore;
          descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
          v26 = descriptorForRequiredKeys;
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
          v25 = 0;
          v19 = [(CNContactStore *)contactStore unifiedContactsMatchingPredicate:v13 keysToFetch:v18 error:&v25];
          v20 = v25;

          v21 = [v19 count];
          if (v21 >= 2)
          {
            v23 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v21, v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [_ASAccountSharingGroupMemberDataManager fetchContactForUserHandle:];
            }
          }

          firstObject = [v19 firstObject];
          if (firstObject)
          {
            [(NSCache *)self->_contactsCache setObject:firstObject forKey:v13];
          }
        }

        goto LABEL_20;
      }

      v27[0] = handleCopy;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v8 = [v12 predicateForContactsMatchingHandleStrings:v7];
    }

    v13 = v8;

    goto LABEL_11;
  }

  v9 = WBS_LOG_CHANNEL_PREFIXPasswordManager(0, v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_ASAccountSharingGroupMemberDataManager fetchContactForUserHandle:];
  }

  firstObject = 0;
LABEL_20:

  return firstObject;
}

- (id)_contactDisplayNameFromNameComponents:(id)components
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:components style:0 options:0];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_shortContactDisplayNameFromNameComponents:(id)components
{
  v3 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:components style:1 options:0];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (double)_screenScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

- (id)avatarImageForPrimaryAccountOwnerWithDiameter:(double)diameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  profilePictureForAccountOwnerWithoutMonogramFallback = [(AAUIProfilePictureStore *)self->_profilePictureStore profilePictureForAccountOwnerWithoutMonogramFallback];
  v6 = profilePictureForAccountOwnerWithoutMonogramFallback;
  if (profilePictureForAccountOwnerWithoutMonogramFallback)
  {
    v7 = [profilePictureForAccountOwnerWithoutMonogramFallback imageByPreparingThumbnailOfSize:{diameter, diameter}];
  }

  else
  {
    v8 = MEMORY[0x1E695CD58];
    aa_primaryAppleAccount = [(ACAccountStore *)self->_accountStore aa_primaryAppleAccount];
    aa_fullName = [aa_primaryAppleAccount aa_fullName];
    v11 = [v8 contactWithDisplayName:aa_fullName handleStrings:0];

    v12 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:diameter];
    avatarImageRenderer = self->_avatarImageRenderer;
    v16[0] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v7 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v14 scope:v12];
  }

  return v7;
}

- (id)avatarImageForUserHandle:(id)handle diameter:(double)diameter
{
  v6 = [(_ASAccountSharingGroupMemberDataManager *)self fetchContactForUserHandle:handle];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:v6 diameter:diameter];

  return v7;
}

- (id)avatarImageForGroupMember:(id)member diameter:(double)diameter
{
  contact = [member contact];
  v7 = [(_ASAccountSharingGroupMemberDataManager *)self avatarImageForContact:contact diameter:diameter];

  return v7;
}

- (id)avatarImageForContact:(id)contact diameter:(double)diameter
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (contact)
  {
    contactCopy = contact;
    v7 = [(_ASAccountSharingGroupMemberDataManager *)self _renderingScopeForDiameter:diameter];
    avatarImageRenderer = self->_avatarImageRenderer;
    v16[0] = contactCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v10 = [(CNAvatarImageRenderer *)avatarImageRenderer avatarImageForContacts:v9 scope:v7];
  }

  else
  {
    v11 = self->_avatarImageRenderer;
    v12 = 0;
    placeholderImageProvider = [(CNAvatarImageRenderer *)v11 placeholderImageProvider];

    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v10 = [placeholderImageProvider imageForSize:diameter scale:{diameter, v14}];
  }

  return v10;
}

- (id)placeholderAvatarImageWithDiameter:(double)diameter
{
  placeholderImageProvider = [(CNAvatarImageRenderer *)self->_avatarImageRenderer placeholderImageProvider];
  [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
  v7 = [placeholderImageProvider imageForSize:diameter scale:{diameter, v6}];

  return v7;
}

- (id)_renderingScopeForDiameter:(double)diameter
{
  avatarImageDiameterToRenderingScopes = self->_avatarImageDiameterToRenderingScopes;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [(NSMutableDictionary *)avatarImageDiameterToRenderingScopes objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69DB7D0] defaultWritingDirectionForLanguage:0] == 1;
    v9 = MEMORY[0x1E695D0B0];
    [(_ASAccountSharingGroupMemberDataManager *)self _screenScale];
    v7 = [v9 scopeWithPointSize:v8 scale:0 rightToLeft:diameter style:{diameter, v10}];
    v11 = self->_avatarImageDiameterToRenderingScopes;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:diameter];
    [(NSMutableDictionary *)v11 setObject:v7 forKeyedSubscript:v12];
  }

  v13 = v7;

  return v13;
}

- (id)_formattedAddressForAddress:(id)address
{
  addressCopy = address;
  if ([addressCopy length])
  {
    if ([MEMORY[0x1E69967B0] isStringPhoneNumber:addressCopy])
    {
      v5 = MEMORY[0x1E69967B0];
      v6 = [MEMORY[0x1E69967B0] countryCodeForNumber:addressCopy];
      v7 = [v5 internationalizedFormattedNumber:addressCopy countryCode:v6];
    }

    else
    {
      v7 = addressCopy;
    }
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordManager(0, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_ASAccountSharingGroupMemberDataManager _formattedAddressForAddress:];
    }

    v7 = &stru_1F28DE020;
  }

  return v7;
}

- (id)_contactForCurrentUser
{
  v16[1] = *MEMORY[0x1E69E9840];
  contactForCurrentUser = self->_contactForCurrentUser;
  if (contactForCurrentUser)
  {
    v3 = contactForCurrentUser;
  }

  else
  {
    contactStore = self->_contactStore;
    descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v16[0] = descriptorForRequiredKeys;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v15 = 0;
    v8 = [(CNContactStore *)contactStore _ios_meContactWithKeysToFetch:v7 error:&v15];
    v9 = v15;
    v10 = self->_contactForCurrentUser;
    self->_contactForCurrentUser = v8;

    if (v9)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXPasswordManager(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(_ASAccountSharingGroupMemberDataManager *)v13 _contactForCurrentUser];
      }
    }

    v3 = self->_contactForCurrentUser;
  }

  return v3;
}

- (void)_contactsUpdatedNotification:(id)notification
{
  contactForCurrentUser = self->_contactForCurrentUser;
  self->_contactForCurrentUser = 0;

  contactsCache = self->_contactsCache;

  [(NSCache *)contactsCache removeAllObjects];
}

- (void)nameForOriginalContributorParticipantID:inGroupID:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)nameForOriginalContributorParticipantID:inGroupID:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchContactForUserHandle:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_contactForCurrentUser
{
  v6 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1B1C8D000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to get contact for current user with error: %{public}@", v5, 0xCu);
}

@end