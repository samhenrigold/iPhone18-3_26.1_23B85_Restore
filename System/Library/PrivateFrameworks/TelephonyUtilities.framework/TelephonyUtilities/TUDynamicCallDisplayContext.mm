@interface TUDynamicCallDisplayContext
- (TUDynamicCallDisplayContext)init;
- (TUDynamicCallDisplayContext)initWithCall:(id)call contactIdentifier:(id)identifier serialQueue:(id)queue cacheOnly:(BOOL)only;
- (TUDynamicCallDisplayContext)initWithCall:(id)call contactIdentifier:(id)identifier serialQueue:(id)queue contactsDataSource:(id)source cacheOnly:(BOOL)only;
- (TUDynamicCallDisplayContext)initWithCoder:(id)coder;
- (TUDynamicCallDisplayContext)initWithDisplayContext:(id)context call:(id)call serialQueue:(id)queue cacheOnly:(BOOL)only;
- (TUDynamicCallDisplayContextDelegate)delegate;
- (id)description;
- (void)_initializeAsynchronousStateWithCall:(id)call cacheOnly:(BOOL)only;
- (void)_initializeSynchronousStateWithCall:(id)call contactIdentifier:(id)identifier contactsDataProvider:(id)provider;
- (void)updatePredictedNameFromReceptionist:(id)receptionist;
@end

@implementation TUDynamicCallDisplayContext

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  name = [(TUCallDisplayContext *)self name];
  [v3 appendFormat:@" name=%@", name];

  personNameComponents = [(TUCallDisplayContext *)self personNameComponents];
  [v3 appendFormat:@" personNameComponents=%@", personNameComponents];

  suggestedName = [(TUCallDisplayContext *)self suggestedName];
  [v3 appendFormat:@" suggestedName=%@", suggestedName];

  label = [(TUCallDisplayContext *)self label];
  [v3 appendFormat:@" label=%@", label];

  companyName = [(TUCallDisplayContext *)self companyName];
  [v3 appendFormat:@" companyName=%@", companyName];

  companyDepartment = [(TUCallDisplayContext *)self companyDepartment];
  [v3 appendFormat:@" companyDepartment=%@", companyDepartment];

  companyLogoURL = [(TUCallDisplayContext *)self companyLogoURL];
  [v3 appendFormat:@" companyLogoURL=%@", companyLogoURL];

  mapName = [(TUCallDisplayContext *)self mapName];
  [v3 appendFormat:@" mapName=%@", mapName];

  location = [(TUCallDisplayContext *)self location];
  [v3 appendFormat:@" location=%@", location];

  contactName = [(TUCallDisplayContext *)self contactName];
  [v3 appendFormat:@" contactName=%@", contactName];

  contactLabel = [(TUCallDisplayContext *)self contactLabel];
  [v3 appendFormat:@" contactLabel=%@", contactLabel];

  callDirectoryLabel = [(TUCallDisplayContext *)self callDirectoryLabel];
  [v3 appendFormat:@" callDirectoryLabel=%@", callDirectoryLabel];

  callDirectoryLocalizedExtensionContainingAppName = [(TUCallDisplayContext *)self callDirectoryLocalizedExtensionContainingAppName];
  [v3 appendFormat:@" callDirectoryLocalizedExtensionContainingAppName=%@", callDirectoryLocalizedExtensionContainingAppName];

  callDirectoryExtensionIdentifier = [(TUCallDisplayContext *)self callDirectoryExtensionIdentifier];
  [v3 appendFormat:@" callDirectoryExtensionIdentifier=%@", callDirectoryExtensionIdentifier];

  [v3 appendFormat:@" callDirectoryIdentityType=%ld", -[TUCallDisplayContext callDirectoryIdentityType](self, "callDirectoryIdentityType")];
  [v3 appendString:@">"];
  v18 = [v3 copy];

  return v18;
}

- (TUDynamicCallDisplayContext)initWithCall:(id)call contactIdentifier:(id)identifier serialQueue:(id)queue cacheOnly:(BOOL)only
{
  onlyCopy = only;
  queueCopy = queue;
  identifierCopy = identifier;
  callCopy = call;
  contactsDataSourceCreationBlock = [callCopy contactsDataSourceCreationBlock];
  v14 = contactsDataSourceCreationBlock[2]();

  v15 = [(TUDynamicCallDisplayContext *)self initWithCall:callCopy contactIdentifier:identifierCopy serialQueue:queueCopy contactsDataSource:v14 cacheOnly:onlyCopy];
  return v15;
}

