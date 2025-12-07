@interface WBSFrequentlyVistedSiteAnalyticsPayload
- (WBSFrequentlyVistedSiteAnalyticsPayload)initWithItemPosition:(unint64_t)position lastVisitedDate:(id)date score:(id)score;
- (id)debugDescription;
- (id)eventDictionaryDescription;
@end

@implementation WBSFrequentlyVistedSiteAnalyticsPayload

- (WBSFrequentlyVistedSiteAnalyticsPayload)initWithItemPosition:(unint64_t)position lastVisitedDate:(id)date score:(id)score
{
  dateCopy = date;
  scoreCopy = score;
  v15.receiver = self;
  v15.super_class = WBSFrequentlyVistedSiteAnalyticsPayload;
  v11 = [(WBSFrequentlyVistedSiteAnalyticsPayload *)&v15 init];
  v12 = v11;
  if (v11)
  {
    v11->_itemPosition = position;
    objc_storeStrong(&v11->_lastVisitedDate, date);
    objc_storeStrong(&v12->_score, score);
    v13 = v12;
  }

  return v12;
}

- (id)eventDictionaryDescription
{
  v12[3] = *MEMORY[0x1E69E9840];
  if (self->_score)
  {
    v11[0] = @"position";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_itemPosition];
    v12[0] = v3;
    v11[1] = @"lastVisitedTimeInterval";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:descriptionForTimeInterval(self->_lastVisitedDate)];
    v11[2] = @"score";
    score = self->_score;
    v12[1] = v4;
    v12[2] = score;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v9[0] = @"position";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_itemPosition];
    v9[1] = @"lastVisitedTimeInterval";
    v10[0] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:descriptionForTimeInterval(self->_lastVisitedDate)];
    v10[1] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  }

  v7 = v6;

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p item position = %lu; time interval since last visit = %@; score = %@>", v5, self, self->_itemPosition, self->_lastVisitedDate, self->_score];;

  return v6;
}

@end