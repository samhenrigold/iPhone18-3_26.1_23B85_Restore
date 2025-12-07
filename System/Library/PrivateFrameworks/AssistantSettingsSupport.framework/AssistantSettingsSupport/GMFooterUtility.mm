@interface GMFooterUtility
- (_TtC24AssistantSettingsSupport15GMFooterUtility)init;
- (id)fetchLanguageVariants;
- (id)openAppleIntelligenceURL;
- (id)openStorageManagement;
- (void)cancelDownloadTask;
- (void)updateFooterWithSpecifier:(id)specifier settings:(id)settings;
@end

@implementation GMFooterUtility

- (_TtC24AssistantSettingsSupport15GMFooterUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for GMFooterUtility();
  return [(GMFooterUtility *)&v3 init];
}

- (id)fetchLanguageVariants
{
  selfCopy = self;
  sub_2413F5F9C(&unk_285316FA0);
  swift_arrayDestroy();

  v3 = sub_24140ED2C();

  return v3;
}

- (void)updateFooterWithSpecifier:(id)specifier settings:(id)settings
{
  specifierCopy = specifier;
  settingsCopy = settings;
  selfCopy = self;
  sub_2413F3DDC(specifierCopy, settingsCopy);
}

- (void)cancelDownloadTask
{
  if (qword_27E5426F0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5428C8, &qword_241412F28);
    sub_24140ED0C();
  }
}

- (id)openStorageManagement
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_24140E24C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5426B8 != -1)
  {
    swift_once();
  }

  v7 = sub_24140E72C();
  __swift_project_value_buffer(v7, qword_27E543B00);
  v8 = sub_24140E70C();
  v9 = sub_24140ED8C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2413B9000, v8, v9, "openStorageManagement being called", v10, 2u);
    MEMORY[0x245CE6B00](v10, -1, -1);
  }

  sub_24140E23C();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_2413E8560(v2, &qword_27E542938, &qword_2414130A0);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v12 = result;
    v13 = sub_24140E21C();
    [v12 openSensitiveURL:v13 withOptions:0];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)openAppleIntelligenceURL
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542938, &qword_2414130A0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  v6 = sub_24140E24C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  currentDevice = [objc_opt_self() currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  v15 = (v7 + 48);
  if (sf_isiPad)
  {
    sub_24140E23C();
    if ((*v15)(v5, 1, v6) == 1)
    {
      v16 = v5;
      return sub_2413E8560(v16, &qword_27E542938, &qword_2414130A0);
    }

    (*(v7 + 32))(v12, v5, v6);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v18 = result;
      v19 = sub_24140E21C();
      [v18 openSensitiveURL:v19 withOptions:0];

      return (*(v7 + 8))(v12, v6);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_24140E23C();
  if ((*v15)(v3, 1, v6) == 1)
  {
    v16 = v3;
    return sub_2413E8560(v16, &qword_27E542938, &qword_2414130A0);
  }

  (*(v7 + 32))(v10, v3, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_24140E21C();
  [v20 openSensitiveURL:v21 withOptions:0];

  return (*(v7 + 8))(v10, v6);
}

@end