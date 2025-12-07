@interface MCCalDAVAccountPayload
- (BOOL)containsSensitiveUserInformation;
- (MCCalDAVAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error;
- (NSArray)calendarAccountIdentifiers;
- (id)payloadDescriptionKeyValueSections;
- (id)stubDictionary;
- (id)subtitle1Label;
- (id)subtitle2Description;
- (id)subtitle2Label;
- (id)verboseDescription;
@end

@implementation MCCalDAVAccountPayload

- (MCCalDAVAccountPayload)initWithDictionary:(id)dictionary profile:(id)profile outError:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  profileCopy = profile;
  v61.receiver = self;
  v61.super_class = MCCalDAVAccountPayload;
  v10 = [(MCPayload *)&v61 initWithDictionary:dictionaryCopy profile:profileCopy outError:error];
  if (!v10)
  {
    goto LABEL_19;
  }

  v60 = 0;
  v11 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVAccountDescription" isRequired:0 outError:&v60];
  v12 = v60;
  accountDescription = v10->_accountDescription;
  v10->_accountDescription = v11;

  if (v12)
  {
    goto LABEL_10;
  }

  v59 = 0;
  v14 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVUsername" isRequired:0 outError:&v59];
  v12 = v59;
  username = v10->_username;
  v10->_username = v14;

  if (v12)
  {
    goto LABEL_10;
  }

  v58 = 0;
  v16 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVPrincipalURL" isRequired:0 outError:&v58];
  v12 = v58;
  principalURL = v10->_principalURL;
  v10->_principalURL = v16;

  if (v12)
  {
    goto LABEL_10;
  }

  v57 = 0;
  v18 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CalDAVUseSSL" isRequired:0 outError:&v57];
  v12 = v57;
  useSSLNum = v10->_useSSLNum;
  v10->_useSSLNum = v18;

  if (v12)
  {
    goto LABEL_10;
  }

  v20 = v10->_useSSLNum;
  if (!v20)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v22 = v10->_useSSLNum;
    v10->_useSSLNum = v21;

    v20 = v10->_useSSLNum;
  }

  v10->_useSSL = [(NSNumber *)v20 BOOLValue];
  v56 = 0;
  v23 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"CalDAVPort" isRequired:0 outError:&v56];
  v12 = v56;
  portNum = v10->_portNum;
  v10->_portNum = v23;

  if (v12)
  {
    goto LABEL_10;
  }

  v10->_port = [(NSNumber *)v10->_portNum intValue];
  v55 = 0;
  v25 = [dictionaryCopy MCValidateAndRemoveObjectOfClass:objc_opt_class() withKey:@"VPNUUID" isRequired:0 outError:&v55];
  v12 = v55;
  VPNUUID = v10->_VPNUUID;
  v10->_VPNUUID = v25;

  if (v12)
  {
    goto LABEL_10;
  }

  if ([profileCopy isStub])
  {
    v52 = 0;
    v39 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVHostName" isRequired:0 outError:&v52];
    v12 = v52;
    hostname = v10->_hostname;
    v10->_hostname = v39;

    if (v12)
    {
      goto LABEL_10;
    }

    v51 = 0;
    v41 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVAccountPersistentUUID" isRequired:0 outError:&v51];
    v12 = v51;
    accountPersistentUUID = v10->_accountPersistentUUID;
    v10->_accountPersistentUUID = v41;

    if (v12)
    {
      goto LABEL_10;
    }

    v50 = 0;
    v43 = &v50;
    v44 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"ACAccountIdentifier" isRequired:0 outError:&v50];
    v45 = &OBJC_IVAR___MCCalDAVAccountPayload__acAccountIdentifier;
  }

  else
  {
    v54 = 0;
    v46 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVHostName" isRequired:1 outError:&v54];
    v12 = v54;
    v47 = v10->_hostname;
    v10->_hostname = v46;

    if (v12)
    {
LABEL_10:
      v27 = [(MCPayload *)v10 malformedPayloadErrorWithError:v12];
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      v30 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
      {
        v31 = v30;
        v32 = objc_opt_class();
        v33 = v32;
        mCVerboseDescription = [v28 MCVerboseDescription];
        *buf = 138543618;
        v63 = v32;
        v64 = 2114;
        v65 = mCVerboseDescription;
        _os_log_impl(&dword_1A795B000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Can't parse payload: %{public}@", buf, 0x16u);
      }

      v10 = 0;
      goto LABEL_15;
    }

    v53 = 0;
    v43 = &v53;
    v44 = [dictionaryCopy MCValidateAndRemoveNonZeroLengthStringWithKey:@"CalDAVPassword" isRequired:0 outError:&v53];
    v45 = &OBJC_IVAR___MCCalDAVAccountPayload__password;
  }

  v12 = *v43;
  v48 = *v45;
  v49 = *(&v10->super.super.isa + v48);
  *(&v10->super.super.isa + v48) = v44;

  if (v12)
  {
    goto LABEL_10;
  }

LABEL_15:
  if ([dictionaryCopy count])
  {
    v35 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_INFO))
    {
      v36 = v35;
      friendlyName = [(MCPayload *)v10 friendlyName];
      *buf = 138543618;
      v63 = friendlyName;
      v64 = 2114;
      v65 = dictionaryCopy;
      _os_log_impl(&dword_1A795B000, v36, OS_LOG_TYPE_INFO, "Payload “%{public}@” contains ignored fields. They are: %{public}@", buf, 0x16u);
    }
  }

