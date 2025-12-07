@interface SABaseAceObject(AnalyticsContextVending)
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SABaseAceObject(AnalyticsContextVending)

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = &off_1F05AA1A8;
  objc_msgSendSuper2(&v12, sel_af_addEntriesToAnalyticsContext_, v4);
  metricsContext = [self metricsContext];
  v6 = metricsContext;
  if (metricsContext)
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [metricsContext dataUsingEncoding:4];
    v11 = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:&v11];
    v10 = v11;

    if (!v9 || v10)
    {
      [v4 setObject:v6 forKey:@"metricsContext"];
    }

    else
    {
      [v4 setObject:v9 forKey:@"metricsContext"];
      v10 = 0;
    }
  }
}

@end