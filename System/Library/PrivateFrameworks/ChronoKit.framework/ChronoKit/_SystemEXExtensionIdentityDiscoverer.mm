@interface _SystemEXExtensionIdentityDiscoverer
- (_SystemEXExtensionIdentityDiscoverer)init;
- (void)queryControllerDidUpdate:(id)update;
@end

@implementation _SystemEXExtensionIdentityDiscoverer

- (_SystemEXExtensionIdentityDiscoverer)init
{
  v3 = OBJC_IVAR____SystemEXExtensionIdentityDiscoverer__publisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9248, &qword_1BF4F0868);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_1BF4E7C34();
  *(&self->super.isa + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _SystemEXExtensionIdentityDiscoverer();
  return [(_SystemEXExtensionIdentityDiscoverer *)&v5 init];
}

- (void)queryControllerDidUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  sub_1BF433648(updateCopy);
}

@end