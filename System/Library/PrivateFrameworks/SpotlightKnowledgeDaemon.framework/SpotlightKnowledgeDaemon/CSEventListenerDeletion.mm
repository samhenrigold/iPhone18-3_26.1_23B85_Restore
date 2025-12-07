@interface CSEventListenerDeletion
- (CSEventListenerDeletion)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj indexType:(int)type bundleHash:(unsigned int)hash;
- (uint64_t)setIsManaged:(uint64_t)result;
- (void)iterateIdentifiers:(id)identifiers;
@end

@implementation CSEventListenerDeletion

- (CSEventListenerDeletion)initWithSerialNumber:(unint64_t)number bundle:(const char *)bundle journalCookie:(const char *)cookie itemsObj:(id *)obj indexType:(int)type bundleHash:(unsigned int)hash
{
  v16.receiver = self;
  v16.super_class = CSEventListenerDeletion;
  result = [(CSEventListenerDeletion *)&v16 init];
  if (result)
  {
    result->_serialNumber = number;
    result->_bundle = bundle;
    result->_journalCookie = cookie;
    v15 = *&obj->var0;
    result->_itemsObj.reference = obj->var2;
    *&result->_itemsObj.containerBytes = v15;
    result->_indexType = type;
    result->_bundleHash = hash;
  }

  return result;
}

- (void)iterateIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (self && self->_isDict)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __46__CSEventListenerDeletion_iterateIdentifiers___block_invoke;
    v20 = &unk_27893CF58;
    v21 = identifiersCopy;
    v15 = *&self->_itemsObj.containerBytes;
    reference = self->_itemsObj.reference;
    _MDPlistArrayIterate();
    v6 = v21;
  }

  else
  {
    v15 = *&self->_itemsObj.containerBytes;
    reference = self->_itemsObj.reference;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = MDJournalReaderMDPlistObjectCopy();
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v5[2](v5, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v8);
    }
  }
}

void __46__CSEventListenerDeletion_iterateIdentifiers___block_invoke(uint64_t a1, __int128 *a2)
{
  if (_MDPlistDictionaryGetPlistObjectForKey())
  {
    if (_MDPlistStringGetValue())
    {
      v3 = MDJournalReaderMDPlistObjectCopy();
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (uint64_t)setIsManaged:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

@end