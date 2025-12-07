@interface MCMUserIdentity
+ (BOOL)isUserIdentityRequiredForContainerClass:(unint64_t)class;
+ (MCMUserIdentity)userIdentityWithPlist:(id)plist cache:(id)cache error:(unint64_t *)error;
+ (id)_identifierForPOSIXUID:(unsigned int)d personaUniqueString:(id)string personaType:(int)type;
- (BOOL)homeDirectoryExists;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUserIdentity:(id)identity;
- (BOOL)isStrictlyEqualToUserIdentity:(id)identity;
- (MCMUserIdentity)init;
- (MCMUserIdentity)initWithPOSIXUser:(id)user homeDirectoryURL:(id)l personaUniqueString:(id)string personaType:(int)type kernelPersonaID:(unsigned int)d;
- (MCMUserIdentity)initWithPlist:(id)plist cache:(id)cache error:(unint64_t *)error;
- (MCMUserIdentity)initWithVersion1PlistDictionary:(id)dictionary cache:(id)cache error:(unint64_t *)error;
- (MCMUserIdentity)initWithVersion2PlistDictionary:(id)dictionary cache:(id)cache error:(unint64_t *)error;
- (MCMUserIdentity)userIdentityWithPOSIXUser:(id)user;
- (NSString)shortDescription;
- (id)_descriptionForPersonaType:(int)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)plist;
- (int)kernelPersonaType;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MCMUserIdentity

- (unint64_t)hash
{
  identifier = self->_identifier;

  return [(NSString *)identifier hash];
}

- (MCMUserIdentity)init
{
  v3 = containermanager_copy_global_configuration();
  defaultUser = [v3 defaultUser];

  homeDirectoryURL = [defaultUser homeDirectoryURL];
  v6 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](self, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", defaultUser, homeDirectoryURL, 0, 2, [defaultUser UID]);

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if ((self->_extensionHandle & 0x8000000000000000) == 0)
  {
    sandbox_extension_release();
    self->_extensionHandle = -1;
  }

  v3.receiver = self;
  v3.super_class = MCMUserIdentity;
  [(MCMUserIdentity *)&v3 dealloc];
}

- (NSString)shortDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MCMUserIdentity_shortDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __35__MCMUserIdentity_shortDescription__block_invoke(uint64_t a1, char a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) posixUser];
  v6 = [v5 UID];
  v7 = [*(a1 + 32) posixUser];
  v8 = [v7 primaryGID];
  if (a2)
  {
    v9 = @"~~";
  }

  else
  {
    v9 = [*(a1 + 32) identifier];
  }

  v10 = [v4 stringWithFormat:@"<%u/%u/%@/%d/%d>", v6, v8, v9, objc_msgSend(*(a1 + 32), "personaType"), objc_msgSend(*(a1 + 32), "kernelPersonaID")];
  if ((a2 & 1) == 0)
  {
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(MCMPOSIXUser *)self->_posixUser copyWithZone:zone];
    v7 = *(v5 + 56);
    *(v5 + 56) = v6;

    v8 = [(NSString *)self->_identifier copyWithZone:zone];
    v9 = *(v5 + 48);
    *(v5 + 48) = v8;

    v10 = [(NSURL *)self->_homeDirectoryURL copyWithZone:zone];
    v11 = *(v5 + 8);
    *(v5 + 8) = v10;

    v12 = [(NSString *)self->_personaUniqueString copyWithZone:zone];
    v13 = *(v5 + 32);
    *(v5 + 32) = v12;

    *(v5 + 24) = self->_personaType;
    *(v5 + 20) = self->_kernelPersonaID;
  }

  return v5;
}

- (BOOL)isStrictlyEqualToUserIdentity:(id)identity
{
  identityCopy = identity;
  if ([(MCMUserIdentity *)self isEqualToUserIdentity:identityCopy])
  {
    v5 = self->_personaType == identityCopy[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MCMUserIdentity *)self isEqualToUserIdentity:v5];
  }

  return v6;
}

- (BOOL)isEqualToUserIdentity:(id)identity
{
  identifier = self->_identifier;
  v4 = *(identity + 6);

  return [(NSString *)identifier isEqual:v4];
}

- (id)_descriptionForPersonaType:(int)type
{
  if (type > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E86B0530[type];
  }
}

