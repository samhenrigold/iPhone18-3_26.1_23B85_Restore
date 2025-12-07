@interface DefaultSpamFilterSettingsController.Coordinator
- (_TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator)init;
- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions;
@end

@implementation DefaultSpamFilterSettingsController.Coordinator

- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions
{
  v6 = type metadata accessor for DefaultSpamFilterSettingsController(0) - 8;
  MEMORY[0x28223BE20]();
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x58);
  selfCopy = self;
  v9();
  v11 = &v8[*(v6 + 28)];
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v11) = v11[16];
  v15 = v12;
  v16 = v13;
  v17 = v11;
  v14[7] = extensions;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD30, &qword_21B923740);
  sub_21B91E69C();

  sub_21B91BD48(v8);
}

- (_TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end