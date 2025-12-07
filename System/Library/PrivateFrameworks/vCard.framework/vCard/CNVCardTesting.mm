@interface CNVCardTesting
+ (BOOL)version21DataUsingAdapter:(id)adapter containsData:(id)data;
+ (BOOL)version30CardForPerson:(id)person containsLine:(id)line;
+ (BOOL)version30CardForPerson:(id)person containsString:(id)string;
+ (BOOL)version30DataUsingAdapter:(id)adapter containsData:(id)data;
+ (id)activityAlertResultWithTypes:(id)types sounds:(id)sounds vibrations:(id)vibrations;
+ (id)cardDataWithBodyLines:(id)lines version:(id)version encoding:(unint64_t)encoding;
+ (id)chineseDateWithEra:(int64_t)era year:(int64_t)year month:(int64_t)month day:(int64_t)day;
+ (id)complexValueWithValue:(id)value label:(id)label isPrimary:(BOOL)primary;
+ (id)gregorianDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
+ (id)instantMessagingItemWithUsername:(id)username service:(id)service label:(id)label;
+ (id)linesUsingAdapter:(id)adapter options:(id)options;
+ (id)parseCardWithBodyLine:(id)line;
+ (id)parseCardWithBodyLines:(id)lines version:(id)version encoding:(unint64_t)encoding;
+ (id)parseCardWithData:(id)data;
+ (id)parseCardWithData:(id)data options:(id)options;
+ (id)resultWithProperty:(id)property value:(id)value label:(id)label isPrimary:(BOOL)primary;
+ (id)unknownPropertyWithName:(id)name line:(id)line;
+ (id)version21DataUsingAdapter:(id)adapter;
+ (id)version30DataUsingAdapter:(id)adapter;
@end

@implementation CNVCardTesting

+ (id)parseCardWithBodyLine:(id)line
{
  v10 = *MEMORY[0x277D85DE8];
  lineCopy = line;
  v4 = MEMORY[0x277CBEA60];
  lineCopy2 = line;
  v6 = [v4 arrayWithObjects:&lineCopy count:1];

  v7 = [self parseCardWithBodyLines:{v6, lineCopy, v10}];

  return v7;
}

+ (id)parseCardWithBodyLines:(id)lines version:(id)version encoding:(unint64_t)encoding
{
  v6 = [self cardDataWithBodyLines:lines version:version encoding:encoding];
  v7 = [self parseCardWithData:v6];

  return v7;
}

+ (id)parseCardWithData:(id)data
{
  v3 = [CNVCardDictionarySerialization dictionariesWithData:data error:0];
  firstObject = [v3 firstObject];

  return firstObject;
}

+ (id)parseCardWithData:(id)data options:(id)options
{
  v4 = [CNVCardDictionarySerialization dictionariesWithData:data options:options error:0];
  firstObject = [v4 firstObject];

  return firstObject;
}