- (TUDynamicCallDisplayContext)initWithCall:(id)call contactIdentifier:(id)identifier serialQueue:(id)queue contactsDataSource:(id)source cacheOnly:(BOOL)only
{
  onlyCopy = only;
  v28 = *MEMORY[0x1E69E9840];
  callCopy = call;
  identifierCopy = identifier;
  queueCopy = queue;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = TUDynamicCallDisplayContext;
  v16 = [(TUCallDisplayContext *)&v25 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

  if (callCopy)
  {
    if (queueCopy)
    {
      goto LABEL_4;
    }

LABEL_14:
    [TUDynamicCallDisplayContext initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:];
    if (sourceCopy)
    {
      goto LABEL_5;
    }

LABEL_15:
    [TUDynamicCallDisplayContext initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:];
    goto LABEL_5;
  }

  [TUDynamicCallDisplayContext initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:];
  if (!queueCopy)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (!sourceCopy)
  {
    goto LABEL_15;
  }

LABEL_5:
  v18 = TUDefaultLog(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [TUDynamicCallDisplayContext initWithCall:sourceCopy contactIdentifier:v18 serialQueue:? contactsDataSource:? cacheOnly:?];
  }

  objc_storeStrong(&v17->_serialQueue, queue);
  v19 = objc_alloc_init(TUFeatureFlags);
  featureFlags = v17->_featureFlags;
  v17->_featureFlags = v19;

  v21 = [[TUContactsDataProvider alloc] initWithContactsDataSource:sourceCopy];
  [(TUDynamicCallDisplayContext *)v17 _initializeSynchronousStateWithCall:callCopy contactIdentifier:identifierCopy contactsDataProvider:v21];
  isInternational = [callCopy isInternational];
  if ((isInternational & 1) == 0)
  {
    isInternational = [(TUDynamicCallDisplayContext *)v17 _initializeAsynchronousStateWithCall:callCopy cacheOnly:onlyCopy];
  }

  v23 = TUDefaultLog(isInternational);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v17;
    _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "Initialized dynamic display context: %@", buf, 0xCu);
  }

LABEL_12:
  return v17;
}

