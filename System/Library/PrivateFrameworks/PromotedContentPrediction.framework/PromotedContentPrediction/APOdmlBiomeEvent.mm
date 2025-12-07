@interface APOdmlBiomeEvent
+ (id)_customClassesForDataDict;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (APOdmlBiomeEvent)initWithDictionary:(id)dictionary andIdentifier:(id)identifier;
- (NSDictionary)dictionary;
- (NSUUID)identifier;
- (id)serialize;
@end

@implementation APOdmlBiomeEvent

- (APOdmlBiomeEvent)initWithDictionary:(id)dictionary andIdentifier:(id)identifier
{
  v18[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = APOdmlBiomeEvent;
  v8 = [(APOdmlBiomeEvent *)&v16 init];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    outerDictionary = v8->_outerDictionary;
    v8->_outerDictionary = dictionary;

    v11 = v8->_outerDictionary;
    v12 = [dictionaryCopy copy];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:@"data"];

    if (identifierCopy)
    {
      v13 = v8->_outerDictionary;
      v17 = @"identifier";
      v18[0] = identifierCopy;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(NSMutableDictionary *)v13 setValuesForKeysWithDictionary:v14];
    }
  }

  return v8;
}

- (NSDictionary)dictionary
{
  outerDictionary = [(APOdmlBiomeEvent *)self outerDictionary];
  v3 = [outerDictionary objectForKeyedSubscript:@"data"];

  return v3;
}

- (NSUUID)identifier
{
  outerDictionary = [(APOdmlBiomeEvent *)self outerDictionary];
  v3 = [outerDictionary objectForKeyedSubscript:@"identifier"];

  return v3;
}

+ (id)_customClassesForDataDict
{
  v2 = MEMORY[0x277CBEB98];
  objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_setWithObject_);
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = +[APOdmlTrainingSetBuilder classesForDataDict];
  _customClassesForDataDict = [self _customClassesForDataDict];
  v8 = [v6 setByAddingObjectsFromSet:_customClassesForDataDict];

  v18 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:dataCopy error:&v18];

  v10 = v18;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"data"];
    if (v11)
    {
      v12 = objc_alloc(objc_opt_class());
      v13 = [v9 objectForKeyedSubscript:@"identifier"];
      v14 = [v12 initWithDictionary:v11 andIdentifier:v13];
    }

    else
    {
      v13 = OdmlLogForCategory(0xCuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&dword_260ECB000, v13, OS_LOG_TYPE_ERROR, "No data in deserialized dictionary:\n%@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v11 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      code = [v10 code];
      localizedDescription = [v10 localizedDescription];
      *buf = 134218242;
      v20 = code;
      v21 = 2112;
      v22 = localizedDescription;
      _os_log_impl(&dword_260ECB000, v11, OS_LOG_TYPE_ERROR, "Error %ld unarchiving event data: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)serialize
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAB0];
  outerDictionary = [(APOdmlBiomeEvent *)self outerDictionary];
  v13 = 0;
  v5 = [v3 archivedDataWithRootObject:outerDictionary requiringSecureCoding:1 error:&v13];
  v6 = v13;

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (v7)
  {
    v8 = OdmlLogForCategory(0xCuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      code = [v6 code];
      localizedDescription = [v6 localizedDescription];
      outerDictionary2 = [(APOdmlBiomeEvent *)self outerDictionary];
      *buf = 134218498;
      v15 = code;
      v16 = 2112;
      v17 = localizedDescription;
      v18 = 2112;
      v19 = outerDictionary2;
      _os_log_impl(&dword_260ECB000, v8, OS_LOG_TYPE_ERROR, "Error %ld encoding event data: %@\nData:\n%@", buf, 0x20u);
    }
  }

  return v5;
}

@end