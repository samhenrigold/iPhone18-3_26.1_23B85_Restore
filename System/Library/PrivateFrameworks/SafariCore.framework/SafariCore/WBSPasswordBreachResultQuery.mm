@interface WBSPasswordBreachResultQuery
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)identifier dateLastModified:(id)modified;
@end

@implementation WBSPasswordBreachResultQuery

- (WBSPasswordBreachResultQuery)initWithPersistentIdentifier:(id)identifier dateLastModified:(id)modified
{
  identifierCopy = identifier;
  modifiedCopy = modified;
  v13.receiver = self;
  v13.super_class = WBSPasswordBreachResultQuery;
  v9 = [(WBSPasswordBreachResultQuery *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistentIdentifier, identifier);
    objc_storeStrong(&v10->_dateLastModified, modified);
    v11 = v10;
  }

  return v10;
}

- (WBSPasswordBreachResultQuery)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v6 = [representationCopy safari_dataForKey:@"PersistentIdentifier"];
  if (v6)
  {
    v8 = [representationCopy safari_dateForKey:@"DateLastModified"];
    if (v8)
    {
      self = [(WBSPasswordBreachResultQuery *)self initWithPersistentIdentifier:v6 dateLastModified:v8];
      selfCopy = self;
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v11];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordBreachResultQuery initWithDictionaryRepresentation:v10];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"PersistentIdentifier";
  v5[1] = @"DateLastModified";
  dateLastModified = self->_dateLastModified;
  v6[0] = self->_persistentIdentifier;
  v6[1] = dateLastModified;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

WBSPasswordBreachResultQuery *__75__WBSPasswordBreachResultQuery_resultQueriesFromDictionaryRepresentations___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WBSPasswordBreachResultQuery alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

@end