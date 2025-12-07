@interface AutoBugCaptureHelper
- (AutoBugCaptureHelper)init;
- (void)reportWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context;
@end

@implementation AutoBugCaptureHelper

- (void)reportWithDomain:(id)domain type:(id)type subtype:(id)subtype subtypeContext:(id)context
{
  v7 = sub_2426ABA10();
  v9 = v8;
  v10 = sub_2426ABA10();
  v12 = v11;
  v13 = sub_2426ABA10();
  v15 = v14;
  v16 = sub_2426ABA10();
  v18 = v17;
  selfCopy = self;
  sub_242666FE4(v7, v9, v10, v12, v13, v15, v16, v18);
}

- (AutoBugCaptureHelper)init
{
  v3.receiver = self;
  v3.super_class = AutoBugCaptureHelper;
  return [(AutoBugCaptureHelper *)&v3 init];
}

@end