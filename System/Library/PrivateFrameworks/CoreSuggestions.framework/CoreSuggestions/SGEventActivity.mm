@interface SGEventActivity
+ (id)describeType:(unsigned __int8)type;
- (SGEventActivity)initWithDictionary:(id)dictionary;
- (SGEventActivity)initWithTeamIdentifier:(id)identifier type:(unsigned __int8)type userActivity:(id)activity validStartDate:(double)date validEndDate:(double)endDate;
- (id)jsonObject;
@end

@implementation SGEventActivity

- (id)jsonObject
{
  v22[5] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v3 = dispatch_semaphore_create(0);
  userActivity = self->_userActivity;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29__SGEventActivity_jsonObject__block_invoke;
  v12[3] = &unk_1E7EFAC90;
  v14 = &v15;
  v5 = v3;
  v13 = v5;
  [(NSUserActivity *)userActivity _createUserActivityStringsWithOptions:0 completionHandler:v12];
  if ([MEMORY[0x1E69C5D10] waitForSemaphore:v5 timeoutSeconds:1.0] == 1)
  {
    v6 = 0;
  }

  else
  {
    v22[0] = self->_teamIdentifier;
    v21[0] = @"SGEventActivityTeamIdentifierKey";
    v21[1] = @"SGEventActivityTypeKey";
    v7 = [objc_opt_class() describeType:self->_type];
    v8 = v16[5];
    v22[1] = v7;
    v22[2] = v8;
    v21[2] = @"SGEventActivityUserActivityStringKey";
    v21[3] = @"SGEventActivityStartDateKey";
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_validStartDate];
    v22[3] = v9;
    v21[4] = @"SGEventActivityEndDateKey";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_validEndDate];
    v22[4] = v10;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
  }

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __29__SGEventActivity_jsonObject__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (SGEventActivity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = SGEventActivity;
  v5 = [(SGEventActivity *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"SGEventActivityTeamIdentifierKey"];
    teamIdentifier = v5->_teamIdentifier;
    v5->_teamIdentifier = v6;

    v8 = objc_opt_class();
    v9 = [dictionaryCopy objectForKeyedSubscript:@"SGEventActivityTypeKey"];
    v5->_type = [v8 typeForString:v9];

    v10 = objc_alloc(MEMORY[0x1E69636A8]);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"SGEventActivityUserActivityStringKey"];
    v12 = [v10 _initWithUserActivityStrings:v11 secondaryString:0 optionalData:0];
    userActivity = v5->_userActivity;
    v5->_userActivity = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"SGEventActivityStartDateKey"];
    [v14 doubleValue];
    v5->_validStartDate = v15;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"SGEventActivityEndDateKey"];
    [v16 doubleValue];
    v5->_validEndDate = v17;
  }

  return v5;
}

- (SGEventActivity)initWithTeamIdentifier:(id)identifier type:(unsigned __int8)type userActivity:(id)activity validStartDate:(double)date validEndDate:(double)endDate
{
  identifierCopy = identifier;
  activityCopy = activity;
  v18.receiver = self;
  v18.super_class = SGEventActivity;
  v15 = [(SGEventActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_teamIdentifier, identifier);
    v16->_type = type;
    objc_storeStrong(&v16->_userActivity, activity);
    v16->_validStartDate = date;
    v16->_validEndDate = endDate;
  }

  return v16;
}

+ (id)describeType:(unsigned __int8)type
{
  if (type == 1)
  {
    return @"CheckIn";
  }

  else
  {
    return @"Unknown";
  }
}

@end