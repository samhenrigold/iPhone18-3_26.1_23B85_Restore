@interface CalDAVCalendarUserAddressItemTranslator
+ (id)_preferredAttributeForItem:(id)item;
+ (id)calDAVUserAddressForItem:(id)item;
+ (id)calDAVUserAddressForItem:(id)item prependMailTo:(BOOL)to;
+ (id)userAddressesForAddressSetItem:(id)item;
@end

@implementation CalDAVCalendarUserAddressItemTranslator

+ (id)userAddressesForAddressSetItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  hrefs = [itemCopy hrefs];
  v6 = [hrefs countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(hrefs);
        }

        v10 = [objc_opt_class() calDAVUserAddressForItem:*(*(&v12 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [hrefs countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)calDAVUserAddressForItem:(id)item
{
  itemCopy = item;
  v4 = [objc_opt_class() calDAVUserAddressForItem:itemCopy prependMailTo:0];

  return v4;
}

+ (id)calDAVUserAddressForItem:(id)item prependMailTo:(BOOL)to
{
  toCopy = to;
  itemCopy = item;
  v7 = [self _preferredAttributeForItem:itemCopy];
  payloadAsString = [itemCopy payloadAsString];

  if (payloadAsString)
  {
    if (toCopy && ([payloadAsString hasPrefix:@"mailto"] & 1) == 0)
    {
      v9 = [@"mailto:" stringByAppendingString:payloadAsString];

      payloadAsString = v9;
    }

    v10 = +[CalDAVCalendarUserAddress defaultPreferredAttribute];
    if (v7)
    {
      intValue = [v7 intValue];
    }

    else
    {
      intValue = v10;
    }

    v13 = [MEMORY[0x277CBEBC0] URLWithString:payloadAsString];
    if (v13)
    {
      v12 = [[CalDAVCalendarUserAddress alloc] initWithAddress:v13 preferred:intValue];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_preferredAttributeForItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  attributes = [item attributes];
  if ([attributes count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = attributes;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:@"preferred"];

          if (v11)
          {
            value = [v9 value];
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    value = 0;
LABEL_12:
  }

  else
  {
    value = 0;
  }

  return value;
}

@end