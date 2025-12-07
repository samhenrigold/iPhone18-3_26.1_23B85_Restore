@interface HMCoreAnalyticsBooleanFieldData
- (HMCoreAnalyticsBooleanFieldData)initWithName:(id)name BOOLValue:(BOOL)value;
@end

@implementation HMCoreAnalyticsBooleanFieldData

- (HMCoreAnalyticsBooleanFieldData)initWithName:(id)name BOOLValue:(BOOL)value
{
  valueCopy = value;
  nameCopy = name;
  if (nameCopy)
  {
    v7 = nameCopy;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
    v13.receiver = self;
    v13.super_class = HMCoreAnalyticsBooleanFieldData;
    v9 = [(HMCoreAnalyticsFieldData *)&v13 initWithName:v7 value:v8];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    [(HMAccessCodeManager *)v11 .cxx_destruct];
  }

  return result;
}

@end