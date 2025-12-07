@interface SOConfiguration
+ (id)stringWithHandleResult:(int64_t)result;
- (BOOL)_matchHost:(id)host inCredentialProfile:(id)profile;
- (BOOL)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier;
- (SOConfiguration)initWithCoder:(id)coder;
- (SOConfiguration)initWithProfiles:(id)profiles;
- (id)_profileForURLWithHostScheme:(id)scheme;
- (id)_profileForURLWithRealmScheme:(id)scheme;
- (id)_profileForURLWithSSOIDScheme:(id)scheme;
- (id)_profileForURLWithStandardScheme:(id)scheme isCredential:(BOOL)credential;
- (id)profileForURL:(id)l responseCode:(int64_t)code;
- (id)realms;
- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier profile:(id *)profile;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SOConfiguration

- (SOConfiguration)initWithProfiles:(id)profiles
{
  v25 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v6 = SO_LOG_SOConfiguration(profilesCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = "[SOConfiguration initWithProfiles:]";
    v23 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v19.receiver = self;
  v19.super_class = SOConfiguration;
  v7 = [(SOConfiguration *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_profiles, profiles);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = v8->_profiles;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) preLoadURLData];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (BOOL)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier
{
  lCopy = l;
  v22 = 0;
  v9 = [(SOConfiguration *)self willHandleURL:lCopy responseCode:code callerBundleIdentifier:identifier profile:&v22];
  v10 = v22;
  v11 = v10;
  if (v9)
  {
    v12 = 0;
    goto LABEL_13;
  }

  if ([v10 type] != 2)
  {
    goto LABEL_12;
  }

  v12 = 1;
  if (code != 401 && code != 407)
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];
    if ([lowercaseString isEqualToString:@"host"])
    {
LABEL_9:

      v12 = 1;
LABEL_10:

      goto LABEL_13;
    }

    scheme2 = [lCopy scheme];
    lowercaseString2 = [scheme2 lowercaseString];
    if ([lowercaseString2 isEqualToString:@"realm"])
    {

      goto LABEL_9;
    }

    scheme3 = [lCopy scheme];
    lowercaseString3 = [scheme3 lowercaseString];
    v19 = [lowercaseString3 isEqualToString:@"ssoid"];

    if ((v19 & 1) == 0)
    {
      scheme = SO_LOG_SOConfiguration(v20);
      if (os_log_type_enabled(scheme, OS_LOG_TYPE_ERROR))
      {
        [SOConfiguration willHandleURL:code responseCode:scheme callerBundleIdentifier:?];
      }

      v12 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v12 = 1;
  }

LABEL_13:

  return v12;
}

