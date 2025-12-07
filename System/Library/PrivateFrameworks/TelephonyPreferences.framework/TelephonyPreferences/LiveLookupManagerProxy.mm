@interface LiveLookupManagerProxy
+ (NSString)LLExtensionsChangedNotification;
- (LiveLookupManagerProxy)init;
- (id)extensionName:(id)name;
- (id)extensions;
- (void)setEnabled:(BOOL)enabled forExtension:(_TtC14IdentityLookup21LiveLookupDBExtension *)extension completion:(id)completion;
- (void)setWithPrioritizedExtensionIdentifiers:(id)identifiers;
@end

@implementation LiveLookupManagerProxy

+ (NSString)LLExtensionsChangedNotification
{
  if (qword_27CD9AEF0 != -1)
  {
    swift_once();
  }

  v3 = qword_27CD9AEF8;

  return v3;
}

- (id)extensions
{
  swift_beginAccess();
  selfCopy = self;

  sub_21B91E42C();

  sub_21B91E41C();
  v4 = sub_21B91E74C();

  return v4;
}

- (id)extensionName:(id)name
{
  identifier = [name identifier];

  return identifier;
}

- (void)setEnabled:(BOOL)enabled forExtension:(_TtC14IdentityLookup21LiveLookupDBExtension *)extension completion:(id)completion
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AC98, &qword_21B923378);
  MEMORY[0x28223BE20]();
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = enabled;
  *(v12 + 24) = extension;
  *(v12 + 32) = v11;
  *(v12 + 40) = self;
  v13 = sub_21B91E78C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21B923388;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21B923398;
  v15[5] = v14;
  extensionCopy = extension;
  selfCopy = self;
  sub_21B916854(0, 0, v10, &unk_21B9233A8, v15);
}

- (void)setWithPrioritizedExtensionIdentifiers:(id)identifiers
{
  sub_21B91E75C();
  swift_beginAccess();
  selfCopy = self;

  sub_21B91E43C();
}

- (LiveLookupManagerProxy)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  sub_21B91E45C();
  *(&self->super.isa + v4) = sub_21B91E44C();
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(LiveLookupManagerProxy *)&v6 init];
}

@end