LABEL_19:
  return v10;
}

- (id)verboseDescription
{
  v6.receiver = self;
  v6.super_class = MCCalDAVAccountPayload;
  verboseDescription = [(MCPayload *)&v6 verboseDescription];
  v4 = [verboseDescription mutableCopy];

  if (self->_accountDescription)
  {
    [v4 appendFormat:@"\naccountDescription    : %@", self->_accountDescription];
  }

  if (self->_hostname)
  {
    [v4 appendFormat:@"\nURL                   : %@", self->_hostname];
  }

  if (self->_username)
  {
    [v4 appendFormat:@"\nusername              : %@", self->_username];
  }

  if (self->_password)
  {
    [v4 appendFormat:@"\npassword              : (set)"];
  }

  if (self->_principalURL)
  {
    [v4 appendFormat:@"\nprincipalURL          : %@", self->_principalURL];
  }

  if (self->_useSSL)
  {
    [v4 appendFormat:@"\nuseSSL                : %@", @"YES"];
  }

  if (self->_port)
  {
    [v4 appendFormat:@"\nport                  : %d", self->_port];
  }

  if (self->_VPNUUID)
  {
    [v4 appendFormat:@"\nVPNUUID               : %@", self->_VPNUUID];
  }

  if (self->_accountPersistentUUID)
  {
    [v4 appendFormat:@"\naccountPersistentUUID : %@", self->_accountPersistentUUID];
  }

  if (self->_acAccountIdentifier)
  {
    [v4 appendFormat:@"\naACAccount Identifier : %@", self->_acAccountIdentifier];
  }

  return v4;
}

- (id)stubDictionary
{
  v15.receiver = self;
  v15.super_class = MCCalDAVAccountPayload;
  stubDictionary = [(MCPayload *)&v15 stubDictionary];
  v4 = stubDictionary;
  accountDescription = self->_accountDescription;
  if (accountDescription)
  {
    [stubDictionary setObject:accountDescription forKey:@"CalDAVAccountDescription"];
  }

  hostname = self->_hostname;
  if (hostname)
  {
    [v4 setObject:hostname forKey:@"CalDAVHostName"];
  }

  username = self->_username;
  if (username)
  {
    [v4 setObject:username forKey:@"CalDAVUsername"];
  }

  principalURL = self->_principalURL;
  if (principalURL)
  {
    [v4 setObject:principalURL forKey:@"CalDAVPrincipalURL"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_useSSL];
  [v4 setObject:v9 forKey:@"CalDAVUseSSL"];

  if (self->_port)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
    [v4 setObject:v10 forKey:@"CalDAVPort"];
  }

  VPNUUID = self->_VPNUUID;
  if (VPNUUID)
  {
    [v4 setObject:VPNUUID forKey:@"VPNUUID"];
  }

  accountPersistentUUID = self->_accountPersistentUUID;
  if (accountPersistentUUID)
  {
    [v4 setObject:accountPersistentUUID forKey:@"CalDAVAccountPersistentUUID"];
  }

  acAccountIdentifier = self->_acAccountIdentifier;
  if (acAccountIdentifier)
  {
    [v4 setObject:acAccountIdentifier forKey:@"ACAccountIdentifier"];
  }

  return v4;
}

- (id)subtitle1Label
{
  hostname = [(MCCalDAVAccountPayload *)self hostname];
  if (hostname)
  {
    v3 = @"CALDAV_SERVER_NAME_COLON";
  }

  else
  {
    v3 = @"CALDAV_SERVER_NAME_MISSING";
  }

  v4 = MCLocalizedString(v3);

  return v4;
}

