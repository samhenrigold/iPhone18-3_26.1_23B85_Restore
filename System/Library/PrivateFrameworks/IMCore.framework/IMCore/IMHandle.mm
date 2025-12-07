@interface IMHandle
+ (id)bestIMHandleInArray:(id)array;
+ (id)cnPhoneticKeys;
+ (id)filterIMHandlesForAccountSiblings:(id)siblings onAccount:(id)account;
+ (id)filterIMHandlesForBestAccountSiblings:(id)siblings;
+ (id)handlesForCNContact:(id)contact;
+ (id)nameOfStatus:(unint64_t)status;
+ (void)_loadStatusNames;
+ (void)handlesForContacts:(id)contacts useBestHandle:(BOOL)handle useExtendedAsyncLookup:(BOOL)lookup completion:(id)completion;
- (BOOL)_allowedByScreenTime;
- (BOOL)_hasServiceNameProperties;
- (BOOL)_isChatSiblingOf:(id)of;
- (BOOL)_setCapabilities:(unint64_t)capabilities;
- (BOOL)areCNContactPropertiesRecent;
- (BOOL)hasAudio;
- (BOOL)hasCapability:(unint64_t)capability;
- (BOOL)hasMultiwayAudio;
- (BOOL)hasMultiwayVideo;
- (BOOL)hasName;
- (BOOL)hasOtherSiblings;
- (BOOL)hasServer;
- (BOOL)isAccountSiblingOf:(id)of;
- (BOOL)isApple;
- (BOOL)isBetterThanIMHandle:(id)handle nonPhoneNumbersPreferred:(BOOL)preferred;
- (BOOL)isBuddy;
- (BOOL)isBusiness;
- (BOOL)isChatBot;
- (BOOL)isContact;
- (BOOL)isContactButNotMe;
- (BOOL)isIndiaShortCode;
- (BOOL)isKTVerified;
- (BOOL)isLoginIMHandle;
- (BOOL)isLoginIMHandleForAnyAccount;
- (BOOL)isMako;
- (BOOL)isMapKitBusiness;
- (BOOL)isSiblingOf:(id)of;
- (BOOL)isStewie;
- (BOOL)isStewieEmergency;
- (BOOL)isStewieEmergencyServices;
- (BOOL)isStewieRoadside;
- (BOOL)isStewieTranscriptSharingHandle;
- (BOOL)isSystemUser;
- (BOOL)looksLikeChatBot;
- (BOOL)matchesIMHandle:(id)handle;
- (BOOL)matchesLoginHandleForAnyAccount;
- (BOOL)resetCNContact;
- (DNDContactHandle)dndContactHandle;
- (IMBrandManager)brandManager;
- (IMHandle)imHandleWithoutResource;
- (IMHandle)init;
- (IMHandle)initWithAccount:(id)account ID:(id)d alreadyCanonical:(BOOL)canonical;
- (IMHandle)initWithCoder:(id)coder;
- (NSArray)accountSiblingsArray;
- (NSArray)emails;
- (NSArray)existingAccountSiblingsArray;
- (NSArray)groupsArray;
- (NSArray)siblingsArray;
- (NSDate)availabilityStatusPublishedDate;
- (NSSet)groups;
- (NSSet)siblings;
- (NSString)IDWithoutResource;
- (NSString)_displayNameWithAbbreviation;
- (NSString)accountTypeName;
- (NSString)countryCode;
- (NSString)displayID;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)idleString;
- (NSString)lastName;
- (NSString)mobileDeviceName;
- (NSString)name;
- (NSString)nameAndEmail;
- (NSString)nameAndID;
- (NSString)nameOfStatus;
- (NSString)nameThatIsNotHandle;
- (NSString)nickname;
- (NSString)normalizedID;
- (NSString)offlineString;
- (NSString)phoneticFirstName;
- (NSString)phoneticFullName;
- (NSString)phoneticLastName;
- (NSString)resource;
- (NSString)server;
- (NSString)statusMessage;
- (double)idleTime;
- (double)timeSinceStatusChanged;
- (double)timeSinceWentOffline;
- (id)_IDWithTrimmedServer;
- (id)_bestChatSibling;
- (id)_chatSiblings;
- (id)_contactID;
- (id)_displayNameWithContact:(id)contact;
- (id)_displayNameWithNicknameIfAvailable;
- (id)_formattedPhoneNumber;
- (id)_handleInfo;
- (id)_nameForComparisonPreferFirst:(BOOL)first;
- (id)_unformattedPhoneNumber;
- (id)beginObservingAvailability;
- (id)bestAccountSibling;
- (id)bestIMHandleForAccount:(id)account onService:(id)service inGroup:(id)group otherThan:(id)than;
- (id)bestSibling;
- (id)chatSiblingsArray;
- (id)cnContactWithKeys:(id)keys;
- (id)dependentIMHandles;
- (id)description;
- (id)displayNameForChat:(id)chat;
- (id)existingChatSiblingsArray;
- (id)existingIMHandleWithoutResource;
- (id)findMyHandle;
- (id)findMySiblingHandles;
- (id)fmfHandle;
- (id)imHandleForOtherAccount:(id)account;
- (id)immediateNameWithNeedsSuggestedNameFetch:(BOOL *)fetch useSuggestedName:(BOOL)name allowHandles:(BOOL)handles;
- (id)namePrefixedWithMaybe;
- (id)nicknameFromNicknameController;
- (id)nicknameObject;
- (id)publicAPIPropertiesDictionary;
- (int64_t)availability;
- (int64_t)blockedStatus;
- (int64_t)compareAccountNames:(id)names;
- (int64_t)compareFirstNames:(id)names;
- (int64_t)compareIDs:(id)ds;
- (int64_t)compareLastNames:(id)names;
- (int64_t)compareNormalizedIDs:(id)ds;
- (int64_t)compareStatus:(id)status;
- (int64_t)offGridMode;
- (unint64_t)capabilities;
- (unint64_t)status;
- (unsigned)sortOrderInGroup:(id)group;
- (void)_clearCNContactProperties;
- (void)_createPhoneNumberRefIfNeeded;
- (void)_fetchBrandInfoForBrandWithURI:(id)i forType:(unint64_t)type simID:(id)d;
- (void)_fetchBrandInfoForBusiness:(unint64_t)business simID:(id)d;
- (void)_fetchBrandInfoForRoadside;
- (void)_fetchBrandLogoFromChatRegistryFor:(id)for;
- (void)_fetchedBrand:(id)brand withBrandURI:(id)i simID:(id)d;
- (void)_filterStatusMessage;
- (void)_postNotification:(id)notification;
- (void)_postNotificationName:(id)name userInfo:(id)info;
- (void)_postOnScreenChangedNotificationForBrandProperty:(id)property;
- (void)_setBaseFirstName:(id)name lastName:(id)lastName fullName:(id)fullName;
- (void)_setCountryCode:(id)code updateSiblings:(BOOL)siblings;
- (void)_setExtraProperties:(id)properties;
- (void)_setIDStatus:(int64_t)status;
- (void)_setOriginalID:(id)d;
- (void)_setOriginalID:(id)d countryCode:(id)code updateSiblings:(BOOL)siblings;
- (void)_setOriginalID:(id)d updateSiblings:(BOOL)siblings;
- (void)_updateOriginalID:(id)d;
- (void)_updateStatusBasedOnAuthRequestStatus;
- (void)associatedBusinessIDChanged;
- (void)autoInviteToViewAvailabilityIfNeededFromHandleID:(id)d;
- (void)autoInviteToViewOffGridModeIfNeededFromHandleID:(id)d;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fetchBrandInfoIfNecessaryWithSimID:(id)d;
- (void)forceFetchChatBotBrandInfoWithSimID:(id)d;
- (void)isInvitedToViewMyFocusStatusFromHandleID:(id)d completion:(id)completion;
- (void)propertiesChanged:(id)changed;
- (void)releaseNotificationQueue;
- (void)resetCNContactProperties;
- (void)resetCachedName;
- (void)scheduleSuggestedNameFetchIfNecessary;
- (void)setAuthRequestStatus:(unsigned int)status;
- (void)setBlockedStatus:(int64_t)status;
- (void)setCapabilities:(unint64_t)capabilities;
- (void)setCustomPictureData:(id)data;
- (void)setCustomPictureData:(id)data key:(id)key;
- (void)setEmail:(id)email andUpdateABPerson:(BOOL)person;
- (void)setFeedUpdatedDate:(id)date;
- (void)setFirstName:(id)name lastName:(id)lastName fullName:(id)fullName andUpdateABPerson:(BOOL)person;
- (void)setIdleSince:(id)since;
- (void)setImageData:(id)data;
- (void)setIsBot:(BOOL)bot;
- (void)setIsMobile:(BOOL)mobile;
- (void)setLocalNickname:(id)nickname;
- (void)setStatus:(unint64_t)status message:(id)message richMessage:(id)richMessage;
- (void)setSuggestedName:(id)name;
- (void)statusMessageChanged:(id)changed;
- (void)updateCNContact:(id)contact;
@end

@implementation IMHandle

- (IMHandle)init
{
  v11.receiver = self;
  v11.super_class = IMHandle;
  v2 = [(IMHandle *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v2];
    guid = v2->_guid;
    v2->_guid = v3;

    v2->_isAnonymous = 0;
    *&v2->_isMobile = 0;
    v2->_status = 0;
    statusMsg = v2->_statusMsg;
    v2->_statusMsg = &stru_1F1B76F98;

    prevStatusMsg = v2->_prevStatusMsg;
    v2->_prevStatusMsg = &stru_1F1B76F98;

    v7 = IMCountryCodeForIncomingTextMessage();
    v8 = [v7 copy];
    countryCode = v2->_countryCode;
    v2->_countryCode = v8;
  }

  return v2;
}

- (BOOL)looksLikeChatBot
{
  selfCopy = self;
  v3 = [(IMHandle *)selfCopy ID];
  if (!v3)
  {
    sub_1A84E5DBC();
    v3 = sub_1A84E5D8C();
  }

  __im_isChatBotPatterned = [(NSString *)v3 __im_isChatBotPatterned];

  return __im_isChatBotPatterned;
}

- (BOOL)isMapKitBusiness
{
  isBusiness = self->_isBusiness;
  if (!isBusiness)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(IMHandle *)self ID];
    v6 = [v4 numberWithBool:MEMORY[0x1AC56C3A0]()];
    v7 = self->_isBusiness;
    self->_isBusiness = v6;

    isBusiness = self->_isBusiness;
  }

  return [(NSNumber *)isBusiness BOOLValue];
}

- (BOOL)isStewieRoadside
{
  v2 = [(IMHandle *)self ID];
  v3 = IMIsStringStewieRoadside();

  return v3;
}

- (BOOL)isBusiness
{
  if ([(IMHandle *)self isMapKitBusiness])
  {
    return 1;
  }

  return [(IMHandle *)self isChatBot];
}

- (BOOL)isChatBot
{
  selfCopy = self;
  v3 = sub_1A824DF2C();

  return v3 & 1;
}

- (BOOL)isStewieTranscriptSharingHandle
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled)
  {
    v5 = [(IMHandle *)self ID];
    if ([v5 hasPrefix:*MEMORY[0x1E69A7DB0]])
    {

      return 1;
    }

    v6 = [(IMHandle *)self ID];
    v7 = [v6 hasSuffix:*MEMORY[0x1E69A6EA0]];

    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

- (id)existingChatSiblingsArray
{
  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = [v3 _existingChatSiblingsForHandle:self];

  return v4;
}

- (NSString)countryCode
{
  countryCode = self->_countryCode;
  if (countryCode)
  {
    v3 = countryCode;
  }

  else
  {
    v3 = IMCountryCodeForIncomingTextMessage();
  }

  return v3;
}

- (void)associatedBusinessIDChanged
{
  if ([(IMHandle *)self isStewieRoadside])
  {

    [(IMHandle *)self _fetchBrandInfoForRoadside];
  }
}

- (BOOL)isLoginIMHandle
{
  selfCopy = self;
  loginIMHandle = [(IMAccount *)self->_account loginIMHandle];
  LOBYTE(selfCopy) = loginIMHandle == selfCopy;

  return selfCopy;
}

- (BOOL)isContact
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  if ([mEMORY[0x1E69A7FD0] isBatchFetchingForLaunchCompleted])
  {
  }

  else
  {
    v4 = IMIsRunningInUnitTesting();

    if ((v4 & 1) == 0)
    {
      mEMORY[0x1E69A7FD0]2 = [MEMORY[0x1E69A7FD0] sharedInstance];
      v8 = [(IMHandle *)self ID];
      v7 = [mEMORY[0x1E69A7FD0]2 isIDAKnownContact:v8];

      goto LABEL_6;
    }
  }

  v5 = MEMORY[0x1E69A7FD0];
  mEMORY[0x1E69A7FD0]2 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v7 = [v5 isCNContactAKnownContact:mEMORY[0x1E69A7FD0]2];
LABEL_6:

  return v7;
}

- (BOOL)isStewie
{
  v2 = [(IMHandle *)self ID];
  v3 = MEMORY[0x1AC56C3D0]();

  return v3;
}

- (NSString)name
{
  cachedName = [(IMHandle *)self cachedName];

  if ([(IMHandle *)self isBusiness]&& cachedName)
  {
    cachedName2 = [(IMHandle *)self cachedName];
    v5 = MEMORY[0x1E69A7F28];
    v6 = [(IMHandle *)self ID];
    v7 = [v5 placeholderNameForBrandURI:v6];
    v8 = [cachedName2 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (cachedName)
  {
    goto LABEL_11;
  }

  v9 = IMHandleLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "No cached name, fetching", v14, 2u);
  }

  v10 = [(IMHandle *)self immediateNameWithNeedsSuggestedNameFetch:0 useSuggestedName:1];
  if ([v10 length])
  {
    [(IMHandle *)self setCachedName:v10];
  }

LABEL_11:
  cachedName3 = [(IMHandle *)self cachedName];
  if ([cachedName3 length])
  {
    [(IMHandle *)self cachedName];
  }

  else
  {
    [(IMHandle *)self immediateNameWithNeedsSuggestedNameFetch:0 useSuggestedName:1];
  }
  v12 = ;

  return v12;
}

- (BOOL)_hasServiceNameProperties
{
  if ([(NSString *)self->_firstName length]|| [(NSString *)self->_lastName length])
  {
    return 1;
  }

  if (![(NSString *)self->_nickname length])
  {
    return 0;
  }

  v5 = [(IMHandle *)self ID];
  v3 = [v5 localizedCompare:self->_nickname] != 0;

  return v3;
}

- (void)scheduleSuggestedNameFetchIfNecessary
{
  if (![(IMHandle *)self hasCheckedForSuggestions])
  {
    v3 = +[IMSuggestionsService sharedInstance];
    [v3 scheduleFetchIfNecessaryForHandle:self];

    MEMORY[0x1EEE66B58](self, sel_setHasCheckedForSuggestions_);
  }
}

- (int64_t)blockedStatus
{
  mEMORY[0x1E69A7F20] = [MEMORY[0x1E69A7F20] sharedBlockList];
  if ([mEMORY[0x1E69A7F20] allowsExpensiveBlockListChecking])
  {
    v4 = [(IMHandle *)self ID];
    v5 = [mEMORY[0x1E69A7F20] addressIsBlocked:v4] ^ 1;
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (BOOL)isStewieEmergency
{
  v2 = [(IMHandle *)self ID];
  v3 = IMIsStringStewieEmergency();

  return v3;
}

- (BOOL)isIndiaShortCode
{
  normalizedID = [(IMHandle *)self normalizedID];
  im_stripCategoryLabel = [normalizedID im_stripCategoryLabel];
  v5 = [im_stripCategoryLabel length];

  result = [(NSString *)self->_countryCode isEqual:@"in"];
  if ((v5 - 3) >= 7)
  {
    return 0;
  }

  return result;
}

- (NSString)normalizedID
{
  normalizedFormOfID = self->_normalizedFormOfID;
  if (normalizedFormOfID)
  {
    goto LABEL_6;
  }

  service = [(IMHandle *)self service];
  supportsPhoneNumberMapping = [service supportsPhoneNumberMapping];

  if (supportsPhoneNumberMapping)
  {
    service2 = [(IMHandle *)self service];
    v7 = [service2 normalizedFormOfID:self->_id];
    v8 = self->_normalizedFormOfID;
    self->_normalizedFormOfID = v7;

    normalizedFormOfID = self->_normalizedFormOfID;
    if (normalizedFormOfID)
    {
LABEL_6:
      v11 = normalizedFormOfID;
      goto LABEL_7;
    }

    v9 = MEMORY[0x1AC56C3F0](self->_id);
    v10 = self->_normalizedFormOfID;
    self->_normalizedFormOfID = v9;
  }

  normalizedFormOfID = self->_normalizedFormOfID;
  if (normalizedFormOfID)
  {
    goto LABEL_6;
  }

  v11 = MEMORY[0x1AC56C3F0](self->_id);
LABEL_7:

  return v11;
}

- (NSString)_displayNameWithAbbreviation
{
  cnContact = [(IMHandle *)self cnContact];
  if (cnContact)
  {
    if ([MEMORY[0x1E69A7FD0] shouldShowNickNames])
    {
      nickname = [(IMHandle *)self nickname];
    }

    else
    {
      nickname = 0;
    }

    if ([nickname length])
    {
      name = nickname;
    }

    else
    {
      cachedDisplayNameWithAbbreviation = [(IMHandle *)self cachedDisplayNameWithAbbreviation];

      if (!cachedDisplayNameWithAbbreviation)
      {
        if ([MEMORY[0x1E69A7FD0] shouldShowAbbreviatedNames])
        {
          v7 = [MEMORY[0x1E69A7FD0] abbreviatedNameForCNContact:cnContact];
        }

        else
        {
          v7 = 0;
        }

        if ([v7 length])
        {
          [(IMHandle *)self setCachedDisplayNameWithAbbreviation:v7];
        }
      }

      cachedDisplayNameWithAbbreviation2 = [(IMHandle *)self cachedDisplayNameWithAbbreviation];
      if ([cachedDisplayNameWithAbbreviation2 length])
      {
        [(IMHandle *)self cachedDisplayNameWithAbbreviation];
      }

      else
      {
        [(IMHandle *)self name];
      }
      name = ;
    }
  }

  else
  {
    name = [(IMHandle *)self name];
  }

  return name;
}

- (NSString)nickname
{
  cnContact = [(IMHandle *)self cnContact];
  if (cnContact)
  {
    v4 = [MEMORY[0x1E69A7FD0] nickNameForCNContact:cnContact];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 length])
  {
    v5 = v4;
LABEL_8:
    nickname = v5;
    goto LABEL_9;
  }

  if ([(IMHandle *)self _hasServiceNameProperties])
  {
    v5 = self->_nickname;
    goto LABEL_8;
  }

  if ([(IMHandle *)self isLoginIMHandle])
  {
    v8 = +[IMMe me];
    nickname = [v8 nickname];
  }

  else
  {
    nickname = 0;
  }

LABEL_9:

  return nickname;
}

- (NSString)displayID
{
  displayID = self->_displayID;
  if (displayID)
  {
    v3 = displayID;
    goto LABEL_9;
  }

  _formattedPhoneNumber = [(IMHandle *)self _formattedPhoneNumber];
  if ([_formattedPhoneNumber length])
  {
    v6 = _formattedPhoneNumber;
  }

  else
  {
    isBusiness = [(IMHandle *)self isBusiness];
    id = self->_id;
    if (!isBusiness)
    {
      if ([(NSString *)id length])
      {
        im_stripCategoryLabel = [(NSString *)self->_id im_stripCategoryLabel];
        MEMORY[0x1AC56C3F0]();
      }

      else
      {
        im_stripCategoryLabel = MEMORY[0x1AC56C3F0](self->_uncanonicalID);
        [im_stripCategoryLabel im_stripCategoryLabel];
      }
      v11 = ;

      if ([v11 _appearsToBePhoneNumber])
      {
        v12 = IMFormattedDisplayStringForNumber();
      }

      else
      {
        v12 = v11;
      }

      v3 = v12;

      goto LABEL_8;
    }

    v6 = id;
  }

  v3 = v6;
LABEL_8:

LABEL_9:

  return v3;
}

- (id)_formattedPhoneNumber
{
  formattedNumber = self->_formattedNumber;
  if (formattedNumber)
  {
    v3 = formattedNumber;
    goto LABEL_20;
  }

  v5 = [(NSString *)self->_uncanonicalID length];
  v6 = 24;
  if (!v5)
  {
    v6 = 16;
  }

  v7 = MEMORY[0x1AC56C3F0](*(&self->super.isa + v6));
  v8 = v7;
  if (self->_hasCheckedPhoneNumber)
  {
    if (!self->_phoneNumberRef)
    {
      goto LABEL_18;
    }
  }

  else if (![v7 _appearsToBePhoneNumber])
  {
LABEL_18:
    v3 = 0;
    goto LABEL_19;
  }

  if ([v8 _appearsToBePhoneNumber])
  {
    v9 = IMFormattedNumberForUnformattedNumber();
    v10 = IMCopyStringWithLocalizedNumbers();
    if (v10)
    {
      v11 = v10;
      if (CFStringGetLength(v10) > 0)
      {
        goto LABEL_15;
      }

      CFRelease(v11);
    }

    v11 = v9;
    v9 = v11;
  }

  else
  {
    v11 = v8;
    v9 = 0;
  }

LABEL_15:
  v12 = self->_formattedNumber;
  self->_formattedNumber = &v11->isa;

  if (![v9 length])
  {

    goto LABEL_18;
  }

  qmemcpy(v19, ", * ", sizeof(v19));
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v19[1] length:1];
  v15 = [MEMORY[0x1E696AEC0] stringWithCharacters:v19 length:1];
  v16 = [v13 initWithFormat:@"%@%@%@", v14, v9, v15];
  v17 = self->_formattedNumber;
  self->_formattedNumber = v16;

  v3 = self->_formattedNumber;
LABEL_19:

LABEL_20:

  return v3;
}