- (TUDynamicCallDisplayContext)initWithDisplayContext:(id)context call:(id)call serialQueue:(id)queue cacheOnly:(BOOL)only
{
  onlyCopy = only;
  v36 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  callCopy = call;
  queueCopy = queue;
  v33.receiver = self;
  v33.super_class = TUDynamicCallDisplayContext;
  v13 = [(TUCallDisplayContext *)&v33 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  if (callCopy)
  {
    if (queueCopy)
    {
      goto LABEL_4;
    }

LABEL_10:
    [TUDynamicCallDisplayContext initWithDisplayContext:call:serialQueue:cacheOnly:];
    if (contextCopy)
    {
      goto LABEL_5;
    }

LABEL_11:
    [TUDynamicCallDisplayContext initWithDisplayContext:call:serialQueue:cacheOnly:];
    goto LABEL_5;
  }

  [TUDynamicCallDisplayContext initWithDisplayContext:call:serialQueue:cacheOnly:];
  if (!queueCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (!contextCopy)
  {
    goto LABEL_11;
  }

LABEL_5:
  objc_storeStrong(&v13->_serialQueue, queue);
  v14 = objc_alloc_init(TUFeatureFlags);
  featureFlags = v13->_featureFlags;
  v13->_featureFlags = v14;

  name = [contextCopy name];
  [(TUCallDisplayContext *)v13 setName:name];

  personNameComponents = [contextCopy personNameComponents];
  [(TUCallDisplayContext *)v13 setPersonNameComponents:personNameComponents];

  suggestedName = [contextCopy suggestedName];
  [(TUCallDisplayContext *)v13 setSuggestedName:suggestedName];

  label = [contextCopy label];
  [(TUCallDisplayContext *)v13 setLabel:label];

  mapName = [contextCopy mapName];
  [(TUCallDisplayContext *)v13 setMapName:mapName];

  companyName = [contextCopy companyName];
  [(TUCallDisplayContext *)v13 setCompanyName:companyName];

  companyDepartment = [contextCopy companyDepartment];
  [(TUCallDisplayContext *)v13 setCompanyDepartment:companyDepartment];

  companyLogoURL = [contextCopy companyLogoURL];
  [(TUCallDisplayContext *)v13 setCompanyLogoURL:companyLogoURL];

  location = [contextCopy location];
  [(TUCallDisplayContext *)v13 setLocation:location];

  contactName = [contextCopy contactName];
  [(TUCallDisplayContext *)v13 setContactName:contactName];

  contactLabel = [contextCopy contactLabel];
  [(TUCallDisplayContext *)v13 setContactLabel:contactLabel];

  callDirectoryLabel = [contextCopy callDirectoryLabel];
  [(TUCallDisplayContext *)v13 setCallDirectoryLabel:callDirectoryLabel];

  callDirectoryExtensionIdentifier = [contextCopy callDirectoryExtensionIdentifier];
  [(TUCallDisplayContext *)v13 setCallDirectoryExtensionIdentifier:callDirectoryExtensionIdentifier];

  callDirectoryLocalizedExtensionContainingAppName = [contextCopy callDirectoryLocalizedExtensionContainingAppName];
  [(TUCallDisplayContext *)v13 setCallDirectoryLocalizedExtensionContainingAppName:callDirectoryLocalizedExtensionContainingAppName];

  -[TUCallDisplayContext setCallDirectoryIdentityType:](v13, "setCallDirectoryIdentityType:", [contextCopy callDirectoryIdentityType]);
  contactIdentifiers = [contextCopy contactIdentifiers];
  [(TUCallDisplayContext *)v13 setContactIdentifiers:contactIdentifiers];

  -[TUCallDisplayContext setLegacyAddressBookIdentifier:](v13, "setLegacyAddressBookIdentifier:", [contextCopy legacyAddressBookIdentifier]);
  v31 = TUDefaultLog([(TUDynamicCallDisplayContext *)v13 _initializeAsynchronousStateWithCall:callCopy cacheOnly:onlyCopy]);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v13;
    _os_log_impl(&dword_1956FD000, v31, OS_LOG_TYPE_DEFAULT, "Initialized dynamic display context: %@", buf, 0xCu);
  }

LABEL_8:
  return v13;
}

- (TUDynamicCallDisplayContext)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUDynamicCallDisplayContext.m" lineNumber:141 description:{@"%s is not available. Use another initializer instead.", "-[TUDynamicCallDisplayContext init]"}];

  return 0;
}

- (TUDynamicCallDisplayContext)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUDynamicCallDisplayContext.m" lineNumber:146 description:{@"%s is not available. Use another initializer instead.", "-[TUDynamicCallDisplayContext initWithCoder:]"}];

  return 0;
}

