@interface INCExtensionTransactionState
- (INCExtensionTransactionState)initWithType:(int64_t)type intent:(id)intent intentResponse:(id)response userActivities:(id)activities;
- (id)description;
@end

@implementation INCExtensionTransactionState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = INCExtensionTransactionState;
  v4 = [(INCExtensionTransactionState *)&v14 description];
  type = self->_type;
  if (type > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2797E7798[type];
  }

  v7 = v6;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v3 stringWithFormat:@"%@ {type = %ld (%@), intent = %@, intentResponse = %@, userActivities = %@}", v4, type, v7, v9, v11, self->_userActivities];

  return v12;
}

- (INCExtensionTransactionState)initWithType:(int64_t)type intent:(id)intent intentResponse:(id)response userActivities:(id)activities
{
  intentCopy = intent;
  responseCopy = response;
  activitiesCopy = activities;
  v17.receiver = self;
  v17.super_class = INCExtensionTransactionState;
  v14 = [(INCExtensionTransactionState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_intent, intent);
    objc_storeStrong(&v15->_intentResponse, response);
    objc_storeStrong(&v15->_userActivities, activities);
  }

  return v15;
}

@end