- (id)subtitle2Label
{
  username = [(MCCalDAVAccountPayload *)self username];
  if (username)
  {
    v4 = username;
    hostname = [(MCCalDAVAccountPayload *)self hostname];

    if (hostname)
    {
      username = MCLocalizedString(@"CALDAV_USERNAME_COLON");
    }

    else
    {
      username = 0;
    }
  }

  return username;
}

- (id)subtitle2Description
{
  username = [(MCCalDAVAccountPayload *)self username];
  if (username)
  {
    v4 = username;
    hostname = [(MCCalDAVAccountPayload *)self hostname];

    if (hostname)
    {
      username = [(MCCalDAVAccountPayload *)self username];
    }

    else
    {
      username = 0;
    }
  }

  return username;
}

- (id)payloadDescriptionKeyValueSections
{
  v41[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if (self->_accountDescription)
  {
    v4 = [MCKeyValue alloc];
    accountDescription = self->_accountDescription;
    v6 = MCLocalizedString(@"ACCOUNT_DESCRIPTION");
    v7 = [(MCKeyValue *)v4 initWithLocalizedString:accountDescription localizedKey:v6];

    [v3 addObject:v7];
  }

  if (self->_hostname)
  {
    v8 = [MCKeyValue alloc];
    hostname = self->_hostname;
    v10 = MCLocalizedString(@"SERVER");
    v11 = [(MCKeyValue *)v8 initWithLocalizedString:hostname localizedKey:v10];

    [v3 addObject:v11];
  }

  if (self->_username)
  {
    v12 = [MCKeyValue alloc];
    username = self->_username;
    v14 = MCLocalizedString(@"USERNAME");
    v15 = [(MCKeyValue *)v12 initWithLocalizedString:username localizedKey:v14];

    [v3 addObject:v15];
  }

  if (self->_password)
  {
    v16 = [MCKeyValue alloc];
    v17 = MCLocalizedString(@"PRESENT");
    v18 = MCLocalizedString(@"PASSWORD");
    v19 = [(MCKeyValue *)v16 initWithLocalizedString:v17 localizedKey:v18];

    [v3 addObject:v19];
  }

  if (self->_principalURL)
  {
    v20 = [MCKeyValue alloc];
    principalURL = self->_principalURL;
    v22 = MCLocalizedString(@"PRINCIPAL_URL");
    v23 = [(MCKeyValue *)v20 initWithLocalizedString:principalURL localizedKey:v22];

    [v3 addObject:v23];
  }

  if (self->_useSSLNum)
  {
    v24 = [MCKeyValue alloc];
    v25 = MCLocalizedStringForBool([(NSNumber *)self->_useSSLNum BOOLValue]);
    v26 = MCLocalizedString(@"USES_SSL");
    v27 = [(MCKeyValue *)v24 initWithLocalizedString:v25 localizedKey:v26];

    [v3 addObject:v27];
  }

  portNum = self->_portNum;
  if (portNum)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", -[NSNumber intValue](portNum, "intValue")];
    v30 = [MCKeyValue alloc];
    v31 = MCLocalizedString(@"PORT");
    v32 = [(MCKeyValue *)v30 initWithLocalizedString:v29 localizedKey:v31];

    [v3 addObject:v32];
  }

  if (self->_VPNUUID)
  {
    v33 = [MCKeyValue alloc];
    VPNUUID = self->_VPNUUID;
    v35 = MCLocalizedString(@"ACCOUNT_VPNUUID");
    v36 = [(MCKeyValue *)v33 initWithLocalizedString:VPNUUID localizedKey:v35];

    [v3 addObject:v36];
  }

  if ([v3 count] && (+[MCKeyValueSection sectionWithKeyValues:](MCKeyValueSection, "sectionWithKeyValues:", v3), (v37 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v38 = v37;
    v41[0] = v37;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (BOOL)containsSensitiveUserInformation
{
  v6.receiver = self;
  v6.super_class = MCCalDAVAccountPayload;
  if ([(MCPayload *)&v6 containsSensitiveUserInformation])
  {
    return 1;
  }

  password = [(MCCalDAVAccountPayload *)self password];
  v3 = password != 0;

  return v3;
}

- (NSArray)calendarAccountIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (self->_acAccountIdentifier)
  {
    v4[0] = self->_acAccountIdentifier;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end