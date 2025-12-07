@interface HUActivityLogViewControllerFactory
+ (id)createActivityLogViewControllerWith:(id)with activityLogCoordinator:(id)coordinator;
- (HUActivityLogViewControllerFactory)init;
@end

@implementation HUActivityLogViewControllerFactory

+ (id)createActivityLogViewControllerWith:(id)with activityLogCoordinator:(id)coordinator
{
  v6 = sub_20D565C28();
  sub_20D0723B4(v6, v7);
  swift_retain_n();
  withCopy = with;
  v9 = sub_20D566888();
  v11 = v10;
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C820588, &qword_20D5C7270));
  v13 = sub_20D07240C(coordinator, v9, v11);

  return v13;
}

- (HUActivityLogViewControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = HUActivityLogViewControllerFactory;
  return [(HUActivityLogViewControllerFactory *)&v3 init];
}

@end