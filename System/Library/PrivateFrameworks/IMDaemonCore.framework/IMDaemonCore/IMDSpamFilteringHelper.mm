@interface IMDSpamFilteringHelper
+ (id)sharedHelper;
- (IMDSpamFilteringHelper)init;
- (id)eventPayloadFor:(int64_t)for service:(id)service;
- (void)presentDebugUI;
@end

@implementation IMDSpamFilteringHelper

+ (id)sharedHelper
{
  if (qword_27D8CCC90 != -1)
  {
    swift_once();
  }

  v3 = qword_27D8CED38;

  return v3;
}

- (void)presentDebugUI
{
  selfCopy = self;
  sub_22B77205C();
}

- (id)eventPayloadFor:(int64_t)for service:(id)service
{
  if (service)
  {
    v6 = sub_22B7DB6A8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  v10 = sub_22B772C7C(for, v6, v8);

  v8, v11, v12, v13, v14, v15, v16, v17, v27, v29;
  v18 = sub_22B7DB568();
  v10, v19, v20, v21, v22, v23, v24, v25, v28, v30;

  return v18;
}

- (IMDSpamFilteringHelper)init
{
  v3 = OBJC_IVAR___IMDSpamFilteringHelper_debugUIService;
  sub_22B7DB448();
  swift_allocObject();
  *(&self->super.isa + v3) = sub_22B7DB438();
  v5.receiver = self;
  v5.super_class = IMDSpamFilteringHelper;
  return [(IMDSpamFilteringHelper *)&v5 init];
}

@end