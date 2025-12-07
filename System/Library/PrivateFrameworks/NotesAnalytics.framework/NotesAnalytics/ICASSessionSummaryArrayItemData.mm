@interface ICASSessionSummaryArrayItemData
- (ICASSessionSummaryArrayItemData)initWithSessionType:(id)type sessionDuration:(id)duration sessionCount:(id)count;
- (id)toDict;
@end

@implementation ICASSessionSummaryArrayItemData

- (ICASSessionSummaryArrayItemData)initWithSessionType:(id)type sessionDuration:(id)duration sessionCount:(id)count
{
  typeCopy = type;
  durationCopy = duration;
  countCopy = count;
  v15.receiver = self;
  v15.super_class = ICASSessionSummaryArrayItemData;
  v12 = [(ICASSessionSummaryArrayItemData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionType, type);
    objc_storeStrong(&v13->_sessionDuration, duration);
    objc_storeStrong(&v13->_sessionCount, count);
  }

  return v13;
}

- (id)toDict
{
  v15[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"sessionType";
  sessionType = [(ICASSessionSummaryArrayItemData *)self sessionType];
  if (sessionType)
  {
    sessionType2 = [(ICASSessionSummaryArrayItemData *)self sessionType];
  }

  else
  {
    sessionType2 = objc_opt_new();
  }

  v5 = sessionType2;
  v15[0] = sessionType2;
  v14[1] = @"sessionDuration";
  sessionDuration = [(ICASSessionSummaryArrayItemData *)self sessionDuration];
  if (sessionDuration)
  {
    sessionDuration2 = [(ICASSessionSummaryArrayItemData *)self sessionDuration];
  }

  else
  {
    sessionDuration2 = objc_opt_new();
  }

  v8 = sessionDuration2;
  v15[1] = sessionDuration2;
  v14[2] = @"sessionCount";
  sessionCount = [(ICASSessionSummaryArrayItemData *)self sessionCount];
  if (sessionCount)
  {
    sessionCount2 = [(ICASSessionSummaryArrayItemData *)self sessionCount];
  }

  else
  {
    sessionCount2 = objc_opt_new();
  }

  v11 = sessionCount2;
  v15[2] = sessionCount2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  return v12;
}

@end