@interface ASASelectorControl
- (NSArray)availableItems;
- (NSArray)currentItems;
- (id)coreAudioClassName;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)nameForItem:(unsigned int)item;
- (unsigned)currentItem;
- (void)setCurrentItem:(unsigned int)item;
@end

@implementation ASASelectorControl

- (void)setCurrentItem:(unsigned int)item
{
  itemCopy = item;
  if (![(ASAObject *)self setMainGlobalProperty:1935893353 withData:&itemCopy ofSize:4 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not set current item property\n", v3, 2u);
  }
}

- (unsigned)currentItem
{
  v5 = 4;
  v4 = 0;
  if (![(ASAObject *)self getMainGlobalProperty:1935893353 withData:&v4 ofSize:&v5 withQualifier:0 ofSize:0]&& os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current item property\n", v3, 2u);
  }

  return v4;
}

- (NSArray)currentItems
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1935893353 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0xB12852E2uLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    if ([(ASAObject *)self getMainGlobalProperty:1935893353 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0])
    {
      v7 = v15;
      array = [MEMORY[0x277CBEB18] array];
      if (v7 >= 4)
      {
        v9 = v7 >> 2;
        v10 = v6;
        do
        {
          v11 = *v10++;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
          [array addObject:v12];

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read current items property\n", v14, 2u);
      }

      array = 0;
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (NSArray)availableItems
{
  v3 = [(ASAObject *)self sizeOfMainGlobalProperty:1935892841 withQualifier:0 ofSize:0];
  v15 = v3;
  if (v3 && (v4 = v3, (v5 = malloc_type_malloc(v3, 0x47F98D9BuLL)) != 0))
  {
    v6 = v5;
    bzero(v5, v4);
    if ([(ASAObject *)self getMainGlobalProperty:1935892841 withData:v6 ofSize:&v15 withQualifier:0 ofSize:0])
    {
      v7 = v15;
      array = [MEMORY[0x277CBEB18] array];
      if (v7 >= 4)
      {
        v9 = v7 >> 2;
        v10 = v6;
        do
        {
          v11 = *v10++;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
          [array addObject:v12];

          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read available items property\n", v14, 2u);
      }

      array = 0;
    }

    free(v6);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)nameForItem:(unsigned int)item
{
  itemCopy = item;
  v7 = 8;
  cf = 0;
  if ([(ASAObject *)self getMainGlobalProperty:1935894894 withData:&cf ofSize:&v7 withQualifier:&itemCopy ofSize:4])
  {
    if (cf)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithString:?];
      CFRelease(cf);
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Could not read name for item property\n", v5, 2u);
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v36 = *MEMORY[0x277D85DE8];
  indentCopy = indent;
  v33.receiver = self;
  v33.super_class = ASASelectorControl;
  v7 = [(ASAControl *)&v33 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  [v7 appendFormat:@"%@|    Current Item: %u\n", indentCopy, -[ASASelectorControl currentItem](self, "currentItem")];
  [v7 appendFormat:@"%@|    Current Items:\n", indentCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(ASASelectorControl *)self currentItems];
  v8 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = -[ASASelectorControl nameForItem:](self, "nameForItem:", [v13 unsignedIntValue]);
        [v7 appendFormat:@"%@|        %u: %u %@\n", indentCopy, v10, objc_msgSend(v13, "unsignedIntValue"), v14];
        v10 = (v10 + 1);
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v9);
  }

  [v7 appendFormat:@"%@|    Available Items:\n", indentCopy];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obja = [(ASASelectorControl *)self availableItems];
  v15 = [obja countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v26;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v25 + 1) + 8 * j);
        v21 = -[ASASelectorControl nameForItem:](self, "nameForItem:", [v20 unsignedIntValue]);
        [v7 appendFormat:@"%@|        %u: %u %@\n", indentCopy, v17, objc_msgSend(v20, "unsignedIntValue"), v21];
        v17 = (v17 + 1);
      }

      v16 = [obja countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v16);
  }

  return v7;
}

- (id)coreAudioClassName
{
  objectClass = [(ASAObject *)self objectClass];
  v3 = @"AudioSelectorControl";
  v4 = @"AudioDataSourceControl";
  if (objectClass != 1685287523)
  {
    v4 = @"AudioSelectorControl";
  }

  if (objectClass == 1751740518)
  {
    v5 = @"AudioHighPassFilterControl";
  }

  else
  {
    v5 = v4;
  }

  if (objectClass == 1852601964)
  {
    v6 = @"AudioLineLevelControl";
  }

  else
  {
    v6 = v5;
  }

  if (objectClass == 1684370292)
  {
    v3 = @"AudioDataDestinationControl";
  }

  if (objectClass == 1668047723)
  {
    v3 = @"AudioClockSourceControl";
  }

  if (objectClass <= 1685287522)
  {
    return v3;
  }

  else
  {
    return v6;
  }
}

@end