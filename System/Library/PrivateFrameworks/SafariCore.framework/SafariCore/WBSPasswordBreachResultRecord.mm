@interface WBSPasswordBreachResultRecord
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordBreachResultRecord)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordBreachResultRecord)initWithPersistentIdentifier:(id)identifier result:(unint64_t)result dateLastModified:(id)modified;
@end

@implementation WBSPasswordBreachResultRecord

- (WBSPasswordBreachResultRecord)initWithPersistentIdentifier:(id)identifier result:(unint64_t)result dateLastModified:(id)modified
{
  identifierCopy = identifier;
  modifiedCopy = modified;
  v15.receiver = self;
  v15.super_class = WBSPasswordBreachResultRecord;
  v11 = [(WBSPasswordBreachResultRecord *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_persistentIdentifier, identifier);
    v12->_result = result;
    objc_storeStrong(&v12->_dateLastModified, modified);
    v13 = v12;
  }

  return v12;
}

- (WBSPasswordBreachResultRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v6 = [representationCopy safari_dataForKey:@"PersistentIdentifier"];
  if (v6)
  {
    v7 = [representationCopy safari_numberForKey:@"Result"];
    v9 = v7;
    if (v7)
    {
      unsignedIntegerValue = [v7 unsignedIntegerValue];
      v12 = [representationCopy safari_dateForKey:@"DateLastModified"];
      if (v12)
      {
        self = [(WBSPasswordBreachResultRecord *)self initWithPersistentIdentifier:v6 result:unsignedIntegerValue dateLastModified:v12];
        selfCopy = self;
      }

      else
      {
        v30 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v11);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [(WBSPasswordBreachResultRecord *)v30 initWithDictionaryRepresentation:v31, v32, v33, v34, v35, v36, v37];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachResultRecord *)v22 initWithDictionaryRepresentation:v23, v24, v25, v26, v27, v28, v29];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(WBSPasswordBreachResultRecord *)v14 initWithDictionaryRepresentation:v15, v16, v17, v18, v19, v20, v21];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = self->_result;
  v9[0] = self->_persistentIdentifier;
  v8[0] = @"PersistentIdentifier";
  v8[1] = @"Result";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v8[2] = @"DateLastModified";
  dateLastModified = self->_dateLastModified;
  v9[1] = v4;
  v9[2] = dateLastModified;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

WBSPasswordBreachResultRecord *__76__WBSPasswordBreachResultRecord_resultRecordsFromDictionaryRepresentations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSPasswordBreachResultRecord alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

@end