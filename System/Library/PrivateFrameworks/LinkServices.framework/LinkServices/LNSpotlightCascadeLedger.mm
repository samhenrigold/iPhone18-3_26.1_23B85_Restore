@interface LNSpotlightCascadeLedger
+ (id)_loadLedgerFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)_isDeleted;
- (BOOL)abandonDonationType:(unsigned __int8)type error:(id *)error;
- (BOOL)attemptDonationType:(unsigned __int8)type error:(id *)error;
- (BOOL)completeDonationType:(unsigned __int8)type version:(unint64_t)version error:(id *)error;
- (BOOL)deferAttemptOfDonationType:(unsigned __int8)type error:(id *)error;
- (BOOL)deleteLedger:(id *)ledger;
- (BOOL)resetLedger:(id *)ledger;
- (LNSpotlightCascadeLedger)initWithDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error;
- (id)description;
- (unint64_t)countAttemptsOfDonationType:(unsigned __int8)type;
- (unint64_t)version;
- (unsigned)_options;
@end

@implementation LNSpotlightCascadeLedger

- (BOOL)deleteLedger:(id *)ledger
{
  v4 = [(BMFileBackedDictionary *)self->_dictionary clear:ledger];
  if (v4)
  {
    self->_deleted = 1;
  }

  return v4;
}

- (BOOL)_isDeleted
{
  v9 = *MEMORY[0x1E69E9840];
  deleted = self->_deleted;
  if (deleted)
  {
    v4 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v7 = 138412290;
      v8 = bundleIdentifier;
      _os_log_impl(&dword_19763D000, v4, OS_LOG_TYPE_FAULT, "API violation - Attempting to write to a deleted ledger file for bundle: %@", &v7, 0xCu);
    }
  }

  return deleted;
}

- (BOOL)resetLedger:(id *)ledger
{
  v5 = [(BMFileBackedDictionary *)self->_dictionary clear:?];
  if (v5)
  {
    v6 = [objc_opt_class() _loadLedgerFileInDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier error:ledger];
    dictionary = self->_dictionary;
    self->_dictionary = v6;

    LOBYTE(v5) = self->_dictionary != 0;
  }

  return v5;
}

- (BOOL)deferAttemptOfDonationType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  if ([(LNSpotlightCascadeLedger *)self _isDeleted])
  {
    return 0;
  }

  v8 = [(LNSpotlightCascadeLedger *)self countAttemptsOfDonationType:typeCopy];
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  dictionary = self->_dictionary;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = _donationTypeName(typeCopy);
  v13 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v11 forKey:v12 error:error];

  return v13;
}

- (BOOL)abandonDonationType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  v18[2] = *MEMORY[0x1E69E9840];
  if ([(LNSpotlightCascadeLedger *)self _isDeleted])
  {
    return 0;
  }

  _options = [(LNSpotlightCascadeLedger *)self _options];
  if (typeCopy == 1)
  {
    v9 = [(LNSpotlightCascadeLedger *)self countAttemptsOfDonationType:1];
  }

  else
  {
    v9 = 0;
  }

  dictionary = self->_dictionary;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:_options | 2u];
  v18[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17[0] = @"Options";
  v14 = _donationTypeName(typeCopy);
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v7 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v13 forKeys:v15 error:error];

  return v7;
}

- (BOOL)completeDonationType:(unsigned __int8)type version:(unint64_t)version error:(id *)error
{
  typeCopy = type;
  v19[3] = *MEMORY[0x1E69E9840];
  if ([(LNSpotlightCascadeLedger *)self _isDeleted])
  {
    return 0;
  }

  if (typeCopy == 2)
  {
    _options = [(LNSpotlightCascadeLedger *)self _options];
  }

  else
  {
    _options = 0;
  }

  dictionary = self->_dictionary;
  v12 = [(LNSpotlightCascadeLedger *)self _boxedVersion:version];
  v19[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:_options];
  v19[1] = v13;
  v19[2] = &unk_1F0BD71B0;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v18[0] = @"Version";
  v18[1] = @"Options";
  v15 = _donationTypeName(typeCopy);
  v18[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  v9 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v14 forKeys:v16 error:error];

  return v9;
}

- (BOOL)attemptDonationType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  if ([(LNSpotlightCascadeLedger *)self _isDeleted])
  {
    return 0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[LNSpotlightCascadeLedger countAttemptsOfDonationType:](self, "countAttemptsOfDonationType:", typeCopy) + 1}];
  dictionary = self->_dictionary;
  v10 = _donationTypeName(typeCopy);
  v11 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v8 forKey:v10 error:error];

  return v11;
}

- (unint64_t)countAttemptsOfDonationType:(unsigned __int8)type
{
  dictionary = self->_dictionary;
  v4 = _donationTypeName(type);
  v5 = [(BMFileBackedDictionary *)dictionary objectForKey:v4];
  unsignedIntValue = [v5 unsignedIntValue];

  return unsignedIntValue;
}

- (unint64_t)version
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Version"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unsigned)_options
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Options"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = LNSpotlightCascadeLedger;
  v4 = [(LNSpotlightCascadeLedger *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@ %@", v4, self->_bundleIdentifier, self->_dictionary];

  return v5;
}

- (LNSpotlightCascadeLedger)initWithDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error
{
  directoryCopy = directory;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = LNSpotlightCascadeLedger;
  v11 = [(LNSpotlightCascadeLedger *)&v16 init];
  if (v11)
  {
    v12 = [objc_opt_class() _loadLedgerFileInDirectory:directoryCopy bundleIdentifier:identifierCopy error:error];
    dictionary = v11->_dictionary;
    v11->_dictionary = v12;

    if (!v11->_dictionary)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v11->_directory, directory);
    objc_storeStrong(&v11->_bundleIdentifier, identifier);
  }

  v14 = v11;
LABEL_6:

  return v14;
}

+ (id)_loadLedgerFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  directoryCopy = directory;
  v9 = +[LNAvailabilityChecker currentBuildVersion];
  v28[0] = @"Build";
  v28[1] = @"Options";
  v29[0] = v9;
  v29[1] = &unk_1F0BD7198;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v11 = [objc_alloc(MEMORY[0x1E698E9B0]) initWithFilename:identifierCopy protectionClass:4 directory:directoryCopy readOnly:0 create:1 initialDictionary:v10 error:error];

  if (!v11)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v12 = [v11 objectForKey:@"Build"];
  if (([v9 isEqual:v12] & 1) == 0)
  {
    v13 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_DEBUG, "Ledger file for bundle: %@ was written on build (%@) different from current (%@)", buf, 0x20u);
    }

    v21[0] = v9;
    v21[1] = &unk_1F0BD7198;
    v21[2] = &unk_1F0BD71B0;
    v21[3] = &unk_1F0BD71B0;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
    v20[0] = @"Build";
    v20[1] = @"Options";
    v20[2] = @"Full";
    v20[3] = @"Incremental";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    v16 = [v11 writeUpdatedObjects:v14 forKeys:v15 error:error];

    if (!v16)
    {
      v18 = 0;
      goto LABEL_12;
    }

    v17 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_DEBUG, "Reset ledger file for bundle: %@ on current build (%@): %@", buf, 0x20u);
    }
  }

  v18 = v11;
LABEL_12:

LABEL_13:

  return v18;
}

@end