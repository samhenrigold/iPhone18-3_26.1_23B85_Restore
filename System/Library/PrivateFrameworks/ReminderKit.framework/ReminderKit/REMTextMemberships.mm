@interface REMTextMemberships
- (BOOL)isEqual:(id)equal;
- (REMTextMemberships)initWithCoder:(id)coder;
- (REMTextMemberships)initWithMemberships:(id)memberships lastResetDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier;
- (id)mergingWith:(id)with;
- (id)removing:(id)removing;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation REMTextMemberships

- (REMTextMemberships)initWithMemberships:(id)memberships lastResetDate:(id)date
{
  membershipsCopy = memberships;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = REMTextMemberships;
  v9 = [(REMTextMemberships *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memberships, memberships);
    objc_storeStrong(&v10->_lastResetDate, date);
  }

  return v10;
}

- (id)groupIdentifierOfMemberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  memberships = [(REMTextMemberships *)self memberships];
  v6 = [memberships objectForKeyedSubscript:identifierCopy];

  identifier = [v6 identifier];

  return identifier;
}

- (id)mergingWith:(id)with
{
  v69 = *MEMORY[0x1E69E9840];
  withCopy = with;
  lastResetDate = [(REMTextMemberships *)self lastResetDate];

  lastResetDate2 = [withCopy lastResetDate];
  lastResetDate6 = lastResetDate2;
  v54 = withCopy;
  if (lastResetDate)
  {

    if (lastResetDate6)
    {
      lastResetDate3 = [withCopy lastResetDate];
      lastResetDate4 = [(REMTextMemberships *)self lastResetDate];
      v10 = [lastResetDate4 compare:lastResetDate3];

      if (v10 == -1)
      {
        lastResetDate5 = lastResetDate3;
      }

      else
      {
        lastResetDate5 = [(REMTextMemberships *)self lastResetDate];
      }

      lastResetDate6 = lastResetDate5;
    }

    else
    {
      lastResetDate6 = [(REMTextMemberships *)self lastResetDate];
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v13 = dictionary;
  selfCopy = self;
  if (lastResetDate6)
  {
    v56 = dictionary;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    memberships = [(REMTextMemberships *)self memberships];
    v15 = [memberships countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v64;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v64 != v17)
          {
            objc_enumerationMutation(memberships);
          }

          v19 = *(*(&v63 + 1) + 8 * i);
          memberships2 = [(REMTextMemberships *)selfCopy memberships];
          v21 = [memberships2 objectForKeyedSubscript:v19];
          modifiedOn = [v21 modifiedOn];
          v23 = [modifiedOn compare:lastResetDate6];

          if (v23 == 1)
          {
            memberships3 = [(REMTextMemberships *)selfCopy memberships];
            v25 = [memberships3 objectForKeyedSubscript:v19];
            [v56 setObject:v25 forKeyedSubscript:v19];
          }
        }

        v16 = [memberships countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v26 = objc_alloc(MEMORY[0x1E695DF90]);
    memberships4 = [(REMTextMemberships *)self memberships];
    v28 = [v26 initWithDictionary:memberships4];

    v56 = v28;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v29 = v54;
  obj = [v54 memberships];
  v30 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  v31 = selfCopy;
  if (v30)
  {
    v32 = v30;
    v57 = *v60;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v60 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v59 + 1) + 8 * j);
        if (lastResetDate6)
        {
          memberships5 = [v29 memberships];
          v36 = [memberships5 objectForKeyedSubscript:v34];
          modifiedOn2 = [v36 modifiedOn];
          v38 = [modifiedOn2 compare:lastResetDate6];

          if (v38 != 1)
          {
            continue;
          }
        }

        memberships6 = [v29 memberships];
        v40 = [memberships6 objectForKeyedSubscript:v34];

        memberships7 = [(REMTextMemberships *)v31 memberships];
        v42 = [memberships7 objectForKeyedSubscript:v34];

        if (!v42 || ([v42 modifiedOn], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "modifiedOn"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "compare:", v44), v44, v31 = selfCopy, v43, v45 == -1) || !v45 && ((objc_msgSend(v42, "identifier"), (v46 = objc_claimAutoreleasedReturnValue()) == 0) || (v47 = v46, objc_msgSend(v40, "identifier"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "identifier"), v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "compare:", v49), v49, v31 = selfCopy, v48, v47, v51 = v50 == 1, v29 = v54, v51)))
        {
          [v56 setObject:v40 forKeyedSubscript:v34];
        }
      }

      v32 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v32);
  }

  v52 = [objc_alloc(objc_opt_class()) initWithMemberships:v56 lastResetDate:lastResetDate6];

  return v52;
}

- (id)removing:(id)removing
{
  v4 = MEMORY[0x1E695DF90];
  removingCopy = removing;
  v6 = [v4 alloc];
  memberships = [(REMTextMemberships *)self memberships];
  v8 = [v6 initWithDictionary:memberships];

  [v8 removeObjectsForKeys:removingCopy];
  v9 = objc_alloc(objc_opt_class());
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v11 = [v9 initWithMemberships:v8 lastResetDate:lastResetDate];

  return v11;
}

- (void)reset
{
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  memberships = self->_memberships;
  self->_memberships = dictionary;

  self->_lastResetDate = [MEMORY[0x1E695DF00] date];

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  memberships = [(REMTextMemberships *)self memberships];
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v7 = [v3 stringWithFormat:@"<%@: %p memberships: %@, lastResetDate: %@>", v4, self, memberships, lastResetDate];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  memberships = [(REMTextMemberships *)self memberships];
  memberships2 = [equalCopy memberships];
  v7 = memberships2;
  if (memberships == memberships2)
  {
  }

  else
  {
    memberships3 = [(REMTextMemberships *)self memberships];
    memberships4 = [equalCopy memberships];
    v10 = [memberships3 isEqual:memberships4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  lastResetDate2 = [equalCopy lastResetDate];
  if (lastResetDate == lastResetDate2)
  {
    v11 = 1;
  }

  else
  {
    lastResetDate3 = [(REMTextMemberships *)self lastResetDate];
    lastResetDate4 = [equalCopy lastResetDate];
    v11 = [lastResetDate3 isEqual:lastResetDate4];
  }

LABEL_10:
  return v11 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  memberships = [(REMTextMemberships *)self memberships];
  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  v7 = [v4 initWithMemberships:memberships lastResetDate:lastResetDate];

  return v7;
}

- (REMTextMemberships)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"memberships"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastResetDate"];

  v11 = [(REMTextMemberships *)self initWithMemberships:v9 lastResetDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  memberships = [(REMTextMemberships *)self memberships];
  [coderCopy encodeObject:memberships forKey:@"memberships"];

  lastResetDate = [(REMTextMemberships *)self lastResetDate];
  [coderCopy encodeObject:lastResetDate forKey:@"lastResetDate"];
}

@end