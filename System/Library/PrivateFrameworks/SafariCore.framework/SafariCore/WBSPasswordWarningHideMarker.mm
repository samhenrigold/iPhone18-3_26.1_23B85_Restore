@interface WBSPasswordWarningHideMarker
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordWarningHideMarker)initWithDictionaryRepresentation:(id)representation;
- (WBSPasswordWarningHideMarker)initWithIssueTypes:(unint64_t)types;
@end

@implementation WBSPasswordWarningHideMarker

- (WBSPasswordWarningHideMarker)initWithIssueTypes:(unint64_t)types
{
  v8.receiver = self;
  v8.super_class = WBSPasswordWarningHideMarker;
  v4 = [(WBSPasswordWarningHideMarker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_issueTypes = types;
    v6 = v4;
  }

  return v5;
}

- (WBSPasswordWarningHideMarker)initWithDictionaryRepresentation:(id)representation
{
  v5 = [representation objectForKeyedSubscript:@"issueTypes"];
  if (v5)
  {
    v6 = -[WBSPasswordWarningHideMarker initWithIssueTypes:]([WBSPasswordWarningHideMarker alloc], "initWithIssueTypes:", [v5 unsignedIntegerValue]);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXKeychain(0, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordWarningHideMarker initWithDictionaryRepresentation:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      issueTypes = self->_issueTypes;
      v6 = issueTypes == [(WBSPasswordWarningHideMarker *)equalCopy issueTypes];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"issueTypes";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_issueTypes];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end