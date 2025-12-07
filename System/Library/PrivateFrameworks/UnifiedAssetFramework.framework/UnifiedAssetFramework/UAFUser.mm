@interface UAFUser
+ (BOOL)isMultiUser;
+ (BOOL)isSystemUser:(id)user error:(id *)error;
+ (BOOL)isSystemUserUsingUID:(unsigned int)d;
+ (BOOL)umEntitlementPresent;
+ (id)currentConsoleUserWithUID:(unsigned int *)d;
+ (id)currentUserWithNode:(id *)node error:(id *)error;
+ (id)nameForUser:(id)user error:(id *)error;
+ (id)nodeForUser:(id)user error:(id *)error;
+ (id)pwdNameForUser:(id)user error:(id *)error;
+ (id)pwdNodeForUser:(id)user error:(id *)error;
+ (id)pwdUIDToUserID:(unsigned int)d;
+ (id)pwdUserWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error;
+ (id)systemUserWithNode:(id *)node error:(id *)error;
+ (id)umCurrentUMUserWithNode:(id *)node error:(id *)error;
+ (id)umNameForUser:(id)user error:(id *)error;
+ (id)umNodeForUser:(id)user error:(id *)error;
+ (id)umUserWithDSID:(id)d withUid:(unsigned int)uid withError:(id *)error;
+ (id)umUserWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error;
+ (id)userWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error;
+ (id)validLocalNode;
+ (id)validLocalUsers:(id)users error:(id *)error;
+ (id)validNodesWithError:(id *)error;
+ (unsigned)pwdUserIDToUID:(id)d withError:(id *)error;
@end

@implementation UAFUser

+ (BOOL)isMultiUser
{
  v2 = +[UAFConfiguration sharedIpadSupported];
  if (v2)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

    LOBYTE(v2) = isSharedIPad;
  }

  return v2;
}

+ (BOOL)umEntitlementPresent
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  isSharedIPad = [mEMORY[0x1E69DF068] isSharedIPad];

  mEMORY[0x1E69DF068]2 = [MEMORY[0x1E69DF068] sharedManager];
  loginUser = [mEMORY[0x1E69DF068]2 loginUser];

  if (isSharedIPad)
  {
    alternateDSID = [loginUser alternateDSID];
    LOBYTE(isSharedIPad) = alternateDSID != 0;
  }

  return isSharedIPad;
}

+ (id)umUserWithDSID:(id)d withUid:(unsigned int)uid withError:(id *)error
{
  v6 = *&uid;
  v47 = *MEMORY[0x1E69E9840];
  dCopy = d;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  if (dCopy)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot find user with dsid %@", dCopy];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot find user with uid %u", v6];
  }
  v9 = ;
  if ([objc_opt_class() umEntitlementPresent])
  {
    errorCopy = error;
    loginUser = [mEMORY[0x1E69DF068] loginUser];
    v11 = loginUser;
    if (dCopy)
    {
      alternateDSID = [loginUser alternateDSID];
      v13 = [dCopy isEqualToString:alternateDSID];

      if (v13)
      {
LABEL_7:
        loginUser2 = [mEMORY[0x1E69DF068] loginUser];
        v15 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v21 = [loginUser uid];

      if (v21 == v6)
      {
        goto LABEL_7;
      }
    }

    v32 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    allUsers = [mEMORY[0x1E69DF068] allUsers];
    v23 = [allUsers countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(allUsers);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          if (dCopy)
          {
            alternateDSID2 = [v27 alternateDSID];
            v29 = [dCopy isEqualToString:alternateDSID2];

            if (v29)
            {
              goto LABEL_27;
            }
          }

          else if ([v27 uid] == v6)
          {
LABEL_27:
            loginUser2 = v27;

            v15 = 0;
            v9 = v32;
            goto LABEL_28;
          }
        }

        v24 = [allUsers countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v30 = MEMORY[0x1E696ABC0];
    v9 = v32;
    v38 = *MEMORY[0x1E696A578];
    v39 = v32;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v15 = [v30 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v18];
    error = errorCopy;
  }

  else
  {
    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "+[UAFUser umUserWithDSID:withUid:withError:]";
      v45 = 2112;
      v46 = v9;
      _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Process is not entitled to UMUserManager framework. %@", buf, 0x16u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled to UMUserManager framework. %@", v9];
    v42 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v15 = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7000 userInfo:v19];
  }

  if (error)
  {
    v20 = v15;
    loginUser2 = 0;
    *error = v15;
  }

  else
  {
    loginUser2 = 0;
  }

