@interface _HDDeleteSourcesWithUUIDsEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDDeleteSourcesWithUUIDsEntry)initWithCoder:(id)coder;
- (_HDDeleteSourcesWithUUIDsEntry)initWithUUIDs:(id)ds bundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDeleteSourcesWithUUIDsEntry

- (_HDDeleteSourcesWithUUIDsEntry)initWithUUIDs:(id)ds bundleIdentifier:(id)identifier
{
  dsCopy = ds;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _HDDeleteSourcesWithUUIDsEntry;
  v8 = [(_HDDeleteSourcesWithUUIDsEntry *)&v14 init];
  if (v8)
  {
    v9 = objc_msgSend_copy(dsCopy);
    UUIDs = v8->_UUIDs;
    v8->_UUIDs = v9;

    v11 = objc_msgSend_copy(identifierCopy);
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v35 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    *&v8 = 138543362;
    v21 = v8;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        uUIDs = [v12 UUIDs];
        bundleIdentifier = [v12 bundleIdentifier];
        database = [profileCopy database];
        v27 = 0;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59___HDDeleteSourcesWithUUIDsEntry_applyEntries_withProfile___block_invoke;
        v23[3] = &unk_278615D40;
        v24 = profileCopy;
        v16 = uUIDs;
        v25 = v16;
        v17 = bundleIdentifier;
        v26 = v17;
        v18 = [(HDHealthEntity *)HDSampleEntity performWriteTransactionWithHealthDatabase:database error:&v27 block:v23];
        v19 = v27;

        if (!v18)
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v21;
            v33 = v19;
            _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Unable to delete source/samples for journaled source: %{public}@", buf, 0xCu);
          }

          if ([v19 hk_isTransactionInterruptedError])
          {

            goto LABEL_14;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (_HDDeleteSourcesWithUUIDsEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"UUIDs"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    self = [(_HDDeleteSourcesWithUUIDsEntry *)self initWithUUIDs:v8 bundleIdentifier:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  UUIDs = self->_UUIDs;
  coderCopy = coder;
  [coderCopy encodeObject:UUIDs forKey:@"UUIDs"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
}

@end