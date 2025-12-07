@interface TSTAIUTCValue
- (NSDictionary)dictionary;
- (TSTAIUTCValue)init;
- (TSTAIUTCValue)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSTAIUTCValue

- (TSTAIUTCValue)init
{
  v4.receiver = self;
  v4.super_class = TSTAIUTCValue;
  v2 = [(TSTAIUTCValue *)&v4 init];
  if (v2 && init_onceToken_1 != -1)
  {
    [TSTAIUTCValue init];
  }

  return v2;
}

void *__21__TSTAIUTCValue_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = TSTAIUTCValueDateFormatter;
  TSTAIUTCValueDateFormatter = v0;

  v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:?];
  [TSTAIUTCValueDateFormatter setTimeZone:?];

  v3 = TSTAIUTCValueDateFormatter;

  return [v3 setFormatOptions:?];
}

- (TSTAIUTCValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(TSTAIUTCValue *)self init];
  if (v5)
  {
    v6 = TSTAIUTCValueDateFormatter;
    v7 = [dictionaryCopy objectForKeyedSubscript:?];
    v8 = [v6 dateFromString:?];
    utcDate = v5->_utcDate;
    v5->_utcDate = v8;

    v10 = TSTAIUTCValueDateFormatter;
    v11 = [dictionaryCopy objectForKeyedSubscript:?];
    v12 = [v10 dateFromString:?];
    taiDate = v5->_taiDate;
    v5->_taiDate = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:?];
    v5->_modifiedJulianDay = [v14 integerValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:?];
    [v15 doubleValue];
    v5->_constant = v16;

    v17 = [dictionaryCopy objectForKeyedSubscript:?];
    v5->_offset = [v17 integerValue];

    v18 = [dictionaryCopy objectForKeyedSubscript:?];
    [v18 doubleValue];
    v5->_coefficient = v19;

    if (v5->_coefficient != 0.0)
    {
      v20 = [(NSDate *)v5->_utcDate dateByAddingTimeInterval:?];
      v21 = v5->_taiDate;
      v5->_taiDate = v20;
    }
  }

  return v5;
}

- (NSDictionary)dictionary
{
  v3 = TSTAIUTCValueDateFormatter;
  utcDate = [(TSTAIUTCValue *)self utcDate];
  v13 = [v3 stringFromDate:?];
  v5 = TSTAIUTCValueDateFormatter;
  taiDate = [(TSTAIUTCValue *)self taiDate];
  v14 = [v5 stringFromDate:?];
  v7 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self modifiedJulianDay];
  v15 = [v7 numberWithUnsignedInteger:?];
  v8 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self constant];
  v16 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self offset];
  v17 = [v9 numberWithUnsignedInteger:?];
  v10 = MEMORY[0x277CCABB0];
  [(TSTAIUTCValue *)self coefficient];
  v18 = [v10 numberWithDouble:?];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  utcDate = [(TSTAIUTCValue *)self utcDate];
  [v4 setUtcDate:?];

  taiDate = [(TSTAIUTCValue *)self taiDate];
  [v4 setTaiDate:?];

  [(TSTAIUTCValue *)self modifiedJulianDay];
  [v4 setModifiedJulianDay:?];
  [(TSTAIUTCValue *)self constant];
  [v4 setConstant:?];
  [(TSTAIUTCValue *)self coefficient];
  [v4 setCoefficient:?];
  [(TSTAIUTCValue *)self offset];
  [v4 setOffset:?];
  return v4;
}

@end