- (void)_initializeSynchronousStateWithCall:(id)call contactIdentifier:(id)identifier contactsDataProvider:(id)provider
{
  v104 = *MEMORY[0x1E69E9840];
  callCopy = call;
  identifierCopy = identifier;
  providerCopy = provider;
  isInternational = [callCopy isInternational];
  v12 = [[TUContactsDataProviderFetchRequest alloc] initWithCall:callCopy];
  [(TUContactsDataProviderFetchRequest *)v12 setContactIdentifier:identifierCopy];
  v13 = [providerCopy executeFetchRequest:v12];
  v14 = v13;
  v94 = v12;
  v95 = providerCopy;
  if (isInternational)
  {
    remoteParticipantHandles = [callCopy remoteParticipantHandles];
    anyObject = [remoteParticipantHandles anyObject];

    value = [anyObject value];
    if ([value length])
    {
      isoCountryCode = [callCopy isoCountryCode];
      v19 = TUFormattedPhoneNumber(value, isoCountryCode);
      [(TUCallDisplayContext *)self setName:v19];
    }

    contacts = [v14 contacts];
    v21 = [contacts count];

    if (v21)
    {
      localizedName = [v14 localizedName];
      [(TUCallDisplayContext *)self setSuggestedName:localizedName];
    }
  }

  else
  {
    localizedName2 = [v13 localizedName];
    [(TUCallDisplayContext *)self setName:localizedName2];

    contactLabel = [v14 contactLabel];
    [(TUCallDisplayContext *)self setLabel:contactLabel];

    anyObject = [v14 companyName];
    [(TUCallDisplayContext *)self setCompanyName:anyObject];
  }

  handle = [callCopy handle];
  siriDisplayName = [handle siriDisplayName];
  if (siriDisplayName)
  {
    v27 = siriDisplayName;
    handle2 = [callCopy handle];
    shouldHideContact = [handle2 shouldHideContact];

    if (!shouldHideContact)
    {
      goto LABEL_12;
    }

    handle = [callCopy handle];
    siriDisplayName2 = [handle siriDisplayName];
    [(TUCallDisplayContext *)self setName:siriDisplayName2];
  }

LABEL_12:
  if (isInternational)
  {
    goto LABEL_27;
  }

  contacts2 = [v14 contacts];
  if (![contacts2 count])
  {

    goto LABEL_27;
  }

  if ([callCopy isConversation])
  {
    remoteParticipantHandles2 = [callCopy remoteParticipantHandles];
    v33 = [remoteParticipantHandles2 count];

    if (v33 != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v92 = identifierCopy;
  contacts3 = [v14 contacts];
  firstObject = [contacts3 firstObject];

  name = [(TUCallDisplayContext *)self name];
  [(TUCallDisplayContext *)self setContactName:name];

  label = [(TUCallDisplayContext *)self label];
  [(TUCallDisplayContext *)self setContactLabel:label];

  v37 = objc_alloc(MEMORY[0x1E695DF70]);
  contacts4 = [v14 contacts];
  v39 = [v37 initWithCapacity:{objc_msgSend(contacts4, "count")}];

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  contacts5 = [v14 contacts];
  v41 = [contacts5 countByEnumeratingWithState:&v97 objects:v103 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v98;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v98 != v43)
        {
          objc_enumerationMutation(contacts5);
        }

        identifier = [*(*(&v97 + 1) + 8 * i) identifier];
        [v39 addObject:identifier];
      }

      v42 = [contacts5 countByEnumeratingWithState:&v97 objects:v103 count:16];
    }

    while (v42);
  }

  [(TUCallDisplayContext *)self setContactIdentifiers:v39];
  personNameComponents = [firstObject personNameComponents];
  [(TUCallDisplayContext *)self setPersonNameComponents:personNameComponents];

  -[TUCallDisplayContext setLegacyAddressBookIdentifier:](self, "setLegacyAddressBookIdentifier:", [v14 legacyAddressBookIdentifier]);
  identifierCopy = v92;
