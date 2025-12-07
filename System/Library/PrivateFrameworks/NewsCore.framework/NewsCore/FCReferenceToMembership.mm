@interface FCReferenceToMembership
- (FCReferenceToMembership)initWithIdentifier:(id)identifier;
- (FCReferenceToMembership)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation;
- (FCReferenceToMembership)initWithRecord:(id)record;
- (id)dictionaryRepresentation;
@end

@implementation FCReferenceToMembership

- (FCReferenceToMembership)initWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != nil"];
    *buf = 136315906;
    v12 = "[FCReferenceToMembership initWithIdentifier:]";
    v13 = 2080;
    v14 = "FCReferenceToMembership.m";
    v15 = 1024;
    v16 = 16;
    v17 = 2114;
    v18 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v10.receiver = self;
  v10.super_class = FCReferenceToMembership;
  v6 = [(FCReferenceToMembership *)&v10 init];
  v7 = v6;
  if (v6)
  {
    if (identifierCopy)
    {
      objc_storeStrong(&v6->_identifier, identifier);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (FCReferenceToMembership)initWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [(FCReferenceToMembership *)self initWithIdentifier:recordName];

  if (v7)
  {
    v8 = [recordCopy objectForKeyedSubscript:@"membershipID"];
    membershipID = v7->_membershipID;
    v7->_membershipID = v8;
  }

  return v7;
}

- (FCReferenceToMembership)initWithIdentifier:(id)identifier dictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v7 = [(FCReferenceToMembership *)self initWithIdentifier:identifier];
  if (v7)
  {
    v8 = [representationCopy objectForKeyedSubscript:@"membershipID"];
    membershipID = v7->_membershipID;
    v7->_membershipID = v8;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  membershipID = [(FCReferenceToMembership *)self membershipID];

  if (membershipID)
  {
    membershipID2 = [(FCReferenceToMembership *)self membershipID];
    [dictionary setObject:membershipID2 forKey:@"membershipID"];
  }

  v6 = [dictionary copy];

  return v6;
}

@end