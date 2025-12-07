@interface DefaultSpamFilterSettingsController.Coordinator
- (_TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator)init;
- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions;
@end

@implementation DefaultSpamFilterSettingsController.Coordinator

- (void)canEditExtensionsDidChangeForController:(id)controller canEditExtensions:(BOOL)extensions
{
  v6 = type metadata accessor for DefaultSpamFilterSettingsController(0) - 8;
  __chkstk_darwin();
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(&stru_20.maxprot + (swift_isaMask & self->super.isa));
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

  sub_3A78(&qword_10960, &qword_9510);
  sub_808C();

  sub_6734(v8);
}

- (_TtCV13CallFiltering35DefaultSpamFilterSettingsController11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end