LABEL_27:
  personNameComponents2 = [(TUCallDisplayContext *)self personNameComponents];
  if (personNameComponents2)
  {
    v48 = MEMORY[0x1E696ADF8];
    personNameComponents3 = [(TUCallDisplayContext *)self personNameComponents];
    v50 = [v48 localizedStringFromPersonNameComponents:personNameComponents3 style:3 options:0];
  }

  else
  {
    v50 = 0;
  }

  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  if (![contactIdentifiers count])
  {

    goto LABEL_35;
  }

  contactIdentifiers2 = [(TUCallDisplayContext *)self contactIdentifiers];
  if (![contactIdentifiers2 count])
  {
LABEL_85:

LABEL_86:
    goto LABEL_87;
  }

  v53 = [v50 length];

  if (!v53)
  {
LABEL_35:
    contactIdentifiers = [callCopy callerNameFromNetwork];
    if ([contactIdentifiers length])
    {
      provider = [callCopy provider];
      isTelephonyProvider = [provider isTelephonyProvider];

      if (isTelephonyProvider)
      {
        [(TUCallDisplayContext *)self setLabel:contactIdentifiers];
      }

      else
      {
        [(TUCallDisplayContext *)self setName:contactIdentifiers];
      }
    }

    if (![contactIdentifiers length] && objc_msgSend(callCopy, "isVoicemail"))
    {
      v56 = TUBundle();
      v57 = [v56 localizedStringForKey:@"VOICEMAIL" value:&stru_1F098C218 table:@"TelephonyUtilities"];
      [(TUCallDisplayContext *)self setName:v57];
    }

    if ([contactIdentifiers length])
    {
      goto LABEL_86;
    }

    handle3 = [callCopy handle];
    value2 = [handle3 value];
    v60 = [value2 length];

    if (!v60)
    {
      goto LABEL_86;
    }

    handle4 = [callCopy handle];
    contactIdentifiers2 = [handle4 value];

    handle5 = [callCopy handle];
    if ([handle5 type] == 2)
    {
      v93 = v50;
      handle6 = [callCopy handle];
      normalizedValue = [handle6 normalizedValue];

      if (!normalizedValue)
      {
        v50 = v93;
        if (isInternational)
        {
          goto LABEL_61;
        }

LABEL_48:
        v96 = 0;
        v66 = [TUSuggestionsMetadataCacheDataProvider suggestedNamesForDestinationID:contactIdentifiers2 onlySignificant:0 error:&v96];
        v67 = v96;
        v68 = v67;
        if (v67)
        {
          firstObject3 = TUDefaultLog(v67);
          if (os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v102 = v68;
            _os_log_impl(&dword_1956FD000, firstObject3, OS_LOG_TYPE_DEFAULT, "Suggestions: Could not fetch suggested contact via namesForDetail: %@", buf, 0xCu);
          }
        }

        else
        {
          v70 = [v66 count];
          firstObject3 = TUDefaultLog(v70);
          v71 = os_log_type_enabled(firstObject3, OS_LOG_TYPE_DEFAULT);
          if (v70)
          {
            if (v71)
            {
              firstObject2 = [v66 firstObject];
              *buf = 138412546;
              *v102 = firstObject2;
              *&v102[8] = 2112;
              *&v102[10] = contactIdentifiers2;
              _os_log_impl(&dword_1956FD000, firstObject3, OS_LOG_TYPE_DEFAULT, "Suggestions: Found name '%@' for '%@'", buf, 0x16u);
            }

            firstObject3 = [v66 firstObject];
            [(TUCallDisplayContext *)self setSuggestedName:firstObject3];
          }

          else if (v71)
          {
            *buf = 138412290;
            *v102 = contactIdentifiers2;
            _os_log_impl(&dword_1956FD000, firstObject3, OS_LOG_TYPE_DEFAULT, "Suggestions: No suggested names found for '%@'", buf, 0xCu);
          }

          v68 = 0;
        }

LABEL_61:
        isDomestic = [callCopy isDomestic];
        if (isDomestic && ([callCopy handle], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "type"), v74, v75 != 3))
        {
          if ([callCopy isIncoming])
          {
            goto LABEL_71;
          }

          v80 = 1;
        }

        else
        {
          v76 = TUDefaultLog(isDomestic);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            isDomestic2 = [callCopy isDomestic];
            handle7 = [callCopy handle];
            type = [handle7 type];
            *buf = 67109376;
            *v102 = isDomestic2;
            *&v102[4] = 2048;
            *&v102[6] = type;
            _os_log_impl(&dword_1956FD000, v76, OS_LOG_TYPE_DEFAULT, "SNAP Suggestions: Hiding suggested nickname to prevent phishing. (isDomestic = %d, handleType = %ld)", buf, 0x12u);
          }

          if ([callCopy isIncoming])
          {
            goto LABEL_78;
          }

          v80 = 0;
        }

        outgoingCallCallerIDEnabled = [(TUFeatureFlags *)self->_featureFlags outgoingCallCallerIDEnabled];
        if (!v80 || !outgoingCallCallerIDEnabled)
        {
LABEL_78:
          if (([callCopy isIncoming] & 1) != 0 || -[TUFeatureFlags outgoingCallCallerIDEnabled](self->_featureFlags, "outgoingCallCallerIDEnabled"))
          {
            v88 = [TUMetadataDestinationID metadataDestinationIDForCall:callCopy];
            if (v88)
            {
              v89 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
              v90 = [(TUGeoLocationMetadataCacheDataProvider *)v89 locationForMetadataIdentifier:v88];
              if (v90)
              {
                [(TUCallDisplayContext *)self setLabel:v90];
                [(TUCallDisplayContext *)self setLocation:v90];
              }
            }
          }

          goto LABEL_85;
        }

LABEL_71:
        v82 = +[TUNicknamesMetadataCacheDataProvider sharedInstance];
        v83 = [v82 fetchNicknameForHandleValue:contactIdentifiers2];
        if (v83)
        {
          v84 = TUDefaultLog([(TUCallDisplayContext *)self setSuggestedName:v83]);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *v102 = v83;
            *&v102[8] = 2112;
            *&v102[10] = contactIdentifiers2;
            v85 = "SNAP Suggestions: found suggestedNickname: %@ %@";
            v86 = v84;
            v87 = 22;
LABEL_76:
            _os_log_impl(&dword_1956FD000, v86, OS_LOG_TYPE_DEFAULT, v85, buf, v87);
          }
        }

        else
        {
          v84 = TUDefaultLog(0);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v102 = contactIdentifiers2;
            v85 = "SNAP Suggestions: No nicknames found for '%@'";
            v86 = v84;
            v87 = 12;
            goto LABEL_76;
          }
        }

        goto LABEL_78;
      }

      handle5 = [callCopy handle];
      normalizedValue2 = [handle5 normalizedValue];

      contactIdentifiers2 = normalizedValue2;
      v50 = v93;
    }

    if (isInternational)
    {
      goto LABEL_61;
    }

    goto LABEL_48;
  }