LABEL_28:

  return loginUser2;
}

+ (id)umCurrentUMUserWithNode:(id *)node error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];

  alternateDSID = [currentUser alternateDSID];

  if (alternateDSID)
  {
    v9 = 0;
    if (!node)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if ([objc_opt_class() umEntitlementPresent])
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current user ID is nil in UMUserManager framework", *MEMORY[0x1E696A578]];
    v20 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = v12;
    v16 = 7001;
  }

  else
  {
    v17 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "+[UAFUser umCurrentUMUserWithNode:error:]";
      _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s Process is not entitled to UMUserManager framework. Cannot determine current user", buf, 0xCu);
    }

    v18 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Process is not entitled to UMUserManager framework"];
    v22 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = v18;
    v16 = 7000;
  }

  v9 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v16 userInfo:v14];

  if (node)
  {
LABEL_3:
    *node = @"UMMultiUserNode";
  }

LABEL_4:
  if (error)
  {
    v10 = v9;
    *error = v9;
  }

  return currentUser;
}

+ (id)umUserWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error
{
  v6 = [objc_opt_class() umUserWithDSID:0 withUid:*&uid withError:error];
  v7 = v6;
  if (v6)
  {
    if (d)
    {
      *d = @"UMMultiUserNode";
    }

    alternateDSID = [v6 alternateDSID];
  }

  else
  {
    alternateDSID = 0;
  }

  return alternateDSID;
}

+ (id)umNodeForUser:(id)user error:(id *)error
{
  userCopy = user;
  v6 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];

  if (v6)
  {
    v7 = @"UMMultiUserNode";
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)umNameForUser:(id)user error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  v6 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  username = [v6 username];

  if (username)
  {
    error = [v7 username];
    goto LABEL_7;
  }

  if (error)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No username for %@", userCopy, *MEMORY[0x1E696A578]];
    v14[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v11];

LABEL_6:
    error = 0;
  }

LABEL_7:

  return error;
}

+ (unsigned)pwdUserIDToUID:(id)d withError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:dCopy];
  v7 = v6;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    [v6 getUUIDBytes:&v12];
    LODWORD(error) = bswap32(HIDWORD(v13));
  }

  else if (error)
  {
    v8 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to parse UID from string %@", dCopy];
    v15[0] = dCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7003 userInfo:v10];

    LODWORD(error) = 0;
  }

  return error;
}

+ (id)pwdUIDToUserID:(unsigned int)d
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08X", *&d];
  v4 = [@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA" stringByAppendingString:v3];

  return v4;
}