- (IMBrandManager)brandManager
{
  brandManager = self->_brandManager;
  if (brandManager)
  {
    v3 = brandManager;
  }

  else if (IMIsRunningInUnitTesting())
  {
    v3 = 0;
  }

  else
  {
    mEMORY[0x1E69A7F38] = [MEMORY[0x1E69A7F38] sharedInstance];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8264014;
    block[3] = &unk_1E780FCB0;
    v3 = mEMORY[0x1E69A7F38];
    v7 = v3;
    if (qword_1EB2EA290 != -1)
    {
      dispatch_once(&qword_1EB2EA290, block);
    }
  }

  return v3;
}

- (BOOL)_allowedByScreenTime
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(IMHandle *)self ID];
  v3 = +[IMDowntimeController sharedInstance];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v3 allowedToShowConversationWithHandleIDs:v4 sync:0 context:0];

  return v5;
}

+ (id)cnPhoneticKeys
{
  if (qword_1EB2E90F8 != -1)
  {
    sub_1A84E011C();
  }

  v3 = qword_1EB2E90D0;

  return v3;
}

+ (void)_loadStatusNames
{
  byte_1EB2EA268 = 1;
  v2 = MEMORY[0x1E695DF20];
  v3 = _IMFrameworkBundle();
  v4 = [v3 pathForResource:@"OnlineStatuses" ofType:@"plist"];
  v14 = [v2 dictionaryWithContentsOfFile:v4];

  v5 = [v14 objectForKey:@"StatusList"];
  v6 = [v5 count];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = qword_1EB2EA260;
  qword_1EB2EA260 = v7;

  if (v6 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndex:IMPersonStatusFromFZPersonStatus(v9)];
      v11 = [v10 objectForKey:@"_LOCALIZABLE_"];
      v12 = qword_1EB2EA260;
      v13 = [v11 objectForKey:@"StatusName"];
      [v12 addObject:v13];

      v9 = (v9 + 1);
    }

    while (v6 != v9);
  }
}

+ (id)nameOfStatus:(unint64_t)status
{
  if ((byte_1EB2EA268 & 1) == 0)
  {
    [self _loadStatusNames];
  }

  v4 = qword_1EB2EA260;

  return [v4 objectAtIndex:status];
}

- (IMHandle)initWithAccount:(id)account ID:(id)d alreadyCanonical:(BOOL)canonical
{
  canonicalCopy = canonical;
  accountCopy = account;
  dCopy = d;
  v11 = [(IMHandle *)self init];
  if (!v11)
  {
    goto LABEL_11;
  }

  iMCoreSetupTimingCollection = [MEMORY[0x1E69A6170] IMCoreSetupTimingCollection];
  [iMCoreSetupTimingCollection startTimingForKey:@"IMCoreSetup: IMHandle init"];
  objc_storeStrong(&v11->_account, account);
  if (canonicalCopy)
  {
    v13 = [dCopy copy];
    id = v11->_id;
    v11->_id = v13;
  }

  else
  {
    v15 = [accountCopy canonicalFormOfID:dCopy];
    v16 = v11->_id;
    v11->_id = v15;

    if ([dCopy isEqualToString:v11->_id])
    {
      goto LABEL_7;
    }

    id = IMCleanupPhoneNumber();
    v17 = [id copy];
    uncanonicalID = v11->_uncanonicalID;
    v11->_uncanonicalID = v17;
  }

LABEL_7:
  v11->_resourceIndex = 0x7FFFFFFFFFFFFFFFLL;
  v11->_capabilities = [accountCopy capabilities];
  if (v11->_id && v11->_account)
  {
    v19 = +[IMHandleRegistrar sharedInstance];
    [v19 registerIMHandle:v11];

    account = [(IMHandle *)v11 account];
    [account registerIMHandle:v11];

    [(IMHandle *)v11 _registerForNotifications];
  }

  [iMCoreSetupTimingCollection stopTimingForKey:@"IMCoreSetup: IMHandle init"];
  [(IMHandle *)v11 fetchBrandInfoIfNecessary];

LABEL_11:
  return v11;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = IMHandleLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    account = self->_account;
    id = self->_id;
    *buf = 138412546;
    v11 = id;
    v12 = 2112;
    v13 = account;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Dealloc ID: %@    Account: %@", buf, 0x16u);
  }

  if ([(IMHandle *)self watchingIMHandle])
  {
    [(IMAccount *)self->_account stopWatchingIMHandle:self];
  }

  [(IMAccount *)self->_account unregisterIMHandleWithID:self->_id];
  v6 = +[IMHandleRegistrar sharedInstance];
  [v6 unregisterIMHandle:self];

  phoneNumberRef = self->_phoneNumberRef;
  if (phoneNumberRef)
  {
    CFRelease(phoneNumberRef);
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, " => done", buf, 2u);
    }
  }

  v9.receiver = self;
  v9.super_class = IMHandle;
  [(IMHandle *)&v9 dealloc];
}

- (id)_handleInfo
{
  v2 = MEMORY[0x1E695DF20];
  v3 = *MEMORY[0x1E69A6310];
  id = self->_id;
  uncanonicalID = self->_uncanonicalID;
  v6 = *MEMORY[0x1E69A6390];
  countryCode = [(IMHandle *)self countryCode];
  v8 = [v2 dictionaryWithObjectsAndKeys:{id, v3, uncanonicalID, v6, countryCode, *MEMORY[0x1E69A62E8], 0}];

  return v8;
}

- (void)_setOriginalID:(id)d countryCode:(id)code updateSiblings:(BOOL)siblings
{
  siblingsCopy = siblings;
  dCopy = d;
  codeCopy = code;
  if (dCopy && (IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    [(IMHandle *)self _setOriginalID:dCopy updateSiblings:siblingsCopy];
  }

  [(IMHandle *)self _setCountryCode:codeCopy updateSiblings:siblingsCopy];
}

- (void)_setOriginalID:(id)d updateSiblings:(BOOL)siblings
{
  siblingsCopy = siblings;
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy && (IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    v7 = [dCopy copy];
    uncanonicalID = self->_uncanonicalID;
    self->_uncanonicalID = v7;

    if (siblingsCopy)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      existingChatSiblingsArray = [(IMHandle *)self existingChatSiblingsArray];
      v10 = [existingChatSiblingsArray countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(existingChatSiblingsArray);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            if (v14 != self)
            {
              [(IMHandle *)v14 _setOriginalID:dCopy updateSiblings:0];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [existingChatSiblingsArray countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }

    formattedNumber = self->_formattedNumber;
    self->_formattedNumber = 0;

    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }
}

- (void)_setCountryCode:(id)code updateSiblings:(BOOL)siblings
{
  siblingsCopy = siblings;
  v20 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  if (codeCopy)
  {
    if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
    {
      v7 = [codeCopy copy];
      countryCode = self->_countryCode;
      self->_countryCode = v7;

      if (siblingsCopy)
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        existingChatSiblingsArray = [(IMHandle *)self existingChatSiblingsArray];
        v10 = [existingChatSiblingsArray countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v16;
          do
          {
            v13 = 0;
            do
            {
              if (*v16 != v12)
              {
                objc_enumerationMutation(existingChatSiblingsArray);
              }

              v14 = *(*(&v15 + 1) + 8 * v13);
              if (v14 != self)
              {
                [(IMHandle *)v14 _setCountryCode:codeCopy updateSiblings:0];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [existingChatSiblingsArray countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v11);
        }
      }
    }
  }
}

- (void)_setOriginalID:(id)d
{
  v4 = IMCleanupPhoneNumber();
  [(IMHandle *)self _setOriginalID:v4 updateSiblings:1];
}

- (BOOL)isMako
{
  isMako = self->_isMako;
  if (!isMako)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(IMHandle *)self ID];
    v6 = [v4 numberWithBool:IMSharedHelperIsMakoURI()];
    v7 = self->_isMako;
    self->_isMako = v6;

    isMako = self->_isMako;
  }

  return [(NSNumber *)isMako BOOLValue];
}

- (BOOL)isApple
{
  isApple = self->_isApple;
  if (!isApple)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(IMHandle *)self ID];
    v6 = (IMSharedHelperIsAppleURI() & 1) != 0 || [(IMHandle *)self isMako];
    v7 = [v4 numberWithInt:v6];
    v8 = self->_isApple;
    self->_isApple = v7;

    isApple = self->_isApple;
  }

  return [(NSNumber *)isApple BOOLValue];
}

- (BOOL)isStewieEmergencyServices
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  result = 0;
  if (isTranscriptSharingEnabled)
  {
    v5 = [(IMHandle *)self ID];
    v6 = [v5 hasSuffix:*MEMORY[0x1E69A6EA0]];

    if (v6)
    {
      return 1;
    }
  }

  return result;
}

- (IMHandle)initWithCoder:(id)coder
{
  v42 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountID"];
  v7 = +[IMAccountController sharedInstance];
  v8 = [v7 accountForUniqueID:v6];

  if (v8)
  {
    goto LABEL_27;
  }

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceName"];
  [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServiceLoginID"];
  v36 = v35 = v9;
  v10 = [IMServiceImpl serviceWithInternalName:v9];
  v11 = +[IMAccountController sharedInstance];
  v12 = [v11 accountsForService:v10];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v31 = v6;
    v32 = v5;
    v33 = coderCopy;
    selfCopy = self;
    v16 = 0;
    v17 = *v38;
LABEL_4:
    v18 = 0;
    v19 = v16;
    while (1)
    {
      if (*v38 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v37 + 1) + 8 * v18);

      v20 = [v10 canonicalFormOfID:v36];
      login = [v16 login];
      v22 = [v10 canonicalFormOfID:login];
      v23 = [v10 equalID:v20 andID:v22];

      if (v23)
      {
        break;
      }

      ++v18;
      v19 = v16;
      if (v15 == v18)
      {
        v15 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v15)
        {
          goto LABEL_4;
        }

        coderCopy = v33;
        self = selfCopy;
        v6 = v31;
        v5 = v32;
        goto LABEL_11;
      }
    }

    v8 = v16;

    coderCopy = v33;
    self = selfCopy;
    v6 = v31;
    v5 = v32;
    if (!v8)
    {
      goto LABEL_14;
    }

    v24 = 0;
    v25 = v8;
    v26 = v35;
  }

  else
  {
LABEL_11:

LABEL_14:
    v27 = [IMAccountController sharedInstance:v31];
    v8 = [v27 bestAccountForService:v10];

    v26 = v35;
    if (v8 || (+[IMAccountController sharedInstance](IMAccountController, "sharedInstance"), v28 = objc_claimAutoreleasedReturnValue(), [v28 bestAccountForService:0], v8 = objc_claimAutoreleasedReturnValue(), v28, v8))
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {

      v25 = 0;
      self = 0;
      v24 = 1;
    }
  }

  if ((v24 & 1) == 0)
  {
LABEL_27:
    if ([v5 length])
    {
      v29 = [v8 imHandleWithID:v5];
      -[IMHandle setAnonymous:](v29, "setAnonymous:", [coderCopy decodeBoolForKey:@"AnonymousKey"]);
    }

    else
    {
      v29 = 0;
    }

    self = 0;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(IMHandle *)self account];
  uniqueID = [account uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"AccountID"];

  account2 = [(IMHandle *)self account];
  login = [account2 login];

  if ([login length])
  {
    [coderCopy encodeObject:login forKey:@"ServiceLoginID"];
  }

  account3 = [(IMHandle *)self account];
  internalName = [account3 internalName];
  [coderCopy encodeObject:internalName forKey:@"ServiceName"];

  [coderCopy encodeObject:self->_id forKey:@"ID"];
  [coderCopy encodeBool:self->_isAnonymous forKey:@"AnonymousKey"];
}

+ (id)handlesForCNContact:(id)contact
{
  contactCopy = contact;
  v4 = +[IMHandleRegistrar sharedInstance];
  identifier = [contactCopy identifier];

  v6 = [v4 handlesForCNIdentifier:identifier];
  allObjects = [v6 allObjects];

  return allObjects;
}

- (id)imHandleForOtherAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy || ([(IMHandle *)self account], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == accountCopy))
  {
    selfCopy = self;
    goto LABEL_22;
  }

  otherServiceIDs = self->_otherServiceIDs;
  internalName = [accountCopy internalName];
  v8 = [(NSDictionary *)otherServiceIDs objectForKey:internalName];

  if (!v8)
  {
    service = [(IMHandle *)self service];
    service2 = [accountCopy service];

    if (service == service2)
    {
LABEL_11:
      v17 = [(IMHandle *)self ID];
      v18 = [accountCopy imHandleWithID:v17 alreadyCanonical:1];
      goto LABEL_19;
    }

    service3 = [(IMHandle *)self service];
    if ([service3 supportsMessaging])
    {
      service4 = [(IMHandle *)self service];
      if ([service4 supportsCanonicalHandles])
      {
        service5 = [accountCopy service];
        if ([service5 supportsMessaging])
        {
          service6 = [accountCopy service];
          supportsCanonicalHandles = [service6 supportsCanonicalHandles];

          if (supportsCanonicalHandles)
          {
            goto LABEL_11;
          }

LABEL_15:
          service7 = [accountCopy service];
          v17 = [(IMHandle *)self bestIMHandleForService:service7];

          if (v17 == self)
          {
            v18 = v17;
          }

          else
          {
            if (!v17)
            {
              selfCopy = 0;
              goto LABEL_20;
            }

            v18 = [(IMHandle *)v17 imHandleForOtherAccount:accountCopy];
          }

LABEL_19:
          selfCopy = v18;
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    goto LABEL_15;
  }

  selfCopy = [accountCopy imHandleWithID:v8];
LABEL_21:

LABEL_22:

  return selfCopy;
}

- (NSArray)groupsArray
{
  account = [(IMHandle *)self account];
  v4 = [(IMHandle *)self ID];
  v5 = [account memberGroups:v4];

  return v5;
}

- (NSSet)groups
{
  v2 = MEMORY[0x1E695DFD8];
  groupsArray = [(IMHandle *)self groupsArray];
  v4 = [v2 setWithArray:groupsArray];

  return v4;
}

- (void)_postNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ([(IMHandle *)self shouldQueueNotifications])
  {
    name = [notificationCopy name];
    notificationNameQueue = self->_notificationNameQueue;
    if (!notificationNameQueue)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_notificationNameQueue;
      self->_notificationNameQueue = v7;

      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      notificationQueue = self->_notificationQueue;
      self->_notificationQueue = v9;

      notificationNameQueue = self->_notificationNameQueue;
    }

    if (([(NSMutableArray *)notificationNameQueue containsObject:name]& 1) == 0)
    {
      [(NSMutableArray *)self->_notificationNameQueue addObject:name];
      [(NSMutableArray *)self->_notificationQueue addObject:notificationCopy];
    }
  }

  else
  {
    v11 = IMHandleLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = notificationCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEFAULT, "%@ is posting %@", &v13, 0x16u);
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotification:notificationCopy];
  }
}

