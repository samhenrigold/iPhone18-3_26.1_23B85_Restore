@interface CSEventDonationJournalItem
- (BOOL)containsAnyInAttributes:(id)attributes;
- (BOOL)containsAttribute:(id)attribute;
- (BOOL)hasTextContent;
- (BOOL)isUpdate;
- (CSEventDonationJournalItem)initWithIdentifier:(id *)identifier itemObj:(id *)obj attrDictObj:(id *)dictObj customDictObj:(id *)customDictObj contentObj:(id *)contentObj htmlObj:(id *)htmlObj embeddingsObj:(id *)embeddingsObj flags:(unsigned int)self0;
- (id)attributesForKeys:(id)keys bundleID:(id)d;
- (uint64_t)attrDictObj;
- (uint64_t)contentObj;
- (uint64_t)customDictObj;
- (uint64_t)embeddingsObj;
- (uint64_t)flags;
- (uint64_t)htmlObj;
- (uint64_t)identifier;
- (uint64_t)itemObj;
@end

@implementation CSEventDonationJournalItem

- (CSEventDonationJournalItem)initWithIdentifier:(id *)identifier itemObj:(id *)obj attrDictObj:(id *)dictObj customDictObj:(id *)customDictObj contentObj:(id *)contentObj htmlObj:(id *)htmlObj embeddingsObj:(id *)embeddingsObj flags:(unsigned int)self0
{
  v24.receiver = self;
  v24.super_class = CSEventDonationJournalItem;
  result = [(CSEventDonationJournalItem *)&v24 init];
  if (result)
  {
    v17 = *&identifier->var0;
    result->_identifier.reference = identifier->var2;
    *&result->_identifier.containerBytes = v17;
    v18 = *&obj->var0;
    result->_itemObj.reference = obj->var2;
    *&result->_itemObj.containerBytes = v18;
    v19 = *&dictObj->var0;
    result->_attrDictObj.reference = dictObj->var2;
    *&result->_attrDictObj.containerBytes = v19;
    v20 = *&customDictObj->var0;
    result->_customDictObj.reference = customDictObj->var2;
    *&result->_customDictObj.containerBytes = v20;
    v21 = *&contentObj->var0;
    result->_contentObj.reference = contentObj->var2;
    *&result->_contentObj.containerBytes = v21;
    v22 = *&htmlObj->var0;
    result->_htmlObj.reference = htmlObj->var2;
    *&result->_htmlObj.containerBytes = v22;
    v23 = *&embeddingsObj->var0;
    result->_embeddingsObj.reference = embeddingsObj->var2;
    *&result->_embeddingsObj.containerBytes = v23;
    result->_flags = flags;
  }

  return result;
}

- (BOOL)hasTextContent
{
  if (self)
  {
    if (_MDPlistGetPlistObjectType() == 244)
    {
      return 1;
    }
  }

  else if (_MDPlistGetPlistObjectType() == 244)
  {
    return 1;
  }

  return _MDPlistGetPlistObjectType() == 245;
}

