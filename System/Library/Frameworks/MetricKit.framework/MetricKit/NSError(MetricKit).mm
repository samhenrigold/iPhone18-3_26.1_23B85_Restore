@interface NSError(MetricKit)
+ (id)_defaultDescriptionForMXErrorCode:()MetricKit;
+ (id)errorWithMXErrorCode:()MetricKit;
@end

@implementation NSError(MetricKit)

+ (id)_defaultDescriptionForMXErrorCode:()MetricKit
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = mainBundle;
  if (a3 > 5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [mainBundle localizedStringForKey:off_278B3ED68[a3] value:&stru_284D0F2E0 table:0];
  }

  return v6;
}

+ (id)errorWithMXErrorCode:()MetricKit
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [self alloc];
  v10 = *MEMORY[0x277CCA450];
  v6 = [(objc_class *)self _defaultDescriptionForMXErrorCode:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 initWithDomain:@"MXErrorDomain" code:a3 userInfo:v7];

  return v8;
}

@end