- (id)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__MCMUserIdentity_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __30__MCMUserIdentity_description__block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) homeDirectoryURL];
  v5 = [v4 path];

  v6 = [*(a1 + 32) posixUser];
  v7 = [v6 homeDirectoryURL];
  v8 = [v7 path];

  v26 = v8;
  v9 = [(__CFString *)v5 isEqualToString:v8];
  if ((v9 & 1) != 0 || a2)
  {
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = @"<cm-redacted>";
    }

    v5 = v10;
  }

  v23 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v25 = NSStringFromClass(v11);
  v12 = *(a1 + 32);
  v13 = [v12 posixUser];
  v24 = v13;
  if (a2)
  {
    [v13 redactedDescription];
  }

  else
  {
    [v13 description];
  }
  v14 = ;
  v15 = [*(a1 + 32) identifier];
  if (v5)
  {
    v16 = ", homeDirectoryURL = [";
  }

  else
  {
    v16 = "";
  }

  if (v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = &stru_1F5A5B2B8;
  }

  if (v5)
  {
    v18 = "]";
  }

  else
  {
    v18 = "";
  }

  v19 = [*(a1 + 32) _descriptionForPersonaType:{objc_msgSend(*(a1 + 32), "personaType")}];
  v20 = [*(a1 + 32) personaUniqueString];
  v21 = [v23 stringWithFormat:@"<%@: %p posixUser = %@, identifier = %@%s%@%s, personaType = %@, personaUniqueString = %@, kernelPersonaID = %d>", v25, v12, v14, v15, v16, v17, v18, v19, v20, objc_msgSend(*(a1 + 32), "kernelPersonaID")];;

  return v21;
}

- (int)kernelPersonaType
{
  result = self->_kernelPersonaType;
  if (!result)
  {
    if (kpersona_info())
    {
      return self->_kernelPersonaType;
    }

    else
    {
      result = 0;
      self->_kernelPersonaType = 0;
    }
  }

  return result;
}

- (MCMUserIdentity)userIdentityWithPOSIXUser:(id)user
{
  userCopy = user;
  personaUniqueString = [(MCMUserIdentity *)self personaUniqueString];
  homeDirectoryURL = [(MCMUserIdentity *)self homeDirectoryURL];
  if (![(MCMUserIdentity *)self isDataSeparated])
  {
    homeDirectoryURL2 = [userCopy homeDirectoryURL];

    homeDirectoryURL = homeDirectoryURL2;
  }

  v8 = [[MCMUserIdentity alloc] initWithPOSIXUser:userCopy homeDirectoryURL:homeDirectoryURL personaUniqueString:personaUniqueString personaType:[(MCMUserIdentity *)self personaType] kernelPersonaID:[(MCMUserIdentity *)self kernelPersonaID]];

  return v8;
}

- (BOOL)homeDirectoryExists
{
  v3 = +[MCMFileManager defaultManager];
  homeDirectoryURL = [(MCMUserIdentity *)self homeDirectoryURL];
  LOBYTE(self) = [v3 itemExistsAtURL:homeDirectoryURL];

  return self;
}

- (id)plist
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"posixUID";
  v3 = MEMORY[0x1E696AD98];
  posixUser = [(MCMUserIdentity *)self posixUser];
  v5 = [v3 numberWithUnsignedInt:{objc_msgSend(posixUser, "UID")}];
  v17[0] = v5;
  v16[1] = @"posixGID";
  v6 = MEMORY[0x1E696AD98];
  posixUser2 = [(MCMUserIdentity *)self posixUser];
  v8 = [v6 numberWithUnsignedInt:{objc_msgSend(posixUser2, "primaryGID")}];
  v17[1] = v8;
  v16[2] = @"type";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MCMUserIdentity personaType](self, "personaType")}];
  v16[3] = @"version";
  v17[2] = v9;
  v17[3] = @"2";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v11 = [v10 mutableCopy];

  personaUniqueString = [(MCMUserIdentity *)self personaUniqueString];

  if (personaUniqueString)
  {
    personaUniqueString2 = [(MCMUserIdentity *)self personaUniqueString];
    [v11 setObject:personaUniqueString2 forKeyedSubscript:@"personaUniqueString"];
  }

  v14 = [v11 copy];

  return v14;
}