- (uint64_t)contentObj
{
  if (result)
  {
    *a2 = *(result + 112);
    *(a2 + 16) = *(result + 128);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)htmlObj
{
  if (result)
  {
    *a2 = *(result + 136);
    *(a2 + 16) = *(result + 152);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)attrDictObj
{
  if (result)
  {
    *a2 = *(result + 64);
    *(a2 + 16) = *(result + 80);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)containsAnyInAttributes:(id)attributes
{
  v24 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attributesCopy = attributes;
  v5 = [attributesCopy countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        if (![(CSEventDonationJournalItem *)self containsAttribute:v8])
        {
          if (!self)
          {
            continue;
          }

          if (!self->_customDictObj.containerLength)
          {
            continue;
          }

          v13 = *&self->_customDictObj.containerBytes;
          reference = self->_customDictObj.reference;
          v9 = v8;
          [v8 UTF8String];
          v10 = v8;
          strlen([v8 UTF8String]);
          if (!_MDPlistDictionaryGetPlistObjectForKey())
          {
            continue;
          }
        }

        LOBYTE(self) = 1;
        goto LABEL_16;
      }

      v5 = [attributesCopy countByEnumeratingWithState:&v16 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (self)
  {
    if (self->_customDictObj.containerLength)
    {
      *&v13 = 0;
      *(&v13 + 1) = &v13;
      reference = 0x2020000000;
      v15 = 0;
      v12 = attributesCopy;
      _MDPlistDictionaryIterate();
      LOBYTE(self) = *(*(&v13 + 1) + 24);

      _Block_object_dispose(&v13, 8);
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

LABEL_16:

  return self & 1;
}

- (uint64_t)customDictObj
{
  if (result)
  {
    *a2 = *(result + 88);
    *(a2 + 16) = *(result + 104);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void __54__CSEventDonationJournalItem_containsAnyInAttributes___block_invoke(uint64_t a1, const UInt8 *a2, CFIndex a3)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = CFStringCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], a2, a3, 0x8000100u, 0, *MEMORY[0x277CBED00]);
    if ([*(a1 + 32) containsObject:?])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)containsAttribute:(id)attribute
{
  attributeCopy = attribute;
  if (![attributeCopy isEqualToString:@"kMDItemTextContent"])
  {
    if ([attributeCopy isEqualToString:@"kMDItemHTMLContentData"])
    {
      hasHTMLContent = [(CSEventDonationJournalItem *)self hasHTMLContent];
      goto LABEL_5;
    }

    if ([attributeCopy isEqualToString:@"kMDItemExtraData"])
    {
      if (!self || !self->_customDictObj.containerLength)
      {
        goto LABEL_16;
      }

      v9 = *&self->_customDictObj.containerBytes;
      reference = self->_customDictObj.reference;
    }

    else
    {
      if (!self)
      {
        v9 = 0uLL;
        v10 = 0;
LABEL_14:
        [attributeCopy UTF8String];
        strlen([attributeCopy UTF8String]);
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          v6 = 1;
          goto LABEL_6;
        }

LABEL_16:
        v6 = 0;
        goto LABEL_6;
      }

      v9 = *&self->_attrDictObj.containerBytes;
      reference = self->_attrDictObj.reference;
    }

    v10 = reference;
    goto LABEL_14;
  }

  hasHTMLContent = [(CSEventDonationJournalItem *)self hasTextContent];
LABEL_5:
  v6 = hasHTMLContent;
LABEL_6:

  return v6;
}

- (id)attributesForKeys:(id)keys bundleID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  dCopy = d;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(keysCopy, "count") + 1}];
  v24 = 0uLL;
  v25 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        if (-[CSEventDonationJournalItem hasHTMLContent](self, "hasHTMLContent") && [v13 isEqualToString:@"kMDItemHTMLContentData"] || -[CSEventDonationJournalItem hasTextContent](self, "hasTextContent") && objc_msgSend(v13, "isEqualToString:", @"kMDItemTextContent"))
        {
          v14 = MDJournalReaderMDPlistObjectCopy();
        }

        else
        {
          if (![v13 isEqualToString:@"kMDItemExtraData"] || !SKGBundleIsWallet() || !self || !self->_customDictObj.containerLength || (objc_msgSend(v13, "UTF8String"), strlen(objc_msgSend(v13, "UTF8String")), !_MDPlistDictionaryGetPlistObjectForKey()))
          {
            [v13 UTF8String];
            strlen([v13 UTF8String]);
            if (!_MDPlistDictionaryGetPlistObjectForKey())
            {
              goto LABEL_21;
            }
          }

          v14 = _MDPlistContainerCopyObject();
        }

        v15 = v14;
        if (v14)
        {
          [v7 setObject:v14 forKey:v13];
        }

LABEL_21:
        ++v12;
      }

      while (v10 != v12);
      v16 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      v10 = v16;
    }

    while (v16);
  }

  if (dCopy)
  {
    v17 = [v7 objectForKey:@"_kMDItemBundleID"];

    if (!v17)
    {
      [v7 setObject:dCopy forKey:@"_kMDItemBundleID"];
    }
  }

  return v7;
}

- (uint64_t)identifier
{
  if (result)
  {
    *a2 = *(result + 16);
    *(a2 + 16) = *(result + 32);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)itemObj
{
  if (result)
  {
    *a2 = *(result + 40);
    *(a2 + 16) = *(result + 56);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (uint64_t)embeddingsObj
{
  if (result)
  {
    *a2 = *(result + 160);
    *(a2 + 16) = *(result + 176);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

- (BOOL)isUpdate
{
  if (self)
  {
    LOBYTE(self) = self->_flags & 1;
  }

  return self;
}

- (uint64_t)flags
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

@end