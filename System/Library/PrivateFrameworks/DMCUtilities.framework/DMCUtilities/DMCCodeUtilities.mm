@interface DMCCodeUtilities
+ (BOOL)_checkValidityOfStaticCode:(__SecCode *)code path:(id)path;
+ (BOOL)_verifyCodeIdentity:(id)identity composedIdentifier:(id)identifier;
+ (BOOL)_verifyCodeIdentity:(id)identity other:(id)other;
+ (BOOL)verifySignatureForAuditToken:(id *)token codeIdentity:(id)identity;
+ (BOOL)verifySignatureForAuditToken:(id *)token composedIdentifier:(id)identifier;
+ (BOOL)verifySignatureForPath:(id)path codeIdentity:(id)identity;
+ (BOOL)verifySignatureForPath:(id)path composedIdentifier:(id)identifier;
+ (__SecCode)_staticCodeFromPath:(id)path;
+ (id)_codeIdentityForSigningInfo:(id)info path:(id)path;
+ (id)_codeIdentityFromSecTask:(__SecTask *)task path:(id)path;
+ (id)_codeSigningIDFromSecTask:(__SecTask *)task;
+ (id)_signingInfoForStaticCode:(__SecCode *)code path:(id)path;
+ (id)_teamIDFromSecTask:(__SecTask *)task;
+ (id)codeIdentityForAuditToken:(id *)token;
+ (id)codeIdentityForPath:(id)path;
@end

@implementation DMCCodeUtilities

+ (id)codeIdentityForPath:(id)path
{
  v21 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [self _staticCodeFromPath:pathCopy];
  if (v5)
  {
    v7 = v5;
    v8 = [self _signingInfoForStaticCode:v5 path:pathCopy];
    CFRelease(v7);
    if (v8)
    {
      v11 = [self _codeIdentityForSigningInfo:v8 path:pathCopy];
      v13 = v11;
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v17 = *DMCLogObjects(0, v12);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = pathCopy;
          _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "Could not create code identity for path: %{public}@", &v19, 0xCu);
        }
      }
    }

    else
    {
      v16 = *DMCLogObjects(v9, v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = 138543362;
        v20 = pathCopy;
        _os_log_impl(&dword_1B1630000, v16, OS_LOG_TYPE_ERROR, "Could not create signing info for path: %{public}@", &v19, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
    v15 = *DMCLogObjects(0, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = pathCopy;
      _os_log_impl(&dword_1B1630000, v15, OS_LOG_TYPE_ERROR, "Could not create static code ref for path: %{public}@", &v19, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

+ (id)codeIdentityForAuditToken:(id *)token
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *&token->var0[4];
  *v21.val = *token->var0;
  *&v21.val[4] = v6;
  v7 = SecTaskCreateWithAuditToken(v5, &v21);
  if (v7)
  {
    v9 = v7;
    v10 = *&token->var0[4];
    *v21.val = *token->var0;
    *&v21.val[4] = v10;
    v12 = [self _pathFromAuditToken:&v21];
    if (v12)
    {
      v13 = [self _codeIdentityFromSecTask:v9 path:v12];
      CFRelease(v9);
      if (v13)
      {
        v16 = v13;
      }

      else
      {
        v19 = *DMCLogObjects(v14, v15);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v21.val[0]) = 0;
          _os_log_impl(&dword_1B1630000, v19, OS_LOG_TYPE_ERROR, "Could not create code identity using audit token", &v21, 2u);
        }
      }
    }

    else
    {
      v18 = *DMCLogObjects(0, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21.val[0]) = 0;
        _os_log_impl(&dword_1B1630000, v18, OS_LOG_TYPE_ERROR, "Failed to get path from audit token", &v21, 2u);
      }

      v13 = 0;
    }
  }

  else
  {
    v17 = *DMCLogObjects(0, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_ERROR, "Failed to create SecTask from audit token", &v21, 2u);
    }

    v13 = 0;
  }

  return v13;
}

