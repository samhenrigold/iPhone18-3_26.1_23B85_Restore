@interface ShieldConfigurationExtensionContext
- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)init;
- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items;
- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items contextUUID:(id)d;
- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)fetchConfigurationDataForApplication:(id)application localizedApplicationDisplayName:(id)name categoryTokenData:(id)data localizedCategoryDisplayName:(id)displayName replyHandler:(id)handler;
- (void)fetchConfigurationDataForWebDomain:(id)domain tokenData:(id)data replyHandler:(id)handler;
@end

@implementation ShieldConfigurationExtensionContext

- (void)fetchConfigurationDataForApplication:(id)application localizedApplicationDisplayName:(id)name categoryTokenData:(id)data localizedCategoryDisplayName:(id)displayName replyHandler:(id)handler
{
  v11 = _Block_copy(handler);
  v25 = sub_238DAA5A4();
  v13 = v12;
  if (name)
  {
    v14 = sub_238DAA5A4();
    name = v15;
  }

  else
  {
    v14 = 0;
  }

  dataCopy = data;
  displayNameCopy = displayName;
  selfCopy = self;
  v19 = sub_238DAA474();
  v21 = v20;

  v22 = sub_238DAA5A4();
  v24 = v23;

  _Block_copy(v11);
  sub_238DA932C(v25, v13, v14, name, v19, v21, v22, v24, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  sub_238DA9F54(v19, v21);
}

- (void)fetchConfigurationDataForWebDomain:(id)domain tokenData:(id)data replyHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_238DAA5A4();
  v10 = v9;
  dataCopy = data;
  selfCopy = self;
  v13 = sub_238DAA474();
  v15 = v14;

  _Block_copy(v7);
  sub_238DA97F8(v8, v10, v13, v15, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
  sub_238DA9F54(v13, v15);
}

- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext____lazy_storage___shieldConfigurationDataSource) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShieldConfigurationExtensionContext();
  return [(ShieldConfigurationExtensionContext *)&v3 init];
}

- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items
{
  if (items)
  {
    v3 = sub_238DAA5E4();
  }

  else
  {
    v3 = 0;
  }

  return sub_238DA7A60(v3);
}

- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items contextUUID:(id)d
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  if (items)
  {
    items = sub_238DAA5E4();
  }

  if (d)
  {
    sub_238DAA494();
    v9 = sub_238DAA4A4();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_238DAA4A4();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  return sub_238DA7B44(items, v8);
}

- (_TtC17ManagedSettingsUI35ShieldConfigurationExtensionContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6DC90, &qword_238DAAE78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  if (items)
  {
    items = sub_238DAA5E4();
  }

  if (d)
  {
    sub_238DAA494();
    v11 = sub_238DAA4A4();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_238DAA4A4();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  endpointCopy = endpoint;
  return sub_238DA7E34(items, endpoint, v10);
}

@end