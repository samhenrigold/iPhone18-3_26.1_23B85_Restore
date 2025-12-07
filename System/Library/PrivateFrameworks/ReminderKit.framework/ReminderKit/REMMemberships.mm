@interface REMMemberships
- (BOOL)isEqual:(id)equal;
- (REMMemberships)initWithCoder:(id)coder;
- (REMMemberships)initWithMembershipByMemberIdentifier:(id)identifier;
- (REMMemberships)initWithMemberships:(id)memberships;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)excludingObsoleteAndModifiedEarlierThan:(id)than;
- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier;
- (id)mergingWith:(id)with mergePolicy:(unint64_t)policy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMMemberships

- (REMMemberships)initWithMembershipByMemberIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = REMMemberships;
  v6 = [(REMMemberships *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_membershipByMemberIdentifier, identifier);
  }

  return v7;
}

- (REMMemberships)initWithMemberships:(id)memberships
{
  v20 = *MEMORY[0x1E69E9840];
  membershipsCopy = memberships;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(membershipsCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = membershipsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        memberIdentifier = [v11 memberIdentifier];
        [v5 setObject:v11 forKeyedSubscript:memberIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v5];
  return v13;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [membershipByMemberIdentifier objectForKeyedSubscript:identifierCopy];

  groupIdentifier = [v6 groupIdentifier];

  return groupIdentifier;
}

- (id)mergingWith:(id)with mergePolicy:(unint64_t)policy
{
  v39 = *MEMORY[0x1E69E9840];
  withCopy = with;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  selfCopy = self;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v32 = [v6 initWithDictionary:membershipByMemberIdentifier];

  if (policy == 1)
  {
    membershipByMemberIdentifier2 = [withCopy membershipByMemberIdentifier];
    [v32 addEntriesFromDictionary:membershipByMemberIdentifier2];

    v8 = withCopy;
  }

  else
  {
    v8 = withCopy;
    if (!policy)
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = [withCopy membershipByMemberIdentifier];
      v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v35;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v34 + 1) + 8 * i);
            membershipByMemberIdentifier3 = [v8 membershipByMemberIdentifier];
            v15 = [membershipByMemberIdentifier3 objectForKeyedSubscript:v13];

            membershipByMemberIdentifier4 = [(REMMemberships *)selfCopy membershipByMemberIdentifier];
            v17 = [membershipByMemberIdentifier4 objectForKeyedSubscript:v13];

            if (!v17 || ([v17 modifiedOn], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "modifiedOn"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "compare:", v19), v19, v18, v20 == -1) || !v20 && ((objc_msgSend(v17, "groupIdentifier"), (v21 = objc_claimAutoreleasedReturnValue()) == 0) || (v22 = v21, objc_msgSend(v15, "groupIdentifier"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "groupIdentifier"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v23, "compare:", v24), v24, v23, v22, v26 = v25 == 1, v8 = withCopy, v26)))
            {
              [v32 setObject:v15 forKeyedSubscript:v13];
            }
          }

          v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v10);
      }
    }
  }

  v28 = [objc_alloc(objc_opt_class()) initWithMembershipByMemberIdentifier:v32];

  return v28;
}

- (id)excludingObsoleteAndModifiedEarlierThan:(id)than
{
  v25 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v7 = [v5 initWithCapacity:{objc_msgSend(membershipByMemberIdentifier, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  membershipByMemberIdentifier2 = [(REMMemberships *)self membershipByMemberIdentifier];
  v9 = [membershipByMemberIdentifier2 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(membershipByMemberIdentifier2);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        membershipByMemberIdentifier3 = [(REMMemberships *)self membershipByMemberIdentifier];
        v15 = [membershipByMemberIdentifier3 objectForKeyedSubscript:v13];

        if (v15)
        {
          if (![v15 isObsolete] || (objc_msgSend(v15, "modifiedOn"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", thanCopy), v16, v17 != -1))
          {
            [v7 addObject:v15];
          }
        }
      }

      v10 = [membershipByMemberIdentifier2 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v18 = [objc_alloc(objc_opt_class()) initWithMemberships:v7];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v3 stringWithFormat:@"<%@: %p membershipByMemberIdentifier: %@>", v4, self, membershipByMemberIdentifier];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
    membershipByMemberIdentifier2 = [equalCopy membershipByMemberIdentifier];
    if (membershipByMemberIdentifier == membershipByMemberIdentifier2)
    {
      v9 = 1;
    }

    else
    {
      membershipByMemberIdentifier3 = [(REMMemberships *)self membershipByMemberIdentifier];
      membershipByMemberIdentifier4 = [equalCopy membershipByMemberIdentifier];
      v9 = [membershipByMemberIdentifier3 isEqual:membershipByMemberIdentifier4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  v6 = [v4 initWithMembershipByMemberIdentifier:membershipByMemberIdentifier];

  return v6;
}

- (REMMemberships)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"membershipByMemberIdentifier"];

  v10 = [(REMMemberships *)self initWithMembershipByMemberIdentifier:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  membershipByMemberIdentifier = [(REMMemberships *)self membershipByMemberIdentifier];
  [coderCopy encodeObject:membershipByMemberIdentifier forKey:@"membershipByMemberIdentifier"];
}

@end