+ (id)pwdUserWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error
{
  v6 = *&uid;
  *&v26[13] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&uid];
  v20 = 0;
  v9 = [UAFCommonUtilities getPWUID:v8 error:&v20];
  v10 = v20;

  if (v10)
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "+[UAFUser pwdUserWithNodeForUID:uid:error:]";
      v25 = 1024;
      *v26 = v6;
      v26[2] = 2114;
      *&v26[3] = v10;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Error finding uid: %d: %{public}@", buf, 0x1Cu);
    }

    if (error)
    {
      v12 = v10;
      v13 = 0;
      *error = v10;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!v9 || ([v9 objectForKeyedSubscript:@"Username"], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "+[UAFUser pwdUserWithNodeForUID:uid:error:]";
      v25 = 2114;
      *v26 = 0;
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not find user: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v16 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No user found for uid %d", v6];
      v22 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [v16 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v18];
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (d)
  {
    *d = @"SystemNode";
  }

  v13 = [objc_opt_class() pwdUIDToUserID:v6];
LABEL_16:

  return v13;
}

+ (id)pwdNodeForUser:(id)user error:(id *)error
{
  if ([user hasPrefix:{@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA", error}])
  {
    return @"SystemNode";
  }

  else
  {
    return 0;
  }
}

+ (id)pwdNameForUser:(id)user error:(id *)error
{
  *&v28[13] = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (![userCopy hasPrefix:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"])
  {
    v10 = 0;
    goto LABEL_22;
  }

  v22 = 0;
  v6 = [objc_opt_class() pwdUserIDToUID:userCopy withError:&v22];
  v7 = v22;
  if (v7)
  {
    v8 = v7;
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_21;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v21 = 0;
  v12 = [UAFCommonUtilities getPWUID:v11 error:&v21];
  v8 = v21;

  if (!v8)
  {
    if (v12)
    {
      v15 = [v12 objectForKeyedSubscript:@"Username"];

      if (v15)
      {
        v10 = [v12 objectForKeyedSubscript:@"Username"];
        goto LABEL_20;
      }
    }

    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "+[UAFUser pwdNameForUser:error:]";
      v27 = 2114;
      *v28 = 0;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Could not find user: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v17 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No user found for uid %d", v6];
      v24 = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      *error = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7001 userInfo:v19];
    }

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v13 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "+[UAFUser pwdNameForUser:error:]";
    v27 = 1024;
    *v28 = v6;
    v28[2] = 2114;
    *&v28[3] = v8;
    _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Error finding uid: %d: %{public}@", buf, 0x1Cu);
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v14 = v8;
  v10 = 0;
  *error = v8;
LABEL_20:

LABEL_21:
LABEL_22:

  return v10;
}

+ (id)currentUserWithNode:(id *)node error:(id *)error
{
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() umCurrentUMUserWithNode:node error:error];
    alternateDSID = [v6 alternateDSID];
  }

  else
  {
    if (node)
    {
      *node = @"system";
    }

    alternateDSID = @"mobile";
  }

  return alternateDSID;
}

+ (id)userWithNodeForUID:(id *)d uid:(unsigned int)uid error:(id *)error
{
  v6 = *&uid;
  if ([objc_opt_class() isMultiUser])
  {
    v17 = 0;
    v8 = [objc_opt_class() umUserWithNodeForUID:d uid:v6 error:&v17];
    v9 = v17;
    v10 = v9;
    if (v8)
    {
      v11 = v8;
LABEL_4:
      v12 = v11;
LABEL_5:

      goto LABEL_9;
    }

    domain = [v9 domain];
    if ([domain isEqualToString:@"com.apple.UnifiedAssetFramework"])
    {
      code = [v10 code];

      if (code == 7001)
      {
        v11 = [objc_opt_class() pwdUserWithNodeForUID:d uid:v6 error:error];
        goto LABEL_4;
      }
    }

    else
    {
    }

    if (error)
    {
      v16 = v10;
      v12 = 0;
      *error = v10;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_5;
  }

  if (d)
  {
    *d = @"system";
  }

  v12 = @"mobile";
LABEL_9:

  return v12;
}

+ (id)nodeForUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() pwdNodeForUser:userCopy error:error];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [objc_opt_class() umNodeForUser:userCopy error:error];
    }

    v9 = v8;
  }

  else
  {
    v9 = @"system";
  }

  return v9;
}

+ (id)nameForUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [objc_opt_class() pwdNameForUser:userCopy error:error];
    v7 = v6;
    if (v6)
    {
      username = v6;
    }

    else
    {
      v9 = [objc_opt_class() umUserWithDSID:userCopy withUid:0 withError:error];
      username = [v9 username];
    }
  }

  else
  {
    username = @"mobile";
  }

  return username;
}

+ (id)systemUserWithNode:(id *)node error:(id *)error
{
  isMultiUser = [objc_opt_class() isMultiUser];
  if (node)
  {
    v6 = @"system";
    if (isMultiUser)
    {
      v6 = @"UMMultiUserNode";
    }

    *node = v6;
  }

  if (isMultiUser)
  {
    return @"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000";
  }

  else
  {
    return @"mobile";
  }
}

+ (BOOL)isSystemUserUsingUID:(unsigned int)d
{
  result = [objc_opt_class() isMultiUser];
  if (d >= 0x1F5)
  {
    return 0;
  }

  return result;
}