- (void)_postNotificationName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  if (!self->_blockNotifications && byte_1EB2E50B8 == 1)
  {
    v8 = [MEMORY[0x1E696AD80] notificationWithName:nameCopy object:self userInfo:infoCopy];
    mainThread = [MEMORY[0x1E696AF00] mainThread];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A82F0208;
    v11[3] = &unk_1E7810140;
    v11[4] = self;
    v12 = v8;
    v10 = v8;
    [mainThread __im_performBlock:v11];
  }
}

- (NSString)nameAndEmail
{
  email = [(IMHandle *)self email];
  if ([email length])
  {
    name = [(IMHandle *)self name];
    if ([name length])
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ \u202A<%@>\u202C", name, email];
    }

    else
    {
      v5 = email;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isContactButNotMe
{
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  v4 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:0];
  identifier = [v4 identifier];

  mEMORY[0x1E69A7FD0]2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  if ([mEMORY[0x1E69A7FD0]2 isBatchFetchingForLaunchCompleted])
  {
  }

  else
  {
    v7 = IMIsRunningInUnitTesting();

    if ((v7 & 1) == 0)
    {
      mEMORY[0x1E69A7FD0]3 = [MEMORY[0x1E69A7FD0] sharedInstance];
      v12 = [(IMHandle *)self ID];
      v8 = [mEMORY[0x1E69A7FD0]3 cnContactIdentifierForID:v12];

      if (v8)
      {
        v10 = [v8 isEqualToString:identifier] ^ 1;
        goto LABEL_9;
      }

LABEL_8:
      LOBYTE(v10) = 0;
      goto LABEL_9;
    }
  }

  v8 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (![MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v8])
  {
    goto LABEL_8;
  }

  identifier2 = [v8 identifier];
  v10 = [identifier2 isEqualToString:identifier] ^ 1;

LABEL_9:
  return v10;
}

- (BOOL)resetCNContact
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_id length]>= 2 && [(NSString *)self->_id characterAtIndex:1]== 58)
  {
    return 0;
  }

  v4 = IMHandleLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMHandle *)self guid];
    *buf = 138412290;
    v23 = guid;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Resetting contact for guid: %@", buf, 0xCu);
  }

  v6 = self->_cnContact;
  mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
  v8 = [(IMHandle *)self ID];
  v9 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:v8];

  [(IMHandle *)self updateCNContact:v9];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  existingChatSiblingsArray = [(IMHandle *)self existingChatSiblingsArray];
  v11 = [existingChatSiblingsArray countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(existingChatSiblingsArray);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if (v15 != self)
        {
          [(IMHandle *)v15 updateCNContact:v9];
        }
      }

      v12 = [existingChatSiblingsArray countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (![(IMHandle *)self areCNContactPropertiesRecent])
  {
    [(IMHandle *)self resetCNContactProperties];
    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }

  if (v9 | v6)
  {
    v3 = [v9 _im_isEqualToContact:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)areCNContactPropertiesRecent
{
  nickname = [(IMHandle *)self nickname];
  fullName = nickname;
  if (self->_cnNickname | nickname && ![nickname isEqualToString:?])
  {
    goto LABEL_10;
  }

  firstName = [(IMHandle *)self firstName];

  if (self->_cnFirstName | firstName && ![firstName isEqualToString:?])
  {
    v7 = 0;
    fullName = firstName;
    goto LABEL_13;
  }

  lastName = [(IMHandle *)self lastName];

  if (self->_cnLastName | lastName && ![lastName isEqualToString:?])
  {
    v7 = 0;
    fullName = lastName;
    goto LABEL_13;
  }

  fullName = [(IMHandle *)self fullName];

  if (self->_cnFullName | fullName && ![fullName isEqualToString:?])
  {
LABEL_10:
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  return v7;
}

- (void)_clearCNContactProperties
{
  nickname = [(IMHandle *)self nickname];
  cnNickname = self->_cnNickname;
  self->_cnNickname = nickname;

  fullName = [(IMHandle *)self fullName];
  cnFullName = self->_cnFullName;
  self->_cnFullName = fullName;

  firstName = [(IMHandle *)self firstName];
  cnFirstName = self->_cnFirstName;
  self->_cnFirstName = firstName;

  lastName = [(IMHandle *)self lastName];
  self->_cnLastName = lastName;

  MEMORY[0x1EEE66BB8](lastName);
}

- (void)resetCNContactProperties
{
  if (self->_cnContact && ![(IMHandle *)self areCNContactPropertiesRecent])
  {

    MEMORY[0x1EEE66B58](self, sel__clearCNContactProperties);
  }
}

- (id)_IDWithTrimmedServer
{
  IDWithTrimmedServer = self->_IDWithTrimmedServer;
  if (IDWithTrimmedServer)
  {
    v3 = IDWithTrimmedServer;
  }

  else
  {
    login = [(IMAccount *)self->_account login];
    v6 = [login rangeOfString:@"@"];
    v7 = [(IMHandle *)self ID];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }

    v8 = [login substringFromIndex:v6 + 1];
    if (v8 && [v7 hasSuffix:v8])
    {
      v9 = [v7 substringToIndex:{objc_msgSend(v7, "rangeOfString:options:", v8, 4)}];
      if ([v9 hasSuffix:@"@"])
      {
        v10 = [v9 substringToIndex:{objc_msgSend(v9, "length") - 1}];
      }

      else
      {
        v10 = v9;
      }

      v11 = self->_IDWithTrimmedServer;
      self->_IDWithTrimmedServer = v10;
    }

    v12 = self->_IDWithTrimmedServer;
    if (!v12)
    {
LABEL_12:
      v13 = [(IMHandle *)self ID];
    }

    else
    {
      v13 = v12;
    }

    v3 = v13;
  }

  return v3;
}

- (NSString)nameThatIsNotHandle
{
  cachedNameThatIsNotHandle = [(IMHandle *)self cachedNameThatIsNotHandle];

  if ([(IMHandle *)self isBusiness]&& cachedNameThatIsNotHandle)
  {
    cachedNameThatIsNotHandle2 = [(IMHandle *)self cachedNameThatIsNotHandle];
    v5 = MEMORY[0x1E69A7F28];
    v6 = [(IMHandle *)self ID];
    v7 = [v5 placeholderNameForBrandURI:v6];
    v8 = [cachedNameThatIsNotHandle2 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (cachedNameThatIsNotHandle)
  {
    goto LABEL_11;
  }

  v9 = IMHandleLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "No cached name, fetching", v14, 2u);
  }

  v10 = [(IMHandle *)self immediateNameWithNeedsSuggestedNameFetch:0 useSuggestedName:1 allowHandles:0];
  if ([v10 length])
  {
    [(IMHandle *)self setCachedNameThatIsNotHandle:v10];
  }

LABEL_11:
  cachedNameThatIsNotHandle3 = [(IMHandle *)self cachedNameThatIsNotHandle];
  if ([cachedNameThatIsNotHandle3 length])
  {
    [(IMHandle *)self cachedNameThatIsNotHandle];
  }

  else
  {
    [(IMHandle *)self immediateNameWithNeedsSuggestedNameFetch:0 useSuggestedName:1 allowHandles:0];
  }
  v12 = ;

  return v12;
}

- (void)setSuggestedName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_suggestedName isEqualToString:?])
  {
    v4 = [nameCopy copy];
    suggestedName = self->_suggestedName;
    self->_suggestedName = v4;

    [(IMHandle *)self setHasSuggestedName:[(NSString *)self->_suggestedName length]!= 0];
    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }
}

- (id)immediateNameWithNeedsSuggestedNameFetch:(BOOL *)fetch useSuggestedName:(BOOL)name allowHandles:(BOOL)handles
{
  handlesCopy = handles;
  nameCopy = name;
  v65 = *MEMORY[0x1E69E9840];
  cnContact = [(IMHandle *)self cnContact];
  [(IMHandle *)self setIsPrefixedWithMaybe:0];
  if (!cnContact)
  {
    v10 = IMHandleLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IMHandle *)self ID];
      *buf = 138412290;
      v64 = v11;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "DisplayName: Refetching Contact for id: %@", buf, 0xCu);
    }

    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v13 = [(IMHandle *)self ID];
    cnContact = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleWithID:v13];

    if (cnContact)
    {
      [(IMHandle *)self updateCNContact:cnContact];
    }
  }

  if (handlesCopy && [(IMHandle *)self isAnonymous])
  {
    resource = [(IMHandle *)self resource];
    v15 = [resource length] == 0;
    v16 = IMHandleLogHandle();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "DisplayName: Returning displayID since handle is anonymous", buf, 2u);
      }

      displayID = [(IMHandle *)self displayID];
      goto LABEL_22;
    }

    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_DEFAULT, "DisplayName: Returning resource since handle is anonymous", buf, 2u);
    }

    goto LABEL_21;
  }

  if (cnContact)
  {
    v18 = IMHandleLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_DEFAULT, "DisplayName: Getting display name from Contact", buf, 2u);
    }

    resource = [(IMHandle *)self _displayNameWithContact:cnContact];
  }

  else
  {
    resource = 0;
  }

  if ([resource length])
  {
    v19 = IMHandleLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v64 = resource;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "DisplayName: found displayName: %@", buf, 0xCu);
    }

LABEL_21:
    displayID = resource;
    resource = displayID;
LABEL_22:
    fullName = displayID;
    goto LABEL_23;
  }

  if (![(IMHandle *)self isLoginIMHandle])
  {
    goto LABEL_35;
  }

  v23 = +[IMMe me];
  fullName = [v23 fullName];

  if (![fullName length])
  {

LABEL_35:
    if ([(IMHandle *)self _hasServiceNameProperties])
    {
      v25 = IMHandleLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, "DisplayName: Using Service name properties", buf, 2u);
      }

      if ([(NSString *)self->_fullName length])
      {
        goto LABEL_39;
      }

      if ([(NSString *)self->_firstName length]&& ![(NSString *)self->_lastName length])
      {
        firstName = self->_firstName;
        goto LABEL_40;
      }

      if (![(NSString *)self->_firstName length]&& [(NSString *)self->_lastName length])
      {
        firstName = self->_lastName;
        goto LABEL_40;
      }

      if (![(NSString *)self->_firstName length]&& ![(NSString *)self->_lastName length]&& [(NSString *)self->_nickname length])
      {
        firstName = self->_nickname;
        goto LABEL_40;
      }

      if ([(NSString *)self->_firstName length]&& [(NSString *)self->_lastName length])
      {
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", self->_firstName, self->_lastName];
        fullName = self->_fullName;
        self->_fullName = v27;
      }

      if ([(NSString *)self->_fullName length])
      {
LABEL_39:
        firstName = self->_fullName;
LABEL_40:
        displayID = firstName;
        goto LABEL_22;
      }
    }

    suggestedName = [(IMHandle *)self suggestedName];
    v30 = suggestedName;
    if (nameCopy && [suggestedName length] && -[IMHandle _allowedByScreenTime](self, "_allowedByScreenTime"))
    {
      v31 = IMHandleLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v30;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_DEFAULT, "DisplayName: Using suggested name %@", buf, 0xCu);
      }

      displayID4 = v30;
LABEL_113:
      fullName = displayID4;
      goto LABEL_114;
    }

    if (fetch && !v30)
    {
      v58[0] = 0;
      v33 = +[IMSuggestionsService sharedInstance];
      displayID2 = [(IMHandle *)self displayID];
      fullName = [v33 suggestedNameFromCache:displayID2 wasFound:v58];

      if (v58[0] == 1 && [fullName length])
      {
        [(IMHandle *)self setSuggestedName:fullName];
        if (nameCopy)
        {
          v35 = IMHandleLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v64 = 0;
            _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "DisplayName: Using cached suggested name %@", buf, 0xCu);
          }

LABEL_106:

LABEL_114:
          goto LABEL_23;
        }
      }

      else
      {
        *fetch = 1;
      }
    }

    if ([(IMHandle *)self isBusiness])
    {
      displayID3 = [(IMHandle *)self displayID];
      objc_initWeak(buf, self);
      v37 = +[IMHandleRegistrar sharedInstance];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = sub_1A82F1710;
      v59[3] = &unk_1E7811DE0;
      objc_copyWeak(&v62, buf);
      v38 = displayID3;
      v60 = v38;
      selfCopy = self;
      v39 = [v37 businessNameForUID:v38 blockFetch:0 updateHandler:0 uniqueHandler:v59];

      v40 = IMHandleLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *v58 = 0;
        _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_DEFAULT, "DisplayName: Using biz name", v58, 2u);
      }

      if (v39)
      {
        fullName = v39;
      }

      else
      {
        v41 = MEMORY[0x1E69A7F28];
        v42 = [(IMHandle *)self ID];
        fullName = [v41 placeholderNameForBrandURI:v42];
      }

      objc_destroyWeak(&v62);
      objc_destroyWeak(buf);

      goto LABEL_114;
    }

    if (handlesCopy)
    {
      if (cnContact)
      {
        fullName = [MEMORY[0x1E69A7FD0] displayNameWithPhoneNumberOrEmailForContact:cnContact];
      }

      else
      {
        v43 = [(IMHandle *)self ID];
        v44 = MEMORY[0x1AC56C3C0]();

        v45 = [(IMHandle *)self ID];
        if (v44)
        {
          fullName = IMFormattedDisplayStringForNumber();
        }

        else
        {
          IsEmail = IMStringIsEmail();

          if (IsEmail)
          {
            v47 = [(IMHandle *)self ID];
            fullName = IMFormattedDisplayStringForNumber();
          }

          else
          {
            fullName = 0;
          }
        }
      }

      if ([fullName length])
      {
        v35 = IMHandleLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "DisplayName: Using formattedDisplayName", buf, 2u);
        }

        goto LABEL_106;
      }
    }

    v48 = [(IMHandle *)self ID];
    v49 = [v48 length] == 0;

    if (v49)
    {
      v50 = IMHandleLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v50, OS_LOG_TYPE_DEFAULT, "DisplayName: Using ID", buf, 2u);
      }

      v51 = sub_1A8361964();
      fullName = [v51 localizedStringForKey:@"Buddy Name" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];

      goto LABEL_114;
    }

    if (handlesCopy && [(IMHandle *)self hasServer])
    {
      fullName = [(IMHandle *)self _IDWithTrimmedServer];
      if ([fullName length])
      {
        v35 = IMHandleLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "DisplayName: Using ID from Server", buf, 2u);
        }

        goto LABEL_106;
      }
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

    if (stewieEnabled)
    {
      if ([(IMHandle *)self isStewieEmergency])
      {
        v54 = sub_1A8361964();
        fullName = [v54 localizedStringForKey:@"STEWIE_EMERGENCY_SOS_HANDLE" value:&stru_1F1B76F98 table:@"IMCoreLocalizable-SOS"];

        v35 = IMHandleLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A823F000, v35, OS_LOG_TYPE_DEFAULT, "DisplayName: Using Stewie emergency name", buf, 2u);
        }

        goto LABEL_106;
      }

      if ([(IMHandle *)self isStewieRoadside])
      {
        v55 = +[IMChorosMonitor sharedInstance];
        v56 = [(IMHandle *)self ID];
        fullName = [v55 roadsideProviderNameForChatIdentifier:v56];

        goto LABEL_114;
      }
    }

    if (!handlesCopy)
    {
      fullName = 0;
      goto LABEL_114;
    }

    v57 = IMHandleLogHandle();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_DEFAULT, "DisplayName: Last resort displayID", buf, 2u);
    }

    displayID4 = [(IMHandle *)self displayID];
    goto LABEL_113;
  }

  v24 = IMHandleLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEFAULT, "DisplayName: Using IMMe's FullName", buf, 2u);
  }

LABEL_23:

  return fullName;
}

- (id)_displayNameWithContact:(id)contact
{
  v4 = [MEMORY[0x1E69A7FD0] displayNameWithCNNickNameOrFullNameOrCompanyNameOrAbbreviatedForContact:contact];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _displayNameWithNicknameIfAvailable = [(IMHandle *)self _displayNameWithNicknameIfAvailable];
    v6 = _displayNameWithNicknameIfAvailable;
    if (_displayNameWithNicknameIfAvailable)
    {
      v8 = _displayNameWithNicknameIfAvailable;
    }
  }

  return v6;
}

- (id)nicknameObject
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1A8259B70;
  v34 = sub_1A825AEE4;
  v35 = 0;
  if (IMSharedHelperCurrentRegionRequiresKnownSenderForNickname())
  {
    v3 = MEMORY[0x1E69A7FD0];
    cnContact = [(IMHandle *)self cnContact];
    LOBYTE(v3) = [v3 isCNContactAKnownContact:cnContact];

    if ((v3 & 1) == 0)
    {
      v22 = 0;
      goto LABEL_13;
    }
  }

  if ([(IMHandle *)self hasSuggestedName])
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v6 = +[IMSuggestionsService sharedInstance];
    displayID = [(IMHandle *)self displayID];
    v8 = MEMORY[0x1E69E96A0];
    v9 = MEMORY[0x1E69E96A0];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1A82F1B8C;
    v27 = &unk_1E7811E08;
    v29 = &v30;
    v10 = v5;
    v28 = v10;
    [v6 fetchUncachedSuggestedRealNameForDisplayName:displayID prependMaybe:0 queue:v8 block:&v24];

    v11 = v28;
  }

  else
  {
    nicknameFromNicknameController = [(IMHandle *)self nicknameFromNicknameController];

    if (!nicknameFromNicknameController)
    {
      goto LABEL_8;
    }

    v10 = +[IMNicknameController sharedInstance];
    v13 = [v10 nicknameForHandle:self];
    v11 = v31[5];
    v31[5] = v13;
  }

LABEL_8:
  if (!v31[5])
  {
    firstName = [(IMHandle *)self firstName];

    if (firstName)
    {
      v15 = objc_alloc(MEMORY[0x1E69A8190]);
      firstName2 = [(IMHandle *)self firstName];
      lastName = [(IMHandle *)self lastName];
      v18 = [v15 initWithFirstName:firstName2 lastName:lastName avatar:0 pronouns:0];
      v19 = v31[5];
      v31[5] = v18;
    }
  }

  v20 = v31[5];
  v21 = [(IMHandle *)self ID:v24];
  [v20 setHandle:v21];

  v22 = v31[5];
LABEL_13:
  _Block_object_dispose(&v30, 8);

  return v22;
}

