@interface NSDictionary
+ (id)nn_activeSyncStateWithIdentifier:(id)identifier active:(BOOL)active;
- (BOOL)nn_active;
@end

@implementation NSDictionary

+ (id)nn_activeSyncStateWithIdentifier:(id)identifier active:(BOOL)active
{
  activeCopy = active;
  identifierCopy = identifier;
  v7 = +[NSDate date];
  v14[0] = identifierCopy;
  v14[1] = v7;
  v8 = [NSNumber numberWithBool:activeCopy];
  v14[2] = v8;
  v9 = [NSArray arrayWithObjects:v14 count:3];
  v13[0] = @"nn_identifier";
  v13[1] = @"nn_date";
  v13[2] = @"nn_active";
  v10 = [NSArray arrayWithObjects:v13 count:3];

  v11 = [self dictionaryWithObjects:v9 forKeys:v10];

  return v11;
}

- (BOOL)nn_active
{
  v2 = [(NSDictionary *)self objectForKeyedSubscript:@"nn_active"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end