+ (BOOL)verifySignatureForPath:(id)path composedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self codeIdentityForPath:path];
  if (v7)
  {
    v8 = [self _verifyCodeIdentity:v7 composedIdentifier:identifierCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)verifySignatureForPath:(id)path codeIdentity:(id)identity
{
  identityCopy = identity;
  v7 = [self codeIdentityForPath:path];
  if (v7)
  {
    v8 = [self _verifyCodeIdentity:v7 other:identityCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)verifySignatureForAuditToken:(id *)token composedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v7;
  v8 = [self codeIdentityForAuditToken:v11];
  if (v8)
  {
    v9 = [self _verifyCodeIdentity:v8 composedIdentifier:identifierCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)verifySignatureForAuditToken:(id *)token codeIdentity:(id)identity
{
  identityCopy = identity;
  v7 = *&token->var0[4];
  v11[0] = *token->var0;
  v11[1] = v7;
  v8 = [self codeIdentityForAuditToken:v11];
  if (v8)
  {
    v9 = [self _verifyCodeIdentity:v8 other:identityCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (__SecCode)_staticCodeFromPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  staticCode = 0;
  v5 = SecStaticCodeCreateWithPath(v4, 0, &staticCode);
  v7 = staticCode;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = staticCode == 0;
  }

  if (v8)
  {
    v9 = v5;
    v10 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AD98];
      v12 = v10;
      v13 = [v11 numberWithInt:v9];
      *buf = 138543618;
      v17 = pathCopy;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Failed to create SecStaticCodeRef from path: %{public}@, error: %@", buf, 0x16u);
    }

    if (staticCode)
    {
      CFRelease(staticCode);
    }

    v7 = 0;
  }

  return v7;
}

+ (BOOL)_checkValidityOfStaticCode:(__SecCode *)code path:(id)path
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v6 = SecStaticCodeCheckValidity(code, 0, 0);
  if (v6 == -66996)
  {
    v13 = *DMCLogObjects(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v29 = pathCopy;
      _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_DEBUG, "Need to validate path using MIS: %{public}@", buf, 0xCu);
    }

    v14 = *MEMORY[0x1E695E4D0];
    v15 = *MEMORY[0x1E69E5840];
    v26[0] = *MEMORY[0x1E69E5830];
    v26[1] = v15;
    v27[0] = v14;
    v27[1] = v14;
    v26[2] = *MEMORY[0x1E69E5818];
    v27[2] = *MEMORY[0x1E695E4C0];
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v17 = MISValidateSignature();
    if (v17)
    {
      v19 = v17;
      v20 = *DMCLogObjects(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = MEMORY[0x1E696AD98];
        v22 = v20;
        v23 = [v21 numberWithInt:v19];
        *buf = 138412290;
        v29 = v23;
        _os_log_impl(&dword_1B1630000, v22, OS_LOG_TYPE_ERROR, "Failed to validate path via MISValidateSignature error: %@", buf, 0xCu);
      }

      goto LABEL_11;
    }

LABEL_13:
    v24 = 1;
    goto LABEL_14;
  }

  v8 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *DMCLogObjects(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithInt:v8];
    *buf = 138412290;
    v29 = v12;
    _os_log_impl(&dword_1B1630000, v11, OS_LOG_TYPE_ERROR, "Failed to validate SecStaticCodeRef error: %@", buf, 0xCu);
  }

LABEL_11:
  v24 = 0;
LABEL_14:

  return v24;
}

+ (id)_signingInfoForStaticCode:(__SecCode *)code path:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  if (![self _checkValidityOfStaticCode:code path:path])
  {
    goto LABEL_8;
  }

  information = 0;
  v5 = SecCodeCopySigningInformation(code, 2u, &information);
  v7 = v5;
  if (v5 || (v5 = information) == 0)
  {
    v8 = *DMCLogObjects(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithInt:v7];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1B1630000, v10, OS_LOG_TYPE_ERROR, "Failed to copy signing info error: %@", buf, 0xCu);
    }

    v5 = information;
    if (information)
    {
      CFRelease(information);
LABEL_8:
      v5 = 0;
    }
  }

  return v5;
}

