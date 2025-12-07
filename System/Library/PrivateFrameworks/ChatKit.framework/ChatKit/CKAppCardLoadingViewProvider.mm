@interface CKAppCardLoadingViewProvider
+ (id)spinnerViewController;
- (CKAppCardLoadingViewProvider)init;
@end

@implementation CKAppCardLoadingViewProvider

+ (id)spinnerViewController
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5E148, &unk_190DF55A0));
  v3 = sub_190D54B60();

  return v3;
}

- (CKAppCardLoadingViewProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppCardLoadingViewProvider();
  return [(CKAppCardLoadingViewProvider *)&v3 init];
}

@end