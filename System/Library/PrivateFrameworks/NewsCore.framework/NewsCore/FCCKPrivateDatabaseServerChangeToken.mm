@interface FCCKPrivateDatabaseServerChangeToken
+ (id)_keyForDestination:(int64_t)destination;
+ (id)tokenByAddingCKToken:(id)token forDestination:(int64_t)destination toToken:(id)toToken;
- (BOOL)isEqual:(id)equal;
- (FCCKPrivateDatabaseServerChangeToken)init;
- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestination:(id)destination;
- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestinationKey:(id)key;
- (FCCKPrivateDatabaseServerChangeToken)initWithCoder:(id)coder;
- (id)changeTokenForDestination:(int64_t)destination;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCCKPrivateDatabaseServerChangeToken

- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestinationKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = FCCKPrivateDatabaseServerChangeToken;
  v5 = [(FCCKPrivateDatabaseServerChangeToken *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    changeTokensByDestinationKey = v5->_changeTokensByDestinationKey;
    v5->_changeTokensByDestinationKey = v6;
  }

  return v5;
}

- (FCCKPrivateDatabaseServerChangeToken)initWithChangeTokensByDestination:(id)destination
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__FCCKPrivateDatabaseServerChangeToken_initWithChangeTokensByDestination___block_invoke;
  v8[3] = &unk_1E7C40B10;
  selfCopy = self;
  v9 = selfCopy;
  v5 = [destination fc_dictionaryByTransformingKeysWithBlock:v8];
  v6 = [(FCCKPrivateDatabaseServerChangeToken *)selfCopy initWithChangeTokensByDestinationKey:v5];

  return v6;
}

uint64_t __74__FCCKPrivateDatabaseServerChangeToken_initWithChangeTokensByDestination___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = [v2 integerValue];

  return [v3 _keyForDestination:v4];
}

- (FCCKPrivateDatabaseServerChangeToken)init
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
    v5 = 136315906;
    v6 = "[FCCKPrivateDatabaseServerChangeToken init]";
    v7 = 2080;
    v8 = "FCCKPrivateDatabaseServerChangeToken.m";
    v9 = 1024;
    v10 = 43;
    v11 = 2114;
    v12 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
  }

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = MEMORY[0x1E69E58C0];
  changeTokensByDestinationKey = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  changeTokensByDestinationKey2 = [v6 changeTokensByDestinationKey];
  LOBYTE(v7) = [v7 nf_object:changeTokensByDestinationKey isEqualToObject:changeTokensByDestinationKey2];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  changeTokensByDestinationKey = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  v6 = [v4 initWithChangeTokensByDestinationKey:changeTokensByDestinationKey];

  return v6;
}

- (FCCKPrivateDatabaseServerChangeToken)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"changeTokensByDestinationKey"];

  v10 = [(FCCKPrivateDatabaseServerChangeToken *)self initWithChangeTokensByDestinationKey:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  changeTokensByDestinationKey = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  [coderCopy encodeObject:changeTokensByDestinationKey forKey:@"changeTokensByDestinationKey"];
}

+ (id)tokenByAddingCKToken:(id)token forDestination:(int64_t)destination toToken:(id)toToken
{
  v17[1] = *MEMORY[0x1E69E9840];
  toTokenCopy = toToken;
  tokenCopy = token;
  v9 = [objc_opt_class() _keyForDestination:destination];
  v16 = v9;
  v17[0] = tokenCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v11 = MEMORY[0x1E695DF20];
  changeTokensByDestinationKey = [toTokenCopy changeTokensByDestinationKey];

  v13 = [v11 fc_dictionaryByAddingEntriesFromDictionary:v10 toDictionary:changeTokensByDestinationKey];

  v14 = [objc_alloc(objc_opt_class()) initWithChangeTokensByDestinationKey:v13];

  return v14;
}

- (id)changeTokenForDestination:(int64_t)destination
{
  changeTokensByDestinationKey = [(FCCKPrivateDatabaseServerChangeToken *)self changeTokensByDestinationKey];
  v5 = [objc_opt_class() _keyForDestination:destination];
  v6 = [changeTokensByDestinationKey objectForKeyedSubscript:v5];

  return v6;
}

+ (id)_keyForDestination:(int64_t)destination
{
  v13 = *MEMORY[0x1E69E9840];
  if ((destination - 1) < 2)
  {
    return @"Database";
  }

  if (destination)
  {
    if (destination == 3)
    {
      return @"SecureDatabase";
    }

    else
    {
      return &stru_1F2DC7DC0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
      v5 = 136315906;
      v6 = "+[FCCKPrivateDatabaseServerChangeToken _keyForDestination:]";
      v7 = 2080;
      v8 = "FCCKPrivateDatabaseServerChangeToken.m";
      v9 = 1024;
      v10 = 123;
      v11 = 2114;
      v12 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v5, 0x26u);
    }

    return &stru_1F2DC7DC0;
  }
}

@end