+ (id)_codeIdentityForSigningInfo:(id)info path:(id)path
{
  infoCopy = info;
  pathCopy = path;
  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697B080]];
  if (v8)
  {
    v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E697B070]];
    if (v10)
    {
      v11 = [[DMCCodeIdentity alloc] initWithCodeSigningID:v10 teamID:v8 path:pathCopy];
    }

    else
    {
      v13 = *DMCLogObjects(0, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not look up code signing identifier using signing info", v15, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = *DMCLogObjects(0, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not look up team identifier using signing info", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_codeIdentityFromSecTask:(__SecTask *)task path:(id)path
{
  pathCopy = path;
  v8 = [self _teamIDFromSecTask:task];
  if (v8)
  {
    v10 = [self _codeSigningIDFromSecTask:task];
    if (v10)
    {
      v11 = [[DMCCodeIdentity alloc] initWithCodeSigningID:v10 teamID:v8 path:pathCopy];
    }

    else
    {
      v13 = *DMCLogObjects(0, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_1B1630000, v13, OS_LOG_TYPE_ERROR, "Could not look up code signing identifier using sec task", v15, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v12 = *DMCLogObjects(0, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v12, OS_LOG_TYPE_ERROR, "Could not look up team identifier using signing info", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_teamIDFromSecTask:(__SecTask *)task
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SecTaskCopyTeamIdentifier();
  v5 = v3;
  if (v3)
  {
    v6 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1B1630000, v6, OS_LOG_TYPE_DEBUG, "Looked up team ID %{public}@ using SecTask", buf, 0xCu);
    }
  }

  else
  {
    v7 = *DMCLogObjects(0, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEBUG, "Empty team ID using SecTask", buf, 2u);
    }
  }

  return v5;
}

+ (id)_codeSigningIDFromSecTask:(__SecTask *)task
{
  v17 = *MEMORY[0x1E69E9840];
  error = 0;
  v3 = SecTaskCopySigningIdentifier(task, &error);
  v5 = v3;
  v6 = error;
  if (v3)
  {
    if (error)
    {
      CFRelease(error);
    }

    v7 = *DMCLogObjects(v3, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEBUG, "Looked up code signing ID %{public}@ using SecTask", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v8 = *DMCLogObjects(0, v4);
  if (v6)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    v16 = error;
    v9 = "Failed to look up code signing ID using SecTask with error: %{public}@";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v9 = "Empty code signing ID using SecTask";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEBUG;
    v12 = 2;
  }

  _os_log_impl(&dword_1B1630000, v10, v11, v9, buf, v12);
LABEL_12:
  if (error)
  {
    CFRelease(error);
  }

LABEL_14:

  return v5;
}

+ (BOOL)_verifyCodeIdentity:(id)identity composedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  identifierCopy = identifier;
  teamID = [identifierCopy teamID];

  if (!teamID)
  {
    v19 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543362;
      v26 = identifierCopy;
      v20 = "Missing team-id when verifying composed identifier: %{public}@";
      v21 = v19;
      v22 = 12;
LABEL_12:
      _os_log_impl(&dword_1B1630000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);
    }

LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  codeSigningID = [identityCopy codeSigningID];
  bundleID = [identifierCopy bundleID];
  if (([codeSigningID isEqualToString:bundleID] & 1) == 0)
  {

LABEL_10:
    v23 = *DMCLogObjects(v15, v16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = 138543618;
      v26 = identityCopy;
      v27 = 2114;
      v28 = identifierCopy;
      v20 = "Cannot verify identifiers: %{public}@ - %{public}@";
      v21 = v23;
      v22 = 22;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  teamID2 = [identityCopy teamID];
  teamID3 = [identifierCopy teamID];
  v14 = [teamID2 isEqualToString:teamID3];

  if (!v14)
  {
    goto LABEL_10;
  }

  v17 = *DMCLogObjects(v15, v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1B1630000, v17, OS_LOG_TYPE_DEBUG, "Verified code signing identifier and composed identifier", &v25, 2u);
  }

  v18 = 1;
LABEL_14:

  return v18;
}

+ (BOOL)_verifyCodeIdentity:(id)identity other:(id)other
{
  v19 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  otherCopy = other;
  v7 = [identityCopy verifyAgainst:otherCopy];
  v9 = *DMCLogObjects(v7, v8);
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15) = 0;
      v10 = "Verified code signing identifiers";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
      v13 = 2;
LABEL_6:
      _os_log_impl(&dword_1B1630000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    v16 = identityCopy;
    v17 = 2114;
    v18 = otherCopy;
    v10 = "Cannot verify code signing identifiers: %{public}@ - %{public}@";
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 22;
    goto LABEL_6;
  }

  return v7;
}

@end