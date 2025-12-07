@interface SBINAppIntentSystemContext
- (BOOL)isEqual:(id)equal;
- (SBINAppIntentSystemContext)initWithPreciseTimestamp:(id)timestamp actionSource:(unint64_t)source;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBINAppIntentSystemContext

- (SBINAppIntentSystemContext)initWithPreciseTimestamp:(id)timestamp actionSource:(unint64_t)source
{
  timestampCopy = timestamp;
  v11.receiver = self;
  v11.super_class = SBINAppIntentSystemContext;
  v8 = [(SBINAppIntentSystemContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preciseTimestamp, timestamp);
    v9->_actionSource = source;
  }

  return v9;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  preciseTimestamp = self->_preciseTimestamp;
  formatterCopy = formatter;
  v6 = [formatterCopy appendObject:preciseTimestamp withName:@"preciseTimestamp"];
  v7 = NSStringFromSBINAppIntentActionSource(self->_actionSource);
  [formatterCopy appendString:v7 withName:@"actionSource"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      if (BSEqualObjects())
      {
        v8 = self->_actionSource == v7->_actionSource;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end