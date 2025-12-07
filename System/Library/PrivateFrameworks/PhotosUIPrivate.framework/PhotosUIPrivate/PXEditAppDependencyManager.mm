@interface PXEditAppDependencyManager
+ (void)addPendingEditsRequestProviderDependency:(id)dependency;
@end

@implementation PXEditAppDependencyManager

+ (void)addPendingEditsRequestProviderDependency:(id)dependency
{
  swift_unknownObjectRetain();
  sub_1B36F932C(dependency, v4);

  swift_unknownObjectRelease();
}

@end