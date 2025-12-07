@interface DMCComposedIdentifier
+ (id)newComposedIdentifier:(id)identifier;
+ (id)newComposedIdentifierWithBundleID:(id)d;
+ (id)newComposedIdentifierWithBundleID:(id)d requirement:(id)requirement;
+ (id)newComposedIdentifierWithBundleID:(id)d teamID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComposedIdentifier:(id)identifier;
- (DMCComposedIdentifier)initWithBundleID:(id)d teamID:(id)iD requirement:(id)requirement;
- (id)composedIdentifier;
- (id)designatedRequirement;
@end

@implementation DMCComposedIdentifier

+ (id)newComposedIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [identifierCopy rangeOfString:@" "];
  v6 = v5;
  v7 = identifierCopy;
  v8 = v7;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v11 = [v7 substringToIndex:v4];

    v10 = [v8 substringFromIndex:v4 + v6];
    if ([v10 hasPrefix:{@"(", "hasSuffix:", @")"}])
    {
      v12 = [v10 substringWithRange:{1, objc_msgSend(v10, "length") - 2}];
      v9 = 0;
    }

    else
    {
      v13 = [v10 hasPrefix:@"{"];
      if (!v13 || (v13 = [v10 hasSuffix:@"}"], !v13))
      {
        v23 = *DMCLogObjects(v13, v14);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = 138543362;
          v27 = v8;
          _os_log_impl(&dword_1B1630000, v23, OS_LOG_TYPE_ERROR, "Invalid composed identifier %{public}@", &v26, 0xCu);
        }

        goto LABEL_25;
      }

      v9 = [v10 substringWithRange:{1, objc_msgSend(v10, "length") - 2}];
      v12 = 0;
    }

    v10 = v12;
  }

  if (![v11 length])
  {
    v24 = *DMCLogObjects(0, v15);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 138543362;
      v27 = v8;
LABEL_23:
      _os_log_impl(&dword_1B1630000, v24, OS_LOG_TYPE_ERROR, "Invalid composed identifier %{public}@", &v26, 0xCu);
    }

LABEL_24:

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"(){}"];
  v17 = [v11 rangeOfCharacterFromSet:v16];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = *DMCLogObjects(v18, v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = 138543362;
      v27 = v8;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v10 && ![v10 length])
  {
    v24 = *DMCLogObjects(0, v20);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v26 = 138543362;
    v27 = v8;
    goto LABEL_23;
  }

  if (v9 && ![v9 length])
  {
    v24 = *DMCLogObjects(0, v21);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v26 = 138543362;
    v27 = v8;
    goto LABEL_23;
  }

  v22 = [[DMCComposedIdentifier alloc] initWithBundleID:v11 teamID:v10 requirement:v9];

LABEL_26:
  return v22;
}

+ (id)newComposedIdentifierWithBundleID:(id)d
{
  dCopy = d;
  v4 = [[DMCComposedIdentifier alloc] initWithBundleID:dCopy teamID:0 requirement:0];

  return v4;
}

+ (id)newComposedIdentifierWithBundleID:(id)d teamID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v7 = [[DMCComposedIdentifier alloc] initWithBundleID:dCopy teamID:iDCopy requirement:0];

  return v7;
}

+ (id)newComposedIdentifierWithBundleID:(id)d requirement:(id)requirement
{
  requirementCopy = requirement;
  dCopy = d;
  v7 = [[DMCComposedIdentifier alloc] initWithBundleID:dCopy teamID:0 requirement:requirementCopy];

  return v7;
}

- (DMCComposedIdentifier)initWithBundleID:(id)d teamID:(id)iD requirement:(id)requirement
{
  dCopy = d;
  iDCopy = iD;
  requirementCopy = requirement;
  v15.receiver = self;
  v15.super_class = DMCComposedIdentifier;
  v12 = [(DMCComposedIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleID, d);
    objc_storeStrong(&v13->_teamID, iD);
    objc_storeStrong(&v13->_requirement, requirement);
  }

  return v13;
}

- (id)composedIdentifier
{
  teamID = [(DMCComposedIdentifier *)self teamID];

  if (teamID)
  {
    v4 = MEMORY[0x1E696AEC0];
    bundleID = [(DMCComposedIdentifier *)self bundleID];
    teamID2 = [(DMCComposedIdentifier *)self teamID];
    [v4 stringWithFormat:@"%@ (%@)", bundleID, teamID2];
    bundleID2 = LABEL_5:;

    goto LABEL_6;
  }

  requirement = [(DMCComposedIdentifier *)self requirement];

  if (requirement)
  {
    v8 = MEMORY[0x1E696AEC0];
    bundleID = [(DMCComposedIdentifier *)self bundleID];
    teamID2 = [(DMCComposedIdentifier *)self requirement];
    [v8 stringWithFormat:@"%@ {%@}", bundleID, teamID2];
    goto LABEL_5;
  }

  bundleID2 = [(DMCComposedIdentifier *)self bundleID];
LABEL_6:

  return bundleID2;
}

- (id)designatedRequirement
{
  requirement = [(DMCComposedIdentifier *)self requirement];

  if (requirement)
  {
    requirement2 = [(DMCComposedIdentifier *)self requirement];
  }

  else
  {
    teamID = [(DMCComposedIdentifier *)self teamID];

    v6 = MEMORY[0x1E696AEC0];
    bundleID = [(DMCComposedIdentifier *)self bundleID];
    v8 = bundleID;
    if (teamID)
    {
      teamID2 = [(DMCComposedIdentifier *)self teamID];
      requirement2 = [v6 stringWithFormat:@"anchor apple generic and identifier %@ and certificate leaf[subject.OU] = %@", v8, teamID2];
    }

    else
    {
      requirement2 = [v6 stringWithFormat:@"anchor apple and identifier %@", bundleID];
    }
  }

  return requirement2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(DMCComposedIdentifier *)self isEqualToComposedIdentifier:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToComposedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  composedIdentifier = [(DMCComposedIdentifier *)self composedIdentifier];
  composedIdentifier2 = [identifierCopy composedIdentifier];

  LOBYTE(identifierCopy) = [composedIdentifier isEqualToString:composedIdentifier2];
  return identifierCopy;
}

@end