- (int64_t)willHandleURL:(id)l responseCode:(int64_t)code callerBundleIdentifier:(id)identifier profile:(id *)profile
{
  v26 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = [(SOConfiguration *)self profileForURL:l responseCode:code];
  v12 = v11;
  if (!v11)
  {
    v17 = 1;
    goto LABEL_17;
  }

  if (!identifierCopy)
  {
    goto LABEL_14;
  }

  extensionBundleIdentifier = [v11 extensionBundleIdentifier];
  if ([extensionBundleIdentifier isEqualToString:identifierCopy])
  {
    type = [v12 type];

    if (type != 2)
    {
      v16 = SO_LOG_SOConfiguration(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v24 = 138543362;
        v25 = identifierCopy;
        _os_log_impl(&dword_1CA238000, v16, OS_LOG_TYPE_INFO, "breaking calling recursion for caller with bundleIdentifier: %{public}@", &v24, 0xCu);
      }

      v17 = 2;
      goto LABEL_17;
    }
  }

  else
  {
  }

  deniedBundleIdentifiers = [v12 deniedBundleIdentifiers];
  v19 = [deniedBundleIdentifiers containsObject:identifierCopy];

  if (!v19)
  {
LABEL_14:
    if (profile)
    {
      v22 = v12;
      v17 = 0;
      *profile = v12;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_17;
  }

  v21 = SO_LOG_SOConfiguration(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v24 = 138543362;
    v25 = identifierCopy;
    _os_log_impl(&dword_1CA238000, v21, OS_LOG_TYPE_INFO, "denied caller with bundleIdentifier: %{public}@", &v24, 0xCu);
  }

  v17 = 3;
LABEL_17:

  return v17;
}

- (id)profileForURL:(id)l responseCode:(int64_t)code
{
  lCopy = l;
  scheme = [lCopy scheme];
  v8 = [scheme isEqualToString:@"ssoid"];

  if (v8)
  {
    v9 = [(SOConfiguration *)self _profileForURLWithSSOIDScheme:lCopy];
  }

  else
  {
    scheme2 = [lCopy scheme];
    v11 = [scheme2 isEqualToString:@"host"];

    if (v11)
    {
      v9 = [(SOConfiguration *)self _profileForURLWithHostScheme:lCopy];
    }

    else
    {
      scheme3 = [lCopy scheme];
      v13 = [scheme3 isEqualToString:@"realm"];

      if (v13)
      {
        v9 = [(SOConfiguration *)self _profileForURLWithRealmScheme:lCopy];
      }

      else
      {
        v15 = code == 401 || code == 407;
        v9 = [(SOConfiguration *)self _profileForURLWithStandardScheme:lCopy isCredential:v15];
      }
    }
  }

  v16 = v9;

  return v16;
}

- (id)realms
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = SO_LOG_SOConfiguration(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[SOConfiguration realms]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          realm = [v10 realm];

          if (realm)
          {
            realm2 = [v10 realm];
            [array addObject:realm2];
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_profileForURLWithStandardScheme:(id)scheme isCredential:(BOOL)credential
{
  credentialCopy = credential;
  v45 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = self->_profiles;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    v33 = v7;
    v34 = schemeCopy;
    v31 = credentialCopy;
    v29 = *v40;
    selfCopy = self;
    while (2)
    {
      v11 = 0;
      v32 = v9;
      do
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * v11);
        absoluteString = [schemeCopy absoluteString];
        if ([v12 type] == 1 && !credentialCopy && objc_msgSend(v12, "matchesURL:", absoluteString))
        {
LABEL_32:
          v28 = v12;
LABEL_27:

          goto LABEL_29;
        }

        if ([v12 type] == 2 && credentialCopy)
        {
          host = [schemeCopy host];
          v16 = [(SOConfiguration *)self _matchHost:host inCredentialProfile:v12];

          if (v16)
          {
            goto LABEL_32;
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          uRLPrefix = [v12 URLPrefix];
          v18 = [uRLPrefix countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v36;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v36 != v20)
                {
                  objc_enumerationMutation(uRLPrefix);
                }

                v22 = *(*(&v35 + 1) + 8 * i);
                lowercaseString = [absoluteString lowercaseString];
                lowercaseString2 = [v22 lowercaseString];
                v25 = [lowercaseString hasPrefix:lowercaseString2];

                if (v25)
                {
                  v26 = v12;

                  v7 = v33;
                  schemeCopy = v34;
                  goto LABEL_27;
                }
              }

              v19 = [uRLPrefix countByEnumeratingWithState:&v35 objects:v43 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          v7 = v33;
          schemeCopy = v34;
          credentialCopy = v31;
          v10 = v29;
          self = selfCopy;
          v9 = v32;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v39 objects:v44 count:16];
      v12 = 0;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_29:

  return v12;
}

- (id)_profileForURLWithHostScheme:(id)scheme
{
  v20 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          host = [schemeCopy host];
          v12 = [(SOConfiguration *)self _matchHost:host inCredentialProfile:v10];

          if (v12)
          {
            v13 = v10;
            goto LABEL_12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)_matchHost:(id)host inCredentialProfile:(id)profile
{
  v26 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [profile hosts];
  v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 hasPrefix:@"."];
        lowercaseString = [hostCopy lowercaseString];
        lowercaseString2 = [v10 lowercaseString];
        if (v11)
        {
          if ([lowercaseString hasSuffix:lowercaseString2])
          {
            lowercaseString3 = [hostCopy lowercaseString];
            lowercaseString4 = [v10 lowercaseString];
            v16 = [lowercaseString3 isEqualToString:lowercaseString4];

            if ((v16 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        else
        {
          v17 = [lowercaseString isEqualToString:lowercaseString2];

          if (v17)
          {
LABEL_16:
            v18 = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_17:

  return v18;
}

- (id)_profileForURLWithRealmScheme:(id)scheme
{
  v23 = *MEMORY[0x1E69E9840];
  host = [scheme host];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = self->_profiles;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          realm = [v9 realm];
          lowercaseString = [realm lowercaseString];
          lowercaseString2 = [host lowercaseString];
          v13 = [lowercaseString isEqualToString:lowercaseString2];

          if (v13 & 1) != 0 || ([MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v6], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", host), v14, (v15))
          {
            v5 = v9;
            goto LABEL_14;
          }

          v6 = (v6 + 1);
        }
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v5;
}

- (id)_profileForURLWithSSOIDScheme:(id)scheme
{
  v19 = *MEMORY[0x1E69E9840];
  schemeCopy = scheme;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_profiles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        extensionBundleIdentifier = [v9 extensionBundleIdentifier];
        host = [schemeCopy host];
        v12 = [extensionBundleIdentifier isEqualToString:host];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (SOConfiguration)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SOConfiguration;
  v5 = [(SOConfiguration *)&v23 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = NSStringFromSelector(sel_profiles);
    v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
    v11 = [v10 copy];
    profiles = v5->_profiles;
    v5->_profiles = v11;

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = v5->_profiles;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v19 + 1) + 8 * v17++) preLoadURLData];
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v15);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  profiles = self->_profiles;
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_profiles);
  [coderCopy encodeObject:profiles forKey:v5];
}

+ (id)stringWithHandleResult:(int64_t)result
{
  if (result >= 4)
  {
    result = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown, code: %u", result];
  }

  else
  {
    result = off_1E836D068[result];
  }

  return result;
}

- (void)willHandleURL:(int)a1 responseCode:(NSObject *)a2 callerBundleIdentifier:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1CA238000, a2, OS_LOG_TYPE_ERROR, "invalid response code %u, expected 401 or 407", v2, 8u);
}

@end