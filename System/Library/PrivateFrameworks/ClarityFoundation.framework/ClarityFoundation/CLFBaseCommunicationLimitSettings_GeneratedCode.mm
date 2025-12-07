@interface CLFBaseCommunicationLimitSettings_GeneratedCode
+ (id)allPreferenceSelectorsAsStrings;
- (CLFBaseCommunicationLimitSettings_GeneratedCode)init;
- (NSString)incomingCommunicationLimit;
- (NSString)outgoingCommunicationLimit;
- (void)setNeedsMigrationFor117558856:(BOOL)for117558856;
@end

@implementation CLFBaseCommunicationLimitSettings_GeneratedCode

- (NSString)incomingCommunicationLimit
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"IncomingCommunicationLimit" ofClass:v3 defaultValue:@"contacts"];
}

- (CLFBaseCommunicationLimitSettings_GeneratedCode)init
{
  v11.receiver = self;
  v11.super_class = CLFBaseCommunicationLimitSettings_GeneratedCode;
  v2 = [(CLFBaseSettings *)&v11 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_incomingCommunicationLimit);
    [preferenceKeysBySelectorName setObject:@"IncomingCommunicationLimit" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_needsMigrationFor117558856);
    [preferenceKeysBySelectorName2 setObject:@"NeedsMigrationFor117558856" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_outgoingCommunicationLimit);
    [preferenceKeysBySelectorName3 setObject:@"OutgoingCommunicationLimit" forKeyedSubscript:v9];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___CLFBaseCommunicationLimitSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v9, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_incomingCommunicationLimit);
  v10[0] = v3;
  v4 = NSStringFromSelector(sel_needsMigrationFor117558856);
  v10[1] = v4;
  v5 = NSStringFromSelector(sel_outgoingCommunicationLimit);
  v10[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v7 = [v2 arrayByAddingObjectsFromArray:v6];

  return v7;
}

- (void)setNeedsMigrationFor117558856:(BOOL)for117558856
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:for117558856];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"NeedsMigrationFor117558856"];
}

- (NSString)outgoingCommunicationLimit
{
  v3 = objc_opt_class();

  return [(AXBaseSettings *)self objectValueForPreferenceKey:@"OutgoingCommunicationLimit" ofClass:v3 defaultValue:@"contacts"];
}

@end