- (MCMUserIdentity)initWithVersion2PlistDictionary:(id)dictionary cache:(id)cache error:(unint64_t *)error
{
  v36[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  v9 = [dictionaryCopy objectForKeyedSubscript:@"posixUID"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"posixGID"];
  v32 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"personaUniqueString"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v34 = @"posixUID";
      *&v34[8] = 2112;
      *v35 = objc_opt_class();
      *&v35[8] = 2112;
      v36[0] = dictionaryCopy;
      v27 = *v35;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_23;
  }

  unsignedIntegerValue = [v9 unsignedIntegerValue];
  if (!v10 || (v13 = unsignedIntegerValue, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v24 = container_log_handle_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v34 = @"posixGID";
      *&v34[8] = 2112;
      *v35 = objc_opt_class();
      *&v35[8] = 2112;
      v36[0] = dictionaryCopy;
      v28 = *v35;
      _os_log_error_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_27;
  }

  unsignedIntegerValue2 = [v10 unsignedIntegerValue];
  v14 = [MCMPOSIXUser posixUserWithUID:v13];
  if (!v14)
  {
    v23 = container_log_handle_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      *v34 = unsignedIntegerValue2;
      *&v34[4] = 1024;
      *&v34[6] = v13;
      strcpy(v35, "@\b");
      v35[3] = 0;
      *&v35[4] = 0;
      *&v35[6] = 0;
      LOWORD(v36[0]) = 2112;
      *(v36 + 2) = dictionaryCopy;
      _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Could not get matching uid passwd data. gid: %u, uid: %u, User: %@, Data: %@", buf, 0x22u);
    }

LABEL_23:

LABEL_27:
    v15 = 0;
LABEL_28:
    v18 = 0;
    v19 = 75;
    v16 = v32;
LABEL_29:
    if (!error)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v15 = v14;
  v16 = v32;
  if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v34 = @"type";
      *&v34[8] = 2112;
      *v35 = objc_opt_class();
      *&v35[8] = 2112;
      v36[0] = dictionaryCopy;
      v29 = *v35;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", buf, 0x20u);
    }

    goto LABEL_35;
  }

  unsignedIntegerValue3 = [v32 unsignedIntegerValue];
  if (unsignedIntegerValue3 >= 4)
  {
    v26 = container_log_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *v34 = @"type";
      *&v34[8] = 2112;
      *v35 = v32;
      *&v35[8] = 2112;
      v36[0] = dictionaryCopy;
      _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected persona type for %@, got %@. Data: %@", buf, 0x20u);
    }

LABEL_35:

    goto LABEL_28;
  }

  if (v11 && unsignedIntegerValue3 == 1)
  {
    v18 = [cacheCopy userIdentityForPersonaUniqueString:v11 POSIXUser:v15];
    if (MCMPersonasAreSupported_onceToken != -1)
    {
      dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
    }

    v19 = 1;
    if (MCMPersonasAreSupported_staticPersonasSupported == 1 && v18)
    {
      if (![(MCMUserIdentity *)v18 isDataSeparated])
      {
        v20 = containermanager_copy_global_configuration();
        v21 = [v20 dispositionForContainerClass:2];

        if (v21 == 1)
        {
          v22 = container_log_handle_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *v34 = v11;
            *&v34[8] = 2112;
            *v35 = v18;
            *&v35[8] = 2112;
            v36[0] = dictionaryCopy;
            _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected %@ to be data separated, but it was not: %@; Data: %@", buf, 0x20u);
          }
        }

        v16 = v32;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v18 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:v15];
  v19 = 1;
  if (!error)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (!v18)
  {
    *error = v19;
  }

LABEL_32:

  return v18;
}

- (MCMUserIdentity)initWithVersion1PlistDictionary:(id)dictionary cache:(id)cache error:(unint64_t *)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  cacheCopy = cache;
  v10 = [dictionaryCopy objectForKeyedSubscript:@"posixUID"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"posixGID"];
  v12 = [dictionaryCopy objectForKeyedSubscript:@"personaIdentifier"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      *v28 = @"posixUID";
      *&v28[8] = 2112;
      *v29 = objc_opt_class();
      *&v29[8] = 2112;
      v30[0] = dictionaryCopy;
      v24 = *v29;
      _os_log_error_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", &v27, 0x20u);
    }

LABEL_15:
    v17 = 0;
    v19 = 0;
    v22 = 75;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  if (!v11 || (v14 = unsignedIntegerValue, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 138412802;
      *v28 = @"posixGID";
      *&v28[8] = 2112;
      *v29 = objc_opt_class();
      *&v29[8] = 2112;
      v30[0] = dictionaryCopy;
      v26 = *v29;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Expected number for %@, got %@. Data: %@", &v27, 0x20u);
    }

    goto LABEL_14;
  }

  unsignedIntegerValue2 = [v11 unsignedIntegerValue];
  v16 = [MCMPOSIXUser posixUserWithUID:v14];
  if (!v16)
  {
    v25 = v14;
    v21 = container_log_handle_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109890;
      *v28 = unsignedIntegerValue2;
      *&v28[4] = 1024;
      *&v28[6] = v25;
      strcpy(v29, "@\b");
      v29[3] = 0;
      *&v29[4] = 0;
      *&v29[6] = 0;
      LOWORD(v30[0]) = 2112;
      *(v30 + 2) = dictionaryCopy;
      _os_log_error_impl(&dword_1DF2C3000, v21, OS_LOG_TYPE_ERROR, "Invalid user identity plist data. Could not get matching uid passwd data. gid: %u, uid: %u, User: %@, Data: %@", &v27, 0x22u);
    }