- (id)nicknameFromNicknameController
{
  v3 = +[IMNicknameController sharedInstance];
  v4 = [v3 nicknameForHandle:self];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CF18]);
    firstName = [v4 firstName];
    [v5 setGivenName:firstName];

    lastName = [v4 lastName];
    [v5 setFamilyName:lastName];

    v8 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_displayNameWithNicknameIfAvailable
{
  if ([(IMHandle *)self _allowedByScreenTime])
  {
    nicknameFromNicknameController = [(IMHandle *)self nicknameFromNicknameController];
    if ([nicknameFromNicknameController length])
    {
      [(IMHandle *)self setIsPrefixedWithMaybe:1];
      v4 = MEMORY[0x1E696AEC0];
      v5 = IMCoreLocalizedString(@"Maybe: %@", @"Maybe: %@");
      v6 = [v4 stringWithFormat:v5, nicknameFromNicknameController];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)namePrefixedWithMaybe
{
  if ([(IMHandle *)self isPrefixedWithMaybe])
  {
    name = [(IMHandle *)self name];
  }

  else if ([(IMHandle *)self hasSuggestedName])
  {
    name = [(IMHandle *)self suggestedName];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (id)displayNameForChat:(id)chat
{
  v104 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  v4 = IMHandleLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    chatIdentifier = [chatCopy chatIdentifier];
    guid = [chatCopy guid];
    persistentID = [chatCopy persistentID];
    account = [chatCopy account];
    uniqueID = [account uniqueID];
    chatStyle = [chatCopy chatStyle];
    joinState = [chatCopy joinState];
    participants = [chatCopy participants];
    participants2 = [chatCopy participants];
    v7 = [participants2 count];
    roomName = [chatCopy roomName];
    displayName = [chatCopy displayName];
    lastAddressedHandleID = [chatCopy lastAddressedHandleID];
    lastAddressedSIMID = [chatCopy lastAddressedSIMID];
    groupID = [chatCopy groupID];
    unreadMessageCount = [chatCopy unreadMessageCount];
    messageFailureCount = [chatCopy messageFailureCount];
    isFiltered = [chatCopy isFiltered];
    mergedThreadFilterModes = [chatCopy mergedThreadFilterModes];
    hasHadSuccessfulQuery = [chatCopy hasHadSuccessfulQuery];
    bizIntent = [chatCopy bizIntent];
    personCentricID = [chatCopy personCentricID];
    isRecovered = [chatCopy isRecovered];
    isDeletingIncomingMessages = [chatCopy isDeletingIncomingMessages];
    log = v4;
    isPendingReview = [chatCopy isPendingReview];
    mergedPinningIdentifiers = [chatCopy mergedPinningIdentifiers];
    *buf = 134224130;
    v55 = chatCopy;
    v56 = 2112;
    v57 = chatIdentifier;
    v58 = 2112;
    v59 = guid;
    v60 = 2112;
    v61 = persistentID;
    v62 = 2112;
    v63 = uniqueID;
    v64 = 1024;
    v65 = chatStyle;
    v66 = 1024;
    v67 = joinState;
    v68 = 1024;
    v69 = participants != 0;
    v70 = 2048;
    v71 = v7;
    v72 = 2112;
    v73 = roomName;
    v74 = 2112;
    v75 = displayName;
    v76 = 2112;
    v77 = lastAddressedHandleID;
    v78 = 2112;
    v79 = lastAddressedSIMID;
    v80 = 2112;
    v81 = groupID;
    v82 = 1024;
    v83 = unreadMessageCount;
    v84 = 1024;
    v85 = messageFailureCount;
    v86 = 1024;
    v87 = isFiltered;
    v88 = 2112;
    v89 = mergedThreadFilterModes;
    v90 = 1024;
    v91 = hasHadSuccessfulQuery;
    v92 = 2112;
    v93 = bizIntent;
    v94 = 2112;
    v95 = personCentricID;
    v96 = 1024;
    v97 = isRecovered;
    v98 = 1024;
    v99 = isDeletingIncomingMessages;
    v100 = 1024;
    v101 = isPendingReview;
    v4 = log;
    v102 = 2112;
    v103 = mergedPinningIdentifiers;
    _os_log_impl(&dword_1A823F000, log, OS_LOG_TYPE_DEFAULT, "Calculating displayName for chat: <IMChat %p> [Identifier: %@  GUID: %@  Persistent ID: %@  Account: %@  Style: %c  State: %d  hasParticipants: %{BOOL}d  Participants: %lu  Room Name: %@  Display Name: %@  Last Addressed Handle: %@ Last Addressed SIMID: %@  Group ID: %@  Unread Count: %u  Failure Count: %u  isFiltered: %d  filterModes: %@  hasHadSuccessfulQuery: %{BOOL}d  bizIntent: %@  personCentricID: %@  isRecovered: %{BOOL}d  isDeletingIncomingMessages: %{BOOL}d  isPendingReview: %{BOOL}d  mergedPinningIdentifiers: %@]", buf, 0xD4u);
  }

  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  if (isTranscriptSharingEnabled && [chatCopy isStewieSharingChat])
  {
    cnContact = [(IMHandle *)self immediateNameWithNeedsSuggestedNameFetch:0 useSuggestedName:0];
    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    cachedDisplayNameWithAbbreviation2 = [cnContact stringByTrimmingCharactersInSet:controlCharacterSet];

    _unformattedPhoneNumber = [(IMHandle *)self _unformattedPhoneNumber];
    if ([cachedDisplayNameWithAbbreviation2 isEqualToString:_unformattedPhoneNumber])
    {
      stewieSharingSuggestedName = [chatCopy stewieSharingSuggestedName];

      if (stewieSharingSuggestedName)
      {
        v19 = IMHandleLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          stewieSharingSuggestedName2 = [chatCopy stewieSharingSuggestedName];
          *buf = 138412290;
          v55 = stewieSharingSuggestedName2;
          _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Returning transcript sharing suggested name: %@", buf, 0xCu);
        }

        stewieSharingSuggestedName3 = [chatCopy stewieSharingSuggestedName];
LABEL_23:
        name2 = stewieSharingSuggestedName3;

LABEL_28:
        goto LABEL_29;
      }
    }

    else
    {
    }

    v28 = IMHandleLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = cnContact;
      _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_DEFAULT, "Found name: %@ for stewie sharing chat", buf, 0xCu);
    }

    stewieSharingSuggestedName3 = cnContact;
    goto LABEL_23;
  }

  if (![(IMHandle *)self isBusiness]&& ![(IMHandle *)self isStewie])
  {
    cnContact = [(IMHandle *)self cnContact];
    if (cnContact)
    {
      if ([chatCopy chatStyle] != 45)
      {
        cachedDisplayNameWithAbbreviation = [(IMHandle *)self cachedDisplayNameWithAbbreviation];

        if (!cachedDisplayNameWithAbbreviation)
        {
          if ([MEMORY[0x1E69A7FD0] shouldShowAbbreviatedNames])
          {
            v31 = [MEMORY[0x1E69A7FD0] abbreviatedNameForCNContact:cnContact];
          }

          else
          {
            v31 = 0;
          }

          if ([v31 length])
          {
            v32 = IMHandleLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v31;
              _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_DEFAULT, "Found short name, setting self.cachedDisplayNameWithAbbreviation to: %@", buf, 0xCu);
            }

            [(IMHandle *)self setCachedDisplayNameWithAbbreviation:v31];
          }
        }

        cachedDisplayNameWithAbbreviation2 = [(IMHandle *)self cachedDisplayNameWithAbbreviation];
        if ([cachedDisplayNameWithAbbreviation2 length])
        {
          [(IMHandle *)self cachedDisplayNameWithAbbreviation];
        }

        else
        {
          [(IMHandle *)self name];
        }
        stewieSharingSuggestedName3 = ;
        goto LABEL_23;
      }

      v25 = IMHandleLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        name = [(IMHandle *)self name];
        *buf = 138412290;
        v55 = name;
        v27 = "Chat style is instantMessageChatStyle, returning name: %@";
LABEL_26:
        _os_log_impl(&dword_1A823F000, v25, OS_LOG_TYPE_DEFAULT, v27, buf, 0xCu);
      }
    }

    else
    {
      v25 = IMHandleLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        name = [(IMHandle *)self name];
        *buf = 138412290;
        v55 = name;
        v27 = "No contact found, returning self.name: %@";
        goto LABEL_26;
      }
    }

    name2 = [(IMHandle *)self name];
    goto LABEL_28;
  }

  v22 = IMHandleLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [(IMHandle *)self name];
    *buf = 138412290;
    v55 = name3;
    _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEFAULT, "Found name: %@ for stewie or business chat", buf, 0xCu);
  }

  name2 = [(IMHandle *)self name];
LABEL_29:

  return name2;
}

- (NSString)fullName
{
  cnContact = [(IMHandle *)self cnContact];
  v4 = [MEMORY[0x1E69A7FD0] fullNameForCNContact:cnContact];
  if ([v4 length])
  {
    name = v4;
  }

  else if ([(IMHandle *)self _hasServiceNameProperties]&& (fullName = self->_fullName) != 0)
  {
    name = fullName;
  }

  else
  {
    if ([(IMHandle *)self isLoginIMHandle])
    {
      v7 = +[IMMe me];
      fullName = [v7 fullName];
      trimmedString = [fullName trimmedString];

      if ([trimmedString length])
      {
        goto LABEL_11;
      }
    }

    name = [(IMHandle *)self name];
  }

  trimmedString = name;
LABEL_11:

  return trimmedString;
}

- (NSString)nameAndID
{
  if ([(IMHandle *)self hasName])
  {
    name = [(IMHandle *)self name];
    displayID = [(IMHandle *)self displayID];
    if ([(IMAccount *)self->_account equalID:name andID:displayID])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", name, v8];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ \u202A<%@>\u202C", name, displayID];
    }
    v6 = ;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    name = [(IMHandle *)self displayID];
    v6 = [v5 stringWithFormat:@"%@", name];
  }

  return v6;
}

- (BOOL)hasName
{
  if ([(IMHandle *)self _hasABName]|| [(IMHandle *)self _hasServiceNameProperties])
  {
    return 1;
  }

  name = [(IMHandle *)self name];
  v3 = [name length] != 0;

  return v3;
}

- (NSString)firstName
{
  cnContact = [(IMHandle *)self cnContact];
  v4 = [MEMORY[0x1E69A7FD0] firstNameForCNContact:cnContact];
  if ([v4 length])
  {
    v5 = v4;
LABEL_3:
    firstName = v5;
    goto LABEL_4;
  }

  if ([(IMHandle *)self _hasServiceNameProperties])
  {
    firstName = self->_firstName;
    if (firstName)
    {
      v5 = firstName;
      goto LABEL_3;
    }
  }

  if ([(IMHandle *)self isLoginIMHandle])
  {
    v9 = +[IMMe me];
    firstName = [v9 firstName];
  }

  else
  {
    firstName = 0;
  }

LABEL_4:

  return firstName;
}

- (NSString)lastName
{
  cnContact = [(IMHandle *)self cnContact];
  v4 = [MEMORY[0x1E69A7FD0] lastNameForCNContact:cnContact];
  if ([v4 length])
  {
    v5 = v4;
LABEL_3:
    lastName = v5;
    goto LABEL_4;
  }

  if ([(IMHandle *)self _hasServiceNameProperties])
  {
    if ([(NSString *)self->_lastName length])
    {
      v5 = self->_lastName;
      goto LABEL_3;
    }
  }

  else if ([(IMHandle *)self isLoginIMHandle])
  {
    v8 = +[IMMe me];
    lastName = [v8 lastName];

    goto LABEL_4;
  }

  lastName = 0;
LABEL_4:

  return lastName;
}

- (NSString)phoneticFirstName
{
  cnPhoneticKeys = [objc_opt_class() cnPhoneticKeys];
  v4 = [(IMHandle *)self cnContactWithKeys:cnPhoneticKeys];

  v5 = [MEMORY[0x1E69A7FD0] phoneticFirstNameForCNContact:v4];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)phoneticLastName
{
  cnPhoneticKeys = [objc_opt_class() cnPhoneticKeys];
  v4 = [(IMHandle *)self cnContactWithKeys:cnPhoneticKeys];

  v5 = [MEMORY[0x1E69A7FD0] phoneticLastNameForCNContact:v4];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)phoneticFullName
{
  cnPhoneticKeys = [objc_opt_class() cnPhoneticKeys];
  v4 = [(IMHandle *)self cnContactWithKeys:cnPhoneticKeys];

  v5 = [MEMORY[0x1E69A7FD0] phoneticFullNameForCNContact:v4];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setBaseFirstName:(id)name lastName:(id)lastName fullName:(id)fullName
{
  nameCopy = name;
  lastNameCopy = lastName;
  fullNameCopy = fullName;
  if (self->_firstName == nameCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = ![(NSString *)nameCopy isEqualToString:?];
  }

  if (self->_lastName == lastNameCopy)
  {
    v11 = 0;
  }

  else
  {
    v11 = ![(NSString *)lastNameCopy isEqualToString:?];
  }

  if (self->_fullName == fullNameCopy)
  {
    if (((v10 | v11) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!(v10 & 1 | ![(NSString *)fullNameCopy isEqualToString:?]| v11 & 1))
  {
    goto LABEL_13;
  }

  v12 = [(NSString *)fullNameCopy copy];
  fullName = self->_fullName;
  self->_fullName = v12;

  v14 = [(NSString *)nameCopy copy];
  firstName = self->_firstName;
  self->_firstName = v14;

  v16 = [(NSString *)lastNameCopy copy];
  lastName = self->_lastName;
  self->_lastName = v16;

  if (![(IMHandle *)self _hasABName])
  {
    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }

LABEL_13:
}

- (void)setImageData:(id)data
{
  v11[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = *MEMORY[0x1E695C400];
  v11[0] = *MEMORY[0x1E695C278];
  v11[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v7 = [(IMHandle *)self cnContactWithKeys:v6];

  imageData = [v7 imageData];
  if (imageData != dataCopy && ([dataCopy isEqualToData:imageData] & 1) == 0)
  {
    v9 = [v7 mutableCopy];
    [v9 setImageData:dataCopy];
    v10 = [v9 copy];
    [(IMHandle *)self updateCNContact:v10];

    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }
}

- (void)setLocalNickname:(id)nickname
{
  nicknameCopy = nickname;
  nickname = self->_nickname;
  if (nickname != nicknameCopy)
  {
    v9 = nicknameCopy;
    nickname = [nickname isEqualToString:nicknameCopy];
    if ((nickname & 1) == 0)
    {
      fullName = self->_fullName;
      self->_fullName = 0;

      v7 = [v9 copy];
      v8 = self->_nickname;
      self->_nickname = v7;

      nickname = [(IMHandle *)self _hasABName];
      if ((nickname & 1) == 0)
      {
        nickname = [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
      }
    }
  }

  MEMORY[0x1EEE66BB8](nickname);
}

- (void)setFirstName:(id)name lastName:(id)lastName fullName:(id)fullName andUpdateABPerson:(BOOL)person
{
  if (!person)
  {
    MEMORY[0x1EEE66B58](self, sel__setBaseFirstName_lastName_fullName_);
  }
}

- (void)setEmail:(id)email andUpdateABPerson:(BOOL)person
{
  personCopy = person;
  v6 = IMSingleObjectArray();
  [(IMHandle *)self setEmails:v6 andUpdateABPerson:personCopy];
}

- (NSString)email
{
  emails = [(IMHandle *)self emails];
  if ([emails count])
  {
    __imFirstObject = [emails __imFirstObject];
  }

  else
  {
    __imFirstObject = 0;
  }

  return __imFirstObject;
}

- (NSArray)emails
{
  v3 = MEMORY[0x1E69A7FD0];
  v4 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
  v5 = [v3 emailsForCNContact:v4];

  if ([v5 count])
  {
    v6 = v5;
LABEL_5:
    emails = v6;
    goto LABEL_6;
  }

  if ([(NSArray *)self->_emails count])
  {
    v6 = self->_emails;
    goto LABEL_5;
  }

  if ([(IMHandle *)self isLoginIMHandle])
  {
    v9 = +[IMMe me];
    emails = [v9 emails];
  }

  else
  {
    emails = 0;
  }

LABEL_6:

  return emails;
}

- (id)cnContactWithKeys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  if (-[IMHandle isBusiness](self, "isBusiness") || ([MEMORY[0x1E69A8070] sharedFeatureFlags], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isTranscriptSharingEnabled"), v6, v7) && -[IMHandle isStewieTranscriptSharingHandle](self, "isStewieTranscriptSharingHandle"))
  {
    v5 = 0;
    goto LABEL_19;
  }

  v8 = self->_cnContact;
  if (v8)
  {
    v9 = IMHandleLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E0130(v9);
    }

    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    v5 = [mEMORY[0x1E69A7FD0] completedContact:v8 withKeys:keysCopy];

    if (v5)
    {
      goto LABEL_13;
    }
  }

  im_stripCategoryLabel = [(NSString *)self->_id im_stripCategoryLabel];
  v12 = IMHandleLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    guid = [(IMHandle *)self guid];
    v18 = 138412290;
    v19 = guid;
    _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "No contact found. Fetching for guid: %@", &v18, 0xCu);
  }

  if (![im_stripCategoryLabel length])
  {

    goto LABEL_15;
  }

  mEMORY[0x1E69A7FD0]2 = [MEMORY[0x1E69A7FD0] sharedInstance];
  v5 = [mEMORY[0x1E69A7FD0]2 fetchCNContactForHandleID:im_stripCategoryLabel withKeys:keysCopy];

  if (!v5)
  {
LABEL_15:
    v15 = IMHandleLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      guid2 = [(IMHandle *)self guid];
      v18 = 138412290;
      v19 = guid2;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "No contact made. %@", &v18, 0xCu);
    }

    v5 = 0;
    goto LABEL_18;
  }

LABEL_13:
  [(IMHandle *)self updateCNContact:v5];
LABEL_18:

LABEL_19:

  return v5;
}

- (void)updateCNContact:(id)contact
{
  contactCopy = contact;
  if (self->_cnContact != contactCopy)
  {
    [(IMHandle *)self setCnContact:contactCopy];
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(IMHandle *)self setCachedDisplayNameWithAbbreviation:0];
      if ([(IMHandle *)self isBusiness])
      {
        v5 = MEMORY[0x1E69A7F28];
        v6 = [(IMHandle *)self ID];
        v7 = [v5 placeholderNameForBrandURI:v6];
        [(IMHandle *)self setCachedName:v7];
      }

      else
      {
        [(IMHandle *)self setCachedName:0];
      }

      v8 = +[IMHandleRegistrar sharedInstance];
      [v8 addHandleToCNIDMap:self CNContact:contactCopy];
    }

    else
    {
      objc_initWeak(&location, self);
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = sub_1A82F34FC;
      v14 = &unk_1E7811E30;
      objc_copyWeak(&v17, &location);
      selfCopy = self;
      v16 = contactCopy;
      dispatch_async(MEMORY[0x1E69E96A0], &v11);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }

    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    isBatchFetchingForLaunchCompleted = [mEMORY[0x1E69A7FD0] isBatchFetchingForLaunchCompleted];

    if (isBatchFetchingForLaunchCompleted)
    {
      [(IMHandle *)self sendNotificationABPersonChanged];
    }
  }
}

