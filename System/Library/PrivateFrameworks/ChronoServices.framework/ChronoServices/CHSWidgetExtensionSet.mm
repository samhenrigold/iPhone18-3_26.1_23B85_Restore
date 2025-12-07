@interface CHSWidgetExtensionSet
- (CHSWidgetExtensionSet)initWithExtensions:(id)extensions equivalentBundleIdentifierResolver:(id)resolver iconResolver:(id)iconResolver;
- (NSArray)widgetExtensionContainers;
- (NSSet)allExtensions;
- (id)copyWithZone:(void *)zone;
- (id)widgetExtensionForExtensionIdentity:(id)identity;
- (void)setAllExtensions:(id)extensions;
- (void)setWidgetExtensionContainers:(id)containers;
@end

@implementation CHSWidgetExtensionSet

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_195EB48FC(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_195FA12A8();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v4;
}

- (NSArray)widgetExtensionContainers
{
  type metadata accessor for CHSWidgetExtensionContainer(0);

  v2 = sub_195FA0B28();

  return v2;
}

- (NSSet)allExtensions
{
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  sub_195EB4C00();

  v2 = sub_195FA0BE8();

  return v2;
}

- (CHSWidgetExtensionSet)initWithExtensions:(id)extensions equivalentBundleIdentifierResolver:(id)resolver iconResolver:(id)iconResolver
{
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  sub_195EB4C00();
  v7 = sub_195FA0BF8();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_195EB98CC(v7, resolver, iconResolver);
}

- (id)widgetExtensionForExtensionIdentity:(id)identity
{
  identityCopy = identity;
  selfCopy = self;
  v6 = sub_195EC2FB8(identityCopy);

  return v6;
}

- (void)setWidgetExtensionContainers:(id)containers
{
  type metadata accessor for CHSWidgetExtensionContainer(0);
  *(self + OBJC_IVAR___CHSWidgetExtensionSet_widgetExtensionContainers) = sub_195FA0B38();
}

- (void)setAllExtensions:(id)extensions
{
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  sub_195EB4C00();
  *(self + OBJC_IVAR___CHSWidgetExtensionSet_allExtensions) = sub_195FA0BF8();
}

@end