LABEL_87:
}

- (void)_initializeAsynchronousStateWithCall:(id)call cacheOnly:(BOOL)only
{
  onlyCopy = only;
  callCopy = call;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  contactIdentifiers = [(TUCallDisplayContext *)self contactIdentifiers];
  if ([contactIdentifiers count] || (objc_msgSend(callCopy, "handle"), (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    handle = [callCopy handle];
    type = [handle type];

    if (type == 2)
    {
      handle2 = [callCopy handle];
      value = [handle2 value];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke;
      v35[3] = &unk_1E7426E90;
      v35[4] = self;
      v13 = callCopy;
      v36 = v13;
      TUMapItemForDestinationID(value, v35);

      if ([v13 isIncoming] && objc_msgSend(v13, "verificationStatus") == 1 && objc_msgSend(v13, "junkConfidence") < 1 || -[TUFeatureFlags outgoingCallCallerIDEnabled](self->_featureFlags, "outgoingCallCallerIDEnabled") && objc_msgSend(v13, "isOutgoing"))
      {
        v14 = +[TUBusinessServicesMetadataDataProvider sharedInstance];
        handle3 = [v13 handle];
        normalizedValue = [handle3 normalizedValue];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_43;
        v31[3] = &unk_1E7426EB8;
        v34 = v37;
        v32 = v13;
        selfCopy = self;
        [v14 fetchBusinessServiceInformationForHandleValue:normalizedValue completion:v31];
      }

      v17 = objc_alloc_init(CUTWeakLinkClass());
      [(TUDynamicCallDisplayContext *)self setCallDirectoryManager:v17];

      v18 = [TUPhoneNumber alloc];
      handle4 = [v13 handle];
      value2 = [handle4 value];
      isoCountryCode = [v13 isoCountryCode];
      v22 = [(TUPhoneNumber *)v18 initWithDigits:value2 countryCode:isoCountryCode];

      unformattedInternationalRepresentation = [(TUPhoneNumber *)v22 unformattedInternationalRepresentation];
      v24 = unformattedInternationalRepresentation;
      if (unformattedInternationalRepresentation)
      {
        value3 = unformattedInternationalRepresentation;
      }

      else
      {
        handle5 = [v13 handle];
        value3 = [handle5 value];
      }

      callDirectoryManager = [(TUDynamicCallDisplayContext *)self callDirectoryManager];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53;
      v28[3] = &unk_1E7426EE0;
      v28[4] = self;
      v30 = v37;
      v29 = v13;
      [callDirectoryManager firstIdentificationEntryForEnabledExtensionWithPhoneNumber:value3 cacheOnly:onlyCopy completionHandler:v28];
    }
  }

  _Block_object_dispose(v37, 8);
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2;
    block[3] = &unk_1E7424FD8;
    v8 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(v4, block);
  }
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found map item %@ for call: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) name];
  [*(a1 + 48) setName:v5];

  v6 = [*(a1 + 32) name];
  [*(a1 + 48) setMapName:v6];

  v7 = [*(a1 + 48) delegate];
  [v7 displayContextChanged:*(a1 + 48)];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_43(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v5 = TUDefaultLog(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Already found call directory identification entry for call: %@, not populating business information.", buf, 0xCu);
    }
  }

  else if (v3)
  {
    v7 = [*(a1 + 40) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_44;
    block[3] = &unk_1E7424FD8;
    v13 = v4;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = v8;
    v15 = v9;
    dispatch_async(v7, block);

    v5 = v13;
  }

  else
  {
    v5 = TUDefaultLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) handle];
      v11 = [v10 value];
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "No business information found for '%@'", buf, 0xCu);
    }
  }
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_44(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v10 = 138412546;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found business item %@ for call: %@", &v10, 0x16u);
  }

  v5 = [*(a1 + 32) name];
  [*(a1 + 48) setLabel:v5];

  v6 = [*(a1 + 32) name];
  [*(a1 + 48) setCompanyName:v6];

  v7 = [*(a1 + 32) department];
  [*(a1 + 48) setCompanyDepartment:v7];

  v8 = [*(a1 + 32) logoURL];
  [*(a1 + 48) setCompanyLogoURL:v8];

  v9 = [*(a1 + 48) delegate];
  [v9 displayContextChanged:*(a1 + 48)];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2_54;
    block[3] = &unk_1E7426328;
    v9 = v5;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v14 = v9;
    v15 = v11;
    v16 = v10;
    dispatch_async(v8, block);

    v12 = v14;
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v12 = TUDefaultLog(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53_cold_1(a1, v7, v12);
    }

    goto LABEL_6;
  }