- (BOOL)isSystemUser
{
  v3 = [(IMHandle *)self ID];
  service = [(IMHandle *)self service];
  serviceProperties = [service serviceProperties];
  v6 = [serviceProperties objectForKey:*MEMORY[0x1E69A5EE0]];
  v7 = [v3 isEqualToString:v6];

  if (v7)
  {
    return 1;
  }

  v9 = [(NSDictionary *)self->_extraProps objectForKey:*MEMORY[0x1E69A6320]];
  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

- (BOOL)isKTVerified
{
  v3 = +[IMKeyTransparencyController sharedController];
  v4 = [(IMHandle *)self ID];
  _stripFZIDPrefix = [v4 _stripFZIDPrefix];
  v6 = [v3 ktVerifierResultForHandleID:_stripFZIDPrefix];

  v7 = [v6 staticAccountKeyEnforced] && (objc_msgSend(v6, "optedIn") & 1) != 0;
  return v7;
}

- (void)setIsMobile:(BOOL)mobile
{
  if (self->_isMobile != mobile)
  {
    self->_isMobile = mobile;
    [(IMHandle *)self postNotificationName:@"__kIMHandleIsMobileChangedNotification"];
  }
}

- (void)setIsBot:(BOOL)bot
{
  if (self->_isBot != bot)
  {
    self->_isBot = bot;
    [(IMHandle *)self postNotificationName:@"__kIMHandleIsBotChangedNotification"];
  }
}

- (NSString)mobileDeviceName
{
  extraProperties = [(IMHandle *)self extraProperties];
  v3 = [extraProperties objectForKey:*MEMORY[0x1E69A6330]];

  return v3;
}

- (BOOL)hasServer
{
  account = [(IMHandle *)self account];
  service = [account service];
  v4 = +[IMServiceImpl jabberService];
  v5 = service == v4;

  return v5;
}

- (NSString)server
{
  if ([(IMHandle *)self hasServer])
  {
    iDWithoutResource = [(IMHandle *)self IDWithoutResource];
    v4 = [iDWithoutResource rangeOfString:@"@"];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL || (v6 = v4, v4 + v5 >= [(NSString *)self->_id length]))
    {
      v7 = 0;
    }

    else
    {
      v7 = [iDWithoutResource substringFromIndex:v6 + 1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isBuddy
{
  account = [(IMHandle *)self account];
  v4 = [(IMHandle *)self ID];
  v5 = [account memberGroups:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isLoginIMHandleForAnyAccount
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(IMHandle *)self isLoginIMHandle])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    accountSiblingsArray = [(IMHandle *)self accountSiblingsArray];
    v3 = [accountSiblingsArray countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(accountSiblingsArray);
          }

          if ([*(*(&v8 + 1) + 8 * i) isLoginIMHandle])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [accountSiblingsArray countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)matchesLoginHandleForAnyAccount
{
  v21 = *MEMORY[0x1E69E9840];
  accountSiblingsArray = [(IMHandle *)self accountSiblingsArray];
  normalizedID = [(IMHandle *)self normalizedID];
  v5 = MEMORY[0x1AC56C3F0]();

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = accountSiblingsArray;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        account = [*(*(&v16 + 1) + 8 * i) account];
        loginIMHandle = [account loginIMHandle];
        normalizedID2 = [loginIMHandle normalizedID];
        v13 = MEMORY[0x1AC56C3F0]();

        v14 = [v5 caseInsensitiveCompare:v13];
        if (!v14)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_createPhoneNumberRefIfNeeded
{
  if (!self->_hasCheckedPhoneNumber && !self->_phoneNumberRef)
  {
    self->_hasCheckedPhoneNumber = 1;
    v3 = MEMORY[0x1AC56C3F0](self->_id, a2);
    if ([v3 _appearsToBePhoneNumber])
    {
      self->_phoneNumberRef = IMPhoneNumberRefCopyForPhoneNumber();
    }
  }
}

- (void)_updateOriginalID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (([dCopy hasPrefix:@"+"] & 1) == 0)
  {
    if ([dCopy length])
    {
      if (([dCopy _appearsToBeEmail] & 1) == 0)
      {
        originalID = [(IMHandle *)self originalID];
        v6 = [dCopy isEqualToIgnoringCase:originalID];

        if ((v6 & 1) == 0)
        {
          v7 = +[IMDaemonController sharedController];
          v8 = [v7 capabilitiesForListenerID:0];
          v9 = *MEMORY[0x1E69A6260] & v8;

          if (v9)
          {
            v10 = IMHandleLogHandle();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              originalID2 = [(IMHandle *)self originalID];
              v17 = 138412802;
              v18 = originalID2;
              v19 = 2112;
              v20 = dCopy;
              v21 = 2112;
              selfCopy = self;
              _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "Updating unformatted ID from %@ to %@ (%@)", &v17, 0x20u);
            }

            v12 = +[IMDaemonController sharedController];
            remoteDaemon = [v12 remoteDaemon];
            v14 = [(IMHandle *)self ID];
            service = [(IMHandle *)self service];
            internalName = [service internalName];
            [remoteDaemon updateUnformattedID:dCopy forBuddyID:v14 onService:internalName];
          }
        }
      }
    }
  }
}

- (id)_unformattedPhoneNumber
{
  v9 = *MEMORY[0x1E69E9840];
  _formattedPhoneNumber = [(IMHandle *)self _formattedPhoneNumber];
  if ([_formattedPhoneNumber length])
  {
    v3 = IMHandleLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = _formattedPhoneNumber;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Unformatted phone number: %@", &v7, 0xCu);
    }

    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    v5 = [_formattedPhoneNumber stringByTrimmingCharactersInSet:controlCharacterSet];

    _formattedPhoneNumber = v5;
  }

  return _formattedPhoneNumber;
}

- (BOOL)isBetterThanIMHandle:(id)handle nonPhoneNumbersPreferred:(BOOL)preferred
{
  preferredCopy = preferred;
  handleCopy = handle;
  v7 = handleCopy;
  if (handleCopy)
  {
    if (handleCopy != self)
    {
      status = [(IMHandle *)self status];
      status2 = [(IMHandle *)v7 status];
      account = [(IMHandle *)self account];
      account2 = [(IMHandle *)v7 account];
      v10 = +[IMAccountController sharedInstance];
      accounts = [v10 accounts];
      account3 = [(IMHandle *)self account];
      isMobile = [accounts containsObjectIdenticalTo:account3];

      v14 = +[IMAccountController sharedInstance];
      accounts2 = [v14 accounts];
      account4 = [(IMHandle *)v7 account];
      v17 = [accounts2 containsObjectIdenticalTo:account4];

      if (isMobile != v17)
      {
        v18 = account;
LABEL_14:

        goto LABEL_15;
      }

      isOperational = [account isOperational];
      v18 = account;
      if (isOperational != [account2 isOperational])
      {
        isOperational2 = [account isOperational];
LABEL_13:
        LOBYTE(isMobile) = isOperational2;
        goto LABEL_14;
      }

      isActive = [account isActive];
      if (isActive != [account2 isActive])
      {
        isOperational2 = [account isActive];
        goto LABEL_13;
      }

      isConnected = [account isConnected];
      if (isConnected != [account2 isConnected])
      {
        isOperational2 = [account isConnected];
        goto LABEL_13;
      }

      isLoginIMHandle = [(IMHandle *)self isLoginIMHandle];
      isLoginIMHandle2 = [(IMHandle *)v7 isLoginIMHandle];
      if (isLoginIMHandle && !isLoginIMHandle2)
      {
LABEL_18:
        LOBYTE(isMobile) = 0;
        goto LABEL_14;
      }

      if (isLoginIMHandle || !isLoginIMHandle2)
      {
        if (status <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = status;
        }

        if (status2 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = status2;
        }

        if (v26 == v27)
        {
          if (preferredCopy)
          {
            isMobile = [(IMHandle *)self isMobile];
            if (isMobile != -[IMHandle isMobile](v7, "isMobile") || (-[IMHandle ID](self, "ID"), v28 = objc_claimAutoreleasedReturnValue(), isMobile = [v28 _appearsToBePhoneNumber], v28, -[IMHandle ID](v7, "ID"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "_appearsToBePhoneNumber"), v29, isMobile != v30))
            {
              LOBYTE(isMobile) = isMobile ^ 1;
              goto LABEL_14;
            }
          }

          capabilities = [(IMHandle *)self capabilities];
          capabilities2 = [(IMHandle *)v7 capabilities];
          if (capabilities != capabilities2)
          {
            v33 = 0x20000;
            v34 = 8u;
            do
            {
              LOBYTE(isMobile) = (v33 & ~capabilities) == 0;
              if (isMobile != ((v33 & ~capabilities2) == 0))
              {
                goto LABEL_14;
              }

              v33 = *(&unk_1A84FFDF0 + v34);
              v34 += 8;
            }

            while (v34 != 64);
          }

          isBuddy = [(IMHandle *)self isBuddy];
          if (isBuddy != [(IMHandle *)v7 isBuddy])
          {
            isOperational2 = [(IMHandle *)self isBuddy];
            goto LABEL_13;
          }

          if ([(IMHandle *)v7 hasResource]&& [(IMHandle *)self hasResource])
          {
            account5 = [(IMHandle *)self account];
            loginIMHandle = [account5 loginIMHandle];
            server = [loginIMHandle server];

            if ([server length])
            {
              server2 = [(IMHandle *)self server];
              isMobile = [server2 isEqualToString:server];

              server3 = [(IMHandle *)v7 server];
              v41 = [server3 isEqualToString:server];

              if (isMobile != v41)
              {

                goto LABEL_14;
              }
            }
          }

          if (IMPersonStatusIsOnline(v26) && IMPersonStatusIsOnline(v26))
          {
            priority = [(IMHandle *)v7 priority];
            priority = self->_priority;
            LOBYTE(isMobile) = priority > priority;
            if (priority != priority)
            {
              goto LABEL_14;
            }
          }

          account6 = [(IMHandle *)self account];
          isMobile = [account6 isConnected];

          account7 = [(IMHandle *)v7 account];
          isConnected2 = [account7 isConnected];

          if (isMobile != isConnected2)
          {
            goto LABEL_14;
          }

          [(IMHandle *)self timeSinceWentOffline];
          v48 = v47;
          [(IMHandle *)v7 timeSinceWentOffline];
          if (v48 != v49)
          {
            if (v48 >= 0.0 || v49 < 0.0)
            {
              v50 = v48 >= 0.0;
              if (v49 >= 0.0)
              {
                v50 = 0;
              }

              LOBYTE(isMobile) = v48 < v49 || v50;
              goto LABEL_14;
            }

            goto LABEL_18;
          }

          v51 = [(IMHandle *)self compareIDs:v7];
          if (v51 != -1)
          {
            if (v51 != 1)
            {
              LOBYTE(isMobile) = v7 > self;
              goto LABEL_14;
            }

            goto LABEL_18;
          }
        }

        else if (status != 2 || status2 != 3)
        {
          LOBYTE(isMobile) = IMComparePersonStatus(v26, v27) == NSOrderedDescending;
          goto LABEL_14;
        }
      }

      LOBYTE(isMobile) = 1;
      goto LABEL_14;
    }

    LOBYTE(isMobile) = 0;
  }

  else
  {
    LOBYTE(isMobile) = 1;
  }

LABEL_15:

  return isMobile;
}

- (id)bestAccountSibling
{
  existingAccountSiblingsArray = [(IMHandle *)self existingAccountSiblingsArray];
  v3 = [IMHandle bestIMHandleInArray:existingAccountSiblingsArray];

  return v3;
}

+ (id)bestIMHandleInArray:(id)array
{
  v17 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!v6 || [*(*(&v12 + 1) + 8 * i) isBetterThanIMHandle:v6])
        {
          v10 = v9;

          v6 = v10;
        }
      }

      v5 = [arrayCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bestIMHandleForAccount:(id)account onService:(id)service inGroup:(id)group otherThan:(id)than
{
  v40 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  serviceCopy = service;
  groupCopy = group;
  thanCopy = than;
  if (groupCopy && ![groupCopy length])
  {

    groupCopy = 0;
  }

  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  siblings = [(IMHandle *)self siblings];
  v15 = [v13 initWithSet:siblings];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v33 = 0;
    v19 = 0;
    v20 = *v36;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        v22 = v19;
        if (*v36 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v19 = *(*(&v35 + 1) + 8 * i);

        if (serviceCopy)
        {
          service = [v19 service];

          if (service != serviceCopy)
          {
            continue;
          }
        }

        if (accountCopy)
        {
          account = [v19 account];

          if (account != accountCopy)
          {
            continue;
          }
        }

        if (!groupCopy)
        {
          if (thanCopy && v19 == thanCopy)
          {
            continue;
          }

LABEL_25:
          if (([v19 isLoginIMHandle] & 1) == 0 && objc_msgSend(v19, "isBetterThanIMHandle:", v33))
          {
            v30 = v19;

            v33 = v30;
          }

          continue;
        }

        groupsArray = [v19 groupsArray];
        v26 = groupCopy;
        v27 = [groupsArray containsObject:groupCopy];

        if (thanCopy)
        {
          v28 = v19 == thanCopy;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;
        if (!v27)
        {
          groupCopy = v26;
          continue;
        }

        groupCopy = v26;
        if ((v29 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v18)
      {

        v31 = v33;
        goto LABEL_33;
      }
    }
  }

  v31 = 0;
LABEL_33:

  return v31;
}

- (id)bestSibling
{
  if (self->_account && (+[IMAccountController sharedInstance](IMAccountController, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), [v3 accounts], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObjectIdenticalTo:", self->_account), v4, v3, v5))
  {
    v6 = [(IMHandle *)self bestIMHandleForAccount:self->_account onService:0 inGroup:0 otherThan:0];
  }

  else
  {
    service = [(IMHandle *)self service];
    v8 = [(IMHandle *)self bestIMHandleForAccount:0 onService:service inGroup:0 otherThan:0];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = [(IMHandle *)self bestIMHandleForAccount:0 onService:0 inGroup:0 otherThan:0];
    }

    v6 = v9;
  }

  return v6;
}

- (void)_setExtraProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_extraProps != propertiesCopy)
  {
    v9 = propertiesCopy;
    propertiesCopy = [propertiesCopy isEqual:?];
    if ((propertiesCopy & 1) == 0)
    {
      extraProps = self->_extraProps;
      if (extraProps)
      {
        v6 = [(NSDictionary *)extraProps mutableCopy];
      }

      else
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v7 = v6;
      [(NSDictionary *)v6 addEntriesFromDictionary:v9];
      v8 = self->_extraProps;
      self->_extraProps = v7;

      propertiesCopy = [(IMHandle *)self postNotificationName:@"__kIMHandleExtraPropertiesChangedNotification"];
    }
  }

  MEMORY[0x1EEE66BB8](propertiesCopy);
}

- (void)propertiesChanged:(id)changed
{
  changedCopy = changed;
  if ([changedCopy count] != 1 || (objc_msgSend(changedCopy, "objectForKey:", *MEMORY[0x1E69A6310]), v4 = objc_claimAutoreleasedReturnValue(), v4, v5 = changedCopy, !v4))
  {
    if (!self->_blockNotifications)
    {
      [(IMHandle *)self beginNotificationQueue];
    }

    v6 = *MEMORY[0x1E69A62E0];
    v7 = [changedCopy objectForKey:*MEMORY[0x1E69A62E0]];

    if (v7)
    {
      v8 = [changedCopy objectForKey:v6];
      -[IMHandle setCapabilities:](self, "setCapabilities:", [v8 unsignedLongLongValue]);
    }

    if (!qword_1EB2EA270)
    {
      v9 = objc_alloc(MEMORY[0x1E695DEC8]);
      v10 = [v9 initWithObjects:{*MEMORY[0x1E69A6310], *MEMORY[0x1E69A6380], *MEMORY[0x1E69A6370], *MEMORY[0x1E69A6378], *MEMORY[0x1E69A6308], *MEMORY[0x1E69A6328], *MEMORY[0x1E69A62F0], v6, *MEMORY[0x1E69A6348], *MEMORY[0x1E69A62D8], *MEMORY[0x1E69A62F8], *MEMORY[0x1E69A6300], *MEMORY[0x1E69A62D0], *MEMORY[0x1E69A6338], *MEMORY[0x1E69A6360], *MEMORY[0x1E69A6388], 0}];
      v11 = qword_1EB2EA270;
      qword_1EB2EA270 = v10;
    }

    v12 = [changedCopy mutableCopy];
    [v12 removeObjectsForKeys:qword_1EB2EA270];
    [(IMHandle *)self _setExtraProperties:v12];
    v13 = [changedCopy objectForKey:*MEMORY[0x1E69A6318]];
    self->_isAnonymous = [v13 intValue] != 0;

    if (!self->_blockNotifications)
    {
      [(IMHandle *)self releaseNotificationQueue];
      if (!self->_notificationQueueCount)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter __mainThreadPostNotificationName:@"__kIMBuddyPropertiesChangedDoneNotification" object:self];
      }
    }

    v5 = changedCopy;
  }
}

- (void)setBlockedStatus:(int64_t)status
{
  if (status == 1)
  {
    mEMORY[0x1E69A7F20] = [MEMORY[0x1E69A7F20] sharedBlockList];
    cnContact = [(IMHandle *)self cnContact];
    [mEMORY[0x1E69A7F20] blockContact:cnContact];
  }

  else
  {
    if (status)
    {
      return;
    }

    mEMORY[0x1E69A7F20] = [MEMORY[0x1E69A7F20] sharedBlockList];
    cnContact = [(IMHandle *)self cnContact];
    [mEMORY[0x1E69A7F20] unblockContact:cnContact];
  }
}

- (unsigned)sortOrderInGroup:(id)group
{
  groupCopy = group;
  if ([groupCopy length])
  {
    account = [(IMHandle *)self account];
    v6 = [account sortOrderForIMHandle:self inGroup:groupCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)accountTypeName
{
  account = [(IMHandle *)self account];
  shortName = [account shortName];

  return shortName;
}

- (NSString)resource
{
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSString *)self->_id substringFromIndex:v2];
  }

  return v4;
}

