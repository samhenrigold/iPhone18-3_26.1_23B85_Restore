@interface _MPUStackItemReuseCache
+ (id)dequeueReusableStackItemWithIdentifier:(id)identifier;
+ (void)enqueueReusableStackItem:(id)item forReuseIdentifier:(id)identifier;
+ (void)registerStackViewForReuseIdentifier:(id)identifier;
+ (void)unregisterStackViewForReuseIdentifier:(id)identifier;
@end

@implementation _MPUStackItemReuseCache

+ (id)dequeueReusableStackItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = [__reuseIdentifierToReusableStackItems objectForKey:identifierCopy];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
      [v4 removeObjectAtIndex:0];
      if (![v4 count])
      {
        [__reuseIdentifierToReusableStackItems removeObjectForKey:identifierCopy];
        if (![__reuseIdentifierToReusableStackItems count])
        {
          v6 = __reuseIdentifierToReusableStackItems;
          __reuseIdentifierToReusableStackItems = 0;
        }
      }

      [v5 setHidden:0];
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

  return v5;
}

+ (void)enqueueReusableStackItem:(id)item forReuseIdentifier:(id)identifier
{
  itemCopy = item;
  identifierCopy = identifier;
  if (itemCopy)
  {
    if (identifierCopy)
    {
      v6 = [__reuseIdentifierToRegisteredCount objectForKey:identifierCopy];
      integerValue = [v6 integerValue];

      if (integerValue)
      {
        [itemCopy prepareForReuse];
        [itemCopy setHidden:1];
        v8 = __reuseIdentifierToReusableStackItems;
        if (!__reuseIdentifierToReusableStackItems)
        {
          v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
          v10 = __reuseIdentifierToReusableStackItems;
          __reuseIdentifierToReusableStackItems = v9;

          v8 = __reuseIdentifierToReusableStackItems;
        }

        v11 = [v8 objectForKey:identifierCopy];
        if (!v11)
        {
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          [__reuseIdentifierToReusableStackItems setObject:v11 forKey:identifierCopy];
        }

        if ([v11 count] <= 2)
        {
          [v11 addObject:itemCopy];
        }
      }
    }
  }
}

+ (void)registerStackViewForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    v5 = __reuseIdentifierToRegisteredCount;
    v12 = v4;
    if (!__reuseIdentifierToRegisteredCount)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:0];
      v7 = __reuseIdentifierToRegisteredCount;
      __reuseIdentifierToRegisteredCount = v6;

      v5 = __reuseIdentifierToRegisteredCount;
    }

    v8 = [v5 objectForKey:v12];
    integerValue = [v8 integerValue];

    v10 = __reuseIdentifierToRegisteredCount;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue + 1];
    [v10 setObject:v11 forKey:v12];

    v4 = v12;
  }

  MEMORY[0x2821F96F8](identifierCopy, v4);
}

+ (void)unregisterStackViewForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    v5 = [__reuseIdentifierToRegisteredCount objectForKey:identifierCopy];
    integerValue = [v5 integerValue];

    v4 = v8;
    if (integerValue == 1)
    {
      [__reuseIdentifierToRegisteredCount removeObjectForKey:v8];
      if (![__reuseIdentifierToRegisteredCount count])
      {
        v7 = __reuseIdentifierToRegisteredCount;
        __reuseIdentifierToRegisteredCount = 0;
      }

      identifierCopy = [__reuseIdentifierToReusableStackItems removeObjectForKey:v8];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](identifierCopy, v4);
}

@end