+ (BOOL)isSystemUser:(id)user error:(id *)error
{
  userCopy = user;
  if ([objc_opt_class() isMultiUser])
  {
    v6 = [userCopy hasPrefix:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"];
    v7 = objc_opt_class();
    if (v6)
    {
      v15 = 0;
      v8 = [v7 pwdUserIDToUID:userCopy withError:&v15];
      v9 = v15;
      v10 = v9;
      if (v9)
      {
        if (error)
        {
          v11 = v9;
          v12 = 0;
          *error = v10;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = [objc_opt_class() isSystemUserUsingUID:v8];
      }
    }

    else
    {
      v13 = [v7 umUserWithDSID:userCopy withUid:0 withError:error];
      if (v13)
      {
        v12 = [objc_opt_class() isSystemUserUsingUID:{objc_msgSend(v13, "uid")}];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)validLocalUsers:(id)users error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  usersCopy = users;
  if ([objc_opt_class() isMultiUser])
  {
    if ([objc_opt_class() umEntitlementPresent])
    {
      mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
      v7 = objc_opt_new();
      loginUser = [mEMORY[0x1E69DF068] loginUser];
      alternateDSID = [loginUser alternateDSID];

      if (alternateDSID)
      {
        loginUser2 = [mEMORY[0x1E69DF068] loginUser];
        alternateDSID2 = [loginUser2 alternateDSID];
        [v7 addObject:alternateDSID2];
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      allUsers = [mEMORY[0x1E69DF068] allUsers];
      v13 = [allUsers countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v36;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v36 != v15)
            {
              objc_enumerationMutation(allUsers);
            }

            v17 = *(*(&v35 + 1) + 8 * i);
            alternateDSID3 = [v17 alternateDSID];

            if (alternateDSID3)
            {
              alternateDSID4 = [v17 alternateDSID];
              [v7 addObject:alternateDSID4];
            }
          }

          v14 = [allUsers countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v14);
      }

      v20 = objc_opt_new();
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v21 = usersCopy;
      v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v32;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v32 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v31 + 1) + 8 * j);
            if (([v7 containsObject:{v26, v31}] & 1) != 0 || objc_msgSend(v26, "hasPrefix:", @"FFFFEEEE-DDDD-CCCC-BBBB-AAAA"))
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v27 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v44 = "+[UAFUser validLocalUsers:error:]";
        _os_log_error_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_ERROR, "%s Process is not entitled to UMUserManager framework.", buf, 0xCu);
      }

      if (error)
      {
        v28 = MEMORY[0x1E696ABC0];
        v41 = *MEMORY[0x1E696A578];
        v42 = @"Process is not entitled to UMUserManager framework";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *error = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:7000 userInfo:v29];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = usersCopy;
  }

  return v20;
}

+ (id)validNodesWithError:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isMultiUser])
  {
    v9 = @"UMMultiUserNode";
    v10 = @"SystemNode";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v9;
    v5 = 2;
  }

  else
  {
    v8 = @"system";
    v3 = MEMORY[0x1E695DEC8];
    v4 = &v8;
    v5 = 1;
  }

  v6 = [v3 arrayWithObjects:v4 count:{v5, v8, v9, v10, v11}];

  return v6;
}

+ (id)validLocalNode
{
  if (+[UAFUser isMultiUser])
  {
    v2 = @"UMMultiUserNode";
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)currentConsoleUserWithUID:(unsigned int *)d
{
  v15 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() isMultiUser])
  {
    v10 = 0;
    v4 = [objc_opt_class() umCurrentUMUserWithNode:0 error:&v10];
    v5 = v10;
    if (v4 && ([v4 alternateDSID], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
    {
      if (d)
      {
        *d = [v4 uid];
      }

      alternateDSID = [v4 alternateDSID];
    }

    else
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "+[UAFUser currentConsoleUserWithUID:]";
        v13 = 2112;
        v14 = v5;
        _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s Error retrieving current console user: %@", buf, 0x16u);
      }

      alternateDSID = 0;
    }
  }

  else
  {
    if (d)
    {
      *d = 501;
    }

    alternateDSID = @"mobile";
  }

  return alternateDSID;
}

@end