- (NSString)IDWithoutResource
{
  IDWithoutResource = self->_IDWithoutResource;
  if (!IDWithoutResource)
  {
    resourceIndex = self->_resourceIndex;
    if (resourceIndex)
    {
      v5 = resourceIndex == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v6 = self->_id;
    }

    else
    {
      v6 = [(NSString *)self->_id substringToIndex:resourceIndex - 1];
    }

    v7 = self->_IDWithoutResource;
    self->_IDWithoutResource = v6;

    IDWithoutResource = self->_IDWithoutResource;
  }

  v8 = IDWithoutResource;

  return v8;
}

- (IMHandle)imHandleWithoutResource
{
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    account = [(IMHandle *)self account];
    iDWithoutResource = [(IMHandle *)self IDWithoutResource];
    selfCopy = [account imHandleWithID:iDWithoutResource];
  }

  return selfCopy;
}

- (id)existingIMHandleWithoutResource
{
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    account = [(IMHandle *)self account];
    iDWithoutResource = [(IMHandle *)self IDWithoutResource];
    selfCopy = [account existingIMHandleWithID:iDWithoutResource];
  }

  return selfCopy;
}

- (id)dependentIMHandles
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_resourceIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    array = [MEMORY[0x1E695DF70] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    arrayOfAllIMHandles = [(IMAccount *)self->_account arrayOfAllIMHandles];
    v5 = [arrayOfAllIMHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(arrayOfAllIMHandles);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (v9 != self)
          {
            imHandleWithoutResource = [*(*(&v12 + 1) + 8 * i) imHandleWithoutResource];

            if (imHandleWithoutResource == self)
            {
              [array addObject:v9];
            }
          }
        }

        v6 = [arrayOfAllIMHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)_updateStatusBasedOnAuthRequestStatus
{
  if ([(IMHandle *)self isLoginIMHandle])
  {
    return;
  }

  v3 = sub_1A8361964();
  authRequestStatus = self->_authRequestStatus;
  if (authRequestStatus == 2)
  {
    v5 = @"Not authorized";
    goto LABEL_6;
  }

  if (authRequestStatus == 1)
  {
    v5 = @"Waiting for authorization";
LABEL_6:
    v7 = v3;
    v6 = [v3 localizedStringForKey:v5 value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
    [(IMHandle *)self setStatus:0 message:v6 richMessage:0];

    v3 = v7;
  }
}

- (void)setAuthRequestStatus:(unsigned int)status
{
  if (self->_authRequestStatus != status)
  {
    self->_authRequestStatus = status;
    [(IMHandle *)self postNotificationName:@"__kIMHandleInfoChangedNotification"];
  }

  MEMORY[0x1EEE66B58](self, sel__updateStatusBasedOnAuthRequestStatus);
}

- (unint64_t)status
{
  account = [(IMHandle *)self account];
  isConnected = [account isConnected];

  if (isConnected)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)statusMessageChanged:(id)changed
{
  changedCopy = changed;
  [(IMHandle *)self setStatus:[(IMHandle *)self status] message:changedCopy richMessage:0];
}

- (NSString)nameOfStatus
{
  v3 = [IMHandle nameOfStatus:self->_status];
  if (![(IMHandle *)self status])
  {
    account = [(IMHandle *)self account];
    loginStatus = [account loginStatus];

    if (loginStatus != 4)
    {
      v6 = sub_1A8361964();
      v7 = [v6 localizedStringForKey:@" (You are offline)" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v8 = [v3 stringByAppendingString:v7];

      v3 = v8;
    }
  }

  return v3;
}

- (double)idleTime
{
  idleSince = self->_idleSince;
  if (!idleSince)
  {
    return 0.0;
  }

  [(NSDate *)idleSince timeIntervalSinceNow];
  return -v3;
}

- (void)_setIDStatus:(int64_t)status
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_IDStatus != status)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        IDStatus = self->_IDStatus;
        v7 = 138412802;
        selfCopy = self;
        v9 = 1024;
        v10 = IDStatus;
        v11 = 1024;
        statusCopy = status;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "Posting ID status change for: %@   from %d to %d", &v7, 0x18u);
      }
    }

    self->_IDStatus = status;
  }
}

- (void)setIdleSince:(id)since
{
  sinceCopy = since;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    v4 = [sinceCopy copy];
    idleSince = self->_idleSince;
    self->_idleSince = v4;
  }
}

- (void)setFeedUpdatedDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_feedUpdatedDate] & 1) == 0)
  {
    v4 = [dateCopy copy];
    feedUpdatedDate = self->_feedUpdatedDate;
    self->_feedUpdatedDate = v4;

    [(IMHandle *)self postNotificationName:@"__kIMHandleFeedUpdatedDateChangedNotification"];
  }
}

- (NSString)offlineString
{
  if ([(IMHandle *)self status]!= 1 || ([(IMHandle *)self timeSinceWentOffline], v3 < 0.0))
  {
    v4 = 0;
    goto LABEL_23;
  }

  v5 = sub_1A8361964();
  [(IMHandle *)self timeSinceStatusChanged];
  v7 = (v6 / 60.0);
  v8 = (v7 % 60);
  v9 = (v7 / 60 % 24);
  if (v7 < 1440)
  {
    if (v9 == 1)
    {
      if (v8 >= 2)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = @"Logged out 1 hour %@ minutes ago";
        goto LABEL_12;
      }

      v28 = @"Logged out 1 hour 1 minute ago";
    }

    else
    {
      if (v9)
      {
        v24 = MEMORY[0x1E696AEC0];
        if (v8 == 1)
        {
          v25 = [v5 localizedStringForKey:@"Logged out %@ hours 1 minute ago" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v9];
          localizedString = [v26 localizedString];
          v4 = [v24 stringWithFormat:v25, localizedString];
        }

        else
        {
          v25 = [v5 localizedStringForKey:@"Logged out %@ hours %@ minutes ago" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v9];
          localizedString = [v26 localizedString];
          v29 = [MEMORY[0x1E696AD98] numberWithInt:v8];
          localizedString2 = [v29 localizedString];
          v4 = [v24 stringWithFormat:v25, localizedString, localizedString2];
        }

        goto LABEL_22;
      }

      if (v8 >= 2)
      {
        v19 = MEMORY[0x1E696AEC0];
        v20 = @"Logged out %@ minutes ago";
LABEL_12:
        v21 = [v5 localizedStringForKey:v20 value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
        v22 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        localizedString3 = [v22 localizedString];
        v4 = [v19 stringWithFormat:v21, localizedString3];

        goto LABEL_22;
      }

      if (v8 == 1)
      {
        v28 = @"Logged out 1 minute ago";
      }

      else
      {
        v28 = @"Logged out under a minute ago";
      }
    }

    v4 = [v5 localizedStringForKey:v28 value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
    goto LABEL_22;
  }

  v10 = -(v7 / 0x5A0u);
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setDay:v10];
  [v11 setHour:-v9];
  [v11 setMinute:-v8];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v14 = [currentCalendar dateByAddingComponents:v11 toDate:date options:0];

  v15 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v15 setFormatterBehavior:1040];
  [v15 setDateStyle:2];
  [v15 setTimeStyle:1];
  v16 = [v15 stringFromDate:v14];
  v17 = MEMORY[0x1E696AEC0];
  v18 = [v5 localizedStringForKey:@"Logged out %@" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
  v4 = [v17 stringWithFormat:v18, v16];

LABEL_22:
LABEL_23:

  return v4;
}

- (NSString)idleString
{
  status = [(IMHandle *)self status];
  [(IMHandle *)self idleTime];
  if (v4 <= 0.0 && status != 2)
  {
    v13 = 0;
    goto LABEL_10;
  }

  v6 = v4;
  v7 = sub_1A8361964();
  v8 = [IMHandle nameOfStatus:2];
  v9 = v8;
  if (v6 > 0.0 && (v10 = (v6 / 60.0), v11 = (v10 % 60), v12 = v10 / 60 % 24, v12 | v11))
  {
    if (v10 >= 1440)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v15 setDay:(((((1240768329 * v10) >> 32) - v10) >> 10) + ((((1240768329 * v10) >> 32) - v10) >> 31))];
      [v15 setHour:-v12];
      [v15 setMinute:-v11];
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v18 = [currentCalendar dateByAddingComponents:v15 toDate:date options:0];

      if (v10 >> 5 < 0x13B)
      {
        if (!qword_1EB2EA280)
        {
          v29 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v30 = qword_1EB2EA280;
          qword_1EB2EA280 = v29;

          [qword_1EB2EA280 setFormatterBehavior:1040];
          [qword_1EB2EA280 setDateStyle:0];
          [qword_1EB2EA280 setTimeStyle:1];
        }

        if (!qword_1EB2EA288)
        {
          v31 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v32 = qword_1EB2EA288;
          qword_1EB2EA288 = v31;

          [qword_1EB2EA288 setFormatterBehavior:1040];
          [qword_1EB2EA288 setDateStyle:0];
          [qword_1EB2EA288 setTimeStyle:1];
          [qword_1EB2EA288 setDateFormat:@"EEE"];
        }

        v33 = [qword_1EB2EA280 stringFromDate:v18];
        v34 = [qword_1EB2EA288 stringFromDate:v18];
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v34, v33];
      }

      else
      {
        v19 = qword_1EB2EA278;
        if (!qword_1EB2EA278)
        {
          v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
          v21 = qword_1EB2EA278;
          qword_1EB2EA278 = v20;

          [qword_1EB2EA278 setFormatterBehavior:1040];
          [qword_1EB2EA278 setDateStyle:2];
          [qword_1EB2EA278 setTimeStyle:1];
          v19 = qword_1EB2EA278;
        }

        v22 = [v19 stringFromDate:v18];
      }

      v35 = MEMORY[0x1E696AEC0];
      v36 = [v7 localizedStringForKey:@"%@ (Since %@)" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v13 = [v35 stringWithFormat:v36, v9, v22];

      goto LABEL_9;
    }

    v23 = MEMORY[0x1E696AEC0];
    if (v12)
    {
      if (!v11)
      {
        v39 = [v7 localizedStringForKey:@"%@ (%@ h)" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
        v40 = [MEMORY[0x1E696AD98] numberWithInt:(v10 / 60 % 24)];
        localizedString = [v40 localizedString];
        v13 = [v23 stringWithFormat:v39, v9, localizedString];

        goto LABEL_9;
      }

      v24 = [v7 localizedStringForKey:@"%@ (%@ h %@ min)" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v25 = [MEMORY[0x1E696AD98] numberWithInt:(v10 / 60 % 24)];
      localizedString2 = [v25 localizedString];
      v27 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      localizedString3 = [v27 localizedString];
      v13 = [v23 stringWithFormat:v24, v9, localizedString2, localizedString3];
    }

    else
    {
      v24 = [v7 localizedStringForKey:@"%@ (%@ min)" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v37 = [MEMORY[0x1E696AD98] numberWithInt:(v10 % 60)];
      localizedString4 = [v37 localizedString];
      v13 = [v23 stringWithFormat:v24, v9, localizedString4];
    }
  }

  else
  {
    v13 = v8;
  }

LABEL_9:

LABEL_10:

  return v13;
}

- (void)_filterStatusMessage
{
  if (!self->_processedStatusMsg)
  {
    statusMsg = self->_statusMsg;
    if (statusMsg)
    {
      if ([(NSString *)statusMsg rangeOfString:@"%n"]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v4 = [(NSString *)self->_statusMsg copy];
        self->_processedStatusMsg = v4;
      }

      else
      {
        v9 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:self->_statusMsg];
        v5 = +[IMMe me];
        fullName = [v5 fullName];
        [v9 replaceOccurrencesOfString:@"%n" withString:fullName options:2 range:{0, objc_msgSend(v9, "length")}];

        v7 = [v9 copy];
        processedStatusMsg = self->_processedStatusMsg;
        self->_processedStatusMsg = v7;
      }

      MEMORY[0x1EEE66BB8](v4);
    }
  }
}

- (NSString)statusMessage
{
  processedStatusMsg = self->_processedStatusMsg;
  if (!processedStatusMsg)
  {
    [(IMHandle *)self _filterStatusMessage];
    processedStatusMsg = self->_processedStatusMsg;
  }

  return processedStatusMsg;
}

- (void)setStatus:(unint64_t)status message:(id)message richMessage:(id)richMessage
{
  messageCopy = message;
  richMessageCopy = richMessage;
  if (messageCopy && (richMessageCopy || ([messageCopy isEqualToString:self->_statusMsg] & 1) == 0))
  {
    objc_storeStrong(&self->_prevStatusMsg, self->_statusMsg);
    v18 = [messageCopy copy];
    statusMsg = self->_statusMsg;
    self->_statusMsg = v18;

    processedStatusMsg = self->_processedStatusMsg;
    self->_processedStatusMsg = 0;

    v21 = [richMessageCopy copy];
    richStatusMsg = self->_richStatusMsg;
    self->_richStatusMsg = v21;

    if (status == 3)
    {
      trimmedString = [(NSString *)self->_statusMsg trimmedString];
      v24 = [trimmedString length];

      if (!v24)
      {
        v15 = sub_1A8361964();
        v17 = [v15 localizedStringForKey:@"Away" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
        v25 = [v17 copy];
        v26 = self->_statusMsg;
        self->_statusMsg = v25;

        goto LABEL_11;
      }
    }
  }

  else
  {
    if (self->_status == status)
    {
      goto LABEL_22;
    }

    v9 = self->_processedStatusMsg;
    self->_processedStatusMsg = 0;

    v10 = self->_richStatusMsg;
    self->_richStatusMsg = 0;

    v11 = [(NSString *)self->_statusMsg copy];
    prevStatusMsg = self->_prevStatusMsg;
    self->_prevStatusMsg = v11;

    if (status == 3)
    {
      trimmedString2 = [(NSString *)self->_statusMsg trimmedString];
      v14 = [trimmedString2 length];

      if (!v14)
      {
        v15 = sub_1A8361964();
        v16 = [v15 localizedStringForKey:@"Away" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
        v17 = self->_statusMsg;
        self->_statusMsg = v16;
LABEL_11:
      }
    }
  }

  [(IMHandle *)self _clearStatusMessageURLCache];
  status = self->_status;
  if (status != status)
  {
    self->_status = status;
    self->_prevStatus = status;
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DF00]);
  whenStatusChanged = self->_whenStatusChanged;
  self->_whenStatusChanged = v28;

  if (IMPersonStatusIsOnline(self->_prevStatus) && !IMPersonStatusIsOnline(self->_status))
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF00]);
    whenWentOffline = self->_whenWentOffline;
    self->_whenWentOffline = v31;
  }

  else
  {
    if (!IMPersonStatusIsOnline(self->_status))
    {
      goto LABEL_21;
    }

    whenWentOffline = self->_whenWentOffline;
    if (!whenWentOffline)
    {
      goto LABEL_21;
    }

    self->_whenWentOffline = 0;
  }

LABEL_21:
  [(IMHandle *)self postNotificationName:@"__kIMHandleStatusChangedNotification"];
LABEL_22:
}

- (double)timeSinceWentOffline
{
  whenWentOffline = self->_whenWentOffline;
  if (!whenWentOffline)
  {
    return -1.0;
  }

  [(NSDate *)whenWentOffline timeIntervalSinceNow];
  return -v3;
}

- (double)timeSinceStatusChanged
{
  whenStatusChanged = self->_whenStatusChanged;
  if (!whenStatusChanged)
  {
    return 99999.0;
  }

  [(NSDate *)whenStatusChanged timeIntervalSinceNow];
  return -v3;
}

- (int64_t)offGridMode
{
  mEMORY[0x1E69A80A8] = [MEMORY[0x1E69A80A8] sharedInstance];
  v4 = [mEMORY[0x1E69A80A8] offGridModeForHandle:self];

  return v4;
}

