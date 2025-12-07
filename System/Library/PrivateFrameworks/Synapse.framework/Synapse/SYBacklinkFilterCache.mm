@interface SYBacklinkFilterCache
- (BOOL)containsMatchingEntriesForItem:(id)item;
- (BOOL)isEqual:(id)equal;
- (SYBacklinkFilterCache)initWithActivityTypes:(id)types;
- (SYBacklinkFilterCache)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)addEntriesForItem:(id)item;
- (void)encodeWithCoder:(id)coder;
- (void)finalize;
@end

@implementation SYBacklinkFilterCache

- (SYBacklinkFilterCache)initWithActivityTypes:(id)types
{
  typesCopy = types;
  v9.receiver = self;
  v9.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v9 init];
  if (v5)
  {
    v6 = [typesCopy copy];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableArray *)self->_entries isEqualToArray:equalCopy[2]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  data = self->_data;
  if (!data)
  {
    data = self->_entries;
  }

  return [data hash];
}

- (SYBacklinkFilterCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SYBacklinkFilterCache;
  v5 = [(SYBacklinkFilterCache *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"types"];
    activityTypes = v5->_activityTypes;
    v5->_activityTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityTypes = self->_activityTypes;
  coderCopy = coder;
  [coderCopy encodeObject:activityTypes forKey:@"types"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
}

- (void)addEntriesForItem:(id)item
{
  itemCopy = item;
  v29 = itemCopy;
  if (!self->_entries)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:150];
    entries = self->_entries;
    self->_entries = v5;

    itemCopy = v29;
  }

  persistentIdentifier = [itemCopy persistentIdentifier];

  if (persistentIdentifier)
  {
    v8 = self->_entries;
    v9 = MEMORY[0x277CCABB0];
    persistentIdentifier2 = [v29 persistentIdentifier];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(persistentIdentifier2, "hash")}];
    [(NSMutableArray *)v8 addObject:v11];
  }

  targetContentIdentifier = [v29 targetContentIdentifier];

  if (targetContentIdentifier)
  {
    v13 = self->_entries;
    v14 = MEMORY[0x277CCABB0];
    targetContentIdentifier2 = [v29 targetContentIdentifier];
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(targetContentIdentifier2, "hash")}];
    [(NSMutableArray *)v13 addObject:v16];
  }

  canonicalURL = [v29 canonicalURL];

  if (canonicalURL)
  {
    v18 = self->_entries;
    v19 = MEMORY[0x277CCABB0];
    canonicalURL2 = [v29 canonicalURL];
    _lp_simplifiedURLStringForFuzzyMatching = [canonicalURL2 _lp_simplifiedURLStringForFuzzyMatching];
    v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(_lp_simplifiedURLStringForFuzzyMatching, "hash")}];
    [(NSMutableArray *)v18 addObject:v22];
  }

  webpageURL = [v29 webpageURL];

  if (webpageURL)
  {
    v24 = self->_entries;
    v25 = MEMORY[0x277CCABB0];
    webpageURL2 = [v29 webpageURL];
    _lp_simplifiedURLStringForFuzzyMatching2 = [webpageURL2 _lp_simplifiedURLStringForFuzzyMatching];
    v28 = [v25 numberWithUnsignedInteger:{objc_msgSend(_lp_simplifiedURLStringForFuzzyMatching2, "hash")}];
    [(NSMutableArray *)v24 addObject:v28];
  }
}

- (void)finalize
{
  if ([(NSMutableArray *)self->_entries count])
  {
    [(NSMutableArray *)self->_entries sortUsingComparator:&__block_literal_global_11];
    v3 = malloc_type_malloc(2 * [(NSMutableArray *)self->_entries count], 0x1000040BDFB0063uLL);
    entries = self->_entries;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__SYBacklinkFilterCache_finalize__block_invoke_2;
    v7[3] = &__block_descriptor_40_e25_v32__0__NSNumber_8Q16_B24l;
    v7[4] = v3;
    [(NSMutableArray *)entries enumerateObjectsUsingBlock:v7];
    v5 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v3 length:2 * -[NSMutableArray count](self->_entries freeWhenDone:{"count"), 1}];
    data = self->_data;
    self->_data = v5;
  }

  else
  {
    self->_data = [MEMORY[0x277CBEA90] data];

    MEMORY[0x2821F96F8]();
  }
}

uint64_t __33__SYBacklinkFilterCache_finalize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedShortValue];
  v6 = [v4 unsignedShortValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void *__33__SYBacklinkFilterCache_finalize__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 unsignedShortValue];
  *(*(a1 + 32) + 2 * a3) = result;
  return result;
}

- (BOOL)containsMatchingEntriesForItem:(id)item
{
  itemCopy = item;
  v5 = os_log_create("com.apple.synapse", "SYBacklinkFilterCache");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SYBacklinkFilterCache *)itemCopy containsMatchingEntriesForItem:v5];
  }

  activityTypes = [(SYBacklinkFilterCache *)self activityTypes];
  activityType = [itemCopy activityType];
  v8 = [activityTypes containsObject:activityType];

  v24 = 0;
  if (v8)
  {
    if ((v9 = -[NSData length](self->_data, "length") >> 1, [itemCopy persistentIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10) && (objc_msgSend(itemCopy, "persistentIdentifier"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hash"), v11, -[NSData _sy_containsUnsignedShort:inRange:](self->_data, "_sy_containsUnsignedShort:inRange:", v12, 0, v9)) || (objc_msgSend(itemCopy, "targetContentIdentifier"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13) && (objc_msgSend(itemCopy, "targetContentIdentifier"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "hash"), v14, -[NSData _sy_containsUnsignedShort:inRange:](self->_data, "_sy_containsUnsignedShort:inRange:", v15, 0, v9)) || (objc_msgSend(itemCopy, "canonicalURL"), v16 = objc_claimAutoreleasedReturnValue(), v16, v16) && (objc_msgSend(itemCopy, "canonicalURL"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "_lp_simplifiedURLStringForFuzzyMatching"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "hash"), v18, v17, -[NSData _sy_containsUnsignedShort:inRange:](self->_data, "_sy_containsUnsignedShort:inRange:", v19, 0, v9)) || (objc_msgSend(itemCopy, "webpageURL"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20) && (objc_msgSend(itemCopy, "webpageURL"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "_lp_simplifiedURLStringForFuzzyMatching"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "hash"), v22, v21, -[NSData _sy_containsUnsignedShort:inRange:](self->_data, "_sy_containsUnsignedShort:inRange:", v23, 0, v9)))
    {
      v24 = 1;
    }
  }

  return v24;
}

- (void)containsMatchingEntriesForItem:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "containsMatchingEntriesForItem: %@", &v2, 0xCu);
}

@end