LABEL_14:

    goto LABEL_15;
  }

  v17 = v16;
  if (v12)
  {
    v18 = [cacheCopy userIdentityForPersonaUniqueString:v12 POSIXUser:v16];
    if (v18)
    {
      v19 = v18;
      goto LABEL_18;
    }
  }

  v19 = [cacheCopy userIdentityForPersonalPersonaWithPOSIXUser:v17];
  v22 = 1;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (!v19)
  {
    *error = v22;
  }

LABEL_18:

  return v19;
}

- (MCMUserIdentity)initWithPlist:(id)plist cache:(id)cache error:(unint64_t *)error
{
  plistCopy = plist;
  cacheCopy = cache;
  if (plistCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = plistCopy;
      v11 = [v10 objectForKeyedSubscript:@"version"];
      v12 = [v11 isEqual:@"2"];

      if (v12)
      {
        v13 = [(MCMUserIdentity *)self initWithVersion2PlistDictionary:v10 cache:cacheCopy error:error];
      }

      else
      {
        v14 = [v10 objectForKeyedSubscript:@"version"];
        v15 = [v14 isEqual:@"1"];

        if (!v15)
        {
LABEL_8:

          goto LABEL_9;
        }

        v13 = [(MCMUserIdentity *)self initWithVersion1PlistDictionary:v10 cache:cacheCopy error:error];
      }

      self = v13;
      goto LABEL_8;
    }
  }

LABEL_9:

  return self;
}

- (MCMUserIdentity)initWithPOSIXUser:(id)user homeDirectoryURL:(id)l personaUniqueString:(id)string personaType:(int)type kernelPersonaID:(unsigned int)d
{
  v8 = *&type;
  v27 = *MEMORY[0x1E69E9840];
  userCopy = user;
  lCopy = l;
  stringCopy = string;
  if (userCopy)
  {
    if (lCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_FAULT, "POSIX user cannot be nil", buf, 2u);
  }

  if (!lCopy)
  {
LABEL_7:
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v26 = userCopy;
      _os_log_fault_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_FAULT, "Home directory cannot be nil, user '%@'", buf, 0xCu);
    }
  }

LABEL_10:
  v18 = [objc_opt_class() _identifierForPOSIXUID:objc_msgSend(userCopy personaUniqueString:"UID") personaType:{stringCopy, v8}];
  if (v18)
  {
    v24.receiver = self;
    v24.super_class = MCMUserIdentity;
    v19 = [(MCMUserIdentity *)&v24 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_posixUser, user);
      objc_storeStrong(&v20->_personaUniqueString, string);
      v20->_personaType = v8;
      objc_storeStrong(&v20->_identifier, v18);
      objc_storeStrong(&v20->_homeDirectoryURL, l);
      v20->_extensionHandle = -1;
      v20->_kernelPersonaType = 0;
      v20->_kernelPersonaID = d;
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v26 = userCopy;
      _os_log_fault_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_FAULT, "Computed nil identifier, user '%@'", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_identifierForPOSIXUID:(unsigned int)d personaUniqueString:(id)string personaType:(int)type
{
  v6 = *&d;
  stringCopy = string;
  v8 = stringCopy;
  if (stringCopy && type == 1)
  {
    v9 = stringCopy;
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v6];
  }

  v10 = v9;

  return v10;
}

+ (BOOL)isUserIdentityRequiredForContainerClass:(unint64_t)class
{
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 isGlobalBundleContainerWithContainerClass:class];

  if (v5)
  {
    return 0;
  }

  v7 = containermanager_copy_global_configuration();
  v8 = [v7 isGlobalSystemContainerWithContainerClass:class];

  return v8 ^ 1;
}

+ (MCMUserIdentity)userIdentityWithPlist:(id)plist cache:(id)cache error:(unint64_t *)error
{
  cacheCopy = cache;
  plistCopy = plist;
  v10 = [[self alloc] initWithPlist:plistCopy cache:cacheCopy error:error];

  return v10;
}

@end