- (void)autoInviteToViewOffGridModeIfNeededFromHandleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(IMHandle *)self matchesLoginHandleForAnyAccount])
  {
    normalizedID = IMHandleLogHandle();
    if (os_log_type_enabled(normalizedID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not auto sharing off grid mode with myself";
LABEL_10:
      _os_log_impl(&dword_1A823F000, normalizedID, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else if ([(IMHandle *)self isContact])
  {
    normalizedID = [(IMHandle *)self normalizedID];
    v7 = IMHandleLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = normalizedID;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting to share personal off grid mode with handle: %@ fromHandle: %@", buf, 0x16u);
    }

    mEMORY[0x1E69A81A0] = [MEMORY[0x1E69A81A0] sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A82F6684;
    v9[3] = &unk_1E7811E58;
    v9[4] = self;
    v10 = dCopy;
    [mEMORY[0x1E69A81A0] attemptIfNecessaryToAutomaticallyShareOffGridModeWithHandleID:normalizedID fromHandleID:v10 completion:v9];
  }

  else
  {
    normalizedID = IMHandleLogHandle();
    if (os_log_type_enabled(normalizedID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not auto sharing off grid mode with non contact";
      goto LABEL_10;
    }
  }
}

- (int64_t)availability
{
  v3 = +[IMHandleAvailabilityManager sharedInstance];
  v4 = [v3 availabilityForHandle:self];

  return v4;
}

- (NSDate)availabilityStatusPublishedDate
{
  v3 = +[IMHandleAvailabilityManager sharedInstance];
  v4 = [v3 availabilityStatusPublishedDateForHandle:self];

  return v4;
}

- (id)beginObservingAvailability
{
  v3 = +[IMHandleStatusManager sharedInstance];
  v4 = [v3 acquireObservationAssertionForHandle:self];

  return v4;
}

- (void)isInvitedToViewMyFocusStatusFromHandleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  normalizedID = [(IMHandle *)self normalizedID];
  mEMORY[0x1E69A7F08] = [MEMORY[0x1E69A7F08] sharedInstance];
  [mEMORY[0x1E69A7F08] isFocusStatusSharedWithHandleID:normalizedID fromHandleID:dCopy completion:completionCopy];
}

- (void)autoInviteToViewAvailabilityIfNeededFromHandleID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(IMHandle *)self matchesLoginHandleForAnyAccount])
  {
    normalizedID = IMHandleLogHandle();
    if (os_log_type_enabled(normalizedID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not auto sharing availability with myself";
LABEL_10:
      _os_log_impl(&dword_1A823F000, normalizedID, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else if ([(IMHandle *)self isContact])
  {
    normalizedID = [(IMHandle *)self normalizedID];
    v7 = IMHandleLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = normalizedID;
      v13 = 2112;
      v14 = dCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_DEFAULT, "Requesting to share personal availability with handle: %@ fromHandle: %@", buf, 0x16u);
    }

    mEMORY[0x1E69A7F08] = [MEMORY[0x1E69A7F08] sharedInstance];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A82F6B38;
    v9[3] = &unk_1E7811E80;
    v9[4] = self;
    v10 = dCopy;
    [mEMORY[0x1E69A7F08] attemptIfNeccessaryToAutomaticallyShareFocusStatusWithHandleID:normalizedID fromHandleID:v10 completion:v9];
  }

  else
  {
    normalizedID = IMHandleLogHandle();
    if (os_log_type_enabled(normalizedID, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not auto sharing availability with non contact";
      goto LABEL_10;
    }
  }
}

- (id)_nameForComparisonPreferFirst:(BOOL)first
{
  firstCopy = first;
  uniqueName = [(IMHandle *)self uniqueName];
  if ([uniqueName length])
  {
    name = uniqueName;
    goto LABEL_13;
  }

  if (!firstCopy)
  {
    lastName = [(IMHandle *)self lastName];
    if (![lastName length])
    {
      firstName = [(IMHandle *)self firstName];
      goto LABEL_9;
    }

LABEL_7:
    v9 = lastName;
    goto LABEL_11;
  }

  lastName = [(IMHandle *)self firstName];
  if ([lastName length])
  {
    goto LABEL_7;
  }

  firstName = [(IMHandle *)self lastName];
LABEL_9:
  v10 = firstName;

  if (![v10 length])
  {
    name = [(IMHandle *)self name];
    goto LABEL_12;
  }

  v9 = v10;
LABEL_11:
  name = v9;
  v10 = v9;
LABEL_12:

LABEL_13:

  return name;
}

- (int64_t)compareFirstNames:(id)names
{
  namesCopy = names;
  v5 = [(IMHandle *)self _nameForComparisonPreferFirst:1];
  v6 = [namesCopy _nameForComparisonPreferFirst:1];

  v7 = [v5 localizedCompareToString:v6];
  return v7;
}

- (int64_t)compareLastNames:(id)names
{
  namesCopy = names;
  v5 = [(IMHandle *)self _nameForComparisonPreferFirst:0];
  v6 = [namesCopy _nameForComparisonPreferFirst:0];

  v7 = [v5 localizedCompareToString:v6];
  return v7;
}

- (int64_t)compareStatus:(id)status
{
  statusCopy = status;
  v5 = IMComparePersonStatus(-[IMHandle status](self, "status"), [statusCopy status]);
  if (v5 == NSOrderedSame)
  {
    v5 = [(IMHandle *)self compareIDs:statusCopy];
  }

  return v5;
}

- (int64_t)compareIDs:(id)ds
{
  dsCopy = ds;
  v5 = [(IMHandle *)self ID];
  v6 = [dsCopy ID];
  if ([v5 _appearsToBePhoneNumber] && objc_msgSend(v6, "_appearsToBePhoneNumber"))
  {
    service = [dsCopy service];
    if ([service _wantsInternationizedNumbers])
    {
      service2 = [(IMHandle *)self service];
      _wantsInternationizedNumbers = [service2 _wantsInternationizedNumbers];

      if (_wantsInternationizedNumbers)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    countryCode = [(IMHandle *)self countryCode];
    v11 = IMInternationalForPhoneNumberWithOptions();

    countryCode2 = [(IMHandle *)self countryCode];
    v13 = IMInternationalForPhoneNumberWithOptions();

    v5 = v11;
    v6 = v13;
  }

LABEL_8:
  v14 = [v5 caseInsensitiveCompare:v6];

  return v14;
}

- (int64_t)compareNormalizedIDs:(id)ds
{
  dsCopy = ds;
  normalizedID = [(IMHandle *)self normalizedID];
  normalizedID2 = [dsCopy normalizedID];

  v7 = [normalizedID localizedCaseInsensitiveCompare:normalizedID2];
  return v7;
}

- (int64_t)compareAccountNames:(id)names
{
  namesCopy = names;
  account = [(IMHandle *)self account];
  accountDescription = [account accountDescription];
  account2 = [namesCopy account];

  accountDescription2 = [account2 accountDescription];
  v9 = [accountDescription localizedCompareToString:accountDescription2];

  return v9;
}

- (BOOL)matchesIMHandle:(id)handle
{
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy == self)
  {
    v11 = 1;
  }

  else
  {
    account = [(IMHandle *)handleCopy account];
    if (account == self->_account)
    {
      v11 = 0;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
      v8 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
      v9 = [(IMHandle *)v5 cnContactWithKeys:v7];
      v10 = [v8 _im_isEqualToContact:v9];

      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v12 = [(IMHandle *)self imHandleForOtherAccount:account];
        if (v12 == v5)
        {
          v11 = 1;
        }

        else
        {
          account2 = [(IMHandle *)self account];
          v14 = [(IMHandle *)v5 imHandleForOtherAccount:account2];
          v11 = v14 == self;
        }
      }
    }
  }

  return v11;
}

- (BOOL)hasOtherSiblings
{
  siblings = [(IMHandle *)self siblings];
  v3 = [siblings count] > 1;

  return v3;
}

- (NSArray)siblingsArray
{
  siblings = [(IMHandle *)self siblings];
  allObjects = [siblings allObjects];

  return allObjects;
}

+ (id)filterIMHandlesForAccountSiblings:(id)siblings onAccount:(id)account
{
  v25 = *MEMORY[0x1E69E9840];
  siblingsCopy = siblings;
  accountCopy = account;
  if (accountCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = siblingsCopy;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v21;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v20 + 1) + 8 * v13);

          service = [v11 service];
          service2 = [accountCopy service];

          if (service == service2)
          {
            v17 = [v11 ID];
            v18 = [accountCopy imHandleWithID:v17 alreadyCanonical:1];

            if (v18 && ([v7 containsObjectIdenticalTo:v18] & 1) == 0)
            {
              [v7 addObject:v18];
            }
          }

          ++v13;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = [IMHandle filterIMHandlesForBestAccountSiblings:siblingsCopy];
  }

  return v7;
}

+ (id)filterIMHandlesForBestAccountSiblings:(id)siblings
{
  v17 = *MEMORY[0x1E69E9840];
  siblingsCopy = siblings;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = siblingsCopy;
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

        bestAccountSibling = [*(*(&v12 + 1) + 8 * i) bestAccountSibling];
        if (([v4 containsObjectIdenticalTo:bestAccountSibling] & 1) == 0)
        {
          [v4 addObject:bestAccountSibling];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)existingAccountSiblingsArray
{
  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = [v3 _existingAccountSiblingsForHandle:self];

  return v4;
}

- (NSArray)accountSiblingsArray
{
  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = [v3 _accountSiblingsForHandle:self];

  return v4;
}

- (id)chatSiblingsArray
{
  v3 = +[IMHandleRegistrar sharedInstance];
  v4 = [v3 _chatSiblingsForHandle:self];

  return v4;
}

- (NSSet)siblings
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = +[IMHandleRegistrar sharedInstance];
  v5 = [v4 siblingsForIMHandle:self];

  if ([v5 count])
  {
    [v3 unionSet:v5];
  }

  accountSiblingsArray = [(IMHandle *)self accountSiblingsArray];
  if ([accountSiblingsArray count])
  {
    [v3 addObjectsFromArray:accountSiblingsArray];
  }

  chatSiblingsArray = [(IMHandle *)self chatSiblingsArray];
  if ([chatSiblingsArray count])
  {
    [v3 addObjectsFromArray:chatSiblingsArray];
  }

  return v3;
}

- (BOOL)isAccountSiblingOf:(id)of
{
  ofCopy = of;
  accountSiblingsArray = [(IMHandle *)self accountSiblingsArray];
  v6 = [accountSiblingsArray containsObjectIdenticalTo:ofCopy];

  return v6;
}

- (BOOL)isSiblingOf:(id)of
{
  ofCopy = of;
  if (ofCopy == self)
  {
    v6 = 1;
  }

  else
  {
    siblings = [(IMHandle *)self siblings];
    if ([siblings count] == 1)
    {
      v6 = 0;
    }

    else
    {
      service = [(IMHandle *)ofCopy service];
      service2 = [(IMHandle *)self service];

      if (service == service2 && (-[IMHandle ID](ofCopy, "ID"), v9 = objc_claimAutoreleasedReturnValue(), -[IMHandle ID](self, "ID"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToString:v10], v10, v9, (v11 & 1) != 0))
      {
        v6 = 1;
      }

      else
      {
        v12 = [siblings member:ofCopy];
        v6 = v12 != 0;
      }
    }
  }

  return v6;
}

- (BOOL)_isChatSiblingOf:(id)of
{
  ofCopy = of;
  v5 = [ofCopy ID];
  v6 = [(IMHandle *)self ID];
  if ([v5 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    _contactID = [ofCopy _contactID];
    _contactID2 = [(IMHandle *)self _contactID];
    v7 = [_contactID isEqualToString:_contactID2];
  }

  return v7;
}

- (id)_contactID
{
  v2 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
  identifier = [v2 identifier];

  return identifier;
}

- (id)_chatSiblings
{
  chatSiblingsArray = [(IMHandle *)self chatSiblingsArray];
  if ([chatSiblingsArray count])
  {
    v3 = [MEMORY[0x1E695DFD8] setWithArray:chatSiblingsArray];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_bestChatSibling
{
  _chatSiblingsArray = [(IMHandle *)self _chatSiblingsArray];
  v3 = [IMHandle bestIMHandleInArray:_chatSiblingsArray];

  return v3;
}

- (unint64_t)capabilities
{
  loginIMHandle = [(IMAccount *)self->_account loginIMHandle];
  [(IMAccount *)self->_account isConnected];
  capabilities = self->_capabilities;
  [(IMAccount *)self->_account defaultHandleCapabilities];

  return capabilities;
}

- (void)setCapabilities:(unint64_t)capabilities
{
  capabilities = self->_capabilities;
  if ([(IMHandle *)self _setCapabilities:capabilities])
  {
    v5 = MEMORY[0x1E695DF20];
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:capabilities];
    v6 = [v5 dictionaryWithObject:v7 forKey:@"__kIMHandleCapabilitiesUserInfoOldCapsKey"];
    [(IMHandle *)self _postNotificationName:@"__kIMHandleCapabilitiesChangedNotification" userInfo:v6];
  }
}

- (BOOL)_setCapabilities:(unint64_t)capabilities
{
  v13 = *MEMORY[0x1E69E9840];
  capabilities = self->_capabilities;
  if (capabilities != capabilities)
  {
    self->_capabilities = capabilities;
    v6 = IMHandleLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = _IMStringFromFZCapabilities();
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEFAULT, "%@ capabilities changed: %@", &v9, 0x16u);
    }
  }

  return capabilities != capabilities;
}

- (BOOL)hasCapability:(unint64_t)capability
{
  v5 = [(IMHandle *)self ID];
  _appearsToBePhoneNumber = [v5 _appearsToBePhoneNumber];

  if (!_appearsToBePhoneNumber)
  {
    return (capability & ~[(IMHandle *)self capabilities]) == 0;
  }

  result = 0;
  if (capability != 0x100000 && capability != 0x400000)
  {
    return (capability & ~[(IMHandle *)self capabilities]) == 0;
  }

  return result;
}

- (BOOL)hasMultiwayVideo
{
  hasVideo = [(IMHandle *)self hasVideo];
  if (hasVideo)
  {

    LOBYTE(hasVideo) = [(IMHandle *)self hasCapability:0x1000000];
  }

  return hasVideo;
}

- (BOOL)hasAudio
{
  v3 = [(IMHandle *)self ID];
  _appearsToBePhoneNumber = [v3 _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber)
  {
    return 0;
  }

  if ([(IMHandle *)self hasCapability:655360])
  {
    return 1;
  }

  return [(IMHandle *)self hasCapability:0x400000];
}

- (BOOL)hasMultiwayAudio
{
  hasAudio = [(IMHandle *)self hasAudio];
  if (hasAudio)
  {

    LOBYTE(hasAudio) = [(IMHandle *)self hasCapability:0x800000];
  }

  return hasAudio;
}

- (void)setCustomPictureData:(id)data
{
  dataCopy = data;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    objc_storeStrong(&self->_pictureData, data);
    [(IMHandle *)self customPictureDataChanged:dataCopy key:0];
    [(IMHandle *)self postNotificationName:@"__kIMHandlePictureChangedNotification"];
  }
}

- (void)setCustomPictureData:(id)data key:(id)key
{
  dataCopy = data;
  keyCopy = key;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    objc_storeStrong(&self->_pictureData, data);
    [(IMHandle *)self postNotificationName:@"__kIMHandlePictureChangedNotification"];
    [(IMHandle *)self customPictureDataChanged:dataCopy key:keyCopy];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E695DEC8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  id = self->_id;
  countryCode2 = @"<None>";
  if (self->_uncanonicalID)
  {
    uncanonicalID = self->_uncanonicalID;
  }

  else
  {
    uncanonicalID = @"<None>";
  }

  countryCode = [(IMHandle *)self countryCode];
  if (countryCode)
  {
    countryCode2 = [(IMHandle *)self countryCode];
  }

  cnContact = self->_cnContact;
  if (cnContact)
  {
    v11 = [MEMORY[0x1E69A7FD0] descriptionForCNContact:self->_cnContact];
  }

  else
  {
    v11 = @"<No CNStore Match>";
  }

  accountDescription = [(IMAccount *)self->_account accountDescription];
  v13 = objc_msgSend(v3, "arrayWithObjects:", @"[", v5, @": <", id, @":", uncanonicalID, @":", countryCode2, @"> (CNContact: "), v11, @" (Account: "), accountDescription, @"]", 0;
  v14 = IMCreateSimpleComponentString();

  if (cnContact)
  {
  }

  if (countryCode)
  {
  }

  return v14;
}

- (DNDContactHandle)dndContactHandle
{
  dndContactHandle = self->_dndContactHandle;
  if (!dndContactHandle)
  {
    v4 = [(IMHandle *)self ID];
    if ([v4 _appearsToBeEmail])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = objc_alloc_init(MEMORY[0x1AC56C550](@"DNDMutableContactHandle", @"DoNotDisturb"));
    [v6 setValue:v4];
    [v6 setType:v5];
    v7 = [v6 copy];
    v8 = self->_dndContactHandle;
    self->_dndContactHandle = v7;

    dndContactHandle = self->_dndContactHandle;
  }

  return dndContactHandle;
}

- (void)fetchBrandInfoIfNecessaryWithSimID:(id)d
{
  dCopy = d;
  brand = [(IMHandle *)self brand];

  if (!brand)
  {
    if ([(IMHandle *)self isMapKitBusiness])
    {
      selfCopy2 = self;
      v7 = 1;
LABEL_4:
      _fetchBrandInfoForRoadside = [(IMHandle *)selfCopy2 _fetchBrandInfoForBusiness:v7 simID:dCopy];
      goto LABEL_7;
    }

    if ([(IMHandle *)self isStewieRoadside])
    {
      _fetchBrandInfoForRoadside = [(IMHandle *)self _fetchBrandInfoForRoadside];
    }

    else
    {
      _fetchBrandInfoForRoadside = [(IMHandle *)self looksLikeChatBot];
      if (_fetchBrandInfoForRoadside)
      {
        selfCopy2 = self;
        v7 = 2;
        goto LABEL_4;
      }
    }
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](_fetchBrandInfoForRoadside);
}

- (void)forceFetchChatBotBrandInfoWithSimID:(id)d
{
  dCopy = d;
  if ([(IMHandle *)self looksLikeChatBot])
  {
    [(IMHandle *)self _fetchBrandInfoForBusiness:2 simID:dCopy];
  }
}

- (void)_fetchBrandInfoForBrandWithURI:(id)i forType:(unint64_t)type simID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  iCopy = i;
  dCopy = d;
  if ((IMIsRunningInMessagesComposeViewService() & 1) == 0)
  {
    if (iCopy)
    {
      v11 = [(NSString *)self->_brandURI isEqualToString:iCopy];
      if (type == 2 || !v11)
      {
        objc_storeStrong(&self->_brandURI, i);
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v20 = iCopy;
            v21 = 2112;
            v22 = dCopy;
            _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEBUG, "Fetching business info for business with brandURI: %@, simID: %@", buf, 0x16u);
          }
        }

        objc_initWeak(buf, self);
        brandManager = [(IMHandle *)self brandManager];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = sub_1A82F85B8;
        v15[3] = &unk_1E7811EA8;
        objc_copyWeak(&v18, buf);
        v16 = iCopy;
        v17 = dCopy;
        [brandManager brandWithURI:v16 usingSim:v17 forType:type completion:v15];

        objc_destroyWeak(&v18);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E0264(v14);
      }
    }
  }
}

- (void)_fetchBrandInfoForBusiness:(unint64_t)business simID:(id)d
{
  dCopy = d;
  v7 = [(IMHandle *)self ID];
  [(IMHandle *)self _fetchBrandInfoForBrandWithURI:v7 forType:business simID:dCopy];
}

- (void)_fetchBrandInfoForRoadside
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A82F8868;
  v2[3] = &unk_1E780FDC8;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)_fetchedBrand:(id)brand withBrandURI:(id)i simID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  brandCopy = brand;
  iCopy = i;
  dCopy = d;
  if (brandCopy)
  {
    if ([(NSString *)self->_brandURI isEqualToString:iCopy])
    {
      [(IMHandle *)self setBrand:brandCopy];
      [(IMHandle *)self _postOnScreenChangedNotificationForBrandProperty:*MEMORY[0x1E69A6840]];
      if ((IMIsRunningInMessagesAssistantExtension() & 1) == 0)
      {
        v11 = objc_initWeak(&location, self);
        isChatBot = [(IMHandle *)self isChatBot];

        if (isChatBot)
        {
          v13 = IMHandleLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v30 = iCopy;
            v31 = 2112;
            v32 = dCopy;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_DEFAULT, "Fetching logo image data for brandURI: %@, simID: %@", buf, 0x16u);
          }

          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = sub_1A82F8CF4;
          v25[3] = &unk_1E7811EF8;
          v14 = &v27;
          objc_copyWeak(&v27, &location);
          v26 = iCopy;
          [brandCopy logoDataOfType:2 desiredSize:dCopy usingSim:v25 completion:{172.0, 172.0}];
          v15 = &v26;
        }

        else
        {
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = sub_1A82F9030;
          v22[3] = &unk_1E7811EF8;
          v14 = &v24;
          objc_copyWeak(&v24, &location);
          v18 = iCopy;
          v23 = v18;
          [brandCopy squareLogoDataForDesiredSize:v22 completion:{172.0, 172.0}];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = sub_1A82F9284;
          v19[3] = &unk_1E7811EF8;
          objc_copyWeak(&v21, &location);
          v20 = v18;
          [brandCopy wideLogoDataForDesiredSize:v19 completion:{540.0, 81.0}];

          objc_destroyWeak(&v21);
          v15 = &v23;
        }

        objc_destroyWeak(v14);
        objc_destroyWeak(&location);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        brandURI = self->_brandURI;
        *buf = 138412546;
        v30 = iCopy;
        v31 = 2112;
        v32 = brandURI;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Ignoring fetched brand for brandURI: %@, as it doesn't match current brandURI: %@", buf, 0x16u);
      }
    }
  }
}

