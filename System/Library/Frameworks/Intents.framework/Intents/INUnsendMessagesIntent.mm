@interface INUnsendMessagesIntent
- (INUnsendMessagesIntent)initWithMessageIdentifiers:(NSArray *)messageIdentifiers;
- (NSArray)messageIdentifiers;
- (id)_dictionaryRepresentation;
- (id)_metadata;
- (id)_typedBackingStore;
- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id;
- (void)_setMetadata:(id)metadata;
- (void)setMessageIdentifiers:(id)identifiers;
@end

@implementation INUnsendMessagesIntent

- (void)_redactForMissingPrivacyEntitlementOptions:(unint64_t)options containingAppBundleId:(id)id
{
  v6 = [(INUnsendMessagesIntent *)self _typedBackingStore:options];
  v5 = [v6 copy];
  [(INIntent *)self setBackingStore:v5];
}

- (id)_dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"messageIdentifiers";
  messageIdentifiers = [(INUnsendMessagesIntent *)self messageIdentifiers];
  null = messageIdentifiers;
  if (!messageIdentifiers)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v7[0] = null;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!messageIdentifiers)
  {
  }

  return v4;
}

- (void)setMessageIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  _typedBackingStore = [(INUnsendMessagesIntent *)self _typedBackingStore];
  [_typedBackingStore clearMessageIdentifiers];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = identifiersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        _typedBackingStore2 = [(INUnsendMessagesIntent *)self _typedBackingStore];
        [_typedBackingStore2 addMessageIdentifiers:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (NSArray)messageIdentifiers
{
  _typedBackingStore = [(INUnsendMessagesIntent *)self _typedBackingStore];
  messageIdentifiers = [_typedBackingStore messageIdentifiers];

  if (messageIdentifiers)
  {
    v4 = [messageIdentifiers copy];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (INUnsendMessagesIntent)initWithMessageIdentifiers:(NSArray *)messageIdentifiers
{
  v4 = messageIdentifiers;
  v8.receiver = self;
  v8.super_class = INUnsendMessagesIntent;
  v5 = [(INIntent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(INUnsendMessagesIntent *)v5 setMessageIdentifiers:v4];
  }

  return v6;
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  _typedBackingStore = [(INUnsendMessagesIntent *)self _typedBackingStore];
  [_typedBackingStore setIntentMetadata:metadataCopy];
}

- (id)_metadata
{
  _typedBackingStore = [(INUnsendMessagesIntent *)self _typedBackingStore];
  intentMetadata = [_typedBackingStore intentMetadata];

  return intentMetadata;
}

- (id)_typedBackingStore
{
  backingStore = [(INIntent *)self backingStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = backingStore;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end