LABEL_7:
  [*(a1 + 32) setCallDirectoryManager:0];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_2_54(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Found call directory identification entry %@", &v11, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
  v4 = [*(a1 + 32) localizedLabel];
  [*(a1 + 40) setCallDirectoryLabel:v4];

  v5 = [*(a1 + 32) localizedExtensionContainingAppName];
  [*(a1 + 40) setCallDirectoryLocalizedExtensionContainingAppName:v5];

  v6 = [*(a1 + 32) extensionIdentifier];
  [*(a1 + 40) setCallDirectoryExtensionIdentifier:v6];

  v7 = [*(a1 + 32) iconURL];
  [*(a1 + 40) setCompanyLogoURL:v7];

  v8 = [*(a1 + 32) type];
  if (v8 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (v8 == 2);
  }

  [*(a1 + 40) setCallDirectoryIdentityType:v9];
  v10 = [*(a1 + 40) delegate];
  [v10 displayContextChanged:*(a1 + 40)];
}

- (void)updatePredictedNameFromReceptionist:(id)receptionist
{
  v5.receiver = self;
  v5.super_class = TUDynamicCallDisplayContext;
  [(TUCallDisplayContext *)&v5 updatePredictedNameFromReceptionist:receptionist];
  delegate = [(TUDynamicCallDisplayContext *)self delegate];
  [delegate displayContextChanged:self];
}

- (TUDynamicCallDisplayContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"call != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"serialQueue != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:contactIdentifier:serialQueue:contactsDataSource:cacheOnly:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"contactsDataSource != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithCall:(uint64_t)a1 contactIdentifier:(NSObject *)a2 serialQueue:contactsDataSource:cacheOnly:.cold.4(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "TUCall contacts data source is a '%{public}@'", &v5, 0xCu);
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"call != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"serialQueue != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayContext:call:serialQueue:cacheOnly:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_1();
  [v1 handleFailureInMethod:@"displayContext != nil" object:? file:? lineNumber:? description:?];
}

void __78__TUDynamicCallDisplayContext__initializeAsynchronousStateWithCall_cacheOnly___block_invoke_53_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 40) handle];
  v6 = [v5 value];
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1956FD000, a3, OS_LOG_TYPE_ERROR, "Error retrieving call directory first identification entry for phone number %@: %@", &v7, 0x16u);
}

@end