- (void)_fetchBrandLogoFromChatRegistryFor:(id)for
{
  v18 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = +[IMChatRegistry sharedRegistry];
  __im_stripSip = [forCopy __im_stripSip];
  v7 = [v5 brandLogoDataFromChatIdentifier:__im_stripSip];

  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v14 = 134218242;
        v15 = [v7 length];
        v16 = 2112;
        v17 = forCopy;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Use cached logo %lu for %@", &v14, 0x16u);
      }
    }

    [(IMHandle *)self setBrandSquareLogoImageData:v7];
    [(IMHandle *)self _postOnScreenChangedNotificationForBrandProperty:*MEMORY[0x1E69A6848]];
  }

  else if (v8)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = +[IMChatRegistry sharedRegistry];
      __im_stripSip2 = [forCopy __im_stripSip];
      v13 = [v11 brandLogoUrlFromChatIdentifier:__im_stripSip2];
      v14 = 138412546;
      v15 = forCopy;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "ChatBot Logo - Cached logo does not exist for %@, its url is %@", &v14, 0x16u);
    }
  }
}

- (void)_postOnScreenChangedNotificationForBrandProperty:(id)property
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = *MEMORY[0x1E69A6868];
  propertyCopy = property;
  v5 = [(IMHandle *)self ID];
  v6 = v5;
  v7 = &stru_1F1B76F98;
  if (v5)
  {
    v7 = v5;
  }

  v11[1] = *MEMORY[0x1E69A6858];
  v12[0] = v7;
  v12[1] = propertyCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:*MEMORY[0x1E69A6870] object:self userInfo:v8];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter2 __mainThreadPostNotificationName:*MEMORY[0x1E69A6838] object:self userInfo:v8];
}

- (void)releaseNotificationQueue
{
  v17 = *MEMORY[0x1E69E9840];
  notificationQueueCount = self->_notificationQueueCount;
  if (notificationQueueCount <= 0)
  {
    sub_1A84E02A8(a2, self, &self->_notificationQueueCount, &v15);
    notificationQueueCount = v15;
  }

  self->_notificationQueueCount = notificationQueueCount - 1;
  if (![(IMHandle *)self shouldQueueNotifications])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(NSMutableArray *)self->_notificationQueue copy];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
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
            objc_enumerationMutation(v4);
          }

          [(IMHandle *)self _postNotification:*(*(&v11 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v6);
    }

    notificationNameQueue = self->_notificationNameQueue;
    self->_notificationNameQueue = 0;

    notificationQueue = self->_notificationQueue;
    self->_notificationQueue = 0;
  }
}

- (id)publicAPIPropertiesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  service = [(IMHandle *)self service];
  internalName = [service internalName];

  if ([internalName isEqualToString:@"SubNet"])
  {
    v6 = @"Bonjour";

    internalName = v6;
  }

  if (internalName)
  {
    [v3 setObject:internalName forKey:@"__kIMPersonServiceNameKey"];
  }

  v7 = [(IMHandle *)self ID];

  if (v7)
  {
    v8 = [(IMHandle *)self ID];
    [v3 setObject:v8 forKey:@"__kIMPersonScreenNameKey"];
  }

  if ([(IMHandle *)self isBuddy])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IMHandle status](self, "status")}];
    [v3 setObject:v9 forKey:@"__kIMPersonStatusKey"];

    statusMessage = [(IMHandle *)self statusMessage];

    if (statusMessage)
    {
      statusMessage2 = [(IMHandle *)self statusMessage];
      [v3 setObject:statusMessage2 forKey:@"__kIMPersonStatusMessageKey"];
    }

    idleSince = self->_idleSince;
    if (idleSince)
    {
      [v3 setObject:idleSince forKey:@"__kIMPersonIdleSinceKey"];
    }

    firstName = [(IMHandle *)self firstName];
    if ([firstName length])
    {
      [v3 setObject:firstName forKey:@"__kIMPersonFirstNameKey"];
    }

    lastName = [(IMHandle *)self lastName];
    if ([lastName length])
    {
      [v3 setObject:lastName forKey:@"__kIMPersonLastNameKey"];
    }

    email = [(IMHandle *)self email];

    if (email)
    {
      email2 = [(IMHandle *)self email];
      [v3 setObject:email2 forKey:@"__kIMPersonEmailKey"];
    }

    pictureData = [(IMHandle *)self pictureData];

    if (pictureData)
    {
      pictureData2 = [(IMHandle *)self pictureData];
      [v3 setObject:pictureData2 forKey:@"__kIMPersonPictureDataKey"];
    }

    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMHandle hasCapability:](self, "hasCapability:", 0x100000) ^ 1}];
    [v3 setObject:v19 forKey:@"__kIMPersonAVBusyKey"];

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(IMHandle *)self hasCapability:1024])
    {
      [v20 addObject:@"__kIMCapabilityText"];
    }

    if ([(IMHandle *)self hasCapability:32])
    {
      [v20 addObject:@"__kIMCapabilityFileTransfer"];
    }

    if ([(IMHandle *)self hasCapability:655360]|| [(IMHandle *)self hasCapability:4718592])
    {
      [v20 addObject:@"__kIMCapabilityAudioConference"];
    }

    if ([(IMHandle *)self hasCapability:393216]|| [(IMHandle *)self hasCapability:2359296])
    {
      [v20 addObject:@"__kIMCapabilityVideoConference"];
    }

    v21 = +[IMDaemonController sharedController];
    listener = [v21 listener];
    vcCapabilities = [listener vcCapabilities];

    if ((~vcCapabilities & 0xA0000) != 0 || ([v20 containsObject:@"__kIMCapabilityAudioConference"] & 1) == 0)
    {
      [v20 removeObject:@"__kIMCapabilityAudioConference"];
    }

    if ((vcCapabilities & 0x40000) == 0 || (*&vcCapabilities & 0x220000) == 0 || ([v20 containsObject:@"__kIMCapabilityVideoConference"] & 1) == 0)
    {
      [v20 removeObject:@"__kIMCapabilityVideoConference"];
    }

    [v3 setObject:v20 forKey:@"__kIMPersonCapabilitiesKey"];
    [v3 setObject:v20 forKey:@"__kIMPersonAllowedCapabilitiesKey"];
  }

  else
  {
    firstName = [MEMORY[0x1E696AD98] numberWithInt:1];
    [v3 setObject:firstName forKey:@"__kIMPersonStatusKey"];
  }

  return v3;
}

+ (void)handlesForContacts:(id)contacts useBestHandle:(BOOL)handle useExtendedAsyncLookup:(BOOL)lookup completion:(id)completion
{
  HIDWORD(v94) = lookup;
  handleCopy = handle;
  v142 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  completionCopy = completion;
  v9 = [contactsCopy count];
  v10 = IMHandleLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Received empty array of contacts", buf, 2u);
    }

    v64 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
    goto LABEL_80;
  }

  if (v11)
  {
    *buf = 138412802;
    *&buf[4] = contactsCopy;
    *&buf[12] = 1024;
    *&buf[14] = handleCopy;
    *&buf[18] = 1024;
    *&buf[20] = HIDWORD(v94);
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempting to identify best handles for contacts: %@ with conditions [useBestHandle:%{BOOL}d, useExtendedAsyncLookup:%{BOOL}d]", buf, 0x18u);
  }

  LODWORD(v94) = handleCopy;

  v12 = +[IMChatRegistry sharedRegistry];
  cachedChats = [v12 cachedChats];
  v14 = [cachedChats __imArrayByFilteringWithBlock:&unk_1F1B6F080];

  v15 = [v14 sortedArrayUsingComparator:&unk_1F1B6F0A0];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v16 = v15;
  v96 = v16;
  v101 = [v16 countByEnumeratingWithState:&v128 objects:v138 count:16];
  if (v101)
  {
    v100 = *v129;
    v102 = contactsCopy;
    while (2)
    {
      for (i = 0; i != v101; ++i)
      {
        if (*v129 != v100)
        {
          objc_enumerationMutation(v16);
        }

        v18 = *(*(&v128 + 1) + 8 * i);
        contacts = [v18 contacts];
        if ([contactsCopy intersectsSet:contacts])
        {
          v99 = i;
          if ([contactsCopy isEqualToSet:contacts])
          {
            v20 = [contacts count];
            participants = [v18 participants];
            v22 = [participants count];

            if (v20 == v22)
            {
              v65 = sub_1A835FAD4(contactsCopy, v18);
              v66 = IMHandleLogHandle();
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                account = [v18 account];
                *buf = 138412802;
                *&buf[4] = v65;
                *&buf[12] = 2112;
                *&buf[14] = account;
                *&buf[22] = 2112;
                v140 = v18;
                _os_log_impl(&dword_1A823F000, v66, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 1: Found handles: %@, account: %@, for union match chat: %@", buf, 0x20u);
              }

              account2 = [v18 account];
              (*(completionCopy + 2))(completionCopy, v65, account2, v18);

              v70 = v96;
              v69 = dictionary2;
              v49 = v96;
              goto LABEL_79;
            }
          }

          chatIdentifier = [v18 chatIdentifier];
          [dictionary setObject:contacts forKeyedSubscript:chatIdentifier];

          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          obj = contacts;
          v24 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v125;
            v104 = v18;
            v105 = contacts;
            v103 = *v125;
            do
            {
              v27 = 0;
              v106 = v25;
              do
              {
                if (*v125 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v124 + 1) + 8 * v27);
                if ([contactsCopy containsObject:v28])
                {
                  v111 = v28;
                  v29 = v18;
                  account3 = [v29 account];
                  v132 = 0u;
                  v133 = 0u;
                  v134 = 0u;
                  v135 = 0u;
                  v110 = v29;
                  participants2 = [v29 participants];
                  v32 = [participants2 countByEnumeratingWithState:&v132 objects:buf count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v109 = v27;
                    v34 = *v133;
                    while (2)
                    {
                      for (j = 0; j != v33; ++j)
                      {
                        if (*v133 != v34)
                        {
                          objc_enumerationMutation(participants2);
                        }

                        v36 = [*(*(&v132 + 1) + 8 * j) ID];
                        v37 = [account3 imHandleWithID:v36];

                        v38 = [v37 cnContactWithKeys:MEMORY[0x1E695E0F0]];
                        v39 = v38;
                        if (v38)
                        {
                          identifier = [v38 identifier];
                          identifier2 = [v111 identifier];
                          v42 = [identifier isEqualToString:identifier2];

                          if (v42)
                          {

                            goto LABEL_29;
                          }
                        }
                      }

                      v33 = [participants2 countByEnumeratingWithState:&v132 objects:buf count:16];
                      if (v33)
                      {
                        continue;
                      }

                      break;
                    }

                    v37 = 0;
LABEL_29:
                    contactsCopy = v102;
                    v26 = v103;
                    v18 = v104;
                    contacts = v105;
                    v25 = v106;
                    v27 = v109;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  identifier3 = [v111 identifier];
                  [dictionary3 setObject:v37 forKeyedSubscript:identifier3];
                }

                ++v27;
              }

              while (v27 != v25);
              v25 = [obj countByEnumeratingWithState:&v124 objects:v137 count:16];
            }

            while (v25);
          }

          account4 = [v18 account];
          uniqueID = [account4 uniqueID];

          v46 = [dictionary2 objectForKeyedSubscript:uniqueID];

          if (!v46)
          {
            dictionary4 = [MEMORY[0x1E695DF90] dictionary];
            [dictionary2 setObject:dictionary4 forKeyedSubscript:uniqueID];
          }

          v48 = [dictionary2 objectForKeyedSubscript:uniqueID];
          [v48 addEntriesFromDictionary:dictionary3];

          v16 = v96;
          i = v99;
        }
      }

      v101 = [v16 countByEnumeratingWithState:&v128 objects:v138 count:16];
      if (v101)
      {
        continue;
      }

      break;
    }
  }

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v49 = v16;
  v50 = [v49 countByEnumeratingWithState:&v120 objects:v136 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v121;
    while (2)
    {
      for (k = 0; k != v51; ++k)
      {
        if (*v121 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v120 + 1) + 8 * k);
        chatIdentifier2 = [v54 chatIdentifier];
        v56 = [dictionary objectForKeyedSubscript:chatIdentifier2];

        if (v56 && [contactsCopy isSubsetOfSet:v56])
        {
          v71 = sub_1A835FAD4(contactsCopy, v54);
          v72 = IMHandleLogHandle();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            account5 = [v54 account];
            *buf = 138412802;
            *&buf[4] = v71;
            *&buf[12] = 2112;
            *&buf[14] = account5;
            *&buf[22] = 2112;
            v140 = v54;
            _os_log_impl(&dword_1A823F000, v72, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 2: Found handles: %@, account: %@, for subset match chat: %@", buf, 0x20u);
          }

          account6 = [v54 account];
          (*(completionCopy + 2))(completionCopy, v71, account6, 0);

          goto LABEL_78;
        }
      }

      v51 = [v49 countByEnumeratingWithState:&v120 objects:v136 count:16];
      if (v51)
      {
        continue;
      }

      break;
    }
  }

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = sub_1A835FCC4;
  v118[3] = &unk_1E78135E8;
  v57 = contactsCopy;
  v119 = v57;
  v58 = [dictionary2 keysOfEntriesPassingTest:v118];
  if ([v58 count] != 1)
  {
    if ([v58 count] < 2)
    {
      goto LABEL_72;
    }

    v75 = v58;
    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    if ([IMServiceImpl iMessageEnabledForSenderLastAddressedHandle:0 simID:0])
    {
      v77 = +[IMService iMessageService];
      v78 = &unk_1F1BA1860;
    }

    else
    {
      if (!+[IMServiceImpl smsEnabled])
      {
LABEL_67:
        allObjects = [v75 allObjects];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1A8360BC0;
        v140 = &unk_1E78104A0;
        v141 = dictionary5;
        v81 = dictionary5;
        v82 = [allObjects sortedArrayUsingComparator:buf];
        v83 = [v82 objectAtIndexedSubscript:0];

        if ([v83 length])
        {
          v84 = [dictionary2 objectForKeyedSubscript:v83];
          v85 = IMHandleLogHandle();
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v83;
            *&buf[12] = 2112;
            *&buf[14] = v84;
            _os_log_impl(&dword_1A823F000, v85, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 3: Selected best account: %@ that messaged all handles: %@", buf, 0x16u);
          }

          v86 = +[IMAccountController sharedInstance];
          v87 = [v86 accountForUniqueID:v83];
          (*(completionCopy + 2))(completionCopy, v84, v87, 0);

          goto LABEL_77;
        }

LABEL_72:
        if (HIDWORD(v94))
        {
          v88 = sub_1A835FD00(v57);
          v89 = sub_1A835FEBC(v57);
          v90 = *MEMORY[0x1E69A4818];
          v112[0] = MEMORY[0x1E69E9820];
          v112[1] = 3221225472;
          v112[2] = sub_1A8360128;
          v112[3] = &unk_1E7813638;
          v117 = v94;
          v113 = v89;
          v114 = v57;
          v115 = v88;
          v116 = completionCopy;
          v91 = v88;
          v92 = v89;
          sub_1A8360070(v91, v90, v112);
        }

        else
        {
          v93 = IMHandleLogHandle();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v93, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Failed to find handles for contacts", buf, 2u);
          }

          (*(completionCopy + 2))(completionCopy, 0, 0, 0);
        }

        goto LABEL_77;
      }

      v77 = +[IMService smsService];
      v78 = &unk_1F1BA1878;
    }

    name = [v77 name];
    [dictionary5 setObject:v78 forKeyedSubscript:name];

    goto LABEL_67;
  }

  anyObject = [v58 anyObject];
  v60 = [dictionary2 objectForKeyedSubscript:anyObject];
  v61 = IMHandleLogHandle();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v60;
    *&buf[12] = 2112;
    *&buf[14] = anyObject;
    _os_log_impl(&dword_1A823F000, v61, OS_LOG_TYPE_DEFAULT, "[handlesForContacts] Attempt 3: Found handles: %@ for account: %@ that contacted all recipients", buf, 0x16u);
  }

  v62 = +[IMAccountController sharedInstance];
  v63 = [v62 accountForUniqueID:anyObject];
  (*(completionCopy + 2))(completionCopy, v60, v63, 0);

LABEL_77:
  v49 = v119;
LABEL_78:
  v70 = v96;
  v69 = dictionary2;
LABEL_79:

  v64 = completionCopy;
LABEL_80:
}

- (id)fmfHandle
{
  v3 = MEMORY[0x1AC56C550](@"FMFHandle", @"FMF");
  if (v3)
  {
    v4 = v3;
    v5 = [(IMHandle *)self ID];
    v6 = [v4 handleWithId:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)findMyHandle
{
  v2 = [(IMHandle *)self ID];
  v3 = [IMFindMyHandle handleWithIdentifier:v2];

  return v3;
}

- (id)findMySiblingHandles
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [(IMHandle *)self cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [MEMORY[0x1E69A7FD0] phoneNumbersForCNContact:v4];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = IMInternationalForPhoneNumberWithOptions();
          v11 = [IMFindMyHandle handleWithIdentifier:v10];
          [v3 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [MEMORY[0x1E69A7FD0] emailsForCNContact:{v4, 0}];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          lowercaseString = [*(*(&v23 + 1) + 8 * j) lowercaseString];
          v18 = [IMFindMyHandle handleWithIdentifier:lowercaseString];
          [v3 addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v19 = [(IMHandle *)self ID];
    v20 = [IMFindMyHandle handleWithIdentifier:v19];

    [v3 addObject:v20];
  }

  v21 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v21;
}

- (void)resetCachedName
{
  selfCopy = self;
  [(IMHandle *)selfCopy setCachedName:0];
  [(IMHandle *)selfCopy setCachedDisplayNameWithAbbreviation:0];
}

@end