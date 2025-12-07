@interface STCommunicationLimitsCoreAnalyticsEvent
- (NSDictionary)payload;
- (STCommunicationLimitsCoreAnalyticsEvent)initWithCommunicationLimited:(BOOL)limited contactManagementEnabled:(BOOL)enabled contactEditingAllowed:(BOOL)allowed userAgeGroup:(int64_t)group userIsRemote:(BOOL)remote;
@end

@implementation STCommunicationLimitsCoreAnalyticsEvent

- (STCommunicationLimitsCoreAnalyticsEvent)initWithCommunicationLimited:(BOOL)limited contactManagementEnabled:(BOOL)enabled contactEditingAllowed:(BOOL)allowed userAgeGroup:(int64_t)group userIsRemote:(BOOL)remote
{
  v13.receiver = self;
  v13.super_class = STCommunicationLimitsCoreAnalyticsEvent;
  result = [(STCommunicationLimitsCoreAnalyticsEvent *)&v13 init];
  result->_communicationLimited = limited;
  result->_contactManagementEnabled = enabled;
  result->_contactEditingAllowed = allowed;
  result->_userAgeGroup = group;
  result->_userIsRemote = remote;
  return result;
}

- (NSDictionary)payload
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"communicationLimited";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent communicationLimited](self, "communicationLimited")}];
  v11[0] = v3;
  v10[1] = @"contactManagementEnabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent contactManagementEnabled](self, "contactManagementEnabled")}];
  v11[1] = v4;
  v10[2] = @"contactEditingAllowed";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent contactEditingAllowed](self, "contactEditingAllowed")}];
  v11[2] = v5;
  v10[3] = @"userAgeGroup";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCommunicationLimitsCoreAnalyticsEvent userAgeGroup](self, "userAgeGroup")}];
  v11[3] = v6;
  v10[4] = @"userIsRemote";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCommunicationLimitsCoreAnalyticsEvent userIsRemote](self, "userIsRemote")}];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

@end