+ (id)cardDataWithBodyLines:(id)lines version:(id)version encoding:(unint64_t)encoding
{
  v22 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  versionCopy = version;
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"BEGIN:VCARD\r\n"];
  [string appendFormat:@"VERSION:%@\r\n", versionCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = linesCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [string appendFormat:@"%@\r\n", *(*(&v17 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [string appendString:@"END:VCARD\r\n"];
  v15 = [string dataUsingEncoding:encoding];

  return v15;
}

+ (id)resultWithProperty:(id)property value:(id)value label:(id)label isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v17[1] = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  propertyCopy2 = property;
  v11 = [self complexValueWithValue:value label:label isPrimary:primaryCopy];
  v15 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v17[0] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&propertyCopy count:1];

  return v13;
}

+ (id)complexValueWithValue:(id)value label:(id)label isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  v15[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  labelCopy = label;
  v14[0] = @"value";
  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v15[0] = null;
  v14[1] = @"label";
  null2 = labelCopy;
  if (!labelCopy)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v15[1] = null2;
  v14[2] = @"isPrimary";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:primaryCopy];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  if (labelCopy)
  {
    if (valueCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (valueCopy)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v12;
}

+ (id)unknownPropertyWithName:(id)name line:(id)line
{
  lineCopy = line;
  nameCopy = name;
  v7 = objc_alloc_init(CNVCardUnknownPropertyDescription);
  [(CNVCardUnknownPropertyDescription *)v7 setPropertyName:nameCopy];

  [(CNVCardUnknownPropertyDescription *)v7 setOriginalLine:lineCopy];

  return v7;
}

+ (id)linesUsingAdapter:(id)adapter options:(id)options
{
  v13 = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  v5 = MEMORY[0x277CBEA60];
  optionsCopy = options;
  adapterCopy2 = adapter;
  v8 = [v5 arrayWithObjects:&adapterCopy count:1];
  v9 = [CNVCardWriting stringWithPeople:v8 options:optionsCopy error:0, adapterCopy, v13];

  v10 = [v9 componentsSeparatedByString:@"\r\n"];

  return v10;
}

+ (id)version30DataUsingAdapter:(id)adapter
{
  v9 = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  v3 = MEMORY[0x277CBEA60];
  adapterCopy2 = adapter;
  v5 = [v3 arrayWithObjects:&adapterCopy count:1];
  v6 = [CNVCardWriting dataWithPeople:v5 options:0 error:0, adapterCopy, v9];

  return v6;
}

+ (id)version21DataUsingAdapter:(id)adapter
{
  v8[1] = *MEMORY[0x277D85DE8];
  adapterCopy = adapter;
  v4 = objc_alloc_init(CNVCardWritingOptions);
  [(CNVCardWritingOptions *)v4 setOutputVersion:1];
  v8[0] = adapterCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v6 = [CNVCardWriting dataWithPeople:v5 options:v4 error:0];

  return v6;
}

+ (BOOL)version30CardForPerson:(id)person containsLine:(id)line
{
  lineCopy = line;
  v7 = [self linesUsingAdapter:person];
  LOBYTE(self) = [v7 containsObject:lineCopy];

  return self;
}

+ (BOOL)version30CardForPerson:(id)person containsString:(id)string
{
  v12 = *MEMORY[0x277D85DE8];
  personCopy = person;
  v5 = MEMORY[0x277CBEA60];
  stringCopy = string;
  personCopy2 = person;
  v8 = [v5 arrayWithObjects:&personCopy count:1];
  v9 = [CNVCardWriting stringWithPeople:v8 options:0 error:0, personCopy, v12];

  LOBYTE(personCopy2) = [v9 containsString:stringCopy];
  return personCopy2;
}

+ (BOOL)version30DataUsingAdapter:(id)adapter containsData:(id)data
{
  dataCopy = data;
  v7 = [self version30DataUsingAdapter:adapter];
  LOBYTE(self) = [v7 _cn_containsData:dataCopy];

  return self;
}

+ (BOOL)version21DataUsingAdapter:(id)adapter containsData:(id)data
{
  dataCopy = data;
  v7 = [self version21DataUsingAdapter:adapter];
  LOBYTE(self) = [v7 _cn_containsData:dataCopy];

  return self;
}

+ (id)instantMessagingItemWithUsername:(id)username service:(id)service label:(id)label
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"username";
  v15[1] = @"service";
  v16[0] = username;
  v16[1] = service;
  v8 = MEMORY[0x277CBEAC0];
  labelCopy = label;
  serviceCopy = service;
  usernameCopy = username;
  v12 = [v8 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v13 = [self itemWithValue:v12 label:labelCopy];

  return v13;
}

+ (id)gregorianDateWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setYear:year];
  [v8 setMonth:month];
  [v8 setDay:day];
  v9 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  [v8 setCalendar:v9];

  return v8;
}

+ (id)chineseDateWithEra:(int64_t)era year:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v10 setEra:era];
  [v10 setYear:year];
  [v10 setMonth:month];
  [v10 setDay:day];
  v11 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE590]];
  [v10 setCalendar:v11];

  return v10;
}

+ (id)activityAlertResultWithTypes:(id)types sounds:(id)sounds vibrations:(id)vibrations
{
  v24[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  soundsCopy = sounds;
  vibrationsCopy = vibrations;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([typesCopy count])
  {
    v11 = 0;
    v12 = *MEMORY[0x277CFBD18];
    do
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      v14 = [soundsCopy objectAtIndexedSubscript:v11];
      v15 = (*(v12 + 16))(v12, v14);

      if (v15)
      {
        v16 = [soundsCopy objectAtIndexedSubscript:v11];
        [dictionary2 setObject:v16 forKeyedSubscript:@"sound"];
      }

      v17 = [vibrationsCopy objectAtIndexedSubscript:v11];
      v18 = (*(v12 + 16))(v12, v17);

      if (v18)
      {
        v19 = [vibrationsCopy objectAtIndexedSubscript:v11];
        [dictionary2 setObject:v19 forKeyedSubscript:@"vibration"];
      }

      v20 = [typesCopy objectAtIndexedSubscript:v11];
      [dictionary setObject:dictionary2 forKeyedSubscript:v20];

      ++v11;
    }

    while (v11 < [typesCopy count]);
  }

  v23 = @"ActivityAlert";
  v24[0] = dictionary;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];

  return v21;
}

@end