@interface FCCWeeklyGoalDisplayContext
- (FCCWeeklyGoalDisplayContext)initWithDictionary:(id)dictionary;
- (FCCWeeklyGoalDisplayContext)initWithDisplayCount:(int64_t)count lastDisplayDate:(id)date;
- (id)dictionaryRepresentation;
@end

@implementation FCCWeeklyGoalDisplayContext

- (FCCWeeklyGoalDisplayContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"DisplayCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"LastDate"];
  v8 = [(FCCWeeklyGoalDisplayContext *)self initWithDisplayCount:integerValue lastDisplayDate:v7];

  return v8;
}

- (FCCWeeklyGoalDisplayContext)initWithDisplayCount:(int64_t)count lastDisplayDate:(id)date
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = FCCWeeklyGoalDisplayContext;
  v8 = [(FCCWeeklyGoalDisplayContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_displayCount = count;
    objc_storeStrong(&v8->_lastDisplayDate, date);
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6[0] = @"DisplayCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_displayCount];
  v6[1] = @"LastDate";
  v7[0] = v3;
  v7[1] = self->_lastDisplayDate;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

@end