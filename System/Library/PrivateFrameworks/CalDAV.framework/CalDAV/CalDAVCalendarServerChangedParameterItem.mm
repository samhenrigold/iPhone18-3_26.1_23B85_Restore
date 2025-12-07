@interface CalDAVCalendarServerChangedParameterItem
- (void)parserFoundAttributes:(id)attributes;
@end

@implementation CalDAVCalendarServerChangedParameterItem

- (void)parserFoundAttributes:(id)attributes
{
  v19 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = *MEMORY[0x277CFDFA8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(attributesCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        name = [v10 name];
        v12 = [name isEqualToString:v8];

        if (v12)
        {
          value = [v10 value];
          [(CalDAVCalendarServerChangedParameterItem *)self setNameAttribute:value];
        }
      }

      v6 = [attributesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

@end